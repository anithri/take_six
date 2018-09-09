import cx from 'classnames'
import {faChild} from '@fortawesome/free-solid-svg-icons'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {PoolShape} from 'models/Pool'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const Pool = ({className, pool}) => {
  const workers = pool.workers.map(({theme}, idx) => (
    <FontAwesomeIcon icon={faChild} className={cx(styles.Worker, theme)} key={theme + idx}/>
  ))
  return (
    <div className={cx(className, styles.Pool)}>
      <header className={styles.header}>
        <h5>{pool.name}</h5>
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
