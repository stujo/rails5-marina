export const WEATHER_REQUESTED = 'WEATHER_REQUESTED';
export const WEATHER_LOADED = 'WEATHER_LOADED';
export const WEATHER_ERRORED = 'WEATHER_ERRORED';

export function weatherRequested() {
    return {
        type: WEATHER_REQUESTED
    };
}

export function weatherLoaded(details) {
    return {
        type: WEATHER_LOADED,
        details
    };
}

export function weatherErrored(error) {
    return {
        type: WEATHER_ERRORED,
        error
    };
}
