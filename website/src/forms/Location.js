import React, { useEffect, useState } from "react";

async function getLocations() {
    try {
        var url = new URL(process.env.REACT_APP_API_URL + '/Report/Location');
        var myHeaders = new Headers();
        myHeaders.append("Ocp-Apim-Subscription-Key", process.env.REACT_APP_SUBSCRIPTION_KEY);

        var requestOptions = {
            method: 'GET',
            headers: myHeaders,
        };
        const response = await fetch(url, requestOptions);
        if (!response.ok) {
            return [];
        }
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Error:', error);
        return (<></>);
    }
}

/**
 * Location dropdown component for user to select location in the editor
 * @param {*} props 
 * @returns Location Component
 */
function Location(props) {
    const [locations, setLocations] = useState([]);
    const { name, labelName, handlechange, defaultValue } = props;
    const [selectedLocation, setSelectedLocation] = useState(props["defaultValue"] || ""); // Use defaultValue if provided

    useEffect(() => {
        // Update selected location when defaultValue prop changes
        setSelectedLocation(defaultValue || "");
    }, [defaultValue]);

    useEffect(() => {
        const fetchLocations = async () => {
            const data = await getLocations();
            setLocations(data); // Assuming the API response is an array of locations
        };

        fetchLocations();
    }, []);
    const handleSelectChange = (e) => {
        setSelectedLocation(e.target.value);
        handlechange(e); // Pass the event to the parent component if needed
    };


    if (!locations[0]) {
        return (<></>);
    }
    return (
        <div className="w-full">
            <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                {labelName}
            </label>
            <select
                name={name}
                className="appearance-none block w-full text-[var(--md-sys-color-on-secondary-container)] bg-[var(--md-sys-color-secondary-container-dark)] border rounded py-3 px-4 mb-3 leading-tight focus:outline-none"
                onChange={handleSelectChange}
                value={selectedLocation}            >
                <option value="">Select a location</option>
                {locations.map(location => (
                    <option key={location.locationId} value={location.locationId}>
                        {location.locationId}
                    </option>
                ))}
            </select>
        </div>
    );
}

export default Location;
