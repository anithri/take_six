import { gql } from 'apollo-boost'
import PropTypes from 'prop-types'

export const PlayerShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string,
})

export const GET_PLAYER = gql`
  query($id: ID!) {
    player(id: $id) {
      id
      name
      workers {
        id
        name
      }
      board {
        id
        name
      }
    }
  }
`
