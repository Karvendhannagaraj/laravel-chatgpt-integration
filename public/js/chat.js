$(document).ready(function () {
    // Toastr Configuration
    toastr.options.positionClass = 'toast-top-center';

    // Helper Function to Show Toast
    const showToast = (message, type = 'error') => toastr[type](message);

    // State Variables
    let page = 1;
    let isLoading = false;
    let hasMoreData = true;
    const loadedPages = new Set();

    const chatBox = $('#chat-box');
    const loader = $('#loader');
    const userInput = $('#user-input');
    const sendBtn = $('.send-btn');

    // Function to Load Conversations
    function loadConversations (){
        if (isLoading || !hasMoreData || loadedPages.has(page)) return;

        isLoading = true;
        loader.show();
        const chatBox = $('#chat-box');
        const previousScrollHeight = chatBox[0].scrollHeight; // Save the current scroll height
        $.ajax({
            url: '/get_conversion',
            method: 'GET',
            data: { page },
            success: (data) => {
                if (data.length > 0) {
                    loadedPages.add(page);

                    const conversations = data.map(conversation => {
                        // Convert the timestamp to a Date object and format it
                        const date = new Date(conversation.created_at);
                        const formattedTime = date.toLocaleString(); // or use another format if preferred
                    
                        return `
                            <div class="conversation">
                                <div class="convo-details">
                                    <p><strong>User:</strong> ${conversation.message}</p>
                                    <p><strong>ChatGPT:</strong> ${conversation.response}</p>
                                </div>
                                <div class="convo-time">${formattedTime}</div>
                            </div>
                        `;
                    }).reverse().join('');
                    
                    chatBox.prepend(conversations); 

                    // Maintain scroll position
                    const newScrollHeight = chatBox[0].scrollHeight;
                    chatBox.scrollTop(newScrollHeight - previousScrollHeight);
                    page++;
                } else {
                    hasMoreData = false;
                }
            },
            error: () => showToast('Error loading conversations'),
            complete: () => {
                isLoading = false;
                loader.hide();
            }
        });
    }

    // Function to Send a Message
    function sendMessage(){
        const message = userInput.val().trim();

        if (!message) {
            showToast('Please enter a message.');
            return;
        }

        if (message.length > 1000) {
            showToast('Message cannot exceed 1000 characters.');
            return;
        }

        loader.show();
        userInput.val('');
        $.ajax({
            url: '/send_request',
            type: 'POST',
            data: {
                message,
                _token: $('meta[name="csrf-token"]').attr('content'),
            },
            beforeSend: () => sendBtn.prop('disabled', true),
            success: (response) => {
                loader.hide();

                if (!response.status) {
                    showToast(response.message);
                } else {
                    const date = new Date();
                    const formattedTime = date.toLocaleString();
                    chatBox.append(`<div class="conversation">
                                <div class="convo-details">
                                    <p><strong>User:</strong> ${message}</p>
                                    <p><strong>ChatGPT:</strong> ${response.message}</p>
                                </div>
                                <div class="convo-time">${formattedTime}</div>
                            </div>`);
                }

                sendBtn.prop('disabled', false);
                chatBox.scrollTop(chatBox[0].scrollHeight); // Scroll to bottom
            },
            error: () => {
                loader.hide();
                showToast('An error occurred. Please try again later.');
                sendBtn.prop('disabled', false);
            },
            timeout: 10000, // 10 seconds timeout
        });
    }

    // Initial Load
    loadConversations();

    // Load More Conversations on Scroll
    chatBox.scroll(function () {
        if (chatBox.scrollTop() === 0) loadConversations();
    });

    // Send Message on Button Click
    sendBtn.on('click', (e) => {
        e.preventDefault();
        sendMessage();
    });
});
