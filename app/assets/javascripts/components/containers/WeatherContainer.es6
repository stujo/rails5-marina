import { connect } from 'react-redux'
import Weather from '../components/Weather.es6';


export function WeatherContainerImpl(props){
    return (<Weather title="Weather" weather={props.weather} />);
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

