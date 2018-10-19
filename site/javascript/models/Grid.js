import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'

export const GridShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
})

export const GET_GRID = gql`
  query($id: ID!) {
    grid(id: $id) {
      id
    }
  }
`
