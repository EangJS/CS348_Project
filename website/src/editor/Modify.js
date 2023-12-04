import '../App.css';
import '../material-css/theme.css';
import React, { useState, useEffect } from 'react';
import Field from '../forms/Field';
import Location from '../forms/Location';
async function getSections(sectionId) {
    try {
        var url = new URL(process.env.REACT_APP_API_URL + '/Report/Section');
        var myHeaders = new Headers();
        myHeaders.append("Ocp-Apim-Subscription-Key", process.env.REACT_APP_SUBSCRIPTION_KEY);
        if (sectionId != null) {
            url.searchParams.append('Section', sectionId);
        }

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
        return "Error";
    }
}

function parseTimeString(timeString) {
    if (timeString === null) {
        return "00:00"
    }
    if (timeString === "noon") {
        return "12:00"
    }
    const [hours, minutes] = timeString.match(/\d+/g).map(Number);
    const isPM = /p/i.test(timeString);
    const adjustedHours = isPM && hours !== 12 ? hours + 12 : hours;
    const formattedHours = String(adjustedHours).padStart(2, '0');
    const formattedMinutes = String(minutes).padStart(2, '0');
    return `${formattedHours}:${formattedMinutes}`;
}



function Modify() {
    const [deleteId, setDeleteId] = useState(null);
    const [courseName, setCourseName] = useState('');
    const [type, setType] = useState('');
    const [location, setLocation] = useState('');
    const [startTime, setStartTime] = useState('');
    const [endTime, setEndTime] = useState('');

    const [formData, setFormData] = useState({
        courseName: '',
        section: '',
        type: '',
        publishedStart: '',
        publishedEnd: '',
        location: ''
    });

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });
    };

    const submit = (e) => {
        e.preventDefault();
        fetch(process.env.REACT_APP_API_URL + '/Report/UpdateSession', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Ocp-Apim-Subscription-Key': process.env.REACT_APP_SUBSCRIPTION_KEY,
            },
            body: JSON.stringify(formData),
        })
            .then((response) => {
                if (response.status === 200) {
                    alert("Success");
                    window.location.reload();
                } else {
                    alert(response.statusText);
                }
            })
            .catch((error) => {
                console.error('Error:', error);
                alert(error);
            });
    };

    const handleSelectChange = async (e) => {
        const target = e.target;
        setDeleteId(target.value);
        const data = await getSections(target.value);
        setCourseName(data[0].courseName);
        setType(data[0].type);
        setLocation(data[0].location);
        const defaultStart = parseTimeString(data[0].publishedStart ?? "00:00a")
        const defaultEnd = parseTimeString(data[0].publishedEnd ?? "00:00a")
        setStartTime(defaultStart);
        setEndTime(defaultEnd);
        const updatedFormData = {
            Section: target.value,
            CourseName: data[0].courseName,
            type: data[0].type,
            location: data[0].location,
            PublishedStart: parseTimeString(data[0].publishedStart),
            PublishedEnd: parseTimeString(data[0].publishedEnd),
        };

        // Update the state once with all the new values
        setFormData(() => ({
            ...updatedFormData,
        }));
    };


    const [sections, setSections] = useState([]);

    useEffect(() => {
        const fetchSections = async () => {
            const data = await getSections();
            setSections(data); // Assuming the API response is an array of locations
        };

        fetchSections();
    }, []);


    const submitDelete = (e) => {
        e.preventDefault();
        fetch(process.env.REACT_APP_API_URL + `/Report/Session/${deleteId}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json',
                'Ocp-Apim-Subscription-Key': process.env.REACT_APP_SUBSCRIPTION_KEY,
            }
        })
            .then((response) => {
                if (response.status === 204) {
                    alert("Success");
                    window.location.reload();
                } else {
                    alert(response.statusText);
                }
            })
            .catch((error) => {
                console.error('Error:', error);
                alert(error);
            });
    };

    if (sections === "Error") {
        return (<></>);
    }
    return (
        <div className="flex items-center justify-center w-full p-5 m-5">
            <div className="flex flex-col gap-5 max-w-full p-5 m-5 rounded-xl bg-[var(--md-sys-color-on-primary-dark)]">
                <form className="flex flex-col" onSubmit={submit}>
                    <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                        Session Id
                    </label>
                    <select
                        onChange={handleSelectChange}
                        name="sectionId"
                        className="w-full text-[var(--md-sys-color-on-secondary-container)] bg-[var(--md-sys-color-secondary-container-dark)] border rounded py-3 px-4 mb-3 leading-tight focus:outline-none"                >
                        <option value="">Select a Section</option>
                        {sections.map(section => (
                            <option key={section.section} value={section.section}>
                                {section.section}
                            </option>
                        ))}
                    </select>
                    <Field defaultValue={courseName} handlechange={handleChange} name={"courseName"} labelName={"Course Name"}></Field>
                    <Field defaultValue={type} name={"type"} labelName={"Type"} handlechange={handleChange}></Field>
                    <Location defaultValue={location} name={"location"} labelName={"Location"} handlechange={handleChange} />
                    <Field defaultValue={startTime} inputType={"time"} name={"startTime"} labelName={"Start Time"} handlechange={handleChange} />
                    <Field defaultValue={endTime} inputType={"time"} name={"endTime"} labelName={"End Time"} handlechange={handleChange} />
                    <button className="bg-[var(--md-sys-color-tertiary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold rounded-full">
                        Update
                    </button>
                </form>
                <form className="flex flex-col" onSubmit={submitDelete}>
                    <button className="bg-[var(--md-sys-color-tertiary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold rounded-full">
                        Delete
                    </button>
                </form>
            </div>
        </div>
    );
}

export default Modify;
