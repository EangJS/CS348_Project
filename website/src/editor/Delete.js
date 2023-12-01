import '../App.css';
import '../material-css/theme.css';
import React, { useState } from 'react';

function Delete() {
    const [deleteId, setDeleteId] = useState(null);
    const handleChange = (e) => {
        const target = e.target;
        setDeleteId(target.value);
    };

    const submit = (e) => {
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
        <div className="flex items-center justify-center w-full p-5 m-5">
            <div className="max-w-full p-5 m-5 rounded-xl bg-[var(--md-sys-color-on-primary-dark)]">
                <form className="flex flex-col" onSubmit={submit}>
                    <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                        Session Id
                    </label>
                    <input type="text" name="deleteSession" className="appearance-none block w-full text-[var(--md-sys-color-on-secondary-container)] bg-[var(--md-sys-color-secondary-container-dark)] border rounded py-3 px-4 mb-3 leading-tight focus:outline-none " onChange={handleChange} />
                    <button className="bg-[var(--md-sys-color-tertiary-container-dark)] hover:bg-[var(--md-sys-color-surface-dark)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold rounded-full">
                        Delete
                    </button>
                </form>
            </div>
        </div>
    );
}

export default Delete;
