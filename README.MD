# HUSC Zone

## Overview

**HUSC Zone** is a web application developed using **Java Servlet**. This platform is designed to address the challenges students face when trying to find academic materials, course outlines, and study resources. It aims to create a mini social network where students can easily share, search, and access educational resources such as documents, notes, and study tips.

The application allows users to:

- **Search and Share Documents:** Users can upload and search for documents such as course materials, notes, and outlines.
- **Post and Share Study Tips:** Users can create posts to share their learning experiences, study tips, and advice.
- **Interact with Posts:** Users can like, comment on, and report posts (when they click the post that they want to interact) if they find them inappropriate. They can also bookmark useful documents for easy access later.
- **Notification System:** Users receive notifications for comments, reports on their posts, or if their post is locked due to being reported and admin locked their post. They can also receive updates when their report is rejected.
- **User Profiles:** Users can update their personal information and change their passwords.

In addition to the features available to regular users, **Admins** have the ability to:

- **Manage Posts and Documents:** Admins can create, read, update, and delete (CRUD) posts and documents.
- **Manage Reports:** Admins can delete, approve or reject reports made by users regarding inappropriate content.
- **Lock User Accounts:** Admins have the authority to lock user accounts that violate the platform's rules.

## Features

- **Document & Post Sharing:** Users can upload academic materials and create posts to share study tips and experiences.
- **Interactive Features:** Like, comment, and report features allow for interactive learning experiences.
- **Bookmarks:** Users can bookmark documents for quick access later.
- **History Tracking:** Users can view their interaction history (likes, comments, reports).
- **Notifications:** Get notified about interactions, reports, and changes to users' posts.
- **Admin Panel:** Admins have the ability to manage users, approve reports, lock accounts, and perform CRUD operations on posts and documents.

## Technologies Used

- **Backend:** Java Servlet
- **Database:** Microsoft SQL Server
- **Frontend:** HTML, CSS, JavaScript
- **Authentication:** User login system with session management
- **Web Server:** Apache Tomcat

## Getting Started

To run this project locally, follow these steps:

### Prerequisites

- **Java Version: Java 21.0.4 (LTS) or higher**
- **Microsoft SQL Server**
- **Apache Tomcat**
- **IDE: Eclipse**

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/nhuytran122/HUSC-Zone.git
   ```

2. **Set up the Microsoft SQL Server database:**

   Create a database named `QL_HUSCZone` for the project and run the provided SQL script to set up the schema.

3. **Build and Deploy:**

   Use your IDE to build the project and deploy it to your Servlet container (e.g., Tomcat v8.0).

4. **Access the Application:**

   Once the application is deployed, you can access it by navigating to `http://localhost:8080/HUSC-Zone/home` in your web browser.

### Test Accounts

You can use the following test accounts to explore the features of **HUSC Zone**:

- **User Account:**
  - **Email:** `user@gmail.com`
  - **Password:** `123456`
  - Access level: Regular user (can browse and share documents, post study tips, like, comment, report posts, and manage their own profile).

- **Admin Account:**
  - **Email:** `admin@gmail.com`
  - **Password:** `123456`
  - Access level: Admin (can manage posts, documents, approve reports, block users, and perform CRUD operations on user content).

## Note

This project is designed to improve student collaboration by providing a centralized platform for sharing educational materials and experiences. It is an educational tool developed as part of a learning project using **Java Servlet**. It may not follow all best practices for professional development.
In the future, I hope to further develop and refine this web application into a more comprehensive platform that will better support students in finding, sharing, and managing educational resources. The goal is to build a complete system that offers efficient searching, sharing, and collaboration features, ultimately benefiting the academic community and fostering a more interactive learning environment.
