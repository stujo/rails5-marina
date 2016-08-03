import React, { Component } from 'react';
import { render } from 'react-dom'
import { Provider } from 'react-redux';
import WeatherContainer from './WeatherContainer.js.es6';
import configureStore from '../store/configureStore.js.es6';

const store = configureStore();

export default class WeatherRoot extends Component {
  render() {
    return (
      <Provider store={store}>
        <WeatherContainer />
      </Provider>
    );
  }
}
