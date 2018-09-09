import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {Link} from 'react-router-dom'
import Player from 'components/Player'
import PlayerContainer from 'containers/Player'
import PropTypes from 'prop-types'
import Pools from 'components/Pools'
import PoolsContainer from 'containers/Pools'
import React from 'react'
import cx from 'classnames'
import {gameShape} from 'models/Game'
import styles from './styles'

const GameTable = ({game, className}) => {
  const playerAreas = game.players.map(({id, board}) => (
    <PlayerContainer
      playerId={id}
      key={board.id}
      display={Player}
      className={cx(className, board.id, styles[board.id])}
    />
  ))

  return (
    <main className={cx(className, styles.GameTable)}>
      {/*<PoolsContainer game={game} className={styles.poolsGrid} />*/}
      {playerAreas}
    </main>
  )
}

GameTable.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameTable
