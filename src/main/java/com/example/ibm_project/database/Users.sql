-- Table: public.Users

-- DROP TABLE public."Users";

CREATE TABLE public."Users"
(
    id bigint NOT NULL,
    role character varying(20)[] COLLATE pg_catalog."default" NOT NULL,
    "firstName" character varying(255)[] COLLATE pg_catalog."default" NOT NULL,
    "lastName" character varying(255)[] COLLATE pg_catalog."default" NOT NULL,
    "enrolledClasses" bigint[],
    CONSTRAINT "Users_pkey" PRIMARY KEY (id)
)

    TABLESPACE pg_default;

ALTER TABLE public."Users"
    OWNER to postgres;