import { combineReducers } from 'redux';
import weather from './weather.es6';

const rootReducer = combineReducers({
  weather
});

export default rootReducer;