class WeatherContainer extends React.Component {
  constructor() {
    super();
    this.state = { comments: [] }
  }
  componentDidMount() {
    $.ajax({
      url: "/weather.json",
      dataType: 'json',
      success: function(data) {
        this.setState({weather: data.weather});
      }.bind(this)
    });
  }
  render() {
  	if(this.state.weather){
      return (<Weather title="Weather" details={this.state.weather} />);
    } else {
      return (<div className="loading"></div>);
  }
}
}