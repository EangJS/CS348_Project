function DisplayBox(props) {
    const { session } = props;

    return (
        <div className="flex flex-col p-3 text-start text-[var(--md-sys-color-on-surface-dark)]">
            <div className="col-lg-8 col-md-12 col-sm-8">
                <header>
                    <h2 className="text-3xl font-bold mt-2 text-[var(--md-sys-color-on-primary-container-dark)]">Course Name:{session.courseName}</h2>
                    {session.section} • {session.type}
                </header>
                <div className="text-lg">
                    {session.location}
                </div>
                <div className="text-sm">
                    {session.publishedStart} - {session.publishedEnd} • {session.dayOfWeek}
                </div>

            </div>

        </div >
    );
}

export default DisplayBox;