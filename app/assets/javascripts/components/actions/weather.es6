import 'babel-polyfill'
import fetch from 'isomorphic-fetch'

export const WEATHER_REQUESTED = 'WEATHER_REQUESTED';
export const WEATHER_LOADED = 'WEATHER_LOADED';
export const WEATHER_ERRORED = 'WEATHER_ERRORED';

export function fetchWeather() {
  return function (dispatch) {

    // First dispatch: the app state is updated to inform
    // that the API call is starting.

    dispatch(weatherRequested());

    // The function called by the thunk middleware can return a value,
    // that is passed on as the return value of the dispatch method.

    // In this case, we return a promise to wait for.
    // This is not required by thunk middleware, but it is convenient for us.

    return fetch('/weather.json')
      .then(response => response.json())
      .then(data =>

        // We can dispatch many times!
        // Here, we update the app state with the results of the API call.

        dispatch(weatherLoaded(data))
      )

      // In a real world app, you also want to
      // catch any error in the network call.
  }
}


export function weatherRequested() {
   return {
        type: WEATHER_REQUESTED
    };
}

export function weatherLoaded(data) {
    return {
        type: WEATHER_LOADED,
        data
    };
}

export function weatherErrored(error) {
    return {
        type: WEATHER_ERRORED,
        error
    };
}
