# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Spinner = do ->
  @spinner = (evTarget) ->
    $.merge $(evTarget).siblings('.spinner'), $(evTarget)
  $ ->
    $ajaxTriggers = $(document) #$('[data-remote]')
    $ajaxTriggers.on 'ajax:before', (event) ->
      @spinDelay = setTimeout ( ->
        spinner(event.target).removeClass('is-ajax-error').addClass('is-ajax-loading')
      ), 200
    $ajaxTriggers.on 'ajax:complete', (event) ->
      clearTimeout(@spinDelay)
      spinner(event.target).removeClass('is-ajax-loading')

    $ajaxTriggers.on 'ajax:success', (event, data, status) ->
      spinner(event.target).removeClass('is-ajax-loading is-ajax-error')

    $ajaxTriggers.on 'ajax:error', (event) ->
      spinner(event.target).addClass('is-ajax-error')

