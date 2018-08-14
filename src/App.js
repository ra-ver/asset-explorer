import React from 'react';
import {render} from 'react-dom';
import Gallery from 'react-grid-gallery';
import images from './images.json'
import './App.css'

function myTileViewportStyleFn() {
  return {display: "inline", width: "185px", marginLeft: "15px", marginRight: "auto"};
}
const App = () => render(
  <Gallery
  images={images}
  margin={20}
  rowheight={170}
  enableImageSelection={false}
  tileViewportStyle={myTileViewportStyleFn}/>, document.getElementById('root'));

export default App;
