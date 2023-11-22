import React, {useEffect, useState} from "react";
import Field from "../forms/Field";

async function getSessions(courseCode) {
    try {
        var url = new URL(process.env.REACT_APP_API_URL + '/Report/Session');
        const courseCodeSplit = courseCode.split(' ');
        if(courseCodeSplit.length === 1){
            url.searchParams.append('courseSubject', courseCodeSplit[0]);
        } else if(courseCodeSplit.length > 1){
            url.searchParams.append('courseSubject', courseCodeSplit[0]);
            url.searchParams.append('courseNumber', courseCodeSplit[1]);
        }

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


function Filter({onFormSubmit}) {
    const [formState, setFormState] = useState({
        courseCode: ''
    });

    useEffect(() => {
        // This will simulate an initial form submission when the component mounts
        const simulateInitialSubmit = async () => {
            try {
                const data = await getSessions(formState.courseCode);
                onFormSubmit(data);
            } catch (error) {
                // Handle errors
                console.error("Error fetching data:", error);
            }
        };

        simulateInitialSubmit();
    }, []);

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const data = await getSessions(formState.courseCode);
            onFormSubmit(data);
            // Handle the fetched data as needed
        } catch (error) {
            // Handle errors
            console.error("Error fetching data:", error);
        }
    };

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormState({
            ...formState,
            [name]: value,
        });
    };

    return (
        <>
            <h2>Filter Courses</h2>
            <form onSubmit={handleSubmit}>
                <Field name={"courseCode"} labelName={"Course Name"} handlechange={handleChange} />
                <button className="bg-[var(--md-sys-color-primary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold py-2 px-4 rounded-full" type="submit">
                    Submit
                </button>
            </form>
        </>
    );
}

export default Filter;
