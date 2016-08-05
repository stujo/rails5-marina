import Weather from '../components/Weather.es6';

export default class WeatherContainer extends React.Component {
  constructor(props){
    super(props)
    this.state = this.state || {}
    this.state.weather = this.state.weather || []
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
    return (<Weather title="Weather" details={this.state.weather} />);
  }
}