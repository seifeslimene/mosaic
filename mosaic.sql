CREATE TABLE public.follower_relation (
    follower character varying(200) NOT NULL,
    following character varying(200) NOT NULL
);

CREATE TABLE public.likes (
    userid character varying(200) NOT NULL,
    postid integer NOT NULL,
    type character varying(10)
);

CREATE TABLE public.notifications (
    id integer NOT NULL,
    type character varying(200) NOT NULL,
    notifier character varying(200) NOT NULL,
    notified character varying(200) NOT NULL,
    read boolean DEFAULT false NOT NULL,
    createdat timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    postid integer
);

CREATE TABLE public.posts (
    id bigint NOT NULL,
    userid character varying(200) NOT NULL,
    parentnanoid character varying(12),
    nanoid character varying(12) NOT NULL,
    createdat timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    edited boolean DEFAULT false NOT NULL,
    content text NOT NULL
);

CREATE TABLE public.reposts (
    userid character varying(200) NOT NULL,
    postid integer NOT NULL,
    createdat timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE public.subscriptions (
    userid character varying(200) NOT NULL,
    subscription json NOT NULL
);

CREATE TABLE public.users (
    id character varying(200) NOT NULL,
    name character varying(250) NOT NULL,
    bio character varying(250),
    username character varying(32),
    email character varying(250) NOT NULL,
    image character varying(250) NOT NULL
);
