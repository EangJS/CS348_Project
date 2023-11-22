import '../App.css';
import Session from './Session';
import '../material-css/theme.css';
import Filter from './Filter';
import {useEffect, useState} from "react";
function App() {
  const [formData, setFormData] = useState({
  });

  const [reloadOutput, setReloadOutput] = useState(false);

  const handleFormSubmit = (data) => {
    setFormData(data);

    // Trigger a reload of the OutputComponent by changing the state
    setReloadOutput(!reloadOutput);
  };

  return (
    <header className="App-theme">
      <div className="flex w-full p-2 gap-2">
        <div className="max-w-full">
          <Session formData={formData} reloadOutput={reloadOutput}></Session>
        </div>
        <div className="max-w-full flex-1">
          <Filter onFormSubmit={handleFormSubmit}></Filter>
        </div>
      </div>
    </header>
  );
}

export default App;
