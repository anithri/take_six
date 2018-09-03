import {idShape, namedShape, themedShape} from 'models/Utility'
import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'

export const PoolShape = PropTypes.shape({
  board: namedShape.isRequired,
  game: idShape.isRequired,
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  workers: PropTypes.arrayOf(themedShape),
})

export const GET_POOL = gql`
  query($id: ID!) {
    pool(id: $id) {
      id
      name
      game {
        id
      }
      board {
        id
        name
      }
      workers {
        id
        name
      }
    }
  }
`
