import {GET_PLAYER} from 'models/Player'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const PlayerContainer = ({className, display: PlayerDisplay}) => (
  <Query query={GET_PLAYER}>
    {({loading, error, data: {game}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <PlayerDisplay data={data} className={className} />
    }}
  </Query>
)

PlayerContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default PlayerContainer
