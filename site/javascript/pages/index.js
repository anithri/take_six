import {Route, BrowserRouter as Router} from 'react-router-dom'
import Game from './Game'
import GameCollection from './GameCollection'
import Home from './Home'
import PropTypes from 'prop-types'
import React from 'react'
const SiteRouter = ({className}) => {
  return (
    <Router>
      <div className={className}>
        <Route exact path="/" component={Home} />
        <Route exact path="/games" component={GameCollection} />
        <Route exact path="/games/:gameId" component={Game} />
      </div>
    </Router>
  )
}

SiteRouter.propTypes = {
  className: PropTypes.string.isRequired,
}
export default SiteRouter
