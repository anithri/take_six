import GameCollection from 'containers/GameCollection'
import GamesList from 'components/GamesList'
import PropTypes from 'prop-types'
import React from 'react'
import CreateGameBtn from 'containers/CreateGame'

class GameCollectionPage extends React.Component {
  render() {
    const { children, className } = this.props
    console.log(this.props)
    return (
      <div id="GamesPage" className={`pageWrapper ${className}`}>
        {children}
        <main>
          <h1>Games List</h1>
          <CreateGameBtn />
          <GameCollection display={GamesList} />
        </main>
      </div>
    )
  }
}

GameCollectionPage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default GameCollectionPage
