import React, { Component } from 'react';
import { connect } from 'react-redux'
import Weather from '../components/Weather.es6';
import {fetchWeather} from '../actions/weather.es6';



export default class WeatherContainerImpl extends Component {
  
  render() {
    return (<Weather title="Weather" weather={this.props.weather} />);
  }

  componentDidMount(){
     this.props.dispatch(fetchWeather());
  }
}



const mapStateToProps = (state, ownProps) => {
  return {
    weather: state.weather.data
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    dispatch
  }
}

const WeatherContainer = connect(
  mapStateToProps,
  mapDispatchToProps
)(WeatherContainerImpl);

export default WeatherContainer;

