import { WEATHER_REQUESTED, WEATHER_LOADED, WEATHER_ERRORED } from '../actions/weather.es6';

export default function weather(state = {}, action) {
  switch (action.type) {
  case WEATHER_REQUESTED:
    return { pending: true, errored: false };
  case WEATHER_ERRORED:
    return { pending: false, errored: true };
  case WEATHER_LOADED:
    return { 
    	pending: false,
    	errored: false,
    	details: action.details
    };
  default:
    return state;
  }
}