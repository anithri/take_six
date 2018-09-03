import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'
import styles from './styles'
import {Link} from 'react-router-dom'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'

const Pools = ({className}) => (
  <header className={cx(className, styles.Pools)}>
    <h3>
      {game.name}
      <Link to="/games">
        <FontAwesomeIcon icon="home" />
      </Link>
    </h3>
    <Link to="/games">Home</Link>
  </header>
)

Pools.propTypes = {
  className: PropTypes.string,
}

export default Pools
