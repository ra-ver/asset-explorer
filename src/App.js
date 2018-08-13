import React from 'react';
import {render} from 'react-dom';
import Gallery from 'react-grid-gallery';
import images from './images.json'
import './App.css'

function myTileViewportStyleFn() {
  return {width: "170px", margin: "auto"};
}
const App = () => render(
  <Gallery
  images={images}
  margin={20}
  rowheight={170}
  tileViewportStyle={myTileViewportStyleFn}/>, document.getElementById('root'));

export default App;
