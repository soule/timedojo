var paused = true;
var onBreak = false;
var time = 0; // time elapsed
var pomodoroLength = 5; // pomodoro length def 1500
var minutesLength  = 25; // default minutes length
var secondsLength = 0; // default seconds length
var total = pomodoroLength; // total time
var pomodoros = 0;
var longBreak = 10; // 20 minutes * 60s (optimize) 
var shortBreak = 3; // 5 mins * 60s (optimize)

$(function() {


$("#minutes").editable("click", function(e){
  minutesLength = e.value;
});

$("#seconds").editable("click", function(e){
  secondsLength = e.value;
  $("#seconds").text = pad(e.value);
});

//pomodoroLength = minutesLength * 60 + secondsLength;
//resetTimer(pomodoroLength);

//$("#start").unbind().submit();
//$("#pause").unbind().submit();
//$("#reset").unbind().submit();
    $("#start").click(function() {
      startTimer();
    });

    $("#pause").click(function() {
      paused = true;
    });

    $("#reset").click(function() {
      resetTimer(total);
    });
});



function submitSession() {
  
  // $.ajax({
  //   type: "POST",
  //   //dataType: "script",
  //   url: "/work_sessions",
  //   data: { work_session: { length: pomodoroLength } },

  // });
}

function tick() {  // make sure there aren't any race conditions here or w/ever
  if (!paused) {
    time++;
    if (time == total) {
      alert("Done!");
      paused = true;
      pomodoros++;
      onBreak = !onBreak;
      if (onBreak) {
        if (pomodoros%4 == 0) {
          submitSession();
          resetTimer(longBreak);
          alert("Take a long break!");
        } else {
          submitSession();
         resetTimer(shortBreak);
          alert("Take a short break!");
        }
        startTimer();
      } else {
          resetTimer(pomodoroLength);
      }
    } else {
      setTimeout(tick, 1000);
      console.log("tick");
      updateTimer();
    }
  }
}



function resetTimer(totalTime) {

  total = totalTime;
  time = 0;
  paused = true;
  updateTimer();
}

function startTimer() {
  if (paused) {
    paused = false;
    setTimeout(tick, 1000);  
  }
}

function updateTimer() {
  $('#minutes').text(Math.floor((total-time)/60));
  $('#seconds').text(pad((total-time)%60));
}

function pad(num) {
  var s = "" + num;
  if (num<10)
    s = "0" + num;
  return s;
}

