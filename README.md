# CodeHouseKit

A production-structured Ruby on Rails 7 bootcamp dashboard inspired by the UX patterns of Le Wagon Kitt. 
This is a demonstration MVP showcasing a clean layout, roles/permissions (Devise + Pundit), and essential bootcamp features.

## Core Features
*   **Dashboard**: Bootcamps activity, upcoming lectures, flashcards progress, and product status.
*   **Challenges (3-Column Layout)**: Navigate tracks, select challenges, and view markdown-rendered instructions.
*   **Lectures**: View scheduled sessions with teachers, slide decks, and past recordings.
*   **Flashcards**: Practice daily with spaced repetition progress ribbons and locked states.
*   **Classmates**: View cohort mates and edit your profile.
*   **Events Calendar**: Weekly/monthly schedules for the active cohort.

## Tech Stack
*   **Ruby on Rails** 7.1+
*   **Database**: PostgreSQL
*   **CSS Toolkit**: Bootstrap 5
*   **Authentication**: Devise
*   **Authorization**: Pundit
*   **Testing**: RSpec

## Local Setup

1. **Prerequisites**
   Ensure Ruby and PostgreSQL are installed.

2. **Clone & Install**
   ```bash
   bundle install
   yarn install
   ```

3. **Database Setup**
   ```bash
   rails db:create db:migrate db:seed
   ```
   *The `db:seed` file automatically creates a complete demo environment with randomized bootcamp data.*

4. **Run the server**
   ```bash
   bin/dev
   ```

## Demo Credentials
After running `rails db:seed`, you can log in with:
*   **Admin**: `admin@codehaus.com` / `password`
*   **Instructor**: `teacher@codehaus.com` / `password`
*   **Student**: `student1@codehaus.com` / `password`
