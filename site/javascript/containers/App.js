import '../../stylesheets/site.css'
import ApolloClient from 'apollo-boost'
import {ApolloProvider} from 'react-apollo'
import Helmet from './Helmet'
import Pages from 'pages'
import React from 'react'
import _library from 'utils/icons'

const client = new ApolloClient({
  fetchOptions: {
    credentials: 'same-origin',
  },
  request: operation => {
    const csrfToken = document.querySelector('meta[name=csrf-token]').getAttribute('content')

    operation.setContext({
      headers: {'X-CSRF-Token': csrfToken},
    })
  },
  uri: 'http://localhost:3000/graphql',
})

class App extends React.Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <Pages className="max">
          <Helmet />
        </Pages>
      </ApolloProvider>
    )
  }
}

export default App
