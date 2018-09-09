import {PoolShape} from './Pool'
import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'
import {idShape} from 'models/Utility'
import {PoolShape} from './Pool'

export const PoolsShape = PropTypes.arrayOf(PoolShape)

export const GET_POOLS = gql`
  query($gameId: ID!) {
    pools(gameId: $gameId) {
      id
      name
    }
  }
`
