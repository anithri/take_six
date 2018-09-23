import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import { gameCollectionShape } from 'models/GameCollection'

const GamesList = ({ games, className }) => {
  const game_items = games.map(game => (
    <li key={game.id}>
      <Link to={`/games/${game.id}`}>{game.name}</Link>
    </li>
  ))

  return <ul className={className}>{game_items}</ul>
}

GamesList.propTypes = {
  className: PropTypes.string,
  games: PropTypes.arrayOf(gameCollectionShape),
}

export default GamesList
