import React, { useEffect, useState } from "react";
import Field from "../forms/Field";
import Location from "../forms/Location";
import Types from "../forms/Types";

async function getSessions(courseCode, type, location, credits, startTime) {
    try {
        var url = new URL(process.env.REACT_APP_API_URL + '/Report/Session');
        const courseCodeSplit = courseCode.split(' ');
        if (courseCodeSplit.length === 1) {
            url.searchParams.append('courseSubject', courseCodeSplit[0]);
        } else if (courseCodeSplit.length > 1) {
            url.searchParams.append('courseSubject', courseCodeSplit[0]);
            url.searchParams.append('courseNumber', courseCodeSplit[1]);
        }
        url.searchParams.append('type', type);
        url.searchParams.append('location', location);
        url.searchParams.append('creditValue', credits);
        url.searchParams.append('startTime', startTime);

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


function Filter({ onFormSubmit }) {
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
                const data = await getSessions('', '', '', '', '');
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

        try {
            const data = await getSessions(formState.courseCode, formState.type, formState.location, formState.credits, formState.startTime);
            console.log(formState.startTime);
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
    const handleTypesChange = (selectedTypes) => {
        setFormState({
            ...formState,
            'type': selectedTypes,
        });
    };

    return (
        <div className="flex items-end justify-center flex-col">
            <div className="w-full px-3 mb-6 md:mb-0">
                <h4>Filter Courses</h4>
            </div>
            <form className="w-full px-3 mb-6 md:mb-0" onSubmit={handleSubmit}>
                <Field name={"courseCode"} labelName={"Course Name"} handlechange={handleChange} />
                <Types name={"type"} labelName={"Type"} handlechange={handleTypesChange} />
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
