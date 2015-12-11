/**
 * scripts.js
 * Vocabulary web app
 *
 * Global JavaScript.
 * 
 * Mike Molenda
 * molenda.mike@gmail.com
 */

/**
 * Adds "POST" action to hyperlinks of class "post"
 * 
 * Modification of code posted on stackoverflow.com message board
 * Original code by Majid Fouladpour:
 * http://stackoverflow.com/a/27208677
 */
 $(document).ready(function() {

    $("a.post").click(function(e) {
        // override default hyperlink actions
        e.stopPropagation();
        e.preventDefault();

        // get URL and input value from A tag
        var url = this.href;
        var input = this.innerHTML;

        // generate POST request and submit
        $("body").append('<form action="' + url + '" method="post" id="poster"><input type="text" name="word" value="' + input + '"></form>');
        $("#poster").submit();
    });

 });