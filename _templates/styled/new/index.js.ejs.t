---
to: <%= components %>/<%= Name %>/index.js
---
import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'
import styles from './styles.css'

const <%= Name %> = ({className}) => (
  <div className={cx(className, styles.<%= name %>)}>
    <%= components %>/<%= Name %>.js
  </div>
)

<%= Name %>.propTypes = {
  className: PropTypes.string,
}

export default <%= Name %>
