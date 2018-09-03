import GamesContainer from 'containers/Games'
import GamesList from 'components/GamesList'
import PropTypes from 'prop-types'
import React from 'react'

class GamesPage extends React.Component {
  render() {
    const {children, className} = this.props
    console.log(this.props)
    return (
      <div id="GamesPage" className={`pageWrapper ${className}`}>
        {children}
        <main>
          <h1>Games List</h1>
          <GamesContainer display={GamesList} />
        </main>
      </div>
    )
  }
}

GamesPage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default GamesPage
