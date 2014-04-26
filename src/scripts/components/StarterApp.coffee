`/** @jsx React.DOM */`

TodoInput = require("./TodoInput.coffee")
ListContainer = require("./ListContainer.coffee")

StarterApp = React.createClass
  getInitialState: ->
    {
      listData: []
    }
  handleItemAdd: (item) ->
    items = @state.listData
    items.push item.value
    @setState listData: items
  handleListClear: ->
    @setState listData: []
  render: () ->
    `(
      <div className='todo-container'>
        <TodoInput onItemAdd={ this.handleItemAdd } onListClear={this.handleListClear} />
        <ListContainer data={this.state.listData} />
      </div>
    )`

module.exports = StarterApp
