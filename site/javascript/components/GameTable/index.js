import cx from 'classnames'
import { gameShape } from 'models/Game'
import Player from 'components/Player'
import PlayerContainer from 'containers/Player'
import PoolTracker from 'components/PoolTracker'
import PoolTrackerContainer from 'containers/PoolTracker'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const GameTable = ({ game, className }) => {
  console.log(game)
  const playerAreas = game.players.map(({ id, board }) => (
    <PlayerContainer
      playerId={id}
      key={board.id}
      display={Player}
      className={cx(className, board.id, styles[board.id])}
    />
  ))

  return (
    <main className={cx(className, styles.GameTable)}>
      <PoolTrackerContainer
        className={styles.poolTracker}
        game={game}
        display={PoolTracker}
      />
      {playerAreas}
    </main>
  )
}

GameTable.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameTable
