import React, { useEffect, useState } from "react";
import Field from "../forms/Field";
import Location from "../forms/Location";
import Types from "../forms/Types";

async function getSessions(formState) {
    try {
        var url = new URL(process.env.REACT_APP_API_URL + '/Report/Session');
        if (formState) {
            Object.entries(formState).forEach(([key, value]) => {
                if (key === 'courseCode') {
                    const [courseSubject, courseNumber] = value.split(' ');
                    if (courseNumber) {
                        url.searchParams.append('courseSubject', courseSubject);
                        url.searchParams.append('courseNumber', courseNumber);
                    } else {
                        url.searchParams.append('courseSubject', courseSubject);
                    }
                } else {
                    url.searchParams.append(key, value);
                }
            });

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
        return (<></>);
    }
}


function Filter({ onFormSubmit, setLoader }) {
    const [formState, setFormState] = useState({
        courseCode: '',
        type: '',
        location: '',
        credits: '',
        startTime: ''
    });
    const [mounted, setMounted] = useState(false)

    useEffect(() => {
        const simulateInitialSubmit = async () => {
            try {
                const data = await getSessions();
                onFormSubmit(data);
            } catch (error) {
                console.error("Error fetching data:", error);
            }
        };
        if (!mounted) {
            simulateInitialSubmit();
            setMounted(true);
        }
    }, [mounted, onFormSubmit]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        setLoader(true);

        try {
            const data = await getSessions(formState);
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
            [name]: value
        });
    };

    return (
        <div className="flex items-end justify-center flex-col">
            <div className="w-full px-3 mb-6 md:mb-0">
                <h4>Filter Courses</h4>
            </div>
            <form className="w-full px-3 mb-6 md:mb-0" onSubmit={handleSubmit}>
                <Field name={"courseCode"} labelName={"Course Name"} handlechange={handleChange} />
                <Types name={"type"} labelName={"Type"} handlechange={handleChange} />
                <Location name={"location"} labelName={"Location"} handlechange={handleChange} />
                <Field inputType={"number"} name={"credits"} labelName={"Credits"} handlechange={handleChange} />
                <Field inputType={"time"} name={"startTime"} labelName={"Start Time"} handlechange={handleChange} />
                <button className="bg-[var(--md-sys-color-primary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold py-2 px-4 rounded-full" type="submit">
                    Submit
                </button>
            </form>
        </div>
    );
}

export default Filter;
