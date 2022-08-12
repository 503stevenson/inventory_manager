import './App.css';
import {useState} from 'react'

function App() {
  const [header, setHeader] = useState("Not Updated");
  const updateHeader = () => {
    console.log(header === "Not Updated")
    if (header === "Not Updated") {
      setHeader("Updated");
    } else if (header === "Updated") {
      setHeader("Not Updated")
    }
  }
  return (
    <div className="App">
      <header className="App-header">
        <h1>{ header }</h1>
        <button onClick={ updateHeader }>Click Me</button>
      </header>
    </div>
  );
}

export default App;
