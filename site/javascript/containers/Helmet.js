import React from 'react'
import { Helmet as ReactHelmet } from 'react-helmet'

class Helmet extends React.Component {
  render() {
    return (
      <ReactHelmet>
        <meta charSet="utf-8" />
        <title>Badger - Internal Projects</title>
      </ReactHelmet>
    )
  }
}

export default Helmet
