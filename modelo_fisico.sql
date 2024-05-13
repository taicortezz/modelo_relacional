	
CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "social_name" VARCHAR(50),
  "password" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "age" INTEGER NOT NULL DEFAULT NULL,
  "gender" VARCHAR(10),
  "education" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "housing_type" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "family_structure" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "income" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "people_in_house" INTEGER NOT NULL DEFAULT NULL,
  "address" VARCHAR(50) NOT NULL DEFAULT 'NULL'
);

CREATE TABLE "check_box" (
  "id" SERIAL PRIMARY KEY,
  "registration_id" INTEGER,
  "full_name" VARCHAR(50),
  "email" VARCHAR(50),
  "cellphone" INTEGER
);

CREATE TABLE "has_dog" (
  "id" SERIAL PRIMARY KEY,
  "registration_id" INTEGER,
  "checkbox_id" INTEGER,
  "dog_name" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "neutered" BOOLEAN NOT NULL DEFAULT 'NULL',
  "time_with_dog" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "first_dog" VARCHAR(10) NOT NULL DEFAULT 'NULL',
  "has_other_pets" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "dog_age" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "breed" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "acquired_from" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "paid_to_acquire" BOOLEAN NOT NULL DEFAULT 'NULL',
  "age_when_arrived" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "personality" TEXT NOT NULL DEFAULT 'NULL',
  "dog_reason_id" INTEGER,
  "characteristics" TEXT NOT NULL DEFAULT 'NULL',
  "who_decided" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "cannot_keep_dog" TEXT NOT NULL DEFAULT 'NULL',
  "veterinarian" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "dog_description" TEXT NOT NULL DEFAULT 'NULL',
  FOREIGN KEY ("registration_id") REFERENCES "users" ("id"),
  FOREIGN KEY ("checkbox_id") REFERENCES "check_box" ("id"),
  FOREIGN KEY ("dog_reason_id") REFERENCES "dog_reason" ("id")
);

CREATE TABLE "does_not_want_dog" (
  "id" SERIAL PRIMARY KEY,
  "registration_id" INTEGER,
  "reason_why_not" TEXT NOT NULL DEFAULT 'NULL',
  FOREIGN KEY ("registration_id") REFERENCES "users" ("id")
);

CREATE TABLE "wants_dog" (
  "id" SERIAL PRIMARY KEY,
  "users_id" INTEGER,
  "check_box_id" INTEGER,
  "physical_characteristics" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "dog_reason_id" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "dog_name" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "buy_or_adopt" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "when_to_include" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "dog_personality" TEXT NOT NULL DEFAULT 'NULL',
  "pet_expenses" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  FOREIGN KEY ("users_id") REFERENCES "users" ("id"),
  FOREIGN KEY ("check_box_id") REFERENCES "check_box" ("id"),
  FOREIGN KEY ("dog_reason_id") REFERENCES "dog_reason" ("id")
);

CREATE TABLE "already_had_dog" (
  "id" SERIAL PRIMARY KEY,
  "registration_id" INTEGER,
  "dog_name" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "belongs_to" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "dog_personality" TEXT NOT NULL DEFAULT 'NULL',
  "time_spent" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "first_dog" BOOLEAN NOT NULL DEFAULT 'NULL',
  "had_other_pets" VARCHAR(50) NOT NULL DEFAULT 'NULL',
  "age_on_arrival" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "was_neutered" BOOLEAN NOT NULL DEFAULT 'NULL',
  "breed" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "origin" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "pet_value" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "dog_reason_id" VARCHAR(50),
  "pet_characteristics" TEXT NOT NULL DEFAULT 'NULL',
  "who_decided_name" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "liked_most" TEXT NOT NULL DEFAULT 'NULL',
  "liked_least" TEXT NOT NULL DEFAULT 'NULL',
  "vet_visit" VARCHAR(100) NOT NULL DEFAULT 'NULL',
  "stopped_living_together" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "would_have_another_dog" BOOLEAN NOT NULL DEFAULT 'NULL',
  "reason_to_have_or_not_have" TEXT NOT NULL DEFAULT 'NULL',
  FOREIGN KEY ("registration_id") REFERENCES "users" ("id"),
  FOREIGN KEY ("dog_reason_id") REFERENCES "dog_reason" ("id")
);

CREATE TABLE "dog_reason" (
  "id" SERIAL PRIMARY KEY,
  "company_of_children" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "adult_supervision" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "appearance" VARCHAR(10) NOT NULL DEFAULT 'NULL',
  "company_of_another_dog" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "children_responsibility" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "friends_had" VARCHAR(15) NOT NULL DEFAULT 'NULL',
  "residence_protection" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "help_friend" VARCHAR(15) NOT NULL DEFAULT 'NULL',
  "save_life" VARCHAR(15) NOT NULL DEFAULT 'NULL',
  "immediate_charm" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "he_chose_me" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "present" VARCHAR(10) NOT NULL DEFAULT 'NULL',
  "others" TEXT NOT NULL DEFAULT 'NULL'
);

CREATE TABLE "dog_reason" (
  "id" SERIAL PRIMARY KEY,
  "company_of_children" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "adult_supervision" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "appearance" VARCHAR(10) NOT NULL DEFAULT 'NULL',
  "company_of_another_dog" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "children_responsibility" VARCHAR(30) NOT NULL DEFAULT 'NULL',
  "friends_had" VARCHAR(15) NOT NULL DEFAULT 'NULL',
  "residence_protection" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "help_friend" VARCHAR(15) NOT NULL DEFAULT 'NULL',
  "save_life" VARCHAR(15) NOT NULL DEFAULT 'NULL',
  "immediate_charm" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "he_chose_me" VARCHAR(20) NOT NULL DEFAULT 'NULL',
  "present" VARCHAR(10) NOT NULL DEFAULT 'NULL',
  "others" TEXT NOT NULL DEFAULT 'NULL'
);







