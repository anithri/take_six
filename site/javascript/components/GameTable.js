import {Link} from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import {gameShape} from 'models/Game'

const GameTable = ({game, className}) => {
  return (
    <div>
      <h3>{game.name}</h3>
      <Link to="/games">Home</Link>
    </div>
  )
}

GameTable.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameTable
