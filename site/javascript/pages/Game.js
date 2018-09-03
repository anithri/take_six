import GameContainer from 'containers/Game'
import GameDisplay from 'components/GameTable'
import PropTypes from 'prop-types'
import React from 'react'
import cx from 'classnames'

class GamePage extends React.Component {
  render() {
    const {
      children,
      className,
      match: {
        params: {gameId},
      },
    } = this.props
    return (
      <div className={cx('page', 'gamePage', className)}>
        {children}
        <GameContainer display={GameDisplay} gameId={gameId} />
      </div>
    )
  }
}

GamePage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  match: PropTypes.shape({
    params: PropTypes.shape({
      gameId: PropTypes.string.isRequired,
    }),
  }),
}

export default GamePage
