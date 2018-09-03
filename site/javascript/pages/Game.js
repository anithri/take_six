import GameContainer from 'containers/Game'
import GameDisplay from 'components/GameTable'
import PropTypes from 'prop-types'
import React from 'react'

class GamePage extends React.Component {
  render() {
    const {children, className, match: {params: {gameId}}} = this.props
    return (
      <div id="GamesPage" className={`pageWrapper ${className}`}>
        {children}
        <main>
          <h1>Games List</h1>
          <GameContainer display={GameDisplay} gameId={gameId} />
        </main>
      </div>
    )
  }
}

GamePage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  match: PropTypes.shape({
    params: PropTypes.shape({
      gameId: PropTypes.string.isRequired,
    }),
  }),
}

export default GamePage
