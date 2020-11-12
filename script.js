/**
 * project: DB_project
 * Authors: Quan and Duong
 * Start day:11/07/2020
 * Finish day:
 * Language: Javascript
 * x: array ~ classname "play1"
 * y: array ~ classname "pause1"
 */
var x= document.getElementsByClassName("play1")
            var y= document.getElementsByClassName("pause1")
            let i;
            
            function start(i){
                
                x[i].style.visibility = " hidden";
                y[i].style.visibility = "visible";
            }

            for (let i = 0; i < y.length; i++) {
                
                y[i].onclick = function(){
                    pause(i);
                }
                
            }
            for (let i = 0; i < x.length; i++) {
                
                x[i].onclick = function(){
                    pause(i);
                    start(i);
            }}
           
            
            function pause(i){
                console.log("moe");
                const divWithStyle = document.querySelectorAll("div[style]");
             divWithStyle.forEach(div => {
            div.removeAttribute("style");
                })
                /**
                 * function to remove all change in all div tag
                 */
            
            }
var login = document.getElementsByClassName("login")[0];
var signin = document.getElementsByClassName("signin")[0]
            login.onclick = function(){
                window.location = "login.html"
            }
            signin.onclick = function(){
                window.location = "signin.html"
            }
