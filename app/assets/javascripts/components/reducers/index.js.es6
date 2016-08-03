import { combineReducers } from 'redux';
import weather from './weather.js.es6';

const rootReducer = combineReducers({
  weather
});

export default rootReducer;