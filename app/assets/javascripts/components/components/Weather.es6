export default function Weather(props){

  function details(){

	 if( props.details && props.details.length > 0 ){
	    return (
	    	<div className="details">
	    	  { props.details[0].description }
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