import '../App.css';
import '../material-css/theme.css';
import React, { useState } from 'react';
import Field from '../forms/Field';
import Location from '../forms/Location';
import Faculty from '../forms/Faculty';
import Modify from './Modify';

/**
 * Holds the Addition of new sessions via the backend and the Modify component.
 * @returns Manage Component that is used for Adding/Modifying data Page
 */
function Manage() {
  const [formData, setFormData] = useState({
    courseName: '',
    section: '',
    type: '',
    dayOfWeek: '',
    publishedStart: '',
    publishedEnd: '',
    location: '',
    email: '',
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
    fetch(process.env.REACT_APP_API_URL + '/Report/Session', {
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
  return (
    <div className="App-theme">
      <a href="/" className="m-3 bg-[var(--md-sys-color-tertiary-container-dark)] hover:bg-[var(--md-sys-color-secondary-container)] text-[var(--md-sys-color-on-primary-container-dark)] py-2 px-4 rounded-full">Home</a>
      <div className="flex items-center justify-center w-full p-5 m-5">
        <div className="max-w-full p-5 m-5 rounded-xl bg-[var(--md-sys-color-on-primary-dark)]">
          <form className="w-full max-w-lg" onSubmit={submit}>
            <div className="flex flex-wrap -mx-3 mb-6">
              <Field handlechange={handleChange} name={"courseName"} labelName={"Course Name"}></Field>
              <Field handlechange={handleChange} name={"section"} labelName={"Section"}></Field>
              <Field handlechange={handleChange} name={"type"} labelName={"Type"}></Field>
              <Field handlechange={handleChange} name={"dayOfWeek"} labelName={"Day of Week"}></Field>
              <Field inputType={"time"} handlechange={handleChange} name={"publishedStart"} labelName={"Start Time"}></Field>
              <Field inputType={"time"} handlechange={handleChange} name={"publishedEnd"} labelName={"End Time"}></Field>
              <Location name={"location"} labelName={"Location"} handlechange={handleChange} />
              <Faculty handlechange={handleChange} name={"email"} labelName={"Email"} />
              <button className="bg-[var(--md-sys-color-primary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold py-2 px-4 rounded-full">
                Submit
              </button>
            </div>
          </form>
        </div>
      </div>
      <Modify></Modify>
    </div>

  );
}

export default Manage;
