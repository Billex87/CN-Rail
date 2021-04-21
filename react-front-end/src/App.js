import React from 'react';
import Login from './login/Login'
import './App.css';
import Register from './Register/Register'
import Modal from './modal/Modal'



export default function App () {
  
    return (
      <div className="App">
        <h1>HELLO WORLD</h1>
        <Login/>     
        <Register/>
        <Modal/>
        

      </div>
    );

}


