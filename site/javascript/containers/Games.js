import {GET_GAMES} from '../models/Games'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const GamesContainer = ({className, display: GamesDisplay}) => (
  <Query query={GET_GAMES}>
    {({loading, error, data: {games}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      console.log('GamesContainer', games)
      return <GamesDisplay games={games} className={className} />
    }}
  </Query>
)

GamesContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default GamesContainer
