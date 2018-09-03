import {GET_POOLS} from 'models/Pools'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const PoolsContainer = ({className, display: PoolsDisplay}) => (
  <Query query={GET_POOLS}>
    {({loading, error, data: {pools}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <PoolsDisplay pools={pools} className={className} />
    }}
  </Query>
)

PoolsContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default PoolsContainer
