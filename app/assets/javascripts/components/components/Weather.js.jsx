function Weather(props){

  function details(){
	 if(props.details){
	     return props.details.map(function(info){
	       return info.description;
	     }).join(", ");
	 } else {
	    return (<div className="loading">Loading...</div>);	
	 }
  }

  return (<div>
		    <h2>{props.title}</h2>
            {details()}
          </div>
		);
}