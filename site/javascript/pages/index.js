import {Route, BrowserRouter as Router} from 'react-router-dom'
import Games from './Games'
import Home from './Home'
import React from 'react'

const SiteRouter = () => {
  return (
    <Router>
      <div>
        <Route exact path="/" component={Home} />
        <Route exact path="/games" component={Games} />
      </div>
    </Router>
  )
}

export default SiteRouter
