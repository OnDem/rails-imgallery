# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  if $('.duplicatable_nested_form').length
    nestedForm = $('.duplicatable_nested_form').last().clone()
    $('.destroy_duplicate_nested_form:first').remove()
    $('.destroy_duplicate_nested_form').click ->
      $(this).closest('.duplicatable_nested_form').slideUp().remove()
    $('.duplicate_nested_form').click (e) ->
      e.preventDefault()
      lastNestedForm = $('.duplicatable_nested_form').last()
      newNestedForm  = $(nestedForm).clone()
      formsOnPage    = $('.duplicatable_nested_form').length
      $(newNestedForm).html( $(newNestedForm).html().replace(/attributes_[0-9]+/mg, "attributes_" + formsOnPage).replace(/attributes\]\[[0-9]+\]/mg, "attributes][" + formsOnPage + "]"))
      $( newNestedForm ).insertAfter( lastNestedForm )

