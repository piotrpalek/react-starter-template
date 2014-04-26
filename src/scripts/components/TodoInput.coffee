`/** @jsx React.DOM */`

TodoInput = React.createClass
  handleAddClick: ->
    item = @refs.todoItemInput.getDOMNode().value
    @props.onItemAdd
      value: item
    @refs.todoItemInput.getDOMNode().value = ' '
  handleClearClick: ->
    @props.onListClear()
  render: () ->
    `(
      <div className='todo-input'>
        <input ref='todoItemInput' type='text' />
        <input className='todo-input-add' type='button' value='+' onClick={ this.handleAddClick } />
        <input className='todo-input-remove' type='button' value='x' onClick={ this.handleClearClick } />
      </div>
    )`

module.exports = TodoInput
