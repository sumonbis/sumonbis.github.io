---
title: Doctors Window (A solution for Doctors and Patients)
summary: This is a complete solution for private practitioner doctors. The doctors can manage patients appointment automatically, generate electronic prescriptions and store patients database. The patient side app helps to schedule appointment, get notification and view medical history.
tags:
- Cloud-computing
- Software-developement

date: "2014-04-20T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: GitHub
  url: https://github.com/sumonbis/DoctorsWindow
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: #example

---

This project contains one desktop app (for doctors) and two client side app (for doctors and patients).

## Desktop App
A windows application software has been built which will be installed on doctors’ computer. This software is a standalone one and can be maintained by one single doctor.

The doctor will enter every patient’s information and generate prescription using this software. Then the prescription can be printed and handed over to patient. One copy electronic prescription will be sent patient’s email address as well. The appointment system will be maintained by the system using SMS. Two basic operation are handled by the software:

1. Electronic prescription module
2. Patient scheduling and queue management using SMS

![Desktop app](https://raw.githubusercontent.com/sumonbis/DoctorsWindow/master/Desktop%20App/screens/batch2.png)

### Electronic Prescription Module
- Electronic prescription handling
- Medicine suggestion
- Store all prescription
- Print prescription
- Email prescription

![Desktop app](https://raw.githubusercontent.com/sumonbis/DoctorsWindow/master/Desktop%20App/screens/batch1.png)

### Patient’s Scheduling and Queue Management Using SMS
- Make appointment sending SMS
- Reply sending date and time to patients
- The system maintains the patient list and calendar
- Any greeting or emergency message can be sent to the patients

#### Used Tools and Technologies
This is a windows based application developed on .Net Platform. The windows form is built on Visual Studio 2012. SQL Server 2008 is used for database support. Here are the technology specifications:

1. Visual Studio 2012 2. .Net 4.5
3. C#
4. SQL Server 2008

AT Command: AT commands are used to control GSM or GPRS modems. This command can be executed by the modems to perform particular tasks like send- ing SMS to a number, receiving and save message to SIM memory, deleting SMS etc. Actually, it performs operation on the SIM which is mounted on the modem. The command can connect modems to specific ports of the desktop computer and perform tasks. C# language was used to manipulate the AT commands.

Crystal report SAP: There are different crystal reporting system which can be installed on Visual Studio to provide report querying from database. RDLC, SAP are mostly used. Electronic prescription reporting is provided by SAP Crystal Report 13. The SAP Crystal Report allows one to generate prescription, save as PDF format, and print report.


## Android Applications
### 1. Doctor’s Window
This application runs on doctor’s mobile android phone or tab. Every doctor has create account with his/her email and user ID. When the doctor created an account with the system, he/she is taken to the profile update form. Then the doctor enters
his/her name, designation, specialty, institution, address, contact number and the visiting time to complete the profile. Once profile is completed he/she can login to the app and see his own patient’s list by date.

![Doctors side app](https://raw.githubusercontent.com/sumonbis/DoctorsWindow/master/Android%20App/screens/Doctor-Side%20Application.png)

### 2. Patient’s Window
This application runs on the client’s smart devices to connect the desired doctor. No login or registration is required for this app. Anyone using this app will easily find different categories of specialty. Then he/she will be able to find doctors from different localities. The patient will choose doctor and see doctor’s detail informa- tion. Then he/she will click the “Get Appointment” button to seek for appointment. An automated scheduling system will run on the app server based on the doctor’s predefined time. This will check for free space and make the patient known about the appointment date and time. Eventually, the app will notify the patient before the appointment. Only one has to enter name, age and phone number for seeking appointment.

![Patient side app](https://raw.githubusercontent.com/sumonbis/DoctorsWindow/master/Android%20App/screens/Patient-Side%20Application.png)
