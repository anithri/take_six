---
to: <%= h.src('models', name, '.js') %>
---
import PropTypes from 'prop-types'
import {gql} from 'apollo-boost'

export const <%= name %>Shape = PropTypes.shape({
  id: PropTypes.string.isRequired,
})

export const GET_<%= name.toUpperCase() %> = gql`
  query($id: ID!) {
    <%= name.toLowerCase() %>(id: $id) {
      id
    }
  }
`
