# Hidden Function Letters with Disabled Screenshot and Download

This project demonstrates how to create interactive letters where each letter has a different function when clicked. Additionally, it prevents users from taking screenshots, right-clicking, or downloading the content.

## Features:
- **Three letters (A, B, C)**: Each letter has a unique function triggered by a click.
- **Hover Effects**: When hovering over a letter, it increases in size and changes color.
- **Disabled Screenshot**: Blocks the ability to take screenshots (Prevents the use of "PrintScreen" and right-click options).
- **Disable Download and Inspect**: Prevents the user from right-clicking and downloading content.

## How to Use:
1. Clone or download the repository.
2. Open the `index.html` file in your web browser to view the interactive letters.
3. Click on each letter (`A`, `B`, or `C`) to see different actions triggered.
4. Right-click and take a screenshot to see the prevention in action.

## Technologies Used:
- **HTML**: Used to structure the page and letters.
- **CSS**: Used for styling, including hover effects and disabling text selection.
- **JavaScript**: Used for the interactive functionality and disabling screenshot and download actions.

## Project Files:
- `index.html`: Contains the structure of the webpage.
- `styles.css`: Styles for the letters and page layout.
- `script.js`: Contains JavaScript functions to trigger the actions for each letter and prevent screenshots.

### Example Code:

#### index.html
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hidden Functions</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <span class="letter" id="A">A</span>
        <span class="letter" id="B">B</span>
        <span class="letter" id="C">C</span>
    </div>

    <script src="script.js"></script>
</body>
</html>
```

#### styles.css
```css
body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: black;
    color: white;
}

.container {
    user-select: none;
    -webkit-user-select: none; 
    -moz-user-select: none; 
    -ms-user-select: none; 
}

.letter {
    font-size: 50px;
    margin: 10px;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.letter:hover {
    transform: scale(1.2);
    color: red;
}
```

#### script.js
```javascript
document.getElementById("A").addEventListener("click", function() {
    alert("You clicked A! Function 1 is activated.");
});

document.getElementById("B").addEventListener("click", function() {
    console.log("B was clicked! Function 2 is running.");
    document.body.style.backgroundColor = "blue";
});

document.getElementById("C").addEventListener("click", function() {
    let text = document.createElement("p");
    text.innerText = "Secret Message Unlocked!";
    text.style.color = "yellow";
    document.body.appendChild(text);
});

document.addEventListener("keydown", function(event) {
    if (event.key === "PrintScreen") {
        alert("Screenshot is disabled!");
        event.preventDefault();
    }
});

document.addEventListener("contextmenu", function(event) {
    event.preventDefault(); // Prevent right-click
});
```

## How to Disable Screenshot and Download:

The project includes JavaScript that listens for the "PrintScreen" key and prevents the default action, as well as disables right-click options to prevent users from downloading or inspecting elements.

## License: 

MIT License Copyright (c) [2025] [Nicztin] Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

This project is open source and can be modified and used freely.

