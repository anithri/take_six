import PropTypes from 'prop-types'
import { gql } from 'apollo-boost'

export const gameCollectionShape = PropTypes.arrayOf(
  PropTypes.shape({
    id: PropTypes.string.isRequired,
    name: PropTypes.string.isRequired,
  }),
)

export const GET_GAMES = gql`
  query {
    games {
      id
      name
    }
  }
`
