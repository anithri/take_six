---
to: <%= h.src('components', Name, 'index.js') %>
---
import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'
import styles from './styles'

const <%= Name %> = ({className}) => (
  <div className={cx(className, styles.<%= name %>)}>
    <h2>Component (styled) <%= Name %></h2>
  </div>
)

<%= Name %>.propTypes = {
  className: PropTypes.string,
}

export default <%= Name %>
