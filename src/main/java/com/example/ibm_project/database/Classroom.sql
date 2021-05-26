-- Table: public.Classroom

-- DROP TABLE public."Classroom";

CREATE TABLE public."Classroom"
(
    id bigint NOT NULL,
    location character varying(255)[] COLLATE pg_catalog."default" NOT NULL,
    name character varying(255)[] COLLATE pg_catalog."default" NOT NULL,
    capacity integer NOT NULL,
    "featureList" features[],
    CONSTRAINT "Classroom_pkey" PRIMARY KEY (id)
)

    TABLESPACE pg_default;

ALTER TABLE public."Classroom"
    OWNER to postgres;