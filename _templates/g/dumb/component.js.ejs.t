---
to: <%= h.src('components',Name,'.js') %>
---
import PropTypes from 'prop-types'
import React from 'react'

const <%= Name %> = ({className}) => (
  <div className={className}>
    <h2>Component: <%= Name %></h2>
  </div>
)

<%= Name %>.propTypes = {
  className: PropTypes.string,
}

export default <%= Name %>
