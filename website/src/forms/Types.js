import React, { useEffect, useState } from "react";

function Types(props) {
    const types = ["PSO", "Lecture", "Laboratory"];
    const { name, labelName, handlechange } = props;
    const [selectedTypes, setSelectedTypes] = useState([]);
    const handleCheckboxChange = (selectedType) => {
        const { name, value } = selectedType.target;
        if (!selectedTypes.includes(value)) {
            const updatedSelectedTypes = [...selectedTypes, value];
            setSelectedTypes(updatedSelectedTypes);
            handlechange(updatedSelectedTypes);
        } else {
            const updatedSelectedTypes = selectedTypes.filter((type) => type !== value);
            console.log(updatedSelectedTypes);
            setSelectedTypes(updatedSelectedTypes);
            handlechange(updatedSelectedTypes);
        }

    };
    return (
        <div className="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                {labelName}
            </label>
            <div className="flex flex-wrap">
                {types.map((type) => (
                    <div key={type} className="w-1/2 mb-2">
                        <label>
                            <input
                                type="checkbox"
                                name={name}
                                value={type}
                                onChange={handleCheckboxChange}
                            />
                            {type}
                        </label>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Types;

