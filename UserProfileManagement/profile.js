document.addEventListener('DOMContentLoaded', function () {
    const profilePicInput = document.getElementById('profilePicInput');
    const profileImage = document.getElementById('profileImage');

    profilePicInput.addEventListener('change', function (e) {
        const file = e.target.files[0];
        if (file) {
            console.log('Selected file:', file); // Log the selected file for debugging
            const formData = new FormData();
            formData.append('profile_picture', file);

            fetch('upload_image.php', {
                method: 'POST',
                body: formData,
            })
                .then((response) => {
                    console.log('Raw response:', response); // Log raw response
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                .then((data) => {
                    console.log('Parsed response:', data); // Log parsed response
                    if (data.success) {
                        profileImage.src = data.image_url; // Update image preview
                        alert('Profile picture updated successfully!');
                    } else {
                        alert(data.message || 'Failed to upload profile picture.');
                    }
                })
                .catch((error) => {
                    console.error('Error:', error);
                    alert('An error occurred while uploading the image.');
                });
        }
    });
});


    // Form Submission Handling
    profileForm.addEventListener('submit', function (e) {
        e.preventDefault();
        const formData = new FormData(profileForm);

        fetch('update_profile.php', {
            method: 'POST',
            body: formData,
        })
            .then((response) => {
                if (!response.ok) {
                    throw new Error(`HTTP error! Status: ${response.status}`);
                }
                
            })
            .then((data) => {
                console.log('Response Data:', data); // Log the response for debugging
                if (data.success) {
                    showAlert('Profile updated successfully!', 'success');
                } else {
                    showAlert(data.message || 'Failed to update profile.', 'danger');
                }
            })
            .catch((error) => {
                console.error('Error during profile update:', error);
                showAlert('An error occurred while updating the profile.', 'danger');
            });
    });

    // Helper function to display alerts
    function showAlert(message, type) {
        const alertDiv = document.createElement('div');
        alertDiv.className = `alert alert-${type}`;
        alertDiv.textContent = message;

        const container = document.querySelector('.container');
        container.insertBefore(alertDiv, container.firstChild);

        setTimeout(() => {
            alertDiv.remove();
        }, 3000);
    }

