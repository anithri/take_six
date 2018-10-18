import React from 'react'
import {Mutation} from 'react-apollo'
import {CREATE_GAME} from '../models/Game'
import {GET_GAMES} from '../models/GameCollection'

const CreateGame = () => {
  let input

  return (
    <Mutation mutation={CREATE_GAME} refetchQueries={['getGames']}>
      {(createGame, {data}) => (
        <button onClick={() => {createGame()}}>
          Create New Game
        </button>
        )}
    </Mutation>
  )
}

export default CreateGame
