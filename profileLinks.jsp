<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>LINK</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            margin-top: 20px;
            background-color: #f2f6fc;
            color: #69707a;
        }
        
        .nav {
    display: flex;
    justify-content: flex-start; /* Align to the left */
    align-items: center;
}



.nav-link {
    color: #69707a;
    border-bottom-width: 0.125rem;
    border-bottom-style: solid;
    border-bottom-color: transparent;
    padding-top: 0.5rem;
    padding-bottom: 0.5rem;
    padding-left: 0;
    padding-right: 0;
    margin-left: 1rem;
    margin-right: 1rem;
    text-decoration: none;
}

.nav-link.active {
    color: #0061f2;
    border-bottom-color: #0061f2;
}

.nav-link:hover {
    color: #0056b3;
    border-bottom-color: #0056b3;
}

.nav-borders {
    border-bottom: 1px solid #ccc;
}
        

        .addFieldSmall {
        width: 100px; /* Adjust the width as needed */
        }

        .addField {
            margin-top: 10px; /* Add space above the button */
            margin-bottom: 10px; /* Add space below the button */
        }
        
        .img-account-profile {
            height: 10rem;
        }

        .rounded-circle {
            border-radius: 50% !important;
        }

        .card {
            box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
        }

        .card .card-header {
            font-weight: 500;
        }

        .card-header:first-child {
            border-radius: 0.35rem 0.35rem 0 0;
        }

        .card-header {
            padding: 1rem 1.35rem;
            margin-bottom: 0;
            background-color: rgba(33, 40, 50, 0.03);
            border-bottom: 1px solid rgba(33, 40, 50, 0.125);
        }

        .form-control,
        .dataTable-input {
            display: block;
            width: 100%;
            padding: 0.875rem 1.125rem;
            font-size: 0.875rem;
            font-weight: 400;
            line-height: 1;
            color: #69707a;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #c5ccd6;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: 0.35rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .nav-borders .nav-link.active {
            color: #0061f2;
            border-bottom-color: #0061f2;
        }

        .nav-borders .nav-link {
            color: #69707a;
            border-bottom-width: 0.125rem;
            border-bottom-style: solid;
            border-bottom-color: transparent;
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
            padding-left: 0;
            padding-right: 0;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .center-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>

<nav class="nav nav-borders">
    <a class="nav-link " href="Homepage.jsp" target="__blank">Home</a>
    <a class="nav-link " href="Profile.jsp" target="__blank">Profile</a>
    <a class="nav-link active" href="ProfileLinks.jsp" target="__blank">Links</a>
    <a class="nav-link" href="" target="__blank">Help</a>
    <a class="nav-link" href="" target="__blank">Notifications</a>
</nav>
<hr class="mt-0 mb-4">

<div class="container center-container">
    <div class="col-xl-8">
        <div class="card mb-4">
            <div class="card-header">LINK</div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="small mb-1" for="inputUsername">Hackerrank</label>
                    <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username" value="Add link here">
                </div>
                <div class="mb-3">
                    <label class="small mb-1" for="inputFirstName">LinkedIn</label>
                    <input class="form-control" id="inputFirstName" name="licence_and_certification" type="text" placeholder="Enter your first name" value="Add link here">
                </div>
                <div class="mb-3">
                    <label class="small mb-1" for="inputLastName">Github</label>
                    <input class="form-control" id="inputLastName" name="skills" type="text" placeholder="Enter your last name" value="Add link here">
                </div>
                <div class="mb-3">
                    <label class="small mb-1" for="inputOrgName">Codetantra</label>
                    <input class="form-control" id="inputOrgName" name="publication" type="text" placeholder="Enter your organization name" value="Add link here">
                </div>
                <div class="fieldsContainer" id="fieldsContainer">
                    <div class="mb-3">
                        <label class="small mb-1" for="inputLocation">If other</label>
                        <input class="form-control" id="inputLocation" name="cgpa" type="text" placeholder="Add link with Name" value="Enter other links ">
                    </div>
                </div>
                <button class="btn btn-primary addField addFieldSmall" type="button" data-target="fieldsContainer">Add Field</button>
            </div>
        </div>
    </div>
</div>

<script src="js/addFieldLinks.js"></script>

</body>
</html>
    