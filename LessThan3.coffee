# Assumption:
  # I modified the array in this algorithm based on the question
  # I assumed that we have space constraint
  # I assumed that all names are in lower letters

rollDown = (array) ->
  len = array.length
  temp = undefined
  i = 0
  # iterate over the array of names
  while i < len
    j = 0
    while j < len
      # in case we have 'jill'
      if array[j] isnt "jill" and array[i] is "jill"
        # swap places
        temp = array[j]
        array[j] = array[i]
        array[i] = temp
      # in case we have 'jack'
      if array[j] isnt "jack" and array[i] is "jack"
        temp = array[j]
        array[j] = array[i]
        array[i] = temp
      j++
    i++
  array