import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { PoolShape } from 'models/Pool'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const Pool = ({ className, pool }) => {
  const workers = pool.workers.map(({ id, theme, count }) => (
    <span
      className={cx(styles.Worker, 'fa-layers fa-fw')}
      key={`${id}-${count}`}
    >
      <FontAwesomeIcon
        icon="child"
        color={`var(--${theme})`}
        className={styles.icon}
      />
      <span className={cx('fa-layers-text', styles.WorkerCount)}>{count}</span>
    </span>
  ))
  return (
    <div className={cx(className, styles.Pool, styles[pool.id])}>
      <header className={styles.poolHeader}>
        <h2>{pool.name}</h2>
      </header>
      {workers}
    </div>
  )
}

Pool.propTypes = {
  className: PropTypes.string,
  pool: PoolShape,
}

export default Pool
