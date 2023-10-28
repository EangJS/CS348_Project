import './App.css';
import './material-css/theme.css';
import React, { useState } from 'react';
import Field from './Field';
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
    console.log("abc");
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const submit = (e) => {
    e.preventDefault();
    // Make the POST request using the fetch API
    fetch('https://localhost:7126/Report', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(formData),
    })
      .then((response) => {
        if (response.status === 200) {
          alert("Success");
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
      <div className="flex items-center justify-center w-full p-5 m-5">
        <div className="max-w-full p-5 m-5 rounded-xl bg-[var(--md-sys-color-on-primary-dark)]">
          <form className="w-full max-w-lg" onSubmit={submit}>
            <div className="flex flex-wrap -mx-3 mb-6">
              <Field handlechange={handleChange} name={"courseName"} labelName={"Course Name"}></Field>
              <Field handlechange={handleChange} name={"section"} labelName={"Section"}></Field>
              <Field handlechange={handleChange} name={"type"} labelName={"Type"}></Field>
              <Field handlechange={handleChange} name={"dayOfWeek"} labelName={"Day of Week"}></Field>
              <Field handlechange={handleChange} name={"publishedStart"} labelName={"Start Time"}></Field>
              <Field handlechange={handleChange} name={"publishedEnd"} labelName={"End Time"}></Field>
              <Field handlechange={handleChange} name={"location"} labelName={"Location"}></Field>
              <Field handlechange={handleChange} name={"email"} labelName={"Email"}></Field>
              <button className="bg-[var(--md-sys-color-primary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold py-2 px-4 rounded-full">
                Submit
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>

  );
}

export default Manage;
