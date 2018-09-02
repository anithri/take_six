import 'css/site.css'
import Helmet from './Helmet'
import Pages from 'pages'
import React from 'react'

class App extends React.Component {
  render() {
    return (
      <Pages className="max">
        <Helmet />
      </Pages>
    )
  }
}

export default App
