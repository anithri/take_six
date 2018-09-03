import {PoolShape} from './Pool'
import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'
import {idShape} from 'models/Utility'

export const PoolsShape = PropTypes.arrayOf(
  PropTypes.shape({
    bar: PoolShape,
    dead: PoolShape,
    discard: PoolShape,
    draw: PoolShape,
    game: idShape,
    reserve: PoolShape,
  }),
)

export const GET_POOLS = gql`
  query($id: ID!) {
    pools(id: $id) {
      bar {
        id
        name
      }
    }
  }
`
