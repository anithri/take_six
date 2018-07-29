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
          <h1 class="logo">Hiya Logo</h1>
          <h1 className="headline">Headline</h1>
          <h1 className="subheadline">Subheadline</h1>
          <h1>Hiya h1</h1>
          <h2>Hiya h2</h2>
          <h3>Hiya h3</h3>
          <h4>Hiya h4</h4>
          <h5>Hiya h5</h5>
          <h6>Hiya h6</h6>






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
