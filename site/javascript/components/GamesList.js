import PropTypes from 'prop-types'
import React from 'react'
import {gamesShape} from 'models/Games'

const GamesList = ({games, className}) => {
  console.log('GamesList', games)
  const game_items = games.map(game => <li key={game.id}>{game.name}</li>)

  return <ul className={className}>{game_items}</ul>
}

GamesList.propTypes = {
  className: PropTypes.string,
  games: PropTypes.arrayOf(gamesShape),
}

export default GamesList
