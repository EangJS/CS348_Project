import DisplayBox from './DisplayBox';


function Session({ formData }) {
    if (!formData[0]) {
        return (
            <div className='flex flex-col gap-3 w-full'>
                No matches found!
            </div>
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
