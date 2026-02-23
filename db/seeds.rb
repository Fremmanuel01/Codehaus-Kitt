puts "Cleaning database..."
Attendance.destroy_all
Submission.destroy_all
ClassSession.destroy_all
Enrollment.destroy_all
UserFlashcardProgress.destroy_all
Flashcard.destroy_all
FlashcardDeck.destroy_all
Lecture.destroy_all
Challenge.destroy_all
Track.destroy_all
User.destroy_all
Cohort.destroy_all

puts "Creating Cohort..."
c1 = Cohort.create!(
  name: "Batch 1234 - Web Development",
  city: "London",
  start_date: Date.today - 2.weeks,
  end_date: Date.today + 7.weeks
)

puts "Creating Users..."
User.create!(
  email: "admin1@codehaus.com",
  password: "password",
  first_name: "Alma",
  last_name: "Admin",
  role: :admin,
  avatar_url: "https://i.pravatar.cc/150?u=admin"
)

instructor = User.create!(
  email: "instructor1@codehaus.com",
  password: "password",
  first_name: "Ian",
  last_name: "Instructor",
  role: :instructor,
  avatar_url: "https://i.pravatar.cc/150?u=instructor"
)
# Enroll instructor to access cohort
Enrollment.create!(user: instructor, cohort: c1)

student = User.create!(
  email: "student1@codehaus.com",
  password: "password",
  first_name: "Sam",
  last_name: "Student",
  role: :student,
  cohort: c1,
  avatar_url: "https://i.pravatar.cc/150?u=student"
)

puts "Creating Track and Challenges..."
t1 = Track.create!(name: "Ruby Basics", position: 1)
ch1 = Challenge.create!(track: t1, title: "01-Hello-World", position: 1)
Challenge.create!(track: t1, title: "02-Arrays", position: 2)

puts "Creating Submissions..."
Submission.create!(user: student, challenge: ch1, link_url: "https://github.com/sam/hello", status: "reviewed", feedback: "Great job!")

puts "Creating Lectures and Class Sessions..."
_l1 = Lecture.create!(cohort: c1, teacher: instructor, title: "Ruby Arrays", date: Date.today, slide_count: 50, week: 1)

cs1 = ClassSession.create!(cohort: c1, date: Date.today, starts_at: Time.now.beginning_of_day, ends_at: Time.now.end_of_day, late_after_minutes: 15)

puts "Creating Attendances..."
Attendance.create!(user: student, class_session: cs1, status: "present")

puts "Creating Flashcards..."
deck = FlashcardDeck.create!(title: "Ruby Basics", section: "Week 1")
f1 = Flashcard.create!(flashcard_deck: deck, question: "What is a Ruby Hash?", answer: "A dictionary-like collection of unique keys and their values.")
UserFlashcardProgress.create!(user: student, flashcard_deck: deck, status: "needs_attention", progress_percent: 0)

puts "Done! Seeded 1 Admin, 1 Instructor, 1 Student, and core content."
