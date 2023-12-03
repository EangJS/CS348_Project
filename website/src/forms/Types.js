function Types(props) {
    const types = ["PSO", "Lecture", "Laboratory", "Recitation"];
    const { name, labelName, handlechange } = props;
    return (
        <div className="w-full px-3 mb-6 md:mb-0">
            <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                {labelName}
            </label>
            <div className="flex flex-wrap gap-1">
                {types.map((type) => (
                    <div key={type} className="w-1/2 mb-2">
                        <label className="text-md font-bold">
                            <input
                                type="radio"
                                name={name}
                                value={type}
                                onChange={handlechange}
                                checked={type === props["defaultValue"]}
                            />
                            {type}
                        </label>
                    </div>
                ))}
                <div className="w-1/2 mb-2">
                    <label>
                        <input
                            type="radio"
                            name={name}
                            value=""
                            onChange={handlechange}
                        />
                        All
                    </label>
                </div>
            </div>
        </div>
    );
}

export default Types;

