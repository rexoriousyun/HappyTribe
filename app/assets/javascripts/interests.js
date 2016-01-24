$(document).ready(function() {
  var interests = <%= escape_javascript @interests.to_json %>;
  var skills = <%= escape_javascript @skills.to_json %>;

  function isChecked(checkbox) {
    if ($(checkbox).prop("checked")) {
      return "selected-boxes";
    } else {
      return "";
    }
  };

  // the 2 for loops create the clickable divs for selecting interests and skills. They do this by first checking to see if a user has the interest already (checkClass line) by targetting the hidden checkbox element to see if it's been checked. If it has, they append the selected-boxes class using the isChecked function. For each interest and skill they create a div with the correct interest or skill id so that the right click events can be applied to these divs to target the hidden checkboxes.

  for (var i = 0; i < interests.length; i++) {
    var checkClass = isChecked("#user_interest_ids_[data-id=" + "'" + interests[i] + "'" + "]");
    $('#jquery-boxes-interests').append("<div id='interest-checkbox" + interests[i]
      + "' class='interest-box boxes small-6 large-4 columns "
      + checkClass
      + "' data-checkbox-number='" + interests[i] + "'>"
      + $('#interest-data-checkbox' + interests[i]).data('name') + " </div>");
  };

  for (var i = 0; i < skills.length; i++) {
    var checkClass = isChecked("#user_skill_ids_[data-id=" + "'" + skills[i] + "'" + "]");
    $('#jquery-boxes-skills').append(
      "<div id='skill-checkbox" + skills[i]
      + "' class='skill-box boxes small-6 large-4 columns "
      + checkClass
      + "' data-checkbox-number='" + skills[i] + "'>"
      + $('#skill-data-checkbox' + skills[i]).data('name') + " </div>");
  };

  // Below is the function that's run on a click event on any of the boxes created above. It stores the id of the clicked element, then checks if it was a skill or interest that was clicked. It then finds the appropriate hidden checkbox and toggles it to either be checked or unchecked. Then it toggles the class of the clicked box to be selected or not.

  var boxes = $('.boxes');
  function checkBoxSteps() {
    function checkBox(i) {
      var id = $(i).data('checkbox-number');
      if ($(i).is('.interest-box')) {
        checkbox = $("#user_interest_ids_[data-id=" + "'" + id + "'" + "]");
        fakeCheckbox = $('#interest-checkbox' + id );
        checkbox.prop("checked", !checkbox.prop("checked"));
        fakeCheckbox.toggleClass('selected-boxes');
      } else if ($(i).is('.skill-box')) {
        checkbox = $("#user_skill_ids_[data-id=" + "'" + id + "'" + "]");
        fakeCheckbox = $('#skill-checkbox' + id );
        checkbox.prop("checked", !checkbox.prop("checked"));
        fakeCheckbox.toggleClass('selected-boxes');
      }
    };
    checkBox(this);
  };
  boxes.click(checkBoxSteps);
});

