import React, { useEffect, useState } from "react";

async function getFaculties() {
    try {
        var url = new URL(process.env.REACT_APP_API_URL + '/Report/Faculty');
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
    }
}

function Faculty(props) {
    const [faculty, setfaculties] = useState([]);
    const { name, labelName, handlechange } = props;

    useEffect(() => {
        const fetchFaculties = async () => {
            const data = await getFaculties();
            setfaculties(data); // Assuming the API response is an array of faculties
        };

        fetchFaculties();
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
                <option value="">Select a faculty</option>
                {faculty.map(faculty => (
                    <option key={faculty.UPN} value={faculty.Email}>
                        {faculty.Name}
                    </option>
                ))}
            </select>
        </div>
    );
}

export default Faculty;
