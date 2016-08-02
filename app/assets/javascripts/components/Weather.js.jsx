function Weather(props){
  return (<div>
		    <h2>{props.title}</h2>
            {props.details}
          </div>
		);
}