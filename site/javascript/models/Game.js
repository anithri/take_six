import { gql } from 'apollo-boost'
import PropTypes from 'prop-types'
import { PlayerShape } from './Player'
import { namedShape } from './Utility'

export const gameShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  players: PropTypes.arrayOf(PlayerShape.isRequired),
})

export const gameCollectionShape = PropTypes.arrayOf(namedShape)

export const GET_GAME = gql`
  query($id: ID!) {
    game(id: $id) {
      id
      name
      players {
        id
        board {
          id
        }
      }
    }
  }
`

export const CREATE_GAME = gql`
  mutation CreateGame {
    createGame {
      game {
        id
        name
      }
    }
  }
`
