<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Management System - User Form</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <div class="container">
        <h1>Health Management System</h1>
        <h2>User Information Form</h2>

        <form action="insert" method="POST">
            <!-- Personal Information Section -->
            <fieldset>
                <legend>Personal Information</legend>

                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" required><br><br>

                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" required><br><br>

                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required><br><br>

                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select><br><br>

                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required><br><br>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required><br><br>
            </fieldset>

            <!-- Address Section -->
            <fieldset>
                <legend>Address Information</legend>

                <label for="street">Street Address:</label>
                <input type="text" id="street" name="street" required><br><br>

                <label for="city">City:</label>
                <input type="text" id="city" name="city" required><br><br>

                <label for="state">State/Province:</label>
                <input type="text" id="state" name="state" required><br><br>

                <label for="zip">Zip Code:</label>
                <input type="text" id="zip" name="zip" pattern="[0-9]{5}" required><br><br>

                <label for="country">Country:</label>
                <input type="text" id="country" name="country" required><br><br>
            </fieldset>

            <!-- Health Information Section -->
            <fieldset>
                <legend>Health Information</legend>

                <label for="height">Height (cm):</label>
                <input type="number" id="height" name="height" required><br><br>

                <label for="weight">Weight (kg):</label>
                <input type="number" id="weight" name="weight" required><br><br>

                <label for="blood_type">Blood Type:</label>
                <select id="blood_type" name="blood_type" required>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                </select><br><br>

                <label for="medical_history">Medical History:</label>
                <textarea id="medical_history" name="medical_history" rows="4" cols="50" placeholder="Describe your medical history here"></textarea><br><br>

                <label for="allergies">Known Allergies:</label>
                <textarea id="allergies" name="allergies" rows="4" cols="50" placeholder="List any allergies you have"></textarea><br><br>

                <label for="medications">Current Medications:</label>
                <textarea id="medications" name="medications" rows="4" cols="50" placeholder="List any medications you are currently taking"></textarea><br><br>
            </fieldset>

            <!-- Emergency Contact Section -->
            <fieldset>
                <legend>Emergency Contact</legend>

                <label for="emergency_name">Emergency Contact Name:</label>
                <input type="text" id="emergency_name" name="emergency_name" required><br><br>

                <label for="emergency_phone">Emergency Contact Phone:</label>
                <input type="tel" id="emergency_phone" name="emergency_phone" pattern="[0-9]{10}" required><br><br>

                <label for="relationship">Relationship to Emergency Contact:</label>
                <input type="text" id="relationship" name="relationship" required><br><br>
            </fieldset>

            <!-- Submit Section -->
            <div>
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>

</body>
</html>
