import { PlayerShape } from 'models/Player'
import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'
import styles from './styles.module.css'

const Goals = ({ className, workers }) => {
  const goals = workers.map(goal => (
    <div key={goal.id} className={cx(styles.scoringWorker, goal.id)}>
      {goal.name}
    </div>
  ))
  return (
    <div className={cx(className, styles.Player)}>
      <header>
        <h2>{player.name}</h2>
        <section>{goals}</section>
      </header>
    </div>
  )
}
Player.propTypes = {
  className: PropTypes.string,
  workers: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.string.isRequired,
      name: PropTypes.string,
    }),
  ),
}

export default Player
