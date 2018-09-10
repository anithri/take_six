import cx from 'classnames'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {Link} from 'react-router-dom'
import {namedShape} from '../../models/Utility'
import Pool from './Pool'
import {PoolsShape} from '../../models/Pool'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const PoolTracker = ({className, game, pools}) => {
  console.log(pools)
  const allPools = pools.map(pool => {
    return <Pool key={pool.id} pool={pool}
                 className={cx(styles[pool.name], styles.Pool)}
    />
  })

  return (
    <fidure className={cx(className, styles.PoolTracker)}>
      <header>
        <h1>
          {game.name}
          &nbsp;&nbsp;
          <Link to="/games">
            <FontAwesomeIcon icon="home"/>
          </Link>
        </h1>
      </header>
      {allPools}
    </fidure>
  )
}

PoolTracker.propTypes = {
  className: PropTypes.string,
  game: namedShape,
  pools: PoolsShape,
}

export default PoolTracker
