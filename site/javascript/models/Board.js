import PropTypes from 'prop-types'
import { gql } from 'apollo-boost'

export const BoardShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string,
})
