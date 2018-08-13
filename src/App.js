import React from 'react';
import {render} from 'react-dom';
import Gallery from 'react-grid-gallery';
import images from './images.json'
import './App.css'

const App = () => render(
  <Gallery images={images} margin={5} rowheight={100}/>, document.getElementById('root'));

export default App;
