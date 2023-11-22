import React, { useState, useEffect } from 'react';
import DisplayBox from './DisplayBox';


function Session({formData,reloadOutput}) {
    useEffect(() => {
        // Check if reloadOutput changed, and take appropriate action
        if (reloadOutput) {
            console.log('Reloading OutputComponent...');
            // Perform any additional logic needed for reloading

            // Reset the reloadOutput state in the parent component
            // This prevents continuous reloading unless triggered again
            // Alternatively, you can reset it based on your specific requirements
            // setReloadOutput(false);
        }
    }, [reloadOutput]);
    if(!formData[0]) {
        return (
            <h1>Make a request!</h1>
        );
    }

    return (
        <div className='flex flex-col gap-3 w-full'>
            {formData.map((item, index) => (
                <div key={index}>
                    <DisplayBox session={item}></DisplayBox>
                </div>
            ))}
        </div>


    );
}

export default Session;
