import {idShape, namedShape, themedShape} from 'models/Utility'
import {gql} from 'apollo-boost'
import PropTypes from 'prop-types'

export const PoolShape = PropTypes.shape({
  board: namedShape.isRequired,
  game: idShape.isRequired,
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  workers: PropTypes.arrayOf(themedShape),
})

export const PoolsShape = PropTypes.arrayOf(PoolShape)

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

export const GET_POOL_TRACKER = gql`
  query($poolsInput: PoolsInput!) {
    pools(poolsInput: $poolsInput) {
      id
      workers {
        id
        name
        theme
      }
      board {
        id
        name
      }
      game {
        id
      }
    }
  }
`
