import {idShape, namedShape, themedShape} from 'models/Utility'
import {gql} from 'apollo-boost'
import PropTypes from 'prop-types'
import {WorkerShape} from 'models/Worker'

export const PoolShape = PropTypes.shape({
  board: namedShape.isRequired,
  game: idShape.isRequired,
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  workers: PropTypes.arrayOf(WorkerShape),
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
        theme
        count
      }
    }
  }
`

export const GET_POOL_TRACKER = gql`
  query($poolsInput: PoolsInput!) {
    pools(poolsInput: $poolsInput) {
      id
      name
      board {
        id
        name
      }
      game {
        id
      }
      workers {
        id
        name
        theme
        count
      }
    }
  }
`
