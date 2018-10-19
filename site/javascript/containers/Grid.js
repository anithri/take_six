import {GET_GRID} from 'models/Grid'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const GridContainer = ({className, display: GridDisplay, gameId}) => (
  <Query query={GET_GRID} variables={{id: gameId}}>
    {({loading, error, data}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <GridDisplay data={data} className={className} />
    }}
  </Query>
)

GridContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default GridContainer
