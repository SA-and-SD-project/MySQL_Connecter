window.onload = function() {
    // 在整個網頁載入完成後執行以下程式碼
    var submitBtn = document.getElementById('submitBtn');
    submitBtn.addEventListener('click', submitText);

    function submitText() {
        // 提交文字的函數
        var textArea = document.getElementById('textArea');
        var text = textArea.value;
        // 獲取文本框中的文字

        if (text.trim() !== '') {
            // 如果文字不是空白

            // 建立一個邊框元素
            var border = document.createElement('div');
            border.classList.add('border');

            // 建立左側元素
            var left = document.createElement('div');
            left.classList.add('left');
            border.appendChild(left);

            var leftBorder = document.createElement('div');
            leftBorder.classList.add('left-border');
            left.appendChild(leftBorder);

            var leftContent = document.createElement('div');
            leftContent.classList.add('left-content');
            leftBorder.appendChild(leftContent);

            /*圖片 */
            var image = document.createElement('img');
            image.setAttribute('src', 'your-image-url.jpg');
            image.setAttribute('id', 'image');
            leftContent.appendChild(image);
            /*用戶名 目前預設值是下面的提交 */
            var A_StuID = "{{ A_StuID }}"
            var textElement = document.createElement('p');
            textElement.innerHTML = A_StuID;
            leftContent.appendChild(textElement);

            // 建立右側元素
            var right = document.createElement('div');
            right.classList.add('right');
            right.innerHTML = text;
            border.appendChild(right);

            // 將整個邊框元素加入文本容器中
            var textContainer = document.getElementById('textContainer');
            textContainer.appendChild(border);

            // 清空文本框
            textArea.value = '';
        }
    }
};
