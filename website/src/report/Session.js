import DisplayBox from './DisplayBox';


function Session({ formData }) {
    if (!formData[0]) {
        return (
            <div className='text-3xl font-bold mt-2 text-[var(--md-sys-color-on-primary-container-dark)]'>
                Internal Server Error
            </div>
        )
    }
    if (formData[0]) {
        return (
            <div className='flex flex-col gap-3 w-full'>
                {formData.map((item, index) => (
                    <div key={index}>
                        <DisplayBox session={item}></DisplayBox>
                    </div>
                ))}
            </div>


        );
    } else if (formData.length === 0) {
        return (
            <div className='text-3xl font-bold mt-2 text-[var(--md-sys-color-on-primary-container-dark)]'>
                No matches found!
            </div>
        );
    }
}

export default Session;
