import React, { Component } from 'react';
import { render } from 'react-dom'
import { Provider } from 'react-redux';
import WeatherContainer from './WeatherContainer';
import configureStore from '../store/configureStore';
import {setCounter} from '../actions/counter'

const store = configureStore();

export default class WeatherRoot extends Component {
  componentWillMount() {
    store.dispatch(setCounter(this.props.counter));
  }
  render() {
    return (
      <Provider store={store}>
        <WeatherContainer />
      </Provider>
    );
  }
}
