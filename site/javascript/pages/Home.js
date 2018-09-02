import PropTypes from 'prop-types'
import React from 'react'

class HomePage extends React.Component {
  render() {
    const {children, className} = this.props
    console.log(this.props)
    return (
      <div id="homePage" className={`pageWrapper ${className}`}>
        {children}
        <main>
          <h1>Hiya h1</h1>
          <p>How are you?</p>
        </main>
      </div>
    )
  }
}

HomePage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default HomePage
