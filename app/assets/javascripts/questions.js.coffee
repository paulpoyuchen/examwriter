# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#logic for hidding different question types
$("input[name='question[type]']").on "change", ->
  val = $(this).val()
  if val == "MultipleChoiceQuestion"
    $(".true-false").addClass("hidden")
    $(".multiple-choice").removeClass("hidden")
    $(".matching_question").addClass("hidden")
    $(".short-answer").addClass("hidden")
  else if val == "TrueFalseQuestion"
    # body...
    $(".true-false").removeClass("hidden")
    $(".multiple-choice").addClass("hidden")
    $(".matching_question").addClass("hidden")
    $(".short-answer").addClass("hidden")
  else if val == "MatchingQuestion"
    $(".true-false").addClass("hidden")
    $(".matching_question").removeClass("hidden")
    $(".multiple-choice").addClass("hidden")
    $(".short-answer").addClass("hidden")
  else
    $(".matching_question").addClass("hidden")
    $(".true-false").addClass("hidden")
    $(".multiple-choice").addClass("hidden")
    $(".short-answer").removeClass("hidden")
