import '../material-css/theme.css';
function Field(props) {
    return (
        <div className="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label className="block uppercase tracking-wide text-[var(--md-sys-color-on-primary-container-dark)] text-xs font-bold mb-2">
                {props["labelName"]}
            </label>
            <input type={props["inputType"]} name={props["name"]} className="appearance-none block w-full text-[var(--md-sys-color-on-secondary-container)] bg-[var(--md-sys-color-secondary-container-dark)] border rounded py-3 px-4 mb-3 leading-tight focus:outline-none " onChange={props["handlechange"]} />
        </div>
    );
}

export default Field;