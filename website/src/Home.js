import './App.css';
import Session from './Session';
import './material-css/theme.css';
function App() {
  return (
    <header className="App-theme">
      <div className="flex w-full p-2 gap-2">
        <div className="max-w-full">
          <Session></Session>
        </div>
        <div className="max-w-full flex-1">
          Filter by
        </div>
      </div>
    </header>
  );
}

export default App;
