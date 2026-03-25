/*
 Navicat Premium Data Transfer

 Source Server         : postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 140022
 Source Host           : localhost:5432
 Source Catalog        : job_portal
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140022
 File Encoding         : 65001

 Date: 25/03/2026 18:45:45
*/


-- ----------------------------
-- Sequence structure for areas_id_area_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."areas_id_area_seq";
CREATE SEQUENCE "public"."areas_id_area_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."areas_id_area_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for experience_levels_id_experience_level_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."experience_levels_id_experience_level_seq";
CREATE SEQUENCE "public"."experience_levels_id_experience_level_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."experience_levels_id_experience_level_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for industries_id_industry_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."industries_id_industry_seq";
CREATE SEQUENCE "public"."industries_id_industry_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."industries_id_industry_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for job_categories_id_category_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."job_categories_id_category_seq";
CREATE SEQUENCE "public"."job_categories_id_category_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."job_categories_id_category_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for job_details_id_job_detail_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."job_details_id_job_detail_seq";
CREATE SEQUENCE "public"."job_details_id_job_detail_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."job_details_id_job_detail_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for jobs_id_job_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jobs_id_job_seq";
CREATE SEQUENCE "public"."jobs_id_job_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."jobs_id_job_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for tags_id_tag_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tags_id_tag_seq";
CREATE SEQUENCE "public"."tags_id_tag_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."tags_id_tag_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Sequence structure for users_id_user_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_user_seq";
CREATE SEQUENCE "public"."users_id_user_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."users_id_user_seq" OWNER TO "tasyahan";

-- ----------------------------
-- Table structure for _prisma_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."_prisma_migrations";
CREATE TABLE "public"."_prisma_migrations" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "checksum" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "finished_at" timestamptz(6),
  "migration_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "logs" text COLLATE "pg_catalog"."default",
  "rolled_back_at" timestamptz(6),
  "started_at" timestamptz(6) NOT NULL DEFAULT now(),
  "applied_steps_count" int4 NOT NULL DEFAULT 0
)
;
ALTER TABLE "public"."_prisma_migrations" OWNER TO "tasyahan";

