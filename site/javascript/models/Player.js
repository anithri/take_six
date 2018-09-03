import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'

export const PlayerShape = PropTypes.shape({
  id: PropTypes.string.isRequired
})

export

export const GET_PLAYER = gql`
  query($id: ID!) {
    Player(id: $id) {
      id
    }
  }
`
