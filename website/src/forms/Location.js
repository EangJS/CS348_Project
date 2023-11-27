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
            throw new Error(`Failed to fetch data. Status: ${response.status}`);
        }
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Error:', error);
    }
}

function Location(props) {
    const [locations, setLocations] = useState([]);
    const { name, labelName, handlechange } = props;

    useEffect(() => {
        const fetchLocations = async () => {
            const data = await getLocations();
            setLocations(data); // Assuming the API response is an array of locations
        };

        fetchLocations();
    }, []);

    return (
        <div className="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                {labelName}
            </label>
            <select
                name={name}
                className="appearance-none block w-full text-[var(--md-sys-color-on-secondary-container)] bg-[var(--md-sys-color-secondary-container-dark)] border rounded py-3 px-4 mb-3 leading-tight focus:outline-none"
                onChange={handlechange}
            >
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
