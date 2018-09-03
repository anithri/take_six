import {GET_PLAYER} from 'models/Player'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const PlayerContainer = ({className, display: PlayerDisplay, playerId}) => (
  <Query query={GET_PLAYER} variables={{id: playerId}}>
    {({loading, error, data: {player}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <PlayerDisplay player={player} className={className} />
    }}
  </Query>
)

PlayerContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
  playerId: PropTypes.string.isRequired,
}

export default PlayerContainer
