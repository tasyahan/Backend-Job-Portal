-- CreateTable
CREATE TABLE "users" (
    "id_user" SERIAL NOT NULL,
    "fullname" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "is_admin" BOOLEAN NOT NULL,
    "active" BOOLEAN NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id_user")
);

-- CreateTable
CREATE TABLE "job_categories" (
    "id_category" SERIAL NOT NULL,
    "category_name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "job_categories_pkey" PRIMARY KEY ("id_category")
);

-- CreateTable
CREATE TABLE "areas" (
    "id_area" SERIAL NOT NULL,
    "area_name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "areas_pkey" PRIMARY KEY ("id_area")
);

-- CreateTable
CREATE TABLE "experience_levels" (
    "id_experience_level" SERIAL NOT NULL,
    "experience_level" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "experience_levels_pkey" PRIMARY KEY ("id_experience_level")
);

-- CreateTable
CREATE TABLE "industries" (
    "id_industry" SERIAL NOT NULL,
    "industry_name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "industries_pkey" PRIMARY KEY ("id_industry")
);

-- CreateTable
CREATE TABLE "tags" (
    "id_tag" SERIAL NOT NULL,
    "tag_name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "tags_pkey" PRIMARY KEY ("id_tag")
);

-- CreateTable
CREATE TABLE "jobs" (
    "id_job" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "company_name" TEXT,
    "salary_min" BIGINT NOT NULL,
    "salary_max" BIGINT NOT NULL,
    "area_id" INTEGER NOT NULL,
    "category_id" INTEGER NOT NULL,
    "experience_level_id" INTEGER NOT NULL,
    "industry_id" INTEGER NOT NULL,
    "published_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "jobs_pkey" PRIMARY KEY ("id_job")
);

-- CreateTable
CREATE TABLE "job_details" (
    "id_job_detail" SERIAL NOT NULL,
    "job_id" INTEGER NOT NULL,
    "description" TEXT,
    "requirements" TEXT,
    "benefits" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "job_details_pkey" PRIMARY KEY ("id_job_detail")
);

-- CreateTable
CREATE TABLE "job_tags" (
    "job_id" INTEGER NOT NULL,
    "tag_id" INTEGER NOT NULL,

    CONSTRAINT "job_tags_pkey" PRIMARY KEY ("job_id","tag_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "job_categories_category_name_key" ON "job_categories"("category_name");

-- CreateIndex
CREATE UNIQUE INDEX "experience_levels_experience_level_key" ON "experience_levels"("experience_level");

-- CreateIndex
CREATE UNIQUE INDEX "industries_industry_name_key" ON "industries"("industry_name");

-- CreateIndex
CREATE UNIQUE INDEX "tags_tag_name_key" ON "tags"("tag_name");

-- CreateIndex
CREATE INDEX "tags_tag_name_idx" ON "tags"("tag_name");

-- CreateIndex
CREATE INDEX "jobs_area_id_idx" ON "jobs"("area_id");

-- CreateIndex
CREATE INDEX "jobs_category_id_idx" ON "jobs"("category_id");

-- CreateIndex
CREATE INDEX "jobs_experience_level_id_idx" ON "jobs"("experience_level_id");

-- CreateIndex
CREATE INDEX "jobs_industry_id_idx" ON "jobs"("industry_id");

-- CreateIndex
CREATE INDEX "jobs_published_at_idx" ON "jobs"("published_at");

-- CreateIndex
CREATE INDEX "jobs_salary_min_salary_max_idx" ON "jobs"("salary_min", "salary_max");

-- CreateIndex
CREATE UNIQUE INDEX "job_details_job_id_key" ON "job_details"("job_id");

-- CreateIndex
CREATE INDEX "job_tags_tag_id_idx" ON "job_tags"("tag_id");

-- AddForeignKey
ALTER TABLE "jobs" ADD CONSTRAINT "jobs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id_user") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jobs" ADD CONSTRAINT "jobs_area_id_fkey" FOREIGN KEY ("area_id") REFERENCES "areas"("id_area") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jobs" ADD CONSTRAINT "jobs_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "job_categories"("id_category") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jobs" ADD CONSTRAINT "jobs_experience_level_id_fkey" FOREIGN KEY ("experience_level_id") REFERENCES "experience_levels"("id_experience_level") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jobs" ADD CONSTRAINT "jobs_industry_id_fkey" FOREIGN KEY ("industry_id") REFERENCES "industries"("id_industry") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "job_details" ADD CONSTRAINT "job_details_job_id_fkey" FOREIGN KEY ("job_id") REFERENCES "jobs"("id_job") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "job_tags" ADD CONSTRAINT "job_tags_job_id_fkey" FOREIGN KEY ("job_id") REFERENCES "jobs"("id_job") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "job_tags" ADD CONSTRAINT "job_tags_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "tags"("id_tag") ON DELETE RESTRICT ON UPDATE CASCADE;
