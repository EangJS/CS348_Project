import React, { useState, useEffect } from 'react';
import DisplayBox from './DisplayBox';
async function getSessions() {
    try {

        var myHeaders = new Headers();
        myHeaders.append("Ocp-Apim-Subscription-Key", process.env.REACT_APP_SUBSCRIPTION_KEY);

        var requestOptions = {
            method: 'GET',
            headers: myHeaders,
        };
        const response = await fetch(process.env.REACT_APP_API_URL + '/Report', requestOptions);
        if (!response.ok) {
            throw new Error(`Failed to fetch data. Status: ${response.status}`);
        }
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Error:', error);
    }
}

function Session() {
    const [output, setOutput] = useState([]);
    useEffect(() => {
        async function fetchData() {
            const data = await getSessions();
            setOutput(data);
        }
        fetchData();
    }, []);
    return (
        <div className='flex flex-col gap-3 w-full'>
            {output.map((item, index) => (
                <div key={index}>
                    <DisplayBox session={item}></DisplayBox>
                </div>

            ))}
        </div>
    );
}

export default Session;
