import './App.css';
import './material-css/theme.css';
import Manage from './editor/Manage';
import React from 'react';
import { BrowserRouter, Routes, Route, } from "react-router-dom";
import Home from './report/Home';
function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/Manage" element={<Manage />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
