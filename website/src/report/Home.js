import '../App.css';
import Session from './Session';
import '../material-css/theme.css';
import Filter from './Filter';
import { useState } from "react";
import Spinner from './Spinner';
function App() {
  const [formData, setFormData] = useState({
  });

  const [isLoading, setIsLoading] = useState(true);
  const handleFormSubmit = (data) => {
    setFormData(data);
    setIsLoading(false);
  };

  return (
    <header className="App-theme">
      <a href="/Manage" className="m-3 bg-[var(--md-sys-color-tertiary-container-dark)] hover:bg-[var(--md-sys-color-secondary-container)] text-[var(--md-sys-color-on-primary-container-dark)] font-bold py-2 px-4 rounded-full">
        Manager
      </a>
      <div className="flex w-full p-2 gap-2">
        <div className="w-3/5 overflow-y-auto max-h-screen">
          {!isLoading && <Session formData={formData}></Session>}
          {isLoading && <Spinner />}
        </div>
        <div className="w-2/5">
          <Filter onFormSubmit={handleFormSubmit} setLoader={setIsLoading}></Filter>
        </div>
      </div>
    </header>
  );
}

export default App;
