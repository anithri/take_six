import {Route, BrowserRouter as Router} from 'react-router-dom'
import Game from './Game'
import GameCollection from './GameCollection'
import Home from './Home'
import React from 'react'

const SiteRouter = () => {
  return (
    <Router>
      <div>
        <Route exact path="/" component={Home} />
        <Route exact path="/games" component={GameCollection} />
        <Route path="/games/:gameId" component={Game} />
      </div>
    </Router>
  )
}

export default SiteRouter
