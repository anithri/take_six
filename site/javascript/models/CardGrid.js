import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'

export const CardGridShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
})

export const GET_CARD_GRID = gql`
  query($id: ID!) {
    card_grid(id: $id) {
      id
    }
  }
`
