import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'

export const gameShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})

export const GET_GAME = gql`
  query($id: ID!) {
    game(id: $id) {
      id
      name
    }
  }
`
