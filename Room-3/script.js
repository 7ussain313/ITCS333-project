let roomsData = []; // Global variable to store room data

/** Fetch rooms from the server */
async function fetchRooms() {
    try {
        const response = await fetch('fetch_rooms.php');
        if (!response.ok) throw new Error('Failed to fetch rooms data.');
        roomsData = await response.json(); // Store fetched data
        renderRooms(roomsData); // Render rooms on the page
    } catch (error) {
        console.error('Error fetching rooms:', error);
        alert('Unable to load room data. Please try again later.');
    }
}

/** Render rooms on the UI */
function renderRooms(rooms) {
    const grid = document.querySelector('.rooms-grid');
    grid.innerHTML = ''; // Clear existing rooms

    if (rooms.length === 0) {
        grid.innerHTML = '<p class="error-message">No rooms found matching your criteria.</p>';
        return;
    }

    // Create room cards
    grid.innerHTML = rooms.map(room => `
        <div class="room-card" data-id="${room.id}" style="background-color: ${room.remainingSlots > 0 ? 'var(--available-room)' : 'var(--filled-room)'}">
            <h3 class="room-name">${room.name}</h3>
            <div class="capacity"><span>${room.capacity} people</span></div>
            <p>Equipment: ${room.equipment}</p>
            <p>Available Slots: ${room.remainingSlots > 0 ? room.remainingSlots : 'None'}</p>
            <button class="view-details" onclick="showDetails(${room.id})">View Details</button>
        </div>
    `).join('');
}

/** Show room details in a modal */
function showDetails(roomId) {
    const room = roomsData.find(r => r.id === roomId);
    if (!room) {
        alert('Room details not found.');
        return;
    }

    // Display modal with room details
    const modal = document.getElementById('room-details-modal');
    const roomDetails = document.getElementById('room-details');
    const remainingSlots = room.remainingSlots > 0 ? `${room.remainingSlots} slots available` : 'Room is fully booked';
    
    roomDetails.innerHTML = `
        <h3>${room.name}</h3>
        <p><strong>Capacity:</strong> ${room.capacity} people</p>
        <p><strong>Equipment:</strong> ${room.equipment}</p>
        <p><strong>Available Slots:</strong> ${remainingSlots}</p>
        ${room.remainingSlots > 0 ? `
            <div id="reservation-form">
                <label for="reservation-date">Select Date:</label>
                <input type="date" id="reservation-date" required>
                <label for="reservation-time">Select Time:</label>
                <input type="time" id="reservation-time" required>
                <button onclick="makeReservation(${room.id})">Reserve Room</button>
            </div>
        ` : ''}
    `;

    // Show the modal
    modal.classList.add('open');
}

/** Make a reservation */
function makeReservation(roomId) {
    const room = roomsData.find(r => r.id === roomId);
    if (!room) {
        alert('Room details not found.');
        return;
    }

    const date = document.getElementById('reservation-date').value;
    const time = document.getElementById('reservation-time').value;

    if (!date || !time) {
        alert('Please select both date and time.');
        return;
    }

    // Update room data (simulating the reservation logic)
    room.remainingSlots -= 1; // Decrease available slots
    alert(`Reservation successful for ${room.name} on ${date} at ${time}`);
    
    // Close modal and re-render rooms
    closeDetails();
    renderRooms(roomsData);
}

/** Close room details modal */
function closeDetails() {
    document.getElementById('room-details-modal').classList.remove('open');
}

/** Search rooms by name */
function handleSearch(event) {
    const searchTerm = event.target.value.toLowerCase();
    const filteredRooms = roomsData.filter(room =>
        room.name.toLowerCase().includes(searchTerm)
    );
    renderRooms(filteredRooms);
}

/** Filter rooms by capacity */
function handleCapacityFilter(event) {
    const [min, max] = event.target.value.split('-').map(Number);
    const filteredRooms = roomsData.filter(room =>
        room.capacity >= min && (!max || room.capacity <= max)
    );
    renderRooms(filteredRooms);
}

/** Filter rooms by equipment */
function handleEquipmentFilter(event) {
    const equipment = event.target.value.toLowerCase();
    const filteredRooms = roomsData.filter(room =>
        room.equipment.toLowerCase().includes(equipment)
    );
    renderRooms(filteredRooms);
}

/** Attach event listeners */
function initializeEventListeners() {
    document.querySelector('.search-bar').addEventListener('input', handleSearch);
    document.getElementById('capacityFilter').addEventListener('change', handleCapacityFilter);
    document.getElementById('equipmentFilter').addEventListener('change', handleEquipmentFilter);
    document.querySelector('.close-btn').addEventListener('click', closeDetails);
}

/** Initialize the application */
function initializeApp() {
    fetchRooms(); // Fetch room data
    initializeEventListeners(); // Setup event listeners
}

// Start the application
initializeApp();
