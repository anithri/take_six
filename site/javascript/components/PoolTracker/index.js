import cx from 'classnames'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {Link} from 'react-router-dom'
import {namedShape} from '../../models/Utility'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const PoolTracker = ({className, game}) => (
  <header className={cx(className, styles.PoolTracker)}>
    <h3>
      {game.name}
      <Link to="/games">
        <FontAwesomeIcon icon="home" />
      </Link>
    </h3>
    <Link to="/games">Home</Link>
  </header>
)

PoolTracker.propTypes = {
  className: PropTypes.string,
  game: namedShape,
}

export default PoolTracker
