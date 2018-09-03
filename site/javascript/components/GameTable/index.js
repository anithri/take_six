import {Link} from 'react-router-dom'
import Player from 'components/Player'
import PlayerContainer from 'containers/Player'
import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'
import {gameShape} from 'models/Game'
import styles from './styles'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {faStroopwafel} from '@fortawesome/free-solid-svg-icons'

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
      <header className={styles.messageBox}>
        <h3>{game.name}
          <Link to="/games">
            <FontAwesomeIcon icon="home" />
          </Link>
        </h3>
        <Link to="/games">Home</Link>
      </header>
      {playerAreas}
    </main>
  )
}

GameTable.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameTable
