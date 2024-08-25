

<%
session.getAttribute("name");
%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Profile page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/Profilecss.css">
    
    <head>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Archivo+Narrow&family=Julius+Sans+One&family=Open+Sans&family=Source+Sans+Pro&display=swap" rel="stylesheet">
  <script src="Pdf_generate_scripts.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
</head>
</head>
<body>


<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<div class="container-xl px-4 mt-4">

    <nav class="nav nav-borders">
    	<a class="nav-link " href="Homepage.jsp" target="__blank">Home</a>
        <a class="nav-link active ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details"
           target="__blank">Profile</a>
        <a class="nav-link" href="profileLinks.jsp" target="__blank">Links</a>
        <a class="nav-link" href="" target="__blank">Help</a>
        <a class="nav-link" href="" target="__blank">Notifications</a>
    </nav>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-4">
        				<% 
                            String status = (String)request.getAttribute("status");
                            if (status != null) {
                                if (status.equals("success")) { %>
                                    <p>Registration successful!</p>
                                <% } else if (status.equals("exists")) { %>
                                    <p>User already exists!</p>
                                <% } else { %>
                                    <p>Registration failed. Please try again later.</p>
                                <% }
                            }
                        %>
 <form action="ProfileData" method="post" enctype="multipart/form-data">

            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Profile Picture</div>
                <div class="card-body text-center">
    <img id="profilePicture" class="img-account-profile rounded-circle mb-2" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt>
    <div class="small font-italic text-muted mb-4">
        <%= session.getAttribute("name") %> <!-- Output the name here -->
    </div>
    <input class="btn btn-primary" id="image" name="image" type="file">

</div>
            </div>
            </form>
        </div>
        <div class="col-xl-8">

            <div class="card mb-4">
            <form action="ProfileData" method="post">
                <div class="card-header">Add profile section</div>
                <div class="card-body">

                    <div class="mb-3">
                        <h5>Institute </h5>
                        <label class="small mb-1" for="inputInstitute">Mention your Institute</label>
                        <input class="form-control" id="inputInstitute" name ="inputInstitute" type="text"
                              >
                    </div>

                    <div class="mb-3">
                        <h5>Degree</h5>
                        <label class="small mb-1" for="inputDegree">Select your Degree</label>
                        <select class="form-control" id="inputDegree" name ="inputDegree">
                            <option value="">Select Degree</option>
                            <option value="Computer Science Engineering">Computer Science Engineering</option>
                            <option value="Computer Engineering">Computer Engineering</option>
                            <option value="Software Engineering">Software Engineering</option>
                            <option value="Information Technology Engineering">Information Technology Engineering</option>
                            <option value="Computer Systems Engineering">Computer Systems Engineering</option>
                            <option value="Network Engineering">Network Engineering</option>
                            <option value="Cybersecurity Engineering">Cybersecurity Engineering</option>
                            <option value="Artificial Intelligence Engineering">Artificial Intelligence Engineering</option>
                            <option value="Data Science and Engineering">Data Science and Engineering</option>
                            <option value="Robotics Engineering">Robotics Engineering</option>
                        </select>
                    </div>

                    <div class="row gx-3 mb-3">
                        <h5>Education</h5>
                        <div class="col-md-6">
                            <label class="small mb-1" for="inputEducation1">Education 10th</label>
                            <input class="form-control" id="inputEducation1" name ="inputEducation1" type="text"
                                   >
                        </div>

                        <div class="col-md-6">
                            <label class="small mb-1" for="inputEducation2">Education 12th</label>
                            <input class="form-control" id="inputEducation2" name="inputEducation2" type="text"
                                   >
                        </div>
                    </div>

                    <div class="row gx-3 mb-3">
                        <h5>Licence & Certification</h5>
                        <div class="col-md-4">
                            <label class="small mb-1" for="certification_name ">Name</label>
                            <input class="form-control" id="certification_name"  name="certification_name[]" type="text"
                                   >
                        </div>

                        <div class="col-md-4">
                            <label class="small mb-1" for="certification_date">Date</label>
                            <input class="form-control" id="certification_date" name="certification_date[]" type="text"
                                   >
                        </div>

                        <div class="col-md-4">
                            <label class="small mb-1" for="certification_location">Where</label>
                            <input class="form-control" id="certification_location" name="certification_location[]" type="text"
                                   >
                        </div>
                        <button class="btn btn-primary addField1 addFieldSmall" type="button" data-target="License">Add Field</button>



                    </div>

                    <div id="fieldsContainerLicense"></div>

                    <div class="mb-3">
                        <h5>Skills</h5>
                        <label class="small mb-1" for="skill">Mention your skills</label>
                        <input class="form-control" id="skill" name="skill" type="text"
                               >
                    </div>


                    <div class="row gx-3 mb-3">
                        <h5>Publication</h5>
                        <div class="col-md-4">
                            <label class="small mb-1" for="publication_name">Name</label>
                            <input class="form-control" id="publication_name" name ="publication_name[]" type="text"
                                   >
                        </div>

                        <div class="col-md-4">
                            <label class="small mb-1" for="publication_date">Date</label>
                            <input class="form-control" id="publication_date" name ="publication_date[]" type="text"
                                   >
                        </div>

                        <div class="col-md-4">
                            <label class="small mb-1" for="publication_journal">Journal/Conference</label>
                            <input class="form-control" id="publication_journal" name ="publication_journal[]" type="text"
                                   >
                        </div>
                       <button class="btn btn-primary addField2 addFieldSmall" type="button" data-target="Publication">Add Field</button>

                    </div>

                    <div id="fieldsContainerPublication"></div>

                    <div class="col-md-6">
                        <h5>CGPA</h5>
                        <label class="small mb-1" for="cgpa">Mention cgpa</label>
                        <input class="form-control" id="cgpa" name="cgpa" type="number"
                               >
                    </div>

                    <div class="row gx-3 mb-3">
                        <h5>Internship</h5>
                        <div class="col-md-4">
                            <label class="small mb-1" for="internship_name">Name</label>
                            <input class="form-control" id="internship_name" name ="internship_name[]" type="text"
                                   >
                        </div>

                        <div class="col-md-4">
                            <label class="small mb-1" for="internship_date">Date</label>
                            <input class="form-control" id="internship_date" name ="internship_date[]" type="text"
                                   >
                        </div>

                        <div class="col-md-4">
                            <label class="small mb-1" for="internship_domain">Domain</label>
                            <input class="form-control" id="internship_domain" name ="internship_domain[]" type="text"
                                   >
                        </div>
                        <button class="btn btn-primary addField3 addFieldSmall" type="button" data-target="Internship">Add Field</button>

                    </div>

                    <div id="fieldsContainerInternship"></div>

                </div>

                <div class="row gx-3 mb-3">
                    <input type="submit" id="submit" name="submit" class="btn btn-primary">

                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/addFields.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        var status = '<%= request.getAttribute("status") %>';
        if (status === "success") {
            swal("Congrats", "Data entered successfully", "success");
        } else if (status === "exists") {
            swal("Oops", "Data exist", "error");
        } else if (status === "failed") {
            swal("Oops", "Failed to enter data", "error");
        }
    });
</script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>



</body>
</html>