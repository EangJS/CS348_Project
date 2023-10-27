import './App.css';
import Session from './Session';
import './material-css/theme.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <div className="flex w-full p-2">
          <div className="max-w-full">
            <Session></Session>
          </div>
          <div className="max-w-full flex-1">
            Filter by
          </div>
        </div>

      </header>
    </div>
  );
}

export default App;
