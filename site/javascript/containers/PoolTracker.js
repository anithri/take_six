import {GET_POOL_TRACKER} from 'models/Pool'
import {namedShape} from '../models/Utility'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const TRACKED_BOARDS = ['bar', 'draw', 'dead', 'discard', 'reserve']

const PoolTrackerContainer = ({className, game, display: PoolsDisplay}) => {
  const poolsInput = {poolsInput: {boardIds: TRACKED_BOARDS, gameId: game.id}}
  return (
    <Query query={GET_POOL_TRACKER} variables={poolsInput}>
      {({loading, error, data: {pools}}) => {
        if (loading) return <div>Loading...</div>
        if (error) return <div>Error!</div>
        return <PoolsDisplay pools={pools} className={className} game={game} />
      }}
    </Query>
  )
}

PoolTrackerContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
  game: namedShape,
}

export default PoolTrackerContainer
