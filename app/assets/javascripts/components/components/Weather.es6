export default function Weather(props){

  function details(){

	 if( props.weather && props.weather.weather && props.weather.weather[0] ){
	    return (
	    	<div className="details">
	    	  { props.weather.weather[0].description }
	    	</div>
	    	);
	 } else {
	    return (<div className="loading">Loading...</div>);	
	 }
  }

  return (<div className="weather-info">
		    <h2>{props.title}</h2>
            {details()}
          </div>
		);
}