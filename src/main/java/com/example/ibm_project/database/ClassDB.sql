-- Table: public.Class

-- DROP TABLE public."Class";

CREATE TABLE public."Class"
(
    id bigint NOT NULL,
    name character varying(255)[] COLLATE pg_catalog."default" NOT NULL,
    year integer NOT NULL,
    section character varying(255)[] COLLATE pg_catalog."default" NOT NULL,
    classroom bigint NOT NULL,
    CONSTRAINT "Class_pkey" PRIMARY KEY (id),
    CONSTRAINT classroom FOREIGN KEY (classroom)
        REFERENCES public."Classroom" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION

)

    TABLESPACE pg_default;

ALTER TABLE public."Class"
    OWNER to postgres;
-- Index: fki_classroom

-- DROP INDEX public.fki_classroom;

CREATE INDEX fki_classroom
    ON public."Class" USING btree
        (classroom ASC NULLS LAST)
    TABLESPACE pg_default;