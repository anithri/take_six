import { GET_GAMES } from 'models/GameCollection'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const GamesCollectionContainer = ({ className, display: List }) => (
  <Query query={GET_GAMES}>
    {({ loading, error, data: { games } }) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      console.log('GameContainer', games)
      return <List games={games} className={className} />
    }}
  </Query>
)

GamesCollectionContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default GamesCollectionContainer
