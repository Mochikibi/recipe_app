function check() {
  const posts = document.querySelectorAll(".send-btn");
  posts.forEach(function (post) {
    post.addEventListener("click", () => {
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/recipes`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = () => {
        if (XHR.status != 200) {
          alert( "Recipe creation failed!" + "title, making_time, serves, ingredients, cost");
          return null;          
        }
        else alert("Recipe successfully created!")
      };
    });
  });
  post.preventDefault();
}
window.addEventListener("load", check);


  
 