-- ----------------------------
-- Records of _prisma_migrations
-- ----------------------------
BEGIN;
INSERT INTO "public"."_prisma_migrations" VALUES ('2c5ba40a-b521-403c-947c-db4ecb11b96a', '3f1e52d7b3a254287f2529f2886c6978d3d217c8e0c94b728697d7b54135c4fc', '2026-03-24 19:29:15.640905+07', '20260324122915_init', NULL, NULL, '2026-03-24 19:29:15.581404+07', 1);
COMMIT;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS "public"."areas";
CREATE TABLE "public"."areas" (
  "id_area" int4 NOT NULL DEFAULT nextval('areas_id_area_seq'::regclass),
  "area_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."areas" OWNER TO "tasyahan";

-- ----------------------------
-- Records of areas
-- ----------------------------
BEGIN;
INSERT INTO "public"."areas" VALUES (1, 'Jakarta', '2026-03-24 12:29:20.822', '2026-03-24 12:29:20.822');
INSERT INTO "public"."areas" VALUES (2, 'Bandung', '2026-03-24 12:29:20.824', '2026-03-24 12:29:20.824');
INSERT INTO "public"."areas" VALUES (3, 'Surabaya', '2026-03-24 12:29:20.825', '2026-03-24 12:29:20.825');
INSERT INTO "public"."areas" VALUES (4, 'Yogyakarta', '2026-03-24 12:29:20.826', '2026-03-24 12:29:20.826');
INSERT INTO "public"."areas" VALUES (5, 'Semarang', '2026-03-24 12:29:20.827', '2026-03-24 12:29:20.827');
INSERT INTO "public"."areas" VALUES (6, 'Malang', '2026-03-24 12:29:20.828', '2026-03-24 12:29:20.828');
INSERT INTO "public"."areas" VALUES (7, 'Bekasi', '2026-03-24 12:29:20.83', '2026-03-24 12:29:20.83');
INSERT INTO "public"."areas" VALUES (8, 'Depok', '2026-03-24 12:29:20.831', '2026-03-24 12:29:20.831');
INSERT INTO "public"."areas" VALUES (9, 'Tangerang', '2026-03-24 12:29:20.832', '2026-03-24 12:29:20.832');
INSERT INTO "public"."areas" VALUES (10, 'Bogor', '2026-03-24 12:29:20.833', '2026-03-24 12:29:20.833');
INSERT INTO "public"."areas" VALUES (11, 'Denpasar', '2026-03-24 12:29:20.834', '2026-03-24 12:29:20.834');
INSERT INTO "public"."areas" VALUES (12, 'Batam', '2026-03-24 12:29:20.835', '2026-03-24 12:29:20.835');
INSERT INTO "public"."areas" VALUES (13, 'Medan', '2026-03-24 12:29:20.837', '2026-03-24 12:29:20.837');
INSERT INTO "public"."areas" VALUES (14, 'Makassar', '2026-03-24 12:29:20.838', '2026-03-24 12:29:20.838');
INSERT INTO "public"."areas" VALUES (15, 'Palembang', '2026-03-24 12:29:20.839', '2026-03-24 12:29:20.839');
INSERT INTO "public"."areas" VALUES (16, 'Balikpapan', '2026-03-24 12:29:20.84', '2026-03-24 12:29:20.84');
INSERT INTO "public"."areas" VALUES (17, 'Samarinda', '2026-03-24 12:29:20.842', '2026-03-24 12:29:20.842');
INSERT INTO "public"."areas" VALUES (18, 'Banjarmasin', '2026-03-24 12:29:20.844', '2026-03-24 12:29:20.844');
INSERT INTO "public"."areas" VALUES (19, 'Solo', '2026-03-24 12:29:20.845', '2026-03-24 12:29:20.845');
INSERT INTO "public"."areas" VALUES (20, 'Cirebon', '2026-03-24 12:29:20.846', '2026-03-24 12:29:20.846');
COMMIT;

-- ----------------------------
-- Table structure for experience_levels
-- ----------------------------
DROP TABLE IF EXISTS "public"."experience_levels";
CREATE TABLE "public"."experience_levels" (
  "id_experience_level" int4 NOT NULL DEFAULT nextval('experience_levels_id_experience_level_seq'::regclass),
  "experience_level" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."experience_levels" OWNER TO "tasyahan";

-- ----------------------------
-- Records of experience_levels
-- ----------------------------
BEGIN;
INSERT INTO "public"."experience_levels" VALUES (1, 'Internship', '2026-03-24 12:29:20.847', '2026-03-24 12:29:20.847');
INSERT INTO "public"."experience_levels" VALUES (2, 'Fresh Graduate', '2026-03-24 12:29:20.85', '2026-03-24 12:29:20.85');
INSERT INTO "public"."experience_levels" VALUES (3, 'Junior', '2026-03-24 12:29:20.852', '2026-03-24 12:29:20.852');
INSERT INTO "public"."experience_levels" VALUES (4, 'Mid-level', '2026-03-24 12:29:20.853', '2026-03-24 12:29:20.853');
INSERT INTO "public"."experience_levels" VALUES (5, 'Senior', '2026-03-24 12:29:20.855', '2026-03-24 12:29:20.855');
INSERT INTO "public"."experience_levels" VALUES (6, 'Lead', '2026-03-24 12:29:20.857', '2026-03-24 12:29:20.857');
INSERT INTO "public"."experience_levels" VALUES (7, 'Manager', '2026-03-24 12:29:20.858', '2026-03-24 12:29:20.858');
INSERT INTO "public"."experience_levels" VALUES (8, 'Head', '2026-03-24 12:29:20.86', '2026-03-24 12:29:20.86');
INSERT INTO "public"."experience_levels" VALUES (9, 'Director', '2026-03-24 12:29:20.861', '2026-03-24 12:29:20.861');
COMMIT;

-- ----------------------------
-- Table structure for industries
-- ----------------------------
DROP TABLE IF EXISTS "public"."industries";
CREATE TABLE "public"."industries" (
  "id_industry" int4 NOT NULL DEFAULT nextval('industries_id_industry_seq'::regclass),
  "industry_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."industries" OWNER TO "tasyahan";

-- ----------------------------
-- Records of industries
-- ----------------------------
BEGIN;
INSERT INTO "public"."industries" VALUES (1, 'Information Technology', '2026-03-24 12:29:20.865', '2026-03-24 12:29:20.865');
INSERT INTO "public"."industries" VALUES (2, 'Finance', '2026-03-24 12:29:20.868', '2026-03-24 12:29:20.868');
INSERT INTO "public"."industries" VALUES (3, 'Banking', '2026-03-24 12:29:20.869', '2026-03-24 12:29:20.869');
INSERT INTO "public"."industries" VALUES (4, 'Insurance', '2026-03-24 12:29:20.871', '2026-03-24 12:29:20.871');
INSERT INTO "public"."industries" VALUES (5, 'Healthcare', '2026-03-24 12:29:20.873', '2026-03-24 12:29:20.873');
INSERT INTO "public"."industries" VALUES (6, 'Education', '2026-03-24 12:29:20.875', '2026-03-24 12:29:20.875');
INSERT INTO "public"."industries" VALUES (7, 'E-commerce', '2026-03-24 12:29:20.876', '2026-03-24 12:29:20.876');
INSERT INTO "public"."industries" VALUES (8, 'Telecommunication', '2026-03-24 12:29:20.878', '2026-03-24 12:29:20.878');
INSERT INTO "public"."industries" VALUES (9, 'Logistics', '2026-03-24 12:29:20.879', '2026-03-24 12:29:20.879');
INSERT INTO "public"."industries" VALUES (10, 'Manufacturing', '2026-03-24 12:29:20.881', '2026-03-24 12:29:20.881');
INSERT INTO "public"."industries" VALUES (11, 'Automotive', '2026-03-24 12:29:20.883', '2026-03-24 12:29:20.883');
INSERT INTO "public"."industries" VALUES (12, 'Energy', '2026-03-24 12:29:20.885', '2026-03-24 12:29:20.885');
INSERT INTO "public"."industries" VALUES (13, 'Startup', '2026-03-24 12:29:20.887', '2026-03-24 12:29:20.887');
INSERT INTO "public"."industries" VALUES (14, 'Consulting', '2026-03-24 12:29:20.889', '2026-03-24 12:29:20.889');
INSERT INTO "public"."industries" VALUES (15, 'Digital Agency', '2026-03-24 12:29:20.89', '2026-03-24 12:29:20.89');
INSERT INTO "public"."industries" VALUES (16, 'Gaming', '2026-03-24 12:29:20.892', '2026-03-24 12:29:20.892');
INSERT INTO "public"."industries" VALUES (17, 'Media', '2026-03-24 12:29:20.893', '2026-03-24 12:29:20.893');
INSERT INTO "public"."industries" VALUES (18, 'Hospitality', '2026-03-24 12:29:20.895', '2026-03-24 12:29:20.895');
INSERT INTO "public"."industries" VALUES (19, 'Retail', '2026-03-24 12:29:20.896', '2026-03-24 12:29:20.896');
INSERT INTO "public"."industries" VALUES (20, 'Government', '2026-03-24 12:29:20.898', '2026-03-24 12:29:20.898');
COMMIT;

-- ----------------------------
-- Table structure for job_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."job_categories";
CREATE TABLE "public"."job_categories" (
  "id_category" int4 NOT NULL DEFAULT nextval('job_categories_id_category_seq'::regclass),
  "category_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."job_categories" OWNER TO "tasyahan";

-- ----------------------------
-- Records of job_categories
-- ----------------------------
BEGIN;
INSERT INTO "public"."job_categories" VALUES (1, 'Engineering', '2026-03-24 12:29:20.726', '2026-03-24 12:29:20.726');
INSERT INTO "public"."job_categories" VALUES (2, 'Technology', '2026-03-24 12:29:20.774', '2026-03-24 12:29:20.774');
INSERT INTO "public"."job_categories" VALUES (3, 'Product', '2026-03-24 12:29:20.778', '2026-03-24 12:29:20.778');
INSERT INTO "public"."job_categories" VALUES (4, 'Design', '2026-03-24 12:29:20.781', '2026-03-24 12:29:20.781');
INSERT INTO "public"."job_categories" VALUES (5, 'Marketing', '2026-03-24 12:29:20.783', '2026-03-24 12:29:20.783');
INSERT INTO "public"."job_categories" VALUES (6, 'Sales', '2026-03-24 12:29:20.785', '2026-03-24 12:29:20.785');
INSERT INTO "public"."job_categories" VALUES (7, 'Human Resources', '2026-03-24 12:29:20.787', '2026-03-24 12:29:20.787');
INSERT INTO "public"."job_categories" VALUES (8, 'Finance', '2026-03-24 12:29:20.789', '2026-03-24 12:29:20.789');
INSERT INTO "public"."job_categories" VALUES (9, 'Operations', '2026-03-24 12:29:20.791', '2026-03-24 12:29:20.791');
INSERT INTO "public"."job_categories" VALUES (10, 'Customer Service', '2026-03-24 12:29:20.793', '2026-03-24 12:29:20.793');
INSERT INTO "public"."job_categories" VALUES (11, 'Business Development', '2026-03-24 12:29:20.795', '2026-03-24 12:29:20.795');
INSERT INTO "public"."job_categories" VALUES (12, 'Strategy', '2026-03-24 12:29:20.797', '2026-03-24 12:29:20.797');
INSERT INTO "public"."job_categories" VALUES (13, 'Data', '2026-03-24 12:29:20.799', '2026-03-24 12:29:20.799');
INSERT INTO "public"."job_categories" VALUES (14, 'Legal', '2026-03-24 12:29:20.801', '2026-03-24 12:29:20.801');
INSERT INTO "public"."job_categories" VALUES (15, 'Procurement', '2026-03-24 12:29:20.802', '2026-03-24 12:29:20.802');
INSERT INTO "public"."job_categories" VALUES (16, 'Supply Chain', '2026-03-24 12:29:20.804', '2026-03-24 12:29:20.804');
INSERT INTO "public"."job_categories" VALUES (17, 'Production', '2026-03-24 12:29:20.806', '2026-03-24 12:29:20.806');
INSERT INTO "public"."job_categories" VALUES (18, 'Quality Assurance', '2026-03-24 12:29:20.807', '2026-03-24 12:29:20.807');
INSERT INTO "public"."job_categories" VALUES (19, 'Retail', '2026-03-24 12:29:20.809', '2026-03-24 12:29:20.809');
INSERT INTO "public"."job_categories" VALUES (20, 'Manufacturing', '2026-03-24 12:29:20.811', '2026-03-24 12:29:20.811');
INSERT INTO "public"."job_categories" VALUES (21, 'IT Support', '2026-03-24 12:29:20.812', '2026-03-24 12:29:20.812');
INSERT INTO "public"."job_categories" VALUES (22, 'Security', '2026-03-24 12:29:20.814', '2026-03-24 12:29:20.814');
INSERT INTO "public"."job_categories" VALUES (23, 'Administration', '2026-03-24 12:29:20.816', '2026-03-24 12:29:20.816');
COMMIT;

-- ----------------------------
-- Table structure for job_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."job_details";
CREATE TABLE "public"."job_details" (
  "id_job_detail" int4 NOT NULL DEFAULT nextval('job_details_id_job_detail_seq'::regclass),
  "job_id" int4 NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "requirements" text COLLATE "pg_catalog"."default",
  "benefits" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."job_details" OWNER TO "tasyahan";

-- ----------------------------
-- Records of job_details
-- ----------------------------
BEGIN;
INSERT INTO "public"."job_details" VALUES (1, 1, 'Build scalable backend services', 'Education: Bachelor''s degree
Experience: Node.js
Database: PostgreSQL', 'BPJS
Remote Work
Bonus', '2026-03-24 14:35:35.114', '2026-03-24 14:35:35.114');
INSERT INTO "public"."job_details" VALUES (2, 2, 'Build scalable backend services', 'Education: Bachelor''s degree
Experience: Node.js
Database: PostgreSQL', 'BPJS
Remote Work
Bonus', '2026-03-24 14:39:22.744', '2026-03-24 14:39:22.744');
INSERT INTO "public"."job_details" VALUES (3, 3, 'Build scalable backend services', 'Education: Bachelor''s degree
Experience: Node.js
Database: PostgreSQL', 'BPJS
Remote Work
Bonus', '2026-03-24 14:42:04.017', '2026-03-24 14:42:04.017');
INSERT INTO "public"."job_details" VALUES (4, 4, 'Develop interactive web interfaces', 'Education: Bachelor''s degree
Experience: React, Next.js
CSS/HTML', 'Hybrid Work
BPJS
Flexible Hours', '2026-03-25 08:06:20.321', '2026-03-25 08:06:20.321');
INSERT INTO "public"."job_details" VALUES (5, 5, 'Lead product development and roadmap', 'Education: Bachelor''s degree
Experience: Agile, Scrum
Leadership skills', 'Health Insurance
Bonus
Work from Office', '2026-03-25 08:07:27.8', '2026-03-25 08:07:27.8');
INSERT INTO "public"."job_details" VALUES (6, 6, 'Design user-friendly digital experiences', 'Experience: Figma, Adobe XD
Portfolio required', 'Remote Work
Flexible Hours
BPJS', '2026-03-25 08:07:39.758', '2026-03-25 08:07:39.758');
INSERT INTO "public"."job_details" VALUES (7, 7, 'Analyze data to drive business decisions', 'Experience: SQL, Python, Excel
Education: Bachelor''s degree', 'Health Insurance
Bonus
Work from Office', '2026-03-25 08:07:52.093', '2026-03-25 08:07:52.093');
INSERT INTO "public"."job_details" VALUES (8, 8, 'Plan and execute marketing campaigns', 'Experience: Digital Marketing, Social Media
Bachelor''s degree', 'BPJS
Flexible Hours
Work from Office', '2026-03-25 08:08:05.477', '2026-03-25 08:08:05.477');
INSERT INTO "public"."job_details" VALUES (9, 9, 'Manage client accounts and increase sales', 'Experience: Sales, CRM tools
Communication skills', 'Commission
BPJS
Flexible Hours', '2026-03-25 08:08:20.864', '2026-03-25 08:08:20.864');
INSERT INTO "public"."job_details" VALUES (10, 10, 'Maintain CI/CD pipelines and cloud infrastructure', 'Experience: AWS, Docker, Kubernetes
Scripting: Python/Bash', 'Remote Work
Bonus
BPJS', '2026-03-25 08:08:31.198', '2026-03-25 08:08:31.198');
INSERT INTO "public"."job_details" VALUES (11, 11, 'Oversee HR operations and talent acquisition', 'Experience: HR systems, Recruitment
Leadership skills', 'Health Insurance
Bonus
Flexible Hours', '2026-03-25 08:08:40.999', '2026-03-25 08:08:40.999');
INSERT INTO "public"."job_details" VALUES (12, 12, 'Protect company systems from cyber threats', 'Experience: Network Security, Penetration Testing
Certifications preferred', 'Remote Work
Bonus
BPJS', '2026-03-25 08:08:52.525', '2026-03-25 08:08:52.525');
INSERT INTO "public"."job_details" VALUES (13, 13, 'Develop Android and iOS applications', 'Experience: React Native, Flutter
Education: Bachelor''s degree', 'Remote Work
Flexible Hours
BPJS', '2026-03-25 08:09:57.311', '2026-03-25 08:09:57.311');
INSERT INTO "public"."job_details" VALUES (14, 14, 'Create visual designs for marketing and products', 'Experience: Photoshop, Illustrator
Portfolio required', 'Flexible Hours
BPJS
Work from Office', '2026-03-25 08:10:10.086', '2026-03-25 08:10:10.086');
INSERT INTO "public"."job_details" VALUES (15, 15, 'Build and optimize AI/ML models', 'Experience: Python, TensorFlow, PyTorch
Master''s degree preferred', 'Remote Work
Health Insurance
Bonus', '2026-03-25 08:10:20.249', '2026-03-25 08:10:20.249');
INSERT INTO "public"."job_details" VALUES (16, 16, 'Create engaging content for blogs and social media', 'Experience: SEO, Copywriting
Bachelor''s degree', 'Flexible Hours
BPJS
Work from Home', '2026-03-25 08:10:31.541', '2026-03-25 08:10:31.541');
INSERT INTO "public"."job_details" VALUES (17, 17, 'Analyze business processes and recommend improvements', 'Experience: SQL, Excel, Data Analysis
Bachelor''s degree', 'Bonus
BPJS
Flexible Hours', '2026-03-25 08:10:41.497', '2026-03-25 08:10:41.497');
INSERT INTO "public"."job_details" VALUES (18, 18, 'Oversee logistics and operations for smooth workflow', 'Experience: Supply Chain, Leadership
Bachelor''s degree', 'Health Insurance
Bonus
Work from Office', '2026-03-25 08:10:52.225', '2026-03-25 08:10:52.225');
INSERT INTO "public"."job_details" VALUES (19, 19, 'Provide excellent support to customers via multiple channels', 'Experience: CRM, Communication skills
Bachelor''s degree preferred', 'BPJS
Flexible Hours
Work from Office', '2026-03-25 08:11:04.705', '2026-03-25 08:11:04.705');
INSERT INTO "public"."job_details" VALUES (20, 20, 'Analyze financial data and create forecasts', 'Experience: Excel, Financial Modeling
Bachelor''s degree', 'Bonus
Health Insurance
Flexible Hours', '2026-03-25 08:11:18.183', '2026-03-25 08:11:18.183');
INSERT INTO "public"."job_details" VALUES (21, 21, 'Test software to ensure quality standards', 'Experience: Automated testing, Selenium
Bachelor''s degree', 'BPJS
Remote Work
Bonus', '2026-03-25 08:11:27.84', '2026-03-25 08:11:27.84');
INSERT INTO "public"."job_details" VALUES (22, 22, 'Coordinate shipments and manage inventory', 'Experience: Supply Chain, Excel
Bachelor''s degree', 'BPJS
Flexible Hours
Work from Office', '2026-03-25 08:11:38.883', '2026-03-25 08:11:38.883');
COMMIT;

-- ----------------------------
-- Table structure for job_tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."job_tags";
CREATE TABLE "public"."job_tags" (
  "job_id" int4 NOT NULL,
  "tag_id" int4 NOT NULL
)
;
ALTER TABLE "public"."job_tags" OWNER TO "tasyahan";

-- ----------------------------
-- Records of job_tags
-- ----------------------------
BEGIN;
INSERT INTO "public"."job_tags" VALUES (1, 10);
INSERT INTO "public"."job_tags" VALUES (1, 4);
INSERT INTO "public"."job_tags" VALUES (1, 1);
INSERT INTO "public"."job_tags" VALUES (2, 1);
INSERT INTO "public"."job_tags" VALUES (2, 4);
INSERT INTO "public"."job_tags" VALUES (2, 10);
INSERT INTO "public"."job_tags" VALUES (3, 1);
INSERT INTO "public"."job_tags" VALUES (3, 4);
INSERT INTO "public"."job_tags" VALUES (3, 10);
INSERT INTO "public"."job_tags" VALUES (4, 2);
INSERT INTO "public"."job_tags" VALUES (4, 4);
INSERT INTO "public"."job_tags" VALUES (4, 8);
INSERT INTO "public"."job_tags" VALUES (4, 9);
INSERT INTO "public"."job_tags" VALUES (5, 3);
INSERT INTO "public"."job_tags" VALUES (5, 4);
INSERT INTO "public"."job_tags" VALUES (5, 27);
INSERT INTO "public"."job_tags" VALUES (6, 1);
INSERT INTO "public"."job_tags" VALUES (6, 4);
INSERT INTO "public"."job_tags" VALUES (6, 29);
INSERT INTO "public"."job_tags" VALUES (7, 4);
INSERT INTO "public"."job_tags" VALUES (7, 13);
INSERT INTO "public"."job_tags" VALUES (7, 23);
INSERT INTO "public"."job_tags" VALUES (8, 2);
INSERT INTO "public"."job_tags" VALUES (8, 4);
INSERT INTO "public"."job_tags" VALUES (8, 28);
INSERT INTO "public"."job_tags" VALUES (9, 4);
INSERT INTO "public"."job_tags" VALUES (9, 5);
INSERT INTO "public"."job_tags" VALUES (9, 28);
INSERT INTO "public"."job_tags" VALUES (10, 1);
INSERT INTO "public"."job_tags" VALUES (10, 4);
INSERT INTO "public"."job_tags" VALUES (10, 19);
INSERT INTO "public"."job_tags" VALUES (10, 20);
INSERT INTO "public"."job_tags" VALUES (11, 4);
INSERT INTO "public"."job_tags" VALUES (11, 28);
INSERT INTO "public"."job_tags" VALUES (11, 29);
INSERT INTO "public"."job_tags" VALUES (12, 1);
INSERT INTO "public"."job_tags" VALUES (12, 4);
INSERT INTO "public"."job_tags" VALUES (12, 21);
INSERT INTO "public"."job_tags" VALUES (13, 1);
INSERT INTO "public"."job_tags" VALUES (13, 4);
INSERT INTO "public"."job_tags" VALUES (13, 8);
INSERT INTO "public"."job_tags" VALUES (14, 4);
INSERT INTO "public"."job_tags" VALUES (14, 29);
INSERT INTO "public"."job_tags" VALUES (15, 1);
INSERT INTO "public"."job_tags" VALUES (15, 13);
INSERT INTO "public"."job_tags" VALUES (15, 30);
INSERT INTO "public"."job_tags" VALUES (16, 2);
INSERT INTO "public"."job_tags" VALUES (16, 4);
INSERT INTO "public"."job_tags" VALUES (16, 28);
INSERT INTO "public"."job_tags" VALUES (17, 4);
INSERT INTO "public"."job_tags" VALUES (17, 23);
INSERT INTO "public"."job_tags" VALUES (17, 28);
INSERT INTO "public"."job_tags" VALUES (18, 4);
INSERT INTO "public"."job_tags" VALUES (18, 28);
INSERT INTO "public"."job_tags" VALUES (18, 29);
INSERT INTO "public"."job_tags" VALUES (19, 4);
INSERT INTO "public"."job_tags" VALUES (19, 5);
INSERT INTO "public"."job_tags" VALUES (19, 28);
INSERT INTO "public"."job_tags" VALUES (20, 4);
INSERT INTO "public"."job_tags" VALUES (20, 23);
INSERT INTO "public"."job_tags" VALUES (20, 28);
INSERT INTO "public"."job_tags" VALUES (21, 1);
INSERT INTO "public"."job_tags" VALUES (21, 4);
INSERT INTO "public"."job_tags" VALUES (21, 29);
INSERT INTO "public"."job_tags" VALUES (22, 4);
INSERT INTO "public"."job_tags" VALUES (22, 28);
INSERT INTO "public"."job_tags" VALUES (22, 29);
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."jobs";
CREATE TABLE "public"."jobs" (
  "id_job" int4 NOT NULL DEFAULT nextval('jobs_id_job_seq'::regclass),
  "user_id" int4 NOT NULL,
  "title" text COLLATE "pg_catalog"."default" NOT NULL,
  "company_name" text COLLATE "pg_catalog"."default",
  "salary_min" int8 NOT NULL,
  "salary_max" int8 NOT NULL,
  "area_id" int4 NOT NULL,
  "category_id" int4 NOT NULL,
  "experience_level_id" int4 NOT NULL,
  "industry_id" int4 NOT NULL,
  "published_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."jobs" OWNER TO "tasyahan";

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
INSERT INTO "public"."jobs" VALUES (3, 1, 'Backend Engineer', 'PT Merah Muda', 5000000, 10000000, 7, 2, 2, 5, '2026-03-24 14:42:04.017', '2026-03-24 14:42:04.017', '2026-03-24 14:42:04.017');
INSERT INTO "public"."jobs" VALUES (1, 1, 'Backend Engineer', 'PT Makmur Jaya', 3000000, 5000000, 1, 1, 1, 10, '2026-03-01 14:35:35.114', '2026-03-24 14:35:35.114', '2026-03-24 14:35:35.114');
INSERT INTO "public"."jobs" VALUES (2, 1, 'Backend Engineer', 'PT Sejahtera', 8000000, 15000000, 5, 1, 3, 1, '2026-02-05 14:39:22.744', '2026-03-24 14:39:22.744', '2026-03-24 14:39:22.744');
INSERT INTO "public"."jobs" VALUES (4, 1, 'Frontend Developer', 'Web Solutions', 7000000, 12000000, 2, 4, 2, 1, '2026-03-25 08:06:20.321', '2026-03-25 08:06:20.321', '2026-03-25 08:06:20.321');
INSERT INTO "public"."jobs" VALUES (5, 1, 'Product Manager', 'Startup Hub', 12000000, 20000000, 3, 3, 5, 13, '2026-03-25 08:07:27.8', '2026-03-25 08:07:27.8', '2026-03-25 08:07:27.8');
INSERT INTO "public"."jobs" VALUES (6, 1, 'UX Designer', 'Creative Studio', 6000000, 10000000, 4, 4, 3, 14, '2026-03-25 08:07:39.758', '2026-03-25 08:07:39.758', '2026-03-25 08:07:39.758');
INSERT INTO "public"."jobs" VALUES (7, 1, 'Data Analyst', 'Finance Corp', 9000000, 14000000, 5, 13, 4, 6, '2026-03-25 08:07:52.093', '2026-03-25 08:07:52.093', '2026-03-25 08:07:52.093');
INSERT INTO "public"."jobs" VALUES (8, 1, 'Marketing Specialist', 'Branding Co', 5000000, 9000000, 6, 5, 2, 7, '2026-03-25 08:08:05.477', '2026-03-25 08:08:05.477', '2026-03-25 08:08:05.477');
INSERT INTO "public"."jobs" VALUES (9, 1, 'Sales Executive', 'Retail Solutions', 4000000, 8000000, 7, 6, 2, 19, '2026-03-25 08:08:20.864', '2026-03-25 08:08:20.864', '2026-03-25 08:08:20.864');
INSERT INTO "public"."jobs" VALUES (10, 1, 'DevOps Engineer', 'CloudOps Inc', 11000000, 18000000, 1, 1, 4, 1, '2026-03-25 08:08:31.198', '2026-03-25 08:08:31.198', '2026-03-25 08:08:31.198');
INSERT INTO "public"."jobs" VALUES (11, 1, 'HR Manager', 'Corporate HR', 10000000, 16000000, 8, 7, 6, 20, '2026-03-25 08:08:40.999', '2026-03-25 08:08:40.999', '2026-03-25 08:08:40.999');
INSERT INTO "public"."jobs" VALUES (12, 1, 'Cybersecurity Specialist', 'SecureTech', 12000000, 22000000, 9, 22, 5, 1, '2026-03-25 08:08:52.525', '2026-03-25 08:08:52.525', '2026-03-25 08:08:52.525');
INSERT INTO "public"."jobs" VALUES (13, 1, 'Mobile App Developer', 'Appify', 7000000, 13000000, 10, 1, 3, 1, '2026-03-25 08:09:57.311', '2026-03-25 08:09:57.311', '2026-03-25 08:09:57.311');
INSERT INTO "public"."jobs" VALUES (14, 1, 'Graphic Designer', 'Creative Minds', 5000000, 9000000, 2, 4, 2, 14, '2026-03-25 08:10:10.086', '2026-03-25 08:10:10.086', '2026-03-25 08:10:10.086');
INSERT INTO "public"."jobs" VALUES (15, 1, 'AI Engineer', 'NeuralTech', 15000000, 25000000, 1, 1, 5, 1, '2026-03-25 08:10:20.249', '2026-03-25 08:10:20.249', '2026-03-25 08:10:20.249');
INSERT INTO "public"."jobs" VALUES (16, 1, 'Content Writer', 'MediaHub', 4000000, 8000000, 3, 5, 2, 17, '2026-03-25 08:10:31.541', '2026-03-25 08:10:31.541', '2026-03-25 08:10:31.541');
INSERT INTO "public"."jobs" VALUES (17, 1, 'Business Analyst', 'InsightCorp', 9000000, 15000000, 4, 12, 4, 7, '2026-03-25 08:10:41.497', '2026-03-25 08:10:41.497', '2026-03-25 08:10:41.497');
INSERT INTO "public"."jobs" VALUES (18, 1, 'Operations Manager', 'LogiTech', 12000000, 20000000, 5, 16, 6, 9, '2026-03-25 08:10:52.225', '2026-03-25 08:10:52.225', '2026-03-25 08:10:52.225');
INSERT INTO "public"."jobs" VALUES (19, 1, 'Customer Support Specialist', 'HelpDesk Co', 3500000, 7000000, 6, 20, 2, 19, '2026-03-25 08:11:04.705', '2026-03-25 08:11:04.705', '2026-03-25 08:11:04.705');
INSERT INTO "public"."jobs" VALUES (20, 1, 'Financial Analyst', 'FinSolutions', 10000000, 18000000, 7, 8, 4, 2, '2026-03-25 08:11:18.183', '2026-03-25 08:11:18.183', '2026-03-25 08:11:18.183');
INSERT INTO "public"."jobs" VALUES (21, 1, 'QA Engineer', 'QualityWorks', 7000000, 12000000, 8, 18, 3, 10, '2026-03-25 08:11:27.84', '2026-03-25 08:11:27.84', '2026-03-25 08:11:27.84');
INSERT INTO "public"."jobs" VALUES (22, 1, 'Logistics Coordinator', 'FastTrack', 5000000, 9000000, 9, 16, 3, 9, '2026-03-25 08:11:38.883', '2026-03-25 08:11:38.883', '2026-03-25 08:11:38.883');
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."tags";
CREATE TABLE "public"."tags" (
  "id_tag" int4 NOT NULL DEFAULT nextval('tags_id_tag_seq'::regclass),
  "tag_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."tags" OWNER TO "tasyahan";

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO "public"."tags" VALUES (1, 'Remote', '2026-03-24 12:29:20.901', '2026-03-24 12:29:20.901');
INSERT INTO "public"."tags" VALUES (2, 'Hybrid', '2026-03-24 12:29:20.903', '2026-03-24 12:29:20.903');
INSERT INTO "public"."tags" VALUES (3, 'Onsite', '2026-03-24 12:29:20.905', '2026-03-24 12:29:20.905');
INSERT INTO "public"."tags" VALUES (4, 'Full-time', '2026-03-24 12:29:20.907', '2026-03-24 12:29:20.907');
INSERT INTO "public"."tags" VALUES (5, 'Part-time', '2026-03-24 12:29:20.908', '2026-03-24 12:29:20.908');
INSERT INTO "public"."tags" VALUES (6, 'Contract', '2026-03-24 12:29:20.91', '2026-03-24 12:29:20.91');
INSERT INTO "public"."tags" VALUES (7, 'Freelance', '2026-03-24 12:29:20.911', '2026-03-24 12:29:20.911');
INSERT INTO "public"."tags" VALUES (8, 'React', '2026-03-24 12:29:20.913', '2026-03-24 12:29:20.913');
INSERT INTO "public"."tags" VALUES (9, 'Next.js', '2026-03-24 12:29:20.915', '2026-03-24 12:29:20.915');
INSERT INTO "public"."tags" VALUES (10, 'Node.js', '2026-03-24 12:29:20.917', '2026-03-24 12:29:20.917');
INSERT INTO "public"."tags" VALUES (11, 'TypeScript', '2026-03-24 12:29:20.919', '2026-03-24 12:29:20.919');
INSERT INTO "public"."tags" VALUES (12, 'JavaScript', '2026-03-24 12:29:20.92', '2026-03-24 12:29:20.92');
INSERT INTO "public"."tags" VALUES (13, 'Python', '2026-03-24 12:29:20.922', '2026-03-24 12:29:20.922');
INSERT INTO "public"."tags" VALUES (14, 'Django', '2026-03-24 12:29:20.923', '2026-03-24 12:29:20.923');
INSERT INTO "public"."tags" VALUES (15, 'Laravel', '2026-03-24 12:29:20.925', '2026-03-24 12:29:20.925');
INSERT INTO "public"."tags" VALUES (16, 'Go', '2026-03-24 12:29:20.926', '2026-03-24 12:29:20.926');
INSERT INTO "public"."tags" VALUES (17, 'Java', '2026-03-24 12:29:20.927', '2026-03-24 12:29:20.927');
INSERT INTO "public"."tags" VALUES (18, 'Spring Boot', '2026-03-24 12:29:20.929', '2026-03-24 12:29:20.929');
INSERT INTO "public"."tags" VALUES (19, 'AWS', '2026-03-24 12:29:20.93', '2026-03-24 12:29:20.93');
INSERT INTO "public"."tags" VALUES (20, 'Docker', '2026-03-24 12:29:20.931', '2026-03-24 12:29:20.931');
INSERT INTO "public"."tags" VALUES (21, 'Kubernetes', '2026-03-24 12:29:20.933', '2026-03-24 12:29:20.933');
INSERT INTO "public"."tags" VALUES (22, 'PostgreSQL', '2026-03-24 12:29:20.934', '2026-03-24 12:29:20.934');
INSERT INTO "public"."tags" VALUES (23, 'MongoDB', '2026-03-24 12:29:20.936', '2026-03-24 12:29:20.936');
INSERT INTO "public"."tags" VALUES (24, 'Redis', '2026-03-24 12:29:20.937', '2026-03-24 12:29:20.937');
INSERT INTO "public"."tags" VALUES (25, 'GraphQL', '2026-03-24 12:29:20.939', '2026-03-24 12:29:20.939');
INSERT INTO "public"."tags" VALUES (26, 'REST API', '2026-03-24 12:29:20.941', '2026-03-24 12:29:20.941');
INSERT INTO "public"."tags" VALUES (27, 'Startup', '2026-03-24 12:29:20.942', '2026-03-24 12:29:20.942');
INSERT INTO "public"."tags" VALUES (28, 'Corporate', '2026-03-24 12:29:20.944', '2026-03-24 12:29:20.944');
INSERT INTO "public"."tags" VALUES (29, 'Urgent Hiring', '2026-03-24 12:29:20.945', '2026-03-24 12:29:20.945');
INSERT INTO "public"."tags" VALUES (30, 'Entry Level', '2026-03-24 12:29:20.947', '2026-03-24 12:29:20.947');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id_user" int4 NOT NULL DEFAULT nextval('users_id_user_seq'::regclass),
  "fullname" text COLLATE "pg_catalog"."default" NOT NULL,
  "username" text COLLATE "pg_catalog"."default" NOT NULL,
  "email" text COLLATE "pg_catalog"."default" NOT NULL,
  "password" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_admin" bool NOT NULL,
  "active" bool NOT NULL,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;
ALTER TABLE "public"."users" OWNER TO "tasyahan";

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "public"."users" VALUES (1, 'Admin 2026', 'admin2026', 'admin2026@gmail.com', '$2b$10$jfRa6GIYpcauBNicugrg6.lz1Pdq3eNU6gLia0kVHB3a5/7rLGr/S', 't', 't', '2026-03-24 13:10:35.171', '2026-03-24 13:10:35.171');
INSERT INTO "public"."users" VALUES (2, 'User 2025', 'user2025', 'user2025@gmail.com', '$2b$10$G0bac59wvaX/gN7ZJZjeXeuEv9NxLkyx4RiNNb3OBZZo1Oid30QTy', 'f', 't', '2026-03-24 14:00:25.954', '2026-03-24 14:00:25.954');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."areas_id_area_seq"
OWNED BY "public"."areas"."id_area";
SELECT setval('"public"."areas_id_area_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."experience_levels_id_experience_level_seq"
OWNED BY "public"."experience_levels"."id_experience_level";
SELECT setval('"public"."experience_levels_id_experience_level_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."industries_id_industry_seq"
OWNED BY "public"."industries"."id_industry";
SELECT setval('"public"."industries_id_industry_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."job_categories_id_category_seq"
OWNED BY "public"."job_categories"."id_category";
SELECT setval('"public"."job_categories_id_category_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."job_details_id_job_detail_seq"
OWNED BY "public"."job_details"."id_job_detail";
SELECT setval('"public"."job_details_id_job_detail_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."jobs_id_job_seq"
OWNED BY "public"."jobs"."id_job";
SELECT setval('"public"."jobs_id_job_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tags_id_tag_seq"
OWNED BY "public"."tags"."id_tag";
SELECT setval('"public"."tags_id_tag_seq"', 31, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_user_seq"
OWNED BY "public"."users"."id_user";
SELECT setval('"public"."users_id_user_seq"', 3, true);

-- ----------------------------
-- Primary Key structure for table _prisma_migrations
-- ----------------------------
ALTER TABLE "public"."_prisma_migrations" ADD CONSTRAINT "_prisma_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table areas
-- ----------------------------
ALTER TABLE "public"."areas" ADD CONSTRAINT "areas_pkey" PRIMARY KEY ("id_area");

-- ----------------------------
-- Indexes structure for table experience_levels
-- ----------------------------
CREATE UNIQUE INDEX "experience_levels_experience_level_key" ON "public"."experience_levels" USING btree (
  "experience_level" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table experience_levels
-- ----------------------------
ALTER TABLE "public"."experience_levels" ADD CONSTRAINT "experience_levels_pkey" PRIMARY KEY ("id_experience_level");

-- ----------------------------
-- Indexes structure for table industries
-- ----------------------------
CREATE UNIQUE INDEX "industries_industry_name_key" ON "public"."industries" USING btree (
  "industry_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table industries
-- ----------------------------
ALTER TABLE "public"."industries" ADD CONSTRAINT "industries_pkey" PRIMARY KEY ("id_industry");

-- ----------------------------
-- Indexes structure for table job_categories
-- ----------------------------
CREATE UNIQUE INDEX "job_categories_category_name_key" ON "public"."job_categories" USING btree (
  "category_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table job_categories
-- ----------------------------
ALTER TABLE "public"."job_categories" ADD CONSTRAINT "job_categories_pkey" PRIMARY KEY ("id_category");

-- ----------------------------
-- Indexes structure for table job_details
-- ----------------------------
CREATE UNIQUE INDEX "job_details_job_id_key" ON "public"."job_details" USING btree (
  "job_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table job_details
-- ----------------------------
ALTER TABLE "public"."job_details" ADD CONSTRAINT "job_details_pkey" PRIMARY KEY ("id_job_detail");

-- ----------------------------
-- Indexes structure for table job_tags
-- ----------------------------
CREATE INDEX "job_tags_tag_id_idx" ON "public"."job_tags" USING btree (
  "tag_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table job_tags
-- ----------------------------
ALTER TABLE "public"."job_tags" ADD CONSTRAINT "job_tags_pkey" PRIMARY KEY ("job_id", "tag_id");

-- ----------------------------
-- Indexes structure for table jobs
-- ----------------------------
CREATE INDEX "jobs_area_id_idx" ON "public"."jobs" USING btree (
  "area_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jobs_category_id_idx" ON "public"."jobs" USING btree (
  "category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jobs_experience_level_id_idx" ON "public"."jobs" USING btree (
  "experience_level_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jobs_industry_id_idx" ON "public"."jobs" USING btree (
  "industry_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jobs_published_at_idx" ON "public"."jobs" USING btree (
  "published_at" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "jobs_salary_min_salary_max_idx" ON "public"."jobs" USING btree (
  "salary_min" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "salary_max" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table jobs
-- ----------------------------
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_pkey" PRIMARY KEY ("id_job");

-- ----------------------------
-- Indexes structure for table tags
-- ----------------------------
CREATE INDEX "tags_tag_name_idx" ON "public"."tags" USING btree (
  "tag_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "tags_tag_name_key" ON "public"."tags" USING btree (
  "tag_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tags
-- ----------------------------
ALTER TABLE "public"."tags" ADD CONSTRAINT "tags_pkey" PRIMARY KEY ("id_tag");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE INDEX "users_email_key" ON "public"."users" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id_user");

-- ----------------------------
-- Foreign Keys structure for table job_details
-- ----------------------------
ALTER TABLE "public"."job_details" ADD CONSTRAINT "job_details_job_id_fkey" FOREIGN KEY ("job_id") REFERENCES "public"."jobs" ("id_job") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table job_tags
-- ----------------------------
ALTER TABLE "public"."job_tags" ADD CONSTRAINT "job_tags_job_id_fkey" FOREIGN KEY ("job_id") REFERENCES "public"."jobs" ("id_job") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."job_tags" ADD CONSTRAINT "job_tags_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags" ("id_tag") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table jobs
-- ----------------------------
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_area_id_fkey" FOREIGN KEY ("area_id") REFERENCES "public"."areas" ("id_area") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."job_categories" ("id_category") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_experience_level_id_fkey" FOREIGN KEY ("experience_level_id") REFERENCES "public"."experience_levels" ("id_experience_level") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_industry_id_fkey" FOREIGN KEY ("industry_id") REFERENCES "public"."industries" ("id_industry") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id_user") ON DELETE RESTRICT ON UPDATE CASCADE;
