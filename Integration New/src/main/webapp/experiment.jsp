<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page History Navigation</title>
    <style>
        .containernav {
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        button {
            padding: 10px 20px;
            margin: 0 10px;
            
        }
        #page{
            width: 100%;
        }
        #leftArrow{
            float: left;
            margin-top:-750px;
            position:fixed;
            margin-left:10px;
        }
        #rightArrow{
            float: right; 
            margin-top:-750px;
            position:fixed; 
            margin-left:1290px;
            background-color:transparent;       
        }
    </style>
</head>

<body>

    <div class="containernav">
        <div id="page"></div>
        <button id="leftArrow" disabled>&lt;</button>
        <button id="rightArrow" disabled>&gt;</button>
    </div>

    <script>
        const pages = ['userdashboard.html', 'user-addblood.jsp', 'page3.html', 'page4.html', 'page5.html'];
        let currentPageIndex = 0;

        const leftArrow = document.getElementById('leftArrow');
        const rightArrow = document.getElementById('rightArrow');
        const pageElement = document.getElementById('page');

        function updatePage() {
            fetch(pages[currentPageIndex])
                .then(response => response.text())
                .then(html => {
                    pageElement.innerHTML = html;
                    updateArrows();
                })
                .catch(error => console.error('Error fetching page:', error));
        }

        function updateArrows() {
            leftArrow.disabled = currentPageIndex === 0;
            rightArrow.disabled = currentPageIndex === pages.length - 1;
        }

        leftArrow.addEventListener('click', () => {
            if (currentPageIndex > 0) {
                currentPageIndex--;
                updatePage();
                history.back();
            }
        });

        rightArrow.addEventListener('click', () => {
            if (currentPageIndex < pages.length - 1) {
                currentPageIndex++;
                updatePage();
                history.forward();
            }
        });

        updatePage();
    </script>
</body>

</html>
