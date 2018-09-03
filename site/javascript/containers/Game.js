import {GET_GAME} from 'models/Game'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const GameContainer = ({className, display: GameDisplay, gameId}) => (
  <Query query={GET_GAME} variables={{id: gameId}}>
    {({loading, error, data: {game}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <GameDisplay game={game} className={className} />
    }}
  </Query>
)

GameContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
  gameId: PropTypes.string.isRequired,
}

export default GameContainer
