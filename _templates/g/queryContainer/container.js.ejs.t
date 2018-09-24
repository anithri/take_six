---
to: <%= h.src('containers', name, '.js') %>
---
import {GET_<%=  name.toUpperCase() %>} from 'models/<%= name %>'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const <%= name %>Container = ({className, display: <%= name %>Display}) => (
  <Query query={GET_<%= name.toUpperCase() %>}>
    {({loading, error, data: {game}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <<%= Name %>Display data={data} className={className} />
    }}
  </Query>
)

<%= name %>Container.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default <%= name %>Container
