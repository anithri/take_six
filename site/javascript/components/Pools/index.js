import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'
import styles from './styles'

const Pools = ({className}) => (
  <div className={cx(className, styles.Pools)}>
    <h2>Component (styled) Pools</h2>
  </div>
)

Pools.propTypes = {
  className: PropTypes.string,
}

export default Pools
