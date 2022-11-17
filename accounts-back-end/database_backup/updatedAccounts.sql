--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_business_type; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.admin_business_type (
    id uuid NOT NULL,
    "Name" character varying(128)
);


ALTER TABLE public.admin_business_type OWNER TO vikncodes;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO vikncodes;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO vikncodes;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO vikncodes;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO vikncodes;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO vikncodes;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO vikncodes;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO vikncodes;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO vikncodes;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO vikncodes;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO vikncodes;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO vikncodes;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO vikncodes;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: companySettings_companySettings; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public."companySettings_companySettings" (
    id uuid NOT NULL,
    "Action" character varying(128),
    "CompanyName" character varying(128) NOT NULL,
    "CompanyLogo" character varying(100),
    "Address1" character varying(150),
    "Address2" character varying(150),
    "Address3" character varying(150),
    "City" character varying(128),
    "PostalCode" character varying(128),
    "Phone" character varying(150),
    "Mobile" character varying(150),
    "Email" character varying(254),
    "Website" character varying(128),
    "VATNumber" character varying(128),
    "GSTNumber" character varying(128),
    "Tax1" character varying(128),
    "Tax2" character varying(128),
    "Tax3" character varying(128),
    "ExpiryDate" date,
    "NoOfUsers" integer,
    "CreatedDate" timestamp with time zone NOT NULL,
    "UpdatedDate" timestamp with time zone,
    "DeletedDate" timestamp with time zone,
    "CreatedUserID" bigint,
    "UpdatedUserID" bigint,
    is_deleted boolean NOT NULL,
    is_vat boolean NOT NULL,
    is_gst boolean NOT NULL,
    "CRNumber" character varying(128),
    "CINNumber" character varying(128),
    "Description" character varying(128),
    "IsTrialVersion" boolean NOT NULL,
    "Edition" character varying(128),
    "Permission" character varying(128),
    "IsPosUser" boolean NOT NULL,
    "RegistrationType" character varying(128),
    "IsBranch" boolean NOT NULL,
    "NoOfBrances" integer,
    "Country_id" uuid,
    "State_id" uuid,
    business_type_id uuid,
    owner_id integer NOT NULL,
    "EnableZatca" boolean NOT NULL,
    CONSTRAINT "companySettings_companySettings_NoOfBrances_check" CHECK (("NoOfBrances" >= 0)),
    CONSTRAINT "companySettings_companySettings_NoOfUsers_check" CHECK (("NoOfUsers" >= 0))
);


ALTER TABLE public."companySettings_companySettings" OWNER TO vikncodes;

--
-- Name: country_country; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.country_country (
    id uuid NOT NULL,
    "CountryCode" character varying(128),
    "Country_Name" character varying(128),
    "Currency_Name" character varying(128),
    "Change" character varying(128),
    "Symbol" character varying(128),
    "FractionalUnits" numeric(20,8),
    "CurrencySymbolUnicode" character varying(128),
    "ISD_Code" character varying(128),
    "Flag" character varying(100),
    "Tax_Type" character varying(128)
);


ALTER TABLE public.country_country OWNER TO vikncodes;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.customer (
    id uuid NOT NULL,
    photo character varying(100),
    "DateOfBirth" date,
    "Phone" bigint,
    "City" character varying(128),
    "Address" character varying(150),
    "Gender" character varying(150),
    "Street" character varying(150),
    "ZipCode" character varying(150),
    "Language" character varying(150),
    "LastLoginToken" character varying(256),
    "LastLoginTokenMobile" character varying(256),
    "VerificationToken" bigint,
    "VerificationTokenTime" timestamp with time zone,
    "TimeZone" character varying(256),
    "Country_id" uuid,
    "LastLoginCompanyID_id" uuid,
    "State_id" uuid,
    user_id integer NOT NULL
);


ALTER TABLE public.customer OWNER TO vikncodes;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO vikncodes;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO vikncodes;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO vikncodes;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO vikncodes;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO vikncodes;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: vikncodes
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO vikncodes;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vikncodes
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO vikncodes;

--
-- Name: financialYear_financialYear; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public."financialYear_financialYear" (
    id uuid NOT NULL,
    "FinancialYearID" bigint NOT NULL,
    "Action" character varying(128),
    "FromDate" date,
    "ToDate" date,
    "IsClosed" boolean NOT NULL,
    "Notes" text,
    "CreatedDate" timestamp with time zone NOT NULL,
    "UpdatedDate" timestamp with time zone,
    "CreatedUserID" bigint,
    "CompanyID_id" uuid
);


ALTER TABLE public."financialYear_financialYear" OWNER TO vikncodes;

--
-- Name: invitedUsers_invitedUsers; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public."invitedUsers_invitedUsers" (
    id uuid NOT NULL,
    "Email" character varying(128),
    "InvitedUserID" bigint,
    "InvitedDate" date,
    "Status" character varying(128),
    "DefaultAccountForUser" boolean,
    "Cash_Account" bigint,
    "Bank_Account" bigint,
    "Sales_Account" bigint,
    "Sales_Return_Account" bigint,
    "Purchase_Account" bigint,
    "Purchase_Return_Account" bigint,
    "ExpiryDate" date,
    is_web boolean,
    is_mobile boolean,
    is_pos boolean,
    "BranchID" bigint,
    show_all_warehouse boolean,
    "DefaultWarehouse" bigint,
    "CompanyID_id" uuid,
    "UserType_id" uuid
);


ALTER TABLE public."invitedUsers_invitedUsers" OWNER TO vikncodes;

--
-- Name: state_state; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public.state_state (
    id uuid NOT NULL,
    "Name" character varying(128),
    "State_Type" character varying(128),
    "State_Code" character varying(128),
    "Country_id" uuid
);


ALTER TABLE public.state_state OWNER TO vikncodes;

--
-- Name: users_userTable; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public."users_userTable" (
    id uuid NOT NULL,
    "DefaultAccountForUser" boolean,
    "CreatedUserID" bigint,
    "CreatedDate" timestamp with time zone NOT NULL,
    "UpdatedDate" timestamp with time zone,
    "Cash_Account" bigint,
    "Bank_Account" bigint,
    "Sales_Account" bigint,
    "Sales_Return_Account" bigint,
    "Purchase_Account" bigint,
    "Purchase_Return_Account" bigint,
    "JoinedDate" date,
    "ExpiryDate" date,
    "LeaveDate" date,
    "Action" character varying(128),
    is_owner boolean,
    is_web boolean,
    is_mobile boolean,
    is_pos boolean,
    "BranchID" bigint,
    show_all_warehouse boolean,
    "DefaultWarehouse" bigint,
    "CompanyID_id" uuid,
    "UserType_id" uuid,
    customer_id uuid
);


ALTER TABLE public."users_userTable" OWNER TO vikncodes;

--
-- Name: users_userTableLog; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public."users_userTableLog" (
    id uuid NOT NULL,
    "TransactionID" character varying(128),
    "DefaultAccountForUser" boolean NOT NULL,
    "CreatedUserID" bigint,
    "CreatedDate" timestamp with time zone NOT NULL,
    "UpdatedDate" timestamp with time zone,
    "Cash_Account" bigint,
    "Bank_Account" bigint,
    "Sales_Account" bigint,
    "Sales_Return_Account" bigint,
    "Purchase_Account" bigint,
    "Purchase_Return_Account" bigint,
    "JoinedDate" timestamp with time zone,
    "ExpiryDate" date,
    "LeaveDate" timestamp with time zone,
    "Action" character varying(128),
    is_owner boolean,
    is_web boolean,
    is_mobile boolean,
    is_pos boolean,
    "BranchID" bigint,
    show_all_warehouse boolean,
    "DefaultWarehouse" bigint,
    "CompanyID_id" uuid,
    "UserType_id" uuid,
    customer_id uuid
);


ALTER TABLE public."users_userTableLog" OWNER TO vikncodes;

--
-- Name: users_userType; Type: TABLE; Schema: public; Owner: vikncodes
--

CREATE TABLE public."users_userType" (
    id uuid NOT NULL,
    "ID" bigint NOT NULL,
    "UserTypeName" character varying(128) NOT NULL,
    "Notes" text,
    "CreatedUserID" bigint,
    "CreatedDate" timestamp with time zone NOT NULL,
    "UpdatedDate" timestamp with time zone,
    "Action" character varying(128),
    "IsActive" boolean NOT NULL,
    "BranchID" bigint,
    "CompanyID_id" uuid
);


ALTER TABLE public."users_userType" OWNER TO vikncodes;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: admin_business_type; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.admin_business_type (id, "Name") FROM stdin;
a7514b31-a291-4067-8437-c54229f99774	Trading
c067b77d-1056-4eb8-9769-0733a29a0e9f	Restaurant
9cb75cfa-0726-435c-8665-2cdaff55e12b	Pharmacy
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add registration profile	1	add_registrationprofile
2	Can change registration profile	1	change_registrationprofile
3	Can delete registration profile	1	delete_registrationprofile
4	Can view registration profile	1	view_registrationprofile
5	Can add supervised registration profile	2	add_supervisedregistrationprofile
6	Can change supervised registration profile	2	change_supervisedregistrationprofile
7	Can delete supervised registration profile	2	delete_supervisedregistrationprofile
8	Can view supervised registration profile	2	view_supervisedregistrationprofile
9	Can add Attachment	3	add_attachment
10	Can change Attachment	3	change_attachment
11	Can delete Attachment	3	delete_attachment
12	Can view Attachment	3	view_attachment
13	Can add Message	4	add_mailermessage
14	Can change Message	4	change_mailermessage
15	Can delete Message	4	delete_mailermessage
16	Can view Message	4	view_mailermessage
17	Can add Password Reset Token	5	add_resetpasswordtoken
18	Can change Password Reset Token	5	change_resetpasswordtoken
19	Can delete Password Reset Token	5	delete_resetpasswordtoken
20	Can view Password Reset Token	5	view_resetpasswordtoken
21	Can add user employees	6	add_companyemployee
22	Can change user employees	6	change_companyemployee
23	Can delete user employees	6	delete_companyemployee
24	Can view user employees	6	view_companyemployee
25	Can add companyfinancialYear	7	add_companyfinancialyear
26	Can change companyfinancialYear	7	change_companyfinancialyear
27	Can delete companyfinancialYear	7	delete_companyfinancialyear
28	Can view companyfinancialYear	7	view_companyfinancialyear
29	Can add db_store	8	add_databasestore
30	Can change db_store	8	change_databasestore
31	Can delete db_store	8	delete_databasestore
32	Can view db_store	8	view_databasestore
33	Can add customer user	9	add_customeruser
34	Can change customer user	9	change_customeruser
35	Can delete customer user	9	delete_customeruser
36	Can view customer user	9	view_customeruser
37	Can add account Ledger	10	add_companyaccountledger
38	Can change account Ledger	10	change_companyaccountledger
39	Can delete account Ledger	10	delete_companyaccountledger
40	Can view account Ledger	10	view_companyaccountledger
41	Can add log entry	11	add_logentry
42	Can change log entry	11	change_logentry
43	Can delete log entry	11	delete_logentry
44	Can view log entry	11	view_logentry
45	Can add permission	12	add_permission
46	Can change permission	12	change_permission
47	Can delete permission	12	delete_permission
48	Can view permission	12	view_permission
49	Can add group	13	add_group
50	Can change group	13	change_group
51	Can delete group	13	delete_group
52	Can view group	13	view_group
53	Can add user	14	add_user
54	Can change user	14	change_user
55	Can delete user	14	delete_user
56	Can view user	14	view_user
57	Can add content type	15	add_contenttype
58	Can change content type	15	change_contenttype
59	Can delete content type	15	delete_contenttype
60	Can view content type	15	view_contenttype
61	Can add session	16	add_session
62	Can change session	16	change_session
63	Can delete session	16	delete_session
64	Can view session	16	view_session
65	Can add business	17	add_businesstype
66	Can change business	17	change_businesstype
67	Can delete business	17	delete_businesstype
68	Can view business	17	view_businesstype
69	Can add category	18	add_category
70	Can change category	18	change_category
71	Can delete category	18	delete_category
72	Can view category	18	view_category
73	Can add companySettings	19	add_companysettings
74	Can change companySettings	19	change_companysettings
75	Can delete companySettings	19	delete_companysettings
76	Can view companySettings	19	view_companysettings
77	Can add country	20	add_country
78	Can change country	20	change_country
79	Can delete country	20	delete_country
80	Can view country	20	view_country
81	Can add Customer	21	add_customer
82	Can change Customer	21	change_customer
83	Can delete Customer	21	delete_customer
84	Can view Customer	21	view_customer
85	Can add department	22	add_department
86	Can change department	22	change_department
87	Can delete department	22	delete_department
88	Can view department	22	view_department
89	Can add employees	23	add_employee
90	Can change employees	23	change_employee
91	Can delete employees	23	delete_employee
92	Can view employees	23	view_employee
93	Can add language	24	add_language
94	Can change language	24	change_language
95	Can delete language	24	delete_language
96	Can view language	24	view_language
97	Can add leave	25	add_leave
98	Can change leave	25	change_leave
99	Can delete leave	25	delete_leave
100	Can view leave	25	view_leave
101	Can add salary_component	26	add_salarycomponent
102	Can change salary_component	26	change_salarycomponent
103	Can delete salary_component	26	delete_salarycomponent
104	Can view salary_component	26	view_salarycomponent
105	Can add Software Version	27	add_softwareversion
106	Can change Software Version	27	change_softwareversion
107	Can delete Software Version	27	delete_softwareversion
108	Can view Software Version	27	view_softwareversion
109	Can add Software Version Log	28	add_softwareversionlog
110	Can change Software Version Log	28	change_softwareversionlog
111	Can delete Software Version Log	28	delete_softwareversionlog
112	Can view Software Version Log	28	view_softwareversionlog
113	Can add testForm	29	add_testformmodel
114	Can change testForm	29	change_testformmodel
115	Can delete testForm	29	delete_testformmodel
116	Can view testForm	29	view_testformmodel
117	Can add userType	30	add_usertype
118	Can change userType	30	change_usertype
119	Can delete userType	30	delete_usertype
120	Can view userType	30	view_usertype
121	Can add WorkOrderMasterLog	31	add_workordermaster_log
122	Can change WorkOrderMasterLog	31	change_workordermaster_log
123	Can delete WorkOrderMasterLog	31	delete_workordermaster_log
124	Can view WorkOrderMasterLog	31	view_workordermaster_log
125	Can add workOrderDetailLog	32	add_workorderdetails_log
126	Can change workOrderDetailLog	32	change_workorderdetails_log
127	Can delete workOrderDetailLog	32	delete_workorderdetails_log
128	Can view workOrderDetailLog	32	view_workorderdetails_log
129	Can add warehouseLog	33	add_warehouse_log
130	Can change warehouseLog	33	change_warehouse_log
131	Can delete warehouseLog	33	delete_warehouse_log
132	Can view warehouseLog	33	view_warehouse_log
133	Can add userTypeSettingsLog	34	add_usertypesettings_log
134	Can change userTypeSettingsLog	34	change_usertypesettings_log
135	Can delete userTypeSettingsLog	34	delete_usertypesettings_log
136	Can view userTypeSettingsLog	34	view_usertypesettings_log
137	Can add userTypeSettings	35	add_usertypesettings
138	Can change userTypeSettings	35	change_usertypesettings
139	Can delete userTypeSettings	35	delete_usertypesettings
140	Can view userTypeSettings	35	view_usertypesettings
141	Can add userTableLog	36	add_user_log
142	Can change userTableLog	36	change_user_log
143	Can delete userTableLog	36	delete_user_log
144	Can view userTableLog	36	view_user_log
145	Can add usedStockMaster_log	37	add_usedstockmaster_log
146	Can change usedStockMaster_log	37	change_usedstockmaster_log
147	Can delete usedStockMaster_log	37	delete_usedstockmaster_log
148	Can view usedStockMaster_log	37	view_usedstockmaster_log
149	Can add usedStockDetails_log	38	add_usedstockdetails_log
150	Can change usedStockDetails_log	38	change_usedstockdetails_log
151	Can delete usedStockDetails_log	38	delete_usedstockdetails_log
152	Can view usedStockDetails_log	38	view_usedstockdetails_log
153	Can add unitLog	39	add_unit_log
154	Can change unitLog	39	change_unit_log
155	Can delete unitLog	39	delete_unit_log
156	Can view unitLog	39	view_unit_log
157	Can add transactionTypeLog	40	add_transactiontypes_log
158	Can change transactionTypeLog	40	change_transactiontypes_log
159	Can delete transactionTypeLog	40	delete_transactiontypes_log
160	Can view transactionTypeLog	40	view_transactiontypes_log
161	Can add testImage	41	add_testimage
162	Can change testImage	41	change_testimage
163	Can delete testImage	41	delete_testimage
164	Can view testImage	41	view_testimage
165	Can add testFormSet	42	add_testformsetmodel
166	Can change testFormSet	42	change_testformsetmodel
167	Can delete testFormSet	42	delete_testformsetmodel
168	Can view testFormSet	42	view_testformsetmodel
169	Can add taxcategoryLog	43	add_taxcategory_log
170	Can change taxcategoryLog	43	change_taxcategory_log
171	Can delete taxcategoryLog	43	delete_taxcategory_log
172	Can view taxcategoryLog	43	view_taxcategory_log
173	Can add stockTransferMaster_IDLog	44	add_stocktransfermasterid_log
174	Can change stockTransferMaster_IDLog	44	change_stocktransfermasterid_log
175	Can delete stockTransferMaster_IDLog	44	delete_stocktransfermasterid_log
176	Can view stockTransferMaster_IDLog	44	view_stocktransfermasterid_log
177	Can add stockTransferDetailsDummy	45	add_stocktransferdetailsdummy
178	Can change stockTransferDetailsDummy	45	change_stocktransferdetailsdummy
179	Can delete stockTransferDetailsDummy	45	delete_stocktransferdetailsdummy
180	Can view stockTransferDetailsDummy	45	view_stocktransferdetailsdummy
181	Can add stockTransferDetailsLog	46	add_stocktransferdetails_log
182	Can change stockTransferDetailsLog	46	change_stocktransferdetails_log
183	Can delete stockTransferDetailsLog	46	delete_stocktransferdetails_log
184	Can view stockTransferDetailsLog	46	view_stocktransferdetails_log
185	Can add stockReceiptMasterIDLog	47	add_stockreceiptmasterid_log
186	Can change stockReceiptMasterIDLog	47	change_stockreceiptmasterid_log
187	Can delete stockReceiptMasterIDLog	47	delete_stockreceiptmasterid_log
188	Can view stockReceiptMasterIDLog	47	view_stockreceiptmasterid_log
189	Can add stockReceiptDetailsDummy	48	add_stockreceiptdetailsdummy
190	Can change stockReceiptDetailsDummy	48	change_stockreceiptdetailsdummy
191	Can delete stockReceiptDetailsDummy	48	delete_stockreceiptdetailsdummy
192	Can view stockReceiptDetailsDummy	48	view_stockreceiptdetailsdummy
193	Can add stockReceiptDetailsLog	49	add_stockreceiptdetails_log
194	Can change stockReceiptDetailsLog	49	change_stockreceiptdetails_log
195	Can delete stockReceiptDetailsLog	49	delete_stockreceiptdetails_log
196	Can view stockReceiptDetailsLog	49	view_stockreceiptdetails_log
197	Can add stockPosting_Log	50	add_stockposting_log
198	Can change stockPosting_Log	50	change_stockposting_log
199	Can delete stockPosting_Log	50	delete_stockposting_log
200	Can view stockPosting_Log	50	view_stockposting_log
201	Can add stockAdjustmentMasterLog	51	add_stockadjustmentmaster_log
202	Can change stockAdjustmentMasterLog	51	change_stockadjustmentmaster_log
203	Can delete stockAdjustmentMasterLog	51	delete_stockadjustmentmaster_log
204	Can view stockAdjustmentMasterLog	51	view_stockadjustmentmaster_log
205	Can add stockAdjustmentDetailsDummy	52	add_stockadjustmentdetailsdummy
206	Can change stockAdjustmentDetailsDummy	52	change_stockadjustmentdetailsdummy
207	Can delete stockAdjustmentDetailsDummy	52	delete_stockadjustmentdetailsdummy
208	Can view stockAdjustmentDetailsDummy	52	view_stockadjustmentdetailsdummy
209	Can add stockAdjustmentDetailsLog	53	add_stockadjustmentdetails_log
210	Can change stockAdjustmentDetailsLog	53	change_stockadjustmentdetails_log
211	Can delete stockAdjustmentDetailsLog	53	delete_stockadjustmentdetails_log
212	Can view stockAdjustmentDetailsLog	53	view_stockadjustmentdetails_log
213	Can add state	54	add_state
214	Can change state	54	change_state
215	Can delete state	54	delete_state
216	Can view state	54	view_state
217	Can add shortageStockMaster_log	55	add_shortagestockmaster_log
218	Can change shortageStockMaster_log	55	change_shortagestockmaster_log
219	Can delete shortageStockMaster_log	55	delete_shortagestockmaster_log
220	Can view shortageStockMaster_log	55	view_shortagestockmaster_log
221	Can add shortageStockDetails_log	56	add_shortagestockdetails_log
222	Can change shortageStockDetails_log	56	change_shortagestockdetails_log
223	Can delete shortageStockDetails_log	56	delete_shortagestockdetails_log
224	Can view shortageStockDetails_log	56	view_shortagestockdetails_log
225	Can add settingsLog	57	add_settings_log
226	Can change settingsLog	57	change_settings_log
227	Can delete settingsLog	57	delete_settings_log
228	Can view settingsLog	57	view_settings_log
229	Can add salesReturnMasterLog	58	add_salesreturnmaster_log
230	Can change salesReturnMasterLog	58	change_salesreturnmaster_log
231	Can delete salesReturnMasterLog	58	delete_salesreturnmaster_log
232	Can view salesReturnMasterLog	58	view_salesreturnmaster_log
233	Can add salesReturnDetailDummy	59	add_salesreturndetailsdummy
234	Can change salesReturnDetailDummy	59	change_salesreturndetailsdummy
235	Can delete salesReturnDetailDummy	59	delete_salesreturndetailsdummy
236	Can view salesReturnDetailDummy	59	view_salesreturndetailsdummy
237	Can add salesReturnDetailLog	60	add_salesreturndetails_log
238	Can change salesReturnDetailLog	60	change_salesreturndetails_log
239	Can delete salesReturnDetailLog	60	delete_salesreturndetails_log
240	Can view salesReturnDetailLog	60	view_salesreturndetails_log
241	Can add salesOrderMasterLog	61	add_salesordermaster_log
242	Can change salesOrderMasterLog	61	change_salesordermaster_log
243	Can delete salesOrderMasterLog	61	delete_salesordermaster_log
244	Can view salesOrderMasterLog	61	view_salesordermaster_log
245	Can add salesOrderDetailDummy	62	add_salesorderdetailsdummy
246	Can change salesOrderDetailDummy	62	change_salesorderdetailsdummy
247	Can delete salesOrderDetailDummy	62	delete_salesorderdetailsdummy
248	Can view salesOrderDetailDummy	62	view_salesorderdetailsdummy
249	Can add salesOrderDetailLog	63	add_salesorderdetails_log
250	Can change salesOrderDetailLog	63	change_salesorderdetails_log
251	Can delete salesOrderDetailLog	63	delete_salesorderdetails_log
252	Can view salesOrderDetailLog	63	view_salesorderdetails_log
253	Can add salesMasterLog	64	add_salesmaster_log
254	Can change salesMasterLog	64	change_salesmaster_log
255	Can delete salesMasterLog	64	delete_salesmaster_log
256	Can view salesMasterLog	64	view_salesmaster_log
257	Can add salesEstimateMasterLog	65	add_salesestimatemaster_log
258	Can change salesEstimateMasterLog	65	change_salesestimatemaster_log
259	Can delete salesEstimateMasterLog	65	delete_salesestimatemaster_log
260	Can view salesEstimateMasterLog	65	view_salesestimatemaster_log
261	Can add salesEstimateDetailLog	66	add_salesestimatedetails_log
262	Can change salesEstimateDetailLog	66	change_salesestimatedetails_log
263	Can delete salesEstimateDetailLog	66	delete_salesestimatedetails_log
264	Can view salesEstimateDetailLog	66	view_salesestimatedetails_log
265	Can add salesDetailDummy	67	add_salesdetailsdummy
266	Can change salesDetailDummy	67	change_salesdetailsdummy
267	Can delete salesDetailDummy	67	delete_salesdetailsdummy
268	Can view salesDetailDummy	67	view_salesdetailsdummy
269	Can add salesDetailLog	68	add_salesdetails_log
270	Can change salesDetailLog	68	change_salesdetails_log
271	Can delete salesDetailLog	68	delete_salesdetails_log
272	Can view salesDetailLog	68	view_salesdetails_log
273	Can add salary_kit_detail_log	69	add_salarykitdetails_log
274	Can change salary_kit_detail_log	69	change_salarykitdetails_log
275	Can delete salary_kit_detail_log	69	delete_salarykitdetails_log
276	Can view salary_kit_detail_log	69	view_salarykitdetails_log
277	Can add salary_kit_detail	70	add_salarykitdetails
278	Can change salary_kit_detail	70	change_salarykitdetails
279	Can delete salary_kit_detail	70	delete_salarykitdetails
280	Can view salary_kit_detail	70	view_salarykitdetails
281	Can add routeLog	71	add_route_log
282	Can change routeLog	71	change_route_log
283	Can delete routeLog	71	delete_route_log
284	Can view routeLog	71	view_route_log
285	Can add receiptMasterLogs	72	add_receiptmaster_log
286	Can change receiptMasterLogs	72	change_receiptmaster_log
287	Can delete receiptMasterLogs	72	delete_receiptmaster_log
288	Can view receiptMasterLogs	72	view_receiptmaster_log
289	Can add receiptDetailDummy	73	add_receiptdetailsdummy
290	Can change receiptDetailDummy	73	change_receiptdetailsdummy
291	Can delete receiptDetailDummy	73	delete_receiptdetailsdummy
292	Can view receiptDetailDummy	73	view_receiptdetailsdummy
293	Can add receiptDetailsLog	74	add_receiptdetails_log
294	Can change receiptDetailsLog	74	change_receiptdetails_log
295	Can delete receiptDetailsLog	74	delete_receiptdetails_log
296	Can view receiptDetailsLog	74	view_receiptdetails_log
297	Can add purchaseReturnMasterLog	75	add_purchasereturnmaster_log
298	Can change purchaseReturnMasterLog	75	change_purchasereturnmaster_log
299	Can delete purchaseReturnMasterLog	75	delete_purchasereturnmaster_log
300	Can view purchaseReturnMasterLog	75	view_purchasereturnmaster_log
301	Can add purchaseReturnDetailDummy	76	add_purchasereturndetailsdummy
302	Can change purchaseReturnDetailDummy	76	change_purchasereturndetailsdummy
303	Can delete purchaseReturnDetailDummy	76	delete_purchasereturndetailsdummy
304	Can view purchaseReturnDetailDummy	76	view_purchasereturndetailsdummy
305	Can add purchaseReturnDetailLog	77	add_purchasereturndetails_log
306	Can change purchaseReturnDetailLog	77	change_purchasereturndetails_log
307	Can delete purchaseReturnDetailLog	77	delete_purchasereturndetails_log
308	Can view purchaseReturnDetailLog	77	view_purchasereturndetails_log
309	Can add purchaseOrderMasterLog	78	add_purchaseordermaster_log
310	Can change purchaseOrderMasterLog	78	change_purchaseordermaster_log
311	Can delete purchaseOrderMasterLog	78	delete_purchaseordermaster_log
312	Can view purchaseOrderMasterLog	78	view_purchaseordermaster_log
313	Can add purchasesOrderDetailDummy	79	add_purchaseorderdetailsdummy
314	Can change purchasesOrderDetailDummy	79	change_purchaseorderdetailsdummy
315	Can delete purchasesOrderDetailDummy	79	delete_purchaseorderdetailsdummy
316	Can view purchasesOrderDetailDummy	79	view_purchaseorderdetailsdummy
317	Can add purchaseOrderDetailLog	80	add_purchaseorderdetails_log
318	Can change purchaseOrderDetailLog	80	change_purchaseorderdetails_log
319	Can delete purchaseOrderDetailLog	80	delete_purchaseorderdetails_log
320	Can view purchaseOrderDetailLog	80	view_purchaseorderdetails_log
321	Can add purchaseMasterLog	81	add_purchasemaster_log
322	Can change purchaseMasterLog	81	change_purchasemaster_log
323	Can delete purchaseMasterLog	81	delete_purchasemaster_log
324	Can view purchaseMasterLog	81	view_purchasemaster_log
325	Can add purchaseMaster	82	add_purchasemaster
326	Can change purchaseMaster	82	change_purchasemaster
327	Can delete purchaseMaster	82	delete_purchasemaster
328	Can view purchaseMaster	82	view_purchasemaster
329	Can add purchasesDetailDummy	83	add_purchasedetailsdummy
330	Can change purchasesDetailDummy	83	change_purchasedetailsdummy
331	Can delete purchasesDetailDummy	83	delete_purchasedetailsdummy
332	Can view purchasesDetailDummy	83	view_purchasedetailsdummy
333	Can add purchaseDetailsLog	84	add_purchasedetails_log
334	Can change purchaseDetailsLog	84	change_purchasedetails_log
335	Can delete purchaseDetailsLog	84	delete_purchasedetails_log
336	Can view purchaseDetailsLog	84	view_purchasedetails_log
337	Can add product upload	85	add_productupload
338	Can change product upload	85	change_productupload
339	Can delete product upload	85	delete_productupload
340	Can view product upload	85	view_productupload
341	Can add productgroupLog	86	add_productgroup_log
342	Can change productgroupLog	86	change_productgroup_log
343	Can delete productgroupLog	86	delete_productgroup_log
344	Can view productgroupLog	86	view_productgroup_log
345	Can add productcategoryLog	87	add_productcategory_log
346	Can change productcategoryLog	87	change_productcategory_log
347	Can delete productcategoryLog	87	delete_productcategory_log
348	Can view productcategoryLog	87	view_productcategory_log
349	Can add productLog	88	add_product_log
350	Can change productLog	88	change_product_log
351	Can delete productLog	88	delete_product_log
352	Can view productLog	88	view_product_log
353	Can add product	89	add_product
354	Can change product	89	change_product
355	Can delete product	89	delete_product
356	Can view product	89	view_product
357	Can add print_settings	90	add_printsettings
358	Can change print_settings	90	change_printsettings
359	Can delete print_settings	90	delete_printsettings
360	Can view print_settings	90	view_printsettings
361	Can add pricelistLog	91	add_pricelist_log
362	Can change pricelistLog	91	change_pricelist_log
363	Can delete pricelistLog	91	delete_pricelist_log
364	Can view pricelistLog	91	view_pricelist_log
365	Can add pricecategoryLog	92	add_pricecategory_log
366	Can change pricecategoryLog	92	change_pricecategory_log
367	Can delete pricecategoryLog	92	delete_pricecategory_log
368	Can view pricecategoryLog	92	view_pricecategory_log
369	Can add posholdMasterLog	93	add_posholdmaster_log
370	Can change posholdMasterLog	93	change_posholdmaster_log
371	Can delete posholdMasterLog	93	delete_posholdmaster_log
372	Can view posholdMasterLog	93	view_posholdmaster_log
373	Can add posHoldDetailDummy	94	add_posholddetailsdummy
374	Can change posHoldDetailDummy	94	change_posholddetailsdummy
375	Can delete posHoldDetailDummy	94	delete_posholddetailsdummy
376	Can view posHoldDetailDummy	94	view_posholddetailsdummy
377	Can add posholdDetailsLog	95	add_posholddetails_log
378	Can change posholdDetailsLog	95	change_posholddetails_log
379	Can delete posholdDetailsLog	95	delete_posholddetails_log
380	Can view posholdDetailsLog	95	view_posholddetails_log
381	Can add paymentMasterLog	96	add_paymentmaster_log
382	Can change paymentMasterLog	96	change_paymentmaster_log
383	Can delete paymentMasterLog	96	delete_paymentmaster_log
384	Can view paymentMasterLog	96	view_paymentmaster_log
385	Can add paymentDetailDummy	97	add_paymentdetailsdummy
386	Can change paymentDetailDummy	97	change_paymentdetailsdummy
387	Can delete paymentDetailDummy	97	delete_paymentdetailsdummy
388	Can view paymentDetailDummy	97	view_paymentdetailsdummy
389	Can add paymentDetailLog	98	add_paymentdetails_log
390	Can change paymentDetailLog	98	change_paymentdetails_log
391	Can delete paymentDetailLog	98	delete_paymentdetails_log
392	Can view paymentDetailLog	98	view_paymentdetails_log
393	Can add partiesLog	99	add_parties_log
394	Can change partiesLog	99	change_parties_log
395	Can delete partiesLog	99	delete_parties_log
396	Can view partiesLog	99	view_parties_log
397	Can add openingStockMasterLog	100	add_openingstockmaster_log
398	Can change openingStockMasterLog	100	change_openingstockmaster_log
399	Can delete openingStockMasterLog	100	delete_openingstockmaster_log
400	Can view openingStockMasterLog	100	view_openingstockmaster_log
401	Can add openingStockDetailDummy	101	add_openingstockdetailsdummy
402	Can change openingStockDetailDummy	101	change_openingstockdetailsdummy
403	Can delete openingStockDetailDummy	101	delete_openingstockdetailsdummy
404	Can view openingStockDetailDummy	101	view_openingstockdetailsdummy
405	Can add openingStockDetailsLog	102	add_openingstockdetails_log
406	Can change openingStockDetailsLog	102	change_openingstockdetails_log
407	Can delete openingStockDetailsLog	102	delete_openingstockdetails_log
408	Can view openingStockDetailsLog	102	view_openingstockdetails_log
409	Can add mastertypeLog	103	add_mastertype_log
410	Can change mastertypeLog	103	change_mastertype_log
411	Can delete mastertypeLog	103	delete_mastertype_log
412	Can view mastertypeLog	103	view_mastertype_log
413	Can add logged in user	104	add_loggedinuser
414	Can change logged in user	104	change_loggedinuser
415	Can delete logged in user	104	delete_loggedinuser
416	Can view logged in user	104	view_loggedinuser
417	Can add ledgerPostingLog	105	add_ledgerposting_log
418	Can change ledgerPostingLog	105	change_ledgerposting_log
419	Can delete ledgerPostingLog	105	delete_ledgerposting_log
420	Can view ledgerPostingLog	105	view_ledgerposting_log
421	Can add leave_type	106	add_leavetype
422	Can change leave_type	106	change_leavetype
423	Can delete leave_type	106	delete_leavetype
424	Can view leave_type	106	view_leavetype
425	Can add kitchenLog	107	add_kitchen_log
426	Can change kitchenLog	107	change_kitchen_log
427	Can delete kitchenLog	107	delete_kitchen_log
428	Can view kitchenLog	107	view_kitchen_log
429	Can add journalMasterLog	108	add_journalmaster_log
430	Can change journalMasterLog	108	change_journalmaster_log
431	Can delete journalMasterLog	108	delete_journalmaster_log
432	Can view journalMasterLog	108	view_journalmaster_log
433	Can add journalDetailsDummy	109	add_journaldetailsdummy
434	Can change journalDetailsDummy	109	change_journaldetailsdummy
435	Can delete journalDetailsDummy	109	delete_journaldetailsdummy
436	Can view journalDetailsDummy	109	view_journaldetailsdummy
437	Can add journalDetailLog	110	add_journaldetails_log
438	Can change journalDetailLog	110	change_journaldetails_log
439	Can delete journalDetailLog	110	delete_journaldetails_log
440	Can view journalDetailLog	110	view_journaldetails_log
441	Can add generalSettings	111	add_generalsettings_log
442	Can change generalSettings	111	change_generalsettings_log
443	Can delete generalSettings	111	delete_generalsettings_log
444	Can view generalSettings	111	view_generalsettings_log
445	Can add generalSettings	112	add_generalsettings
446	Can change generalSettings	112	change_generalsettings
447	Can delete generalSettings	112	delete_generalsettings
448	Can view generalSettings	112	view_generalsettings
449	Can add flavourLog	113	add_flavours_log
450	Can change flavourLog	113	change_flavours_log
451	Can delete flavourLog	113	delete_flavours_log
452	Can view flavourLog	113	view_flavours_log
453	Can add financialYearLog	114	add_financialyear_log
454	Can change financialYearLog	114	change_financialyear_log
455	Can delete financialYearLog	114	delete_financialyear_log
456	Can view financialYearLog	114	view_financialyear_log
457	Can add financialYear	115	add_financialyear
458	Can change financialYear	115	change_financialyear
459	Can delete financialYear	115	delete_financialyear
460	Can view financialYear	115	view_financialyear
461	Can add excessStockMaster_log	116	add_excessstockmaster_log
462	Can change excessStockMaster_log	116	change_excessstockmaster_log
463	Can delete excessStockMaster_log	116	delete_excessstockmaster_log
464	Can view excessStockMaster_log	116	view_excessstockmaster_log
465	Can add excessStockDetails_log	117	add_excessstockdetails_log
466	Can change excessStockDetails_log	117	change_excessstockdetails_log
467	Can delete excessStockDetails_log	117	delete_excessstockdetails_log
468	Can view excessStockDetails_log	117	view_excessstockdetails_log
469	Can add employeesLog	118	add_employee_log
470	Can change employeesLog	118	change_employee_log
471	Can delete employeesLog	118	delete_employee_log
472	Can view employeesLog	118	view_employee_log
473	Can add designationLogs	119	add_designation_log
474	Can change designationLogs	119	change_designation_log
475	Can delete designationLogs	119	delete_designation_log
476	Can view designationLogs	119	view_designation_log
477	Can add departmentLogs	120	add_department_log
478	Can change departmentLogs	120	change_department_log
479	Can delete departmentLogs	120	delete_department_log
480	Can view departmentLogs	120	view_department_log
481	Can add damageStockMaster_log	121	add_damagestockmaster_log
482	Can change damageStockMaster_log	121	change_damagestockmaster_log
483	Can delete damageStockMaster_log	121	delete_damagestockmaster_log
484	Can view damageStockMaster_log	121	view_damagestockmaster_log
485	Can add damageStockDetailDummy	122	add_damagestockdetailsdummy
486	Can change damageStockDetailDummy	122	change_damagestockdetailsdummy
487	Can delete damageStockDetailDummy	122	delete_damagestockdetailsdummy
488	Can view damageStockDetailDummy	122	view_damagestockdetailsdummy
489	Can add damageStockDetails_log	123	add_damagestockdetails_log
490	Can change damageStockDetails_log	123	change_damagestockdetails_log
491	Can delete damageStockDetails_log	123	delete_damagestockdetails_log
492	Can view damageStockDetails_log	123	view_damagestockdetails_log
493	Can add companySettingsLog	124	add_companysettings_log
494	Can change companySettingsLog	124	change_companysettings_log
495	Can delete companySettingsLog	124	delete_companysettings_log
496	Can view companySettingsLog	124	view_companysettings_log
497	Can add colorLog	125	add_color_log
498	Can change colorLog	125	change_color_log
499	Can delete colorLog	125	delete_color_log
500	Can view colorLog	125	view_color_log
501	Can add color	126	add_color
502	Can change color	126	change_color
503	Can delete color	126	delete_color
504	Can view color	126	view_color
505	Can add brandLog	127	add_brand_log
506	Can change brandLog	127	change_brand_log
507	Can delete brandLog	127	delete_brand_log
508	Can view brandLog	127	view_brand_log
509	Can add branchLog	128	add_branch_log
510	Can change branchLog	128	change_branch_log
511	Can delete branchLog	128	delete_branch_log
512	Can view branchLog	128	view_branch_log
513	Can add branch	129	add_branch
514	Can change branch	129	change_branch
515	Can delete branch	129	delete_branch
516	Can view branch	129	view_branch
517	Can add barcode_settings	130	add_barcodesettings
518	Can change barcode_settings	130	change_barcodesettings
519	Can delete barcode_settings	130	delete_barcodesettings
520	Can view barcode_settings	130	view_barcodesettings
521	Can add BankLog	131	add_bank_log
522	Can change BankLog	131	change_bank_log
523	Can delete BankLog	131	delete_bank_log
524	Can view BankLog	131	view_bank_log
525	Can add attendance_master	132	add_attendancemaster
526	Can change attendance_master	132	change_attendancemaster
527	Can delete attendance_master	132	delete_attendancemaster
528	Can view attendance_master	132	view_attendancemaster
529	Can add Activity Log	133	add_activity_log
530	Can change Activity Log	133	change_activity_log
531	Can delete Activity Log	133	delete_activity_log
532	Can view Activity Log	133	view_activity_log
533	Can add accountLedgerLog	134	add_accountledger_log
534	Can change accountLedgerLog	134	change_accountledger_log
535	Can delete accountLedgerLog	134	delete_accountledger_log
536	Can view accountLedgerLog	134	view_accountledger_log
537	Can add accountgroupLog	135	add_accountgroup_log
538	Can change accountgroupLog	135	change_accountgroup_log
539	Can delete accountgroupLog	135	delete_accountgroup_log
540	Can view accountgroupLog	135	view_accountgroup_log
541	Can add accountgroup	136	add_accountgroup
542	Can change accountgroup	136	change_accountgroup
543	Can delete accountgroup	136	delete_accountgroup
544	Can view accountgroup	136	view_accountgroup
545	Can add WorkOrderMaster	137	add_workordermaster
546	Can change WorkOrderMaster	137	change_workordermaster
547	Can delete WorkOrderMaster	137	delete_workordermaster
548	Can view WorkOrderMaster	137	view_workordermaster
549	Can add workOrderDetail	138	add_workorderdetails
550	Can change workOrderDetail	138	change_workorderdetails
551	Can delete workOrderDetail	138	delete_workorderdetails
552	Can view workOrderDetail	138	view_workorderdetails
553	Can add working time log	139	add_workingtimelog
554	Can change working time log	139	change_workingtimelog
555	Can delete working time log	139	delete_workingtimelog
556	Can view working time log	139	view_workingtimelog
557	Can add working time	140	add_workingtime
558	Can change working time	140	change_workingtime
559	Can delete working time	140	delete_workingtime
560	Can view working time	140	view_workingtime
561	Can add warehouse	141	add_warehouse
562	Can change warehouse	141	change_warehouse
563	Can delete warehouse	141	delete_warehouse
564	Can view warehouse	141	view_warehouse
565	Can add userTypeLog	142	add_usertypelog
566	Can change userTypeLog	142	change_usertypelog
567	Can delete userTypeLog	142	delete_usertypelog
568	Can view userTypeLog	142	view_usertypelog
569	Can add userTable	143	add_usertable
570	Can change userTable	143	change_usertable
571	Can delete userTable	143	delete_usertable
572	Can view userTable	143	view_usertable
573	Can add usedStockMaster	144	add_usedstockmaster
574	Can change usedStockMaster	144	change_usedstockmaster
575	Can delete usedStockMaster	144	delete_usedstockmaster
576	Can view usedStockMaster	144	view_usedstockmaster
577	Can add usedStockDetails	145	add_usedstockdetails
578	Can change usedStockDetails	145	change_usedstockdetails
579	Can delete usedStockDetails	145	delete_usedstockdetails
580	Can view usedStockDetails	145	view_usedstockdetails
581	Can add unit	146	add_unit
582	Can change unit	146	change_unit
583	Can delete unit	146	delete_unit
584	Can view unit	146	view_unit
585	Can add transactionType	147	add_transactiontypes
586	Can change transactionType	147	change_transactiontypes
587	Can delete transactionType	147	delete_transactiontypes
588	Can view transactionType	147	view_transactiontypes
589	Can add taxType	148	add_taxtype
590	Can change taxType	148	change_taxtype
591	Can delete taxType	148	delete_taxtype
592	Can view taxType	148	view_taxtype
593	Can add taxcategory	149	add_taxcategory
594	Can change taxcategory	149	change_taxcategory
595	Can delete taxcategory	149	delete_taxcategory
596	Can view taxcategory	149	view_taxcategory
597	Can add stockTransferMaster_ID	150	add_stocktransfermaster_id
598	Can change stockTransferMaster_ID	150	change_stocktransfermaster_id
599	Can delete stockTransferMaster_ID	150	delete_stocktransfermaster_id
600	Can view stockTransferMaster_ID	150	view_stocktransfermaster_id
601	Can add stockTransferDetails	151	add_stocktransferdetails
602	Can change stockTransferDetails	151	change_stocktransferdetails
603	Can delete stockTransferDetails	151	delete_stocktransferdetails
604	Can view stockTransferDetails	151	view_stocktransferdetails
605	Can add stockTrans	152	add_stocktrans
606	Can change stockTrans	152	change_stocktrans
607	Can delete stockTrans	152	delete_stocktrans
608	Can view stockTrans	152	view_stocktrans
609	Can add stockReceiptMasterID	153	add_stockreceiptmaster_id
610	Can change stockReceiptMasterID	153	change_stockreceiptmaster_id
611	Can delete stockReceiptMasterID	153	delete_stockreceiptmaster_id
612	Can view stockReceiptMasterID	153	view_stockreceiptmaster_id
613	Can add stockReceiptDetails	154	add_stockreceiptdetails
614	Can change stockReceiptDetails	154	change_stockreceiptdetails
615	Can delete stockReceiptDetails	154	delete_stockreceiptdetails
616	Can view stockReceiptDetails	154	view_stockreceiptdetails
617	Can add stockRate	155	add_stockrate
618	Can change stockRate	155	change_stockrate
619	Can delete stockRate	155	delete_stockrate
620	Can view stockRate	155	view_stockrate
621	Can add stockPosting	156	add_stockposting
622	Can change stockPosting	156	change_stockposting
623	Can delete stockPosting	156	delete_stockposting
624	Can view stockPosting	156	view_stockposting
625	Can add stockAdjustmentMaster	157	add_stockadjustmentmaster
626	Can change stockAdjustmentMaster	157	change_stockadjustmentmaster
627	Can delete stockAdjustmentMaster	157	delete_stockadjustmentmaster
628	Can view stockAdjustmentMaster	157	view_stockadjustmentmaster
629	Can add stockAdjustmentDetails	158	add_stockadjustmentdetails
630	Can change stockAdjustmentDetails	158	change_stockadjustmentdetails
631	Can delete stockAdjustmentDetails	158	delete_stockadjustmentdetails
632	Can view stockAdjustmentDetails	158	view_stockadjustmentdetails
633	Can add shortageStockMaster	159	add_shortagestockmaster
634	Can change shortageStockMaster	159	change_shortagestockmaster
635	Can delete shortageStockMaster	159	delete_shortagestockmaster
636	Can view shortageStockMaster	159	view_shortagestockmaster
637	Can add shortageStockDetails	160	add_shortagestockdetails
638	Can change shortageStockDetails	160	change_shortagestockdetails
639	Can delete shortageStockDetails	160	delete_shortagestockdetails
640	Can view shortageStockDetails	160	view_shortagestockdetails
641	Can add settings	161	add_settings
642	Can change settings	161	change_settings
643	Can delete settings	161	delete_settings
644	Can view settings	161	view_settings
645	Can add salesReturnMaster	162	add_salesreturnmaster
646	Can change salesReturnMaster	162	change_salesreturnmaster
647	Can delete salesReturnMaster	162	delete_salesreturnmaster
648	Can view salesReturnMaster	162	view_salesreturnmaster
649	Can add salesReturnDetail	163	add_salesreturndetails
650	Can change salesReturnDetail	163	change_salesreturndetails
651	Can delete salesReturnDetail	163	delete_salesreturndetails
652	Can view salesReturnDetail	163	view_salesreturndetails
653	Can add salesOrderMaster	164	add_salesordermaster
654	Can change salesOrderMaster	164	change_salesordermaster
655	Can delete salesOrderMaster	164	delete_salesordermaster
656	Can view salesOrderMaster	164	view_salesordermaster
657	Can add salesOrderDetail	165	add_salesorderdetails
658	Can change salesOrderDetail	165	change_salesorderdetails
659	Can delete salesOrderDetail	165	delete_salesorderdetails
660	Can view salesOrderDetail	165	view_salesorderdetails
661	Can add salesMaster	166	add_salesmaster
662	Can change salesMaster	166	change_salesmaster
663	Can delete salesMaster	166	delete_salesmaster
664	Can view salesMaster	166	view_salesmaster
665	Can add salesEstimateMaster	167	add_salesestimatemaster
666	Can change salesEstimateMaster	167	change_salesestimatemaster
667	Can delete salesEstimateMaster	167	delete_salesestimatemaster
668	Can view salesEstimateMaster	167	view_salesestimatemaster
669	Can add salesEstimateDetail	168	add_salesestimatedetails
670	Can change salesEstimateDetail	168	change_salesestimatedetails
671	Can delete salesEstimateDetail	168	delete_salesestimatedetails
672	Can view salesEstimateDetail	168	view_salesestimatedetails
673	Can add salesDetail	169	add_salesdetails
674	Can change salesDetail	169	change_salesdetails
675	Can delete salesDetail	169	delete_salesdetails
676	Can view salesDetail	169	view_salesdetails
677	Can add salary_period_log	170	add_salaryperiod_log
678	Can change salary_period_log	170	change_salaryperiod_log
679	Can delete salary_period_log	170	delete_salaryperiod_log
680	Can view salary_period_log	170	view_salaryperiod_log
681	Can add salary_period	171	add_salaryperiod
682	Can change salary_period	171	change_salaryperiod
683	Can delete salary_period	171	delete_salaryperiod
684	Can view salary_period	171	view_salaryperiod
685	Can add salary_kit_log	172	add_salarykit_log
686	Can change salary_kit_log	172	change_salarykit_log
687	Can delete salary_kit_log	172	delete_salarykit_log
688	Can view salary_kit_log	172	view_salarykit_log
689	Can add salary_kit	173	add_salarykit
690	Can change salary_kit	173	change_salarykit
691	Can delete salary_kit	173	delete_salarykit
692	Can view salary_kit	173	view_salarykit
693	Can add salary_component_log	174	add_salarycomponent_log
694	Can change salary_component_log	174	change_salarycomponent_log
695	Can delete salary_component_log	174	delete_salarycomponent_log
696	Can view salary_component_log	174	view_salarycomponent_log
697	Can add route	175	add_route
698	Can change route	175	change_route
699	Can delete route	175	delete_route
700	Can view route	175	view_route
701	Can add receiptMaster	176	add_receiptmaster
702	Can change receiptMaster	176	change_receiptmaster
703	Can delete receiptMaster	176	delete_receiptmaster
704	Can view receiptMaster	176	view_receiptmaster
705	Can add receiptDetails	177	add_receiptdetails
706	Can change receiptDetails	177	change_receiptdetails
707	Can delete receiptDetails	177	delete_receiptdetails
708	Can view receiptDetails	177	view_receiptdetails
709	Can add purchaseReturnMaster	178	add_purchasereturnmaster
710	Can change purchaseReturnMaster	178	change_purchasereturnmaster
711	Can delete purchaseReturnMaster	178	delete_purchasereturnmaster
712	Can view purchaseReturnMaster	178	view_purchasereturnmaster
713	Can add purchaseReturnDetail	179	add_purchasereturndetails
714	Can change purchaseReturnDetail	179	change_purchasereturndetails
715	Can delete purchaseReturnDetail	179	delete_purchasereturndetails
716	Can view purchaseReturnDetail	179	view_purchasereturndetails
717	Can add purchaseOrderMaster	180	add_purchaseordermaster
718	Can change purchaseOrderMaster	180	change_purchaseordermaster
719	Can delete purchaseOrderMaster	180	delete_purchaseordermaster
720	Can view purchaseOrderMaster	180	view_purchaseordermaster
721	Can add purchaseOrderDetail	181	add_purchaseorderdetails
722	Can change purchaseOrderDetail	181	change_purchaseorderdetails
723	Can delete purchaseOrderDetail	181	delete_purchaseorderdetails
724	Can view purchaseOrderDetail	181	view_purchaseorderdetails
725	Can add purchaseDetails	182	add_purchasedetails
726	Can change purchaseDetails	182	change_purchasedetails
727	Can delete purchaseDetails	182	delete_purchasedetails
728	Can view purchaseDetails	182	view_purchasedetails
729	Can add productgroup	183	add_productgroup
730	Can change productgroup	183	change_productgroup
731	Can delete productgroup	183	delete_productgroup
732	Can view productgroup	183	view_productgroup
733	Can add productcategory	184	add_productcategory
734	Can change productcategory	184	change_productcategory
735	Can delete productcategory	184	delete_productcategory
736	Can view productcategory	184	view_productcategory
737	Can add pricelist	185	add_pricelist
738	Can change pricelist	185	change_pricelist
739	Can delete pricelist	185	delete_pricelist
740	Can view pricelist	185	view_pricelist
741	Can add pricecategory	186	add_pricecategory
742	Can change pricecategory	186	change_pricecategory
743	Can delete pricecategory	186	delete_pricecategory
744	Can view pricecategory	186	view_pricecategory
745	Can add posholdMaster	187	add_posholdmaster
746	Can change posholdMaster	187	change_posholdmaster
747	Can delete posholdMaster	187	delete_posholdmaster
748	Can view posholdMaster	187	view_posholdmaster
749	Can add posholdDetails	188	add_posholddetails
750	Can change posholdDetails	188	change_posholddetails
751	Can delete posholdDetails	188	delete_posholddetails
752	Can view posholdDetails	188	view_posholddetails
753	Can add paymentMaster	189	add_paymentmaster
754	Can change paymentMaster	189	change_paymentmaster
755	Can delete paymentMaster	189	delete_paymentmaster
756	Can view paymentMaster	189	view_paymentmaster
757	Can add paymentDetail	190	add_paymentdetails
758	Can change paymentDetail	190	change_paymentdetails
759	Can delete paymentDetail	190	delete_paymentdetails
760	Can view paymentDetail	190	view_paymentdetails
761	Can add parties	191	add_parties
762	Can change parties	191	change_parties
763	Can delete parties	191	delete_parties
764	Can view parties	191	view_parties
765	Can add openingStockMaster	192	add_openingstockmaster
766	Can change openingStockMaster	192	change_openingstockmaster
767	Can delete openingStockMaster	192	delete_openingstockmaster
768	Can view openingStockMaster	192	view_openingstockmaster
769	Can add openingStockDetails	193	add_openingstockdetails
770	Can change openingStockDetails	193	change_openingstockdetails
771	Can delete openingStockDetails	193	delete_openingstockdetails
772	Can view openingStockDetails	193	view_openingstockdetails
773	Can add mastertype	194	add_mastertype
774	Can change mastertype	194	change_mastertype
775	Can delete mastertype	194	delete_mastertype
776	Can view mastertype	194	view_mastertype
777	Can add ledgerPosting	195	add_ledgerposting
778	Can change ledgerPosting	195	change_ledgerposting
779	Can delete ledgerPosting	195	delete_ledgerposting
780	Can view ledgerPosting	195	view_ledgerposting
781	Can add leave_type_log	196	add_leavetype_log
782	Can change leave_type_log	196	change_leavetype_log
783	Can delete leave_type_log	196	delete_leavetype_log
784	Can view leave_type_log	196	view_leavetype_log
785	Can add leave_detail_log	197	add_leavedetails_log
786	Can change leave_detail_log	197	change_leavedetails_log
787	Can delete leave_detail_log	197	delete_leavedetails_log
788	Can view leave_detail_log	197	view_leavedetails_log
789	Can add leave_detail	198	add_leavedetails
790	Can change leave_detail	198	change_leavedetails
791	Can delete leave_detail	198	delete_leavedetails
792	Can view leave_detail	198	view_leavedetails
793	Can add leave_log	199	add_leave_log
794	Can change leave_log	199	change_leave_log
795	Can delete leave_log	199	delete_leave_log
796	Can view leave_log	199	view_leave_log
797	Can add kitchen	200	add_kitchen
798	Can change kitchen	200	change_kitchen
799	Can delete kitchen	200	delete_kitchen
800	Can view kitchen	200	view_kitchen
801	Can add journalMaster	201	add_journalmaster
802	Can change journalMaster	201	change_journalmaster
803	Can delete journalMaster	201	delete_journalmaster
804	Can view journalMaster	201	view_journalmaster
805	Can add journalDetail	202	add_journaldetails
806	Can change journalDetail	202	change_journaldetails
807	Can delete journalDetail	202	delete_journaldetails
808	Can view journalDetail	202	view_journaldetails
809	Can add holiday_log	203	add_holiday_log
810	Can change holiday_log	203	change_holiday_log
811	Can delete holiday_log	203	delete_holiday_log
812	Can view holiday_log	203	view_holiday_log
813	Can add holiday	204	add_holiday
814	Can change holiday	204	change_holiday
815	Can delete holiday	204	delete_holiday
816	Can view holiday	204	view_holiday
817	Can add flavour	205	add_flavours
818	Can change flavour	205	change_flavours
819	Can delete flavour	205	delete_flavours
820	Can view flavour	205	view_flavours
821	Can add excessStockMaster	206	add_excessstockmaster
822	Can change excessStockMaster	206	change_excessstockmaster
823	Can delete excessStockMaster	206	delete_excessstockmaster
824	Can view excessStockMaster	206	view_excessstockmaster
825	Can add excessStockDetails	207	add_excessstockdetails
826	Can change excessStockDetails	207	change_excessstockdetails
827	Can delete excessStockDetails	207	delete_excessstockdetails
828	Can view excessStockDetails	207	view_excessstockdetails
829	Can add designation	208	add_designation
830	Can change designation	208	change_designation
831	Can delete designation	208	delete_designation
832	Can view designation	208	view_designation
833	Can add database sync	209	add_databasesynctest
834	Can change database sync	209	change_databasesynctest
835	Can delete database sync	209	delete_databasesynctest
836	Can view database sync	209	view_databasesynctest
837	Can add damageStockMaster	210	add_damagestockmaster
838	Can change damageStockMaster	210	change_damagestockmaster
839	Can delete damageStockMaster	210	delete_damagestockmaster
840	Can view damageStockMaster	210	view_damagestockmaster
841	Can add damageStockDetails	211	add_damagestockdetails
842	Can change damageStockDetails	211	change_damagestockdetails
843	Can delete damageStockDetails	211	delete_damagestockdetails
844	Can view damageStockDetails	211	view_damagestockdetails
845	Can add category log	212	add_categorylog
846	Can change category log	212	change_categorylog
847	Can delete category log	212	delete_categorylog
848	Can view category log	212	view_categorylog
849	Can add brand	213	add_brand
850	Can change brand	213	change_brand
851	Can delete brand	213	delete_brand
852	Can view brand	213	view_brand
853	Can add batch	214	add_batch
854	Can change batch	214	change_batch
855	Can delete batch	214	delete_batch
856	Can view batch	214	view_batch
857	Can add Bank	215	add_bank
858	Can change Bank	215	change_bank
859	Can delete Bank	215	delete_bank
860	Can view Bank	215	view_bank
861	Can add attendance_master_log	216	add_attendancemaster_log
862	Can change attendance_master_log	216	change_attendancemaster_log
863	Can delete attendance_master_log	216	delete_attendancemaster_log
864	Can view attendance_master_log	216	view_attendancemaster_log
865	Can add attendance_detail_log	217	add_attendancedetail_log
866	Can change attendance_detail_log	217	change_attendancedetail_log
867	Can delete attendance_detail_log	217	delete_attendancedetail_log
868	Can view attendance_detail_log	217	view_attendancedetail_log
869	Can add attendance_detail	218	add_attendancedetail
870	Can change attendance_detail	218	change_attendancedetail
871	Can delete attendance_detail	218	delete_attendancedetail
872	Can view attendance_detail	218	view_attendancedetail
873	Can add accountLedger	219	add_accountledger
874	Can change accountLedger	219	change_accountledger
875	Can delete accountLedger	219	delete_accountledger
876	Can view accountLedger	219	view_accountledger
877	Can add theme settings	220	add_themesettings
878	Can change theme settings	220	change_themesettings
879	Can delete theme settings	220	delete_themesettings
880	Can view theme settings	220	view_themesettings
881	Can add taskForm	221	add_taskformreact
882	Can change taskForm	221	change_taskformreact
883	Can delete taskForm	221	delete_taskformreact
884	Can view taskForm	221	view_taskformreact
885	Can add taskFormSet	222	add_taskformsetreact
886	Can change taskFormSet	222	change_taskformsetreact
887	Can delete taskFormSet	222	delete_taskformsetreact
888	Can view taskFormSet	222	view_taskformsetreact
889	Can add serailNos	223	add_serialnumbers
890	Can change serailNos	223	change_serialnumbers
891	Can delete serailNos	223	delete_serialnumbers
892	Can view serailNos	223	view_serialnumbers
893	Can add loyality_customer_log	224	add_loyaltycustomer_log
894	Can change loyality_customer_log	224	change_loyaltycustomer_log
895	Can delete loyality_customer_log	224	delete_loyaltycustomer_log
896	Can view loyality_customer_log	224	view_loyaltycustomer_log
897	Can add loan_type	225	add_loantype
898	Can change loan_type	225	change_loantype
899	Can delete loan_type	225	delete_loantype
900	Can view loan_type	225	view_loantype
901	Can add relieve_request_log	226	add_relieverequest_log
902	Can change relieve_request_log	226	change_relieverequest_log
903	Can delete relieve_request_log	226	delete_relieverequest_log
904	Can view relieve_request_log	226	view_relieverequest_log
905	Can add relieve_request	227	add_relieverequest
906	Can change relieve_request	227	change_relieverequest
907	Can delete relieve_request	227	delete_relieverequest
908	Can view relieve_request	227	view_relieverequest
909	Can add loyality_program_log	228	add_loyaltyprogram_log
910	Can change loyality_program_log	228	change_loyaltyprogram_log
911	Can delete loyality_program_log	228	delete_loyaltyprogram_log
912	Can view loyality_program_log	228	view_loyaltyprogram_log
913	Can add loyality_program	229	add_loyaltyprogram
914	Can change loyality_program	229	change_loyaltyprogram
915	Can delete loyality_program	229	delete_loyaltyprogram
916	Can view loyality_program	229	view_loyaltyprogram
917	Can add loyality_customer	230	add_loyaltycustomer
918	Can change loyality_customer	230	change_loyaltycustomer
919	Can delete loyality_customer	230	delete_loyaltycustomer
920	Can view loyality_customer	230	view_loyaltycustomer
921	Can add loan_type_log	231	add_loantype_log
922	Can change loan_type_log	231	change_loantype_log
923	Can delete loan_type_log	231	delete_loantype_log
924	Can view loan_type_log	231	view_loantype_log
925	Can add loan_request_log	232	add_loanrequest_log
926	Can change loan_request_log	232	change_loanrequest_log
927	Can delete loan_request_log	232	delete_loanrequest_log
928	Can view loan_request_log	232	view_loanrequest_log
929	Can add loan_request	233	add_loanrequest
930	Can change loan_request	233	change_loanrequest
931	Can delete loan_request	233	delete_loanrequest
932	Can view loan_request	233	view_loanrequest
933	Can add leave_request_log	234	add_leaverequest_log
934	Can change leave_request_log	234	change_leaverequest_log
935	Can delete leave_request_log	234	delete_leaverequest_log
936	Can view leave_request_log	234	view_leaverequest_log
937	Can add leave_request	235	add_leaverequest
938	Can change leave_request	235	change_leaverequest
939	Can delete leave_request	235	delete_leaverequest
940	Can view leave_request	235	view_leaverequest
941	Can add advance_request_log	236	add_advancerequest_log
942	Can change advance_request_log	236	change_advancerequest_log
943	Can delete advance_request_log	236	delete_advancerequest_log
944	Can view advance_request_log	236	view_advancerequest_log
945	Can add advance_request	237	add_advancerequest
946	Can change advance_request	237	change_advancerequest
947	Can delete advance_request	237	delete_advancerequest
948	Can view advance_request	237	view_advancerequest
949	Can add loyalty_point_log	238	add_loyaltypoint_log
950	Can change loyalty_point_log	238	change_loyaltypoint_log
951	Can delete loyalty_point_log	238	delete_loyaltypoint_log
952	Can view loyalty_point_log	238	view_loyaltypoint_log
953	Can add loyalty_point	239	add_loyaltypoint
954	Can change loyalty_point	239	change_loyaltypoint
955	Can delete loyalty_point	239	delete_loyaltypoint
956	Can view loyalty_point	239	view_loyaltypoint
957	Can add product_barcode	240	add_productbarcode
958	Can change product_barcode	240	change_productbarcode
959	Can delete product_barcode	240	delete_productbarcode
960	Can view product_barcode	240	view_productbarcode
961	Can add product_barcode_Log	241	add_productbarcode_log
962	Can change product_barcode_Log	241	change_productbarcode_log
963	Can delete product_barcode_Log	241	delete_productbarcode_log
964	Can view product_barcode_Log	241	view_productbarcode_log
965	Can add product_demo	242	add_productdemo
966	Can change product_demo	242	change_productdemo
967	Can delete product_demo	242	delete_productdemo
968	Can view product_demo	242	view_productdemo
969	Can add website_qrcode	243	add_qrcode
970	Can change website_qrcode	243	change_qrcode
971	Can delete website_qrcode	243	delete_qrcode
972	Can view website_qrcode	243	view_qrcode
973	Can add edition	244	add_edition
974	Can change edition	244	change_edition
975	Can delete edition	244	delete_edition
976	Can view edition	244	view_edition
977	Can add pos_role	245	add_pos_role
978	Can change pos_role	245	change_pos_role
979	Can delete pos_role	245	delete_pos_role
980	Can view pos_role	245	view_pos_role
981	Can add UQC	246	add_uqctable
982	Can change UQC	246	change_uqctable
983	Can delete UQC	246	delete_uqctable
984	Can view UQC	246	view_uqctable
985	Can add pos_user_log	247	add_pos_user_log
986	Can change pos_user_log	247	change_pos_user_log
987	Can delete pos_user_log	247	delete_pos_user_log
988	Can view pos_user_log	247	view_pos_user_log
989	Can add pos_table_log	248	add_pos_table_log
990	Can change pos_table_log	248	change_pos_table_log
991	Can delete pos_table_log	248	delete_pos_table_log
992	Can view pos_table_log	248	view_pos_table_log
993	Can add pos_table	249	add_pos_table
994	Can change pos_table	249	change_pos_table
995	Can delete pos_table	249	delete_pos_table
996	Can view pos_table	249	view_pos_table
997	Can add pos_role_log	250	add_pos_role_log
998	Can change pos_role_log	250	change_pos_role_log
999	Can delete pos_role_log	250	delete_pos_role_log
1000	Can view pos_role_log	250	view_pos_role_log
1001	Can add voucherTable	251	add_vouchernotable
1002	Can change voucherTable	251	change_vouchernotable
1003	Can delete voucherTable	251	delete_vouchernotable
1004	Can view voucherTable	251	view_vouchernotable
1005	Can add pos_user	252	add_pos_user
1006	Can change pos_user	252	change_pos_user
1007	Can delete pos_user	252	delete_pos_user
1008	Can view pos_user	252	view_pos_user
1009	Can add pos_settings	253	add_pos_settings
1010	Can change pos_settings	253	change_pos_settings
1011	Can delete pos_settings	253	delete_pos_settings
1012	Can view pos_settings	253	view_pos_settings
1013	Can add cancel_reason	254	add_cancelreasons
1014	Can change cancel_reason	254	change_cancelreasons
1015	Can delete cancel_reason	254	delete_cancelreasons
1016	Can view cancel_reason	254	view_cancelreasons
1017	Can add expenseMasterLog	255	add_expensemaster_log
1018	Can change expenseMasterLog	255	change_expensemaster_log
1019	Can delete expenseMasterLog	255	delete_expensemaster_log
1020	Can view expenseMasterLog	255	view_expensemaster_log
1021	Can add expenseDetailLog	256	add_expensedetails_log
1022	Can change expenseDetailLog	256	change_expensedetails_log
1023	Can delete expenseDetailLog	256	delete_expensedetails_log
1024	Can view expenseDetailLog	256	view_expensedetails_log
1025	Can add expenseMaster	257	add_expensemaster
1026	Can change expenseMaster	257	change_expensemaster
1027	Can delete expenseMaster	257	delete_expensemaster
1028	Can view expenseMaster	257	view_expensemaster
1029	Can add expenseDetail	258	add_expensedetails
1030	Can change expenseDetail	258	change_expensedetails
1031	Can delete expenseDetail	258	delete_expensedetails
1032	Can view expenseDetail	258	view_expensedetails
1033	Can add userAddress	259	add_useradrress
1034	Can change userAddress	259	change_useradrress
1035	Can delete userAddress	259	delete_useradrress
1036	Can view userAddress	259	view_useradrress
1037	Can add print_settings_new	260	add_printsettingsnew
1038	Can change print_settings_new	260	change_printsettingsnew
1039	Can delete print_settings_new	260	delete_printsettingsnew
1040	Can view print_settings_new	260	view_printsettingsnew
1041	Can add party_bank_details	261	add_partybankdetails
1042	Can change party_bank_details	261	change_partybankdetails
1043	Can delete party_bank_details	261	delete_partybankdetails
1044	Can view party_bank_details	261	view_partybankdetails
1045	Can add invitedUsers	262	add_inviteusers
1046	Can change invitedUsers	262	change_inviteusers
1047	Can delete invitedUsers	262	delete_inviteusers
1048	Can view invitedUsers	262	view_inviteusers
1049	Can add fromsetSettings	263	add_formsetsettings
1050	Can change fromsetSettings	263	change_formsetsettings
1051	Can delete fromsetSettings	263	delete_formsetsettings
1052	Can view fromsetSettings	263	view_formsetsettings
1053	Can add voucherGenerateTable	264	add_vouchernogeneratetable
1054	Can change voucherGenerateTable	264	change_vouchernogeneratetable
1055	Can delete voucherGenerateTable	264	delete_vouchernogeneratetable
1056	Can view voucherGenerateTable	264	view_vouchernogeneratetable
1057	Can add userRoleSettings	265	add_userrolesettingsmodel
1058	Can change userRoleSettings	265	change_userrolesettingsmodel
1059	Can delete userRoleSettings	265	delete_userrolesettingsmodel
1060	Can view userRoleSettings	265	view_userrolesettingsmodel
1061	Can add pos_devices	266	add_pos_devices
1062	Can change pos_devices	266	change_pos_devices
1063	Can delete pos_devices	266	delete_pos_devices
1064	Can view pos_devices	266	view_pos_devices
1065	Can add branchSettings	267	add_branchsettings
1066	Can change branchSettings	267	change_branchsettings
1067	Can delete branchSettings	267	delete_branchsettings
1068	Can view branchSettings	267	view_branchsettings
1069	Can add pos Version	268	add_posversion
1070	Can change pos Version	268	change_posversion
1071	Can delete pos Version	268	delete_posversion
1072	Can view pos Version	268	view_posversion
1073	Can add version_details	269	add_versiondetails
1074	Can change version_details	269	change_versiondetails
1075	Can delete version_details	269	delete_versiondetails
1076	Can view version_details	269	view_versiondetails
1077	Can add stock_management_master_log	270	add_stockmanagementmaster_log
1078	Can change stock_management_master_log	270	change_stockmanagementmaster_log
1079	Can delete stock_management_master_log	270	delete_stockmanagementmaster_log
1080	Can view stock_management_master_log	270	view_stockmanagementmaster_log
1081	Can add stock_management_details_log	271	add_stockmanagementdetails_log
1082	Can change stock_management_details_log	271	change_stockmanagementdetails_log
1083	Can delete stock_management_details_log	271	delete_stockmanagementdetails_log
1084	Can view stock_management_details_log	271	view_stockmanagementdetails_log
1085	Can add stock_management_master	272	add_stockmanagementmaster
1086	Can change stock_management_master	272	change_stockmanagementmaster
1087	Can delete stock_management_master	272	delete_stockmanagementmaster
1088	Can view stock_management_master	272	view_stockmanagementmaster
1089	Can add stock_management_details	273	add_stockmanagementdetails
1090	Can change stock_management_details	273	change_stockmanagementdetails
1091	Can delete stock_management_details	273	delete_stockmanagementdetails
1092	Can view stock_management_details	273	view_stockmanagementdetails
1093	Can add bank_reconciliation_master_log	274	add_bankreconciliationmaster_log
1094	Can change bank_reconciliation_master_log	274	change_bankreconciliationmaster_log
1095	Can delete bank_reconciliation_master_log	274	delete_bankreconciliationmaster_log
1096	Can view bank_reconciliation_master_log	274	view_bankreconciliationmaster_log
1097	Can add bank_reconciliation_details_log	275	add_bankreconciliationdetails_log
1098	Can change bank_reconciliation_details_log	275	change_bankreconciliationdetails_log
1099	Can delete bank_reconciliation_details_log	275	delete_bankreconciliationdetails_log
1100	Can view bank_reconciliation_details_log	275	view_bankreconciliationdetails_log
1101	Can add bank_reconciliation_master	276	add_bankreconciliationmaster
1102	Can change bank_reconciliation_master	276	change_bankreconciliationmaster
1103	Can delete bank_reconciliation_master	276	delete_bankreconciliationmaster
1104	Can view bank_reconciliation_master	276	view_bankreconciliationmaster
1105	Can add bank_reconciliation_details	277	add_bankreconciliationdetails
1106	Can change bank_reconciliation_details	277	change_bankreconciliationdetails
1107	Can delete bank_reconciliation_details	277	delete_bankreconciliationdetails
1108	Can view bank_reconciliation_details	277	view_bankreconciliationdetails
1109	Can add contact	278	add_contact
1110	Can change contact	278	change_contact
1111	Can delete contact	278	delete_contact
1112	Can view contact	278	view_contact
1113	Can add billwise_details	279	add_billwisedetails
1114	Can change billwise_details	279	change_billwisedetails
1115	Can delete billwise_details	279	delete_billwisedetails
1116	Can view billwise_details	279	view_billwisedetails
1117	Can add billwise_master	280	add_billwisemaster
1118	Can change billwise_master	280	change_billwisemaster
1119	Can delete billwise_master	280	delete_billwisemaster
1120	Can view billwise_master	280	view_billwisemaster
1121	Can add Variant	281	add_productvariants
1122	Can change Variant	281	change_productvariants
1123	Can delete Variant	281	delete_productvariants
1124	Can view Variant	281	view_productvariants
1125	Can add Printer	282	add_pos_printer
1126	Can change Printer	282	change_pos_printer
1127	Can delete Printer	282	delete_pos_printer
1128	Can view Printer	282	view_pos_printer
1129	Can add pos_devices_route	283	add_pos_devicesroutes
1130	Can change pos_devices_route	283	change_pos_devicesroutes
1131	Can delete pos_devices_route	283	delete_pos_devicesroutes
1132	Can view pos_devices_route	283	view_pos_devicesroutes
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
4	pbkdf2_sha256$180000$YAQn2JEGg3qb$Bb6Vbe/o3Oa1X5ZC/cAi74TdcB8727HbFHSDNPx/9sk=	2021-05-29 10:11:44.514+05:30	f	demo1234	demo	demo	demo1234@gmail.com	f	t	2021-01-14 20:44:52.8+05:30
6	pbkdf2_sha256$180000$w5n9x7NiHJ2i$ZGigEEeMgkKGWzytC7gUxGIivx26CIMGF/nATHiNf2g=	2021-01-15 17:31:31.512+05:30	f	jasmaltk	jasmal	tk	jasmaljaizz@gmail.com	f	t	2021-01-15 17:30:59.19+05:30
7	pbkdf2_sha256$180000$KwUxXY8ed3UF$dBnoGUZNgSCywm0Zl3e0capHgKzgYhpB1RbkiWDOv5Y=	2021-01-17 00:15:02.604+05:30	f	suhaibali	suhaib	ali	suhaib@gmail.com	f	t	2021-01-15 17:31:01.177+05:30
8	pbkdf2_sha256$180000$x8aK4oOvOEnj$zkDqH3XLS1yWNJf9+xvTu/ttsqGPb2Utjd/AcgatZZM=	2021-01-15 17:31:44.973+05:30	f	ameghr	amegh	raghavan	ameghraghavan@gmail.com	f	t	2021-01-15 17:31:17.19+05:30
10	pbkdf2_sha256$180000$XMIftiwt9DfU$yAWEbYMbuWgXjn40ObgNgxEkXZx/NyUkllQjVsus1Cg=	2021-01-15 17:40:33.922+05:30	f	Karthik	Karthik	T	Karthik84210@gmail.com	f	t	2021-01-15 17:33:03.301+05:30
13	pbkdf2_sha256$180000$yaUVQqlekvHu$IOs9NDvDmNQBd1w0QfFhShJ8+BzqGJ5aHX/shT1e8og=	2021-05-22 21:01:46.627+05:30	f	subeer	ABDUL	SUBEER	rizupnr@gmail.com	f	t	2021-04-01 00:22:22.429+05:30
15	pbkdf2_sha256$180000$EI6NeYLEvHOf$gkpytvahMDMbuc3JWwpdaE1OPJkEbY7RSNLOz3v7xzk=	2021-05-14 01:45:08.289+05:30	f	husnachr	Husna	kottekat	husnakottekat@gmail.com	f	t	2021-04-08 21:55:23.168+05:30
18	pbkdf2_sha256$180000$NFbBJBKGfvbK$bF132gFjVEPZH0znIUr51SJazpAGZfLtpISHlmgFaLY=	2021-04-16 14:33:38.055+05:30	f	rabihhello	rabig	rabi	rabig@gamil.com	f	t	2021-04-16 14:33:13.447+05:30
22	pbkdf2_sha256$180000$qqrvcn0yPTRU$pXvyBOz3/0d8huBYhTNuwK2H5U1rR4RbELfkpA+++bk=	2021-04-19 11:00:05.182+05:30	f	jasmal	jasmal	tk	jasmal@gmail.com	f	t	2021-04-19 10:59:53.203+05:30
24	pbkdf2_sha256$180000$HWjzmAEVkSZS$xZ6qdB+8Moc0srLAbuRAzdPtpMBa8NLHX5uZUo0s3EU=	2021-04-21 13:30:35.525+05:30	f	Rabeeh	Rabeeh	ViknCodes	viknnnnn@gmail.com	f	t	2021-04-21 13:30:16.576+05:30
25	pbkdf2_sha256$180000$0m03jMj9euaa$+VmWzw5rlkj031cbXpz+PIj5WUIq0ibj14zqkIR9DKw=	\N	f	vikn123	test vikn	vikn	rabeeh994amk@gmail.com	f	t	2021-04-21 14:03:02.376+05:30
26	pbkdf2_sha256$180000$scgmCcRbHRJA$9KApwtLvID12e2ryWwdKUSj6jecKXk1BrSKL0aVFjMk=	\N	f	testing	testtest	a	a@gmail.com	f	t	2021-04-21 14:05:39.274+05:30
28	pbkdf2_sha256$180000$sCygSpzBQQ8Y$Qv+sZY2j9WJCqUJi1s1Lga2yVxsFUvYXOsFHyqMdUpA=	2021-05-26 21:29:54.752+05:30	f	thoufeeque	abdulla	alshaikh	abdullah36474@gmail.com	f	t	2021-04-24 02:41:38.674+05:30
32	pbkdf2_sha256$180000$eTj0DvSgECd5$kdv/VXUJMa92f7569v+KzKilxk9JzdHmzOMRuCbBjNg=	\N	f	Faisal007	Faisal	Alqahtani	F.s.5i5@hotmail.com	f	t	2021-05-11 00:45:49.728+05:30
37	pbkdf2_sha256$180000$MRkR5nf6XzXW$cz/x/Zp3loGLB5YD2iCulhPIJhFjJp+pm7GGnXViHHc=	2021-05-19 18:07:41.692+05:30	f	QAHTANI	FAHAD	ALQAHTANI	fqahtani0@gmail.com	f	t	2021-05-19 18:06:57.173+05:30
38	pbkdf2_sha256$180000$JEZy3VGPszNf$18DmFIcOdFCGA2W125jdRkK4MW2SrySQcv7amlsU7p0=	\N	f	habz_012	habeeb	Rahman V	Habeebrahmanv786@gmail.com	f	t	2021-05-19 20:09:31.46+05:30
42	pbkdf2_sha256$180000$g0qerf48w8Uf$35dB2AO78QyfCHDjyMm7OMgjcvxJ+LRCRZTXO1QuORQ=	\N	f	asnasinu	asna	akbar	asnaakbar32@gmail.com7	f	t	2021-05-19 21:07:32.127+05:30
43	pbkdf2_sha256$180000$nQ1zlmgMSBqa$R8LCKiz2xiP8SVpjNBkbEN42/Z+KnTTgPLMib/igrNA=	2021-05-19 21:18:13.079+05:30	f	akbarrh	a	a	akbarrh@gmail.com	f	t	2021-05-19 21:17:05.529+05:30
44	pbkdf2_sha256$180000$TRDXLJa06xhS$wbYhvx7OczhyklnCeAFOwpl53lE9YWVFUL7G2cp5jmo=	2021-05-19 22:28:15.084+05:30	f	savadfarooquekm	savad	Farooque	monuttan2010@gmail.com	f	t	2021-05-19 22:28:00.3+05:30
5	pbkdf2_sha256$180000$yD48LidtWkFq$0WhJEpQZlsixM9vzAOSn5Ec3kQStR3MAsn+fZvWDgMc=	2021-07-12 11:53:51.835483+05:30	f	savadfarooque	savad	farooque	savadfarooque1@gmail.com	f	t	2021-01-15 17:30:30.219+05:30
19	pbkdf2_sha256$180000$y4esU9F3MwbX$3KFAEh+HPReJgNfgI5VCczsBrBc0G18NFIGb1eNIcHU=	2021-08-18 18:51:03.017804+05:30	f	THANI1	THANI	QISI	totagasi1417@gmail.com	f	t	2021-04-17 02:18:50.215+05:30
20	pbkdf2_sha256$180000$hU1MbyuP0Jrk$vJE59CY49akJYZ/jlgDcMQCSMG6nf1WeqTByEXfjAxA=	2021-09-18 00:50:37.089534+05:30	f	ebtisam96	ebtisam	alameri	ebtisam19960@gmail.com	f	t	2021-04-17 02:22:46.34+05:30
12	pbkdf2_sha256$180000$8ZU0C8ffkcQX$KCrhA4kVjn0RwPa1UHF79Ojf4RDifwYn6ya32ACii/0=	2021-09-22 13:40:49.551944+05:30	f	salman	salmanul	faris	info@vikncodes.com	f	t	2021-03-17 12:42:26.16+05:30
17	pbkdf2_sha256$180000$3NsoitQh9Yyk$1Nl4hDIiD+PAjRbKJ7rryGPy3ktAbqeGWkrX+dAi8wE=	2021-04-16 14:27:16.013+05:30	f	Rabeeh96	rabeeh	k	rabeeh99amk2@gmail.com	f	t	2021-04-16 14:27:11.438+05:30
33	pbkdf2_sha256$180000$cy0HvHjECAbA$dhFle7u4kLzB3j5Nz2db1rXuYFbFZvpxldMgb/KNB3w=	2021-11-28 13:22:39.468825+05:30	f	naseer	Naseer	ahamed	nihadnazin1@gmail.com	f	t	2021-05-12 19:21:50.352+05:30
14	pbkdf2_sha256$180000$6AGZDEJG4eGJ$HZfZdbX7vc/9TwRnHuj7angHcJF8qaUd9rUOcXtuKM0=	2021-09-15 18:29:43.008632+05:30	f	AZIZ1994	abdulaziz	mahmoud	xx1771xx@hotmail.com	f	t	2021-04-03 23:00:39.282+05:30
41	pbkdf2_sha256$180000$TlRdyWNw8fzv$LRvLyz8J6UzY4nNE+k74PhanuTRY2RmttoTYnd2CVt4=	2021-07-01 10:25:26.06728+05:30	f	asnaakbar	asna	akbar	asnaakbar32@gmail.com	f	t	2021-05-19 20:56:31.143+05:30
27	pbkdf2_sha256$180000$9ev5MIPrf8Ma$EC/NoIDx+TZg6J3Wy/QcQi8ojIYRM5yeKeWNpOtZMlc=	2022-03-06 19:13:00.461314+05:30	f	Masaal	مشاعل	الحربي	dl3.99@hotmail.com	f	t	2021-04-24 02:26:49.102+05:30
45	pbkdf2_sha256$180000$Qv1eYPZAxKoF$MxzXFiVdiEUj8eRu4+bAjNg+H/ImzYBt49uwr5n1HYs=	2021-05-21 21:40:02.8+05:30	f	nmaliyakkal	Noushad	M	nmaliyakkal@gmail.com	f	t	2021-05-21 20:55:21.357+05:30
51	pbkdf2_sha256$180000$rad1M9ReoN2D$MyfESL7ZEGzmNEokXEJxg7ytpWoEDFlmWUp5+XWb8hk=	2022-01-18 12:13:52.24094+05:30	f	ABDUL ANEES	RAYAT SOUQ TRADING	EST.	rayatsouq786@gmail.com	f	t	2021-06-20 00:15:17.151276+05:30
52	pbkdf2_sha256$180000$MWDKaTPXTreb$yY/XkDgnP9m0HR+P1cOc1U1Aqq3YgHXkJGhETzhf+78=	2021-06-20 00:54:17.945694+05:30	f	SUHAIL P	SUHAIL	P	suhail0918@gmail.com	f	t	2021-06-20 00:53:34.734745+05:30
16	pbkdf2_sha256$180000$9wiiuS76ES5y$0dASOWt7angrZ+6b/mlCNGoKBT3nRl4H0VCEGLDjszw=	2022-04-01 23:52:51.934551+05:30	f	Mana6611	Mana	Alzamanan	mana11@live.com	f	t	2021-04-15 01:50:24.363+05:30
30	pbkdf2_sha256$180000$bpbJwsGmZd1D$7JX5LzQ9VTjphV9o5/VkAvnKQCmopZX71FMvsfPznHQ=	2022-03-17 12:51:21.498438+05:30	f	Kuriyani	Ummer	Kuriyani	ummerkk2288@gmail.com	f	t	2021-05-02 05:13:41.885+05:30
72	pbkdf2_sha256$180000$tMbGIn5nvE5e$h0n8QImiZgUbvbMJCWez9x8DHcJqC2VswJNtD4SuRhI=	\N	f	rabeehflutter	rabeeh flutter	flutter	jojane4950@stvbz.com	f	f	2021-09-13 15:45:45.252168+05:30
9	pbkdf2_sha256$180000$AiujesGwY6KI$HJWL8h9bFSmwNy7mZBXi23HoAbag+Y7Q3Jlot4PHsp0=	2022-07-05 22:41:25.096464+05:30	f	suhail	suhail	kk	suhailkk10@gmail.com	f	t	2021-01-15 17:31:43.119+05:30
11	pbkdf2_sha256$180000$YfH0HWpQqiYJ$zkNK0y/SpS4WyR0RsEONLyo7yem+/cKVa3tFga9fczM=	2022-07-01 18:03:15.182174+05:30	f	Almadheena	AL	MADHEENA	alkiswa1476@gmail.com	f	t	2021-01-15 18:47:44.784+05:30
35	pbkdf2_sha256$180000$hbEGnda55FDt$MEOSN1deBRUUSF+y52AqT8KPJHzlj/9j4CicnqOIKQk=	2022-05-17 12:23:44.39987+05:30	f	ummeryunax	ummer	yohana	md.yunax@gmail.com	f	t	2021-05-18 20:04:01.51+05:30
31	pbkdf2_sha256$180000$E6lW5U3FiBfQ$RCp6RWC3i9lF76aviI5O/YMPEt3e5WquJpiSW6L2ci0=	2022-07-01 11:03:07.873014+05:30	f	shaheenkk	muhammed Shaheen	shaheen kk	muhammedshaheenkk@gmail.com	f	t	2021-05-09 20:09:52.334+05:30
75	pbkdf2_sha256$180000$a5GfwgerZCEy$qm0W8GxOhk9OEoO0cRnO8XlBXNMwqbKI1jNdglCaTM0=	2022-06-07 10:40:53.582197+05:30	f	eishasalman	Salmanul	Faris	faris@vikncodes.com	f	t	2021-09-15 18:20:52.980972+05:30
3	pbkdf2_sha256$180000$qA9SUEWgz4CT$UiMMbx5IGS+b/D4JmPcOQz0BoeKs/G88vb4RxjF8M+o=	2022-07-09 23:41:22.259896+05:30	f	izzasaara	Muhammed	Musthafa	musthafachr@gmail.com	f	t	2021-01-14 20:36:37.293+05:30
39	pbkdf2_sha256$180000$C2DVT8tY1I59$OrTnE9fqmPRjKg20XlqX4Qt2iaH10/XpOZ988gviE+w=	2022-07-06 12:01:10.759587+05:30	f	uvaist007	uvais	t	uvaist1997@gmail.com	f	t	2021-05-19 20:12:56.338+05:30
23	pbkdf2_sha256$180000$mRXyD8fz06m0$uIGjm2sUNHf6ztGzEZoFZD0aFWRKLdbaekTSetWOJTE=	2022-07-06 23:04:58.71546+05:30	f	shamsu	Shamsu	Arshad	salimp.yousuf@gmail.com	f	t	2021-04-19 23:05:53.869+05:30
55	pbkdf2_sha256$180000$0Mrf9qZWJbWK$zEXWhTY7wcG8jQt2s6Ig+mHoj1PvI7UA/Uy+tBgYaM0=	2021-07-06 01:53:52.341349+05:30	f	shihabk1717	shihabudheen	kottadan	shihabk1717@gmail.com	f	t	2021-07-06 01:53:07.248887+05:30
56	pbkdf2_sha256$180000$shk7WO4FJhxp$4DM/6rCG2Swcib+PS4+2J02UUW6J4v6qBi2m4rAzFe0=	2021-08-04 19:36:19.981156+05:30	f	shahbaz	HT Trading	HT Trading	alhoottrading2021@gmail.com	f	t	2021-07-06 16:30:54.329727+05:30
64	pbkdf2_sha256$180000$eYc6a11DUpz0$w7mXXVL7zp9RAvpMUxei4wjRNSSskThbRJf0d5CWbzU=	\N	f	Andullah	Abdullah	Sabei	abdullah141314@hotmail.com	f	t	2021-07-28 12:25:47.184559+05:30
48	pbkdf2_sha256$180000$icxdZaj3BS7y$+We/5LThtf9klgWNX1gawruh7x7SI2hG0oot8oHu9Ls=	2021-06-04 01:39:15.368028+05:30	f	alam123	نصر	عبيد	aa771440800aa@gmail.com	f	t	2021-06-04 01:39:09.706822+05:30
54	pbkdf2_sha256$180000$sNzDGfRzmAem$YY1Wl3Q4th2/pmJm4CmszuSO8pQ1kP+DwQhipCpoW58=	2021-06-28 12:03:05.195332+05:30	f	HLADMIN	ABDU	MANIPURAM	healinglightindia@gmail.com	f	t	2021-06-28 12:02:33.381633+05:30
73	pbkdf2_sha256$180000$pEFBs8joTzyX$Kx8KVxoVogBU29wIP5yMvx6145hgIPpDUTYaV4vMy6s=	\N	f	uvaispython	uvais python	python	rewar20149@silbarts.com	f	f	2021-09-13 15:46:57.00013+05:30
57	pbkdf2_sha256$180000$boyQD5qxLpef$l0xacBbgbTJde37b0kkalHZU7aEqvvzJzFx/dtWfJf4=	2021-07-07 22:03:27.251676+05:30	f	Infiniti	Jas	TK	muhamedjas@gmail.com	f	t	2021-07-07 21:58:05.623107+05:30
49	pbkdf2_sha256$180000$OZA1UOxuoaP7$KwbrgfN4JUcFZa7nr6VeADRtQSaJdf/ihrqOuptWVns=	2021-06-15 09:45:37.423685+05:30	f	irshadkk	Irshad	kk	irshad@vikncodes.com	f	t	2021-06-15 09:45:29.40708+05:30
69	pbkdf2_sha256$180000$5YlHdF36pcca$QjhkODGo/fgDZ4yqK2ZHLZ/n0xj5V8+lm/uEtY4AK4g=	\N	f	anushry	anushry007	T	ganeshanusree@gmail.com	f	f	2021-09-13 15:21:31.420951+05:30
71	pbkdf2_sha256$180000$RsZrXDxUkVK8$//6r2XiXdMxZjA47ZjRs3gV8JhXPSMwHhMz/Ojxh9Jw=	\N	f	Aa123456-test2	Aa123456	7	vafaye5001@rerunway.com	f	f	2021-09-13 15:42:44.323531+05:30
65	pbkdf2_sha256$180000$TOCF2BnqD9AW$QsrHll+v5dV5ZsK36/sK5YFGbL1n+07PhB03gMyVFdg=	2021-08-10 21:35:27.256873+05:30	f	muhsin	Muhsin	Vengalath	muhsin.unilever@gmail.com	f	t	2021-08-09 22:13:40.958902+05:30
70	pbkdf2_sha256$180000$ybQ9I1KEZpMv$R1cdysNBMrmhbuLSX5gzrUL3EFb51FmfRMr726DS14A=	2021-09-13 15:25:27.358841+05:30	f	anusreehr	anusreehr	hr	wefot64984@sicmag.com	f	t	2021-09-13 15:25:03.608451+05:30
66	pbkdf2_sha256$180000$WrW7GqL1z6lv$QnIankKE152UYOPJjXzzGkdB6lThl67jjBy4kz9XYsQ=	2021-08-11 11:03:59.706376+05:30	f	jasmalvikn	jasmal	vikn	jasmalvikn@gmail.com	f	t	2021-08-10 14:56:26.384061+05:30
53	pbkdf2_sha256$180000$TbCRZLfHjQrp$vU0OjkZFXlmXOT2jPdbBPsU/P1NsNoMArTOzPJ1EMrE=	2022-02-26 19:06:49.810216+05:30	f	ahmdfinash	Ahmd	Finash	ahmdfinash@yunax.com	f	t	2021-06-24 17:59:19.683567+05:30
67	pbkdf2_sha256$180000$zuj16Ohhgg8q$SX0CbvTd6cELwDuB4mcGGYbPTi3IncwWYYAms4KosLI=	2021-09-19 16:36:45.286448+05:30	f	salimpky	Abdussalim	Moosa	salimpky@gmail.com	f	t	2021-09-08 14:18:58.748156+05:30
68	pbkdf2_sha256$180000$TH7tEIckj92r$4Sm9QNovPvjEtSbp8NjoT9U0GRJ2u3Qw+FgLHJjZEkY=	\N	f	Aa123456-test	Aa123456	1	Aa123456-test@gmail.com	f	f	2021-09-13 15:15:46.932845+05:30
58	pbkdf2_sha256$180000$VNIqKaqK3KZd$hSshAh6u0UCGgNsoETgw+cAcy0JHv1a4dlGvVcO1cf0=	2021-09-14 03:28:04.930686+05:30	f	IRSHADD	IRSHAD	KUZHIKKAL	irshadkkcpdd@gmail.com	f	t	2021-07-08 13:14:31.824175+05:30
79	pbkdf2_sha256$180000$F6Zs8jyls7Tk$FzNrw678NK1mCbXCSPhjrO/T6Zm1VV0swZcFQg003mk=	2021-09-26 23:31:48.806461+05:30	f	VARUSAI86	ABDUL	GANI	mohd.varusai86@gmail.com	f	t	2021-09-26 23:30:00.456638+05:30
80	pbkdf2_sha256$180000$qrYB2raih3uN$JtvSDmdgssu4h1yhVhZ5QsbNWMa0Z6cL8xszWfhATMs=	2021-09-28 07:36:15.850747+05:30	f	haalahyder	Haala	Hyderali	hzn20897@gmail.com	f	t	2021-09-28 07:35:37.42709+05:30
61	pbkdf2_sha256$180000$uVeuvl7tMEjj$kcBYrGIyJIp0Gp9CaUH2q9rn6viFTw1GBlN5CN0T/Eg=	2022-01-21 20:01:33.028421+05:30	f	Vikn.1	Abdulaziz	Fagihi	abdulaziz.fagihi@hotmail.com	f	t	2021-07-19 23:52:54.630555+05:30
77	pbkdf2_sha256$180000$QAYKYOi2tuMZ$63L7Y2JWP8bD+auDvRVSW5fWZbiRpOsS+pNf9Atsnjg=	2021-10-25 21:01:58.207917+05:30	f	yaaskp	Mohammed	Riyas	m.yaaskp@gmail.com	f	t	2021-09-20 19:04:13.811465+05:30
107	pbkdf2_sha256$180000$O9SbswdoX8V7$xgN1OkuVKh1GdntQYxwzjHQxBCcki2IezELjQmN8cMk=	\N	f	Rashid Ali	Rashid	Ali	eradaerada529@gmail.com	f	f	2021-11-12 00:29:28.756436+05:30
120	pbkdf2_sha256$180000$sRUgAuEStj8b$hF3aHtkbFFP/wspDF3BDGzA1Po9P4b1KS13oPz1VzD0=	\N	f	uvais123	dq	uvais	xoxas25927@incoware.com	f	f	2021-11-18 17:45:39.610067+05:30
95	pbkdf2_sha256$180000$Q9v6152ETeCa$whWKJeD/Haigqq2JJ0jHXBduv5Abnbcf/3dnvPXOuz0=	\N	f	Irfan Ahammed	Irfanahammed	Irfu	irfanahammedirfu@gmail.com	f	f	2021-11-04 19:24:45.467101+05:30
111	pbkdf2_sha256$180000$0MZeRSnKMWtf$xDBRgD6tz5aBzHHTh+x/4/bKAUAYvZydvFguueY8vh8=	2022-03-03 17:45:49.999645+05:30	f	athirangk	athirangk	ngk	athirank69@gmail.com	f	t	2021-11-16 16:29:20.960517+05:30
110	pbkdf2_sha256$180000$pNeDKwG1Q21l$DFzXP5ecvDT+K2/SiS5wRB/bqzjc3iX0pcF4/C/WID4=	2022-02-04 15:12:04.522924+05:30	f	abdulhakeem	Abdulha	keemk	abdulhakeemkmapuram@gmail.com	f	t	2021-11-14 21:51:15.79489+05:30
94	pbkdf2_sha256$180000$E7Wesepao0a5$QzMK5D/QX0ZUimR3lYE3Vxp7ONzW0QJ1uHTsrx8XMHw=	2021-11-16 11:04:03.792989+05:30	f	suhaibalik	suhaib1234	ali	suhaib007mnj@gmail.com	f	t	2021-11-04 10:30:31.926884+05:30
113	pbkdf2_sha256$180000$ysQBgdUjb22j$UaLlyov+IS3Zx1uunyJaeHAx6i/bQJYepq8GvzM9Lm8=	2022-03-04 16:22:23.543025+05:30	f	dulquarsalman	dulquar	salman	wohidig378@healteas.com	f	t	2021-11-18 15:35:09.065403+05:30
92	pbkdf2_sha256$180000$3NFa6pOkiuzM$+hMcHAYfWWZ+8n50muOg0vEdRReMcTBL6VQ8+82rdVY=	2022-04-26 12:41:43.128238+05:30	f	roshidac	roshid	ac	roshidac@gmail.com	f	t	2021-11-03 20:45:45.983897+05:30
81	pbkdf2_sha256$180000$cilohE6qUno5$iRI/wpIEEprE787DpYuEufGFH0qOiSMdmsKEtv4f5us=	2022-04-27 22:42:44.107389+05:30	f	Irshad	Irshad	Kk	irshadkkcp@gmail.com	f	t	2021-10-01 20:03:22.9217+05:30
78	pbkdf2_sha256$180000$oJMPLPbUgHZo$zMaBMC49854L5CI5jX38uUX2YTCXVm92DhcVXVBjY68=	2022-03-31 19:47:17.621996+05:30	f	affham	affham	razak	affhamrazak111@gmail.com	f	t	2021-09-23 15:16:38.729881+05:30
86	pbkdf2_sha256$180000$iEZv2YGrapoI$ELzKa4gKqW96FtrDRH4XXSxsj7KYYh1qzHO6pBJLAY4=	\N	f	User 123	Test	Test	boxine4687@gmail.com	f	f	2021-10-27 09:52:28.350408+05:30
87	pbkdf2_sha256$180000$ZhONpOoFph15$oti5V8hm4HUR7a6anAUPd2tJjhz9SWk3odUd88JRprc=	\N	f	Test Test	Test Test	Test Test	abx@gmail.com	f	f	2021-10-27 10:48:32.69329+05:30
47	pbkdf2_sha256$180000$5r8L0mjRbWQl$kbTTUB4OYiUIl6q4apohsI1oQZgndGg/cAKN8aHmhac=	2022-05-27 00:15:26.115848+05:30	f	azooz4436	abdulaziz	shagi	alam.altnin@gmail.com	f	t	2021-05-26 03:38:52.183+05:30
21	pbkdf2_sha256$180000$tNbLsTJLWBDl$Nt80sz4O+HfxC0iQFRw9AJy5U1HYsrzc5M2v1XJaAjY=	2022-07-12 13:48:40.909071+05:30	f	uvaist	Uvais	T	uvaist222222@gmail.com	f	t	2021-04-19 10:00:05.142+05:30
46	pbkdf2_sha256$180000$MJGuZQ0t1Jme$qYfNH7vRmL198oU1ONX5SNHXICFruh4efhZZhpFq8Us=	2022-07-12 10:54:23.087575+05:30	f	sabithyunax	muhammed	sabith	sabithbcom@gmai.com	f	t	2021-05-25 22:25:48.351+05:30
34	pbkdf2_sha256$180000$5EIZZGBizD0K$nUpNPXhSHmRzQ1UZfJkTSNF+fiOPsYWSUfOv4QzPOHE=	2022-05-04 09:53:07.286579+05:30	f	demo123	Demo	Demo	support@vikncodes.com	f	t	2021-05-14 14:48:51.83+05:30
1	pbkdf2_sha256$180000$11IQ592aXNKV$SX1f0TK02oqsq6SMx7MOkx6yFY/ynwWpLzSCGBc3LmA=	2022-07-08 15:51:07.885969+05:30	t	vikncodes				t	t	2021-01-14 20:20:26.228+05:30
59	pbkdf2_sha256$180000$eYjGf1UOrM6G$kETMGypbtE7KyT0XK1Q15eW0zbFxm8s/pf4tvVEcFsE=	2022-07-12 14:05:52.834614+05:30	f	anusree	anusree	t g	hr@vikncodes.com	f	t	2021-07-13 16:44:06.861187+05:30
82	pbkdf2_sha256$180000$vawJ6Tw0PjE6$uPn8uv8zGDqYqugWV4Ki+WgQzQAJ1P6O86I4Uw3z83g=	2022-07-06 16:58:50.599166+05:30	f	shaheen	Shaheen	Text	shaheen@vikncodes.com	f	t	2021-10-07 15:41:36.196235+05:30
74	pbkdf2_sha256$180000$IzqdbToBukMs$1gUDHMCjO1ildjYXrX1GNjva1jySYUQIAZehIMZ5q6k=	2022-05-27 01:02:45.338276+05:30	f	Aa123456	Aa123456	6	batipe1245@rerunway.com	f	t	2021-09-13 15:49:36.636537+05:30
63	pbkdf2_sha256$180000$Rbc35GKZ5Plm$gAg+r7T7QiQ0PPlokAdeh0WYai/pu+8B+uCWg609yk8=	2022-07-07 16:28:41.504491+05:30	f	vikn computer	vikn computer	computer	abdulazizfagihi@gmail.com	f	t	2021-07-23 21:54:30.011126+05:30
60	pbkdf2_sha256$180000$xBvdwuu6p28K$Ek9DxyNLZlG/wJp5DXpbxRE+QVjgIX7y9tsaLeX/J6Y=	2022-07-12 14:13:14.822985+05:30	f	rabeeh@vikn	Rabeeh	Vikn	rabeeh@vikncodes.com	f	t	2021-07-15 09:57:29.97483+05:30
103	pbkdf2_sha256$180000$XaiQ8Z55nje4$05/tyo4hg4Sou6/O9uFc5jgjag9ogY23awGWonlmoXA=	2021-11-09 13:37:53.469696+05:30	f	DEMODATA	SAMPLE	SAMPLE	salihnayawork@gmail.com	f	t	2021-11-09 13:36:06.227427+05:30
96	pbkdf2_sha256$180000$lOXVaAMddPGu$cIMdfsm6d6mz6WRrrI8r1m5I7z8lLfXYhHySSYXuKyw=	2021-11-05 11:35:12.820897+05:30	f	Safabawadi	Yousuf	Salih	safabawadi@gmail.com	f	t	2021-11-05 11:33:59.043199+05:30
104	pbkdf2_sha256$180000$c7pfMUP1IwJ8$olAuBmp5ycaUoO/qajRHBBN/uplyQ2pvbeFfqo4J1Vc=	\N	f	Naseem	Naseem	Nujoom	naseemnujoomnas@gmail.com	f	f	2021-11-09 16:21:42.156835+05:30
84	pbkdf2_sha256$180000$jxq9p3RiuWzS$jkXr+MPb15SEq4FxUb1izPs43h4l/BwCdk2/iEX/YzY=	2021-11-19 00:06:59.40387+05:30	f	Samerali	Samer M Ali	Al Ma'ashi	muhammedalinambrath@gmail.com	f	t	2021-10-26 18:54:58.007877+05:30
90	pbkdf2_sha256$180000$r6XHzZkx5JJH$CSOGE8RG2c/bEVLEzs5PsFJm8ekmQTFEJRQCCAeZP88=	2021-11-26 18:31:26.37934+05:30	f	michuahamed	azhar	ahamed	michuahamed@gmail.com	f	t	2021-10-31 20:37:14.019894+05:30
91	pbkdf2_sha256$180000$rFfFmTckeo6L$EWScrxBCJkRSrvuBgVayRiHbzsF13EdRd5kUC/lm7vw=	2022-01-13 18:12:48.429252+05:30	f	ansarabdulla	Ansar	Abdulla	ansarabdulla@gmail.com	f	t	2021-11-03 10:46:24.336406+05:30
88	pbkdf2_sha256$180000$Ib7xWRqMZtVy$oe46feg35TAtacZGpdD3+gxjwfeGqTEQrJd64j3NLmo=	2021-10-27 23:19:57.634329+05:30	f	rashim	Rashim	C	rashim@vikncodes.com	f	t	2021-10-27 11:20:11.533404+05:30
89	pbkdf2_sha256$180000$lldPN4jHG26F$0wgilxOR0XbhiJNvgp1JSuZEJ5sFogmcNd8dypcxA1g=	2022-01-03 22:11:41.029018+05:30	f	muytha	Mustafa	OV	itsmuytha@yahoo.com	f	t	2021-10-29 20:19:03.736979+05:30
105	pbkdf2_sha256$180000$ndgEZQpD8zCh$1ne3cLe8DrHitE7dsmPrW2IKJ49wQ4BXyzLFlk4hps8=	\N	f	KAMALALUI	KAMAL	ALI	ENG7736@gmail.com	f	f	2021-11-09 23:46:59.930455+05:30
101	pbkdf2_sha256$180000$ddgD8Td8i2gU$fbPDIYvAQt7ENT6RdC13Aq0nT+klko1/wlRVLEI3btM=	2022-02-11 23:02:13.220457+05:30	f	AVULAN	SHAMSU	AVULAN	shamsu.avulan@gmail.com	f	t	2021-11-07 13:09:53.943359+05:30
98	pbkdf2_sha256$180000$J0TRqPaDsWOe$fN11WyHU2EU+z0m779o+j9pgs5jFIomHl4qTDIGWfhY=	\N	f	Faheemev	Faheem	Ev	faheemev9697@gmail.com	f	f	2021-11-06 17:07:31.455399+05:30
114	pbkdf2_sha256$180000$GKHPAtQJf8iV$nnhFg6YObPb6HgPD2kp+ox6hW1XpfWYbqDeqxz50JiA=	\N	f	dulquar	dulquar	salman	kimadod703@healteas.com	f	f	2021-11-18 15:41:40.726131+05:30
115	pbkdf2_sha256$180000$fHAsWjWh2JLp$vb+o3V8M721XR4pF8So85bvrT8pE4G92yLNIQ8Jx8jg=	\N	f	nivinpauly	nivin	pauly	netafe7783@incoware.com	f	f	2021-11-18 15:44:02.360116+05:30
99	pbkdf2_sha256$180000$cGCT8C6OUGAZ$IfLwoZ9x1RYcjg4twC9ckclCJh7qv4RLGNyVIm3JO9Y=	\N	f	Fhm-mariya	Faheem	Ev	aalmfisthaka@gmail.com	f	f	2021-11-06 18:03:01.044684+05:30
97	pbkdf2_sha256$180000$zslLqFVr1jbB$sBzW/CglPqpdSv+unumpi1oSfqlehUdH862FVymt1vE=	2021-11-06 18:31:50.901039+05:30	f	Thahirdmm	Thahir	Dmm	thahirmallalil@gmail.com	f	t	2021-11-06 15:33:06.05877+05:30
106	pbkdf2_sha256$180000$GnCD4MXlP8cU$O6NKrJ0SGOMSUgrcfa2MuQAUN8dMRT/7o9S047J2C8Y=	2021-11-10 22:30:06.484602+05:30	f	nishupk032	mohammed nishmal	pk	nishmal032@gmail.com	f	t	2021-11-10 22:04:09.876734+05:30
83	pbkdf2_sha256$180000$tyd4IdHQ644U$R4rpUcPXlF+n6Hlta9AHHf5/gLPSc9fcyFuUb2KwTqM=	2021-12-06 15:46:23.620732+05:30	f	rashim1996@gmail.com	Rashim	Chakkarathody	rashim1996@gmail.com	f	t	2021-10-19 13:44:54.950272+05:30
108	pbkdf2_sha256$180000$S7p9qTpXtQZl$UhjL5kwdK0smnVEwUEdJidQHE6PzGUjnkW4MK/sCQrQ=	\N	f	athi@12345	athi	ra	nkathira61@gmail.com	f	t	2021-11-12 15:01:18.967898+05:30
109	pbkdf2_sha256$180000$HEcEA5Z4p9Fw$ajUh9hzUxOO6bTnmKTDuEEs0aKRB6gQmSXVdpODH7pI=	2021-12-09 16:45:27.390211+05:30	f	rishab	Rishab	Abdurahman	rishabrahman@gmail.com	f	t	2021-11-13 16:36:10.579636+05:30
118	pbkdf2_sha256$180000$dxgYvVA5MGYD$g4lYSHn8un2tYwlSHvHB5DqJCxrYVQrj0wzvhy9axQI=	2021-11-26 16:05:49.235782+05:30	f	saleemkumar	saleemkumar	kumar	rapeba3726@hypteo.com	f	t	2021-11-18 16:45:38.217906+05:30
117	pbkdf2_sha256$180000$fWLgvOzNk5oE$SJflWKLR+idf8kum6vGK0QOMmyG1OmACstFYSsktqJQ=	\N	f	jasdq123	dq	dq	hihohaf119@hypteo.com	f	t	2021-11-18 15:49:18.583885+05:30
116	pbkdf2_sha256$180000$5Va1fjjkB1Px$IzeaI3nrrp5Jn8RLvAdZJkckvN0J82qs1pIMT72G8MA=	\N	f	asifali	asifali	ali	mecig20124@incoware.com	f	t	2021-11-18 15:46:25.207154+05:30
102	pbkdf2_sha256$180000$UHxd7PkZUlJl$8+onhAAE3zBayWRdRTzy8rwbR+rk4mvVlXnbl8222UU=	2021-11-29 22:47:51.635879+05:30	f	Nadeem	Muhammad	Nadeem	meharnadeem007@gmail.com	f	t	2021-11-08 15:24:27.493226+05:30
93	pbkdf2_sha256$180000$CJP12Ltu9azN$7xKZP821ITFTCcbqpB7vWeuXTkwCM9emZf3bWZNprv4=	2021-12-12 10:46:18.681615+05:30	f	VIJESHKM	VIJESH	KM	vijeshkaruvannur123@gmail.com	f	t	2021-11-03 20:54:00.728147+05:30
119	pbkdf2_sha256$180000$V62X1KrpZmkp$XV7SXpSnsUN4lPVOzVnv/nh/CfNu8dnpW1fggm84cfg=	\N	f	dhoni07	dh	7	xedosi6093@healteas.com	f	f	2021-11-18 16:51:02.529117+05:30
121	pbkdf2_sha256$180000$99fGx05Q1wxs$NQ2XVUPlQwN6XFVzMcMvJmkUDyQa1ghjJtTP9k5Rcgc=	\N	f	uvais123s	dq	uvaiss	cenafe9846@idrct.com	f	f	2021-11-18 17:47:05.663289+05:30
122	pbkdf2_sha256$180000$IT7JKxJrAurZ$pknT7AhPDr0crWKXcRwdHsfWYGnDJLehLC2AHDdlYEQ=	\N	f	uvais123sttt	dq	uvaisstttt	ranih37339@hypteo.com	f	f	2021-11-18 17:50:51.586765+05:30
123	pbkdf2_sha256$180000$kcvNb8MQ4Mn4$sv3ZwItJYsT5JjdZbHa//E49aSRTj7d8ToJx3pJlyYU=	\N	f	uvaisdq	dq	uvaisstttt	rivapa7434@incoware.com	f	f	2021-11-18 17:52:52.574682+05:30
124	pbkdf2_sha256$180000$DvnbdVCvmJ7H$vm6vRvkn2A4Q28Ma72bbFULEfT/FBZLjnd4Zek/s2fI=	\N	f	uvaisdqo	dq	uvaisstttt	rivapa74304@incoware.com	f	f	2021-11-18 17:54:01.409289+05:30
125	pbkdf2_sha256$180000$SEKdIvlY2r1O$e+In3eev5cgwhF/TQJYXEilae4jrxHoPvrsMRhIGJKk=	\N	f	uvaisd121	dq	uvaisstttt	fiditin151@idrct.com	f	f	2021-11-18 18:03:34.829925+05:30
126	pbkdf2_sha256$180000$Vrj7OpIF85WQ$cZJOUVsutkjpFoZ6BISYmhnyURDkWJzX1hZlVaj2TjM=	\N	f	uvaisdq123	dq	uvaisstttt	fid4564itin151@idrct.com	f	f	2021-11-18 18:16:57.877718+05:30
127	pbkdf2_sha256$180000$qiAj3upHPGXx$0cyQtmeDd0ioDMt2R8HySniqF+kC/MrYhLRIQtRKF9U=	\N	f	uvaisdq123666	dq	uvaisstttt	fid4564itin15hgfhfhhf@idrct.com	f	f	2021-11-18 18:17:59.529168+05:30
128	pbkdf2_sha256$180000$gBbHBQgd1hPU$B7Z7MvZ9o2+xnVhnMejopWfZfgHH5a4O8Nh+zwvEJ4o=	\N	f	qeqqqrqrrqrqrqrqrrqr	weeqe	qweqweqweq	vikdddncodes@gmail.com	f	f	2021-11-18 18:21:12.250378+05:30
129	pbkdf2_sha256$180000$PNG0leFqmlVl$kbfGEFHLx82xxRmOVoyGIDnr9wKpgB99pfwpgiHdr08=	\N	f	uvais123456	dq	uvais123	hasitap566@healteas.com	f	f	2021-11-18 18:33:44.096597+05:30
130	pbkdf2_sha256$180000$hE1tLakWJolJ$KCOBpO9EQs0n+8GAXMui1omjSOcjFEW1T9wa0Jp1MVI=	\N	f	jasmalDQ	dq	uvais123	micere9741@hypteo.com	f	f	2021-11-18 18:36:22.79087+05:30
131	pbkdf2_sha256$180000$1psBVziIQXqz$dYbkKkktpCHA4nzS6/PAbWeT8Zqf6OGBV1K11V7JRQI=	\N	f	RabeehTest	test	testing	ropeya9437@idrct.com	f	f	2021-11-18 18:43:03.613705+05:30
132	pbkdf2_sha256$180000$sOiKrmCWqLjZ$0Cbil+492Ogkdn3ZFz/eF7L+AkUj6ftIJvYvpK41vf8=	\N	f	RabeehTest123	test	testing	rjihixiy555@healteas.com	f	f	2021-11-18 18:51:55.23348+05:30
144	pbkdf2_sha256$180000$JnmHbbka5Gx2$DlYxy/5eD1HC4u0c7kZLum09LSz20m7Tx3qfiNZJ0Vs=	2021-11-23 16:10:54.742277+05:30	f	alamriyadha	Ramz	Alam riyadha	abdulmuneertsy@gmail.com	f	t	2021-11-23 15:27:51.685138+05:30
141	pbkdf2_sha256$180000$loOrNZh3sKiy$1T4qsWw55ZYBcffLj0Uwn5KxRyjg6UIxwq/hRr8BahM=	2021-11-23 18:05:49.015884+05:30	f	ismailp	Ismail	Pullat	ismailpullatcontact@gmail.com	f	t	2021-11-22 17:26:35.566622+05:30
133	pbkdf2_sha256$180000$8N8QyPWhDRSm$4qnyt31HZUmoF4Zh81glEAfpzwh5LuytvJIWzcvg2sQ=	2021-11-24 21:52:17.266532+05:30	f	sulthan	Sulthan Yousaf Saeed	Bazahir	sulthanfoodstuffs2020@gmail.com	f	t	2021-11-18 21:00:26.038774+05:30
100	pbkdf2_sha256$180000$N8o9Be07Om6R$gx6bhhisimKuscFR8X7K7UQYYxwasyL5VlB/Djj2TXQ=	2022-03-20 11:43:40.198555+05:30	f	mhdunais	Muhammed	Unais	mhdunais774@gmail.com	f	t	2021-11-06 23:21:18.989214+05:30
145	pbkdf2_sha256$180000$NgM6dGsFfwEM$ZzB+6wQNwhLV5qCssrWzlxAiJlDq/on5VGaZ3u+7IfU=	\N	f	haneefa	HANEEFA	JEDDAH	muhammeddhidhil601@gmail.com	f	f	2021-11-23 20:10:20.949804+05:30
152	pbkdf2_sha256$180000$D8ZN0mXda06K$J+47fABOzjp7dXKYnvHGkOpzCqaVxoDZTu90WrjO/eY=	2021-11-26 14:57:32.327779+05:30	f	nyqolokoqo	Gloria	Brooks	takosar577@kyrescu.com	f	t	2021-11-26 14:57:05.845544+05:30
135	pbkdf2_sha256$180000$gcng71IcxbWj$7NPmR9lFS4dtZoqepipSFFhYvuqDoPx183nZx7Oj2kQ=	\N	f	Rabeeh123Test	Rabeeh	testing	jihixiy555@healteas.com	f	t	2021-11-19 08:21:19.319095+05:30
136	pbkdf2_sha256$180000$cc5d6Bee9mtW$/EGi9iCbAMMVeeGXCJCaT32ijNlBrO6J4PAzRXOxZBM=	\N	f	athi1212	athira	nk	athirasruthin@gmail.com	f	f	2021-11-19 10:15:58.825754+05:30
112	pbkdf2_sha256$180000$n0cypIXWcJs7$2PhaJNhEKM16fW8lmOWxhM+6iytMOKHh/4Hdj3xQR60=	2021-12-11 08:43:07.750361+05:30	f	musthafa	Musthafa	must	azamabrostdhanabrostazama@gmail.com	f	t	2021-11-16 20:18:09.596173+05:30
137	pbkdf2_sha256$180000$ZBZ8l9p4rV47$nLW++A3jGtl5WRu2vkSOAmpw+efe+o6jg5ywCuWrET0=	\N	f	viknjasmal1	jasmal1	vikn	jasmal1@vikncodes.com	f	t	2021-11-19 10:33:44.019837+05:30
160	pbkdf2_sha256$180000$mkD0AKqUQU9R$CdTdLoIMxrIFCnVy7/w0gqzCG+5xrymf8iqEnL1kVyY=	2021-12-06 03:03:06.781976+05:30	f	rafeeque1	Rafeeque	1	rafeequeksa789@gmail.com	f	t	2021-11-29 11:31:36.782632+05:30
164	pbkdf2_sha256$180000$GZZkHzszqO35$4fUGv25Mhui0OmPGGuCGx2TuWhdO12/zubvbGQ1Qs10=	\N	f	Mskp55	Sali	Kp	abacusnkdy@gmail.com	f	f	2021-11-30 20:26:30.460857+05:30
150	pbkdf2_sha256$180000$VSCrI93yIWjR$SAq2lon1BwbKkcrENLsmw6JPooBSoxEysBSekcgnMuE=	2021-11-26 14:52:55.577861+05:30	f	benipa	Marah	Oliver	yoxir28038@jasmne.com	f	t	2021-11-26 14:52:04.553354+05:30
142	pbkdf2_sha256$180000$n997vNq8Legb$8VqEXSA8mMNE3H79spUpneFA2Va8TQpXVulPjdzWmBQ=	2021-11-25 15:50:24.638566+05:30	f	Dubaicenter	Dubai	center	ashhadkp360@gmail.com	f	t	2021-11-23 15:27:25.613173+05:30
149	pbkdf2_sha256$180000$ajYcnoNctVl3$ttc/HB0Q35+T64hahmvqBONU0hLu1u9cI4SHTr7Vf74=	2021-12-06 03:54:01.208201+05:30	f	NaifMash	Naif	Mashraqi	Naifmbc7@gmail.com	f	t	2021-11-25 21:03:15.583795+05:30
151	pbkdf2_sha256$180000$p1Z416OyZKVo$bEaTQs4WkOMiG5eqYdfwIrDuJPbrgoQC8OPnwsCS5TE=	\N	f	cavikinu	Sierra	Mckinney	wisovi1461@jasmne.com	f	t	2021-11-26 14:54:36.668333+05:30
159	pbkdf2_sha256$180000$lTF3TIYDeZVN$K4Vx0nCXiVpbpOJUy3Tky6kR4NQept81ujupP3gaeOM=	2021-11-28 15:06:18.046367+05:30	f	firoskhan	Firos	Khan	firoskhanchemban@gmail.com	f	t	2021-11-28 15:05:24.57373+05:30
156	pbkdf2_sha256$180000$2PgIL82gfYoo$N9GoIsVy5U+cxV3ScG0Vub90J5VrArzvtfBbYH1NAkQ=	2021-12-12 04:19:04.084266+05:30	f	Rafeeque	Muhammed	Rafeeque	rafeequecv9@gmail.com	f	t	2021-11-27 01:01:12.773757+05:30
157	pbkdf2_sha256$180000$mrK7d7ZHCOgv$3pMxpQdMfSsTKCE755LMNhmu0l0T/UHPVq2AgIXzqlk=	2021-11-27 17:35:56.958045+05:30	f	Fisthak	AALAM ALFISTHAK	TRADING EST	aalamfisthak@gmail.com	f	t	2021-11-27 14:55:21.455521+05:30
134	pbkdf2_sha256$180000$3YnDmcCIUMAg$ppr86BLKGxT7Ea+3NxIZ+Oa9YEa/yDySPfToFiTviEQ=	2022-03-13 23:23:23.961634+05:30	f	nasrukatti@gmail.com	MUHAMMED	NASRUDHEEN	nasrukatti@gmail.com	f	t	2021-11-18 22:01:15.040778+05:30
153	pbkdf2_sha256$180000$nn9OHKtzgO1v$scqxDPPidT652RXpOOtFLFhodNoW8kIellMmg0x8+Ng=	2021-11-28 22:08:46.3111+05:30	f	Saad2021	SAAD	NUSALIM	atliqbal@yahoo.com	f	t	2021-11-26 15:25:26.922947+05:30
139	pbkdf2_sha256$180000$aFqndl0E7gnO$NJKmmyYFzZlduURHv2NRWKPrHR5nAJklIT8w/+/Pa4Q=	2021-11-29 23:10:45.189706+05:30	f	sarwarnasir	Sarwarnasir	1	sarwarnasir134@yahoo.com	f	t	2021-11-19 19:53:52.643554+05:30
163	pbkdf2_sha256$180000$teymgvV5313b$Q+JfvjakSHFOvU9jdhpSqO+NJ2Tf5M3FdgQOuG0fJRo=	\N	f	Aa12345678	mohammed sufail	sufail	sufailpmb@gmail.com	f	f	2021-11-30 01:54:50.697359+05:30
85	pbkdf2_sha256$180000$uWMigmZTgLWP$xWKYdJKSlFrTp0LDStUji4nfVp1oqCwFsNGz26RVOgA=	2022-01-13 18:02:32.035495+05:30	f	Alzahrat	Samer M Ali	Al Ma'ashi	muhammadalinambrath@gmail.com	f	t	2021-10-26 19:25:59.94637+05:30
165	pbkdf2_sha256$180000$0KZQjCL6FwqG$rBy8hhnasc26pVeYqz6Z6tbjHGDyMHLIcnZGYU7tmO0=	\N	f	Afraayshu	Sali	Kp	salihkpmuhammed@gmail.com	f	f	2021-11-30 20:27:24.579753+05:30
166	pbkdf2_sha256$180000$J2ijZ7lgU5wH$g1FzEY08xnsp50HK+RmaOOvefJVhZAy9Ua1C+VEfezs=	\N	f	SALIKP55	SALIH	KP	CARE.COOKERY@gmail.com	f	t	2021-11-30 21:02:32.17084+05:30
167	pbkdf2_sha256$180000$nCseCdDRWNit$YYlIfH3pgW+HaElm2PgJ4tdikol6AezdFNb7iUJZct0=	\N	f	KPSALI	SALI	KP	GSTCOOKERY@gmail.com	f	f	2021-11-30 21:08:27.4093+05:30
192	pbkdf2_sha256$180000$lhGMobMEDfHq$uFoZRsM6uGWBSgJOUYVOgzo36YZVcXQV1vhoTasbLMs=	\N	f	Sufa7860	Sufail	Sufail	sufailmohammed681@gmail.com	f	f	2021-12-03 15:24:48.108788+05:30
184	pbkdf2_sha256$180000$RZXXwhdzF71c$7VNqhM8ji9N5lDHhgVoh1jlNnP6eVGOJhZRKinrOtGA=	2022-01-22 20:07:06.561843+05:30	f	Daniyalashraf	Daniyal	Ashraf	daniyalashraf40@yahoo.com	f	t	2021-12-02 19:34:00.8971+05:30
179	pbkdf2_sha256$180000$itFomtvdSiXD$ptYQ418qXVI7MKHB7fXczw9aHgl0Dt9jNMADZSZIQIw=	\N	f	TestEmail1	TestEmail1	test	sanapathu24861@gmail.com	f	f	2021-12-01 14:26:39.523711+05:30
180	pbkdf2_sha256$180000$OvVeE9qpjfuF$gY4QhSieBN99hEtpRA81Q8c5dypWi5BDbJaH+H+VEWk=	\N	f	TestEmail12	TestEmail12	test	sanapathu248612@gmail.com	f	f	2021-12-01 15:10:19.013186+05:30
181	pbkdf2_sha256$180000$0fcL6tx9mGR7$XcGiUPDuEnQBvO8x9OZCeWa0LoHfMgaim4N8yux32jE=	\N	f	TestEmail	TestEmail	test	sanapathu2486@gmail.com	f	f	2021-12-01 16:02:09.822497+05:30
201	pbkdf2_sha256$180000$Z50w6LX7Pc2C$GrP05kEz9Jhyb++AozfsENNwIsPEOBuoae7ritwqgyk=	\N	f	محمود احمد	صالح احمد الصعدي	Ano	muhammadislam920@gnail.com	f	f	2021-12-03 22:44:51.741665+05:30
203	pbkdf2_sha256$180000$bWArN4n7K0RA$wGgIkaU0Ls7F3Btii4ny5eilXKfh8CuEPpvOwETa5qg=	\N	f	Sufail786000	Mohhammed	Sufail	sufailmpm@gmail.com	f	f	2021-12-04 14:47:10.911499+05:30
168	pbkdf2_sha256$180000$WjqiM9Bnk6fk$H5q4AChWE9CB3oOLktDmmoznLkUyOXSEA51CWYRCH+k=	\N	f	AFRA65	SALI	KP	nmskkd@gmail.com	f	t	2021-11-30 21:11:16.798776+05:30
155	pbkdf2_sha256$180000$GIfyz37qb8m3$Xm6ZLKOxFUb42vseIHkvrV8PsqXHdkotsFr3UpTpdBU=	2022-03-20 20:15:28.605955+05:30	f	naja plastics	naja	plastics	anfo.naja@gmail.com	f	t	2021-11-26 20:09:32.851823+05:30
158	pbkdf2_sha256$180000$TlCcaJ9uBZWb$RBCwnNhnVDihArOQGZcMEqnKHc8RDV6AOaGFfOHncDU=	2022-03-15 20:06:56.895199+05:30	f	Jaleel	JALEEL	JEDDAH	jaleelpochi@gmail.com	f	t	2021-11-27 16:40:19.218817+05:30
177	pbkdf2_sha256$180000$XbY5iSKsUUmP$FFTsCqWKcuIZfc6XQLggsfpXNTvzNpx8o4bIbwq9hJA=	2022-03-15 21:42:42.222645+05:30	f	tastyshrimp1	Shafeeq	H	tastyshrimp01@gmail.com	f	t	2021-12-01 13:45:45.430672+05:30
170	pbkdf2_sha256$180000$OvUXOqEug1BU$c1zVcrqTSXHfiCkGPZgOVVgz9N2Q1XMUAJbBXOAn3Bk=	2022-04-16 12:33:06.110734+05:30	f	nizam123	Nizam	V2	nizan9097@gmail.com	f	t	2021-11-30 21:15:32.260699+05:30
138	pbkdf2_sha256$180000$JRJrgdaqYEmx$zrUuFZ8i+fbrW1WYiNyykeM0ozf7SkgK7hDTi8OP4zs=	2021-12-09 10:49:00.097919+05:30	f	viknjasmal	jasmal	vikn	jasmal@vikncodes1.com	f	t	2021-11-19 10:57:38.384271+05:30
172	pbkdf2_sha256$180000$qb0adgI1E3CV$ktai3WvKOvu7168SfRnTNdqojvVmjD82GThK8xXeIOo=	\N	f	Nizamchettali	Nizam	Chettali	Nisamchettali@gmail.com	f	f	2021-12-01 01:09:53.641204+05:30
204	pbkdf2_sha256$180000$ArhNyaN0gTj4$cFfN/hNKeYsiotu2bPvc6GBMre9cAC5PwtyD0/oaGYE=	\N	f	Mohammed Sufail	Mohhammed	Sufail	sufail7860@gmail.com	f	f	2021-12-04 14:48:07.685899+05:30
176	pbkdf2_sha256$180000$OJcphbtuZYsQ$jrrgE2OFs6TUw6kxTCCNgT0OZfft8KEeJq1SRuFKz7A=	\N	f	tastyshrimp	Shafeeq	H	tastyshrimp0@gmail.com	f	f	2021-12-01 13:41:16.019963+05:30
171	pbkdf2_sha256$180000$c0cEjjN6GBmM$E6ahdqpiyfmj1Y7BZ2sjDYzQaF1XffrERW8lSJJcEGc=	2022-05-11 22:39:05.528919+05:30	f	basheer	Basheer	V3	basheermuthanoor684@gmail.com	f	t	2021-11-30 21:24:09.648142+05:30
147	pbkdf2_sha256$180000$vOtBGOfcPRBj$xYAMGudrgAdbTdU8k5PnUKG6KhzhlYHrVxHot9mhaf0=	2022-07-12 14:26:57.374383+05:30	f	fadelmt	FADEHL	AL-TURAIKI	airfrostest@yahoo.com	f	t	2021-11-23 21:43:11.536788+05:30
198	pbkdf2_sha256$180000$LWmhZGsJiSWr$I2EUGvUi0WipzYAuBJr5WnxHYsfsGlZK9b0gjS0GqFk=	2022-05-17 01:45:33.880293+05:30	f	muneerfajar@gmail.com	Muneer	P	ajlanvellankodan@gmail.com	f	t	2021-12-03 22:05:52.923558+05:30
146	pbkdf2_sha256$180000$k12T1zFH2sv8$9VC2BJC1bcStK31/rP93mlxOiJgpe+3Zi4XBPCDs5X0=	2022-07-11 23:00:25.92253+05:30	f	haneefa1	HANEEFA	JEDDAH	muhammedshidhil601@gmail.com	f	t	2021-11-23 20:23:35.19397+05:30
161	pbkdf2_sha256$180000$MyMslqDWL6Hk$9/gBtC/vXgXZBtjSI/n99+mRrlqU11YdNFVSw86RmCk=	2022-07-09 22:58:14.121557+05:30	f	adminsijo	Sijo	Sijo	itsmuytha@gmail.com	f	t	2021-11-29 21:50:19.022938+05:30
162	pbkdf2_sha256$180000$6SWJxczZjNn8$b9QVGZZNOfVKRmzwQq8/ye+2bmrBctd3ftm8I3di3w0=	2022-06-17 18:04:43.289465+05:30	f	MAQSOODAHMAD	MAQSOOD	AHMAD	ma3690596@gmail.com	f	t	2021-11-30 01:36:25.184699+05:30
182	pbkdf2_sha256$180000$GNSG6xOCx1ni$rCyjDq62VRANcR1aREDwsJfRX6NRxr1GEGmF/YLGMD0=	2021-12-02 04:06:08.813773+05:30	f	hashimcmdd	Hashim	Cmd	noufalnoufu232323@gmail.com	f	t	2021-12-02 03:55:02.640773+05:30
175	pbkdf2_sha256$180000$vn8xFW15ELdn$HyLbweWdOrRLOzQRXk8UcVxBKVMGokQHLCN5Q+MlQQ8=	2021-12-02 12:41:04.677193+05:30	f	ibrahim	SS	AS	salim.yousuf@awanalmadar.com	f	t	2021-12-01 12:50:42.464467+05:30
173	pbkdf2_sha256$180000$eHf4ECPbuUyg$3kBc+6P73fqfqr1GhFfFh/mhVdUWUx8H62X8AddJyv0=	2021-12-25 21:51:32.554596+05:30	f	chettalinisam@gmail.com	nisam	chettali	chettalinisam@gmail.com	f	t	2021-12-01 01:12:54.806902+05:30
187	pbkdf2_sha256$180000$qWaiUGgIj4h6$TxjFh+H3TkEFoK05pZnn9SOxQHHSeNtswU5USNXXzsw=	\N	f	Fajarnada	FAJAR AL NADA SWEETS	SWEETS	fajarnadah@gmail.com	f	f	2021-12-02 21:07:10.151765+05:30
205	pbkdf2_sha256$180000$4fk42p2r69HQ$Kos+HGb1xscWnyLBdO+l7FAjfGFAvB1B9csOmySMqaE=	\N	f	Rahanas	Rahanas	Mk	mkrehnas@gmail.com	f	t	2021-12-04 15:06:05.601965+05:30
178	pbkdf2_sha256$180000$zbBZ7NIm3Ifp$JKLAzfJCIZpIzk5ipT3UoHT2/SDspxAukD98qD7jU0g=	2021-12-02 17:02:19.431826+05:30	f	emailverifuser	emailverifuser	test	danarin687@terasd.com	f	t	2021-12-01 14:03:58.975398+05:30
193	pbkdf2_sha256$180000$ezhFsxAWvQAB$JWXeIyiDsHNkrwiWIqKSj1Jhh3FZQdSWpV/27A7BtdA=	2021-12-03 18:24:16.605515+05:30	f	muneerk	muneer	k	ajlanfajar@gmail.com	f	t	2021-12-03 18:19:41.416332+05:30
194	pbkdf2_sha256$180000$RoEeI1oXZfZK$piop0IHl23OuEky3PU+sc9td9mPfi2f28TqVE+YltKU=	\N	f	jafarvkfajar@gmai.com	Jafar	vk	jafarvkfajar@gmai.com	f	f	2021-12-03 18:30:23.187516+05:30
185	pbkdf2_sha256$180000$t1CNEivXDfsX$KfxD9FQ1cuGXxY/G9bg6oCAFgdDPAYDv0imPCaIuEnY=	\N	f	Daniyalashraf786	Daniyal	Ashraf	daniyalashraf40@gmail.com	f	f	2021-12-02 19:39:10.119354+05:30
196	pbkdf2_sha256$180000$3aOKoPUCTVFI$iOnHXcLBWKYSFrGT0omeMAiZevkM1tW/5u2slzvl4xs=	\N	f	noushadfajar@gmail.com	Noushad	p	noushadfajar@gmail.com	f	f	2021-12-03 18:36:48.099878+05:30
191	pbkdf2_sha256$180000$uLhncYchoUc0$wEaZP2uA+HhsSOhBei0WGb2MxO475D6IpOmLHLGNz7k=	2021-12-03 11:01:30.34739+05:30	f	talaeajuhani	TALAEA	JUHANI	talaeajuhani789@gmail.com	f	t	2021-12-03 00:56:50.523826+05:30
174	pbkdf2_sha256$180000$Lclknh31ro74$96ZAGon8WSBDobo/HCfzt/nciknaX5ZshEZu2PGrais=	\N	f	Hashimcmd	Hashim	Cmd	hashimchenni59@gmail.com	f	f	2021-12-01 02:52:47.176224+05:30
199	pbkdf2_sha256$180000$e7VszLMSkhb7$eGVmL7MzaleKL8vfxLUATt+Sk9X4p/0HmzsIJ24okw0=	\N	f	Mahmood	Salahalsaadiest@gmail.com	Salahalsaadiest@gmail.com	Dizkraag25@gmail.com	f	f	2021-12-03 22:37:16.807205+05:30
200	pbkdf2_sha256$180000$rM5fABorRBPF$DvEafDxpiqPffRFEYAZIhfBXyO5c54k/76kTVsSA0Fg=	\N	f	DIZKRAAG25	Salahalsaadiest@gmail.com	Salahalsaadiest@gmail.com	salahalsaadiest@gmail.com	f	f	2021-12-03 22:38:02.326997+05:30
202	pbkdf2_sha256$180000$SUkltEdJyQqU$8MZBH5i1iH7g/jT4tmiQJBXvfCKXlly86h8dJvwauKo=	\N	f	Abdulshukkoor	Abdul	Shukoor	shukkoorkms@gmail.com	f	f	2021-12-04 05:44:05.702874+05:30
140	pbkdf2_sha256$180000$vHitV6WRtxDy$QT3KZldYI2tdkFIOcCDoxmt4Am7+r3iKcTKDPcbBuQ0=	2021-12-17 15:51:24.751408+05:30	f	sahadpayambarodan	sahad	payambarodan	sahad6161@gmail.com	f	t	2021-11-22 16:19:24.890763+05:30
207	pbkdf2_sha256$180000$9l9xFQW7cQ7g$qhoxTIywy0Zj/ggpaF3OpnUk6VeSdILusUqWvciqra0=	\N	f	Harjascp	Harjas	Cp	harjascpcalicut@gmail.com	f	f	2021-12-04 15:20:22.850586+05:30
195	pbkdf2_sha256$180000$MBElh8CCsQ7D$Rf523Mms0D/bAjS2K6oJh6MfUoQKfibXHP8fWjIPhjw=	2022-02-17 15:01:14.498822+05:30	f	jafarvkfajar@gmail.com	jafarvk	1	jafarvkfajar@gmail.com	f	t	2021-12-03 18:31:35.986153+05:30
197	pbkdf2_sha256$180000$TuDjijVVrMCg$F8VzJSVCP3bHJW+fVQ9hVI9n60QptZs4eQDxSTTjUCg=	2021-12-31 09:44:12.059385+05:30	f	noushadpfajar@gmail.com	Noushad	p	noushadpfajar@gmail.com	f	t	2021-12-03 18:38:49.666099+05:30
208	pbkdf2_sha256$180000$udBEyG1y0sRf$JVfc6nEtMGaIkhann9gzG8VIhrGLOlkFR7siOVLgbnY=	\N	f	fahadulhaq	fahadul	haque	fahadulhaq@gmail.com	f	f	2021-12-04 15:36:44.814733+05:30
239	pbkdf2_sha256$180000$cxpKTxa2MV9C$4cm4GYqKDZYIWrBj4iO+ShFr45qdS61aGUsTN25Qx7k=	2021-12-13 12:21:34.757471+05:30	f	Rafeeq	Rafeeq	P	kunhupkn786@gmail.com	f	t	2021-12-10 19:10:27.276273+05:30
218	pbkdf2_sha256$180000$AZbnCkBOwrI7$QjoiStKJQhHwsTOUzD6ru5npHCugz504WNSxPTtdoQQ=	2021-12-11 18:53:42.721999+05:30	f	desertbluehail	desertblue	hail	desertbluehail@gmail.com	f	t	2021-12-06 09:42:33.780232+05:30
211	pbkdf2_sha256$180000$mGDfy9Hf0Nf3$ugNsNqTFR8O9Bz6u1+tEhCPaP8e8dymMQ7SKT/qZ5yc=	2021-12-09 12:37:20.984316+05:30	f	Sajeena(removed)	Mujeeb	Rahman	mujeeb53545Removed@gmail.com	f	t	2021-12-06 00:36:27.599604+05:30
216	pbkdf2_sha256$180000$uX9lzwIhs0DB$+v8XQYnwe2/j9Qs65BBJZkLxMjL02NvsiB5je4b1tHU=	2021-12-09 22:04:13.930782+05:30	f	bestbuyhail1	bestbuy	hail	bestbuyhail1@gmail.com	f	t	2021-12-06 09:24:25.003325+05:30
221	pbkdf2_sha256$180000$xdSFa4VmntQr$qRTXVpoFfQOM7nbKyg+yBx/p6W9pG9Wcp+euWGPxPds=	2021-12-08 19:42:31.319287+05:30	f	storekeepermalbisi	storekeeper	malbisi	storekeepermalbisi@gmail.com	f	t	2021-12-06 09:50:38.638334+05:30
209	pbkdf2_sha256$180000$JTpE9Xa4foVG$MB2TTI7DEHL5GqvAkmFwF44/KYjB9MPweS1dEyvaS9k=	\N	f	Nomanmajeed	Noman	Majeed	nomanmajeed721@gmail.com	f	f	2021-12-05 10:52:32.947514+05:30
226	pbkdf2_sha256$180000$I1sPxmloi9zd$v8X0qv0Dvr8236qcDsFnDHdVgHFYTz7kol007xX55JA=	2021-12-08 20:44:03.935784+05:30	f	pixelprint	Noufal	P	pixelgraphicsksa@gmail.com	f	t	2021-12-07 01:19:09.748504+05:30
210	pbkdf2_sha256$180000$cyDjPqRIKH85$tKswhlVBpi0FiakbLlO1ge7VmbfiWdTvLwPT2yUbBaM=	2021-12-06 22:15:59.393305+05:30	f	Basithp	Basith	palangat	Basithpalangat@gmail.com	f	t	2021-12-05 22:06:06.054363+05:30
229	pbkdf2_sha256$180000$xONbO22Ninvd$KXiUkija8tlXpIw8eRs0mAgbnnJedgJ/stNvpPD1UAM=	2022-03-12 09:58:23.250988+05:30	f	calicutgrills	Calicut	Grills	calicutgrills@gmail.com	f	t	2021-12-08 16:56:46.587277+05:30
238	pbkdf2_sha256$180000$0IRrhMXKcZdF$tsLoZSEyDMacJ+i0dSxHhC+npf8B+8EEsuWLPLvhSKs=	\N	f	Rafeeqp	Rafeeq	p	kunchupkn786@gmail.com	f	f	2021-12-10 19:04:27.524694+05:30
225	pbkdf2_sha256$180000$lgRBdNliKqjr$Sq/vnren37Gk3sdgucDomMtDJL3nSv/T07bcXradW9A=	2021-12-07 20:35:35.161504+05:30	f	firoz123	Firoz	K	firoz38584@gmail.com	f	t	2021-12-07 01:15:32.322453+05:30
214	pbkdf2_sha256$180000$XacRLRzxvVTU$YIRkWHehwIxzithsXhz491MNvoVyDhBGkRQKIXE7h/o=	\N	f	Compunet	Compunet	Dawadmi	compunet2009@hotmail.com	f	f	2021-12-06 02:27:56.122696+05:30
215	pbkdf2_sha256$180000$KVRGAKYTQX5y$FNysm1RexW6wo2AYSVZ1D9LoOMB3FHORlvlwuuMpdhk=	\N	f	bestbuyhail	Bestbuyhail	1	bestbuyhail1@gmil.com	f	f	2021-12-06 09:20:43.583957+05:30
237	pbkdf2_sha256$180000$0NsDrMoTlycF$JU/Wsinmt5hvl66af0ifZjA8BKLs6mQxxvaC8eZF34I=	2021-12-09 17:11:54.512207+05:30	f	anshajebin	anshajebin	anshajebin	loyisev553@gruppies.com	f	t	2021-12-09 17:03:06.925808+05:30
228	pbkdf2_sha256$180000$Mx7DT8vlhnWw$7hWjLyiWkCxmbjKjTwRIB25BH/PSBNsa9ijwmoCt+9w=	2022-03-13 01:05:41.1252+05:30	f	majidhussain	Majid	Hussain	Arhabmajid@gmail.com	f	t	2021-12-07 20:23:39.065839+05:30
224	pbkdf2_sha256$180000$vAXpwafMURz6$WJwZs4mlAfDHrzzXFOusA/pCpYTMJfJVk08TUJAESiM=	\N	f	fahad123	compunet	dawadmi	fahad.haq@hotmail.com	f	f	2021-12-06 23:29:23.750865+05:30
212	pbkdf2_sha256$180000$OfZamA5EqSqN$Y8E1o/7/K/bTCiRQ+3lQEzciL1h7sbXHRuCc4xuc27k=	\N	f	Basithuk	Basith	Palangat	basithbinhassan@gmail.com	f	f	2021-12-06 01:36:31.175267+05:30
213	pbkdf2_sha256$180000$A4hxbeC3mucl$ItTORzOOcISWeVTEjQLU3atiw9MTyqfwhqFGQF4hExU=	\N	f	__Basithuk	Basith	Uk	Basithuk7812@gmail.com	f	f	2021-12-06 01:42:47.714551+05:30
217	pbkdf2_sha256$180000$GEjnt9lZaw6i$tc5QGs6te7pPxkomUdD2ENjr6AQs5eVneganEXfYnI0=	2021-12-17 01:22:38.900274+05:30	f	bestbuyburaidah	bestbuy	buraidah	bestbuyburaidah@gmail.com	f	t	2021-12-06 09:30:27.845602+05:30
169	pbkdf2_sha256$180000$RTRbd0TeDFX7$QDOxeBwvEI6guNVZinYJTXxbl6/fTdJK0qCr3O78niA=	2022-05-11 15:55:08.845308+05:30	f	shameer	Shameer	V1	sshameershameer591@gmail.com	f	t	2021-11-30 21:12:57.803226+05:30
189	pbkdf2_sha256$180000$cXjWJD1z0rl8$nTvYfEczMwcuhHamRQaVdjQfaX5kPr4Hhs46HwWlFYs=	2022-05-11 15:05:42.970447+05:30	f	saudikitchen	SAUDI KITCHEN	EQUIPMENT	info@saudike.com	f	t	2021-12-02 22:31:44.081608+05:30
186	pbkdf2_sha256$180000$69NfUzy9NUdm$7aLtORD1tI7UJ7U91YlsJea9mLI0Rxbzg6J9MxTEjmI=	2022-06-01 14:33:42.297751+05:30	f	babu123	Asmal	Babu	asmalbabupkl173@gmail.com	f	t	2021-12-02 20:44:20.299711+05:30
220	pbkdf2_sha256$180000$P2hR4Lz8Wjuq$+VsXrfWanDbJvh2RgmxZxgrxeRQfRDszGEM0UNAndnM=	\N	f	malbisiriyadh2	malbisiriyadh	2	malbisiriyadh2@gmail.com	f	t	2021-12-06 09:48:26.797905+05:30
230	pbkdf2_sha256$180000$pmOzZ5DwR8sm$Gf8sO3TiiCbTpIMFS36OGpLJi/RCUxQyfNFrNtKmj90=	2021-12-09 23:35:15.387978+05:30	f	samy123	Samy	s	samysafa450@gmail.com	f	t	2021-12-08 17:53:24.263908+05:30
219	pbkdf2_sha256$180000$0lbUhsAbNpK9$EXfTxF2xw8C9TiX/QzSMiOGL5miSYL8vm7ue/gaI/qo=	2021-12-07 22:20:27.251272+05:30	f	malbisiriyadh1	malbisiriyadh	1	malbisiriyadh1@gmail.com	f	t	2021-12-06 09:45:27.203451+05:30
227	pbkdf2_sha256$180000$9mXt4eTnK5NA$CQyAILG99p2OEJxws7ND3+lKqk9uKtlcZ3RuBhDw5uE=	2021-12-07 18:08:54.988448+05:30	f	impakt	Yaseen	Vk	impaktadv@gmail.com	f	t	2021-12-07 01:21:00.965461+05:30
222	pbkdf2_sha256$180000$yG2AwrWqvT1c$WjYhbXefxAu9xvufUi0h/iDSKsg5/wIhC9ljts1YT3E=	2021-12-10 19:11:49.479181+05:30	f	thameem	Thameem	T	nevelal798@shirulo.com	f	t	2021-12-06 21:16:29.513718+05:30
234	pbkdf2_sha256$180000$qaVm2rG4BnHd$qn4wOkrvKqwO/ZXNT3KtmXWhFKgWDfCaD3XV62e2NSY=	\N	f	Test 123	Test User	Yser	gekedi6397@mediafate.com	f	f	2021-12-09 13:30:10.724449+05:30
231	pbkdf2_sha256$180000$wJGx2b61Cjtl$Zk0NOoBsDxbE6SwarHZAJ2dv2Euyc4TdbeWFny9aXyI=	2021-12-09 13:09:34.865794+05:30	f	bestbuyburaidah2	bestbuy	buraidah2	bestbuyburaidah2@gmail.com	f	t	2021-12-09 12:14:06.094421+05:30
232	pbkdf2_sha256$180000$FKOobds2QzmH$i3/tYrEusy20QD2GK8D/2cpKiHLJu9ibu4bx9Lx6NPg=	\N	f	Jasmalmobiletest	Jasmalmobiletest	Test	heliyet148@mykcloud.com	f	f	2021-12-09 13:11:16.194659+05:30
235	pbkdf2_sha256$180000$0d9mpCfkCPtd$npQrASCNWFjtrC2sxcQrNpoUVGiQqICWRB1HU+mVQV4=	\N	f	Test 123456	Test Usertt	Ysera	wanev89605@ningame.com	f	f	2021-12-09 13:38:50.807321+05:30
240	pbkdf2_sha256$180000$JBfnYysqg7Ly$jUxmFKBXJYyD2DCkwkFKRJT6gg0qwOXY6I+komZ5dp8=	2021-12-11 22:21:13.961355+05:30	f	blacknwhite	Black	And Black	ameenalisales7@gmail.com	f	t	2021-12-10 20:03:50.172955+05:30
241	pbkdf2_sha256$180000$DKMhRjhRUKGu$bZ2plctgh8XT3EFrbAG4dMvl0/boPC8iieJH6TGcYoE=	\N	f	Mintu123456	Mintu	Mia	mintumiah986@gmail.com	f	f	2021-12-10 22:30:33.18789+05:30
248	pbkdf2_sha256$180000$cHSn42a9qMro$7h5POJc7DXdhSok9jQ9Izo2NKAQHuGluS02S1j1AY2Q=	\N	f	jalalaliahmed	JALAL ALI AHMED ATTIEF	Est.	attiefjalali10@gmail.com	f	f	2021-12-14 23:24:06.806916+05:30
242	pbkdf2_sha256$180000$I438MtZrqP1Y$JtiWKJtYYYkOgA5Ycxcoj7JT3XE5mhKeshANR/p913s=	\N	f	Miya123456	Mintu	Miya	miyam7058@gmail.com	f	f	2021-12-10 22:40:48.417764+05:30
244	pbkdf2_sha256$180000$yksFdHAxZp8M$LNYWvcFNKhOISXfpDF92BNaZAbT6wiJR+BZocSRmJHk=	2021-12-12 14:42:48.888347+05:30	f	awnnama	Awn nama	Sales	awnnamasales@gmail.com	f	t	2021-12-12 14:38:00.263659+05:30
245	pbkdf2_sha256$180000$epw54q6MAnI9$+eTAEd+16H1QhZ/CiELD6xNA4izTT11pKgHbWTLSqIw=	\N	f	Zohaib	Zohaib	Khan	zohaibikhan045@gmail.com	f	f	2021-12-12 23:23:41.82237+05:30
246	pbkdf2_sha256$180000$5wbVSBBX0ebD$CygJo6P/c4MeU4sACltJSCFF807wvhJK4fEWlI4BNLY=	2021-12-13 15:27:41.593158+05:30	f	new123	new	123	yehiy43497@mediafate.com	f	t	2021-12-13 15:14:23.04245+05:30
247	pbkdf2_sha256$180000$QIJRIXreWDDG$NHjlnKVjgAVE1KD8yxN2+X38ByvNJOJLB03QnhasaDA=	2022-01-31 00:27:56.271072+05:30	f	Zohaibikhan	Zohaibikhan	Khan	zohaibkhan045@gmail.com	f	t	2021-12-14 21:07:19.922106+05:30
250	pbkdf2_sha256$180000$bIONHXrlqMiY$J9p2MGEV+1zBOzglLIzV1dn2ioQMB6JHYNOfkQvJnqw=	\N	f	Jijo Varghese	Jijo	Varghese	Jijov333@gmail.com	f	f	2021-12-16 00:34:04.776832+05:30
284	pbkdf2_sha256$180000$TOZzs0RHHO2P$sTnUbJXQPjGdqBXahuVYvJUSJP1jt+rHqE45M0Loqog=	\N	f	AZAM786	Don	Sv	aa6058607@gmail.com	f	t	2022-01-03 01:19:32.884856+05:30
262	pbkdf2_sha256$180000$GN2oPkfa3VC9$VXIFoVVTL59aA0b5mepIB6F+pGLV3s2fIkqVUEG54X8=	2021-12-23 15:56:10.002842+05:30	f	ummert	ummert	T	mekim50816@veb27.com	f	t	2021-12-23 15:55:38.275356+05:30
255	pbkdf2_sha256$180000$xK1NFxSgsSXy$TYDbCCM6cm8gWCbkJfQvi8ymbX40WRIc+ddCTF+/67M=	\N	f	Jijovarghese	Jijo	Varghese	Jijoksa5656@gmail.com	f	f	2021-12-21 01:22:21.11425+05:30
282	pbkdf2_sha256$180000$8jVGloAE2Jmo$eoTidgyoSTz9Yp5oLeenU/+h2meXYkVQLc4zgovS+T8=	\N	f	Zain78	Zain	Mehar	za073274@gmail.com	f	t	2022-01-02 23:46:11.472887+05:30
288	pbkdf2_sha256$180000$GHFQkL559CQA$uJ6UsFqbo+T2dWlHYaYJUO631gLbtQsu4nHby5HNFN4=	\N	f	Mehar5426q	mehar	mehar	MeharMAQSOODAHAD5426Q@gmail.com	f	f	2022-01-03 22:46:14.634708+05:30
257	pbkdf2_sha256$180000$7X5mB2wr10zu$3Q2WgCwtskY/a7CwWE8PRbFdTx8GJdHDs9soVAeY0KU=	\N	f	Aftablkhan	Aftab	Khan	ak32552202@gmail.com	f	f	2021-12-21 13:00:12.63172+05:30
274	pbkdf2_sha256$180000$OIOUQV8GQV5J$Uuww0lpQpHIDbVVPQ8vvox1Gom20aWPAVXjQTYzZFpU=	\N	f	Rabeeh9961	Test	Last Name	jiyab43656@veb65.com	f	f	2021-12-28 18:00:44.351409+05:30
278	pbkdf2_sha256$180000$pjUXE68jj8qm$bjdwQNKfd0WH0hzZB2eU+tJ0BmZVaif9uxReKDabhZc=	2022-01-17 17:37:53.113552+05:30	f	sihabpalliyath	Sihab	Palliyath	sihabpalliyath786@gmail.com	f	t	2021-12-31 00:56:07.022788+05:30
268	pbkdf2_sha256$180000$KBrfvG1rYOVE$E/TWTer+k8ukQAVuGUVEJ9k6Z/m82IvKCI/q0jfPKHM=	2021-12-29 04:25:51.170718+05:30	f	alrabei80	alrabei	80	alrabei80@outlook.sa	f	t	2021-12-26 13:31:01.817369+05:30
254	pbkdf2_sha256$180000$MHuiaAaabC6j$FufGxkQBAR641cOCnQqsQc1QoNTYV5eIB1BzgumblA4=	2021-12-21 16:57:24.013622+05:30	f	haskar	Haskar	K	haskarkanchirala@gmail.com	f	t	2021-12-20 20:53:48.239735+05:30
259	pbkdf2_sha256$180000$PokpVmXQz6hB$5cBLNXCVRZwn5kn/5hxcjgAnV02USTOsuFOpZcvjFMM=	\N	f	Jijov2021	JIJO	VARGHESE	viknjijo88@gmail.com	f	f	2021-12-21 22:14:54.788158+05:30
253	pbkdf2_sha256$180000$D49q4YM4OAcS$vK8AvQ7dtFqmOUq8FfjsO+/aK6s0bwRnD8NntSFFSXs=	2021-12-18 17:33:53.262943+05:30	f	fajarnadaa	FAJAR	AL NADA	bavavellamkodan@gmail.com	f	t	2021-12-18 16:26:31.113145+05:30
275	pbkdf2_sha256$180000$sU1F3LsA0CoG$3LaPc/wLV6ZxhXjSA9EWMyAJ8i5dgIAFra+EYJnK/dc=	\N	f	Testoutlook	Test	Vikn	testvioncodes@outlook.ccom	f	f	2021-12-28 18:10:51.34984+05:30
223	pbkdf2_sha256$180000$lhEhT898yZjB$pmREcTYhQxybrvmfv3fXcppVxRu6bSby1VOXEu4PsoY=	2022-03-17 14:41:08.16432+05:30	f	jazeera	Jazeera	Center	jazeeracenter01@gmail.com	f	t	2021-12-06 21:27:13.431066+05:30
243	pbkdf2_sha256$180000$huQ3NVuysesw$Gc9J8T0N8cUU4i+H3QGV9t4b6qAfrglSAxQrP8ZZC+4=	2022-03-29 00:44:23.710038+05:30	f	alhanoof02	Alhanoof	Sales 02	alhanoofsales02@gmail.com	f	t	2021-12-10 22:45:54.955238+05:30
236	pbkdf2_sha256$180000$rWuu17bxthma$SGFAut6IqD8VT86W0FLbxoKKR9lZbb3wGS/MWGQXo64=	2022-04-22 20:12:36.551529+05:30	f	alhanoof	Alhanoof	Sales	alhanoofsales@gmail.com	f	t	2021-12-09 16:51:59.180903+05:30
270	pbkdf2_sha256$180000$GSqdpRf9RqDw$gOlfORDZgy+bPNjhLIxJkyMKh5DN8ynDsQbXtSMV2Uc=	2021-12-26 18:25:06.465585+05:30	f	haildemo	hail	mirror	shazmkd780@gmail.com	f	t	2021-12-26 18:22:15.162753+05:30
261	pbkdf2_sha256$180000$yn4yWkpqHyWk$milme0fs0ma4NA0dCp9DsjZb8L+2B9sCzWNeSDqVYjQ=	\N	f	bbcrakha	bbc123	bbc123	nizarknpy786@gmail.com	f	t	2021-12-23 15:44:30.344667+05:30
265	pbkdf2_sha256$180000$Xt2p6AFoYA04$/ahLHvpbMQCTjDsxXi3XoJcnZQu30GKXXBHTK0DIC5U=	\N	f	SAFWANKK	Safwan	Kk	kksafwan1994@gmail.com	f	f	2021-12-25 14:20:45.1532+05:30
287	pbkdf2_sha256$180000$4JoOf3Ne3fS5$FRHqomwPsMDxox+ukPhKTb0DrwshQsMED+VSxuifPhg=	2022-02-19 16:52:12.768172+05:30	f	hameedkashi	Hameed	kashi	kashihameedkashi@yahoo.com	f	t	2022-01-03 18:56:15.465822+05:30
276	pbkdf2_sha256$180000$AEefxuvF0Kf0$9alDrOpxBC2zcgkVBakBf1fuvoun5M9dOBROlRfdRIw=	\N	f	Outlook	Test	Vion	testvikncodes@outlook.com	f	f	2021-12-28 18:16:04.012939+05:30
256	pbkdf2_sha256$180000$kdDpP8glFCre$1MFXUFSkm/lMvgxzZbx7c2YGWfmYnYXwY/IZqihJZ3U=	2022-01-14 22:03:01.297908+05:30	f	nazalnas@gmail.com	MUHAMMED	NASRUDHEEN	nazalnas@gmail.com	f	t	2021-12-21 04:59:12.751216+05:30
251	pbkdf2_sha256$180000$Mh3V8GWD26yf$5dhCuE1uEWnPphJuXXK/ZDRDuc3qR2xaazrqUs0UFDM=	2022-06-12 21:35:24.497994+05:30	f	mishalsaad	Mishal	Saad	akebraheemkutty@gmail.com	f	t	2021-12-17 18:53:18.434352+05:30
252	pbkdf2_sha256$180000$AIRpv1YG1Lwj$MO31GepP7/pC63X0Jy3pa1UE5V6YhsDWZyGexSQkbzc=	2022-06-18 20:15:06.234809+05:30	f	hussain	hussain	moh	mcntr250250@gmail.com	f	t	2021-12-18 02:30:04.987176+05:30
233	pbkdf2_sha256$180000$nuKHbWvRk7of$V7P2Emxfag1iofLLYNtix5DokDvv7jjfjQilJwBB4OQ=	2022-07-06 15:15:09.712073+05:30	f	Sajeena	Mujeeb	Rahman	mujeeb53545@gmail.com	f	t	2021-12-09 13:18:27.056408+05:30
281	pbkdf2_sha256$180000$vyd80OpCQ4wL$kt4cY94LQidAg5wFb5uEO5Tqz5jxTw/qjDmAkGOXxPw=	2022-01-09 19:39:49.547514+05:30	f	Islambaba	Muhammad	Islam	MuhammadIslam5128@gmail.com	f	t	2022-01-02 13:49:54.742179+05:30
277	pbkdf2_sha256$180000$lYPjeosFJ1eh$1ii28vNG1uZ2GpGP6+Nwc2aSGbL6jKnsvhID/Ovfyl8=	2022-02-22 19:19:36.725032+05:30	f	alsanad	Alsanad	Supplies	alsanadsupplies@gmail.com	f	t	2021-12-29 21:58:10.621396+05:30
258	pbkdf2_sha256$180000$QuCi52t0vsi3$TBTVTQyDgSu4xkvoB+XBLYQEBCfIQ0hRLpLULb5Y8G0=	2022-01-14 00:12:12.09929+05:30	f	Aftabkhan	Aftab	Khan	ak3255220@gmail.com	f	t	2021-12-21 13:09:21.673761+05:30
279	pbkdf2_sha256$180000$907LhrFdVKyM$/y+3Je6ejvMOnMqOGqVtN8gWmjnoMxXvX5rlVTkJi4Y=	\N	f	Islamkhan	Muhammad	Islam	dizkraag78@gmail.com	f	f	2022-01-02 13:03:58.409501+05:30
280	pbkdf2_sha256$180000$WVuRbe1kdK7z$HoYGy+qZmxXi0kM67b1KUqgwNgAKUr2nGDlutgpN5TE=	\N	f	Islam_ag20	Islam	Khan	TRADINGESTOFFICIALLY@gmail.com	f	f	2022-01-02 13:24:45.377634+05:30
283	pbkdf2_sha256$180000$ajoXf92SJIzY$77XohAnWXXu1NEdr2Bz0fRPUwOazafGlA8tke1ZrgAY=	2022-01-02 23:54:45.037842+05:30	f	Meharmzain	Zain	Kahn	Za07327477@gmail.com	f	t	2022-01-02 23:51:32.093346+05:30
285	pbkdf2_sha256$180000$BdoeYAi3wurv$ZHpxs00H/MpAaEkzFe65284I5FDpSjbo71QkHVQQNZ0=	2022-01-03 01:26:35.878582+05:30	f	AZAMM788	azz	Mmm	Azamm78600@gmail.com	f	t	2022-01-03 01:25:54.563061+05:30
286	pbkdf2_sha256$180000$69TaML1TV4VB$I2oWsfuurgAfKYpcc+zYRSmsl1N/yai70udFyL0wvyU=	2022-01-03 02:48:00.362943+05:30	f	HAMZA786	Hamza	Bahi	meharhamza6846@gmail.com	f	t	2022-01-03 02:47:19.997618+05:30
267	pbkdf2_sha256$180000$lB3TcYJZBcze$7iRHOk4D7p9lVa5/LYfzMyQWf2834jbf/3Ii2gLui9M=	2022-01-03 22:08:47.23165+05:30	f	Jijov2022	Jijo	Varghese	viknjijo88@yahoo.com	f	t	2021-12-25 23:27:31.185148+05:30
289	pbkdf2_sha256$180000$W773cLqghPQB$Qj+ypHFXXlzPpDczHqYH/TsFjBbbe240cRLReYsKdcA=	\N	f	Mehar54qq	Islam	Mehar	jaddahtyreclub786@gmail.com	f	t	2022-01-03 22:49:03.557835+05:30
266	pbkdf2_sha256$180000$gVMJKf92qroT$04nxmkwwxSapF8I95tp8kjYJ3QUgymnaviNdBTw6DPY=	2022-01-09 14:42:10.441538+05:30	f	SAFWAN	Safwan	Kk	safwanpalliyath@gmail.com	f	t	2021-12-25 15:32:46.293982+05:30
290	pbkdf2_sha256$180000$8x2AFfhiHfjo$MhGiHkw308h0BK9Eir0rPp+RVVIFAvOGoGBi1C//9zY=	\N	f	M.Maqsood564	Babar	S	ma3062658003@gmail.com	f	t	2022-01-03 22:51:16.247723+05:30
291	pbkdf2_sha256$180000$O0CZDegMzuYu$fS+p0JoO7dYNaXZmjeUlITZQQv+npWukJ1WEdKSk+VQ=	\N	f	MasoodAhmad512	Make	Love	dizkraag14@gmail.com	f	t	2022-01-03 23:01:26.009027+05:30
292	pbkdf2_sha256$180000$5rgSlAaSv4Pl$BfuOlyhvjtsgFpn5kvFkljBe+mgfqMwHM9WWvqBSOYE=	2022-01-03 23:10:42.522807+05:30	f	MaqsoodAhmad786	Ii	Ii	uuuuy675764@gmail.com	f	t	2022-01-03 23:09:58.95766+05:30
315	pbkdf2_sha256$180000$G6JjN9OkloRt$e4zTqd2LO8p0Bva/cBSfbmyQ8ICXapUnsSuvX+9GwEM=	2022-01-11 23:56:55.000744+05:30	f	faisal1	Faisal	K	ff038839@gmail.com	f	t	2022-01-11 23:06:30.144541+05:30
306	pbkdf2_sha256$180000$s7sizAjuFq1g$FI84Vb4FVNKD49a37p3y7TL1Co/s0QudjWnZZo5D4bU=	2022-01-09 08:07:58.294249+05:30	f	ibrahimvk	Ibrahim	V K	ibrahimvk96@gmail.com	f	t	2022-01-09 08:06:53.447097+05:30
307	pbkdf2_sha256$180000$motTJS0XoRXB$HXf/BAV093xcweA36h76RMSSrBtLTL/BnI5SRmo+dgk=	\N	f	kksafwan	Safwan	Kk	oramioffice15@gmail.com	f	f	2022-01-09 13:41:34.854012+05:30
294	pbkdf2_sha256$180000$fFAND9M2idJY$mM8QpnIciqpKGVtzKZdCr4dLihXBj1u1XMXonGV0GN0=	2022-01-05 00:28:30.971211+05:30	f	aliabdulla	محل المذاق العالي للعسل	محل المذاق العالي للعسل	alialabse999@gmail.com	f	t	2022-01-05 00:27:26.920188+05:30
295	pbkdf2_sha256$180000$KJsnNe4jLIdc$lK0CJAYcTyZzrx52fmexbdc3/NvtwqOwTRkPqSSb2D8=	\N	f	Aftabkhan1983	Aftab	Khan	thasnischool@gmail.com	f	f	2022-01-05 12:08:50.586605+05:30
304	pbkdf2_sha256$180000$TUyPbonv9DIK$tqoyuqUqFM5t2iJ+ChvvxkzcEaYdR7wdX90QJyVoja0=	\N	f	Aman2700	Muhammad	Aman	ikram2700@gmail.com	f	t	2022-01-09 01:59:44+05:30
293	pbkdf2_sha256$180000$IL89ovvOYYFZ$vTAa4VblJNCtQ6yaT2ANFzrTD56Oytpu+t1M5Z6z0Y8=	2022-01-24 11:43:30.816989+05:30	f	RISHADPULLADAN	RISHAD	PULLADAN	Rishadpulladan95@gmail.com	f	t	2022-01-04 23:25:37.076528+05:30
296	pbkdf2_sha256$180000$uppsD8Bks5Ah$HM2U7n/3UgYlI/LLNE9AS/y4Ev5GYbnZFWEthvVP070=	2022-01-05 12:57:40.567206+05:30	f	Aftabkhan1983a	Aftab	Han	thasniazharahamed@gmail.com	f	t	2022-01-05 12:17:38.970723+05:30
309	pbkdf2_sha256$180000$IsTUsc6BoWJh$1IXCA4T+iRUf6WyvbkqL5HoE2Z/PGilLua/nEgKo4jo=	\N	f	Shoaibmomin	Shoaib	Momin	Shoaibmomin4231@gmail.com	f	f	2022-01-09 18:41:36.814439+05:30
308	pbkdf2_sha256$180000$0h4DBldmEaBU$YPf6Oup+I6MlGN7qSsrrNNbErJYUbuNxoOIkh7M7Lr8=	2022-02-22 18:54:11.303886+05:30	f	bnwsales02	Black n White	Sales 02	blacknwhitesales02@gmail.com	f	t	2022-01-09 14:28:53.364399+05:30
298	pbkdf2_sha256$180000$keXbhgXiaOFg$wDXQYMCph+US7ZHHV0oB8yvrugyePkSGQDj2J5FQeAM=	\N	f	Babarali	I	Q	banar5426q@gmail.com	f	f	2022-01-06 23:15:52.34924+05:30
310	pbkdf2_sha256$180000$b9rE72MA6lQ7$XhWtLXngyCGKPw2FEOl2+rXNqsb7sA6xPwpI4bshKUo=	\N	f	Shoaib	Shoaib	Momin	arhammalik42313@gmail.com	f	f	2022-01-09 18:46:02.940401+05:30
299	pbkdf2_sha256$180000$ZzSiGpSAaC8F$cCib7oswZQI6Y3w/GmlPqLgbErQdbvOIn98JTNe8ZI8=	2022-01-06 23:39:15.667927+05:30	f	BabarA	I	I	dilg78901@gmail.com	f	t	2022-01-06 23:20:31.14247+05:30
300	pbkdf2_sha256$180000$3stQVcNMEmWq$M9obRhAQ+TtUU8u1+jBeKICOgOKwuOg56VmJUtcCJho=	\N	f	maneer	maneer	maneer	almasqrymaneer@gmail.com	f	f	2022-01-07 22:11:11.38495+05:30
301	pbkdf2_sha256$180000$lpQlN5sItnfc$/rfbAd1Y0qby+IoXovVtPbBCAppi8uW2WiIjN2HqymM=	\N	f	maneer1	maneer	maneer	maneermahmammd3@gmail.com	f	f	2022-01-07 22:15:20.2984+05:30
260	pbkdf2_sha256$180000$HH5bovQxJJeG$dqLObH2XJPBgvhn/rEEU8m8HHd/92WH10YDqptsyiE4=	2022-03-16 11:26:16.776481+05:30	f	iluathlan	mohammed ilu	athlan	mhdiluathlan@gmail.com	f	t	2021-12-22 10:36:33.21388+05:30
303	pbkdf2_sha256$180000$WoDZ63oYGvQ0$hjHOmn4t04zbhT9zcYMna4kNw9T6I7ObXQsHhXhqY7c=	2022-04-18 11:03:48.603653+05:30	f	suhaib_mji	suhaib	k	suhaib@vikncodes.com	f	t	2022-01-09 00:23:02.08393+05:30
273	pbkdf2_sha256$180000$6IIb0smVMKAS$es00PEJCBuHJCGXevdUm7TI2Jp1XNWVq+aVAvVhGaq4=	2022-04-12 03:59:39.931201+05:30	f	hussain1	H1	H1	mcntr250@hotmail.com	f	t	2021-12-28 17:53:28.856549+05:30
328	pbkdf2_sha256$180000$LqPBRYh6zzkD$UjABC38qwYJiabqJiBw/AO6nIFpcJkJflviQWE5kXj4=	2022-01-23 12:04:16.709915+05:30	f	Karizma	mafahim	jeddah	charizmacoffeejeddah@gmail.com	f	t	2022-01-19 23:55:44.177419+05:30
302	pbkdf2_sha256$180000$PuwrjYwaiEep$Pr2FhVn2OVl3VWhq4xGqdSoZmvbBhgvc/yE945r64Ug=	2022-01-07 22:18:04.567904+05:30	f	maneer2	maneer	maneer	maneermahammd3@gmail.com	f	t	2022-01-07 22:17:24.857409+05:30
312	pbkdf2_sha256$180000$7RA15ufovPgT$sxip1fNysvN9L2ygCYGbtBm1q82lLcKkCMnHKReP0Xk=	\N	f	FASIL.A	MUHAMMED	FASIL	muhammedfasila519@gmail.com	f	f	2022-01-11 11:21:30.778546+05:30
317	pbkdf2_sha256$180000$T1ChAnyZ3GNN$XI0vZeq1yovbUr/wuv88D5gdAnfTo/JIQ+NgTYFy/+A=	2022-01-14 22:05:09.393465+05:30	f	Ahamed	Ahamed	Azhar	jazlynayisha@gmail.com	f	t	2022-01-14 21:46:31.74455+05:30
325	pbkdf2_sha256$180000$EovC23KoMRvJ$PyJVFsxNdW5qWG8/Y2RllN+bHLRXcqyyWdT2u0BCRY0=	2022-01-31 01:27:54.620889+05:30	f	Computer	Muhammad	Tahir	tahirstc48@gmail.com	f	t	2022-01-18 01:09:04.656969+05:30
305	pbkdf2_sha256$180000$ogVUhjhuEVfm$bGPplHXp9b8mIuMiMO0yZtt0GHrkKy+9uDKia905z9s=	2022-01-14 22:49:56.857361+05:30	f	Ikram2700	Muhammad	Ikram	ikram.ccie@gmail.com	f	t	2022-01-09 06:05:33+05:30
318	pbkdf2_sha256$180000$1pUVYtftIuu3$p1yZ51pSjEOFtzaZYKOC1jzVteq/YQsRJqVAriKnJW8=	2022-01-14 23:03:41.846276+05:30	f	kamal123	KAMAL	OPTICALS	paybillsksa@gmail.com	f	t	2022-01-14 23:02:37.724619+05:30
271	pbkdf2_sha256$180000$XXL4uuNFzitk$7ie8dh13wECPHt5HS9Bjf4EnRfiIJWi3TXiETz5YnrM=	2022-05-08 01:26:15.432526+05:30	f	Yasermuhammed	Yaser	Mohammad	yasarmuhammadqutub@gmail.com	f	t	2021-12-26 20:59:31.281789+05:30
272	pbkdf2_sha256$180000$xzNKsuu7jirY$5wbXxCb5uIgB87bNzAWsE4dseUeuT0zFgBaZoUl9eSA=	2022-06-19 22:17:35.763497+05:30	f	alawi24	ALAWI	SALEH	alaWlsalehh@gmail.com	f	t	2021-12-27 14:01:06.170631+05:30
50	pbkdf2_sha256$180000$HqrRAwBrllG9$iK85JmCLQS2WCJMcgV6NF10JeG2nEWtYgzxnZBv0jdU=	2022-07-12 11:03:28.707757+05:30	f	prabeeshyunax	prabeesh	n	prabeeshyohana@gmail.com	f	t	2021-06-18 19:30:54.394739+05:30
263	pbkdf2_sha256$180000$Hw2UeIcSVKyv$mdua4OQFMvAAuw9c47kcM8VgD+7YHl7klkQrjiW4yzU=	2022-05-14 14:54:29.843246+05:30	f	coffee7pro	Coffee7	Pro	coffee7pro@gmail.com	f	t	2021-12-23 21:13:37.858933+05:30
314	pbkdf2_sha256$180000$BGqKKfaglGN4$nrwNJfT2+T2/7o6sgiO73OXFBHDgbpA4KssbY6oia48=	\N	f	faisal	Faisal	k	fffaisal879@gmail.com	f	f	2022-01-11 22:55:58.185482+05:30
321	pbkdf2_sha256$180000$NyvWsYCHw3iy$9Fg9ZtaMkaIU3x78xqWLzcWFFKJU+GH9osj02/wX67A=	2022-01-15 15:37:44.888373+05:30	f	2478318294	AMANULLA	K	amanullaamanulla445@gmail.com	f	t	2022-01-15 15:36:08.672257+05:30
297	pbkdf2_sha256$180000$DQ8pnoHR5FCI$AjcOAynjh1cEougT4VmHbIx+VuKg6kNmvclQY7z8u8s=	2022-02-17 15:18:57.383284+05:30	f	GULAM4168	GULAM	SARWAR	sarwaraftab4168@gmail.com	f	t	2022-01-05 20:57:26.829256+05:30
316	pbkdf2_sha256$180000$viQdOjd4WLzw$8RmfOY4UUhzALwqOrnY57R1L/8o+gzk8Pe28LoGCkPY=	\N	f	Mishal Ahamed	Mishal	Ahamed	michuahamed20k@gmail.com	f	f	2022-01-14 21:39:39.310947+05:30
319	pbkdf2_sha256$180000$EEz7a25Y9STO$gd4vjiJ6PInV7gdtwPyyjVvEm8hF2zcEJOtPRuyXyxA=	2022-01-15 14:55:58.662012+05:30	f	Sirajmk	Siraj	Mk	mksiraj313@gmail.com	f	t	2022-01-15 14:46:22.663157+05:30
311	pbkdf2_sha256$180000$6I6Mfb6piM1K$vOcZlX53f1CnvrKQ+DJygN+h04nxY08IQ7XIK7REkx4=	2022-03-14 16:08:53.222662+05:30	f	iluathlan01	ilu	athlan	athlan@vikncodes.com	f	t	2022-01-11 11:20:18.344343+05:30
323	pbkdf2_sha256$180000$8TTIPJsBeQQi$YMHvmDvx730+AHou98iM4AixnhwmIWNjwHKmxN1nTvE=	2022-01-16 11:29:38.48941+05:30	f	khadee	Khadeeja	Haala	hyzeen.fab4@gmail.com	f	t	2022-01-16 11:29:08.453624+05:30
329	pbkdf2_sha256$180000$amLK3g1XpNVl$pP8L99lifFcGtDdsI7zWG3baq3BOGp+DCgVm4bQXimw=	2022-01-20 16:22:11.178887+05:30	f	pkmsuhail	Suhail	Abdurahiman	zeequickindia@gmail.com	f	t	2022-01-20 16:09:32.935387+05:30
330	pbkdf2_sha256$180000$CVYwdRFyc5JI$Ajw+VMudmyraifAQPBgw5GlcKcQdSG6kwpiV2PRN7ow=	2022-01-20 17:53:03.605121+05:30	f	Faheemali58	نوره شوعي	يحي قيسي	faheemali58@gmail.com	f	t	2022-01-20 17:47:36.149589+05:30
322	pbkdf2_sha256$180000$AImAYZAHw7Bk$EKvnHXp7PR4bWWHkt9MegsvuLxAoBxoyskKQDqxHMto=	2022-01-22 23:47:14.911144+05:30	f	Mishal	Ahamed	Asahar	mishalahamed49@gmail.com	f	t	2022-01-15 16:18:38.029996+05:30
326	pbkdf2_sha256$180000$Yh7P3YUEFBWp$mAwvFEgGsofq8Z39R7kaVGvubIhe2NrlUOODFO5OZrk=	2022-01-24 23:54:49.710084+05:30	f	Mohdali	Mohamaed	Ali	whioszhk@gmail.com	f	t	2022-01-19 14:16:26.806512+05:30
346	pbkdf2_sha256$180000$zXK3IYY0xTS6$ZJBZSZ5svfjYiyYe31rrqofR1YkC+Typ8tsIZMF9NPw=	2022-01-24 19:38:34.971181+05:30	f	Samahsalam	Samah	Kollathodi	samahsalamk@gmail.com	f	t	2022-01-24 19:31:57.00241+05:30
333	pbkdf2_sha256$180000$qiR9m4bBVUNx$tyD0BQRgC8Ittwe0wfMBuXAJjpzHPP3pgSzndw50EIM=	\N	f	Hahahah	.	.	ababagag@gmail.com	f	f	2022-01-22 09:32:54.293318+05:30
334	pbkdf2_sha256$180000$qNbcVtQgg53H$Xkknna85veDrkCAby0P6zJGjRl+UT9cU/bIyhJO9oO4=	\N	f	Testbhhh	.	.	bijifa9280@get2israel.com	f	f	2022-01-22 09:55:12.266076+05:30
335	pbkdf2_sha256$180000$m61HAJjc7MlA$U24ruKkJAUeCVr9kP1frYXM+d8mo0+ZuIf/rZXZSDK4=	\N	f	nekes99	.	.	nekes99878@icesilo.com	f	f	2022-01-22 09:58:09.967083+05:30
336	pbkdf2_sha256$180000$Nv907nMXdrdM$Hh0seWfuerjKu06aDEQ42CYHQw7jbAE3z/gwkOGsRGw=	\N	f	Rfonance	.	.	fonacec644@bubblybank.com	f	f	2022-01-22 10:01:30.534982+05:30
337	pbkdf2_sha256$180000$pgvODrVpCVQ8$JeGmiP1J95xC3w6FsMNbDaJWpUiqqSLn7O88H/W58ZM=	\N	f	Aftabkhan321	Aftab	Khan	asaharahamed49@gmail.com	f	f	2022-01-22 13:15:44.015884+05:30
362	pbkdf2_sha256$180000$tVw47zZ7VWUa$oaUU8KywZxJ2jHUaCDZoeqGiBVVmCTxgC9zpjcCLob4=	\N	f	Hamad00	Hamad	Ahmad	ahmedhamad00@gmail.com	f	f	2022-02-16 00:20:09.30387+05:30
347	pbkdf2_sha256$180000$E0n0wEY2dRgW$ZjNvEJCVzuGDtTHehSuRkZl5+KULMznzQ8qWkHeApA4=	2022-01-26 00:05:55.48645+05:30	f	Toshi86	Mr	Toshi	captain8686@gmail.com	f	t	2022-01-26 00:05:06.911603+05:30
339	pbkdf2_sha256$180000$1Qcl6erpxWMC$HvN8IDfpKsR5cAG/VS7Azd6f03ERt5KkenYLxBcG4F0=	2022-01-22 15:12:45.929257+05:30	f	TestTest	.	.	flyflyerson@hotmail.com	f	t	2022-01-22 15:11:20.573373+05:30
354	pbkdf2_sha256$180000$QEJH5bCP7kBJ$J9qrFS1kxG4MAGIRyokjrsPh/2e4x32rkXGz4+zn3ns=	\N	f	QWERTYUIOP	QWERTY	QWERTY	QWERTYUUU@gmail.com	f	f	2022-02-03 16:16:00.326243+05:30
341	pbkdf2_sha256$180000$870E4s1TLOcw$TYRERJVgkM/s4AunqkuHkahK91iYvPkRw/Nt4RerFXw=	2022-01-23 13:07:01.244164+05:30	f	shan4u	Muhammed	Shan	muhammedshan4u@hotmail.com	f	t	2022-01-23 13:06:16.057736+05:30
342	pbkdf2_sha256$180000$syHXJXOS2kst$PqZUXJ5kIHW6LbnDpKVXtagUKyAqbgzfRTth9luRtuw=	\N	f	Shakir	Mohammed	Shakir	Shakirmc3@gmail.com	f	f	2022-01-23 14:20:38.241081+05:30
343	pbkdf2_sha256$180000$r4jM2YuMZkYi$5O694uxLBu0A7Aqn32pZCkmQiP/+Q0cVj43sHcWEITA=	\N	f	razakokl	Andul Razak	KT	razakokl@gmail.com	f	f	2022-01-23 16:09:56.32004+05:30
359	pbkdf2_sha256$180000$UWQuOYXX73H4$GDafnZTeJ5bfaqoIKq+NLl8D1LDbujyKh7mJtiZnD0U=	2022-02-14 10:04:49.160015+05:30	f	Appaudittest	App	Audit	appaudit1234567@gmail.com	f	t	2022-02-14 10:03:18.105697+05:30
368	pbkdf2_sha256$180000$GGwKgOJgSHIw$LUVlWgktxHRfO2Q2sN2tppRpvskiQfrP4E7APl4ITlc=	2022-02-23 16:22:30.583253+05:30	f	Niyaskp	Niyas	Kp	kp.niyas23@gmail.com	f	t	2022-02-23 16:11:21.692937+05:30
338	pbkdf2_sha256$180000$r8HT4pA4lDu9$MbHh8F6euxNLZAeuj19+oHkXyuD9ixrFaSdAL5rDDyE=	2022-01-23 22:26:35.483042+05:30	f	Aftab1973	Aftab	Khan	aftabaftabkhan1973@gmail.com	f	t	2022-01-22 13:57:57.404536+05:30
364	pbkdf2_sha256$180000$raR3Hg9KrIrM$gWlqLg85QEhxJObJNZIxl6JvPXQo1LE2PZ3VWnRFKqY=	2022-02-17 09:57:20.47589+05:30	f	amrtajitu	Amritha	Jithu	amrithamohandas593@gmail.com	f	t	2022-02-17 09:45:23.898165+05:30
340	pbkdf2_sha256$180000$2QrpiWfQ8F6p$vbPMKmfWWIaECAQfPp/y94G+o8cOLxrbk8nhH+bzExY=	2022-01-23 23:50:44.120497+05:30	f	saqib786	saqib	saqib	saqib3019355@gmail.com	f	t	2022-01-22 21:16:50.097264+05:30
344	pbkdf2_sha256$180000$VJsI3RjxhfB5$qsHUbLmwQ6E6iPHj2kcwyw4sH748RCX8OLjOc/WmXUI=	\N	f	savad_farooque	savad	farooque	savad@viknbooks.com	f	f	2022-01-24 11:54:41.475377+05:30
327	pbkdf2_sha256$180000$TgKEwip0yEQ9$sbH6Lx4j0S/5jhGgmhQp6szufOhkdHi8mQspsMcae1k=	2022-03-16 22:50:23.910539+05:30	f	Ibrahimdmm	Ibrahim	Ibrahim	muytha1.ov@gmail.com	f	t	2022-01-19 22:59:59.618136+05:30
352	pbkdf2_sha256$180000$y57ZYb9cGSNW$FN8qTOh8hWxVon8ba+fIrIipW7CJG9Vc0G1VIENqn+U=	\N	f	ahmedusman131993	Ahmed	Usman	ahmedusman131993@gmail.com	f	f	2022-01-31 22:56:16.145241+05:30
351	pbkdf2_sha256$180000$D6YZoCBUuhTh$01wncLNnZpZ5cN9AbCqldPKaQXKlXXqJSx8sH7MUh7A=	2022-02-08 23:25:37.886619+05:30	f	alipc43	Ali	pc	abdulazeezmuthabstore@gmail.com	f	t	2022-01-30 19:29:37.112322+05:30
348	pbkdf2_sha256$180000$nKaxM8fxLOFM$5Gl23hXfbXGGavr03j022kjVQC7prnJszXoEE/dwS2A=	2022-02-17 11:48:37.383302+05:30	f	harish	HARISH	K	cpacktrd@gmail.com	f	t	2022-01-27 15:10:21.531028+05:30
365	pbkdf2_sha256$180000$GbY1ZfCAeQjB$C9KYuo1P3kwQJklNFDwHzRbppKQMdxvovdLH3Uk89K8=	2022-02-18 00:56:34.161392+05:30	f	Kvsathar1980	ABDUL SATHAR	KOONAN VEEDAN	kvsathar@gmail.com	f	t	2022-02-18 00:55:03.042361+05:30
357	pbkdf2_sha256$180000$ihsFFoOymDzF$OsWAcClguommwBqaJ3yejo+URIwLcswbKfdOxSNCe74=	2022-02-14 20:14:16.564079+05:30	f	Rakan123	Abu	Rakan	mdalharbi1975@gmail.com	f	t	2022-02-12 23:25:45.771827+05:30
345	pbkdf2_sha256$180000$ii24SGYru8iP$itAe6QLkNIQTVDbEXsBaEw8WJI7OZc6ILluowcX+gpM=	2022-01-24 14:38:59.575479+05:30	f	savad__farooque	savad	farooque	savad1@vikncodes.com	f	t	2022-01-24 12:12:33.516239+05:30
360	pbkdf2_sha256$180000$Bm4pcRR1QxPn$nGMz8avog9dXtb/8NO4sD7LvHxtTX+oJX85Hm4RzobI=	2022-02-19 01:51:38.995493+05:30	f	usmanbadasha	Usman	Badasha	usman.badasha@gmail.com	f	t	2022-02-14 23:22:47.574214+05:30
361	pbkdf2_sha256$180000$dajXIA5MdTLh$qSDsmb7wgu+d1HmL+a21iC8oxIHECtEbHeLSDIlBktE=	2022-02-19 20:50:07.150768+05:30	f	1hamadahmad	Hamad	ahmad chowdery	1hamadahmadchowdery@gmail.com	f	t	2022-02-15 09:29:08.161975+05:30
324	pbkdf2_sha256$180000$nYxowPugjzWx$jCFUOmEiGb6pddDR8LR64XHW6u/lIvuEoX+/jJqItU0=	2022-07-12 09:26:11.775298+05:30	f	demoaccount	demoaccount	demoaccount	nohep83660@huekieu.com	f	t	2022-01-17 17:10:55.967397+05:30
313	pbkdf2_sha256$180000$1roRd1VloefV$vB2OSb/qLtd5R49WOCX0DmrbiBbAe2RBqD+tkqEzs7I=	2022-04-30 13:25:52.533225+05:30	f	FASILM	MUHAMMED	FASIL	muhammedfasil881@gmail.com	f	t	2022-01-11 11:27:19.731467+05:30
353	pbkdf2_sha256$180000$mdzdk5SJNMXH$cqrwKM/ici2+XRnYgYpLhrAu4rE44M7pvdakKkxkFwY=	2022-07-12 14:05:10.646988+05:30	f	Tutorial	Vikn	Codes	savad@vikncodes.com	f	t	2022-02-02 15:31:25.057431+05:30
331	pbkdf2_sha256$180000$1oEUqgwUYig6$oKnVd6IX3gjLSZ5JPtEXXg15REuxIVNrWcOJLCMEcHA=	2022-07-05 09:46:09.685207+05:30	f	Ibuk123	Ibrahim	UK	ibrahim.uk@live.com	f	t	2022-01-20 20:24:43.782195+05:30
358	pbkdf2_sha256$180000$XHGx7n07hwzR$pM6K1OpZaDhtD3S0TGmewxP7NdCR0ob0YBmHtD4WVZE=	\N	f	Appaudit1234567	App	Audit	appaudittest@gmail.com	f	t	2022-02-14 10:00:43.055911+05:30
366	pbkdf2_sha256$180000$HeguuN3q1QNu$2GPQxpAaA0vrtCm2V7rWx/cMgZAMnB+I1wZrbMjDkes=	2022-02-19 14:03:11.881102+05:30	f	varunk	varun	k	ezyfortuneconsult@gmail.com	f	t	2022-02-19 14:00:47.291784+05:30
355	pbkdf2_sha256$180000$FKzgpWNWC8AO$WHWwQmJh5tZ3AjjksQ2Fl7B+wyW5TQUgBvpbKSaSDeU=	2022-02-15 17:04:38.530583+05:30	f	staff123456	staff	staff	athirank996@gmail.com	f	t	2022-02-08 10:48:38.680376+05:30
369	pbkdf2_sha256$180000$ZmFORXtAG6Jc$nRPih83znhyf51qOfVqkJPXEEdtpaxsSzVP6daifzM8=	2022-03-01 02:24:52.601333+05:30	f	ajmalkp7	mohammed	ajmal	ajmalkp77@gmail.com	f	t	2022-02-23 16:34:27.303148+05:30
363	pbkdf2_sha256$180000$1JdfFgFKYgkQ$cL0MWRdaPrLp6oNIdyacef550vOxJusXQ0Il9RNyJjk=	\N	f	amritha111	Amritha	Jithu	amritha111@vikncodes.com	f	f	2022-02-17 09:42:29.798462+05:30
350	pbkdf2_sha256$180000$yFmenLw1t3uH$RYa8qkBpw96LZwn49SE87RWFUTKKkuszWhUG2PnewtY=	2022-03-13 00:56:49.858019+05:30	f	shahzad	Shahzad	Ali	sa86056@gmail.com	f	t	2022-01-30 00:28:01.498339+05:30
370	pbkdf2_sha256$180000$PZ9JWwco8ot7$Jf6yZPi/iCBMu19S2Cfx9qBppEx3XNYlWVHyc6/Qf94=	2022-03-03 10:53:21.723326+05:30	f	anusreevikn	anusree	vikn	hrvikn@gmail.com	f	t	2022-02-25 15:53:53.084511+05:30
380	pbkdf2_sha256$180000$CUCmw2kuCaid$X1iyrurGXceIn0Fiz1QwVJNPz/hUGqtQyy0Fh2Ldcyo=	\N	f	Abdh Dom	Abdh	Abdh	abddom11223@gmail.com	f	f	2022-03-06 06:34:07.577187+05:30
381	pbkdf2_sha256$180000$6Hc20SajlEn7$TeCsDVNlkvnLksa/tisMLwVMRG281VlvYnLheetGS8k=	2022-03-06 14:35:17.809698+05:30	f	Abdh Flow	Abdh	Abdh	dwmtlal@gmail.com	f	t	2022-03-06 14:33:22.900576+05:30
378	pbkdf2_sha256$180000$fV9gGSQw9BZG$N2zQKukmkFSo30VhYlAKFMeHB+PyqmEng7LJxGQ2Uas=	2022-03-04 14:10:55.518073+05:30	f	athiravikn	vikn	123	kayis30985@xindax.com	f	t	2022-03-04 14:01:45.345855+05:30
379	pbkdf2_sha256$180000$wnjPIqiyVqiP$ks+cGsv1DsQM+JFtFbRoTfKLipt7kMacATay41Qo9l4=	\N	f	Abduabdu	Abdh	Abdh	abdtdm13456@gmail.com	f	f	2022-03-05 04:48:02.563061+05:30
383	pbkdf2_sha256$180000$tcPwKjPi9CMe$v7l5kW0Oy9tnA/lVtgZofiIwzN27DB1krZ8adGZHYFY=	2022-03-16 12:00:03.117876+05:30	f	ansar123	Ansar	kuttiyil	Ansarkuttiyil001@gmail.com	f	t	2022-03-16 01:36:29.872875+05:30
249	pbkdf2_sha256$180000$FNFVbx7nJJHA$d5Qz1wiHcahDoyb4uaBVKlWQ6iKaBYnlv07D3HUxgco=	2022-03-15 22:53:40.960318+05:30	f	adilshoaib	Adil	Shoaib	adilshoaib187@gmail.com	f	t	2021-12-15 00:05:19.586527+05:30
367	pbkdf2_sha256$180000$6ozVJd68xLU6$GFS1IRpquCqB53/nWsnsknf6lcdoxile/eiAc13EbLA=	2022-03-31 19:07:22.33925+05:30	f	hamadahmad	Hamad	ahmad chowdery	hamadahmadchowdery@gmail.com	f	t	2022-02-19 20:57:12.034555+05:30
384	pbkdf2_sha256$180000$sfAFuj3VWsht$1Eb/f7vmcKPyw0qpG0YlCBaGVSzu6UStEn2Eg//5/AA=	2022-03-18 21:40:58.311629+05:30	f	cpshameem	Shameem	Mohamed	cpshameem@gmail.com	f	t	2022-03-18 21:19:17.104363+05:30
385	pbkdf2_sha256$180000$iS07TejYZzQT$MFyKeuvSNDBEmfGBcTQpMRb0KHZm7AFqPPzYFE5hP6g=	2022-03-20 23:37:51.104618+05:30	f	musthafamltur	musthafa	mk	musthafamltur@gmail.com	f	t	2022-03-20 22:30:38.283951+05:30
386	pbkdf2_sha256$180000$SSNBMf7wJTAA$eSH3r0Lf9oLc6YAloym4u3C5ksv/m2FZr2SqPyCYh44=	2022-03-21 13:45:50.839891+05:30	f	ABUABU	ABU	ABU	suhairat3@gmail.com	f	t	2022-03-21 13:44:46.672626+05:30
387	pbkdf2_sha256$180000$wXd6KSI2dj6S$5bQESWtIeQfrflo/LK6dExQ634Wv/KIgg9K+cZR98kc=	2022-03-21 19:43:31.355477+05:30	f	fap543	faheem	p	faheemp131@gmail.com	f	t	2022-03-21 19:41:38.193794+05:30
398	pbkdf2_sha256$180000$NH3VfHuZLxVA$UuTau8ykGUo5sPZ5RZne2gaiMcsh6wqzhSA4GVaYs28=	2022-04-20 19:56:52.49944+05:30	f	sajid1122	Sajld	Hussain	sajidhussain70f@gmail.com	f	t	2022-04-13 03:00:22.480763+05:30
396	pbkdf2_sha256$180000$E8VZEMk9T9Cs$BuIXlxuXuwnssE/REdf5JD8gKm26YUlo/3DJM64Pbxg=	2022-04-05 16:09:50.470088+05:30	f	gavemepa	Shelby	Knowles	dexocag780@whwow.com	f	t	2022-04-04 13:44:24.99522+05:30
390	pbkdf2_sha256$180000$N6G2yZLSCoDe$cyT3V6kjdcZpybDnRaDTHoLq0L3SBKLjlwaYKqn8okY=	2022-03-25 14:37:27.394853+05:30	f	ice123	ice	world	nowigow600@minimeq.com	f	t	2022-03-25 14:33:29.15413+05:30
400	pbkdf2_sha256$180000$NvH7HJRCdEUE$dz68+B07IRZx4aJmBl6cIFLSIPeV7FrQVfS9u4KK1ds=	2022-04-13 16:42:16.374983+05:30	f	athira1212	new	123	bitena6749@leafzie.com	f	t	2022-04-13 16:41:13.360098+05:30
392	pbkdf2_sha256$180000$4cHD8afW0EPX$Ma6Uyfue6CjjKPFyMaSnjf7YZhGQQYiV3Y3JQ3qdPsk=	\N	f	tradingdemo	trading	demo	tradingdemo@gmail.com	f	f	2022-03-28 11:27:43.957338+05:30
349	pbkdf2_sha256$180000$4Cap81dkivTY$XMA+GEE8xE9tXVdnDg2rXjhieg2L3FmKvkPqhRdB6b4=	2022-07-12 12:34:55.665122+05:30	f	jasmalVikncodes	jasmalVikncodes	test	jasmal@vikncodes.com	f	t	2022-01-28 11:43:56.203088+05:30
76	pbkdf2_sha256$180000$lB25jWKhqaLf$5i1Gn3XayQHzsb0tyztvRx3P4/XxKx6XeRi5sWWSVXk=	2022-07-12 13:46:34.797786+05:30	f	athira	athira	nk	airank69@gmail.cm	f	t	2021-09-16 10:45:11.219873+05:30
373	pbkdf2_sha256$180000$XRrNC92FeBOn$yKcROHr7+28dtl5Dpfu9fnjGM/he+V0ndbB92v8W9aw=	2022-06-26 00:24:47.518835+05:30	f	accountsmas	accounts	mas	m.ashiqueep@gmail.com	f	t	2022-02-27 13:20:20.013322+05:30
62	pbkdf2_sha256$180000$LIXmi6J4TGZ3$zj41ZTL5IvU0mJiZ/hTvdlRfIVD6K5SvTBM6gfcNNCo=	2022-07-12 14:36:04.775275+05:30	f	Rabeeh@vikn1	Rabeeh@vikn1	Vikn	rabeeh.amk96@gmail.com	f	t	2021-07-23 09:42:18.609897+05:30
372	pbkdf2_sha256$180000$JjmBsVnWlokI$gp6EWWzXsFliQl4MubukgDxrIcqc8kvdUbnRVf217QE=	2022-07-11 22:15:31.318101+05:30	f	muhsinmas	muhsin	vengalath	muhsinmoidin@gmail.com	f	t	2022-02-27 12:55:18.940584+05:30
376	pbkdf2_sha256$180000$ul3gtJnygqRI$3knUguZJs3eC8rBsvlUh0sJB3ab7Xs7Jled8OqGY8mU=	2022-05-16 15:09:36.042013+05:30	f	routmas1	rout1	1	subiks614@gmail.com	f	t	2022-02-27 14:06:19.553749+05:30
377	pbkdf2_sha256$180000$xCC84vMvMUqD$f2/hlTwObURE9DG94uToSq7LzjxOJXq/DH0afBNGod4=	2022-06-01 13:11:11.366716+05:30	f	routmas2	rout	2	Raqeebshah20@gmail.com	f	t	2022-02-27 14:21:13.707203+05:30
356	pbkdf2_sha256$180000$VNxvjgbhh8fK$EjB0/UXuouda/iDe7BHXwRe4xs46O58wKTAUhgME3BQ=	2022-06-23 20:34:11.210362+05:30	f	fkcksa	VIKN	CODE TEST	fkcksa@gmail.com	f	t	2022-02-08 14:26:00.967799+05:30
382	pbkdf2_sha256$180000$udH6JMYoDfND$w+1axFlIVyDHy4DwTMfYADMv8YQao43KdctVtyipEKM=	2022-07-12 13:50:01.455562+05:30	f	dennisjose	dennis	jose	dennis@vikncodes.com	f	t	2022-03-14 16:08:21.449005+05:30
389	pbkdf2_sha256$180000$pEuXP7EgrwuU$HcDMHJMQJ3+3gcY0KUrJOaw/F8IWjdVj9MYg0DfGgGk=	2022-05-04 15:51:28.662+05:30	f	athiathi	athi	athi	athirasruthin92@gmail.com	f	t	2022-03-23 10:26:07.057017+05:30
264	pbkdf2_sha256$180000$FZKY30xSR3jv$NHqH7Uf0iKtlKwS3vkYReMU+PMYLhDQJSSGsE9/OmC4=	2022-07-05 11:22:49.014884+05:30	f	rakhabbc	Nisar	bbc123	bbcrakha@gmail.com	f	t	2021-12-24 16:55:25.293316+05:30
375	pbkdf2_sha256$180000$hbCvMA1AD7CT$pEWiDehk8SeKc0Yo8hrQLkYwrYmFoXfrEhLVsSG3tC4=	2022-07-05 11:33:55.133242+05:30	f	purcahsemasuae	purchase	mas	purchase@maselite.net	f	t	2022-02-27 13:59:30.567942+05:30
154	pbkdf2_sha256$180000$9Kht7a2zlHLu$DQP/U+qIQlhaoYTmrZtwNe5PZBjxgaJo6PPqfiY0dQg=	2022-05-17 18:42:23.817832+05:30	f	jonnyspapa	Alavi	C	jonnyspapa14@gmail.com	f	t	2021-11-26 19:51:37.579004+05:30
190	pbkdf2_sha256$180000$ZPyur7gn1ZWB$iWuyY79hMehSGdxB6DeCuAqvJaDR/XDEFYkjO/xWn5o=	2022-06-27 19:22:09.020752+05:30	f	sulthanfoods2021@gmail.com	SULTHAN	FOODS	sulthanfoods2021@gmail.com	f	t	2021-12-02 22:55:36.434242+05:30
332	pbkdf2_sha256$180000$zf9JxoEwWvJm$Nq+Em0FKXpynhvbT3N8P/pM/Dvn+4VO+KGaxa4iQvew=	2022-07-05 16:42:28.750796+05:30	f	Vikntest	Vikn	App store Test	vikncodestest@gmail.com	f	t	2022-01-22 08:22:27+05:30
388	pbkdf2_sha256$180000$26lVtFVpaBA4$fhJkJ47Dlv4wnF3+Dn85/1Wd/p/1K6vIO5MZIGklCfw=	2022-06-08 19:45:50.94476+05:30	f	Myvikn9946	Muhammed	Shafeeque	shafeequebaimp@gmail.com	f	t	2022-03-22 00:02:45.050903+05:30
393	pbkdf2_sha256$180000$SFlsvTjWPlKS$yF0GXDNFsgapDymiksP1kWo/GvXNBgoacS5AwsNi+5U=	2022-06-20 23:59:41.331024+05:30	f	driver8059	driver	1	alshallal8059@gmail.com	f	t	2022-03-30 22:59:10.310914+05:30
394	pbkdf2_sha256$180000$TJUVAd6c9jDx$d9IDVPaLoNT6NJYF3MLB98MMii+sWz5HuoRAjQ88xLE=	2022-06-21 08:23:33.562964+05:30	f	driver8058	driver	2	alshallal8058@gmail.com	f	t	2022-03-30 23:13:24.795706+05:30
403	pbkdf2_sha256$180000$mvXXCN5trpsv$WIWKgfeIfLkXLHrVCS8QcUqWUopWPZ0eApV9VZb2Sqw=	2022-04-26 18:13:13.443799+05:30	f	welkinwits@gmail.com	sushanth	J	welkinwits@gmail.com	f	t	2022-04-26 18:12:33.0612+05:30
395	pbkdf2_sha256$180000$uzP9Wi84ctaB$OiBqY9f+McHORuYoOJfmmKWutv+R4k6VwweyCu4VPZ8=	2022-04-04 16:59:11.415245+05:30	f	routmas3	mas	rout	info@maselite.net	f	t	2022-04-02 17:32:49.693246+05:30
402	pbkdf2_sha256$180000$puxuHs9SN0D4$cDiv0KN4yB2jKHNbYj6BuMjTOuN/PazzOtzHgCz7GmQ=	2022-04-21 14:27:35.22708+05:30	f	audit.calicut@cpasconsultancy.com	CPAS	CALICUT	audit.calicut@cpasconsultancy.com	f	t	2022-04-21 14:25:33.451607+05:30
401	pbkdf2_sha256$180000$OycEv9kjXtzj$hmDgnzyhjF0cV5lKxRnRH2+Xw0umNYWA+fjTHSidz20=	2022-04-20 05:06:42.395994+05:30	f	Admin0	RINSHA	RAYAN	muhmedshabeer56@gmail.com	f	t	2022-04-19 21:36:49.006496+05:30
415	pbkdf2_sha256$180000$F2dVAnoKIC7z$Esq5umpipLuvOceBlbSSa9tuTRrlkH01FZ0Jngixmt8=	\N	f	teddrtff	user	user	xxxfvff@gmail.com	f	f	2022-05-12 17:56:02.950717+05:30
29	pbkdf2_sha256$180000$8xigKnZkKEup$+pyE47kh9cpK6j4N8DWn2oWVRIOhKYdAyPNq2kwULMU=	2022-06-15 11:53:36.032483+05:30	f	THOUFEEQUE1	THOUFEEQUE	SUPERMARKET	nihadnazin@gmail.com	f	t	2021-04-25 01:07:04.357+05:30
416	pbkdf2_sha256$180000$vp1myJfI1q6w$P+AOtFkADEjy1aKI2y3EW3NIUxPEfXD4tqzeCVJVu/U=	\N	f	1234567	user	user	asddd@gmail.com	f	f	2022-05-12 18:03:54.384709+05:30
408	pbkdf2_sha256$180000$wHmKfcxOyLRJ$223GI48Ig9Jfc5C91uljZwmFD18TmNsZGMWlzLhq090=	2022-05-09 08:29:53.575382+05:30	f	Fahashafi	Fahad	Alqahtani	alethqalbari@gmail.com	f	t	2022-05-08 15:46:58.891027+05:30
399	pbkdf2_sha256$180000$8gOddOlu721p$SUS3ckuuKFfrsUSDMDHk2czX+b7ZQE5zVFqWn9bFW1Q=	2022-05-06 11:42:28.761806+05:30	f	Shahid	Shahid	anwar	shahidanwar261992@gmail.com	f	t	2022-04-13 03:59:10.65756+05:30
417	pbkdf2_sha256$180000$ZlbfmDuRdnM7$F23ogGD4e3X/9qnyu7t4fIKMFYvHbSX1RPaTdlEX+C8=	\N	f	1234567t	user	user	asddgd@gmail.com	f	f	2022-05-12 18:05:06.225408+05:30
418	pbkdf2_sha256$180000$cTjup3VLgP9W$AhL+Hmo6SdTM+1vZl8KV9/1NzC6twEDZptEZrjVDnCg=	\N	f	testugfserv	tesfgtt	user	tesbvtuser@gmail.com	f	f	2022-05-12 18:06:03.410691+05:30
320	pbkdf2_sha256$180000$88mgfl6fYK0a$H7c95TrGrrEXei7Ars5O79iik7jz73Eiuv4gwYxIxKA=	2022-04-30 13:23:20.365483+05:30	f	MKSIRAJ123	SIRAJ	MK	anascm9@gmail.com	f	t	2022-01-15 15:06:00.05876+05:30
419	pbkdf2_sha256$180000$2ZWkckW4ApIB$OzYlgUqlwxvd/2pc2Am/y0q8d1rqJJaxffafszkPcnc=	\N	f	tedttbmn	fhbbhb	bbbbb	tebsbb@gmail.com	f	f	2022-05-12 18:21:07.376082+05:30
420	pbkdf2_sha256$180000$luJj3ycyPDlb$grCoknnX631fBRXVJNCfkJFKnqe/PVthPql44Bq+NbM=	\N	f	test@67gmail	test	test 123	test@67gmail.com	f	f	2022-05-13 09:16:48.238743+05:30
148	pbkdf2_sha256$180000$Whhz2tVKSVSE$ydUpVE251jUQxdtKUuJ0Gz1bFE0C89nzEEQhgkwQ9J0=	2022-07-04 14:08:58.630084+05:30	f	najman	Najm	Abdunnasir	najmabdunnasir@gmail.com	f	t	2021-11-25 17:37:55.526441+05:30
269	pbkdf2_sha256$180000$wYpKs8VJea3c$uahPUUWntw8cZXWqo6G4k51wtwz2uX/G21OLVv49Axw=	2022-04-28 08:03:29.714842+05:30	f	Tinu1985	Tinu	Tom	tinutom.m@gmail.com	f	t	2021-12-26 13:44:09.111782+05:30
405	pbkdf2_sha256$180000$kB4bgCWMStVl$meBohV/DOOo2a1mRuVlyUtlI5zhQsbZEzuSR9FO6ubY=	\N	f	Mohammed Jameel	Mohammed Jameel	Jameel	jameelmohamed958@gmail.com	f	f	2022-05-01 18:59:27.81139+05:30
421	pbkdf2_sha256$180000$V7fnZvrY517C$Eywden5UDBpf4RH6eYRTo/NUpjC/1F2VlarVuN/IZYA=	\N	f	testugfsgv	tes	user	tesbvtusger@gmail.com	f	f	2022-05-13 09:17:59.230056+05:30
374	pbkdf2_sha256$180000$pAOAiQVGZROy$DoVxr4u0ZEvx0HN3FmO5KMnKKUAIW2Q4YKSeUemzMgU=	2022-04-28 11:30:30.272462+05:30	f	purchasemas	purchase	mas	nasergvr@gmail.com	f	t	2022-02-27 13:33:17.600012+05:30
422	pbkdf2_sha256$180000$kWROqz7tfMu5$qNUQ9yZRLAXQXxm/vq3otCywocJINPzaaD3hGlA92lc=	\N	f	weffghhhjj	erfff	xcc	amcvv@gmail.com	f	f	2022-05-13 09:22:03.768037+05:30
423	pbkdf2_sha256$180000$e5quvMsruawE$domyx5GiDJOXD+ySbHL5s8IYb5mxG4K9HDnX7pqTZ58=	\N	f	abzghty	abz	ghu	ambg@gmail.com	f	f	2022-05-13 09:32:15.44814+05:30
424	pbkdf2_sha256$180000$RmSgjdrOkVsD$pIrIAlXmb0W1Tpx4l2KLjVG5Rt48woMbfwHid4wcPAA=	\N	f	abzghtyq	abza	ghu	amhbg@gmail.com	f	f	2022-05-13 09:32:49.279187+05:30
425	pbkdf2_sha256$180000$QAUf5nmTMAcM$RtIzsSHxZBfTAuRrvXEy/HBBNTW3yIsWlJTyBAOw8mM=	\N	f	abzghtyqw	abzah	ghdu	amgvvhbg@gmail.com	f	f	2022-05-13 09:34:21.1151+05:30
426	pbkdf2_sha256$180000$pJ7KVsNGjvzj$aY1R+WMcP0Dtf7vNimoiH/6o2r22WGonKQtVjN3mvg0=	\N	f	abzghftyqw	abzah	ghdu	amgvvfhbg@gmail.com	f	f	2022-05-13 09:38:15.932576+05:30
391	pbkdf2_sha256$180000$Zkau5TxusM0w$mfr8EzP7lRdNeI+wH3rpaJFIPw0xCEu3Ur9JWHYMbiI=	2022-06-28 22:36:49.795239+05:30	f	zaak888	muhammed	zakariyya	muhammedzakariya6@gmail.com	f	t	2022-03-25 20:08:19.178007+05:30
406	pbkdf2_sha256$180000$Su8eoO7ztzEi$Clpg/m8LPXT/KfG1d6fJ/rf3ChiB7HYqsnpmoXoFYE4=	2022-05-15 12:53:39.394526+05:30	f	Mohammedjameel	Mohammed Jameel	Jameel	Mohammedjameel443322@gmail.com	f	t	2022-05-01 19:27:00.369882+05:30
188	pbkdf2_sha256$180000$8JcTpwF2WUoj$coi3kx+hFDx883aGST+1VQJu4JRfLZGaQVCfqaFxyY0=	2022-07-11 13:07:23.990679+05:30	f	fajaralnada	FAJAR AL NADA	SWEETS	fajaralnadah@gmail.com	f	t	2021-12-02 21:19:30.857242+05:30
404	pbkdf2_sha256$180000$RmuUbsHBywC2$zYeh3eulPvj6NO3/D/xvB6eNCUmZ0VdLuq+m0+2DNZM=	2022-05-02 11:59:42.57326+05:30	f	athirablsy	athira	nk	athira@vikncodes.com	f	t	2022-04-29 12:19:45.984+05:30
36	pbkdf2_sha256$180000$dVScXzYh5aEX$xgCjSTpeU/BORjq/qbr+wKB/KFAgcVCAAQNO0wt13/0=	2022-07-04 17:15:34.182572+05:30	f	basithpp	abdul	basith	ppbasith6@gmail.com	f	t	2021-05-18 20:05:32.872+05:30
206	pbkdf2_sha256$180000$cv4dxKei0PYv$+vPKFmVlvPNw3yMYSlnnFTcagcEgdc+n8XAIDe2WS9w=	2022-07-07 08:47:47.320589+05:30	f	Harjas	Rahanas	Mk	mkrehnas@gmai.com	f	t	2021-12-04 15:12:41.755757+05:30
409	pbkdf2_sha256$180000$p0kR8k8a3RZK$7efXPFPP7wJXWI9JFE0tcD087c/81H0MVYmIWEbn47k=	\N	f	ahjhgj	a	a	amr@gmail.com	f	f	2022-05-12 17:20:43.402834+05:30
427	pbkdf2_sha256$180000$sV5mP29ipAx8$DQQtzptKQZyK94OSZQhhsDQ6seL08KUqxehIcgJawqw=	\N	f	abhftyqw	abzah	ghdu	vvfhbg@gmail.com	f	f	2022-05-13 09:40:32.2045+05:30
410	pbkdf2_sha256$180000$cb0bBvm7cUI1$Y6oBx6dNvU8GyAo/eoztoyfirRiH4HdZDPkps6LbJVc=	\N	f	testuser	test	user	testuser@gmail.com	f	f	2022-05-12 17:21:23.671982+05:30
411	pbkdf2_sha256$180000$Nb0GffniLpu1$+C1cAG9oaVFS7lvpNnvDd+MFCdfJgNUplbePxuItpWs=	\N	f	amritha	user	user	amrithamohandas59@gmail.com	f	f	2022-05-12 17:49:06.877904+05:30
412	pbkdf2_sha256$180000$tcXY6WoV6Vzt$a/k8GwjLvjtXsX5QsVLUeSeDkJIlWLYcAVyRFTBQeZM=	\N	f	vvvvbbbb	user	user	bbbb@gmail.com	f	f	2022-05-12 17:51:07.412218+05:30
413	pbkdf2_sha256$180000$52uiqXWMYlZd$uZrffnwBYNaoE2vvuHaDFM3UnmR6P3nqy4wcLPrNU18=	\N	f	fggggggvv	user	user	amrithal@gmail.com	f	f	2022-05-12 17:53:28.817982+05:30
428	pbkdf2_sha256$180000$wfGP1oGxYrRM$jeXhZhx8frQfcXwa/e/roYvPc9MK7sibz7mcTo2CjIE=	\N	f	am testing	am test	user	tatili9740@doerma.com	f	f	2022-05-13 09:46:45.516179+05:30
414	pbkdf2_sha256$180000$Adge9fSOLzkF$iP6OrT8mNCVX6LyEpWhHHS0+zXeeqTj26nRmk5UkKAY=	\N	f	fggggggvvb	user	user	amritghal@gmail.com	f	f	2022-05-12 17:53:47.546209+05:30
429	pbkdf2_sha256$180000$txweI4A2tTUF$O5jAsldoQGYyJmsRpbRp7W3itJgwIwZT/XKYyNeYtD4=	\N	f	testx 1234	test x	tr	ttestx@gmail.com	f	f	2022-05-13 10:38:24.126067+05:30
430	pbkdf2_sha256$180000$EjYy4vKHAIt2$ubS0c2ZUp8lM4qBxKK722HmVcCAzenoQIki5/2UpNbs=	\N	f	test rtt	test r	rt	tests@gmail.com	f	f	2022-05-13 10:39:59.33149+05:30
431	pbkdf2_sha256$180000$rSXFjq7mM9mP$gtzYVn7eam7I0DZPKD+dJ2wOhPJ3/ShzwQYH7dah+Z8=	\N	f	test rtty	test ry	rt	testrtys@gmail.com	f	f	2022-05-13 10:41:06.011852+05:30
432	pbkdf2_sha256$180000$a92C9MKQ2v6Z$W/1LpDt/qn3fJmA/gZ7GRAZSW6dTjZPP3UFPDm94fDw=	\N	f	test rttyy	test ryu	rtu	testrtygs@gmail.com	f	f	2022-05-13 10:42:37.646001+05:30
433	pbkdf2_sha256$180000$c2UJOTf7NFqi$2RI/QRzTiHJlIxW9GSz/4VHX/0s6FscI/BxnfnXR4zI=	\N	f	vhvvvvbb	yyy	ghh	bnnn@gmail.com	f	f	2022-05-13 10:46:43.932193+05:30
397	pbkdf2_sha256$180000$gTW4sWtCzZwp$zbkQeRvFOSRadK6fjTG4Hx/s8Vm6ZnReeyocR1YgcWY=	2022-07-12 06:40:42.117433+05:30	f	aneesali	ANEES	ALI	aneeskkdn123@gmail.com	f	t	2022-04-04 19:41:27.576001+05:30
434	pbkdf2_sha256$180000$pN8H0argGQc9$j9YFo7I3OkP/UKfCP28P+EqCxbesVwtfAbU+kQ+q4DY=	\N	f	vhvvvvbbc	yyyf	ghh	bncnn@gmail.com	f	f	2022-05-13 10:47:16.290065+05:30
435	pbkdf2_sha256$180000$XA22PBylTQBo$4CqEdK6F+XKUrFnyxRZk7y3Lq77craRAEP5X1f1ncM0=	\N	f	vhvbbc	yyyf	ghh	bncbnn@gmail.com	f	f	2022-05-13 10:48:11.591697+05:30
436	pbkdf2_sha256$180000$c1oQr0dC9rAq$jPJq1W2iEY6GpUmMfVmILBK3kINHId2FUE1nHjrnAno=	\N	f	am testin	am testq	user	tatil9740@doerma.com	f	f	2022-05-13 10:50:25.98139+05:30
437	pbkdf2_sha256$180000$bG0wR6tS6mEh$Q0MxlO9HreizCPUZsqS659Gk0vd54FGmNdRRfZXYbrE=	\N	f	am test	am test	user	tatil97@doerma.com	f	f	2022-05-13 10:53:36.197404+05:30
438	pbkdf2_sha256$180000$DnAZTGnL5YuU$Mfx06heKDAZoP/xuQmNmBuVxVkYPTxrU1Gy9kpSTkyg=	\N	f	vbbjjjkkkj	fg	ghb	vbnmm@gmail.com	f	f	2022-05-13 11:32:50.076577+05:30
439	pbkdf2_sha256$180000$laRBV9aMWNU4$BwSSmkd3RRYsUon/xOpjNg5o1Cq614CtsAy2Qwfn3og=	\N	f	type test	type	rtu	testrts@gmail.com	f	f	2022-05-13 11:51:31.130029+05:30
440	pbkdf2_sha256$180000$BnTc5UPodlY9$EuEoI7hL4JkNr7+ZxMmKVunO+GSxFFCA/NZc5N3pU7o=	\N	f	amriaVikn	amritha	vikn	jithuajithu6699@gmail.com	f	f	2022-05-13 11:53:51.748169+05:30
459	pbkdf2_sha256$180000$ULrSYYOuj6Ht$o2l+e/WdtVO2p0rDA0hwS66IZYMi3RTNpFrqa/J0EJ0=	2022-06-12 22:00:19.062636+05:30	f	Mhdsavadd	Muhammed	Savad	Savad26417@gmail.com	f	t	2022-06-10 11:48:23.566899+05:30
442	pbkdf2_sha256$180000$uwKc9JCOtsJd$KeSvWm6ekrG8fWjKiVrq8dcYKvE5C9lifdy5uU87MKY=	\N	f	test user	test mail	mail	sejah37494@doerma.com	f	f	2022-05-13 12:02:48.676085+05:30
443	pbkdf2_sha256$180000$sllcXY5GGNoS$vBwB4AP0iVnT8myoWK6sME+53vHy4TTPKtWkF+OAWsU=	\N	f	user test	test	user	sopor82400@doerma.com	f	f	2022-05-13 12:11:42.665932+05:30
454	pbkdf2_sha256$180000$LfCAVhgaI2RL$o/Z6OuypwcYNns4unNoHeaIj5qa5m/V7hGMYUKWdZ30=	2022-05-24 11:52:48.795751+05:30	f	sufiyan.ar@outlook.com	S	A	sufiyan.ar@outlook.com	f	t	2022-05-24 11:51:22.932383+05:30
444	pbkdf2_sha256$180000$t3P4UpPrfhvj$mXuVPNh+8c89SGxb9eEPbOrdGx6atOE9CWNSCrijPYk=	\N	f	testmail	test	test	kamasi9715@cupbest.com	f	t	2022-05-13 12:20:43.137353+05:30
445	pbkdf2_sha256$180000$Cx0utH2wNyNG$EouM8W+7vGNo4pFlGJEA8fA+mXb1ujfoEqLY5JyWG9Y=	\N	f	test user1	testy	yye	pever32902@dakcans.com	f	f	2022-05-13 13:30:36.778938+05:30
458	pbkdf2_sha256$180000$5lWauMpE6pZ4$FlrKdeS3kfc+YpoGVmlgx41zlSs1fC+FB7mYpVJeuMw=	2022-06-06 11:06:54.422297+05:30	f	pizzalaila	Pizza	Laila	pizzalaila009@gmail.com	f	t	2022-06-03 15:32:27.215302+05:30
446	pbkdf2_sha256$180000$onFOQSjTZfAK$Auby6X9+tufrbvb9I11Xy6XUKeHCBBwqYPqm94U4Z/w=	2022-05-13 14:19:29.418095+05:30	f	user12	test user	user 1	hohiw88990@doerma.com	f	t	2022-05-13 14:17:13.192694+05:30
447	pbkdf2_sha256$180000$8gxO1gFtDXHU$q3MYwMdtowPb0M/pDUSmDKMbGm6d/8CxhcNJMvqXsW0=	\N	f	user123	test user1	user 11	bohib24226@cupbest.com	f	f	2022-05-13 14:20:23.592049+05:30
441	pbkdf2_sha256$180000$gMb8F9TZMLPj$lynVGutainQKg6Wj8g3bMkkJ9zYi0ImRNe7qFfM3xQk=	2022-05-13 11:58:15.570242+05:30	f	safnasyunax	safnas	tk	safnasycs@gmail.com	f	t	2022-05-13 11:55:16.952339+05:30
449	pbkdf2_sha256$180000$l6LtZWXJ33gS$WB0EE4Q5AyQjsNZ9zOFoF5VkbYJC08X14TclU8N/7uk=	2022-07-12 13:35:11.038863+05:30	f	asna123	asna	asna	asna@vikncodes.com	f	t	2022-05-17 14:02:26.093714+05:30
450	pbkdf2_sha256$180000$2Qso9U82ZEtX$35JbY+ANvb59hG61k5um1Z5ZjqxVLR6cC8zYH8EGcd0=	\N	f	safnasyunaxx	safnas	tk	safnastk@gmail.com	f	f	2022-05-19 11:56:37.576925+05:30
455	pbkdf2_sha256$180000$A2Rt2TFBws5F$fOeqKFdQK3jx82sMIc6AVAtwQ6Bg6NvT4SPFBRsUe58=	2022-06-08 17:17:00.933828+05:30	f	sirajyunax	muhammed	siraj	sirajmuhammed922@gmail.com	f	t	2022-05-24 20:56:59.402278+05:30
463	pbkdf2_sha256$180000$So1qCOvJNsF8$pSnGwwQO3+iaIaEVqaEMjMkhIqCZaeFrMC9EyvZBSh4=	2022-07-10 23:15:21.288323+05:30	f	moosaksa	MOOSA	HASAWAN	moosahaswan@gmail.com	f	t	2022-06-14 01:36:13.332294+05:30
407	pbkdf2_sha256$180000$3XWSrjp3eSxC$IA7DGkBGaIFZ9Qr1TGI8PRvge/fxxsnnF+EKAp6m8oc=	2022-07-03 15:27:14.220512+05:30	f	amrad2751	Amrad	2751	amrad2751@gmail.com	f	t	2022-05-06 11:39:25.828716+05:30
451	pbkdf2_sha256$180000$cGstGaP57Pmb$fPCTwME01gmbi1asiXbdcd/+mxyJNY5XWl6at573t4E=	2022-05-19 12:17:52.440009+05:30	f	safnasyunaxkb	safnas	tk	safnasyunaxkb@gmail.com	f	t	2022-05-19 12:05:49.834088+05:30
452	pbkdf2_sha256$180000$99ziynM2DTg9$5uyVtGqQeFe6UaVc30jzAkRdsDU0XsCXC2oCNitoC8k=	2022-05-19 22:19:25.09073+05:30	f	SADHIKKBR	SADHIK	TH	kbresidencyclt@gmail.com	f	t	2022-05-19 12:45:52.25435+05:30
456	pbkdf2_sha256$180000$gBfPGS8SXLQe$a8fKcSirqF1l8qhBC00SZHKfQoks+lOEzX87eYatRF4=	\N	f	prajithkpkmr	Prajith	P	prajithkpkmr@gmail.com	f	f	2022-05-30 11:38:16.000028+05:30
462	pbkdf2_sha256$180000$MpUyUCfje7Cp$33zFtxwLALlq0iS4PL+kglGBHImEBh238uKF+Bbq+f8=	\N	f	moosahasawan	MOOSA	HASAWAN	moosahasawan@gmail.com	f	f	2022-06-14 01:02:39.93561+05:30
457	pbkdf2_sha256$180000$TMvCyNsFedyP$Go7jhqlQkXCkokuB+n4HTPCM81CeIVAg56QEjiqLJNI=	2022-06-02 16:45:29.268004+05:30	f	kaybee	Kay Bee	Trading	kaybeetrade@gmail.com	f	t	2022-06-02 16:16:22.81907+05:30
469	pbkdf2_sha256$180000$Jr2IOeWYQGLX$WgNp4LWapNNT4iXssDDaIj0vhZIbnokq5MMnfdnN2YA=	\N	f	asassasasas	aas	sasa	nifoko8955@runqx.com	f	t	2022-06-23 17:26:22.452564+05:30
40	pbkdf2_sha256$180000$htmgvhrVMM7M$zVTZGM8cRAvakK2D9/XO+/ijdGFp3TOXHSFDIzvgBqE=	2022-06-28 09:51:59.117918+05:30	f	habeeb	Habeeb	RahmanV	habeebrahmanv@outlook.com	f	t	2021-05-19 20:13:08.988+05:30
470	pbkdf2_sha256$180000$NdI685H5nu3Z$D7E41V6VdvLSnBwN06XGEIvL/5Dl1skntvek+yVTZzE=	\N	f	Nishad96	Nishad	Nsd	nishadgopalakrishnan0@gmail.com	f	f	2022-06-24 00:39:33.681438+05:30
467	pbkdf2_sha256$180000$lTdcGIdndqQJ$GINg3Pd0Rea3g1YVOgfw2s1itVwfwI7pc3adVPa/wQM=	2022-06-20 21:09:19.853035+05:30	f	aslamvrtly	Muhamemd	Aslam	aslamviruthully01@gmail.com	f	t	2022-06-20 21:08:00.188749+05:30
465	pbkdf2_sha256$180000$qySFY7xIv0Jx$i7olcdYtad+qL0XPFwq3onI9Giu+TD1VmOl6H4KsTFA=	\N	f	Mantri786	Jaddah Tyre Club	.	a505720848@gmail.com	f	f	2022-06-17 16:35:20.59704+05:30
371	pbkdf2_sha256$180000$j0jlkY2wcMXj$LqERvwL0YArDn6yzziN3DBF0uIh1VKdOkqqt/NSPNvA=	2022-07-12 14:13:03.007694+05:30	f	amrithaVikn	amritha	vikn	amritha@vikncodes.com	f	t	2022-02-26 10:34:49.091153+05:30
464	pbkdf2_sha256$180000$Jk2O6iAkzJcE$4ajByTp4NjClBW/5xSUA2ejJtjulkNqTb2Aynv/SDxg=	2022-07-06 13:52:27.320011+05:30	f	Ramshi	Ramshi	C	ramsheedc3@gmail.com	f	t	2022-06-15 22:48:49.506867+05:30
472	pbkdf2_sha256$180000$Ly4r1ZVkQtw9$uRWGEpcsV4t64XMz/HHT3qluKP+WpG87XY0P66YB1qQ=	2022-06-27 20:19:50.407166+05:30	f	grandtools	Mansoor	Ali	info@grandksa.com	f	t	2022-06-27 11:36:14.363073+05:30
448	pbkdf2_sha256$180000$YqArd5QDdlEn$2rAy77sBf3BNa5ijWrVmANmAGOOyRjrAmYOKjfCUgls=	2022-07-11 10:56:44.277256+05:30	f	jibinavyunax	jibinav	tk	jibinavt@gmail.com	f	t	2022-05-16 15:19:17.618612+05:30
471	pbkdf2_sha256$180000$ne5bzMHJZvpm$duD3nkibDQw/62Qfws1XluhPgMQBRWkc0t7zwy22n0U=	2022-06-24 00:46:11.076078+05:30	f	Nishad1996	Nishad	K	gopalakrishnannishad@gmail.com	f	t	2022-06-24 00:44:53.841654+05:30
461	pbkdf2_sha256$180000$VGiRuWESFOeB$JlnpgEbfuAw9JAG6xDSr/zSBpWY9xB69pXvFwZw/TVY=	2022-07-02 02:39:10.374463+05:30	f	fatimaest	Fatima	Est	fatimaibrahimyoussefest@gmail.com	f	t	2022-06-13 18:39:54.194219+05:30
460	pbkdf2_sha256$180000$oAdsSa528m4u$1TtKdM05wggxnEO349iTf1qeBPxZGiROVihuScc/7tg=	2022-07-12 13:54:09.905781+05:30	f	Abhi@635	Abhinand	P	abhinandnadupparambil@gmail.com	f	t	2022-06-13 09:43:41.487735+05:30
466	pbkdf2_sha256$180000$2FfSQouIqOWb$uYTqlntuE0PMGEqjWvJ1y+xQ/NwrJE4JUIbfCChbRWE=	2022-06-28 01:05:34.344939+05:30	f	nooruheen.mpm@gmail.com	noor	mpm	noorudheen.mpm@gmail.com	f	t	2022-06-20 17:50:00.563844+05:30
473	pbkdf2_sha256$180000$A6YZ39p2Pd1e$ojSelNIYCkNZIfZOlE4f3zbHeg3RshtAfCHi1JO195g=	2022-06-27 15:12:35.402252+05:30	f	MUNEER	MUNEER	PT	ptmuneerpba@gmail.com	f	t	2022-06-27 15:04:52.083382+05:30
453	pbkdf2_sha256$180000$lRTsTdyM8K00$AhkKKT7PP2rexF2QUIIKt228mFCntawMdcDuuekdD7s=	2022-07-02 19:03:59.792574+05:30	f	KBSAFNAS	BOSS	KB	SAFNASKB@gmail.com	f	t	2022-05-21 17:30:13.340227+05:30
468	pbkdf2_sha256$180000$004HD84jMbaw$BCKqHTlTS0NQ6ftV+C+UJGvZG8FamPP1AV08MJyyBaw=	2022-07-08 11:03:03.103613+05:30	f	muhsink@vikncodes.com	Muhsin	K	muhsink@vikncodes.com	f	t	2022-06-23 11:37:45.512364+05:30
491	pbkdf2_sha256$180000$0qoRYEORrxG7$JwzvXQcZNUgt+rt6usQfd4G0j7VSZZXPhE4e/xqvPbE=	2022-07-08 13:39:57.027541+05:30	f	ScottSidhu	Scott	Sidhu	tau.ScottSidhu.1645807780513@gmail.com	f	t	2022-07-08 13:37:30.413023+05:30
483	pbkdf2_sha256$180000$BijTnp7Gn0AA$Tc3T0aXNXBnNegLCrnHfYsCbgHPNi92UPJpVyQELt7o=	2022-07-08 09:55:00.869785+05:30	f	Ramitha	Ramitha	Gowda	Yarasnow.359646@gmail.com	f	t	2022-07-08 09:54:11.065088+05:30
484	pbkdf2_sha256$180000$gOYh5OHTmJwH$w3+STq69v2xpFGkodtDBpUaTE+ofzqhVPYu93cwkci8=	\N	f	Drogotarly.123	Drogo	Tarly	drogotarly.148943@gmail.com	f	f	2022-07-08 09:59:49.565169+05:30
485	pbkdf2_sha256$180000$qvgby1fT6OeE$6a7VY0jYtuc2HLJ6yCyrMFws7WS82V13Rg5nLbX5SWI=	2022-07-08 10:06:59.037344+05:30	f	Taugamma123	Tau	Gamma	tau.DonaldGrady.1645814430195@gmail.com	f	t	2022-07-08 10:06:23.089343+05:30
492	pbkdf2_sha256$180000$Y54ixFtZN9DE$2OjK+3UlmjLxYZfrTBIeBzTwzZUSpRekhw4QCMCP1p4=	2022-07-08 14:02:48.491142+05:30	f	peterrex	Peter	Rex	tau.peterrex.1645805317496@gmail.com	f	t	2022-07-08 14:02:03.249909+05:30
487	pbkdf2_sha256$180000$vHiqDlmzHDPa$yD6U+QrvdyUNeXXfqq0Hojekx78PFlt2RFU+u/yhz+A=	2022-07-08 10:19:26.835979+05:30	f	PetyrBolton	Petyr	Bolton	petyrbolton.830289@gmail.com	f	t	2022-07-08 10:17:51.458091+05:30
474	pbkdf2_sha256$180000$eqfgTT25fvMy$iu30V38rBwBwRyrIW3IAO/eBzrGe78sQAgm4AniBTZs=	\N	f	uvaisttt	Uvais	T	bemini3116@lenfly.com	f	t	2022-06-29 09:47:13.964657+05:30
497	pbkdf2_sha256$180000$BdCdHrU0P4Vw$UiqnricQ1i4J0eRho+tDRnQOmo2jO88qODYx9nnAUsk=	2022-07-12 13:02:14.588835+05:30	f	HabeebVikn	Habeeb	Rahman V	habeeb@vikncodes.com	f	t	2022-07-12 13:01:29.695606+05:30
486	pbkdf2_sha256$180000$5MuRjz1MKq0s$C21dCFshbj7bHrqTz4MZEI07ZivU7P5BBI5tBxNQ9eY=	2022-07-08 10:21:02.470709+05:30	f	Meerasnow0101	Meera	Snow	tau.peterrex.1645805317491@gmail.com	f	t	2022-07-08 10:16:54.165476+05:30
493	pbkdf2_sha256$180000$dGUAkheFHvDI$xDEcd0WZcYgC/zjkUIYmuG3smoUcwV24ZKJgko8zbp8=	2022-07-08 14:33:21.402267+05:30	f	Aerys B	Aerys	Baelish	AerysBaelish.456565@gmail.com	f	t	2022-07-08 14:28:21.08394+05:30
476	pbkdf2_sha256$180000$vnymu9vE0LGy$4a65NEao9NJgs2MIC8Oxq7zxKbYhqzKpyuc5gM4gkqQ=	2022-06-30 15:40:29.456141+05:30	f	RAMEEDMTR	RAMEED	MUSTHAFA	rameedmtr@gmail.com	f	t	2022-06-30 14:40:40.605535+05:30
488	pbkdf2_sha256$180000$2dVrI9MtC4IH$YSu7Yl+NZUBsRhEc35nO4U9wsKSHy2Q1W7vc84LaKgQ=	2022-07-08 13:21:28.823933+05:30	f	Eddmit	Ed	Mit	tau.EddieMitchel.1645803247881@gmail.com	f	t	2022-07-08 13:18:57.390328+05:30
499	pbkdf2_sha256$180000$ybtvkNOQnXzW$x1XcJaGNKVG1k3erj+ZYpABbfmhcfwGa989xMx2Kr5c=	\N	f	Abhinand	Abhinand	P	abhinand@vikncodes.com	f	f	2022-07-12 13:51:21.970089+05:30
498	pbkdf2_sha256$180000$MahKYQmwxUFb$+YZbv2NilneQpGiyKbXCmQUPmnfCz9nyIJe2cTKniuY=	\N	f	uvaisvikncodes1	uvais	T	uvais8888@vikncodes.com	f	t	2022-07-12 13:48:32.188127+05:30
479	pbkdf2_sha256$180000$PWKFGjljo8a4$oCAM1lM8aJgi5cAeWhkDGg04zqrJiFEAnWvDRnnvdAg=	\N	f	TopUpOnline	Top	Up	topuponlinewll@gmail.com	f	t	2022-07-06 16:51:37.142436+05:30
478	pbkdf2_sha256$180000$NkfJbM3y4L0y$+X5AdQp+vfhO0c1sLF0dIRNAkJ5pB5RT6Ll3Zz6KRWE=	2022-07-06 16:55:37.259889+05:30	f	Jaseemps	Jaseem	Ps	jasejaseem4787@gmail.com	f	t	2022-07-06 16:49:30.930153+05:30
480	pbkdf2_sha256$180000$hwBysWWEfYmv$jtOjlul0AevOajA+icvQHOO+hmnE6jFOark3FI1ZP5M=	\N	f	uvaist123	Uvais	T	pemadab206@meidir.com	f	f	2022-07-06 17:00:26.706976+05:30
477	pbkdf2_sha256$180000$8kSjk3WIUzhN$0gLQ2PXJp0tpssC+wRF++z4ziwzI0o2rqMw0bUP6XEo=	2022-07-07 09:19:14.673317+05:30	f	Nmr2022	Sadiq	Alfakeer	nmrxx20@gmail.com	f	t	2022-07-01 01:38:42.297638+05:30
490	pbkdf2_sha256$180000$oy12fw9Xq01z$4GsEMDFXur0XGlMI7S+fS2sj58L5w5/dh6KY44p9j+Y=	2022-07-08 13:36:29.471234+05:30	f	tau.DilophosauSi	Tau	Sausi	tau.DilophosauSi.1645807780511@gmail.com	f	t	2022-07-08 13:35:26.757407+05:30
481	pbkdf2_sha256$180000$Z7mKKrmMky8p$MU8c/RlNKHgUW+uHWrhkNdj4AnSQPeokkkH99fWhvM8=	2022-07-07 09:23:35.01467+05:30	f	Arkan2022	صادق	الفقير	arcanalusfy@gmail.com	f	t	2022-07-07 09:22:36.565478+05:30
482	pbkdf2_sha256$180000$cJB0ejKCkzad$I2s6TVlCm2OvRv+KZAUD/UEZupn406u12+lxiN2nHGk=	\N	f	Rashmi	Rashmi	Gowda	ramitharami1234@gmail.com	f	f	2022-07-08 09:51:01.297111+05:30
489	pbkdf2_sha256$180000$1SjfWHBoGQex$JVoZ6GnSS0JQ1ft0bIzO4Gi+C8qXoHHY0WQxUr6Mm6s=	2022-07-08 13:38:46.778463+05:30	f	Piolopascual	Piolo	Pascual	tau.TriceratopMi.1645805049374@gmail.com	f	t	2022-07-08 13:26:54.590574+05:30
494	pbkdf2_sha256$180000$Ew0mdDnDicIe$Cw9tc9N6s0CDdep47wUsUay8no4HEbXZEQ3EAi15a5Y=	2022-07-08 15:50:15.060052+05:30	f	Maisiegrady	Maisie	Grady	tau.MaisieGrady.1645814430192@gmail.com	f	t	2022-07-08 15:48:53.35723+05:30
495	pbkdf2_sha256$180000$Ur829XXuaMlJ$YQ1c+ObJJ9C+RnWkD6P25aE5EJ4BUm0r5vCrr9uFM7A=	\N	f	SAHALABA	Muhammed	Musthafa	musthafachr@gail.com	f	f	2022-07-09 13:29:11.459672+05:30
475	pbkdf2_sha256$180000$Hu0Jl43Zq6lx$+j1+Ne9/nfpSx0EZrkAuKMpSKBgGFbznLVvf3Xxur04=	2022-07-11 15:49:15.278016+05:30	f	muhammedseesh	Muhammed	Seesh	muhammedseesh@gmail.com	f	t	2022-06-29 16:52:25.858667+05:30
496	pbkdf2_sha256$180000$jLxzzp9X1AwW$9NKXxbJlqgc7rQ3Pke8epqlZCnbMSYHAgX24l+v97XI=	2022-07-11 16:29:41.651044+05:30	f	Zaramills	Zara	Mills	tau.ZaraMills.1645805049371@gmail.com	f	t	2022-07-11 16:28:43.975748+05:30
501	pbkdf2_sha256$180000$iSyKuRk2xrr0$Bjl+BuScnLoXCVoLycEYdiJkfyrAyWhB/SuVpzmpnzQ=	2022-07-12 14:05:40.123304+05:30	f	suhailvikn	Suhail	kk	suhail@vikncodes.com	f	t	2022-07-12 14:04:50.821409+05:30
500	pbkdf2_sha256$180000$ZdmUtX5j04ig$FbVXU9OKwmKzPVIpXRt2y/sBiXQ8y1zKcc1pqMFdVPs=	2022-07-12 14:26:12.713364+05:30	f	uvaistvikncodes	Uvais	T	uvais@vikncodes.com	f	t	2022-07-12 13:55:49.659171+05:30
2	pbkdf2_sha256$320000$0REkZ9AoCFzZrP83IGgOJS$m+fKhCfMExgcX5/xkE3oiiYAhDJnATjlcKExCWDM3oo=	2022-07-12 17:14:46.352807+05:30	f	viknbooks	viknbooks	llp	suhaib@vikncodes.com	f	t	2021-01-14 20:28:25.79+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: companySettings_companySettings; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public."companySettings_companySettings" (id, "Action", "CompanyName", "CompanyLogo", "Address1", "Address2", "Address3", "City", "PostalCode", "Phone", "Mobile", "Email", "Website", "VATNumber", "GSTNumber", "Tax1", "Tax2", "Tax3", "ExpiryDate", "NoOfUsers", "CreatedDate", "UpdatedDate", "DeletedDate", "CreatedUserID", "UpdatedUserID", is_deleted, is_vat, is_gst, "CRNumber", "CINNumber", "Description", "IsTrialVersion", "Edition", "Permission", "IsPosUser", "RegistrationType", "IsBranch", "NoOfBrances", "Country_id", "State_id", business_type_id, owner_id, "EnableZatca") FROM stdin;
e99a0988-637e-454f-b566-805159df8b97	A	shifa Jizan		\N	\N	\N	\N	\N	\N	\N	\N	\N	1234567890		\N	\N	\N	2021-10-03	1	2021-09-26 23:32:56.789249+05:30	\N	\N	79	79	f	f	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	79	f
0f393155-414c-4b13-a5e0-da3555ad179a	A	savadfarooque		\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2021-07-30	1	2021-07-23 17:27:29.95578+05:30	\N	\N	5	5	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	5	f
514b8798-7ffe-451d-8195-ed2b38fef7d3	M	Malbisi Trading Co							\N	\N	malbisitradingco@gmail.com		300999457900003					2021-09-30	1	2021-09-23 15:19:57.938822+05:30	\N	\N	78	78	t	t	f			شركة مالبيس التجارية	t	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	78	f
084d39dd-6fda-4b66-9ad9-ae86d0003a10	A	VIKN CODES KSA	company-logo/logo.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	2029-12-01	2	2021-03-17 12:45:03.498+05:30	\N	\N	12	12	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	12	f
4848489c-59a1-448c-9a50-059db8b9d009	A	akbar		\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	2021-05-26	1	2021-05-19 21:20:40.014+05:30	\N	\N	43	43	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	43	f
81dfac4b-d05d-4df1-83ef-b2ecd9bf48b2	A	hgh		\N	\N	\N	\N	\N	\N	\N	\N	\N	114455667788994		\N	\N	\N	2021-11-06	1	2021-10-30 14:58:13.129971+05:30	\N	\N	83	83	t	f	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	83	f
1a871202-f7e3-4e42-970c-8ea2c3eeed90	A	Abdulla Obaid al Otaibi Est		\N	\N	\N	\N	\N	\N	\N	\N	\N	300222391500003		\N	\N	\N	2021-09-15	1	2021-09-08 14:22:47.226449+05:30	\N	\N	67	67	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	67	f
fd6bcfc3-7c9c-4f18-9e6e-413b7ef23182	A	RANA SM		\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2021-11-23	1	2021-11-16 13:30:35.028237+05:30	\N	\N	101	101	f	f	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	101	f
11b63b82-ad3f-4630-b436-85cb9aab9c5c	M	saudi							0	0								2021-08-12	1	2021-08-05 17:40:43.589014+05:30	\N	\N	62	62	t	f	f		\N		f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	c50984b8-41a7-40be-bfa2-4cc22e9e24bc	a7514b31-a291-4067-8437-c54229f99774	62	f
39c1465d-c3a6-481e-85d7-64323ccc39d0	A	ABC Store		\N	\N	\N	\N	\N	\N	\N	\N	\N	1324566456874569		\N	\N	\N	2021-12-31	1	2021-09-20 19:08:01.890151+05:30	\N	\N	77	77	t	t	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	77	f
e0217e5f-d6da-4bf1-b72d-4961bff38753	A	saudi		\N	\N	\N	\N	\N	\N	\N	\N	\N	3432455525		\N	\N	\N	2021-08-12	1	2021-08-05 17:15:34.309985+05:30	\N	\N	62	62	t	t	f	\N	\N	\N	f	Standard Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	62	f
c77e1979-c361-4018-b0f7-304fcaa08a40	M	Testing							\N	\N				null				2021-08-12	1	2021-08-05 17:11:13.601924+05:30	\N	\N	62	62	t	f	f				f	Standard Edition	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	6a3e17cd-bb87-4cab-82ba-a695534e2480	a7514b31-a291-4067-8437-c54229f99774	62	f
5c49d7f2-e91f-4dcc-8119-4d99fb1b1131	A	zxcv		\N	\N	\N	\N	\N	\N	\N	\N	\N	345456789123453		\N	\N	\N	2021-11-13	1	2021-11-07 00:47:29.447254+05:30	\N	\N	83	83	t	f	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
2df75602-f5a7-4f20-a3ff-c662bd98ba06	A	KSA VIKN CODES	[object Object]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	2022-01-01	3	2021-04-03 22:26:20.309+05:30	\N	\N	12	12	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	12	f
faa5285d-2d06-4175-b907-8f6ef2672205	M	new	company-logo/1633066792336.png	New					0	0								2021-09-24	1	2021-09-17 09:33:53.005627+05:30	\N	\N	76	76	t	f	t		\N	Haii	t	Advanced	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
9d230133-6482-4c40-9de7-bbc986ec4256	A	jasmalvikn		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AABCU9603R1ZW	\N	\N	\N	2021-08-17	1	2021-08-10 14:56:58.379655+05:30	\N	\N	66	66	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	66	f
597de874-8040-46f0-ae1f-9b552d0e0e2f	A	test		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AAACC4175D1Z7	\N	\N	\N	2022-01-08	1	2021-10-01 11:25:34.603764+05:30	\N	\N	62	62	t	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	294a607d-e8b4-4341-a1b5-e40ca64d9266	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
7f5f2967-d1f6-46b0-8528-5fe4f061c6b7	A	Gst Kerala		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AAVCS8021P1ZO	\N	\N	\N	2021-07-30	1	2021-07-23 14:25:28.190567+05:30	\N	\N	62	62	t	f	t	\N	\N	\N	f	Standard Edition	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	62	f
7bfb9431-3460-4576-b7f7-464df6239ec1	A	Al wakel		AL WAKEL		\N	Abu Ariesh	84725	544277999	\N	Naifmbc7@gmail.com	\N			\N	\N	\N	2021-12-02	1	2021-11-25 21:10:59.299457+05:30	2021-11-25 21:10:59.282809+05:30	\N	149	149	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	149	f
ad3aab21-4da2-41d2-b199-0af44bdde30d	A	RAYAT SOUQ TRADING EST.		786	masjid	\N	RIYADH	11923	9662844564	\N	rayatsouq786@gmail.com	\N	302029672700003		\N	\N	\N	2022-01-31	1	2021-11-17 12:06:57.362947+05:30	2021-11-17 12:06:57.341625+05:30	\N	83	83	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	83	f
8db0e6f6-488d-4d59-bd81-901211b1fdc2	M	Abc Limited Mobile App	company-logo/1627012688210.png	testing 1	Testing 2	Address 3	Calicut	1234567	998765432	1234567	viknbooks@gmail.com	www.viknbooks.com						2023-12-01	1	2021-07-23 09:21:29.109633+05:30	\N	\N	2	2	t	f	f		\N	Flutter	f	Standard Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	c50984b8-41a7-40be-bfa2-4cc22e9e24bc	a7514b31-a291-4067-8437-c54229f99774	2	f
bd326aa7-e4d5-46a0-a186-ab18c7601861	A	Sook hotel		\N	\N	\N	\N	\N	\N	\N	\N	\N	87766555577		\N	\N	\N	2022-03-01	3	2021-10-01 20:08:19.914518+05:30	\N	\N	81	81	f	t	f	\N	\N	\N	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	81	f
02551eab-9dd6-42a9-bd32-e58ae0dbe548	A	qwerty		\N	\N	\N	\N	\N	\N	\N	\N	\N	323456789145453		\N	\N	\N	2021-11-13	1	2021-11-07 00:45:09.36354+05:30	\N	\N	83	83	t	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
dc90ba64-a612-4f54-98c8-3b2958252025	A	UVAIS		\N	\N	\N	\N	\N	\N	\N	\N	\N	4785462145554		\N	\N	\N	2021-10-14	1	2021-10-07 15:56:57.876278+05:30	\N	\N	82	82	t	t	f	\N	\N	\N	t	Basic Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	82	f
3c69ed9e-eb41-46cf-90d1-daa69d0f1a20	M	Al Zahra Al Raedah Establishment(dupli)					Jeddah		595716300	\N	nasrukatti@gmail.com		123456789012345					2021-11-30	1	2021-11-18 22:30:30.722101+05:30	2021-11-18 22:30:30.705877+05:30	2022-01-11 18:11:11.59357+05:30	62	62	t	f	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	62	f
97ba1b7c-1ebc-44cd-87fd-b13c5ad59e5b	A	davar		\N	\N	\N	\N	\N	\N	\N	\N	\N	1364646353646		\N	\N	\N	2021-11-17	1	2021-11-10 22:23:06.642955+05:30	\N	\N	106	106	f	f	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	106	f
622047c2-fa8b-416f-a1fb-02918e01edab	A	HT Trading		\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2021-08-12	1	2021-07-06 16:32:00.44196+05:30	\N	\N	56	56	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	56	f
8784b5b2-94e0-4357-b178-f40be7af55b3	M	DEMO							\N	\N			12345678912345					2021-11-16	1	2021-11-09 13:40:50.364322+05:30	\N	\N	103	103	f	t	f				t		3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	103	f
7b06282d-5d53-4e02-b2c8-35e44428866e	A	asdgh		\N	\N	\N	\N	\N	\N	\N	\N	\N	323456459123453		\N	\N	\N	2021-11-13	1	2021-11-07 00:46:45.985973+05:30	\N	\N	83	83	t	f	f	\N	\N	\N	t	Essential	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
88faf6cc-e89e-4be9-986a-0545a4093b56	M	AALAM ALFISTHAK TRADING EST.							\N	\N			310098690800003					2021-12-04	2	2021-11-27 14:59:48.924544+05:30	\N	\N	157	157	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	157	f
fee75eb9-a4ee-4003-aab4-348844106ae2	M	Safabawadi							\N	\N			Safabwadi					2021-11-12	1	2021-11-05 11:38:18.588356+05:30	\N	\N	96	96	f	t	f				t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	96	f
380f057b-d36a-4510-9662-864c2fafbd40	A	1234	company-logo/das.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	32AABCU9603R1ZW	\N	\N	\N	2025-11-30	5	2021-09-25 13:26:55.967782+05:30	\N	\N	76	76	f	f	t	\N	\N	\N	t	Advanced	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	f75a963f-9c9d-46c6-ab29-82339ddf1e1c	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
06e243cc-0967-4abc-9ba6-0cba46ba6b76	M	Mariya							\N	\N			1324566456874569					2021-11-13	2	2021-11-06 15:35:23.911446+05:30	\N	\N	97	97	f	f	f				t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	97	f
11d9b1b1-b379-4e1a-86f9-90b77110b675	A	HEALING LIGHT INTERNATIONAL		\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2021-07-05	1	2021-06-28 13:01:53.626933+05:30	\N	\N	54	54	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	54	f
2064907b-3dd6-4efe-a449-d2f3ad4bf9c4	M	SAHALABA	[object Object]						\N	\N								2023-01-14	1	2021-01-14 20:54:37.08+05:30	2021-01-14 20:54:37.08+05:30	\N	3	3	f	f	f		\N		f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	3	f
633797a4-c23b-4ce3-b00f-aba93bd2c7ba	M	HOOTH text							\N	\N			31154154526565					2021-12-31	3	2021-07-27 15:19:32.582166+05:30	\N	2022-07-01 11:11:52.7202+05:30	31	31	t	f	t				f	Enterprise Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	31	f
35d738dd-d831-4404-827a-0c488b5f0948	M	sss sdfsdf sdf sdf sdf sdf sdf sd f sd f sd fs df sdf							\N					32AAVCS8021P1ZO				2022-01-09	1	2021-07-28 16:20:54.016983+05:30	\N	\N	21	21	f	t	f				f	Professional	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	21	f
1b8f0a96-fe52-44aa-8bae-1bb62066c31c	M	infiniti healthstore	company-logo/f15c0f81b7bf4f278b9c00615a36b7f1-0001.jpg	B1 SUITE#132	SJRRA,LR TOWER	S.JANATHA ROAD	PALARIVATTOM,COCHIN	682025	\N	9846117765	hello@infinitihealthstore.com			32AVRPT4170E1ZE				2021-07-14	1	2021-07-07 22:13:35.511447+05:30	\N	\N	57	57	f	f	f		\N		f	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	57	f
059d5661-440d-41a9-b9b8-84ddf090b1ca	M	مؤسسة الشهاداء المنظفات	company-logo/1e589334-5093-45d1-ae96-13743671ad826468032739354052287.jpg	ابوعريش	احوال ابوعريش		جازان	84411	553849316	0	sarwarnasir134@yahoo.com		٣٠٠٧٧٢٨٥٩٤٠٠٠٠٣					2021-12-04	1	2021-11-20 15:29:30.961151+05:30	2021-11-20 15:29:30.941727+05:30	\N	139	139	f	t	f	٥٩٠١٧٢٠٨٨٦	\N	محل القصواء	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	139	f
cba9c14c-87ff-4230-8177-3865bb7bd3b0	A	Testing Vat Company		للملابس جاهزة	المملكة العربية السعوديه الرياض	\N	الرقم الضريبي:٣١٠٥٥٨٤٥٤٥٠٠٠٠٣	875421	8714152075	\N	rabeeh@vikncodes.com	\N	343245552512343		\N	\N	\N	2021-11-26	1	2021-11-19 11:37:46.446221+05:30	2021-11-19 11:37:46.430102+05:30	\N	62	62	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	b07d41ee-7d6a-45e0-81b7-c3717060bf2e	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
a7bc7605-e44c-4f06-8cd2-f4e8bb1f00f0	A	Sook dhakil		\N	\N	\N	\N	\N	\N	\N	\N	\N	98666688777		\N	\N	\N	2022-12-31	1	2021-10-01 20:07:30.330572+05:30	\N	\N	81	81	f	t	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	81	f
6fe810cd-e99d-4d28-8dd3-303553fe14e2	A	RAYAT SOUQ TRADING EST.		\N	\N	\N	\N	\N	\N	\N	\N	\N	302029672700003		\N	\N	\N	2022-01-31	1	2021-06-20 00:18:45.831382+05:30	\N	\N	51	51	f	t	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	51	f
d05198b3-47e0-4d5e-ab67-1562ffa9f688	A	vikn	company-logo/IW2028129.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	32AABCU9603R1ZW		\N	\N	\N	2021-09-23	1	2021-09-16 10:51:00.760326+05:30	\N	\N	76	76	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
ad6522e3-a264-40cc-8afb-e87f5b46ad66	M	Honey Chops Bakes		Central School Road	Govindapuram		Calicut	673016	0	9846779916	honeychopsclt@gmail.com			32EGHPA4531D1Z3				2021-11-15	1	2021-11-03 10:52:23.654233+05:30	\N	\N	91	91	f	f	t				t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	91	f
417147a0-4ba1-4feb-a826-bdcbb3319fb9	A	Batch Company		\N	\N	\N	\N	\N	\N	\N	\N	\N	34556777889983		\N	\N	\N	2023-12-01	1	2021-11-10 16:20:11.394752+05:30	\N	\N	2	2	f	t	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	c50984b8-41a7-40be-bfa2-4cc22e9e24bc	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
830d6737-3e27-466d-9f25-13c655bddde2	M	محمود محمد موسس فقيهي	company-logo/1633813362188_Qajzk96_VXpKcNK_Mek2Yl0_u2cyPw5_3MsvORm.png	Jizan	Airport Road				0545982976	0533134959	info@vikncodes.com	www.vikncodes.com	300882765400003					2023-01-01	5	2021-07-04 00:28:47.829081+05:30	\N	\N	12	12	f	t	f	5900167935		Vikn Codes	f	Professional	3	f	lpc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	75	f
c99ad37f-c420-4b01-85b4-1da43c2d6960	M	Testing Company LLP Vat	company-logo/1637223590500_tUa2XWT_Wg7J1Cb.png	للملابس جاهزة	المملكة العربية السعوديه الرياض		الرقم الضريبي	٥٥٣٥٥٥٤٨٣	8714152075	8714152075			3432455525					2022-06-30	1	2021-07-23 10:12:16.29414+05:30	\N	\N	62	62	t	t	f			مؤسسة عده عبدالعزيزسمران شديد	f	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	c50984b8-41a7-40be-bfa2-4cc22e9e24bc	a7514b31-a291-4067-8437-c54229f99774	62	f
efd37913-c2c4-41da-9345-2f5b1dda652f	A	IND		\N	\N	\N	\N	\N	\N	\N	\N	\N	112345678901245		\N	\N	\N	2021-11-04	1	2021-10-28 13:59:45.16433+05:30	\N	\N	88	88	f	f	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	88	f
17c69f83-436f-428f-9618-f24f1b13cdfe	A	pos test company		\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2021-10-12	1	2021-10-05 14:07:15.553594+05:30	\N	\N	62	62	t	f	f	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
ff70e4dd-44f5-43f0-8c32-5bdd507afff8	A	Gst Kerala		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AAVCS8021P1ZO	\N	\N	\N	2021-07-30	1	2021-07-23 14:27:31.144824+05:30	\N	2021-10-19 11:43:27.200435+05:30	62	62	t	f	t	\N	\N	\N	f	Standard Edition	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	62	f
70106d11-672e-40ea-9f50-a5495faa515a	A	ABC company		\N	\N	\N	\N	\N	\N	\N	\N	\N	123456789123456		\N	\N	\N	2021-12-31	2	2021-10-19 13:47:11.807498+05:30	\N	\N	83	83	f	t	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
fea7a719-3a31-4194-9612-2993a8f361d5	A	Testytt	company-logo/a9e2830a-20f8-4d08-9082-021e1fdaa0d15284441285818464384.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2021-10-09	1	2021-10-02 14:46:48.761723+05:30	\N	\N	62	62	t	f	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	3b50d022-0101-4a17-8487-5b55674b5250	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
8c8b40fa-b314-4141-8356-cc371d08aefa	A	AL Zahrat Al Raeda Est.		\N	\N	\N	\N	\N	\N	\N	\N	\N	300755358600003		\N	\N	\N	2021-11-01	1	2021-10-25 20:23:47.080603+05:30	\N	2021-11-23 18:57:27.554465+05:30	77	77	t	f	f	\N	\N	\N	t	Standard Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	77	f
d8fcda4b-0921-4469-b0fe-317c837c4d98	M	Xyz							\N	\N			123456789123458					2021-12-31	1	2021-10-21 17:32:55.097655+05:30	\N	\N	83	83	f	t	f				t	Advanced	3	t	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	83	f
beb18073-499e-4957-b970-5310af39ee36	A	Abc		\N	\N	\N	\N	\N	\N	\N	\N	\N	123456789012345		\N	\N	\N	2021-11-03	1	2021-10-27 23:20:57.710316+05:30	\N	\N	88	88	f	f	f	\N	\N	\N	t	Essential	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	88	f
f0c06f47-1a55-450b-b4e5-a410afe78803	M	Allier Traders Private Limited		karuvannur(po)	naduvannur(via)		kozhikode	673614	0	9846522315								2022-04-01	4	2021-11-03 20:50:54.459893+05:30	\N	\N	92	92	f	f	t			Allier Traders Private Limited	f	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	92	f
e0a6a17b-0ac9-4869-97ed-b8b5e6dcbe5b	A	Vikn Codes LLP		\N	\N	\N	\N	\N	\N	\N	\N	\N	32qwertdfgfdeZ1		\N	\N	\N	2021-10-14	1	2021-10-07 15:59:07.889884+05:30	\N	2022-03-26 10:18:46.568009+05:30	82	82	t	t	f	\N	\N	\N	t	Basic Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	82	f
9b254010-7079-4dd2-b2be-8e295129053f	A	XYZ		\N	\N	\N	\N	\N	\N	\N	\N	\N	112233445566778		\N	\N	\N	2021-11-03	1	2021-10-27 11:23:14.038355+05:30	\N	\N	88	88	f	f	f	\N	\N	\N	t	Essential	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	88	f
d66bfe5c-8871-4d76-97f5-60f4a1c8462b	A	Test		\N	\N	\N	\N	\N	\N	\N	\N	\N	1324566456874569		\N	\N	\N	2021-11-01	1	2021-10-25 20:57:05.758288+05:30	\N	\N	77	77	f	f	f	\N	\N	\N	t		3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	77	f
dad5038c-1339-466a-8a8e-2e61c55cf0d0	M	TALAEA JUHANI TRADING EST		BAASHAN CENTRE	KING FAHAD ROAD		JEDDAH	21491	126504010	\N	talaeajuhani789@gmail.com		300193963900003					2021-12-09	1	2021-12-03 01:11:43.45293+05:30	2021-12-03 01:11:43.438511+05:30	\N	191	191	f	t	f	4030443344			t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	191	f
d06ea795-8605-4081-bf24-0c730a9f4108	A	MEDICOPHARM	company-logo/Copy_of_Red_and_black_colors_logo_template_design_-_Made_with_PosterMyWall.png	124	Lnd	\N	gdfhy	789067	789878654535	\N	MEDI@GMAIL.COM	\N	300200300400503	\N	\N	\N	\N	2022-06-13	1	2021-12-06 12:49:13.680078+05:30	2021-12-06 12:49:13+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	t	20	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
82a6282d-3df3-40cc-accd-46210965843f	M	Qatar Test		Address 1	Address1	Aaddres3	City	676319	8714152075	2356								2021-10-09	1	2021-10-02 11:26:59.298143+05:30	\N	\N	62	62	t	f	f			D S	t	Standard	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	e101e0ef-c232-4b47-a6d6-0f8c6962e138	a7514b31-a291-4067-8437-c54229f99774	62	f
c165f46b-02f4-4632-85ad-2abe55cf40d7	M	KALMA FOODS							\N				310767936500003					2023-04-19	1	2021-04-19 23:10:10.62+05:30	\N	\N	23	23	f	t	f				f	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	23	f
aa43a8e1-895b-446e-af06-6a59b04f5008	A	vat company		11	ssss	\N	ww	2345678	3456777877	\N	vat@gmail.com	\N	333444555667733		\N	\N	\N	2021-11-26	1	2021-11-19 11:45:01.886742+05:30	2021-11-19 11:45:01.869573+05:30	\N	138	138	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	138	f
3209e419-99c7-40fe-8356-a8ac77a5c5db	M	NKV GROUP	company-logo/allec-gomes-xnRg3xDcNnE-unsplash_GCYSkQa_umiGW12.jpg	124	Lnd		Madinah	789067	789878654535		aa@gmail.com		300200300400503	null				2022-10-27	5	2021-12-06 14:14:17.577947+05:30	2021-12-06 14:14:17+05:30	2022-03-04 15:18:47.489151+05:30	76	76	t	t	f				t	Standard	3	f	jv	t	5	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	a7514b31-a291-4067-8437-c54229f99774	76	f
adfe0099-614a-45ea-87a5-18c0bafbd87b	A	RedFlora		\N	\N	\N	\N	\N	\N	\N	\N	\N	12345689987654553		\N	\N	\N	2021-11-07	1	2021-10-31 20:53:27.686478+05:30	\N	\N	90	90	f	f	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	90	f
3f4bb1ba-1e0e-4843-817c-a47566638c07	A	QWET		\N	\N	\N	\N	\N	\N	\N	\N	\N	111111111111111		\N	\N	\N	2021-11-06	1	2021-10-30 14:56:30.875526+05:30	\N	\N	83	83	f	f	f	\N	\N	\N	t	Essential	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	83	f
05293d19-7c82-421f-90d5-f416c0f87e58	A	Test Vat Pvt Ltd		للملابس جاهزة	المملكة العربية السعوديه الرياض	\N	الرقم الضريبي:٣١٠٥٥٨٤٥٤٥٠٠٠٠٣	874147521	8714152075	\N	rabeeh@vikncodes.com	\N	343245552522223		\N	\N	\N	2021-11-26	1	2021-11-19 11:43:44.516377+05:30	2021-11-19 11:43:44.498714+05:30	2022-02-10 15:04:55.736416+05:30	62	62	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	c50984b8-41a7-40be-bfa2-4cc22e9e24bc	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
66baa829-5f3e-46a2-a0dc-2b97b412972b	A	التنظيم 2				\N	Riyadh	46	5755	\N	ss@gmail.com	\N			\N	\N	\N	2021-12-15	1	2021-12-08 16:06:47.350401+05:30	2021-12-08 16:06:47.334824+05:30	2022-02-16 12:02:28.929205+05:30	62	62	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	c50984b8-41a7-40be-bfa2-4cc22e9e24bc	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
58744bff-2589-4580-82ad-a294cc94fe92	A	invalid_error		\N	\N	\N	\N	\N	\N	\N	\N	\N	34533533		\N	\N	\N	2023-12-01	1	2021-10-07 15:47:14.331134+05:30	\N	\N	2	2	t	t	f	\N	\N	\N	t	Basic Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
fafdc340-4ea2-4097-b8b7-9f5180f48ec2	A	invalid_error2		\N	\N	\N	\N	\N	\N	\N	\N	\N	34533533		\N	\N	\N	2023-12-01	1	2021-10-07 15:51:04.848901+05:30	\N	\N	2	2	t	t	f	\N	\N	\N	t	Basic Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
e3d49bf9-17c5-4e38-9997-25215b50e505	A	Dragon		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AABCU9603R1ZW	\N	\N	\N	2023-12-01	1	2021-10-01 11:23:52.479203+05:30	\N	\N	2	2	f	f	t	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
2ba14ac3-2c8d-46e7-bf1d-00c637ed6624	A	medico1	company-logo/Copy_of_Red_and_black_colors_logo_template_design_-_Made_with_PosterMyWall_iycUB2X.jpg	124	lnd	\N	gdfhy	789067	789878654535	\N	medico@gmail.com	\N	300200300400503		\N	\N	\N	2021-12-13	1	2021-12-06 11:53:00.630046+05:30	2021-12-06 11:53:00.611246+05:30	\N	76	76	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
168db3df-156f-46c2-ba6c-008a813a16dc	M	Hhhhhhمؤسسة سارة غريب بن محمد العجمي التجارية					Najran	66243	552467655	0	saragaribest2021@gmail.com							2021-12-15	1	2021-12-09 00:57:46.366952+05:30	2021-12-09 00:57:46.351824+05:30	\N	211	211	f	f	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	37e24037-20a8-4f34-98a2-5607ddf3e010	a7514b31-a291-4067-8437-c54229f99774	211	f
fa92f5e0-5f93-489f-9039-c1889af9d08a	A	medico2	company-logo/Copy_of_Red_and_black_colors_logo_template_design_-_Made_with_PosterMyWall_CRbFNXu.jpg	124	Lnd	\N	calicut	789067	789878654535	\N	supplier1@gmail.com	\N	300200300400503		\N	\N	\N	2021-12-13	1	2021-12-06 11:57:27.528684+05:30	2021-12-06 11:57:27.508512+05:30	\N	76	76	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
af91cb66-6ad3-4ae7-8c49-30aab7202bb8	A	SOUDI MUTTIL		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	897867564545	\N	uvaist1997@gmail.com	\N	345335331111113	\N	\N	\N	\N	2021-12-14	1	2021-12-07 10:31:31.732804+05:30	2021-12-07 10:31:31+05:30	\N	222	222	f	t	f	\N	\N	\N	t	Standard	3	f	\N	t	10	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	222	f
45eafbb3-0da1-437c-ac09-2e9ce9cc3e22	A	IMPAKT		\N	\N	\N	\N	\N	\N	\N	\N	\N	310029907600003		\N	\N	\N	2021-12-13	1	2021-12-07 01:26:50.449368+05:30	\N	\N	227	227	f	t	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	227	f
1e8b311c-977c-4b43-b90e-6b1efb5a546c	A	Muttil		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	9898989898	\N	uvaist1997@gmail.com	\N	\N	32AAVCS8021P1Z7	\N	\N	\N	2021-12-14	1	2021-12-07 10:25:22.812555+05:30	2021-12-07 10:25:22+05:30	\N	222	222	f	f	t	\N	\N	\N	t	Standard	3	f	\N	t	10	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	222	f
fffc6766-24a0-4220-a9ec-258e579c8646	A	org1				\N	Riyadh	46	53852	\N	aa@gmail.com	\N			\N	\N	\N	2021-12-15	1	2021-12-08 16:04:55.464601+05:30	2021-12-08 16:04:55.447152+05:30	\N	62	62	t	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	6ef7e793-e7fd-404b-bc81-a38167dc0d92	9cb75cfa-0726-435c-8665-2cdaff55e12b	62	f
c68aa9e2-9c87-4aa9-b750-791a919ab962	M	MAJED NASER HAMED AL-GHAMDI ADVERTISING AGENCY	company-logo/2_VXweLLm_NcXflH5_jd2tINF.png				Bagdadiya , Sharqiyah 4977 jeddah	20323	966126040205	\N	pixelgraphicsksa@gmail.com	www.pixelksa.com	310245031900003					2021-12-13	1	2021-12-07 01:53:20.399706+05:30	\N	\N	226	226	f	t	f	30303030			t	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	226	f
c1a3ee0e-4bf1-447c-954e-54f56bdaaa54	A	medic test		q	w	\N	wrwer	3465476	32534664634	\N	medictest@gmail.com	\N	346577575757673		\N	\N	\N	2021-12-13	1	2021-12-06 12:46:44.961276+05:30	2021-12-06 12:46:44.937483+05:30	\N	76	76	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
731bc7d9-f1ba-4694-b428-e709241f659c	A	وكالة محمد ابن جعفر ابن محمد المنديلي		\N	\N	\N	\N	\N	\N	\N	\N	\N	310623007700003		\N	\N	\N	2021-11-30	1	2021-11-23 18:10:22.102444+05:30	\N	\N	141	141	f	f	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	141	f
bae725f9-8660-4c26-952c-547ccaba8380	A	Hi				\N	Jeddah	6789654	852699855	\N	a@hotmail.com	\N		134556778677	\N	\N	\N	2021-11-21	1	2021-11-14 22:13:24.255442+05:30	2021-11-14 22:13:24.238702+05:30	\N	84	84	f	f	t	\N	\N	\N	t	Standard Edition	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	965473b2-6bf9-4190-b20a-c13b07b54386	a7514b31-a291-4067-8437-c54229f99774	84	f
b07cde28-a7b5-479f-9b97-67b74d6f4c2b	A	Test				\N	City		8714152075	\N	rabeeh@vikncodes.com	\N	1245898767		\N	\N	\N	2021-11-30	1	2021-11-23 19:11:47.849387+05:30	2021-11-23 19:11:47.831616+05:30	\N	62	62	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
8a61781a-6279-4e75-a23f-874775c385ed	A	Printech		\N	\N	\N	\N	\N	\N	\N	\N	\N	3001122334455665		\N	\N	\N	2021-11-29	1	2021-11-22 22:34:55.624998+05:30	\N	\N	83	83	t	f	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
8900c397-2a72-45ee-98f0-d76b7e977e7e	M	Al Zahrat Al Raeda Est.		جدة	جدة	جدة	Jeddah	22231	536717127	533252568	zahraraedaest@gmail.com	www.google.com	300755358600003					2022-11-12	1	2021-10-26 19:46:32.862251+05:30	\N	\N	85	85	f	t	f	4030223275		مؤسسة الزهرة الرائحة	f	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	85	f
05a071e7-d080-4b4e-b736-e65ea209078f	A	Right way transport		\N	\N	\N	\N	\N	\N	\N	\N	\N	100111222333444		\N	\N	\N	2021-08-16	1	2021-08-09 22:17:30.34544+05:30	\N	\N	65	65	f	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	90e23789-2fa8-4d15-be90-0a2e779c8a7c	a7514b31-a291-4067-8437-c54229f99774	65	f
f711c84a-e80d-4bfa-8fb2-f8ffffc926aa	A	MEDICO	company-logo/Copy_of_Red_and_black_colors_logo_template_design_-_Made_with_PosterMyWall.jpg	124	lnd	\N	riyadh	787877	9078654534	\N	medico@gmai.com	\N	300200300400503		\N	\N	\N	2021-12-13	1	2021-12-06 11:21:48.489072+05:30	2021-12-06 11:21:48.470127+05:30	\N	76	76	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
904da37a-8db4-4c00-b5b4-5c38207f4299	M	TAZAJ AL HARAQ	company-logo/WhatsApp_Image_2021-08-12_at_6.41.26_PM_1.jpeg	Dowar Henawi	Haram petrol station		Jizan		\N	536589158			30000000003					2021-11-30	1	2021-11-16 13:16:17.460066+05:30	\N	\N	101	101	f	t	f				t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	101	f
338771ca-5f9e-4743-8d07-eec2b20d19db	M	Al Jazeera Center		Sharafiya-Jeddah	Behind Tahweel Al Rajhi Bank				553920154	502659869			300236962600003					2022-12-06	1	2021-12-06 21:31:47.595066+05:30	\N	\N	223	223	f	t	f				f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	223	f
f3afa022-4542-43f4-8e7d-0b5e67fea701	M	رمز عالم الرياضه		1234	جازان		جازان	78856	557483286	0	abdulmuneertsy@gmail.com		302254230900003					2021-11-30	1	2021-11-23 15:50:11.500498+05:30	2021-11-23 15:50:11.485419+05:30	\N	144	144	f	t	f	5901718027			t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	144	f
aa14027b-6a27-435a-8b95-02d8f2f956ba	A	checking company		\N	\N	\N	\N	\N	\N	\N	\N	\N	332434345353535		\N	\N	\N	2023-12-01	1	2021-11-23 13:47:31.040362+05:30	\N	\N	2	2	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	2	f
739ce9e6-e213-4a3d-9ff3-3d44833d2b2c	M	vikncodes	company-logo/Eagle_1.JPG	poonur	balussery	poonur	calicut	673712	9078456745	9078456745	vikncode@123.con	https://www.vikncodes.com/		32AABCU9603R1ZW				2021-09-23	1	2021-09-16 10:49:43.614025+05:30	\N	\N	76	76	f	f	t		12345	new	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	76	f
0cf65f46-4722-4490-a8cb-ef1aee465f59	M	uvaist	company-logo/brigitte-tohm-EAay7Aj4jbc-unsplash.jpg	KANNAPANKUNDU Puthuppadi	Mailellampara		Kozhikode	673586	8989898989	9045356823	uvaist1997@gmail.com	www123.com		32AAVCS8021P1Z7				2021-12-01	10	2021-11-24 15:07:28.557342+05:30	2021-11-24 15:07:28+05:30	\N	76	76	f	f	t	cin009		private company	t	Standard	3	f	pvt	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	965473b2-6bf9-4190-b20a-c13b07b54386	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
144756c2-a583-497a-b493-87aff1a81873	A	Printech		\N	\N	\N	\N	\N	\N	\N	\N	\N	3001122334455667		\N	\N	\N	2021-11-29	1	2021-11-22 22:36:05.936457+05:30	\N	\N	83	83	t	f	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
0c7db4bb-6dd8-4d3a-a252-76ab210c32fd	A	Printech		\N	\N	\N	\N	\N	\N	\N	\N	\N	3001122334455667		\N	\N	\N	2021-11-29	1	2021-11-22 22:38:14.466237+05:30	\N	\N	83	83	f	t	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	83	f
5696770c-1f49-40aa-9706-8be7136a32a4	M	30 Days for Trading Est							\N	\N			310084934500003					2021-11-30	1	2021-11-23 20:34:48.11687+05:30	\N	\N	146	146	t	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	146	f
c0f6338d-7023-4cb9-bf23-4084d0584dbf	M	DUBAI EXHIBITION		123	SOOKDHAKIL		JIZAN	78845	539061854	\N	sahad6161@gmail.com		300836807300003					2022-03-01	2	2021-11-22 16:26:25.925221+05:30	2021-11-22 16:26:25.906945+05:30	\N	140	140	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	140	f
cf65fc71-7ef9-4a20-a6e1-7118eeb1ef99	M	Dubai Center	company-logo/initial-dc-logo-design-icon-862481_gAWTgH5_wVXJT6s.jpg	برج البلد	سوق دخيل		jazan	82511	\N	\N	dubaicenter722@gmail.com		300836807300003					2021-12-20	3	2021-11-24 19:54:44.961818+05:30	2021-11-24 19:54:44.942523+05:30	\N	142	142	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	142	f
c1105db0-5b80-44fe-a80c-505e0eeebeb4	M	Ok	company-logo/1633324057135.png	Rfyhujyb	Rfgtbhhn	Cuyvubhu	Gf Uh	aaadf	555	5688	aa@gmail.com	www						2021-10-11	1	2021-10-04 10:35:49.315482+05:30	\N	\N	76	76	t	f	f		\N	Tvybmun	t	Advanced	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	6ef7e793-e7fd-404b-bc81-a38167dc0d92	a7514b31-a291-4067-8437-c54229f99774	76	f
52989974-f7f9-4066-bfdb-04d3b71e9c39	A	OGF		\N	\N	\N	\N	\N	\N	\N	\N	\N	30000030003		\N	\N	\N	2022-12-31	2	2021-10-29 20:22:04.589001+05:30	\N	\N	89	89	f	f	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	c067b77d-1056-4eb8-9769-0733a29a0e9f	89	f
8bc08e87-b0ed-4295-a58f-0b903fdc24d3	A	المهند للاتصالات		المهند للاتصالات	مجمع المحمدية	\N		84725	544277999	\N	naifmbc7@gmail.com	\N			\N	\N	\N	2021-12-07	1	2021-11-30 23:06:44.924708+05:30	2021-11-30 23:06:44.909845+05:30	\N	149	149	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	149	f
a193c887-5b48-4b77-a07f-b15834ad0c09	A	مؤسسة عبدالحكيم سالم يحيى حريصي التجاريه				\N	ابو عريش	٦٢٧٩٩	509971173	\N	meharnadeem007@gmail.com	\N			\N	\N	\N	2021-12-06	1	2021-11-29 23:42:26.666958+05:30	2021-11-29 23:42:26.646658+05:30	\N	102	102	f	t	f	\N	\N	\N	t	Standard Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	102	f
55168dd0-08be-4eb3-bfe9-a35ca739538b	M	SAAD  MUSALAM AL AMRI TRADING EST		Al Rajhi Building	King Faisal Street	P.O. Box # 2823	Dammam	32416	\N	\N			300366676100003					2021-12-03	1	2021-11-27 01:03:14.778809+05:30	\N	\N	153	153	f	t	f	2301891616			t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	153	f
a808d432-9a5f-4cc5-84a4-aebf09906d27	M	jasmal  co							\N	\N			3432455525	cco				2021-11-23	1	2021-11-16 19:09:53.065425+05:30	\N	\N	62	62	t	f	t				t	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
6f7eb0d3-719d-43fa-9c33-c9bac79038a7	A	new organization branch		xyz	ssd	\N	dfg	65898565	6474848393	\N	neworg@gmail.com	\N		32AABCU9603R1ZW	\N	\N	\N	2021-12-09	1	2021-12-02 15:02:00.871853+05:30	2021-12-02 15:02:00.854159+05:30	\N	178	178	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	178	f
e90a806e-cf1b-452e-aa23-64d3b60eae50	A	fkcgroups				\N			555846400	\N	firoskhanchemban@gmail.com	\N			\N	\N	\N	2021-12-05	1	2021-11-28 15:07:13.286963+05:30	2021-11-28 15:07:13.238907+05:30	\N	159	159	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	159	f
28d5bbcf-47cf-4f3c-ab93-a547b0e377aa	A	SS Trading		12	warehouse	\N	Riyadh	123	112412096	\N	salim.yousuf@awanalmadar.com	\N			\N	\N	\N	2021-12-08	1	2021-12-01 12:56:30.464721+05:30	2021-12-01 12:56:30.448566+05:30	\N	175	175	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	175	f
32e26c3f-3945-43ea-84e0-7dc2fdc9f5d9	A	Al Zahra Al Raedah Establishment				\N	Jeddah		595716300	\N	nasrukatti@gmail.com	\N			\N	\N	\N	2021-12-01	1	2021-11-24 12:14:24.983877+05:30	2021-11-24 12:14:24.965146+05:30	\N	134	134	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
dae06e2b-6905-4876-80f4-a974e99e02e8	M	مطعم لذائذ فروج لتقديمجبات							\N	\N			591050011200003					2021-11-21	1	2021-11-14 23:19:45.305248+05:30	\N	\N	110	110	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	c067b77d-1056-4eb8-9769-0733a29a0e9f	110	f
bbde7d40-82ae-4a1a-ab98-358304f7270f	M	Company1	company-logo/OIP.jpeg	124	lnd		calicut	789067	789878654535		aa@gmail.com		300200300400503					2021-12-06	1	2021-11-29 12:34:30.253831+05:30	2021-11-29 12:34:30.236293+05:30	\N	76	76	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
e45bad0e-d49b-4502-8439-7f1e3d669032	A	dshfjsd				\N			9876784567	\N	dhsdjh@gmail.com	\N			\N	\N	\N	2023-12-01	1	2021-11-26 16:40:04.198369+05:30	2021-11-26 16:40:04.16584+05:30	\N	2	2	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	234d135a-25d3-4832-a56c-a1a21ebe8ebe	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
86488016-4142-49a1-bde5-0b6e13014029	A	phrmcy				\N			4525365985	\N	phrmcy@gmail.com	\N		32AABCU9603R1ZW	\N	\N	\N	2023-12-01	1	2021-11-25 17:17:50.673518+05:30	2021-11-25 17:17:50.654959+05:30	\N	2	2	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
46cae537-b9f9-42fd-b546-06e9dc2bb812	M	NAJA EXCELLENCE TRADING EST.					ALQUZ		966556372898	0	anfo.naja@gmail.com		311021409600003					2022-02-28	4	2021-11-27 01:07:53.076341+05:30	2021-11-27 01:07:53.061523+05:30	\N	155	155	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	155	f
a3ade88a-d45f-4f41-880f-6ebac146db28	M	Fazah industrial company		new industrial cit			riyadh		966593980646	\N	chettalinisam@gmail.com		312212165165163					2021-12-08	1	2021-12-01 21:48:30.62064+05:30	2021-12-01 21:48:30.606027+05:30	\N	173	173	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	173	f
ce2fe87f-0cda-4f7b-86dd-2c0f5300ddaa	A	Youns				\N	Jizan	85555	568019064	\N	hashimchenni59@gmail.com	\N			\N	\N	\N	2021-12-09	1	2021-12-02 04:03:08.085161+05:30	2021-12-02 04:03:08.068783+05:30	\N	182	182	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	182	f
6f95910f-277d-4dd7-8584-d0e832ce1f39	M	مؤسسة خالد ابراهيم احمد مباركي للحلويات		0	0		sabiya	88888	532005104	\N	rafeequecv9@gmail.com		301050662900003					2021-12-03	2	2021-11-27 01:24:33.604034+05:30	2021-11-27 01:24:33.583599+05:30	\N	156	156	f	t	f	5907525927			t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	156	f
0d223f81-c094-4f4d-9385-10f64215d27c	A	aaaa		324	sdd	\N	Calicut	676123	9809991515	\N	habeebrahmanv@outlook.com	\N		32ABCDE1234T1ZW	\N	\N	\N	2021-12-03	1	2021-11-26 20:32:45.90602+05:30	2021-11-26 20:32:45.889816+05:30	2022-06-07 16:27:46.995159+05:30	40	40	t	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	40	f
ace058bf-1449-4e97-b46c-4e999525aac1	M	مستودع الجربة		1252	أبو عريش|خط الأحد		أبو عريش	685285	505720848	0	ma3690596@gmail.com		300449022900003					2021-12-06	1	2021-11-30 01:43:33.628811+05:30	2021-11-30 01:43:33.614283+05:30	\N	162	162	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	162	f
2ee86397-902d-4136-94ab-9f7efd004004	M	Malbisi Trading Company							561521038	\N	Affhamrazak111@gmail.com		300999457900003					2021-12-31	9	2021-12-02 15:27:42.149039+05:30	2021-12-02 15:27:42.134173+05:30	\N	78	78	f	t	f				t	Standard	3	f	null	t	6	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	78	f
df9a7e6c-11bd-49af-b35e-f48b116f95a6	M	NK group	company-logo/1642852350568.png	CA 94043	1600 Amphitheatre Pkwy ,Mountain View, CA 94043	Vhjjb	Amphitheatre Pkwy	1600	16502530000	6502530000	nkgroup@gmail.com	https://instagram.com/google/	312345678912453					2025-10-31	5	2021-10-01 11:18:53.376622+05:30	\N	\N	76	76	f	t	f	U72900KA2003PTC033028	\N	operates offices in the United States, Europe, Canada, Denmark, Latin America and many other international locations [+].	t	Advanced	3	t	\N	t	3	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
8b04bd41-e98d-420b-a973-3471ea65cc0b	M	If UFC Ufuc	company-logo/1640705720657.png				Jeddah		536717127	0								2021-12-21	1	2021-12-15 00:07:32.33783+05:30	2021-12-15 00:07:32.32121+05:30	2022-02-16 04:53:56.980077+05:30	134	134	t	t	f		\N		t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
12a3eeda-157b-4279-b111-712087578af9	M	Fathma Abdullah Ali Khahthani Establishment					Khamismushait		172224444	559358245	ak3255220@gmail.com		310219767100003					2021-12-28	1	2021-12-21 13:41:37.732558+05:30	2021-12-21 13:41:37.717409+05:30	\N	258	258	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	258	f
0e1ad0b7-67f2-4102-bb4a-5620a9bc5fe6	A	medioc321		232	122dsdd	\N	wee	436654575	2354365757	\N	med@gmail.com	\N	334657658533533		\N	\N	\N	2023-12-01	1	2021-12-06 12:04:27.641657+05:30	2021-12-06 12:04:27.622364+05:30	\N	2	2	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
ef0fe35b-ae42-4a5a-8c00-1107dc86d86f	A	Hhb				\N	Jed	567466	5863985423	\N	nazalnas@gmail.com	\N			\N	\N	\N	2022-01-04	1	2021-12-28 21:09:04.377906+05:30	2021-12-28 21:09:04.361424+05:30	\N	256	256	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	256	f
60925298-8f48-4db2-ab03-8815c0278623	M	30 DAYS FOR TRADING EST.		Andalus plaza	60 street		Jeddah	23221	\N	122566660		www.30days.cc	310084934500003					2022-11-30	1	2021-11-30 23:00:45.379438+05:30	2021-11-30 23:00:45.364384+05:30	\N	146	146	f	t	f	4030311424		مؤسسة ثلاثون يوم للتجارة	f	Essential	3	f	jlc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	146	f
8cf7071e-0e75-43e9-aece-76e9574b8650	A	medioc132		1	dfgr	\N	ert	23543576656	4545764565	\N	medioc@gmail.com	\N	323456776677833		\N	\N	\N	2023-12-01	1	2021-12-06 12:00:46.742122+05:30	2021-12-06 12:00:46.722565+05:30	\N	2	2	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
567216c1-9bbf-4afe-bc20-4ef5b16232cf	M	FALCON TRADING	company-logo/Copy_of_FREE_GOLDEN_PROFESSIONAL_logo_template_-_Made_with_PosterMyWall_I4nyyID.jpg	124/23	Lnd		Saudi	789067	789878654535	\N	falcon@gmail.com		300200300400503					2023-06-21	1	2021-12-09 16:22:17.508368+05:30	2021-12-09 16:22:17.490909+05:30	\N	76	76	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	7f7914af-7061-45d7-9716-390bf00d9c94	a7514b31-a291-4067-8437-c54229f99774	76	f
fa2a2835-7a99-49e3-b5dd-c86e1f4d4e4c	M	مؤسسة أبيض وأسود التجارية					حائل		530949525	0	ameenalisales7@gmail.com		300979908900003					2021-12-17	1	2021-12-10 20:12:29.104713+05:30	2021-12-10 20:12:29.085727+05:30	\N	240	240	f	t	f	3350021784			t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	240	f
94233b4a-c04d-4701-86a8-64b872e26f2b	A	Asdfh				\N	Fvvvv		258588	\N	rabeeh@vikncodes.com	\N		fvbnnjhvcccc	\N	\N	\N	2021-12-16	1	2021-12-09 12:27:33.064104+05:30	2021-12-09 12:27:33.047754+05:30	\N	62	62	t	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	c5b32839-4981-4248-a455-237d4e69890a	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
b56d5f64-ec3f-453b-86ac-2d41352c9451	M	مؤسسة سياره غريب بن محمد العجمي التجارية	company-logo/1641543302472.png				Najran	66243	175222993	0	saragaribest2020@gmail.com		311059783700003					2022-01-06	1	2021-12-26 14:03:01.867947+05:30	2021-12-26 14:03:01.852176+05:30	\N	269	269	t	t	f		\N		t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	37e24037-20a8-4f34-98a2-5607ddf3e010	a7514b31-a291-4067-8437-c54229f99774	269	f
10ec1e50-5c23-477e-9cf9-07517a0222ca	A	HAIL MIRROR COMPANY		1	1	\N	HAIL		506474590	\N	shazmkd780@gmail.com	\N	323456789012343		\N	\N	\N	2022-01-02	1	2021-12-26 18:26:40.00554+05:30	2021-12-26 18:26:39.98798+05:30	\N	270	270	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	270	f
da5ffe0d-059a-4552-8b46-2552cf9befb2	A	محل المذاق العالي للعسل				\N			532887916	\N		\N			\N	\N	\N	2022-01-11	1	2022-01-05 00:32:32.039091+05:30	2022-01-05 00:32:32.024043+05:30	\N	294	294	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	294	f
a14abb9a-4374-431e-8f47-babf9f786ae1	A	Company188		124	lnd	\N	calicut	789067	78987865489	\N	pr@gmail.com	\N	300200300400503		\N	\N	\N	2022-01-05	1	2021-12-29 15:50:42.237587+05:30	2021-12-29 15:50:42.218251+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
d252b5f5-ae0a-4f3f-9448-6e73044c8096	M	مؤسسة فاطمه حسن هادي مسملي التجارية					Abo Araish	55000	580712684	0			310385522900003					2022-01-13	1	2022-01-06 23:30:55.688213+05:30	2022-01-06 23:30:55.672247+05:30	\N	299	299	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	299	f
a13a14b3-1c74-493e-9a5e-028230d1b098	M	Fathma Abdullah Ali Khahthani Establishment					Khamismushait	2444556	7222444444	0	thasniazarahamed@gmail.com		310219767100003					2022-01-12	1	2022-01-05 12:28:10.690148+05:30	2022-01-05 12:28:10.672351+05:30	\N	296	296	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	296	f
0a242295-c902-4a02-9b70-df025f55aa30	A	uvaistww		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	2737371212	\N	Uvaist1997@Gmail.com	\N		32AAVCS8021P1Z7	\N	\N	\N	2022-01-11	1	2022-01-04 15:57:02.545207+05:30	2022-01-04 15:57:02.527287+05:30	\N	76	76	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
e8749c1f-0a82-4852-be97-56990b990e76	M	AIR FROST TRADING EST-	company-logo/logo_XBj6UD1_5BGkUDY.bmp				Dammam-  الدمام		138374223	555873301	airfrostest@yahoo.com		300479555400003					2022-11-23	1	2021-11-23 21:47:59.39674+05:30	\N	\N	147	147	f	t	f	2050221051		مؤسسة صقيع الهواء للتجارة	f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	147	f
e4039a97-876c-4261-af47-c4855e69f5c7	M	MACORA	company-logo/Copy_of_Watercolor_Feminine_Logo_-_Made_with_PosterMyWall_1_UiESvIw.jpg	124/62	vk	\N	saudi	767	789878654535	\N	macora@gmail.com	\N	300200300400503	null	\N	\N	\N	2022-11-17	10	2021-12-09 15:36:36.316623+05:30	2021-12-09 15:36:36+05:30	\N	76	76	f	t	f	cin009	\N	\N	t	Advanced	3	t	lpc	t	5	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
58e4743f-985f-4b99-8236-d8d8e38e3b30	M	FAJAR AL NADA					SIHAT	32477	552880514	0	bavavellamkodan@gmail.com							2021-12-25	1	2021-12-18 16:29:27.90098+05:30	2021-12-18 16:29:27.882573+05:30	2022-06-01 14:50:33.46438+05:30	253	253	t	f	f	2053101463			t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	253	f
4faee31d-8578-46c4-9bc7-8fa3b174f0d1	M	مؤسسة مشعل سعد النومسي التجارية		شارع العام	الجحفه		Hail		509285669	0	ekebraheemkutty@gmail.com		301143965300003					2022-12-17	1	2021-12-17 18:59:29.511679+05:30	2021-12-17 18:59:29.492865+05:30	\N	251	251	f	t	f	3357007710			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	251	f
246f6c2a-9020-4f96-b253-e67225c440b3	M	مؤسسة عون نماء للمقاولات					حائل		530472130	0	awnnamasales@gmail.com		301140278200003					2022-12-12	1	2021-12-12 14:41:08.09116+05:30	2021-12-12 14:41:08.072469+05:30	\N	244	244	f	t	f	3350021121			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	244	f
4345d53b-8bdc-4d2e-8a95-7250d81e04fb	A	AL ARABI BURGER	company-logo/WhatsApp_Image_2021-08-12_at_6.41.26_PM_1_Xq9gDhH.jpeg	\N	\N	\N	\N	\N	\N	\N	\N	\N	300000000000033		\N	\N	\N	2022-02-15	1	2021-11-23 17:34:51.479045+05:30	\N	\N	101	101	f	t	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	101	f
d92f7ae5-6b6b-4922-b196-c0e3d1a4116d	M	HOTEL DANA FOR FAST FOOD		Baysh-azama	King abdul azeez Road	\N	Abaha	0056	545015311	545015311	azamabrostdhanabrostazama@gmail.com	\N	359001300563333	\N	\N	\N	\N	2022-11-16	1	2021-11-16 21:31:18.532107+05:30	2021-11-16 21:31:18+05:30	\N	112	112	f	t	f	5900130056	590013005600003	مطعم دانا للوخبات السريعة	f	Professional	3	t	jlc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	112	f
8ae6a8c2-dc63-4d3c-95be-ff283fdcbfb0	M	rassasy hotels	company-logo/4th_navy_day.png						\N	\N			135464313133224	null				2023-12-01	1	2021-09-26 13:35:21.695018+05:30	\N	\N	2	2	f	t	f				t	Professional	3	f	null	t	5	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
8633ef36-2024-4b2d-811f-248ffe9ce681	M	athlan							7000000000		mhdiluathlan@gmail.com		312345678913133					2022-12-29	1	2021-12-22 10:40:13.949621+05:30	2021-12-22 10:40:13.929978+05:30	\N	260	260	f	t	f				t	Essential	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	260	f
5a39ae37-95be-4f05-9012-415d49ff01f8	A	مؤسسة  فاطمه علي حسن مكوع الاحذيه				\N	ابو عريش	55000	532802554	\N	za073274@gmail.com	\N	31090300234003		\N	\N	\N	2022-01-09	1	2022-01-03 00:01:28.458365+05:30	2022-01-03 00:01:28.441299+05:30	\N	283	283	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	283	f
7c4f3dab-df93-4d8d-bbb9-15c5bfc5f52f	M	مؤسسة صالح أحمد الصعدي التجارة					Abo Araish	550000	508121405	0	AZAMM78600@gmail.com		300449167100003					2022-01-09	1	2022-01-03 01:29:28.551494+05:30	2022-01-03 01:29:28.536208+05:30	\N	285	285	f	t	f	5901011296			t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	285	f
b672fad5-ffb9-4b68-8457-1bcd82dfa8d0	M	محل القصوا					Abo Araish	55000	533239080	0	meharhamza6846@gmail.com		300772859400003					2022-01-10	1	2022-01-03 02:50:56.404366+05:30	2022-01-03 02:50:56.385909+05:30	\N	286	286	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	286	f
32916458-6c26-4753-9ed6-c58a971aa0d6	A	Hello World				\N	Manjeri	676122	9400447304	\N	suhaib@vikncodes.com	\N		18AABCU9603R1ZM	\N	\N	\N	2022-01-15	1	2022-01-09 00:27:48.242194+05:30	2022-01-09 00:27:48.224127+05:30	\N	303	303	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	303	f
7be9f552-742a-4076-a0fc-467fd3162780	A	nooral khair		6546		\N	jizan		591101150	\N	maneermahmammd3@gmail.com	\N	311106579300003		\N	\N	\N	2022-01-14	1	2022-01-07 22:19:43.578916+05:30	2022-01-07 22:19:43.56108+05:30	\N	302	302	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	302	f
f7de0912-b038-4050-a77c-37d99e30557e	M	HAD SABIYA Est. Foodstuff		-	jazan		airport district		5046946	0	kksafwan1994@gmail.com		30244878400003					2022-01-16	1	2022-01-09 13:48:06.896725+05:30	2022-01-09 13:48:06.879797+05:30	\N	266	266	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	266	f
99e0e153-5976-4ef2-86a5-ed5338c59367	M	مؤسسة الزهرة ال		الفارسي	الشرفية	جدة		57576	856295368	0	hnn@gmail.com							2022-01-12	1	2022-01-05 21:55:20.644478+05:30	2022-01-05 21:55:20.62718+05:30	\N	256	256	t	t	f			AL ZAHRA AL DA EST.	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	256	f
fd5adf85-f4df-4510-a34e-d3bdb75bcf31	M	فرع مؤسسة  صالح أحمد الصعدي للتجارة					أبو عريش	55000	531441852	0			300449167100003					2022-01-19	1	2022-01-02 15:09:39.785111+05:30	2022-01-02 15:09:39.769729+05:30	\N	281	281	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	281	f
32116503-c834-4a68-8458-54181400232e	A	athlaaaan		asdhl		\N	clt	666666	7591925158	\N	athlan@vikncodes.com	\N		32AAKC34567D2ZG	\N	\N	\N	2022-01-18	1	2022-01-11 11:38:56.066931+05:30	2022-01-11 11:38:56.050642+05:30	\N	311	311	t	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	311	f
08845e39-44d2-4d01-aec3-21988e6a21d1	A	Kk				\N	Guhh	Tuu	53866	\N	aa@gmail.com	\N	300000000000003		\N	\N	\N	2023-12-01	1	2022-02-25 10:58:55.444902+05:30	2022-02-25 10:58:55.419898+05:30	\N	2	2	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
c0e72460-6b32-4305-a8ec-633a70541d6c	A	الهنوف أنور علي الغصاب التجارية				\N	حائل		501534783	\N	alhanoofsales02@gmail.com	\N	310981785200003		\N	\N	\N	2022-12-10	1	2021-12-11 02:00:39.828816+05:30	2021-12-11 02:00:39.811848+05:30	\N	243	243	f	t	f	\N	\N	\N	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	243	f
9add367f-35fd-44dd-90c1-a8a3933f647b	A	الطعم المميز			ARBAEEN STREET	\N	JEDDAH		501603297	\N	samysafa450@gmail.com	\N	302082768100003		\N	\N	\N	2021-12-15	1	2021-12-08 17:57:40.683943+05:30	2021-12-08 17:57:40.662814+05:30	\N	230	230	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	230	f
a1792d81-1fd7-4e4d-ada0-ee8bdec02992	A	Test				\N	Delhi	110006	911234567890	\N	test@twst.twst	\N		\N	\N	\N	\N	2023-09-20	1	2021-12-13 16:46:25.458638+05:30	2021-12-13 16:46:25.441749+05:30	\N	34	34	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	f75a963f-9c9d-46c6-ab29-82339ddf1e1c	c067b77d-1056-4eb8-9769-0733a29a0e9f	34	f
4c62946d-e31e-4044-bf2c-9b07f79633e2	M	DINA CORPORATION RENT A CAR SERVICE					khobar		536127188	0	jijov333@gmail.com		300410096300003					2022-01-01	1	2021-12-25 23:39:52.998689+05:30	2021-12-25 23:39:52.98219+05:30	\N	267	267	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	267	f
f53ccf9e-cc11-4bf9-a061-55a624fbf57d	M	DORA AL WASEET TRADING ‏			AD DARB MAIN STREET		AD DARB	2929	501130900	501130900	Rishadpulladan95@gmail.com		310073152900003					2022-01-11	1	2022-01-04 23:44:17.799839+05:30	2022-01-04 23:44:17.775208+05:30	\N	293	293	f	t	f	س.ت 5903504929		موسسة ‏درة ‏الوسيط ‏التجاري ‏	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	293	f
b6cf2ca0-4746-4683-8eb8-2f39b430df35	M	مؤسسة ثلاجة نور السند للمواد الغذائية						55424	966506997904	0	alsanadsupplies@gmail.com		300492504400003					2022-12-29	1	2021-12-29 22:04:21.911427+05:30	2021-12-29 22:04:21.894543+05:30	\N	277	277	f	t	f	3350140496			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	277	f
61083492-727f-4bed-9c2e-ebda53932414	M	مؤسسه علوي سالم الحامدي للتجارة		جيزان /حي المطار			جيزان		559071311	0	asa_alawi@hotmail.com		310049919200003					2023-01-31	2	2021-12-27 14:07:46.183812+05:30	2021-12-27 14:07:46.167231+05:30	\N	272	272	f	t	f	5900107250			f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	272	f
ec84b858-b010-4367-a084-a89f265cab84	A	مستودع الجربة لببع المواد الغذائية				\N	Line Ahad	55000	505720848	\N		\N	300449022900003		\N	\N	\N	2022-01-10	1	2022-01-03 23:17:00.785401+05:30	2022-01-03 23:17:00.770577+05:30	\N	292	292	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	292	f
3459d3cd-4e84-407f-ae6a-dd5737aa8357	M	مؤسسة ماجد محمد علي الجعيلان للتجارة							596448667	0	adilshoaib187@gmail.com		311035254200003					2022-12-13	1	2021-12-15 00:11:11.401525+05:30	2021-12-15 00:11:11.383499+05:30	\N	249	249	f	t	f				f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	249	f
6ccc3235-113e-4ae4-b902-4b460c3f15a2	M	Calicut Grills	company-logo/1638978611295_Try8uAw.png	3	PT Usha Road		Kozhikode	673032	8086894834	8086894834	calicutgrills@gmail.com							2022-12-08	1	2021-12-08 19:31:59.40559+05:30	2021-12-08 19:31:59.386204+05:30	\N	229	229	f	t	f				f	Standard	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	229	f
b6de6aa0-768c-4eac-8dee-34df869953ef	M	الهنوف أنور علي الغصاب التجارية		4787			حائل		966568291891	0	alhanoofsales@gmail.com		310981785200003					2022-12-08	1	2021-12-09 17:54:06.064601+05:30	2021-12-09 17:54:06.0477+05:30	\N	236	236	f	t	f	3350154454			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	236	f
3bd771a8-51d4-4593-a34e-cbe285d89382	M	Al Yazid Corner Trading Est					Abu Araish		536754351	0	zohaibkhan045@gmail.com		310722368300003					2022-12-14	1	2021-12-14 21:23:30.470054+05:30	2021-12-14 21:23:30.452959+05:30	\N	247	247	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	247	f
2feb3adb-2ad6-4652-8e30-5803a6a421ae	M	Aquapet	company-logo/1642851816729.png	124	lnd		calicut	789067	789878654535	0	aa@gmail.com			32AAVCS8021P1ZO				2022-01-11	1	2022-01-04 11:43:41.37709+05:30	2022-01-04 11:43:41.358054+05:30	\N	76	76	f	f	t		\N		t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	76	f
22e4be51-1a5c-4f37-ac41-2b644a1663c9	A	company1		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AAVCS8021P1ZO	\N	\N	\N	2023-12-01	1	2021-09-20 20:58:02.195213+05:30	\N	\N	2	2	f	f	t	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	2	f
d5afab82-1ee6-4442-9473-96122adb22eb	M	حليمة عثمان شاجري المواد الغذاءية					جازان		5046946	0	sihabpalliyath786@gmail.com		301244878400003					2022-01-06	1	2021-12-31 01:08:44.18577+05:30	2021-12-31 01:08:44.168863+05:30	\N	278	278	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	278	f
8fde579f-26cc-4da9-bb60-09e46f6ebfac	A	invalid_error1		\N	\N	\N	\N	\N	\N	\N	\N	\N	34533533		\N	\N	\N	2023-12-01	1	2021-10-07 15:47:39.689905+05:30	\N	\N	2	2	t	t	f	\N	\N	\N	t	Basic Edition	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
3b2fda8c-d333-49c3-8333-511a225428bf	A	Assd		Rt	Gg	\N			0595716300	\N	nasrukatti@gmail.com	\N	377657567766553		\N	\N	\N	2022-01-21	1	2022-01-14 21:56:10.925694+05:30	2022-01-14 21:56:10.909252+05:30	\N	134	134	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
3eb78911-43e3-48f8-aac1-e11dd36fe7b6	A	Gfgrhhh				\N	Nn	5775	6529865238	\N	nn@gmail.com	\N			\N	\N	\N	2022-01-21	1	2022-01-14 19:11:31.884106+05:30	2022-01-14 19:11:31.867084+05:30	\N	256	256	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	6ef7e793-e7fd-404b-bc81-a38167dc0d92	a7514b31-a291-4067-8437-c54229f99774	256	f
282fbe97-daff-4588-81fa-0de171fc04ab	M	Fathma Abdullah Ali Khahthani Establishment		30/45	Ameerah Masjid		Khamis Mushaith	7218392	0559358246	0			310219767100003					2022-01-22	1	2022-01-15 22:23:24.614134+05:30	2022-01-15 22:23:24.597413+05:30	\N	322	322	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	322	f
8076f7d0-9075-44e6-a2a1-50f7590f4b9a	A	abc		4342ewds	sdasd	\N		321432	9834235435	\N	hrvikn@gmail.com	\N			\N	\N	\N	2026-12-18	5	2022-02-25 15:56:38.87543+05:30	2022-02-25 15:56:38.859232+05:30	\N	370	370	f	f	f	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	370	f
9abde2d9-b821-4b17-ad55-44fbf2ad9afc	A	Test Rab	company-logo/image_picker6872655618696749616.jpg			\N	Cuty	Hhhh	2585366	\N	gg@gmail.com	\N	gahahh		\N	\N	\N	2022-01-17	1	2022-01-10 12:46:32.707007+05:30	2022-01-10 12:46:32.685786+05:30	2022-01-11 18:11:54.236175+05:30	62	62	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	90e23789-2fa8-4d15-be90-0a2e779c8a7c	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
739321d9-3357-40ad-9c07-c656cef04bd1	M	IBRAHIM FARAJ AL DOSSARY TRADING EST.	company-logo/EMPTY_LOGO_wcdr1v2.jpg	Al RakKah	OPPSITE AL RAJHI BANK		Al Khobar	76722	3	8570929	bbcrakha@gmai.com		300381118300003					2022-12-24	1	2021-12-24 19:03:01.255248+05:30	2021-12-24 19:03:01.232375+05:30	\N	264	264	f	t	f	2051024792		مؤسسة  إبراهيم فرج الدوسري  التجارية	f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	264	f
eb550b67-cda7-4fac-ba94-f9f78a5df869	A	VAT		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	8921310935	\N	uvaist1997@gmail.com	\N	\N	32AAVCS8021P1ZO	\N	\N	\N	2023-06-12	1	2022-01-16 11:17:24.307749+05:30	2022-01-16 11:17:24+05:30	\N	21	21	t	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	21	f
b5ebaced-b641-4d6b-8e0e-016d81b6c01a	M	Fathma Abdullah Ali Khahthani Establishment					Khamis Mushait	53719	+966 55 935 8245	0			310219767100003					2022-01-21	1	2022-01-14 21:51:59.364686+05:30	2022-01-14 21:51:59.349259+05:30	\N	317	317	f	f	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	317	f
73af551e-2bd7-4332-8af4-11e5d47770a3	M	نظارات  كمال			BALAD		JEDDAH	22233	0559810749	0559810749	kamalopticalksa@gmail.com		300115172700003					2022-02-08	1	2022-01-14 23:09:13.230289+05:30	2022-01-14 23:09:13.210656+05:30	\N	318	318	f	t	f	4030429687		KAMAL OPTICALS	t	Standard	3	f	jlc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	318	f
a83e21fd-2a67-484a-909a-33e2efa0dd73	A	Abdulmajeed				\N	Abu Arish	4243	0500000000	\N	amjad@gmail.om	\N	3000897654321789		\N	\N	\N	2022-01-21	1	2022-01-14 22:53:15.454614+05:30	2022-01-14 22:53:15.43973+05:30	\N	305	305	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	305	f
9cdaeea8-0409-4d95-8533-811c6439e062	M	مؤسسة محمود محمد  موسي  فقيهي الخضار والفواكه					Jizan	82651	0568493082	0	mksiraj313@gmail.com		300882765400003					2022-02-15	1	2022-01-15 15:17:10.465772+05:30	2022-01-15 15:17:10.449476+05:30	\N	320	320	f	t	f	7016381571			t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	320	f
ea05c13a-ba2c-46c1-bbdb-e87f6f30f747	A	khad				\N			9567045229	\N	hyzeen.fab4@gmail.com	\N			\N	\N	\N	2022-01-23	1	2022-01-16 11:30:54.25442+05:30	2022-01-16 11:30:54.239664+05:30	\N	323	323	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	323	f
8751962c-f2f2-4915-86ab-7339adfdfe6f	A	Toshis Bikes				\N	Delhi			\N		\N			\N	\N	\N	2022-02-01	1	2022-01-26 00:09:31.039749+05:30	2022-01-26 00:09:31.024433+05:30	\N	347	347	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	f75a963f-9c9d-46c6-ab29-82339ddf1e1c	a7514b31-a291-4067-8437-c54229f99774	347	f
91e84ba8-c18f-489c-9097-50f94321a9a4	A	brand factory		abc complex		\N	kozhikode	673001	7012218418	\N	mhdiluathlan@gmail.com	\N		32AAKCM8347D2ZG	\N	\N	\N	2022-01-31	1	2022-01-24 17:36:18.203752+05:30	2022-01-24 17:36:18.156438+05:30	\N	260	260	t	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	260	f
26d2bb20-adbd-4d34-a88e-690827c462be	A	vikncodes		poonoor, thamarassery. calicur	dd	\N	poonoor	673574	8838403975	\N	savad@vikncodes.com	\N			\N	\N	\N	2022-01-31	1	2022-01-24 15:39:33.47201+05:30	2022-01-24 15:39:33.453755+05:30	\N	345	345	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	345	f
f6c52c9a-39eb-494f-9224-812c5d32594b	A	Zeequick				\N	Calicut		8086894085	\N	zeequickindia@gmail.com	\N		32ASDFS9877K1Z7	\N	\N	\N	2022-01-27	1	2022-01-20 16:16:07.739856+05:30	2022-01-20 16:16:07.714232+05:30	\N	329	329	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	329	f
45b2d50a-49c7-4697-bdb4-bcf45164b8aa	A	resto athlan		ponoor	ponoor	\N	calicut	874512	8714152075	\N	athlan@vikncodes.com	\N	\N	32AALC34567D2ZG	\N	\N	\N	2026-10-13	1	2022-01-13 20:00:21.779703+05:30	2022-01-13 20:00:21+05:30	2022-06-09 17:00:59.246278+05:30	311	311	t	f	t	\N	\N	\N	t	Standard	3	t	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	311	f
85c7097e-cb09-4def-804c-d2451fbbcf7f	M	علي فرحان علي المالكي للخدمات العامة		الداير بني مالك		ابو عريش			503079189	503079186			٣٠١٢٩٨١٨٣٩٠٠٠٠٣					2022-08-30	1	2021-12-26 21:10:47.861026+05:30	2021-12-26 21:10:47.845349+05:30	\N	271	271	f	t	f	٥٩٠٠٠٠٨٦٥٢			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	271	f
334e676d-1f87-425c-b2ae-a876c350d310	M	مؤسسة إبداع ران للمياه		شارع الحسن بن الهيشم ابي عريش					0537468639	0			310353040800003					2023-01-05	1	2022-01-05 21:28:26.489834+05:30	2022-01-05 21:28:26.472995+05:30	\N	297	297	f	t	f	5901037092			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	297	f
ae6968ab-5fdf-40d1-b777-83098c8fba86	M	GST		Ywhwg	Mailellampara	\N	Hahhs	Gahsg	273737	2737379090	Uvaist1997@Gmail.com	\N	\N	32AAVCS8021P1ZO	\N	\N	\N	2023-01-23	3	2022-01-16 11:11:33.598602+05:30	2022-01-16 11:11:33+05:30	\N	21	21	f	f	t	\N	\N	\N	t	Standard	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	21	f
428586a8-6265-45d7-b51a-ce93476eaf07	M	مؤسسة بركة الخليج للتجارة	company-logo/1643128682742.png	1311	ابها		ابها	62419	0	0966549550966			310193010900003					2022-12-18	2	2021-12-18 02:35:28.787251+05:30	2021-12-18 02:35:28.769508+05:30	\N	252	252	f	t	f	5850126323	\N	Barakat Al Khaleej Trading Est	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	252	f
a1ee4a39-ce71-4ab9-9603-9705ca890091	A	مؤسسة أبيض واسود التجارية				\N	Hail	55424	507248140	\N	blacknwhitesales02@gmail.com	\N	300979908900003		\N	\N	\N	2023-01-09	1	2022-01-09 14:39:56.210327+05:30	2022-01-09 14:39:56.193182+05:30	\N	308	308	f	t	f	\N	\N	\N	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	308	f
6e8826fa-9655-4a24-b49b-5953141ab63e	M	uvais007	company-logo/Apple-logo-black-and-white.png						3532452345	8940044556	suhaib007mnj@gmail.com			32AAVCS8021P1ZO				2023-12-01	1	2021-07-31 12:15:59.916928+05:30	\N	\N	2	2	f	f	t				f	Professional	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	2	f
bea8ee87-8b73-40b0-a3e7-c708b029d849	A	موسسة ماجد محمد علي الجعيدان للتجارة				\N	Dammam		0591213021	\N	kashihameedkashi@yahoo.com	\N	3110355254200003		\N	\N	\N	2022-01-27	1	2022-01-17 21:06:56.258867+05:30	2022-01-17 21:06:56.242939+05:30	\N	287	287	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	287	f
d455e885-af99-4d79-a388-a1a6d8758216	M	Majed					Dammam	4453	0591213021	0591213021	kashihameedkasi@yahoo.com		311035254200003					2022-01-24	1	2022-01-17 20:33:51.016563+05:30	2022-01-17 20:33:50.998862+05:30	2022-01-20 12:51:56.065517+05:30	287	287	t	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	287	f
10b8f12b-9c7b-4d31-8ceb-a18a7d1e04cd	M	Fat							0	0			31021976100003					2022-01-29	1	2022-01-22 14:07:16.987623+05:30	\N	\N	338	338	f	t	f				t		3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	338	f
cafb2501-ae79-46a0-a81f-ad22298c31b3	M	30 DAYS FOR TRADING EST.	company-logo/Apple-logo-black-and-white_R20Noz2.png						2345234523	2323452345			37AADCS0472N1Z1					2023-12-01	5	2021-07-23 15:32:21.397715+05:30	\N	\N	2	2	f	t	f	345335		عصير اورجينال خوخ	f	Professional	3	f	jlc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	2	f
c228061e-e3c4-4ea6-882b-3313b8e5015b	A	demoaccount		jedha	\N	\N	\N	\N	8129205624	\N	demoaccount@gmail.com	\N	\N	\N	\N	\N	\N	2024-01-25	1	2022-01-19 12:17:49.782357+05:30	2022-01-19 12:17:49+05:30	\N	324	324	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	324	f
9a245fa3-cf53-463d-abac-ab81ea382a88	A	Sanad				\N	Hail			\N		\N	300443900004		\N	\N	\N	2022-01-30	1	2022-01-23 13:09:02.484852+05:30	2022-01-23 13:09:02.456366+05:30	\N	341	341	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	341	f
9f556980-7ace-4f44-97c4-4b90c21b0b2f	M	مؤسسة رند الشام للتجاره							0	0			300946191400003					2022-01-26	1	2022-01-19 14:29:13.346622+05:30	\N	\N	326	326	f	t	f				t		3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	326	f
55798cb4-b7a7-413a-bcb5-8ffe823930f4	A	Confident				\N	Qatar	123455	66866237	\N	samahsalamk@gmail.com	\N			\N	\N	\N	2022-01-31	1	2022-01-24 19:40:47.250371+05:30	2022-01-24 19:40:47.233228+05:30	\N	346	346	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	6ef7e793-e7fd-404b-bc81-a38167dc0d92	a7514b31-a291-4067-8437-c54229f99774	346	f
e4cd5106-67de-41f9-846d-752b77445c3a	M	مؤسسة الزهرة الرائدة		AL ZAHRA AL RAEDA EST.	Al Farisi	Al Sharafeyah	Jeddah	22235	0595716300	0	nasrukatti@gmail.com		123456789765433					2022-01-30	1	2022-01-23 06:21:42.963306+05:30	2022-01-23 06:21:42.948206+05:30	2022-02-16 04:53:46.586649+05:30	134	134	t	t	f			الفارسي، الشرفية، جدة  - ٢٢٢٣٥	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
ec02f0c1-bb9c-42b5-aa9e-5fd8d925af3d	A	Al Zahra				\N	Jeddah			\N		\N			\N	\N	\N	2022-01-30	1	2022-01-23 06:20:11.659579+05:30	2022-01-23 06:20:11.645144+05:30	2022-02-16 04:54:27.353745+05:30	134	134	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
51d9e5d6-2c94-48b3-8903-10b359b84a82	A	company132		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	2323232323	\N	uvaist1997@gmail.com	\N		32AAVCS8021P1Z7	\N	\N	\N	2023-12-01	1	2022-01-27 16:03:15.822058+05:30	2022-01-27 16:03:15.796556+05:30	\N	2	2	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
e38bf195-bd61-4fd3-a26b-938e2b129078	M	Abdul Azeez Muthab Coldstore&Foodstuffs					Afif		0544316671	0544316671	abdulazeezmuthabstore@gmail.com		300992262600003					2022-02-06	1	2022-01-30 19:38:25.91899+05:30	2022-01-30 19:38:25.90201+05:30	\N	351	351	f	t	f			ثلاجة عبدالعزيز المتعب المواد الغذاءية	t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	351	f
93b67d8e-a162-450a-9a72-6a3c278604b5	M	Mosasa Fatima Abdullah Ali Alqahtani							0	0								2022-02-05	1	2022-01-30 01:21:13.615337+05:30	\N	\N	325	325	t	f	f				t		3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	325	f
e92c2c13-95b0-4472-b3f8-c9d2c159f7fd	A	vikncodes		poonoor, thamarassery. calicur	ttt	\N	poonoor	673574	09577500400	\N	savadfarooque@gmail.com	\N			\N	\N	\N	2022-02-09	1	2022-02-02 16:58:00.366165+05:30	2022-02-02 16:58:00.34001+05:30	\N	353	353	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	353	f
257695a2-16fe-4acb-be80-6bb666384fbd	M	HEZMAT ALKAS FOR TRADING EST.	company-logo/logo_yYQxST1_fsS3DWS_35u7jwJ_8Rx6ue5.png	An Nasriyah- Dist. Unit No.10			Al Hafuf	P.O.BOX.7685-Code.36361	013 8993694	013 8993773	info@utc-ksa.com	www.utc-ksa.com	302116090100003					2022-02-24	1	2022-01-28 01:43:38.437588+05:30	2022-01-28 01:43:38.400817+05:30	\N	348	348	f	t	f	2251499088		مؤسسة حزمة الكأس للتجارة	t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	348	f
1b955cde-f944-4c21-91cd-5827e17de86a	A	company1009		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	8989898989	\N	uvaist1997@gmail.com	\N		32AAVCS8021P1Z7	\N	\N	\N	2023-12-01	1	2022-01-27 15:43:20.726193+05:30	2022-01-27 15:43:20.687555+05:30	\N	2	2	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	f75a963f-9c9d-46c6-ab29-82339ddf1e1c	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
4884f936-4496-4d8a-8850-3f096b66e46f	M	india							\N	\N				32AABCU9603R1ZX				2023-12-01	1	2021-07-30 12:38:37.076833+05:30	\N	\N	2	2	f	f	t				f	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	2	f
bdd98b6c-32b9-4da3-86f7-efac5c7f072f	A	compa1ny1		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	2737379090	\N	uvaist1997@gmail.com	\N		32AAVCS8021P1ZO	\N	\N	\N	2023-12-01	1	2022-02-13 10:55:53.441696+05:30	2022-02-13 10:55:53.42399+05:30	\N	2	2	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
bfc49080-518f-4ce7-a2eb-4bb0c7ad822f	M	Fat2					Khamismushait	6831067	05666663333	0	michuahamed@gmail.com		31021976100003					2022-02-05	1	2022-01-29 11:18:33.932609+05:30	2022-01-29 11:18:33.917956+05:30	\N	338	338	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	338	f
90bc3689-942e-4857-9db4-13b284708422	A	12345		\N	\N	\N	\N	\N	\N	\N	\N	\N	34533533		\N	\N	\N	2023-12-01	1	2021-10-07 15:54:44.938466+05:30	\N	\N	2	2	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
821d06a3-3da2-43fe-9e61-1bfd714c36cd	M	FAJAR AL NADA SWEETS	company-logo/1640923423497_Z6rvYD6.png	NABIYAH-النابية	SANAIYA-الصناعية		SIHAT-سيهات	32447	0545260990	0555590188	fajaralnadah@gmail.com		311089640100003					2022-12-02	4	2021-12-02 21:30:06.824928+05:30	2021-12-02 21:30:06.810295+05:30	\N	188	188	f	t	f	2053101463		شركة فجر الندى للحلويات شركة شخص واحد	f	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	188	f
2b0f8044-bdba-4248-9caf-e5e2e499fc5f	A	VIKn Lithe				\N			9999999999	\N	shaheenkk009@gmail.com	\N	300000000000003		\N	\N	\N	2022-12-31	1	2022-02-02 14:00:22.124109+05:30	2022-02-02 14:00:22.105468+05:30	2022-04-28 13:11:21.50454+05:30	82	82	t	t	f	\N	\N	\N	t	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	a7514b31-a291-4067-8437-c54229f99774	82	f
dc2c8aa1-30b1-4ead-a74c-5db0950aceab	M	شركة مميزات الابداع	company-logo/1638303478328_7cg6VVr_hdCB3OE_oOUlqjo_s7cx7SO.png	kakia street	kakia		makkah		126879447	126879447			301148879900003					2022-11-27	1	2021-11-27 16:50:13.580819+05:30	2021-11-27 16:50:13.56534+05:30	\N	158	158	f	t	f	4030154283		DISTINCTIVES CREATIVITY COMPANY	f	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	158	f
f8e4c263-1e59-4a0b-a594-83a1602b5deb	M	مؤسسة ماجد محمد علي الجعيلان للتجارة		haraj al athir	near souk television		Dammam		591213021	591213021	kashihameedkashi@yahoo.com		311035254200003					2022-08-03	1	2022-01-03 19:23:31.170454+05:30	2022-01-03 19:23:31.145828+05:30	\N	287	287	f	t	f				f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	287	f
6601a605-41ec-459f-aff7-82340b2d3cc8	M	VAT		KANNAPANKUNDU Puthuppadi	Mailellampara		Kozhikode	673586	8921310735	12312312312	uvaist1997@gmail.com		32AAVCS8021P1Z3	null				2023-07-26	3	2022-01-16 11:18:47.050296+05:30	2022-01-16 11:18:47+05:30	\N	21	21	f	t	f				t	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	21	f
64b0f5aa-c066-4bab-b606-73a85963f666	A	Husnachr	[object Object]	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	2022-04-08	2	2021-04-08 21:57:43.323+05:30	\N	2022-07-09 14:04:41.790607+05:30	3	3	t	f	f	\N	\N	\N	f	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	3	f
6e4c2ce3-10d9-4c7f-a766-ad6d2706d30b	A	Mohammed Al Harbi			jeddah	\N	MAKKAH		0506474590	\N	charizmacoffeejeddah@gmail.com	\N			\N	\N	\N	2022-01-26	1	2022-01-19 23:58:09.453314+05:30	2022-01-19 23:58:09.395506+05:30	\N	328	328	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	328	f
808d4372-9ac8-4db4-b26a-6a02ec921e97	A	demo rassassy		a	a	\N	\N	2344555	9856552536	\N	demorassassy@gmail.com	\N	356895654526563	\N	\N	\N	\N	2024-01-25	1	2022-01-19 11:55:05.727396+05:30	2022-01-19 11:55:05+05:30	\N	324	324	t	t	f	\N	\N	\N	t	Standard	3	t	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	324	f
912a8804-ed54-41e2-bcaa-a37cf42a12e7	A	موسة خيريه عبدالله بن مريح للتجارة				\N	Abu Arish	84711	0592512446, 0591492302	\N	sa86056@gmail.com	\N	310388008500003		\N	\N	\N	2022-02-05	1	2022-01-30 00:51:03.530235+05:30	2022-01-30 00:51:03.513658+05:30	\N	350	350	t	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	350	f
21bf76e4-49cd-44a5-bf9e-c9e3fcb6bc45	A	مؤسسةخيريه عبدالله بن مريح للتجارة				\N	Abu Araish		0592512446	\N	sa86056@gmail.com	\N	310388008500003		\N	\N	\N	2022-02-05	1	2022-01-30 00:39:34.778507+05:30	2022-01-30 00:39:34.761443+05:30	\N	350	350	t	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	350	f
ecd45d3f-fc98-4dd3-b23a-7a0e00d7f349	A	structrum	company-logo/1.png	k		\N			9496713093	\N	s@g.com	\N	300000000000003		\N	\N	\N	2023-12-01	1	2022-02-13 11:40:47.660573+05:30	2022-02-13 11:40:47.642193+05:30	\N	2	2	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	2	f
55fccb7e-5ef7-4e03-8efc-57e54007d3dc	A	compnov23		\N	\N	\N	\N	\N	\N	\N	\N	\N	334345464		\N	\N	\N	2023-12-01	1	2021-11-23 13:51:29.802757+05:30	\N	\N	2	2	f	f	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
4428a892-0ab9-4ca5-b9f8-26f5045ae2f2	A	medicotest		1	ws	\N	eer	3454656566	32554666455	\N	medico@gmail.com	\N	345677765554333		\N	\N	\N	2023-12-01	1	2021-12-06 11:59:08.423686+05:30	2021-12-06 11:59:08.404195+05:30	\N	2	2	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	9cb75cfa-0726-435c-8665-2cdaff55e12b	2	f
9bfc8756-7051-4c7c-a8a2-65357fe49b59	A	BatchOrganzation		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AABCU9603R1ZW	\N	\N	\N	2023-12-01	1	2022-01-07 17:14:12.496795+05:30	\N	\N	2	2	f	f	t	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	2	f
90e225c9-663e-475f-9f9e-81bf22be0010	A	House and Contreras Co		56 West Clarendon Lane	Delectus dolor porr	\N	Nihil et aut quia qu	47	2534233324	\N	bekiwasipo@mailinator.com	\N		37AADCS0472N1Z1	\N	\N	\N	2023-12-01	1	2022-01-07 17:39:06.752077+05:30	2022-01-07 17:39:06.725431+05:30	\N	2	2	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	c5b32839-4981-4248-a455-237d4e69890a	a7514b31-a291-4067-8437-c54229f99774	2	f
5caa259b-84a3-4c8b-b9b9-3d42e7819c6b	A	Mcguire and Olson Inc		376 South Nobel Drive	Excepteur veniam do	\N	Ipsam dignissimos ve	48343	234534533244	\N	mewevazu@mailinator.com	\N		37AADCS0472N1Z1	\N	\N	\N	2023-12-01	1	2022-01-07 18:56:32.309615+05:30	2022-01-07 18:56:32.289912+05:30	\N	2	2	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	9605fa1d-b460-4f65-9ffd-83679652c17b	a7514b31-a291-4067-8437-c54229f99774	2	f
69e66470-68f3-4141-adf2-89dad395e8f6	M	ANZ.LTD	company-logo/OIP_XZmKvi8.jpeg	124	lnd			789067	789878654535	8989787867	aa@gmail.com			32AAVCS8021P1ZO				2028-10-12	1	2022-01-29 15:35:17.260994+05:30	2022-01-29 15:35:17.244136+05:30	\N	76	76	f	f	t				t	Lite	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
bc1141b5-d982-4c73-8658-f8812e3a4e8e	M	global india	company-logo/Copy_of_FREE_GOLDEN_PROFESSIONAL_logo_template_-_Made_with_PosterMyWall_ldr_h6nGYzu.jpg	4534	ABB		SSXFG	42554	3424522343		AA@GMAIL.COM			32AAACC4175D1Z7				2030-12-03	9	2022-01-27 15:52:57.940119+05:30	2022-01-27 15:52:57.922519+05:30	\N	76	76	f	f	t				t	Lite	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
6ebc9af4-7f1c-4de2-938d-060298ae5e81	M	Fathma Abdulla Ali Kahtani Establishment					Khamismushait	7680956	0560667245	0	michuahamed@gmail.com		31021976100003					2022-03-03	1	2022-02-24 20:09:15.420398+05:30	2022-02-24 20:09:15.403901+05:30	\N	338	338	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	338	f
64996d86-27be-4d2e-9270-39561941b598	M	Fat3					Khamismushait	34567893	056978523	0	michiahamed@gmail.com		31021976100003					2022-02-12	1	2022-02-05 11:14:15.129624+05:30	2022-02-05 11:14:15.114381+05:30	\N	338	338	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	338	f
6cb1d244-7fef-4350-8970-365fcdcad210	M	مو سسة محور الإكرام للبلاستيك					ابوعريش		0563371563	0			311181867600003					2022-03-13	1	2022-02-19 15:21:31.479801+05:30	2022-02-19 15:21:31.465178+05:30	\N	361	361	f	f	f	5901721747			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	361	f
899b926a-b451-402b-9b8f-c0bc4bea3fc6	A	demo1				\N			9995938444	\N	demo@gmail.com	\N			\N	\N	\N	2022-07-13	6	2022-07-06 17:01:35.66608+05:30	2022-07-06 17:01:35.647791+05:30	\N	478	478	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	6ef7e793-e7fd-404b-bc81-a38167dc0d92	a7514b31-a291-4067-8437-c54229f99774	478	f
d26fb064-b97e-4fd0-86b5-54fe5abaf6cd	A	AbuRakan Est		101	Ai Rawdah	\N	Jeddah	23134	0555655091	\N	mdalharbi1975@gmail.com	\N	300106366700003		\N	\N	\N	2022-02-20	1	2022-02-13 19:34:57.135869+05:30	2022-02-13 19:34:57.118808+05:30	\N	357	357	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	357	f
5d25d15e-d8bd-4a75-9025-9614b53135da	A	charizma coffe		001	Ai Rawdah	\N	Jeddah	23134	0555655091	\N	mdalharbi1975@gmail.com	\N	300106366700003		\N	\N	\N	2022-02-20	1	2022-02-13 19:37:06.837809+05:30	2022-02-13 19:37:06.822883+05:30	\N	357	357	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	357	f
70ae49bb-4b6a-47fa-9f8a-ffb1a8562743	A	Al Basha		001	Faisaliyah	\N	Jeddah	23134	0555655091	\N	mdalharbi1975@gmail.com	\N	300106366700003		\N	\N	\N	2022-02-20	1	2022-02-13 19:38:40.276134+05:30	2022-02-13 19:38:40.256719+05:30	\N	357	357	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	357	f
b8fa7cbd-2060-48ec-9229-d5dee7de4832	A	Testing				\N	There	123456	123456889	\N	test@test.com	\N		\N	\N	\N	\N	2022-03-07	1	2022-02-28 15:20:50.682102+05:30	2022-02-28 15:20:50.665368+05:30	\N	332	332	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	c5b32839-4981-4248-a455-237d4e69890a	a7514b31-a291-4067-8437-c54229f99774	332	f
ad347c01-b9dd-401f-b385-bbd81a398eba	A	Amz		abc	ponoor	\N	poonoor	678900	9098696969	\N	amz123@gmail.com	\N		18AABCU9603R1ZM	\N	\N	\N	2022-03-05	1	2022-02-26 14:14:57.051919+05:30	2022-02-26 14:14:57.035453+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
c12c2c56-a40c-47eb-a348-65d71a2be3b7	M	Fa4					Khamismushait	608567	0567842085	0	michuahamed@gmail.com		31021976100003					2022-02-19	1	2022-02-12 11:58:09.9671+05:30	2022-02-12 11:58:09.951514+05:30	\N	338	338	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	a7514b31-a291-4067-8437-c54229f99774	338	f
1b0083fb-5a75-4562-9b4b-613e27a2222e	A	Testing Co		\N	\N	\N	\N	\N	\N	\N	\N	\N			\N	\N	\N	2023-12-01	1	2021-10-02 11:20:14.598697+05:30	\N	\N	2	2	f	f	f	\N	\N	\N	t	Professional	3	f	\N	f	0	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	ae60758d-0852-45fd-b88b-98dfcb28fa9b	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
6ab3708b-bcb6-4eec-945d-313f6adc4dd5	A	Test Organization	company-logo/image_picker5482832384101562124.jpg			\N	Calicut	676319	8714152075	\N	vikntest@gmail.com	\N	123456779		\N	\N	\N	2022-01-29	1	2022-01-22 09:04:30.145576+05:30	2022-01-22 09:04:30.129236+05:30	\N	332	332	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	332	f
b4117bfb-63b0-4c50-b22e-4f2978479ba8	M	SOFTLAND TRD EST FOR SHOES	company-logo/ibuk_MpuNqaX_cIaDmpI_hYuemSN_ZA7BESs.png		OPPOSIT POLICE STATION		DAMMAM		0553877505	0505602757// 0553877505	softland.ksa@hotmail.com		310120484800003					2023-01-20	1	2022-01-20 20:34:43.318279+05:30	2022-01-20 20:34:43.302828+05:30	\N	331	331	f	t	f	4030416586		مؤسسة محمد طالب عبد الرحمن الصحفي	f	Essential	3	f		f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	331	f
0c254400-a256-4d16-8e88-98e4626e1a16	A	علي أحمد الاشهل ابو الحسن				\N	صبياء	12345	0501708981	\N	abdtdm13456@gmail.com	\N			\N	\N	\N	2022-03-14	1	2022-03-07 09:44:13.048187+05:30	2022-03-07 09:44:13.033096+05:30	\N	381	381	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	381	f
6be9db8f-b758-4d25-b8c0-cd2eabcdecad	M	uvais T		\N	\N	\N	\N	\N	8989898989	8989898989	\N	\N	31234567890123	32AAVCS8021P1ZO	\N	\N	\N	2023-12-01	1	2021-07-23 15:26:15.249679+05:30	\N	\N	2	2	f	t	f	\N	\N	\N	f	Professional	3	f	null	t	10	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	2	f
2663b14f-47ed-4762-948d-98db3387ba85	M	VIKN CODES	company-logo/2_sFpwmZL_zuRZKHK_hX8CMIM_Gp5zXaC_v4WHAtm_LPLXapR_Ii0KsWT.jpg	Jizan Airport Road	Jizan		JIZAN		+966559124428	+966533134959	info@vikncodes.com	www.vikncodes.com	300882765400003					2022-12-31	1	2022-01-19 18:19:36.201803+05:30	2022-01-19 18:19:36.186679+05:30	2022-06-17 15:22:49.181517+05:30	31	31	t	t	f	5900167935			t	Standard	3	f	lpc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	31	f
c6cabc4a-6e3f-4e34-b42f-244958e88fcc	M	Qwe	company-logo/66c22545-c110-4863-a20f-e5f9efaa76452892553407263123188.jpg				Jed	52737	5863460213	0	gama@gmail.com		300671627600003					2022-03-05	1	2022-02-26 03:25:28.89236+05:30	2022-02-26 03:25:28.876221+05:30	\N	134	134	f	t	f		\N		t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
82315c7b-b2fa-4560-8491-f8e4b4b11ebe	A	abcd company		abc complex	ponoor	\N	ponoor	453423	9898912340	\N	abcd123@gmail.com	\N		18AABCU9603R1ZM	\N	\N	\N	2022-03-05	1	2022-02-26 14:12:33.162969+05:30	2022-02-26 14:12:33.146262+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
d9a91d63-2e50-4fc2-be07-e66a5f9add80	M	DragonFC							\N	\N			123134	32AABCU9603R1ZW				2023-12-01	3	2021-10-01 11:27:33.814612+05:30	\N	\N	2	2	f	t	f				t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
4ec75791-ef97-4f95-b914-8775a54025ea	M	ABC	company-logo/image_picker8851264889545555872.jpg				Jeddah	22235	0595750535	0	sales@abc.sa		30085642535420003					2022-02-23	1	2022-02-16 04:45:10.125364+05:30	2022-02-16 04:45:10.110859+05:30	\N	134	134	f	t	f		\N		t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
f38f15be-e8c9-483b-a8f7-d991276cde78	A	Test				\N	Vvvhhh	865	8714152075	\N	rabe@gmail.com	\N			\N	\N	\N	2022-02-26	1	2022-02-19 20:07:28.387889+05:30	2022-02-19 20:07:28.367881+05:30	\N	62	62	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	47350001-8ff3-4565-a326-3f6dfdaad8f8	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
f4cfc7da-27fc-4765-9c7e-3984fbf2954f	A	new compnay		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AAVCS8021P1ZO	\N	\N	\N	2023-12-01	1	2021-09-21 10:23:23.767927+05:30	\N	\N	2	2	f	f	t	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	2	f
6359db66-3b9a-4472-9650-5b3e7b5da936	A	test		\N	\N	\N	\N	\N	\N	\N	\N	\N		32AABCU9603R1ZW	\N	\N	\N	2023-12-01	1	2021-07-23 14:29:20.177105+05:30	\N	\N	2	2	t	f	t	\N	\N	\N	f	Standard Edition	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	2	f
85b0c263-d294-4c4b-b05d-596c5c887c4f	A	Abdh				\N	عبدالله	asdfghjkl050	0576967400	\N	dwmtlal@gmail.com	\N		قول	\N	\N	\N	2022-03-13	1	2022-03-06 14:39:45.984628+05:30	2022-03-06 14:39:45.961233+05:30	\N	381	381	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	965473b2-6bf9-4190-b20a-c13b07b54386	9cb75cfa-0726-435c-8665-2cdaff55e12b	381	f
af99f52c-8de3-43b6-8f4d-988f158c2fd1	A	test2	company-logo/Copy_of_Logo_-_Made_with_PosterMyWall.jpg	124	lnd	\N	calicut	789067	789878654535	\N	aa@gmail.com	\N		32AAVCS8021P1ZO	\N	\N	\N	2022-03-04	1	2022-02-25 09:36:34.20821+05:30	2022-02-25 09:36:34.18437+05:30	\N	76	76	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	76	f
eeeaf2e2-15a0-4b62-a3a1-8a8d78dbf4ec	A	testing		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	6735864455	89211310735	\N	uvaist1997@gmail.com	\N		32AAVCS8021P1Z7	\N	\N	\N	2022-03-19	1	2022-03-12 12:21:13.5613+05:30	2022-03-12 12:21:13.542809+05:30	\N	76	76	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
20189cff-39bf-43bd-879a-8ddfac902ae9	A	taxtest1		124	lnd	\N	Madinah	789067	789878654535	\N	aa@gmail.com	\N	300200300400503		\N	\N	\N	2022-03-19	1	2022-03-12 12:25:20.866397+05:30	2022-03-12 12:25:20.848123+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
9884e82a-bddb-4105-adc3-8f6d741cf68c	A	Fccy				\N	Ug FC	57456	2568235585	\N	df@gg.com	\N	300574435555600003		\N	\N	\N	2022-03-20	1	2022-03-13 23:20:11.262066+05:30	2022-03-13 23:20:11.243392+05:30	2022-03-13 23:21:07.405346+05:30	134	134	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	134	f
ffa8c920-ef76-43fa-a629-0b3f8fdd3c91	M	T	company-logo/image_picker7608964705378366802.jpg				Fgg	Ggg	265	0	ra@hotmail.com							2022-03-21	1	2022-03-14 10:38:51.845128+05:30	2022-03-14 10:38:51.828878+05:30	\N	62	62	f	t	f		\N		t	Standard	3	f	\N	f	0	83300f24-91ca-49ce-aa9c-b12dcbb9fe82	739046ca-ae35-4c12-a585-4f9326f80421	a7514b31-a291-4067-8437-c54229f99774	62	f
d2fb8a7e-c973-4057-804b-b60505a8f56e	M	محمود محمد موسس فقيهي	company-logo/2_2pv8ZW1_GEMJaDi_g898qgb.jpg	Jizan Airport Road			Jizan		0533134959	0559124428	info@vikncodes.com	vikncodes.com	300882765400003					2023-12-31	10	2022-02-21 17:53:22.272298+05:30	2022-02-21 17:53:22.25471+05:30	\N	31	31	f	t	f	5900167935			t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	31	f
7be77a2e-8bdc-42b1-bf85-9f7961b559d2	M	test	company-logo/Group_831_XirGVPT_rHScOgz.png						8989898989	8989898989				32AABCU9603R1ZW				2023-12-01	10	2021-07-23 14:32:49.562063+05:30	\N	\N	2	2	f	f	t				f	Professional	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	2	f
46d6fefa-4402-4d6a-8ed3-49251ba2e677	M	test11	company-logo/Copy_of_Natural_Herbal_Skincare_Logo_-_Made_with_PosterMyWall_NWakYyf.jpg	124	lnd		Madinah	343453	789878654535	9045356823	aa@gmail.com		300200300400503					2026-08-25	10	2022-02-24 17:45:32.293544+05:30	2022-02-24 17:45:32.274801+05:30	\N	76	76	f	t	f				t	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
85bfd19b-c108-4a9e-97db-479230321d46	A	India demo organization		b1	b2	\N	b3	345666	6859656545	\N	indiademo@gmail.com	\N	\N	32AABCU9603R1ZW	\N	\N	\N	2024-01-25	1	2022-01-21 10:46:27.657648+05:30	2022-01-21 10:46:27+05:30	\N	324	324	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	324	f
f494e172-9cde-4801-9083-e58e5583cc1a	M	مؤسسة محور الإكرام للبلاستيك					ابوعريش		0563371563	0	hamadahmadchowdery@gmail.com		311181867600003					2023-02-19	1	2022-02-19 21:20:15.11908+05:30	2022-02-19 21:20:15.102489+05:30	\N	367	367	f	t	f				f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	367	f
89e29611-d06e-48e1-9afe-50eb756be97f	M	Madras		#13	TOWER MALL		KKD	673500	0000000000	9446100100	madras@vikncodes.com		311035254200003	32AAKL00665DJZ0				2023-04-01	5	2022-03-14 16:13:00.239432+05:30	2022-03-14 16:13:00.213995+05:30	\N	382	382	f	t	f	2051023222			t	Advanced	3	f	jv	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	382	f
dde73e9f-9465-4fc9-ae1a-42643da46cd2	M	fooodcorner	company-logo/photo-1497034825429-c343d7c6a68f_chf8jkt.jpeg	124	Lnd		calicut	789067	78987865489	9966699668	aa@gmail.com		300200300400503					2024-07-25	15	2022-03-15 16:59:42.639692+05:30	2022-03-15 16:59:42.602853+05:30	\N	76	76	f	t	f				t	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
3930085d-4537-4e6f-8b3e-370b706f097b	M	test co		ponoor	ponoor		ponoor	344555	9874543432	0	amritha@vikncodes.com			18AABCU9603R1ZM				2024-10-14	1	2022-02-26 10:41:41.598948+05:30	2022-02-26 10:41:41.579204+05:30	\N	371	371	f	f	t				t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
e837c6a7-288a-4199-8b61-cc7905e54451	A	mytestCompanyGST		x	c	\N	\N	345665	9658848596	\N	myfirstOrg@gmail.com	\N	\N	32AABCU9603R1ZW	\N	\N	\N	2023-10-11	2	2022-01-28 11:46:30.250722+05:30	2022-01-28 11:46:30+05:30	\N	349	349	f	f	t	\N	\N	\N	t	Advanced	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	349	f
c32526a6-a90a-4e06-8550-da558b6907d0	M	fkcgroupscompanies	company-logo/image_picker_0E14756D-DB30-421C-A696-D2E2E013943E-15500-00000320A19AFCCD.jpg	Jazan	Almathar		Jizan		0559192392	0559192392			31003234434435					2022-12-31	1	2022-02-08 17:11:56.649788+05:30	2022-02-08 17:11:56.634402+05:30	\N	356	356	f	t	f	512437273737	\N	مجموعة شركات FKC	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	356	f
1042f7e8-2064-41d2-805d-52a905731082	M	مؤسسة سلطان يوسف سعيد بازهير		Ai Shathi	KING ROAD		JEDDAH	21513	550127012	550127012	sulthanfoods2021@gmail.com		310050913100003					2022-12-02	1	2021-12-02 23:02:20.149689+05:30	2021-12-02 23:02:20.134253+05:30	\N	190	190	f	t	f	4030363177		SULTHAN YOUSAF SAEED BAZAHIR	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	190	f
34e83d57-f92a-49c0-b54a-84a72b05a6e2	M	fkcrestaurant		Jizan	Almathar		Jizan		0000000000	05591929392			31202929393838					2022-12-31	1	2022-02-08 17:26:58.03234+05:30	2022-02-08 17:26:58.017735+05:30	\N	356	356	f	t	f	5125141415152			t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	356	f
30e1c142-9b1a-4596-80fa-064565bbe2a6	M	مؤسسة العذق الاشقر للنقل البري					JIZAN		+966502031737	+966502773800	shafialq7@gmail.com		310950616300003					2023-03-06	2	2022-03-06 23:16:57.63747+05:30	2022-03-06 23:16:57.617027+05:30	\N	36	36	f	t	f				f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	36	f
df50c3ef-61a0-4cb2-bd4c-43d73906e94c	M	DELHI Co	company-logo/Copy_of_signature_name_logo_for_photography_-_Made_with_PosterMyWall_Xbt5H8F.jpg	#12/57	TOWER MALL		Dammam	673500	9446101101	9446500001	delhico@gmail.com		311035254200003	32AALC34567D2ZG				2022-09-30	5	2022-03-15 16:19:46.663197+05:30	2022-03-15 16:19:46.645519+05:30	\N	382	382	f	t	f	2051023222		trading solutions	t	Advanced	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	382	f
c9198e59-9642-4ebe-a405-227de27239e6	A	dell		124	lnd	\N	calicut	789067	789878654535	\N	aa@gmail.com	\N	300200300400503		\N	\N	\N	2022-03-30	1	2022-03-23 10:37:26.570223+05:30	2022-03-23 10:37:26.554084+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
e3b4870c-33ad-463a-95bc-889ec221cd4d	M	Gst Kerala Pvt Ltd	company-logo/WhatsApp_Image_2022-01-05_at_11.10.28.jpeg	ponoor(po)	thamarassheri(via)		kozhikode	676319	87141520750	87141520750	rabeeh@vikncodes.com			32AABCU9603R1ZW				2023-02-28	10	2021-07-23 14:33:27.992021+05:30	\N	\N	62	62	f	f	t			Gst Kerala Pvt Ltd	f	Professional	3	t	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
9e5584b8-c6d9-4b4f-aefc-ad78272fe7f3	A	Ov				\N	Dammmam	444	00966507216794	\N	muytha1.ov@gmail.com	\N	333333333333333333333333333		\N	\N	\N	2022-03-23	1	2022-03-16 22:55:55.27986+05:30	2022-03-16 22:55:55.265224+05:30	\N	327	327	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	327	f
f5eb7639-d1e9-40be-9607-84f20ee1cac3	A	fap				\N			0531291046	\N	faheemp131@gmail.com	\N	310000000300003		\N	\N	\N	2022-03-28	1	2022-03-21 19:46:34.100398+05:30	2022-03-21 19:46:34.083877+05:30	\N	387	387	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	387	f
696c8548-ae83-4ed3-a292-6fcc642abe23	A	sayd zahrani				\N	jizan		0561060409	\N	ansarkuttiyil001@gmail.com	\N			\N	\N	\N	2022-03-22	1	2022-03-16 01:42:37.153279+05:30	2022-03-16 01:42:37.13437+05:30	\N	383	383	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	383	f
eb22f045-55d5-44e2-b18a-813ea6f615bf	A	Shameem Demo				\N			0544307546	\N	cpshameem@gmail.com	\N	398462479798383		\N	\N	\N	2022-03-25	1	2022-03-18 21:43:03.03927+05:30	2022-03-18 21:43:03.024914+05:30	\N	384	384	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	384	f
05f9f96d-36c5-4069-960c-5356493bf308	M	ركن الغيوم	company-logo/WhatsApp_Image_2021-04-23_at_3.24.58_PM.jpeg						\N	\N								2023-03-01	1	2021-04-24 02:39:11.348+05:30	\N	\N	27	27	f	f	f		\N		f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	27	f
b4455909-e4f8-4d0a-b8e2-3777499fceb1	A	phone7m	company-logo/SECRfgEL_400x400.jpg	AL MAZOUN STREET		\N	AL KOUD	103	96897193004	\N	suhairat@gmail.com	\N			\N	\N	\N	2022-03-28	1	2022-03-21 13:49:41.493415+05:30	2022-03-21 13:49:41.468891+05:30	\N	386	386	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	83300f24-91ca-49ce-aa9c-b12dcbb9fe82	08ff6737-4963-4c90-9001-952b3afae87d	a7514b31-a291-4067-8437-c54229f99774	386	f
ef80ebe2-6854-4bbd-8669-7adcadb9dada	A	nadha				\N	abha	222277	0547151969	\N	musthafamltur@gmail.com	\N			\N	\N	\N	2022-03-27	1	2022-03-20 22:51:09.280401+05:30	2022-03-20 22:51:09.263512+05:30	\N	385	385	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	385	f
ce18f348-856c-44cc-adac-0d23efc32e6e	M	ice-world	company-logo/rainbow_sNBDZD3.jpeg	70 Old Lane	Praesentium cillum e		Rerum nobis autem in	20	789878654535	9045356823	pr@gmail.com		300200300400503					2022-04-01	10	2022-03-25 10:48:54.821724+05:30	2022-03-25 10:48:54.803121+05:30	\N	76	76	f	t	f				t	Standard	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
433328ea-c573-457a-8a13-7ee512679644	A	Welkin		ss	adas	\N	sdaas	673016	8281331623	\N	WelkinWits@gmail.com	\N		32AADFW0435A1ZR	\N	\N	\N	2022-05-03	1	2022-04-26 18:15:46.516655+05:30	2022-04-26 18:15:46.500502+05:30	\N	403	403	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	403	f
192f6c79-161c-4bcd-9578-deb8f5e3ea57	A	ssss				\N			9976778645	\N	ss@gg.com	\N			\N	\N	\N	2022-03-25	1	2022-03-18 21:40:18.952395+05:30	2022-03-18 21:40:18.935099+05:30	2022-04-28 13:11:56.588818+05:30	82	82	t	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	82	f
8ecd67fb-e2f4-4da0-b6ce-2b14127e3459	M	مؤسسة عده عبدالعزيزسمران شديد	company-logo/1644911367380.png	المملكة العربية السعوديه					0	553555483			٣١٠٥٥٨٤٥٤٥٠٠٠٠٣					2023-01-15	1	2021-01-15 19:00:18.096+05:30	2021-01-15 19:00:18.096+05:30	\N	11	11	f	t	f	١١٨٥١٠٢٩٧٢	\N	للملابس جاهزة	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	11	f
c9527e80-2437-4a51-b538-bde826c88a43	M	مؤسسة ترف الغربية للتجارة	company-logo/WESTERN_MEDICALS_1.png				Jeddah		592087230	\N	westernmedical.caresa@gmail.com		300350983600003					2022-05-31	1	2021-11-25 17:42:18.109006+05:30	2021-11-25 17:42:18.090232+05:30	\N	148	148	f	t	f	4030593120			t	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	9cb75cfa-0726-435c-8665-2cdaff55e12b	148	f
3bb9730f-c65c-44ba-a385-e89b8e64e758	M	مو سسة محور الإكرام للبلاستيك					أبوعريش		0536565411	0			٣١١١٨١٨٦٧٦٠٠٠٠٣					2023-02-14	1	2022-02-14 23:33:28.517683+05:30	2022-02-14 23:33:28.495092+05:30	\N	360	360	f	t	f				f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	360	f
a5e22203-1d06-4887-b1ad-2c5940754382	A	Hiba Sabiya 3 R				\N			0531466110	\N	muhammedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2023-04-23	1	2022-04-23 22:36:32.17454+05:30	2022-04-23 22:36:32.157552+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
dc5ffeaa-887c-4c9a-9065-9441bd8c5f23	A	hiba sabiya 3.				\N	gizan		0531466110	\N	muhammedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2022-05-24	1	2022-04-21 01:11:56.733559+05:30	2022-04-21 01:11:56.716981+05:30	2022-04-21 01:14:01.846974+05:30	391	391	t	t	f	\N	\N	\N	t	Essential	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
1a07d7d9-76c0-4f70-b58f-a19c48777a69	M	مؤسسةخيريه عبدالله بن مريح  للتجارة		١٢٣٤	ابوعريش		جازان	84711	0591492302	591492302	arhabmajid@gmail.com		٣١٠٣٨٨٠٠٨٥٠٠٠٠٣					2022-12-07	2	2021-12-07 20:36:38.684488+05:30	2021-12-07 20:36:38.667358+05:30	\N	228	228	f	t	f				f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	228	f
cd8d14e6-6b32-4322-be37-07cc2fa5b940	M	مؤسسة حسن هیاس احمد الزهراني					Jeddah		0	0			300699784700003					2022-12-02	1	2021-12-02 20:53:12.659275+05:30	\N	\N	186	186	f	t	f	4030424067			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	186	f
924abda3-7706-47b0-a908-2e0013e75fbc	M	MycompVat		qqq	aaa		4646	5645343	9856565452	34567777778	cyvat122@gmail.com	www.jasmavkn.com	345658545625653	null				2024-01-31	1	2022-02-15 11:14:37.417158+05:30	2022-02-15 11:14:37+05:30	\N	349	349	f	t	f				t	Standard	3	f	jlc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	7f7914af-7061-45d7-9716-390bf00d9c94	c067b77d-1056-4eb8-9769-0733a29a0e9f	349	f
99a668d4-9591-41db-b776-7d2a7ba26d4f	M	Mobiletest	company-logo/1648200609802.png				Guh	575	9025361470	0	mob@gmail.com		04966467834577					2022-04-01	1	2022-03-25 14:54:54.667152+05:30	2022-03-25 14:54:54.649211+05:30	\N	390	390	f	t	f	78668	\N		t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	390	f
d4ca8637-696b-4ff0-8b88-991774b9547c	M	Test Vat Pvt Ltd	company-logo/1656503035203.png	للملابس جاهزة	المملكة العربية السعوديه الرياض		الرقم الضريبي	784512	8714152075	87141520750	rabeeh@vikncodes.com	www.viknbooks.com	343245552522223					2028-10-17	5	2021-11-19 11:49:23.236393+05:30	2021-11-19 11:49:23+05:30	\N	62	62	f	t	f	1185102972	\N	Test	f	Advanced	3	t	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	b07d41ee-7d6a-45e0-81b7-c3717060bf2e	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
b7c83b6f-83bf-466a-8acc-0663a8dc32f7	A	شركة امداد الطريق للوقود NO 1 Sanayya				\N	gizan		0531466110	\N	muhammedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2023-03-25	1	2022-03-25 20:16:42.576733+05:30	2022-03-25 20:16:42.560427+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
cf563b77-03bf-4b3f-8f4e-82d99b604c1f	M	فرع القحمة طريق جازان	company-logo/c4aed76b-29f6-44c4-8343-80686c56edb5.jpg	منطقة القحمة		طريق جازان			966509349472	\N	alrabei80@outlook.sa		300000000000003					2022-02-02	1	2021-12-26 15:23:56.711272+05:30	2021-12-26 15:23:56.692899+05:30	\N	268	268	f	t	f	5850130570			t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	268	f
0b2972ce-7a2c-488b-9a08-257a17fb54e5	M	Al Shallal Ice Factory					Baish	8552	0557745333	0	alshallalicefactory@gmail.com		302268608400003					2023-03-21	3	2022-03-22 00:08:35.685412+05:30	2022-03-22 00:08:35.669397+05:30	\N	388	388	f	t	f	5903034007			f	Essential	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	388	f
b2d008f8-92d6-46cf-81ab-d4aad3f2a238	M	vikn computer		jizan					0562973876	0562973876	faris@vikncodes.com	www.vikncodes.com	300882765400003					2022-07-23	5	2021-07-23 21:55:13.953638+05:30	\N	\N	63	63	f	t	f			فيكن  الكمبيوتر	f	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	63	f
9152f512-0522-49d3-83cc-12d8444268b2	A	UAE demo Organization		xyx	xyz	\N	xyz	345678	9758654526	\N	uaedemo@gmail.com	\N	326545256895453		\N	\N	\N	2024-01-25	1	2022-03-30 10:07:37.21411+05:30	2022-03-30 10:07:37.1969+05:30	\N	324	324	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	90e23789-2fa8-4d15-be90-0a2e779c8a7c	a7514b31-a291-4067-8437-c54229f99774	324	f
ecf6342c-8f2f-4e0e-8bad-2c456d46903a	A	Mayer Mcleod LLC	company-logo/th_ADAEtk8.jfif	146 East Cowley Lane	Pariatur Reiciendis	\N	Doloremque non dolor	67	9089789078	\N	lapadaf888@whwow.com	\N	300200300400503		\N	\N	\N	2022-04-09	6	2022-04-04 14:35:56.655103+05:30	2022-04-04 14:35:56.638749+05:30	\N	396	396	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	9cb75cfa-0726-435c-8665-2cdaff55e12b	396	f
eb9f614b-f0be-480f-82c8-0b0fbb70143f	A	vattest		124	lnd	\N		343453	789878654535	\N	supplier1@gmail.com	\N	300200300400503		\N	\N	\N	2022-04-13	10	2022-04-06 11:47:02.143379+05:30	2022-04-06 11:47:02.125569+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
6445b018-3047-4169-b79d-96ac02269183	A	BNKSL company	company-logo/Copy_of_professional_logo_design_template_-_Made_with_PosterMyWall.jpg	39 East Cowley Lane	Eum sunt perferendis	\N	Non nobis ut itaque	87	789878654535	\N	jinene3618@whwow.com	\N	300200300400503		\N	\N	\N	2022-04-11	1	2022-04-04 15:01:16.977235+05:30	2022-04-04 15:01:16.961761+05:30	\N	396	396	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	9cb75cfa-0726-435c-8665-2cdaff55e12b	396	f
22593720-2add-49a2-8387-7fa49202906e	A	Faris Co.				\N			0533134959	\N	faris@vikncodes.com	\N			\N	\N	\N	2022-04-05	1	2022-03-29 22:11:06.148301+05:30	2022-03-29 22:11:06.134363+05:30	\N	63	63	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	63	f
a3b01dba-44fd-4e23-9897-47e1a29d1907	M	bnksl company	company-logo/Copy_of_professional_logo_design_template_-_Made_with_PosterMyWall_fVMal30_sUJxwG1.jpg	50 Rocky Nobel Extension	Quibusdam assumenda		Exercitation et in i	Et ut perferendis ob	+1 (627) 381-2635	Porro placeat est m	qoguzokiq@mailinator.com	https://www.xumyq.biz	300200300400503					2022-04-11	1	2022-04-04 15:02:26.770652+05:30	2022-04-04 15:02:26.754574+05:30	\N	396	396	f	t	f	781		Sit nisi cillum quo	t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	9cb75cfa-0726-435c-8665-2cdaff55e12b	396	f
d958db14-c22d-4e3c-99bb-541dc6be305b	A	FALCON TRADING		124	lnd	\N	calicut	789067	789878654535	\N	aa@gmail.com	\N	300200300400503		\N	\N	\N	2022-04-11	1	2022-04-04 16:22:30.374811+05:30	2022-04-04 16:22:30.357965+05:30	\N	396	396	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	9cb75cfa-0726-435c-8665-2cdaff55e12b	396	f
ae99c103-a655-4c44-9d57-46ceb2c55e99	A	gst test		124	lnd	\N	calicut	789067	789878654535	\N	aa@gmail.com	\N		32AAVCS8021P1ZO	\N	\N	\N	2028-10-13	1	2022-04-06 11:45:38.749793+05:30	2022-04-06 11:45:38.731806+05:30	\N	76	76	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
3a7eaf79-20ad-4be1-9f17-6b812a12c15d	A	Castro and Blair Trading		540 South Clarendon Drive	Omnis nesciunt ut e	\N	Ut incidunt laboris	986	8145241255	\N	ridazizo@mailinator.com	\N	300200300400503		\N	\N	\N	2022-04-13	1	2022-04-06 16:43:57.72431+05:30	2022-04-06 16:43:57.708017+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	a7514b31-a291-4067-8437-c54229f99774	76	f
fc41cd7d-57d8-4619-9a18-b21487f73d6a	A	test1		124	lnd	\N	calicut	789067	789878654535	\N	aa@gmail.com	\N	300200300400503		\N	\N	\N	2022-04-13	1	2022-04-06 16:00:00.73482+05:30	2022-04-06 16:00:00.719643+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
71289a84-cb65-4a99-82d3-49d45f43651d	A	GSTind		124	lnd	\N	calicut	789067	789878654535	\N	aa@gmail.com	\N		32AAVCS8021P1ZO	\N	\N	\N	2026-08-24	10	2022-04-07 17:33:55.730347+05:30	2022-04-07 17:33:55.711975+05:30	\N	76	76	f	f	t	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
dcf133b0-7309-4304-a202-68b0203b99bf	M	Chocolala		Rabig	cc		Rabig	4567765	0553288976		demo@gmail.com		310308087600003					2024-01-25	1	2022-01-17 17:13:01.019351+05:30	2022-01-17 17:13:01.002128+05:30	\N	324	324	t	t	f	46021112050			t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	324	f
731c47ee-fce9-4161-9090-f5f3c54a1c94	A	UAE demo Organization		a1	a2	\N	a	658985	9658745689	\N	uaedemo@gmail.com	\N	345856586985343	\N	\N	\N	\N	2024-01-25	1	2022-01-21 10:44:53.079429+05:30	2022-01-21 10:44:53+05:30	2022-03-30 10:06:01.560925+05:30	324	324	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	90e23789-2fa8-4d15-be90-0a2e779c8a7c	c067b77d-1056-4eb8-9769-0733a29a0e9f	324	f
473383fa-ce83-4041-9a94-0338dbbe4df0	A	KSA demo organization		c1	c2	\N	c	6555456	8596655236	\N	ksademo@gmail.com	\N	354625485656323	\N	\N	\N	\N	2024-01-25	1	2022-01-21 10:48:31.284029+05:30	2022-01-21 10:48:31+05:30	\N	324	324	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	324	f
4bd2040e-1a29-4699-90b6-b3f5be3ef925	A	مؤسسة أسرار عبده محمد الشيخ للتجارة				\N	ابوعريش	٧٦٦٥٥٥	0504545723	\N	shahidanwar261992@gmail.com	\N	310381518500003		\N	\N	\N	2022-04-20	1	2022-04-13 04:07:40.678645+05:30	2022-04-13 04:07:40.66261+05:30	2022-04-14 17:17:17.469671+05:30	399	399	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	399	f
7b89b58f-173f-4afe-bc50-f46c262ab3b7	M	SAUDI		124	lnd		gdfhy	789067	789878654535	9045356823	pr@gmail.com	www123.com	300200300400503					2022-04-20	1	2022-04-13 16:43:21.140929+05:30	2022-04-13 16:43:21.123097+05:30	\N	400	400	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	7f7914af-7061-45d7-9716-390bf00d9c94	c067b77d-1056-4eb8-9769-0733a29a0e9f	400	f
d15d9485-4058-4a50-ab76-078e29e46b6e	M	Supermarket	company-logo/2_nq5QWfG_Z7UDNRD.jpg	2B, Vikn Tower	Vikn City		Dammam	500001	9577500400	+919995937444	info@vikncodes.com	vikncodes.com	300000000000003	32SSAFV8891K1Z7				2022-12-31	5	2022-03-22 12:30:16.760884+05:30	2022-03-22 12:30:16.737382+05:30	2022-05-11 18:57:56.384938+05:30	82	82	t	t	f	500400		Vikn Codes	t	Standard	3	f	lpc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	82	f
cdb7a13a-74bc-4c7b-8859-e367baa33a6f	M	trading sample vat	company-logo/Copy_of_signature_name_logo_for_photography_-_Made_with_PosterMyWall_QNu5gWB.jpg	RA 105-889	TOWER MALL	\N	Riyadh	530016	8122300400	9446100100	dennis@vikncodes.com	\N	312457889652643	\N	\N	\N	\N	2022-12-08	2	2022-04-06 13:49:37.58799+05:30	2022-04-06 13:49:37+05:30	\N	382	382	f	t	f	\N	\N	\N	t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	382	f
22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32	M	Trading Sample with GST	company-logo/Copy_of_Watercolor_Feminine_Logo_-_Made_with_PosterMyWall_97V91CZ.png	#137/205	Tower Center	\N	Thamarassery	673500	9446101101	8547434343	tradingsample@gmail.com	\N	\N	32AALC34567D2ZG	\N	\N	\N	2022-09-30	2	2022-03-28 11:37:47.73251+05:30	2022-03-28 11:37:47+05:30	\N	382	382	f	f	t	\N	\N	\N	t	Professional	3	f	pvt	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	382	f
bfc93d28-62ad-4ca4-80a8-e37dc6fb49d8	A	Restaurant Sample		#31-105	Near White House	\N	Thamarassery	678500	9446101101	\N	restaurant@sample.com	\N	\N	32AAAAA0012TTZ5	\N	\N	\N	2023-04-06	1	2022-03-30 15:03:10.873586+05:30	2022-03-30 15:03:10+05:30	\N	382	382	f	f	t	\N	\N	\N	t	Advanced	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	382	f
f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	M	K B COMPUTERS	company-logo/logo_DP_aea63tE_bXnvitT.png	Perachunni Towers	Opst. New Bus stand, Mavoor Road		Calicut	673004	\N	9567729272	info@yunax.com	www.yunax.com		32AAYFK3209K1Z1				2023-03-04	6	2022-04-04 17:09:17.468914+05:30	\N	\N	36	36	f	f	t				f	Standard	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	36	f
ecbdf73b-7b33-453f-97d0-77d1894213eb	A	Hiba new 6				\N	sabiya		0531466110	\N	muhamnmedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2023-04-25	1	2022-04-25 04:55:48.619852+05:30	2022-04-25 04:55:48.603843+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
379a9d10-ed8e-4ee3-81dc-09794d5091d2	M	مؤسسة النخبة العامه التجاريه	company-logo/Final_arabic_logo_design_page-0001_EEoyT8y_S6JAvzw.jpg				Jeddah		\N	0592087230	nuqba.caresa@gmail.com		300000000000003	null				2022-11-25	1	2022-04-23 23:09:25.603628+05:30	2022-04-23 23:09:25+05:30	\N	148	148	f	f	f	4030271454			f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	9cb75cfa-0726-435c-8665-2cdaff55e12b	148	f
b3fba004-a423-43a6-9113-1d1a41cf0576	A	مؤسسة أسرار عبده محمد الشيخ للتجارة				\N	ابوعريش	٧٦٥٤٤	0561847555	\N	sajidhussain70f@gmail.com	\N	310381518500003		\N	\N	\N	2023-04-13	2	2022-04-13 03:07:57.039505+05:30	2022-04-13 03:07:57.022462+05:30	\N	398	398	f	t	f	\N	\N	\N	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	398	f
a246dd4c-0583-473a-9026-e9c44ba8859c	M	VATCONPANY	company-logo/download_2.png	2222	TOWER MALL		KKD	222	2233223322	04952239244	aa@gmail.com		311035254200003					2022-04-27	1	2022-04-20 15:14:58.615719+05:30	2022-04-20 15:14:58.600203+05:30	\N	382	382	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	5ce24a77-89e1-4e06-8f5e-3645c51aaf38	c067b77d-1056-4eb8-9769-0733a29a0e9f	382	f
d98c417d-8472-4d0d-9dfa-ffc829159417	A	Webster and Campbell Traders		66 Green First Parkway	Quia nemo et ratione	\N	Placeat porro sint	58	38234234234	\N	fifydyc@mailinator.com	\N		37AADCS0472N1Z1	\N	\N	\N	2022-04-25	1	2022-04-18 11:04:34.603325+05:30	2022-04-18 11:04:34.586665+05:30	\N	303	303	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	303	f
d04da6b7-4d95-44ce-9357-663d167994e4	M	مخبز کیک و حلویات بلدی	company-logo/1639330408934_r215gjf.png				Abu Arish		567184025	567184025	daniyalashraf40@yahoo.com		300713585600003					2022-12-02	2	2021-12-02 20:15:05.40875+05:30	2021-12-02 20:15:05.390854+05:30	\N	184	184	f	t	f	5901013028			f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	184	f
fb5512d5-8884-47fd-9aef-8dbe7fd0a472	M	مؤسسة رفوف هيثم التجارية		6996			SABYA	85484	0548672476	0548672476			301216568500003					2023-04-04	1	2022-04-04 19:48:10.710232+05:30	2022-04-04 19:48:10.693076+05:30	\N	397	397	f	t	f	5906019932		Haitham Shelves Trading Est	f	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	397	f
b6466821-4c80-493f-bcdb-5d58d6780d6e	A	Vikn ERP	company-logo/image_4.png			\N			0433244545	\N	info@vikncodes.com	\N	300000000000003		\N	\N	\N	2022-05-04	1	2022-04-27 14:17:18.104452+05:30	2022-04-27 14:17:18.087434+05:30	2022-04-28 12:24:14.822461+05:30	82	82	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	82	f
9732bb17-6e64-4bf0-b062-827145695dc9	M	مؤسسة ساره غريب بن محمد العجمي التجارية	company-logo/1651113080988.png		Najran			66243	0	0	saragaribest2021@gmail.com		311059783700003					2022-12-09	2	2021-12-09 13:20:57.777027+05:30	2021-12-09 13:20:57.757698+05:30	\N	233	233	f	t	f	5950125288	\N		f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	37e24037-20a8-4f34-98a2-5607ddf3e010	c067b77d-1056-4eb8-9769-0733a29a0e9f	233	f
389bd0d6-da50-4bf1-ad1f-d3da91d89213	A	RINSHA RAYAN				\N	Kilo 14	000000	0531347147	\N	muhmedshabeer56@gmail.com	\N	310954122500003		\N	\N	\N	2022-04-26	1	2022-04-19 21:54:27.555496+05:30	2022-04-19 21:54:27.540742+05:30	\N	401	401	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	401	f
cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	M	Mas Elite General Trading	company-logo/mas_logo_updated_NE7NdPd_4tRmPzb_KGhkdfc_AwKqvHu_TxmCFvL.jpeg	Ware House Number -4, 19th Street, Al Noud,	Behind Lulu Shareekath		Al Ain		-037365492	0506637218, 0509063730	info@maselite.net	www.maselite.net	100571464500003					2023-02-27	6	2022-02-27 13:04:45.077385+05:30	2022-02-27 13:04:45.059241+05:30	\N	372	372	f	t	f				f	Professional	3	f	null	f	0	e688d809-f945-4686-bb95-c709b9715c11	d96f0325-9cf5-4bbc-bed8-a14f96bd8757	a7514b31-a291-4067-8437-c54229f99774	372	f
9b8cbb5f-44df-4b0a-bed9-f9fa832d1588	A	VIKN ERP	company-logo/image_4_xisbaSZ.png	VIKN	Vikn City	\N	RIYADH	400	9577500400	\N	info@vikncodes.com	\N	344444444444443		\N	\N	\N	2022-05-05	1	2022-04-28 13:14:42.995908+05:30	2022-04-28 13:14:42.977634+05:30	2022-04-28 13:35:50.454407+05:30	82	82	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	82	f
878acf1f-6090-47f6-ab00-2b0f61cbcce6	M	تموينات التوفيق الثني للمواد الفذائية		االامير فيصل بن فهد					\N	\N			300858215300003					2023-04-24	2	2021-04-25 01:08:47.855+05:30	\N	\N	29	29	f	t	f				f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	29	f
eae848be-772d-4494-90d1-d1443e0e1b31	A	VIKN ERP	company-logo/image_4_voPPIJr.png	VIKN	Vikn City	\N	RIYADH	4444	99999999999	\N	shaheenkk009@gmail.com	\N	300000000000003		\N	\N	\N	2022-05-05	1	2022-04-28 12:25:56.273209+05:30	2022-04-28 12:25:56.257158+05:30	2022-04-28 13:11:43.296931+05:30	82	82	t	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	82	f
c556d8f4-9261-429d-9c16-493372bed121	M	Vikn RMS KSA	company-logo/2_CzrMe0D_jYabPfH.jpg						\N	\N			123456789987456					2022-12-31	3	2021-10-07 16:34:56.194434+05:30	\N	\N	82	82	f	t	f	655516516			f	Advanced	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	82	f
9cd0274f-3bf0-4644-a1fe-0ebb28c0be6c	A	indian trade		124	lnd	\N	calicut	789067	789878654535	\N	su88@gmail.com	\N		32AAVCS8021P1ZO	\N	\N	\N	2025-10-30	12	2022-04-22 09:45:38.920755+05:30	2022-04-22 09:45:38.904791+05:30	\N	76	76	f	f	t	\N	\N	\N	t	Professional	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	76	f
8cfce55d-f345-4699-a7b4-f2e7dd7f8481	M	مؤسسة القهوة المحترفة للتجارة والتسويق					Abi Araish		0559336087	0	coffee7pro@gmail.com		310193010900003					2022-12-23	1	2021-12-23 22:25:47.622927+05:30	2021-12-23 22:25:47.60781+05:30	\N	263	263	f	t	f	5850234685			f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	263	f
3ff9e67a-61c0-43a2-b4bf-9bb0d92cb84e	A	شركة امداد Hiba Sabiya 2				\N	Hiba,Sabiya		0531466110	\N	muhammedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2023-04-19	1	2022-04-19 05:07:30.245661+05:30	2022-04-19 05:07:30.230615+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
496411f0-f421-4944-b2b5-5b70f079a141	A	thoufeequei				\N	jizan	601	0534743024	\N	shajiramesan@gmail.com	\N	300858215300003		\N	\N	\N	2022-03-25	1	2022-03-15 16:17:32.935523+05:30	2022-03-15 16:17:32.916918+05:30	\N	29	29	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	29	f
e1c64904-40fc-4693-958f-184d2017ed65	M	Masiya computer	company-logo/2_TrszWp4_Y4JLxRW.jpg	VIKN parke	vikn		Jizan	673574	+919995937444	+919995937444	vikncodes@gmail.com	vikncodes.com	300000000000003					2022-12-31	5	2021-11-04 12:56:48.685921+05:30	\N	\N	82	82	f	t	f	500400		الماسية للكمبيوتر	t	Advanced	3	f	lpc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	82	f
ab6aea22-1bcd-44ab-8424-ff52223d1e9b	A	Muzarah 5				\N	gizan		0531466110	\N	muhammedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2023-04-25	1	2022-04-25 04:11:31.241119+05:30	2022-04-25 04:11:31.224033+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
4f684660-13b2-4823-bc13-d2edea17dbb7	M	test1abc	company-logo/AKR_rjO51VP.png	124	lnd		calicut	343453	7898786545353	33333333333333	su88@gmail.com		300200300400503					2026-08-13	1	2022-04-23 09:56:46.527934+05:30	2022-04-23 09:56:46.513044+05:30	\N	76	76	f	t	f				t	Professional	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
e5e25ac8-e95b-4863-aa56-ea527980398c	A	HIBA MADAYA 4				\N	gizan		0531466110	\N	MUHAMMEDZAKARIYA6@GMAIL.COM	\N	311037390400003		\N	\N	\N	2023-04-23	1	2022-04-24 02:12:35.268057+05:30	2022-04-24 02:12:35.251897+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
800d482a-bf47-403b-9988-d4c2e0ee0cfd	M	Tasty Shrimps		Hera'a Street, Jeddah			Jeddah		\N	557970275			310706631900003					2022-12-01	1	2021-12-01 14:31:38.736924+05:30	\N	\N	177	177	f	t	f	4030390180			f	Lite	3	t	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	c067b77d-1056-4eb8-9769-0733a29a0e9f	177	f
343e4652-7e73-4f3c-967f-fba6122da413	M	عالم التنين للاتصلات							\N	\N			301377973400003					2022-06-07	2	2021-05-26 03:46:06.315+05:30	\N	\N	47	47	f	t	f				f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	47	f
fb6ddcc9-a887-4edf-8919-1bfbd07f8e29	A	te				\N	vd	8765432	987654321	\N	test@vikncodes.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 14:48:54.663596+05:30	2022-04-28 14:48:54.649142+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
941d3d5a-fe4f-4eb6-89fc-b3ec5778caa4	A	tehh				\N	vd	8765432	987654321	\N	test@vikncodes.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 14:50:24.424206+05:30	2022-04-28 14:50:24.409642+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
7bde9de7-d90f-4191-8899-5aa67898249a	A	comp				\N	jn	876	9896767	\N	p33kk@gmail.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 14:57:41.179403+05:30	2022-04-28 14:57:41.14572+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
11bb5d1a-0440-42f5-baf7-f98cf82106bb	A	test				\N	333	5432	65432	\N	s@gmail.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 15:33:45.614641+05:30	2022-04-28 15:33:45.597659+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
0902ac47-a724-4d50-8880-365ca10e7943	A	tr				\N	76	76756	7567	\N	8i@gmail.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 15:49:24.674084+05:30	2022-04-28 15:49:24.660219+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
819f10e7-7a00-4492-9475-db3f51fe0249	A	dy				\N	fdsf	769	5436	\N	4564gg@gmail.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 15:56:12.79299+05:30	2022-04-28 15:56:12.778158+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
bd0da7ad-bade-455b-bf27-31e311c2fcff	A	company 1				\N	Hieee	7868678	98956896	\N	company1@gmail.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 16:31:50.264006+05:30	2022-04-28 16:31:50.249619+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
5215eb9e-f285-4ee2-8886-262b2a68fcb3	A	Q VAT	company-logo/Screenshot_from_2021-11-12_17-24-44_w7S6Ms0.png	KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	8921310735	\N	uvaist1997@gmail.com	\N	32AAVCS8021P1Z3	\N	\N	\N	\N	2023-05-14	1	2022-05-07 17:27:43.902167+05:30	2022-05-07 17:27:43+05:30	\N	21	21	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	21	f
47c5669a-087c-4ab3-97ce-9e110e3dcf90	A	bbb				\N			789878654535	\N	pr@gmail.com	\N	300200300400503		\N	\N	\N	2022-05-11	1	2022-05-04 11:47:15.928249+05:30	2022-05-04 11:47:15.912392+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6432264a-c5fc-41df-ac58-1cce08507b12	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
663e3799-85d8-4208-8024-c8b8216f322d	A	tgytutu				\N	gg	34534	98777653	\N	gaa@gmail.com	\N		12345676	\N	\N	\N	2022-05-05	1	2022-04-28 16:26:37.358876+05:30	2022-04-28 16:26:37.344359+05:30	\N	371	371	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	371	f
8171eab3-e534-490c-8ab9-cc2ec9e1c2ea	M	QRCODE_VAT	company-logo/Screenshot_from_2022-04-29_11-17-40_BOojVDt_8hulLAu.png	KANNAPANKUNDU Puthuppadi	Mailellampara		Kozhikode	673586	89213105744		uvaist1997@gmail.com		32AAVCS8021P1Z3	null				2022-05-14	1	2022-05-07 17:23:22.004106+05:30	2022-05-07 17:23:21+05:30	2022-05-07 19:21:46.806143+05:30	21	21	t	f	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	21	f
8f8f0961-ca0b-4e63-a6ff-6d032adfb521	A	fAERA		124	lnd	\N	Madinah	789067	789878654535	\N	pr@gmail.com	\N	300200300400503		\N	\N	\N	2022-05-17	1	2022-05-10 09:51:36.246553+05:30	2022-05-10 09:51:36.229934+05:30	\N	76	76	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	37e24037-20a8-4f34-98a2-5607ddf3e010	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
000ef3b4-34ec-494b-b6be-d81706cfc940	M	SAUDI KITCHEN EQUIPMENT EST.	company-logo/Saudi_Kitchen_LOGO.JPG-1.jpg	4227	HAIL STREET		JEDDAH	2712 - 23233	6421521	562512029	info@saudike.com	WWW.SAUDIKE.COM	302147050300003					2022-12-02	1	2021-12-03 00:00:57.951045+05:30	2021-12-03 00:00:57.936829+05:30	\N	189	189	f	t	f	4030163503		HOSPITALITY AND KITCHEN SOLUTIONS	f	Essential	3	f		f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	189	f
deae8417-9780-4806-92ae-66e0fc0bcf25	A	SAWARMA DAHMA 7				\N	SAWARMA		0531466110	\N	MUAMMEDZAKARIYA6@GMAIL.COM	\N	311037390400003		\N	\N	\N	2023-05-10	1	2022-05-10 04:38:15.248339+05:30	2022-05-10 04:38:15.231465+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
f4a46e31-2eda-4013-942f-7aa8a2e6cf4c	A	asdasd		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	08921310735	\N	uvaist1997@gmail.com	\N			\N	\N	\N	2022-05-14	1	2022-05-07 19:34:15.118347+05:30	2022-05-07 19:34:15.098121+05:30	\N	21	21	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	21	f
6255e028-8e21-40d3-a822-31c770a8235e	A	HABEEB	company-logo/Watrmelon_juice.jpeg	124	lnd	\N	calicut	789067	789878654535	\N	pr@gmail.com	\N	300200300400503		\N	\N	\N	2022-05-24	1	2022-05-17 14:04:32.294677+05:30	2022-05-17 14:04:32.276669+05:30	\N	449	449	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	c067b77d-1056-4eb8-9769-0733a29a0e9f	449	f
5aaa8093-4bb2-452e-8250-85b9d0c38d50	M	VIKN ERP	company-logo/image_4_RBFbUy6_gx3AuGb.png	VIKN parke	Vikn City		RIYADH	3333	9577500400		shaheenkk009@gmail.com		300000000000003					2022-12-31	1	2022-04-28 13:37:17.29967+05:30	2022-04-28 13:37:17.275555+05:30	\N	82	82	f	t	f				t	Advanced	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	82	f
5b57265f-5913-4212-b405-387a7c5bbf56	M	Murad Airconditioning & Refrigeration مراد للتكييف والتبريد	company-logo/logo_image_DFtjLat_DUTQEvK.png	99			AL-Khobar	31952	138353348	562773059	muradairconditioning@gmail.com		300565308600003					2022-11-29	1	2021-11-29 22:52:02.228204+05:30	2021-11-29 22:52:02.211069+05:30	\N	161	161	f	t	f	2050083901			f	Lite	3	f		f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	161	f
7effb1b1-a222-4119-9d7e-05e4142a20a0	M	مؤسسة عشاء راني التجارية					Sabya		0580900622	0580900622			311244918700003					2023-05-01	1	2022-05-01 19:42:14.999751+05:30	2022-05-01 19:42:14.983322+05:30	\N	406	406	f	t	f				f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	406	f
def89dfa-fa07-494c-b9d2-fdc356ff7390	M	Rassasy INDIA	company-logo/2_LnUSz5T_jYVsypg.jpg						\N	\N				32AARFV8891K1Z7				2022-12-31	3	2021-10-12 13:09:13.341734+05:30	\N	\N	82	82	f	f	t				f	Advanced	3	f	sp	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	82	f
e0af00ad-f367-4d55-b79f-6a77e389302b	M	QRCODE_1		KANNAPANKUNDU Puthuppadi	Mailellampara	\N	Kozhikode	673586	08921310735	\N	uvaist1997@gmail.com	\N	32AAVCS8021P1Z3	null	\N	\N	\N	2023-05-14	1	2022-05-07 19:22:36.587209+05:30	2022-05-07 19:22:36+05:30	\N	21	21	f	t	f	\N	\N	\N	t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	21	f
94a7c471-ab5e-468b-afd1-9655ec29a9fc	M	مؤسسة محمود محمد موسى فقيهي للخضار والفواكه		جازان			Airport	826456	0569903085	0	mkrehnas@gmail.com		300882765400003					2022-12-06	2	2021-12-06 14:57:54.840244+05:30	2021-12-06 14:57:54.825424+05:30	\N	206	206	f	t	f			MAHMOOD MUHAMMED MOOSSA FAKHI VEGETABLES AND FRUITS	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	206	f
3bca8b72-a84d-4279-8c4c-e7834bb00515	A	مؤسسةفاطمه حسن هادي مسملي التجارية				\N			9446101101	\N	amrad2751@gmail.com	\N	310385522900003		\N	\N	\N	2023-05-06	1	2022-05-06 11:54:21.776575+05:30	2022-05-06 11:54:21.758869+05:30	\N	407	407	f	t	f	\N	\N	\N	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	407	f
54ba4163-584f-4d3f-bb02-120b9800ba97	M	YUNAX DIGITAL PVT LTD	company-logo/Yunax_3_IVOFhTC.png	28/166A/167B,MANIPARAMBATH BUILDING MAVOOR ROAD	PATTERY	POTTAMMAL	CALICUT	673016	\N	9995446122	info@yunax.com	www.yunax.com		32AABCY3594P1ZQ				2023-06-16	10	2021-06-18 19:20:33.438159+05:30	\N	\N	36	36	f	f	t			YUNAX DIGITAL PVT LTD	f	Professional	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	36	f
6e16110d-22d0-42fd-96ec-dbb35a225b2a	A	Muracco India	company-logo/fOTSC3j-running-wallpaper-desktop.jpg	765321	Tharamel	\N	Calicut	676317	9809991515	\N	habeebrahmanv786@gmail.com	\N		32ABCDE1234T1ZW	\N	\N	\N	2022-06-14	1	2022-06-07 16:29:26.117303+05:30	2022-06-07 16:29:26.098584+05:30	\N	40	40	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	40	f
90866a22-2468-4663-a77d-eb19c1c33152	A	futura				\N			9539888635	\N	abhinandnadupparambil@gmail.com	\N			\N	\N	\N	2022-06-20	1	2022-06-13 09:47:02.010707+05:30	2022-06-13 09:47:01.994246+05:30	\N	460	460	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	460	f
ded7822a-1355-40c1-aa0d-2335153d4d08	M	Vikn Codes  LLP	company-logo/Logo_8_cm_VyhgEQc_u7ZprpW_u0K32WB_GRB31L8.jpg	UP 9/1230 B, UNNIKULAM	POONOOR	THAMARASSERY	KOZHIKODE	673574	9995937444	9577500400	vikncodes@gmail.com	https://vikncodes.com/		32AARFV8891K1Z7				2023-01-11	10	2021-06-15 09:54:55.976977+05:30	\N	\N	31	31	f	f	t	AAO-6937		IT SOLUTIONS	f	Advanced	3	f	llp	f	5	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	31	f
4c5b08f3-a3ac-47ff-bac1-9b950be34d63	M	Indian		fyfvv	vff		KKD	545	9446101101	33333333333333	dennisjosepk@gmail.com	www123.com		32AAKC34567D2ZG				2022-06-15	1	2022-06-08 12:25:56.163216+05:30	2022-06-08 12:25:56.145435+05:30	\N	76	76	f	f	t				t	Standard	3	f	null	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	76	f
85225fa8-cf46-4a69-807f-2dfff48287bc	A	Kenz				\N	Dammam	34640	544999769	\N	sufiyan.ar@outlook.com	\N	123456789012341		\N	\N	\N	2022-05-31	1	2022-05-24 11:58:51.642948+05:30	2022-05-24 11:58:51.627599+05:30	\N	454	454	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	a7514b31-a291-4067-8437-c54229f99774	454	f
f65d9558-9de8-4194-94a5-a33242fe3e80	A	Faris RMS	company-logo/iPhone_13_Pro_Max_-_1.png	1	jizan	\N	jazan	88423	0533134959	\N	faris@vikncodes.com	\N	312312312312313		\N	\N	\N	2022-06-14	1	2022-06-07 10:44:57.471576+05:30	2022-06-07 10:44:57.453649+05:30	\N	75	75	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	75	f
3df9f1ca-a499-4d67-8bf6-1e2583d97e7a	A	SUFITO SUFI				\N			966581314001	\N	sufitosufi1990@gmail.com	\N			\N	\N	\N	2022-06-04	1	2022-05-28 13:36:08.187822+05:30	2022-05-28 13:36:08.171096+05:30	\N	82	82	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	82	f
4de62d91-a400-4be6-9db5-ab903eaa8c56	M	FALCON TRADINGOrganization		124	lnd		calicut	789067	789878654535	9045356823	supplier1@gmail.com		300200300400503					2022-06-14	1	2022-06-07 12:04:35.222069+05:30	2022-06-07 12:04:35.204727+05:30	\N	76	76	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	76	f
66acff5c-29f2-483c-a9e7-018b381d00f8	M	KSA VIKN CODES	company-logo/KSA.jpeg		Air port Rode		Jizan		9577500400	9995937444	shaheen@vikncodes.com		300000000000003					2022-12-31	10	2022-06-17 15:25:52.340786+05:30	2022-06-17 15:25:52.326028+05:30	\N	31	31	f	t	f				f	Advanced	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	31	f
31411b4e-8721-4f68-a0df-fd06d6f5bdf9	M	OPPO	company-logo/R_NbQ2h7C_OeNxTog.png	124	lnd		gdfhy	789067	78987865489	8989787867	pr@gmail.com	www123.com	300200300400503					2025-10-14	10	2022-06-07 10:17:21.384345+05:30	2022-06-07 10:17:21.357837+05:30	\N	76	76	f	t	f				t	Professional	3	f		f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	c067b77d-1056-4eb8-9769-0733a29a0e9f	76	f
c676be3d-419f-40c1-98b5-2fcc5763e315	A	ABCD pvt.ltd		12	Near post office	\N	Kozhikode	673582	9539230689	\N	muhsink33701@gmail.com	\N		32ABCDE1234F2Z5	\N	\N	\N	2022-06-30	1	2022-06-23 11:47:27.729988+05:30	2022-06-23 11:47:27.713235+05:30	\N	468	468	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	468	f
0a29adb7-a152-4a3c-a0e7-872db8b0be1f	A	Kaybeetrading				\N	Al Ain	87641	00971551354638	\N	kaybeetrade@gmail.com	\N		100556449500003	\N	\N	\N	2022-06-09	1	2022-06-02 16:45:09.491397+05:30	2022-06-02 16:45:09.476852+05:30	\N	457	457	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	d96f0325-9cf5-4bbc-bed8-a14f96bd8757	a7514b31-a291-4067-8437-c54229f99774	457	f
7d124276-ca3e-4a70-9b2d-f9257641b881	A	CELLTECH MOBILES	company-logo/205B2BE4-A008-4142-A218-7675D6978221.jpeg	Bustand road	Near bus tand road	\N	Thamarassery	673573	8848194005	\N	savad26417@gmail.com	\N			\N	\N	\N	2022-06-17	1	2022-06-10 13:35:13.590574+05:30	2022-06-10 13:35:13.563274+05:30	\N	459	459	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	459	f
355182fe-5711-4e3f-933f-0f7309caa27b	A	Muracco	company-logo/LoadingPng.gif	676123	Tharamel	\N	Jizan	23425123	9567962392	\N	habeebrahmanv786@gmail.com	\N	333333333333333		\N	\N	\N	2022-06-14	1	2022-06-07 16:27:34.379562+05:30	2022-06-07 16:27:34.362924+05:30	\N	40	40	f	t	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	a7514b31-a291-4067-8437-c54229f99774	40	f
f78592c4-f92f-483c-8278-55034bd265e6	A	Sample Restaurant By Me		#143	TOWER MALL	\N	Dammam	561010	9446100100	\N	dennis@vikncodes.com	\N	325610000025623	\N	\N	\N	\N	2023-06-10	1	2022-06-03 11:26:55.976939+05:30	2022-06-03 11:26:55+05:30	\N	382	382	f	t	f	\N	\N	\N	t	Advanced	3	t	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	6b668a9d-cd65-4821-818d-d167de4616fe	c067b77d-1056-4eb8-9769-0733a29a0e9f	382	f
510e5554-216b-4e2a-9326-7c0ef5ba4ce9	M	PIZZA LAILA	company-logo/87930581.webp	Threeq jeddah,Saqeeq					0557986984		pizzalaila009@gmail.com		300527698300003					2022-06-10	1	2022-06-03 15:50:09.210316+05:30	2022-06-03 15:50:09.193246+05:30	\N	458	458	f	t	f				t	Standard	3	t	lpc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	458	f
a147b367-1ae7-4130-afa0-653e2e4bd658	A	Test				\N			9995466747	\N	aslamviruthully01@gmail.com	\N			\N	\N	\N	2022-06-27	1	2022-06-20 21:10:11.561801+05:30	2022-06-20 21:10:11.547061+05:30	\N	467	467	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	467	f
e5a5c952-2c37-4699-b6b1-a95249491eb8	A	Koba				\N			0531466110	\N	muhammedzakariya6@gmail.com	\N	311037390400003		\N	\N	\N	2023-05-18	1	2022-05-18 19:48:15.968778+05:30	2022-05-18 19:48:15.899932+05:30	\N	391	391	f	t	f	\N	\N	\N	f	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	391	f
6c357b27-683f-42e7-9d94-1b1ffd0f41b9	M	•´¯`•»   🎀  NOAR❁🍩T  🎀   »•`¯´• 🍩	company-logo/wallpaperflare.com_wallpaper_1_vq8caze.jpg	124	lnd		calicut	789067	789878654535		su88@gmail.com							2022-06-16	1	2022-06-09 14:37:10.884463+05:30	2022-06-09 14:37:10.865299+05:30	\N	76	76	f	f	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	9cb75cfa-0726-435c-8665-2cdaff55e12b	76	f
bb16b31d-b2b4-4897-9611-aa17ebbb8152	M	حلويات فالور	company-logo/logo.png	جازان-كادي مول					\N	\N			305001459700003					2023-04-14	1	2021-04-15 01:52:35.087+05:30	\N	\N	16	16	f	t	f			جازان-كادي مول	f	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	16	f
3c9f0bef-9eb0-4acb-a1dd-c4c1bb7cfa75	M	Modern Food Est							0568672997	0	fatimaibrahimyoussefest@gmail.com		311123858200003					2022-07-30	1	2022-06-13 18:42:17.23857+05:30	2022-06-13 18:42:17.221285+05:30	\N	461	461	f	t	f	4030267979			t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	461	f
54ffbb90-97eb-4c45-b1f7-5407d9e417a7	M	مؤسسة موسى حسين عسوان التجاريه		3432	\N	\N	SABYA	\N	\N	0539535658	moosahaswan@gmail.com	\N	301334178400003	\N	\N	\N	\N	2023-06-13	2	2022-06-14 01:48:24.496642+05:30	2022-06-14 01:48:24+05:30	\N	463	463	f	t	f	5903500333	\N	\N	f	Lite	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	463	f
2329fcd1-d87e-4648-84dc-3221154eaa0e	M	Sulthan Veedu					Jizan	7492994	7902922777	0	ramsheedc3@gmail.com		3003789457000006					2022-06-26	1	2022-06-19 20:13:45.198175+05:30	2022-06-19 20:13:45.181841+05:30	\N	464	464	f	t	f				t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	c067b77d-1056-4eb8-9769-0733a29a0e9f	464	f
d0f4a410-e463-4b9a-b619-6c180daa16cb	A	Grand Trading Company		7155		\N	Baysh		0547216950	\N	info@grandksa.com	\N	302087896100003		\N	\N	\N	2022-07-04	1	2022-06-27 11:39:37.980778+05:30	2022-06-27 11:39:37.965078+05:30	\N	472	472	f	t	f	\N	\N	\N	t	Professional	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	472	f
79bbad87-9900-4719-adf6-7e8f04b815a1	A	ABC				\N			0533014752	\N	ptmuneerpba@gmail.com	\N			\N	\N	\N	2022-07-04	1	2022-06-27 15:17:34.539349+05:30	2022-06-27 15:17:34.523358+05:30	\N	473	473	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	473	f
c60f3453-4fe7-4c41-8f3e-892b73b9d6cb	M	Abc							\N									2022-07-04	1	2022-06-27 15:07:39.255774+05:30	2022-06-27 15:07:39.241168+05:30	2022-06-27 15:16:23.03519+05:30	473	473	t	f	f				t	Standard	3	f	jlc	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	473	f
b227d4fc-62c2-4c68-be70-81c893823ae5	A	ddd		للملابس جاهزة	المملكة العربية السعوديه الرياض	\N	الرقم الضريبي:٣١٠٥٥٨٤٥٤٥٠٠٠٠٣		87141520750	\N	test@gmail.com	\N			\N	\N	\N	2022-07-13	1	2022-07-06 16:59:06.072989+05:30	2022-07-06 16:59:06.058623+05:30	\N	62	62	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	88c8360f-81cb-43c9-b541-f38af0ef8b6f	c067b77d-1056-4eb8-9769-0733a29a0e9f	62	f
fd11193b-749f-4743-a4e6-f4be9984f645	M	TEST							0548672476		aneeskkdn123@gmail.com		301216568500003					2022-07-06	1	2022-06-29 18:37:10.290826+05:30	2022-06-29 18:37:10.274394+05:30	\N	397	397	f	f	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	397	f
9153785d-27de-4396-a461-30f90ed6746c	A	Milktea				\N	Mumbai	90011	09565584163	\N	tau.TriceratopMi.1645805049374@gmail.com	\N			\N	\N	\N	2022-07-15	1	2022-07-08 13:30:24.21976+05:30	2022-07-08 13:30:24.188136+05:30	\N	489	489	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	965473b2-6bf9-4190-b20a-c13b07b54386	c067b77d-1056-4eb8-9769-0733a29a0e9f	489	f
f181a8d1-e316-4cc1-8916-d1ba15fbc1bc	A	demo				\N			0536919137	\N	rameedmtr@gmail.com	\N	302154000100003		\N	\N	\N	2022-07-07	1	2022-06-30 15:33:58.449399+05:30	2022-06-30 15:33:58.433291+05:30	\N	476	476	f	t	f	\N	\N	\N	t	Advanced	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	476	f
e50237cc-a192-4c1b-aaa3-595a5ff2f4b3	A	VIKN CODES	company-logo/ONE_6999.JPG	Sahya IT SEZ Building	Cyberpark	\N	Kozhikode	673016	9577500400	\N	shaheen@vikncodes.com	\N			\N	\N	\N	2023-03-31	6	2022-07-01 11:08:30.974023+05:30	2022-07-01 11:08:30.95808+05:30	\N	31	31	f	f	f	\N	\N	\N	f	Advanced	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	31	f
b2a29165-0728-4eb1-b887-374e6f27fa00	A	ًمؤسسة ثلج وكرز				\N	جازان	145456	0569090795	\N	adcanalusfy@gmail.com	\N	343454564600003		\N	\N	\N	2022-07-14	1	2022-07-07 09:29:47.289079+05:30	2022-07-07 09:29:47.27251+05:30	\N	481	481	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	481	f
b8f26e57-72a3-4d3e-a014-5dd28e6dbe96	A	ViknAsna	company-logo/Company-ID-Card-Design-Presentation-scaled.jpg	21	near hilite	\N	calicut	877655	8089335882	\N	asna@vikncodes.com	\N			\N	\N	\N	2022-07-19	1	2022-07-12 13:37:20.295955+05:30	2022-07-12 13:37:20.280845+05:30	\N	449	449	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	449	f
3abd97e5-4720-4f71-bcc0-cf4c265e9f67	A	Rhksgnfw				\N	India	110001	09361234567	\N	tau.DilophosauSi.1645807780511@gmail.com	\N		123456	\N	\N	\N	2022-07-15	1	2022-07-08 13:39:25.314482+05:30	2022-07-08 13:39:25.293739+05:30	\N	490	490	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	965473b2-6bf9-4190-b20a-c13b07b54386	9cb75cfa-0726-435c-8665-2cdaff55e12b	490	f
83c52e5b-4e94-4bde-b5a5-95699451982f	M	NASER MAHZIE NIMRAN TRADING EST							0	0537611712	muhammedseesh@gmail.com		300742948400003					2022-07-20	1	2022-06-29 17:01:51.757146+05:30	2022-06-29 17:01:51.740476+05:30	\N	475	475	f	t	f	5903018821		ناصر محزي نمران وحيش	t	Standard	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	475	f
061eb840-e145-40cf-9aa9-0e498bb83175	M	Hyder Masoud Hussain Trading Est	company-logo/1641925842520.png				Jeddah		509624688	555047539	jonnyspapa14@gmail.com		300600967800003					2022-11-26	7	2021-11-26 21:21:18.298934+05:30	2021-11-26 21:21:18.283804+05:30	\N	154	154	f	t	f	4030360129	\N	مؤسسة حيدر مسعود حسين الحلويات	f	Lite	3	f	\N	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	9fdd37e8-bdb4-4278-8447-e616fdd6c285	a7514b31-a291-4067-8437-c54229f99774	154	f
29e3ab91-bd68-4c61-9878-570170a8c205	A	Xnxjx				\N	Delhi	110001	9776508985	\N	tau.ScottSidhu.1645807780513@gmail.com	\N			\N	\N	\N	2022-07-15	1	2022-07-08 13:44:45.02427+05:30	2022-07-08 13:44:45.006569+05:30	\N	491	491	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	f75a963f-9c9d-46c6-ab29-82339ddf1e1c	c067b77d-1056-4eb8-9769-0733a29a0e9f	491	f
f5ce00d5-5b58-4b71-93a5-511582cca0d2	M	مؤسسة ثلج وكرز	company-logo/IMG-20220329-WA0002.jpg				جيزان		0569090795	0	nmrxx20@gmail.com		343454564600003					2022-07-07	1	2022-07-01 01:47:55.36864+05:30	2022-07-01 01:47:55.352323+05:30	\N	477	477	f	t	f				t	Standard	3	f	null	f	0	94e4ce66-26cc-4851-af1e-ecc068e80224	12f2f7fa-e007-4170-905a-30b534ab3363	a7514b31-a291-4067-8437-c54229f99774	477	f
380fcc53-018c-4316-bd32-8c3f6b8f1974	A	PET B				\N	UAE	90003	8082580369	\N	petyrbolton.8302i9@gmail.com	\N		1728282	\N	\N	\N	2022-07-15	1	2022-07-08 10:22:57.079024+05:30	2022-07-08 10:22:57.061915+05:30	\N	487	487	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	d96f0325-9cf5-4bbc-bed8-a14f96bd8757	a7514b31-a291-4067-8437-c54229f99774	487	f
3646174a-4190-42b7-8df2-f946cee71673	A	kd company				\N			7994232617	\N	abhinand@vikncodes.com	\N			\N	\N	\N	2022-07-19	1	2022-07-12 13:55:14.252408+05:30	2022-07-12 13:55:14.236859+05:30	\N	460	460	f	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	460	f
07f17601-8a85-42a8-97d7-8a48845404b3	A	Aaa				\N	Aaa	111	91234567	\N	tau.EddieMitchel.1645803247881@gmail.com	\N			\N	\N	\N	2022-07-15	1	2022-07-08 13:23:26.298782+05:30	2022-07-08 13:23:26.283324+05:30	\N	488	488	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	83300f24-91ca-49ce-aa9c-b12dcbb9fe82	f94c45ec-e239-4547-8bc6-32fd84b0aab0	c067b77d-1056-4eb8-9769-0733a29a0e9f	488	f
4e6f539f-f339-44ab-920f-dc5975efcf6c	A	Sample				\N	City	110001	9275705892	\N	tau.peterrex.1645805317496@gmail.com	\N		163846474	\N	\N	\N	2022-07-15	1	2022-07-08 14:05:18.644484+05:30	2022-07-08 14:05:18.627246+05:30	\N	492	492	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	f75a963f-9c9d-46c6-ab29-82339ddf1e1c	a7514b31-a291-4067-8437-c54229f99774	492	f
a3886492-2f16-46f5-850e-1ede5291b27e	M	Hdjdjej					Hsjsjsjsk	38290202	0#98438943489	0	AerysBaelish.456565@gmail.com							2022-07-15	1	2022-07-08 14:30:42.513917+05:30	2022-07-08 14:30:42.496249+05:30	\N	493	493	f	f	f				t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	965473b2-6bf9-4190-b20a-c13b07b54386	c067b77d-1056-4eb8-9769-0733a29a0e9f	493	f
9fcf0c87-bac5-4325-a2ef-2868f55f6b18	A	Musthafachr		thadam	madrassa	\N	malappuram	676314	917770009957	\N	musthafachr@gmail.com	\N			\N	\N	\N	2022-07-16	1	2022-07-09 14:43:45.04055+05:30	2022-07-09 14:43:45.024153+05:30	2022-07-10 23:19:12.528173+05:30	3	3	t	f	f	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	a7514b31-a291-4067-8437-c54229f99774	3	f
ed268c11-b719-4f01-9907-e8328d736881	A	Meow				\N			650253000	\N	tau.MaisieGrady.1645814430192@gmail.com	\N			\N	\N	\N	2022-07-15	1	2022-07-08 15:51:05.192707+05:30	2022-07-08 15:51:05.175449+05:30	\N	494	494	f	t	f	\N	\N	\N	t	Standard	3	f	\N	f	0	e688d809-f945-4686-bb95-c709b9715c11	44cd0cb7-0e5b-4cea-8388-f13a2333e102	c067b77d-1056-4eb8-9769-0733a29a0e9f	494	f
85c625ee-110c-450b-8f3a-4b8ce24c6535	A	Gst kerala pvt		Cyber park	Near Hilite	\N	Calicut	696969	08714152075	\N	rabeeh@vikncodes.com	\N		32AABCU9603R1ZW	\N	\N	\N	2022-07-19	1	2022-07-12 14:15:07.927407+05:30	2022-07-12 14:15:07.912111+05:30	\N	60	60	f	f	t	\N	\N	\N	t	Standard	3	f	\N	f	0	30f8c506-e27a-476c-8950-b40a6461bf61	19b4fb50-6882-4d29-81cc-0591191f25e6	c067b77d-1056-4eb8-9769-0733a29a0e9f	60	f
\.


--
-- Data for Name: country_country; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.country_country (id, "CountryCode", "Country_Name", "Currency_Name", "Change", "Symbol", "FractionalUnits", "CurrencySymbolUnicode", "ISD_Code", "Flag", "Tax_Type") FROM stdin;
30f8c506-e27a-476c-8950-b40a6461bf61	INR	India	Rupee	Paise	Rs	100.00000000	U+20B9	+91		gst
83300f24-91ca-49ce-aa9c-b12dcbb9fe82	OMR	Oman	Rial	Baizas	RO	1000.00000000	U+FDFC	+968		vat
94e4ce66-26cc-4851-af1e-ecc068e80224	SAR	Saudi Arabia	Riyal	Halala	SR	100.00000000	U+FDFC	966	/media/country-flags/1_1_xYuEJUZ.png	vat
c8ed7839-32ef-4376-badf-08be93cd709f	KWD	Kuwait	Dinar	Fils	KD	1000.00000000		+965		
fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	QAR	Qatar	Riyal	Dirhams	QR	100.00000000	U+FDFC	+974		
e688d809-f945-4686-bb95-c709b9715c11	UAE	United Arab Emirates	Dirham	Fils	AED	100.00000000		971	country-flags/255px-Flag_of_the_United_Arab_Emirates.svg.png	vat
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.customer (id, photo, "DateOfBirth", "Phone", "City", "Address", "Gender", "Street", "ZipCode", "Language", "LastLoginToken", "LastLoginTokenMobile", "VerificationToken", "VerificationTokenTime", "TimeZone", "Country_id", "LastLoginCompanyID_id", "State_id", user_id) FROM stdin;
103ca87b-69e8-4da7-9184-f8ab5d4ec09f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	791271	2021-12-28 18:00:44.338322+05:30	\N	\N	\N	\N	274
06cb0c29-35ff-45d5-987b-e04949663b2a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	42
0e68b794-50dd-40b2-92eb-2e622f2a2fcb		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	17
b543413b-5932-4541-b447-bffc202b8376		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	371117	2022-03-28 11:27:43.945171+05:30	Asia/Calcutta	\N	\N	\N	392
2312e2f4-fe36-49c4-bbb6-ab0f88888347		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	41
2883420d-34c0-4223-b276-5eba444c014c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	22
0e897865-1c83-4ff1-b54b-160594a0994f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	788527	2021-12-03 15:24:48.094584+05:30	\N	\N	\N	\N	192
2dfce60b-57b8-40b3-9ef5-7a38291bb70e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	13
7533a06d-54a1-44cb-a62a-981fe38f9e1b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	521505	2021-11-18 15:44:02.343925+05:30	Asia/Calcutta	\N	\N	\N	115
32adcae5-a882-4737-a199-60080cfd3d43		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	43
5c025a79-1f65-43da-b894-f12d4b7487e0		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	882481	2022-02-16 00:20:09.264056+05:30	\N	\N	\N	\N	362
7e5b9515-7b14-42b0-be34-d5070f7bb44c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	2df75602-f5a7-4f20-a3ff-c662bd98ba06	\N	12
4467527c-7de1-47e3-8784-4cdf5d19889f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	24
447961f9-80a1-4785-96e4-fe15d10127af		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	28
508372ff-c89c-437d-863b-1fc2709250a5		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	19
63a55d02-3ea4-4d40-8705-a4f5cced4ae3		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	15
6b9a69a8-3890-4a3b-995d-f7afcdcf03ff		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	14
7168e96c-a403-4d0a-869a-a0014e99f071		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	44
73dfa395-8eaf-4a3b-84ef-f15341357317		\N	8838403975			\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	12f2f7fa-e007-4170-905a-30b534ab3363	5
26121e55-8ef9-497f-802b-a5eb3effc2be		\N	966597787547	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	145
7eb480f7-64c5-4b89-9564-87b9b527d8ef		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	38
4990e8a2-b9b6-432e-b77c-0f7d7c11b8a7		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NjIxOTYwLCJqdGkiOiJkZThmYmY3MTM5NmI0YjY3YTQ4YjEwZDNhNWNlN2Y1OSIsInVzZXJfaWQiOjMzfQ.KWpnGhe_zNg_QQdK8Psi7P2bLDb_q4wNyjxlCEzvWUQ	\N	\N	\N	Asia/Calcutta	\N	\N	\N	33
47a354c7-bbcc-4a98-a714-7016f72caf5f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	856118	2022-02-14 10:00:43.038637+05:30	\N	\N	\N	\N	358
83c2b9b3-9002-460b-8150-26da2273bd57		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	596848	2021-11-18 15:49:18.570412+05:30	Asia/Calcutta	\N	\N	\N	117
a221cec1-55ec-406b-8b5b-2522820866bb		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	25
b73c40a6-6358-4f35-9d4e-0286803e9ef7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	6
c15dafd4-315c-4f2b-be8b-04ff5f47ccfd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	4
c415fbdd-9073-4cca-a68f-85838307c3c7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	27
c6314317-eb2e-4c71-ad70-f4b6b0082379		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	20
dc0fa44c-0eb6-4c58-966f-b6dc76248283		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	26
e535a490-9a51-45ec-a316-0f3f3ca39759		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	18
ed39c5dd-81eb-4d03-a2d2-d50bf33b0eef		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	37
ef7c1242-6958-44b2-96e5-e443450debf0		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	8
efab54ba-1868-49b8-95b1-7a2c8f12d1ac		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	45
f2e233a5-1777-4c6c-b2c1-be7cca075b3b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	7
f5b5d4c7-c7b1-4bf2-b03e-61ee0cf02879		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	32
fa8fbae8-ebf5-4a2d-9681-2a856a57bb3d	doctor.jpg	2020-12-27	7676543456	Test	Testing	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	6ef7e793-e7fd-404b-bc81-a38167dc0d92	10
658a0a4e-3157-4f33-a34e-5e9fc75d3bc4		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTA4NzUxLCJqdGkiOiI1NzEzZjU3ZmM1YTM0NjBlODgwMjJkYjliNzUzNGE1ZSIsInVzZXJfaWQiOjIyMX0.R_llQt94YpJWrtpfuhSTu2ccdIFOqjmrR_-AY7WTmmU	\N	981372	2021-12-06 09:50:38.625361+05:30	Asia/Calcutta	\N	\N	\N	221
8f6ee7e5-ff51-4b3e-98c5-09fb82af636a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	48
b614dfd4-95f6-467b-94c5-d964fc4fc0f6		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	125581	2021-12-21 22:19:39.868884+05:30	\N	\N	\N	\N	259
691b7c3e-dd12-42c0-b864-c14f3c352b64		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	49
dced3fbf-1cc3-41c3-984b-00ccf8f6831b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	266356	2021-11-18 17:47:05.656873+05:30	\N	\N	\N	\N	121
7eee233b-8828-459c-a4ea-b2b19f8ad8db		\N	123456789	\N	\N	\N	\N	\N	english	\N	\N	453526	2021-11-18 17:54:01.40314+05:30	Asia/Calcutta	\N	\N	\N	124
cd8e32f4-7f55-4926-8cf8-d7a8bd7b54ca		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	52
b92b76ee-ec18-4518-9dff-527d078fcebe		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	54
9467370f-2578-4b2b-bcba-a197c92904f7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	55
955cbd71-3306-4f63-85e5-aa37b3d0a945		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	56
05e21e96-77e5-4ff8-bfbd-03b992f45ae3		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	57
af6933b6-96aa-439b-91a2-82af1b2e52eb		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	58
759792f0-de61-45ba-8194-c4537df56f24		2003-06-27	7592847288	calicut	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3NDE4NjA5LCJqdGkiOiJjNjQ4MWVmNjRmOTA0NzIwYTIzNWYxZjFlMjYwNWE3NiIsInVzZXJfaWQiOjUzfQ.DxU_p-5ZYT7lLe89kBXFjNgLp-O0aSdIWEiLy0ejqQg	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	53
fbe60403-2a3b-429b-9505-19b1ffc9ccd8		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDczMTgxLCJqdGkiOiI5MTk4ZmU4ZDUxZmQ0YzhlYWNiZjMwODZhMmI0M2JiYSIsInVzZXJfaWQiOjQ5Nn0.J1b82KcnAGCZgWwspgHzgTIUKYh7uRjBUBuHVPXZZoM	125880	2022-07-11 16:28:43.96153+05:30	\N	\N	\N	\N	496
b5c81cb6-167c-41bc-b47a-a7c60ff3fef3		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	64
feb4bb45-74e8-48cb-871e-3664ef2521f4		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	65
3416a50b-de1d-4856-8dee-e3d0dcfac9bf		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	66
01e95d32-ef49-4c66-80bf-1bc5077da8b2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	67
e367e970-3a42-4197-a86d-2791aa854e8e		\N	273737	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	965473b2-6bf9-4190-b20a-c13b07b54386	69
0b84a245-9c51-4c7c-bee1-474ef1a08d29		\N	666556	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	70
46a9681f-f796-4365-8958-1c3b0689284f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	213532	2022-01-07 22:15:20.283787+05:30	Asia/Riyadh	\N	\N	\N	301
e0c81f26-6eec-408c-9362-4aa53bc61459		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	170627	2021-12-23 20:40:31.299735+05:30	\N	\N	\N	\N	261
d4082fbf-3d69-4be8-9f54-8d7493856660		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxNzkxMTcwLCJqdGkiOiJhN2I4NzI1MjYyMzU0NDJhYjEwNTg0ODA1N2Y5MzMzZiIsInVzZXJfaWQiOjI2Mn0.jBNBSRw1Ac27K-Kcr2QwYvkqnxgSoHDb0qtakcSp2yU	\N	128957	2021-12-23 15:55:38.259052+05:30	Asia/Calcutta	\N	\N	\N	262
02b89cb8-a1e4-41ed-9ad0-7538e9e3748e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	652053	2021-12-28 18:19:51.01378+05:30	\N	\N	\N	\N	276
fa2586cd-828f-4db5-8cf0-25e7ec218aba		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzc3MjY1LCJqdGkiOiIyODk0YmNjMmY1NmY0NDI5ODkzZjc4MjljNTA0OTI1OSIsInVzZXJfaWQiOjMyMX0.9bgnYg1Wpa6x1AP1EujMsxpc2gFII5krsb_Igju_Sw0	277752	2022-01-15 15:36:08.660206+05:30	\N	\N	\N	\N	321
d5333367-ad3b-473f-ab20-f958c0debea7		1990-01-25	559101593	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY2NzExOTE4LCJqdGkiOiJhNjczYTQ4Y2U0YTg0MWQzOWQ5NTE1YzNlYjdiMTFiMyIsInVzZXJfaWQiOjc3fQ.OQHMGQMWgY8oK2W9V71FU5XoL1CYNApOqfX7HcQZOCU	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	77
407d9943-6cb1-4d47-a1fa-6d0333a1b713		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	403748	2022-01-14 21:39:39.298245+05:30	\N	\N	\N	\N	316
acdaf31c-1e97-414b-a24b-dc67d55adb77		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	326933	2021-12-01 01:09:53.628195+05:30	Asia/Riyadh	\N	\N	\N	172
cf6b5731-f0cc-471a-9494-cdf90a7c8dd3		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	798984	2022-01-31 22:56:16.131482+05:30	\N	\N	\N	\N	352
1e96d456-e760-4639-acfd-d6adf1630bed		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	559712	2021-12-03 22:44:51.728143+05:30	\N	\N	\N	\N	201
5374d095-10b8-448c-830f-4757dca8f6ae		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTQ3MTM0LCJqdGkiOiIyMWFhMGRkOGY2OTU0ZjEzODhhMGJiNDg2NmZhOWNkZiIsInVzZXJfaWQiOjQ5N30.dFg5ihRhQoca7F274cU8fG8eB2EwayySkwm_uT8KIM8	\N	660995	2022-07-12 13:01:29.681111+05:30	Asia/Calcutta	\N	\N	\N	497
b7749965-4445-4794-bec4-ef195bf86069		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	240396	2022-01-22 10:01:30.521456+05:30	\N	\N	\N	\N	336
4a176a1f-8224-490c-b57a-74761be86f2a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	409129	2022-07-08 09:51:01.281734+05:30	\N	\N	\N	\N	482
b088e3fe-afea-4cad-93aa-0f0657ccbeeb		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MjE3MzgzLCJqdGkiOiJiMGRkYWY0MGJmMjg0ZWI0OGEyNzUyMDcyMWEzMzk1NSIsInVzZXJfaWQiOjMzMH0.j6OmND3s8ibll4aFm8PmsTHgRz82PlYYZ2lM105cJFY	217948	2022-01-20 17:47:36.137239+05:30	\N	\N	\N	\N	330
e273dbc1-71ee-4bf8-9178-f0b51f3beaea		\N	966560936434	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY0MjE1MzA5LCJqdGkiOiJlZTdkNjUyMjFjY2I0ZDQyOGRmOThkMTQ0ZTY1MTg2NSIsInVzZXJfaWQiOjc5fQ.B_mEHQsEalzsIYwZId6p50ULYGTAYoNi6fZclWDgzi4	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	12f2f7fa-e007-4170-905a-30b534ab3363	79
4f0ae15f-0423-4831-9ae3-963b0801b995		\N	539267728	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MjA2OTQ5LCJqdGkiOiI1NzRiZWQ5ZTY3YmY0NWE5YWI2NDM5ZTU2ZTk5MWJhYiIsInVzZXJfaWQiOjE0MX0.YVNZNvE9kQACP1VEGxTy58zQcgv7978HfmBNanqwFKI	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	141
35529295-888c-40ad-9231-f705d068e4c5		\N	548752909	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY0MzMwNzc1LCJqdGkiOiI5N2Y3MmM0YTYwNjg0Nzk0YjAzYzdjNTk0MTg4YjRmZiIsInVzZXJfaWQiOjgwfQ.0C2hsZCWSQrynpO0Fdn30vGCHVm7kVLEV1UtxbPqeNI	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	80
60a1cd16-f506-4dc1-9884-bab28a4cdf05		\N	547458774	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDY3Njg2LCJqdGkiOiI3NzE1NWY5OWQ4MDk0OWJmOTk0MjJhNDg3NGJhYTAwYiIsInVzZXJfaWQiOjkwfQ.kXyPw8-RukgkShNtx0g7xj34FqNIh2ISu7xi9ZY6Y58	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	adfe0099-614a-45ea-87a5-18c0bafbd87b	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	90
3969e34f-f377-4031-a3f2-4216bd9daa04		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwOTI1NDYxLCJqdGkiOiI0NGZkYTc5ZTA5MjI0Nzg2OTNkNGY5M2NmMDFkMDAyYyIsInVzZXJfaWQiOjI0Nn0.7Jqj2GTkb1iUr-aSi2qzcYTICwWezeuXvNREgEfvx0U	\N	141630	2021-12-13 15:14:23.028683+05:30	Asia/Colombo	\N	3209e419-99c7-40fe-8356-a8ac77a5c5db	\N	246
6e633cdd-009d-41b7-b345-43aeda411b28		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	389494	2021-11-30 20:26:30.447701+05:30	\N	\N	\N	\N	164
dbb7f6b9-5953-4a92-a131-b07b4ab6e864		\N	123456789	\N	\N	\N	\N	\N	english	\N	\N	256067	2021-11-18 17:50:51.581492+05:30		\N	\N	\N	122
3720dca8-f694-425b-981e-6a7d448896dd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	95
3827530d-afc2-43b0-8947-9541d7ac4933		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3ODIxMDAxLCJqdGkiOiIzNGNlYzhjMzk5ODk0ZTk3ODUxMGUxNWNjOGE1M2U1ZCIsInVzZXJfaWQiOjM3MH0.eUKmDdztj4uz0y6Z-NPzypwoQrTJRWjGxs6zXed-Ygw	\N	618428	2022-02-25 15:53:53.070075+05:30	Asia/Calcutta	\N	8076f7d0-9075-44e6-a2a1-50f7590f4b9a	\N	370
98b40ff3-4d6a-4652-8755-cf96f91b68bc		\N	567633103	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY3NzM5NzExLCJqdGkiOiI1NGVlYTk0OGJmNDE0OGIyYjY3MGRhODk1MzQ3ZDBmMCIsInVzZXJfaWQiOjk3fQ.YXdBEWMphwqbTtrnK3679aO2rLfnSmJbX8Cg71FNedw	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	97
679bb294-c1a8-4b6e-bc20-17578f09d340		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	463673	2021-11-30 21:02:32.157927+05:30	Europe/Helsinki	\N	\N	\N	166
83fb73d0-730c-485f-89a5-1f4b0fa14ec4		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	296549	2021-11-30 21:08:27.39657+05:30	Europe/Helsinki	\N	\N	\N	167
6dc57f3b-7361-42e9-8a88-e582d44973e9		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	86
6db7d854-cb0b-4cf7-9a2c-34ec9309c65e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	87
a24b4952-c38e-4333-a8d9-0c5b094da69d		\N	539527986	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY2ODkyOTk3LCJqdGkiOiJhNDFjZmQ1NzE3OGE0ZDBmODVjNGIyZWM1ODVjZjNlNSIsInVzZXJfaWQiOjg4fQ.esmrHSBQ8Uh7ljju5N0XeA9lif0QP_DdAvYXBIjzwNM	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	88
1109b67c-5c2a-4396-991a-077bde7ff881		\N	123456789	\N	\N	\N	\N	\N	english	\N	\N	700473	2021-11-18 18:03:34.823478+05:30	Asia/Calcutta	\N	\N	\N	125
42a47f51-4ae2-4e31-93d6-bdd904bb3fe2		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MzExNDkzLCJqdGkiOiI3YTBhNWRhZDk2NzI0NjQ0OGE0MWM0NjJjODRkYjI4MCIsInVzZXJfaWQiOjYxfQ.yo-1A-HClbbXYnDPH9tYXg8Ap0WqxFZ9mbYrCCwb9aY	\N	\N	\N	Asia/Calcutta	\N	\N	\N	61
9e4dfd4a-53f4-4484-b9e7-c3c40faa7bea		\N	123456789	\N	\N	\N	\N	\N	english	\N	\N	287005	2021-11-18 18:17:59.521913+05:30	Asia/Calcutta	\N	\N	\N	127
508271ba-cbd6-45e1-9fc1-7f3a9ee2a34c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	383227	2021-11-18 18:33:44.083324+05:30	\N	\N	\N	\N	129
35237743-4f98-42e4-8966-dc64d117d506		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	673707	2021-11-18 18:36:22.778125+05:30	\N	\N	\N	\N	130
3569dcea-53d2-47bf-83e7-22cbce0297ba		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	939467	2021-11-18 18:43:03.591084+05:30	\N	\N	\N	\N	131
7d2a2380-6a84-44c5-bf99-9f0fe49af494		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	306997	2021-11-18 18:51:55.22025+05:30	\N	\N	\N	\N	132
0d49d622-1e75-4751-96ee-dbe820c0ce8f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	98
2d3fb328-50af-4f18-a19c-44857ed3020b		\N	563304517	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY3NjI4MzEzLCJqdGkiOiIwNjAzMmUxMGU0OTA0MTkyODAxN2M3OWU0YzNkYWZmYyIsInVzZXJfaWQiOjk2fQ.CM_1X6zIya2TC4nFLuUZi6PDt_6h4sbnqkaND2gnkXY	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	96
d3db60d9-857e-4049-9a9b-7871714f3e00		\N	9048811993	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwODIyMTc4LCJqdGkiOiIxMmU5ZGRjZmRhNDk0YzRjYTAyYTU5YmUxZWUyNjNmMSIsInVzZXJfaWQiOjkzfQ.wFczi4MN9yuGNcr40LekDHdeutvKyq3nbmIcJBik-ls	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	f0c06f47-1a55-450b-b4e5-a410afe78803	19b4fb50-6882-4d29-81cc-0591191f25e6	93
a9f97491-a985-409a-82a2-76f0d227c10d		\N	557226745	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNzY0MTAxLCJqdGkiOiJhMjBlOTE1N2I4YmU0YjZhYTlkNWQwOThjNjUxNDQ3OSIsInVzZXJfaWQiOjg5fQ.5LYpJIJOxHgBKwFrfoQoYqCwceikvWHKTtRfN5YPHV8	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	89
08e66852-2718-4e37-80f3-e3ef9e77c2eb		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMTEwMDg0LCJqdGkiOiI4OGU1ZmUzNTdlOTk0N2JhYTc5YWQ4YzI5ZGE0M2NiNCIsInVzZXJfaWQiOjMwMn0.GmYLdIYJwzJVI56qPhoxXJmaFJ5cRG8WPnWNMnHjano	\N	905759	2022-01-07 22:17:24.843723+05:30	Asia/Riyadh	\N	7be9f552-742a-4076-a0fc-467fd3162780	\N	302
65bc85df-05fe-4974-8dd9-84f33e6c8a45		\N	501311980	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	99
e8982ce9-5d11-4551-b6e3-5ae010e072e9		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	236693	2021-11-30 21:29:03.388606+05:30	\N	\N	\N	\N	168
b99e16e1-156b-405a-a111-9dd9e793fb99		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	996313	2021-12-02 19:39:10.1066+05:30	Asia/Riyadh	\N	\N	\N	185
8500c912-72a5-4a89-aeb6-0ebf7597edcd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	453324	2021-11-19 08:26:48.50538+05:30	\N	\N	\N	\N	135
e7e71699-53b1-43fe-ab78-26d4b91693a7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	680846	2021-12-02 21:07:10.138713+05:30	Asia/Riyadh	\N	\N	\N	187
82f1546d-11c6-4cf8-9aea-eac34f108e3a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	177319	2021-11-19 10:30:11.680693+05:30	\N	\N	\N	\N	136
36e4b483-654a-43b9-83eb-06c496e58068		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	410196	2021-11-19 10:47:47.878098+05:30	\N	\N	\N	\N	137
c8cd25f8-6cb0-42a9-a15c-104475d6a7bc		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMzczMzcyLCJqdGkiOiIzZWM3YjI4YWZjZmQ0ZDhkYWYzMDgwZDExOWJhN2UxMyIsInVzZXJfaWQiOjE2fQ.n2c2skKlCZeuBruOcMgk-ozwSXkacZOtwSLJs-JzFGc	\N	\N	\N	Asia/Calcutta	\N	\N	\N	16
ac623f7e-ccf0-4812-85de-10bd4ec51781		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4OTg3MjI0LCJqdGkiOiI5Mjc4NmY4MjUzODI0N2Y5Yjk2NzEzOTk1Y2IxMDI1NyIsInVzZXJfaWQiOjMyN30.vNyo7Y50MgM6ji32QR3w8v3_8_tlZkoy3RHUFJjAkqs	508158	2022-01-19 22:59:59.598533+05:30	Asia/Riyadh	\N	9e5584b8-c6d9-4b4f-aefc-ad78272fe7f3	\N	327
16c818fc-4396-49a8-a186-2c75c1155e87		\N	523453452345	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4NTc2ODQzLCJqdGkiOiJmNzcwMTFmMzJiMjQ0N2I3YmY5YzBlYzE2N2U4YzNlYSIsInVzZXJfaWQiOjk0fQ.XfkJ1XqrY03QshJZEf47k8ytJbAA79gQTQTTXZsxm6c	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	94
31344109-bb12-41e6-83ad-a8a330efb7c2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	742464	2022-05-12 17:20:43.38814+05:30	\N	\N	\N	\N	409
52aa8197-e93e-458c-bac7-92a947bab505		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	706462	2022-05-12 17:21:23.659115+05:30	\N	\N	\N	\N	410
a9573fb7-b090-45df-b9cf-01ddbcdfe46d		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	436555	2022-05-12 17:49:06.865943+05:30	\N	\N	\N	\N	411
2a8109e5-a36f-49c8-ba02-0e81774a013f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	944978	2022-05-12 17:51:07.400294+05:30	\N	\N	\N	\N	412
44bdf606-f56e-4673-9716-e9d8df5f122a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	371372	2022-05-12 17:53:28.80514+05:30	\N	\N	\N	\N	413
2825f4dd-3515-4e35-8ede-20e9f779d72c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	577225	2022-05-12 18:21:07.363255+05:30	\N	\N	\N	\N	419
c9f038a2-0f95-4342-bfb0-7e288be200ca		\N	1234567891	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY3OTgxMjczLCJqdGkiOiIwZmUyZTA3NmQzNzU0OWJkOWZjZWM4NmY4MTJmYWRiZiIsInVzZXJfaWQiOjEwM30.szTn5Ll9m0zcruL3OhU6qYOXWkF4CgYlkoGukeasio4	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	12f2f7fa-e007-4170-905a-30b534ab3363	103
d354292d-042a-4400-b3eb-353e07f03cf1		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	104
99cd71e9-8d68-419e-bc4b-9d169dea7e76		\N	558695504	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	12f2f7fa-e007-4170-905a-30b534ab3363	105
fd265114-7dff-4c4d-a2fc-d53ae9bb6402		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwMjc5MDQxLCJqdGkiOiIwMzZlZGM4MzQyMDg0YTg4OGQ0ZTg4YTJiMTRmYTY0OCIsInVzZXJfaWQiOjE0OX0.cYlw4yUx6frv-Uxe8UFy2k_yKRzSUM-RC7LqijVtcCQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MzkxMDU4LCJqdGkiOiJlZDZiNTVmYTBlODU0MzRiYjZkZjA0YjQxYWQ1NjMzNSIsInVzZXJfaWQiOjE0OX0.YPD7558P5z5ivZczELJTYiSARBaPZW9YIr7H9Vl3bKg	440447	2021-11-25 21:03:15.568341+05:30	Asia/Riyadh	\N	8bc08e87-b0ed-4295-a58f-0b903fdc24d3	\N	149
da5deba8-141e-4a33-bf75-5a5584ac3b06		\N	503509084	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4MDk5NjA2LCJqdGkiOiJiMGM5OWM1NWE2NTc0NTgzYjVkNDg0ZDk0ZGQ5Y2M3NyIsInVzZXJfaWQiOjEwNn0.tct_Qie9L3ck2UR2KyMEeCK7jF4izjCrGazxdIcadTA	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	12f2f7fa-e007-4170-905a-30b534ab3363	106
c16edbf2-3e17-47e6-b69b-6b77173ecbfc		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	994914	2021-11-18 17:45:39.596001+05:30	\N	\N	\N	\N	120
7c1d4411-4080-4d24-8fca-233d1d6f05c1		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	\N	\N	\N	107
cd431acc-3273-466e-bfec-dd3213041e46		\N	87777	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	108
9b2de0d2-0a8c-4d3d-8911-277e69849afc		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3OTI3MTQzLCJqdGkiOiIzY2M3ZTc4MjkyNzc0OGRhYWEwOTZjZDQ4MGRiNTM5MCIsInVzZXJfaWQiOjExM30.w5NFzJQmigDjQCbUg4wXWluTAOqLZWmYZjRhRAA0SYc	\N	881556	2021-11-18 15:35:09.055129+05:30	Asia/Calcutta	\N	\N	\N	113
85c47706-d7a6-4055-8b60-4d5362d37af3		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwOTUxOTAwLCJqdGkiOiI0MzAwMjMzYjA1M2I0ZmNjOGZiM2UyYTY5ZGI2Y2IxOCIsInVzZXJfaWQiOjE0MH0.ivtHDhx8wXxCSAhOuxLXP7B-aQxIDzJlz2OGU_bgvOo	\N	223243	2021-11-22 16:19:24.876861+05:30	America/Los_Angeles	\N	c0f6338d-7023-4cb9-bf23-4084d0584dbf	\N	140
ea67651c-6afc-4440-80d8-33f67a1e4cad		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwMDcyMDU2LCJqdGkiOiJlOTkyOGRjNjEwNGY0YjhiODFhMmRjYzRiODhkZTY5ZiIsInVzZXJfaWQiOjE5M30.8tYZr-e5zm1fuhOqQDBvBd2RIjc0vrhVnhVpx0VxG90	\N	860164	2021-12-03 18:21:16.065725+05:30	\N	\N	821d06a3-3da2-43fe-9e61-1bfd714c36cd	\N	193
75878df0-7edd-42c8-b8a4-a85acdc75f1e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	154333	2021-12-03 18:30:23.174203+05:30	Asia/Riyadh	\N	\N	\N	194
406b09f5-59ab-48aa-8282-3e7d001d6861		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	745426	2021-12-03 18:36:48.086993+05:30	Asia/Riyadh	\N	\N	\N	196
21d53fb5-3b2e-42f9-879e-3c7b9e108b00		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	381432	2021-11-30 20:27:24.566211+05:30	\N	\N	\N	\N	165
249635b1-841d-4c13-b80a-f653fe629db3		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTYzMTQwLCJqdGkiOiI1Y2JlY2M1ZmQ4OGQ0YjBkYjUwNmU2ZjliYTZiNzE1YiIsInVzZXJfaWQiOjEzOH0.m6XKwzf1qdS82TcW1LyBFAErGu9Is1BB5hhRtBMnFys	\N	778895	2021-11-19 10:57:38.370153+05:30	Asia/Calcutta	\N	aa43a8e1-895b-446e-af06-6a59b04f5008	\N	138
91012825-3bdf-4d0d-84d3-c574aa367350		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4MzM4NDU2LCJqdGkiOiIwYzc0MGY4NmI1YzE0YWJlODk4OWIxMzU4YjNhMjE5YyIsInVzZXJfaWQiOjEwOX0.IPI78x6G4oHDOgPRnNspuwuz80Y_I4uK0IpExXVw6xg	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTg0NTI3LCJqdGkiOiIzMmVhZTY1NTc3ZDk0ZTNmODAzODY5NmE3MDA3MmMzZiIsInVzZXJfaWQiOjEwOX0.Q3bqsgT4_rNDXyp1-Bvxn8YfYK_xf2_MjHj40PfP0wA	\N	\N	Asia/Calcutta	\N	\N	\N	109
ca588b0c-2394-4a19-8e7f-c8593d7a9a37		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNzI4Mzg3LCJqdGkiOiIzODRiYzk2NDA3Mjc0NWNhODExMWRkM2U1YzM3ODExYyIsInVzZXJfaWQiOjExMn0.2eWodxQCOhgTWKmgm3akuBqsLXfWuNC2W_6e4t6wRuw	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4Njc4NjQ5LCJqdGkiOiI1MjA3N2Q3ZGFlZWQ0NjJjYTZjYTYwZjM1ZjllNzU2MSIsInVzZXJfaWQiOjExMn0.HGYA_Tq3cSAIuUFY7fxHx7ME5YuBNqQxSIfmRCLKVJE	\N	\N	Asia/Calcutta	\N	d92f7ae5-6b6b-4922-b196-c0e3d1a4116d	\N	112
0fc941ee-abf2-4f96-9196-430836b24768		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDU4OTQ5LCJqdGkiOiJmN2M1ZTBlMzk2OGI0NzgxODY1NDhiMDc3ZWY1NTNjNCIsInVzZXJfaWQiOjExOH0.ItwpQzaFlbCc9LxzUTEBaQ1ZQQzZr4MoGfjwzywwaks	\N	249558	2021-11-18 16:45:38.204801+05:30	Asia/Calcutta	\N	\N	\N	118
4760a365-3b8c-4223-8ff5-9a76cb1467ae		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	959604	2021-11-18 15:41:40.71342+05:30	Asia/Calcutta	\N	\N	\N	114
1fa5e455-c9d0-4b01-acf1-26a4f79efa0b		\N	123456789	\N	\N	\N	\N	\N	english	\N	\N	809549	2021-11-18 17:52:52.569597+05:30	Asia/Calcutta'	\N	\N	\N	123
31b32b47-309e-4607-bfd1-187fc0f0db7b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	918130	2021-11-18 16:41:26.151152+05:30	\N	\N	\N	\N	116
130306b0-be28-4124-8e00-2258fffca696		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4Nzk2NjE5LCJqdGkiOiJmZTk0N2RiMDUyODA0ODUzYjA2MjAyMjc5ZGI3ZGMxMyIsInVzZXJfaWQiOjg0fQ.fusFzCXhR_vUjQWGfZgUpZXJB_MNqL20mo9qpD-1NXc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4NDQ0NjQwLCJqdGkiOiI5MmZmZGU1Y2EwMWU0ZDE4Yjk1ZTdiMTFlYTU5MDI0MCIsInVzZXJfaWQiOjg0fQ.fWD3aeUZutzxaYTUJ4w_nGO_lfbrl6BAwks6PG7B70M	\N	\N	Asia/Calcutta	\N	bae725f9-8660-4c26-952c-547ccaba8380	\N	84
27ff0425-690f-4219-8ebf-8ed368c554f4		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	308727	2021-11-18 17:00:12.397183+05:30	\N	\N	\N	\N	119
0e845429-e7e8-43cb-88cc-794adec7cf5c		\N	123456789	\N	\N	\N	\N	\N	english	\N	\N	259334	2021-11-18 18:16:57.871423+05:30	Asia/Calcutta	\N	\N	\N	126
e1d7f1c6-9529-4771-a8d5-6a5dd073322e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	769505	2021-11-18 18:21:12.237184+05:30	Asia/Calcutta	\N	\N	\N	128
e60ae65f-01ec-4d31-8772-9b61c89c1ff3		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	830239	2021-12-01 02:52:47.162205+05:30	Asia/Riyadh	\N	\N	\N	174
88b74151-ffaf-4d03-866a-04e30e0e36dc		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzE2Nzk2LCJqdGkiOiI1YTYxNWE1NTllYmU0NTVkYTNjYzdiMzlhOTZiMTc2NSIsInVzZXJfaWQiOjMwNX0.SGQkYmtwOp1auDmbe67EnSWzSEZUpx6fWI8t6ToADWg	796991	2022-01-09 06:05:33.618559+05:30	\N	\N	a83e21fd-2a67-484a-909a-33e2efa0dd73	\N	305
6c9a662e-1d07-496b-b221-36b45874cc12		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	200610	2022-01-22 13:15:44.002987+05:30	\N	\N	\N	\N	337
ea4a1bb3-2987-47fa-b7e1-86b34afe137e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	430173	2022-06-23 17:26:22.432527+05:30	Asia/Calcutta	\N	\N	\N	469
932adf2a-ac53-41ee-9a30-4d1af5a62202		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NzAxOTUwLCJqdGkiOiJkN2MwOTM3ZDI3Zjc0YWZjOGRmODE2OWRhMTdjZjU1NyIsInVzZXJfaWQiOjE2MH0.XgeIb4NtTtLQy2HxFPrao16o8yPbNnxPV3YoiLXL0-s	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwMjc1OTg2LCJqdGkiOiIwNzQyMjA1MjFmYzg0M2I2YTlhNmZjMGNmZmU0ODExYiIsInVzZXJfaWQiOjE2MH0.h6TiXWYtVeBuQagZXrIgMdgEHSHj-W0ryFALxOvKN2c	651965	2021-11-29 11:33:20.733484+05:30	\N	\N	6f95910f-277d-4dd7-8584-d0e832ce1f39	\N	160
13fc9ec6-5d85-4b8e-bcc0-4fd57ecc9503		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	554378	2021-11-30 01:54:50.684263+05:30	Asia/Riyadh	\N	\N	\N	163
c8ccdd12-4be1-48c4-8fd9-644c690e14cb		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	983990	2022-01-11 11:23:52.988714+05:30	\N	\N	\N	\N	312
251b0d06-8a48-4998-ad7c-57320ee5d44c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NjI2Mjc0LCJqdGkiOiIyZDNlNzQ5NDUzZTc0NTg4YWY4YjE2MzdlZDZiN2MwOCIsInVzZXJfaWQiOjE5NX0.jgYKnvAaIfYVr-BM5B-46Gw00ffpMuQlLEVT0oFiHCk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNDU5MzAxLCJqdGkiOiI5MjViZDhiMzdmMzg0YTA2YmM3MWQ1NTcyYzRmY2FlMiIsInVzZXJfaWQiOjE5NX0.1W8F7hNCZTVrPq6fvOQyXAKWReFxjJH3wCMfIntIWlE	336532	2021-12-03 18:31:35.971908+05:30	Asia/Riyadh	\N	821d06a3-3da2-43fe-9e61-1bfd714c36cd	\N	195
2b393588-8889-43a9-a0b5-e18b4853de8a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	615427	2022-06-17 16:37:57.291851+05:30	\N	\N	\N	\N	465
1ad6d086-6bff-4fea-b930-dd8f42ed2dea		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	765943	2022-07-06 17:00:26.692379+05:30	Asia/Calcutta	\N	\N	\N	480
a0512316-01ff-46b6-ac8c-3b173deae447		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	122196	2022-06-24 00:42:19.712108+05:30	\N	\N	\N	\N	470
0e7a10c6-346a-4b06-bff9-f5d945e94f45		1982-11-11	500334077	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNjEzMTUyLCJqdGkiOiIwMGUwNDZlOWZlZjE0YjUwYThkMjlhMjdmYmRkNjZiOSIsInVzZXJfaWQiOjg1fQ.n147P7lbCgmQiOAjgnzPQs8btHgbBT2mynG5i7h1h4A	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTU5MzkxLCJqdGkiOiIzZTljZGJiNjFiODM0ZmRhYWQ2ZjZjM2FiNjY0MTU5OSIsInVzZXJfaWQiOjg1fQ.33EIVsvwEw_F8WmEfrL2jnIxOjOhbITLhIF0qECyX00	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	85
8f01b0de-32a7-4529-99b9-a69aafc894df		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NjI4MTc4LCJqdGkiOiJiOWJhYzhhMjQ2NGI0OGIzOTUxZWIyMTU3MGU1YTYyYiIsInVzZXJfaWQiOjE1OX0.2DEEYJoVQRHiFXHaZaduDEHkrSmB_LlL3pvNOlUpKFw	\N	644857	2021-11-28 15:05:24.554474+05:30	Asia/Riyadh	\N	e90a806e-cf1b-452e-aa23-64d3b60eae50	\N	159
68f88e68-6501-45ec-b08b-d55daa173e10		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MDcyMjUxLCJqdGkiOiI0ZjgwM2IyZDI3MWY0Y2NlOTZkMmZjMTg1MWZmMmJlYSIsInVzZXJfaWQiOjMwOH0.O4AdgPNPegdWOSWzIHML_b4Ny7R8YIcx9fQf8VDqEeI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NjM3MDYxLCJqdGkiOiJlYmU1MGM3ZjY2ZmI0ZGFhOTNjMjFkMzIyMDljODAwZSIsInVzZXJfaWQiOjMwOH0._e7U8t6LUVMZOMhe39hRBPT08nN8BO84lALthnpl7Gg	669966	2022-01-09 14:28:53.348019+05:30	Asia/Riyadh	\N	a1ee4a39-ce71-4ab9-9603-9705ca890091	\N	308
b3b75c6d-7efe-4b74-a056-f1e1652dd282		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NzgzOTUwLCJqdGkiOiIxODA5Mzc4YWZiZWM0ZDMwYWY3ZjA4MGQxMzBjYmIwZCIsInVzZXJfaWQiOjE1Nn0.EoHmEyAdbNVp5_Q2eE0mAC137cUqSLzzxSpcNt0yjQY	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNzk4OTQ0LCJqdGkiOiIwMmYwZjBkODA3MmY0MjUzYWE3ODgzNTc4M2Y3NTg2MCIsInVzZXJfaWQiOjE1Nn0.kF8QM5w1kSOgaH2dhG-NOeSw0XIz0MpeNYmPsNH8GSk	756131	2021-11-27 01:01:12.760497+05:30	Asia/Riyadh	\N	6f95910f-277d-4dd7-8584-d0e832ce1f39	\N	156
a24610b6-a028-450c-98a3-e53e2a507d3b		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTg2MTE0LCJqdGkiOiJlY2I5ODgzOGI4ZmE0MTY4YWIyNGYyOTRiMzI0Y2NiYyIsInVzZXJfaWQiOjIzN30.7_Xn21P2lyVipuKwuFHMNQZotfxMfbacARoT3LoAYPQ	\N	725923	2021-12-09 17:03:06.913793+05:30	Asia/Calcutta	\N	\N	\N	237
6469fe3e-90cc-45fb-81a5-24a95dcaa785		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTY1MDY0LCJqdGkiOiI5OWQ4NDQzYTg1ODE0OTBiODkxNTlhZTZmMmNlYzE0OSIsInVzZXJfaWQiOjE3NX0.uCHhPMpwnyAYpMah9JsyXYlcVlXUXppsuXGa3y1mkBA	\N	451606	2021-12-01 12:50:42.451877+05:30	Asia/Riyadh	\N	28d5bbcf-47cf-4f3c-ab93-a547b0e377aa	\N	175
1ca646b8-ca69-4970-b3a7-9aa4ac6010e5		\N	50050905	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDYzOTkwLCJqdGkiOiI2NWU5MzAyOGNmOWM0YTFjOTcyYWQ5NTA3NWVhNjc1YSIsInVzZXJfaWQiOjEwMn0.eLU9q-gWx3ms3jgNqrFqxz1eyJogE8ZYkqM10eiV1vA	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NzQyMjcxLCJqdGkiOiJlODQ0ZTRkMzUyMjc0OTZjODA4N2QzYTI2ZDY3ZTYwNSIsInVzZXJfaWQiOjEwMn0.bQt1_NEREdwmR4ZGGr_XB3mD4Sa7sLtTQKXzsi7bXoc	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	a193c887-5b48-4b77-a07f-b15834ad0c09	12f2f7fa-e007-4170-905a-30b534ab3363	102
68f29059-9733-4cd5-bb33-e073d505e065		\N	557970275	\N	\N	\N	\N	\N	english	\N	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	176
b8b8f77d-94a8-48e4-bed4-fc02ae4ed573		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTgwNzM5LCJqdGkiOiJhNDFhZGFmOTFiOTE0YzljYWY5YzRkNTFiMTQxZWI2OCIsInVzZXJfaWQiOjE3OH0.tbxKXB1t6R0iFMYZrSEoepgSUTc3jqjQ6AMR9Sv4JuE	\N	220214	2021-12-01 14:03:58.961316+05:30	Asia/Calcutta	\N	6f7eb0d3-719d-43fa-9c33-c9bac79038a7	\N	178
bb3e7e81-3cec-4b99-a7e8-3f3abbd20c62		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	113214	2022-01-09 18:41:36.796731+05:30	\N	\N	\N	\N	309
febb12ae-8556-4c6a-826e-b3f7c8916e29		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	229167	2021-12-01 14:28:57.726559+05:30	\N	\N	\N	\N	179
ddaac966-ab30-4980-a9fa-fa6e29bf9591		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MTQ5NTE0LCJqdGkiOiI5ZWY5NGEzMzMwY2I0OTY4YjA5NTdmZTA5NTc5MDVkNyIsInVzZXJfaWQiOjM2OH0.risnreChN3-sQaMfxkA4YaYVh96qRYuqxzGuIjXqbds	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MTQ5NTUwLCJqdGkiOiJhZjcyYmQ3ZGRiMGE0OGIwOTEwNGIyZjNmZDlmZjNjNCIsInVzZXJfaWQiOjM2OH0._0oWnJxcOTVJ1e3gAaJe_w0IWJgOtZo4cluQVB_KjuI	647267	2022-02-23 16:20:57.135885+05:30	\N	\N	\N	\N	368
d93ffbaf-968d-4698-ba5e-8a056d2957f1		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	751473	2021-12-01 15:10:19.000554+05:30	Asia/Calcutta	\N	\N	\N	180
eb5836cd-c0bb-422c-8719-63746be01488		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	244383	2021-12-01 16:02:09.809753+05:30	Asia/Calcutta	\N	\N	\N	181
1de80772-1372-4aa6-8274-da79ceb837d9		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	322405	2022-01-09 18:46:02.916681+05:30	\N	\N	\N	\N	310
dbc98687-ed51-4dd3-b635-4661bff9054f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3ODQ1NzUwLCJqdGkiOiJjZTZiYzBiYWRjY2M0YjY1YjA2ZGFjNTVjOWMyODgxNyIsInVzZXJfaWQiOjExMX0.AiZXl_urm6hhRj71WPRx8iNd0qkrJom7OKalUa2c9DM	\N	\N	\N	Asia/Calcutta	\N	3209e419-99c7-40fe-8356-a8ac77a5c5db	\N	111
976fb1b7-89da-4a95-bc7d-7633a64d8756		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3OTAxOTUwLCJqdGkiOiI2ZmMwYmJmMDM4YWM0N2YyYTljZmQxYjY0ODE1NmQ2ZiIsInVzZXJfaWQiOjE3N30.kWMHBLGcNn54oEBi-N_C3TR0iBo25aunNyOVQZcwzEY	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4ODk2NzYyLCJqdGkiOiI2MjdhZTlhOTFkMDM0OWQ4ODA5YWEzNmVjYjY2MGM4ZiIsInVzZXJfaWQiOjE3N30.WLqLQemBqREII9Yv4Tg2K5tkckVYIcgM8q7xhHZiHc4	885758	2021-12-01 13:45:45.418009+05:30	Asia/Riyadh	\N	\N	\N	177
be8c5914-68b2-4840-a217-0c1fd5fd072c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNDYwMDUyLCJqdGkiOiI2Mjc3MjFlYWRhYTQ0Y2E4YjM1OThhYWU3OTRlZmQ2OSIsInVzZXJfaWQiOjE5N30.iRZRGJCfUfkFidqeZrpNuZL-pzxbKShGxS3otIuj5Ug	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTY4NDgxLCJqdGkiOiI3MTUxYmRhM2IyODI0MTM4OTU2OGMzNjAxMTlhNThkNiIsInVzZXJfaWQiOjE5N30.2KappUY-vFHNerTldHwoyGGmtnArlYZztFbL248bdfA	787355	2021-12-03 18:38:49.651949+05:30	Asia/Riyadh	\N	821d06a3-3da2-43fe-9e61-1bfd714c36cd	\N	197
9123ffd9-39a1-4759-a6ca-f5f6228ed900		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	441885	2021-12-04 14:47:10.898929+05:30	\N	\N	\N	\N	203
063f8212-2f76-4758-a940-3ede8fc78c6f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	843486	2022-05-19 11:56:37.562555+05:30	Asia/Calcutta	\N	\N	\N	450
0cfd490c-b782-4b2c-a4fa-043f98538123		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MzcxNjI1LCJqdGkiOiJmYWM1NGNjNDAwNjg0MTY1OWY2MWVmMDZiY2VkOTk2YyIsInVzZXJfaWQiOjE0Mn0.uu8JBNEW80cA_LNihob52MSlZssusgZEwCconc8sDVA	\N	278543	2021-11-24 19:46:43.120503+05:30	\N	\N	cf65fc71-7ef9-4a20-a6e1-7118eeb1ef99	\N	142
dba8dd77-c10a-4a22-9039-287fb9bcdb7c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	266051	2021-12-03 22:37:16.794305+05:30	\N	\N	\N	\N	199
5262c40a-bc07-4be5-85f5-54aeec3eec21		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	697951	2021-12-04 05:44:05.690205+05:30	\N	\N	\N	\N	202
7eb6b49c-5369-4441-ab4a-825de6201414		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MTk4MzM1LCJqdGkiOiIxNTY0ZTNjM2QxOGI0MmVhYWIwNjlkZTE5Y2UxNjY4YiIsInVzZXJfaWQiOjE0NH0.4JmDQ13Ff9Isu0xqcmy7s0rJIowBTamBoIqB0k-9TuQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MjAwMDU0LCJqdGkiOiI2YTczNDJjODcxMGE0ZmY4OTFmNTUxMDgyMGM1NDNlMCIsInVzZXJfaWQiOjE0NH0.OAr4-nVGwdx1KIfTg9gu2J-UR-12z07o3EMkGMwmT_0	860786	2021-11-23 15:40:45.148874+05:30	\N	\N	f3afa022-4542-43f4-8e7d-0b5e67fea701	\N	144
f6dbbce5-a1f8-4a54-a59f-0f06e84cfbdc		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwOTEwLCJqdGkiOiJhY2FmZjViYWFlMDA0N2I4OTQ2N2VkNWYwMDE5MGQwOSIsInVzZXJfaWQiOjM1M30.F8baeBZ2UZA8rWyY-W0THHKx_hge3dz76llTjN9-yuI	\N	234699	2022-07-12 13:53:20.243927+05:30	\N	\N	e92c2c13-95b0-4472-b3f8-c9d2c159f7fd	\N	353
42a09c1a-1f91-4a85-a550-488b461520ca		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2MzQ5Mjg5LCJqdGkiOiIxMTE3OTY1YWU1MDA0ZjRlOWJkNDhiMjMxMWEwN2Q2OCIsInVzZXJfaWQiOjM1OX0.DYDm3KgcdtiNiMm79FrsT3sAnLSDaL_gFgaL_8oQXAE	596480	2022-02-14 10:03:18.088878+05:30	\N	\N	\N	\N	359
441e6f76-0d58-4278-a692-be89dd4e3088		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDU0NTc1LCJqdGkiOiIyNzIzZWU1MzdlYjk0NzE0Yjc0MDI4MDQzMjAzNGNiYiIsInVzZXJfaWQiOjE1MH0.QQhbrprRW0MauPCqgHZIdVggluigNPpsPJPJNKjtQUw	\N	452724	2021-11-26 14:52:04.54014+05:30	Asia/Calcutta	\N	\N	\N	150
2a0ea2be-7696-4da5-a9f7-b6f595356af2		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4NzMwMDA0LCJqdGkiOiJhMmY4NTExNzJjYjU0M2JlOTE3ZmE0N2MwNTk3MmRiZiIsInVzZXJfaWQiOjEzNH0.LRLf-D1YpL_5B0UAA7pY58Ir1bGJPdrNZXZBmspDPPY	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NTg1MTM0LCJqdGkiOiJiYjdhYzIxNDM0MjM0YzE1ODgyMDQ2Y2FiOTlmMTU0MSIsInVzZXJfaWQiOjEzNH0.AXsNES5Y549vRTKw52Tk9t3HshXlXMeEgF6CK7YLyn0	320302	2021-11-18 22:26:52.357612+05:30	\N	\N	9884e82a-bddb-4105-adc3-8f6d741cf68c	\N	134
31cc8c64-eb55-4330-9bfc-cf53259abb92		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	858196	2021-11-26 14:54:36.654174+05:30	Asia/Calcutta	\N	\N	\N	151
4fa56e0e-bf26-4ca6-ba41-7d778c354106		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	342490	2021-12-04 15:24:42.64506+05:30	\N	\N	\N	\N	207
06f7d4ef-5b57-4ff8-936e-bd543fded5a0		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDU0ODUyLCJqdGkiOiJiNjY1ZWVjY2Y4Njg0YjUzOTYwYWZiZmVmMzAyYzZjMSIsInVzZXJfaWQiOjE1Mn0.WhhIubwXhILCU9O5qZSoR_xfnDz7N-1LIIIpluz0mC8	\N	468119	2021-11-26 14:57:05.831052+05:30	Asia/Calcutta	\N	\N	\N	152
2bf0e646-78fc-4a67-b648-5b5a4c5c1a0f		\N	501951471	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NjUzNTI2LCJqdGkiOiJjYjU3N2ZjM2QyOTg0OTJjOTY3YzZmYWM2OWYzNjAyZCIsInVzZXJfaWQiOjE1M30.oONGy6Q-EHoUvSyuSb-6ijL1LWIOe1mtqaPxBKuGcZU	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	153
141999b0-41fa-4bb0-bc7d-da0369d0cf41		\N	566573563	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1NTAzNzI0LCJqdGkiOiI1ODY2YzhiZGNlYjE0NGY1YmE3YzhjZDEwZWEwZGEzOSIsInVzZXJfaWQiOjExMH0.a2hIQ0ii6UxZ7QGA3SJK8pNj43PHe3yeZMcKhThnB1Y	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4ODczMDcyLCJqdGkiOiI1MDQyMTU2OTc4MDg0ZDkxOTRlNWVmNWNlYjI2NzY1YSIsInVzZXJfaWQiOjExMH0.0JSpH-KrcG0ojt0jVxiASr_5xQzpmC6ST8W9flZszso	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	6b668a9d-cd65-4821-818d-d167de4616fe	110
616392f1-75fc-4fe7-8cd5-a192690d8fa5		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxOTg1MjkyLCJqdGkiOiI5NjkzZjkwNDFiYmM0M2MzYTY1ZTM3NzZjZTczNmVkYSIsInVzZXJfaWQiOjE3M30.hzJFfezy6HixhstHkJHNVWM5kfsMoKDAIhYH0A_AqLo	\N	646309	2021-12-01 21:37:39.126352+05:30	\N	\N	a3ade88a-d45f-4f41-880f-6ebac146db28	\N	173
0463090f-c807-4eff-a115-b01802b3a3f9		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1ODc4OTM4LCJqdGkiOiIwNTlkODRkMTZmNjE0ZWMxODJlM2M4ZTFhYTA3ZGYwYyIsInVzZXJfaWQiOjM1MX0.9xZnkR1FkeOYfj84CJ_P9fOYwBJ38ZBLnm0gwlTAnNo	\N	248364	2022-01-30 19:29:37.099644+05:30	Europe/London	\N	e38bf195-bd61-4fd3-a26b-938e2b129078	\N	351
9805255c-5894-4c79-a5eb-2f56364e70b4		\N	549747879	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NTUwNzU3LCJqdGkiOiI4NzdlZTk4MWI5YTQ0ZGZkYjJjOGMyMTgwODc4ZGU4NSIsInVzZXJfaWQiOjE1N30.osLlA1ZGW21EGbHxBZOxaIVKAR0vWkfeAtufLWWrJ7I	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	157
51b0ace3-80a8-444f-b1f6-83be50c46171		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NzQzNjQ1LCJqdGkiOiI0ZWU2Yjk3YmExODg0NTI4YWY5ODBmMjc2YTM3MGQzYSIsInVzZXJfaWQiOjEzOX0.OLaXuuvcgiGcr8UUv3jopv4MZy3VOovOnEj0EhewXvk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDcwODA5LCJqdGkiOiI5YzIxODc3OTE1NzI0MTZmODIxMWY3MzdjM2I2ZmZmMyIsInVzZXJfaWQiOjEzOX0.9aFAuJopgK3NyHqt6K5edtxdCEscSo3jPvP6dENIhfk	273619	2021-11-19 19:53:52.62299+05:30	Asia/Calcutta	\N	059d5661-440d-41a9-b9b8-84ddf090b1ca	\N	139
b7c14419-3997-4ce8-ab55-f41b48237dd9		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	508641	2021-12-04 15:59:11.020246+05:30	\N	\N	\N	\N	205
094c9273-ac71-4fcc-8eca-f9790f2571f6		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	445410	2021-12-05 10:52:32.934325+05:30	\N	\N	\N	\N	209
baf9551c-9f50-45fe-b203-a327f31c95b0		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	161882	2021-12-04 15:36:44.801853+05:30	\N	\N	\N	\N	208
6cfea6fd-367e-444d-98e2-4952c585a072		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	486871	2021-12-14 23:27:22.238854+05:30	\N	\N	\N	\N	248
f7ba0612-9a0c-40c2-bd10-9dc5eafcbcba		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTMzNjA2LCJqdGkiOiJjMWU4NzlmZmU2NzY0MDc2YWU3YThiNzI1NzQxMzFlYyIsInVzZXJfaWQiOjE4Mn0.3-YKNM7UHvQnRn2pvuigczvslmWkj3RSjzoDw0s4VTM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTM0MTY4LCJqdGkiOiIxNTk4ZjJjZjcwNmM0YWFkODM0NWM2NWE2YTc4N2ViMyIsInVzZXJfaWQiOjE4Mn0.0-Q5rPlpqZZjXa3H38IberFiHeS1nWBusEt85G8tGGQ	782982	2021-12-02 03:55:02.628274+05:30	Asia/Riyadh	\N	ce2fe87f-0cda-4f7b-86dd-2c0f5300ddaa	\N	182
084c7e62-3b41-44ed-b1ca-3d7358c60ea1		\N	532126228	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2MTM2NzMzLCJqdGkiOiI5YmMzMDc5Nzc3OGM0OTU2OTU3ZDAzNjhhNjEzNzIzZiIsInVzZXJfaWQiOjEwMX0.OPJr9f3Ksu_4dEo_xd1aZ5BsUEY4UXToDeFhyW25pgQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MjA3Njg5LCJqdGkiOiI1OGE0OWVmNmIxMWY0NzljYTJkNjE1OTk3YTI0MjI1NSIsInVzZXJfaWQiOjEwMX0.uUYxqvrcighctKZ8ChOvb98DWrAEET8Qb3t2BCHnNkA	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	4345d53b-8bdc-4d2e-8a95-7250d81e04fb	12f2f7fa-e007-4170-905a-30b534ab3363	101
d68bcc9e-f4b8-4419-b0a3-fc70b0bb6858		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	276770	2021-12-04 14:48:07.673626+05:30	\N	\N	\N	\N	204
1c1c5a3c-b8a3-44a6-af1a-40f461ac8287		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	763913	2022-07-12 13:48:32.174582+05:30	Asia/Calcutta	\N	cafb2501-ae79-46a0-a81f-ad22298c31b3	\N	498
4a01aa3e-c690-4792-a4ed-84109352d174		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	789357	2021-12-03 22:38:02.315207+05:30	\N	\N	\N	\N	200
eced8c04-85cf-4773-8fac-8801f54bb7dd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	793087	2021-12-16 00:34:04.763628+05:30	Asia/Riyadh	\N	\N	\N	250
4c3cb7fa-959c-4caa-bdbd-bb578b4efda5		1991-02-05	507079815	Khamis mushayth 	Al mathna 	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MTA4NTE2LCJqdGkiOiIwNjc0MDMyNDRiZWU0NWRkOWU4NGI4N2Q4ZmI5ZTlkMyIsInVzZXJfaWQiOjMyNX0.l36nXl_N3TPS6kJDlW1hlwCaMEru4pvTqAo8s2uNP4Y	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MTA4Njc0LCJqdGkiOiI0ZWQxNDY4N2E0ZjM0MjQ2YTBhYzM4NWY1NTExMGE0ZSIsInVzZXJfaWQiOjMyNX0.QGwIjWicyHArrd---dmFfvXtH12mbQX6532ZocZ_168	247629	2022-01-18 01:09:04.641319+05:30	\N	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	325
544d811d-80e0-453e-9514-6651f247c800		\N	556135640	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwMzIxNzgzLCJqdGkiOiI3YzAwMTRlMTBiZDE0NzQ0OGIzNjQ2ZWQ2NGIwZGIxMyIsInVzZXJfaWQiOjgzfQ.8CT4-lsEO4pDDjJaNf1tkm3EInhOF6oVcw8E9z-HgY0	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwMDc1Nzg4LCJqdGkiOiI0MmRhMGVkMDIyN2M0NTI0ODEzYTZiMjg0ZTQ5YmJlNCIsInVzZXJfaWQiOjgzfQ._4X-L5PP-6Hi2uzDKrAFDH2-fZZLQT4OBQUFT8eqkOE	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	70106d11-672e-40ea-9f50-a5495faa515a	9fdd37e8-bdb4-4278-8447-e616fdd6c285	83
19f40ce1-e00c-4031-8e28-38a7d3b7a392		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MDI0MjMyLCJqdGkiOiI1ZWQ1ZjU2ZGNjNzM0MWQ4OTIyNjg4MzY3ZmMyZTEyNyIsInVzZXJfaWQiOjUxfQ.pwKUFQS4Y5KA7Xj_lpQGpfek3BrqCWBFsxC9zc_fFnc	\N	\N	\N	Asia/Calcutta	\N	\N	\N	51
deec34d6-8ac8-449e-be82-887cf2c42ba8		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3NTQ3NzcxLCJqdGkiOiJlMzI1YjU1YjJkYmU0YmY3YjRhYWJjOGQxNjM0ODA3NyIsInVzZXJfaWQiOjQ3MX0.VFSG8LJTgfBuLhY6P5ciYgfBmXe-Sy_1UYBj3hY_4cs	295590	2022-06-24 00:44:53.827691+05:30	\N	\N	\N	\N	471
1124076b-b5c8-401d-bf4f-91824d0d08a2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	434447	2022-07-12 13:51:21.957868+05:30	Asia/Calcutta	\N	\N	\N	499
969fa479-a6f4-478c-912d-455846af455f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNjA5MTE1LCJqdGkiOiJmM2NiYzE3NWM4YzI0MWQ3ODE0NmMwYzAzNmQ3NTQyMSIsInVzZXJfaWQiOjIzMH0.k6w8bPNQZlwXxhaIwgu2Q49VUc7Q5pn53-dZcoTIn3U	\N	884253	2021-12-08 17:53:24.251174+05:30	Asia/Riyadh	\N	9add367f-35fd-44dd-90c1-a8a3933f647b	\N	230
75a9ce8c-328f-4e4a-b280-d4340bed98fc		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNjU3NzA0LCJqdGkiOiI5ZGY4ZTk0MTBkMzM0ODU3YWE4NDFjYzU4ODhlNTY2OCIsInVzZXJfaWQiOjI4MX0.CI8jghdDNWk0WXmf9GUcMVBFWF8TPROQnPZFuyvTl8c	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMjczMzg5LCJqdGkiOiJlMTM1YzlmZmYzZmE0ZDY4YTVjOTcxYmE1ZTJkZWUwMiIsInVzZXJfaWQiOjI4MX0.ta3S7TFwZiXXx05gU3qma6DmljcAfnAAPMoSbO1aOmQ	584217	2022-01-02 13:49:54.728465+05:30	\N	\N	fd5adf85-f4df-4510-a34e-d3bdb75bcf31	\N	281
43eaef26-da2d-4627-81f3-2d9b0716b5f2		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTEyNDQ0LCJqdGkiOiIzODU5OWI3YzU4ZjY0ZWU5YjI4MjliOTkxYTYzZDc4NSIsInVzZXJfaWQiOjIyNn0.vZ06AhnkGsKhn3R6LfGkpu3w_NRbPCpH9KCum6XMkhw	\N	997584	2021-12-07 01:45:50.901761+05:30	\N	\N	c68aa9e2-9c87-4aa9-b750-791a919ab962	\N	226
ca86e1e2-658d-439d-8e4b-6416d58bb8ce		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNDMxODI3LCJqdGkiOiJjMTA1ZTBiYmExM2U0YTZmOWVlOTE0MWMzY2FlNTgxNyIsInVzZXJfaWQiOjIxOX0.VzBE54zFzocqBJmXvu_1cSmc_qC1p_khfgy8j2Q6NV4	\N	464617	2021-12-06 09:45:27.190642+05:30	Asia/Calcutta	\N	\N	\N	219
e183c2b7-a73f-438b-8b94-e9759cdd1bfe		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4NTk1MzAzLCJqdGkiOiIyYjM2OTVjYmU2ZGU0OTczYWMyNjQwZjhmZWJiZWUzMSIsInVzZXJfaWQiOjIyOX0.S_X_i3sHxQxO6L8YcgWVruXOYR9mFvJgiLSA9Bpm51c	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxODY4ODgxLCJqdGkiOiJhNDg2OTRiNGQyYmU0YzAxOWQxYTQwODk0ODViOGQ0ZCIsInVzZXJfaWQiOjIyOX0.2qO4s8Gk5wXxKvHYhcYeaHFxua-WKwNeZY0tSyluPL4	928267	2021-12-08 17:06:39.860208+05:30	\N	\N	6ccc3235-113e-4ae4-b902-4b460c3f15a2	\N	229
1840c6b4-c980-4add-acfe-54581f6dfa65		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4OTQ2MTc2LCJqdGkiOiJiMmNiNTM4NDI1Mjk0OWQ1OTg4MWI5MjlmZjMzZWY2NiIsInVzZXJfaWQiOjI2MH0.qJPAYGiiofyjifw8duqnnENb60fqMBUiIfxDvr1TPoo	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0OTkxNjU3LCJqdGkiOiI4NGY5N2NkZjFhMTE0NDkyOTFmOTk0NDY2MGM4ZDU1NCIsInVzZXJfaWQiOjI2MH0.BOlCDDEwOvXUF4qXBL0ulrkdVFYDCRXvc4Si9KJphuk	189438	2021-12-22 10:36:33.20057+05:30	Asia/Calcutta	\N	8633ef36-2024-4b2d-811f-248ffe9ce681	\N	260
e7288379-ffdb-43da-a519-423b006ecc3d		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4ODkwNzYwLCJqdGkiOiIxNmQzNzI3MTU1YTg0NzM4OTFiZTAxNmI2MDNlN2U3NyIsInVzZXJfaWQiOjE1OH0.TPWX3npUE_gKZ8Sd6sgCGwhGvdVR6yJLPamz7HxFeyU	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTAzODE1LCJqdGkiOiIxZDM2MTAyYjllODc0ZTcyODQ5YWU4NWY1ODBjNDkwMSIsInVzZXJfaWQiOjE1OH0.7wOKyNgjEz5sUpv6ox3zYT_kLRgxhehgxcgDqQS6TYQ	863516	2021-11-27 16:46:13.930396+05:30	\N	\N	dc2c8aa1-30b1-4ead-a74c-5db0950aceab	\N	158
5c0d65ae-1c94-4de0-90a4-d37a24ea5bab		\N	9539265898	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY3ODg1NjcwLCJqdGkiOiJlZTJmYzAzNWRmYWY0YjIzOWFiOGU0Zjc2Y2MwNDIyMSIsInVzZXJfaWQiOjEwMH0.7fjjRxaxolSAlOhLYDba7AqS8LtVvL0qs2D6bu5tAKU	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MjkyODIwLCJqdGkiOiJmZmM0YWJmMzcyMGU0NTVlYjI5YTQ3YTc1MjYzZjA2NiIsInVzZXJfaWQiOjEwMH0.MqQ5mxcmvJCSz_8oqyjLfKVr3BcGRbr1MAe-kJmUVBY	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	100
dff8db04-cc9b-4a0c-916c-9481abeaf45e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyMzI4ODQyLCJqdGkiOiI0YjQ3N2U4NTI1MzY0YzNhYjExNzExNGI4ZmIwMmY5NSIsInVzZXJfaWQiOjIzNn0.3b5h0VYsQbc3CDqC3Q45U9vUsiKFrKE6nD__bYKAj8k	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyMTc0NTU2LCJqdGkiOiJiNTU1OGNhODcxYzY0ZDAzOGZhMDRhYjYxMDNlMGMwZSIsInVzZXJfaWQiOjIzNn0.DaRbiOGWhQvDRHWtL1T6lmGU0a--vIt2DvUO34jPa3U	273649	2021-12-09 16:51:59.165598+05:30	Asia/Riyadh	\N	b6de6aa0-768c-4eac-8dee-34df869953ef	\N	236
b3b9b836-14ae-4240-80af-b76c7b79fb93		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0Mzk4MjI4LCJqdGkiOiI0N2E2OGEwMzE3NmY0Njk5YmQ5M2YyOTFiNWRiMTZiYiIsInVzZXJfaWQiOjE4NH0.5XuybVgA3JWlGY91rHlq22TmNFKrMgUZ-QAkQJp2Aoc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNjEwNTU1LCJqdGkiOiIwMGQyZjJkYzVjNTM0YTI0YmU5NWRmODNkY2U3ZTI3MCIsInVzZXJfaWQiOjE4NH0.7EuUR6IR8uiyvcHkznnYatXc0kGIqiJ1kxMwtsCUACE	252696	2021-12-02 20:07:47.657758+05:30	\N	\N	d04da6b7-4d95-44ce-9357-663d167994e4	\N	184
8154623e-372f-471c-82b3-f574075a3edd		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNDE2NzM1LCJqdGkiOiI4YjRiNjg1Y2IxOTM0YmIwYjEzZTQxYjU1YjJjM2UzOCIsInVzZXJfaWQiOjIyN30.fYDuNr3lPwJYqD8mhVZf9e9NEBpO4F1pyVrzGHbk0Tw	\N	122852	2021-12-07 01:21:00.952509+05:30	Asia/Riyadh	\N	\N	\N	227
0b3ded5c-5774-432c-9a4b-7882d301747f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	811823	2021-12-06 23:29:23.737138+05:30	Asia/Riyadh	\N	\N	\N	224
6a60a9b1-f906-4c5a-9749-df008d2a0c3c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNTcxNTc0LCJqdGkiOiI1OWMxN2QzZDUxYTk0MDM0OTBiOGRmMzQ1ODYxZDUxOCIsInVzZXJfaWQiOjIzMX0.zKxRsixaEqd1OEKYqQJ1FqICTeYAgRm0-w70yVdZaFE	\N	398398	2021-12-09 12:14:06.080353+05:30	Asia/Calcutta	\N	2ee86397-902d-4136-94ab-9f7efd004004	\N	231
fe84f882-6b3e-4890-a65e-a7ab5006252d		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNDIzNjI2LCJqdGkiOiIxZGY5OGEyYTE1N2E0MDZjYWY0YjA2YzQ0MjYxZjlkNyIsInVzZXJfaWQiOjIyNX0.YAM-TD5glrmF7gpeazvGm6d_o4hS5DwfrxZys5wLdBE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNDI1NTM5LCJqdGkiOiJiNjI2MTMyYmMzOGM0NTcyOTY1NDI3MDJiMTIxMmVjZCIsInVzZXJfaWQiOjIyNX0.-RecuYFNJSChNcpEONvppMhY3yXGCcZH-HVf5ai7Cr0	555859	2021-12-07 20:02:42.980251+05:30	\N	\N	\N	\N	225
7417938e-29c7-452a-b4b8-67090f0315f6		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	201570	2021-12-09 13:11:16.180259+05:30	\N	\N	\N	\N	232
785d87db-5328-4d90-b79e-62a4a8617d59		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	490434	2021-12-06 01:36:31.162129+05:30	\N	\N	\N	\N	212
c753ac9a-30cd-4309-84e4-f311ed3de444		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	408401	2021-12-06 02:27:56.109941+05:30	Asia/Riyadh	\N	\N	\N	214
c382026a-a3d9-4cc1-9cda-5454c40084c8		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	419757	2021-12-06 09:20:43.571004+05:30	Asia/Calcutta	\N	\N	\N	215
9ccb45c0-2579-42b2-9ae9-fb9886969025		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	599870	2021-12-09 13:30:10.710572+05:30	\N	\N	\N	\N	234
749d02e1-f1ca-4e33-99dd-bf8539139b1a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	950899	2021-12-09 13:38:50.79508+05:30	\N	\N	\N	\N	235
5fde47a9-32f0-4d5d-a1fa-67e554922f17		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNjAzNjU0LCJqdGkiOiIwODAzMTEzYjY3NDM0Nzk4YmE4MDc5ZTAzMGJhODYxNSIsInVzZXJfaWQiOjIxNn0.njlFzoInNxz0bw4ZilX54pVyq2_qMMvOWtA_IHfZkhs	\N	902028	2021-12-06 09:24:24.989019+05:30	Asia/Calcutta	\N	2ee86397-902d-4136-94ab-9f7efd004004	\N	216
8d92d3d0-e043-4ba6-9bf5-d6ddf0420fbd		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxMjIwMzU5LCJqdGkiOiI4OTI4ODBmOTY5YTU0NDY5ODBiN2M2YjQ3NzYzNDY0MiIsInVzZXJfaWQiOjIxN30.1--LMVCraF9lxYOCjAW2TIqHyypzbMN-szP2cortQy0	\N	209364	2021-12-06 09:30:27.832462+05:30	Asia/Calcutta	\N	\N	\N	217
1ca51dd9-7dad-4e0a-b411-1d59c0228efe		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNjY4NDQ2LCJqdGkiOiJmMjlmYWI3MDczZjA0OGUxODg4ZThjNGZjZDgxMzMwNSIsInVzZXJfaWQiOjIyMn0.3jg0KYj6tuS-tQ4cRp7gjYFlp8tEsFeAUhQ_IHb_mac	\N	926564	2021-12-06 21:16:29.500515+05:30	Asia/Calcutta	\N	1e8b311c-977c-4b43-b90e-6b1efb5a546c	\N	222
072a25ee-7f3e-4b21-b408-cdf6d30e61f4		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MzA2NDI0LCJqdGkiOiJjZGJlYzJjZjliMDY0Njg3OWZjNmY3NzgwODQxOTU5MSIsInVzZXJfaWQiOjM1fQ.50Nc3ewLr72tAylSiIExlY-z0E6GtpBfFYI6Al5eq5Y	\N	\N	\N	Asia/Calcutta	\N	\N	\N	35
ecfd4e4e-49a9-434f-b50e-b308910a8954		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	274071	2022-05-12 17:53:47.534195+05:30	\N	\N	\N	\N	414
12a607c9-be98-46a3-bfe2-56e88024dd32		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNzY1MDIyLCJqdGkiOiJiZmYxMGU5YjdlM2E0ODcwOTVlZTUyZmNlNDFlZTZiNSIsInVzZXJfaWQiOjIxOH0.7x0v9eWnA485Hy3XibdiptFbnXk8g7ws7uJem6qligg	\N	674816	2021-12-06 09:42:33.767613+05:30	Asia/Calcutta	\N	\N	\N	218
de62f850-0d74-4ee4-ad04-67797d81813a		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwMDQ1NDkwLCJqdGkiOiJlMTNkMDc5NDg4ZjU0M2YyOWY0YzA5OTRjNDM0YmJmNCIsInVzZXJfaWQiOjE5MX0.kY3UPKnAMpKJFUQnQM9gJxdIngQkD322tPXrpYyRK8s	\N	657920	2021-12-03 01:04:28.09749+05:30	\N	\N	dad5038c-1339-466a-8a8e-2e61c55cf0d0	\N	191
db2ef4d6-5848-421e-8500-0b78b0c8541b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	657247	2021-12-10 22:30:33.175163+05:30	\N	\N	\N	\N	241
544e0db3-42a8-476c-b8e9-32572f158e6b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	817668	2021-12-10 22:40:48.405474+05:30	\N	\N	\N	\N	242
95401061-3419-4bd9-8da5-b6e580e73bd2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	379591	2022-01-02 23:46:11.459814+05:30	\N	\N	\N	\N	282
c48ac443-1153-42f0-99f0-ebcbc7729970		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	425655	2021-12-06 01:42:47.70186+05:30	\N	\N	\N	\N	213
a0bef39d-0d53-4c07-8de9-57ab7b93f050		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	417784	2021-12-06 09:48:26.784996+05:30	Asia/Calcutta	\N	\N	\N	220
1b555e12-c26f-4e0c-b9eb-35cb2922489e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	661907	2021-12-10 19:04:27.512123+05:30	Asia/Riyadh	\N	\N	\N	238
239eb88a-37f3-4854-867d-a9312de0c237		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMDMwODY1LCJqdGkiOiI3ZDkxOGM4NmYzYTc0ZWJmYjJlNDA1ZjI5M2MyYzE1NiIsInVzZXJfaWQiOjI0M30.ecFnh_xXUA08WC1mThcqjYRYWxJhRzUtKYAmPCQNj64	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4MzAzNDA5LCJqdGkiOiIzOTNjZDFkM2U3Yzc0MTk1OTIwZGZkOWJkZjJhZDFiYSIsInVzZXJfaWQiOjI0M30.6HJHAd5Co9g1omMAUEIjwX77Awhly1-nh19O4Y26d1M	721437	2021-12-10 23:38:12.613901+05:30	\N	\N	c0e72460-6b32-4305-a8ec-633a70541d6c	\N	243
3c5f6043-07e8-446a-96fd-7ce92f678df5		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MTQ5MjYyLCJqdGkiOiI3Y2MxZTkxNGY5ODY0ZjU3ODM3N2YwOTRkZTY4N2VjZCIsInVzZXJfaWQiOjE1NX0.Z-4UIZcop2jBiBLveIoYv9W_JNIanuNV2dDY8NE1Sqc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MzIzNTI4LCJqdGkiOiI5MDAyMzBmN2NkNGY0Y2JjYTNiMGU1YzQxMjBmNzk4OSIsInVzZXJfaWQiOjE1NX0.1RYefZj-TposuudzAz8vP1_pYcva-toL-GNEaOyvD5k	610376	2021-11-26 20:25:42.842775+05:30	\N	\N	46cae537-b9f9-42fd-b546-06e9dc2bb812	\N	155
9b92aa61-517b-4f38-8946-83ff126f0b88		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5Mzg5ODc5LCJqdGkiOiI4MTZmNzAwMzcxMDk0N2ZjOWJmZDA1YTU4OTU0NTFlMSIsInVzZXJfaWQiOjE4Nn0.piIkkR5KRq5zu3ClMIqdjgr2ZjmI-5tMCurGSGsS3eo	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5Mzg5OTk2LCJqdGkiOiI1MWRlMDg1ZTAwNmY0MzIzOWViYTMxYTE2ZWI1MmJjZCIsInVzZXJfaWQiOjE4Nn0.R3p6PtsmnQ9x9IJrl--KE0QXuWHorALnGAEryYsuMn8	143240	2021-12-02 20:44:45.460719+05:30	\N	\N	cd8d14e6-6b32-4322-be37-07cc2fa5b940	\N	186
7552fcf3-5702-4301-82a3-adf116755b81		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MDQ0MjY4LCJqdGkiOiIzMjgzNGZkMGI4YjE0NzY0OTg4OGVhOWQ4NzM0MWRmNSIsInVzZXJfaWQiOjIyM30.mUtssTnnEbgYzbhzUoCb0sSfjbyqnSa3GgUaf-34K7Y	\N	297385	2021-12-06 21:27:13.417205+05:30	Asia/Riyadh	\N	338771ca-5f9e-4743-8d07-eec2b20d19db	\N	223
819bf059-b7ec-40ef-9d61-16c9863bc978		\N	966507542952	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMjcyMjM4LCJqdGkiOiJlMTIyYjVhNjYwMmM0MGMwOGY1Y2MxYjg0OTY5YmZkZSIsInVzZXJfaWQiOjc4fQ.SnbUmpD8P3nIPaulqJ_RGGAi9N1h7B9Nu3WmttFhi-o	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	2ee86397-902d-4136-94ab-9f7efd004004	6b668a9d-cd65-4821-818d-d167de4616fe	78
55e7b7f9-0f1e-473f-8db9-c0195e3096de		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwNTg2MTcyLCJqdGkiOiI5NmNjYjhkMmM3NWY0Y2I4YmM0YzllZjcyZGJiZmE0ZCIsInVzZXJfaWQiOjMyMH0.PrUZfvk_5-aJQcsUctfqdpAk7YtvVZMLwblzN8G_WT0	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MjI4MTcyLCJqdGkiOiIyNjgzZWUwZTg5YTg0YTYzYWE2ZjM0ZGJkNzI5ZTMxNCIsInVzZXJfaWQiOjMyMH0.Ve87qOGPJnxXERvuVEXkSvSZAp1pX4xM4vM2hEfq338	541271	2022-01-15 15:06:00.046177+05:30	\N	\N	9cdaeea8-0409-4d95-8533-811c6439e062	\N	320
46831478-ba6c-448b-9759-0805c438d9dc		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMzg0MzM2LCJqdGkiOiJiNjQ4ZDc4N2ZiZTI0M2Q0YTk1OGMwMDBjYjc4M2Q2MiIsInVzZXJfaWQiOjQwMH0.G1VzWQk-MmAvngNnJPtdMuWWGShgkzomwLmgvOyOKyI	\N	864554	2022-04-13 16:41:13.347115+05:30	Asia/Calcutta	\N	7b89b58f-173f-4afe-bc50-f46c262ab3b7	\N	400
4c106bb3-97ea-4b3a-95fd-96524049760f		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNjgzODg1LCJqdGkiOiJlNmI4MmE5ODczOTg0N2E4ODI1MjU3MDA4N2Q3ZTQxZSIsInVzZXJfaWQiOjI4M30.VUe31HQSbtQo-vMgPDrjS2rz4MQlCwq-S9WxMMpZGH0	823356	2022-01-02 23:51:32.080615+05:30	\N	\N	5a39ae37-95be-4f05-9012-415d49ff01f8	\N	283
82e66fdf-53f7-4cf4-9b44-db7b1c5a564b		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwODM2MTg5LCJqdGkiOiI2ODRhODE4MmYwYzg0ZDFkODllZmEzMGJhZDBlMDUzMyIsInVzZXJfaWQiOjI0NH0.viPiBbkTdkoVKoYk3f2V4Ihhgi4OsQAX_focmPUs_7E	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwODM2MzY5LCJqdGkiOiIzMDFhNmRhOTQzZTQ0ZmE2OWFkNGQ4MDY2ZmIzOTA5NyIsInVzZXJfaWQiOjI0NH0.Ojm35il9MkcFlQQpxIFN6BO-su2nBR8QJntQKtQHt6s	641442	2021-12-12 14:38:00.250341+05:30	Asia/Riyadh	\N	246f6c2a-9020-4f96-b253-e67225c440b3	\N	244
59c2da4c-13e9-4cbb-b5cc-bb83109a561b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	287947	2022-01-03 01:19:32.871781+05:30	\N	\N	\N	\N	284
695a9017-5ea4-4a3f-9ed5-a2fa37855be5		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNzc3NDc0LCJqdGkiOiJlOTI5YzljZDM2MGQ0YTU3YjA4Njc5Njc2OTM1MWFhMiIsInVzZXJfaWQiOjI0MH0.AHVknUNYmGuIxvw8BKlTq8sPPTdAfh2q458Ntb7o-iE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcwNjgzMzk0LCJqdGkiOiIzM2Q5NjM3ZWIzOTQ0NWVmOTJlNGY5NGNmYjRmNzI2MiIsInVzZXJfaWQiOjI0MH0.AvvpaPvAfSPQieJUlsYfoMNnqhXDlXHiMsapn5n1mEo	533540	2021-12-10 20:03:50.160515+05:30	Asia/Riyadh	\N	fa2a2835-7a99-49e3-b5dd-c86e1f4d4e4c	\N	240
0da47001-4b43-4f10-9a5f-bae97c061e60		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	414972	2021-12-12 23:23:41.809407+05:30	Asia/Riyadh	\N	\N	\N	245
aadee9f9-25af-437b-8fa2-d56311de03f5		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNjM1MzMzLCJqdGkiOiJhNDI3ZWFkYmQwZjY0OTExOWQ0MjFmNTQyNDhlNDcyZCIsInVzZXJfaWQiOjI1OH0.i9i1MBA0FliIe7H50-BUosP4nj7ltni-06xjiS2bgRc	680977	2021-12-21 13:09:21.660436+05:30	\N	\N	12a3eeda-157b-4279-b111-712087578af9	\N	258
072499eb-600d-45e2-a812-31b9d9c4ea93		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzE0MTA5LCJqdGkiOiJiYzdmMjhiOTY0YmI0MjA2YTI0ZTAyMDZlMWEwM2EwNyIsInVzZXJfaWQiOjMxN30.FakdI-sHO3GeewhozlGrfpdMBcdOpD1Mu9nmAv7j6PE	194250	2022-01-14 21:46:31.731353+05:30	\N	\N	\N	\N	317
cdee6bec-8d0b-493f-910a-d44d4efd2ab9		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzEzODIwLCJqdGkiOiJmNTkxMTkxMmRjZDU0MGJiODczNzYzYmJjMmViMWIzNCIsInVzZXJfaWQiOjI1Nn0.gT6IQu-hVKDkP-OC1PN-JZwljSYVY3z5PdME10hAbyQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzEzOTgxLCJqdGkiOiI2NGUzNzNiYTIzNjU0Y2VjODU5ZGI3ZTQ3OWMxOTY0MSIsInVzZXJfaWQiOjI1Nn0.j9nsG-fxjMVuA7c-DSFx5wYjXd7GCaP1BV77z-yBUUs	227688	2021-12-21 04:59:12.738139+05:30	\N	\N	3eb78911-43e3-48f8-aac1-e11dd36fe7b6	\N	256
6a357b74-66df-424d-b529-4069b50f94ff		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxMzYxMDk2LCJqdGkiOiI1MDcyYTFmMTk0Yjg0MjdiODE2MDYyYmE0MTJkZTVhZiIsInVzZXJfaWQiOjI1M30.7b1K8hPR7TlaPokmd7fR-rBB4GLXlRItd0-JpJIODSM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxMzY1MDMzLCJqdGkiOiJkMjFkYzBhNmFmMDI0OGVjODMxODYyYTIyODdkYmUxMSIsInVzZXJfaWQiOjI1M30.1htfA0JU9VRineFe3LswRj0Lq66IXF7euV6ppPY7E6U	595538	2021-12-18 16:26:31.09976+05:30	Asia/Riyadh	\N	58e4743f-985f-4b99-8236-d8d8e38e3b30	\N	253
16000e76-15dd-41bb-adc5-e18f2270ce4a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	760920	2021-12-21 13:00:12.61877+05:30	\N	\N	\N	\N	257
0154573b-29b0-4905-bde0-fe2efbc5fa51		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	894086	2021-12-21 01:35:24.008738+05:30	\N	\N	\N	\N	255
5c4d301d-bee1-45bf-a245-90e20fbe1db8		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjI1MDcxLCJqdGkiOiI2MDA1YmY5ODMzNDE0YzhlYjAzM2EzN2QwNDU5YTZiOSIsInVzZXJfaWQiOjM5fQ.LFMRunDs9llUByhVt3QZagbdIpUnwR5MZX4nxn_5QX0	\N	\N	\N	Asia/Calcutta	\N	\N	\N	39
bd8581b0-52b9-4da8-9896-ecc34cc44171		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	968913	2022-05-12 17:56:02.93868+05:30	\N	\N	\N	\N	415
7b470dfe-a56d-413a-a13d-082c6f5d2255		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxNTUzMTc2LCJqdGkiOiIwZTg3OGFlMjdjZWQ0MDQ3OTZjNjI2YTYzY2I0NWI2ZSIsInVzZXJfaWQiOjI1NH0.XiH60BcjjP5Xs7OwQ8nH7jLQC1seBgesB221oSdThXc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxNjIyMDQ1LCJqdGkiOiI4ZTg3NGJlMjcwMjg0OWY3YTRiY2E3NTk4MGI3YjExZSIsInVzZXJfaWQiOjI1NH0.e-GWTZtqgL1QgIoIzlnhjPDdoOGzNHxBkCq4my1BGgA	505379	2021-12-20 21:05:13.328721+05:30	\N	\N	\N	\N	254
24f3c129-df80-4a61-ad42-74f9c7feaed8		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MjA3MzQ1LCJqdGkiOiJhMWQyNDg5M2RmZTY0ZDZlOTliOWQwODc1OTk1NTczMyIsInVzZXJfaWQiOjMyOH0._GuMymLsdopl1qt41mtrC7vTBtpi6EcbBAsuCREEEmo	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDU1NjU2LCJqdGkiOiIyZDk4MTY4ZTI1Yjc0YTIxOTU4MWQ2MWZjM2QxOWVmNCIsInVzZXJfaWQiOjMyOH0.fAlzTlB2kZKt9KMcn1M1vLs9e9F8S0V7R9M7m08WkV8	817405	2022-01-19 23:55:44.127265+05:30	Asia/Riyadh	\N	6e4c2ce3-10d9-4c7f-a766-ad6d2706d30b	\N	328
bc0d725f-dfc9-4894-bad3-a973c4ba9169		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MTE5ODI5LCJqdGkiOiI1NTMxNWQyYTMzNjk0NWU3OTRiOTM3MDM2ODcyNmY1MCIsInVzZXJfaWQiOjQ3Nn0.X8rbjw87KWFP3_S7SmKweoIg7wKN-m_MFdAjEKqViXk	\N	833733	2022-06-30 14:40:40.59291+05:30	Asia/Riyadh	\N	f181a8d1-e316-4cc1-8916-d1ba15fbc1bc	\N	476
5c231225-d4ac-414e-a060-739b42d2e039		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4NzkwMzMzLCJqdGkiOiIxYTE4MTI2MzY5YzQ0YzRiYmRkOTU5YzIwYjFmZjFmZCIsInVzZXJfaWQiOjMxMX0.E_KSxjBnHxMrU4Ama1BdGXt_WXDVPdnPWkzQaAvxJw0	\N	348542	2022-01-11 11:20:18.328443+05:30	Asia/Calcutta	\N	45b2d50a-49c7-4697-bdb4-bcf45164b8aa	\N	311
7f6045e8-de70-4907-8de8-c15b9b04c00e		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNjg5Mzk2LCJqdGkiOiI3OTI2NGE2ZDQ0Y2U0YmE3YjQyZDEyNTc1ZWI4MzRmNiIsInVzZXJfaWQiOjI4NX0.UFojYyRzoEmtQAGAb9BDDcXKdOzh4w-tl4NoTJCT88U	499671	2022-01-03 01:25:54.550719+05:30	\N	\N	7c4f3dab-df93-4d8d-bbb9-15c5bfc5f52f	\N	285
58973024-b6aa-4a40-8c30-e8ae540f085f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	550396	2022-01-02 13:03:58.395151+05:30	Asia/Riyadh	\N	\N	\N	279
cdae707b-49bf-4849-a562-b2e23d24c6bb		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MDczNzc2LCJqdGkiOiJjNDdmN2FlMTIxNmQ0ZmM0YjcyMDY4N2E5OGZlMTJjMiIsInVzZXJfaWQiOjI3N30.CwWSbBsuNdmSf94-I4C_RTJIFc21ajygLX3bGh_EQFw	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1NTcwMDQ2LCJqdGkiOiIyMmNhOGFjYzdmOTc0YjUzYjA0YTBhZGE5M2U1NjdmMyIsInVzZXJfaWQiOjI3N30.AfXkjX2oKu6S0mVZYOcrHbkovmhdYwOPVjG_EkVQDsA	943369	2021-12-29 21:58:10.606748+05:30	Asia/Riyadh	\N	b6cf2ca0-4746-4683-8eb8-2f39b430df35	\N	277
e1e80def-02ed-4e56-a687-faa70c444aea		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3ODM1MDg1LCJqdGkiOiJjMWY4ZmI2Yzg5YjI0YzY4YTljN2U2NDY0ZDAyZjA2OCIsInVzZXJfaWQiOjI1MX0.HZp4Z84-yk2OlIj0Sx7g2P40JGIb--aM-iWprhR2RTE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2NTg1OTI0LCJqdGkiOiJiNTdlMTg1YzE2YmE0MGE4YmI0NWY3ZTcwNzYxMTM3ZSIsInVzZXJfaWQiOjI1MX0.rQfMDcWsZEghqRpXo2A3NLilmcTiWN0ds9ab0QlhGPU	592085	2021-12-17 18:53:18.420806+05:30	Asia/Riyadh	\N	4faee31d-8578-46c4-9bc7-8fa3b174f0d1	\N	251
432e8f92-f161-4548-9ab3-0e4a963199e0		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczOTU3MjczLCJqdGkiOiJkNmYwZWVmYmZhYzI0NTM4YjYzOTkxYjk3ODc3N2MwYyIsInVzZXJfaWQiOjI3OH0.8hAb8Z3n0o4LK1Jqx23DSOgUZTRG95ZYjgeKOhVC6e0	223253	2021-12-31 00:56:07.008483+05:30	\N	\N	d5afab82-1ee6-4442-9473-96122adb22eb	\N	278
af292f3a-1829-4b20-be01-712adc00cad4		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	936898	2022-01-11 22:55:58.171145+05:30	Asia/Riyadh	\N	\N	\N	314
8c3887b1-2628-4544-b077-380ceda7fb15		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyMDQ1Mzc0LCJqdGkiOiJjNTljNmQxNGI5OWE0ZThjODg1ZGNmYjUwMTA0NjVjZCIsInVzZXJfaWQiOjI2N30.EAtWe70RB_crnOerTNHrk9fpfJiUf0MS7rWrRy200Ko	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNzYzOTI3LCJqdGkiOiI4MzEyZGI4YTU2MTQ0MTM4YTYyNTllZTIzMGZhNjFkZCIsInVzZXJfaWQiOjI2N30.rgAlRax4_ouFTT20q56MJJHvhNKBcuqe_MMP94AyFPg	883539	2021-12-25 23:27:31.172099+05:30	Asia/Riyadh	\N	4c62946d-e31e-4044-bf2c-9b07f79633e2	\N	267
37d39258-dc17-478e-b545-ad76665d2bf9		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxOTQ3NDAyLCJqdGkiOiI3ZWVlODFlNzc0Y2M0YmY5OWIyNWIzZTBhZTdkYmZhNyIsInVzZXJfaWQiOjQwMX0.yX5xmtDN785NYRQrn-jgQv55h2AVbwre0BLs78MkcQU	526396	2022-04-19 21:36:48.993633+05:30	\N	\N	389bd0d6-da50-4bf1-ad1f-d3da91d89213	\N	401
9c6d964a-eb38-4ce5-a106-826713c1d30e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	639872	2021-12-25 15:31:45.805178+05:30	\N	\N	\N	\N	265
6eb11fa0-75a2-4a6f-a908-c9f6b06da236		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyMDU5MzA2LCJqdGkiOiJjOGMwZDY4MTk4YjU0NzY3YjY4ZmVmYzZhMTE5ZTFkMCIsInVzZXJfaWQiOjI3MH0.CLnTJ0FqmC8eAYlLaW-ThNYiTNYRj55O9Y6kQNEw2_I	\N	894984	2021-12-26 18:22:15.149633+05:30	Asia/Riyadh	\N	10ec1e50-5c23-477e-9cf9-07517a0222ca	\N	270
28a7d2ab-9967-449e-af87-85e002f26112		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NjYxOTk0LCJqdGkiOiI0YjI0ODM0NmU2MTA0MTNiYmEyODgzMDI1Y2Y4MWE3NSIsInVzZXJfaWQiOjM2NX0.ANjJFL9WTMPLzSTjTjmbOuSFeDDO8cE-RePJMMr1AKs	579194	2022-02-18 00:55:03.026862+05:30	\N	\N	\N	\N	365
41d77e3c-f9f6-4f22-a85c-dfea5bde4e4d		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzE3NjIyLCJqdGkiOiI5YjE4YTgxNzZkMWM0YzEzODY5OTEyMjkxNjI2NjAwNCIsInVzZXJfaWQiOjMxOH0.H1ELsU8sA8E5zhTPR9nXE58jbbe_lmhvX48OeJFoedg	\N	597020	2022-01-14 23:02:37.711938+05:30	Europe/London	\N	73af551e-2bd7-4332-8af4-11e5d47770a3	\N	318
1235692c-0094-405e-9b76-07bf3c7ad5e3		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0NDc4ODcyLCJqdGkiOiIwN2ZiMzQ4YTRiZjQ0NWNlOTk5NDViY2M4NzAwYTI3NSIsInVzZXJfaWQiOjQ1MX0.-qMRXNE-hhVS11Ji_pbqBex6S8qrvNrRyQVXtP9W2x0	\N	426204	2022-05-19 12:05:49.82078+05:30	Asia/Calcutta	\N	\N	\N	451
78e5da28-f2aa-44ac-a725-29580f07b88c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyMjY4MTUxLCJqdGkiOiJlZDQzMTc0NzVkZTc0ZTgwYWQ0OGU2ZTc4NWE2ZGI2MCIsInVzZXJfaWQiOjI2OH0.uSSlDrZ2r7Xjw24uz-EJUlONnB3_RQ3yZ-6SeV4iEtM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyMTY2OTA1LCJqdGkiOiJmZjBlNDk5MWE1MWE0OGQ5OTE1MjcwY2ZmYmQ2YTM1MiIsInVzZXJfaWQiOjI2OH0.F7xUrifiS_4xj6mC4XP-u4zHdxhTob4oQPoFUNAQJ-4	231498	2021-12-26 13:31:01.802003+05:30	Asia/Calcutta	\N	cf563b77-03bf-4b3f-8f4e-82d99b604c1f	\N	268
da0b152d-2bd4-4bdb-9e13-490d308c8968		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMjUyMDk1LCJqdGkiOiI1YjQ3YTQ0YjI3ZGU0ZTY2YTE3NGEyNTdkZjUzYWRlYyIsInVzZXJfaWQiOjI2Nn0.CZMkhX_KzYVTLoIX2W1pi4Y8Ie4yrFJIilrVGHy0CTs	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMjU1NTMwLCJqdGkiOiJlM2MzMWZjZWQ1Njc0ZWQ5OGMwYjM5MzZhZWQ2MDg2ZiIsInVzZXJfaWQiOjI2Nn0.owA1WOhpxPFZ-KB2PgPzbGIZ_h-K5QBiiW9HkhiDCrU	260876	2022-01-09 13:38:42.944759+05:30	\N	\N	f7de0912-b038-4050-a77c-37d99e30557e	\N	266
ba33b50f-569b-418f-8993-e8ac2438c9b8		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	691910	2021-12-28 18:10:51.336464+05:30	\N	\N	\N	\N	275
d32e0a84-88ca-4298-9997-4d5170692aa8		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	285324	2022-01-02 13:25:51.654318+05:30	\N	\N	\N	\N	280
684197cb-ed8b-4945-8382-6190d5aade17		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	582553	2022-05-12 18:03:54.372323+05:30	\N	\N	\N	\N	416
5f40f302-e804-4d27-8ff3-77b95a1dee0b		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MDU2MjY5LCJqdGkiOiJkNjc5YmFhNWQwNmQ0N2E3OWQ0MGYxNDE3ZTRkZDk5OCIsInVzZXJfaWQiOjI2M30.O6XwIRqp_7mn_gzud4tuI2ZS-dnqjXV0grsv0VKm9bc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MDU1OTM1LCJqdGkiOiIyNjc1Y2MzMzJiN2Q0MTE1ODgzYzk1ZGE4Zjg3YTNjMiIsInVzZXJfaWQiOjI2M30.0Eqd60XXQWiWwPMuu7yLQ9z4JIgDhL7LycBTAliLFtw	209639	2021-12-23 21:13:37.842534+05:30	\N	\N	8cfce55d-f345-4699-a7b4-f2e7dd7f8481	\N	263
5780620f-7c1a-4986-96ae-c8d1e9e1375f		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzAyMDE1LCJqdGkiOiI1ZDNkYzViZDZjNTQ0ODk1YWZlNjlhYTJkMTg5YTUzMyIsInVzZXJfaWQiOjQ4MX0.Dw1uKOH-zsb-t3_H-5XqoiW6nLmNSJ15LhZfXrvXZ24	209914	2022-07-07 09:22:36.551515+05:30	\N	\N	b2a29165-0728-4eb1-b887-374e6f27fa00	\N	481
60b7a3f0-c042-411a-b121-caf5d24a0346		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMjA4NTYxLCJqdGkiOiJlZjc1OTc5ZTM1OTg0NDQ4YmE1ZWRlYTdiMjk2ODM3MiIsInVzZXJfaWQiOjI5M30.b7IPpsJnslhJGqQzoNPAlqgHwX4-ZvY35aLKbTJ_b_k	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NTQwODEwLCJqdGkiOiI0NDYzYzUxMTQ0ZTU0M2MyYTE2ZTNkNzBiZGM3MGY5MSIsInVzZXJfaWQiOjI5M30.AQ62aoobeyOluy3DhGh3ztkeHMvSfet0qq392lCM0Ak	734138	2022-01-04 23:33:09.278323+05:30	\N	\N	f53ccf9e-cc11-4bf9-a061-55a624fbf57d	\N	293
be069f1b-5e14-41f7-bb62-2244706805ee		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	585945	2022-01-22 09:32:54.280835+05:30	\N	\N	\N	\N	333
f42fe96e-4791-45b1-ba01-4be6f8e64cbc		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNjk0MjgwLCJqdGkiOiIzNzhiZjA2OGIxNjQ0MGVlODBmMWEzOTdmMzAyMjhmMyIsInVzZXJfaWQiOjI4Nn0.h9nrrUhQ4ZspQ1g7K47lfPo2hWWWG9SJwd8lAkrV7Ws	976893	2022-01-03 02:47:19.983144+05:30	\N	\N	b672fad5-ffb9-4b68-8457-1bcd82dfa8d0	\N	286
c5074079-21a4-4aff-b255-e55303f6f3f9		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NjI3MzM3LCJqdGkiOiI1N2E2NmFkM2FkNTA0MzYxOTNjMDI4ZDgyY2JjNGZmYiIsInVzZXJfaWQiOjI5N30.YDuD08XGknrVWqJnTGtceD29xUCqdJ1R8qbyvCV371I	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NjI2ODMyLCJqdGkiOiJkNjY2OWY0OWQxYzI0Zjg4YTA2MzZiYjJhNzQxMTE2MCIsInVzZXJfaWQiOjI5N30.tm5M2kYcj9vkSXCnSfiHRwMKuSMMmE7ceHXnRtqEI6A	996477	2022-01-05 21:05:56.735367+05:30	\N	\N	334e676d-1f87-425c-b2ae-a876c350d310	\N	297
279a3a91-4f86-492b-abbe-c9666188e6f2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	933942	2022-01-22 09:58:09.95491+05:30	\N	\N	\N	\N	335
523ee23d-7a3d-4db2-af60-9c1f238e04b3		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMTYwMzA0LCJqdGkiOiJhYTU3MDc3ZjcxMzY0NTM1YTM2OTYzODQ1ZjkwMTJmNCIsInVzZXJfaWQiOjI3M30.OISqbD2F6axE18g1wU2k260aPMesYEe9pK9Vt6f9R_M	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMjUyMTgwLCJqdGkiOiIwOGM2ZDI3YmY5ODU0N2VkYjhkNzdhMTk1N2IxYTNmMCIsInVzZXJfaWQiOjI3M30.7egpttYsm-FIxdmgRcntTLWOO_P1nu8uC4b4le9J22M	164550	2021-12-28 17:53:28.843665+05:30	\N	\N	428586a8-6265-45d7-b51a-ce93476eaf07	\N	273
3f65c7c7-b5d8-4126-8025-9b8097f838da		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxNzk2MDI4LCJqdGkiOiI2MmNiMmU4ZDNjYTE0MDlhYmVmOTFhOTQ5MWU0YWE0YyIsInVzZXJfaWQiOjMwM30.DNv28XBYeFARCcTHM64_IjiGSpQmwPuySPcevBAwfnM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMjA0MDUwLCJqdGkiOiI2MzdhYzAzZGJmZTE0YTcyOWExOGY3ODJmNDYwY2Q3MiIsInVzZXJfaWQiOjMwM30.QiU_7BVIR7SSELwTPsUBwlCic4p7vvIpdFDQoXMJO88	108678	2022-01-09 00:23:02.068231+05:30	\N	\N	d98c417d-8472-4d0d-9dfa-ffc829159417	\N	303
33827fa4-6ed8-4cad-bcf0-f007c1af5b8b		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2Mzg1ODYwLCJqdGkiOiI0YzhkYWZlZDdhMjk0MTVkOTY3Yjc4ZTVlODNlYjVlMiIsInVzZXJfaWQiOjM1N30.WyewI1SnEDFxMDuuBYM6z2B05ylHIdUNceZ7gGkEu40	\N	627347	2022-02-12 23:25:45.755526+05:30	Etc/GMT-3	\N	5d25d15e-d8bd-4a75-9025-9614b53135da	\N	357
f413aefa-b950-4de1-a15b-6e54b7eda0e7		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2Nzk1NTkyLCJqdGkiOiJjMzY2ODYzOThiZWY0ODAxOTcxMzg5NTJhNDQ0NjA2YSIsInVzZXJfaWQiOjM2Nn0.XcIxT-TZvhvtl2pY4umcDb0Bp9fiXxqSHK5JMvKXkAM	\N	115364	2022-02-19 14:00:47.278365+05:30	Asia/Calcutta	\N	\N	\N	366
e53a7721-c636-4c5a-8db2-48da16eeb16f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	878379	2022-01-03 22:46:14.621416+05:30	\N	\N	\N	\N	288
6df10adc-ea21-4973-805e-7e2a6ed8b1b8		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	577686	2022-01-03 22:49:03.543974+05:30	\N	\N	\N	\N	289
138089ac-183b-48d2-aed7-f2781a08bbb2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	269318	2022-01-03 22:51:16.231922+05:30	\N	\N	\N	\N	290
e8b70f42-149b-4166-a2a6-4d264afe0e4d		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	393663	2022-01-03 23:01:25.996029+05:30	\N	\N	\N	\N	291
609f5dd6-b85a-4923-ad8c-9fcaef575de1		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyNzY3NjQyLCJqdGkiOiJhMmU4NmJmNzg3Mjk0NDJlOGNmZmMwMGYxYmRkZmY5MiIsInVzZXJfaWQiOjI5Mn0.AO7GYPZ16vgUJeIstl12gMSecE4Rr6q3mXXzm9bA-lw	966585	2022-01-03 23:09:58.944735+05:30	\N	\N	ec84b858-b010-4367-a084-a89f265cab84	\N	292
17711a1a-c369-4ecb-8d86-3bf7fef8fdfd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	980441	2022-01-05 12:08:50.569182+05:30	\N	\N	\N	\N	295
96c9706f-aeb3-4797-bbb1-139f526baab9		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyODU4NzExLCJqdGkiOiI3ZTMxMDNmN2UxNzE0NTIwOTUxODU2ZDY2NDM5ZmVmOSIsInVzZXJfaWQiOjI5NH0.8DSiCYPrhZRY7vzDRQ6K7l3cX8wuPv66QkLgGvIdhU0	118880	2022-01-05 00:27:26.905566+05:30	\N	\N	da5ffe0d-059a-4552-8b46-2552cf9befb2	\N	294
b47f41ab-6c2d-438f-96bd-edbe7bb103d9		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcyOTAzNjYwLCJqdGkiOiI1ZTZjNGRjMTIxNmQ0NDJmYmUxYmRjNDk3MTBjOTBhNiIsInVzZXJfaWQiOjI5Nn0.CaJPOhKdzsqz5D3_lEHFsSPqSuQS-qQf5u7CwiTrjRI	820880	2022-01-05 12:17:38.958089+05:30	\N	\N	a13a14b3-1c74-493e-9a5e-028230d1b098	\N	296
3f3cba54-3fd0-4d49-be7f-9bde246ddf1b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	301297	2022-01-06 23:15:52.332971+05:30	\N	\N	\N	\N	298
3bd84bc7-93ff-4c83-871b-d8700e168b2c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	723239	2022-01-09 01:59:43.995554+05:30	\N	\N	\N	\N	304
707a4877-6a8d-4de8-a196-1d4106771d0e		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMDI4NTU1LCJqdGkiOiJlN2I4MjI2Y2ZlOTM0YTkzYTE4YmRiYzA0ZjI1OTdjNyIsInVzZXJfaWQiOjI5OX0.xEYreyxS7wlPv8ygci62vqnSwciqDWxgeOhtL4IosuE	183940	2022-01-06 23:20:31.127393+05:30	\N	\N	d252b5f5-ae0a-4f3f-9448-6e73044c8096	\N	299
cedd1c66-9e74-4122-8c55-e18335e622fd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	577395	2022-01-07 22:11:11.368328+05:30	Asia/Riyadh	\N	\N	\N	300
351bf9ea-3ee2-4885-b699-449a6dc6b885		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMjMxODc4LCJqdGkiOiI1ZWZhZmUxMDFiZmM0NTE4YWNlZTQ1NGViNWQ3OTM3YiIsInVzZXJfaWQiOjMwNn0.kj3AXIcQd6Rrcwr9l-8TpMaRE4pYfeQjSZWagLzAGqw	359078	2022-01-09 08:06:53.42769+05:30	\N	\N	\N	\N	306
4a6bd964-7402-44e6-b89a-44949247de8c		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	708708	2022-01-09 13:43:58.100435+05:30	\N	\N	\N	\N	307
fb351363-ca61-4f2a-8e4e-8e6938063e17		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	979666	2022-01-22 09:55:12.253751+05:30	\N	\N	\N	\N	334
d4463d34-aaa3-4106-bcca-f6769ed83e43		\N	559806755	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MTI3MzY3LCJqdGkiOiJmZGUyOGIxODhiODM0MWFlOTNiZDllZTgyYTAwNDA0NSIsInVzZXJfaWQiOjMyNn0.LtgrUJ82pskGOVwbwBSIuqimOBIXWLab-QWtcFk_3xA	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NTg0Njg5LCJqdGkiOiI0MTAxMDMyYWU4NDM0NmE5OGEwY2IxZDI4NTE0YzBkZSIsInVzZXJfaWQiOjMyNn0.5IFXJaFHM6wSWZA-TtA0Wlx0hUbZrUO_cCUEyfYDy40	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	326
228c8b26-2b8c-48c9-9007-59048515ebe3		\N	9846779916	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4MzIwNTUwLCJqdGkiOiI5OWM5NDg1NmQ2NzY0MWIyOGM4NDM5ZmQ5Yzc1MjNlZSIsInVzZXJfaWQiOjkxfQ.qI2CW_hR6fdQUIyM4EdfliHKYsJ4kCNK_pq3rC8VFzc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNjEzNzY4LCJqdGkiOiI4ODUxNzkxZjQ3Yzc0NzQ2YTRjYTdlYjZjN2I3MDc5NCIsInVzZXJfaWQiOjkxfQ.2TAYgHM4zjlo8nLq2sD8vj04bXRQghToWEqw69iiJvM	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	91
199e8f0a-9bd1-481a-8208-ddfc87fee1bc		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNDU4NjY2LCJqdGkiOiJhMjJjODc2MTJkYjE0OGJiOWNlYWY0NWM0NGYzNTBkMCIsInVzZXJfaWQiOjMxNX0.icvyN1Cjg15Pr2ABbFOg33n_kL0_cKr_5EW_g3UMD7M	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNDYxNjE1LCJqdGkiOiIwZDI2OTAxZGJmZDQ0ODEyYmI4OGRkMGI5MTM2MWQxMSIsInVzZXJfaWQiOjMxNX0.WZ7PRuIv-0lVwWv12p-sVYuHvwH6jpmJuehEtONDd9E	428131	2022-01-11 23:06:30.131485+05:30	Asia/Riyadh	\N	061eb840-e145-40cf-9aa9-0e498bb83175	\N	315
aa4c5625-9f07-4c38-a08f-d92da6882eb0		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	833350	2022-05-12 18:05:06.211954+05:30	\N	\N	\N	\N	417
4d90ad6a-e1f6-4538-a3ca-1de9bb8b3c01		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	210332	2022-05-13 09:16:48.226382+05:30	\N	\N	\N	\N	420
511f70be-76dd-42d3-83eb-078eed3f7233		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	107150	2022-05-13 10:41:05.9991+05:30	\N	\N	\N	\N	431
bcd53912-d4bf-42c0-9b0a-edae1dea3d78		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	757559	2022-05-13 10:47:16.278562+05:30	\N	\N	\N	\N	434
be71a85f-4958-40e0-b518-2fa68d73b7ff		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NTUxMzM5LCJqdGkiOiI5OWMxNGNlY2MyMWQ0Yjg4OWQyNmNiYTdjMmVlZjg3NCIsInVzZXJfaWQiOjM0NX0.3fr65VEu7QZWwuujCM-1cANI0-wU_Sghe2Bgb2PsbBU	\N	654655	2022-01-24 12:12:33.503211+05:30	Asia/Calcutta	\N	26d2bb20-adbd-4d34-a88e-690827c462be	\N	345
1acc37c6-e644-4082-8b35-9921444d42d7		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MTk3NDkzLCJqdGkiOiI3ZmIyZmI2MDQ1ODY0NTA0YWQzNmU3NDBkNWIwNjJlNCIsInVzZXJfaWQiOjI4N30.6zDR2n0x0-7ps91JxjQvGzoKAlHnyjUI854tF66tUpQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2ODA1NzMyLCJqdGkiOiJkMDk2ZmE0OGQyYWY0NTk0YmU5YTg0ZjJhMmRkY2FkNCIsInVzZXJfaWQiOjI4N30.CE_XIsHZNAaekSa02-kuLgmflGVnuDxRqED9UJs5yss	717473	2022-01-03 18:56:15.451217+05:30	Asia/Calcutta	\N	f8e4c263-1e59-4a0b-a594-83a1602b5deb	\N	287
95293a7d-c00c-45b2-9597-8e37dd9f44a0		\N	560667245	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDg4MzIxLCJqdGkiOiJhNjgwNDYzNGViNDM0MDg0YWE1NmE5MTA1YjQ1NmFkNCIsInVzZXJfaWQiOjMzOH0.6IHweGkzRRYbnwGuz8vqtiR3sDHQWZL15qicnxQ2ekE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDkyOTk1LCJqdGkiOiI1ZjMzNDZlYmIxMWI0OTBlYTM4Mjc3ZWVhODliM2ZiNiIsInVzZXJfaWQiOjMzOH0.YCJ2WVYtBICKCLac8PevpwEr5OQCb107F_k48pBdXCc	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	6ebc9af4-7f1c-4de2-938d-060298ae5e81	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	338
7f336b3a-3baf-4361-a2d9-f522b734bb6c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczNzc0NzU4LCJqdGkiOiJlZTc1Mjc2YmYwOTU0NWMyYTcyZmYwZjI0ZGE0MjAwMiIsInVzZXJfaWQiOjMxOX0.J4gsGlWg2ERxbAdKNMqqvBJZ3TnmsLEac4Z6W5fR-ik	\N	987239	2022-01-15 14:46:22.64312+05:30	Asia/Riyadh	\N	\N	\N	319
4faaf996-d7c2-441f-83d9-c785bdbbc7e3		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczODQ4Nzc4LCJqdGkiOiJlYTVjMjFmMjVmMzc0MTdhYjgxY2RlYjQyNzI4MDg3NCIsInVzZXJfaWQiOjMyM30.UA2D0voA0IYXq7GM_zc9ZooPPPejPTm_Fo2STgZWLe8	\N	313286	2022-01-16 11:29:08.439331+05:30	Asia/Riyadh	\N	ea05c13a-ba2c-46c1-bbdb-e87f6f30f747	\N	323
652ab35b-3142-4805-8c15-66517c779801		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MjExOTMxLCJqdGkiOiI4NzIzYzFkNGRhMjI0NTAyYTFhNzc0YmU4ZTQyY2M4YSIsInVzZXJfaWQiOjMyOX0.c78es95_47yjd47vka44oGwwSJdufUKCWuDxrM1ibNY	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MjExMjk3LCJqdGkiOiIyNmRmODdmMjNhNmY0NmM2YmFkNmQ0NWZkMzNhODQxYiIsInVzZXJfaWQiOjMyOX0.-NrFbcnETOtywjH8AiFYI5yr6cqZqJN8j2Md8f2if7Q	596502	2022-01-20 16:09:32.919706+05:30	\N	\N	f6c52c9a-39eb-494f-9224-812c5d32594b	\N	329
c18e9046-e4ae-4f61-a64f-8eee5804f3e7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	476157	2022-03-05 04:48:02.550588+05:30	\N	\N	\N	\N	379
b772a38d-020d-4759-987f-eb2aa968c9cd		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NjE0NzE3LCJqdGkiOiJhMTg1NzEyNzFhZDY0YTUxYWI1MGVhMzZjMGNiMTIxNiIsInVzZXJfaWQiOjM0OH0.y-oBObeWvlT6xz1jLc080FAEwJa3i-kgCmkX_qWNPl8	\N	800472	2022-01-27 15:10:21.517301+05:30	Asia/Riyadh	\N	257695a2-16fe-4acb-be80-6bb666384fbd	\N	348
b86a2aff-f431-4e69-87dd-1c0c16d9f76b		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0MzgwNTY2LCJqdGkiOiIzMWJlYmM0M2JhMGQ0ODMzYWFlZjgzNjJmZDZlYjQwMCIsInVzZXJfaWQiOjMzOX0.lNnjY8K7YG0tmoOPAqNbRdPG1q_T2poc91umhcXqL6s	503271	2022-01-22 15:11:20.561389+05:30	\N	\N	\N	\N	339
deae234d-3c17-498e-ba74-4987cdb5eab7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	518017	2022-02-03 16:16:00.310325+05:30	Asia/Calcutta	\N	\N	\N	354
2401f38c-a160-4f3f-af74-a2ad598b574c		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDU5NDIxLCJqdGkiOiI5ZTVhOTRiNWYzN2U0Y2Y3YjJkYzQ2MTQ3MzI1MDBhYiIsInVzZXJfaWQiOjM0MX0.VRpmMOpDALSstTnmAkcKyaQ6KGf54Lp-qCmrezo8kr4	531902	2022-01-23 13:06:16.0379+05:30	\N	\N	\N	\N	341
44906d43-1057-4eb2-a25c-c0aca007028a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	713080	2022-01-23 14:20:38.219854+05:30	\N	\N	\N	\N	342
7f59b177-5cdb-470d-9f16-698b2cc888d7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	167044	2022-01-23 16:09:56.300527+05:30	\N	\N	\N	\N	343
8aabf654-8311-41b0-98f4-76541b5d731e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczODAxMzQxLCJqdGkiOiIwYzFiODIzY2M1NjU0NTJmOTQyY2Q5NjY2ZWU2MTE2OCIsInVzZXJfaWQiOjMyMn0.XpG5T3aMDCFzCbTDeU483iWYMXlxcRyDuF4WJeodoHA	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDExNDM1LCJqdGkiOiIyMGZmMWJlMGFmM2I0MWZhODZkMGM4ZWFjOWFhOWE1NSIsInVzZXJfaWQiOjMyMn0._FKTNdWz8wAW2jOynwViR-kucol8ikdrSd3MV4P4j-A	177129	2022-01-15 22:17:58.482234+05:30	\N	\N	282fbe97-daff-4588-81fa-0de171fc04ab	\N	322
bd08efd2-391c-4aea-b585-b7b380847c69	profiles/th.jfif	\N	\N	\N	\N	None	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NDYwODc4LCJqdGkiOiJiNDIzN2E2MjliNmI0ZTViODhlNWNmZWY2NGRmNWU3MCIsInVzZXJfaWQiOjM1NX0.zOKXDmqE0VK2Z-hIxGtHZam-XM7BOmAqzrHs_zsHeSY	\N	757159	2022-02-08 10:48:38.667854+05:30	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	df9a7e6c-11bd-49af-b35e-f48b116f95a6	\N	355
17f6355a-94fd-4129-b2f9-a1b043b03f9a		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	800658	2022-01-24 11:54:41.462814+05:30	Asia/Calcutta	\N	\N	\N	344
efc71c5e-9312-44b7-b644-eb12c962a71d		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NTY5MzE1LCJqdGkiOiIzYTY1YTc2NjRiM2M0NDQ0YTNhZWE1OTA1ODAyMDk3ZCIsInVzZXJfaWQiOjM0Nn0.ID-h4lXKZ9dk6yM4G3a_Thelcs_Bzdy3A_qsnJrZufU	138944	2022-01-24 19:31:56.989965+05:30	\N	\N	55798cb4-b7a7-413a-bcb5-8ffe823930f4	\N	346
3e55f934-11cc-4a88-a5eb-8759f9c11285		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzNjAxMTk0LCJqdGkiOiJhZDA5MWMyYzJhMWY0NDYxOGY0OTc5N2IyYzg2Y2ZjYSIsInVzZXJfaWQiOjQwOH0.2lHG_hYao-pYY4wA6h15w47DRan-v8_2c1-4N1ESnfw	\N	306833	2022-05-08 15:46:58.877038+05:30	Asia/Riyadh	\N	\N	\N	408
0943e796-4626-4594-ba0a-e158e0e1b546		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	687538	2022-05-12 18:06:03.39862+05:30	\N	\N	\N	\N	418
528db389-69f1-4b19-854e-dca3e0495b82		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	398177	2022-05-13 09:17:59.216897+05:30	\N	\N	\N	\N	421
507b1775-2e16-4dea-baf2-07e48a620b84		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	774972	2022-05-13 10:48:11.578921+05:30	\N	\N	\N	\N	435
def591e1-1bbe-4c65-bd5b-39bb1f3a1a2a		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0OTA5MzY4LCJqdGkiOiJmOTBlNGQ3MGE0ZWQ0MzJmYjE3MWNjMTk1ZWVhOTQ4MyIsInVzZXJfaWQiOjQ1NH0.tDby_gHKp-vccRPGEIjXKyifvmT0fGPP50qA350T7Jo	660275	2022-05-24 11:51:22.918201+05:30	\N	\N	85225fa8-cf46-4a69-807f-2dfff48287bc	\N	454
1c046c17-9e37-44b5-a66c-0ab93af9980e		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzkwMzAxLCJqdGkiOiJhNzU1ODg5ZjIxZjI0MTJmYjRmMDkwOTk3MDViMGU2MyIsInVzZXJfaWQiOjQ4M30.K0lpDytg8c1Pb9SZhPUKvNuzDiQzmtdmmiLToqTie0U	518939	2022-07-08 09:54:11.052858+05:30	\N	\N	\N	\N	483
afd414b4-68e7-4c05-b7d8-6c46475a164e		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTY3NzY5LCJqdGkiOiIyZDM5YzFhYTdmYmE0MGQ2OTg1NDVmN2ZjMDAyYWY1MiIsInVzZXJfaWQiOjQ0Nn0.fnCb0wN2qDEPnRdW-82ouWfQYHvXsx0eiP83cuifbaU	836050	2022-05-13 14:17:13.180357+05:30	\N	\N	\N	\N	446
a86d92fc-aff2-4ca7-9324-9d9373a59fdf		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwNTg2MTg5LCJqdGkiOiJmMDY5YTdiNWNkYmY0Zjc1OWZlZWUwNjE2NzRkOTdhZSIsInVzZXJfaWQiOjMxM30.wyZlVUgrfMHVqanv_sxnZB_N2LjQ-APLiJ-tB5gBXew	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2Nzg5NzYxLCJqdGkiOiIxZjdmNGI4N2Q0ZDA0ZjllYTM0YzE1MDZkZTRlNGQ3NyIsInVzZXJfaWQiOjMxM30.LFRp_ZvIYmMQwJDIzfebSIs2EJ-yLpicknxCgDjlKcw	284592	2022-01-11 11:35:57.692828+05:30	\N	\N	f0c06f47-1a55-450b-b4e5-a410afe78803	\N	313
b0abe4c9-7145-4e35-b6a1-5b8290cde3ae		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDAzMDMyLCJqdGkiOiIxYzQxMmE5MDYyM2M0ZDY4YTM4ZmUyYWQ4MGY1NGE3OCIsInVzZXJfaWQiOjM0MH0.u6tBfAoJj-7E2PTQwaWhFs3IUFEk7SbSf6L-7qx3PUs	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NDk4MDQ0LCJqdGkiOiI5M2IwZjMyYmQwZGE0NTZlOWFiYjc4YmJiMmY2ZDQ5OCIsInVzZXJfaWQiOjM0MH0.LrVB7Dv81VoyX5WVQhh20sqf2u0JDghZA7UkqRg8DMg	507176	2022-01-22 21:16:50.081587+05:30	Asia/Riyadh	\N	d04da6b7-4d95-44ce-9357-663d167994e4	\N	340
9c09647d-8fd3-4a77-a3c1-65f5d59eb516		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2MzYxMTYyLCJqdGkiOiJmOGE3MTNhMjE5ZmI0YWU2ODYzYzNhOGJiZTE3MmZlOCIsInVzZXJfaWQiOjI0OX0.sA1a_CJ2GTzPP1JzOOaxtKnwqNUFjIPyQ627uN7DRd4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4OTAxMDIxLCJqdGkiOiJjOGU0NGZlNzA5MDM0NWVjOGRhZmY3ZTQzNWExMzk3NiIsInVzZXJfaWQiOjI0OX0.aoZKWTviUpcViNCOlLZonOgZPk00nJysWyh8PUY3E8M	517484	2021-12-15 00:05:19.57434+05:30	\N	\N	3459d3cd-4e84-407f-ae6a-dd5737aa8357	\N	249
0af95676-8a34-44e9-8f59-72a1b16a77f4		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	914374	2022-05-01 18:59:27.795482+05:30	\N	\N	\N	\N	405
f08383ba-cb5e-4d96-a0cf-1739ac5b87e6		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NzUyNDUxLCJqdGkiOiI4N2ZlOWI1ZjM5YWU0ZmFiYmUwMzU4YjNlZmM5ODE4YiIsInVzZXJfaWQiOjE2Mn0.xtoqzLhLrVjdsHdSxrA2KJI0EvtWxgaUHRDS04y_IGg	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MDA1MjgzLCJqdGkiOiI4MWRhYWQzZTNlZmI0OTc5OTI4MGZkODBiY2QxYzU3YSIsInVzZXJfaWQiOjE2Mn0.5163MQkD4WQoaD18jIzdnENEkt7IWe79gPVsKfgUue0	605642	2021-11-30 01:36:25.170657+05:30	Asia/Riyadh	\N	ace058bf-1449-4e97-b46c-4e999525aac1	\N	162
882460c1-1020-420c-8617-860d8ac669aa		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwMjUwLCJqdGkiOiI2YmIwYWMwNGM0MGM0NzUzYWM5NDNkZjU3ZDViNTA2YSIsInVzZXJfaWQiOjQ2MH0.qbpD3YKVFYXlPww5-FnqG_qyeCIAbILMN4-VQzsl5ho	\N	155357	2022-06-13 09:43:41.474087+05:30	Asia/Calcutta	\N	3646174a-4190-42b7-8df2-f946cee71673	\N	460
4cfd0c39-bd44-4100-bb99-08213dc04ef2		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc0NjcxNzU1LCJqdGkiOiJjZjU2MTE4NmQyMWQ0MzkzYjYxYTBmNzI5OWUwZDc0NSIsInVzZXJfaWQiOjM0N30.k_z0nr_pQ6sn2s4lQ3YwdZFkDV94maUeg5xZyQN5gSw	179055	2022-01-26 00:05:06.89821+05:30	\N	\N	\N	\N	347
e634c6f7-fdda-4732-8701-055fa9e5d793		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	335707	2022-03-06 06:34:07.561707+05:30	\N	\N	\N	\N	380
5532695b-4191-47ac-92b5-385dc1f82dce		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4MDkzNTE3LCJqdGkiOiI4MzJkMTFjOWYxZWU0NjdkYWNjOTYxZjQxYTY4NWUyNyIsInVzZXJfaWQiOjM4MX0.1DgOK1ghgKaN6XBcvgW4uT2xfX5QdPZF3v_z-nwsdrs	789306	2022-03-06 14:33:22.885245+05:30	\N	\N	0c254400-a256-4d16-8e88-98e4626e1a16	\N	381
ab76ad8d-8b31-4a14-856e-a71c0df2a2fd		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3OTE5MjU1LCJqdGkiOiJkY2IwYmNjYzNkNTk0Y2ZmOTQ3MDUwNzc2NTFkM2VjMiIsInVzZXJfaWQiOjM3OH0.kNVXKphrOs2byrwIaKkKq0faPwvMjKfihDFKVOTLTI0	\N	177613	2022-03-04 14:01:45.331745+05:30	Asia/Calcutta	\N	\N	\N	378
4afa76ee-47f4-4c9b-9c3f-b58d112098fd		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4NjQ2MDA0LCJqdGkiOiI3ZmM0MjgxMjA3ODI0ZTk5OWFhYjcwNmIwZjYyMTJhMSIsInVzZXJfaWQiOjM1MH0.CIj67qsdMI8GOZVXREJq03HiMRBsTlXodik4FOwRs9Q	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4NjQ5MjEwLCJqdGkiOiIzNjNkYzU4NWY4NGM0MWE4YTAxOWUyMTBmYzJkODk5YSIsInVzZXJfaWQiOjM1MH0.pyWts8_B-TWEyunIrzicIU25_Ss-afXyrKyhtJ0CyTU	546433	2022-01-30 00:28:01.485708+05:30	\N	\N	1a07d7d9-76c0-4f70-b58f-a19c48777a69	\N	350
0ac0593e-cf05-426a-8b46-7396c4831474		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NjA4MDQwLCJqdGkiOiJmY2ZiZGY5OGQ3NDM0M2FiOTQ3YjhiMWYyNjE0MzBjYyIsInVzZXJfaWQiOjM2NH0.oJ1Bqb4MJ-U_w4ntJrKPeojSYqo_FYQZ-QnEPI79VD8	377010	2022-02-17 09:45:23.885819+05:30	\N	\N	\N	\N	364
cef6d76e-aade-495a-b07e-a262c1a114e8		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NDc4MDU4LCJqdGkiOiIwYzE0ZTIxMWRiMWE0YTkzODRkNWFjNzViOGU2YWRjMiIsInVzZXJfaWQiOjl9.HSy42gcRztNzOc9jGVl8ocfYD5jkA8pEiQmL00v3oMs	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NTc3MDg1LCJqdGkiOiI4ODg2MmQ5NDAzZDA0NTlhODZkZGM4NjdjNTZjNjA4MiIsInVzZXJfaWQiOjl9.5A0PNeBK2EFMxf3BzRmeTaMOjFB8XfjS9V4uanbLIeU	\N	\N	Asia/Calcutta	\N	830d6737-3e27-466d-9f25-13c655bddde2	\N	9
e1edb940-32f4-4c0e-b1f4-d71011fd7f6a		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MTAzMDQ2LCJqdGkiOiJhZmI2NTc5OTNlYTk0YzcwODM3Yjg3MGIzYjdmZjZkMSIsInVzZXJfaWQiOjI0N30.J5-BvegJsv52Rhp87I2Yc34P8TCzqP5R7mJ-x-CjWvk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MTA1MDc2LCJqdGkiOiJiNWE5OTEyOTM5Y2E0MGVmOWI5MTk5ZTI3NDM3NzJhNSIsInVzZXJfaWQiOjI0N30.0yydjq5jfcJezwVOQ2G-xTKeoV3aqiBGVBsvSpXPPrA	398225	2021-12-14 21:07:19.909376+05:30	\N	\N	3bd771a8-51d4-4593-a34e-cbe285d89382	\N	247
5eda542b-1270-4be0-b1b2-4b92cad7e853		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	568269	2022-07-08 09:59:49.553125+05:30	\N	\N	\N	\N	484
19befc36-f4c5-4582-aa72-397ca4623e58		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	353120	2022-02-17 09:42:29.78576+05:30	\N	\N	\N	\N	363
81894339-33ca-4db4-97c8-b3221ca53c0e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyMDY3NDU1LCJqdGkiOiI5OWQ1NTUyN2NiOGQ0ZTczOTc0YWZjOWJiNmQ5MDE2MiIsInVzZXJfaWQiOjQwMn0.yvsZLxoTIEACfz8FJ_qvX_p1KmwPtbqhnlduwr2Sh8k	\N	318986	2022-04-21 14:25:33.437778+05:30	Asia/Calcutta	\N	\N	\N	402
307eba8c-5bc1-42d2-9ade-1811419bf32a		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5Mzg5NDY5LCJqdGkiOiJiNjMzNDA1MDRmZWY0M2ZkYTAxMzMzNTUyNTA2ODBiZSIsInVzZXJfaWQiOjIwNn0.owsKRA7AF9adcOXah8tlXylsen5U2YeS3L5JvqTd2aw	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4Njk5ODY3LCJqdGkiOiIyMDYzZWMwNDkxMjg0OTQ5ODYwNjAzZjA3MjRmMzVjOSIsInVzZXJfaWQiOjIwNn0.pgHoNfTETt1HFXtTe2sf8DqvES7nyLcx2W8tFNtkbRU	870104	2021-12-04 15:12:41.744511+05:30	Asia/Riyadh	\N	94a7c471-ab5e-468b-afd1-9655ec29a9fc	\N	206
3c6a3209-d3ec-4cec-b45c-9df7c40396fd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	106313	2022-05-13 09:22:03.755953+05:30	\N	\N	\N	\N	422
d301ce31-8bcb-4558-80e3-64a545a8a264		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	237153	2022-05-13 10:50:25.969067+05:30	\N	\N	\N	\N	436
6a3729b6-24c3-4615-8aa9-a9dfedb56cad		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzNzk3NzQzLCJqdGkiOiI1NTQ1MjZkYmYxYzE0NDQwOTE4NGVkMWFjZGYwZjIwNyIsInVzZXJfaWQiOjE4OX0.Z-2K3CwMaR6OqtUi9KNvCwJzufTKzFm7h-MXc37jx3o	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MzM2NDAwLCJqdGkiOiJhZGE1YjVkNDc3ZmY0Nzk5ODQxMTllM2VjZjY3YjA3MiIsInVzZXJfaWQiOjE4OX0.r8XK6wQFTubKqAUz-C9qOyqfcKXag2tMLW9UVf1U4sA	164722	2021-12-02 23:51:16.468154+05:30	\N	\N	000ef3b4-34ec-494b-b6be-d81706cfc940	\N	189
fcc6143b-f915-4c6e-a8a5-510336f69233		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	780741	2022-05-13 09:32:15.435768+05:30	\N	\N	\N	\N	423
429b19c7-22ce-4ca7-9340-65cd2e91950f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	193358	2022-05-13 09:40:32.187081+05:30	\N	\N	\N	\N	427
d6748d13-36ef-4563-af35-df12fe2653a1		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	545755	2022-05-13 14:20:23.586935+05:30	\N	\N	\N	\N	447
f064131a-2e01-4970-aa1c-52c6789b99c9		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMTk3Mzc3LCJqdGkiOiI0OGE1MTcxMWIzOGI0NjE1YTk1YzQ2MjI2YjU3NDBlNCIsInVzZXJfaWQiOjM5M30.CWNiK9ogW0lZmZflFrQHVtwz1f7sZsJVk0wuSi_9rjQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3Mjg1NzgxLCJqdGkiOiI3MDM5NjA5NTFlZTA0ZjY1OGY1ZmU1NDlmZGRhMzNmMCIsInVzZXJfaWQiOjM5M30.b8RuzdW0vAQXuc014y9q3l4dPSpIHjIJYtcqOkZRH2Q	363027	2022-03-30 22:59:10.297476+05:30	Asia/Riyadh	\N	0b2972ce-7a2c-488b-9a08-257a17fb54e5	\N	393
80d1b755-3e49-4764-ba8c-a875a7ace1de		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0NTE0OTY1LCJqdGkiOiIzMzQ0ZTkyNjhiMzc0Y2IxYjU2MzM3MmQwMzk3YjI2OCIsInVzZXJfaWQiOjQ1Mn0.PveS1kVN3qgPtAhmxaTQylCx2mHsdtyKHfuhVI6ed0c	\N	356609	2022-05-19 12:45:52.241562+05:30	Asia/Calcutta	\N	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	\N	452
76bf3ffe-ce3d-40ee-823b-47646f945a64		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	753858	2022-06-14 01:02:39.922988+05:30	\N	\N	\N	\N	462
f005a594-8664-4b14-816e-cd058a843183		\N	559124428	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNjE1NTY0LCJqdGkiOiJmM2RmNmUxOTU3ZTU0N2ZmYjUyYzQ5OWM5OTUwYTE4OSIsInVzZXJfaWQiOjgxfQ.z6lELn0t-0E0cV8qFd4uiinJqByBH-Wddepw8_JJza8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4NzU0NDAyLCJqdGkiOiJhZGYxMTBlNGFmZjE0OGQ1OWM0NTZhMzE2MmU4MTlkZCIsInVzZXJfaWQiOjgxfQ.zyqDEAlGP-N7ZZuYboSBMQwX0kTjExlWfrt5AJJ5nyE	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	a7bc7605-e44c-4f06-8cd2-f4e8bb1f00f0	12f2f7fa-e007-4170-905a-30b534ab3363	81
08224e31-e752-4597-a4d7-4aef3b6f9002	profiles/20220204_134108.jpg	\N	966553877505	\N	\N	male	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NDg0MzcwLCJqdGkiOiJlOGZjNmQyMzhkYTA0YWYxOTZiYmI1NTdhYmIzNzM5MCIsInVzZXJfaWQiOjMzMX0.4s1An4uu3hu6rDEiRBrc2IVIEFKUTztsl9eSma84fYQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc1MDY2MTM1LCJqdGkiOiI3NjgzNTRhMjBlYzg0MjgzODliODMxYzNmMTZhNzM1NyIsInVzZXJfaWQiOjMzMX0.IIRBjolzUelUkXPob6qDyeRpkQ5t8BAG7f7-jKrX_aQ	782686	2022-01-20 20:28:40.650316+05:30	Asia/Riyadh	94e4ce66-26cc-4851-af1e-ecc068e80224	b4117bfb-63b0-4c50-b22e-4f2978479ba8	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	331
fdd69027-869d-4a16-aea2-c78bf1990d69		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2ODE0MDcxLCJqdGkiOiJmNDhkY2FiZDIzNjg0ODBkYTBiMDU5NjhjNzdhMTMyZiIsInVzZXJfaWQiOjM2MX0.dezJU8XBL-PiQ5hLP7ooUNV1rFiTdRHYokZRDQ5Eyy0	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2ODIwMDA3LCJqdGkiOiJhM2U2Yjg3Nzc1YTk0ODAwYWM2ZWU5Nzk5YjU4MDQ0NiIsInVzZXJfaWQiOjM2MX0.0XVyL1kIdNoK-_RlzxDrChbvkYUUcXMQlcz8dZlCaWU	689007	2022-02-15 09:29:08.144147+05:30	Asia/Calcutta	\N	6cb1d244-7fef-4350-8970-365fcdcad210	\N	361
28805410-1969-48d8-9fce-c5ee5b9a4244		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NTcxNDQxLCJqdGkiOiJmMDRmZDNkNDVlYmM0NTFlOGJjMjdhOGY0ZjI0MWI0MyIsInVzZXJfaWQiOjM2MH0.sEeT0_4zTlI6GKigQoT1xiiAhNrk3bk2HR-GeawNSaI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NzUxNjk5LCJqdGkiOiI4NTdhYjAxOWNjNjA0Y2I2ODVhYjAwYTYyNGM3MmI1MSIsInVzZXJfaWQiOjM2MH0.oGwgokZ4734HCKFpSIXrHjLoU4itIAn7Pm-GTzklFfs	607684	2022-02-14 23:22:47.557948+05:30	\N	\N	3bb9730f-c65c-44ba-a385-e89b8e64e758	\N	360
6150dd93-e3be-4818-bb12-ab609108e573		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1NzA0MTY1LCJqdGkiOiJlYzIyYmE2ZDM4ODk0MzUyYTNiZWE4MjExZjdjZTZmNSIsInVzZXJfaWQiOjQ1N30.YPtTiBt-i1dlFsdj3bmqhgVI0VoiyRNBDNApg2FnynU	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1NzA0NTI5LCJqdGkiOiIzZjUwNmIwZmFkNjA0Njk3OWJjNzljOThiMDNmOGIwNCIsInVzZXJfaWQiOjQ1N30.4P_sOJ7oXWJdiQMlv_nqjfdvE74hcS0OladuEUdyQKU	925976	2022-06-02 16:38:31.96735+05:30	\N	\N	0a29adb7-a152-4a3c-a0e7-872db8b0be1f	\N	457
c09a7de2-8685-4506-950b-b23012ce894b		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3Nzc5NDg5LCJqdGkiOiJlNmZmN2VkM2JkOWU0YTIwYTE1MmQwM2M0ZTY2ZjY4OSIsInVzZXJfaWQiOjIyOH0.vOzuB1JYgsMO3w0o7UXnc_GWh23XYjB6v-PVNsCkfuU	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4NjQ5NzQxLCJqdGkiOiJlOWE2NjBkMGFkNTU0ODIyOWRjNjk5Mjg2MWZjOGY5MiIsInVzZXJfaWQiOjIyOH0.b5Kzi3jk_xkv-Mx2ALNxKXN3alfnkcMEx6iQMPz8m2Y	170038	2021-12-07 20:23:39.052743+05:30	Asia/Riyadh	\N	1a07d7d9-76c0-4f70-b58f-a19c48777a69	\N	228
965013c7-be41-46e5-bd0e-51b2c4976ae7		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMjkwNzc0LCJqdGkiOiI0YzBjYzExNWM2MmI0ZjgxOWQ5NjkwNmEwN2EzMWZlMCIsInVzZXJfaWQiOjM5NH0.QWXPdjsqdM0Bq88SlkIzkQQFlJD-SaYHG90oSChTS_E	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MzE2MDEzLCJqdGkiOiIyNDU2MzUwYWExNzg0M2QzOWMwMDNiMjA2Mjc2Njc0NyIsInVzZXJfaWQiOjM5NH0.g9kdApgoIeozAue0wwoCpeqtwvcVeXBDMZYqzFq0lDI	565175	2022-03-30 23:13:24.782617+05:30	Asia/Riyadh	\N	\N	\N	394
e83eb3bd-a01c-48a8-9c48-40e0d0fa3d9b		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MTUwMzEwLCJqdGkiOiJmYzA1MWZjOGM0MGY0NWFjODdiMDc1Y2UzYzVhNTQ1MSIsInVzZXJfaWQiOjM2OX0.n-9J9NpwsLCzwB4c2RxOKPDl8jYAw-NO_OKOh9JPqIM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3NjE3NjkyLCJqdGkiOiJhOGJiMzE4Mjk1NzM0YjJkOWFmZmEzZTJlOWFiNTYyOCIsInVzZXJfaWQiOjM2OX0.An1tGsCHKNAgS_tLvY3wY-WqcUtJ__N7cYF9whpj4t0	405953	2022-02-23 16:34:27.286797+05:30	Asia/Riyadh	\N	46cae537-b9f9-42fd-b546-06e9dc2bb812	\N	369
467838e6-8613-4cd6-9cd0-5941d296c673		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MjI5OTc2LCJqdGkiOiJlMDg1M2M0MjVmMGE0ODczODg5MTRmYWY4Y2ViOTc4OCIsInVzZXJfaWQiOjM3Nn0.mO-l7TGcK_2xguiK_3aS0TsWmO7Fgq5o_ef0yrQ_SMc	711228	2022-02-27 14:06:19.540325+05:30	Asia/Dubai	\N	\N	\N	376
fbcaf1dd-4258-4d39-9b17-ecaec902973e		\N	533134959	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2MTE0NjUzLCJqdGkiOiJiOWExNmY2YzY4Mjk0ZDQyYjAzMWViNmRiMTE1YzdjYiIsInVzZXJfaWQiOjc1fQ.H4w417fYutQkz1G69EmABFxZMkdtu84qJyNHaDnyOUI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NDUxMDQ5LCJqdGkiOiIxNDhmMzdkNzA2NjM0MjMwOTBiMTVhNzA1NmZhZDhiNiIsInVzZXJfaWQiOjc1fQ.ax6ofDQfIjMRWuoTa7ByAalYnFuqHVfvUbNA3Y_6-jc	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	f65d9558-9de8-4194-94a5-a33242fe3e80	12f2f7fa-e007-4170-905a-30b534ab3363	75
450df48e-d6c9-4794-9a60-3aa8cd3c9b0c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MTgwMzk4LCJqdGkiOiIzYzllNDAzM2EzZDE0NmZkYmYzNmE2ZDU2YzY0YTY0NSIsInVzZXJfaWQiOjQ2NH0.ISOWro66_dt2mFA_0GOqjf47Dtrwvn_4KaS1ipJhsEI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjMxNzQ3LCJqdGkiOiJmYTE0YjQxMWE3OTI0OTI0OWJhODhmN2RjZTZhNWQyYyIsInVzZXJfaWQiOjQ2NH0.SNRDhsK4-EKlIHJjHk04qtHxDLavyYIdhhK5nvbMaOg	371088	2022-06-19 18:42:05.319147+05:30	\N	\N	2329fcd1-d87e-4648-84dc-3221154eaa0e	\N	464
9e6e5a61-3a8e-4b31-8fe6-bba4f992eb6e		\N	541041759	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5ODIzMzI1LCJqdGkiOiIxYzYyNjhjMmU3NzQ0YzM3OWY5YzIwZjM5YmZiNzVmZCIsInVzZXJfaWQiOjE2OX0.HCkQXq1qos1UxVQg9PNE3yuHrfOz_sD_-sKmxfR7gcQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzODAwNzA5LCJqdGkiOiI1ZDNkOWVkYTc2NjE0ZWQzYWNjNjUwYzRhMDU5OTdhOSIsInVzZXJfaWQiOjE2OX0.8JLxhTVhwtHtzjbqMoaB67EHak9eDkRSFx9Mdy3kbHY	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	169
aebed77e-41f9-431d-814c-ea94b4827b7a		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzkxMDE5LCJqdGkiOiI5YjMyYzEwMTgwNjg0NjQ2ODFkOGM3YmNjOWQ3NzI0MyIsInVzZXJfaWQiOjQ4NX0.MqyWk4wEFpIwQht4aDOdrglJ7H4LZvkRVjsNhxzh9bA	554758	2022-07-08 10:06:23.075969+05:30	\N	\N	\N	\N	485
e4d3dbcc-d4fc-48cb-be56-81d16313d143		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODAzNzk3LCJqdGkiOiIwNTM4NWE0YmQwMjI0YzdlYWUxZjNmOWI1ZjdhZGZmOSIsInVzZXJfaWQiOjQ5MX0.0u0SCs8OpzBycBiFICmZ2JSrLs6v7XIGykUZENPL58M	802584	2022-07-08 13:37:30.399843+05:30	\N	\N	29e3ab91-bd68-4c61-9878-570170a8c205	\N	491
0e4bfcd6-035b-4825-95bd-60da75bb7470		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODAyNjg4LCJqdGkiOiIwNzFlMjQyZjFhZjQ0ZTRjOTg4MjQ1ZjlmODlhMDYwZiIsInVzZXJfaWQiOjQ4OH0.4289hFEJxwOi3M3kOSE4htfW8WO32DrZbZmsi0SdjQA	934195	2022-07-08 13:18:57.375397+05:30	\N	\N	07f17601-8a85-42a8-97d7-8a48845404b3	\N	488
280f1396-a622-4843-88b5-b2f6609ace42		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	659017	2022-05-13 09:32:49.266691+05:30	\N	\N	\N	\N	424
88643853-8221-42f3-8612-403e8c26307e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMjQ1NjE5LCJqdGkiOiIyNzQzN2RiN2UxNDk0NTllOWU0MTVmMTMwYjllZDIwYyIsInVzZXJfaWQiOjI3MX0.L9H1SpdMJmaavFIejlFXKJudnrBQGjFAjfu3N_sT2zU	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzNDg5Mzc1LCJqdGkiOiJiZDNkMDg2NjM5MWM0ZGFkYmU0ODY0ZDc1ZmU5ZmRmYyIsInVzZXJfaWQiOjI3MX0.ohR-qrkP7MGqKgxwQ-s8Fz2CTM96nWKl0LTeFzMbe7k	692425	2021-12-26 20:59:31.265954+05:30	\N	\N	85c7097e-cb09-4def-804c-d2451fbbcf7f	\N	271
29b1a2aa-780d-4f04-b260-205865675bbf		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjM2NzEwLCJqdGkiOiIzNGJiZTA2YmRmZjg0NTRhYTM0MWEyMjFjZmVjYWE0OSIsInVzZXJfaWQiOjIzM30.D6qBGp7fCUStm0dHWRBDe8NMRO6G-adBpGah4ySR_Sw	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMDg3ODM4LCJqdGkiOiIzN2NlZjE2ZDIxOTU0ZDNlODg3ZjgyZDQ3N2VhM2ViZCIsInVzZXJfaWQiOjIzM30.egHC1Mdn9SuUaeCRmVr6zBcwhpkCSqlD0934oOf8m7M	235305	2021-12-09 13:18:27.043336+05:30	Asia/Calcutta	\N	9732bb17-6e64-4bf0-b062-827145695dc9	\N	233
525a237d-d34b-421d-a4a8-390f65884c61		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxNDc2OTE2LCJqdGkiOiJhMWU0YWQxYzEyY2Q0MzNmYTkyZTY1ZTZkZTlhYWFmOCIsInVzZXJfaWQiOjM5OH0.Vg7Y7iurFgTy1DjWAL5B6R09bhtwrAtYNy6P9GsBlW4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyMDAwODEyLCJqdGkiOiI4ZDYwOWFjN2RhZTM0MWVmYmM5MjYyNDg5N2ViMjhkZiIsInVzZXJfaWQiOjM5OH0.KPQLMY8hvXvkocS561z8f_rQTeT2EPBCiCc9ZmUHess	623528	2022-04-13 03:00:22.434032+05:30	\N	\N	b3fba004-a423-43a6-9113-1d1a41cf0576	\N	398
6564a327-19aa-4ee1-80df-6174d19d4f84		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwOTUyLCJqdGkiOiJlYWU2ZDFiMjIzOTY0ZjA4YTc1N2I4NzU3ZTAxNmNmYSIsInVzZXJfaWQiOjU5fQ.7h44U_nMjUP0vN-y7q0I_mdYEUy_-e3TrEcIpbw0skU	\N	\N	\N	Asia/Calcutta	\N	d2fb8a7e-c973-4057-804b-b60505a8f56e	\N	59
812d0703-4cd0-4053-8caf-abf0f430fc14		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3Mjk2MzI2LCJqdGkiOiIwYmM1NTc1NGFlMGQ0ODY1YmFiZWI3MzZlMWYyMzA5NyIsInVzZXJfaWQiOjQ2MX0.6ZlP4Twf4N_AgGY3pvSnfPeM-ozS_d4y7GJbNT8kxi4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MjQ1NzUwLCJqdGkiOiJkNTI3NTIyZmU2MGU0MjJhOGQ2Yzc4YWZlMTcyZTdlYyIsInVzZXJfaWQiOjQ2MX0.E91GntFAWEBig8dSrhpVUzrooxNwqkEqIIwPitJxtPQ	680435	2022-06-13 18:39:54.181854+05:30	Asia/Calcutta	\N	3c9f0bef-9eb0-4acb-a1dd-c4c1bb7cfa75	\N	461
34b5b3ad-765d-4ef0-8ca5-0066ddb090c7		\N	502928362	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MzI5MTQzLCJqdGkiOiI3OGRlOTI5NzdjY2M0MDdhYjE0MzZmMzI5Njg3OWZiNSIsInVzZXJfaWQiOjE1NH0._TWB0SIYDX84Focg7ZNNfrQwWmAwmwAh5WeyXh7A-1c	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4ODc2NjIxLCJqdGkiOiJlNWFiYWFlNGEyODM0ZjZjOTIwN2ViZjc0NzVlYzYwNiIsInVzZXJfaWQiOjE1NH0.xm_mVsPx5RB4eAgurhxCoiQZ8n3Cae2JByx4C4ETYII	510723	2021-11-30 21:06:13.582562+05:30	\N	94e4ce66-26cc-4851-af1e-ecc068e80224	061eb840-e145-40cf-9aa9-0e498bb83175	9fdd37e8-bdb4-4278-8447-e616fdd6c285	154
1c5a13c2-86d6-4361-8bf0-f81553a849bf		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MzA0ODQwLCJqdGkiOiI2OGQwNWQ2YTUxOGU0NDhlYTBjYzQ0YzVhMDkxMTI1MSIsInVzZXJfaWQiOjQ1M30.WLwlcMddeaoXhVWn7deE0ULa4gIeZt_BKfk19VqLXcE	\N	458885	2022-05-21 17:30:13.32533+05:30	Asia/Calcutta	\N	54ba4163-584f-4d3f-bb02-120b9800ba97	\N	453
7e8ded53-3125-4eb8-bb5b-3b2f5ac7512f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4OTExMDI3LCJqdGkiOiI2YTkzMGE3YWIwYmY0OGE5YmRjM2QxYTliZmJmMjFjNyIsInVzZXJfaWQiOjM4M30.6w_rA3vUxTrnNoTF52Mwv3ebDvLAzlV-Tl7cAPkt_C4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4OTQ4MjA4LCJqdGkiOiJjYjk3OTcyYjg3M2U0M2Q2ODRmODlkNDJlY2U1YTQ1MCIsInVzZXJfaWQiOjM4M30.NT21U0lVw4PVymprxBiw0tZUtN7NfYDAoIyjEWpDhK4	188188	2022-03-16 01:36:29.854637+05:30	\N	\N	696c8548-ae83-4ed3-a292-6fcc642abe23	\N	383
ee08a362-15a6-4501-a98d-c899293012d2		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2MjI0ODIxLCJqdGkiOiIxODYwNTczY2Y4ZDM0ZDRhOWFlZTkzYzU1NTdmOGViNCIsInVzZXJfaWQiOjQ1NX0.r3OokRdnxBLhIHzHLD2AfF1nS2M4XwFPeULYqvfDWMw	\N	257001	2022-05-24 20:56:59.388748+05:30	Asia/Calcutta	\N	54ba4163-584f-4d3f-bb02-120b9800ba97	\N	455
194e12ae-fb7d-4b32-b8bc-7b56e39ea056		\N	558406445	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5ODIzODE2LCJqdGkiOiJiMzYxNjUxMTg1MzI0NzJjYjA1YjQyNmE3OTJmMzZiMCIsInVzZXJfaWQiOjE3MX0.6Tc6l-4LKsxZJvjEeHwW7WiwhyKMMukY9hWHKyVpU_k	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzODI0OTQ1LCJqdGkiOiI2MmRmNjEyNTg4ZDk0MDA5YmJkMzg2NzBmMDdjMjY1OCIsInVzZXJfaWQiOjE3MX0.r0XNM4cwazpazn3B21CT0uRcn-A59oaTdp7oUKCK3bU	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	171
61a89622-0d1a-4d8a-85c7-db2e15fe463e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MjQwODg2LCJqdGkiOiI4NDZhMDNiODBhNzI0MjFjOTM3M2IzNmViMWM3N2I5ZSIsInVzZXJfaWQiOjMzMn0.V9h9mrKItFb7iTT2NUSRGo2EWt-JZRp4rWUVQEWSeg0	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NTU1NTQ5LCJqdGkiOiIxMzRhZjQ2NzczYWU0MDhiYTU2YmJmY2IxOTIwMjUzMiIsInVzZXJfaWQiOjMzMn0.PRr3HhWFdEUgvOcSl5nfXbiVXjUajRkxW1XdQzcIgOs	788824	2022-01-22 08:22:27.89229+05:30	\N	\N	b8fa7cbd-2060-48ec-9229-d5dee7de4832	\N	332
fe9cafd4-5c1c-4881-8920-6e74ed6e6726		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3ODczOTI5LCJqdGkiOiI3YzVlMzQ4YzJjMTQ0ZjYzOTg1NjNjZGMzYjI0YzRkMCIsInVzZXJfaWQiOjE5MH0.d2_AHCvqUI4yoWuqkdzo3Ypkqq62M7MPvk40-mISpP8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3NjA1NjcxLCJqdGkiOiJmZGU5NjRhNmYzZDg0ODkzOGI1ZmI2YTA2ZjI3ZjIwMCIsInVzZXJfaWQiOjE5MH0.as_CGP2Y5KXgkBZywZu9h_U7n7380K_HKnrJFH2yQ34	643649	2021-12-02 22:55:36.421473+05:30	Asia/Riyadh	\N	1042f7e8-2064-41d2-805d-52a905731082	\N	190
58762c5e-60e5-4bdc-ae63-9bee2251f2d6		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwNDU3LCJqdGkiOiI4NjM5ZjM0N2ZjZDM0ZTY3YmM4Yzg4MTYxMGRlNDhlNiIsInVzZXJfaWQiOjUwMH0.tTnHwuiLTom1RWtqn407h_tZTV7bke9N4-2EvxnrQ0A	\N	967357	2022-07-12 13:55:49.646706+05:30	Asia/Calcutta	\N	\N	\N	500
a95e9bee-9be6-40b5-9e33-76b00b8398f6		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUxMzgzLCJqdGkiOiIyMWExYjg1ZTZjMGI0M2Q1OTEyM2Q2YWRkMDM5NjRhOSIsInVzZXJfaWQiOjM3MX0.-dzfgOvlwoq_MUajzq_jCJncBXSGNyznXnl8L1QWjus	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1NDUwMDg3LCJqdGkiOiI2OTJjNDdkYjM1ZWE0OTA4YTNmYTUxYjliYzAzYTU0YiIsInVzZXJfaWQiOjM3MX0.woDXjWwyDCPPiqN3SNuP-rIZK4fcc6XnJqEEGsXWjWk	979436	2022-02-26 10:34:49.078745+05:30	Asia/Calcutta	\N	3930085d-4537-4e6f-8b3e-370b706f097b	\N	371
b2d52e67-cfe3-4a70-b98d-1005d617f245		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzMzUzNTQ4LCJpYXQiOjE2NTE4MTc1NDgsImp0aSI6IjhkM2U4OGY4YzE5YTQ4MzJhOTQyN2U2MGQwYTAyMDg3IiwidXNlcl9pZCI6Mzk5fQ.cy5HteSPNxgFaBthym8EycJDkL987rcnzaANJ924BWg	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMzM4NzU5LCJqdGkiOiI5NDFlYmY2MTk5NmE0NmQ1Yjk5ZmEwMzBlM2IxYWM0YiIsInVzZXJfaWQiOjM5OX0.9xst0z0e28TgV3qbWo-qFBQfg8cviX-29al1uh3qA9k	626296	2022-04-13 03:59:10.641747+05:30	\N	\N	b3fba004-a423-43a6-9113-1d1a41cf0576	\N	399
d7ed8983-50e6-4e09-922d-47cdaeb72c70		\N	999593745	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1MTI5NTY1LCJqdGkiOiI3MWE3Mjk3YzczMzI0OGMzODczNzhiZmM5YWJiOWFhNiIsInVzZXJfaWQiOjc0fQ.BOhx3XEN1PgOnczwRombgZobiqShkXrRDSk9Z9Uyc6Q	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	343e4652-7e73-4f3c-967f-fba6122da413	12f2f7fa-e007-4170-905a-30b534ab3363	74
972a6168-72b3-4811-ad30-eb3815eb3fe4		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzMTc0MTg3LCJqdGkiOiIyNmZhNWQwNmQ5Njk0NDU0OGFkYmYwMDk2MGQ0YzhjNiIsInVzZXJfaWQiOjM0fQ.tT7GQU8Ts1FZ4BCfn7iR7Fc6_5zH1PUyp6m98QAha_A	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyMDc4MDgwLCJqdGkiOiJkMDcwNjhhYjI4OTA0ZmZjOTYxYjU2ZjllZjBjNzAyNyIsInVzZXJfaWQiOjM0fQ.GER0KKaF_jTK3CL1IMn9cTMOCKdQI2WHykYTLEUdx80	\N	\N	Asia/Calcutta	\N	a1792d81-1fd7-4e4d-ada0-ee8bdec02992	\N	34
9116750d-12d9-4e62-aeb4-ad9543968777		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMjY5ODQyLCJqdGkiOiI0Y2JmMzU4OTJmMzk0ZWNhOWM1ZGM3ZjI1YmM5OTFiNSIsInVzZXJfaWQiOjM2N30.AJhaNIbcLUhptOgI5lke9WY-5RTpyYWI5LiO3MSHw4s	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4ODc1OTcxLCJqdGkiOiIxNzcyZDM2MjI1M2M0MGMwOTkzNDRiMGJiNTIzZjA1NyIsInVzZXJfaWQiOjM2N30.aUc-Jsm0SUfoZ7z4YeyDD7f_qA_9e_5C9fq41SeVfDc	820368	2022-02-19 20:57:12.020369+05:30	Asia/Calcutta	\N	f494e172-9cde-4801-9083-e58e5583cc1a	\N	367
4a65c619-512a-4dd8-bb18-a27cb5023047		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5NDA4MDExLCJqdGkiOiI0MzhhYzNmNjQ3ZmI0YWYzOTljY2JlYTdhZDBjNWU1YSIsInVzZXJfaWQiOjM4N30.gDcI4t1t-Gk2pYSECtftq8XWgrbpGjmDbQhbCJ6Xhfw	\N	153793	2022-03-21 19:41:38.139717+05:30	Asia/Riyadh	\N	f5eb7639-d1e9-40be-9607-84f20ee1cac3	\N	387
15aecdf1-3acb-4735-8ea4-9725479895e4	profiles/FD9EE2FD-A314-4B37-BAFA-D6184A3AF007.jpeg	2021-05-26	9745112288	Calicat 	Mavoor Road 	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MDM3NjgxLCJqdGkiOiI3NmNjYmY5ZjFkZDU0NTk4YTQwODc3ZDk1YjQ4MmIzYSIsInVzZXJfaWQiOjMwfQ.5iy2bH8ff3OYoKvn06ndGuxBBdyYFxzmUNSsspg8ecQ	\N	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	\N	19b4fb50-6882-4d29-81cc-0591191f25e6	30
4cb9c762-ec01-4c5e-a388-d071ead4f118		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MTU1ODU4LCJqdGkiOiIwZjFjMDI2Njc4NWE0OWZmOWRmODYyYWU3MzRkYWI1NyIsInVzZXJfaWQiOjM4NH0.PvO5wMQK6Z_Idt0jRXk_xF1yrXHbDMZf_HWMlhMHjXw	\N	914484	2022-03-18 21:19:17.091918+05:30	Asia/Calcutta	\N	eb22f045-55d5-44e2-b18a-813ea6f615bf	\N	384
a866029c-0656-423e-9aad-a8888d1d7239		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwNjA3NzUxLCJqdGkiOiI0MDJmM2E5NDExNDg0ZTFiOWI1MmQ2OTQ5MDQyNWM3MyIsInVzZXJfaWQiOjM5NX0.8FwQ0I0pa4tBdFL84XzUlWHezTdBFiLDOltqL7IKWBk	\N	322350	2022-04-02 17:32:49.679473+05:30	Asia/Dubai	\N	\N	\N	395
d5ffc125-b023-44f0-b18d-9095e9698357		\N	532547993	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5ODIzNTM4LCJqdGkiOiI2NGFhYTNjYTkzZTg0NTU1YjJiMjQ2NGExM2U2YTgwMCIsInVzZXJfaWQiOjE3MH0.jbg4wk74nLDqIRdZQ6QQV59BLjw3vjPc_eeELORq1q8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxNjI4NTg2LCJqdGkiOiJmOTdiZjFiMDE1ZjY0NGJlOTUzM2FjYWI4NDcxNjU0NyIsInVzZXJfaWQiOjE3MH0.312YjUmYMx10N6Ufby-a1KgvYPA5FeGrtE3ticVIGa8	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	9fdd37e8-bdb4-4278-8447-e616fdd6c285	170
c3b51615-cb29-4359-8460-e7f22e63c463		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MzM1NjcxLCJqdGkiOiIwNGMwY2U3YTM3YjQ0YjRlYjE1MGI2YzVhMDk1MjJmNSIsInVzZXJfaWQiOjM4NX0.O2G3oMtYUYcufTUtcNKteKQT8EIeXk-BRldudocaCXE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MzMxNzk0LCJqdGkiOiJmNGQ0YzQ3Y2IzZGQ0NzhjOTZlYTc5ZDMzNzdmYTZjNCIsInVzZXJfaWQiOjM4NX0.d8NVhf4IWV9WtH9FoL-GWaRU7SpOty6VIZWkFJf6fOI	345222	2022-03-20 22:32:25.293497+05:30	\N	\N	ef80ebe2-6854-4bbd-8669-7adcadb9dada	\N	385
6c998db8-ee65-4d74-9f0f-23b42b6b701f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5Mzg2NTUwLCJqdGkiOiJjYzRlYTVlZjY1MmM0YjlhYjkyM2IwOWMwMTlmMDAxYSIsInVzZXJfaWQiOjM4Nn0.mQkXp9N3DT5YGpaYk2G2Qx3WZkeLGP8FE7MfHAxPiMs	\N	880961	2022-03-21 13:44:46.660128+05:30	Asia/Dubai	\N	b4455909-e4f8-4d0a-b8e2-3777499fceb1	\N	386
69ccd594-de97-413d-94cc-fb860e6e4c9c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwNjkxMTkwLCJqdGkiOiIwMzhkZTBlMTlhZGY0NGQ4YmY3NTQ4ZDM5YTllNmJlZCIsInVzZXJfaWQiOjM5Nn0.Y6wrhOP_SjBPQIVmPY19wPKuynB-LtF_DoiUKj5Kqeg	\N	885612	2022-04-04 13:44:24.969679+05:30	Asia/Calcutta	\N	a3b01dba-44fd-4e23-9897-47e1a29d1907	\N	396
b58754b2-56b9-48d1-99c4-94c803c2aa52		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5NzM1MDI1LCJqdGkiOiI2MjFjNGY1ZjJkM2Y0YWZlOTVkNDllN2M5ZjgzNmRjMiIsInVzZXJfaWQiOjM5MH0.ZE3uJlW6DGxRH5zmJiX92RvGSVL0EPsmyMn69I18FgM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5NzM1MjQ3LCJqdGkiOiJlNGU0OGRjYjA4MTE0N2I5OTY1MjE3OTlmNThhZjNjMyIsInVzZXJfaWQiOjM5MH0.jFVbo68ANpqaetxYdEb52bBX5dxVFPjF2j6bPcjtdDc	498172	2022-03-25 14:33:29.138959+05:30	Asia/Calcutta	\N	ce18f348-856c-44cc-adac-0d23efc32e6e	\N	390
ff528831-451d-4e7e-8a6c-c6394f2026f1		\N	9846522315	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNDkzMTAzLCJqdGkiOiI5NGM4ZGZmYjM1YTk0ZjYzODQ1Y2QxODAwNjhhYjMwYSIsInVzZXJfaWQiOjkyfQ.12DnVgxSHNngW1cOUfuhQhJrHDGw8LelFdtTHaEa2jc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5OTU5NTU4LCJqdGkiOiJmN2U2MjFhNjhiZmY0OTE2YTk5NzZlYmQwNWY4NzQyZiIsInVzZXJfaWQiOjkyfQ.TOXUxTH248iwmqG7bhRIH8v2hqNyN4NVESDUhGRe5ys	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	f0c06f47-1a55-450b-b4e5-a410afe78803	19b4fb50-6882-4d29-81cc-0591191f25e6	92
66ec59fc-b5d9-4d98-84e4-174d54e996bd		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2MjMzNzUxLCJqdGkiOiI5OWQ4ZTRlNzlmMWI0NmM5OWRkODNhMWI0YmY3M2YyOCIsInVzZXJfaWQiOjM4OH0.RNpGa0U6IIQHge1HoT2fPcoPSKRPEEE4nEcPNan7feE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwMTkzNjQ1LCJqdGkiOiIxZDk5OWMxMDg0MTA0OTlhOTdiMzk0MzQ4ZGZkMmI1NSIsInVzZXJfaWQiOjM4OH0.rpiDDc_-ddJSkXK3VI27c5YHSmH0jsBkAySkv-Pyah8	147450	2022-03-22 00:02:45.039084+05:30	\N	\N	0b2972ce-7a2c-488b-9a08-257a17fb54e5	\N	388
21f5e093-a0ae-44c5-99c9-1c463196da42		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTM0MTcxLCJqdGkiOiJlNzE2NmI2MjAzOTc0MGYwYTdiYTU1ZmM1NDM2N2Q1MCIsInVzZXJfaWQiOjMyNH0.Cj55Z4D_VDCMKLsLJyrfqyDnqSQjhTcLGJPX-16tYDQ	\N	320374	2022-01-17 17:10:55.949321+05:30	Asia/Calcutta	\N	85bfd19b-c108-4a9e-97db-479230321d46	\N	324
d5f518f7-c742-49a6-b912-743d07b303c1		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzMTk1Njg4LCJqdGkiOiIxOTFmMmM5NWY5ZTg0NGE3YWU0NDk1ZTkwNWVkMjg0NCIsInVzZXJfaWQiOjM4OX0.jLzF97Dh6JY54dXx8xwBFHf8uBdyPRmAiBo_GE8P1Fs	\N	257956	2022-03-23 10:26:07.042269+05:30	Asia/Calcutta	\N	46d6fefa-4402-4d6a-8ed3-49251ba2e677	\N	389
dedddde1-69cc-482c-9cb2-b9c4bb26f1f1		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1ODE1MTc2LCJqdGkiOiI3OGEwNGExZjg1Mzg0MzZkYTQyMjU1NWQ1MGI5OTkxOSIsInVzZXJfaWQiOjQ1OH0.SOUHAo5YtjKMpozw4PSu1Q0SRECuSUsUaITT__JVg-o	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2MDI5ODE0LCJqdGkiOiIwODk0ZDBiYWY4NTA0NmNlODUwZDEzYzUxODU3YzI0YyIsInVzZXJfaWQiOjQ1OH0.ZdQx1w2zgMUMAMvWZB-2pTRq9DHTVZTC5Leo246tHq0	491766	2022-06-03 15:32:27.199977+05:30	Asia/Calcutta	\N	510e5554-216b-4e2a-9326-7c0ef5ba4ce9	\N	458
3e3c2f65-597c-4c38-a098-75ec1addf086		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2MzY5Njg4LCJqdGkiOiI3N2ZhZDI1ZDdhMTE0OTRlYTIzMjg4M2NhZDZhYTNkMCIsInVzZXJfaWQiOjI5fQ.cC2bcek52pwzJGFDlx2jPIq-Zym5rRLPcbDbeJ1u1u4	\N	\N	\N	Asia/Calcutta	\N	878acf1f-6090-47f6-ab00-2b0f61cbcce6	\N	29
628359cf-9e29-4ba3-b5d9-5402bab1535f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwOTQwLCJqdGkiOiI5YjNiYWJmZDE1ZjU0MThmYmQyMmYxZjkyZWIyMjhmOCIsInVzZXJfaWQiOjUwMX0.ad0qMqgGP-IOsMU9ffwrK8Nkm1nV6wfo8-yXAGZ3Wsg	\N	907023	2022-07-12 14:04:50.809267+05:30	Asia/Calcutta	\N	\N	\N	501
3edaaaf3-3a28-402d-88a0-bee9b3f94aa0		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1MTI2NzI2LCJqdGkiOiI2MDlhNmY2ZDgwOTk0OWFmYjUwYWFkOWE5OWMyYzQ2MSIsInVzZXJfaWQiOjQ3fQ.z_nkUVbPvqNIg0PpVXmQA_LCDKeILsSgKeg3nK6erOM	\N	\N	\N	Asia/Calcutta	\N	\N	\N	47
b8c71d6f-6d1d-4505-a325-ac2ba39bff61		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzkxNzY2LCJqdGkiOiJmYjQyNmMyZDEyNGU0ZmQ2YTg0MzNkOGM2YzE1MGNlMCIsInVzZXJfaWQiOjQ4N30.FWY2OZ3cx1JGO1xqH1KpnVqMrlipPcU-LmiBy2A8R2Q	392924	2022-07-08 10:17:51.445528+05:30	\N	\N	380fcc53-018c-4316-bd32-8c3f6b8f1974	\N	487
712efce7-455d-4578-aaf7-5e792f2223b4		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	963657	2022-05-13 09:34:21.103001+05:30	\N	\N	\N	\N	425
39278fd3-06e6-4e7e-86ca-e7c2d4cbe01a		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NTM3MDM1LCJqdGkiOiJkYWYzYmVjMzg5OWY0NzU2ODNkOGM4Njc0MzZhOWE5NiIsInVzZXJfaWQiOjM3NX0.ZcSd5uBvB3aAQzlFk1-FxrWNvL6rKsgHfXD7WU0I6Ag	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNjMyMTA2LCJqdGkiOiI0YWI2NTVkMGFjYWU0MDhiODgyZTk2ZTZlMzRiZTdjNiIsInVzZXJfaWQiOjM3NX0.KNYygbGxS-GVWi_9m2NnokXPJi-YpwDcPIn-sH6Wiqk	684438	2022-02-27 13:59:30.552268+05:30	Asia/Dubai	\N	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	\N	375
6c13c991-152c-44a0-9605-66687aba1688		\N	966597787547	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDk2NjI2LCJqdGkiOiI3NGI1OTIzYzY1ODc0ZmIxYWI3MTZjYjI5MDA4MDIwZCIsInVzZXJfaWQiOjE0Nn0.57T9NTkq8ZO-4uiqVClZGCxX5hCixo8Tj2M3x9sRwr0	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5NDc5MjIwLCJqdGkiOiI3MGM1NmNmY2ExYjg0NTRhYjE3ZjdjYTc4YWRjYWU1YSIsInVzZXJfaWQiOjE0Nn0.MDhYmm-CoU5vmt939evjVYN7M_u19Cyfso40lqBAdd8	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	60925298-8f48-4db2-ab03-8815c0278623	9fdd37e8-bdb4-4278-8447-e616fdd6c285	146
62954a31-f99b-4065-adbe-b59ab04a650a		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNTEyOTkzLCJqdGkiOiI5ZGJjN2IzYzNlZjA0MmE1YTRlNjc3MjllOGI4OWQxZSIsInVzZXJfaWQiOjQwM30.B2oKDrTJkK_QE_omFxvEg13ekYJIUamIgS2RaydAhaE	\N	135947	2022-04-26 18:12:33.047597+05:30	Asia/Kolkata	\N	433328ea-c573-457a-8a13-7ee512679644	\N	403
d6ffc2ef-11ac-4030-900a-a43a33bd1556		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5OTk4MDUyLCJqdGkiOiJjNWM5NWY0M2U5ZjM0NjQ5OWI5ZjRiMDA2Yzg3MDRjMSIsInVzZXJfaWQiOjI3Mn0.VBzpyMurdjY-TVl5bLCRE-CvSwZaY6GRpVqo6uDaJWk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MTkzMjU2LCJqdGkiOiI0MDViOWRkODVkMWY0YzI5OWUyZGFiOGU2ZmY4ODgxNSIsInVzZXJfaWQiOjI3Mn0.v_t6VBxamGtCLwAl2XfjrT8wEgI-Cor3vte-jdz11fg	956701	2021-12-27 14:01:06.157635+05:30	\N	\N	61083492-727f-4bed-9c2e-ebda53932414	\N	272
c196291b-5cfe-45fe-99bc-f6b3bc78116c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjczMDk0MTgyLCJqdGkiOiI5NDU5MTY3NzQ4ZDc0ZDEyOWVjNTk1ZmUyMzk4ZDEzOCIsInVzZXJfaWQiOjI2OX0.k-KtOCh8sxG76r5Ue8rikoFyAn-e7jYH760p00LG3pE	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNjQ5MjA5LCJqdGkiOiJmOTJjOGJmZTQxMWQ0MjQzODY5MjgxNDMwZDRiMWI0NyIsInVzZXJfaWQiOjI2OX0.eG_6qERy5LWp3_uszXO769tYJFWf4FgZIQ781eLFdqk	435991	2021-12-26 13:44:09.095631+05:30	\N	\N	9732bb17-6e64-4bf0-b062-827145695dc9	\N	269
e68e9a2c-1925-41c8-bbe8-3dab2601cb25		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2ODMyMjI3LCJqdGkiOiJiYjE0NmNkMjRjYWQ0YTA4OWZkNGYyNjI2OWFlN2UwNiIsInVzZXJfaWQiOjI1Mn0.Z_wSKM1_RfyDqNlvS6XIeHr0ewwfR0wjeOtmuIaX89M	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MDk5NTA2LCJqdGkiOiJjMmMwMGY4MDUyODc0MWFlYTU0MGNlNDMyYTI2NmEyOCIsInVzZXJfaWQiOjI1Mn0.toV3fb87nzCo9r1EwfLR_J5IEC_ggML6LteuWl6Iw3Y	125315	2021-12-18 02:30:04.973878+05:30	Asia/Riyadh	\N	428586a8-6265-45d7-b51a-ce93476eaf07	\N	252
b8b311b7-08e4-40e6-8075-157e4300da01		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNjYxNjMwLCJqdGkiOiJmYWZjZWNmMTRlYWM0MDIxYjJiOTg4YzY0MTI4YzU1MiIsInVzZXJfaWQiOjM3NH0.Ykj0NuTPB-Zp_MUHSYm5oTVzgSHDhe7if9N5HCq9dCo	\N	120834	2022-04-28 01:23:53.173673+05:30	\N	\N	\N	\N	374
6ba8c6f1-63af-4312-9d78-b6691e1c7989		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzMDA4OTgyLCJqdGkiOiIzMjBmODg5NzZhOTQ0NjBkOGE5OWM0YmRiNTI2YTNlOCIsInVzZXJfaWQiOjQwNH0.mPvIOjMCvQoIhah2CzK2NxpHWFa0-l2YhbzBO-PsHKM	\N	663732	2022-04-29 12:19:45.968825+05:30	Asia/Calcutta	\N	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32	\N	404
6ec7e70d-05f6-41f0-983c-0ca8f8d699a2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	624092	2022-05-13 09:38:15.920847+05:30	\N	\N	\N	\N	426
7ec53128-d1de-464d-8446-9685ec83c8a0		\N	535781476	Riyadh	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MjE0Nzk1LCJqdGkiOiI2YWJiNzVlODY2MTY0MDNmOTY1YzNiZjJlMzZjMGQxNyIsInVzZXJfaWQiOjExfQ.Go30GIAPqdMpzhMRtVb9PdCu8TWvonQQWlfCPVQyc44	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NDQ4NDgwLCJqdGkiOiJhNmY4NjE5NzBhMjA0NjgwYjMyNmMwOTY1NGIzOGZjYiIsInVzZXJfaWQiOjExfQ.bxMpkf78QcKy9Cxh0Dej632GSWdljkOncL5tJbtz2Q4	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	\N	6b668a9d-cd65-4821-818d-d167de4616fe	11
e90416f5-6797-4cf6-ac30-cac623488dc7		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	403138	2022-05-13 10:38:24.114334+05:30	\N	\N	\N	\N	429
e43674af-b9da-43e5-a0c4-1e8141f714d3		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	874467	2022-05-13 10:42:37.634027+05:30	\N	\N	\N	\N	432
cca85699-1042-4f31-98fb-c50aad0b3ac8		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	382971	2022-05-13 10:53:36.184476+05:30	\N	\N	\N	\N	437
f4897183-4ee6-4313-a3c2-a93cec5efdb2		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	813844	2022-05-13 10:55:02.978007+05:30	\N	\N	\N	\N	428
5630225d-3d53-4f17-993f-38f387ca34c5		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	466789	2022-05-13 11:34:39.654238+05:30	\N	\N	\N	\N	438
26953ff2-9e56-451d-9d82-bdf17e008c0b		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	303718	2022-05-13 11:51:31.116644+05:30	\N	\N	\N	\N	439
a6403994-4e63-4689-8692-d3fb82650134		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	288944	2022-05-13 12:03:24.14815+05:30	\N	\N	\N	\N	442
3c296ee7-0cd7-4327-bf48-412eaf773f09		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3NzE5Mjg3LCJqdGkiOiIzYmNjYWNmNzAxOTM0ZWE0OGY5MDg0NDc5NWYxMjk5NCIsInVzZXJfaWQiOjM3M30.wSOZO0JuYPMOp8rU_LiQeoSW8OHztj5Zv1jb5bvmGTc	\N	148666	2022-02-27 13:20:19.997566+05:30	Asia/Dubai	\N	\N	\N	373
cc87ecd7-6140-4470-8bd6-f59470dae0ce		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4Mzc0NzU3LCJqdGkiOiI5ZTk3Y2JmYjcwYmI0MmVkODdkNTI1ZGU4NTZmZGI2MCIsInVzZXJfaWQiOjQwN30.qL5CnZa77pCy_zZdHDYAGb7QoxsxO4i1ESNY93V7Myk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4Mzc4MjM0LCJqdGkiOiI4ODc1YmNkN2I0OWE0MzY0ODUwMTQ3Y2NmM2M4NjNlNiIsInVzZXJfaWQiOjQwN30.jiTiQAobsAKnrk8nmfYzh9CMRGL09B7incdzfYAyVr4	808006	2022-05-06 11:39:25.814697+05:30	Asia/Calcutta	\N	3bca8b72-a84d-4279-8c4c-e7834bb00515	\N	407
741fe9b7-fb0f-403a-8e0c-c1d0e13f84d0		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	604486	2022-05-13 12:32:55.3213+05:30	\N	\N	\N	\N	444
7701a857-70b0-4117-8c4a-74c5adb3f8ec		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4Mzk5MTI0LCJqdGkiOiIwMDE4ZDE1NTE3OGI0MjhkYWZmYTdlYjg1YTgxZjhjMCIsInVzZXJfaWQiOjYzfQ.El3DeUxA7xqYEtei-ViIqZNu3Gr-HJJeLkj9KumOz5k	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3ODYxOTg4LCJqdGkiOiJjNDBmMTRhNWQ4NDk0ZTRiOTY1MTI5NTk2NGU5ZjhiZCIsInVzZXJfaWQiOjYzfQ.oat61zJu-iHS6CCzKSmUXGdeix1VFhs6DFI504MsYKw	\N	\N	Asia/Calcutta	\N	b2d008f8-92d6-46cf-81ab-d4aad3f2a238	\N	63
85e84f56-98ea-4d79-894f-724713ee808e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3ODU4OTU1LCJqdGkiOiJlYzRmZWUxNDM2MzI0OWE3YjE4Yzc5MzdhNDcyMWY1MSIsInVzZXJfaWQiOjQ3M30.KRpi6j9McU9bmyku5SLLVxwjGCHs93P1OS-pQimltjo	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3ODU4NzM0LCJqdGkiOiJmNjczZjhlMTEwOTk0OTgyYjBjNTcyMjk0N2JiOGMwYSIsInVzZXJfaWQiOjQ3M30.6ruhsSFulngYYn57J1RbrVXg4FDlBCPPi9ZLWPa44e8	416540	2022-06-27 15:04:52.070972+05:30	\N	\N	79bbad87-9900-4719-adf6-7e8f04b815a1	\N	473
87f0e1a0-fb0b-40c0-a5fe-a67cf590ffa1		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3ODQ4NjA4LCJqdGkiOiI1MzBkMWJkMzEwY2Q0NWRjOTI2NGI5MGVkYmRkY2MwYyIsInVzZXJfaWQiOjQ3Mn0.FaVtY8PZUDc9gZgUyrzCbfEj48NuFlUNipv35hXlkqc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3ODc3MzkwLCJqdGkiOiJmMWE4ZDYxODFhZTA0MjdlYTkwYzgwZTJkZDgyNGI2YSIsInVzZXJfaWQiOjQ3Mn0.L56Mb7FbliHulCcigsf8X1b6QdlWPOTWTp8M4Ym78gc	988055	2022-06-27 11:36:14.348002+05:30	America/Los_Angeles	\N	d0f4a410-e463-4b9a-b619-6c180daa16cb	\N	472
172d4549-992e-4fb2-a18c-279c0cb51319		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDUzMjA0LCJqdGkiOiI1NmRmNzBlOGQ3ZjE0NDliYWJlNzU4NTNlMGY4MGFkMCIsInVzZXJfaWQiOjQ0OH0.LbBGMruSUNFyNowYBXhwSmXEO6wfJxzGqd8VxmJ-z-c	\N	384309	2022-05-16 15:19:17.60427+05:30	Asia/Calcutta	\N	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	\N	448
491e2194-f77d-44ff-a8b5-126760e61304		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTQ5MTExLCJqdGkiOiJlZWIxM2QzYzU0NGI0ODE0OWIxMWZmNDliODVlNzMwYSIsInVzZXJfaWQiOjQ0OX0.nFZ4nzaRipgT2CI8mIlpW0A8xtxbzBDMLmwaf-vu8fU	\N	927103	2022-05-17 14:02:26.079137+05:30	Asia/Calcutta	\N	b8f26e57-72a3-4d3e-a014-5dd28e6dbe96	\N	449
39e8172c-0566-4861-ba26-1d4faf005f4f		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	126953	2022-05-13 10:39:59.319364+05:30	\N	\N	\N	\N	430
f5f340f2-2f5d-4efe-87e0-1a2734e2ede0		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MTM1NDE5LCJqdGkiOiJjMWE1ZTU0NTMwN2M0MWU3YjlhZTliYWIwMmE3YmQ1MCIsInVzZXJfaWQiOjQwNn0.EpuzcR_GuDgeJwuQBpOchebGdhG3KZDlsSK0eV7v0iM	839425	2022-05-01 19:27:00.358406+05:30	\N	\N	7effb1b1-a222-4119-9d7e-05e4142a20a0	\N	406
c78e8fa0-1891-4a92-a0cd-cfe748872232		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	117929	2022-05-13 10:46:43.918899+05:30	\N	\N	\N	\N	433
1834b97f-6c58-4bfa-acba-7f01e4cec20c		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MDM4MzY0LCJqdGkiOiIyZDRkMTQzYzAyNjg0MjBlOWY4MTAyNzNjYWFjN2Y1MCIsInVzZXJfaWQiOjQ3NX0.lzxAnzHjRm6tWjnBRtjjUh96vPEOzB0_Xw1CG0KMmKk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDcwNzU1LCJqdGkiOiJlZDA1ZjM1ZWYyODc0ODk2YTQ2Y2U1ODg0ZDliYTIyNyIsInVzZXJfaWQiOjQ3NX0.nRi-o9rmr4rfN1w_F85H_1kD67ib8iqiv-rWufddNFI	818285	2022-06-29 16:52:25.846181+05:30	Asia/Calcutta	\N	83c52e5b-4e94-4bde-b5a5-95699451982f	\N	475
324b6dd2-8845-48ae-bf70-2950df15f490		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTQ5OTIxLCJqdGkiOiI4ZTMxMjg1ODA2YTk0NWU5OWUwZjk5NGExNmM1NDM3NyIsInVzZXJfaWQiOjIxfQ._EyBt2Jbz1M_UWxSUSG44Md5UX4U6o6ZW_nc09vlfUY	\N	\N	\N	Asia/Calcutta	\N	6601a605-41ec-459f-aff7-82340b2d3cc8	\N	21
418ee829-0e3e-4c39-bbf9-aadb15d7bceb		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3NTMyNjUxLCJqdGkiOiJkNDJjY2RlMTJjMGU0NWE4OTg5OTU2NDBkNWRiOGY2YSIsInVzZXJfaWQiOjM1Nn0.SHPpszrtA16eSqLC8SXhYoHfZrqneTV6jRDEb8y20p4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MTk0Njk2LCJqdGkiOiIyOGI5ODE3ZTdlNDk0MTdhYjAwNDE0MjVjZjU0ZjY1NSIsInVzZXJfaWQiOjM1Nn0.KuAMuh_mTMKjbqI6aMYKNg3v5vUQU_4QPbEFrXtdTVc	704484	2022-02-08 16:59:15.306597+05:30	\N	\N	34e83d57-f92a-49c0-b54a-84a72b05a6e2	\N	356
c6558a56-261b-455e-98e9-12fbe59dfd5d		\N	555873301	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUyMjE3LCJqdGkiOiJhYTg2YmVlMDU5MGM0NDkzYjAyODcwYzVmOTJlZjgzYiIsInVzZXJfaWQiOjE0N30.zjNABw5k0I5yQn7eCvvP-r-xNuN7NtflFeUrfrXGt44	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4ODE4NDU5LCJqdGkiOiJkZjUzNDNlZWNhYWU0NmI1YjI5MmQzOGVlYmU1YzA2ZCIsInVzZXJfaWQiOjE0N30.aCGdYhK0H-YTtyJHvy7eDmmncVl6f3keXd7aioSrRXk	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	e8749c1f-0a82-4852-be97-56990b990e76	f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	147
2ba21b02-7714-45e5-91a2-29609bd294b1		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg2NTg3NDE5LCJqdGkiOiJkMWQzNzI2YWQ1MGU0ZWY1OGM2ZDNjMTMyODJlMWIxZiIsInVzZXJfaWQiOjQ1OX0.2vGJmE6gku_y327rB67JsHBE7yVmO767mk23Xw869ow	\N	673419	2022-06-10 11:48:23.553006+05:30	Asia/Calcutta	\N	7d124276-ca3e-4a70-9b2d-f9257641b881	\N	459
8b5f8514-d907-41fd-946e-84e76fdf380a		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzOTU5Mjk1LCJqdGkiOiIxYWRhZGQ1NGNkNTk0MDQxYTQ3ZDA3ZmJjYzQyN2FlZSIsInVzZXJfaWQiOjQ0MX0.JZYHwGnpGlOutUzPuL_Lu7HzgY2yGSR1n-EsrN_Wyq8	\N	395999	2022-05-13 11:55:16.939804+05:30	Asia/Calcutta	\N	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	\N	441
465c0459-21b0-44a2-8f8a-f3a1a258281e		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	231512	2022-05-13 11:54:40.572448+05:30	\N	\N	\N	\N	440
ee8fe123-2cf8-4513-a252-dee0392ae274		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	563688	2022-05-13 12:12:12.843177+05:30	\N	\N	\N	\N	443
29ba294f-8f1d-461b-a99c-ba42d3928218		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	272069	2022-05-13 13:31:03.111709+05:30	\N	\N	\N	\N	445
8e6e5e59-f833-49a6-b62a-5a7f1846270f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjQyNzM3LCJqdGkiOiI2YTVhZjA3NjBkNDI0NjAyYTVjYzZlZTkxODhkYjIxOSIsInVzZXJfaWQiOjQ3OH0.qciVa4Sjl1I1zd6dj96NuP-jmhhf5IeltHkVBhEX63U	\N	346072	2022-07-06 16:49:30.915019+05:30	Asia/Calcutta	\N	899b926a-b451-402b-9b8f-c0bc4bea3fc6	\N	478
caf93b2a-e255-4973-92f1-1522d4e2ebe1		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODExNjE1LCJqdGkiOiI4MGQyNDg4MjZhMDM0M2NjODc4ZjMwNmEwMGY4MjhiZiIsInVzZXJfaWQiOjQ5NH0._wPoojLwFk95u6yJtj7QBpjZZikjWZHPWiZ9zlJjMAM	476564	2022-07-08 15:48:53.344755+05:30	\N	\N	ed268c11-b719-4f01-9907-e8328d736881	\N	494
f31711fb-57b1-4765-a845-67be6a4b4836		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODAzNzI2LCJqdGkiOiI4OTk3MjFjYzNmZmU0ZTg5OTViYzEyMWJmZmEzNzdiOSIsInVzZXJfaWQiOjQ4OX0.VKpBaNvJaWIK6DbP59d_thRAdeKzANuR6FLZ00ffc8o	453857	2022-07-08 13:26:54.578342+05:30	\N	\N	9153785d-27de-4396-a461-30f90ed6746c	\N	489
824c07df-39da-4aa7-8ea8-ebd64f728f8a		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODA1MTY4LCJqdGkiOiJhOTVkZTFkYmQwOWQ0MzljYmE1MDUzZWEyNTg1ZjRhOSIsInVzZXJfaWQiOjQ5Mn0.7MJNLmX7SyRU1oA0u2hXYVJBD_6HWU8mdmevzAnbUIE	508858	2022-07-08 14:02:03.237504+05:30	\N	\N	4e6f539f-f339-44ab-920f-dc5975efcf6c	\N	492
8afff949-3cf5-4ec1-8b9f-ade33e5d313c		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODA3MDAxLCJqdGkiOiI2MDNkOTVkMjViZjI0YzljOWEzMGQ1NjNhYjEzMTg3MCIsInVzZXJfaWQiOjQ5M30.LM1Tywxq2gs5dCryInWg3fo7tNUyEj5AgvYlaIuRu44	531221	2022-07-08 14:28:21.071541+05:30	\N	\N	\N	\N	493
a6f5b798-f9fa-4ff5-80fb-207640fdff79		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDExMTIxLCJqdGkiOiJmNzc3NjE3ZjFkMjc0ZWQxODYxNWE2M2NhMTJmNTRkMSIsInVzZXJfaWQiOjQ2M30.bwSpwnVksgCtxK8G2FmD0eUMiTciJ6uv-0C5GUEmUpk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzQxMzc1LCJqdGkiOiIzNGEzMTkwNDRjODQ0Yzg4YjZkYmI5MzQ0NDAzYTIwNyIsInVzZXJfaWQiOjQ2M30.OHC5B2ygdltxdgobhtfXAJavLltrzutnmavc_Xkhcsk	412706	2022-06-14 01:36:13.319849+05:30	\N	\N	54ffbb90-97eb-4c45-b1f7-5407d9e417a7	\N	463
dfb92440-a525-4bda-b71e-e9a39fd7942f		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0MjY4MTM0LCJqdGkiOiI1YWI2ZWZjYWQ1NGI0ZDc5YjZjMTM5ODY2ZmJiNDYwMCIsInVzZXJfaWQiOjE5OH0.6HB9AsM52gWAIGdeMxp_ixIe1PVMtE6om8Sz-qwIBSA	392667	2021-12-03 22:07:42.279313+05:30	\N	\N	821d06a3-3da2-43fe-9e61-1bfd714c36cd	\N	198
24af5284-1575-431c-98ac-0daa85fe5d54		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NDU5OTM4LCJqdGkiOiIxZjA1Nzg3YTEzYTI0MjdkOGI0N2E1NzU5OTQzZGFkYiIsInVzZXJfaWQiOjE0OH0.-jVN7-8lpT8T_va3QxguWtG5C8bewYPFufJA4TLUOLA	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg0OTExNzkxLCJqdGkiOiJjODllMGRjZjc0Zjk0NWUxYjBmZTAzNzMyZTIxNDM0NyIsInVzZXJfaWQiOjE0OH0.5GgVjhi5lzG7aeM3xrMYdhgqFh-FtstKGpG2oNJOFLI	717847	2021-11-25 17:37:55.510991+05:30	Asia/Riyadh	\N	379a9d10-ed8e-4ee3-81dc-09794d5091d2	\N	148
fb5eccbe-942f-4eea-9df0-fdfcec242883		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3ODk0NTM0LCJqdGkiOiJjNDEyZGMwOWI0ZDk0ZmViODBkZDJhMWI4N2NiYzIxZCIsInVzZXJfaWQiOjQ2Nn0.iWkdsyFTZsWdKr1EGP1xvhdYMkV4ZMqp_v0HvBzju04	\N	599390	2022-06-20 17:50:00.550271+05:30	Asia/Riyadh	\N	54ffbb90-97eb-4c45-b1f7-5407d9e417a7	\N	466
3497eeba-fd6a-4f1d-8c62-a9ec86cb7215		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDYxMDQ0LCJqdGkiOiJmYzkwMTBjMTc0ZWE0MWUwYjZjODgxMTU1MDk4NTk0MiIsInVzZXJfaWQiOjE4OH0.hG9JxR70YxmuVSAupAVOL6gQLSPcRSVWNRMMR8ighTQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NzAwMjA0LCJqdGkiOiI2ODIyNDUxM2IwYTg0ZDM2YTBlYjRhNDNhNTJlZGM5OSIsInVzZXJfaWQiOjE4OH0.4C6NsucJWCgAHKdo_3I0H4hZIZIIzHNyiDMcdKc9AGY	337389	2021-12-02 21:19:30.844674+05:30	Asia/Riyadh	\N	821d06a3-3da2-43fe-9e61-1bfd714c36cd	\N	188
555ffab6-23a6-4a02-b94d-138caa42ba60	profiles/sizekoodi_ybVlqoB.jpeg	\N	6595563523	\N	\N	None	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTQ1NDk2LCJqdGkiOiI5MjQwNDgyODVhOTg0ODIzYWIxZGFiZTljMmI4YTFmMSIsInVzZXJfaWQiOjM0OX0.H979U3KXy1lw2U0RPa8k2ojYc60b5PPwdEiqCFazyp8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4OTQzOTQ1LCJqdGkiOiI0NTU5M2IxYzA2ODM0ZWNmYThlYjQ2MDE2MGY1YTQ1OCIsInVzZXJfaWQiOjM0OX0.xPmmWta2bBkdYuVC7X8xazhImU6JKYV4Bhy-Q_UoqWI	321403	2022-01-28 11:43:56.190514+05:30	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	e837c6a7-288a-4199-8b61-cc7905e54451	19b4fb50-6882-4d29-81cc-0591191f25e6	349
3216685d-bb27-47fb-bc91-2dd9efd1cec0	null	\N	\N	\N	\N	male	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxNDE3MzU2LCJqdGkiOiI5YmNkYjExYmMwMGY0ODI3YmNhMWQ1OWM5ZDhmZGZkMiIsInVzZXJfaWQiOjM5MX0.CCAoRpPS_wvwJemTQo1zAUn98Jqg23yTAVp_2gKphOM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3OTcyMDA5LCJqdGkiOiIxY2ViZWNjMWIzMDk0NzFhOGE5M2RiODQwMjM3OWFlOCIsInVzZXJfaWQiOjM5MX0.mT0j1EjtVuwZuyKK--jB3_nv6KPBvfl3v5NC9fS4jDk	962878	2022-03-25 20:08:19.165082+05:30	Asia/Riyadh	30f8c506-e27a-476c-8950-b40a6461bf61	b7c83b6f-83bf-466a-8acc-0663a8dc32f7	19b4fb50-6882-4d29-81cc-0591191f25e6	391
41a6293a-8749-4aae-ad98-5b1850982798		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUxMzk0LCJqdGkiOiI4NTA2ZjJhMmE4NDg0MjAzYmYxMzgzOWE3ODNhODY5YSIsInVzZXJfaWQiOjYwfQ.7-BfKgTVKi12DU6SMQS-fSh55lXHU2Uyp2SX20oKGnI	\N	\N	\N	Asia/Calcutta	\N	85c625ee-110c-450b-8f3a-4b8ce24c6535	\N	60
67aad890-ac49-4fde-a09f-61e5dad03cc5		1998-06-12	9744699138	calicut	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NDcxMTM0LCJqdGkiOiJjYjI2NjBkNWJlZDQ0ODUwOWNjNGNkZDc4MGIyZjY2OCIsInVzZXJfaWQiOjM2fQ.B5G7W9qeLp0S6pw1E4_rFnNepAkx_2UsHuxU2S0_EXM	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc4MjE5NDEzLCJqdGkiOiIwMzIzNmJkMTAyM2E0NjRiODFjYjA0YzgyNGVhMmVmNyIsInVzZXJfaWQiOjM2fQ.dKz70TVOqXaHmnXe8M866mA74t37h_VFLylvHdrnF3Q	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	54ba4163-584f-4d3f-bb02-120b9800ba97	19b4fb50-6882-4d29-81cc-0591191f25e6	36
b4daa540-803f-4117-8875-100cf1c9a430		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgzNDc2MjU3LCJqdGkiOiJmZTBhMmNlMjNkMmY0Y2FmYmQ5YmNmNjNkZjFhMzA1ZSIsInVzZXJfaWQiOjI2NH0.j9kPBIL0dFjV9VKYrLrz7VmjRMf54At8JeA1rEnRVJI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjcxODk5NjU0LCJqdGkiOiIxMmIxYWQ3OWMyZDk0OWNlOWE3YzIyMWJhNWUyN2U4ZCIsInVzZXJfaWQiOjI2NH0.mX0k0GE-5jLjWAHfuoDhgb96Ra9y_X7_OuozcYglxZg	474519	2021-12-24 16:55:25.280264+05:30	Asia/Calcutta	\N	739321d9-3357-40ad-9c07-c656cef04bd1	\N	264
8795b3d7-8e15-4e52-a14b-ef4c7a5e743f	profiles/position-marker.png	2021-04-01	123456789	calicut	pooor,balussheri	None	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjMxNjMyLCJqdGkiOiI5NDA3ZDZkNzQ2NzI0ZWM2YWExNTQwYzA1NWJiMDA5NCIsInVzZXJfaWQiOjJ9.uqzKuc14fwPmWPcjhn-CwmtzO-_MFxZjWz_kPlBWDjI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgyNTM3OTkzLCJqdGkiOiIyYTI3MzA0ZTJkMTI0MzBlYjNmOTU4MWM4Zjg1OTUxZSIsInVzZXJfaWQiOjJ9.d_4LZQ6UBJO1pH_E_AAqrH_X41olO0_gBsets3x60PQ	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	6e8826fa-9655-4a24-b49b-5953141ab63e	19b4fb50-6882-4d29-81cc-0591191f25e6	2
ff3c4d84-6ddd-4956-b6a9-149c023a7eb5	profiles/image_5_reCjcvP.png	1988-04-14	9995937444	خميس مشيط	ابها	male	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjQyOTMwLCJqdGkiOiJlYWZhMDY3NjM2NWQ0OGUxYWY5ZmViNTkzYjljMjZkNyIsInVzZXJfaWQiOjgyfQ.F3m6S8mcCsnbZpUsTaDO_Ledju9wGhxkrWkldAfl_KU	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjQxNDkzLCJqdGkiOiI4Y2E4MzY2YmRlZWU0YTdkODA0MDk0MWMzNjFlMzE3MyIsInVzZXJfaWQiOjgyfQ.Zk0OvgVTLfxWzhD7svcXSl9kX7lgmDQ8I5TUQjN2oAk	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	e1c64904-40fc-4693-958f-184d2017ed65	2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	82
8fa4f735-4133-4e96-b53a-04108d2f37bd		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	986212	2022-05-30 11:38:15.984804+05:30	\N	\N	\N	\N	456
3b10b09d-060d-4319-81b4-fd3281db8c93		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	250797	2022-07-09 13:29:11.444311+05:30	Asia/Riyadh	\N	\N	\N	495
fbddbd02-63bd-4851-a0b0-155904d1ff4e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzkxODAzLCJqdGkiOiJhZWJlOWQ5ZDZmOTY0MzM5YmJhZmJkZjE3YzNiMWVkMyIsInVzZXJfaWQiOjQ4Nn0.4dxPfacKWP_lhL6psQ4Qk32bWP-mnAQTNu8SGKsSOvk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzkxODYyLCJqdGkiOiI0NWMzYzVkMzkxOTA0YmY4YmE2MWYzMzU5NzJlZDJkYyIsInVzZXJfaWQiOjQ4Nn0.tATkFkPoHLBbnXHj2a0ok-kEzyhM15FIE2pEujp7Xn4	183082	2022-07-08 10:16:54.149648+05:30	\N	\N	\N	\N	486
6ff61ae3-e905-4473-be9e-70abac963a6e		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4Nzk0MzgzLCJqdGkiOiJkYTE3OWQyNGJhMTU0ZjYyYjkxMTIxMmY2NzNiOGZhYyIsInVzZXJfaWQiOjQ2OH0.kpWpJWkHyCHwfm4Cn0So0FO2K8Gk0EWtF1Fhr__SL_I	\N	806592	2022-06-23 11:37:45.497737+05:30	Asia/Riyadh	\N	66acff5c-29f2-483c-a9e7-018b381d00f8	\N	468
e33d5f8f-0731-4db6-b55f-58c70f3281df		1978-06-05	502389892	JAZAN	HAYYAL MATHAR	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4OTI2MjgyLCJqdGkiOiI4ODYwMjllNDlmOTY0NDU1YjA1ODk5MmFiMzU4ZWRmZCIsInVzZXJfaWQiOjN9.dFEZ8LZ5OkpeDSggqZSDVXIU8SHYwnq5g2z13oHyqs0	\N	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	2064907b-3dd6-4efe-a449-d2f3ad4bf9c4	12f2f7fa-e007-4170-905a-30b534ab3363	3
58981ebf-66ce-4ec0-ba31-8cd058b3ede3		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1NjA1MjcxLCJqdGkiOiJkMDg4NjU5ZTBkYTA0MjJiOWZkZDEyMDFiMzE5YTY2OSIsInVzZXJfaWQiOjM3N30.cxKN5nhoIpePpt18rvaF3h7V68DbzIZLz49aHW6ejr0	292571	2022-02-27 14:26:32.345205+05:30	\N	\N	\N	\N	377
914e1fdd-4090-49dd-a2a2-328e0ec258e3		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3Mjc1NTYwLCJqdGkiOiI2OGNkM2U0ZjM1NzQ0MzgyOTk5NDNhODdhMjQ3MTNmZCIsInVzZXJfaWQiOjQ2N30.llfzTMwroLLGYzF9q5QtccbkOIuaLo4lFwdVAlxYb1k	\N	403111	2022-06-20 21:08:35.907006+05:30	\N	\N	a147b367-1ae7-4130-afa0-653e2e4bd658	\N	467
419b1193-88c2-406c-98b7-ff0a487a3f24		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	186455	2022-06-29 09:47:13.950489+05:30	Asia/Calcutta	\N	\N	\N	474
fe610ef6-53cf-4670-bc29-f17d988b737d	profiles/fOTSC3j-running-wallpaper-desktop.jpg	\N	\N	\N	\N	male	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3OTI2MTE5LCJqdGkiOiJmYzgyMTNiNzQ5MTA0YjE3YjE4ZDdiNjhlZDVkNWMxNiIsInVzZXJfaWQiOjQwfQ.kGGhhnzdD-ia8ctxk2gM3JAC14ofbL-bYdXRFkxzBzs	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3OTI1ODA2LCJqdGkiOiJiZDdkOTNmOTFjOTY0MWQzODdiYmYyMDM2YThlOWM3NCIsInVzZXJfaWQiOjQwfQ.R0Mld_9PwAuElntjEU8oF9tSeNsvR9IPQpfxtKDF0PM	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	355182fe-5711-4e3f-933f-0f7309caa27b	19b4fb50-6882-4d29-81cc-0591191f25e6	40
aeed967c-057b-4e3d-aa63-2e4d9952e3d1		\N	\N	\N	\N	\N	\N	\N	english	\N	\N	978759	2022-07-06 16:52:54.668848+05:30	\N	\N	\N	\N	479
6467c567-1c74-463f-89bd-6ff2757b59c7		2021-10-27	255855	ciry	sdfgh	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUyNzY0LCJqdGkiOiJmYzAwMjMxYWFlNmE0N2U4OWMxYjc5MjdlM2ZmNmYxNiIsInVzZXJfaWQiOjYyfQ.0l_1ZRw0b8GE4BKx3fkHjTIqnVcVHpKmx3C2Ou0h5Cg	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwOTMxLCJqdGkiOiI2OTVjNGI0ZjI3Y2M0ZmUxYWQ5ZWM2ZGU3YjllNmJiNiIsInVzZXJfaWQiOjYyfQ.LjvCq_p8rXIIWEG26_wefxnKIpi40UJdSmahRYOV2cI	\N	\N	Asia/Calcutta	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1	d4ca8637-696b-4ff0-8b88-991774b9547c	6ef7e793-e7fd-404b-bc81-a38167dc0d92	62
970442aa-ae27-45e0-a22e-8269d4d53d6c		2021-01-01	966566685397	Riyadh	Aziziya	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NjY0ODk4LCJqdGkiOiIxMjUyMjRmNTRmZmU0M2EzOTlkMjBmZDc0MGRmNDIxNiIsInVzZXJfaWQiOjIzfQ.5-OzGYO655skG7KNi3CqIrOdLw0ihDpWdmDc5MX-w0o	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxODEzOTQwLCJqdGkiOiI2ZWZkNGM0Y2ZjOTg0NWU2YjY3Yzk2YTAyMmNkNTZiNyIsInVzZXJfaWQiOjIzfQ.RYGaFsqbnliEiEUi5rTlTUcEBq17ccbwVXi9YudzoaE	\N	\N	Asia/Calcutta	94e4ce66-26cc-4851-af1e-ecc068e80224	c165f46b-02f4-4632-85ad-2abe55cf40d7	6b668a9d-cd65-4821-818d-d167de4616fe	23
741bf597-cbe4-4c78-9bec-90d7be5d8daa		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MTc4NDI0LCJqdGkiOiJjN2Y1ZmM5ZmFjMjA0OGY5YTljYWM5MDg2NDc5OGY1OSIsInVzZXJfaWQiOjQ3N30.5_NNP0TJLHFFcFcxNxJ6iW0ZkGfgSwG47FqeSCBBzZQ	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4NzAxNzU0LCJqdGkiOiIwYjliYjkxODFiOTM0M2MwOWUxMDViY2ZjZGQ0MWNkNCIsInVzZXJfaWQiOjQ3N30.L8DAXXNlToAQEu5bUE5Kueyys7FBC6-S8TXbjFfCa98	313110	2022-07-01 01:38:42.284481+05:30	\N	\N	f5ce00d5-5b58-4b71-93a5-511582cca0d2	\N	477
9da89b88-601e-4268-86cf-fa7c220bb62a		\N	548672476	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTI0MjQyLCJqdGkiOiJlODkyZmViODUxYzY0MWYxYjZmNmE0Y2Q0NDAzNzNhYyIsInVzZXJfaWQiOjM5N30.Dwu67xMkgm9ID-225yvpIPOGtuCxxDs0E0zpdBoGXIo	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MjEwNzE0LCJqdGkiOiJlMTE0Y2Y3ZTFiOWQ0MTE3ODhkZTYxZjQzOTFhMzYzZCIsInVzZXJfaWQiOjM5N30.4LLuXRuqo_cQRqM1HtEHvnqcJKUnG33aw_w5G6cxx2g	833458	2022-04-04 19:41:27.56398+05:30	America/Los_Angeles	\N	fb5512d5-8884-47fd-9aef-8dbe7fd0a472	\N	397
0a677741-a780-4101-a848-ecdfde36df6e		\N	\N	\N	\N	\N	\N	\N	english	\N	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4ODAzNTg5LCJqdGkiOiI3ZWIyZmNjNjVjMjM0ODE4YTdiOWM5YzcyZTRmOWYwMCIsInVzZXJfaWQiOjQ5MH0.cbstDiUEkqdrXnLrubFd_GDzm1-8iboVOca3J-yE78Q	743156	2022-07-08 13:35:26.744769+05:30	\N	\N	3abd97e5-4720-4f71-bcc0-cf4c265e9f67	\N	490
06baff7f-81a3-4580-9c5f-ab8ced555747	profiles/IMG_8088.JPG	\N	9995937444	\N	\N	male	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4MTg5NTg4LCJqdGkiOiI5ZGFkYTJiYjg5OTY0NzA5OTc4Y2YyZmZjOGNlMzQ2NCIsInVzZXJfaWQiOjMxfQ.mMSE8hpgIBxmJBowquAgOqwsO9GY_e_rxHgKnWIHHdk	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc2NTI1NTc3LCJqdGkiOiIyNGM1ZTFkM2ZlZjc0NTVmYjUyZTdiZDFkYmVhODA2ZiIsInVzZXJfaWQiOjMxfQ.41noUfq0fXwXxYVHjdJa0keWRyx2d7qnkI0tPosKDWQ	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	ded7822a-1355-40c1-aa0d-2335153d4d08	19b4fb50-6882-4d29-81cc-0591191f25e6	31
7cedb3d1-e9d9-4ef6-833c-8c305dd65511		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDkzOTMxLCJqdGkiOiJkZmU5YjkxODBiN2Q0OGNjOWEwZmI5Nzk3NjhmOTczZiIsInVzZXJfaWQiOjM3Mn0._XbKg7kt1n-qgEZzEd1Uw6QNouLYorS0K2M4SBIoOfw	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxNjU2MDE4LCJqdGkiOiIyZTViOWU3ZjIwYzE0ZDEwYmRkNzI1NzljYmUwYWM4MSIsInVzZXJfaWQiOjM3Mn0.RJlMh7-O1iH8RqJkKT8u2alsMwgvPT7uSst_4Q8l27Y	382690	2022-02-27 12:55:18.926311+05:30	Asia/Dubai	\N	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	\N	372
2a27bb9c-848f-49da-90be-35afcb76d3f8		1999-11-10	7994874909	calicut	parappurath(H)	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTM5NDYzLCJqdGkiOiIwYzFmNzVhYmM4NzQ0NjU4OWRmYzk0MTNlMzEzMGIzNyIsInVzZXJfaWQiOjQ2fQ.GtJPAGamG-v9ohf1Zregbr1s7dsC3pbTsxoubucafU8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MDYyMDIxLCJqdGkiOiI0OTEyNjdlYmY5Y2E0M2M3OWI1MzZlMGJjZGZhZWY0MSIsInVzZXJfaWQiOjQ2fQ.jnFgR8B5NXxMk119_nsV9nZsH2KKzHrUrzV5l5Soq0g	\N	\N	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	19b4fb50-6882-4d29-81cc-0591191f25e6	46
ee397856-295b-46c0-9d79-9ab050b7c30f		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTQwMDA4LCJqdGkiOiI4MmI0Y2Q3MTU4YjE0ZmVhODFjNGY4Mzc3YTE5ZmJjOSIsInVzZXJfaWQiOjUwfQ.mSUsZEpj8N2tiRPvSz-9W4IVn8URPr9TJ70IDHfQASc	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgwOTUzNzU5LCJqdGkiOiI5N2E2MDJhYmI0ZTc0MGRhODU1ODVjZjNhZWJjNTIyNiIsInVzZXJfaWQiOjUwfQ.vO6BwOOLTuXPDpfYo0czffp0B77mmaErGk1x8rnCVlM	\N	\N	Asia/Calcutta	\N	54ba4163-584f-4d3f-bb02-120b9800ba97	\N	50
e9a4de41-cb2e-48d9-8932-de3e12c13b40		\N	\N	\N	\N	\N	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg1MjkxMTM2LCJqdGkiOiJmNWJiMWI4ODRmNWE0NjIzYTJhOTljZWM0NWE3NjhlZCIsInVzZXJfaWQiOjE2MX0.G34HsOAmRo_3OAmIU4Ozd5U6icDMQLO0U0nAXP-RXaI	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg4OTIzNjk0LCJqdGkiOiIzOTY1MzJmOGU1NjA0ZDlkYTdkOWI2N2ZmNGI3NjRmOCIsInVzZXJfaWQiOjE2MX0.YKMpg7gbu-3rJ4RqYkQAWEm0CC-zsG4zGpQx1kAk1aM	418544	2021-11-29 21:50:19.009645+05:30	Asia/Riyadh	\N	5b57265f-5913-4212-b405-387a7c5bbf56	\N	161
d0099d91-22d4-46bb-9240-d4c2347622f6	profiles/OIP.jfif	2021-10-05	9089786756	doha	CC gg kk	female	\N	\N	arabic	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTQ5Nzk0LCJqdGkiOiI0OGEzODk1ZDBiNGM0MjdmYTliMDYxNWNhMzAwMmM0OSIsInVzZXJfaWQiOjc2fQ.vg1YlJF8sYrixe9MFVPXMusJ1mveAxI90BvFa80g9QA	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3MDAwMjYwLCJqdGkiOiI3YmMwZmQ5YmUwNjc0MmIxYjk5YjI3NTY0NjM3NDQ5ZiIsInVzZXJfaWQiOjc2fQ.5jh407pH8PhpP-whh-KPe2fcmVS8UiYVN957urzdKnQ	\N	\N	Asia/Riyadh	94e4ce66-26cc-4851-af1e-ecc068e80224	4f684660-13b2-4823-bc13-d2edea17dbb7	7f7914af-7061-45d7-9716-390bf00d9c94	76
694ca116-2757-4db7-83b5-934652afa144	profiles/download_1.jpg	\N	\N	\N	\N	None	\N	\N	english	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTUwMDAxLCJqdGkiOiIyMmYwOTQ5NTkxY2U0ZjlkOTUxOTY1ZDdkYzZjMzc5NiIsInVzZXJfaWQiOjM4Mn0.zIA6ARL52LyZnPPNEo2Ib58gwd2_MRfDe0rJQIA07R8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3NTIyODI3LCJqdGkiOiJlMDJhYjRhZGVmNDA0MTBkODYwNzJmMzkyODdlZmRiMCIsInVzZXJfaWQiOjM4Mn0.FPGJ13noP5clVyyec7ebVKDtLb5c74V2wNtvuIVvWdw	428636	2022-03-14 16:08:21.428574+05:30	Asia/Calcutta	30f8c506-e27a-476c-8950-b40a6461bf61	cdb7a13a-74bc-4c7b-8859-e367baa33a6f	19b4fb50-6882-4d29-81cc-0591191f25e6	382
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	registration	registrationprofile
2	registration	supervisedregistrationprofile
3	mailqueue	attachment
4	mailqueue	mailermessage
5	django_rest_passwordreset	resetpasswordtoken
6	users	companyemployee
7	users	companyfinancialyear
8	users	databasestore
9	users	customeruser
10	users	companyaccountledger
11	admin	logentry
12	auth	permission
13	auth	group
14	auth	user
15	contenttypes	contenttype
16	sessions	session
17	brands	businesstype
18	brands	category
19	brands	companysettings
20	brands	country
21	brands	customer
22	brands	department
23	brands	employee
24	brands	language
25	brands	leave
26	brands	salarycomponent
27	brands	softwareversion
28	brands	softwareversionlog
29	brands	testformmodel
30	brands	usertype
31	brands	workordermaster_log
32	brands	workorderdetails_log
33	brands	warehouse_log
34	brands	usertypesettings_log
35	brands	usertypesettings
36	brands	user_log
37	brands	usedstockmaster_log
38	brands	usedstockdetails_log
39	brands	unit_log
40	brands	transactiontypes_log
41	brands	testimage
42	brands	testformsetmodel
43	brands	taxcategory_log
44	brands	stocktransfermasterid_log
45	brands	stocktransferdetailsdummy
46	brands	stocktransferdetails_log
47	brands	stockreceiptmasterid_log
48	brands	stockreceiptdetailsdummy
49	brands	stockreceiptdetails_log
50	brands	stockposting_log
51	brands	stockadjustmentmaster_log
52	brands	stockadjustmentdetailsdummy
53	brands	stockadjustmentdetails_log
54	brands	state
55	brands	shortagestockmaster_log
56	brands	shortagestockdetails_log
57	brands	settings_log
58	brands	salesreturnmaster_log
59	brands	salesreturndetailsdummy
60	brands	salesreturndetails_log
61	brands	salesordermaster_log
62	brands	salesorderdetailsdummy
63	brands	salesorderdetails_log
64	brands	salesmaster_log
65	brands	salesestimatemaster_log
66	brands	salesestimatedetails_log
67	brands	salesdetailsdummy
68	brands	salesdetails_log
69	brands	salarykitdetails_log
70	brands	salarykitdetails
71	brands	route_log
72	brands	receiptmaster_log
73	brands	receiptdetailsdummy
74	brands	receiptdetails_log
75	brands	purchasereturnmaster_log
76	brands	purchasereturndetailsdummy
77	brands	purchasereturndetails_log
78	brands	purchaseordermaster_log
79	brands	purchaseorderdetailsdummy
80	brands	purchaseorderdetails_log
81	brands	purchasemaster_log
82	brands	purchasemaster
83	brands	purchasedetailsdummy
84	brands	purchasedetails_log
85	brands	productupload
86	brands	productgroup_log
87	brands	productcategory_log
88	brands	product_log
89	brands	product
90	brands	printsettings
91	brands	pricelist_log
92	brands	pricecategory_log
93	brands	posholdmaster_log
94	brands	posholddetailsdummy
95	brands	posholddetails_log
96	brands	paymentmaster_log
97	brands	paymentdetailsdummy
98	brands	paymentdetails_log
99	brands	parties_log
100	brands	openingstockmaster_log
101	brands	openingstockdetailsdummy
102	brands	openingstockdetails_log
103	brands	mastertype_log
104	brands	loggedinuser
105	brands	ledgerposting_log
106	brands	leavetype
107	brands	kitchen_log
108	brands	journalmaster_log
109	brands	journaldetailsdummy
110	brands	journaldetails_log
111	brands	generalsettings_log
112	brands	generalsettings
113	brands	flavours_log
114	brands	financialyear_log
115	brands	financialyear
116	brands	excessstockmaster_log
117	brands	excessstockdetails_log
118	brands	employee_log
119	brands	designation_log
120	brands	department_log
121	brands	damagestockmaster_log
122	brands	damagestockdetailsdummy
123	brands	damagestockdetails_log
124	brands	companysettings_log
125	brands	color_log
126	brands	color
127	brands	brand_log
128	brands	branch_log
129	brands	branch
130	brands	barcodesettings
131	brands	bank_log
132	brands	attendancemaster
133	brands	activity_log
134	brands	accountledger_log
135	brands	accountgroup_log
136	brands	accountgroup
137	brands	workordermaster
138	brands	workorderdetails
139	brands	workingtimelog
140	brands	workingtime
141	brands	warehouse
142	brands	usertypelog
143	brands	usertable
144	brands	usedstockmaster
145	brands	usedstockdetails
146	brands	unit
147	brands	transactiontypes
148	brands	taxtype
149	brands	taxcategory
150	brands	stocktransfermaster_id
151	brands	stocktransferdetails
152	brands	stocktrans
153	brands	stockreceiptmaster_id
154	brands	stockreceiptdetails
155	brands	stockrate
156	brands	stockposting
157	brands	stockadjustmentmaster
158	brands	stockadjustmentdetails
159	brands	shortagestockmaster
160	brands	shortagestockdetails
161	brands	settings
162	brands	salesreturnmaster
163	brands	salesreturndetails
164	brands	salesordermaster
165	brands	salesorderdetails
166	brands	salesmaster
167	brands	salesestimatemaster
168	brands	salesestimatedetails
169	brands	salesdetails
170	brands	salaryperiod_log
171	brands	salaryperiod
172	brands	salarykit_log
173	brands	salarykit
174	brands	salarycomponent_log
175	brands	route
176	brands	receiptmaster
177	brands	receiptdetails
178	brands	purchasereturnmaster
179	brands	purchasereturndetails
180	brands	purchaseordermaster
181	brands	purchaseorderdetails
182	brands	purchasedetails
183	brands	productgroup
184	brands	productcategory
185	brands	pricelist
186	brands	pricecategory
187	brands	posholdmaster
188	brands	posholddetails
189	brands	paymentmaster
190	brands	paymentdetails
191	brands	parties
192	brands	openingstockmaster
193	brands	openingstockdetails
194	brands	mastertype
195	brands	ledgerposting
196	brands	leavetype_log
197	brands	leavedetails_log
198	brands	leavedetails
199	brands	leave_log
200	brands	kitchen
201	brands	journalmaster
202	brands	journaldetails
203	brands	holiday_log
204	brands	holiday
205	brands	flavours
206	brands	excessstockmaster
207	brands	excessstockdetails
208	brands	designation
209	brands	databasesynctest
210	brands	damagestockmaster
211	brands	damagestockdetails
212	brands	categorylog
213	brands	brand
214	brands	batch
215	brands	bank
216	brands	attendancemaster_log
217	brands	attendancedetail_log
218	brands	attendancedetail
219	brands	accountledger
220	main	themesettings
221	inventories	taskformreact
222	inventories	taskformsetreact
223	brands	serialnumbers
224	brands	loyaltycustomer_log
225	brands	loantype
226	brands	relieverequest_log
227	brands	relieverequest
228	brands	loyaltyprogram_log
229	brands	loyaltyprogram
230	brands	loyaltycustomer
231	brands	loantype_log
232	brands	loanrequest_log
233	brands	loanrequest
234	brands	leaverequest_log
235	brands	leaverequest
236	brands	advancerequest_log
237	brands	advancerequest
238	brands	loyaltypoint_log
239	brands	loyaltypoint
240	brands	productbarcode
241	brands	productbarcode_log
242	brands	productdemo
243	brands	qrcode
244	brands	edition
245	brands	pos_role
246	brands	uqctable
247	brands	pos_user_log
248	brands	pos_table_log
249	brands	pos_table
250	brands	pos_role_log
251	brands	vouchernotable
252	brands	pos_user
253	brands	pos_settings
254	brands	cancelreasons
255	brands	expensemaster_log
256	brands	expensedetails_log
257	brands	expensemaster
258	brands	expensedetails
259	brands	useradrress
260	brands	printsettingsnew
261	brands	partybankdetails
262	brands	inviteusers
263	brands	formsetsettings
264	brands	vouchernogeneratetable
265	brands	userrolesettingsmodel
266	brands	pos_devices
267	brands	branchsettings
268	brands	posversion
269	brands	versiondetails
270	brands	stockmanagementmaster_log
271	brands	stockmanagementdetails_log
272	brands	stockmanagementmaster
273	brands	stockmanagementdetails
274	brands	bankreconciliationmaster_log
275	brands	bankreconciliationdetails_log
276	brands	bankreconciliationmaster
277	brands	bankreconciliationdetails
278	web	contact
279	brands	billwisedetails
280	brands	billwisemaster
281	brands	productvariants
282	brands	pos_printer
283	brands	pos_devicesroutes
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-05-06 11:51:29.925064+05:30
2	auth	0001_initial	2022-05-06 11:51:30.121789+05:30
3	admin	0001_initial	2022-05-06 11:51:30.170869+05:30
4	admin	0002_logentry_remove_auto_add	2022-05-06 11:51:30.195257+05:30
5	admin	0003_logentry_add_action_flag_choices	2022-05-06 11:51:30.210273+05:30
6	contenttypes	0002_remove_content_type_name	2022-05-06 11:51:30.236529+05:30
7	auth	0002_alter_permission_name_max_length	2022-05-06 11:51:30.245053+05:30
8	auth	0003_alter_user_email_max_length	2022-05-06 11:51:30.25402+05:30
9	auth	0004_alter_user_username_opts	2022-05-06 11:51:30.261508+05:30
10	auth	0005_alter_user_last_login_null	2022-05-06 11:51:30.270675+05:30
11	auth	0006_require_contenttypes_0002	2022-05-06 11:51:30.273814+05:30
12	auth	0007_alter_validators_add_error_messages	2022-05-06 11:51:30.281132+05:30
13	auth	0008_alter_user_username_max_length	2022-05-06 11:51:30.297203+05:30
14	auth	0009_alter_user_last_name_max_length	2022-05-06 11:51:30.321829+05:30
15	auth	0010_alter_group_name_max_length	2022-05-06 11:51:30.334096+05:30
16	auth	0011_update_proxy_permissions	2022-05-06 11:51:30.342748+05:30
17	auth	0012_alter_user_first_name_max_length	2022-05-06 11:51:30.351367+05:30
18	sessions	0001_initial	2022-05-06 11:51:30.384313+05:30
19	main	0001_initial	2022-05-11 10:46:53.228086+05:30
20	main	0002_usertype_usertable	2022-05-12 16:01:10.71935+05:30
21	main	0003_alter_usertype_unique_together	2022-05-12 16:16:35.684122+05:30
22	main	0004_alter_usertype_unique_together	2022-05-12 16:17:07.139838+05:30
23	main	0005_financialyear	2022-05-13 18:57:27.817723+05:30
24	main	0006_remove_financialyear_companyid	2022-05-13 19:03:48.29289+05:30
25	main	0007_financialyear_companyid	2022-05-13 19:05:06.563945+05:30
26	main	0008_user_log_inviteusers	2022-07-07 15:33:39.366567+05:30
27	main	0009_companysettings_enablezatca	2022-07-12 16:03:11.413115+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
sfbgdlj8ziy6025ft4pq8etd6z4le408	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1noglf:ng4xligUcwBngBQPeSrykswln2bwoEHP3J7PXQVd9W8	2022-05-25 12:58:19.007602+05:30
7ljfyervsew0sgmmstjlazg1htecxh7o	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1nogtv:MzE4-hh3JaC0Q5LP5Q2scTvh19Uza8sgGS30Bvk0Qlo	2022-05-25 13:06:51.196274+05:30
j3a3eyxy9gsrgkhgnlf6ewmwwt4fd192	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1nogvc:9In7zfbCTnlAB375SfYiBBvPiyFq-9EHpAQug7AeBag	2022-05-25 13:08:36.771293+05:30
nfur38l4e7vhiwl4uqe4jjbu8sqvvere	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1nogwR:KjDFyzlH0uv_csdqyrFsDVjJNyxfgAv1Zt6pByLxCv4	2022-05-25 13:09:27.498869+05:30
glltgdl6rrenthdl3ftg48ysrsucp93m	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1nogyF:HYURDz5wK82BPhlLzJPzIdjVM4b31kJ6t4CweCl_gkI	2022-05-25 13:11:19.045164+05:30
6f9xixreusgxlyvrlhw0ykgcptplxsp5	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1noh0J:IBg4aYgK_b-3jQtXGPwlRykK6vPe5qWbs95_4YiWtGk	2022-05-25 13:13:27.656928+05:30
xztdtowisaba7u4sewcnbmbwt0vto1no	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1noh2F:x3_JQmgWlsD48Y60NDNZUwktAVd08ixw1Cw9SsSO6p0	2022-05-25 13:15:27.107929+05:30
srn0n0sq74jvg5c1g80tsosv8q1j5kdu	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1noh3i:DHOUXzshZVQipuF6xB6qZCnmt2YaNoHdt7J-zgFBMh8	2022-05-25 13:16:58.321967+05:30
h59ll7rcpnsi70xlfsayshpm1hrl18s3	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1noh5W:HxU4v7ZqqXChw_ckOLvDfo1BO09td7CRkrhX-EnYqkk	2022-05-25 13:18:50.669334+05:30
pnaq05li152g1zhgv1rxa4tys6xnqc8d	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1noh69:RRg2jg_XFmZBm27dXnN5nNOtLFNC0Q4N_gWv05KY0jU	2022-05-25 13:19:29.01831+05:30
vt3y0t6rt997jrn3rvk9qo1gwmwuceid	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4KT:K9AGm0ndbdYkP7yJBR9O-Wtt3H9wF-5sm0MBU7lsSX0	2022-05-26 14:07:49.858225+05:30
eqqns9khde9okzw0yewipzrivbrm5ire	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4L4:6zRqIi7mvTM-LQYGuyj-pcWiUF-PIyejniaknX3GZP8	2022-05-26 14:08:26.074578+05:30
qd0x7spn3he19idb0i7kmmbpjxhiutpg	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4Nm:Gska5F-m2W347UiHYXN1PGCARAs_xFdX7uPPLhhNEcE	2022-05-26 14:11:14.00449+05:30
s427v80m3cigmqeauny95yiw9l20c0ph	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4RB:X1fcEJ6Lvql7VJLfPFiZUnrmKPeiteJI1YDTbCLHvTg	2022-05-26 14:14:45.337335+05:30
0jme135rjq210mtma57lzp49v5166kge	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4V6:C5PCo_OYLd8eXOP5avdDXO6gV6DlDuR7AkjD0mcE6Cs	2022-05-26 14:18:48.419111+05:30
tijxc6637i2i4qraynyui8u6np8n11yv	e30:1o9ONv:rLmUULHchQLTpbKuKhXvdUZoUqlsL1N7qnjxywYqixI	2022-07-21 15:35:23.044332+05:30
ztkg69htgexalyew4byb7idw9lqmz7nb	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4WN:oY_qMgDNAGt17Rf1bAegYoHmnlN8Ee2mCJyRPHwcwEo	2022-05-26 14:20:07.568692+05:30
wxodczijerv0cexju0p7miwl9ddbxrz4	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4fJ:SU6cNWSkvbwsOkrNKPFqEBqMqKAz0FsmLHuAxyGHB40	2022-05-26 14:29:21.333208+05:30
f0c5db9ska63bynq4uhs7o5dedehxkap	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4gd:GwQnYqXePIyaME5Yx7Gm9YrNHVyB8DlaCa_FVq6429k	2022-05-26 14:30:43.959317+05:30
15lr5s57ukh97zofr8pvstxpdnsli79i	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4h6:YoYff1bZCSvdhHWgN3EKAISTbjM0qXFP_vRC9eAFePc	2022-05-26 14:31:12.493472+05:30
jwbg2575jhnc12dmn4zrkxxlrvp5g9hw	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4j0:hb5z7sdOLjf3qYcWMRqguPgJpdIvzLIzASNjSBBPDMg	2022-05-26 14:33:10.480168+05:30
e9mcpi8i0m8chiymb3jneucppzl27bh2	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4jD:udTgx9np56n7dh8vyZep6-aeZMbIxH5mQZ29QiaftYI	2022-05-26 14:33:23.705233+05:30
1cyu80hs5zu40bg4ffrzngtq5rwq3tt3	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4lC:KIXi6iNh0hi7mfLXntbJRhskByCzHwcV7S22APbR9gg	2022-05-26 14:35:26.78413+05:30
jvymmyyd1kwlwxs9hyb7c06rloa7xncy	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4lM:Wt01NxGOaDKdzZdtv1C38r3cM0L_tt4CYCf6wVCpD6k	2022-05-26 14:35:36.446183+05:30
p2ewb972s16s27t6p7766sds2eigv88u	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4n3:7GkI6gxZd78mMOHL7mTzRb9mBu6QV56669KTJj_ibU4	2022-05-26 14:37:21.109487+05:30
5w7ahes7nql2vc9qbtkiiac412598fui	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4nJ:BfKGnKVH3Ze0nop0iRAqaklKm_tzCjsJXgJwNo_KBrs	2022-05-26 14:37:37.25198+05:30
vj6ddol13sdcbt0j5kuvjyljjahgcytx	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4ov:m0UVUTnnjGnWQinfD2IbXTLGLFJsYLS50c_cNuF-iuI	2022-05-26 14:39:17.784105+05:30
3appt81zomjjsx3q2yo1cwzhpbd73y9y	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3sEb:yV4E3EFcStGuo5zvbkK35pU_UNN_w6KxAPLnrqQPnZE	2022-07-06 10:14:57.279931+05:30
525eun5474d9eihk4i59uhwkxeawzje9	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4p4:9lbEFgQ7mdqd4yTErZtw10VgQPbgcsoG2QkXfYHnJXc	2022-05-26 14:39:26.825615+05:30
7wxqu28lmypnjokyurhs4qvye3axpdqr	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4pX:jyUwgXdTQv5zpfX0nvgVWCh3oDQ33f_hngQm-2VgCvU	2022-05-26 14:39:55.57747+05:30
6sp4po99sg9bb5emub9rj3nfvr1edh8t	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np4wi:jRH2V6HkRA5hSfooGQnwxw3uOFKW4VxmOAhu4ZCEMhU	2022-05-26 14:47:20.769084+05:30
p2jqm4d1ldli99qtjlkqusm1htifa86i	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np50P:SimcBknpY85i9hCOMdfO3KP4G_m9ArQ6fy9CotL3MmY	2022-05-26 14:51:09.74203+05:30
bqc297ab4k2arknaj5q1c9qv819nh6ti	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np51J:sQEaPpUabL7-L1e4kW1HZuY79kcooP0qdQkfGklRid0	2022-05-26 14:52:05.72893+05:30
1zur8unsff94xjtfy84iu5t7dbqsd8dl	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np52s:l3w8a6P5RBLp2FlLGnr34KfVKRbpYe1Dh_KLK1OAe8w	2022-05-26 14:53:42.572302+05:30
vc3q0v1l881lphl2706t11yxav2yjmp1	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np55g:_alhoDUKgUPEqg4rcSAuizB4n4NDBypgJwg0GLuvc2w	2022-05-26 14:56:36.517161+05:30
0ahbl1lyaip6hnjxkpb6180yd23gjpz7	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np57g:yAU0-uD9XLmDJl9d91VPaRXwcM2xrUs6hi1Ckc8-kvw	2022-05-26 14:58:40.417447+05:30
saurw4sorlci2yi4eyt65gv6tya5ev9k	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np58J:wcn2i5iDAqZ9XS4FeciY1yIXWvTI5rlIc5tSA8QerhU	2022-05-26 14:59:19.529493+05:30
ccswdcvixl87mfw237iwwpiqvrikt136	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5CL:6_V9aBrL1qVXlen2zyPso99_E745PQYK-k6QUPb7RV0	2022-05-26 15:03:29.124171+05:30
8e3h9iwn963acxqdiqokot2tr57scpsu	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5DR:ZGk3mwyTD8Fy7eR36KrZhlKHKkBaGMnB9Xeoni3mt2k	2022-05-26 15:04:37.409212+05:30
4izkouf993gbnpcdjgucfyiz7ivjnn8d	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5Ex:zZKxWljirgAuShHfAGkdmMPmcI9Br-E2AFGwkz3Oo-I	2022-05-26 15:06:11.254505+05:30
zrophw2xzx9nvk1pm7x51j4j3qhbd4hi	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5Fl:ODdq9Ey-8JxrUIkoYFefLViB_BttKNVU1L-LZzpkuao	2022-05-26 15:07:01.065536+05:30
w3244uwvfoet6w3gov86uchyn2266a6f	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5Ho:uEYbrpp2LVkI8Tsf2ZnSOwG8uO_wFk2VVfmi4_6xhKc	2022-05-26 15:09:08.396022+05:30
h5mkw9mevcqe3fxtb3btnphm6rus7adr	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5La:YP5wNXqZOqoV2sIQC1JCGAZ4DFp8eBluUbphKOkMfbQ	2022-05-26 15:13:02.133432+05:30
sa5h37iucsoixmdvnybtti2fzv17g2hb	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5Lv:-j4hm2AXIH04FPiaOpGao2g2SkPOfP5YRwi2-lz10pw	2022-05-26 15:13:23.490232+05:30
cgxeqy2ykdfzppwlb0brwyjauwgec4x2	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5Ps:Ckmi7JaEvQg43xxwLyX27oSfYejTybuMV9CDfIV-wqg	2022-05-26 15:17:28.910375+05:30
u5qz4sx4ibubci2oet5pi4zqaryl2dap	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np5Xc:SrVheI3FLGuKIJvUvaPQ59g4t1dxOEOfb3kO64EpVAI	2022-05-26 15:25:28.95089+05:30
b4me97en4iaheshkhtqlnsgijk6f4g81	.eJxVjMsOwiAQRf-FtSHIG5fu_QYyMINUDSSlXRn_3TbpQrfnnHvfLMK61LgOmuOE7MIkO_2yBPlJbRf4gHbvPPe2zFPie8IPO_itI72uR_t3UGHUbZ2szcX74kFKXYJV3kgMoMwGtCRwTouM_gxBKGVMIIFgdJbkgiEExT5f0_Y3hA:1np6wP:4gX1PviXD17LJqvpDRluh3KY1t9-Ckn9Hdfo7ooLGS0	2022-05-26 16:55:09.319957+05:30
q9hz18k77wkgeuiq15dsp20469xu5lr4	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1np7r3:hw8dVS2Yy7OTUrufq9I0BHmf6UB3fNhWutbhpZhqOVw	2022-05-26 17:53:41.183293+05:30
4mv150s8ufarkq5h3om4thuk2gy74xen	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nqSSf:15VpiQm5ywJI4Pi8FXku4bFyuafrbjR-W1JfUwVaJgI	2022-05-30 10:06:01.216211+05:30
5nqm0xscvaxrqq5xwg3m5asgcrkgmrbp	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nqY4G:y-bV7R3GyGahkZFO3nPiX94Q8tWpFZdWAPL8rufJBd8	2022-05-30 16:05:12.729593+05:30
k6wj2dk4k1bk84tmsfgs8gwetn006siy	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nqYEU:jBXKyhYHiJFWspkno_8gKgw8pA_YcrZfsm2BwUB1SZo	2022-05-30 16:15:46.740393+05:30
khbtrqf7tfn14dc1vy4ymqaw4ftge7vy	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nqt1B:pE0kHuPHOr7PZfxU1as-cED6p2Wy4MLzAk4gU63C-b8	2022-05-31 14:27:25.454836+05:30
7pat5jbf26zeuki3syoczxy7sm9mkvq5	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nvcUD:QmiDFPw28g1OfunlyT_DSlcQgi5z91sdgPqr8So8bn0	2022-06-13 15:48:57.506786+05:30
46wxrrbt350msfzzbxqyeb6bgl7mpxm9	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nz9lL:nOZDZ5B_XYKIQwnaBWFNk7FwOctx25iMU_eSoyFIJoQ	2022-06-23 09:57:15.209863+05:30
x7sboypt12r78rb1mbxobkvh549cotrd	e30:1o9OO6:dvXicRSYkMWGuW6t6TLrPQORAL7havK3eaChZEDaW68	2022-07-21 15:35:34.775762+05:30
ygg6ivhtdfy64r8mu0nsqvsw3fqczul3	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nz9lm:FpSap0wrfWs_Rkl7AIwQFun3Bf_KsqahiHFq5OCpRS8	2022-06-23 09:57:42.231916+05:30
tr0c28x4p5ziz3swkvvn97nhgfsc2m2d	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1nzAGh:A9zZWgYQ6Vo8bM0-XE1iqa7CWt7YJeL2_dW0VmvStwE	2022-06-23 10:29:39.011798+05:30
28311v5wg3oictnb0rjsl2aakcascw27	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o29sH:0ypt9AjHGrwCpvLclq6G4mZJJNS-U6q6g_3lI6gltL0	2022-07-01 16:40:49.139471+05:30
2a3y4w2h5agbgs87ogn1bjedubg7skrs	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o29wK:oa_LMHtKuot4K4bXws9H6u-0qkwgokjdl80y-W1PMvo	2022-07-01 16:45:00.117339+05:30
fx5r6oz3vdr2cz11fs0tfdk0rztkiwsz	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o2AFS:8nJiziyVqcX8fI-KIMl5O1ouiDNRKAMxLKjy3hHqHUI	2022-07-01 17:04:46.839874+05:30
cevluu4cb3evy7sfgmx8tppjmmxsdfm1	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3Ebf:CFE-0zg2z9ZGLg6Sn9jdeSkMTWPNnHAmcJUrGajk09I	2022-07-04 15:56:07.449781+05:30
rvgdnur3oavncbin9znv7jxteyb0g6c3	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3EiZ:ei-kc-b8bztYnQZV4XvAa9pZ2RYEHsAXH_1uCDTE3Hk	2022-07-04 16:03:15.119163+05:30
bdi578o7qpkepcjbws0wttaqy93pjfm1	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3EjT:pA1SsRcs8wBojcvqSh-TI4UscFF5ZkZOrXdWU52HVl0	2022-07-04 16:04:11.924423+05:30
gn5oop4i2v2o3gdw11o4hk5wmj62twh9	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3Eyz:kx7_zBfRfT44VXxOhT-hNpUM9jhLlF-bXUg8MMResa0	2022-07-04 16:20:13.554541+05:30
v3rt9qr6m97l6uvncezz35m4kx4i2kgj	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3F97:iHGmtV2KlHgArbyKAkPagK0ZSLmf26JjOXf95YYw4t0	2022-07-04 16:30:41.699716+05:30
649to5wo6al7hqrtowzqdjizfhtgwa8h	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3FAh:Nq9aT6IiP9GsQ617icTV4JqEY0no_ZgIqIIE7OgP5VE	2022-07-04 16:32:19.276045+05:30
f1fxdiyql45rxyo48qlz80ospuzcwlul	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3G99:B87M9eaMf5TJ3bw67CfiLKKYKpTRs6J4ZlEiE1nP4ss	2022-07-04 17:34:47.619356+05:30
xrk7ry4y6pdxpjjgc2op9hlz4zxbfgub	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GAd:dE9ge9MrRMBeCBgXgg4spVfNxowFs1CiB6qKxyj1ilQ	2022-07-04 17:36:19.557991+05:30
bjgb1aokcd3crzd61pwgta2d2xga9myd	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GF3:zRNkLMn7Ti01GFdTeWCp3Ksx5DSnZzfd8m3-kWm3Z44	2022-07-04 17:40:53.767247+05:30
gi0qk7x2vrq9vkfa6nd853niav9uxbho	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GFO:seYzVgo-2CjesjqTDONISktTp9R29jKTND9wKmhrnB8	2022-07-04 17:41:14.847471+05:30
5y3d48j4zzes6fpjhvlwhyjg7txa4s69	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GJh:HYoaj7d__0btYntUfpzw3mSMbknrqTly9LJZ1wM8pIE	2022-07-04 17:45:41.386212+05:30
nyctvvjm58bi6aymsxc96ktiqdy2ral7	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GKu:ky4U5AItXNszF7Di9ztJ7mrDekJLZlZdAePgDCcFlSs	2022-07-04 17:46:56.480208+05:30
u3izsc4uywx1pv910lpcm33fmftcvnma	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GL9:QZ-MQmQTdloJSnMHf-3uWTFIrkpc6RYTNCVOc0Pfttw	2022-07-04 17:47:11.134496+05:30
l470xiwehuvwzlkkv78pad5boskwczsz	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GLI:VnBwYnts1hfX6T3qWakPdJdH-HwA47XOACoHlj5P3p4	2022-07-04 17:47:20.555481+05:30
pnukbih4n0ddpfql2bm7njo05tt8031n	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GOA:PN4ZetZvfXNixaL0zxiRR8zDLABGhWljNt85VL8MM-Y	2022-07-04 17:50:18.192728+05:30
ijrnf3n7a6mykhwuruns0m879lfwn69t	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GOH:htZl5RfeFBPgkzHugNdMCaG4S4alzGUrarMfX5HuehQ	2022-07-04 17:50:25.738393+05:30
jk8vta2y9i87zwor7lte4elw3ubrgfr7	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GOO:k9fT7qmrts4yrR5Pe1AVS7ZasORLppiC7DnYz4M2-iw	2022-07-04 17:50:32.129423+05:30
5mpm52mkko29zpoteh40nr2uvaltmivy	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GOr:TuuZyhYD8vZOF7MxpjAk_AdF5iDsRLPRX8HHtfXDToc	2022-07-04 17:51:01.554543+05:30
9qptphapsv5a879uz87qb193sqa0rcjd	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GP8:orQGfQQxrTgs1ZrJjqyDnpl2av6By0eUhfbSojMyT9Y	2022-07-04 17:51:18.832981+05:30
n8nn9bd1b68mcewvwffbwtohygqitvjn	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o4JlG:D-Wi5jsTsYF6P8TqHGKqBLs4MkSwzr1ajejU0VYv4og	2022-07-07 15:38:30.713336+05:30
h0xlha39iix9izmzlolq9ao786lq0jzz	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o3GZi:KU7r1s8MrROwLlPbGRUOUXwmVYADkQxfthwj3E9c_xI	2022-07-04 18:02:14.141393+05:30
66oswah8ar85b206j8pctwqv7t01fp1w	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o4K0x:fo4v7a4WGAYdrq4dsDB6nvbg4dgQtTmaQ7fsId9ddzc	2022-07-07 15:54:43.881226+05:30
u5arsxs31nq7a2ay5j1k2kmkctd60zg0	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o4KCH:iWbtDc-gJ_RFheS9rOBHeogxPkp6jj2NYiRID1yfvsM	2022-07-07 16:06:25.19539+05:30
z4xs5b42xe158s16dwf757en57muaovp	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o4LdE:SSWttLA0z5t6LV1M-lFXix-XtNnXnSbtH3zChEySnNI	2022-07-07 17:38:20.51038+05:30
fpawp9obpcwvsactv0tpupqiys3vcdhp	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o4Lf5:26TLgmNghkqfurHjhrBp-2hBKy2se2XcFdhk3AqITZY	2022-07-07 17:40:15.38189+05:30
3grvedodypj04oz45cz3jnc01k3l0sgc	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o4b5m:OqF-QDq3UULRhHN1zNMiSwDriQC3KiQbI156uh95--A	2022-07-08 10:08:50.798414+05:30
nljt2zfd1y4djiwj9s6cv9v92y2nm97t	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o62UE:E1AGS2VtfRmz1PZ7A0p-RI8CEzvlWcQIhkbq37FMkEM	2022-07-12 09:36:02.912434+05:30
3ph47xs2ic3te2yguox3fm67gowasmsr	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o64Os:Q1j9Ng5Az0-08Ss9vESYv_ff9WOm11sSjcrQo4Y-kUM	2022-07-12 11:38:38.237189+05:30
0j52onyhteshm3eavpytulhrenl5z0ih	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o64P4:G-CikMn9xHfXEROirFgFhXvZkopaiFBInMpZvGu2zfo	2022-07-12 11:38:50.411656+05:30
g6efxwakm1yikhj9fq2rw5qy9tqtgcas	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o6QQm:7Zsym6xWc9bXAHXZ5QNZCJ3Wrd9pcQRnlCREl4eXaxA	2022-07-13 11:10:04.81384+05:30
anajb3wfgb7vlk7yf16xbz27l77661ll	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o6QWG:OmN7AHOCSmDAMjvuL-X9LEhA97BPv1koDdWc7IxdUno	2022-07-13 11:15:44.158323+05:30
tu5psljejr19c2d11ko54s7t92nq7r97	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o6QWY:bBmigjYMylh4A4uuEzarVp_-_8jD_Unz_TXDuHVLqi8	2022-07-13 11:16:02.559985+05:30
ad4u4mh5cxt9a2dtw9k0fj6w1dofehlw	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o6QYv:whW5h2K0I2qnq0GNpAYJSzdsTzobqEAoT6HKlS6A5-0	2022-07-13 11:18:29.663846+05:30
jo9bynx4n55odbu7356z3cfsethvuq9i	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o6QcH:x6ex59Y3YKMWAPZAipakjjzE5_1CfIbxRR70JrKnIoo	2022-07-13 11:21:57.269568+05:30
plt4tcyscyo92cmmv7bq4glp022mpxh1	.eJxVjDsOwjAQBe_iGlnr-Eco6XMGa3dt4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEOYqLGJQ4_Y6E_Eh1J_GO9dYkt7ouM8ldkQftcmoxPa-H-3dQsJdvbZgiWDDA6KzPbG3SaszM2RnyGhQTWT-y85R1GlL0kQwrPJM3jADi_QEdfjjf:1o6Sv3:ML9mu-EsRDK07_bx7q3J-ZnadD-itr5uLJn5FOrxHlo	2022-07-13 13:49:29.509974+05:30
x0waqd8f08uuskzxcxu5f24j8etf2gs6	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OPT:Xxa1lbkIGEPOrqo6JhTId-_HAIrAQhdKH7tG-gwKq90	2022-07-21 15:36:59.854918+05:30
101eakt3y2p5cz35fhkgkqru44mtac1w	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OPY:xonujcx_17grfj0QoqZBs_lLikT-R_e8mTsEScJzAc4	2022-07-21 15:37:04.871649+05:30
5ff9v2gmug0gu4g6h6wghtyke11yvekt	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OQC:VxYSJ-_gX3CBECW91baosn3ulNwMochXUpHytYWUx-g	2022-07-21 15:37:44.480081+05:30
pxq1zsw9efykm5mutv8ylpmtyub3u7sz	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OQP:aETgcsoiksOROoGR0L5XS8BfR06iU9yfftB9osxlylM	2022-07-21 15:37:57.586233+05:30
nd56q61cmeey1j9dznvgtn4qpwmcrt7r	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OUa:edIurkZZlEFMAYH1DVb1DsLCUZmV8nq1nPE8CByZS54	2022-07-21 15:42:16.433098+05:30
ublcq8m1t1g54a8rj487eqboxgbusry1	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OUm:PuEBWls-I30oM1HTgsfgZZWaKdvUY3YEUSacdcZHOGY	2022-07-21 15:42:28.239562+05:30
lkr22fddk3csyqed8pxqrdezlc4c7iov	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OV9:VBs-o65nn-RxWhLa3iiQHwOZ5X5eqxzWNeqYWWX3Iig	2022-07-21 15:42:51.183928+05:30
il6uuonaliv095zhsamlly60kwces6g5	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9OXF:qj8qUOsxByqK5DS55XFRExjkEJ1gNm43_paZyeihWT4	2022-07-21 15:45:01.186611+05:30
w8k22krzzn5yz0pfp2br64ayu16hkbq5	e30:1o9Pd0:JMiN4GqnRxluFpMsI60ixIyHdBvlm4DHaFxPP5LKl2k	2022-07-21 16:55:02.342109+05:30
fqr7qavnl6oadv3qy37vgve1ztq0ecgk	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9PeD:B9mX5ao1sx33LdNPIbnYtp8xrSyAYZTmNVx700norEQ	2022-07-21 16:56:17.73574+05:30
9yxuvd0jsbazgqhtsh3aerrq4ery9vgs	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9PnV:OmmUm3EpnzJUJkSgI5XiALXmQr-t8HJQrQVUAnbpnUo	2022-07-21 17:05:53.928742+05:30
qc8qkkk4g5su7wh5p8qhvqy6rvst3tia	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1o9QYz:5n_E5E8a-eTizcZe8f5kyIhEaovC5Sc1ELMJTiiPlWM	2022-07-21 17:54:57.769091+05:30
d2zykfwk213ed2nxndjspvzlvcm6bed2	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1oAm8x:lDK5Qoyqt5GHd3Az7UCFDD62fz44b55_7uhVVfv26uI	2022-07-25 11:09:39.862204+05:30
cuxebee94a62uvm9zllfocrjp1gy8qbn	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1oApyI:YoBr5osq5Sca0VH1nHlE4uxVwrJwk6mnLUbFafBgd4Y	2022-07-25 15:14:54.287198+05:30
1djhfzenbm02lp8v8lktpmiiplz9arbn	.eJxVjDkOwjAUBe_iGlnJd-zYlPScIfqbcQDFUpYKcXeIlALaNzPvZQbc1jJsi87DKOZsXGrM6Xcl5IdOO5I7TrdquU7rPJLdFXvQxV6r6PNyuH8HBZfyrbGjRBGFe3Es2jHlrC4D-UCuYY2hAyRN4FKgnMCjlxZa14C0vY_JvD9x8jj5:1oB8gx:wkgudamiiA8GEORclqhb8BqK_9tgn-G9GQt6TLWTNYA	2022-07-26 11:14:15.963991+05:30
rr7k7y9pk87ss7qgd13b38uww2lwkjii	.eJxVjDkOwjAUBe_iGlnJd-zYlPScIfqbcQDFUpYKcXeIlALaNzPvZQbc1jJsi87DKOZsXGrM6Xcl5IdOO5I7TrdquU7rPJLdFXvQxV6r6PNyuH8HBZfyrbGjRBGFe3Es2jHlrC4D-UCuYY2hAyRN4FKgnMCjlxZa14C0vY_JvD9x8jj5:1oB8i6:cEFppkZ1FxUDBZd7rzH-TeNRNQh4HX7WdElRxxtEnss	2022-07-26 11:15:26.401461+05:30
ht5tmsdsc7sybco8v9l7w7ibdpawnz0p	.eJxVjEEOwiAQRe_C2hCEAjMu3fcMDQyDVA0kpV0Z765NutDtf-_9l5jCtpZp67xMcxIXYQYUp981Bnpw3VG6h3prklpdlznKXZEH7XJsiZ_Xw_07KKGXb20VoWZSURNiVqACGO01exwgUwRy2fiU_dnmhJwxMoO10aO1oJx24v0BNWo4QA:1oB9Zu:kQsl7nqje5XfxmkfbFBeOa2rqSqs6COXpI2gAZCcg_o	2022-07-26 12:11:02.027777+05:30
r0jfi0wd1a32jqn2uk7weecakzoi5wl7	.eJxVjDkOwjAUBe_iGlnJd-zYlPScIfqbcQDFUpYKcXeIlALaNzPvZQbc1jJsi87DKOZsXGrM6Xcl5IdOO5I7TrdquU7rPJLdFXvQxV6r6PNyuH8HBZfyrbGjRBGFe3Es2jHlrC4D-UCuYY2hAyRN4FKgnMCjlxZa14C0vY_JvD9x8jj5:1oB9a6:0fthSlgjf4ptGUbjkHEbfpLQ_FcsFyg71ANP8UXbru0	2022-07-26 12:11:14.069149+05:30
e3c65gxzyyy23zoxeozj04yh6dsj4stg	e30:1oBEFb:I3wp-f7SyGpPzVq2anVI10fQLCE_QgkpEnriu4-zalo	2022-07-26 17:10:23.508294+05:30
kvfzmklk7ptahsdm1seerf2vmznjamki	.eJxVjDsOwjAQBe_iGln-rH-U9DmD5XjXOIAcKU4qxN1JpBTQzsx7bxbTtta4dVrihOzKFLv8sjHlJ7VD4CO1-8zz3NZlGvmR8NN2PsxIr9vZ_h3U1Ou-Nr44oIKasqeAxXpLZKSEpIVCp4UB60ABBtipTdJ6EbREX9Cq4BT7fAHZ1TbO:1oBEGR:QAXLoQdB33mN_RlB1Iw6tMSITKV1R45pb1qs9zzLz78	2022-07-26 17:11:15.459006+05:30
tu053tfs9cd3iziw2lm2h4vuctms3bqg	.eJxVjDsOwjAQBe_iGln-rH-U9DmD5XjXOIAcKU4qxN1JpBTQzsx7bxbTtta4dVrihOzKFLv8sjHlJ7VD4CO1-8zz3NZlGvmR8NN2PsxIr9vZ_h3U1Ou-Nr44oIKasqeAxXpLZKSEpIVCp4UB60ABBtipTdJ6EbREX9Cq4BT7fAHZ1TbO:1oBEJq:DVWPGJ1GHSZBhatL8G5mjzhiNeOqtW7ffOP-N9nbuio	2022-07-26 17:14:46.646595+05:30
\.


--
-- Data for Name: financialYear_financialYear; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public."financialYear_financialYear" (id, "FinancialYearID", "Action", "FromDate", "ToDate", "IsClosed", "Notes", "CreatedDate", "UpdatedDate", "CreatedUserID", "CompanyID_id") FROM stdin;
01c6e07f-13a2-4167-95f2-e3471f18137b	1	A	2021-05-19	2021-05-19	f	\N	2021-05-19 21:20:40.026+05:30	2021-05-19 21:20:40.003+05:30	43	4848489c-59a1-448c-9a50-059db8b9d009
a1723276-8e06-4262-994f-653edefcfaf1	1	A	2021-07-01	2022-07-31	f	\N	2021-07-23 09:21:29.124423+05:30	2021-07-23 09:21:29.095963+05:30	2	8db0e6f6-488d-4d59-bd81-901211b1fdc2
e274cd21-33fa-4846-bc7d-9544473acb8b	1	A	2021-07-01	2022-06-30	f	\N	2021-07-23 10:12:16.308067+05:30	2021-07-23 10:12:16.28074+05:30	62	c99ad37f-c420-4b01-85b4-1da43c2d6960
13db6094-899a-48ba-a44e-8c063c5bf899	1	A	2021-04-01	2022-03-31	f	\N	2021-04-03 22:26:20.35+05:30	2021-04-03 22:26:20.297+05:30	12	2df75602-f5a7-4f20-a3ff-c662bd98ba06
a49cf24e-d13a-4e7d-a2b3-03e775844465	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 14:27:31.156074+05:30	2021-07-23 14:27:31.13242+05:30	62	ff70e4dd-44f5-43f0-8c32-5bdd507afff8
33fb9e73-07ae-45a0-95a6-104d092d6de7	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 14:32:49.57367+05:30	2021-07-23 14:32:49.55014+05:30	2	7be77a2e-8bdc-42b1-bf85-9f7961b559d2
f1864f83-e52b-408c-afb8-977e1bc4d8b3	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 15:26:15.262637+05:30	2021-07-23 15:26:15.237549+05:30	2	6be9db8f-b758-4d25-b8c0-cd2eabcdecad
ca09877b-18fc-45b2-ab40-7590a8e2da8e	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 15:32:21.412109+05:30	2021-07-23 15:32:21.384156+05:30	2	cafb2501-ae79-46a0-a81f-ad22298c31b3
ab21883e-0263-4aab-8b7e-c3a0d4e35d5c	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 17:27:29.969687+05:30	2021-07-23 17:27:29.943022+05:30	5	0f393155-414c-4b13-a5e0-da3555ad179a
83cbe999-e099-405d-b317-40b3ac1b0e91	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 21:55:13.967003+05:30	2021-07-23 21:55:13.941228+05:30	63	b2d008f8-92d6-46cf-81ab-d4aad3f2a238
b3f4c3ba-b597-4478-9785-96877da7ef2a	1	A	2021-04-01	2022-03-31	f	\N	2021-07-27 15:19:32.600858+05:30	2021-07-27 15:19:32.570526+05:30	31	633797a4-c23b-4ce3-b00f-aba93bd2c7ba
200eb160-f567-44f1-a73e-f87d97408916	1	A	2021-04-01	2022-03-31	f	\N	2021-07-28 16:20:54.044261+05:30	2021-07-28 16:20:53.977458+05:30	21	35d738dd-d831-4404-827a-0c488b5f0948
a053c699-7424-4c8c-b86d-a5df8f1edd57	1	A	2021-04-01	2022-03-31	f	\N	2021-07-30 12:38:37.101868+05:30	2021-07-30 12:38:37.047557+05:30	2	4884f936-4496-4d8a-8850-3f096b66e46f
0e3b4320-1137-41d8-b85c-04756aede6ac	1	A	2021-04-01	2022-03-31	f	\N	2021-07-31 12:15:59.962368+05:30	2021-07-31 12:15:59.891513+05:30	2	6e8826fa-9655-4a24-b49b-5953141ab63e
21680e77-5c2f-4d8a-aff6-2b0f5997bc69	1	A	2021-08-04	2021-08-07	f	\N	2021-08-05 17:11:13.618181+05:30	2021-08-05 17:11:13.588711+05:30	62	c77e1979-c361-4018-b0f7-304fcaa08a40
f3b7501f-8bf0-47cc-8f80-53951735ec55	1	A	2021-04-01	2022-03-31	f	\N	2021-08-05 17:15:34.32692+05:30	2021-08-05 17:15:34.292939+05:30	62	e0217e5f-d6da-4bf1-b72d-4961bff38753
2abeb056-30a8-46ca-ab8a-15cb8ad058c4	1	A	2021-04-01	2022-03-31	f	\N	2021-08-05 17:40:43.603707+05:30	2021-08-05 17:40:43.5765+05:30	62	11b63b82-ad3f-4630-b436-85cb9aab9c5c
5a529e1a-b7ac-49fd-b81c-d0f4a3be6f8e	1	A	2021-04-01	2022-03-31	f	\N	2021-04-08 21:57:43.336+05:30	2021-04-08 21:57:43.31+05:30	3	64b0f5aa-c066-4bab-b606-73a85963f666
f9a43bbb-db80-48b2-9a90-15bcedca9a52	1	A	2021-04-01	2022-03-31	f	\N	2021-08-09 22:17:30.357979+05:30	2021-08-09 22:17:30.333798+05:30	65	05a071e7-d080-4b4e-b736-e65ea209078f
1f90748c-e195-46d6-b18e-daa0a206412a	1	A	2021-04-01	2022-03-31	f	\N	2021-08-10 14:56:58.395451+05:30	2021-08-10 14:56:58.368035+05:30	66	9d230133-6482-4c40-9de7-bbc986ec4256
07498fa3-1d36-4bb6-9f07-164c358cd3dc	1	A	2021-09-01	2022-03-31	f	\N	2021-09-08 14:22:47.250245+05:30	2021-09-08 14:22:47.212849+05:30	67	1a871202-f7e3-4e42-970c-8ea2c3eeed90
a774d1c8-f9fb-47d3-ab43-651496b1eb35	1	A	2021-04-01	2022-03-31	f	\N	2021-09-16 10:49:43.632826+05:30	2021-09-16 10:49:43.601185+05:30	76	739ce9e6-e213-4a3d-9ff3-3d44833d2b2c
e1813b65-e482-46f4-9ba4-0179e51712b0	1	A	2021-04-01	2022-03-31	f	\N	2021-09-17 09:33:53.02346+05:30	2021-09-17 09:33:52.992674+05:30	76	faa5285d-2d06-4175-b907-8f6ef2672205
763da01d-dd59-4c57-9081-56ba902995a5	1	A	2021-04-01	2022-03-31	f	\N	2021-04-24 02:39:11.362+05:30	2021-04-24 02:39:11.335+05:30	27	05f9f96d-36c5-4069-960c-5356493bf308
774f7873-0799-45db-b7da-ef66a21f4ce5	1	A	2021-01-01	2021-12-31	f	\N	2021-01-15 19:00:18.109+05:30	2021-01-15 00:00:00+05:30	11	8ecd67fb-e2f4-4da0-b6ce-2b14127e3459
2864af5d-2ada-497e-872b-7b57d0d5ab82	1	A	2021-01-01	2021-12-31	f	\N	2021-09-20 19:08:01.906936+05:30	2021-09-20 19:08:01.877243+05:30	77	39c1465d-c3a6-481e-85d7-64323ccc39d0
86aac6fa-0211-45c7-8182-e68d197fbc14	1	A	2021-04-01	2022-03-31	f	\N	2021-09-20 20:58:02.234027+05:30	2021-09-20 20:58:02.182302+05:30	2	22e4be51-1a5c-4f37-ac41-2b644a1663c9
79c22889-11cd-4898-a90d-8c3a9a61d67c	1	A	2021-04-01	2022-03-31	f	\N	2021-09-21 10:23:23.790465+05:30	2021-09-21 10:23:23.753073+05:30	2	f4cfc7da-27fc-4765-9c7e-3984fbf2954f
6064b842-816b-4c4e-ab29-787c99777037	1	A	2021-04-01	2022-03-31	f	\N	2021-09-23 15:19:57.95664+05:30	2021-09-23 15:19:57.924007+05:30	78	514b8798-7ffe-451d-8195-ed2b38fef7d3
da4f2c63-6945-46fe-a36d-2ef2c8ebfba9	1	A	2021-04-01	2022-03-31	f	\N	2021-09-25 13:26:55.987252+05:30	2021-09-25 13:26:55.953285+05:30	76	380f057b-d36a-4510-9662-864c2fafbd40
5ffeb7b3-18ee-449d-8a44-1b82c2e847e3	1	A	2021-04-01	2022-03-31	f	\N	2021-09-26 13:35:21.712053+05:30	2021-09-26 13:35:21.681634+05:30	2	8ae6a8c2-dc63-4d3c-95be-ff283fdcbfb0
9147178a-3dbe-495d-8148-6df059765c74	1	M	2020-01-01	2022-03-31	f		2021-03-17 12:45:03.511+05:30	2021-03-17 12:45:03.485+05:30	12	084d39dd-6fda-4b66-9ad9-ae86d0003a10
37b3833c-35a6-44a4-8cb6-bc3abc18a2be	1	A	2021-04-01	2022-03-31	f	\N	2021-09-26 23:32:56.808516+05:30	2021-09-26 23:32:56.77194+05:30	79	e99a0988-637e-454f-b566-805159df8b97
1d9b44bf-3707-4dd4-acb4-794b55762db4	1	A	2021-01-01	2022-12-31	f	\N	2021-10-01 11:18:53.395453+05:30	2021-10-01 11:18:53.362965+05:30	76	df9a7e6c-11bd-49af-b35e-f48b116f95a6
3752c8ad-5e0d-48e4-a6fc-ac79dfd7a4a7	1	A	2021-04-01	2022-03-31	f	\N	2021-10-01 11:23:52.494888+05:30	2021-10-01 11:23:52.4665+05:30	2	e3d49bf9-17c5-4e38-9997-25215b50e505
ebbf6295-c5b6-4f21-8ab2-9fc9332a9b5e	1	A	2021-04-01	2022-03-31	f	\N	2021-10-01 11:27:33.991644+05:30	2021-10-01 11:27:33.802265+05:30	2	d9a91d63-2e50-4fc2-be07-e66a5f9add80
cdfa19fe-9f43-4fc7-9a71-1be3a29b494b	1	A	2021-04-01	2022-03-31	f	\N	2021-10-01 20:07:30.372551+05:30	2021-10-01 20:07:30.316322+05:30	81	a7bc7605-e44c-4f06-8cd2-f4e8bb1f00f0
abafe615-2857-48d6-ab5f-ad1f39fff567	1	A	2021-10-01	2021-10-09	f	\N	2021-10-02 11:20:14.613463+05:30	2021-10-02 11:20:14.58629+05:30	2	1b0083fb-5a75-4562-9b4b-613e27a2222e
9fa87cf4-4d06-482b-9c6f-86d746df1c07	1	A	2021-10-02	2021-10-30	f	\N	2021-10-02 11:26:59.315756+05:30	2021-10-02 11:26:59.285266+05:30	62	82a6282d-3df3-40cc-accd-46210965843f
72adf900-82c4-41e6-b20a-cd7c0024f352	1	A	2021-10-01	2021-10-08	f	\N	2021-10-02 14:46:48.777018+05:30	2021-10-02 14:46:48.748244+05:30	62	fea7a719-3a31-4194-9612-2993a8f361d5
8c23c69c-6905-450b-a8e9-4227ba395f4b	1	A	2021-10-04	2021-10-01	f	\N	2021-10-04 10:35:49.329978+05:30	2021-10-04 10:35:49.301235+05:30	76	c1105db0-5b80-44fe-a80c-505e0eeebeb4
3fbc7d4e-a78a-451d-80bc-3be08cc1acbe	1	A	2021-04-01	2022-03-31	f	\N	2021-10-05 14:07:15.56867+05:30	2021-10-05 14:07:15.540449+05:30	62	17c69f83-436f-428f-9618-f24f1b13cdfe
67e05a7d-8312-458e-be6f-ef0b766de205	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 15:47:14.347391+05:30	2021-10-07 15:47:14.316862+05:30	2	58744bff-2589-4580-82ad-a294cc94fe92
38e5d5db-1a64-4830-87d1-0fc20561cdc1	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 15:51:04.873918+05:30	2021-10-07 15:51:04.829027+05:30	2	fafdc340-4ea2-4097-b8b7-9f5180f48ec2
6575d38b-c5c1-475a-8acd-0eaa138385dc	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 15:54:44.95522+05:30	2021-10-07 15:54:44.924149+05:30	2	90bc3689-942e-4857-9db4-13b284708422
efde1faa-15f9-49ab-88b4-077fc40d6030	1	A	2021-01-01	2022-03-31	f	\N	2021-01-14 20:54:37.093+05:30	2021-01-14 00:00:00+05:30	3	2064907b-3dd6-4efe-a449-d2f3ad4bf9c4
7fa6da33-2771-4d33-813f-9522416e0529	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 15:59:07.916509+05:30	2021-10-07 15:59:07.876406+05:30	82	e0a6a17b-0ac9-4869-97ed-b8b5e6dcbe5b
27894fcd-ae62-4e87-a8ce-d681d9c9e837	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 16:34:56.210947+05:30	2021-10-07 16:34:56.180089+05:30	82	c556d8f4-9261-429d-9c16-493372bed121
90dd325f-712a-493b-9b88-06a911a8753f	1	A	2021-04-01	2022-03-31	f	\N	2021-10-12 13:09:13.393182+05:30	2021-10-12 13:09:13.323585+05:30	82	def89dfa-fa07-494c-b9d2-fdc356ff7390
dd31868a-00e7-4cbe-9c16-38e1c17c39bd	1	A	2021-04-01	2022-03-31	f	\N	2021-10-19 13:47:11.834607+05:30	2021-10-19 13:47:11.793372+05:30	83	70106d11-672e-40ea-9f50-a5495faa515a
5240a5b3-f88a-451c-a1c3-6fccafdab640	1	M	2021-02-01	2022-03-31	f		2021-06-18 19:20:33.462965+05:30	2021-06-18 19:20:33.426553+05:30	36	54ba4163-584f-4d3f-bb02-120b9800ba97
e4ad9158-2851-42be-a99f-d80f61d425e6	1	A	2021-04-01	2022-03-31	f	\N	2021-10-21 17:32:55.129888+05:30	2021-10-21 17:32:55.080086+05:30	83	d8fcda4b-0921-4469-b0fe-317c837c4d98
3b445e4c-de8d-4d68-bee5-b89eafa2af73	1	A	2021-01-01	2021-12-31	f	\N	2021-10-25 20:23:47.106329+05:30	2021-10-25 20:23:47.065525+05:30	77	8c8b40fa-b314-4141-8356-cc371d08aefa
9a26a533-e3aa-4836-9970-8f0b25d32ab3	1	A	2021-01-01	2021-12-31	f	\N	2021-10-25 20:57:05.775681+05:30	2021-10-25 20:57:05.743077+05:30	77	d66bfe5c-8871-4d76-97f5-60f4a1c8462b
9ef7fcbe-0a75-434f-84a0-23b94f38bbc8	1	A	2021-04-01	2022-03-31	f	\N	2021-06-15 09:54:55.99076+05:30	2021-06-15 09:54:55.963982+05:30	31	ded7822a-1355-40c1-aa0d-2335153d4d08
53c6a11b-d602-4660-a288-f7247b67ba18	1	A	2021-01-01	2021-12-31	f	\N	2021-10-26 19:46:32.878522+05:30	2021-10-26 19:46:32.848009+05:30	85	8900c397-2a72-45ee-98f0-d76b7e977e7e
178e410f-070f-492b-9972-08d776963ed9	1	A	2021-04-01	2022-03-31	f	\N	2021-10-27 11:23:14.05502+05:30	2021-10-27 11:23:14.023768+05:30	88	9b254010-7079-4dd2-b2be-8e295129053f
fe4d81b9-1527-414d-bae7-15033b564508	1	A	2021-01-01	2021-12-31	f	\N	2021-06-20 00:18:45.880079+05:30	2021-06-20 00:18:45.818593+05:30	51	6fe810cd-e99d-4d28-8dd3-303553fe14e2
ff20549f-4bb7-4908-9bda-7c4bc1418beb	1	A	2021-01-01	2021-12-31	f	\N	2021-10-27 23:20:57.725868+05:30	2021-10-27 23:20:57.697151+05:30	88	beb18073-499e-4957-b970-5310af39ee36
aaa461ae-8e2c-4a48-9cda-6a5198130e1f	1	A	2021-04-01	2022-03-31	f	\N	2021-10-28 13:59:45.192+05:30	2021-10-28 13:59:45.149795+05:30	88	efd37913-c2c4-41da-9345-2f5b1dda652f
3b2e5107-4f6d-48b6-9a6d-1459b7588a4b	1	A	2021-04-01	2022-03-31	f	\N	2021-10-29 20:22:04.60674+05:30	2021-10-29 20:22:04.573856+05:30	89	52989974-f7f9-4066-bfdb-04d3b71e9c39
58f92120-28c0-4bcc-acd5-cf2913a61888	1	M	2021-04-01	2024-03-31	f		2021-04-25 01:08:47.867+05:30	2021-04-25 01:08:47.843+05:30	29	878acf1f-6090-47f6-ab00-2b0f61cbcce6
b6462625-0662-4263-b5cd-39c8db78a4f0	1	A	2021-07-01	2022-03-31	f	\N	2021-07-23 14:25:28.203115+05:30	2021-07-23 14:25:28.178157+05:30	62	7f5f2967-d1f6-46b0-8528-5fe4f061c6b7
7dfdfca5-4940-4202-889a-af8d67a6196c	1	M	2021-04-01	2023-03-31	f		2021-05-26 03:46:06.333+05:30	2021-05-26 03:46:06.302+05:30	47	343e4652-7e73-4f3c-967f-fba6122da413
23f16bd4-aeb7-4794-96a5-d17f9d11a07b	1	M	2021-04-01	2023-03-31	f		2021-04-15 01:52:35.1+05:30	2021-04-15 01:52:35.074+05:30	16	bb16b31d-b2b4-4897-9611-aa17ebbb8152
cf44f824-96f4-43e3-9c13-0182e2172d8a	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 14:29:20.188663+05:30	2021-07-23 14:29:20.164635+05:30	2	6359db66-3b9a-4472-9650-5b3e7b5da936
ecdee4b2-ace6-4fa8-b965-91bb27539abf	1	A	2021-04-01	2022-03-31	f	\N	2021-07-23 14:33:28.009201+05:30	2021-07-23 14:33:27.979833+05:30	62	e3b4870c-33ad-463a-95bc-889ec221cd4d
7b1bd2c8-3afc-41bd-acf9-11c447c36543	1	A	2021-04-01	2022-03-31	f	\N	2021-06-28 13:01:53.643315+05:30	2021-06-28 13:01:53.605923+05:30	54	11d9b1b1-b379-4e1a-86f9-90b77110b675
155517be-960d-4d7f-a4e1-98fae8938bf2	1	A	2021-04-01	2022-03-31	f	\N	2021-09-16 10:51:00.776002+05:30	2021-09-16 10:51:00.746247+05:30	76	d05198b3-47e0-4d5e-ab67-1562ffa9f688
8e663b2b-04da-4b07-a707-299264524055	1	A	2021-04-01	2022-03-31	f	\N	2021-07-04 00:28:47.870158+05:30	2021-07-04 00:28:47.815801+05:30	12	830d6737-3e27-466d-9f25-13c655bddde2
0b04ac01-5b79-40ee-8d2c-dd81e7adcac6	1	A	2021-04-01	2022-03-31	f	\N	2021-07-06 16:32:00.463091+05:30	2021-07-06 16:32:00.4278+05:30	56	622047c2-fa8b-416f-a1fb-02918e01edab
6b6a51c8-ca27-472c-961d-f077010c0b3d	1	A	2021-04-01	2022-03-31	f	\N	2021-07-07 22:13:35.536537+05:30	2021-07-07 22:13:35.495033+05:30	57	1b8f0a96-fe52-44aa-8bae-1bb62066c31c
7bdb0e97-938e-41e8-88c7-90d185d20105	1	A	2021-04-01	2022-03-31	f	\N	2021-10-01 11:25:34.618684+05:30	2021-10-01 11:25:34.590929+05:30	62	597de874-8040-46f0-ae1f-9b552d0e0e2f
0f09f50f-4ef1-4900-9dd7-89c619e16b56	1	A	2021-04-01	2022-03-31	f	\N	2021-10-01 20:08:19.928599+05:30	2021-10-01 20:08:19.90121+05:30	81	bd326aa7-e4d5-46a0-a186-ab18c7601861
7bf77b0a-ad7d-437d-85c3-ad60f51a1b22	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 15:47:39.706114+05:30	2021-10-07 15:47:39.676084+05:30	2	8fde579f-26cc-4da9-bb60-09e46f6ebfac
b66b240a-c14f-4cde-beb6-6edd04ceaffa	1	A	2021-04-01	2022-03-31	f	\N	2021-10-07 15:56:57.919389+05:30	2021-10-07 15:56:57.861055+05:30	82	dc90ba64-a612-4f54-98c8-3b2958252025
25ad4504-ec7d-4c94-993e-e3c9707d1ec8	1	A	2021-04-01	2022-03-31	f	\N	2021-10-30 14:56:30.893705+05:30	2021-10-30 14:56:30.862102+05:30	83	3f4bb1ba-1e0e-4843-817c-a47566638c07
9a71677b-9283-4059-8fb6-34effff73cef	1	A	2021-04-01	2022-03-31	f	\N	2021-10-30 14:58:13.146059+05:30	2021-10-30 14:58:13.115721+05:30	83	81dfac4b-d05d-4df1-83ef-b2ecd9bf48b2
531b9b49-af8c-4359-b4f9-59caba01ab4f	1	A	2021-04-01	2022-03-31	f	\N	2021-10-31 20:53:27.705203+05:30	2021-10-31 20:53:27.671122+05:30	90	adfe0099-614a-45ea-87a5-18c0bafbd87b
b536269c-2430-48ad-8f81-c84cd17223a9	1	A	2021-01-04	2022-03-10	f	\N	2021-11-03 10:52:23.679663+05:30	2021-11-03 10:52:23.640634+05:30	91	ad6522e3-a264-40cc-8afb-e87f5b46ad66
5397b27b-b4f7-43b8-9c00-afa0fbdc0235	1	A	2021-04-01	2022-03-31	f	\N	2021-11-03 20:50:54.476281+05:30	2021-11-03 20:50:54.446117+05:30	92	f0c06f47-1a55-450b-b4e5-a410afe78803
d884f8fa-e2e9-4fa8-9f00-7bd79a6c4261	1	A	2021-04-01	2022-03-31	f	\N	2021-11-04 12:56:48.703563+05:30	2021-11-04 12:56:48.672989+05:30	82	e1c64904-40fc-4693-958f-184d2017ed65
fbf4e74a-7623-4f15-a402-ac76b0937742	1	A	2021-04-01	2022-03-31	f	\N	2021-11-05 11:38:18.616204+05:30	2021-11-05 11:38:18.57474+05:30	96	fee75eb9-a4ee-4003-aab4-348844106ae2
e9875fda-4dda-469d-948c-a431c62c96f2	1	A	2021-04-01	2022-03-31	f	\N	2021-11-06 15:35:23.92887+05:30	2021-11-06 15:35:23.896415+05:30	97	06e243cc-0967-4abc-9ba6-0cba46ba6b76
5daf0707-6370-4536-b94e-2d603360be0d	1	A	2021-04-01	2022-03-31	f	\N	2021-11-07 00:45:09.379134+05:30	2021-11-07 00:45:09.350125+05:30	83	02551eab-9dd6-42a9-bd32-e58ae0dbe548
02e7f5ff-cd17-4779-bd37-cd86b9f67f7d	1	A	2021-04-01	2022-03-31	f	\N	2021-11-07 00:46:46.002253+05:30	2021-11-07 00:46:45.972298+05:30	83	7b06282d-5d53-4e02-b2c8-35e44428866e
b4a584b1-f26c-43a8-aa39-eb717c897984	1	A	2021-04-01	2022-03-31	f	\N	2021-11-07 00:47:29.462748+05:30	2021-11-07 00:47:29.433768+05:30	83	5c49d7f2-e91f-4dcc-8119-4d99fb1b1131
cc2a1206-3d06-42ff-a75d-daf263281439	1	A	2021-04-01	2022-03-31	f	\N	2021-11-09 13:40:50.382937+05:30	2021-11-09 13:40:50.350269+05:30	103	8784b5b2-94e0-4357-b178-f40be7af55b3
11e0609e-9d8a-4b8e-88d4-2ad04bc14b19	1	A	2021-04-01	2022-03-31	f	\N	2021-11-10 16:20:11.420338+05:30	2021-11-10 16:20:11.380374+05:30	2	417147a0-4ba1-4feb-a826-bdcbb3319fb9
9457538e-9ae3-4a73-ad1c-ed56d4bffcaf	1	A	2021-04-01	2022-03-31	f	\N	2021-11-10 22:23:06.695612+05:30	2021-11-10 22:23:06.628431+05:30	106	97ba1b7c-1ebc-44cd-87fd-b13c5ad59e5b
33b98c84-5fa4-4ba8-b499-4ba567cbe83f	1	A	2021-11-01	2021-11-30	f	\N	2021-11-14 22:13:24.280376+05:30	2021-11-14 22:13:24.238702+05:30	84	bae725f9-8660-4c26-952c-547ccaba8380
158b90e5-7524-46ed-ac40-cb2370c149b9	1	A	2021-04-01	2022-03-31	f	\N	2021-11-14 23:19:45.323343+05:30	2021-11-14 23:19:45.291345+05:30	110	dae06e2b-6905-4876-80f4-a974e99e02e8
36aba1d9-b4ac-45f1-860d-95b4c4eabb9f	1	A	2021-04-01	2022-03-31	f	\N	2021-11-16 13:16:17.487512+05:30	2021-11-16 13:16:17.445993+05:30	101	904da37a-8db4-4c00-b5b4-5c38207f4299
322ceb0e-98f2-4084-a287-f18341b1a33b	1	A	2021-04-01	2022-03-31	f	\N	2021-11-16 13:30:35.044239+05:30	2021-11-16 13:30:35.012043+05:30	101	fd6bcfc3-7c9c-4f18-9e6e-413b7ef23182
1cef79fe-575d-4354-b465-ef1e3c04a9e8	1	A	2021-04-01	2022-03-31	f	\N	2021-11-16 19:09:53.081917+05:30	2021-11-16 19:09:53.051577+05:30	62	a808d432-9a5f-4cc5-84a4-aebf09906d27
c5aa6146-0af0-4409-b120-272668a4b209	1	A	2021-01-01	2022-12-31	f	\N	2021-11-16 21:31:18.551222+05:30	2021-11-16 21:31:18.514897+05:30	112	d92f7ae5-6b6b-4922-b196-c0e3d1a4116d
cb4cdf15-3f48-4bc6-ba0a-04fec9cd5d32	1	A	2021-04-01	2022-03-31	f	\N	2021-11-17 12:06:57.383191+05:30	2021-11-17 12:06:57.341625+05:30	83	ad3aab21-4da2-41d2-b199-0af44bdde30d
ff1ec5ab-e54b-4ec9-9303-5e38f16324ce	1	A	2021-12-01	2022-11-30	f	\N	2021-11-18 22:30:30.741832+05:30	2021-11-18 22:30:30.705877+05:30	134	3c69ed9e-eb41-46cf-90d1-daa69d0f1a20
b67e1858-03e7-4987-ab61-c07100ed9c2d	1	A	2021-04-01	2022-03-31	f	\N	2021-11-19 11:37:46.469198+05:30	2021-11-19 11:37:46.430102+05:30	62	cba9c14c-87ff-4230-8177-3865bb7bd3b0
711f7bd5-a27e-4d42-917d-df154a62d901	1	A	2021-04-01	2022-03-31	f	\N	2021-11-19 11:43:44.533257+05:30	2021-11-19 11:43:44.498714+05:30	62	05293d19-7c82-421f-90d5-f416c0f87e58
08e3e0b5-8722-4ac0-b28b-3440f4cd4475	1	A	2021-04-01	2022-03-31	f	\N	2021-11-19 11:45:01.903961+05:30	2021-11-19 11:45:01.869573+05:30	138	aa43a8e1-895b-446e-af06-6a59b04f5008
1bceb469-2421-4d20-8043-7bc2dcae2f6a	1	A	2021-04-01	2022-03-31	f	\N	2021-11-19 11:49:23.253867+05:30	2021-11-19 11:49:23.216401+05:30	62	d4ca8637-696b-4ff0-8b88-991774b9547c
a5d33e91-bcec-4e3a-89b7-75f3dcfb45cf	1	A	2021-04-01	2022-03-31	f	\N	2021-11-20 15:29:30.988036+05:30	2021-11-20 15:29:30.941727+05:30	139	059d5661-440d-41a9-b9b8-84ddf090b1ca
61e97cd3-21c9-442e-ae85-3a1fcc45f963	1	A	2021-04-01	2022-03-31	f	\N	2021-11-22 16:26:25.947588+05:30	2021-11-22 16:26:25.906945+05:30	140	c0f6338d-7023-4cb9-bf23-4084d0584dbf
67cf4966-7e33-48e0-995d-887c0897186f	1	A	2021-04-01	2022-03-31	f	\N	2021-11-22 22:34:55.658957+05:30	2021-11-22 22:34:55.604305+05:30	83	8a61781a-6279-4e75-a23f-874775c385ed
23d28b44-9ab5-4e2f-94d2-c8c1bbce49e2	1	A	2021-04-01	2022-03-31	f	\N	2021-11-22 22:36:05.961135+05:30	2021-11-22 22:36:05.921825+05:30	83	144756c2-a583-497a-b493-87aff1a81873
3d8b7c8c-4227-404b-892b-cf1fbac88021	1	A	2021-04-01	2022-03-31	f	\N	2021-11-22 22:38:14.481325+05:30	2021-11-22 22:38:14.45211+05:30	83	0c7db4bb-6dd8-4d3a-a252-76ab210c32fd
1b75a3bf-b0bd-4c44-a2d9-e673cadefbe7	1	A	2021-04-01	2022-03-31	f	\N	2021-11-23 13:47:31.0557+05:30	2021-11-23 13:47:31.026526+05:30	2	aa14027b-6a27-435a-8b95-02d8f2f956ba
b026cab6-bf57-4c25-b3fa-6067130baa02	1	A	2021-04-01	2022-03-31	f	\N	2021-11-23 13:51:29.820892+05:30	2021-11-23 13:51:29.787636+05:30	2	55fccb7e-5ef7-4e03-8efc-57e54007d3dc
efe7aded-bb38-40a3-a804-37bee29271d1	1	A	2021-04-01	2022-03-31	f	\N	2021-11-23 15:50:11.520105+05:30	2021-11-23 15:50:11.485419+05:30	144	f3afa022-4542-43f4-8e7d-0b5e67fea701
ec451c8b-78d1-4ba2-a518-f71f7c5bfc5e	1	A	2021-04-01	2022-03-31	f	\N	2021-11-23 17:34:51.498574+05:30	2021-11-23 17:34:51.464845+05:30	101	4345d53b-8bdc-4d2e-8a95-7250d81e04fb
85d33a42-ebb1-4c70-9c5f-7ac113a0df08	1	A	2021-11-23	2022-11-22	f	\N	2021-11-23 18:10:22.561084+05:30	2021-11-23 18:10:22.085549+05:30	141	731bc7d9-f1ba-4694-b428-e709241f659c
aa3e5820-9e9c-49ee-b9eb-22914e68c876	1	A	2021-11-17	2022-11-15	f	\N	2021-11-23 19:11:47.868424+05:30	2021-11-23 19:11:47.831616+05:30	62	b07cde28-a7b5-479f-9b97-67b74d6f4c2b
7db43022-a677-42ed-9845-210253b22900	1	A	2021-04-01	2022-03-31	f	\N	2021-11-23 20:34:48.181603+05:30	2021-11-23 20:34:48.102387+05:30	146	5696770c-1f49-40aa-9706-8be7136a32a4
5d111005-6a04-4ba4-9b03-70f91a138595	1	A	2021-04-01	2022-03-31	f	\N	2021-11-23 21:47:59.415492+05:30	2021-11-23 21:47:59.382226+05:30	147	e8749c1f-0a82-4852-be97-56990b990e76
13601c8e-52cb-4f50-9d7d-bd40942ba15e	1	A	2021-04-01	2022-03-31	f	\N	2021-11-24 12:14:25.013669+05:30	2021-11-24 12:14:24.965146+05:30	134	32e26c3f-3945-43ea-84e0-7dc2fdc9f5d9
f23e5a00-aba3-4aed-8ea3-db786225f2f0	1	A	2021-04-01	2022-03-31	f	\N	2021-11-24 15:07:28.596623+05:30	2021-11-24 15:07:28.539176+05:30	76	0cf65f46-4722-4490-a8cb-ef1aee465f59
5d3e06e4-9f78-48b5-bdf7-03e05c61e481	1	A	2021-04-01	2022-03-31	f	\N	2021-11-24 19:54:44.98061+05:30	2021-11-24 19:54:44.942523+05:30	142	cf65fc71-7ef9-4a20-a6e1-7118eeb1ef99
2f29a011-008d-466b-bcf2-3af6fa1a54f6	1	A	2021-04-01	2022-03-31	f	\N	2021-11-25 17:17:50.699988+05:30	2021-11-25 17:17:50.654959+05:30	2	86488016-4142-49a1-bde5-0b6e13014029
8c47ec76-c3aa-4127-89d4-beeae962cae5	1	A	2021-11-25	2022-11-24	f	\N	2021-11-25 17:42:18.130056+05:30	2021-11-25 17:42:18.090232+05:30	148	c9527e80-2437-4a51-b538-bde826c88a43
d47f66ef-5482-4b51-865c-4cfc8c2a1a7e	1	A	2021-04-01	2022-03-31	f	\N	2021-11-25 21:10:59.317422+05:30	2021-11-25 21:10:59.282809+05:30	149	7bfb9431-3460-4576-b7f7-464df6239ec1
d94ae0ac-2aad-494a-83db-78e44a115a4a	1	A	2021-11-10	2021-11-03	f	\N	2021-11-26 16:40:04.216597+05:30	2021-11-26 16:40:04.16584+05:30	2	e45bad0e-d49b-4502-8439-7f1e3d669032
b81d63fd-b6f9-4de7-a357-48f5a1fae2bc	1	A	2021-04-01	2022-03-31	f	\N	2021-11-26 20:32:45.924048+05:30	2021-11-26 20:32:45.889816+05:30	40	0d223f81-c094-4f4d-9385-10f64215d27c
2ea324a7-cf78-475f-b91b-a317295e1b0f	1	A	2021-11-26	2022-12-30	f	\N	2021-11-26 21:21:18.317176+05:30	2021-11-26 21:21:18.283804+05:30	154	061eb840-e145-40cf-9aa9-0e498bb83175
221bb62a-c8a8-4f8f-803a-13a973645db2	1	A	2021-04-01	2022-03-31	f	\N	2021-11-27 01:03:14.796707+05:30	2021-11-27 01:03:14.764768+05:30	153	55168dd0-08be-4eb3-bfe9-a35ca739538b
853191eb-4acd-44d3-9b33-ad47eb94140f	1	A	2021-04-01	2022-03-31	f	\N	2021-11-27 01:07:53.268673+05:30	2021-11-27 01:07:53.061523+05:30	155	46cae537-b9f9-42fd-b546-06e9dc2bb812
af1eb309-379a-46b9-a185-b76510767f9e	1	A	2021-04-01	2022-03-31	f	\N	2021-11-27 01:24:33.624307+05:30	2021-11-27 01:24:33.583599+05:30	156	6f95910f-277d-4dd7-8584-d0e832ce1f39
d8810417-7a1a-4de2-bf42-59eeb9527590	1	A	2021-04-01	2022-03-31	f	\N	2021-11-27 14:59:48.943452+05:30	2021-11-27 14:59:48.909996+05:30	157	88faf6cc-e89e-4be9-986a-0545a4093b56
b54241b5-1202-4837-8e5d-5235e252fc20	1	A	2021-04-01	2022-03-31	f	\N	2021-11-27 16:50:13.609929+05:30	2021-11-27 16:50:13.56534+05:30	158	dc2c8aa1-30b1-4ead-a74c-5db0950aceab
e2f90a68-406d-40f6-b6b9-300ae2d84401	1	A	2021-04-01	2022-03-31	f	\N	2021-11-28 15:07:13.316202+05:30	2021-11-28 15:07:13.238907+05:30	159	e90a806e-cf1b-452e-aa23-64d3b60eae50
8e3148af-2d4f-4c64-b063-bf9b1bfc5726	1	A	2021-04-29	2022-04-01	f	\N	2021-11-29 12:34:30.275969+05:30	2021-11-29 12:34:30.236293+05:30	76	bbde7d40-82ae-4a1a-ab98-358304f7270f
53fd4b44-2de5-471b-91db-89e3c8268586	1	A	2021-04-01	2022-03-31	f	\N	2021-11-29 22:52:02.245414+05:30	2021-11-29 22:52:02.211069+05:30	161	5b57265f-5913-4212-b405-387a7c5bbf56
b0ef1dcf-b43a-4f3d-bb01-2d69d9b10257	1	A	2021-11-29	2022-11-30	f	\N	2021-11-29 23:42:26.686306+05:30	2021-11-29 23:42:26.646658+05:30	102	a193c887-5b48-4b77-a07f-b15834ad0c09
1472d45f-ad5e-4acb-a5f8-765351fc68ad	1	A	2021-04-01	2022-03-31	f	\N	2021-11-30 01:43:33.646335+05:30	2021-11-30 01:43:33.614283+05:30	162	ace058bf-1449-4e97-b46c-4e999525aac1
6c071035-04e9-42d3-9197-c00a34257e02	1	A	2021-04-01	2022-03-31	f	\N	2021-11-30 23:00:45.400234+05:30	2021-11-30 23:00:45.364384+05:30	146	60925298-8f48-4db2-ab03-8815c0278623
11fbb658-cbca-4ca8-aad6-483131b7e62a	1	A	2021-04-01	2022-03-31	f	\N	2021-11-30 23:06:44.941981+05:30	2021-11-30 23:06:44.909845+05:30	149	8bc08e87-b0ed-4295-a58f-0b903fdc24d3
f2081aaf-0138-4a49-8f18-17732bbe6562	1	A	2021-12-01	2022-12-31	f	\N	2021-12-01 12:56:30.483256+05:30	2021-12-01 12:56:30.448566+05:30	175	28d5bbcf-47cf-4f3c-ab93-a547b0e377aa
8d97d176-2281-469b-b1b8-7156060851d1	1	A	2021-12-01	2022-12-01	f	\N	2021-12-01 14:31:38.752505+05:30	2021-12-01 14:31:38.720908+05:30	177	800d482a-bf47-403b-9988-d4c2e0ee0cfd
ed94bf78-5557-46a1-a2e6-7381d62fa49e	1	A	2021-04-01	2022-03-31	f	\N	2021-12-01 21:48:30.638248+05:30	2021-12-01 21:48:30.606027+05:30	173	a3ade88a-d45f-4f41-880f-6ebac146db28
0f27677b-08ed-4d33-ae49-ce49e6a8eef0	1	A	2021-04-01	2022-03-31	f	\N	2021-12-02 04:03:08.103111+05:30	2021-12-02 04:03:08.068783+05:30	182	ce2fe87f-0cda-4f7b-86dd-2c0f5300ddaa
5c5c5cf0-65da-453d-87dd-f4b32f743e44	1	A	2021-04-01	2022-03-31	f	\N	2021-12-02 15:02:00.911633+05:30	2021-12-02 15:02:00.854159+05:30	178	6f7eb0d3-719d-43fa-9c33-c9bac79038a7
2db06b6f-8f6c-4e01-9f1e-d50a7bdea2da	1	A	2021-12-01	2022-12-31	f	\N	2021-12-02 15:27:42.167975+05:30	2021-12-02 15:27:42.134173+05:30	78	2ee86397-902d-4136-94ab-9f7efd004004
b6767f20-32bc-48b8-87de-ab2bbdfa5101	1	A	2021-12-02	2022-12-02	f	\N	2021-12-02 20:15:05.427+05:30	2021-12-02 20:15:05.390854+05:30	184	d04da6b7-4d95-44ce-9357-663d167994e4
1fdbbeaa-e0cf-4919-a02c-f74b390b6a79	1	A	2021-12-02	2022-12-01	f	\N	2021-12-02 20:53:12.677295+05:30	2021-12-02 20:53:12.644679+05:30	186	cd8d14e6-6b32-4322-be37-07cc2fa5b940
466b92de-2daf-4e1f-a200-5eb7d2a97a35	1	A	2021-04-01	2022-03-31	f	\N	2021-12-02 21:30:06.844837+05:30	2021-12-02 21:30:06.810295+05:30	188	821d06a3-3da2-43fe-9e61-1bfd714c36cd
924bf83b-6775-466d-8308-9772d55407f2	1	A	2021-04-01	2022-03-31	f	\N	2021-12-02 23:02:20.170013+05:30	2021-12-02 23:02:20.134253+05:30	190	1042f7e8-2064-41d2-805d-52a905731082
758c9dac-48af-43f3-b6e7-22fd830f627d	1	A	2021-04-01	2022-03-31	f	\N	2021-12-03 00:00:57.968774+05:30	2021-12-03 00:00:57.936829+05:30	189	000ef3b4-34ec-494b-b6be-d81706cfc940
d4fdf588-ef0b-4aeb-ad33-2e720513c6be	1	A	2021-04-01	2022-03-31	f	\N	2021-12-03 01:11:43.471795+05:30	2021-12-03 01:11:43.438511+05:30	191	dad5038c-1339-466a-8a8e-2e61c55cf0d0
13d31f9e-cda5-4131-9ba9-4777ed773dbe	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 11:21:48.506469+05:30	2021-12-06 11:21:48.470127+05:30	76	f711c84a-e80d-4bfa-8fb2-f8ffffc926aa
4d131c0e-ca01-413f-8686-840a252ca1d5	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 11:53:00.648497+05:30	2021-12-06 11:53:00.611246+05:30	76	2ba14ac3-2c8d-46e7-bf1d-00c637ed6624
87eafe34-23d5-4f14-95b1-88490859ffe3	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 11:57:27.546097+05:30	2021-12-06 11:57:27.508512+05:30	76	fa92f5e0-5f93-489f-9039-c1889af9d08a
869dda13-2654-4e15-9178-a8d20e44ce59	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 11:59:08.439078+05:30	2021-12-06 11:59:08.404195+05:30	2	4428a892-0ab9-4ca5-b9f8-26f5045ae2f2
935a2340-500c-4218-af2b-3485405fd920	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 12:00:46.778052+05:30	2021-12-06 12:00:46.722565+05:30	2	8cf7071e-0e75-43e9-aece-76e9574b8650
304df720-4fd3-49ab-9be2-7decfd68edfd	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 12:04:27.663059+05:30	2021-12-06 12:04:27.622364+05:30	2	0e1ad0b7-67f2-4102-bb4a-5620a9bc5fe6
421b9b94-3961-4995-807e-ae0dd575029a	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 12:46:44.973225+05:30	2021-12-06 12:46:44.937483+05:30	76	c1a3ee0e-4bf1-447c-954e-54f56bdaaa54
2fc1b4db-008c-4d46-8119-3d141f0624ca	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 12:49:13.689847+05:30	2021-12-06 12:49:13.659066+05:30	76	d06ea795-8605-4081-bf24-0c730a9f4108
28cc4832-38eb-4040-9d1f-f98757660866	1	A	2021-04-01	2022-03-31	f	\N	2021-12-06 14:14:17.588532+05:30	2021-12-06 14:14:17.557898+05:30	76	3209e419-99c7-40fe-8356-a8ac77a5c5db
491a8957-013b-4b1c-951f-fafe222fb412	1	A	2021-01-01	2021-12-31	f	\N	2021-12-06 14:57:54.858286+05:30	2021-12-06 14:57:54.825424+05:30	206	94a7c471-ab5e-468b-afd1-9655ec29a9fc
6663236a-b8b0-4454-9bc1-946c6ecb0ada	1	A	2021-12-06	2022-12-05	f	\N	2021-12-06 21:31:47.612096+05:30	2021-12-06 21:31:47.578178+05:30	223	338771ca-5f9e-4743-8d07-eec2b20d19db
b9736ffe-8f2d-48cf-962c-a919551deaeb	1	A	2021-12-06	2022-12-05	f	\N	2021-12-07 01:26:50.46441+05:30	2021-12-07 01:26:50.435341+05:30	227	45eafbb3-0da1-437c-ac09-2e9ce9cc3e22
2d16539f-ae40-4796-b983-e67e551a78f7	1	A	2021-12-06	2022-12-05	f	\N	2021-12-07 01:53:20.418458+05:30	2021-12-07 01:53:20.384313+05:30	226	c68aa9e2-9c87-4aa9-b750-791a919ab962
865b8ac4-3689-4400-ae88-44d83b448015	1	A	2021-04-01	2022-03-31	f	\N	2021-12-07 10:25:22.831738+05:30	2021-12-07 10:25:22.797772+05:30	222	1e8b311c-977c-4b43-b90e-6b1efb5a546c
7f4e9c56-09c8-4b7e-9e03-5a18f7e22bc9	1	A	2021-04-01	2022-03-31	f	\N	2021-12-07 10:31:31.751051+05:30	2021-12-07 10:31:31.715582+05:30	222	af91cb66-6ad3-4ae7-8c49-30aab7202bb8
cbf2a5f0-4871-4944-bef6-bfb961f1af2c	1	A	2021-04-01	2022-03-31	f	\N	2021-12-07 20:36:38.69527+05:30	2021-12-07 20:36:38.667358+05:30	228	1a07d7d9-76c0-4f70-b58f-a19c48777a69
a0134720-9ffb-486f-8a3d-acd2184b63eb	1	A	2021-12-08	2022-12-23	f	\N	2021-12-08 16:04:55.481843+05:30	2021-12-08 16:04:55.447152+05:30	62	fffc6766-24a0-4220-a9ec-258e579c8646
d1102330-94e8-443c-a8b2-84e24c063696	1	A	2021-12-08	2025-12-19	f	\N	2021-12-08 16:06:47.369829+05:30	2021-12-08 16:06:47.334824+05:30	62	66baa829-5f3e-46a2-a0dc-2b97b412972b
40bbc8ac-82ba-44d5-b1d4-e436a8b06102	1	A	2021-04-01	2022-03-31	f	\N	2021-12-08 17:57:40.694807+05:30	2021-12-08 17:57:40.662814+05:30	230	9add367f-35fd-44dd-90c1-a8a3933f647b
e2c684ee-f42a-4b99-ba3d-6fabb992e21e	1	A	2021-04-01	2022-03-31	f	\N	2021-12-08 19:31:59.417365+05:30	2021-12-08 19:31:59.386204+05:30	229	6ccc3235-113e-4ae4-b902-4b460c3f15a2
fdd21aa1-dc95-479f-9a59-3da36609df41	1	A	2021-12-07	2021-12-31	f	\N	2021-12-09 12:27:33.081188+05:30	2021-12-09 12:27:33.047754+05:30	62	94233b4a-c04d-4701-86a8-64b872e26f2b
f3fbe88d-8c93-416e-a7d7-c3f683dee7b5	1	A	2021-04-01	2022-03-31	f	\N	2021-12-09 13:20:57.78745+05:30	2021-12-09 13:20:57.757698+05:30	233	9732bb17-6e64-4bf0-b062-827145695dc9
d605cfb3-11ad-4ec5-a2a4-f3602aed5c3f	1	A	2021-04-01	2022-03-31	f	\N	2021-12-09 15:36:36.326906+05:30	2021-12-09 15:36:36.30015+05:30	76	e4039a97-876c-4261-af47-c4855e69f5c7
0646d441-c7bf-47be-838a-f8bb04498d5f	1	A	2021-04-01	2022-03-31	f	\N	2021-12-09 16:22:17.518702+05:30	2021-12-09 16:22:17.490909+05:30	76	567216c1-9bbf-4afe-bc20-4ef5b16232cf
621155e0-026d-4e08-bb44-8f6c94f9f9ee	1	A	2021-12-09	2022-03-31	f	\N	2021-12-09 17:54:06.075009+05:30	2021-12-09 17:54:06.0477+05:30	236	b6de6aa0-768c-4eac-8dee-34df869953ef
b5a4e8da-931e-442d-b48c-f7160f97f2ab	1	A	2021-04-01	2022-03-31	f	\N	2021-12-10 20:12:29.115513+05:30	2021-12-10 20:12:29.085727+05:30	240	fa2a2835-7a99-49e3-b5dd-c86e1f4d4e4c
0b9a7468-70e9-4c44-9cd8-89e3fe8a5c20	1	A	2021-04-01	2022-03-31	f	\N	2021-12-11 02:00:39.839208+05:30	2021-12-11 02:00:39.811848+05:30	243	c0e72460-6b32-4305-a8ec-633a70541d6c
dc263b4f-7049-4b58-bd21-deba052a2163	1	A	2021-04-01	2022-03-31	f	\N	2021-12-12 14:41:08.103103+05:30	2021-12-12 14:41:08.072469+05:30	244	246f6c2a-9020-4f96-b253-e67225c440b3
34c5170a-f338-4481-b329-2d507394ee5d	1	A	2021-12-15	2021-12-23	f	\N	2021-12-13 16:46:25.476505+05:30	2021-12-13 16:46:25.441749+05:30	34	a1792d81-1fd7-4e4d-ada0-ee8bdec02992
983ef0c6-795c-4b71-9820-f091c3de6a58	1	A	2021-12-14	2022-12-31	f	\N	2021-12-14 21:23:30.490209+05:30	2021-12-14 21:23:30.452959+05:30	247	3bd771a8-51d4-4593-a34e-cbe285d89382
7a5241f4-7737-4939-83da-371eb38d687d	1	A	2021-12-01	2022-11-30	f	\N	2021-12-15 00:07:32.38148+05:30	2021-12-15 00:07:32.32121+05:30	134	8b04bd41-e98d-420b-a973-3471ea65cc0b
e5091540-9dad-4d57-93f9-8260b76a7b43	1	A	2021-12-01	2022-12-31	f	\N	2021-12-15 00:11:11.42279+05:30	2021-12-15 00:11:11.383499+05:30	249	3459d3cd-4e84-407f-ae6a-dd5737aa8357
e7d02b07-349f-431d-976d-3cb3bd9c9173	1	A	2021-04-01	2022-03-31	f	\N	2021-12-17 18:59:29.52603+05:30	2021-12-17 18:59:29.492865+05:30	251	4faee31d-8578-46c4-9bc7-8fa3b174f0d1
8a9c9471-7768-4659-be46-da86f113c789	1	A	2021-04-01	2022-03-31	f	\N	2021-12-18 02:35:28.800703+05:30	2021-12-18 02:35:28.769508+05:30	252	428586a8-6265-45d7-b51a-ce93476eaf07
11d4a94d-7ef6-4b5d-b07c-19cdca1afdb3	1	A	2021-04-01	2022-03-31	f	\N	2021-12-18 16:29:27.912236+05:30	2021-12-18 16:29:27.882573+05:30	253	58e4743f-985f-4b99-8236-d8d8e38e3b30
e77c489d-33f0-4f09-b9d3-5836fd65c736	1	A	2021-12-21	2021-12-20	f	\N	2021-12-21 13:41:37.752901+05:30	2021-12-21 13:41:37.717409+05:30	258	12a3eeda-157b-4279-b111-712087578af9
cae08df8-ac98-42e1-a058-d1601f9ecb63	1	A	2021-04-01	2022-03-31	f	\N	2021-12-22 10:40:13.961066+05:30	2021-12-22 10:40:13.929978+05:30	260	8633ef36-2024-4b2d-811f-248ffe9ce681
9cb4bc52-c5cf-43c5-911f-975b64024fcd	1	A	2021-12-01	2021-12-23	f	\N	2021-12-23 22:25:47.641989+05:30	2021-12-23 22:25:47.60781+05:30	263	8cfce55d-f345-4699-a7b4-f2e7dd7f8481
f83e53ef-7151-4f14-8878-8f80df833fe8	1	A	2021-04-01	2022-03-31	f	\N	2021-12-24 19:03:01.266209+05:30	2021-12-24 19:03:01.232375+05:30	264	739321d9-3357-40ad-9c07-c656cef04bd1
410c10e0-def0-4a38-91ab-b72e4c710674	1	A	2021-04-01	2022-03-31	f	\N	2021-12-25 23:39:53.010257+05:30	2021-12-25 23:39:52.98219+05:30	267	4c62946d-e31e-4044-bf2c-9b07f79633e2
326cd743-e522-42fb-b756-a2b4ca60bcfc	1	A	2021-01-01	2021-12-31	f	\N	2021-12-26 14:03:01.88803+05:30	2021-12-26 14:03:01.852176+05:30	269	b56d5f64-ec3f-453b-86ac-2d41352c9451
3878f2be-a289-415a-bd66-ca8579962a27	1	A	2021-04-01	2022-03-31	f	\N	2021-12-26 15:23:56.722288+05:30	2021-12-26 15:23:56.692899+05:30	268	cf563b77-03bf-4b3f-8f4e-82d99b604c1f
966050bb-0779-428b-91b4-c9db74c9a7d7	1	A	2021-04-01	2022-03-31	f	\N	2021-12-26 18:26:40.016314+05:30	2021-12-26 18:26:39.98798+05:30	270	10ec1e50-5c23-477e-9cf9-07517a0222ca
43b1d491-b28f-491d-9498-0dcea1d7223e	1	A	2021-12-26	2022-12-31	f	\N	2021-12-26 21:10:47.87895+05:30	2021-12-26 21:10:47.845349+05:30	271	85c7097e-cb09-4def-804c-d2451fbbcf7f
45c4bb38-c5fe-462a-bcf3-656618e40bb9	1	A	2022-01-01	2022-12-31	f	\N	2021-12-28 21:09:04.397255+05:30	2021-12-28 21:09:04.361424+05:30	256	ef0fe35b-ae42-4a5a-8c00-1107dc86d86f
2a205800-e51c-41c9-a979-bcad4507b32c	1	A	2021-04-01	2022-03-31	f	\N	2021-12-29 15:50:42.249819+05:30	2021-12-29 15:50:42.218251+05:30	76	a14abb9a-4374-431e-8f47-babf9f786ae1
107470b2-5394-41a4-8e0b-5e029bacbe9a	1	A	2021-04-01	2022-03-31	f	\N	2021-12-29 22:04:21.921944+05:30	2021-12-29 22:04:21.894543+05:30	277	b6cf2ca0-4746-4683-8eb8-2f39b430df35
7746cbb9-bcfe-4741-b6d8-a948440444ce	1	A	2021-12-01	2021-12-31	f	\N	2021-12-31 01:08:44.204867+05:30	2021-12-31 01:08:44.168863+05:30	278	d5afab82-1ee6-4442-9473-96122adb22eb
f5df9f8d-88e4-4590-aee9-ed705c9db6a1	1	A	2022-01-02	2030-01-02	f	\N	2022-01-02 15:09:39.8087+05:30	2022-01-02 15:09:39.769729+05:30	281	fd5adf85-f4df-4510-a34e-d3bdb75bcf31
428e0a36-63ec-48bf-a45e-32cb39b7357b	1	A	2022-01-02	2022-01-02	f	\N	2022-01-03 00:01:28.477174+05:30	2022-01-03 00:01:28.441299+05:30	283	5a39ae37-95be-4f05-9012-415d49ff01f8
0f20055e-e36f-436c-868b-5a29598f7e9c	1	A	2022-01-02	2029-02-07	f	\N	2022-01-03 01:29:28.569698+05:30	2022-01-03 01:29:28.536208+05:30	285	7c4f3dab-df93-4d8d-bbb9-15c5bfc5f52f
4496923f-c038-407d-8e17-53a5e19f42a0	1	A	2022-01-03	2029-01-18	f	\N	2022-01-03 02:50:56.424242+05:30	2022-01-03 02:50:56.385909+05:30	286	b672fad5-ffb9-4b68-8457-1bcd82dfa8d0
d98c6941-2eeb-40fe-85ee-9b4d8aa64568	1	A	2022-01-01	2022-12-31	f	\N	2022-01-03 19:23:31.184142+05:30	2022-01-03 19:23:31.145828+05:30	287	f8e4c263-1e59-4a0b-a594-83a1602b5deb
563dcd44-a8b8-46fd-9b21-169adc24b75d	1	A	2022-01-03	2028-02-01	f	\N	2022-01-03 23:17:00.802968+05:30	2022-01-03 23:17:00.770577+05:30	292	ec84b858-b010-4367-a084-a89f265cab84
2b874995-02d2-4e6b-ab0b-5f50415abdd7	1	A	2021-04-01	2022-03-31	f	\N	2022-01-04 11:43:41.394441+05:30	2022-01-04 11:43:41.358054+05:30	76	2feb3adb-2ad6-4652-8e30-5803a6a421ae
f3c4c952-7da9-4599-bada-217dc7d0097f	1	A	2021-04-01	2022-03-31	f	\N	2022-01-04 15:57:02.558989+05:30	2022-01-04 15:57:02.527287+05:30	76	0a242295-c902-4a02-9b70-df025f55aa30
020be377-7620-49f1-9f0d-c6e5c3092144	1	A	2021-04-01	2022-03-31	f	\N	2022-01-04 23:44:17.814849+05:30	2022-01-04 23:44:17.775208+05:30	293	f53ccf9e-cc11-4bf9-a061-55a624fbf57d
aea2eab7-cc00-4980-899c-4dc2961f14e8	1	A	2022-01-04	2023-01-31	f	\N	2022-01-05 00:32:32.058167+05:30	2022-01-05 00:32:32.024043+05:30	294	da5ffe0d-059a-4552-8b46-2552cf9befb2
90255a58-325f-4863-bcd0-fd69521cf3c5	1	A	2022-01-05	2023-01-04	f	\N	2022-01-05 12:28:10.722244+05:30	2022-01-05 12:28:10.672351+05:30	296	a13a14b3-1c74-493e-9a5e-028230d1b098
2b68aaab-a991-466f-9a75-d346a3cc0a93	1	A	2022-01-01	2021-12-31	f	\N	2022-01-05 21:28:26.512352+05:30	2022-01-05 21:28:26.472995+05:30	297	334e676d-1f87-425c-b2ae-a876c350d310
4abebbae-24f7-4481-a2ff-27470b6ad4ca	1	A	2022-01-01	2022-01-31	f	\N	2022-01-05 21:55:20.663044+05:30	2022-01-05 21:55:20.62718+05:30	256	99e0e153-5976-4ef2-86a5-ed5338c59367
9ed38345-ca6b-469c-a959-75433d7ee379	1	A	2022-01-06	2022-01-06	f	\N	2022-01-06 23:30:55.712868+05:30	2022-01-06 23:30:55.672247+05:30	299	d252b5f5-ae0a-4f3f-9448-6e73044c8096
8d17580e-333b-4ee2-ab40-90c728552634	1	A	2021-04-01	2022-03-31	f	\N	2022-01-07 17:14:12.537268+05:30	2022-01-07 17:14:12.482613+05:30	2	9bfc8756-7051-4c7c-a8a2-65357fe49b59
68c4575a-03df-4654-96a1-e315df40c470	1	A	1973-06-02	2012-03-24	f	\N	2022-01-07 17:39:06.765236+05:30	2022-01-07 17:39:06.725431+05:30	2	90e225c9-663e-475f-9f9e-81bf22be0010
defda864-8a6f-47b8-b27e-d5d86e50c0b6	1	A	1981-11-24	1982-03-01	f	\N	2022-01-07 18:56:32.360106+05:30	2022-01-07 18:56:32.289912+05:30	2	5caa259b-84a3-4c8b-b9b9-3d42e7819c6b
a2f9e596-0146-4162-9ddd-bb6d89dd11f0	1	A	2021-04-01	2022-03-31	f	\N	2022-01-07 22:19:43.59189+05:30	2022-01-07 22:19:43.56108+05:30	302	7be9f552-742a-4076-a0fc-467fd3162780
e95451da-6f93-427e-9143-2845a6f7f713	1	A	2022-01-09	2023-01-09	f	\N	2022-01-09 00:27:48.279182+05:30	2022-01-09 00:27:48.224127+05:30	303	32916458-6c26-4753-9ed6-c58a971aa0d6
b7398bd8-3766-4c79-a61e-291af50e0657	1	A	2022-01-01	2022-12-31	f	\N	2022-01-09 13:48:06.933135+05:30	2022-01-09 13:48:06.879797+05:30	266	f7de0912-b038-4050-a77c-37d99e30557e
69398584-f033-4461-9790-f62ef0b166fc	1	A	2021-04-01	2022-03-31	f	\N	2022-01-09 14:39:56.252456+05:30	2022-01-09 14:39:56.193182+05:30	308	a1ee4a39-ce71-4ab9-9603-9705ca890091
824d63cb-83f8-49be-a002-2e5005a64258	1	A	2022-01-10	2022-01-28	f	\N	2022-01-10 12:46:32.751466+05:30	2022-01-10 12:46:32.685786+05:30	62	9abde2d9-b821-4b17-ad55-44fbf2ad9afc
d1a99b60-74a0-4ebe-a1b0-29a97231171a	1	A	2021-04-01	2022-03-31	f	\N	2022-01-11 11:38:56.082485+05:30	2022-01-11 11:38:56.050642+05:30	311	32116503-c834-4a68-8458-54181400232e
884a918f-1302-4682-9f52-d58cb6408312	1	A	2021-04-01	2022-03-31	f	\N	2022-01-13 20:00:21.793863+05:30	2022-01-13 20:00:21.755307+05:30	311	45b2d50a-49c7-4697-bdb4-bcf45164b8aa
5d12c585-4083-44d6-bb98-083eeabe26f7	1	M	2021-12-01	2025-12-31	f		2021-12-27 14:07:46.203561+05:30	2021-12-27 14:07:46.167231+05:30	272	61083492-727f-4bed-9c2e-ebda53932414
98109199-e09e-4ff0-a84b-570951755593	1	A	2022-01-14	2022-01-14	f	\N	2022-01-14 19:11:31.909225+05:30	2022-01-14 19:11:31.867084+05:30	256	3eb78911-43e3-48f8-aac1-e11dd36fe7b6
f61d9af7-86a4-44b7-aa6e-f1a4e5bbfc6d	1	A	2021-04-01	2022-03-31	f	\N	2022-01-14 21:56:10.935893+05:30	2022-01-14 21:56:10.909252+05:30	134	3b2fda8c-d333-49c3-8333-511a225428bf
359c0b71-7e91-4633-8176-b14eaa267eed	1	A	2022-01-14	2022-01-14	f	\N	2022-01-14 22:53:15.472243+05:30	2022-01-14 22:53:15.43973+05:30	305	a83e21fd-2a67-484a-909a-33e2efa0dd73
3cc258a4-aec4-4250-8d88-604ea5275b90	1	A	2021-04-01	2022-03-31	f	\N	2022-01-14 23:09:13.242826+05:30	2022-01-14 23:09:13.210656+05:30	318	73af551e-2bd7-4332-8af4-11e5d47770a3
4c6cb0c9-c603-4f1a-9fdc-0794de3cec9a	1	A	2022-01-01	2022-12-31	f	\N	2022-01-15 15:17:10.484641+05:30	2022-01-15 15:17:10.449476+05:30	320	9cdaeea8-0409-4d95-8533-811c6439e062
0d626fa7-9580-4475-a705-42b04a8034fc	1	A	2022-01-15	2023-01-13	f	\N	2022-01-15 22:23:24.624707+05:30	2022-01-15 22:23:24.597413+05:30	322	282fbe97-daff-4588-81fa-0de171fc04ab
fc141258-0acf-4a4e-aba0-48c9dec4ff54	1	A	2021-04-01	2022-03-31	f	\N	2022-01-16 11:11:33.618091+05:30	2022-01-16 11:11:33.58193+05:30	21	ae6968ab-5fdf-40d1-b777-83098c8fba86
a60c7944-d76b-4644-9042-42770180137e	1	A	2021-04-01	2022-03-31	f	\N	2022-01-16 11:17:24.319683+05:30	2022-01-16 11:17:24.289968+05:30	21	eb550b67-cda7-4fac-ba94-f9f78a5df869
b22e667e-4c0f-4379-abdb-99b2ca12d575	1	A	2021-04-01	2022-03-31	f	\N	2022-01-16 11:18:47.061852+05:30	2022-01-16 11:18:47.033472+05:30	21	6601a605-41ec-459f-aff7-82340b2d3cc8
f98f6f76-7150-4ac7-8c88-831d5d4af6cf	1	A	2021-04-01	2022-03-31	f	\N	2022-01-16 11:30:54.264912+05:30	2022-01-16 11:30:54.239664+05:30	323	ea05c13a-ba2c-46c1-bbdb-e87f6f30f747
900f4d5f-ae67-4e59-bb70-b7a9c1b0d42b	1	M	2021-01-01	2021-12-31	t		2022-01-17 14:48:15.602544+05:30	2022-01-17 14:48:15.582572+05:30	23	c165f46b-02f4-4632-85ad-2abe55cf40d7
8e9df42e-9043-4cd2-af8a-89ee8e80d0ea	1	M	2022-01-01	2022-12-31	f		2021-04-19 23:10:10.633+05:30	2021-04-19 23:10:10.608+05:30	23	c165f46b-02f4-4632-85ad-2abe55cf40d7
b6e09975-1a80-4088-b939-22838331b25f	1	A	2021-04-01	2022-03-31	f	\N	2022-01-17 17:13:01.047603+05:30	2022-01-17 17:13:01.002128+05:30	324	dcf133b0-7309-4304-a202-68b0203b99bf
c0aa81f0-fb43-4d10-916e-1f0ff26c07af	1	A	2022-01-17	2022-01-17	f	\N	2022-01-17 20:33:51.039551+05:30	2022-01-17 20:33:50.998862+05:30	287	d455e885-af99-4d79-a388-a1a6d8758216
d0ce9ddd-e014-473b-aebc-db6cdd85cd3a	1	A	2022-01-17	2023-01-01	f	\N	2022-01-17 21:06:56.277632+05:30	2022-01-17 21:06:56.242939+05:30	287	bea8ee87-8b73-40b0-a3e7-c708b029d849
0141512c-e645-4b70-b619-fe828e665876	1	A	2021-04-01	2022-03-31	f	\N	2022-01-19 11:55:05.738711+05:30	2022-01-19 11:55:05.710151+05:30	324	808d4372-9ac8-4db4-b26a-6a02ec921e97
afb552fa-fb92-4128-89e1-e341d281368b	1	A	2022-01-19	2023-03-19	f	\N	2022-01-19 12:17:49.794343+05:30	2022-01-19 12:17:49.762662+05:30	324	c228061e-e3c4-4ea6-882b-3313b8e5015b
1f70caea-6282-49da-8067-fa3c85cc984a	1	A	2022-01-19	2023-01-17	f	\N	2022-01-19 14:29:13.363707+05:30	2022-01-19 14:29:13.333183+05:30	326	9f556980-7ace-4f44-97c4-4b90c21b0b2f
f79501ac-fb62-4df6-9cac-40a97fef1aeb	1	A	2022-01-01	2022-12-31	f	\N	2022-01-19 18:19:36.211632+05:30	2022-01-19 18:19:36.186679+05:30	31	2663b14f-47ed-4762-948d-98db3387ba85
389621aa-f3c7-4710-b7e7-7bf7fca5b16a	1	A	2021-04-01	2022-03-31	f	\N	2022-01-19 23:58:09.500673+05:30	2022-01-19 23:58:09.395506+05:30	328	6e4c2ce3-10d9-4c7f-a766-ad6d2706d30b
ac91d955-4269-4ad5-9f2d-e248c5e561df	1	A	2021-04-01	2022-03-31	f	\N	2022-01-20 16:16:07.763135+05:30	2022-01-20 16:16:07.714232+05:30	329	f6c52c9a-39eb-494f-9224-812c5d32594b
f29cff57-8be5-4f1a-a6de-b392d8ec7311	1	A	2021-04-01	2022-03-31	f	\N	2022-01-20 20:34:43.329483+05:30	2022-01-20 20:34:43.302828+05:30	331	b4117bfb-63b0-4c50-b22e-4f2978479ba8
47a235dc-3c81-408e-a45d-1ca857840404	1	A	2021-04-01	2022-03-31	f	\N	2022-01-21 10:44:53.089566+05:30	2022-01-21 10:44:53.063028+05:30	324	731c47ee-fce9-4161-9090-f5f3c54a1c94
9961c4a3-05db-4c08-8342-8bc9f5c20366	1	A	2021-04-01	2022-03-31	f	\N	2022-01-21 10:46:27.671493+05:30	2022-01-21 10:46:27.634308+05:30	324	85bfd19b-c108-4a9e-97db-479230321d46
3c8d03e9-9fbd-4bed-b58f-5fa9a86ca291	1	A	2021-04-01	2022-03-31	f	\N	2022-01-21 10:48:31.296153+05:30	2022-01-21 10:48:31.268314+05:30	324	473383fa-ce83-4041-9a94-0338dbbe4df0
95f60f72-e7de-4ac9-9842-08b97821aa20	1	A	2022-01-22	2022-01-22	f	\N	2022-01-22 09:04:30.168333+05:30	2022-01-22 09:04:30.129236+05:30	332	6ab3708b-bcb6-4eec-945d-313f6adc4dd5
d7cff004-2a57-4b1c-ad5b-74f1e01f6f6f	1	A	2022-01-21	2023-01-17	f	\N	2022-01-22 14:07:17.00629+05:30	2022-01-22 14:07:16.973049+05:30	338	10b8f12b-9c7b-4d31-8ceb-a18a7d1e04cd
188baa9f-9aa1-4452-ac6b-680a6f619d06	1	A	2022-01-23	2022-01-23	f	\N	2022-01-23 06:21:42.982449+05:30	2022-01-23 06:21:42.948206+05:30	134	e4cd5106-67de-41f9-846d-752b77445c3a
6637a4de-eb43-400a-b453-64d5faf4113c	1	A	2022-01-01	2023-01-01	f	\N	2022-01-24 15:39:33.483794+05:30	2022-01-24 15:39:33.453755+05:30	345	26d2bb20-adbd-4d34-a88e-690827c462be
c43749da-fa0c-4782-b554-0eaf882474a0	1	A	2021-04-01	2022-03-31	f	\N	2022-01-24 17:36:18.243241+05:30	2022-01-24 17:36:18.156438+05:30	260	91e84ba8-c18f-489c-9097-50f94321a9a4
b28c1269-5800-4529-9fcb-aa67a81ec0eb	1	A	2022-01-01	2022-12-31	f	\N	2022-01-24 19:40:47.268832+05:30	2022-01-24 19:40:47.233228+05:30	346	55798cb4-b7a7-413a-bcb5-8ffe823930f4
9340d1dc-93ee-4157-b826-9391260afabd	1	A	2021-04-01	2022-03-31	f	\N	2022-01-27 15:43:20.745533+05:30	2022-01-27 15:43:20.687555+05:30	2	1b955cde-f944-4c21-91cd-5827e17de86a
7ae2ee95-7466-4a16-9a11-617cb32a8475	1	A	2021-04-01	2022-03-31	f	\N	2022-01-27 15:52:57.951352+05:30	2022-01-27 15:52:57.922519+05:30	76	bc1141b5-d982-4c73-8658-f8812e3a4e8e
13968284-39fd-4a85-817e-51a2fa04d081	1	A	2021-04-01	2022-03-31	f	\N	2022-01-27 16:03:15.839259+05:30	2022-01-27 16:03:15.796556+05:30	2	51d9e5d6-2c94-48b3-8903-10b359b84a82
5e642265-7684-414a-8284-dde2092f2496	1	A	2022-01-01	2022-12-31	f	\N	2022-01-28 01:43:38.456875+05:30	2022-01-28 01:43:38.400817+05:30	348	257695a2-16fe-4acb-be80-6bb666384fbd
790bace5-1573-4b15-b3b4-bab3106600a5	1	A	2021-04-01	2022-03-31	f	\N	2022-01-28 11:46:30.26129+05:30	2022-01-28 11:46:30.234315+05:30	349	e837c6a7-288a-4199-8b61-cc7905e54451
9ebe5e74-0a1f-4357-a35e-25a5ccfc71cd	1	A	2022-01-29	2023-01-26	f	\N	2022-01-29 11:18:33.955247+05:30	2022-01-29 11:18:33.917956+05:30	338	bfc49080-518f-4ce7-a2eb-4bb0c7ad822f
9dff4397-5119-4014-9704-b020293e81a2	1	A	2021-04-01	2022-03-31	f	\N	2022-01-29 15:35:17.272143+05:30	2022-01-29 15:35:17.244136+05:30	76	69e66470-68f3-4141-adf2-89dad395e8f6
7bbb4332-a65e-47cb-aa06-766720fb0bed	1	A	2022-02-05	2023-03-05	f	\N	2022-01-30 01:21:13.672464+05:30	2022-01-30 01:21:13.601853+05:30	325	93b67d8e-a162-450a-9a72-6a3c278604b5
0bf26958-8991-413b-ba8d-07182c310f25	1	A	2021-04-01	2022-03-31	f	\N	2022-01-30 19:38:25.930351+05:30	2022-01-30 19:38:25.90201+05:30	351	e38bf195-bd61-4fd3-a26b-938e2b129078
9dade378-e663-47ad-80a5-2532eb589ced	1	A	2021-04-01	2022-03-31	f	\N	2022-02-02 14:00:22.135816+05:30	2022-02-02 14:00:22.105468+05:30	82	2b0f8044-bdba-4248-9caf-e5e2e499fc5f
460398be-55ff-4184-8260-eb1c71206487	1	A	2021-04-01	2022-03-31	f	\N	2022-02-02 16:58:00.380962+05:30	2022-02-02 16:58:00.34001+05:30	353	e92c2c13-95b0-4472-b3f8-c9d2c159f7fd
b2b980c2-cf7d-4b91-a923-65d9cd712ff3	1	A	2022-02-04	2022-02-03	f	\N	2022-02-05 11:14:15.153796+05:30	2022-02-05 11:14:15.114381+05:30	338	64996d86-27be-4d2e-9270-39561941b598
4ecd3390-cfd0-4ae1-b5ef-c153819a1f96	1	A	2022-02-01	2023-02-28	f	\N	2022-02-08 17:11:56.679308+05:30	2022-02-08 17:11:56.634402+05:30	356	c32526a6-a90a-4e06-8550-da558b6907d0
8fa3af09-592c-484d-919a-ada27a93dc4f	1	A	2022-02-01	2023-02-08	f	\N	2022-02-08 17:26:58.050612+05:30	2022-02-08 17:26:58.017735+05:30	356	34e83d57-f92a-49c0-b54a-84a72b05a6e2
6272cc0a-c489-4e6b-8c3c-a85015cd2cf1	1	A	2022-02-11	2023-02-08	f	\N	2022-02-12 11:58:10.000192+05:30	2022-02-12 11:58:09.951514+05:30	338	c12c2c56-a40c-47eb-a348-65d71a2be3b7
fa7fbd6f-7d04-44ac-aad5-5c633565f76c	1	A	2021-04-01	2022-03-31	f	\N	2022-02-13 10:55:53.470001+05:30	2022-02-13 10:55:53.42399+05:30	2	bdd98b6c-32b9-4da3-86f7-efac5c7f072f
0ce6b5a6-c468-4045-adda-b2841b1ae470	1	A	2021-04-01	2022-03-31	f	\N	2022-02-13 11:40:47.67469+05:30	2022-02-13 11:40:47.642193+05:30	2	ecd45d3f-fc98-4dd3-b23a-7a0e00d7f349
4e370738-bcd1-452a-9794-32902d1226ac	1	A	2022-01-01	2022-12-31	f	\N	2022-02-13 19:34:57.161179+05:30	2022-02-13 19:34:57.118808+05:30	357	d26fb064-b97e-4fd0-86b5-54fe5abaf6cd
60da99c4-7810-4e7d-9e16-69125b3626a8	1	A	2022-01-01	2022-12-31	f	\N	2022-02-13 19:37:06.848875+05:30	2022-02-13 19:37:06.822883+05:30	357	5d25d15e-d8bd-4a75-9025-9614b53135da
84340a4c-89a6-43f1-9609-74d9eb8864c4	1	A	2021-04-01	2022-03-31	f	\N	2022-02-13 19:38:40.287752+05:30	2022-02-13 19:38:40.256719+05:30	357	70ae49bb-4b6a-47fa-9f8a-ffb1a8562743
84967a53-9244-430f-9d30-f5044a921d2a	1	A	2022-02-01	2023-02-28	f	\N	2022-02-14 23:33:28.55463+05:30	2022-02-14 23:33:28.495092+05:30	360	3bb9730f-c65c-44ba-a385-e89b8e64e758
67ece568-c645-4a70-a230-5bfa29e39eab	1	A	2021-04-01	2022-03-31	f	\N	2022-02-15 11:14:37.446893+05:30	2022-02-15 11:14:37.399254+05:30	349	924abda3-7706-47b0-a908-2e0013e75fbc
cf519a3b-986c-421a-a8a3-a774580d16bd	1	A	2022-02-01	2022-02-28	f	\N	2022-02-16 04:45:10.175603+05:30	2022-02-16 04:45:10.110859+05:30	134	4ec75791-ef97-4f95-b914-8775a54025ea
e6ab56dc-de23-453e-942a-aa0c3dc7b4e7	1	A	2022-02-09	2022-02-17	f	\N	2022-02-19 20:07:28.406557+05:30	2022-02-19 20:07:28.367881+05:30	62	f38f15be-e8c9-483b-a8f7-d991276cde78
a4e13170-0724-4a95-8502-d346e4e98310	1	A	2021-04-01	2022-03-31	f	\N	2022-02-19 21:20:15.129652+05:30	2022-02-19 21:20:15.102489+05:30	367	f494e172-9cde-4801-9083-e58e5583cc1a
0739dbf6-1956-426a-bb3f-f2b0f10462f4	1	A	2022-01-01	2022-12-31	f	\N	2022-02-21 17:53:22.283801+05:30	2022-02-21 17:53:22.25471+05:30	31	d2fb8a7e-c973-4057-804b-b60505a8f56e
92f50644-40ef-43f0-b196-226bcd6fb929	1	A	2021-04-01	2022-03-31	f	\N	2022-02-24 17:45:32.318387+05:30	2022-02-24 17:45:32.274801+05:30	76	46d6fefa-4402-4d6a-8ed3-49251ba2e677
9b4b02eb-114b-4ac4-b888-d27e704ce899	1	A	2022-02-23	2023-02-22	f	\N	2022-02-24 20:09:15.438437+05:30	2022-02-24 20:09:15.403901+05:30	338	6ebc9af4-7f1c-4de2-938d-060298ae5e81
cd8bbf8f-631e-45af-b484-16c85d84666b	1	A	2021-04-01	2022-03-31	f	\N	2022-02-25 09:36:34.236986+05:30	2022-02-25 09:36:34.18437+05:30	76	af99f52c-8de3-43b6-8f4d-988f158c2fd1
a4f9960f-00dd-47d0-9f4b-e7e731a4506b	1	A	2022-02-24	2026-02-21	f	\N	2022-02-25 10:58:55.46598+05:30	2022-02-25 10:58:55.419898+05:30	2	08845e39-44d2-4d01-aec3-21988e6a21d1
8fd30d3f-34df-4904-89dd-4f7cd30cd9dc	1	A	2021-04-01	2022-03-31	f	\N	2022-02-25 15:56:38.896345+05:30	2022-02-25 15:56:38.859232+05:30	370	8076f7d0-9075-44e6-a2a1-50f7590f4b9a
5d281c24-c654-4d91-a148-0178affcc6c4	1	A	2022-02-26	2023-02-24	f	\N	2022-02-26 03:25:28.911085+05:30	2022-02-26 03:25:28.876221+05:30	134	c6cabc4a-6e3f-4e34-b42f-244958e88fcc
d7b65174-ad2f-4708-b433-addd95b1b8ff	1	A	2021-04-01	2022-03-31	f	\N	2022-02-26 10:41:41.610153+05:30	2022-02-26 10:41:41.579204+05:30	371	3930085d-4537-4e6f-8b3e-370b706f097b
e266499f-f0c8-436a-ab70-0210c2857169	1	A	2021-04-01	2022-03-31	f	\N	2022-02-26 14:12:33.173402+05:30	2022-02-26 14:12:33.146262+05:30	371	82315c7b-b2fa-4560-8491-f8e4b4b11ebe
9a10f44f-bdc7-4035-a95e-7c1b897fd082	1	A	2021-04-01	2022-03-31	f	\N	2022-02-26 14:14:57.06219+05:30	2022-02-26 14:14:57.035453+05:30	371	ad347c01-b9dd-401f-b385-bbd81a398eba
2ba9f32d-6475-49d6-9224-ed4488bdc8dd	1	A	2022-01-01	2022-12-31	f	\N	2022-02-27 13:04:45.090104+05:30	2022-02-27 13:04:45.059241+05:30	372	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a
8bf2dcc2-3838-4d66-81cb-099947b72590	1	A	2022-02-28	2024-02-01	f	\N	2022-02-28 15:20:50.700173+05:30	2022-02-28 15:20:50.665368+05:30	332	b8fa7cbd-2060-48ec-9229-d5dee7de4832
32a595c4-b10a-4b27-861f-b9f93bc7d1d7	1	A	2022-03-06	2022-03-06	f	\N	2022-03-06 14:39:46.015932+05:30	2022-03-06 14:39:45.961233+05:30	381	85b0c263-d294-4c4b-b05d-596c5c887c4f
96a3c603-a5d6-4aeb-b890-0df2642561f5	1	A	2021-04-01	2022-03-31	f	\N	2022-03-06 23:16:57.651985+05:30	2022-03-06 23:16:57.617027+05:30	36	30e1c142-9b1a-4596-80fa-064565bbe2a6
d674bacd-1420-4eb1-8be7-9f73df1860a4	1	A	2022-03-07	2022-03-07	f	\N	2022-03-07 09:44:13.081589+05:30	2022-03-07 09:44:13.033096+05:30	381	0c254400-a256-4d16-8e88-98e4626e1a16
ecb09ee6-4276-425f-b71b-87390cab2c5d	1	A	2021-04-01	2022-03-31	f	\N	2022-03-12 12:21:13.573092+05:30	2022-03-12 12:21:13.542809+05:30	76	eeeaf2e2-15a0-4b62-a3a1-8a8d78dbf4ec
d71bcab0-a0af-46bc-86a5-7405a88e8647	1	A	2021-04-01	2022-03-31	f	\N	2022-03-12 12:25:20.877244+05:30	2022-03-12 12:25:20.848123+05:30	76	20189cff-39bf-43bd-879a-8ddfac902ae9
9b8d8584-553d-42d5-9415-1ce4ceb8060d	1	A	2022-03-13	2022-04-29	f	\N	2022-03-13 23:20:11.306674+05:30	2022-03-13 23:20:11.243392+05:30	134	9884e82a-bddb-4105-adc3-8f6d741cf68c
c9d20981-be00-4a26-9933-1fa050446159	1	A	2022-03-14	2022-03-23	f	\N	2022-03-14 10:38:51.882121+05:30	2022-03-14 10:38:51.828878+05:30	62	ffa8c920-ef76-43fa-a629-0b3f8fdd3c91
ed248b7c-723f-429d-9acc-6d3f3a87c4cd	1	A	2021-04-01	2022-03-31	f	\N	2022-03-14 16:13:00.27029+05:30	2022-03-14 16:13:00.213995+05:30	382	89e29611-d06e-48e1-9afe-50eb756be97f
a7b84489-40dc-41f8-ab3c-d56c0bc074bc	1	A	2021-04-01	2022-03-31	f	\N	2022-03-15 16:17:32.957664+05:30	2022-03-15 16:17:32.916918+05:30	29	496411f0-f421-4944-b2b5-5b70f079a141
45cde74c-d6aa-4730-ab4d-b653903f2529	1	A	2021-04-01	2022-03-31	f	\N	2022-03-15 16:19:46.675851+05:30	2022-03-15 16:19:46.645519+05:30	382	df50c3ef-61a0-4cb2-bd4c-43d73906e94c
83efabe0-5dfd-4a60-a145-043908494312	1	A	2021-04-01	2022-03-31	f	\N	2022-03-15 16:59:42.672147+05:30	2022-03-15 16:59:42.602853+05:30	76	dde73e9f-9465-4fc9-ae1a-42643da46cd2
8d7135c5-f21c-49f8-8c6f-5850b28151cc	1	A	2021-04-01	2023-03-31	f	\N	2022-03-16 01:42:37.167843+05:30	2022-03-16 01:42:37.13437+05:30	383	696c8548-ae83-4ed3-a292-6fcc642abe23
f3a62603-4717-4c78-aaf4-473a7dd74f5b	1	A	2022-03-01	2022-03-16	f	\N	2022-03-16 22:55:55.296567+05:30	2022-03-16 22:55:55.265224+05:30	327	9e5584b8-c6d9-4b4f-aefc-ad78272fe7f3
c792c788-457d-438d-a90d-c86d8d6cafd4	1	A	2021-04-01	2022-03-31	f	\N	2022-03-18 21:40:18.963503+05:30	2022-03-18 21:40:18.935099+05:30	82	192f6c79-161c-4bcd-9578-deb8f5e3ea57
379cf04b-bfdc-43bc-9765-9ae41a5c9fd9	1	A	2021-01-01	2022-12-01	f	\N	2022-03-18 21:43:03.048781+05:30	2022-03-18 21:43:03.024914+05:30	384	eb22f045-55d5-44e2-b18a-813ea6f615bf
968c0379-65e8-4133-8453-51b7306287e9	1	A	2022-03-20	2022-03-20	f	\N	2022-03-20 22:51:09.293754+05:30	2022-03-20 22:51:09.263512+05:30	385	ef80ebe2-6854-4bbd-8669-7adcadb9dada
5e059102-54fa-496e-a1a3-3c7440a2103f	1	A	2021-04-01	2022-03-31	f	\N	2022-03-21 13:49:41.507229+05:30	2022-03-21 13:49:41.468891+05:30	386	b4455909-e4f8-4d0a-b8e2-3777499fceb1
d29a3aa2-5747-4ecc-8442-fe69144b48d7	1	A	2021-04-01	2022-03-31	f	\N	2022-03-21 19:46:34.110631+05:30	2022-03-21 19:46:34.083877+05:30	387	f5eb7639-d1e9-40be-9607-84f20ee1cac3
2a7fbdf2-a3f3-4884-b0f1-07491a1ae02b	1	A	2022-03-01	2023-03-31	f	\N	2022-03-22 00:08:35.699046+05:30	2022-03-22 00:08:35.669397+05:30	388	0b2972ce-7a2c-488b-9a08-257a17fb54e5
9f44a9d1-0f22-4967-8eef-a705b28290eb	1	A	2021-04-01	2022-03-31	f	\N	2022-03-22 12:30:16.775712+05:30	2022-03-22 12:30:16.737382+05:30	82	d15d9485-4058-4a50-ab76-078e29e46b6e
f572186c-9704-496c-b384-24da602a27be	1	A	2021-04-01	2022-03-31	f	\N	2022-03-23 10:37:26.580797+05:30	2022-03-23 10:37:26.554084+05:30	76	c9198e59-9642-4ebe-a405-227de27239e6
f113bb6f-69b5-48fd-bf1b-db34209ba7fa	1	A	2021-04-01	2022-03-31	f	\N	2022-03-25 10:48:54.833772+05:30	2022-03-25 10:48:54.803121+05:30	76	ce18f348-856c-44cc-adac-0d23efc32e6e
7e55dcbd-9af8-4fe3-b816-3f3f62a38381	1	A	2021-04-01	2022-03-31	f	\N	2022-03-25 14:54:54.680503+05:30	2022-03-25 14:54:54.649211+05:30	390	99a668d4-9591-41db-b776-7d2a7ba26d4f
f6d21a8e-2cec-400b-a33c-67ef50e4a6cf	1	A	2021-04-01	2023-03-31	f	\N	2022-03-25 20:16:42.587353+05:30	2022-03-25 20:16:42.560427+05:30	391	b7c83b6f-83bf-466a-8acc-0663a8dc32f7
4ee5d847-8b64-4a00-86ac-57364e2b4676	1	A	2021-04-01	2022-03-31	f	\N	2022-03-28 11:37:47.74359+05:30	2022-03-28 11:37:47.715539+05:30	382	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32
25977938-defc-4eec-84c3-de011f3ab3b4	1	A	2022-03-29	2022-03-31	f	\N	2022-03-29 22:11:06.161004+05:30	2022-03-29 22:11:06.134363+05:30	63	22593720-2add-49a2-8387-7fa49202906e
fc3f6c61-4620-46ac-9b0f-f29486392d09	1	A	2021-04-01	2022-03-31	f	\N	2022-03-30 10:07:37.223766+05:30	2022-03-30 10:07:37.1969+05:30	324	9152f512-0522-49d3-83cc-12d8444268b2
2aab5c29-8713-48b4-8381-7127369bab1d	1	A	2021-04-01	2022-03-31	f	\N	2022-03-30 15:03:10.884016+05:30	2022-03-30 15:03:10.856206+05:30	382	bfc93d28-62ad-4ca4-80a8-e37dc6fb49d8
5a7ba903-e5ba-44aa-9ae4-ec25ebc9e9b4	1	A	2021-04-01	2022-03-31	f	\N	2022-04-04 14:35:56.666957+05:30	2022-04-04 14:35:56.638749+05:30	396	ecf6342c-8f2f-4e0e-8bad-2c456d46903a
13939d25-5b8b-4e3c-8a97-c6152c2289af	1	A	2022-04-01	2023-03-31	f	\N	2022-04-04 15:01:16.988186+05:30	2022-04-04 15:01:16.961761+05:30	396	6445b018-3047-4169-b79d-96ac02269183
fee3ffeb-5717-49df-ba91-c0105ddf4cbe	1	A	2022-04-01	2023-03-31	f	\N	2022-04-04 15:02:26.780535+05:30	2022-04-04 15:02:26.754574+05:30	396	a3b01dba-44fd-4e23-9897-47e1a29d1907
2fffdc0e-25c6-47ac-b926-a13251d0bf6d	1	A	2022-04-01	2023-03-31	f	\N	2022-04-04 16:22:30.386045+05:30	2022-04-04 16:22:30.357965+05:30	396	d958db14-c22d-4e3c-99bb-541dc6be305b
6c50fac9-1fc3-4bbd-98d0-e37f24ae3b9b	1	A	2022-04-01	2023-03-31	f	\N	2022-04-04 17:09:17.48048+05:30	2022-04-04 17:09:17.454844+05:30	36	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8
35adadc0-abee-427f-9aa5-d944217d9d8a	1	A	2022-04-01	2023-03-31	f	\N	2022-04-04 19:48:10.721254+05:30	2022-04-04 19:48:10.693076+05:30	397	fb5512d5-8884-47fd-9aef-8dbe7fd0a472
98bd406d-7b39-433a-a35f-e9b34126ee49	1	A	2022-04-01	2023-03-31	f	\N	2022-04-06 11:45:38.764815+05:30	2022-04-06 11:45:38.731806+05:30	76	ae99c103-a655-4c44-9d57-46ceb2c55e99
c72ac83d-c9ec-4310-84ed-dd115612fa9c	1	A	2022-04-01	2023-03-31	f	\N	2022-04-06 11:47:02.155242+05:30	2022-04-06 11:47:02.125569+05:30	76	eb9f614b-f0be-480f-82c8-0b0fbb70143f
0d29c737-1d7a-4710-85c2-761da62619bc	1	A	2022-01-01	2023-12-31	f	\N	2022-04-06 13:49:37.599238+05:30	2022-04-06 13:49:37.571407+05:30	382	cdb7a13a-74bc-4c7b-8859-e367baa33a6f
d7599ab7-73cf-48e3-abcc-e3890a63669d	1	A	2022-04-01	2023-03-31	f	\N	2022-04-06 16:00:00.7458+05:30	2022-04-06 16:00:00.719643+05:30	76	fc41cd7d-57d8-4619-9a18-b21487f73d6a
7015d53e-1d65-4300-b6ba-1eb2b6af1ce4	1	A	2022-04-01	2023-03-31	f	\N	2022-04-06 16:43:57.737655+05:30	2022-04-06 16:43:57.708017+05:30	76	3a7eaf79-20ad-4be1-9f17-6b812a12c15d
e1e320f7-6832-4f9c-b30f-bdedd409a549	1	A	2022-04-01	2023-03-31	f	\N	2022-04-07 17:33:55.740727+05:30	2022-04-07 17:33:55.711975+05:30	76	71289a84-cb65-4a99-82d3-49d45f43651d
1bf13297-9512-434c-abb3-7d98dcd6e4bd	1	A	2022-04-01	2023-04-01	f	\N	2022-04-13 03:07:57.061399+05:30	2022-04-13 03:07:57.022462+05:30	398	b3fba004-a423-43a6-9113-1d1a41cf0576
fcee52eb-803e-4381-9fa3-e6f4555df2f8	1	A	2022-04-01	2023-04-01	f	\N	2022-04-13 04:07:40.691105+05:30	2022-04-13 04:07:40.66261+05:30	399	4bd2040e-1a29-4699-90b6-b3f5be3ef925
3d86a0b3-e654-4ba7-89f9-c270d8e9123e	1	A	2022-04-01	2023-03-31	f	\N	2022-04-13 16:43:21.15363+05:30	2022-04-13 16:43:21.123097+05:30	400	7b89b58f-173f-4afe-bc50-f46c262ab3b7
3c8ea1f0-4c97-4f98-9f78-ea2824c15656	1	A	2014-10-03	1991-03-25	f	\N	2022-04-18 11:04:34.613763+05:30	2022-04-18 11:04:34.586665+05:30	303	d98c417d-8472-4d0d-9dfa-ffc829159417
6c2567d5-177b-42b1-9e62-3673f0d8b8fa	1	A	2022-04-01	2023-03-31	f	\N	2022-04-19 05:07:30.256198+05:30	2022-04-19 05:07:30.230615+05:30	391	3ff9e67a-61c0-43a2-b4bf-9bb0d92cb84e
aa8484e9-5662-46b2-80ee-175a74120418	1	A	2022-04-19	2022-04-19	f	\N	2022-04-19 21:54:27.568386+05:30	2022-04-19 21:54:27.540742+05:30	401	389bd0d6-da50-4bf1-ad1f-d3da91d89213
f24862fe-b44b-42d4-86f9-1414bacbc520	1	A	2022-04-01	2023-03-31	f	\N	2022-04-20 15:14:58.627196+05:30	2022-04-20 15:14:58.600203+05:30	382	a246dd4c-0583-473a-9026-e9c44ba8859c
bd2f9351-fc14-45cf-a64b-7ea53938e96d	1	A	2022-04-01	2023-03-31	f	\N	2022-04-21 01:11:56.747961+05:30	2022-04-21 01:11:56.716981+05:30	391	dc5ffeaa-887c-4c9a-9065-9441bd8c5f23
c95815ea-097b-4a0c-b04a-7002a7fc8b19	1	A	2022-04-01	2023-03-31	f	\N	2022-04-22 09:45:38.93215+05:30	2022-04-22 09:45:38.904791+05:30	76	9cd0274f-3bf0-4644-a1fe-0ebb28c0be6c
66b6c089-c33f-41f4-8f3d-2f745144de73	1	A	2022-04-01	2023-03-31	f	\N	2022-04-23 09:56:46.539135+05:30	2022-04-23 09:56:46.513044+05:30	76	4f684660-13b2-4823-bc13-d2edea17dbb7
c397aa10-96c4-4185-b6a8-086b479bf5e2	1	A	2022-04-01	2023-03-31	f	\N	2022-04-23 22:36:32.186183+05:30	2022-04-23 22:36:32.157552+05:30	391	a5e22203-1d06-4887-b1ad-2c5940754382
ca5fee57-047a-40c3-982b-01aebe4eeac8	1	A	2022-04-01	2023-03-31	f	\N	2022-04-23 23:09:25.614441+05:30	2022-04-23 23:09:25.58652+05:30	148	379a9d10-ed8e-4ee3-81dc-09794d5091d2
124b9b86-940d-4d83-bd5a-6cf2838949aa	1	A	2022-04-01	2023-03-31	f	\N	2022-04-24 02:12:35.278497+05:30	2022-04-24 02:12:35.251897+05:30	391	e5e25ac8-e95b-4863-aa56-ea527980398c
cf94c717-7867-421e-97ed-4716edeb2710	1	A	2022-04-01	2023-03-31	f	\N	2022-04-25 04:11:31.258464+05:30	2022-04-25 04:11:31.224033+05:30	391	ab6aea22-1bcd-44ab-8424-ff52223d1e9b
4fa35dba-cd76-40a8-bdbe-f67f37935307	1	A	2022-04-01	2023-03-31	f	\N	2022-04-25 04:55:48.630453+05:30	2022-04-25 04:55:48.603843+05:30	391	ecbdf73b-7b33-453f-97d0-77d1894213eb
b9ea5b47-7b4f-429a-af5e-03a887c24248	1	A	2022-04-01	2023-03-31	f	\N	2022-04-26 18:15:46.527354+05:30	2022-04-26 18:15:46.500502+05:30	403	433328ea-c573-457a-8a13-7ee512679644
10fc07c8-7c63-4f30-a2e2-cd8f987ea0bb	1	A	2022-01-01	2022-12-31	f	\N	2022-04-27 14:17:18.123448+05:30	2022-04-27 14:17:18.087434+05:30	82	b6466821-4c80-493f-bcdb-5d58d6780d6e
3e6130ba-35c5-425d-9c62-ef25a4ab4404	1	A	2022-04-01	2023-03-31	f	\N	2022-04-28 12:25:56.284166+05:30	2022-04-28 12:25:56.257158+05:30	82	eae848be-772d-4494-90d1-d1443e0e1b31
76083fdd-7ab7-4b38-a1dc-980d6a2f891c	1	A	2022-04-01	2023-03-31	f	\N	2022-04-28 13:14:43.005811+05:30	2022-04-28 13:14:42.977634+05:30	82	9b8cbb5f-44df-4b0a-bed9-f9fa832d1588
72a634b3-2a2a-4c02-979e-226cee3c9d39	1	A	2022-04-01	2023-03-31	f	\N	2022-04-28 13:37:17.31423+05:30	2022-04-28 13:37:17.275555+05:30	82	5aaa8093-4bb2-452e-8250-85b9d0c38d50
5d75accb-28f4-4b60-a2c1-716eb9a3133a	1	A	2021-10-10	2022-10-10	f	\N	2022-04-28 14:48:54.676935+05:30	2022-04-28 14:48:54.649142+05:30	371	fb6ddcc9-a887-4edf-8919-1bfbd07f8e29
e3e0c654-fe34-4dd8-80d9-54217a4cb209	1	A	2021-10-10	2022-10-10	f	\N	2022-04-28 14:50:24.435904+05:30	2022-04-28 14:50:24.409642+05:30	371	941d3d5a-fe4f-4eb6-89fc-b3ec5778caa4
93d93b63-dafa-413e-8e7f-6188ee58a014	1	A	2021-10-10	2022-10-10	f	\N	2022-04-28 14:57:41.202516+05:30	2022-04-28 14:57:41.14572+05:30	371	7bde9de7-d90f-4191-8899-5aa67898249a
2c453af1-7e87-4419-8476-8f1a980cd322	1	A	2022-04-28	2022-04-28	f	\N	2022-04-28 15:33:45.629331+05:30	2022-04-28 15:33:45.597659+05:30	371	11bb5d1a-0440-42f5-baf7-f98cf82106bb
60979e81-c5e0-4ee4-b1eb-b85239ef47d8	1	A	2022-01-28	2022-04-11	f	\N	2022-04-28 15:49:24.686657+05:30	2022-04-28 15:49:24.660219+05:30	371	0902ac47-a724-4d50-8880-365ca10e7943
335f2673-0c5d-429c-af4c-2fa46ed69cff	1	A	2022-01-28	2022-01-28	f	\N	2022-04-28 15:56:12.80664+05:30	2022-04-28 15:56:12.778158+05:30	371	819f10e7-7a00-4492-9475-db3f51fe0249
a6f7b277-4f83-4ef2-97ec-843618df3411	1	A	2022-01-28	2022-01-28	f	\N	2022-04-28 16:26:37.372152+05:30	2022-04-28 16:26:37.344359+05:30	371	663e3799-85d8-4208-8024-c8b8216f322d
52ae4b02-5fd2-4774-a364-01a0836a6a66	1	A	2013-04-28	2022-01-28	f	\N	2022-04-28 16:31:50.276997+05:30	2022-04-28 16:31:50.249619+05:30	371	bd0da7ad-bade-455b-bf27-31e311c2fcff
85555f4d-3faa-463c-a9f5-336aedd866f7	1	A	2022-05-01	2023-05-01	f	\N	2022-05-01 19:42:15.012757+05:30	2022-05-01 19:42:14.983322+05:30	406	7effb1b1-a222-4119-9d7e-05e4142a20a0
9e5c383e-96f4-41ef-ad17-d1c2c32015ca	1	A	2022-04-01	2023-03-31	f	\N	2022-05-04 11:47:15.946258+05:30	2022-05-04 11:47:15.912392+05:30	76	47c5669a-087c-4ab3-97ce-9e110e3dcf90
963a7203-c383-424a-89e1-0cf8977636c5	1	A	2022-04-01	2023-03-31	f	\N	2022-05-06 11:54:21.791903+05:30	2022-05-06 11:54:21.758869+05:30	407	3bca8b72-a84d-4279-8c4c-e7834bb00515
6497e5e0-4018-4065-aa9e-b81ef570ccfa	1	A	2022-04-01	2023-03-31	f	\N	2022-05-07 17:23:22.015419+05:30	2022-05-07 17:23:21.985908+05:30	21	8171eab3-e534-490c-8ab9-cc2ec9e1c2ea
2950c6bb-2563-4071-bda9-525444bd9fd5	1	A	2022-04-01	2023-03-31	f	\N	2022-05-07 17:27:43.91343+05:30	2022-05-07 17:27:43.884243+05:30	21	5215eb9e-f285-4ee2-8886-262b2a68fcb3
8faddcf4-5f31-439f-9433-f92f119c8a79	1	A	2022-04-01	2023-03-31	f	\N	2022-05-07 19:22:36.596978+05:30	2022-05-07 19:22:36.572495+05:30	21	e0af00ad-f367-4d55-b79f-6a77e389302b
7f293ce1-e8af-448a-9183-9765155139f1	1	A	2022-04-01	2023-03-31	f	\N	2022-05-07 19:34:15.129989+05:30	2022-05-07 19:34:15.098121+05:30	21	f4a46e31-2eda-4013-942f-7aa8a2e6cf4c
27dcfc42-6905-42d1-95a5-cdc8df3e955e	1	A	2022-04-01	2023-03-31	f	\N	2022-05-10 04:38:15.263739+05:30	2022-05-10 04:38:15.231465+05:30	391	deae8417-9780-4806-92ae-66e0fc0bcf25
840585f3-c200-42f5-ac8d-ca34c155760e	1	A	2022-04-01	2023-03-31	f	\N	2022-05-10 09:51:36.25818+05:30	2022-05-10 09:51:36.229934+05:30	76	8f8f0961-ca0b-4e63-a6ff-6d032adfb521
70f80432-4ebc-43a0-b4ef-de032b79ec42	1	A	2022-04-01	2023-03-31	f	\N	2022-05-17 14:04:32.312181+05:30	2022-05-17 14:04:32.276669+05:30	449	6255e028-8e21-40d3-a822-31c770a8235e
a77adc73-9965-4b0f-81b9-c949c8c035b7	1	A	2022-04-01	2023-03-31	f	\N	2022-05-18 19:48:15.991044+05:30	2022-05-18 19:48:15.899932+05:30	391	e5a5c952-2c37-4699-b6b1-a95249491eb8
9f925c4e-d1f2-41ab-ad56-a66bff9de690	1	A	2022-05-01	2023-04-30	f	\N	2022-05-24 11:58:51.661369+05:30	2022-05-24 11:58:51.627599+05:30	454	85225fa8-cf46-4a69-807f-2dfff48287bc
7d2a9ffc-caf5-4f60-93e8-bcdbc8c35c13	1	A	2022-01-01	2022-12-31	f	\N	2022-05-28 13:36:08.205531+05:30	2022-05-28 13:36:08.171096+05:30	82	3df9f1ca-a499-4d67-8bf6-1e2583d97e7a
f9c98dee-d19d-4685-a918-04f8cc892558	1	A	2022-06-02	2022-06-02	f	\N	2022-06-02 16:45:09.510462+05:30	2022-06-02 16:45:09.476852+05:30	457	0a29adb7-a152-4a3c-a0e7-872db8b0be1f
23d353ae-2a1b-4a16-adfc-fdbd1429fdcc	1	A	2022-04-01	2023-03-31	f	\N	2022-06-03 11:26:55.992704+05:30	2022-06-03 11:26:55.960446+05:30	382	f78592c4-f92f-483c-8278-55034bd265e6
808ffb33-2b43-446f-8294-669ff75d8469	1	A	2022-01-01	2022-12-31	f	\N	2022-06-03 15:50:09.222553+05:30	2022-06-03 15:50:09.193246+05:30	458	510e5554-216b-4e2a-9326-7c0ef5ba4ce9
4f253de2-df2b-48fe-b845-c47b36dff43a	1	A	2022-04-01	2023-03-31	f	\N	2022-06-07 10:17:21.406231+05:30	2022-06-07 10:17:21.357837+05:30	76	31411b4e-8721-4f68-a0df-fd06d6f5bdf9
3f7157f3-bd05-4102-9eec-5fd5f85ad545	1	A	2022-04-01	2023-03-31	f	\N	2022-06-07 10:44:57.483019+05:30	2022-06-07 10:44:57.453649+05:30	75	f65d9558-9de8-4194-94a5-a33242fe3e80
c5e75dc3-2c1e-40a0-a3dc-ade1238bfbb7	1	A	2022-04-01	2023-03-31	f	\N	2022-06-07 12:04:35.234282+05:30	2022-06-07 12:04:35.204727+05:30	76	4de62d91-a400-4be6-9db5-ab903eaa8c56
80bc6ed2-833a-4af6-b8c7-0691b1504a17	1	A	2022-04-01	2023-03-31	f	\N	2022-06-07 16:27:34.390938+05:30	2022-06-07 16:27:34.362924+05:30	40	355182fe-5711-4e3f-933f-0f7309caa27b
577a31cc-19e1-4bd7-8c54-4b303d9f9e41	1	A	2022-04-01	2023-03-31	f	\N	2022-06-07 16:29:26.129241+05:30	2022-06-07 16:29:26.098584+05:30	40	6e16110d-22d0-42fd-96ec-dbb35a225b2a
74696fd8-5c83-4396-9d26-cb811656895f	1	A	2022-04-01	2023-03-31	f	\N	2022-06-08 12:25:56.176208+05:30	2022-06-08 12:25:56.145435+05:30	76	4c5b08f3-a3ac-47ff-bac1-9b950be34d63
bb93ff37-3344-4b9d-8d3b-813f34f112dc	1	A	2022-04-01	2023-03-31	f	\N	2022-06-09 14:37:10.897331+05:30	2022-06-09 14:37:10.865299+05:30	76	6c357b27-683f-42e7-9d94-1b1ffd0f41b9
c5c92f6a-f3c9-4920-86f4-b1d5a02b8f7e	1	A	2020-04-01	2023-03-05	f	\N	2022-06-10 13:35:13.611101+05:30	2022-06-10 13:35:13.563274+05:30	459	7d124276-ca3e-4a70-9b2d-f9257641b881
3f07f217-0ddf-43a6-8315-b754fb7adea0	1	A	2022-04-01	2023-03-31	f	\N	2022-06-13 09:47:02.028148+05:30	2022-06-13 09:47:01.994246+05:30	460	90866a22-2468-4663-a77d-eb19c1c33152
8957a225-eaf6-4115-b16a-51078d6d1db9	1	A	2022-01-01	2022-12-31	f	\N	2022-06-13 18:42:17.251097+05:30	2022-06-13 18:42:17.221285+05:30	461	3c9f0bef-9eb0-4acb-a1dd-c4c1bb7cfa75
5e0c0334-216b-40bb-866d-f272385ae232	1	A	2022-04-01	2023-03-31	f	\N	2022-06-14 01:48:24.508426+05:30	2022-06-14 01:48:24.481438+05:30	463	54ffbb90-97eb-4c45-b1f7-5407d9e417a7
d61330cf-667c-4313-a9be-28b7cc4f9875	1	A	2022-04-01	2023-03-31	f	\N	2022-06-17 15:25:52.356167+05:30	2022-06-17 15:25:52.326028+05:30	31	66acff5c-29f2-483c-a9e7-018b381d00f8
fea58f11-4dd2-41e0-af8b-c0b32b58110a	1	A	2022-06-19	2022-06-19	f	\N	2022-06-19 20:13:45.217006+05:30	2022-06-19 20:13:45.181841+05:30	464	2329fcd1-d87e-4648-84dc-3221154eaa0e
b15a5a7c-890c-4d9c-bae0-8d13f9f0279f	1	A	2022-04-01	2023-03-31	f	\N	2022-06-20 21:10:11.575833+05:30	2022-06-20 21:10:11.547061+05:30	467	a147b367-1ae7-4130-afa0-653e2e4bd658
1f35c7fa-58f4-437a-81f2-68c3bb2141d7	1	A	2022-04-01	2023-03-31	f	\N	2022-06-23 11:47:27.749421+05:30	2022-06-23 11:47:27.713235+05:30	468	c676be3d-419f-40c1-98b5-2fcc5763e315
afa05c41-814e-4a02-a251-93dee61435fd	1	A	2022-04-01	2023-03-31	f	\N	2022-06-27 11:39:37.997433+05:30	2022-06-27 11:39:37.965078+05:30	472	d0f4a410-e463-4b9a-b619-6c180daa16cb
c5044ae1-9b91-4a67-a7fe-abe1813c9e33	1	A	2022-04-01	2023-03-31	f	\N	2022-06-27 15:17:34.551075+05:30	2022-06-27 15:17:34.523358+05:30	473	79bbad87-9900-4719-adf6-7e8f04b815a1
637d43e1-8cdc-46f0-817f-4f4c325106e1	1	A	2022-01-01	2022-12-31	f	\N	2022-06-29 17:01:51.774772+05:30	2022-06-29 17:01:51.740476+05:30	475	83c52e5b-4e94-4bde-b5a5-95699451982f
c57f1df7-68d4-4cdd-b02b-8c9c40b62d38	1	A	2022-04-01	2023-03-31	f	\N	2022-06-29 18:37:10.30194+05:30	2022-06-29 18:37:10.274394+05:30	397	fd11193b-749f-4743-a4e6-f4be9984f645
cc1352b4-0036-486b-8347-a7c573eaabef	1	A	2022-01-01	2022-12-31	f	\N	2022-06-30 15:33:58.46075+05:30	2022-06-30 15:33:58.433291+05:30	476	f181a8d1-e316-4cc1-8916-d1ba15fbc1bc
178b6792-bb54-4be5-97a3-52578fbe9766	1	A	2022-06-30	2023-06-30	f	\N	2022-07-01 01:47:55.381751+05:30	2022-07-01 01:47:55.352323+05:30	477	f5ce00d5-5b58-4b71-93a5-511582cca0d2
eac542ab-9d6e-4033-85d8-dce146ddf92d	1	A	2022-04-01	2023-03-31	f	\N	2022-07-01 11:08:30.98944+05:30	2022-07-01 11:08:30.95808+05:30	31	e50237cc-a192-4c1b-aaa3-595a5ff2f4b3
6a3de348-27de-499a-8f3e-948f1da490a6	1	A	2022-04-01	2023-03-31	f	\N	2022-07-06 16:59:06.0825+05:30	2022-07-06 16:59:06.058623+05:30	62	b227d4fc-62c2-4c68-be70-81c893823ae5
4488a831-f1a4-4044-bb85-5e01aebc527f	1	A	2022-04-01	2023-03-31	f	\N	2022-07-06 17:01:35.675983+05:30	2022-07-06 17:01:35.647791+05:30	478	899b926a-b451-402b-9b8f-c0bc4bea3fc6
bcc69846-946f-43c7-b887-22283d4ac00e	1	A	2022-07-07	2022-07-30	f	\N	2022-07-07 09:29:47.309506+05:30	2022-07-07 09:29:47.27251+05:30	481	b2a29165-0728-4eb1-b887-374e6f27fa00
35dd9cb8-f8d6-4a55-9a17-1eb70d8c4f8e	1	A	2022-07-08	2022-07-30	f	\N	2022-07-08 10:22:57.100078+05:30	2022-07-08 10:22:57.061915+05:30	487	380fcc53-018c-4316-bd32-8c3f6b8f1974
4d2cb6f5-b65a-43a4-8b2c-16b8e2da4fbe	1	A	2022-07-08	2022-07-08	f	\N	2022-07-08 13:23:26.312746+05:30	2022-07-08 13:23:26.283324+05:30	488	07f17601-8a85-42a8-97d7-8a48845404b3
9137ca15-5af3-4355-92b4-68db21e6ce84	1	A	2022-07-09	2022-08-31	f	\N	2022-07-08 13:30:24.236559+05:30	2022-07-08 13:30:24.188136+05:30	489	9153785d-27de-4396-a461-30f90ed6746c
e4149cd2-051d-4aab-94ff-56c32df51438	1	A	2022-07-01	2022-12-31	f	\N	2022-07-08 13:39:25.331779+05:30	2022-07-08 13:39:25.293739+05:30	490	3abd97e5-4720-4f71-bcc0-cf4c265e9f67
1cf50264-c3db-4242-b30e-4e087f7e297f	1	A	2022-07-08	2022-07-08	f	\N	2022-07-08 13:44:45.036434+05:30	2022-07-08 13:44:45.006569+05:30	491	29e3ab91-bd68-4c61-9878-570170a8c205
d44866ed-bd82-4119-aebc-d38e52402abe	1	A	2022-07-08	2022-07-08	f	\N	2022-07-08 14:05:18.65734+05:30	2022-07-08 14:05:18.627246+05:30	492	4e6f539f-f339-44ab-920f-dc5975efcf6c
051e051a-9ee0-45f3-8a58-af8a02002e37	1	A	2022-07-08	2022-07-31	f	\N	2022-07-08 15:51:05.206561+05:30	2022-07-08 15:51:05.175449+05:30	494	ed268c11-b719-4f01-9907-e8328d736881
a2e15cc0-04b8-43e1-b828-cf92ec674714	1	A	2022-04-01	2023-03-31	f	\N	2022-07-09 14:43:45.056437+05:30	2022-07-09 14:43:45.024153+05:30	3	9fcf0c87-bac5-4325-a2ef-2868f55f6b18
29ef6964-20b6-46af-8e61-822e28763434	1	A	2022-04-01	2023-03-31	f	\N	2022-07-12 13:37:20.314582+05:30	2022-07-12 13:37:20.280845+05:30	449	b8f26e57-72a3-4d3e-a014-5dd28e6dbe96
fc4da45a-1511-4984-b779-404ddc65efba	1	A	2022-04-01	2023-03-31	f	\N	2022-07-12 13:55:14.263236+05:30	2022-07-12 13:55:14.236859+05:30	460	3646174a-4190-42b7-8df2-f946cee71673
c9aae92d-9add-4c0e-9c96-a0f5fcd5f482	1	A	2022-04-01	2023-03-31	f	\N	2022-07-12 14:15:07.938904+05:30	2022-07-12 14:15:07.912111+05:30	60	85c625ee-110c-450b-8f3a-4b8ce24c6535
\.


--
-- Data for Name: invitedUsers_invitedUsers; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public."invitedUsers_invitedUsers" (id, "Email", "InvitedUserID", "InvitedDate", "Status", "DefaultAccountForUser", "Cash_Account", "Bank_Account", "Sales_Account", "Sales_Return_Account", "Purchase_Account", "Purchase_Return_Account", "ExpiryDate", is_web, is_mobile, is_pos, "BranchID", show_all_warehouse, "DefaultWarehouse", "CompanyID_id", "UserType_id") FROM stdin;
\.


--
-- Data for Name: state_state; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public.state_state (id, "Name", "State_Type", "State_Code", "Country_id") FROM stdin;
a6a459b0-2f85-4ea2-8f23-afc3a8dedb45	36-Telangana	State	36	30f8c506-e27a-476c-8950-b40a6461bf61
08ff6737-4963-4c90-9001-952b3afae87d	Muscat	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
0dcb37f0-00cf-41d8-a457-b550c4ab98a1	Ad Dhahirah	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
44cd0cb7-0e5b-4cea-8388-f13a2333e102	Sharjah	Emirate	AE-SH	e688d809-f945-4686-bb95-c709b9715c11
12f2f7fa-e007-4170-905a-30b534ab3363	Jizan	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
13c1e896-b0af-479e-a7e8-86d71e90a48d	Ash Sharqiyah South	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
0c44d654-05ef-4906-80f5-15d8b2b6ed5a	Ras Al Khaimah	Emirate	AE-RK	e688d809-f945-4686-bb95-c709b9715c11
264f7d9d-021d-473f-86a1-3eefc650359f	Al Wusta	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
2bc7d59e-cb99-4bef-9e50-baaf8451c8b0	Al Batinah South	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
a34f2f7f-ca3b-4cb4-a8fa-6783c10302dd	Ajman	Emirate	AE-AJ	e688d809-f945-4686-bb95-c709b9715c11
2ddce8c8-adf5-4ca6-9265-7dc2e25845c8	Aseer	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
f2cb5c68-563b-4a41-abe8-1d4521e6daa7	19-West Bengal	State	19	30f8c506-e27a-476c-8950-b40a6461bf61
d96f0325-9cf5-4bbc-bed8-a14f96bd8757	Abu Dhabi	Emirate	AE-AZ	e688d809-f945-4686-bb95-c709b9715c11
37e24037-20a8-4f34-98a2-5607ddf3e010	Najran	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
3b50d022-0101-4a17-8487-5b55674b5250	Al Rayyan	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
3fce6c57-674f-428a-80a5-25c006b76121	35-Andaman & Nicobar Islands	Union Territory	35	30f8c506-e27a-476c-8950-b40a6461bf61
6a3e17cd-bb87-4cab-82ba-a695534e2480	37-Andhra Pradesh(New)	State	37	30f8c506-e27a-476c-8950-b40a6461bf61
5981f9f9-aa5a-43f5-a4e6-522224e9ecdc	Umm Slal	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
5ce24a77-89e1-4e06-8f5e-3645c51aaf38	Madinah	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
5d380829-b56c-408c-8acb-8ce23fa148f1	Ad Dakhiliyah	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
c4e85286-928f-4d5f-af40-5d55e52bea88	10-Bihar	State	10	30f8c506-e27a-476c-8950-b40a6461bf61
6432264a-c5fc-41df-ac58-1cce08507b12	Ha’il	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
6b668a9d-cd65-4821-818d-d167de4616fe	Riyadh	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
6ef7e793-e7fd-404b-bc81-a38167dc0d92	Doha	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
37908979-86e6-4a01-8b38-37abc8596162	22-chattisgarh	State	22	30f8c506-e27a-476c-8950-b40a6461bf61
739046ca-ae35-4c12-a585-4f9326f80421	Al Buraimi	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
9f20d847-37f6-444e-b52a-299ace469a3c	04-Chandigarh	State	04	30f8c506-e27a-476c-8950-b40a6461bf61
7c0bf03d-11f2-48fe-b432-4cecac1be341	Al Wakra	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
7f7914af-7061-45d7-9716-390bf00d9c94	Qassim	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
c7ec99c0-4030-4019-a93a-b621740c1793	96-Foreign Country	-	96	30f8c506-e27a-476c-8950-b40a6461bf61
294a607d-e8b4-4341-a1b5-e40ca64d9266	02-Himachal Pradesh	State	02	30f8c506-e27a-476c-8950-b40a6461bf61
a02bedd6-5bf1-40cf-bd6d-214bc72b1268	29-Karnataka	State	29	30f8c506-e27a-476c-8950-b40a6461bf61
19b4fb50-6882-4d29-81cc-0591191f25e6	32-Kerala	State	32	30f8c506-e27a-476c-8950-b40a6461bf61
96fb5e20-5f6c-48c0-86a8-137adbfb05ac	Musandam	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
9fdd37e8-bdb4-4278-8447-e616fdd6c285	Makkah	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
aa7131e3-a78f-4b54-9f0d-0dfef95b88fd	Madinat Al Shamal	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
ae60758d-0852-45fd-b88b-98dfcb28fa9b	Al Daayen	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
b07d41ee-7d6a-45e0-81b7-c3717060bf2e	Al-Jawf	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
b2603dc3-b5ed-4ccf-afaa-2389e78bdaf6	Al Batinah North	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
8881d8c6-0e7b-4a90-a20c-ba26b3fbfb3e	38-Ladakh	Union Territory	38	30f8c506-e27a-476c-8950-b40a6461bf61
a785cc00-67d6-48dc-94bc-3eaee3e0bf1a	23-Madhya Pradesh	State	23	30f8c506-e27a-476c-8950-b40a6461bf61
c50984b8-41a7-40be-bfa2-4cc22e9e24bc	Al-Bahah	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
d17f1b49-274a-46b5-95fa-2837c9d9deac	Ash Sharqiyah North	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
e101e0ef-c232-4b47-a6d6-0f8c6962e138	Al Khor and Al Thakhira	Province	\N	fcb96ba7-f1f6-43f5-aa8e-3bbc56735fb1
934d618b-1f94-44e3-87bd-0b7b4e28348e	15-Mizoram	State	15	30f8c506-e27a-476c-8950-b40a6461bf61
e7a4e8ea-b0e1-4f32-bd37-b5ca1870f114	Tabuk	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
c5b32839-4981-4248-a455-237d4e69890a	03-Punjab	State	03	30f8c506-e27a-476c-8950-b40a6461bf61
f94c45ec-e239-4547-8bc6-32fd84b0aab0	Dhofar	Province	\N	83300f24-91ca-49ce-aa9c-b12dcbb9fe82
f991d4e6-8cd6-4482-b2f1-8474cc62b0a3	Eastern	Province	\N	94e4ce66-26cc-4851-af1e-ecc068e80224
3e7e45cd-4bcf-44c7-ae57-cc04995278a6	21-Odisha	State	21	30f8c506-e27a-476c-8950-b40a6461bf61
7617373f-3854-43c6-aa63-0ac4e9a9ced4	08-Rajasthan	State	08	30f8c506-e27a-476c-8950-b40a6461bf61
bec2778e-bd9b-4ac8-90f8-5c79c57d0959	Fujairah	Emirate	AE-FU	e688d809-f945-4686-bb95-c709b9715c11
90e23789-2fa8-4d15-be90-0a2e779c8a7c	Dubai	Emirate	AE-DU	e688d809-f945-4686-bb95-c709b9715c11
a4dd6d8b-48a8-4d16-b27a-5e4a5ba1cbe8	33-Tamil Nadu	State	33	30f8c506-e27a-476c-8950-b40a6461bf61
a6d84d30-725d-4c1e-8086-3cce58d7135b	16-Tripura	State	16	30f8c506-e27a-476c-8950-b40a6461bf61
47350001-8ff3-4565-a326-3f6dfdaad8f8	Umm Al Quwain	Emirate	AE-UQ	e688d809-f945-4686-bb95-c709b9715c11
234d135a-25d3-4832-a56c-a1a21ebe8ebe	09-Uttar Pradesh	State	09	30f8c506-e27a-476c-8950-b40a6461bf61
2429c793-1f4d-4009-9055-e6b856039789	28-Andhra	state	28	30f8c506-e27a-476c-8950-b40a6461bf61
6e1072b8-14bf-4398-90a7-0fc77c8e6bf8	12-Arunachal Pradesh	State	12	30f8c506-e27a-476c-8950-b40a6461bf61
9f80084f-5d3e-4ec7-b2ec-6b9f03db6144	18-Assam	State	18	30f8c506-e27a-476c-8950-b40a6461bf61
dd8018de-c48d-4bcc-a630-3f71b0d1eb1c	22-Chhattisgarh	State	22	30f8c506-e27a-476c-8950-b40a6461bf61
a7b46437-396f-44d3-ad47-492af211ec8e	26-Dadra & Nagar Haveli	union territory	26	30f8c506-e27a-476c-8950-b40a6461bf61
7946d46c-6197-4973-a1fd-5036f284ba03	25-Daman and Diu	union territory	25	30f8c506-e27a-476c-8950-b40a6461bf61
f75a963f-9c9d-46c6-ab29-82339ddf1e1c	07-Delhi	union territory	07	30f8c506-e27a-476c-8950-b40a6461bf61
70adbf0e-9ee3-4223-b3c8-739ad96ea6ed	30-Goa	State	30	30f8c506-e27a-476c-8950-b40a6461bf61
934d77de-ca39-43dc-a283-d3bf3ec2db88	24-Gujarat	State	24	30f8c506-e27a-476c-8950-b40a6461bf61
35712362-eed7-4837-bbc0-a28792b3e0c7	06-Haryana	State	06	30f8c506-e27a-476c-8950-b40a6461bf61
9605fa1d-b460-4f65-9ffd-83679652c17b	05-Uttarakhand	State	05	30f8c506-e27a-476c-8950-b40a6461bf61
82683172-784f-460f-a838-d401b57b451d	97-Other Territory	-	97	30f8c506-e27a-476c-8950-b40a6461bf61
965473b2-6bf9-4190-b20a-c13b07b54386	01-Jammu and Kashmir	State	01	30f8c506-e27a-476c-8950-b40a6461bf61
60c17aa8-31a7-40b4-b70f-ef03def86e88	20-Jharkhand	State	20	30f8c506-e27a-476c-8950-b40a6461bf61
542bd96c-d91a-439b-ac5e-5359d58ee18c	31-Lakshadweep	State	31	30f8c506-e27a-476c-8950-b40a6461bf61
2cfc667f-164c-4355-b846-3272fdd1457c	27-Maharashtra	State	27	30f8c506-e27a-476c-8950-b40a6461bf61
f405c361-caae-47e2-a8da-7d7c5460704b	14-Manipur	State	14	30f8c506-e27a-476c-8950-b40a6461bf61
6d569970-cfca-43a6-b308-357c3a8bde06	17-Meghalaya	State	17	30f8c506-e27a-476c-8950-b40a6461bf61
2d3014a4-2405-4f5d-8681-1e00306cdf3d	13-Nagaland	State	13	30f8c506-e27a-476c-8950-b40a6461bf61
7677d4ae-9fd1-48ae-9215-e856598d3bb0	34-Puducherry	State	34	30f8c506-e27a-476c-8950-b40a6461bf61
88c8360f-81cb-43c9-b541-f38af0ef8b6f	11-Sikkim	State	11	30f8c506-e27a-476c-8950-b40a6461bf61
c423e8a5-e2d5-4bb9-90ff-4828203d81dc	Punjab		03	30f8c506-e27a-476c-8950-b40a6461bf61
\.


--
-- Data for Name: users_userTable; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public."users_userTable" (id, "DefaultAccountForUser", "CreatedUserID", "CreatedDate", "UpdatedDate", "Cash_Account", "Bank_Account", "Sales_Account", "Sales_Return_Account", "Purchase_Account", "Purchase_Return_Account", "JoinedDate", "ExpiryDate", "LeaveDate", "Action", is_owner, is_web, is_mobile, is_pos, "BranchID", show_all_warehouse, "DefaultWarehouse", "CompanyID_id", "UserType_id", customer_id) FROM stdin;
01ba5975-067d-45d3-a74d-c55dac830076	f	3	2021-05-05 17:32:18.627+05:30	2021-05-05 17:32:18.621+05:30	1	92	85	86	69	70	2021-05-05	2023-06-23	\N	A	f	t	t	f	1	t	1	2064907b-3dd6-4efe-a449-d2f3ad4bf9c4	f37a6803-28af-438a-a76b-87d1f8713dd0	e33d5f8f-0731-4db6-b55f-58c70f3281df
012e7acb-060f-4fad-802b-8c3d2f73d7f5	f	112	2021-11-16 21:31:18.542799+05:30	2021-11-16 21:31:18.514897+05:30	1	92	85	86	69	70	2021-11-16	\N	\N	A	t	t	t	f	1	t	1	d92f7ae5-6b6b-4922-b196-c0e3d1a4116d	dd72ea79-ad91-4775-a458-901dff8e0b16	ca588b0c-2394-4a19-8e7f-c8593d7a9a37
b8518543-8700-4151-a096-1e6ecb164397	f	305	2022-01-14 22:53:15.463912+05:30	2022-01-14 22:53:15.43973+05:30	1	92	85	86	69	70	2022-01-14	\N	\N	A	t	t	t	f	1	t	1	a83e21fd-2a67-484a-909a-33e2efa0dd73	3728d209-9b21-4c97-afb3-e217bd7401a9	88b74151-ffaf-4d03-866a-04e30e0e36dc
3c2ff759-46b4-427c-83d9-33b47979466e	f	2	2021-09-20 20:58:02.225347+05:30	2021-09-20 20:58:02.182302+05:30	1	92	85	86	69	70	2021-09-20	\N	\N	A	t	t	t	f	1	t	1	22e4be51-1a5c-4f37-ac41-2b644a1663c9	031f3563-5b84-4819-bf50-86816e4592d6	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
51e1044c-ebb1-44aa-811e-8276bf18cb74	f	83	2021-11-17 12:06:57.373162+05:30	2021-11-17 12:06:57.341625+05:30	1	92	85	86	69	70	2021-11-17	\N	\N	A	t	t	t	f	1	t	1	ad3aab21-4da2-41d2-b199-0af44bdde30d	a2639c15-8fae-415b-8fa2-b46f22223aed	544d811d-80e0-453e-9514-6651f247c800
161bd871-95fc-401c-917e-423ad0b579cb	f	381	2022-03-06 14:39:46.002037+05:30	2022-03-06 14:39:45.961233+05:30	1	92	85	86	69	70	2022-03-06	\N	\N	A	t	t	t	f	1	t	1	85b0c263-d294-4c4b-b05d-596c5c887c4f	9f111e1c-4307-473c-b093-69b4520b770a	5532695b-4191-47ac-92b5-385dc1f82dce
e065731e-f03a-482e-bfbe-d3939b5a95bc	f	2	2021-09-21 10:23:23.776628+05:30	2021-09-21 10:23:23.753073+05:30	1	92	85	86	69	70	2021-09-21	\N	\N	A	t	t	t	f	1	t	1	f4cfc7da-27fc-4765-9c7e-3984fbf2954f	46ba4ca0-1803-4c76-bfae-e1529cbc5b55	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
6ff80e6c-b4d8-4845-91af-9925c645ec41	f	318	2022-01-14 23:09:13.235908+05:30	2022-01-14 23:09:13.210656+05:30	1	92	85	86	69	70	2022-01-14	\N	\N	A	t	t	t	f	1	t	1	73af551e-2bd7-4332-8af4-11e5d47770a3	9ef6ca2f-43d1-4dfe-b64f-9397ab1d3efd	41d77e3c-f9f6-4f22-a85c-dfea5bde4e4d
37afa3d4-3383-454d-a379-dabc5e781d3b	t	11	2021-03-05 16:33:49.106+05:30	2021-03-09 19:47:34.558+05:30	1	92	85	86	69	70	2021-01-15	2022-03-01	\N	M	f	t	t	f	1	t	1	8ecd67fb-e2f4-4da0-b6ce-2b14127e3459	cf52b980-d708-4100-b298-1ce4eb0c8616	7ec53128-d1de-464d-8446-9685ec83c8a0
f7693288-8e69-4591-b9d0-c973b2e3d575	f	134	2021-11-18 22:30:30.732247+05:30	2021-11-18 22:30:30.705877+05:30	1	92	85	86	69	70	2021-11-18	\N	\N	A	t	t	t	f	1	t	1	3c69ed9e-eb41-46cf-90d1-daa69d0f1a20	adcf97d1-b4be-4fc6-9055-fb5e2dcb79c3	2a0ea2be-7696-4da5-a9f7-b6f595356af2
4eeb23d1-15c9-49af-a3d4-1dd195011fa9	f	76	2021-09-25 13:26:55.977854+05:30	2021-09-25 13:26:55.953285+05:30	1	92	85	86	69	70	2021-09-25	\N	\N	A	t	t	t	f	1	t	1	380f057b-d36a-4510-9662-864c2fafbd40	a989149d-3bc9-43e8-91cc-c566f1398356	d0099d91-22d4-46bb-9240-d4c2347622f6
ea14c81f-3943-4f38-85b2-af3cf4283d7a	f	75	2021-09-26 01:06:20.841741+05:30	2021-09-26 01:06:20.834616+05:30	1	92	85	86	69	70	2021-09-25	2025-01-01	\N	A	f	t	t	f	1	t	1	830d6737-3e27-466d-9f25-13c655bddde2	885ce214-d95a-4f10-9374-eb25be3bb24b	06baff7f-81a3-4580-9c5f-ab8ced555747
4b00e873-7bf1-46a6-906a-19e680421569	f	43	2021-05-19 21:20:40.02+05:30	2021-05-19 21:20:40.003+05:30	1	92	85	86	69	70	2021-05-19	\N	\N	A	t	t	t	f	1	t	1	4848489c-59a1-448c-9a50-059db8b9d009	33442ba4-da92-4dff-979c-07cb2bb4f662	32adcae5-a882-4737-a199-60080cfd3d43
226a7628-5251-4ee5-b368-7af73d799ab5	f	2	2021-07-23 14:32:49.567325+05:30	2021-07-23 14:32:49.55014+05:30	1	92	85	86	69	70	2021-07-23	\N	\N	A	t	t	t	f	1	t	1	7be77a2e-8bdc-42b1-bf85-9f7961b559d2	7052723f-0461-4d39-88d8-58d8d88288d5	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
172635fe-a525-43a0-902a-bb836895d0a8	f	2	2021-09-26 13:35:21.703881+05:30	2021-09-26 13:35:21.681634+05:30	1	92	85	86	69	70	2021-09-26	\N	\N	A	t	t	t	f	1	t	1	8ae6a8c2-dc63-4d3c-95be-ff283fdcbfb0	8122cac6-8d2d-4f78-88a1-024431615418	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
39a9c62d-07d2-4272-9539-6a2d325585c2	f	2	2021-07-23 15:26:15.256093+05:30	2021-07-23 15:26:15.237549+05:30	1	92	85	86	69	70	2021-07-23	\N	\N	A	t	t	t	f	1	t	1	6be9db8f-b758-4d25-b8c0-cd2eabcdecad	735f38d2-ed05-449d-8a74-edbc8dd308b1	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
593b8ec8-062f-4ae9-afe1-569a7d91a144	f	79	2021-09-26 23:32:56.797138+05:30	2021-09-26 23:32:56.77194+05:30	1	92	85	86	69	70	2021-09-26	\N	\N	A	t	t	t	f	1	t	1	e99a0988-637e-454f-b566-805159df8b97	94a6dbc5-b422-4840-a347-cfd5fd8f2919	e273dbc1-71ee-4bf8-9178-f0b51f3beaea
8dae409b-1a6f-4c56-be2a-c6ba60eb37aa	f	2	2021-07-23 15:32:21.405119+05:30	2021-07-23 15:32:21.384156+05:30	1	92	85	86	69	70	2021-07-23	\N	\N	A	t	t	t	f	1	t	1	cafb2501-ae79-46a0-a81f-ad22298c31b3	64a9a60f-1362-4070-baa4-8f1eb40be483	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
326c9698-8fe0-4c20-a73c-67613bee08ef	f	76	2021-09-16 10:49:43.62522+05:30	2021-09-16 10:49:43.601185+05:30	1	92	85	86	69	70	2021-09-16	\N	\N	A	t	t	t	f	1	t	1	380f057b-d36a-4510-9662-864c2fafbd40	37e1ebe9-cac8-4843-9251-bd419cf611cb	d0099d91-22d4-46bb-9240-d4c2347622f6
1f05eb65-0ba3-48e3-a230-c2137a459277	f	5	2021-07-23 17:27:29.96282+05:30	2021-07-23 17:27:29.943022+05:30	1	92	85	86	69	70	2021-07-23	\N	\N	A	t	t	t	f	1	t	1	0f393155-414c-4b13-a5e0-da3555ad179a	8e941d97-0e3d-4fab-a25c-f37adf9acfec	73dfa395-8eaf-4a3b-84ef-f15341357317
8b644d26-3ada-4e59-8635-e0d373892ffc	f	12	2021-03-17 12:45:03.504+05:30	2021-03-17 12:45:03.485+05:30	1	92	85	86	69	70	2021-03-17	\N	\N	A	f	t	t	f	1	t	1	084d39dd-6fda-4b66-9ad9-ae86d0003a10	857a581b-cbe3-4142-8023-09a1f46dd7fc	7e5b9515-7b14-42b0-be34-d5070f7bb44c
8860bc3d-5410-4c46-8cb2-c59d0cd6313a	f	63	2021-07-23 21:55:13.959878+05:30	2021-07-23 21:55:13.941228+05:30	1	92	85	86	69	70	2021-07-23	\N	\N	A	t	t	t	f	1	t	1	b2d008f8-92d6-46cf-81ab-d4aad3f2a238	faf0ca06-9653-4ab8-9798-84789fab8e84	7701a857-70b0-4117-8c4a-74c5adb3f8ec
b9496a7d-6ff1-4067-9368-a2e07d1b23f7	t	29	2021-04-25 01:08:47.861+05:30	2021-05-03 17:31:33.881+05:30	1	92	85	86	69	70	2021-04-24	2022-01-01	\N	M	f	t	t	f	1	t	1	878acf1f-6090-47f6-ab00-2b0f61cbcce6	92249126-4f3a-45f9-a8f9-7331c9d2cf31	3e3c2f65-597c-4c38-a098-75ec1addf086
cb6fcb7e-cc67-435b-81c0-430e2e56174c	f	16	2021-04-15 01:52:35.094+05:30	2021-04-15 01:52:35.074+05:30	1	92	85	86	69	70	2021-04-14	\N	\N	A	f	t	t	f	1	t	1	bb16b31d-b2b4-4897-9611-aa17ebbb8152	77dbd6af-512b-4ffd-9967-b2065f96ff28	c8cd25f8-6cb0-42a9-a15c-104475d6a7bc
ce247920-d6c0-4a20-936e-a0bf439ab091	f	27	2021-04-24 02:39:11.355+05:30	2021-04-24 02:39:11.335+05:30	1	92	85	86	69	70	2021-04-24	\N	\N	A	f	t	t	f	1	t	1	05f9f96d-36c5-4069-960c-5356493bf308	e91274eb-3697-4533-bee6-14ca4b78d217	c415fbdd-9073-4cca-a68f-85838307c3c7
c450477a-d3c4-4ca5-8429-317d25883bbb	t	12	2021-04-03 22:26:20.343+05:30	2021-07-03 14:38:30.133654+05:30	1	92	85	86	69	70	2021-04-03	2021-12-31	\N	M	f	t	t	f	1	t	1	2df75602-f5a7-4f20-a3ff-c662bd98ba06	623c2817-433f-4989-ad3a-a826e6b8d664	7e5b9515-7b14-42b0-be34-d5070f7bb44c
2e31a4f6-1878-4115-a11d-8ad09157f8b2	f	21	2021-07-28 16:20:54.028103+05:30	2021-07-28 16:20:53.977458+05:30	1	92	85	86	69	70	2021-07-28	\N	\N	A	t	t	t	f	1	t	1	35d738dd-d831-4404-827a-0c488b5f0948	d583eb6e-c288-43bf-bc51-3f7199c4abe3	324b6dd2-8845-48ae-bf70-2950df15f490
e996b395-ddf5-4ae0-b960-a2871383f38e	f	2	2021-07-30 12:38:37.089229+05:30	2021-07-30 12:38:37.047557+05:30	1	92	85	86	69	70	2021-07-30	\N	\N	A	t	t	t	f	1	t	1	4884f936-4496-4d8a-8850-3f096b66e46f	2a9fd4b7-e2e1-44ea-80dd-3b3c327f24b9	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
07c0c08c-b99c-40b2-9d9e-2fcfc38df0a4	f	2	2021-07-31 12:15:59.952077+05:30	2021-07-31 12:15:59.891513+05:30	1	92	85	86	69	70	2021-07-31	\N	\N	A	t	t	t	f	1	t	1	6e8826fa-9655-4a24-b49b-5953141ab63e	dfbbe531-04cf-42a0-a718-7125b8401db6	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
10f1aa53-7041-4753-9ca7-6ae8f1134768	f	65	2021-08-09 22:17:30.351301+05:30	2021-08-09 22:17:30.333798+05:30	1	92	85	86	69	70	2021-08-09	\N	\N	A	t	t	t	f	1	t	1	05a071e7-d080-4b4e-b736-e65ea209078f	51b94075-b91b-4b97-b917-333f65d9aac7	feb4bb45-74e8-48cb-871e-3664ef2521f4
428290f6-d0f8-475b-b2c2-cbc5429f1075	f	36	2021-08-04 19:38:33.764043+05:30	2022-05-05 11:51:10.646294+05:30	1	92	85	86	69	70	2021-08-04	2022-08-04	\N	M	f	t	t	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	8e4d10a0-0126-4f64-a393-99a7dcec4c58	759792f0-de61-45ba-8194-c4537df56f24
b20327f6-3913-4f32-96d9-bfcf354a4bc2	f	36	2021-07-31 01:48:16.935666+05:30	2022-05-16 17:07:36.124308+05:30	1	92	85	86	69	70	2021-07-30	2023-12-31	\N	M	f	t	t	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	54d0fd5f-8b34-48b0-9658-036e01565707	072a25ee-7f3e-4b21-b408-cdf6d30e61f4
c5695f7b-5b13-4b3a-b006-b939c37d8d29	f	66	2021-08-10 14:56:58.388541+05:30	2021-08-10 14:56:58.368035+05:30	1	92	85	86	69	70	2021-08-10	\N	\N	A	t	t	t	f	1	t	1	9d230133-6482-4c40-9de7-bbc986ec4256	7d69d5b0-10db-4a92-ba80-a0bc4b8bd2c3	3416a50b-de1d-4856-8dee-e3d0dcfac9bf
69264622-d7c4-4bf7-8cd1-45b735e0a8b3	f	2	2021-08-11 10:51:07.896061+05:30	2021-08-11 10:51:07.888863+05:30	1	92	85	86	69	70	2021-08-11	2021-08-11	\N	A	f	t	t	f	1	t	1	7be77a2e-8bdc-42b1-bf85-9f7961b559d2	a31d45bb-a7c8-4102-a6de-308e307313c5	3416a50b-de1d-4856-8dee-e3d0dcfac9bf
a85f5f39-e6c2-4c11-a325-27ee4019fede	f	67	2021-09-08 14:22:47.238748+05:30	2021-09-08 14:22:47.212849+05:30	1	92	85	86	69	70	2021-09-08	\N	\N	A	t	t	t	f	1	t	1	1a871202-f7e3-4e42-970c-8ea2c3eeed90	79ed0cdd-706f-44e9-841e-b6f81af1544b	01e95d32-ef49-4c66-80bf-1bc5077da8b2
ab978fa1-d758-4f6f-b4ff-cf71880b3ba4	f	23	2021-04-19 23:10:10.627+05:30	2021-04-19 23:10:10.608+05:30	1	92	85	86	69	70	2021-04-19	\N	\N	A	t	t	t	f	1	t	1	c165f46b-02f4-4632-85ad-2abe55cf40d7	e4715b93-f93e-404f-a52f-00697052092b	970442aa-ae27-45e0-a22e-8269d4d53d6c
df109231-123d-44c8-a1b7-098a4105e513	t	16	2021-04-17 02:19:49.925+05:30	2021-05-15 23:19:57.047+05:30	1	92	85	86	69	70	2021-04-16	2022-08-16	\N	M	f	t	t	f	1	t	1	bb16b31d-b2b4-4897-9611-aa17ebbb8152	22ea1a31-9796-4262-b7df-079075fbe49f	508372ff-c89c-437d-863b-1fc2709250a5
a3b42c88-cb7d-4099-89a0-c2758783857d	f	2	2021-10-02 11:20:14.605878+05:30	2021-10-02 11:20:14.58629+05:30	1	92	85	86	69	70	2021-10-02	\N	\N	A	t	t	t	f	1	t	1	1b0083fb-5a75-4562-9b4b-613e27a2222e	5ab7da00-16b0-43f7-ba1b-e7ef113c5fcb	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
f9877cbb-5c94-4f29-a36d-d0799d934c6f	f	223	2021-12-06 21:31:47.602927+05:30	2021-12-06 21:31:47.578178+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	338771ca-5f9e-4743-8d07-eec2b20d19db	3adf78cf-bb7d-4266-87f3-ca48e8fbb565	7552fcf3-5702-4301-82a3-adf116755b81
06035fc1-24af-427f-86a0-ac4ef5896444	t	75	2021-07-04 00:28:47.86156+05:30	2021-07-08 13:34:27.119718+05:30	1	92	85	86	69	70	2021-07-03	2023-04-07	\N	M	t	t	t	f	1	t	1	830d6737-3e27-466d-9f25-13c655bddde2	885ce214-d95a-4f10-9374-eb25be3bb24b	fbcaf1dd-4258-4d39-9b17-ecaec902973e
ca174177-d3f3-4bbd-b4a9-e43fa1526b65	f	320	2022-01-15 15:17:10.475414+05:30	2022-01-15 15:17:10.449476+05:30	1	92	85	86	69	70	2022-01-15	\N	\N	A	t	t	t	f	1	t	1	9cdaeea8-0409-4d95-8533-811c6439e062	a075a611-b928-4544-b37b-4f7db8c3b4d5	55e7b7f9-0f1e-473f-8db9-c0195e3096de
b9798fda-796c-4eec-8116-21b73d570e7b	f	62	2021-07-23 14:33:28.003141+05:30	2021-07-23 14:33:27.979833+05:30	1	92	85	86	69	70	2021-07-23	\N	\N	A	t	t	t	f	1	t	1	e3b4870c-33ad-463a-95bc-889ec221cd4d	724aeea1-09e3-4544-9a8b-ba423a3d4526	6467c567-1c74-463f-89bd-6ff2757b59c7
5f1b218c-52f6-4739-b188-090be49c357a	f	2	2021-10-01 11:23:52.486991+05:30	2021-10-01 11:23:52.4665+05:30	1	92	85	86	69	70	2021-10-01	\N	\N	A	t	t	t	f	1	t	1	e3d49bf9-17c5-4e38-9997-25215b50e505	8556ba99-4565-40a4-8aed-db6d2a4c5f02	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
f2736e19-080d-4550-9a0c-b491dd08017b	f	12	2021-04-03 23:02:09.907+05:30	2021-04-03 23:02:09.901+05:30	0	0	0	0	0	0	2021-04-03	2023-04-03	\N	A	f	t	t	f	1	t	1	2df75602-f5a7-4f20-a3ff-c662bd98ba06	623c2817-433f-4989-ad3a-a826e6b8d664	6b9a69a8-3890-4a3b-995d-f7afcdcf03ff
63dfe515-c2fb-4ef9-a855-b68aa74415cc	f	138	2021-11-19 11:45:01.896689+05:30	2021-11-19 11:45:01.869573+05:30	1	92	85	86	69	70	2021-11-19	\N	\N	A	t	t	t	f	1	t	1	aa43a8e1-895b-446e-af06-6a59b04f5008	264c094d-82fb-4210-bf68-fe371890fb3c	249635b1-841d-4c13-b80a-f653fe629db3
6c15a19d-9761-4e6a-a51b-a7caf954db4c	t	29	2021-06-01 11:57:32.929113+05:30	2021-06-01 11:57:32.919442+05:30	1	92	85	85	69	70	2021-06-01	2023-02-23	\N	A	f	t	t	f	1	t	1	878acf1f-6090-47f6-ab00-2b0f61cbcce6	92249126-4f3a-45f9-a8f9-7331c9d2cf31	4990e8a2-b9b6-432e-b77c-0f7d7c11b8a7
861b3f52-e2ae-4f58-9539-fa951cfb4090	t	47	2021-05-26 03:46:06.326+05:30	2021-06-03 00:39:48.671786+05:30	1	92	85	86	69	70	2021-05-26	2022-08-25	\N	M	t	t	t	f	1	t	1	343e4652-7e73-4f3c-967f-fba6122da413	dafb2b79-4e3c-438d-a47d-3b7840f992b2	3edaaaf3-3a28-402d-88a0-bee9b3f94aa0
cc9ef306-e8c2-4d8e-abf5-dc7f4941df10	f	147	2021-11-23 21:47:59.406628+05:30	2021-11-23 21:47:59.382226+05:30	1	92	85	86	69	70	2021-11-23	\N	\N	A	t	t	t	f	1	t	1	e8749c1f-0a82-4852-be97-56990b990e76	265c7000-0158-4f86-bdf3-d1f20a832590	c6558a56-261b-455e-98e9-12fbe59dfd5d
1f6444ab-86af-4208-a57e-16521553b071	f	76	2021-09-16 10:51:00.767535+05:30	2021-09-16 10:51:00.746247+05:30	1	92	85	86	69	70	2021-09-16	\N	\N	A	t	t	t	f	1	t	1	d05198b3-47e0-4d5e-ab67-1562ffa9f688	b42a6564-12ef-44e3-8af3-6e9c42e2bdb5	d0099d91-22d4-46bb-9240-d4c2347622f6
fcd8df06-5956-4f5d-a262-647a9b9fb0e2	f	2	2021-10-01 11:27:33.821718+05:30	2021-10-01 11:27:33.802265+05:30	1	92	85	86	69	70	2021-10-01	\N	\N	A	t	t	t	f	1	t	1	d9a91d63-2e50-4fc2-be07-e66a5f9add80	f66c9b23-d773-4398-b54a-479fa3d0b5b0	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
6a0d9b2a-bb65-40df-b894-4a49c1bf4159	f	36	2022-03-06 23:16:57.644961+05:30	2022-03-08 00:50:59.732415+05:30	1	92	85	86	69	70	2022-03-06	2025-12-31	\N	M	t	t	f	f	1	t	1	30e1c142-9b1a-4596-80fa-064565bbe2a6	dff453a3-fd12-45af-af32-4f00e7061d96	67aad890-ac49-4fde-a09f-61e5dad03cc5
54b3b893-82d7-4a90-8c96-97100e736b8e	f	31	2021-06-15 09:54:55.98368+05:30	2021-06-15 09:54:55.963982+05:30	1	92	85	86	69	70	2021-06-15	\N	\N	A	t	t	t	f	1	t	1	ded7822a-1355-40c1-aa0d-2335153d4d08	ce507a17-ece3-4829-bf85-42636bc24905	06baff7f-81a3-4580-9c5f-ab8ced555747
0cc0051b-ae9a-4d21-8af3-0faba2d0ed19	f	31	2021-06-15 09:58:44.770829+05:30	2021-06-15 09:58:44.763679+05:30	1	92	85	86	69	70	2021-06-15	2022-03-31	\N	A	f	t	t	f	1	t	1	ded7822a-1355-40c1-aa0d-2335153d4d08	ce507a17-ece3-4829-bf85-42636bc24905	691b7c3e-dd12-42c0-b864-c14f3c352b64
b7d7048e-f255-4a5e-a42d-fa2466e8ff17	f	81	2021-10-01 20:07:30.363359+05:30	2021-10-01 20:07:30.316322+05:30	1	92	85	86	69	70	2021-10-01	\N	\N	A	t	t	t	f	1	t	1	a7bc7605-e44c-4f06-8cd2-f4e8bb1f00f0	bf7dd263-0bf5-41f7-a1e4-39881f006626	f005a594-8664-4b14-816e-cd058a843183
b201b34f-e22e-47b5-bc88-99c5b3e4b59f	f	36	2021-06-18 19:20:33.45064+05:30	2021-06-18 19:20:33.426553+05:30	1	92	85	86	69	70	2021-06-18	\N	\N	A	t	t	t	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	54d0fd5f-8b34-48b0-9658-036e01565707	67aad890-ac49-4fde-a09f-61e5dad03cc5
56ec7e98-691c-499a-85bb-103a246140c7	f	76	2021-11-24 14:57:56.429078+05:30	2021-11-24 14:57:56.416923+05:30	1	92	85	86	69	70	2021-11-24	2021-11-24	\N	A	f	t	f	f	1	t	1	380f057b-d36a-4510-9662-864c2fafbd40	a989149d-3bc9-43e8-91cc-c566f1398356	\N
4a999d51-98ef-4b23-9a2d-9d069c1bddcd	f	81	2021-10-01 20:08:19.921364+05:30	2021-10-01 20:08:19.90121+05:30	1	92	85	86	69	70	2021-10-01	\N	\N	A	t	t	t	f	1	t	1	bd326aa7-e4d5-46a0-a186-ab18c7601861	c62df2e2-030e-4b55-87ac-4c2d1d8d6821	f005a594-8664-4b14-816e-cd058a843183
626ba994-4b50-4fe5-8533-f58555fceab4	f	51	2021-06-20 00:18:45.870146+05:30	2021-06-20 00:18:45.818593+05:30	1	92	85	86	69	70	2021-06-19	\N	\N	A	t	t	t	f	1	t	1	6fe810cd-e99d-4d28-8dd3-303553fe14e2	a5dc5dbf-1da1-46cb-a335-e0de2aedf786	19f40ce1-e00c-4031-8e28-38a7d3b7a392
08a385d2-cae6-4370-8abd-0ef04754b6b5	f	2	2021-10-07 15:54:44.94722+05:30	2021-10-07 15:54:44.924149+05:30	1	92	85	86	69	70	2021-10-07	\N	\N	A	t	t	t	f	1	t	1	90bc3689-942e-4857-9db4-13b284708422	8d9993f7-dbc2-4ade-862d-d1e05cc6a046	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
687ef7ce-007f-444e-8ac6-5ee458a30f2e	f	54	2021-06-28 13:01:53.634279+05:30	2021-06-28 13:01:53.605923+05:30	1	92	85	86	69	70	2021-06-28	\N	\N	A	t	t	t	f	1	t	1	11d9b1b1-b379-4e1a-86f9-90b77110b675	b857c567-0c81-4641-83fd-a82ff7eeb192	b92b76ee-ec18-4518-9dff-527d078fcebe
c366e79b-260f-4bcb-97f3-0b5902e4ab6e	f	56	2021-07-06 16:32:00.453382+05:30	2021-07-06 16:32:00.4278+05:30	1	92	85	86	69	70	2021-07-06	\N	\N	A	t	t	t	f	1	t	1	622047c2-fa8b-416f-a1fb-02918e01edab	0bc3fb09-3219-430b-a520-3282e7e1cd69	955cbd71-3306-4f63-85e5-aa37b3d0a945
8c242531-7263-4893-9d9b-3290ad18f41e	f	82	2021-10-07 16:34:56.201509+05:30	2021-10-07 16:34:56.180089+05:30	1	92	85	86	69	70	2021-10-07	\N	\N	A	t	t	t	f	1	t	1	c556d8f4-9261-429d-9c16-493372bed121	18f98411-f3de-4941-a448-e07b5e1bf67b	ff3c4d84-6ddd-4956-b6a9-149c023a7eb5
52fe1a17-71f2-4a58-94c1-4d699e41990e	t	36	2021-06-18 19:32:22.766224+05:30	2022-05-16 17:16:52.548183+05:30	1	92	85	85	69	70	2021-06-18	2023-12-31	\N	M	f	t	t	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	2d53d0b5-b466-42c5-a529-1a387c11b134	ee397856-295b-46c0-9d79-9ab050b7c30f
c8326a1a-1144-479e-879c-0af9ff1032c7	f	57	2021-07-07 22:13:35.524323+05:30	2021-07-07 22:13:35.495033+05:30	1	92	85	86	69	70	2021-07-07	\N	\N	A	t	t	t	f	1	t	1	1b8f0a96-fe52-44aa-8bae-1bb62066c31c	2c323f06-0520-4458-b9d1-47f1da5629a9	05e21e96-77e5-4ff8-bfbd-03b992f45ae3
61ee5f5c-a732-468d-87c3-e2c298942d6f	f	12	2021-07-08 18:44:51.014308+05:30	2021-07-08 18:44:51.006959+05:30	1	92	85	86	69	70	2021-07-08	2023-09-07	\N	A	f	t	t	f	1	t	1	830d6737-3e27-466d-9f25-13c655bddde2	885ce214-d95a-4f10-9374-eb25be3bb24b	af6933b6-96aa-439b-91a2-82af1b2e52eb
73e48172-0bfd-432b-8d32-493ee61cf584	f	31	2021-10-15 16:16:17.725717+05:30	2021-10-15 16:16:17.718578+05:30	1	92	85	86	69	70	2021-10-15	2022-12-31	\N	A	f	t	t	f	1	t	1	ded7822a-1355-40c1-aa0d-2335153d4d08	ce507a17-ece3-4829-bf85-42636bc24905	cef6d76e-aade-495a-b07e-a262c1a114e8
782ea491-6157-4302-b5f0-3bbb33b1f1fb	f	31	2021-10-15 16:17:18.968919+05:30	2021-10-15 16:17:18.961749+05:30	1	92	85	86	69	70	2021-10-15	2022-12-31	\N	A	f	t	t	f	1	t	1	830d6737-3e27-466d-9f25-13c655bddde2	885ce214-d95a-4f10-9374-eb25be3bb24b	cef6d76e-aade-495a-b07e-a262c1a114e8
78de0908-a7ad-42de-b1ed-6b638022a8ea	f	83	2021-10-19 13:47:11.821129+05:30	2021-10-19 13:47:11.793372+05:30	1	92	85	86	69	70	2021-10-19	\N	\N	A	t	t	t	f	1	t	1	70106d11-672e-40ea-9f50-a5495faa515a	d514dae0-9c0e-4e4c-b585-0c34300da48f	544d811d-80e0-453e-9514-6651f247c800
88c76ef9-043c-4104-b4ef-930500e8b055	f	83	2021-10-21 17:32:55.114421+05:30	2021-10-21 17:32:55.080086+05:30	1	92	85	86	69	70	2021-10-21	\N	\N	A	t	t	t	f	1	t	1	d8fcda4b-0921-4469-b0fe-317c837c4d98	04db3fd7-9570-4ac4-a818-360ca58e1d4d	544d811d-80e0-453e-9514-6651f247c800
98eee333-c5ba-43cc-adf1-6c057cbe7f0a	f	227	2021-12-07 01:26:50.456184+05:30	2021-12-07 01:26:50.435341+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	45eafbb3-0da1-437c-ac09-2e9ce9cc3e22	8ce67f13-77bb-41bf-b3eb-b27084439669	8154623e-372f-471c-82b3-f574075a3edd
73cd24e0-f03c-4d8d-b0fc-1273138c1b63	f	77	2021-10-25 20:57:05.76651+05:30	2021-10-25 20:57:05.743077+05:30	1	92	85	86	69	70	2021-10-25	\N	\N	A	t	t	t	f	1	t	1	d66bfe5c-8871-4d76-97f5-60f4a1c8462b	435a88ed-3468-406c-8077-45cc804a64bc	d5333367-ad3b-473f-ab20-f958c0debea7
27eaf74f-21e7-40e8-974b-05053ed8f22e	f	322	2022-01-15 22:23:24.618867+05:30	2022-01-15 22:23:24.597413+05:30	1	92	85	86	69	70	2022-01-15	\N	\N	A	t	t	t	f	1	t	1	282fbe97-daff-4588-81fa-0de171fc04ab	06d7ddad-f56b-4047-b0ad-22550c527395	8aabf654-8311-41b0-98f4-76541b5d731e
8f06766f-9527-452b-9dcb-79a7b93c2925	f	85	2021-10-26 19:46:32.870222+05:30	2021-10-26 19:46:32.848009+05:30	1	92	85	86	69	70	2021-10-26	\N	\N	A	t	t	t	f	1	t	1	8900c397-2a72-45ee-98f0-d76b7e977e7e	196dd2c7-3f4f-45eb-aba8-6b0eadb6ea6f	0e7a10c6-346a-4b06-bff9-f5d945e94f45
b128329a-fbc2-45f0-808a-f1184c614ca3	f	88	2021-10-27 11:23:14.047326+05:30	2021-10-27 11:23:14.023768+05:30	1	92	85	86	69	70	2021-10-27	\N	\N	A	t	t	t	f	1	t	1	9b254010-7079-4dd2-b2be-8e295129053f	63fdbb10-dc30-4eab-b00e-38adc1ddb763	a24b4952-c38e-4333-a8d9-0c5b094da69d
98efc1ed-2501-40db-a3f8-ec234f70e151	f	88	2021-10-27 23:20:57.716853+05:30	2021-10-27 23:20:57.697151+05:30	1	92	85	86	69	70	2021-10-27	\N	\N	A	t	t	t	f	1	t	1	beb18073-499e-4957-b970-5310af39ee36	1c625191-4e0e-441b-8bed-afd9753d7657	a24b4952-c38e-4333-a8d9-0c5b094da69d
aaa4df11-f72c-4807-a075-74e7d9b68938	f	88	2021-10-28 13:59:45.179918+05:30	2021-10-28 13:59:45.149795+05:30	1	92	85	86	69	70	2021-10-28	\N	\N	A	t	t	t	f	1	t	1	efd37913-c2c4-41da-9345-2f5b1dda652f	0e286565-a60b-450f-aba5-f7e245c57dc4	a24b4952-c38e-4333-a8d9-0c5b094da69d
dbd2c6fc-0543-4d6e-b46b-ed719fcfc7b7	f	21	2022-01-16 11:11:33.606972+05:30	2022-01-16 11:11:33.58193+05:30	1	92	85	86	69	70	2022-01-16	\N	\N	A	t	t	t	f	1	t	1	ae6968ab-5fdf-40d1-b777-83098c8fba86	02672efd-ecb0-437e-b9d3-ec0d74d85bf2	324b6dd2-8845-48ae-bf70-2950df15f490
0f2df948-bb32-4f1a-80d3-51a9e463886e	f	89	2021-10-29 20:22:04.597263+05:30	2021-10-29 20:22:04.573856+05:30	1	92	85	86	69	70	2021-10-29	\N	\N	A	t	t	t	f	1	t	1	52989974-f7f9-4066-bfdb-04d3b71e9c39	bcfa9c8a-98ef-4fd5-88b3-aa6443cea43a	a9f97491-a985-409a-82a2-76f0d227c10d
3f224cc9-04d3-4fb8-a40b-aa14184eeaf1	f	139	2021-11-20 15:29:30.977198+05:30	2021-11-20 15:29:30.941727+05:30	1	92	85	86	69	70	2021-11-20	\N	\N	A	t	t	t	f	1	t	1	059d5661-440d-41a9-b9b8-84ddf090b1ca	837ecf0a-cba6-4653-b10b-81b78d25da60	51b0ace3-80a8-444f-b1f6-83be50c46171
aa4cd6e6-8de5-42ba-a388-8c438954baf3	f	83	2021-10-30 14:56:30.884092+05:30	2021-10-30 14:56:30.862102+05:30	1	92	85	86	69	70	2021-10-30	\N	\N	A	t	t	t	f	1	t	1	3f4bb1ba-1e0e-4843-817c-a47566638c07	468b6a5e-d2e4-4892-a13a-da41d1ed9136	544d811d-80e0-453e-9514-6651f247c800
755d6fb8-07d1-427b-a6e4-6f9c1b82e9d4	f	101	2021-11-16 13:16:17.475232+05:30	2021-11-21 15:32:41.987582+05:30	1	92	85	86	69	70	2021-11-16	2023-01-01	\N	M	t	t	t	f	1	t	1	904da37a-8db4-4c00-b5b4-5c38207f4299	05664aa1-301a-4551-8b5f-58217c1eed68	084c7e62-3b41-44ed-b1ca-3d7358c60ea1
68a58ee4-d380-4463-a850-3ab5c5f7634a	f	90	2021-10-31 20:53:27.695912+05:30	2021-10-31 20:53:27.671122+05:30	1	92	85	86	69	70	2021-10-31	\N	\N	A	t	t	t	f	1	t	1	adfe0099-614a-45ea-87a5-18c0bafbd87b	65c48b03-8bef-42a5-a87c-c018ae967db6	60a1cd16-f506-4dc1-9884-bab28a4cdf05
1e0860b6-b6ae-4d55-961a-675a9d1f2779	f	91	2021-11-03 10:52:23.667678+05:30	2021-11-03 10:52:23.640634+05:30	1	92	85	86	69	70	2021-11-03	\N	\N	A	t	t	t	f	1	t	1	ad6522e3-a264-40cc-8afb-e87f5b46ad66	be351d0d-7908-4e07-b45e-d40a9d70ef12	228c8b26-2b8c-48c9-9007-59048515ebe3
3f390e81-c270-493d-97c7-a51e50218190	f	92	2021-11-03 20:50:54.468037+05:30	2021-11-03 20:50:54.446117+05:30	1	92	85	86	69	70	2021-11-03	\N	\N	A	t	t	t	f	1	t	1	f0c06f47-1a55-450b-b4e5-a410afe78803	27b939e8-f9e9-49c1-bdcb-fbca29a7e151	ff528831-451d-4e7e-8a6c-c6394f2026f1
95d23130-c996-4490-bcf7-dd2690abc387	f	21	2022-01-16 11:18:47.056225+05:30	2022-01-16 11:18:47.033472+05:30	1	92	85	86	69	70	2022-01-16	\N	\N	A	t	t	t	f	1	t	1	6601a605-41ec-459f-aff7-82340b2d3cc8	97543079-4d7d-4a36-a0ff-03d25e3dc9e6	324b6dd2-8845-48ae-bf70-2950df15f490
a40474d8-e45a-42af-8a66-527a319878ca	f	2	2021-11-04 10:32:42.49827+05:30	2021-11-04 10:32:42.49153+05:30	1	92	85	86	69	70	2021-11-04	2021-12-03	\N	A	f	t	t	f	1	t	1	cafb2501-ae79-46a0-a81f-ad22298c31b3	3b98da07-49ea-4ab8-93f8-372b1d92f046	16c818fc-4396-49a8-a186-2c75c1155e87
0372d09c-b071-49e3-8d74-32e84ba4ef91	f	92	2021-11-06 23:33:01.18319+05:30	2022-02-19 14:25:02.065962+05:30	1	92	85	86	69	70	2021-11-06	2022-03-02	\N	M	f	t	t	f	1	t	1	f0c06f47-1a55-450b-b4e5-a410afe78803	69da5ee0-d66b-462b-ad06-b8f1f8a2489b	5c0d65ae-1c94-4de0-90a4-d37a24ea5bab
f9872b4b-fe40-4b5f-8dad-2dbb4a18d5c4	f	82	2021-11-04 12:56:48.695127+05:30	2021-11-04 12:56:48.672989+05:30	1	92	85	86	69	70	2021-11-04	\N	\N	A	t	t	t	f	1	t	1	e1c64904-40fc-4693-958f-184d2017ed65	c0598bc2-967f-47af-b353-758ce9298228	ff3c4d84-6ddd-4956-b6a9-149c023a7eb5
244bb4f7-e71d-4f4f-b964-d10f9a96011b	f	83	2021-11-22 22:38:14.472814+05:30	2021-11-22 22:38:14.45211+05:30	1	92	85	86	69	70	2021-11-22	\N	\N	A	t	t	t	f	1	t	1	0c7db4bb-6dd8-4d3a-a252-76ab210c32fd	dc205bba-5d0d-47d6-88a3-e01b7fec162f	544d811d-80e0-453e-9514-6651f247c800
0ae6338a-d1fd-48b7-bb69-182e000d1d2f	f	96	2021-11-05 11:38:18.602426+05:30	2021-11-05 11:38:18.57474+05:30	1	92	85	86	69	70	2021-11-05	\N	\N	A	t	t	t	f	1	t	1	fee75eb9-a4ee-4003-aab4-348844106ae2	19d46e0a-3cdd-4729-9dee-daddfb4b94dc	2d3fb328-50af-4f18-a19c-44857ed3020b
7d22b82b-d4d8-4801-8744-41c251937b35	t	62	2021-11-19 11:49:23.244766+05:30	2022-03-02 14:48:52.860842+05:30	1	92	85	86	69	70	2021-11-19	2022-09-30	\N	M	t	t	t	f	1	t	2	d4ca8637-696b-4ff0-8b88-991774b9547c	e6b40564-4dd5-480e-aace-3deb8809ba29	6467c567-1c74-463f-89bd-6ff2757b59c7
7d764a51-23b0-42aa-a349-b4057bd63b39	f	97	2021-11-06 15:35:23.919725+05:30	2021-11-06 15:35:23.896415+05:30	1	92	85	86	69	70	2021-11-06	\N	\N	A	t	t	t	f	1	t	1	06e243cc-0967-4abc-9ba6-0cba46ba6b76	428e1827-37d5-4a9a-b2d3-8cfb22a52a73	98b40ff3-4d6a-4652-8755-cf96f91b68bc
5d180d71-0256-4ff5-93f2-64949ae066c6	f	82	2021-11-06 17:22:35.403236+05:30	2021-11-06 17:22:35.396178+05:30	1	92	85	86	69	70	2021-11-06	2021-11-30	\N	A	f	t	t	f	1	t	1	c556d8f4-9261-429d-9c16-493372bed121	ef1ad1bb-9860-4c82-ae7c-ebf30545d3f4	98b40ff3-4d6a-4652-8755-cf96f91b68bc
2815852e-74b3-499b-954f-3ff918c409ae	f	2	2021-11-23 13:47:31.047267+05:30	2021-11-23 13:47:31.026526+05:30	1	92	85	86	69	70	2021-11-23	\N	\N	A	t	t	t	f	1	t	1	aa14027b-6a27-435a-8b95-02d8f2f956ba	5676f918-d421-40c0-8572-6227cabf4b77	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
95dec950-866c-49fb-a039-565b4f82278f	f	2	2021-11-23 13:51:29.811379+05:30	2021-11-23 13:51:29.787636+05:30	1	92	85	86	69	70	2021-11-23	\N	\N	A	t	t	t	f	1	t	1	55fccb7e-5ef7-4e03-8efc-57e54007d3dc	9466e40e-7a83-4dc5-b943-db19964543f9	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
102c57d5-b9cf-43e9-bb4e-7ce8d910a882	f	92	2021-11-03 21:03:40.028316+05:30	2021-11-09 11:41:24.925299+05:30	1	92	85	86	69	70	2021-11-03	2021-12-31	\N	M	f	t	t	f	1	t	1	f0c06f47-1a55-450b-b4e5-a410afe78803	0f07c214-b34a-4a2a-865f-5fc7c0c85979	d3db60d9-857e-4049-9a9b-7871714f3e00
d5159b13-0be6-4cea-8bb5-896dc7d49253	f	103	2021-11-09 13:40:50.373164+05:30	2021-11-09 13:40:50.350269+05:30	1	92	85	86	69	70	2021-11-09	\N	\N	A	t	t	t	f	1	t	1	8784b5b2-94e0-4357-b178-f40be7af55b3	3cb16a48-230b-483e-b40e-2bf52eeb2cb9	c9f038a2-0f95-4342-bfb0-7e288be200ca
38d5f6e1-0d54-42b9-bc89-a8ffc05bf4e4	f	144	2021-11-23 15:50:11.511497+05:30	2021-11-23 15:50:11.485419+05:30	1	92	85	86	69	70	2021-11-23	\N	\N	A	t	t	t	f	1	t	1	f3afa022-4542-43f4-8e7d-0b5e67fea701	33a2402c-0548-4118-83a8-3b77249852bf	7eb6b49c-5369-4441-ab4a-825de6201414
e589570f-0a2b-41cc-89e4-66b25ce5e01e	f	2	2021-11-10 16:20:11.408726+05:30	2021-11-10 16:20:11.380374+05:30	1	92	85	86	69	70	2021-11-10	\N	\N	A	t	t	t	f	1	t	1	417147a0-4ba1-4feb-a826-bdcbb3319fb9	1405596c-b891-441c-8f0d-259307223ef9	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
6550f35c-857e-44ac-84b3-dcbf9236caf1	f	106	2021-11-10 22:23:06.686567+05:30	2021-11-10 22:23:06.628431+05:30	1	92	85	86	69	70	2021-11-10	\N	\N	A	t	t	t	f	1	t	1	97ba1b7c-1ebc-44cd-87fd-b13c5ad59e5b	49ab6c5f-c711-44b4-9a5b-b13c8fbda252	da5deba8-141e-4a33-bf75-5a5584ac3b06
4d78eeff-7a4c-4e61-96a9-f00e91261c14	f	82	2021-11-13 16:45:07.629399+05:30	2021-11-13 16:45:07.616401+05:30	1	92	85	86	69	70	2021-11-13	2021-12-31	\N	A	f	t	t	t	1	t	1	c556d8f4-9261-429d-9c16-493372bed121	18f98411-f3de-4941-a448-e07b5e1bf67b	91012825-3bdf-4d0d-84d3-c574aa367350
f485ea0b-7abf-48a1-8799-2b9ba67f5d07	f	101	2021-11-23 17:34:51.487224+05:30	2021-11-23 17:34:51.464845+05:30	1	92	85	86	69	70	2021-11-23	\N	\N	A	t	t	t	f	1	t	1	4345d53b-8bdc-4d2e-8a95-7250d81e04fb	e5bb6da2-9e58-4140-954e-76e79c0a2800	084c7e62-3b41-44ed-b1ca-3d7358c60ea1
ab78c183-ea01-439b-9117-91c6c78354a7	f	84	2021-11-14 22:13:24.26788+05:30	2021-11-14 22:13:24.238702+05:30	1	92	85	86	69	70	2021-11-14	\N	\N	A	t	t	t	f	1	t	1	bae725f9-8660-4c26-952c-547ccaba8380	d1d0e962-9842-426d-884e-db5fb30ffb24	130306b0-be28-4124-8e00-2258fffca696
0f34558c-690f-41e5-8daa-53671839ede5	f	110	2021-11-14 23:19:45.314515+05:30	2021-11-14 23:19:45.291345+05:30	1	92	85	86	69	70	2021-11-14	\N	\N	A	t	t	t	f	1	t	1	dae06e2b-6905-4876-80f4-a974e99e02e8	3d3fe739-c833-4acc-83a2-abbd07cfa272	141999b0-41fa-4bb0-bc7d-da0369d0cf41
21594710-2d61-48b3-80f2-3626d8500d26	f	141	2021-11-23 18:10:22.498123+05:30	2021-11-23 18:10:22.085549+05:30	1	92	85	86	69	70	2021-11-23	\N	\N	A	t	t	t	f	1	t	1	731bc7d9-f1ba-4694-b428-e709241f659c	c605233b-4d0a-4f4f-b1ee-d17f5fb33d3c	4f0ae15f-0423-4831-9ae3-963b0801b995
df4a4ec9-71d7-4280-86a0-704866ab6a25	f	101	2021-11-16 13:30:35.036001+05:30	2021-11-16 13:30:35.012043+05:30	1	92	85	86	69	70	2021-11-16	\N	\N	A	t	t	t	f	1	t	1	fd6bcfc3-7c9c-4f18-9e6e-413b7ef23182	615170e3-d284-4ea8-977a-5ff35d73d511	084c7e62-3b41-44ed-b1ca-3d7358c60ea1
21b00725-3757-454c-8907-c5a34d01779b	f	140	2021-11-22 16:26:25.935355+05:30	2021-11-22 16:26:25.906945+05:30	1	92	85	86	69	70	2021-11-22	\N	\N	A	t	t	t	t	1	t	1	c0f6338d-7023-4cb9-bf23-4084d0584dbf	f63889c5-79b1-4432-8a43-3cb2f79c14fc	85c47706-d7a6-4055-8b60-4d5362d37af3
704637ae-3665-408b-a7e6-aa56836e9c22	f	76	2021-11-24 15:07:28.587581+05:30	2021-11-24 15:07:28.539176+05:30	1	92	85	86	69	70	2021-11-24	\N	\N	A	t	t	t	f	1	t	1	0cf65f46-4722-4490-a8cb-ef1aee465f59	5a59b3a9-20af-4d9f-8ce4-176aed8f4c3e	d0099d91-22d4-46bb-9240-d4c2347622f6
b91858b3-e549-4365-9ee1-b9ffa156d549	f	76	2021-11-24 15:09:20.789788+05:30	2021-11-24 15:09:20.775971+05:30	1	92	85	86	69	70	2021-11-24	2021-11-01	\N	A	f	t	f	f	1	t	1	0cf65f46-4722-4490-a8cb-ef1aee465f59	5a59b3a9-20af-4d9f-8ce4-176aed8f4c3e	5c4d301d-bee1-45bf-a245-90e20fbe1db8
9321cbae-285b-408c-b94d-ddf948f1d1d7	f	226	2021-12-07 01:53:20.408808+05:30	2021-12-07 01:53:20.384313+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	c68aa9e2-9c87-4aa9-b750-791a919ab962	f2df8b4c-1a64-40ae-a277-d49acb3639a9	43eaef26-da2d-4627-81f3-2d9b0716b5f2
c5e7d025-5c7c-4b33-a99f-9c7e0a6e9847	f	142	2021-11-24 19:54:44.972399+05:30	2021-11-24 19:54:44.942523+05:30	1	92	85	86	69	70	2021-11-24	\N	\N	A	t	t	t	f	1	t	1	cf65fc71-7ef9-4a20-a6e1-7118eeb1ef99	1458e4e5-be74-4fd5-bd90-2aa0a225fda4	0cfd490c-b782-4b2c-a4fa-043f98538123
1b2ee279-bf27-49e4-b078-a05e635aecb5	f	323	2022-01-16 11:30:54.259057+05:30	2022-01-16 11:30:54.239664+05:30	1	92	85	86	69	70	2022-01-16	\N	\N	A	t	t	t	f	1	t	1	ea05c13a-ba2c-46c1-bbdb-e87f6f30f747	b7cb9b2a-3d55-4cb1-8029-a45ce30ef21b	4faaf996-d7c2-441f-83d9-c785bdbbc7e3
7435bf48-a018-4cb8-925a-3b94ce1173a5	f	2	2021-11-25 17:17:50.688802+05:30	2021-11-25 17:17:50.654959+05:30	1	92	85	86	69	70	2021-11-25	\N	\N	A	t	t	t	f	1	t	1	86488016-4142-49a1-bde5-0b6e13014029	4caa3d9b-c151-4451-aa6a-bc2e8bf2997c	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
d5359246-b619-4dbf-98b7-18147e687bb2	f	148	2021-11-25 17:42:18.12258+05:30	2021-11-25 17:42:18.090232+05:30	1	92	85	86	69	70	2021-11-25	\N	\N	A	t	t	t	f	1	t	1	c9527e80-2437-4a51-b538-bde826c88a43	79fcb325-465f-4666-b7fd-966d9a8e39ab	24af5284-1575-431c-98ac-0daa85fe5d54
99a87e88-c25a-48f2-9cbb-dd0e1839b288	f	149	2021-11-25 21:10:59.309246+05:30	2021-11-25 21:10:59.282809+05:30	1	92	85	86	69	70	2021-11-25	\N	\N	A	t	t	t	f	1	t	1	7bfb9431-3460-4576-b7f7-464df6239ec1	b5fe7a88-d4a6-4060-9d75-82d4581a42aa	fd265114-7dff-4c4d-a2fc-d53ae9bb6402
6ff41c60-3528-48a2-8180-c8197d356352	f	2	2021-11-26 16:40:04.208617+05:30	2021-11-26 16:40:04.16584+05:30	1	92	85	86	69	70	2021-11-26	\N	\N	A	t	t	t	f	1	t	1	e45bad0e-d49b-4502-8439-7f1e3d669032	d921e3ea-a3ee-4c5b-98a2-b0895b62c332	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
2183fe87-0f0f-4e02-996e-e9046434f2e4	f	154	2021-11-26 21:21:18.30866+05:30	2021-11-26 21:21:18.283804+05:30	1	92	85	86	69	70	2021-11-26	\N	\N	A	t	t	t	f	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	fa99d746-1b4c-4614-b8f9-bb4f3212d35c	34b5b3ad-765d-4ef0-8ca5-0066ddb090c7
cc89227a-9567-4fc4-890c-8bd85b17ff11	f	153	2021-11-27 01:03:14.788287+05:30	2021-11-27 01:03:14.764768+05:30	1	92	85	86	69	70	2021-11-26	\N	\N	A	t	t	t	f	1	t	1	55168dd0-08be-4eb3-bfe9-a35ca739538b	05934266-66c7-4ed8-a275-41d2fc3cd90a	2bf0e646-78fc-4a67-b648-5b5a4c5c1a0f
de652085-e104-4e87-8b3a-cef08045deaa	f	155	2021-11-27 01:07:53.258269+05:30	2021-11-27 01:07:53.061523+05:30	1	92	85	86	69	70	2021-11-26	\N	\N	A	t	t	t	f	1	t	1	46cae537-b9f9-42fd-b546-06e9dc2bb812	0cdbaa26-d396-44c6-b746-25fe85ee148c	3c5f6043-07e8-446a-96fd-7ce92f678df5
d1b20727-a95e-4a1c-8409-e46e5a881e11	f	156	2021-11-27 01:24:33.614075+05:30	2021-11-27 01:24:33.583599+05:30	1	92	85	86	69	70	2021-11-26	\N	\N	A	t	t	t	f	1	t	1	6f95910f-277d-4dd7-8584-d0e832ce1f39	3efa2657-b923-45f5-b965-f3fbe3dcbe60	b3b75c6d-7efe-4b74-a056-f1e1652dd282
fdc8a5b7-7b72-486d-9bdb-195cfd5e27c2	f	157	2021-11-27 14:59:48.935135+05:30	2021-11-27 14:59:48.909996+05:30	1	92	85	86	69	70	2021-11-27	\N	\N	A	t	t	t	f	1	t	1	88faf6cc-e89e-4be9-986a-0545a4093b56	d09e21b1-c949-493d-8bf0-8bf96770d95d	9805255c-5894-4c79-a5eb-2f56364e70b4
1d0ec3b6-348b-485e-a917-e1f5a4ec735a	f	158	2021-11-27 16:50:13.597302+05:30	2021-11-27 16:50:13.56534+05:30	1	92	85	86	69	70	2021-11-27	\N	\N	A	t	t	t	f	1	t	1	dc2c8aa1-30b1-4ead-a74c-5db0950aceab	211bdee1-9e0f-4191-8c99-23660fbb801c	e7288379-ffdb-43da-a519-423b006ecc3d
c3978f74-bdfb-403e-89fc-c82a4e5c9647	f	159	2021-11-28 15:07:13.302913+05:30	2021-11-28 15:07:13.238907+05:30	1	92	85	86	69	70	2021-11-28	\N	\N	A	t	t	t	f	1	t	1	e90a806e-cf1b-452e-aa23-64d3b60eae50	0d51d8fd-6129-49be-b85f-a7fd82ed433e	8f01b0de-32a7-4529-99b9-a69aafc894df
8b84f63c-88ad-4e74-a8f7-529fc16e0826	f	156	2021-11-29 11:31:37.112123+05:30	2021-11-29 11:31:36.761898+05:30	1	92	85	86	69	70	2021-11-29	2022-12-29	\N	A	f	t	t	f	1	t	1	6f95910f-277d-4dd7-8584-d0e832ce1f39	3efa2657-b923-45f5-b965-f3fbe3dcbe60	932adf2a-ac53-41ee-9a30-4d1af5a62202
cbb57540-a056-423d-9bf8-424c58b4f32e	f	76	2021-11-29 12:34:30.266961+05:30	2021-11-29 12:34:30.236293+05:30	1	92	85	86	69	70	2021-11-29	\N	\N	A	t	t	t	f	1	t	1	bbde7d40-82ae-4a1a-ab98-358304f7270f	e152dc00-5b32-45dd-97af-68afff385ef5	d0099d91-22d4-46bb-9240-d4c2347622f6
33e5d7a9-aba7-47d4-afda-e8afe78b62e4	f	161	2021-11-29 22:52:02.237001+05:30	2021-11-29 22:52:02.211069+05:30	1	92	85	86	69	70	2021-11-29	\N	\N	A	t	t	t	f	1	t	1	5b57265f-5913-4212-b405-387a7c5bbf56	6e267ff7-1354-40c7-8fe4-f0872f4afa32	e9a4de41-cb2e-48d9-8932-de3e12c13b40
bd5f6cf3-3f0d-4e1f-ad68-8eeaf68867bc	f	102	2021-11-29 23:42:26.677711+05:30	2021-11-29 23:42:26.646658+05:30	1	92	85	86	69	70	2021-11-29	\N	\N	A	t	t	t	f	1	t	1	a193c887-5b48-4b77-a07f-b15834ad0c09	9cee9b67-53e0-4cf8-83a3-7469741305df	1ca646b8-ca69-4970-b3a7-9aa4ac6010e5
dbe5c668-7929-4102-828e-e70f90c5052a	f	162	2021-11-30 01:43:33.638596+05:30	2021-11-30 01:43:33.614283+05:30	1	92	85	86	69	70	2021-11-29	\N	\N	A	t	t	t	f	1	t	1	ace058bf-1449-4e97-b46c-4e999525aac1	82ec2cf8-e245-44a9-8ef3-653342fcc28b	f08383ba-cb5e-4d96-a0cf-1739ac5b87e6
f5973532-66d4-4058-8b57-7b3e07f92c74	f	154	2021-11-30 21:25:45.001963+05:30	2021-11-30 21:25:44.994212+05:30	1	92	85	86	69	70	2021-11-30	2022-11-30	\N	A	f	t	t	f	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	964edeae-a809-4eae-90b4-40135bd8282d	9e6e5a61-3a8e-4b31-8fe6-bba4f992eb6e
202bc246-22b3-4fc1-bfcd-494446a3bf12	f	154	2021-11-30 21:26:09.458682+05:30	2021-11-30 21:26:09.450919+05:30	1	92	85	86	69	70	2021-11-30	2022-11-30	\N	A	f	t	t	f	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	964edeae-a809-4eae-90b4-40135bd8282d	d5ffc125-b023-44f0-b18d-9095e9698357
1113b1ea-986a-4f43-8552-8e3c17c19fea	f	154	2021-11-30 21:27:56.307668+05:30	2021-11-30 21:27:56.299702+05:30	1	92	85	86	69	70	2021-11-30	2022-11-30	\N	A	f	t	t	f	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	964edeae-a809-4eae-90b4-40135bd8282d	194e12ae-fb7d-4b32-b8bc-7b56e39ea056
1b6dd33b-a7f0-4f24-945d-2b19f61794d6	f	146	2021-11-30 23:00:45.391845+05:30	2021-11-30 23:00:45.364384+05:30	1	92	85	86	69	70	2021-11-30	\N	\N	A	t	t	t	f	1	t	1	60925298-8f48-4db2-ab03-8815c0278623	9b845954-5b1f-41e5-9114-75a689926ebc	6c13c991-152c-44a0-9605-66687aba1688
ef741c65-1b07-41e3-9d54-31e51a7f0899	f	149	2021-11-30 23:06:44.932942+05:30	2021-11-30 23:06:44.909845+05:30	1	92	85	86	69	70	2021-11-30	\N	\N	A	t	t	t	f	1	t	1	8bc08e87-b0ed-4295-a58f-0b903fdc24d3	21dbd36c-2406-4509-8140-a08f8a4b7457	fd265114-7dff-4c4d-a2fc-d53ae9bb6402
82aefa1d-be18-4307-b4c6-fe11eb9ff19c	f	175	2021-12-01 12:56:30.475462+05:30	2021-12-01 12:56:30.448566+05:30	1	92	85	86	69	70	2021-12-01	\N	\N	A	t	t	t	f	1	t	1	28d5bbcf-47cf-4f3c-ab93-a547b0e377aa	e9a46747-2163-4ea6-94e5-253b736d28f8	6469fe3e-90cc-45fb-81a5-24a95dcaa785
fd84231f-6cd3-4d70-9d2b-903201eb3157	f	177	2021-12-01 14:31:38.744368+05:30	2021-12-01 14:31:38.720908+05:30	1	92	85	86	69	70	2021-12-01	\N	\N	A	t	t	t	f	1	t	1	800d482a-bf47-403b-9988-d4c2e0ee0cfd	54b893c2-c3c5-4d0e-9ced-a88587bc8988	976fb1b7-89da-4a95-bc7d-7633a64d8756
54f5bf7b-225f-4881-acc8-469381d181ae	f	82	2021-12-01 21:44:46.952365+05:30	2021-12-01 21:44:46.941286+05:30	1	92	85	86	69	70	2021-12-01	2021-12-31	\N	A	f	t	t	t	1	t	1	e1c64904-40fc-4693-958f-184d2017ed65	c0598bc2-967f-47af-b353-758ce9298228	\N
89e92010-b902-4a21-8df9-ef0f1d92c80f	f	173	2021-12-01 21:48:30.632068+05:30	2021-12-01 21:48:30.606027+05:30	1	92	85	86	69	70	2021-12-01	\N	\N	A	t	t	t	f	1	t	1	a3ade88a-d45f-4f41-880f-6ebac146db28	52cc1c85-51aa-4ede-8269-04316e315906	616392f1-75fc-4fe7-8cd5-a192690d8fa5
542dcb33-9ca0-4e65-832e-05819696f57d	f	182	2021-12-02 04:03:08.094444+05:30	2021-12-02 04:03:08.068783+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	ce2fe87f-0cda-4f7b-86dd-2c0f5300ddaa	261cac16-2ed4-43db-8f1c-1d77e390bea2	f7ba0612-9a0c-40c2-bd10-9dc5eafcbcba
b3cf6fa9-db8c-4ee9-a8ff-ccff20798143	f	178	2021-12-02 15:02:00.903224+05:30	2021-12-02 15:02:00.854159+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	6f7eb0d3-719d-43fa-9c33-c9bac79038a7	befcfab7-172e-427e-b772-f71659a0a3e2	b8b8f77d-94a8-48e4-bed4-fc02ae4ed573
9158269b-d111-4299-8a8c-d4ed1784c050	f	78	2021-12-02 15:27:42.159328+05:30	2021-12-02 15:27:42.134173+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	2ee86397-902d-4136-94ab-9f7efd004004	2f6b4d7c-8709-45cf-831d-c099c8e0ab2c	819bf059-b7ec-40ef-9d61-16c9863bc978
67221050-1955-42f0-a41f-34891fcc542b	f	184	2021-12-02 20:15:05.418595+05:30	2021-12-02 20:15:05.390854+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	d04da6b7-4d95-44ce-9357-663d167994e4	89a59743-a723-4c25-8872-dd4daa774a6a	b3b9b836-14ae-4240-80af-b76c7b79fb93
f9c1c680-0cc1-45d8-ae33-229a1fc5e3a3	f	186	2021-12-02 20:53:12.667683+05:30	2021-12-02 20:53:12.644679+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	cd8d14e6-6b32-4322-be37-07cc2fa5b940	636bac3a-8a66-4ca8-8dc5-29b2ae92edcc	9b92aa61-517b-4f38-8946-83ff126f0b88
c61136d1-2de7-4f0f-b83d-5732e20724bd	f	188	2021-12-02 21:30:06.835883+05:30	2021-12-02 21:30:06.810295+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	821d06a3-3da2-43fe-9e61-1bfd714c36cd	060c7cce-10ae-4636-97f1-99874e13412c	3497eeba-fd6a-4f1d-8c62-a9ec86cb7215
99f89941-e937-4856-9a6b-434bf71e4900	f	190	2021-12-02 23:02:20.161026+05:30	2021-12-02 23:02:20.134253+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	1042f7e8-2064-41d2-805d-52a905731082	549dcdaa-d66c-42e0-813d-face360d2640	fe9cafd4-5c1c-4881-8920-6e74ed6e6726
66985044-8592-49eb-a621-3a5a3af79746	f	189	2021-12-03 00:00:57.960815+05:30	2021-12-03 00:00:57.936829+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	000ef3b4-34ec-494b-b6be-d81706cfc940	968e5e3d-b550-4457-9f56-9914cb69bd94	6a3729b6-24c3-4615-8aa9-a9dfedb56cad
0162fd67-9418-49f5-a794-f9a660d1d3fe	f	191	2021-12-03 01:11:43.463916+05:30	2021-12-03 01:11:43.438511+05:30	1	92	85	86	69	70	2021-12-02	\N	\N	A	t	t	t	f	1	t	1	dad5038c-1339-466a-8a8e-2e61c55cf0d0	eeea0f18-11f3-4a7e-8cd9-ba6124296318	de62f850-0d74-4ee4-ad04-67797d81813a
11468671-4b38-46ba-ae5f-e52781151e77	f	76	2021-12-06 11:57:27.537824+05:30	2021-12-06 11:57:27.508512+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	739ce9e6-e213-4a3d-9ff3-3d44833d2b2c	37e1ebe9-cac8-4843-9251-bd419cf611cb	d0099d91-22d4-46bb-9240-d4c2347622f6
4858c88c-f1cb-4fbf-839b-263d73f6bf3b	f	222	2021-12-07 10:25:22.823734+05:30	2021-12-07 10:25:22.797772+05:30	1	92	85	86	69	70	2021-12-07	\N	\N	A	t	t	t	f	1	t	1	1e8b311c-977c-4b43-b90e-6b1efb5a546c	cb169097-5bac-46ef-8e49-31c40d91f3ae	1ca51dd9-7dad-4e0a-b411-1d59c0228efe
4d459e23-6b5d-476b-9f10-c904d5a11bc5	f	381	2022-03-07 09:44:13.068432+05:30	2022-03-07 09:44:13.033096+05:30	1	92	85	86	69	70	2022-03-07	\N	\N	A	t	t	t	f	1	t	1	0c254400-a256-4d16-8e88-98e4626e1a16	ecfaee9a-0b75-49a9-94f9-c8df1279a5c7	5532695b-4191-47ac-92b5-385dc1f82dce
e77e6f79-4509-4b5f-8824-140a497029e2	f	76	2022-03-12 12:25:20.871507+05:30	2022-03-12 12:25:20.848123+05:30	1	92	85	86	69	70	2022-03-12	\N	\N	A	t	t	t	f	1	t	1	20189cff-39bf-43bd-879a-8ddfac902ae9	fce388b9-8b1c-4a78-94aa-1f828eac3b93	d0099d91-22d4-46bb-9240-d4c2347622f6
e04596ec-2364-4a9d-8538-68b1c1943849	f	78	2021-12-06 09:24:25.106267+05:30	2021-12-06 09:24:24.989019+05:30	1	92	85	86	69	70	2021-12-06	2021-12-30	\N	A	f	t	t	t	2	t	1	2ee86397-902d-4136-94ab-9f7efd004004	cacbaae7-ea95-4fb9-8054-8f436c958840	5fde47a9-32f0-4d5d-a1fa-67e554922f17
0a6aabfd-d342-4f78-8cf2-5c3dd7ac007c	f	78	2021-12-06 09:39:08.57597+05:30	2021-12-06 09:39:08.563204+05:30	1	92	85	86	69	70	2021-12-06	2021-12-30	\N	A	f	t	t	t	3	t	1	2ee86397-902d-4136-94ab-9f7efd004004	cacbaae7-ea95-4fb9-8054-8f436c958840	8d92d3d0-e043-4ba6-9bf5-d6ddf0420fbd
f1d7cb7c-dd49-487d-a502-64efcebd550e	f	78	2021-12-06 09:43:50.760482+05:30	2021-12-06 09:43:50.749831+05:30	1	92	85	86	69	70	2021-12-06	2021-12-30	\N	A	f	t	t	t	4	t	1	2ee86397-902d-4136-94ab-9f7efd004004	cacbaae7-ea95-4fb9-8054-8f436c958840	12a607c9-be98-46a3-bfe2-56e88024dd32
58e13fc2-2076-4b4e-8b22-7bd0960d0050	f	78	2021-12-06 09:46:44.696226+05:30	2021-12-06 09:46:44.685523+05:30	1	92	85	86	69	70	2021-12-06	2021-12-30	\N	A	f	t	t	t	5	t	1	2ee86397-902d-4136-94ab-9f7efd004004	cacbaae7-ea95-4fb9-8054-8f436c958840	ca86e1e2-658d-439d-8e4b-6416d58bb8ce
c0c2cb07-bd59-4344-b646-4fb9fb9aae15	f	78	2021-12-06 09:53:25.517688+05:30	2021-12-06 09:53:25.50673+05:30	1	92	85	86	69	70	2021-12-06	2021-12-30	\N	A	f	t	t	t	6	t	1	2ee86397-902d-4136-94ab-9f7efd004004	cacbaae7-ea95-4fb9-8054-8f436c958840	a0bef39d-0d53-4c07-8de9-57ab7b93f050
7f2bbf65-0b7d-44ab-83b2-d212e5d96d10	f	222	2021-12-07 10:31:31.742315+05:30	2021-12-07 10:31:31.715582+05:30	1	92	85	86	69	70	2021-12-07	\N	\N	A	t	t	t	f	1	t	1	af91cb66-6ad3-4ae7-8c49-30aab7202bb8	1ec4a2be-ac93-4131-bbc1-6084966ab3c1	1ca51dd9-7dad-4e0a-b411-1d59c0228efe
79838e2c-15fa-4575-8925-5e64bd98bacf	f	154	2021-12-07 20:13:37.353958+05:30	2021-12-07 20:13:37.341027+05:30	1	92	85	86	69	70	2021-12-07	2022-11-30	\N	A	f	t	t	t	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	964edeae-a809-4eae-90b4-40135bd8282d	fe84f882-6b3e-4890-a65e-a7ab5006252d
7534ecac-3d0e-48fd-b3c2-652bff7c3235	f	2	2021-12-06 11:59:08.431448+05:30	2021-12-06 11:59:08.404195+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	4428a892-0ab9-4ca5-b9f8-26f5045ae2f2	\N	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
c0e665eb-f1b7-4ba7-bcaa-61a83102aa3b	f	2	2021-12-06 12:00:46.768459+05:30	2021-12-06 12:00:46.722565+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	8cf7071e-0e75-43e9-aece-76e9574b8650	\N	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
e3d435e3-dbbb-42f2-ac54-cba904ce2b44	f	2	2021-12-06 12:04:27.654697+05:30	2021-12-06 12:04:27.622364+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	0e1ad0b7-67f2-4102-bb4a-5620a9bc5fe6	f6d2dc11-34eb-4dad-a20d-9e636b2d8859	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
a0372280-b365-495e-ad0a-179ab77c9a84	f	228	2021-12-07 20:36:38.689669+05:30	2021-12-07 20:36:38.667358+05:30	1	92	85	86	69	70	2021-12-07	\N	\N	A	t	t	t	f	1	t	1	1a07d7d9-76c0-4f70-b58f-a19c48777a69	c8484031-6121-47e3-a861-63952be8336f	c09a7de2-8685-4506-950b-b23012ce894b
584cc3f7-b399-465e-b868-f693daa9fe68	f	76	2021-12-06 11:21:48.498802+05:30	2021-12-06 11:21:48.470127+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	f711c84a-e80d-4bfa-8fb2-f8ffffc926aa	e152dc00-5b32-45dd-97af-68afff385ef5	d0099d91-22d4-46bb-9240-d4c2347622f6
d4afb03d-37b8-4276-8e60-35e7dc5d0f88	f	76	2021-12-06 11:53:00.639865+05:30	2021-12-06 11:53:00.611246+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	2ba14ac3-2c8d-46e7-bf1d-00c637ed6624	e152dc00-5b32-45dd-97af-68afff385ef5	d0099d91-22d4-46bb-9240-d4c2347622f6
fcaff855-ab9f-4ae3-9742-01e2fdf74606	f	76	2021-12-06 12:49:13.684687+05:30	2021-12-06 12:49:13.659066+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	d06ea795-8605-4081-bf24-0c730a9f4108	0ac65022-04a0-4a96-9f75-d63c1b24eb09	d0099d91-22d4-46bb-9240-d4c2347622f6
75550255-32b1-4ba3-b23b-3ed7cb28c49f	f	76	2021-12-09 15:36:36.321508+05:30	2022-02-07 12:54:26.090878+05:30	1	92	85	86	69	70	2021-12-09	2025-08-25	\N	M	t	t	f	f	1	t	1	e4039a97-876c-4261-af47-c4855e69f5c7	c5295ad7-05fa-4dc3-952f-6658091077f9	d0099d91-22d4-46bb-9240-d4c2347622f6
fa76100d-7105-4f70-9cd2-253c75879468	f	188	2021-12-03 18:38:49.769342+05:30	2022-06-02 21:38:26.027519+05:30	1	92	85	86	69	70	2021-12-03	2022-12-03	\N	M	f	t	t	t	1	t	2	821d06a3-3da2-43fe-9e61-1bfd714c36cd	4e17d261-e207-4479-a50c-76135d97bd83	be8c5914-68b2-4840-a217-0c1fd5fd072c
9e93e749-bf55-4037-abeb-6d52fc1c351a	f	188	2021-12-03 22:05:53.037367+05:30	2022-06-02 21:39:14.757499+05:30	1	92	85	86	69	70	2021-12-03	2022-12-03	\N	M	f	t	t	t	1	f	4	821d06a3-3da2-43fe-9e61-1bfd714c36cd	4e17d261-e207-4479-a50c-76135d97bd83	dfb92440-a525-4bda-b71e-e9a39fd7942f
af851c67-5480-4a30-8e30-ac196f458462	f	206	2021-12-06 14:57:54.849982+05:30	2021-12-06 14:57:54.825424+05:30	1	92	85	86	69	70	2021-12-06	\N	\N	A	t	t	t	f	1	t	1	94a7c471-ab5e-468b-afd1-9655ec29a9fc	4df6bfaf-077d-4b32-a015-87b90060e0ed	307eba8c-5bc1-42d2-9ade-1811419bf32a
f831a321-f950-4acc-8028-d0f336dbbc4a	f	230	2021-12-08 17:57:40.6894+05:30	2021-12-08 17:57:40.662814+05:30	1	92	85	86	69	70	2021-12-08	\N	\N	A	t	t	t	f	1	t	1	9add367f-35fd-44dd-90c1-a8a3933f647b	356a28eb-1858-488a-aec6-301aae5a2243	969fa479-a6f4-478c-912d-455846af455f
2483e43f-f51d-45dc-b1bf-3cfcbe749ace	f	229	2021-12-08 19:31:59.410988+05:30	2021-12-08 19:31:59.386204+05:30	1	92	85	86	69	70	2021-12-08	\N	\N	A	t	t	t	f	1	t	1	6ccc3235-113e-4ae4-b902-4b460c3f15a2	4e9047ee-aab6-4976-b1bd-1458bdda86b2	e183c2b7-a73f-438b-8b94-e9759cdd1bfe
8058c7c9-9438-42fc-9dd2-337aab206be3	f	78	2021-12-06 09:51:58.833245+05:30	2021-12-08 23:16:27.017276+05:30	1	92	85	86	69	70	2021-12-06	2021-12-30	\N	M	f	t	t	t	1	t	1	2ee86397-902d-4136-94ab-9f7efd004004	2f6b4d7c-8709-45cf-831d-c099c8e0ab2c	658a0a4e-3157-4f33-a34e-5e9fc75d3bc4
a2515854-c30c-485f-8bf2-561e0c07ee8e	f	78	2021-12-09 12:14:06.206515+05:30	2021-12-09 12:17:12.445481+05:30	1	92	85	86	69	70	2021-12-09	2022-01-31	\N	M	f	t	t	t	3	t	1	2ee86397-902d-4136-94ab-9f7efd004004	cacbaae7-ea95-4fb9-8054-8f436c958840	6a60a9b1-f906-4c5a-9749-df008d2a0c3c
3e7884e8-2849-484b-bb65-c94a890416d4	f	233	2021-12-09 13:20:57.781938+05:30	2021-12-09 13:20:57.757698+05:30	1	92	85	86	69	70	2021-12-09	\N	\N	A	t	t	t	f	1	t	1	9732bb17-6e64-4bf0-b062-827145695dc9	9bde4d67-5746-4c78-97ac-d6edae640bd0	29b1a2aa-780d-4f04-b260-205865675bbf
98ba7634-a196-4530-8eef-f167f54ec8dd	f	76	2021-12-09 16:22:17.513198+05:30	2021-12-09 16:22:17.490909+05:30	1	92	85	86	69	70	2021-12-09	\N	\N	A	t	t	t	f	1	t	1	567216c1-9bbf-4afe-bc20-4ef5b16232cf	cbb59b02-fe8a-4392-916d-4879808e9787	d0099d91-22d4-46bb-9240-d4c2347622f6
64916ad3-8d4c-434a-a950-01f752726d2e	f	236	2021-12-09 17:54:06.069482+05:30	2021-12-09 17:54:06.0477+05:30	1	92	85	86	69	70	2021-12-09	\N	\N	A	t	t	t	f	1	t	1	b6de6aa0-768c-4eac-8dee-34df869953ef	a5a51363-d80d-4a72-baab-8e2071e54dd2	dff8db04-cc9b-4a0c-916c-9481abeaf45e
54884071-df6e-46ee-9717-a2dcccfced5a	f	2	2021-12-09 11:07:56.407237+05:30	2021-12-09 19:03:12.531973+05:30	1	92	85	86	69	70	2021-12-09	2021-12-31	\N	M	f	t	f	f	1	t	1	cafb2501-ae79-46a0-a81f-ad22298c31b3	3b98da07-49ea-4ab8-93f8-372b1d92f046	9b2de0d2-0a8c-4d3d-8911-277e69849afc
e6528a8b-6380-4377-811d-53e7eced6510	f	76	2021-10-01 11:18:53.384267+05:30	2021-12-21 11:48:19.936671+05:30	1	92	85	86	69	70	2021-10-01	2024-11-09	\N	M	t	t	f	f	1	t	1	df9a7e6c-11bd-49af-b35e-f48b116f95a6	ce58bd68-ee42-42cd-96ab-3bcd2f6d3152	d0099d91-22d4-46bb-9240-d4c2347622f6
1833c72b-10c3-4006-88b3-5bc006e43677	f	240	2021-12-10 20:12:29.109753+05:30	2021-12-10 20:12:29.085727+05:30	1	92	85	86	69	70	2021-12-10	\N	\N	A	t	t	t	f	1	t	1	fa2a2835-7a99-49e3-b5dd-c86e1f4d4e4c	12262465-bd18-4be1-a150-990b6762a46e	695a9017-5ea4-4a3f-9ed5-a2fa37855be5
f35538f4-f18f-49b8-b81b-760be0bd093b	t	62	2022-03-08 14:55:32.740737+05:30	2022-03-08 14:55:32.724836+05:30	1	92	85	86	69	70	2022-03-08	2023-01-01	\N	A	f	t	t	f	1	t	1	d4ca8637-696b-4ff0-8b88-991774b9547c	51a38b3d-0b6b-45ca-b032-59996a5205ff	61a89622-0d1a-4d8a-85c7-db2e15fe463e
f7fb6234-b176-4c95-95ed-f74cfb342ca7	f	243	2021-12-11 02:00:39.833639+05:30	2021-12-11 02:00:39.811848+05:30	1	92	85	86	69	70	2021-12-10	\N	\N	A	t	t	t	f	1	t	1	c0e72460-6b32-4305-a8ec-633a70541d6c	9d5b85d3-ad1c-4cac-a7d7-f06d7544752b	239eb88a-37f3-4854-867d-a9312de0c237
91387fc4-58bf-47d1-a43e-5fa1b5f4731d	f	244	2021-12-12 14:41:08.096803+05:30	2021-12-12 14:41:08.072469+05:30	1	92	85	86	69	70	2021-12-12	\N	\N	A	t	t	t	f	1	t	1	246f6c2a-9020-4f96-b253-e67225c440b3	e7f81a54-e8f7-4a14-a088-909b4b870d20	82e66fdf-53f7-4cf4-9b44-db7b1c5a564b
65a28bbd-6b7c-4967-93f5-e6aa1c7e4372	f	34	2021-12-13 16:46:25.467077+05:30	2021-12-13 16:46:25.441749+05:30	1	92	85	86	69	70	2021-12-13	\N	\N	A	t	t	t	f	1	t	1	a1792d81-1fd7-4e4d-ada0-ee8bdec02992	4909d82b-b7ad-4ed6-87ab-47655c2e9f9d	972a6168-72b3-4811-ad30-eb3815eb3fe4
1f125a20-39cc-4e79-ac4a-eb156a1ecb00	f	247	2021-12-14 21:23:30.481902+05:30	2021-12-14 21:23:30.452959+05:30	1	92	85	86	69	70	2021-12-14	\N	\N	A	t	t	t	f	1	t	1	3bd771a8-51d4-4593-a34e-cbe285d89382	684bc4b3-2e0e-44b2-ac7c-cb52a2ee6762	e1edb940-32f4-4c0e-b1f4-d71011fd7f6a
8af6c476-4ee2-4c7f-879c-5a8586ad2a83	f	249	2021-12-15 00:11:11.414181+05:30	2021-12-15 00:11:11.383499+05:30	1	92	85	86	69	70	2021-12-14	\N	\N	A	t	t	t	f	1	t	1	3459d3cd-4e84-407f-ae6a-dd5737aa8357	2349f45b-1f4d-4a0c-a78e-068751d1c5e2	9c09647d-8fd3-4a77-a3c1-65f5d59eb516
712c2038-0727-4c60-9c92-4703c2877dd2	f	251	2021-12-17 18:59:29.517088+05:30	2021-12-17 18:59:29.492865+05:30	1	92	85	86	69	70	2021-12-17	\N	\N	A	t	t	t	f	1	t	1	4faee31d-8578-46c4-9bc7-8fa3b174f0d1	af4ac973-34a3-4f86-a197-8e48cc80885a	e1e80def-02ed-4e56-a687-faa70c444aea
ec423238-85ff-4466-a366-2d59f0b431d5	f	253	2021-12-18 16:29:27.90613+05:30	2021-12-18 16:29:27.882573+05:30	1	92	85	86	69	70	2021-12-18	\N	\N	A	t	t	t	f	1	t	1	58e4743f-985f-4b99-8236-d8d8e38e3b30	5262884b-66aa-4fd1-b194-5a04a9716663	6a357b74-66df-424d-b529-4069b50f94ff
04a2e7b9-e56b-4189-bdf1-5f41da6c06af	f	258	2021-12-21 13:41:37.743485+05:30	2021-12-21 13:41:37.717409+05:30	1	92	85	86	69	70	2021-12-21	\N	\N	A	t	t	t	f	1	t	1	12a3eeda-157b-4279-b111-712087578af9	a504276e-58e1-4dd1-b00b-53cddfeda444	aadee9f9-25af-437b-8fa2-d56311de03f5
2a35abfc-742f-436a-b0b8-ef3109d2c0b6	f	154	2021-12-21 22:57:04.617625+05:30	2021-12-21 22:57:04.609839+05:30	1	92	85	86	69	70	2021-12-21	2022-12-21	\N	A	f	t	t	f	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	964edeae-a809-4eae-90b4-40135bd8282d	7b470dfe-a56d-413a-a13d-082c6f5d2255
6518df7b-5862-4ec3-8e32-d7af377a4ad3	f	260	2021-12-22 10:40:13.954722+05:30	2021-12-22 10:40:13.929978+05:30	1	92	85	86	69	70	2021-12-22	\N	\N	A	t	t	t	f	1	t	1	8633ef36-2024-4b2d-811f-248ffe9ce681	c8795708-f370-41bb-9f0a-44750d4aef4f	1840c6b4-c980-4add-acfe-54581f6dfa65
9dcec0d8-1617-496d-a753-313e69d3f292	f	263	2021-12-23 22:25:47.633126+05:30	2021-12-23 22:25:47.60781+05:30	1	92	85	86	69	70	2021-12-23	\N	\N	A	t	t	t	f	1	t	1	8cfce55d-f345-4699-a7b4-f2e7dd7f8481	8dda71b7-9c3f-4c6a-8051-965089b2d91c	5f40f302-e804-4d27-8ff3-77b95a1dee0b
8d9bc224-b65d-4b05-b2f9-99d316b9d726	f	264	2021-12-24 19:03:01.260353+05:30	2021-12-24 19:03:01.232375+05:30	1	92	85	86	69	70	2021-12-24	\N	\N	A	t	t	t	f	1	t	1	739321d9-3357-40ad-9c07-c656cef04bd1	549e6246-f7a2-464d-bf3a-aaaacc16855c	b4daa540-803f-4117-8875-100cf1c9a430
2105b79b-3e4c-4841-8741-2b0b5d9e976d	f	267	2021-12-25 23:39:53.003984+05:30	2021-12-25 23:39:52.98219+05:30	1	92	85	86	69	70	2021-12-25	\N	\N	A	t	t	t	f	1	t	1	4c62946d-e31e-4044-bf2c-9b07f79633e2	f82946c1-9012-49bd-b47c-942ff66855a5	8c3887b1-2628-4544-b077-380ceda7fb15
7e65bc3d-7e91-4452-b1e0-7d8721f94735	f	269	2021-12-26 14:03:01.879213+05:30	2021-12-26 14:03:01.852176+05:30	1	92	85	86	69	70	2021-12-26	\N	\N	A	t	t	t	f	1	t	1	b56d5f64-ec3f-453b-86ac-2d41352c9451	a4fb1827-3ac2-4034-b641-c23d9e095bbc	c196291b-5cfe-45fe-99bc-f6b3bc78116c
31db3d07-430f-4b38-88c3-5f61dacffeba	f	268	2021-12-26 15:23:56.716363+05:30	2021-12-26 15:23:56.692899+05:30	1	92	85	86	69	70	2021-12-26	\N	\N	A	t	t	t	f	1	t	1	cf563b77-03bf-4b3f-8f4e-82d99b604c1f	364a0a0e-f2bf-4c24-afba-3a346ac3c4e1	78e5da28-f2aa-44ac-a725-29580f07b88c
c4ce7ec5-4c10-4dc3-b74a-4c26a9419bf8	f	270	2021-12-26 18:26:40.010543+05:30	2021-12-26 18:26:39.98798+05:30	1	92	85	86	69	70	2021-12-26	\N	\N	A	t	t	t	f	1	t	1	10ec1e50-5c23-477e-9cf9-07517a0222ca	74c7f207-8360-423c-9c88-ee4d556dadbd	6eb11fa0-75a2-4a6f-a908-c9f6b06da236
7982dda5-a588-403d-9726-0dd6b8c99412	f	271	2021-12-26 21:10:47.87065+05:30	2021-12-26 21:10:47.845349+05:30	1	92	85	86	69	70	2021-12-26	\N	\N	A	t	t	t	f	1	t	1	85c7097e-cb09-4def-804c-d2451fbbcf7f	641fba08-ce8d-40c5-bacd-1b7e4caff34f	88643853-8221-42f3-8612-403e8c26307e
4fd4a2cb-0e48-4472-838e-f7c0a05d14ed	f	233	2021-12-26 23:18:39.695667+05:30	2021-12-26 23:18:39.681779+05:30	1	92	85	86	69	70	2021-12-26	2022-12-01	\N	A	f	t	t	t	1	t	1	9732bb17-6e64-4bf0-b062-827145695dc9	9bde4d67-5746-4c78-97ac-d6edae640bd0	c196291b-5cfe-45fe-99bc-f6b3bc78116c
f81aa4bb-ccb0-4ebc-9920-bd0b7c294f33	f	272	2021-12-27 14:07:46.194523+05:30	2021-12-27 14:07:46.167231+05:30	1	92	85	86	69	70	2021-12-27	\N	\N	A	t	t	t	f	1	t	1	61083492-727f-4bed-9c2e-ebda53932414	6d3fc8f3-53c0-45a3-b991-eea304f0e1f1	d6ffc2ef-11ac-4030-900a-a43a33bd1556
4164e3df-f85e-4f1c-b74f-bfeeea14b59e	f	252	2021-12-28 18:06:45.126187+05:30	2021-12-28 18:06:45.109382+05:30	1	92	85	86	69	70	2021-12-28	2022-12-25	\N	A	f	t	t	t	1	t	1	428586a8-6265-45d7-b51a-ce93476eaf07	3a48716f-df0d-4a1c-a00b-f393abffe00b	523ee23d-7a3d-4db2-af60-9c1f238e04b3
0a64ece1-8279-4aa0-8ffd-1d76bf7bf20a	f	76	2021-12-29 15:50:42.243706+05:30	2021-12-29 15:50:42.218251+05:30	1	92	85	86	69	70	2021-12-29	\N	\N	A	t	t	t	f	1	t	1	a14abb9a-4374-431e-8f47-babf9f786ae1	3850113a-71d9-4cf4-b062-b90d7df4a638	d0099d91-22d4-46bb-9240-d4c2347622f6
42077554-c207-4ffe-8cbe-5ca8b7c42c33	f	277	2021-12-29 22:04:21.916248+05:30	2021-12-29 22:04:21.894543+05:30	1	92	85	86	69	70	2021-12-29	\N	\N	A	t	t	t	f	1	t	1	b6cf2ca0-4746-4683-8eb8-2f39b430df35	bc1a05d2-78d8-45d4-9f17-503bf31a3fb1	cdae707b-49bf-4849-a562-b2e23d24c6bb
5e7a6cff-1f78-456c-a0e3-b11529517d78	f	278	2021-12-31 01:08:44.195769+05:30	2021-12-31 01:08:44.168863+05:30	1	92	85	86	69	70	2021-12-30	\N	\N	A	t	t	t	f	1	t	1	d5afab82-1ee6-4442-9473-96122adb22eb	41f7aaf0-b924-42f1-9a9b-dcbbe3ceeffa	432e8f92-f161-4548-9ab3-0e4a963199e0
75ea43b7-d099-48d5-90bb-fe29835878ec	f	281	2022-01-02 15:09:39.797371+05:30	2022-01-02 15:09:39.769729+05:30	1	92	85	86	69	70	2022-01-02	\N	\N	A	t	t	t	f	1	t	1	fd5adf85-f4df-4510-a34e-d3bdb75bcf31	74666cc3-d6b9-4a82-aa51-cbc5ae86cbc5	75a9ce8c-328f-4e4a-b280-d4340bed98fc
cbe9fd9e-bda5-4b96-a64c-0d588bd95153	f	283	2022-01-03 00:01:28.468019+05:30	2022-01-03 00:01:28.441299+05:30	1	92	85	86	69	70	2022-01-02	\N	\N	A	t	t	t	f	1	t	1	5a39ae37-95be-4f05-9012-415d49ff01f8	efe826d3-b48a-44ec-97e9-0b37047223f2	4c106bb3-97ea-4b3a-95fd-96524049760f
e0031985-6b38-486d-910d-6940103a160a	f	285	2022-01-03 01:29:28.562013+05:30	2022-01-03 01:29:28.536208+05:30	1	92	85	86	69	70	2022-01-02	\N	\N	A	t	t	t	f	1	t	1	7c4f3dab-df93-4d8d-bbb9-15c5bfc5f52f	784b46e2-a706-45b8-8820-105b7ec17fd8	7f6045e8-de70-4907-8de8-c15b9b04c00e
70a8e6f7-b05b-47ef-a7b6-cc34a9e36e53	f	286	2022-01-03 02:50:56.414524+05:30	2022-01-03 02:50:56.385909+05:30	1	92	85	86	69	70	2022-01-03	\N	\N	A	t	t	t	f	1	t	1	b672fad5-ffb9-4b68-8457-1bcd82dfa8d0	9f321ff5-36fb-4e53-8a07-8a2fcfc6892a	f42fe96e-4791-45b1-ba01-4be6f8e64cbc
7abda665-7369-4fd2-90f5-a5d9cf24797f	t	2	2022-01-03 11:25:25.495701+05:30	2022-01-03 12:11:44.855484+05:30	1	92	85	86	69	70	2022-01-03	2022-03-18	\N	M	f	t	t	f	1	t	1	d9a91d63-2e50-4fc2-be07-e66a5f9add80	37f56127-79e0-4ed3-937e-6a0caf0b30c2	6467c567-1c74-463f-89bd-6ff2757b59c7
3141366e-d9f6-4323-8a7b-3abfdf62a7f5	f	287	2022-01-03 19:23:31.176643+05:30	2022-01-03 19:23:31.145828+05:30	1	92	85	86	69	70	2022-01-03	\N	\N	A	t	t	t	f	1	t	1	f8e4c263-1e59-4a0b-a594-83a1602b5deb	2f4987d6-2fac-4715-9140-c438e4d8fe5e	1acc37c6-e644-4082-8b35-9921444d42d7
6ed8d752-9ca8-4740-9511-f9c42b3edd87	f	252	2021-12-18 02:35:28.79232+05:30	2022-01-03 12:14:41.177938+05:30	1	92	85	86	69	70	2021-12-18	2025-12-31	\N	M	t	t	t	t	1	t	1	428586a8-6265-45d7-b51a-ce93476eaf07	cfe0f674-5aec-459d-8487-8ccd121cfb7d	e68e9a2c-1925-41c8-bbe8-3dab2601cb25
b288479b-8da5-4f56-bb52-770ff2da3e5e	f	292	2022-01-03 23:17:00.79486+05:30	2022-01-03 23:17:00.770577+05:30	1	92	85	86	69	70	2022-01-03	\N	\N	A	t	t	t	f	1	t	1	ec84b858-b010-4367-a084-a89f265cab84	4ea4dcab-67ce-4607-b2aa-9ec2267023cf	609f5dd6-b85a-4923-ad8c-9fcaef575de1
71bb101c-6ee9-454f-bd9e-eac7489ad604	f	76	2022-01-04 11:43:41.385681+05:30	2022-01-04 11:43:41.358054+05:30	1	92	85	86	69	70	2022-01-04	\N	\N	A	t	t	t	f	1	t	1	2feb3adb-2ad6-4652-8e30-5803a6a421ae	8f8d788f-99c7-4838-a7a4-f1b99fc9def8	d0099d91-22d4-46bb-9240-d4c2347622f6
71a5c557-12f2-4612-93a4-54981700afdc	f	76	2022-01-04 15:57:02.551333+05:30	2022-01-04 15:57:02.527287+05:30	1	92	85	86	69	70	2022-01-04	\N	\N	A	t	t	t	f	1	t	1	0a242295-c902-4a02-9b70-df025f55aa30	dc2d2c28-1fae-491e-8f6e-e29724ed27f2	d0099d91-22d4-46bb-9240-d4c2347622f6
8a6f89b0-d31f-4848-81ba-426d4fddf2cd	f	293	2022-01-04 23:44:17.80645+05:30	2022-01-04 23:44:17.775208+05:30	1	92	85	86	69	70	2022-01-04	\N	\N	A	t	t	t	f	1	t	1	f53ccf9e-cc11-4bf9-a061-55a624fbf57d	75e5a9b4-a45f-4173-a10b-42b85dce3e93	60b7a3f0-c042-411a-b121-caf5d24a0346
f7f2873d-4fc7-4b52-8ddd-3062c75bc15e	f	294	2022-01-05 00:32:32.049507+05:30	2022-01-05 00:32:32.024043+05:30	1	92	85	86	69	70	2022-01-04	\N	\N	A	t	t	t	f	1	t	1	da5ffe0d-059a-4552-8b46-2552cf9befb2	a0536555-b2a9-440b-a19a-08389a1e7afe	96c9706f-aeb3-4797-bbb1-139f526baab9
1e2d3fe3-0c98-42d8-a77c-f0ee64b67cad	f	296	2022-01-05 12:28:10.708569+05:30	2022-01-05 12:28:10.672351+05:30	1	92	85	86	69	70	2022-01-05	\N	\N	A	t	t	t	f	1	t	1	a13a14b3-1c74-493e-9a5e-028230d1b098	de5385be-5537-49d1-921d-349dcfd4d9c4	b47f41ab-6c2d-438f-96bd-edbe7bb103d9
6678124f-0495-4e47-aa26-a7f28bd75952	f	326	2022-01-19 14:29:13.354813+05:30	2022-01-19 14:29:13.333183+05:30	1	92	85	86	69	70	2022-01-19	\N	\N	A	t	t	t	f	1	t	1	9f556980-7ace-4f44-97c4-4b90c21b0b2f	ec4f59c9-8987-4762-8055-28de39ec4aa9	d4463d34-aaa3-4106-bcca-f6769ed83e43
6609b817-78d2-42d5-8426-978b536bac35	f	297	2022-01-05 21:28:26.503004+05:30	2022-01-05 21:28:26.472995+05:30	1	92	85	86	69	70	2022-01-05	\N	\N	A	t	t	t	f	1	t	1	334e676d-1f87-425c-b2ae-a876c350d310	3d4fdd34-3a47-44cf-bd6f-91a6c8d3a18c	c5074079-21a4-4aff-b255-e55303f6f3f9
a64a792b-ae1c-48f3-83fe-12d0f2bd25d5	t	349	2022-01-28 11:46:30.255613+05:30	2022-03-04 15:41:29.634825+05:30	1	92	85	86	69	70	2022-01-28	2022-07-19	\N	M	t	t	t	f	1	f	2	e837c6a7-288a-4199-8b61-cc7905e54451	4b96fea8-82b6-423a-9a04-78e84f08bd91	555ffab6-23a6-4a02-b94d-138caa42ba60
c2a766b8-3ec5-474f-8d5a-b4f5a6dfcd3f	f	299	2022-01-06 23:30:55.699152+05:30	2022-01-06 23:30:55.672247+05:30	1	92	85	86	69	70	2022-01-06	\N	\N	A	t	t	t	f	1	t	1	d252b5f5-ae0a-4f3f-9448-6e73044c8096	d7e45553-2870-4911-ab30-283af5623fa5	707a4877-6a8d-4de8-a196-1d4106771d0e
a41e2efa-88d9-4915-861f-83751df3e8b4	f	328	2022-01-19 23:58:09.479067+05:30	2022-01-19 23:58:09.395506+05:30	1	92	85	86	69	70	2022-01-19	\N	\N	A	t	t	t	f	1	t	1	6e4c2ce3-10d9-4c7f-a766-ad6d2706d30b	ec7b5a76-ee26-4ca7-9b05-1f3c121ffa6e	24f3c129-df80-4a61-ad42-74f9c7feaed8
aee3af06-1248-4c25-be22-c7bcb93063fc	f	2	2022-01-07 17:14:12.516711+05:30	2022-01-07 17:14:12.482613+05:30	1	92	85	86	69	70	2022-01-07	\N	\N	A	t	t	t	f	1	t	1	9bfc8756-7051-4c7c-a8a2-65357fe49b59	812d649d-73ef-4972-9893-2e0308f4c5d7	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
9b88b58b-bab3-44f3-b23b-a14d86d5c01e	f	329	2022-01-20 16:16:07.753198+05:30	2022-01-20 16:16:07.714232+05:30	1	92	85	86	69	70	2022-01-20	\N	\N	A	t	t	t	f	1	t	1	f6c52c9a-39eb-494f-9224-812c5d32594b	b1787815-b8a3-4c9f-ac88-58a11d35c52e	652ab35b-3142-4805-8c15-66517c779801
4ed46b9b-804c-4f8a-9acc-08af879a9749	f	331	2022-01-20 20:34:43.323424+05:30	2022-01-20 20:34:43.302828+05:30	1	92	85	86	69	70	2022-01-20	\N	\N	A	t	t	t	f	1	t	1	b4117bfb-63b0-4c50-b22e-4f2978479ba8	4e7e4c1c-e891-4758-9872-d77c00d8992c	08224e31-e752-4597-a4d7-4aef3b6f9002
8297763d-e236-49dd-8113-5166d274b9ad	f	62	2022-03-14 10:38:51.866451+05:30	2022-03-14 10:38:51.828878+05:30	1	92	85	86	69	70	2022-03-14	\N	\N	A	t	t	t	f	1	t	1	ffa8c920-ef76-43fa-a629-0b3f8fdd3c91	30f88b2a-1b66-4fef-b4f7-c6f0d3116bf7	6467c567-1c74-463f-89bd-6ff2757b59c7
0a3c20e8-287f-41fb-9e4c-3bcaf6681d70	f	2	2022-01-07 17:39:06.758054+05:30	2022-01-07 17:39:06.725431+05:30	1	92	85	86	69	70	2022-01-07	\N	\N	A	t	t	t	f	1	t	1	90e225c9-663e-475f-9f9e-81bf22be0010	01be2b59-9cba-4bf2-b301-61b9a18bf1f4	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
5e87ffa3-f013-4851-8a53-ce651eb97a7a	f	2	2022-01-07 18:56:32.334901+05:30	2022-01-07 18:56:32.289912+05:30	1	92	85	86	69	70	2022-01-07	\N	\N	A	t	t	t	f	1	t	1	5caa259b-84a3-4c8b-b9b9-3d42e7819c6b	8bca984c-adb3-4726-9fc0-7e10da1884e0	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
cc399395-51ed-4d59-867b-c41c1bc8b545	f	324	2022-01-21 10:46:27.664154+05:30	2022-01-21 10:46:27.634308+05:30	1	92	85	86	69	70	2022-01-21	\N	\N	A	t	t	t	f	1	t	1	85bfd19b-c108-4a9e-97db-479230321d46	53b5694b-88bf-4261-b2da-67989e7d0526	21f5e093-a0ae-44c5-99c9-1c463196da42
c78160b7-0931-42b3-b8fa-00ed501ca77a	f	302	2022-01-07 22:19:43.585053+05:30	2022-01-07 22:19:43.56108+05:30	1	92	85	86	69	70	2022-01-07	\N	\N	A	t	t	t	f	1	t	1	7be9f552-742a-4076-a0fc-467fd3162780	b01aca7f-1274-4e93-ab14-e51122aaba56	08e66852-2718-4e37-80f3-e3ef9e77c2eb
5afa92d0-7c74-499c-a5e4-8ed8a147d914	f	303	2022-01-09 00:27:48.26026+05:30	2022-01-09 00:27:48.224127+05:30	1	92	85	86	69	70	2022-01-08	\N	\N	A	t	t	t	f	1	t	1	32916458-6c26-4753-9ed6-c58a971aa0d6	ffbc7f2f-e497-4070-bcb5-763dd1505e98	3f65c7c7-b5d8-4126-8025-9b8097f838da
7d1771fa-4d26-4e06-a7af-bf503f2426c6	f	324	2022-01-21 10:48:31.289315+05:30	2022-01-21 10:48:31.268314+05:30	1	92	85	86	69	70	2022-01-21	\N	\N	A	t	t	t	f	1	t	1	473383fa-ce83-4041-9a94-0338dbbe4df0	45d34f18-6cf8-4429-8ce4-90a14967ffbc	21f5e093-a0ae-44c5-99c9-1c463196da42
d937c6af-6e00-43c9-b63d-448494f60466	f	266	2022-01-09 13:48:06.916103+05:30	2022-01-09 13:48:06.879797+05:30	1	92	85	86	69	70	2022-01-09	\N	\N	A	t	t	t	f	1	t	1	f7de0912-b038-4050-a77c-37d99e30557e	6e10bb42-5a63-4038-b1a7-e0f191221a6d	da0b152d-2bd4-4bdb-9e13-490d308c8968
c75c8f67-0b65-46f8-ade0-6d59b31c8ebd	f	308	2022-01-09 14:39:56.232636+05:30	2022-01-09 14:39:56.193182+05:30	1	92	85	86	69	70	2022-01-09	\N	\N	A	t	t	t	f	1	t	1	a1ee4a39-ce71-4ab9-9603-9705ca890091	c55d6439-6212-4c08-bb06-e1151bda4291	68f88e68-6501-45ec-b08b-d55daa173e10
366dffde-8365-4fd4-8c60-590e26dbcc3e	f	332	2022-01-22 09:04:30.156086+05:30	2022-01-22 09:04:30.129236+05:30	1	92	85	86	69	70	2022-01-22	\N	\N	A	t	t	t	f	1	t	1	6ab3708b-bcb6-4eec-945d-313f6adc4dd5	5f9be1fa-dac2-4213-be4d-e455f69a2860	61a89622-0d1a-4d8a-85c7-db2e15fe463e
e02abd56-3bbb-402a-bb29-989d863d00a3	f	62	2022-01-10 12:46:32.734839+05:30	2022-01-10 12:46:32.685786+05:30	1	92	85	86	69	70	2022-01-10	\N	\N	A	t	t	t	f	1	t	1	9abde2d9-b821-4b17-ad55-44fbf2ad9afc	2f5852c9-1568-4cae-b31e-0badf4c1b719	6467c567-1c74-463f-89bd-6ff2757b59c7
802efa14-cb4d-4cf0-b3a0-fcc1a3f48792	f	154	2022-01-11 23:19:21.019966+05:30	2022-01-11 23:19:21.012404+05:30	1	92	85	86	69	70	2022-01-11	2023-01-11	\N	A	f	t	t	f	1	t	1	061eb840-e145-40cf-9aa9-0e498bb83175	964edeae-a809-4eae-90b4-40135bd8282d	199e8f0a-9bd1-481a-8208-ddfc87fee1bc
fa59fac4-d245-4646-8a04-da56f1b93c49	f	92	2022-01-12 12:35:04.633125+05:30	2022-01-12 12:35:04.617682+05:30	1	92	85	86	69	70	2022-01-12	2024-03-12	\N	A	f	t	f	f	1	t	1	f0c06f47-1a55-450b-b4e5-a410afe78803	0f07c214-b34a-4a2a-865f-5fc7c0c85979	a86d92fc-aff2-4ca7-9324-9d9373a59fdf
2a9b1806-45cf-4f4f-be8b-5b844458c0f9	f	338	2022-01-22 14:07:16.996224+05:30	2022-01-22 14:07:16.973049+05:30	1	92	85	86	69	70	2022-01-22	\N	\N	A	t	t	t	f	1	t	1	10b8f12b-9c7b-4d31-8ceb-a18a7d1e04cd	5808f9c5-5600-47fb-b27e-70c534cc62b6	95293a7d-c00c-45b2-9597-8e37dd9f44a0
b6e21b2f-f533-4408-9aff-cadf8910afe1	f	311	2022-01-13 20:00:21.786511+05:30	2022-01-13 20:00:21.755307+05:30	1	92	85	86	69	70	2022-01-13	\N	\N	A	t	t	t	f	1	t	1	45b2d50a-49c7-4697-bdb4-bcf45164b8aa	6a8077c9-d1b1-42ec-918b-7c3ad31990d4	5c231225-d4ac-414e-a060-739b42d2e039
9152dab9-d4aa-4e57-90ca-dd80ac73ffcd	f	184	2022-01-22 21:24:13.676927+05:30	2022-01-22 21:24:13.661422+05:30	1	92	85	86	69	70	2022-01-22	2023-01-30	\N	A	f	t	t	t	1	t	1	d04da6b7-4d95-44ce-9357-663d167994e4	868a7281-f644-4722-87e8-decd96651669	b0abe4c9-7145-4e35-b6a1-5b8290cde3ae
1d681e16-e8c5-42ae-bd6f-8dabef51f43b	f	345	2022-01-24 15:39:33.477302+05:30	2022-01-24 15:39:33.453755+05:30	1	92	85	86	69	70	2022-01-24	\N	\N	A	t	t	t	f	1	t	1	26d2bb20-adbd-4d34-a88e-690827c462be	068014b6-9cab-4d1d-907e-e5ea2bef3532	be71a85f-4958-40e0-b518-2fa68d73b7ff
23ca15ca-4dff-4c76-bcb5-316435776c82	f	346	2022-01-24 19:40:47.260031+05:30	2022-01-24 19:40:47.233228+05:30	1	92	85	86	69	70	2022-01-24	\N	\N	A	t	t	t	f	1	t	1	55798cb4-b7a7-413a-bcb5-8ffe823930f4	54dc61a9-aa26-4e6b-afdd-30e70d7543a0	efc71c5e-9312-44b7-b644-eb12c962a71d
a903ad88-9914-4d46-a12d-c5bb694d6860	f	2	2022-01-27 15:43:20.735562+05:30	2022-01-27 15:43:20.687555+05:30	1	92	85	86	69	70	2022-01-27	\N	\N	A	t	t	t	f	1	t	1	1b955cde-f944-4c21-91cd-5827e17de86a	e0269971-ddd0-4ef1-a96f-ebdc20362174	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
c2f95648-a6da-4b50-993f-6bf0535e2475	f	76	2022-01-27 15:52:57.94539+05:30	2022-01-27 15:52:57.922519+05:30	1	92	85	86	69	70	2022-01-27	\N	\N	A	t	t	t	f	1	t	1	bc1141b5-d982-4c73-8658-f8812e3a4e8e	e31c20c1-ba47-4181-b39f-dd315727cfe5	d0099d91-22d4-46bb-9240-d4c2347622f6
68326bb9-5eb0-4d32-9f26-043688de2753	f	2	2022-01-27 16:03:15.829134+05:30	2022-01-27 16:03:15.796556+05:30	1	92	85	86	69	70	2022-01-27	\N	\N	A	t	t	t	f	1	t	1	51d9e5d6-2c94-48b3-8903-10b359b84a82	e5e80aa1-2b97-49bc-9658-a6ddef7fce0e	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
e312f418-8334-474d-ba6f-16fc3a1068c5	f	348	2022-01-28 01:43:38.446062+05:30	2022-01-28 19:49:34.468776+05:30	1	92	85	86	69	70	2022-01-27	2022-02-28	\N	M	t	t	t	f	1	t	1	257695a2-16fe-4acb-be80-6bb666384fbd	d19d8e55-6912-46ba-b3be-91eb59735368	b772a38d-020d-4759-987f-eb2aa968c9cd
d1b74b4c-a07c-4464-8adc-96a56eee7886	f	338	2022-01-29 11:18:33.946915+05:30	2022-01-29 11:18:33.917956+05:30	1	92	85	86	69	70	2022-01-29	\N	\N	A	t	t	t	f	1	t	1	bfc49080-518f-4ce7-a2eb-4bb0c7ad822f	fdb7ac95-b550-4d3d-967b-bd5068731ecb	95293a7d-c00c-45b2-9597-8e37dd9f44a0
7a294362-beac-4112-961c-a5762150d5c1	f	76	2022-01-29 15:35:17.26591+05:30	2022-01-29 15:35:17.244136+05:30	1	92	85	86	69	70	2022-01-29	\N	\N	A	t	t	t	f	1	t	1	69e66470-68f3-4141-adf2-89dad395e8f6	7a36ee8b-35f7-4284-9d64-5895a7a3f1d5	d0099d91-22d4-46bb-9240-d4c2347622f6
65ac173d-3924-4be6-b8d9-e2b27bec65cf	f	351	2022-01-30 19:38:25.924107+05:30	2022-01-30 19:38:25.90201+05:30	1	92	85	86	69	70	2022-01-30	\N	\N	A	t	t	t	f	1	t	1	e38bf195-bd61-4fd3-a26b-938e2b129078	ff99f7c2-9aac-46c9-a745-e781319f2dc3	0463090f-c807-4eff-a115-b01802b3a3f9
5ec3d9d4-ea81-432f-aecb-3ca6f9383dab	f	228	2022-01-30 23:08:41.840212+05:30	2022-01-30 23:08:41.826676+05:30	1	92	85	86	69	70	2022-01-30	2022-12-17	\N	A	f	t	t	t	1	t	1	1a07d7d9-76c0-4f70-b58f-a19c48777a69	4d7ae44e-2ef8-46e1-b263-ecfd1e9d194e	4afa76ee-47f4-4c9b-9c3f-b58d112098fd
c927120e-6136-49de-84d7-1df75efd1bf9	f	353	2022-02-02 16:58:00.372601+05:30	2022-02-02 16:58:00.34001+05:30	1	92	85	86	69	70	2022-02-02	\N	\N	A	t	t	t	f	1	t	1	e92c2c13-95b0-4472-b3f8-c9d2c159f7fd	324db025-33c4-4db9-b5af-29b4c0ca64b9	f6dbbce5-a1f8-4a54-a59f-0f06e84cfbdc
848a4f21-d2c8-4b8c-87a3-13ffee7bc0d7	f	338	2022-02-05 11:14:15.139853+05:30	2022-02-05 11:14:15.114381+05:30	1	92	85	86	69	70	2022-02-05	\N	\N	A	t	t	t	f	1	t	1	64996d86-27be-4d2e-9270-39561941b598	3259e1e6-572e-46b1-9a58-3bccd714b57a	95293a7d-c00c-45b2-9597-8e37dd9f44a0
64bd0ef9-90d7-48a4-a04f-bf7c81896dbb	f	134	2022-02-16 04:45:10.153704+05:30	2022-02-16 04:45:10.110859+05:30	1	92	85	86	69	70	2022-02-16	\N	\N	A	t	t	t	f	1	t	1	4ec75791-ef97-4f95-b914-8775a54025ea	cdb0c41d-635c-4066-9a41-bf5eb9e31a7d	2a0ea2be-7696-4da5-a9f7-b6f595356af2
6ae9b0ac-0eb2-46f9-9ab1-49a3ee918207	f	76	2022-02-08 10:48:38.797292+05:30	2022-02-08 10:48:38.667854+05:30	1	92	85	86	69	70	2022-02-08	2026-12-08	\N	A	f	t	f	f	1	t	1	df9a7e6c-11bd-49af-b35e-f48b116f95a6	e6822214-ca3c-4d03-bde9-e094b6443bda	bd08efd2-391c-4aea-b585-b7b380847c69
0216a77d-d718-4748-90f8-9de98d12a59f	f	356	2022-02-08 17:11:56.668764+05:30	2022-02-08 17:11:56.634402+05:30	1	92	85	86	69	70	2022-02-08	\N	\N	A	t	t	t	f	1	t	1	c32526a6-a90a-4e06-8550-da558b6907d0	3dde8f5a-c1bc-4b1e-bdbe-122639cac566	418ee829-0e3e-4c39-bbf9-aadb15d7bceb
b52e31e7-b079-45c3-8674-ad89e3e9bb16	f	356	2022-02-08 17:26:58.042338+05:30	2022-02-08 17:26:58.017735+05:30	1	92	85	86	69	70	2022-02-08	\N	\N	A	t	t	t	f	1	t	1	34e83d57-f92a-49c0-b54a-84a72b05a6e2	71b195ac-6692-4cf2-a25e-c350930580d8	418ee829-0e3e-4c39-bbf9-aadb15d7bceb
cd5bd6a7-5144-4e10-abbb-68928a1d2eeb	f	338	2022-02-12 11:58:09.98433+05:30	2022-02-12 11:58:09.951514+05:30	1	92	85	86	69	70	2022-02-12	\N	\N	A	t	t	t	f	1	t	1	c12c2c56-a40c-47eb-a348-65d71a2be3b7	2184656a-8f3a-4331-9865-be2c0fcfab67	95293a7d-c00c-45b2-9597-8e37dd9f44a0
5c00c27b-f76f-4e1b-8e6b-a18188ae4eae	f	2	2022-02-13 10:55:53.458261+05:30	2022-02-13 10:55:53.42399+05:30	1	92	85	86	69	70	2022-02-13	\N	\N	A	t	t	t	f	1	t	1	bdd98b6c-32b9-4da3-86f7-efac5c7f072f	96e5b06a-ba02-4fab-a928-c83a4de3b71c	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
b16d7a87-8e05-4269-a98d-d3a49afb561a	f	2	2022-02-13 11:40:47.667586+05:30	2022-02-13 11:40:47.642193+05:30	1	92	85	86	69	70	2022-02-13	\N	\N	A	t	t	t	f	1	t	1	ecd45d3f-fc98-4dd3-b23a-7a0e00d7f349	86ddf9b6-3635-444b-9b2f-b7c0f78be307	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
b4d00b24-e9be-490f-9598-b9fc2893797c	f	357	2022-02-13 19:34:57.150214+05:30	2022-02-13 19:34:57.118808+05:30	1	92	85	86	69	70	2022-02-13	\N	\N	A	t	t	t	f	1	t	1	d26fb064-b97e-4fd0-86b5-54fe5abaf6cd	dcc53c4e-25e2-415f-95df-9c57772b117c	33827fa4-6ed8-4cad-bcf0-f007c1af5b8b
15ee032b-33e5-4f60-bf40-c16619296dc0	f	357	2022-02-13 19:37:06.842897+05:30	2022-02-13 19:37:06.822883+05:30	1	92	85	86	69	70	2022-02-13	\N	\N	A	t	t	t	f	1	t	1	5d25d15e-d8bd-4a75-9025-9614b53135da	f18ab5e1-b7a8-4246-b3ec-fc4039fdc661	33827fa4-6ed8-4cad-bcf0-f007c1af5b8b
c4312378-b1b7-4827-b414-dcab025abf4f	f	357	2022-02-13 19:38:40.280843+05:30	2022-02-13 19:38:40.256719+05:30	1	92	85	86	69	70	2022-02-13	\N	\N	A	t	t	t	f	1	t	1	70ae49bb-4b6a-47fa-9f8a-ffb1a8562743	69a4934f-21c2-4103-9286-38ae34c6ba88	33827fa4-6ed8-4cad-bcf0-f007c1af5b8b
8aa5c721-e717-4f50-8e89-449d9e5751a1	f	360	2022-02-14 23:33:28.538381+05:30	2022-02-14 23:33:28.495092+05:30	1	92	85	86	69	70	2022-02-14	\N	\N	A	t	t	t	f	1	t	1	3bb9730f-c65c-44ba-a385-e89b8e64e758	7cf153c4-47bd-4b93-8e58-5513315af68a	28805410-1969-48d8-9fce-c5ee5b9a4244
3527e918-c252-48e9-bf2b-d2ffdc932860	f	349	2022-02-15 11:14:37.432786+05:30	2022-02-15 11:14:37.399254+05:30	1	92	85	86	69	70	2022-02-15	\N	\N	A	t	t	t	f	1	t	1	924abda3-7706-47b0-a908-2e0013e75fbc	c4591aac-329b-4a08-a434-a3030c918e62	555ffab6-23a6-4a02-b94d-138caa42ba60
ac355fc3-087c-40cb-b4a8-88c9d29ac2a4	f	62	2022-02-19 20:07:28.398305+05:30	2022-02-19 20:07:28.367881+05:30	1	92	85	86	69	70	2022-02-19	\N	\N	A	t	t	t	f	1	t	1	f38f15be-e8c9-483b-a8f7-d991276cde78	579c2147-f4cd-4eb2-9247-04f6cf0d1b55	6467c567-1c74-463f-89bd-6ff2757b59c7
61f66635-5e26-429c-86e9-e80f1104ae3b	f	367	2022-02-19 21:20:15.123928+05:30	2022-02-19 21:20:15.102489+05:30	1	92	85	86	69	70	2022-02-19	\N	\N	A	t	t	t	f	1	t	1	f494e172-9cde-4801-9083-e58e5583cc1a	bee6d128-24e8-4693-bb99-a02e724e67d6	9116750d-12d9-4e62-aeb4-ad9543968777
cb8b4409-5e2c-4926-8005-5a1bd961e937	f	31	2022-02-21 17:53:22.277747+05:30	2022-02-21 17:53:22.25471+05:30	1	92	85	86	69	70	2022-02-21	\N	\N	A	t	t	t	f	1	t	1	d2fb8a7e-c973-4057-804b-b60505a8f56e	700414ac-c0ae-499a-9f8c-39d8822b7501	06baff7f-81a3-4580-9c5f-ab8ced555747
474d9c87-1a3d-4d5b-bc11-8cbb589c4eee	f	155	2022-02-23 16:34:27.467585+05:30	2022-02-23 16:34:27.286797+05:30	1	92	85	86	69	70	2022-02-23	2022-02-28	\N	A	f	t	t	t	1	t	1	46cae537-b9f9-42fd-b546-06e9dc2bb812	7424fb29-3cf9-4a5a-91c2-b2b4cbec992a	e83eb3bd-a01c-48a8-9c48-40e0d0fa3d9b
a3486a17-748b-410f-a748-c54dfb0e6c83	f	76	2022-02-24 17:45:32.307244+05:30	2022-02-24 17:45:32.274801+05:30	1	92	85	86	69	70	2022-02-24	\N	\N	A	t	t	t	f	1	t	1	46d6fefa-4402-4d6a-8ed3-49251ba2e677	9e72ee7d-cc75-4b2e-b1a3-034130975923	d0099d91-22d4-46bb-9240-d4c2347622f6
64cbfd69-d204-4633-82ed-25d21b345765	f	338	2022-02-24 20:09:15.430027+05:30	2022-02-24 20:09:15.403901+05:30	1	92	85	86	69	70	2022-02-24	\N	\N	A	t	t	t	f	1	t	1	6ebc9af4-7f1c-4de2-938d-060298ae5e81	ac248d74-6a73-4661-80af-725b4757cbe1	95293a7d-c00c-45b2-9597-8e37dd9f44a0
e20c64ec-4051-4609-892f-d0ef00b835c4	f	76	2022-02-25 09:36:34.224631+05:30	2022-02-25 09:36:34.18437+05:30	1	92	85	86	69	70	2022-02-25	\N	\N	A	t	t	t	f	1	t	1	af99f52c-8de3-43b6-8f4d-988f158c2fd1	57432e8d-3ed3-470d-80b5-dc22625a4e42	d0099d91-22d4-46bb-9240-d4c2347622f6
a1a534c7-bce5-4c7b-8973-ce2ed0f04e12	f	2	2022-02-25 10:58:55.455329+05:30	2022-02-25 10:58:55.419898+05:30	1	92	85	86	69	70	2022-02-25	\N	\N	A	t	t	t	f	1	t	1	08845e39-44d2-4d01-aec3-21988e6a21d1	3925586d-c596-49c2-bca8-9fbff801392b	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
9574f143-1225-4ac2-a852-7cfc65a29372	f	370	2022-02-25 15:56:38.887602+05:30	2022-02-25 15:56:38.859232+05:30	1	92	85	86	69	70	2022-02-25	\N	\N	A	t	t	t	f	1	t	1	8076f7d0-9075-44e6-a2a1-50f7590f4b9a	48e59ff4-7d98-473d-ac3b-5ba56717f91b	3827530d-afc2-43b0-8947-9541d7ac4933
f5a40730-6ff3-40f8-8105-fdbbb23cea53	f	31	2022-02-25 16:08:16.476959+05:30	2022-02-25 16:08:16.459861+05:30	1	92	85	86	69	70	2022-02-25	2022-04-30	\N	A	f	t	f	f	1	t	1	d2fb8a7e-c973-4057-804b-b60505a8f56e	89207cb9-0b99-4983-8e37-cb12c7388942	6564a327-19aa-4ee1-80df-6174d19d4f84
a110bac3-9513-4408-960d-74a9263522a4	f	31	2022-02-25 18:40:06.24909+05:30	2022-02-25 18:40:06.233068+05:30	1	92	85	86	69	70	2022-02-25	2022-12-31	\N	A	f	t	t	t	1	t	1	d2fb8a7e-c973-4057-804b-b60505a8f56e	700414ac-c0ae-499a-9f8c-39d8822b7501	fbcaf1dd-4258-4d39-9b17-ecaec902973e
70c061aa-c5a1-4ecb-90fd-8e9355b3a763	f	134	2022-02-26 03:25:28.903078+05:30	2022-02-26 03:25:28.876221+05:30	1	92	85	86	69	70	2022-02-26	\N	\N	A	t	t	t	f	1	t	1	c6cabc4a-6e3f-4e34-b42f-244958e88fcc	5442b05b-4f43-4681-b02f-b2d9f8d0dd90	2a0ea2be-7696-4da5-a9f7-b6f595356af2
bc74b9ba-7155-46ac-8206-460947012d31	f	371	2022-02-26 10:41:41.604556+05:30	2022-02-26 10:41:41.579204+05:30	1	92	85	86	69	70	2022-02-26	\N	\N	A	t	t	t	f	1	t	1	3930085d-4537-4e6f-8b3e-370b706f097b	720dc1e5-e8a2-4e3f-afea-f74dcdff6fef	a95e9bee-9be6-40b5-9e33-76b00b8398f6
98682be2-ece9-4e26-a8db-9959c9f760a2	f	371	2022-02-26 14:12:33.16781+05:30	2022-02-26 14:12:33.146262+05:30	1	92	85	86	69	70	2022-02-26	\N	\N	A	t	t	t	f	1	t	1	82315c7b-b2fa-4560-8491-f8e4b4b11ebe	a446dfc9-206a-4ef7-a3bc-57a6efdfa5ee	a95e9bee-9be6-40b5-9e33-76b00b8398f6
8b36df88-509e-4819-8b16-515516f2a776	f	371	2022-02-26 14:14:57.056585+05:30	2022-02-26 14:14:57.035453+05:30	1	92	85	86	69	70	2022-02-26	\N	\N	A	t	t	t	f	1	t	1	ad347c01-b9dd-401f-b385-bbd81a398eba	5bc802cd-3182-46a4-9e77-63ff385d5e23	a95e9bee-9be6-40b5-9e33-76b00b8398f6
38198667-1447-4208-88f5-71eb4716958b	f	372	2022-02-27 13:04:45.083652+05:30	2022-02-27 13:04:45.059241+05:30	1	92	85	86	69	70	2022-02-27	\N	\N	A	t	t	t	f	1	t	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	0c5a2877-0bf9-4e38-9523-37c50608408e	7cedb3d1-e9d9-4ef6-833c-8c305dd65511
fd29d7e6-1a0a-428a-9908-69aecbce51cd	f	76	2022-03-12 12:21:13.566974+05:30	2022-03-12 12:21:13.542809+05:30	1	92	85	86	69	70	2022-03-12	\N	\N	A	t	t	t	f	1	t	1	eeeaf2e2-15a0-4b62-a3a1-8a8d78dbf4ec	30430b6a-2ae8-4b77-b0d6-1d58548fde28	d0099d91-22d4-46bb-9240-d4c2347622f6
8947d529-0f51-48b0-9c41-831a53832743	f	332	2022-02-28 15:20:50.691827+05:30	2022-02-28 15:20:50.665368+05:30	1	92	85	86	69	70	2022-02-28	\N	\N	A	t	t	t	f	1	t	1	b8fa7cbd-2060-48ec-9229-d5dee7de4832	844a6d3e-d3f7-4a20-a75e-f68e00642d70	61a89622-0d1a-4d8a-85c7-db2e15fe463e
0e02d967-4d59-4de3-9ea6-edbde2a7c3a7	f	29	2022-03-15 16:17:32.945727+05:30	2022-03-15 16:17:32.916918+05:30	1	92	85	86	69	70	2022-03-15	\N	\N	A	t	t	t	f	1	t	1	496411f0-f421-4944-b2b5-5b70f079a141	47baa63a-f384-481c-95a0-d2c0244b3e24	3e3c2f65-597c-4c38-a098-75ec1addf086
289b29b2-51fa-4526-afa9-79fdc0b41fb4	f	382	2022-03-15 16:19:46.668757+05:30	2022-03-15 16:19:46.645519+05:30	1	92	85	86	69	70	2022-03-15	\N	\N	A	t	t	t	f	1	t	1	df50c3ef-61a0-4cb2-bd4c-43d73906e94c	79763c17-2a72-49f9-8ae4-7b26ec6154b6	694ca116-2757-4db7-83b5-934652afa144
8dad1c20-efa9-490e-bce4-5ba4d168de2d	f	76	2022-03-15 16:59:42.654323+05:30	2022-03-15 16:59:42.602853+05:30	1	92	85	86	69	70	2022-03-15	\N	\N	A	t	t	t	f	1	t	1	dde73e9f-9465-4fc9-ae1a-42643da46cd2	55b63a27-7e62-47c2-9872-7ac29678b070	d0099d91-22d4-46bb-9240-d4c2347622f6
dbe4c78d-85b9-438e-ba70-1390ba36d37f	f	47	2022-03-16 00:03:34.356976+05:30	2022-03-16 00:03:34.347967+05:30	1	92	85	86	69	70	2022-03-15	2030-03-15	\N	A	f	t	t	f	1	t	1	343e4652-7e73-4f3c-967f-fba6122da413	c0e532e4-b53e-47a8-9c69-3521aac41e36	d7ed8983-50e6-4e09-922d-47cdaeb72c70
5daa2ce2-0bfc-42cb-8847-a699df3ac20c	f	383	2022-03-16 01:42:37.161114+05:30	2022-03-16 01:42:37.13437+05:30	1	92	85	86	69	70	2022-03-15	\N	\N	A	t	t	t	f	1	t	1	696c8548-ae83-4ed3-a292-6fcc642abe23	540698bd-b185-447e-9ad5-f6abb0160aa2	7e8ded53-3125-4eb8-bb5b-3b2f5ac7512f
e0805db1-9773-49b3-bf26-5057a4dcc194	f	327	2022-03-16 22:55:55.28719+05:30	2022-03-16 22:55:55.265224+05:30	1	92	85	86	69	70	2022-03-16	\N	\N	A	t	t	t	f	1	t	1	9e5584b8-c6d9-4b4f-aefc-ad78272fe7f3	29a393b3-6f66-4371-b1bf-e3d11af6a0e3	ac623f7e-ccf0-4812-85de-10bd4ec51781
0722af9e-bcea-4ac7-acb1-225ccc2ee2d5	f	384	2022-03-18 21:43:03.043511+05:30	2022-03-18 21:43:03.024914+05:30	1	92	85	86	69	70	2022-03-18	\N	\N	A	t	t	t	f	1	t	1	eb22f045-55d5-44e2-b18a-813ea6f615bf	80a4f6b8-c5a5-4c2b-8b59-286438df2228	4cb9c762-ec01-4c5e-a388-d071ead4f118
7210814c-6ae9-461a-8872-5906d93730e4	f	385	2022-03-20 22:51:09.287053+05:30	2022-03-20 22:51:09.263512+05:30	1	92	85	86	69	70	2022-03-20	\N	\N	A	t	t	t	f	1	t	1	ef80ebe2-6854-4bbd-8669-7adcadb9dada	3b3899a4-3d92-46e4-8a5d-9e1e235b8ffa	c3b51615-cb29-4359-8460-e7f22e63c463
7346039f-d8ff-46fb-8be5-8d8934717d27	f	386	2022-03-21 13:49:41.499705+05:30	2022-03-21 13:49:41.468891+05:30	1	92	85	86	69	70	2022-03-21	\N	\N	A	t	t	t	f	1	t	1	b4455909-e4f8-4d0a-b8e2-3777499fceb1	719478e3-34ee-40d7-826c-3f873104fa44	6c998db8-ee65-4d74-9f0f-23b42b6b701f
dd96c2f0-402a-4b99-8730-1bff1d15a6d5	t	382	2022-03-14 16:13:00.255677+05:30	2022-03-21 17:54:04.089497+05:30	1	92	85	86	69	70	2022-03-14	2025-03-20	\N	M	t	t	f	f	1	t	1	89e29611-d06e-48e1-9afe-50eb756be97f	da6a3d66-b182-475c-a440-8ec1b31e7799	694ca116-2757-4db7-83b5-934652afa144
49fcb0c6-04ce-472e-b503-62214575098a	f	387	2022-03-21 19:46:34.105067+05:30	2022-03-21 19:46:34.083877+05:30	1	92	85	86	69	70	2022-03-21	\N	\N	A	t	t	t	f	1	t	1	f5eb7639-d1e9-40be-9607-84f20ee1cac3	7c728fb3-06de-4b1b-a699-149754451a56	4a65c619-512a-4dd8-bb18-a27cb5023047
7c5d5b4d-9475-4488-9590-1af8fbfdb41a	f	388	2022-03-22 00:08:35.692075+05:30	2022-03-22 00:08:35.669397+05:30	1	92	85	86	69	70	2022-03-21	\N	\N	A	t	t	t	f	1	t	1	0b2972ce-7a2c-488b-9a08-257a17fb54e5	90a58af0-7979-416f-9a57-e77238306cb4	66ec59fc-b5d9-4d98-84e4-174d54e996bd
8fdf1551-9b49-4d9d-b9ba-04099eaa769e	f	76	2022-03-23 10:26:07.165822+05:30	2022-03-23 10:26:07.042269+05:30	1	92	85	86	69	70	2022-03-23	2024-12-23	\N	A	f	t	f	f	1	t	1	46d6fefa-4402-4d6a-8ed3-49251ba2e677	8fa6a2f0-e0c0-4fc7-8ed4-e64cd4bee08c	d5f518f7-c742-49a6-b912-743d07b303c1
b1f91f13-00cf-4524-b058-ae93a181600a	f	76	2022-03-23 10:37:26.575557+05:30	2022-03-23 10:37:26.554084+05:30	1	92	85	86	69	70	2022-03-23	\N	\N	A	t	t	t	f	1	t	1	c9198e59-9642-4ebe-a405-227de27239e6	220b8c4d-8c8c-426e-accc-d7347ee4bf07	d0099d91-22d4-46bb-9240-d4c2347622f6
c7736c49-2c29-4b94-bddc-bcffb07f3d35	f	76	2022-03-25 10:48:54.827596+05:30	2022-03-25 10:48:54.803121+05:30	1	92	85	86	69	70	2022-03-25	\N	\N	A	t	t	t	f	1	t	1	ce18f348-856c-44cc-adac-0d23efc32e6e	c6661610-ec00-4e9d-8eb4-aa3abb149c6a	d0099d91-22d4-46bb-9240-d4c2347622f6
cfdf38af-a734-4597-8964-cc7a76be9e53	f	76	2022-03-25 14:33:29.266062+05:30	2022-03-25 14:33:29.138959+05:30	1	92	85	86	69	70	2022-03-25	2023-04-01	\N	A	f	t	f	f	1	t	1	ce18f348-856c-44cc-adac-0d23efc32e6e	eb05c97c-00d5-499b-9df3-e694adda912d	b58754b2-56b9-48d1-99c4-94c803c2aa52
c4f3e095-481f-468a-8fc3-87047a77d9b6	f	390	2022-03-25 14:54:54.673812+05:30	2022-03-25 14:54:54.649211+05:30	1	92	85	86	69	70	2022-03-25	\N	\N	A	t	t	t	f	1	t	1	99a668d4-9591-41db-b776-7d2a7ba26d4f	20875f81-2630-4b71-b744-1c88984ccc3c	b58754b2-56b9-48d1-99c4-94c803c2aa52
dc2e54eb-fd0a-4441-b166-cb7d1a2629f2	f	391	2022-03-25 20:16:42.58176+05:30	2022-03-25 20:16:42.560427+05:30	1	92	85	86	69	70	2022-03-25	\N	\N	A	t	t	t	f	1	t	1	b7c83b6f-83bf-466a-8acc-0663a8dc32f7	510a01b5-9b1b-4bb4-8716-983301ac7dc3	3216685d-bb27-47fb-bc91-2dd9efd1cec0
0bfc6bec-d641-470b-90a7-1817f9a22e89	f	382	2022-03-28 11:37:47.737439+05:30	2022-03-28 11:37:47.715539+05:30	1	92	85	86	69	70	2022-03-28	\N	\N	A	t	t	t	f	1	t	1	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32	d737a4eb-c85b-44b5-b37b-993e5537e1fe	694ca116-2757-4db7-83b5-934652afa144
a35b9c46-b6d5-4b46-bc7e-e7e344a044b2	f	31	2022-03-28 20:44:27.239023+05:30	2022-03-28 20:44:27.22327+05:30	1	92	85	86	69	70	2022-03-28	2022-04-30	\N	A	f	t	t	f	1	t	1	d2fb8a7e-c973-4057-804b-b60505a8f56e	89207cb9-0b99-4983-8e37-cb12c7388942	694ca116-2757-4db7-83b5-934652afa144
2c57a655-d558-46e6-99c4-337b5252c983	f	63	2022-03-29 22:11:06.154584+05:30	2022-03-29 22:11:06.134363+05:30	1	92	85	86	69	70	2022-03-29	\N	\N	A	t	t	t	f	1	t	1	22593720-2add-49a2-8387-7fa49202906e	47efcbb4-43b7-4172-877a-05b0e78a5e5f	7701a857-70b0-4117-8c4a-74c5adb3f8ec
9d5a2370-a0af-4690-965f-499d848ea63a	f	324	2022-03-30 10:07:37.218645+05:30	2022-03-30 10:07:37.1969+05:30	1	92	85	86	69	70	2022-03-30	\N	\N	A	t	t	t	f	1	t	1	9152f512-0522-49d3-83cc-12d8444268b2	179bd3f8-46c1-4921-a815-9abbe8c6fb5b	21f5e093-a0ae-44c5-99c9-1c463196da42
4087b059-c84f-4985-8640-422ffb105d25	t	372	2022-02-27 15:12:15.785014+05:30	2022-04-28 09:23:18.237113+05:30	1	92	85	86	69	70	2022-02-27	2022-12-31	\N	M	f	t	t	f	1	f	3	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	1e0dc9f0-da57-441d-98bc-8e65abb6a26d	58981ebf-66ce-4ec0-ba31-8cd058b3ede3
61c75a20-323b-414c-b1bc-a858600cc68d	t	372	2022-02-27 15:11:14.246534+05:30	2022-04-28 09:23:38.383211+05:30	1	92	85	86	69	70	2022-02-27	2022-12-31	\N	M	f	t	t	t	1	f	2	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	1e0dc9f0-da57-441d-98bc-8e65abb6a26d	467838e6-8613-4cd6-9cd0-5941d296c673
b42440e0-7a39-42dc-8c91-aea6271ee80d	f	372	2022-02-27 13:26:27.704224+05:30	2022-04-28 09:23:52.607244+05:30	1	92	85	86	69	70	2022-02-27	2026-12-31	\N	M	f	t	t	f	1	t	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	b9f66ba7-9d5a-4b51-bdea-06f833cceaeb	3c296ee7-0cd7-4327-bf48-412eaf773f09
03d45cd7-1838-4b7d-bc48-de78ec072ed7	f	382	2022-03-30 15:03:10.878569+05:30	2022-03-30 15:03:10.856206+05:30	1	92	85	86	69	70	2022-03-30	\N	\N	A	t	t	t	f	1	t	1	bfc93d28-62ad-4ca4-80a8-e37dc6fb49d8	0945615f-ecb5-451f-80a7-6f49a6c18e39	694ca116-2757-4db7-83b5-934652afa144
d227c009-556e-4871-a59f-c08478b21396	f	76	2022-04-06 11:45:38.756847+05:30	2022-04-06 11:45:38.731806+05:30	1	92	85	86	69	70	2022-04-06	\N	\N	A	t	t	t	f	1	t	1	ae99c103-a655-4c44-9d57-46ceb2c55e99	3d51af90-e5fc-4c83-a8c2-06ae76c53ba0	d0099d91-22d4-46bb-9240-d4c2347622f6
db6c3855-5cd2-4cc0-ab12-a25f7966ff12	f	76	2022-04-06 11:47:02.149005+05:30	2022-04-06 11:47:02.125569+05:30	1	92	85	86	69	70	2022-04-06	\N	\N	A	t	t	t	f	1	t	1	eb9f614b-f0be-480f-82c8-0b0fbb70143f	7ba8b4b9-b708-42c9-bdd4-2a2b4f46c001	d0099d91-22d4-46bb-9240-d4c2347622f6
4a22dfc9-2f2f-4cf1-bfd8-8dee652b2d34	f	388	2022-03-30 22:59:10.417915+05:30	2022-03-30 23:51:00.192402+05:30	1	92	85	86	69	70	2022-03-30	2022-08-30	\N	M	f	t	t	t	1	t	1	0b2972ce-7a2c-488b-9a08-257a17fb54e5	90a58af0-7979-416f-9a57-e77238306cb4	f064131a-2e01-4970-aa1c-52c6789b99c9
b7fe59dc-43cc-4187-bdd0-ecff09aaf5f7	t	388	2022-03-30 23:13:24.901026+05:30	2022-03-31 00:05:26.2437+05:30	1	92	85	86	69	70	2022-03-30	2023-03-28	\N	M	f	t	t	t	1	t	1	0b2972ce-7a2c-488b-9a08-257a17fb54e5	90a58af0-7979-416f-9a57-e77238306cb4	965013c7-be41-46e5-bd0e-51b2c4976ae7
0a7b7239-7f6e-45e2-9acb-4e7cd4325bbd	f	396	2022-04-04 14:35:56.660451+05:30	2022-04-04 14:35:56.638749+05:30	1	92	85	86	69	70	2022-04-04	\N	\N	A	t	t	t	f	1	t	1	ecf6342c-8f2f-4e0e-8bad-2c456d46903a	7f818da7-dc6d-4e2c-8d1b-2db2db132f68	69ccd594-de97-413d-94cc-fb860e6e4c9c
6ecf4788-b2f4-42fd-9476-8ec50172f803	f	396	2022-04-04 15:01:16.982725+05:30	2022-04-04 15:01:16.961761+05:30	1	92	85	86	69	70	2022-04-04	\N	\N	A	t	t	t	f	1	t	1	6445b018-3047-4169-b79d-96ac02269183	9fc0a60f-a299-4a8e-b15b-284052769c5d	69ccd594-de97-413d-94cc-fb860e6e4c9c
1ca8a0e9-8220-4724-9c3f-de60fc533064	f	396	2022-04-04 15:02:26.774903+05:30	2022-04-04 15:02:26.754574+05:30	1	92	85	86	69	70	2022-04-04	\N	\N	A	t	t	t	f	1	t	1	a3b01dba-44fd-4e23-9897-47e1a29d1907	aacb0588-ebcd-4f32-94d7-facd6047c9fe	69ccd594-de97-413d-94cc-fb860e6e4c9c
fe246c5f-6824-4484-a15c-28f85b7a77f3	f	396	2022-04-04 16:22:30.379857+05:30	2022-04-04 16:22:30.357965+05:30	1	92	85	86	69	70	2022-04-04	\N	\N	A	t	t	t	f	1	t	1	d958db14-c22d-4e3c-99bb-541dc6be305b	610d523d-1b6f-498a-88ae-3ddec8b225dc	69ccd594-de97-413d-94cc-fb860e6e4c9c
e2539833-2b1f-4267-9be5-4c7734aac4bd	f	36	2022-04-04 17:09:17.4741+05:30	2022-04-04 17:09:17.454844+05:30	1	92	85	86	69	70	2022-04-04	\N	\N	A	t	t	t	f	1	t	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	95508198-5702-4ce0-8844-0a56ecb71710	67aad890-ac49-4fde-a09f-61e5dad03cc5
697e6572-06ed-437c-9c02-fc4e2ef181a4	f	397	2022-04-04 19:48:10.715298+05:30	2022-04-04 19:48:10.693076+05:30	1	92	85	86	69	70	2022-04-04	\N	\N	A	t	t	t	f	1	t	1	fb5512d5-8884-47fd-9aef-8dbe7fd0a472	5ddb53a5-fe42-4ad4-a7eb-a9c6cc03878b	9da89b88-601e-4268-86cf-fa7c220bb62a
e3fdd9a3-d6c8-4065-8fca-9cba6d024a00	f	36	2022-04-04 20:19:48.943362+05:30	2022-04-04 20:19:48.923958+05:30	1	92	85	86	69	70	2022-04-04	2026-03-31	\N	A	f	t	t	f	1	t	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	95508198-5702-4ce0-8844-0a56ecb71710	2a27bb9c-848f-49da-90be-35afcb76d3f8
010ec56d-b7ad-4ba4-9e43-ed44c7e4342b	f	382	2022-04-06 13:49:37.593262+05:30	2022-04-06 13:49:37.571407+05:30	1	92	85	86	69	70	2022-04-06	\N	\N	A	t	t	t	f	1	t	1	cdb7a13a-74bc-4c7b-8859-e367baa33a6f	9580d1a2-d5fc-426f-adab-4766528fc37d	694ca116-2757-4db7-83b5-934652afa144
3d8d5d51-9b10-473f-a56b-669613958572	f	76	2022-04-06 16:00:00.739864+05:30	2022-04-06 16:00:00.719643+05:30	1	92	85	86	69	70	2022-04-06	\N	\N	A	t	t	t	f	1	t	1	fc41cd7d-57d8-4619-9a18-b21487f73d6a	a70672c2-b1ce-45d0-8c44-df16039c1482	d0099d91-22d4-46bb-9240-d4c2347622f6
7785d783-d0b5-4004-99e4-9338f6d95389	f	76	2022-04-06 16:43:57.730505+05:30	2022-04-06 16:43:57.708017+05:30	1	92	85	86	69	70	2022-04-06	\N	\N	A	t	t	t	f	1	t	1	3a7eaf79-20ad-4be1-9f17-6b812a12c15d	358228ee-042b-4c67-9dff-ef5fd338f65b	d0099d91-22d4-46bb-9240-d4c2347622f6
6ab416f4-146b-4f68-aa6f-977ce4b99ecf	f	76	2022-04-07 17:33:55.735065+05:30	2022-04-07 17:33:55.711975+05:30	1	92	85	86	69	70	2022-04-07	\N	\N	A	t	t	t	f	1	t	1	71289a84-cb65-4a99-82d3-49d45f43651d	82b7d363-7a47-4dd7-813a-d262337dde70	d0099d91-22d4-46bb-9240-d4c2347622f6
4cf8d415-ba1b-42ea-9abd-ae5e26df90ee	f	398	2022-04-13 03:07:57.050808+05:30	2022-04-13 03:07:57.022462+05:30	1	92	85	86	69	70	2022-04-13	\N	\N	A	t	t	t	f	1	t	1	b3fba004-a423-43a6-9113-1d1a41cf0576	8e1befb7-b0b9-4390-b347-3e91810f596f	525a237d-d34b-421d-a4a8-390f65884c61
87f626f9-c5a7-415f-8353-61d80fbc0d0d	f	400	2022-04-13 16:43:21.147051+05:30	2022-04-13 16:43:21.123097+05:30	1	92	85	86	69	70	2022-04-13	\N	\N	A	t	t	t	f	1	t	1	7b89b58f-173f-4afe-bc50-f46c262ab3b7	e0f75bac-ab88-4187-b97f-c5eba398676d	46831478-ba6c-448b-9759-0805c438d9dc
fbdda2ec-f8d9-43f2-84a7-e6bf44341eb2	f	398	2022-04-14 17:15:33.68386+05:30	2022-04-14 17:15:33.662145+05:30	1	92	85	86	69	70	2022-04-14	2022-12-31	\N	A	f	t	t	t	1	t	1	b3fba004-a423-43a6-9113-1d1a41cf0576	1ff2918b-d008-49b3-8edb-d9fd59b8f1a8	b2d52e67-cfe3-4a70-b98d-1005d617f245
691ddfc3-8e45-4bc2-9c11-dba1cc640a7e	f	303	2022-04-18 11:04:34.608535+05:30	2022-04-18 11:04:34.586665+05:30	1	92	85	86	69	70	2022-04-18	\N	\N	A	t	t	t	f	1	t	1	d98c417d-8472-4d0d-9dfa-ffc829159417	478ec547-f1ea-4c2e-8759-514753bc66ff	3f65c7c7-b5d8-4126-8025-9b8097f838da
8e064821-5b08-4750-b70c-2cc28d0a8ca2	f	391	2022-04-19 05:07:30.249952+05:30	2022-04-19 05:07:30.230615+05:30	1	92	85	86	69	70	2022-04-19	\N	\N	A	t	t	t	f	1	t	1	3ff9e67a-61c0-43a2-b4bf-9bb0d92cb84e	810733b3-8186-40ce-83fd-574bdd37abf3	3216685d-bb27-47fb-bc91-2dd9efd1cec0
1889ff20-9883-4eaf-8687-e097db29dba3	f	401	2022-04-19 21:54:27.561876+05:30	2022-04-19 21:54:27.540742+05:30	1	92	85	86	69	70	2022-04-19	\N	\N	A	t	t	t	f	1	t	1	389bd0d6-da50-4bf1-ad1f-d3da91d89213	b07cea35-34d5-4c8b-b67f-983ad77a276e	37d39258-dc17-478e-b545-ad76665d2bf9
26b8283a-ac95-49b9-a360-5a98e758f282	f	382	2022-04-20 15:14:58.62127+05:30	2022-04-20 15:14:58.600203+05:30	1	92	85	86	69	70	2022-04-20	\N	\N	A	t	t	t	f	1	t	1	a246dd4c-0583-473a-9026-e9c44ba8859c	a0fd4902-744e-43b5-aaf4-f5e498a9248e	694ca116-2757-4db7-83b5-934652afa144
7552054d-37ae-4529-8c71-c1658aad6b50	f	76	2022-04-22 09:45:38.926008+05:30	2022-04-22 09:45:38.904791+05:30	1	92	85	86	69	70	2022-04-22	\N	\N	A	t	t	t	f	1	t	1	9cd0274f-3bf0-4644-a1fe-0ebb28c0be6c	06696661-e024-45b8-a6b6-9dcf7efef248	d0099d91-22d4-46bb-9240-d4c2347622f6
3c4da4c4-4864-45ce-959a-fbab46dbce31	f	76	2022-04-23 09:56:46.533432+05:30	2022-04-23 09:56:46.513044+05:30	1	92	85	86	69	70	2022-04-23	\N	\N	A	t	t	t	f	1	t	1	4f684660-13b2-4823-bc13-d2edea17dbb7	1ef96f2a-8544-47d0-a248-4003ade95cfc	d0099d91-22d4-46bb-9240-d4c2347622f6
015e78ce-23d3-4a7f-99ca-f383fdd03e0e	f	391	2022-04-23 22:36:32.179601+05:30	2022-04-23 22:36:32.157552+05:30	1	92	85	86	69	70	2022-04-23	\N	\N	A	t	t	t	f	1	t	1	a5e22203-1d06-4887-b1ad-2c5940754382	40b3decf-345c-4c60-bd5f-625cf1120e6b	3216685d-bb27-47fb-bc91-2dd9efd1cec0
11fa4e73-24e5-41db-ac42-667fa963af6b	f	148	2022-04-23 23:09:25.608545+05:30	2022-04-23 23:09:25.58652+05:30	1	92	85	86	69	70	2022-04-23	\N	\N	A	t	t	t	f	1	t	1	379a9d10-ed8e-4ee3-81dc-09794d5091d2	ed6ee198-837e-4eb7-8567-b0bd872dab3a	24af5284-1575-431c-98ac-0daa85fe5d54
ea52a3bd-6092-46ac-9a27-ff75a334d016	f	391	2022-04-24 02:12:35.272394+05:30	2022-04-24 02:12:35.251897+05:30	1	92	85	86	69	70	2022-04-23	\N	\N	A	t	t	t	f	1	t	1	e5e25ac8-e95b-4863-aa56-ea527980398c	2906f2e6-28e6-4bc0-a3a6-f4d9dfcf82e9	3216685d-bb27-47fb-bc91-2dd9efd1cec0
5bd6ea82-bb41-4b37-8ae1-8906154bf677	f	391	2022-04-25 04:11:31.249636+05:30	2022-04-25 04:11:31.224033+05:30	1	92	85	86	69	70	2022-04-25	\N	\N	A	t	t	t	f	1	t	1	ab6aea22-1bcd-44ab-8424-ff52223d1e9b	be51cc06-83f3-4fb4-87c8-550fcd9b9537	3216685d-bb27-47fb-bc91-2dd9efd1cec0
b6e747dd-75c9-4ebc-9a35-a93f5a2f3ced	f	391	2022-04-25 04:55:48.62457+05:30	2022-04-25 04:55:48.603843+05:30	1	92	85	86	69	70	2022-04-25	\N	\N	A	t	t	t	f	1	t	1	ecbdf73b-7b33-453f-97d0-77d1894213eb	56f62830-f150-423a-886e-f9bdf520588e	3216685d-bb27-47fb-bc91-2dd9efd1cec0
dc7b8122-1a6e-4898-929b-12e2612c1792	f	31	2021-09-15 18:34:47.393918+05:30	2022-04-26 11:59:47.524171+05:30	1	92	85	86	69	70	2021-09-15	2022-12-31	\N	M	f	t	t	t	1	t	1	ded7822a-1355-40c1-aa0d-2335153d4d08	ce507a17-ece3-4829-bf85-42636bc24905	fbcaf1dd-4258-4d39-9b17-ecaec902973e
77a04f4d-66c5-432a-b21f-fe53c94697a4	f	403	2022-04-26 18:15:46.521912+05:30	2022-04-26 18:15:46.500502+05:30	1	92	85	86	69	70	2022-04-26	\N	\N	A	t	t	t	f	1	t	1	433328ea-c573-457a-8a13-7ee512679644	8aece7f5-8101-441d-9629-3ebc1fc89ea6	62954a31-f99b-4065-adbe-b59ab04a650a
32d84fe7-535d-43dc-8df3-8a81ea496e70	f	372	2022-02-27 15:13:42.686533+05:30	2022-04-28 09:23:02.100276+05:30	1	92	85	86	69	70	2022-02-27	2026-01-02	\N	M	f	t	t	f	1	t	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	8fcbbccc-e20b-4cec-8d3e-e8a0773bcee4	39278fd3-06e6-4e7e-86ca-e7c2d4cbe01a
2d46b538-4269-4ff8-9fbb-d1742eb7e117	f	372	2022-04-04 16:56:27.273918+05:30	2022-04-28 09:24:10.364245+05:30	1	92	85	86	69	70	2022-04-04	2026-12-31	\N	M	f	t	t	t	1	f	4	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a	1e0dc9f0-da57-441d-98bc-8e65abb6a26d	a866029c-0656-423e-9aad-a8888d1d7239
94d804b2-47ad-4a22-b81a-10979c5b49eb	f	21	2022-04-28 12:17:55.83372+05:30	2022-04-28 12:25:53.895351+05:30	1	92	85	86	69	70	2022-04-28	2022-10-28	\N	M	f	t	t	f	1	t	1	6601a605-41ec-459f-aff7-82340b2d3cc8	079062af-b65a-4edc-a55b-a1b6ee248fb1	8795b3d7-8e15-4e52-a14b-ef4c7a5e743f
26cb379b-aa2d-4f5a-b6d0-375fc8df58e5	f	371	2022-04-28 14:48:54.670619+05:30	2022-04-28 14:48:54.649142+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	fb6ddcc9-a887-4edf-8919-1bfbd07f8e29	9a2427b2-e5d9-4ca7-8c4e-5d66345017db	a95e9bee-9be6-40b5-9e33-76b00b8398f6
c5dc37f1-aa6d-4092-bfed-5ef8a3ac3405	f	371	2022-04-28 14:50:24.429929+05:30	2022-04-28 14:50:24.409642+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	941d3d5a-fe4f-4eb6-89fc-b3ec5778caa4	2f65562b-3f97-4b8c-adbc-847fd0bbc6f7	a95e9bee-9be6-40b5-9e33-76b00b8398f6
53d542d6-3a8c-40f1-9090-994a781041de	f	371	2022-04-28 14:57:41.190926+05:30	2022-04-28 14:57:41.14572+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	7bde9de7-d90f-4191-8899-5aa67898249a	26ab0303-1888-4f12-931f-e93bab859967	a95e9bee-9be6-40b5-9e33-76b00b8398f6
8e578fc8-af82-4b8f-9572-94ab597751ac	f	371	2022-04-28 15:33:45.621992+05:30	2022-04-28 15:33:45.597659+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	11bb5d1a-0440-42f5-baf7-f98cf82106bb	6b4451c4-9f6f-418b-b4cf-51f860000010	a95e9bee-9be6-40b5-9e33-76b00b8398f6
708372ea-043e-428d-8253-bb293a383ce1	f	371	2022-04-28 15:49:24.680433+05:30	2022-04-28 15:49:24.660219+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	0902ac47-a724-4d50-8880-365ca10e7943	c89d7ff0-c73d-4ea1-93a7-b87c24c8928f	a95e9bee-9be6-40b5-9e33-76b00b8398f6
c448916a-c3bb-4754-a5f5-cb77639f8cb6	f	371	2022-04-28 15:56:12.799822+05:30	2022-04-28 15:56:12.778158+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	819f10e7-7a00-4492-9475-db3f51fe0249	30b99801-9ab4-4e56-936e-be4a51149f33	a95e9bee-9be6-40b5-9e33-76b00b8398f6
5f45b496-6a19-4d55-b725-9eb82b6976a9	f	371	2022-04-28 16:26:37.365635+05:30	2022-04-28 16:26:37.344359+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	663e3799-85d8-4208-8024-c8b8216f322d	6437c9d9-eb06-46fd-bd37-61c30eca4d50	a95e9bee-9be6-40b5-9e33-76b00b8398f6
6936f2fb-2adb-41d6-a2c3-f9666bf31685	f	371	2022-04-28 16:31:50.27038+05:30	2022-04-28 16:31:50.249619+05:30	1	92	85	86	69	70	2022-04-28	\N	\N	A	t	t	t	f	1	t	1	bd0da7ad-bade-455b-bf27-31e311c2fcff	212bfec4-977b-4b24-8aad-6a66dc4494f5	a95e9bee-9be6-40b5-9e33-76b00b8398f6
ae392abb-259d-4189-9233-6cdb92ceab2e	f	36	2021-06-25 16:06:35.227916+05:30	2022-04-28 21:31:33.550799+05:30	1	92	85	86	69	70	2021-06-25	2023-03-31	\N	M	f	t	t	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	54d0fd5f-8b34-48b0-9658-036e01565707	2a27bb9c-848f-49da-90be-35afcb76d3f8
d945cbe7-60f3-4c70-b88f-d34ee0665ce5	f	382	2022-04-29 12:19:46.089853+05:30	2022-04-29 12:19:45.968825+05:30	1	92	85	86	69	70	2022-04-29	2022-12-31	\N	A	f	t	t	f	1	t	1	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32	c43f5b84-1398-42c1-a50c-67b4f44b46cf	6ba8c6f1-63af-4312-9d78-b6691e1c7989
acbd295a-1805-457b-813b-80e74d31db1c	f	406	2022-05-01 19:42:15.006311+05:30	2022-05-01 19:42:14.983322+05:30	1	92	85	86	69	70	2022-05-01	\N	\N	A	t	t	t	f	1	t	1	7effb1b1-a222-4119-9d7e-05e4142a20a0	f29be1aa-a7a7-4ee4-b199-60e7a2ea93c1	f5f340f2-2f5d-4efe-87e0-1a2734e2ede0
c3f37a27-74a4-4e9c-9f81-3eb002684371	f	76	2022-05-04 11:47:15.937689+05:30	2022-05-04 11:47:15.912392+05:30	1	92	85	86	69	70	2022-05-04	\N	\N	A	t	t	t	f	1	t	1	47c5669a-087c-4ab3-97ce-9e110e3dcf90	60364ab0-8335-468d-b081-4053053cef67	d0099d91-22d4-46bb-9240-d4c2347622f6
8adecaf1-266f-4eb0-ad8a-79617a41f15c	f	407	2022-05-06 11:54:21.7835+05:30	2022-05-06 11:54:21.758869+05:30	1	92	85	86	69	70	2022-05-06	\N	\N	A	t	t	t	f	1	t	1	3bca8b72-a84d-4279-8c4c-e7834bb00515	548072ed-7979-4338-9b22-78f151c1b7e4	cc87ecd7-6140-4470-8bd6-f59470dae0ce
224865bc-4cfa-4567-803f-1c4bbaac2747	f	21	2022-05-07 17:27:43.907217+05:30	2022-05-07 17:27:43.884243+05:30	1	92	85	86	69	70	2022-05-07	\N	\N	A	t	t	t	f	1	t	1	5215eb9e-f285-4ee2-8886-262b2a68fcb3	e7a102a1-2c25-4844-b225-63b67287061f	324b6dd2-8845-48ae-bf70-2950df15f490
701753d2-8290-44bd-a11f-d8c55c74a891	f	21	2022-05-07 19:22:36.591505+05:30	2022-05-07 19:22:36.572495+05:30	1	92	85	86	69	70	2022-05-07	\N	\N	A	t	t	t	f	1	t	1	e0af00ad-f367-4d55-b79f-6a77e389302b	334b3669-dbe4-4a4e-af69-c18ad1b3bd82	324b6dd2-8845-48ae-bf70-2950df15f490
9eaeed3a-cc5c-4c92-aa5f-59abae9ec22f	f	21	2022-05-07 19:34:15.123528+05:30	2022-05-07 19:34:15.098121+05:30	1	92	85	86	69	70	2022-05-07	\N	\N	A	t	t	t	f	1	t	1	f4a46e31-2eda-4013-942f-7aa8a2e6cf4c	2b5023ba-b890-4e42-8055-5c30b6e03ec8	324b6dd2-8845-48ae-bf70-2950df15f490
b8967088-7475-4d81-a045-e2327261ae22	f	36	2022-05-09 00:08:30.039038+05:30	2022-05-09 00:08:30.022794+05:30	1	92	85	86	69	70	2022-05-08	2025-12-31	\N	A	f	t	f	f	1	t	1	30e1c142-9b1a-4596-80fa-064565bbe2a6	dff453a3-fd12-45af-af32-4f00e7061d96	3e55f934-11cc-4a88-a5eb-8759f9c11285
920d7511-1321-474b-8f78-f3a279d1fece	f	391	2022-05-10 04:38:15.257848+05:30	2022-05-10 04:38:15.231465+05:30	1	92	85	86	69	70	2022-05-10	\N	\N	A	t	t	t	f	1	t	1	deae8417-9780-4806-92ae-66e0fc0bcf25	17398ded-4580-41d0-98d5-03aa985a2a96	3216685d-bb27-47fb-bc91-2dd9efd1cec0
9b4463e0-a83f-4fe3-9c61-d0a832f2f643	f	76	2022-05-10 09:51:36.252132+05:30	2022-05-10 09:51:36.229934+05:30	1	92	85	86	69	70	2022-05-10	\N	\N	A	t	t	t	f	1	t	1	8f8f0961-ca0b-4e63-a6ff-6d032adfb521	40a96989-f752-4fa9-b2e5-e0f152e388a0	d0099d91-22d4-46bb-9240-d4c2347622f6
c71a6442-aa5d-420f-aeb5-50b7ec97911a	f	46	2022-05-11 12:25:28.097267+05:30	2022-05-11 19:44:24.183965+05:30	1	92	85	86	69	70	2022-05-11	2026-03-31	\N	M	f	t	t	f	1	t	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	84027613-a7ac-4ae4-b29c-6e454507488d	ee397856-295b-46c0-9d79-9ab050b7c30f
aa9a455f-cb94-4ded-bd32-5d7ac3e191bd	f	46	2022-05-16 15:19:17.727196+05:30	2022-05-16 15:19:17.60427+05:30	1	92	85	86	69	70	2022-05-16	2026-12-10	\N	A	f	t	f	f	1	t	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	84027613-a7ac-4ae4-b29c-6e454507488d	172d4549-992e-4fb2-a18c-279c0cb51319
1f9a2184-77b8-435a-9d51-0ea87056a5ad	f	46	2022-05-19 12:45:52.359762+05:30	2022-05-19 13:38:41.018363+05:30	1	92	85	86	69	70	2022-05-19	2026-06-10	\N	M	f	t	f	f	1	t	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	a26071b5-4f31-4f32-923f-96a0ac19f66a	80d1b755-3e49-4764-ba8c-a875a7ace1de
7daec476-de00-46a5-841f-cd517d7e5605	f	449	2022-05-17 14:04:32.303412+05:30	2022-05-17 14:04:32.276669+05:30	1	92	85	86	69	70	2022-05-17	\N	\N	A	t	t	t	f	1	t	1	6255e028-8e21-40d3-a822-31c770a8235e	f7808de2-6e86-4320-8d0d-b2f9674f6669	491e2194-f77d-44ff-a8b5-126760e61304
2608127a-7614-4b8e-b792-a71772d1355b	f	391	2022-05-18 19:48:15.980359+05:30	2022-05-18 19:48:15.899932+05:30	1	92	85	86	69	70	2022-05-18	\N	\N	A	t	t	t	f	1	t	1	e5a5c952-2c37-4699-b6b1-a95249491eb8	2ac92045-5801-4673-af82-6b0766146987	3216685d-bb27-47fb-bc91-2dd9efd1cec0
a1966ef7-dc7e-4e13-ac33-a322261f498a	f	46	2022-05-21 17:10:53.288656+05:30	2022-05-21 17:10:53.261442+05:30	1	92	85	86	69	70	2022-05-21	2025-06-23	\N	A	f	t	f	f	1	t	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8	c53448a2-9acd-4a8b-b512-b232b899e617	\N
37e878ff-0a14-405d-850f-29265fafcff1	f	46	2022-05-21 17:30:13.45312+05:30	2022-05-21 17:30:13.32533+05:30	1	92	85	86	69	70	2022-05-21	2027-09-23	\N	A	f	t	f	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	85baa74c-7021-4852-be3f-bdf73f010326	1c5a13c2-86d6-4361-8bf0-f81553a849bf
bd0e010b-882e-404c-a44d-b929e75f8455	f	454	2022-05-24 11:58:51.6527+05:30	2022-05-24 11:58:51.627599+05:30	1	92	85	86	69	70	2022-05-24	\N	\N	A	t	t	t	f	1	t	1	85225fa8-cf46-4a69-807f-2dfff48287bc	20700965-a3d1-4622-9c08-646d40eda2cb	def591e1-1bbe-4c65-bd5b-39bb1f3a1a2a
63a6145b-040f-4b23-935e-3b8ab7ea269e	f	46	2022-05-24 20:56:59.508011+05:30	2022-05-24 20:59:30.938472+05:30	1	92	85	86	69	70	2022-05-24	2025-02-24	\N	M	f	t	f	f	1	t	1	54ba4163-584f-4d3f-bb02-120b9800ba97	2d53d0b5-b466-42c5-a529-1a387c11b134	ee08a362-15a6-4501-a98d-c899293012d2
1a694533-d94f-47cb-838e-0603e742ed00	f	82	2022-04-28 13:37:17.306433+05:30	2022-05-25 18:44:13.904175+05:30	1	92	85	86	69	70	2022-04-28	2022-12-14	\N	M	t	t	t	f	1	t	1	5aaa8093-4bb2-452e-8250-85b9d0c38d50	d0510361-837b-4dfd-8f28-0c596a583037	ff3c4d84-6ddd-4956-b6a9-149c023a7eb5
5b1888d8-5431-4619-b14c-ced5a5a8287f	f	82	2022-05-28 13:36:08.197024+05:30	2022-05-28 13:36:08.171096+05:30	1	92	85	86	69	70	2022-05-28	\N	\N	A	t	t	t	f	1	t	1	3df9f1ca-a499-4d67-8bf6-1e2583d97e7a	4c1e934b-52d9-4845-af6e-27148558a440	ff3c4d84-6ddd-4956-b6a9-149c023a7eb5
cf4317cc-50f4-45dd-90aa-75f5f110e4ed	f	457	2022-06-02 16:45:09.501563+05:30	2022-06-02 16:45:09.476852+05:30	1	92	85	86	69	70	2022-06-02	\N	\N	A	t	t	t	f	1	t	1	0a29adb7-a152-4a3c-a0e7-872db8b0be1f	1a7ff36b-d370-4034-bbfe-d60e8b11789c	6150dd93-e3be-4818-bb12-ab609108e573
550e8653-ce7a-4dc2-a4ac-48924c076ee8	f	188	2021-12-03 18:31:36.096235+05:30	2022-06-02 21:37:56.713638+05:30	1	92	85	86	69	70	2021-12-03	2022-12-03	\N	M	f	t	t	t	1	f	3	821d06a3-3da2-43fe-9e61-1bfd714c36cd	4e17d261-e207-4479-a50c-76135d97bd83	251b0d06-8a48-4998-ad7c-57320ee5d44c
15d93a94-a8a0-4871-a3d6-a9ae2d91ab9b	f	382	2022-06-03 11:26:55.985634+05:30	2022-06-03 11:26:55.960446+05:30	1	92	85	86	69	70	2022-06-03	\N	\N	A	t	t	t	f	1	t	1	f78592c4-f92f-483c-8278-55034bd265e6	02bea9da-aa36-4032-99f5-b3a30935f79c	694ca116-2757-4db7-83b5-934652afa144
4eb509a3-dc7a-4adb-ac13-25479d090c8c	f	458	2022-06-03 15:50:09.216086+05:30	2022-06-03 15:50:09.193246+05:30	1	92	85	86	69	70	2022-06-03	\N	\N	A	t	t	t	f	1	t	1	510e5554-216b-4e2a-9326-7c0ef5ba4ce9	792ae7ab-0c9d-43f0-ad1b-c69a6238e1a5	dedddde1-69cc-482c-9cb2-b9c4bb26f1f1
f1424629-0d49-4055-91e7-27154be3688c	f	76	2022-06-07 10:17:21.395186+05:30	2022-06-07 10:17:21.357837+05:30	1	92	85	86	69	70	2022-06-07	\N	\N	A	t	t	t	f	1	t	1	31411b4e-8721-4f68-a0df-fd06d6f5bdf9	2b4a2692-1d79-4f8e-aa96-6a8b6105bbcd	d0099d91-22d4-46bb-9240-d4c2347622f6
dfe547eb-532a-4445-a3ac-e92a8c342ddd	f	75	2022-06-07 10:44:57.476966+05:30	2022-06-07 10:44:57.453649+05:30	1	92	85	86	69	70	2022-06-07	\N	\N	A	t	t	t	f	1	t	1	f65d9558-9de8-4194-94a5-a33242fe3e80	9167dff1-d51e-4c1f-8b7c-952d1424b55a	fbcaf1dd-4258-4d39-9b17-ecaec902973e
301a6ffa-4dc8-4887-a179-da7b72f742c0	f	76	2022-06-07 12:04:35.227673+05:30	2022-06-07 12:04:35.204727+05:30	1	92	85	86	69	70	2022-06-07	\N	\N	A	t	t	t	f	1	t	1	4de62d91-a400-4be6-9db5-ab903eaa8c56	4e9638a8-ddd9-484e-b723-c246879e6fdd	d0099d91-22d4-46bb-9240-d4c2347622f6
3a667400-2edd-49cb-9584-f9f05a1f6d55	f	40	2022-06-07 16:27:34.384651+05:30	2022-06-07 16:27:34.362924+05:30	1	92	85	86	69	70	2022-06-07	\N	\N	A	t	t	t	f	1	t	1	355182fe-5711-4e3f-933f-0f7309caa27b	6c2e3133-3fc9-4237-b6fb-8095ae6c3efb	fe610ef6-53cf-4670-bc29-f17d988b737d
72ad0d9f-05e3-46c0-8bae-08563ef764a5	f	40	2022-06-07 16:29:26.12288+05:30	2022-06-07 16:29:26.098584+05:30	1	92	85	86	69	70	2022-06-07	\N	\N	A	t	t	t	f	1	t	1	6e16110d-22d0-42fd-96ec-dbb35a225b2a	6993fd9a-507d-4c65-b503-0910fe3bb71c	fe610ef6-53cf-4670-bc29-f17d988b737d
9861c033-5de6-4abc-9f1a-645e6786b703	f	76	2022-06-08 12:25:56.169396+05:30	2022-06-08 12:25:56.145435+05:30	1	92	85	86	69	70	2022-06-08	\N	\N	A	t	t	t	f	1	t	1	4c5b08f3-a3ac-47ff-bac1-9b950be34d63	f1d72bff-98b0-4559-ac54-d1fba9ea87eb	d0099d91-22d4-46bb-9240-d4c2347622f6
7d9b305f-b06e-4474-8263-2fa5ce34cbe3	f	76	2022-06-09 14:37:10.89051+05:30	2022-06-09 14:37:10.865299+05:30	1	92	85	86	69	70	2022-06-09	\N	\N	A	t	t	t	f	1	t	1	6c357b27-683f-42e7-9d94-1b1ffd0f41b9	eac3ed41-50a2-4b58-9c7d-b5d58240df16	d0099d91-22d4-46bb-9240-d4c2347622f6
7638e5c1-6170-4014-aff9-79c695f635cf	f	459	2022-06-10 13:35:13.600677+05:30	2022-06-10 13:35:13.563274+05:30	1	92	85	86	69	70	2022-06-10	\N	\N	A	t	t	t	f	1	t	1	7d124276-ca3e-4a70-9b2d-f9257641b881	2cf3d5a8-dbad-46d6-95e0-4e72fc021439	2ba21b02-7714-45e5-91a2-29609bd294b1
6e70d775-ba31-4371-a154-d10bc07dda4d	f	460	2022-06-13 09:47:02.01989+05:30	2022-06-13 09:47:01.994246+05:30	1	92	85	86	69	70	2022-06-13	\N	\N	A	t	t	t	f	1	t	1	90866a22-2468-4663-a77d-eb19c1c33152	cb23c562-2a9e-4e47-8f0e-72b9b3308c43	882460c1-1020-420c-8617-860d8ac669aa
53f8edc6-c029-467b-b8d5-f65c2b0d7163	f	461	2022-06-13 18:42:17.24435+05:30	2022-06-13 18:42:17.221285+05:30	1	92	85	86	69	70	2022-06-13	\N	\N	A	t	t	t	f	1	t	1	3c9f0bef-9eb0-4acb-a1dd-c4c1bb7cfa75	3643848c-db86-460b-8508-edca906a505e	812d0703-4cd0-4053-8caf-abf0f430fc14
bb1317b6-9729-4fc0-a8c1-975cca324083	f	463	2022-06-14 01:48:24.501887+05:30	2022-06-14 01:48:24.481438+05:30	1	92	85	86	69	70	2022-06-13	\N	\N	A	t	t	t	f	1	t	1	54ffbb90-97eb-4c45-b1f7-5407d9e417a7	4664d5f6-ceea-4060-ae95-24cca9a1823c	a6f5b798-f9fa-4ff5-80fb-207640fdff79
a3672b9c-196c-4106-8ac8-f3d5a3da510f	f	31	2022-06-17 15:25:52.347486+05:30	2022-06-17 15:25:52.326028+05:30	1	92	85	86	69	70	2022-06-17	\N	\N	A	t	t	t	f	1	t	1	66acff5c-29f2-483c-a9e7-018b381d00f8	e150d83b-0bc1-4a93-9fde-fc8f96f7f744	06baff7f-81a3-4580-9c5f-ab8ced555747
a65c5ba8-e8f1-4c82-871d-8a0e5c60728c	f	464	2022-06-19 20:13:45.208524+05:30	2022-06-19 20:13:45.181841+05:30	1	92	85	86	69	70	2022-06-19	\N	\N	A	t	t	t	f	1	t	1	2329fcd1-d87e-4648-84dc-3221154eaa0e	746170bc-d0d5-4d5d-8ba9-ff0b3139113f	450df48e-d6c9-4794-9a60-3aa8cd3c9b0c
0c565dbe-e606-4215-b9ce-e9060ceff701	t	463	2022-06-20 17:50:00.668567+05:30	2022-06-20 18:50:35.630377+05:30	1	92	85	86	69	70	2022-06-20	2023-07-13	\N	M	f	t	f	f	1	t	1	54ffbb90-97eb-4c45-b1f7-5407d9e417a7	6cfe919a-ead3-431e-a819-fd3b9b011eb6	fb5eccbe-942f-4eea-9df0-fdfcec242883
cf3ad49c-3ab0-40e6-93d5-5556f08a992e	f	467	2022-06-20 21:10:11.569974+05:30	2022-06-20 21:10:11.547061+05:30	1	92	85	86	69	70	2022-06-20	\N	\N	A	t	t	t	f	1	t	1	a147b367-1ae7-4130-afa0-653e2e4bd658	3c213f0d-c4de-4ef9-aaa5-36ff630253f8	914e1fdd-4090-49dd-a2a2-328e0ec258e3
150da8d5-e56d-4ec5-b827-9e78aa5979a4	f	468	2022-06-23 11:47:27.73975+05:30	2022-06-23 11:47:27.713235+05:30	1	92	85	86	69	70	2022-06-23	\N	\N	A	t	t	t	f	1	t	1	c676be3d-419f-40c1-98b5-2fcc5763e315	2129a5d6-122d-4bd5-9475-a3d055f92809	6ff61ae3-e905-4473-be9e-70abac963a6e
341424b6-d3c3-4bf8-ac84-7f9e0f90b277	f	31	2022-06-23 12:03:09.274356+05:30	2022-06-23 12:03:09.259046+05:30	1	92	85	86	69	70	2022-06-23	2022-12-31	\N	A	f	t	t	t	1	t	1	66acff5c-29f2-483c-a9e7-018b381d00f8	28064e81-9cdb-467a-bfd3-13c0c8ae93be	6ff61ae3-e905-4473-be9e-70abac963a6e
e471238f-762a-493a-8f31-5f6553337fc9	f	31	2022-06-23 13:12:15.628323+05:30	2022-06-23 13:12:15.613471+05:30	1	92	85	86	69	70	2022-06-23	2022-12-31	\N	A	f	t	t	t	1	t	1	ded7822a-1355-40c1-aa0d-2335153d4d08	a3bb19eb-83f4-4a59-828e-ce4241cb7af3	6ff61ae3-e905-4473-be9e-70abac963a6e
7bf72dfd-8ce6-4ecd-ad03-3481cd27f1a3	f	472	2022-06-27 11:39:37.989175+05:30	2022-06-27 11:39:37.965078+05:30	1	92	85	86	69	70	2022-06-27	\N	\N	A	t	t	t	f	1	t	1	d0f4a410-e463-4b9a-b619-6c180daa16cb	c3c5f896-47d8-4632-a89c-065ebd6a7a49	87f0e1a0-fb0b-40c0-a5fe-a67cf590ffa1
aa006d72-02dc-4fd0-a9d9-4e89ce93d8f2	f	473	2022-06-27 15:17:34.544562+05:30	2022-06-27 15:17:34.523358+05:30	1	92	85	86	69	70	2022-06-27	\N	\N	A	t	t	t	f	1	t	1	79bbad87-9900-4719-adf6-7e8f04b815a1	f23111c4-571e-4ee6-a5a3-a44c9973db58	85e84f56-98ea-4d79-894f-724713ee808e
cf90e166-d77f-4daa-bdcb-b11ec9ff53d1	f	475	2022-06-29 17:01:51.765887+05:30	2022-06-29 17:01:51.740476+05:30	1	92	85	86	69	70	2022-06-29	\N	\N	A	t	t	t	f	1	t	1	83c52e5b-4e94-4bde-b5a5-95699451982f	dd876e0f-2ee5-4be2-9ff0-0cd50a0d62b4	1834b97f-6c58-4bfa-acba-7f01e4cec20c
f56ff0f6-44b1-4f6f-a0f6-be63824b30c3	f	397	2022-06-29 18:37:10.295815+05:30	2022-06-29 18:37:10.274394+05:30	1	92	85	86	69	70	2022-06-29	\N	\N	A	t	t	t	f	1	t	1	fd11193b-749f-4743-a4e6-f4be9984f645	6ac7a44b-c963-4883-9d5b-067372e613cb	9da89b88-601e-4268-86cf-fa7c220bb62a
eeac3330-dbe7-40d1-b48a-7bed7f454bcf	f	476	2022-06-30 15:33:58.453972+05:30	2022-06-30 15:33:58.433291+05:30	1	92	85	86	69	70	2022-06-30	\N	\N	A	t	t	t	f	1	t	1	f181a8d1-e316-4cc1-8916-d1ba15fbc1bc	19e91b44-93eb-4621-91b2-144e1a297fd3	bc0d725f-dfc9-4894-bad3-a973c4ba9169
6512912b-5926-45ca-9b14-efc4d5fc8af3	f	477	2022-07-01 01:47:55.375228+05:30	2022-07-01 01:47:55.352323+05:30	1	92	85	86	69	70	2022-06-30	\N	\N	A	t	t	t	f	1	t	1	f5ce00d5-5b58-4b71-93a5-511582cca0d2	7de8195e-5294-43a3-85b0-d461ce0ae3d3	741bf597-cbe4-4c78-9bec-90d7be5d8daa
19da301c-22a0-41c2-8903-147686356843	f	31	2022-07-01 11:08:30.981279+05:30	2022-07-01 11:08:30.95808+05:30	1	92	85	86	69	70	2022-07-01	\N	\N	A	t	t	t	f	1	t	1	e50237cc-a192-4c1b-aaa3-595a5ff2f4b3	13d907ec-e931-4af6-9560-b4a517ad5c1b	06baff7f-81a3-4580-9c5f-ab8ced555747
0cab186c-4a50-4b27-9f77-e3dbe8182528	f	31	2022-07-01 11:25:21.064158+05:30	2022-07-01 11:25:21.049149+05:30	1	92	85	86	69	70	2022-07-01	2023-03-31	\N	A	f	t	t	f	1	t	1	e50237cc-a192-4c1b-aaa3-595a5ff2f4b3	cec518b1-0c39-4283-b61b-be029dde7564	6ff61ae3-e905-4473-be9e-70abac963a6e
40a4bd18-cec0-4cf0-a494-26db951f99f2	f	62	2022-07-06 16:59:06.077313+05:30	2022-07-06 16:59:06.058623+05:30	1	92	85	86	69	70	2022-07-06	\N	\N	A	t	t	t	f	1	t	1	b227d4fc-62c2-4c68-be70-81c893823ae5	744d971d-98e7-46fe-94df-bf76b807b30b	6467c567-1c74-463f-89bd-6ff2757b59c7
6ec8f040-42fa-488d-9e39-a337a8f8d076	f	478	2022-07-06 17:01:35.670653+05:30	2022-07-06 17:01:35.647791+05:30	1	92	85	86	69	70	2022-07-06	\N	\N	A	t	t	t	f	1	t	1	899b926a-b451-402b-9b8f-c0bc4bea3fc6	1e0605c1-bad7-44fd-9dfa-768051643dce	8e6e5e59-f833-49a6-b62a-5a7f1846270f
9e79dda0-50e2-4f7d-871a-7dd9cba06933	f	478	2022-07-06 17:09:58.543372+05:30	2022-07-06 17:09:54.823976+05:30	1	92	85	86	69	70	2022-07-06	2022-12-31	\N	A	f	t	t	t	1	t	1	899b926a-b451-402b-9b8f-c0bc4bea3fc6	1e0605c1-bad7-44fd-9dfa-768051643dce	aeed967c-057b-4e3d-aa63-2e4d9952e3d1
d103929a-b9d2-4c28-b57f-c6ab34dba888	f	481	2022-07-07 09:29:47.29978+05:30	2022-07-07 09:29:47.27251+05:30	1	92	85	86	69	70	2022-07-07	\N	\N	A	t	t	t	f	1	t	1	b2a29165-0728-4eb1-b887-374e6f27fa00	499014eb-a37e-498e-b27e-f598d4b5165b	5780620f-7c1a-4986-96ae-c8d1e9e1375f
7d32b7cf-ef01-4c3a-8cb4-16ad282b8a59	f	487	2022-07-08 10:22:57.090025+05:30	2022-07-08 10:22:57.061915+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	380fcc53-018c-4316-bd32-8c3f6b8f1974	6684a45e-8f2a-4f66-bafb-0115dc1cc88a	b8c71d6f-6d1d-4505-a325-ac2ba39bff61
1704a4d4-f95d-47a8-bb61-a40d90ae68ef	f	488	2022-07-08 13:23:26.306144+05:30	2022-07-08 13:23:26.283324+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	07f17601-8a85-42a8-97d7-8a48845404b3	f7c8bba9-54f6-4789-91c9-06dc706c63bb	0e4bfcd6-035b-4825-95bd-60da75bb7470
e0ed8bf6-6de8-433d-b531-1bf4fe2ad03e	f	489	2022-07-08 13:30:24.227997+05:30	2022-07-08 13:30:24.188136+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	9153785d-27de-4396-a461-30f90ed6746c	dd50a73e-7aaa-435e-8147-af06805949bf	f31711fb-57b1-4765-a845-67be6a4b4836
3b0ff8b1-b0d1-4fc8-bb70-c95011e85e01	f	490	2022-07-08 13:39:25.323055+05:30	2022-07-08 13:39:25.293739+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	3abd97e5-4720-4f71-bcc0-cf4c265e9f67	0e2d0114-822d-4963-be96-af550869bdf6	0a677741-a780-4101-a848-ecdfde36df6e
8e0712db-d07f-46c4-be63-f75f19afbdd4	f	491	2022-07-08 13:44:45.03046+05:30	2022-07-08 13:44:45.006569+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	29e3ab91-bd68-4c61-9878-570170a8c205	0e15cce1-347e-4dc8-82c3-f444b07401f0	e4d3dbcc-d4fc-48cb-be56-81d16313d143
a6ba5d0c-3cd5-4213-a8fb-550e2043547f	f	492	2022-07-08 14:05:18.650874+05:30	2022-07-08 14:05:18.627246+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	4e6f539f-f339-44ab-920f-dc5975efcf6c	dc7b7378-34b0-4a89-bb17-eba57098a0f1	824c07df-39da-4aa7-8ea8-ebd64f728f8a
0c996269-7196-4d6e-be1a-5a2d8feadd01	f	494	2022-07-08 15:51:05.199505+05:30	2022-07-08 15:51:05.175449+05:30	1	92	85	86	69	70	2022-07-08	\N	\N	A	t	t	t	f	1	t	1	ed268c11-b719-4f01-9907-e8328d736881	b538d9ca-0920-4bf6-8e94-741945cfe4e4	caf93b2a-e255-4973-92f1-1522d4e2ebe1
9cb19bc3-67d6-4f63-b86d-11c5fac27332	f	449	2022-07-12 13:37:20.305418+05:30	2022-07-12 13:37:20.280845+05:30	1	92	85	86	69	70	2022-07-12	\N	\N	A	t	t	t	f	1	t	1	b8f26e57-72a3-4d3e-a014-5dd28e6dbe96	bd506a23-663d-432e-aefa-5abc0d9931d8	491e2194-f77d-44ff-a8b5-126760e61304
100f7e02-4e53-4869-8aa7-23edf356cd1d	f	2	2022-07-12 13:48:32.292732+05:30	2022-07-12 13:48:32.174582+05:30	1	92	85	86	69	70	2022-07-12	2022-01-09	\N	A	f	t	f	f	1	t	1	cafb2501-ae79-46a0-a81f-ad22298c31b3	3b98da07-49ea-4ab8-93f8-372b1d92f046	1c1c5a3c-b8a3-44a6-af1a-40f461ac8287
bb562bac-0857-4883-b567-ed393ef8aa09	f	460	2022-07-12 13:55:14.25752+05:30	2022-07-12 13:55:14.236859+05:30	1	92	85	86	69	70	2022-07-12	\N	\N	A	t	t	t	f	1	t	1	3646174a-4190-42b7-8df2-f946cee71673	611ae50e-5def-47b4-bf11-734ba35b414a	882460c1-1020-420c-8617-860d8ac669aa
66445d19-e19c-4744-824a-a5bdf13e1a96	f	60	2022-07-12 14:15:07.932653+05:30	2022-07-12 14:15:07.912111+05:30	1	92	85	86	69	70	2022-07-12	\N	\N	A	t	t	t	f	1	t	1	85c625ee-110c-450b-8f3a-4b8ce24c6535	7acf3850-8933-4c68-ac50-d6e126d7f91a	41a6293a-8749-4aae-ad98-5b1850982798
\.


--
-- Data for Name: users_userTableLog; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public."users_userTableLog" (id, "TransactionID", "DefaultAccountForUser", "CreatedUserID", "CreatedDate", "UpdatedDate", "Cash_Account", "Bank_Account", "Sales_Account", "Sales_Return_Account", "Purchase_Account", "Purchase_Return_Account", "JoinedDate", "ExpiryDate", "LeaveDate", "Action", is_owner, is_web, is_mobile, is_pos, "BranchID", show_all_warehouse, "DefaultWarehouse", "CompanyID_id", "UserType_id", customer_id) FROM stdin;
\.


--
-- Data for Name: users_userType; Type: TABLE DATA; Schema: public; Owner: vikncodes
--

COPY public."users_userType" (id, "ID", "UserTypeName", "Notes", "CreatedUserID", "CreatedDate", "UpdatedDate", "Action", "IsActive", "BranchID", "CompanyID_id") FROM stdin;
a465212f-0c0d-475c-96cc-aad9ede742e6	1	Admin	Default Note	1	2021-07-23 09:21:29.264652+05:30	2020-06-01 02:30:00+05:30	A	f	1	8db0e6f6-488d-4d59-bd81-901211b1fdc2
4408ac34-0475-4ede-9b23-c5a1cea5e3ab	2	Staff	Default Note	1	2021-07-23 09:21:29.265968+05:30	2020-06-01 02:30:00+05:30	A	f	1	8db0e6f6-488d-4d59-bd81-901211b1fdc2
fa5e97b3-d18e-4464-a523-f1b97e704981	1	Admin	Default Note	1	2021-07-23 10:12:16.446154+05:30	2020-06-01 02:30:00+05:30	A	f	1	c99ad37f-c420-4b01-85b4-1da43c2d6960
3e6bf731-eec3-4e1e-9a6d-375a370dea26	2	Staff	Default Note	1	2021-07-23 10:12:16.44804+05:30	2020-06-01 02:30:00+05:30	A	f	1	c99ad37f-c420-4b01-85b4-1da43c2d6960
7052723f-0461-4d39-88d8-58d8d88288d5	1	Admin	Default Note	1	2021-07-23 14:32:49.714659+05:30	2020-06-01 02:30:00+05:30	A	f	1	7be77a2e-8bdc-42b1-bf85-9f7961b559d2
a31d45bb-a7c8-4102-a6de-308e307313c5	2	Staff	Default Note	1	2021-07-23 14:32:49.716293+05:30	2020-06-01 02:30:00+05:30	A	f	1	7be77a2e-8bdc-42b1-bf85-9f7961b559d2
735f38d2-ed05-449d-8a74-edbc8dd308b1	1	Admin	Default Note	1	2021-07-23 15:26:15.398069+05:30	2020-06-01 02:30:00+05:30	A	f	1	6be9db8f-b758-4d25-b8c0-cd2eabcdecad
a25510a4-2edc-47a5-b3c8-1f643792d6e5	2	Staff	Default Note	1	2021-07-23 15:26:15.399382+05:30	2020-06-01 02:30:00+05:30	A	f	1	6be9db8f-b758-4d25-b8c0-cd2eabcdecad
64a9a60f-1362-4070-baa4-8f1eb40be483	1	Admin	Default Note	1	2021-07-23 15:32:21.547539+05:30	2020-06-01 02:30:00+05:30	A	f	1	cafb2501-ae79-46a0-a81f-ad22298c31b3
3b98da07-49ea-4ab8-93f8-372b1d92f046	2	Staff	Default Note	1	2021-07-23 15:32:21.5488+05:30	2020-06-01 02:30:00+05:30	A	f	1	cafb2501-ae79-46a0-a81f-ad22298c31b3
8e941d97-0e3d-4fab-a25c-f37adf9acfec	1	Admin	Default Note	1	2021-07-23 17:27:30.12754+05:30	2020-06-01 02:30:00+05:30	A	f	1	0f393155-414c-4b13-a5e0-da3555ad179a
390eb0c3-1b72-4e11-9df1-733d62098db2	2	Staff	Default Note	1	2021-07-23 17:27:30.129057+05:30	2020-06-01 02:30:00+05:30	A	f	1	0f393155-414c-4b13-a5e0-da3555ad179a
faf0ca06-9653-4ab8-9798-84789fab8e84	1	Admin	Default Note	1	2021-07-23 21:55:14.101938+05:30	2020-06-01 02:30:00+05:30	A	f	1	b2d008f8-92d6-46cf-81ab-d4aad3f2a238
1d191dd3-2ecb-4c1e-9dd4-ce9f2ebe28cd	2	Staff	Default Note	1	2021-07-23 21:55:14.103268+05:30	2020-06-01 02:30:00+05:30	A	f	1	b2d008f8-92d6-46cf-81ab-d4aad3f2a238
22ea1a31-9796-4262-b7df-079075fbe49f	2	Staff	Default Note	1	2021-04-15 01:52:35.234+05:30	2020-06-01 02:30:00+05:30	A	f	1	bb16b31d-b2b4-4897-9611-aa17ebbb8152
25548626-d69d-48c4-8490-331008ddb881	2	Staff	Default Note	1	2021-03-17 12:45:03.647+05:30	2020-06-01 02:30:00+05:30	A	f	1	084d39dd-6fda-4b66-9ad9-ae86d0003a10
9de6690c-aa6b-4fa8-9d8e-69f7e6333ae8	1	Admin	Default Note	1	2021-07-27 15:19:32.771824+05:30	2020-06-01 02:30:00+05:30	A	f	1	633797a4-c23b-4ce3-b00f-aba93bd2c7ba
87b457ba-74c9-4a38-8b1e-b2518c548b4e	2	Staff	Default Note	1	2021-07-27 15:19:32.773692+05:30	2020-06-01 02:30:00+05:30	A	f	1	633797a4-c23b-4ce3-b00f-aba93bd2c7ba
d583eb6e-c288-43bf-bc51-3f7199c4abe3	1	Admin	Default Note	1	2021-07-28 16:20:54.318409+05:30	2020-06-01 02:30:00+05:30	A	f	1	35d738dd-d831-4404-827a-0c488b5f0948
4203ac64-7bb6-4695-80e5-4298cb424d61	2	Staff	Default Note	1	2021-07-28 16:20:54.321743+05:30	2020-06-01 02:30:00+05:30	A	f	1	35d738dd-d831-4404-827a-0c488b5f0948
33442ba4-da92-4dff-979c-07cb2bb4f662	1	Admin	Default Note	1	2021-05-19 21:20:40.161+05:30	2020-06-01 02:30:00+05:30	A	f	1	4848489c-59a1-448c-9a50-059db8b9d009
33e50336-8204-44a5-826b-348537797626	2	Staff	Default Note	1	2021-04-03 22:26:20.482+05:30	2020-06-01 02:30:00+05:30	A	f	1	2df75602-f5a7-4f20-a3ff-c662bd98ba06
2a9fd4b7-e2e1-44ea-80dd-3b3c327f24b9	1	Admin	Default Note	1	2021-07-30 12:38:37.326969+05:30	2020-06-01 02:30:00+05:30	A	f	1	4884f936-4496-4d8a-8850-3f096b66e46f
274f9d8d-f87a-479e-9c3d-9165bb274f1f	2	Staff	Default Note	1	2021-07-30 12:38:37.329668+05:30	2020-06-01 02:30:00+05:30	A	f	1	4884f936-4496-4d8a-8850-3f096b66e46f
dfbbe531-04cf-42a0-a718-7125b8401db6	1	Admin	Default Note	1	2021-07-31 12:16:00.181549+05:30	2020-06-01 02:30:00+05:30	A	f	1	6e8826fa-9655-4a24-b49b-5953141ab63e
7d5bc5a8-300b-420e-ae12-a6375e61a50d	2	Staff	Default Note	1	2021-07-31 12:16:00.18425+05:30	2020-06-01 02:30:00+05:30	A	f	1	6e8826fa-9655-4a24-b49b-5953141ab63e
5e04ed82-c730-4de8-aed6-37497136f26a	1	Admin	Default Note	1	2021-08-05 17:11:13.796171+05:30	2020-06-01 02:30:00+05:30	A	f	1	c77e1979-c361-4018-b0f7-304fcaa08a40
eabf71ca-a1f4-4508-a04d-90c75a19e9a2	2	Staff	Default Note	1	2021-08-05 17:11:13.800702+05:30	2020-06-01 02:30:00+05:30	A	f	1	c77e1979-c361-4018-b0f7-304fcaa08a40
e8b70c01-bc1e-4651-b7de-9fde5c6fa044	1	Admin	Default Note	1	2021-08-05 17:15:34.536873+05:30	2020-06-01 02:30:00+05:30	A	f	1	e0217e5f-d6da-4bf1-b72d-4961bff38753
86877190-3eac-43a6-8d65-e7f07a04b003	2	Staff	Default Note	1	2021-08-05 17:15:34.538392+05:30	2020-06-01 02:30:00+05:30	A	f	1	e0217e5f-d6da-4bf1-b72d-4961bff38753
67ea25cd-9ee4-4597-8688-02beabb2fe66	1	Admin	Default Note	1	2021-08-05 17:40:43.754587+05:30	2020-06-01 02:30:00+05:30	A	f	1	11b63b82-ad3f-4630-b436-85cb9aab9c5c
af599472-c905-41a9-b854-05a501ce388b	2	Staff	Default Note	1	2021-08-05 17:40:43.75598+05:30	2020-06-01 02:30:00+05:30	A	f	1	11b63b82-ad3f-4630-b436-85cb9aab9c5c
51b94075-b91b-4b97-b917-333f65d9aac7	1	Admin	Default Note	1	2021-08-09 22:17:30.505661+05:30	2020-06-01 02:30:00+05:30	A	f	1	05a071e7-d080-4b4e-b736-e65ea209078f
cf74edbe-9228-4972-9c88-51e76cb08377	2	Staff	Default Note	1	2021-08-09 22:17:30.507148+05:30	2020-06-01 02:30:00+05:30	A	f	1	05a071e7-d080-4b4e-b736-e65ea209078f
7d69d5b0-10db-4a92-ba80-a0bc4b8bd2c3	1	Admin	Default Note	1	2021-08-10 14:56:58.537909+05:30	2020-06-01 02:30:00+05:30	A	f	1	9d230133-6482-4c40-9de7-bbc986ec4256
623c2817-433f-4989-ad3a-a826e6b8d664	1	Admin	Default Note	1	2021-04-03 22:26:20.481+05:30	2020-06-01 02:30:00+05:30	A	f	1	2df75602-f5a7-4f20-a3ff-c662bd98ba06
7905b899-9861-4530-82e6-6ae8046409a4	2	Staff	Default Note	1	2021-08-10 14:56:58.53923+05:30	2020-06-01 02:30:00+05:30	A	f	1	9d230133-6482-4c40-9de7-bbc986ec4256
d91b3cf1-1a24-4c8d-bd55-8e1ec845f77c	3	accountant	\N	65	2021-08-10 21:39:56.473773+05:30	2021-08-10 21:39:56.468283+05:30	A	f	1	05a071e7-d080-4b4e-b736-e65ea209078f
79ed0cdd-706f-44e9-841e-b6f81af1544b	1	Admin	Default Note	1	2021-09-08 14:22:47.46009+05:30	2020-06-01 02:30:00+05:30	A	f	1	1a871202-f7e3-4e42-970c-8ea2c3eeed90
21a8c24b-46c3-48d9-a425-f1768640b0ca	2	Staff	Default Note	1	2021-09-08 14:22:47.463737+05:30	2020-06-01 02:30:00+05:30	A	f	1	1a871202-f7e3-4e42-970c-8ea2c3eeed90
37e1ebe9-cac8-4843-9251-bd419cf611cb	1	Admin	Default Note	1	2021-09-16 10:49:43.823748+05:30	2020-06-01 02:30:00+05:30	A	f	1	739ce9e6-e213-4a3d-9ff3-3d44833d2b2c
63917370-e132-4824-b935-188b3cb844e4	2	Staff	Default Note	1	2021-09-16 10:49:43.827493+05:30	2020-06-01 02:30:00+05:30	A	f	1	739ce9e6-e213-4a3d-9ff3-3d44833d2b2c
af9d7ff9-59e4-418e-a719-299036a6b7a4	1	Admin	Default Note	1	2021-09-17 09:33:53.193072+05:30	2020-06-01 02:30:00+05:30	A	f	1	faa5285d-2d06-4175-b907-8f6ef2672205
12a37b7e-1b41-475c-980e-cf59afee62da	2	Staff	Default Note	1	2021-09-17 09:33:53.196582+05:30	2020-06-01 02:30:00+05:30	A	f	1	faa5285d-2d06-4175-b907-8f6ef2672205
ef46ccc8-1d84-4396-8692-3ef554d49340	1	Admin	Default Note	1	2021-09-20 19:08:02.063908+05:30	2020-06-01 02:30:00+05:30	A	f	1	39c1465d-c3a6-481e-85d7-64323ccc39d0
805ef2a1-f17c-4e05-913f-a66a68427928	2	Staff	Default Note	1	2021-09-20 19:08:02.065722+05:30	2020-06-01 02:30:00+05:30	A	f	1	39c1465d-c3a6-481e-85d7-64323ccc39d0
031f3563-5b84-4819-bf50-86816e4592d6	1	Admin	Default Note	1	2021-09-20 20:58:02.39715+05:30	2020-06-01 02:30:00+05:30	A	f	1	22e4be51-1a5c-4f37-ac41-2b644a1663c9
7c111414-ecd4-4511-b6f1-0925be068efd	2	Staff	Default Note	1	2021-09-20 20:58:02.399247+05:30	2020-06-01 02:30:00+05:30	A	f	1	22e4be51-1a5c-4f37-ac41-2b644a1663c9
46ba4ca0-1803-4c76-bfae-e1529cbc5b55	1	Admin	Default Note	1	2021-09-21 10:23:24.015052+05:30	2020-06-01 02:30:00+05:30	A	f	1	f4cfc7da-27fc-4765-9c7e-3984fbf2954f
3d6a9225-c1a8-4da2-83d8-7931ad308a4e	2	Staff	Default Note	1	2021-09-21 10:23:24.017313+05:30	2020-06-01 02:30:00+05:30	A	f	1	f4cfc7da-27fc-4765-9c7e-3984fbf2954f
f76b9648-1a2d-44ef-a95e-81747c555531	1	Admin	Default Note	1	2021-09-23 15:19:58.13273+05:30	2020-06-01 02:30:00+05:30	A	f	1	514b8798-7ffe-451d-8195-ed2b38fef7d3
239e1cdc-621d-4232-bf39-183b78a5a7e6	2	Staff	Default Note	1	2021-09-23 15:19:58.134172+05:30	2020-06-01 02:30:00+05:30	A	f	1	514b8798-7ffe-451d-8195-ed2b38fef7d3
a989149d-3bc9-43e8-91cc-c566f1398356	1	Admin	Default Note	1	2021-09-25 13:26:56.164132+05:30	2020-06-01 02:30:00+05:30	A	f	1	380f057b-d36a-4510-9662-864c2fafbd40
38beccf7-6cf3-452c-966d-4b5adb81bfce	2	Staff	Default Note	1	2021-09-25 13:26:56.166263+05:30	2020-06-01 02:30:00+05:30	A	f	1	380f057b-d36a-4510-9662-864c2fafbd40
8122cac6-8d2d-4f78-88a1-024431615418	1	Admin	Default Note	1	2021-09-26 13:35:21.888314+05:30	2020-06-01 02:30:00+05:30	A	f	1	8ae6a8c2-dc63-4d3c-95be-ff283fdcbfb0
58a297c3-b570-4eed-aacf-d185ffc68f9e	2	Staff	Default Note	1	2021-09-26 13:35:21.89096+05:30	2020-06-01 02:30:00+05:30	A	f	1	8ae6a8c2-dc63-4d3c-95be-ff283fdcbfb0
94a6dbc5-b422-4840-a347-cfd5fd8f2919	1	Admin	Default Note	1	2021-09-26 23:32:56.995222+05:30	2020-06-01 02:30:00+05:30	A	f	1	e99a0988-637e-454f-b566-805159df8b97
a4050c14-d330-4d42-bb6b-2fd4e362b73a	2	Staff	Default Note	1	2021-09-26 23:32:56.996753+05:30	2020-06-01 02:30:00+05:30	A	f	1	e99a0988-637e-454f-b566-805159df8b97
ce58bd68-ee42-42cd-96ab-3bcd2f6d3152	1	Admin	Default Note	1	2021-10-01 11:18:53.589869+05:30	2020-06-01 02:30:00+05:30	A	f	1	df9a7e6c-11bd-49af-b35e-f48b116f95a6
e6822214-ca3c-4d03-bde9-e094b6443bda	2	Staff	Default Note	1	2021-10-01 11:18:53.593471+05:30	2020-06-01 02:30:00+05:30	A	f	1	df9a7e6c-11bd-49af-b35e-f48b116f95a6
724aeea1-09e3-4544-9a8b-ba423a3d4526	1	Admin	Default Note	1	2021-07-23 14:33:28.148845+05:30	2020-06-01 02:30:00+05:30	A	f	1	e3b4870c-33ad-463a-95bc-889ec221cd4d
77dbd6af-512b-4ffd-9967-b2065f96ff28	1	Admin	Default Note	1	2021-04-15 01:52:35.233+05:30	2020-06-01 02:30:00+05:30	A	f	1	bb16b31d-b2b4-4897-9611-aa17ebbb8152
e81c2df8-7844-45e2-a3ca-d399e5bba8d7	2	Staff	Default Note	1	2021-07-23 14:33:28.150205+05:30	2020-06-01 02:30:00+05:30	A	f	1	e3b4870c-33ad-463a-95bc-889ec221cd4d
b42a6564-12ef-44e3-8af3-6e9c42e2bdb5	1	Admin	Default Note	1	2021-09-16 10:51:00.935663+05:30	2020-06-01 02:30:00+05:30	A	f	1	d05198b3-47e0-4d5e-ab67-1562ffa9f688
f9a419ad-5d16-48ba-bf0b-51e5a921c8db	2	Staff	Default Note	1	2021-09-16 10:51:00.937288+05:30	2020-06-01 02:30:00+05:30	A	f	1	d05198b3-47e0-4d5e-ab67-1562ffa9f688
8556ba99-4565-40a4-8aed-db6d2a4c5f02	1	Admin	Default Note	1	2021-10-01 11:23:52.660319+05:30	2020-06-01 02:30:00+05:30	A	f	1	e3d49bf9-17c5-4e38-9997-25215b50e505
8522ddb0-c366-4976-85af-f4dfd60e909d	2	Staff	Default Note	1	2021-01-14 20:54:37.275+05:30	2020-06-01 00:00:00+05:30	A	f	1	2064907b-3dd6-4efe-a449-d2f3ad4bf9c4
857a581b-cbe3-4142-8023-09a1f46dd7fc	1	Admin	Default Note	1	2021-03-17 12:45:03.646+05:30	2020-06-01 02:30:00+05:30	A	f	1	084d39dd-6fda-4b66-9ad9-ae86d0003a10
7c8d18db-a6be-443a-a502-f7ede613612a	2	Staff	Default Note	1	2021-10-01 11:23:52.66193+05:30	2020-06-01 02:30:00+05:30	A	f	1	e3d49bf9-17c5-4e38-9997-25215b50e505
8ae47f8d-cfb5-476e-8366-de01fd4621c9	1	Admin	Default Note	1	2021-04-08 21:57:43.476+05:30	2020-06-01 02:30:00+05:30	A	f	1	64b0f5aa-c066-4bab-b606-73a85963f666
f66c9b23-d773-4398-b54a-479fa3d0b5b0	1	Admin	Default Note	1	2021-10-01 11:27:34.155981+05:30	2020-06-01 02:30:00+05:30	A	f	1	d9a91d63-2e50-4fc2-be07-e66a5f9add80
37f56127-79e0-4ed3-937e-6a0caf0b30c2	2	Staff	Default Note	1	2021-10-01 11:27:34.157443+05:30	2020-06-01 02:30:00+05:30	A	f	1	d9a91d63-2e50-4fc2-be07-e66a5f9add80
92249126-4f3a-45f9-a8f9-7331c9d2cf31	1	Admin	Default Note	1	2021-04-25 01:08:48+05:30	2020-06-01 02:30:00+05:30	A	f	1	878acf1f-6090-47f6-ab00-2b0f61cbcce6
9b787178-11c2-46bd-94ea-3e94e72ec893	2	Staff	Default Note	1	2021-04-25 01:08:48.001+05:30	2020-06-01 02:30:00+05:30	A	f	1	878acf1f-6090-47f6-ab00-2b0f61cbcce6
c62df2e2-030e-4b55-87ac-4c2d1d8d6821	1	Admin	Default Note	1	2021-10-01 20:08:20.08362+05:30	2020-06-01 02:30:00+05:30	A	f	1	bd326aa7-e4d5-46a0-a186-ab18c7601861
c40e7a47-843c-4568-bae9-3b0361a5e616	2	Staff	Default Note	1	2021-10-01 20:08:20.084955+05:30	2020-06-01 02:30:00+05:30	A	f	1	bd326aa7-e4d5-46a0-a186-ab18c7601861
ac7dae93-e7b5-4ffd-9e03-7d2304ef1f4c	2	Staff	Default Note	1	2021-04-08 21:57:43.478+05:30	2020-06-01 02:30:00+05:30	A	f	1	64b0f5aa-c066-4bab-b606-73a85963f666
97ba3c82-1267-4c80-a85e-2a3922750edf	1	Admin	Default Note	1	2021-10-07 15:56:58.061776+05:30	2020-06-01 02:30:00+05:30	A	f	1	dc90ba64-a612-4f54-98c8-3b2958252025
afb738d2-884d-453b-8de2-771f670c7132	2	Staff	Default Note	1	2021-04-24 02:39:11.493+05:30	2020-06-01 02:30:00+05:30	A	f	1	05f9f96d-36c5-4069-960c-5356493bf308
250920e3-f9e8-4cdd-975a-362a9f029c8e	2	Staff	Default Note	1	2021-10-07 15:56:58.063061+05:30	2020-06-01 02:30:00+05:30	A	f	1	dc90ba64-a612-4f54-98c8-3b2958252025
055ac715-5ab7-4fb0-bcbd-33a23653b775	1	Admin	Default Note	1	2021-10-30 14:58:13.333183+05:30	2020-06-01 02:30:00+05:30	A	f	1	81dfac4b-d05d-4df1-83ef-b2ecd9bf48b2
c0e532e4-b53e-47a8-9c69-3521aac41e36	2	Staff	Default Note	1	2021-05-26 03:46:06.504+05:30	2020-06-01 02:30:00+05:30	A	f	1	343e4652-7e73-4f3c-967f-fba6122da413
5ae31224-9a6c-48a8-b51e-43ef27c35870	2	Staff	Default Note	1	2021-10-30 14:58:13.334554+05:30	2020-06-01 02:30:00+05:30	A	f	1	81dfac4b-d05d-4df1-83ef-b2ecd9bf48b2
65c48b03-8bef-42a5-a87c-c018ae967db6	1	Admin	Default Note	1	2021-10-31 20:53:27.882354+05:30	2020-06-01 02:30:00+05:30	A	f	1	adfe0099-614a-45ea-87a5-18c0bafbd87b
f71fa104-1425-46fb-8768-5299785b3ebe	2	Staff	Default Note	1	2021-10-31 20:53:27.884193+05:30	2020-06-01 02:30:00+05:30	A	f	1	adfe0099-614a-45ea-87a5-18c0bafbd87b
68aa79ad-ae16-415a-adea-398aa068ec01	3	sales	\N	82	2021-11-02 14:14:01.010443+05:30	2021-11-02 14:14:01.004541+05:30	A	f	1	def89dfa-fa07-494c-b9d2-fdc356ff7390
cf52b980-d708-4100-b298-1ce4eb0c8616	1	Admin	Default Note	1	2021-01-15 19:00:18.288+05:30	2020-06-01 00:00:00+05:30	A	f	1	8ecd67fb-e2f4-4da0-b6ce-2b14127e3459
be351d0d-7908-4e07-b45e-d40a9d70ef12	1	Admin	Default Note	1	2021-11-03 10:52:23.908275+05:30	2020-06-01 02:30:00+05:30	A	f	1	ad6522e3-a264-40cc-8afb-e87f5b46ad66
81240604-cec7-4a5e-831e-fd5b7d2db9bb	2	Staff	Default Note	1	2021-11-03 10:52:23.910404+05:30	2020-06-01 02:30:00+05:30	A	f	1	ad6522e3-a264-40cc-8afb-e87f5b46ad66
d3893fb8-4e24-489f-a279-264faa233f4e	2	Staff	Default Note	1	2021-04-19 23:10:10.768+05:30	2020-06-01 02:30:00+05:30	A	f	1	c165f46b-02f4-4632-85ad-2abe55cf40d7
27b939e8-f9e9-49c1-bdcb-fbca29a7e151	1	Admin	Default Note	1	2021-11-03 20:50:54.647146+05:30	2020-06-01 02:30:00+05:30	A	f	1	f0c06f47-1a55-450b-b4e5-a410afe78803
d7d1f717-017b-493f-aabc-0c38ac904d00	2	Staff	Default Note	1	2021-01-15 19:00:18.289+05:30	2020-06-01 00:00:00+05:30	A	f	1	8ecd67fb-e2f4-4da0-b6ce-2b14127e3459
0f07c214-b34a-4a2a-865f-5fc7c0c85979	2	Staff	Default Note	1	2021-11-03 20:50:54.648806+05:30	2020-06-01 02:30:00+05:30	A	f	1	f0c06f47-1a55-450b-b4e5-a410afe78803
dafb2b79-4e3c-438d-a47d-3b7840f992b2	1	Admin	Default Note	1	2021-05-26 03:46:06.503+05:30	2020-06-01 02:30:00+05:30	A	f	1	343e4652-7e73-4f3c-967f-fba6122da413
c0598bc2-967f-47af-b353-758ce9298228	1	Admin	Default Note	1	2021-11-04 12:56:48.875767+05:30	2020-06-01 02:30:00+05:30	A	f	1	e1c64904-40fc-4693-958f-184d2017ed65
8923e2b5-3764-434e-9472-6dff901af4f5	2	Staff	Default Note	1	2021-11-04 12:56:48.878865+05:30	2020-06-01 02:30:00+05:30	A	f	1	e1c64904-40fc-4693-958f-184d2017ed65
e4715b93-f93e-404f-a52f-00697052092b	1	Admin	Default Note	1	2021-04-19 23:10:10.767+05:30	2020-06-01 02:30:00+05:30	A	f	1	c165f46b-02f4-4632-85ad-2abe55cf40d7
19d46e0a-3cdd-4729-9dee-daddfb4b94dc	1	Admin	Default Note	1	2021-11-05 11:38:18.83103+05:30	2020-06-01 02:30:00+05:30	A	f	1	fee75eb9-a4ee-4003-aab4-348844106ae2
62150003-62e6-4bfb-ba58-45b8046f7ec6	2	Staff	Default Note	1	2021-11-05 11:38:18.833348+05:30	2020-06-01 02:30:00+05:30	A	f	1	fee75eb9-a4ee-4003-aab4-348844106ae2
e91274eb-3697-4533-bee6-14ca4b78d217	1	Admin	Default Note	1	2021-04-24 02:39:11.492+05:30	2020-06-01 02:30:00+05:30	A	f	1	05f9f96d-36c5-4069-960c-5356493bf308
428e1827-37d5-4a9a-b2d3-8cfb22a52a73	1	Admin	Default Note	1	2021-11-06 15:35:24.120855+05:30	2020-06-01 02:30:00+05:30	A	f	1	06e243cc-0967-4abc-9ba6-0cba46ba6b76
eb89912a-f183-4ef5-993b-f1bc404a5900	2	Staff	Default Note	1	2021-05-19 21:20:40.162+05:30	2020-06-01 02:30:00+05:30	A	f	1	4848489c-59a1-448c-9a50-059db8b9d009
f37a6803-28af-438a-a76b-87d1f8713dd0	1	Admin	Default Note	1	2021-01-14 20:54:37.274+05:30	2020-06-01 00:00:00+05:30	A	f	1	2064907b-3dd6-4efe-a449-d2f3ad4bf9c4
628c30f3-6aa4-4caf-a7f4-16034389c833	2	Staff	Default Note	1	2021-11-06 15:35:24.123757+05:30	2020-06-01 02:30:00+05:30	A	f	1	06e243cc-0967-4abc-9ba6-0cba46ba6b76
6b595ca8-7035-450f-acb2-570b3bdba9aa	3	Sales Man	\N	83	2021-11-06 17:49:12.304642+05:30	2021-11-06 17:49:12.295819+05:30	A	f	1	70106d11-672e-40ea-9f50-a5495faa515a
69da5ee0-d66b-462b-ad06-b8f1f8a2489b	3	sales executive	\N	92	2021-11-06 21:44:20.034072+05:30	2021-11-06 21:44:20.027502+05:30	A	f	1	f0c06f47-1a55-450b-b4e5-a410afe78803
7152465d-dd4a-482e-9714-481decc4cce7	1	Admin	Default Note	1	2021-11-07 00:45:09.548841+05:30	2020-06-01 02:30:00+05:30	A	f	1	02551eab-9dd6-42a9-bd32-e58ae0dbe548
ed8561d3-e926-4b21-bd43-cd02dddcd857	2	Staff	Default Note	1	2021-11-07 00:45:09.550367+05:30	2020-06-01 02:30:00+05:30	A	f	1	02551eab-9dd6-42a9-bd32-e58ae0dbe548
4f724927-b8d9-44df-9b18-35e5dd80f728	1	Admin	Default Note	1	2021-11-07 00:46:46.166352+05:30	2020-06-01 02:30:00+05:30	A	f	1	7b06282d-5d53-4e02-b2c8-35e44428866e
a1e0a2bc-db08-4994-a4f6-0febb7bb7e92	2	Staff	Default Note	1	2021-11-07 00:46:46.168359+05:30	2020-06-01 02:30:00+05:30	A	f	1	7b06282d-5d53-4e02-b2c8-35e44428866e
9dd8124d-7319-4d6b-892a-61d90b6bd109	1	Admin	Default Note	1	2021-11-07 00:47:29.635199+05:30	2020-06-01 02:30:00+05:30	A	f	1	5c49d7f2-e91f-4dcc-8119-4d99fb1b1131
96bc28d0-80af-4c79-81fe-8c04e449b9b5	2	Staff	Default Note	1	2021-11-07 00:47:29.63712+05:30	2020-06-01 02:30:00+05:30	A	f	1	5c49d7f2-e91f-4dcc-8119-4d99fb1b1131
3cb16a48-230b-483e-b40e-2bf52eeb2cb9	1	Admin	Default Note	1	2021-11-09 13:40:50.566599+05:30	2020-06-01 02:30:00+05:30	A	f	1	8784b5b2-94e0-4357-b178-f40be7af55b3
fcb29c9a-cb5b-497e-888d-af7dc067b34d	2	Staff	Default Note	1	2021-11-09 13:40:50.570149+05:30	2020-06-01 02:30:00+05:30	A	f	1	8784b5b2-94e0-4357-b178-f40be7af55b3
1405596c-b891-441c-8f0d-259307223ef9	1	Admin	Default Note	1	2021-11-10 16:20:11.609152+05:30	2020-06-01 02:30:00+05:30	A	f	1	417147a0-4ba1-4feb-a826-bdcbb3319fb9
d141cdf4-0395-4d60-84b1-911268982b90	2	Staff	Default Note	1	2021-11-10 16:20:11.611572+05:30	2020-06-01 02:30:00+05:30	A	f	1	417147a0-4ba1-4feb-a826-bdcbb3319fb9
49ab6c5f-c711-44b4-9a5b-b13c8fbda252	1	Admin	Default Note	1	2021-11-10 22:23:06.858944+05:30	2020-06-01 02:30:00+05:30	A	f	1	97ba1b7c-1ebc-44cd-87fd-b13c5ad59e5b
0be9bb69-1384-4809-b14b-5486c4f61aae	2	Staff	Default Note	1	2021-11-10 22:23:06.860653+05:30	2020-06-01 02:30:00+05:30	A	f	1	97ba1b7c-1ebc-44cd-87fd-b13c5ad59e5b
d1d0e962-9842-426d-884e-db5fb30ffb24	1	Admin	Default Note	1	2021-11-14 22:13:24.46993+05:30	2020-06-01 02:30:00+05:30	A	f	1	bae725f9-8660-4c26-952c-547ccaba8380
16c243e1-d0dd-4431-8116-8651491aefd5	2	Staff	Default Note	1	2021-11-14 22:13:24.474846+05:30	2020-06-01 02:30:00+05:30	A	f	1	bae725f9-8660-4c26-952c-547ccaba8380
0e2226d9-93d4-46f5-91c3-7b3a9dffdd39	1	Admin	Default Note	1	2021-10-01 11:25:34.778211+05:30	2020-06-01 02:30:00+05:30	A	f	1	597de874-8040-46f0-ae1f-9b552d0e0e2f
2fa70618-0e1a-4c2f-b6cf-3be93bf4bc4a	2	Staff	Default Note	1	2021-10-01 11:25:34.780116+05:30	2020-06-01 02:30:00+05:30	A	f	1	597de874-8040-46f0-ae1f-9b552d0e0e2f
bf7dd263-0bf5-41f7-a1e4-39881f006626	1	Admin	Default Note	1	2021-10-01 20:07:30.548631+05:30	2020-06-01 02:30:00+05:30	A	f	1	a7bc7605-e44c-4f06-8cd2-f4e8bb1f00f0
affb3d05-16d8-45de-adfa-ea6f1de04f74	2	Staff	Default Note	1	2021-10-01 20:07:30.550972+05:30	2020-06-01 02:30:00+05:30	A	f	1	a7bc7605-e44c-4f06-8cd2-f4e8bb1f00f0
5ab7da00-16b0-43f7-ba1b-e7ef113c5fcb	1	Admin	Default Note	1	2021-10-02 11:20:14.78051+05:30	2020-06-01 02:30:00+05:30	A	f	1	1b0083fb-5a75-4562-9b4b-613e27a2222e
ce507a17-ece3-4829-bf85-42636bc24905	1	Admin	Default Note	1	2021-06-15 09:54:56.160168+05:30	2020-06-01 02:30:00+05:30	A	f	1	ded7822a-1355-40c1-aa0d-2335153d4d08
a1706b6e-9cd7-487b-82d2-60f30645993b	2	Staff	Default Note	1	2021-06-15 09:54:56.161595+05:30	2020-06-01 02:30:00+05:30	A	f	1	ded7822a-1355-40c1-aa0d-2335153d4d08
54d0fd5f-8b34-48b0-9658-036e01565707	1	Admin	Default Note	1	2021-06-18 19:20:33.648108+05:30	2020-06-01 02:30:00+05:30	A	f	1	54ba4163-584f-4d3f-bb02-120b9800ba97
85baa74c-7021-4852-be3f-bdf73f010326	2	Staff	Default Note	1	2021-06-18 19:20:33.650136+05:30	2020-06-01 02:30:00+05:30	A	f	1	54ba4163-584f-4d3f-bb02-120b9800ba97
8e4d10a0-0126-4f64-a393-99a7dcec4c58	3	Sales man	\N	36	2021-06-18 22:41:39.715168+05:30	2021-06-18 22:41:39.709514+05:30	A	f	1	54ba4163-584f-4d3f-bb02-120b9800ba97
bdf966d2-0e03-4814-9ca3-98a3fd3ac990	2	Staff	Default Note	1	2021-10-02 11:20:14.782971+05:30	2020-06-01 02:30:00+05:30	A	f	1	1b0083fb-5a75-4562-9b4b-613e27a2222e
500bb328-c6c5-49c6-a672-d0b1e75907d5	1	Admin	Default Note	1	2021-10-02 11:26:59.479403+05:30	2020-06-01 02:30:00+05:30	A	f	1	82a6282d-3df3-40cc-accd-46210965843f
a5dc5dbf-1da1-46cb-a335-e0de2aedf786	1	Admin	Default Note	1	2021-06-20 00:18:46.046833+05:30	2020-06-01 02:30:00+05:30	A	f	1	6fe810cd-e99d-4d28-8dd3-303553fe14e2
6455a151-9d66-44c7-95f0-da976f7f173c	2	Staff	Default Note	1	2021-06-20 00:18:46.050262+05:30	2020-06-01 02:30:00+05:30	A	f	1	6fe810cd-e99d-4d28-8dd3-303553fe14e2
322a36d0-1c33-41ff-8913-f73cca947c59	2	Staff	Default Note	1	2021-10-02 11:26:59.480904+05:30	2020-06-01 02:30:00+05:30	A	f	1	82a6282d-3df3-40cc-accd-46210965843f
2230a351-b222-4073-b6cf-ea83b963ef7d	1	Admin	Default Note	1	2021-10-02 14:46:49.277576+05:30	2020-06-01 02:30:00+05:30	A	f	1	fea7a719-3a31-4194-9612-2993a8f361d5
2a606886-44b0-471d-99c3-079717db56c6	2	Staff	Default Note	1	2021-10-02 14:46:49.279016+05:30	2020-06-01 02:30:00+05:30	A	f	1	fea7a719-3a31-4194-9612-2993a8f361d5
46dfe314-3ff5-4e0f-b957-fb0d5310a7f2	1	Admin	Default Note	1	2021-10-04 10:35:49.500545+05:30	2020-06-01 02:30:00+05:30	A	f	1	c1105db0-5b80-44fe-a80c-505e0eeebeb4
b857c567-0c81-4641-83fd-a82ff7eeb192	1	Admin	Default Note	1	2021-06-28 13:01:53.773828+05:30	2020-06-01 02:30:00+05:30	A	f	1	11d9b1b1-b379-4e1a-86f9-90b77110b675
ec3a1689-d874-402c-970a-6b01b3f430a8	2	Staff	Default Note	1	2021-06-28 13:01:53.775003+05:30	2020-06-01 02:30:00+05:30	A	f	1	11d9b1b1-b379-4e1a-86f9-90b77110b675
06557e2c-3643-4715-9ed4-f9efcd8afd16	2	Staff	Default Note	1	2021-10-04 10:35:49.502235+05:30	2020-06-01 02:30:00+05:30	A	f	1	c1105db0-5b80-44fe-a80c-505e0eeebeb4
8d9993f7-dbc2-4ade-862d-d1e05cc6a046	1	Admin	Default Note	1	2021-10-07 15:54:45.120984+05:30	2020-06-01 02:30:00+05:30	A	f	1	90bc3689-942e-4857-9db4-13b284708422
885ce214-d95a-4f10-9374-eb25be3bb24b	1	Admin	Default Note	1	2021-07-04 00:28:48.045719+05:30	2020-06-01 02:30:00+05:30	A	f	1	830d6737-3e27-466d-9f25-13c655bddde2
f9c755d4-46f9-4897-ab06-c7ba7c673d57	2	Staff	Default Note	1	2021-07-04 00:28:48.047531+05:30	2020-06-01 02:30:00+05:30	A	f	1	830d6737-3e27-466d-9f25-13c655bddde2
0bc3fb09-3219-430b-a520-3282e7e1cd69	1	Admin	Default Note	1	2021-07-06 16:32:00.633534+05:30	2020-06-01 02:30:00+05:30	A	f	1	622047c2-fa8b-416f-a1fb-02918e01edab
853b815e-eabd-40b1-931a-2661c5845e6e	2	Staff	Default Note	1	2021-07-06 16:32:00.636238+05:30	2020-06-01 02:30:00+05:30	A	f	1	622047c2-fa8b-416f-a1fb-02918e01edab
2c323f06-0520-4458-b9d1-47f1da5629a9	1	Admin	Default Note	1	2021-07-07 22:13:35.718913+05:30	2020-06-01 02:30:00+05:30	A	f	1	1b8f0a96-fe52-44aa-8bae-1bb62066c31c
f52c5332-de0c-4c65-ab98-a6b298fd062c	2	Staff	Default Note	1	2021-07-07 22:13:35.721142+05:30	2020-06-01 02:30:00+05:30	A	f	1	1b8f0a96-fe52-44aa-8bae-1bb62066c31c
d022c6d3-0a96-44a9-a716-d2c89ba1e1ca	2	Staff	Default Note	1	2021-10-07 15:54:45.122825+05:30	2020-06-01 02:30:00+05:30	A	f	1	90bc3689-942e-4857-9db4-13b284708422
84429689-5401-42a9-9399-5897294d99b0	1	Admin	Default Note	1	2021-10-07 15:59:08.07802+05:30	2020-06-01 02:30:00+05:30	A	f	1	e0a6a17b-0ac9-4869-97ed-b8b5e6dcbe5b
205a9649-86d3-4fab-9b58-69d2f0377ab2	2	Staff	Default Note	1	2021-10-07 15:59:08.079359+05:30	2020-06-01 02:30:00+05:30	A	f	1	e0a6a17b-0ac9-4869-97ed-b8b5e6dcbe5b
18f98411-f3de-4941-a448-e07b5e1bf67b	1	Admin	Default Note	1	2021-10-07 16:34:56.37963+05:30	2020-06-01 02:30:00+05:30	A	f	1	c556d8f4-9261-429d-9c16-493372bed121
ef1ad1bb-9860-4c82-ae7c-ebf30545d3f4	2	Staff	Default Note	1	2021-10-07 16:34:56.381063+05:30	2020-06-01 02:30:00+05:30	A	f	1	c556d8f4-9261-429d-9c16-493372bed121
d40577c5-1d30-4ebc-9ece-32aa90fe8ad4	1	Admin	Default Note	1	2021-10-12 13:09:13.581752+05:30	2020-06-01 02:30:00+05:30	A	f	1	def89dfa-fa07-494c-b9d2-fdc356ff7390
4473635a-d2f2-4681-b14e-68b1f2d685c6	2	Staff	Default Note	1	2021-10-12 13:09:13.584685+05:30	2020-06-01 02:30:00+05:30	A	f	1	def89dfa-fa07-494c-b9d2-fdc356ff7390
d514dae0-9c0e-4e4c-b585-0c34300da48f	1	Admin	Default Note	1	2021-10-19 13:47:12.042185+05:30	2020-06-01 02:30:00+05:30	A	f	1	70106d11-672e-40ea-9f50-a5495faa515a
ec36b0ed-f39a-4d75-bd56-e25769212889	2	Staff	Default Note	1	2021-10-19 13:47:12.045925+05:30	2020-06-01 02:30:00+05:30	A	f	1	70106d11-672e-40ea-9f50-a5495faa515a
04db3fd7-9570-4ac4-a818-360ca58e1d4d	1	Admin	Default Note	1	2021-10-21 17:32:55.383313+05:30	2020-06-01 02:30:00+05:30	A	f	1	d8fcda4b-0921-4469-b0fe-317c837c4d98
6c7d6968-94db-4de2-9e37-4316f96b2684	2	Staff	Default Note	1	2021-10-21 17:32:55.388335+05:30	2020-06-01 02:30:00+05:30	A	f	1	d8fcda4b-0921-4469-b0fe-317c837c4d98
52489791-ae10-4242-bf25-b9b6ae3e9018	1	Admin	Default Note	1	2021-10-25 20:23:47.292978+05:30	2020-06-01 02:30:00+05:30	A	f	1	8c8b40fa-b314-4141-8356-cc371d08aefa
78e28d77-a233-4a95-b589-8203b46afbcc	2	Staff	Default Note	1	2021-10-25 20:23:47.296341+05:30	2020-06-01 02:30:00+05:30	A	f	1	8c8b40fa-b314-4141-8356-cc371d08aefa
435a88ed-3468-406c-8077-45cc804a64bc	1	Admin	Default Note	1	2021-10-25 20:57:06.008463+05:30	2020-06-01 02:30:00+05:30	A	f	1	d66bfe5c-8871-4d76-97f5-60f4a1c8462b
325ec2b8-febe-4a94-8409-b064b7ad73b6	2	Staff	Default Note	1	2021-10-25 20:57:06.010014+05:30	2020-06-01 02:30:00+05:30	A	f	1	d66bfe5c-8871-4d76-97f5-60f4a1c8462b
196dd2c7-3f4f-45eb-aba8-6b0eadb6ea6f	1	Admin	Default Note	1	2021-10-26 19:46:33.041187+05:30	2020-06-01 02:30:00+05:30	A	f	1	8900c397-2a72-45ee-98f0-d76b7e977e7e
b4f7fd79-b9f4-436e-a859-1298995fabd1	2	Staff	Default Note	1	2021-10-26 19:46:33.042695+05:30	2020-06-01 02:30:00+05:30	A	f	1	8900c397-2a72-45ee-98f0-d76b7e977e7e
63fdbb10-dc30-4eab-b00e-38adc1ddb763	1	Admin	Default Note	1	2021-10-27 11:23:14.231682+05:30	2020-06-01 02:30:00+05:30	A	f	1	9b254010-7079-4dd2-b2be-8e295129053f
c1bd3aa5-d84a-4807-b7f9-4dfe4030412c	2	Staff	Default Note	1	2021-10-27 11:23:14.233077+05:30	2020-06-01 02:30:00+05:30	A	f	1	9b254010-7079-4dd2-b2be-8e295129053f
1c625191-4e0e-441b-8bed-afd9753d7657	1	Admin	Default Note	1	2021-10-27 23:20:57.911691+05:30	2020-06-01 02:30:00+05:30	A	f	1	beb18073-499e-4957-b970-5310af39ee36
8e95ae26-c311-4721-b2cf-a45c607b16bf	2	Staff	Default Note	1	2021-10-27 23:20:57.913526+05:30	2020-06-01 02:30:00+05:30	A	f	1	beb18073-499e-4957-b970-5310af39ee36
0e286565-a60b-450f-aba5-f7e245c57dc4	1	Admin	Default Note	1	2021-10-28 13:59:45.380315+05:30	2020-06-01 02:30:00+05:30	A	f	1	efd37913-c2c4-41da-9345-2f5b1dda652f
b608317f-932d-4250-a086-b54bfd7a18db	2	Staff	Default Note	1	2021-10-28 13:59:45.382991+05:30	2020-06-01 02:30:00+05:30	A	f	1	efd37913-c2c4-41da-9345-2f5b1dda652f
bcfa9c8a-98ef-4fd5-88b3-aa6443cea43a	1	Admin	Default Note	1	2021-10-29 20:22:04.778493+05:30	2020-06-01 02:30:00+05:30	A	f	1	52989974-f7f9-4066-bfdb-04d3b71e9c39
c32554e9-37b0-4dab-a0fa-fc0f44e0d05c	2	Staff	Default Note	1	2021-10-29 20:22:04.781589+05:30	2020-06-01 02:30:00+05:30	A	f	1	52989974-f7f9-4066-bfdb-04d3b71e9c39
468b6a5e-d2e4-4892-a13a-da41d1ed9136	1	Admin	Default Note	1	2021-10-30 14:56:31.087306+05:30	2020-06-01 02:30:00+05:30	A	f	1	3f4bb1ba-1e0e-4843-817c-a47566638c07
d941e02e-29e8-4d9b-935f-ccfc1ccc90ec	2	Staff	Default Note	1	2021-10-30 14:56:31.090869+05:30	2020-06-01 02:30:00+05:30	A	f	1	3f4bb1ba-1e0e-4843-817c-a47566638c07
3d3fe739-c833-4acc-83a2-abbd07cfa272	1	Admin	Default Note	1	2021-11-14 23:19:45.504668+05:30	2020-06-01 02:30:00+05:30	A	f	1	dae06e2b-6905-4876-80f4-a974e99e02e8
45985430-47b3-455d-8aef-e5dc770b3920	2	Staff	Default Note	1	2021-11-14 23:19:45.506214+05:30	2020-06-01 02:30:00+05:30	A	f	1	dae06e2b-6905-4876-80f4-a974e99e02e8
05664aa1-301a-4551-8b5f-58217c1eed68	1	Admin	Default Note	1	2021-11-16 13:16:17.679381+05:30	2020-06-01 02:30:00+05:30	A	f	1	904da37a-8db4-4c00-b5b4-5c38207f4299
d56c4a6c-a93d-4242-b3f9-b49b7362045e	2	Staff	Default Note	1	2021-11-16 13:16:17.682063+05:30	2020-06-01 02:30:00+05:30	A	f	1	904da37a-8db4-4c00-b5b4-5c38207f4299
615170e3-d284-4ea8-977a-5ff35d73d511	1	Admin	Default Note	1	2021-11-16 13:30:35.215099+05:30	2020-06-01 02:30:00+05:30	A	f	1	fd6bcfc3-7c9c-4f18-9e6e-413b7ef23182
9236fb82-7746-4f9d-a38f-6b131080b186	2	Staff	Default Note	1	2021-11-16 13:30:35.2172+05:30	2020-06-01 02:30:00+05:30	A	f	1	fd6bcfc3-7c9c-4f18-9e6e-413b7ef23182
cd2357a3-f8cd-4b8d-a254-19e63311c609	1	Admin	Default Note	1	2021-11-16 19:09:53.248175+05:30	2020-06-01 02:30:00+05:30	A	f	1	a808d432-9a5f-4cc5-84a4-aebf09906d27
96ee7baa-cc75-47c2-957f-f820189d7dab	2	Staff	Default Note	1	2021-11-16 19:09:53.249605+05:30	2020-06-01 02:30:00+05:30	A	f	1	a808d432-9a5f-4cc5-84a4-aebf09906d27
dd72ea79-ad91-4775-a458-901dff8e0b16	1	Admin	Default Note	1	2021-11-16 21:31:18.729767+05:30	2020-06-01 02:30:00+05:30	A	f	1	d92f7ae5-6b6b-4922-b196-c0e3d1a4116d
b91ee53a-ac17-41f0-8e74-6bbe96cc119d	2	Staff	Default Note	1	2021-11-16 21:31:18.731567+05:30	2020-06-01 02:30:00+05:30	A	f	1	d92f7ae5-6b6b-4922-b196-c0e3d1a4116d
a2639c15-8fae-415b-8fa2-b46f22223aed	1	Admin	Default Note	1	2021-11-17 12:06:57.565828+05:30	2020-06-01 02:30:00+05:30	A	f	1	ad3aab21-4da2-41d2-b199-0af44bdde30d
ff54b849-0805-4651-adfb-b9ddd867b258	2	Staff	Default Note	1	2021-11-17 12:06:57.568129+05:30	2020-06-01 02:30:00+05:30	A	f	1	ad3aab21-4da2-41d2-b199-0af44bdde30d
adcf97d1-b4be-4fc6-9055-fb5e2dcb79c3	1	Admin	Default Note	1	2021-11-18 22:30:30.892943+05:30	2020-06-01 02:30:00+05:30	A	f	1	3c69ed9e-eb41-46cf-90d1-daa69d0f1a20
bc415904-b1b3-47b1-a0ea-cdb045be766f	2	Staff	Default Note	1	2021-11-18 22:30:30.895168+05:30	2020-06-01 02:30:00+05:30	A	f	1	3c69ed9e-eb41-46cf-90d1-daa69d0f1a20
05e11a8f-0b0d-45f6-b4b7-03e5ef660cb1	1	Admin	Default Note	1	2021-11-19 11:37:46.655853+05:30	2020-06-01 02:30:00+05:30	A	f	1	cba9c14c-87ff-4230-8177-3865bb7bd3b0
dbd934ab-7e8d-4d68-b801-f0ff46406a54	2	Staff	Default Note	1	2021-11-19 11:37:46.659296+05:30	2020-06-01 02:30:00+05:30	A	f	1	cba9c14c-87ff-4230-8177-3865bb7bd3b0
d7b1ff0a-5649-460b-b362-43393b6e5b9d	1	Admin	Default Note	1	2021-11-19 11:43:44.680432+05:30	2020-06-01 02:30:00+05:30	A	f	1	05293d19-7c82-421f-90d5-f416c0f87e58
97f7b211-48cc-43dd-a005-f11c0b92484b	2	Staff	Default Note	1	2021-11-19 11:43:44.682164+05:30	2020-06-01 02:30:00+05:30	A	f	1	05293d19-7c82-421f-90d5-f416c0f87e58
264c094d-82fb-4210-bf68-fe371890fb3c	1	Admin	Default Note	1	2021-11-19 11:45:02.047976+05:30	2020-06-01 02:30:00+05:30	A	f	1	aa43a8e1-895b-446e-af06-6a59b04f5008
25de63d2-8b95-4e87-b81f-a2efc9141b98	2	Staff	Default Note	1	2021-11-19 11:45:02.049266+05:30	2020-06-01 02:30:00+05:30	A	f	1	aa43a8e1-895b-446e-af06-6a59b04f5008
e6b40564-4dd5-480e-aace-3deb8809ba29	1	Admin	Default Note	1	2021-11-19 11:49:23.433509+05:30	2020-06-01 02:30:00+05:30	A	f	1	d4ca8637-696b-4ff0-8b88-991774b9547c
2c78b869-068a-4359-827f-e65f9a289523	2	Staff	Default Note	1	2021-11-19 11:49:23.434987+05:30	2020-06-01 02:30:00+05:30	A	f	1	d4ca8637-696b-4ff0-8b88-991774b9547c
837ecf0a-cba6-4653-b10b-81b78d25da60	1	Admin	Default Note	1	2021-11-20 15:29:31.201258+05:30	2020-06-01 02:30:00+05:30	A	f	1	059d5661-440d-41a9-b9b8-84ddf090b1ca
7ef0c1fc-57ef-42d0-9ed0-e8cdbf0d046b	2	Staff	Default Note	1	2021-11-20 15:29:31.203686+05:30	2020-06-01 02:30:00+05:30	A	f	1	059d5661-440d-41a9-b9b8-84ddf090b1ca
f63889c5-79b1-4432-8a43-3cb2f79c14fc	1	Admin	Default Note	1	2021-11-22 16:26:26.143438+05:30	2020-06-01 02:30:00+05:30	A	f	1	c0f6338d-7023-4cb9-bf23-4084d0584dbf
d198bacc-cec7-43c8-af87-5963e1e6675e	2	Staff	Default Note	1	2021-11-22 16:26:26.146094+05:30	2020-06-01 02:30:00+05:30	A	f	1	c0f6338d-7023-4cb9-bf23-4084d0584dbf
c227e340-e7bd-4354-a674-abb09a7b22b6	1	Admin	Default Note	1	2021-11-22 22:34:55.868551+05:30	2020-06-01 02:30:00+05:30	A	f	1	8a61781a-6279-4e75-a23f-874775c385ed
ed2005c0-a03b-435b-b364-dbce4e260653	2	Staff	Default Note	1	2021-11-22 22:34:55.870134+05:30	2020-06-01 02:30:00+05:30	A	f	1	8a61781a-6279-4e75-a23f-874775c385ed
a8af32db-9d63-4ee0-a8ab-2fd1cb43d026	1	Admin	Default Note	1	2021-11-22 22:36:06.863941+05:30	2020-06-01 02:30:00+05:30	A	f	1	144756c2-a583-497a-b493-87aff1a81873
824cb0d8-d719-48a9-a6b4-871c18fc8682	2	Staff	Default Note	1	2021-11-22 22:36:06.865315+05:30	2020-06-01 02:30:00+05:30	A	f	1	144756c2-a583-497a-b493-87aff1a81873
dc205bba-5d0d-47d6-88a3-e01b7fec162f	1	Admin	Default Note	1	2021-11-22 22:38:14.646764+05:30	2020-06-01 02:30:00+05:30	A	f	1	0c7db4bb-6dd8-4d3a-a252-76ab210c32fd
ae367eea-e791-432d-b812-7ce2f142132e	2	Staff	Default Note	1	2021-11-22 22:38:14.648276+05:30	2020-06-01 02:30:00+05:30	A	f	1	0c7db4bb-6dd8-4d3a-a252-76ab210c32fd
5676f918-d421-40c0-8572-6227cabf4b77	1	Admin	Default Note	1	2021-11-23 13:47:31.214238+05:30	2020-06-01 02:30:00+05:30	A	f	1	aa14027b-6a27-435a-8b95-02d8f2f956ba
cfe10e0f-d828-4a55-baff-ed0f61682e88	2	Staff	Default Note	1	2021-11-23 13:47:31.215602+05:30	2020-06-01 02:30:00+05:30	A	f	1	aa14027b-6a27-435a-8b95-02d8f2f956ba
9466e40e-7a83-4dc5-b943-db19964543f9	1	Admin	Default Note	1	2021-11-23 13:51:29.993796+05:30	2020-06-01 02:30:00+05:30	A	f	1	55fccb7e-5ef7-4e03-8efc-57e54007d3dc
805320c5-1ec5-4aa6-9938-cac32201843e	2	Staff	Default Note	1	2021-11-23 13:51:29.995381+05:30	2020-06-01 02:30:00+05:30	A	f	1	55fccb7e-5ef7-4e03-8efc-57e54007d3dc
33a2402c-0548-4118-83a8-3b77249852bf	1	Admin	Default Note	1	2021-11-23 15:50:11.69281+05:30	2020-06-01 02:30:00+05:30	A	f	1	f3afa022-4542-43f4-8e7d-0b5e67fea701
b51576e2-2d42-47a5-ae17-fe21e7acd6cc	2	Staff	Default Note	1	2021-11-23 15:50:11.694304+05:30	2020-06-01 02:30:00+05:30	A	f	1	f3afa022-4542-43f4-8e7d-0b5e67fea701
e5bb6da2-9e58-4140-954e-76e79c0a2800	1	Admin	Default Note	1	2021-11-23 17:34:51.656968+05:30	2020-06-01 02:30:00+05:30	A	f	1	4345d53b-8bdc-4d2e-8a95-7250d81e04fb
542f56dd-2c1a-4fb1-8a6f-07b65552c0e1	2	Staff	Default Note	1	2021-11-23 17:34:51.658385+05:30	2020-06-01 02:30:00+05:30	A	f	1	4345d53b-8bdc-4d2e-8a95-7250d81e04fb
c605233b-4d0a-4f4f-b1ee-d17f5fb33d3c	1	Admin	Default Note	1	2021-11-23 18:10:22.752637+05:30	2020-06-01 02:30:00+05:30	A	f	1	731bc7d9-f1ba-4694-b428-e709241f659c
7e3f0bf6-b045-4f17-ab20-502614646141	2	Staff	Default Note	1	2021-11-23 18:10:22.754378+05:30	2020-06-01 02:30:00+05:30	A	f	1	731bc7d9-f1ba-4694-b428-e709241f659c
db53e19f-dd88-4b07-aa89-c937fcc70ee2	1	Admin	Default Note	1	2021-11-23 19:11:48.100805+05:30	2020-06-01 02:30:00+05:30	A	f	1	b07cde28-a7b5-479f-9b97-67b74d6f4c2b
2dfdded8-76ca-4a9b-9b05-dd00e1bf992c	2	Staff	Default Note	1	2021-11-23 19:11:48.102291+05:30	2020-06-01 02:30:00+05:30	A	f	1	b07cde28-a7b5-479f-9b97-67b74d6f4c2b
f21690ec-0ca5-4d42-a4b5-d3517d1bf591	1	Admin	Default Note	1	2021-11-23 20:34:48.470814+05:30	2020-06-01 02:30:00+05:30	A	f	1	5696770c-1f49-40aa-9706-8be7136a32a4
87f59c1c-3339-4459-b9fb-6e2696a1ae2d	2	Staff	Default Note	1	2021-11-23 20:34:48.472343+05:30	2020-06-01 02:30:00+05:30	A	f	1	5696770c-1f49-40aa-9706-8be7136a32a4
265c7000-0158-4f86-bdf3-d1f20a832590	1	Admin	Default Note	1	2021-11-23 21:47:59.581457+05:30	2020-06-01 02:30:00+05:30	A	f	1	e8749c1f-0a82-4852-be97-56990b990e76
2728abe4-3043-40f7-b496-9c21a9f74bfa	2	Staff	Default Note	1	2021-11-23 21:47:59.583042+05:30	2020-06-01 02:30:00+05:30	A	f	1	e8749c1f-0a82-4852-be97-56990b990e76
9553e077-3ca8-43b7-8bbd-60753b46c4cd	1	Admin	Default Note	1	2021-11-24 12:14:25.294048+05:30	2020-06-01 02:30:00+05:30	A	f	1	32e26c3f-3945-43ea-84e0-7dc2fdc9f5d9
96970653-6284-41b5-bdf2-564eb4d6dc71	2	Staff	Default Note	1	2021-11-24 12:14:25.296617+05:30	2020-06-01 02:30:00+05:30	A	f	1	32e26c3f-3945-43ea-84e0-7dc2fdc9f5d9
5a59b3a9-20af-4d9f-8ce4-176aed8f4c3e	1	Admin	Default Note	1	2021-11-24 15:07:28.791168+05:30	2020-06-01 02:30:00+05:30	A	f	1	0cf65f46-4722-4490-a8cb-ef1aee465f59
fdb34339-1e8d-4525-a872-bc89651374a7	2	Staff	Default Note	1	2021-11-24 15:07:28.79381+05:30	2020-06-01 02:30:00+05:30	A	f	1	0cf65f46-4722-4490-a8cb-ef1aee465f59
1458e4e5-be74-4fd5-bd90-2aa0a225fda4	1	Admin	Default Note	1	2021-11-24 19:54:45.145644+05:30	2020-06-01 02:30:00+05:30	A	f	1	cf65fc71-7ef9-4a20-a6e1-7118eeb1ef99
fafcc0d7-e53d-4804-937e-96691c8f4f62	2	Staff	Default Note	1	2021-11-24 19:54:45.147087+05:30	2020-06-01 02:30:00+05:30	A	f	1	cf65fc71-7ef9-4a20-a6e1-7118eeb1ef99
4caa3d9b-c151-4451-aa6a-bc2e8bf2997c	1	Admin	Default Note	1	2021-11-25 17:17:50.863726+05:30	2020-06-01 02:30:00+05:30	A	f	1	86488016-4142-49a1-bde5-0b6e13014029
01a8d004-720d-4324-8fd5-42d4aa598c70	2	Staff	Default Note	1	2021-11-25 17:17:50.865828+05:30	2020-06-01 02:30:00+05:30	A	f	1	86488016-4142-49a1-bde5-0b6e13014029
79fcb325-465f-4666-b7fd-966d9a8e39ab	1	Admin	Default Note	1	2021-11-25 17:42:18.28301+05:30	2020-06-01 02:30:00+05:30	A	f	1	c9527e80-2437-4a51-b538-bde826c88a43
1ece2bf0-c17a-4040-ae6a-379730605d53	2	Staff	Default Note	1	2021-11-25 17:42:18.284506+05:30	2020-06-01 02:30:00+05:30	A	f	1	c9527e80-2437-4a51-b538-bde826c88a43
b5fe7a88-d4a6-4060-9d75-82d4581a42aa	1	Admin	Default Note	1	2021-11-25 21:10:59.497222+05:30	2020-06-01 02:30:00+05:30	A	f	1	7bfb9431-3460-4576-b7f7-464df6239ec1
4127770f-71d4-40ab-a9d3-95c7868b4e8d	2	Staff	Default Note	1	2021-11-25 21:10:59.498861+05:30	2020-06-01 02:30:00+05:30	A	f	1	7bfb9431-3460-4576-b7f7-464df6239ec1
d921e3ea-a3ee-4c5b-98a2-b0895b62c332	1	Admin	Default Note	1	2021-11-26 16:40:04.421025+05:30	2020-06-01 02:30:00+05:30	A	f	1	e45bad0e-d49b-4502-8439-7f1e3d669032
c390de4d-0d7d-4951-9d08-dc6a91bf6148	2	Staff	Default Note	1	2021-11-26 16:40:04.423197+05:30	2020-06-01 02:30:00+05:30	A	f	1	e45bad0e-d49b-4502-8439-7f1e3d669032
e2a5ee46-8222-40f3-92fb-2077f2e29b88	1	Admin	Default Note	1	2021-11-26 20:32:46.071159+05:30	2020-06-01 02:30:00+05:30	A	f	1	0d223f81-c094-4f4d-9385-10f64215d27c
3e5e3a9b-2039-468d-9abc-20f29b350f07	2	Staff	Default Note	1	2021-11-26 20:32:46.072546+05:30	2020-06-01 02:30:00+05:30	A	f	1	0d223f81-c094-4f4d-9385-10f64215d27c
fa99d746-1b4c-4614-b8f9-bb4f3212d35c	1	Admin	Default Note	1	2021-11-26 21:21:18.483296+05:30	2020-06-01 02:30:00+05:30	A	f	1	061eb840-e145-40cf-9aa9-0e498bb83175
964edeae-a809-4eae-90b4-40135bd8282d	2	Staff	Default Note	1	2021-11-26 21:21:18.484642+05:30	2020-06-01 02:30:00+05:30	A	f	1	061eb840-e145-40cf-9aa9-0e498bb83175
05934266-66c7-4ed8-a275-41d2fc3cd90a	1	Admin	Default Note	1	2021-11-27 01:03:14.97351+05:30	2020-06-01 02:30:00+05:30	A	f	1	55168dd0-08be-4eb3-bfe9-a35ca739538b
ddbdeb09-7408-4155-8fb1-08b093d37631	2	Staff	Default Note	1	2021-11-27 01:03:14.977158+05:30	2020-06-01 02:30:00+05:30	A	f	1	55168dd0-08be-4eb3-bfe9-a35ca739538b
0cdbaa26-d396-44c6-b746-25fe85ee148c	1	Admin	Default Note	1	2021-11-27 01:07:53.428738+05:30	2020-06-01 02:30:00+05:30	A	f	1	46cae537-b9f9-42fd-b546-06e9dc2bb812
7424fb29-3cf9-4a5a-91c2-b2b4cbec992a	2	Staff	Default Note	1	2021-11-27 01:07:53.430132+05:30	2020-06-01 02:30:00+05:30	A	f	1	46cae537-b9f9-42fd-b546-06e9dc2bb812
3efa2657-b923-45f5-b965-f3fbe3dcbe60	1	Admin	Default Note	1	2021-11-27 01:24:33.810142+05:30	2020-06-01 02:30:00+05:30	A	f	1	6f95910f-277d-4dd7-8584-d0e832ce1f39
c6ae0f03-a902-4cfd-8115-63177b0c7279	2	Staff	Default Note	1	2021-11-27 01:24:33.811778+05:30	2020-06-01 02:30:00+05:30	A	f	1	6f95910f-277d-4dd7-8584-d0e832ce1f39
d09e21b1-c949-493d-8bf0-8bf96770d95d	1	Admin	Default Note	1	2021-11-27 14:59:49.105676+05:30	2020-06-01 02:30:00+05:30	A	f	1	88faf6cc-e89e-4be9-986a-0545a4093b56
bbf3c627-77e5-4a87-ac32-bd15db0ab6ec	2	Staff	Default Note	1	2021-11-27 14:59:49.107+05:30	2020-06-01 02:30:00+05:30	A	f	1	88faf6cc-e89e-4be9-986a-0545a4093b56
211bdee1-9e0f-4191-8c99-23660fbb801c	1	Admin	Default Note	1	2021-11-27 16:50:13.794417+05:30	2020-06-01 02:30:00+05:30	A	f	1	dc2c8aa1-30b1-4ead-a74c-5db0950aceab
8ef4c3e7-0f81-43fe-8fcc-5057d1591499	2	Staff	Default Note	1	2021-11-27 16:50:13.796702+05:30	2020-06-01 02:30:00+05:30	A	f	1	dc2c8aa1-30b1-4ead-a74c-5db0950aceab
0d51d8fd-6129-49be-b85f-a7fd82ed433e	1	Admin	Default Note	1	2021-11-28 15:07:13.555081+05:30	2020-06-01 02:30:00+05:30	A	f	1	e90a806e-cf1b-452e-aa23-64d3b60eae50
991ef25e-1f81-4c7e-b1e2-bbaed824da86	2	Staff	Default Note	1	2021-11-28 15:07:13.557422+05:30	2020-06-01 02:30:00+05:30	A	f	1	e90a806e-cf1b-452e-aa23-64d3b60eae50
e152dc00-5b32-45dd-97af-68afff385ef5	1	Admin	Default Note	1	2021-11-29 12:34:30.450033+05:30	2020-06-01 02:30:00+05:30	A	f	1	bbde7d40-82ae-4a1a-ab98-358304f7270f
4a80f1fc-5c94-4465-a85a-8c6b84476030	2	Staff	Default Note	1	2021-11-29 12:34:30.452095+05:30	2020-06-01 02:30:00+05:30	A	f	1	bbde7d40-82ae-4a1a-ab98-358304f7270f
6e267ff7-1354-40c7-8fe4-f0872f4afa32	1	Admin	Default Note	1	2021-11-29 22:52:02.402757+05:30	2020-06-01 02:30:00+05:30	A	f	1	5b57265f-5913-4212-b405-387a7c5bbf56
c9b5e82c-b1e0-4d57-8b7d-50571a6f7d7f	2	Staff	Default Note	1	2021-11-29 22:52:02.404137+05:30	2020-06-01 02:30:00+05:30	A	f	1	5b57265f-5913-4212-b405-387a7c5bbf56
9cee9b67-53e0-4cf8-83a3-7469741305df	1	Admin	Default Note	1	2021-11-29 23:42:26.859328+05:30	2020-06-01 02:30:00+05:30	A	f	1	a193c887-5b48-4b77-a07f-b15834ad0c09
da14c7f7-e4db-4a6d-89aa-529ec99d8abf	2	Staff	Default Note	1	2021-11-29 23:42:26.861034+05:30	2020-06-01 02:30:00+05:30	A	f	1	a193c887-5b48-4b77-a07f-b15834ad0c09
82ec2cf8-e245-44a9-8ef3-653342fcc28b	1	Admin	Default Note	1	2021-11-30 01:43:33.799627+05:30	2020-06-01 02:30:00+05:30	A	f	1	ace058bf-1449-4e97-b46c-4e999525aac1
08a1924c-0585-4980-ba04-bc1e411f54ae	2	Staff	Default Note	1	2021-11-30 01:43:33.801098+05:30	2020-06-01 02:30:00+05:30	A	f	1	ace058bf-1449-4e97-b46c-4e999525aac1
9b845954-5b1f-41e5-9114-75a689926ebc	1	Admin	Default Note	1	2021-11-30 23:00:45.580275+05:30	2020-06-01 02:30:00+05:30	A	f	1	60925298-8f48-4db2-ab03-8815c0278623
a6280fd6-89a8-4215-9b7d-0051c9bbf3a1	2	Staff	Default Note	1	2021-11-30 23:00:45.58161+05:30	2020-06-01 02:30:00+05:30	A	f	1	60925298-8f48-4db2-ab03-8815c0278623
21dbd36c-2406-4509-8140-a08f8a4b7457	1	Admin	Default Note	1	2021-11-30 23:06:45.099659+05:30	2020-06-01 02:30:00+05:30	A	f	1	8bc08e87-b0ed-4295-a58f-0b903fdc24d3
cb6d0659-7b5b-4dad-8254-fda362ca8247	2	Staff	Default Note	1	2021-11-30 23:06:45.100887+05:30	2020-06-01 02:30:00+05:30	A	f	1	8bc08e87-b0ed-4295-a58f-0b903fdc24d3
e9a46747-2163-4ea6-94e5-253b736d28f8	1	Admin	Default Note	1	2021-12-01 12:56:30.630538+05:30	2020-06-01 02:30:00+05:30	A	f	1	28d5bbcf-47cf-4f3c-ab93-a547b0e377aa
56c2831d-4843-4540-8c78-b9a37e402c3f	2	Staff	Default Note	1	2021-12-01 12:56:30.632207+05:30	2020-06-01 02:30:00+05:30	A	f	1	28d5bbcf-47cf-4f3c-ab93-a547b0e377aa
54b893c2-c3c5-4d0e-9ced-a88587bc8988	1	Admin	Default Note	1	2021-12-01 14:31:38.909643+05:30	2020-06-01 02:30:00+05:30	A	f	1	800d482a-bf47-403b-9988-d4c2e0ee0cfd
b23ef8bb-27da-43c1-8722-1435650d3559	2	Staff	Default Note	1	2021-12-01 14:31:38.911032+05:30	2020-06-01 02:30:00+05:30	A	f	1	800d482a-bf47-403b-9988-d4c2e0ee0cfd
52cc1c85-51aa-4ede-8269-04316e315906	1	Admin	Default Note	1	2021-12-01 21:48:30.790339+05:30	2020-06-01 02:30:00+05:30	A	f	1	a3ade88a-d45f-4f41-880f-6ebac146db28
00e13637-9b72-4155-837c-524b33c88b30	2	Staff	Default Note	1	2021-12-01 21:48:30.791644+05:30	2020-06-01 02:30:00+05:30	A	f	1	a3ade88a-d45f-4f41-880f-6ebac146db28
261cac16-2ed4-43db-8f1c-1d77e390bea2	1	Admin	Default Note	1	2021-12-02 04:03:08.253737+05:30	2020-06-01 02:30:00+05:30	A	f	1	ce2fe87f-0cda-4f7b-86dd-2c0f5300ddaa
da8612f5-9b69-4b80-844a-e3342aca3549	2	Staff	Default Note	1	2021-12-02 04:03:08.255136+05:30	2020-06-01 02:30:00+05:30	A	f	1	ce2fe87f-0cda-4f7b-86dd-2c0f5300ddaa
befcfab7-172e-427e-b772-f71659a0a3e2	1	Admin	Default Note	1	2021-12-02 15:02:01.058963+05:30	2020-06-01 02:30:00+05:30	A	f	1	6f7eb0d3-719d-43fa-9c33-c9bac79038a7
86e21cab-195c-4236-9324-0c2be9479486	2	Staff	Default Note	1	2021-12-02 15:02:01.061761+05:30	2020-06-01 02:30:00+05:30	A	f	1	6f7eb0d3-719d-43fa-9c33-c9bac79038a7
2f6b4d7c-8709-45cf-831d-c099c8e0ab2c	1	Admin	Default Note	1	2021-12-02 15:27:42.314435+05:30	2020-06-01 02:30:00+05:30	A	f	1	2ee86397-902d-4136-94ab-9f7efd004004
cacbaae7-ea95-4fb9-8054-8f436c958840	2	Staff	Default Note	1	2021-12-02 15:27:42.315777+05:30	2020-06-01 02:30:00+05:30	A	f	1	2ee86397-902d-4136-94ab-9f7efd004004
89a59743-a723-4c25-8872-dd4daa774a6a	1	Admin	Default Note	1	2021-12-02 20:15:05.569908+05:30	2020-06-01 02:30:00+05:30	A	f	1	d04da6b7-4d95-44ce-9357-663d167994e4
868a7281-f644-4722-87e8-decd96651669	2	Staff	Default Note	1	2021-12-02 20:15:05.571317+05:30	2020-06-01 02:30:00+05:30	A	f	1	d04da6b7-4d95-44ce-9357-663d167994e4
636bac3a-8a66-4ca8-8dc5-29b2ae92edcc	1	Admin	Default Note	1	2021-12-02 20:53:12.838725+05:30	2020-06-01 02:30:00+05:30	A	f	1	cd8d14e6-6b32-4322-be37-07cc2fa5b940
508dbb64-6ad2-4eee-8845-f9c992486d30	2	Staff	Default Note	1	2021-12-02 20:53:12.840069+05:30	2020-06-01 02:30:00+05:30	A	f	1	cd8d14e6-6b32-4322-be37-07cc2fa5b940
060c7cce-10ae-4636-97f1-99874e13412c	1	Admin	Default Note	1	2021-12-02 21:30:06.987315+05:30	2020-06-01 02:30:00+05:30	A	f	1	821d06a3-3da2-43fe-9e61-1bfd714c36cd
4e17d261-e207-4479-a50c-76135d97bd83	2	Staff	Default Note	1	2021-12-02 21:30:06.988597+05:30	2020-06-01 02:30:00+05:30	A	f	1	821d06a3-3da2-43fe-9e61-1bfd714c36cd
549dcdaa-d66c-42e0-813d-face360d2640	1	Admin	Default Note	1	2021-12-02 23:02:20.3325+05:30	2020-06-01 02:30:00+05:30	A	f	1	1042f7e8-2064-41d2-805d-52a905731082
b8a6f1a2-1e4a-4db7-8e82-cef4bdbf30d7	2	Staff	Default Note	1	2021-12-02 23:02:20.334612+05:30	2020-06-01 02:30:00+05:30	A	f	1	1042f7e8-2064-41d2-805d-52a905731082
968e5e3d-b550-4457-9f56-9914cb69bd94	1	Admin	Default Note	1	2021-12-03 00:00:58.118929+05:30	2020-06-01 02:30:00+05:30	A	f	1	000ef3b4-34ec-494b-b6be-d81706cfc940
7d79b270-db37-4a1b-8036-5b4978a02569	2	Staff	Default Note	1	2021-12-03 00:00:58.120392+05:30	2020-06-01 02:30:00+05:30	A	f	1	000ef3b4-34ec-494b-b6be-d81706cfc940
eeea0f18-11f3-4a7e-8cd9-ba6124296318	1	Admin	Default Note	1	2021-12-03 01:11:43.60774+05:30	2020-06-01 02:30:00+05:30	A	f	1	dad5038c-1339-466a-8a8e-2e61c55cf0d0
4eb4f141-937d-4bc6-bf11-e92d03cd4b2e	2	Staff	Default Note	1	2021-12-03 01:11:43.609019+05:30	2020-06-01 02:30:00+05:30	A	f	1	dad5038c-1339-466a-8a8e-2e61c55cf0d0
f6d2dc11-34eb-4dad-a20d-9e636b2d8859	1	Admin	Default Note	1	2021-12-06 12:04:27.821586+05:30	2020-06-01 02:30:00+05:30	A	f	1	0e1ad0b7-67f2-4102-bb4a-5620a9bc5fe6
fe21fcc5-3b15-4b0b-8b4f-86a3d5428fce	2	Staff	Default Note	1	2021-12-06 12:04:27.822842+05:30	2020-06-01 02:30:00+05:30	A	f	1	0e1ad0b7-67f2-4102-bb4a-5620a9bc5fe6
70a690e0-bbed-4107-9922-0ee8ee4fb12f	1	Admin	Default Note	1	2021-12-06 12:46:45.062929+05:30	2020-06-01 02:30:00+05:30	A	f	1	c1a3ee0e-4bf1-447c-954e-54f56bdaaa54
db3b0153-1a88-4a90-ba88-d4b5caf7a0d4	2	Staff	Default Note	1	2021-12-06 12:46:45.063683+05:30	2020-06-01 02:30:00+05:30	A	f	1	c1a3ee0e-4bf1-447c-954e-54f56bdaaa54
0ac65022-04a0-4a96-9f75-d63c1b24eb09	1	Admin	Default Note	1	2021-12-06 12:49:13.772416+05:30	2020-06-01 02:30:00+05:30	A	f	1	d06ea795-8605-4081-bf24-0c730a9f4108
35597137-9815-43c2-a6ef-f29b1181fd8f	2	Staff	Default Note	1	2021-12-06 12:49:13.773562+05:30	2020-06-01 02:30:00+05:30	A	f	1	d06ea795-8605-4081-bf24-0c730a9f4108
f6e6e5b5-c421-4b28-af7b-314c44b04d4d	1	Admin	Default Note	1	2021-12-06 14:14:17.682508+05:30	2020-06-01 02:30:00+05:30	A	f	1	3209e419-99c7-40fe-8356-a8ac77a5c5db
366c9ec9-9b8e-4642-b9ab-e1e3715a7d88	2	Staff	Default Note	1	2021-12-06 14:14:17.683272+05:30	2020-06-01 02:30:00+05:30	A	f	1	3209e419-99c7-40fe-8356-a8ac77a5c5db
4df6bfaf-077d-4b32-a015-87b90060e0ed	1	Admin	Default Note	1	2021-12-06 14:57:55.007679+05:30	2020-06-01 02:30:00+05:30	A	f	1	94a7c471-ab5e-468b-afd1-9655ec29a9fc
96227e69-c882-49ae-8327-f149d3351a8d	2	Staff	Default Note	1	2021-12-06 14:57:55.008921+05:30	2020-06-01 02:30:00+05:30	A	f	1	94a7c471-ab5e-468b-afd1-9655ec29a9fc
3adf78cf-bb7d-4266-87f3-ca48e8fbb565	1	Admin	Default Note	1	2021-12-06 21:31:47.762007+05:30	2020-06-01 02:30:00+05:30	A	f	1	338771ca-5f9e-4743-8d07-eec2b20d19db
19e1c7b3-5f87-4579-a450-dc817c81d963	2	Staff	Default Note	1	2021-12-06 21:31:47.76353+05:30	2020-06-01 02:30:00+05:30	A	f	1	338771ca-5f9e-4743-8d07-eec2b20d19db
8ce67f13-77bb-41bf-b3eb-b27084439669	1	Admin	Default Note	1	2021-12-07 01:26:50.632964+05:30	2020-06-01 02:30:00+05:30	A	f	1	45eafbb3-0da1-437c-ac09-2e9ce9cc3e22
17fb08d3-9c89-413f-811e-7d5a122e1f8e	2	Staff	Default Note	1	2021-12-07 01:26:50.634273+05:30	2020-06-01 02:30:00+05:30	A	f	1	45eafbb3-0da1-437c-ac09-2e9ce9cc3e22
f2df8b4c-1a64-40ae-a277-d49acb3639a9	1	Admin	Default Note	1	2021-12-07 01:53:20.591185+05:30	2020-06-01 02:30:00+05:30	A	f	1	c68aa9e2-9c87-4aa9-b750-791a919ab962
d96a03c8-44e2-4d2e-843e-f9fc29b31c02	2	Staff	Default Note	1	2021-12-07 01:53:20.592558+05:30	2020-06-01 02:30:00+05:30	A	f	1	c68aa9e2-9c87-4aa9-b750-791a919ab962
cb169097-5bac-46ef-8e49-31c40d91f3ae	1	Admin	Default Note	1	2021-12-07 10:25:22.972878+05:30	2020-06-01 02:30:00+05:30	A	f	1	1e8b311c-977c-4b43-b90e-6b1efb5a546c
9c2bc76f-9ddf-44fe-9c3f-dc457bb15b80	2	Staff	Default Note	1	2021-12-07 10:25:22.974229+05:30	2020-06-01 02:30:00+05:30	A	f	1	1e8b311c-977c-4b43-b90e-6b1efb5a546c
1ec4a2be-ac93-4131-bbc1-6084966ab3c1	1	Admin	Default Note	1	2021-12-07 10:31:31.903331+05:30	2020-06-01 02:30:00+05:30	A	f	1	af91cb66-6ad3-4ae7-8c49-30aab7202bb8
5772db49-581d-4d88-b1e2-804a34485c2e	2	Staff	Default Note	1	2021-12-07 10:31:31.905317+05:30	2020-06-01 02:30:00+05:30	A	f	1	af91cb66-6ad3-4ae7-8c49-30aab7202bb8
c8484031-6121-47e3-a861-63952be8336f	1	Admin	Default Note	1	2021-12-07 20:36:38.777861+05:30	2020-06-01 02:30:00+05:30	A	f	1	1a07d7d9-76c0-4f70-b58f-a19c48777a69
4d7ae44e-2ef8-46e1-b263-ecfd1e9d194e	2	Staff	Default Note	1	2021-12-07 20:36:38.778589+05:30	2020-06-01 02:30:00+05:30	A	f	1	1a07d7d9-76c0-4f70-b58f-a19c48777a69
1466e391-3668-429a-96ee-a1e9b11df630	1	Admin	Default Note	1	2021-12-08 16:04:55.656377+05:30	2020-06-01 02:30:00+05:30	A	f	1	fffc6766-24a0-4220-a9ec-258e579c8646
96fd6b5e-fe02-455f-92b4-f37b7fff04a1	2	Staff	Default Note	1	2021-12-08 16:04:55.658173+05:30	2020-06-01 02:30:00+05:30	A	f	1	fffc6766-24a0-4220-a9ec-258e579c8646
e4db06db-aa87-4f82-a553-9eceed8426e2	1	Admin	Default Note	1	2021-12-08 16:06:47.529273+05:30	2020-06-01 02:30:00+05:30	A	f	1	66baa829-5f3e-46a2-a0dc-2b97b412972b
f0a81a78-34ad-4abb-a22c-a4f183013743	2	Staff	Default Note	1	2021-12-08 16:06:47.53076+05:30	2020-06-01 02:30:00+05:30	A	f	1	66baa829-5f3e-46a2-a0dc-2b97b412972b
356a28eb-1858-488a-aec6-301aae5a2243	1	Admin	Default Note	1	2021-12-08 17:57:40.778086+05:30	2020-06-01 02:30:00+05:30	A	f	1	9add367f-35fd-44dd-90c1-a8a3933f647b
9230e144-c124-4157-87ac-b21be160e968	2	Staff	Default Note	1	2021-12-08 17:57:40.778777+05:30	2020-06-01 02:30:00+05:30	A	f	1	9add367f-35fd-44dd-90c1-a8a3933f647b
4e9047ee-aab6-4976-b1bd-1458bdda86b2	1	Admin	Default Note	1	2021-12-08 19:31:59.522229+05:30	2020-06-01 02:30:00+05:30	A	f	1	6ccc3235-113e-4ae4-b902-4b460c3f15a2
35df7690-4a9a-45c2-9f2a-a5c3cc7dba51	2	Staff	Default Note	1	2021-12-08 19:31:59.523115+05:30	2020-06-01 02:30:00+05:30	A	f	1	6ccc3235-113e-4ae4-b902-4b460c3f15a2
b0d59d62-7604-4697-bd93-56d6f3f023c7	1	Admin	Default Note	1	2021-12-09 12:27:33.242583+05:30	2020-06-01 02:30:00+05:30	A	f	1	94233b4a-c04d-4701-86a8-64b872e26f2b
5c449e91-bdd7-4db5-9b74-546d5121939c	2	Staff	Default Note	1	2021-12-09 12:27:33.244849+05:30	2020-06-01 02:30:00+05:30	A	f	1	94233b4a-c04d-4701-86a8-64b872e26f2b
9bde4d67-5746-4c78-97ac-d6edae640bd0	1	Admin	Default Note	1	2021-12-09 13:20:57.871782+05:30	2020-06-01 02:30:00+05:30	A	f	1	9732bb17-6e64-4bf0-b062-827145695dc9
7c56f99f-ec2a-46e2-a84f-99a5d769198c	2	Staff	Default Note	1	2021-12-09 13:20:57.872506+05:30	2020-06-01 02:30:00+05:30	A	f	1	9732bb17-6e64-4bf0-b062-827145695dc9
c5295ad7-05fa-4dc3-952f-6658091077f9	1	Admin	Default Note	1	2021-12-09 15:36:36.409908+05:30	2020-06-01 02:30:00+05:30	A	f	1	e4039a97-876c-4261-af47-c4855e69f5c7
52500515-ad85-4b8a-be00-64ca125733c7	2	Staff	Default Note	1	2021-12-09 15:36:36.410611+05:30	2020-06-01 02:30:00+05:30	A	f	1	e4039a97-876c-4261-af47-c4855e69f5c7
cbb59b02-fe8a-4392-916d-4879808e9787	1	Admin	Default Note	1	2021-12-09 16:22:17.602642+05:30	2020-06-01 02:30:00+05:30	A	f	1	567216c1-9bbf-4afe-bc20-4ef5b16232cf
74ec227f-d818-424a-b107-d0d89fe74df6	2	Staff	Default Note	1	2021-12-09 16:22:17.603342+05:30	2020-06-01 02:30:00+05:30	A	f	1	567216c1-9bbf-4afe-bc20-4ef5b16232cf
a5a51363-d80d-4a72-baab-8e2071e54dd2	1	Admin	Default Note	1	2021-12-09 17:54:06.15779+05:30	2020-06-01 02:30:00+05:30	A	f	1	b6de6aa0-768c-4eac-8dee-34df869953ef
86f2f5f8-bbd4-4968-8e2c-93061847a6f8	2	Staff	Default Note	1	2021-12-09 17:54:06.158535+05:30	2020-06-01 02:30:00+05:30	A	f	1	b6de6aa0-768c-4eac-8dee-34df869953ef
12262465-bd18-4be1-a150-990b6762a46e	1	Admin	Default Note	1	2021-12-10 20:12:29.203214+05:30	2020-06-01 02:30:00+05:30	A	f	1	fa2a2835-7a99-49e3-b5dd-c86e1f4d4e4c
69ec23e1-f965-4bca-8c5d-7c848114463b	2	Staff	Default Note	1	2021-12-10 20:12:29.203935+05:30	2020-06-01 02:30:00+05:30	A	f	1	fa2a2835-7a99-49e3-b5dd-c86e1f4d4e4c
9d5b85d3-ad1c-4cac-a7d7-f06d7544752b	1	Admin	Default Note	1	2021-12-11 02:00:39.923371+05:30	2020-06-01 02:30:00+05:30	A	f	1	c0e72460-6b32-4305-a8ec-633a70541d6c
c04cf0d2-0e50-4493-9127-b4eb6f832da5	2	Staff	Default Note	1	2021-12-11 02:00:39.924215+05:30	2020-06-01 02:30:00+05:30	A	f	1	c0e72460-6b32-4305-a8ec-633a70541d6c
e7f81a54-e8f7-4a14-a088-909b4b870d20	1	Admin	Default Note	1	2021-12-12 14:41:08.197677+05:30	2020-06-01 02:30:00+05:30	A	f	1	246f6c2a-9020-4f96-b253-e67225c440b3
a1052e10-9b52-47b3-8648-667325a9038e	2	Staff	Default Note	1	2021-12-12 14:41:08.198518+05:30	2020-06-01 02:30:00+05:30	A	f	1	246f6c2a-9020-4f96-b253-e67225c440b3
4909d82b-b7ad-4ed6-87ab-47655c2e9f9d	1	Admin	Default Note	1	2021-12-13 16:46:25.632229+05:30	2020-06-01 02:30:00+05:30	A	f	1	a1792d81-1fd7-4e4d-ada0-ee8bdec02992
05dfa3ba-3484-45a4-9d28-ca13b9872927	2	Staff	Default Note	1	2021-12-13 16:46:25.634086+05:30	2020-06-01 02:30:00+05:30	A	f	1	a1792d81-1fd7-4e4d-ada0-ee8bdec02992
684bc4b3-2e0e-44b2-ac7c-cb52a2ee6762	1	Admin	Default Note	1	2021-12-14 21:23:30.636109+05:30	2020-06-01 02:30:00+05:30	A	f	1	3bd771a8-51d4-4593-a34e-cbe285d89382
469bfebd-7f8e-42e2-91dc-5735bf963a93	2	Staff	Default Note	1	2021-12-14 21:23:30.63745+05:30	2020-06-01 02:30:00+05:30	A	f	1	3bd771a8-51d4-4593-a34e-cbe285d89382
8266a144-ac9a-46f1-ae4d-889a9f8423ba	1	Admin	Default Note	1	2021-12-15 00:07:32.544815+05:30	2020-06-01 02:30:00+05:30	A	f	1	8b04bd41-e98d-420b-a973-3471ea65cc0b
7b9e5245-c829-46b8-a3f1-670994b1464e	2	Staff	Default Note	1	2021-12-15 00:07:32.546203+05:30	2020-06-01 02:30:00+05:30	A	f	1	8b04bd41-e98d-420b-a973-3471ea65cc0b
2349f45b-1f4d-4a0c-a78e-068751d1c5e2	1	Admin	Default Note	1	2021-12-15 00:11:11.609715+05:30	2020-06-01 02:30:00+05:30	A	f	1	3459d3cd-4e84-407f-ae6a-dd5737aa8357
4e7b3738-bec9-4ad3-af51-5654af1b5809	2	Staff	Default Note	1	2021-12-15 00:11:11.611379+05:30	2020-06-01 02:30:00+05:30	A	f	1	3459d3cd-4e84-407f-ae6a-dd5737aa8357
af4ac973-34a3-4f86-a197-8e48cc80885a	1	Admin	Default Note	1	2021-12-17 18:59:29.636944+05:30	2020-06-01 02:30:00+05:30	A	f	1	4faee31d-8578-46c4-9bc7-8fa3b174f0d1
8e884aab-70f7-4977-b21a-5161e246fbf4	2	Staff	Default Note	1	2021-12-17 18:59:29.638176+05:30	2020-06-01 02:30:00+05:30	A	f	1	4faee31d-8578-46c4-9bc7-8fa3b174f0d1
cfe0f674-5aec-459d-8487-8ccd121cfb7d	1	Admin	Default Note	1	2021-12-18 02:35:28.929299+05:30	2020-06-01 02:30:00+05:30	A	f	1	428586a8-6265-45d7-b51a-ce93476eaf07
3a48716f-df0d-4a1c-a00b-f393abffe00b	2	Staff	Default Note	1	2021-12-18 02:35:28.93011+05:30	2020-06-01 02:30:00+05:30	A	f	1	428586a8-6265-45d7-b51a-ce93476eaf07
5262884b-66aa-4fd1-b194-5a04a9716663	1	Admin	Default Note	1	2021-12-18 16:29:28.005135+05:30	2020-06-01 02:30:00+05:30	A	f	1	58e4743f-985f-4b99-8236-d8d8e38e3b30
dcef15da-6cad-460f-9f69-4fe8e787d22f	2	Staff	Default Note	1	2021-12-18 16:29:28.005956+05:30	2020-06-01 02:30:00+05:30	A	f	1	58e4743f-985f-4b99-8236-d8d8e38e3b30
a504276e-58e1-4dd1-b00b-53cddfeda444	1	Admin	Default Note	1	2021-12-21 13:41:37.90368+05:30	2020-06-01 02:30:00+05:30	A	f	1	12a3eeda-157b-4279-b111-712087578af9
e3048eee-57bc-42eb-98f8-84396c768079	2	Staff	Default Note	1	2021-12-21 13:41:37.905436+05:30	2020-06-01 02:30:00+05:30	A	f	1	12a3eeda-157b-4279-b111-712087578af9
c8795708-f370-41bb-9f0a-44750d4aef4f	1	Admin	Default Note	1	2021-12-22 10:40:14.052833+05:30	2020-06-01 02:30:00+05:30	A	f	1	8633ef36-2024-4b2d-811f-248ffe9ce681
91494404-277c-438c-9032-07784a028ecc	2	Staff	Default Note	1	2021-12-22 10:40:14.053831+05:30	2020-06-01 02:30:00+05:30	A	f	1	8633ef36-2024-4b2d-811f-248ffe9ce681
8dda71b7-9c3f-4c6a-8051-965089b2d91c	1	Admin	Default Note	1	2021-12-23 22:25:47.788266+05:30	2020-06-01 02:30:00+05:30	A	f	1	8cfce55d-f345-4699-a7b4-f2e7dd7f8481
3709d822-2480-4b2f-a93b-a32e2ed7bd77	2	Staff	Default Note	1	2021-12-23 22:25:47.789923+05:30	2020-06-01 02:30:00+05:30	A	f	1	8cfce55d-f345-4699-a7b4-f2e7dd7f8481
549e6246-f7a2-464d-bf3a-aaaacc16855c	1	Admin	Default Note	1	2021-12-24 19:03:01.353124+05:30	2020-06-01 02:30:00+05:30	A	f	1	739321d9-3357-40ad-9c07-c656cef04bd1
20d9ec8b-c01b-4340-880d-6a0f3e0940e9	2	Staff	Default Note	1	2021-12-24 19:03:01.353887+05:30	2020-06-01 02:30:00+05:30	A	f	1	739321d9-3357-40ad-9c07-c656cef04bd1
f82946c1-9012-49bd-b47c-942ff66855a5	1	Admin	Default Note	1	2021-12-25 23:39:53.115792+05:30	2020-06-01 02:30:00+05:30	A	f	1	4c62946d-e31e-4044-bf2c-9b07f79633e2
72579507-0a18-4941-b09d-62b9d6658e7c	2	Staff	Default Note	1	2021-12-25 23:39:53.116698+05:30	2020-06-01 02:30:00+05:30	A	f	1	4c62946d-e31e-4044-bf2c-9b07f79633e2
a4fb1827-3ac2-4034-b641-c23d9e095bbc	1	Admin	Default Note	1	2021-12-26 14:03:02.045439+05:30	2020-06-01 02:30:00+05:30	A	f	1	b56d5f64-ec3f-453b-86ac-2d41352c9451
77815427-922f-41c9-9544-4d236923140b	2	Staff	Default Note	1	2021-12-26 14:03:02.04672+05:30	2020-06-01 02:30:00+05:30	A	f	1	b56d5f64-ec3f-453b-86ac-2d41352c9451
364a0a0e-f2bf-4c24-afba-3a346ac3c4e1	1	Admin	Default Note	1	2021-12-26 15:23:56.812455+05:30	2020-06-01 02:30:00+05:30	A	f	1	cf563b77-03bf-4b3f-8f4e-82d99b604c1f
4cbf167b-3e72-4d8c-a43d-a624b6ca2b76	2	Staff	Default Note	1	2021-12-26 15:23:56.813281+05:30	2020-06-01 02:30:00+05:30	A	f	1	cf563b77-03bf-4b3f-8f4e-82d99b604c1f
74c7f207-8360-423c-9c88-ee4d556dadbd	1	Admin	Default Note	1	2021-12-26 18:26:40.104609+05:30	2020-06-01 02:30:00+05:30	A	f	1	10ec1e50-5c23-477e-9cf9-07517a0222ca
18c11417-bf69-4292-9c5b-a335ad819563	2	Staff	Default Note	1	2021-12-26 18:26:40.105353+05:30	2020-06-01 02:30:00+05:30	A	f	1	10ec1e50-5c23-477e-9cf9-07517a0222ca
641fba08-ce8d-40c5-bacd-1b7e4caff34f	1	Admin	Default Note	1	2021-12-26 21:10:48.027939+05:30	2020-06-01 02:30:00+05:30	A	f	1	85c7097e-cb09-4def-804c-d2451fbbcf7f
69db8b01-945e-46b4-8c63-f62705887b2f	2	Staff	Default Note	1	2021-12-26 21:10:48.029193+05:30	2020-06-01 02:30:00+05:30	A	f	1	85c7097e-cb09-4def-804c-d2451fbbcf7f
6d3fc8f3-53c0-45a3-b991-eea304f0e1f1	1	Admin	Default Note	1	2021-12-27 14:07:46.360134+05:30	2020-06-01 02:30:00+05:30	A	f	1	61083492-727f-4bed-9c2e-ebda53932414
f21599c4-c920-4547-9ca8-b6a5d94b59a2	2	Staff	Default Note	1	2021-12-27 14:07:46.361561+05:30	2020-06-01 02:30:00+05:30	A	f	1	61083492-727f-4bed-9c2e-ebda53932414
026b2f82-3418-4998-8dc9-5726de7db94d	1	Admin	Default Note	1	2021-12-28 21:09:04.656117+05:30	2020-06-01 02:30:00+05:30	A	f	1	ef0fe35b-ae42-4a5a-8c00-1107dc86d86f
e4f52092-8811-43c4-839e-4d5d5a999a77	2	Staff	Default Note	1	2021-12-28 21:09:04.657754+05:30	2020-06-01 02:30:00+05:30	A	f	1	ef0fe35b-ae42-4a5a-8c00-1107dc86d86f
3850113a-71d9-4cf4-b062-b90d7df4a638	1	Admin	Default Note	1	2021-12-29 15:50:42.349041+05:30	2020-06-01 02:30:00+05:30	A	f	1	a14abb9a-4374-431e-8f47-babf9f786ae1
06db61fd-4be0-438a-9110-0242132c5afd	2	Staff	Default Note	1	2021-12-29 15:50:42.349805+05:30	2020-06-01 02:30:00+05:30	A	f	1	a14abb9a-4374-431e-8f47-babf9f786ae1
bc1a05d2-78d8-45d4-9f17-503bf31a3fb1	1	Admin	Default Note	1	2021-12-29 22:04:22.007048+05:30	2020-06-01 02:30:00+05:30	A	f	1	b6cf2ca0-4746-4683-8eb8-2f39b430df35
262051ff-22a9-488f-912b-1288a945a6f7	2	Staff	Default Note	1	2021-12-29 22:04:22.007773+05:30	2020-06-01 02:30:00+05:30	A	f	1	b6cf2ca0-4746-4683-8eb8-2f39b430df35
41f7aaf0-b924-42f1-9a9b-dcbbe3ceeffa	1	Admin	Default Note	1	2021-12-31 01:08:44.367075+05:30	2020-06-01 02:30:00+05:30	A	f	1	d5afab82-1ee6-4442-9473-96122adb22eb
9c5037dd-8280-40fa-862a-ce3d54a59b2f	2	Staff	Default Note	1	2021-12-31 01:08:44.368422+05:30	2020-06-01 02:30:00+05:30	A	f	1	d5afab82-1ee6-4442-9473-96122adb22eb
74666cc3-d6b9-4a82-aa51-cbc5ae86cbc5	1	Admin	Default Note	1	2022-01-02 15:09:39.98037+05:30	2020-06-01 02:30:00+05:30	A	f	1	fd5adf85-f4df-4510-a34e-d3bdb75bcf31
2c760f74-9b8d-45eb-ba46-fd45a8a8c139	2	Staff	Default Note	1	2022-01-02 15:09:39.982961+05:30	2020-06-01 02:30:00+05:30	A	f	1	fd5adf85-f4df-4510-a34e-d3bdb75bcf31
efe826d3-b48a-44ec-97e9-0b37047223f2	1	Admin	Default Note	1	2022-01-03 00:01:28.646723+05:30	2020-06-01 02:30:00+05:30	A	f	1	5a39ae37-95be-4f05-9012-415d49ff01f8
86c0bd01-9447-4b31-a69d-d0a29605f0a1	2	Staff	Default Note	1	2022-01-03 00:01:28.648353+05:30	2020-06-01 02:30:00+05:30	A	f	1	5a39ae37-95be-4f05-9012-415d49ff01f8
784b46e2-a706-45b8-8820-105b7ec17fd8	1	Admin	Default Note	1	2022-01-03 01:29:28.721118+05:30	2020-06-01 02:30:00+05:30	A	f	1	7c4f3dab-df93-4d8d-bbb9-15c5bfc5f52f
c89811d8-3350-454d-b235-4d22086c755d	2	Staff	Default Note	1	2022-01-03 01:29:28.722494+05:30	2020-06-01 02:30:00+05:30	A	f	1	7c4f3dab-df93-4d8d-bbb9-15c5bfc5f52f
9f321ff5-36fb-4e53-8a07-8a2fcfc6892a	1	Admin	Default Note	1	2022-01-03 02:50:56.601656+05:30	2020-06-01 02:30:00+05:30	A	f	1	b672fad5-ffb9-4b68-8457-1bcd82dfa8d0
6e122454-c2a7-4a54-ac79-f96456704c43	2	Staff	Default Note	1	2022-01-03 02:50:56.603014+05:30	2020-06-01 02:30:00+05:30	A	f	1	b672fad5-ffb9-4b68-8457-1bcd82dfa8d0
2f4987d6-2fac-4715-9140-c438e4d8fe5e	1	Admin	Default Note	1	2022-01-03 19:23:31.311961+05:30	2020-06-01 02:30:00+05:30	A	f	1	f8e4c263-1e59-4a0b-a594-83a1602b5deb
53ef95a5-1897-4a5e-9ad4-97bb9ff7f753	2	Staff	Default Note	1	2022-01-03 19:23:31.31337+05:30	2020-06-01 02:30:00+05:30	A	f	1	f8e4c263-1e59-4a0b-a594-83a1602b5deb
4ea4dcab-67ce-4607-b2aa-9ec2267023cf	1	Admin	Default Note	1	2022-01-03 23:17:00.95306+05:30	2020-06-01 02:30:00+05:30	A	f	1	ec84b858-b010-4367-a084-a89f265cab84
7da49d17-577d-4c55-b195-eb536a76560c	2	Staff	Default Note	1	2022-01-03 23:17:00.95431+05:30	2020-06-01 02:30:00+05:30	A	f	1	ec84b858-b010-4367-a084-a89f265cab84
8f8d788f-99c7-4838-a7a4-f1b99fc9def8	1	Admin	Default Note	1	2022-01-04 11:43:41.497486+05:30	2020-06-01 02:30:00+05:30	A	f	1	2feb3adb-2ad6-4652-8e30-5803a6a421ae
6d960ee0-6ca3-48ff-9c23-5d912f90504c	2	Staff	Default Note	1	2022-01-04 11:43:41.499325+05:30	2020-06-01 02:30:00+05:30	A	f	1	2feb3adb-2ad6-4652-8e30-5803a6a421ae
dc2d2c28-1fae-491e-8f6e-e29724ed27f2	1	Admin	Default Note	1	2022-01-04 15:57:02.66422+05:30	2020-06-01 02:30:00+05:30	A	f	1	0a242295-c902-4a02-9b70-df025f55aa30
2cd76bb4-7d2b-4057-bb85-10e154cfee58	2	Staff	Default Note	1	2022-01-04 15:57:02.665183+05:30	2020-06-01 02:30:00+05:30	A	f	1	0a242295-c902-4a02-9b70-df025f55aa30
75e5a9b4-a45f-4173-a10b-42b85dce3e93	1	Admin	Default Note	1	2022-01-04 23:44:17.928773+05:30	2020-06-01 02:30:00+05:30	A	f	1	f53ccf9e-cc11-4bf9-a061-55a624fbf57d
3239edda-405f-46d7-ba04-11db4f4155fb	2	Staff	Default Note	1	2022-01-04 23:44:17.929661+05:30	2020-06-01 02:30:00+05:30	A	f	1	f53ccf9e-cc11-4bf9-a061-55a624fbf57d
a0536555-b2a9-440b-a19a-08389a1e7afe	1	Admin	Default Note	1	2022-01-05 00:32:32.218447+05:30	2020-06-01 02:30:00+05:30	A	f	1	da5ffe0d-059a-4552-8b46-2552cf9befb2
668559d2-23f5-4ea7-b974-cbfa34fee081	2	Staff	Default Note	1	2022-01-05 00:32:32.219927+05:30	2020-06-01 02:30:00+05:30	A	f	1	da5ffe0d-059a-4552-8b46-2552cf9befb2
de5385be-5537-49d1-921d-349dcfd4d9c4	1	Admin	Default Note	1	2022-01-05 12:28:10.926835+05:30	2020-06-01 02:30:00+05:30	A	f	1	a13a14b3-1c74-493e-9a5e-028230d1b098
7f5e0e30-fa00-45ec-b8f9-bd2604f5f6d6	2	Staff	Default Note	1	2022-01-05 12:28:10.929221+05:30	2020-06-01 02:30:00+05:30	A	f	1	a13a14b3-1c74-493e-9a5e-028230d1b098
3d4fdd34-3a47-44cf-bd6f-91a6c8d3a18c	1	Admin	Default Note	1	2022-01-05 21:28:26.675755+05:30	2020-06-01 02:30:00+05:30	A	f	1	334e676d-1f87-425c-b2ae-a876c350d310
8106bf27-f9b8-4f80-b490-01931fb081c2	2	Staff	Default Note	1	2022-01-05 21:28:26.678033+05:30	2020-06-01 02:30:00+05:30	A	f	1	334e676d-1f87-425c-b2ae-a876c350d310
78c87910-03c6-4a2e-a2d5-c53872c864b4	1	Admin	Default Note	1	2022-01-05 21:55:20.819183+05:30	2020-06-01 02:30:00+05:30	A	f	1	99e0e153-5976-4ef2-86a5-ed5338c59367
5522f7c8-3d58-4a1c-975f-1bdc160b10df	2	Staff	Default Note	1	2022-01-05 21:55:20.820603+05:30	2020-06-01 02:30:00+05:30	A	f	1	99e0e153-5976-4ef2-86a5-ed5338c59367
ed713353-8fe0-4453-a6fd-e57514af6446	3	a	\N	260	2022-01-06 18:10:42.112265+05:30	2022-01-06 18:10:42.105651+05:30	A	f	1	8633ef36-2024-4b2d-811f-248ffe9ce681
d7e45553-2870-4911-ab30-283af5623fa5	1	Admin	Default Note	1	2022-01-06 23:30:55.911407+05:30	2020-06-01 02:30:00+05:30	A	f	1	d252b5f5-ae0a-4f3f-9448-6e73044c8096
4feafebb-2b1e-4bdc-ab4b-96bdf20c3eac	2	Staff	Default Note	1	2022-01-06 23:30:55.913556+05:30	2020-06-01 02:30:00+05:30	A	f	1	d252b5f5-ae0a-4f3f-9448-6e73044c8096
812d649d-73ef-4972-9893-2e0308f4c5d7	1	Admin	Default Note	1	2022-01-07 17:14:12.785253+05:30	2020-06-01 02:30:00+05:30	A	f	1	9bfc8756-7051-4c7c-a8a2-65357fe49b59
ef88edb8-24ec-41e8-9cac-cf659ddba01e	2	Staff	Default Note	1	2022-01-07 17:14:12.787356+05:30	2020-06-01 02:30:00+05:30	A	f	1	9bfc8756-7051-4c7c-a8a2-65357fe49b59
01be2b59-9cba-4bf2-b301-61b9a18bf1f4	1	Admin	Default Note	1	2022-01-07 17:39:06.905611+05:30	2020-06-01 02:30:00+05:30	A	f	1	90e225c9-663e-475f-9f9e-81bf22be0010
4dbf48f1-6bcf-46f0-8e65-aabf905a1721	2	Staff	Default Note	1	2022-01-07 17:39:06.907528+05:30	2020-06-01 02:30:00+05:30	A	f	1	90e225c9-663e-475f-9f9e-81bf22be0010
8bca984c-adb3-4726-9fc0-7e10da1884e0	1	Admin	Default Note	1	2022-01-07 18:56:32.51377+05:30	2020-06-01 02:30:00+05:30	A	f	1	5caa259b-84a3-4c8b-b9b9-3d42e7819c6b
fe8781f3-7eac-4c2b-954d-5ef18f5ddb7f	2	Staff	Default Note	1	2022-01-07 18:56:32.516092+05:30	2020-06-01 02:30:00+05:30	A	f	1	5caa259b-84a3-4c8b-b9b9-3d42e7819c6b
b01aca7f-1274-4e93-ab14-e51122aaba56	1	Admin	Default Note	1	2022-01-07 22:19:43.692374+05:30	2020-06-01 02:30:00+05:30	A	f	1	7be9f552-742a-4076-a0fc-467fd3162780
15483c76-9cc4-4625-a926-10aa2f7e979f	2	Staff	Default Note	1	2022-01-07 22:19:43.693257+05:30	2020-06-01 02:30:00+05:30	A	f	1	7be9f552-742a-4076-a0fc-467fd3162780
ffbc7f2f-e497-4070-bcb5-763dd1505e98	1	Admin	Default Note	1	2022-01-09 00:27:48.513712+05:30	2020-06-01 02:30:00+05:30	A	f	1	32916458-6c26-4753-9ed6-c58a971aa0d6
5c2fbe99-06bb-4a20-a94a-981b1829259f	2	Staff	Default Note	1	2022-01-09 00:27:48.528765+05:30	2020-06-01 02:30:00+05:30	A	f	1	32916458-6c26-4753-9ed6-c58a971aa0d6
6e10bb42-5a63-4038-b1a7-e0f191221a6d	1	Admin	Default Note	1	2022-01-09 13:48:07.110155+05:30	2020-06-01 02:30:00+05:30	A	f	1	f7de0912-b038-4050-a77c-37d99e30557e
3546abdb-4a86-4843-af9e-3d529ef2dba3	2	Staff	Default Note	1	2022-01-09 13:48:07.11312+05:30	2020-06-01 02:30:00+05:30	A	f	1	f7de0912-b038-4050-a77c-37d99e30557e
c55d6439-6212-4c08-bb06-e1151bda4291	1	Admin	Default Note	1	2022-01-09 14:39:56.402319+05:30	2020-06-01 02:30:00+05:30	A	f	1	a1ee4a39-ce71-4ab9-9603-9705ca890091
9310a978-66bc-4e5e-b04d-4f479b1302cc	2	Staff	Default Note	1	2022-01-09 14:39:56.405427+05:30	2020-06-01 02:30:00+05:30	A	f	1	a1ee4a39-ce71-4ab9-9603-9705ca890091
2f5852c9-1568-4cae-b31e-0badf4c1b719	1	Admin	Default Note	1	2022-01-10 12:46:32.982588+05:30	2020-06-01 02:30:00+05:30	A	f	1	9abde2d9-b821-4b17-ad55-44fbf2ad9afc
81e93dea-6be2-4535-aa4d-3545b2a64f68	2	Staff	Default Note	1	2022-01-10 12:46:32.986178+05:30	2020-06-01 02:30:00+05:30	A	f	1	9abde2d9-b821-4b17-ad55-44fbf2ad9afc
84633a0c-283c-4062-99bf-a7d034223382	1	Admin	Default Note	1	2022-01-11 11:38:56.201157+05:30	2020-06-01 02:30:00+05:30	A	f	1	32116503-c834-4a68-8458-54181400232e
74401810-3856-4a65-baa8-449f6ae16542	2	Staff	Default Note	1	2022-01-11 11:38:56.202653+05:30	2020-06-01 02:30:00+05:30	A	f	1	32116503-c834-4a68-8458-54181400232e
6a8077c9-d1b1-42ec-918b-7c3ad31990d4	1	Admin	Default Note	1	2022-01-13 20:00:21.913311+05:30	2020-06-01 02:30:00+05:30	A	f	1	45b2d50a-49c7-4697-bdb4-bcf45164b8aa
37b1c317-f4fa-4f72-8b15-2441c074a8e7	2	Staff	Default Note	1	2022-01-13 20:00:21.914155+05:30	2020-06-01 02:30:00+05:30	A	f	1	45b2d50a-49c7-4697-bdb4-bcf45164b8aa
e054af68-391e-4198-93a7-b6fdf3986360	1	Admin	Default Note	1	2022-01-14 19:11:32.126944+05:30	2020-06-01 02:30:00+05:30	A	f	1	3eb78911-43e3-48f8-aac1-e11dd36fe7b6
f6400357-9f33-4693-ae71-c2ffa15d61b8	2	Staff	Default Note	1	2022-01-14 19:11:32.131617+05:30	2020-06-01 02:30:00+05:30	A	f	1	3eb78911-43e3-48f8-aac1-e11dd36fe7b6
31da2dc0-8134-4ad9-b23b-2109f0a5fbeb	1	Admin	Default Note	1	2022-01-14 21:56:11.0254+05:30	2020-06-01 02:30:00+05:30	A	f	1	3b2fda8c-d333-49c3-8333-511a225428bf
7b1b5720-9629-4701-bb3c-9a70d9a96ce3	2	Staff	Default Note	1	2022-01-14 21:56:11.026117+05:30	2020-06-01 02:30:00+05:30	A	f	1	3b2fda8c-d333-49c3-8333-511a225428bf
3728d209-9b21-4c97-afb3-e217bd7401a9	1	Admin	Default Note	1	2022-01-14 22:53:15.638041+05:30	2020-06-01 02:30:00+05:30	A	f	1	a83e21fd-2a67-484a-909a-33e2efa0dd73
0bdc6f45-494f-4e48-91f3-3d395b1c10a9	2	Staff	Default Note	1	2022-01-14 22:53:15.639453+05:30	2020-06-01 02:30:00+05:30	A	f	1	a83e21fd-2a67-484a-909a-33e2efa0dd73
9ef6ca2f-43d1-4dfe-b64f-9397ab1d3efd	1	Admin	Default Note	1	2022-01-14 23:09:13.353012+05:30	2020-06-01 02:30:00+05:30	A	f	1	73af551e-2bd7-4332-8af4-11e5d47770a3
85d215ce-cbd4-41ee-b24a-38b7e0d951b3	2	Staff	Default Note	1	2022-01-14 23:09:13.35377+05:30	2020-06-01 02:30:00+05:30	A	f	1	73af551e-2bd7-4332-8af4-11e5d47770a3
a075a611-b928-4544-b37b-4f7db8c3b4d5	1	Admin	Default Note	1	2022-01-15 15:17:10.647068+05:30	2020-06-01 02:30:00+05:30	A	f	1	9cdaeea8-0409-4d95-8533-811c6439e062
6ef4555a-f0cd-4f9a-9fd0-6af6161fc7a2	2	Staff	Default Note	1	2022-01-15 15:17:10.648653+05:30	2020-06-01 02:30:00+05:30	A	f	1	9cdaeea8-0409-4d95-8533-811c6439e062
06d7ddad-f56b-4047-b0ad-22550c527395	1	Admin	Default Note	1	2022-01-15 22:23:24.709908+05:30	2020-06-01 02:30:00+05:30	A	f	1	282fbe97-daff-4588-81fa-0de171fc04ab
442606a7-322a-4cd8-98c1-5751f684cfd8	2	Staff	Default Note	1	2022-01-15 22:23:24.710635+05:30	2020-06-01 02:30:00+05:30	A	f	1	282fbe97-daff-4588-81fa-0de171fc04ab
02672efd-ecb0-437e-b9d3-ec0d74d85bf2	1	Admin	Default Note	1	2022-01-16 11:11:33.743253+05:30	2020-06-01 02:30:00+05:30	A	f	1	ae6968ab-5fdf-40d1-b777-83098c8fba86
c06c5808-8146-4d38-8983-3ac2ca99a9ac	2	Staff	Default Note	1	2022-01-16 11:11:33.745004+05:30	2020-06-01 02:30:00+05:30	A	f	1	ae6968ab-5fdf-40d1-b777-83098c8fba86
d3c24416-ceb9-4369-9e70-bcc2d0e44bdd	1	Admin	Default Note	1	2022-01-16 11:17:24.433302+05:30	2020-06-01 02:30:00+05:30	A	f	1	eb550b67-cda7-4fac-ba94-f9f78a5df869
4d0a919d-53a6-4e22-b782-2ecccf364e3b	2	Staff	Default Note	1	2022-01-16 11:17:24.434572+05:30	2020-06-01 02:30:00+05:30	A	f	1	eb550b67-cda7-4fac-ba94-f9f78a5df869
97543079-4d7d-4a36-a0ff-03d25e3dc9e6	1	Admin	Default Note	1	2022-01-16 11:18:47.152168+05:30	2020-06-01 02:30:00+05:30	A	f	1	6601a605-41ec-459f-aff7-82340b2d3cc8
079062af-b65a-4edc-a55b-a1b6ee248fb1	2	Staff	Default Note	1	2022-01-16 11:18:47.153361+05:30	2020-06-01 02:30:00+05:30	A	f	1	6601a605-41ec-459f-aff7-82340b2d3cc8
b7cb9b2a-3d55-4cb1-8029-a45ce30ef21b	1	Admin	Default Note	1	2022-01-16 11:30:54.352208+05:30	2020-06-01 02:30:00+05:30	A	f	1	ea05c13a-ba2c-46c1-bbdb-e87f6f30f747
6441d9ca-029f-421d-9aa8-433bb2d5c7c9	2	Staff	Default Note	1	2022-01-16 11:30:54.353009+05:30	2020-06-01 02:30:00+05:30	A	f	1	ea05c13a-ba2c-46c1-bbdb-e87f6f30f747
0d409d09-4f10-439b-95c8-0619cd831aa7	1	Admin	Default Note	1	2022-01-17 17:13:01.199208+05:30	2020-06-01 02:30:00+05:30	A	f	1	dcf133b0-7309-4304-a202-68b0203b99bf
fa3c0dfb-f89f-40ef-a3fa-371131857cec	2	Staff	Default Note	1	2022-01-17 17:13:01.201748+05:30	2020-06-01 02:30:00+05:30	A	f	1	dcf133b0-7309-4304-a202-68b0203b99bf
6f8d751c-de75-41aa-829d-c87182fd380c	1	Admin	Default Note	1	2022-01-17 20:33:51.241924+05:30	2020-06-01 02:30:00+05:30	A	f	1	d455e885-af99-4d79-a388-a1a6d8758216
42cfafa0-2ee2-406c-9443-368d8664f023	2	Staff	Default Note	1	2022-01-17 20:33:51.244197+05:30	2020-06-01 02:30:00+05:30	A	f	1	d455e885-af99-4d79-a388-a1a6d8758216
adf89e17-a366-4688-990d-fa432ce75f75	1	Admin	Default Note	1	2022-01-17 21:06:56.435675+05:30	2020-06-01 02:30:00+05:30	A	f	1	bea8ee87-8b73-40b0-a3e7-c708b029d849
927ac0e3-545d-4d04-aafc-b960bee3d4b0	2	Staff	Default Note	1	2022-01-17 21:06:56.437002+05:30	2020-06-01 02:30:00+05:30	A	f	1	bea8ee87-8b73-40b0-a3e7-c708b029d849
8f4684bd-7b0e-40f4-a039-e54456a74873	1	Admin	Default Note	1	2022-01-19 11:55:05.829528+05:30	2020-06-01 02:30:00+05:30	A	f	1	808d4372-9ac8-4db4-b26a-6a02ec921e97
15c18b3e-c400-49d1-b45c-1405939be98f	2	Staff	Default Note	1	2022-01-19 11:55:05.830286+05:30	2020-06-01 02:30:00+05:30	A	f	1	808d4372-9ac8-4db4-b26a-6a02ec921e97
26a895b7-8920-47a8-9c5d-52d536d484f8	1	Admin	Default Note	1	2022-01-19 12:17:49.903816+05:30	2020-06-01 02:30:00+05:30	A	f	1	c228061e-e3c4-4ea6-882b-3313b8e5015b
a5904fa4-56f1-4997-9cf4-16b17b6ef7e6	2	Staff	Default Note	1	2022-01-19 12:17:49.90474+05:30	2020-06-01 02:30:00+05:30	A	f	1	c228061e-e3c4-4ea6-882b-3313b8e5015b
ec4f59c9-8987-4762-8055-28de39ec4aa9	1	Admin	Default Note	1	2022-01-19 14:29:13.557276+05:30	2020-06-01 02:30:00+05:30	A	f	1	9f556980-7ace-4f44-97c4-4b90c21b0b2f
d15a2bc6-a368-4e7b-bd1f-45ef5943b9c5	2	Staff	Default Note	1	2022-01-19 14:29:13.558587+05:30	2020-06-01 02:30:00+05:30	A	f	1	9f556980-7ace-4f44-97c4-4b90c21b0b2f
aa031a07-cd8b-4a03-8511-8b52a59bf619	1	Admin	Default Note	1	2022-01-19 18:19:36.299761+05:30	2020-06-01 02:30:00+05:30	A	f	1	2663b14f-47ed-4762-948d-98db3387ba85
66805217-8372-42b5-86af-3e536025dd61	2	Staff	Default Note	1	2022-01-19 18:19:36.300511+05:30	2020-06-01 02:30:00+05:30	A	f	1	2663b14f-47ed-4762-948d-98db3387ba85
ec7b5a76-ee26-4ca7-9b05-1f3c121ffa6e	1	Admin	Default Note	1	2022-01-19 23:58:09.977701+05:30	2020-06-01 02:30:00+05:30	A	f	1	6e4c2ce3-10d9-4c7f-a766-ad6d2706d30b
cfa0f252-5e3f-42c4-8dc8-8edc298b1e8c	2	Staff	Default Note	1	2022-01-19 23:58:09.979188+05:30	2020-06-01 02:30:00+05:30	A	f	1	6e4c2ce3-10d9-4c7f-a766-ad6d2706d30b
b1787815-b8a3-4c9f-ac88-58a11d35c52e	1	Admin	Default Note	1	2022-01-20 16:16:08.172463+05:30	2020-06-01 02:30:00+05:30	A	f	1	f6c52c9a-39eb-494f-9224-812c5d32594b
3021dd5a-2b0e-436e-81b1-d10b0db6a73a	2	Staff	Default Note	1	2022-01-20 16:16:08.173884+05:30	2020-06-01 02:30:00+05:30	A	f	1	f6c52c9a-39eb-494f-9224-812c5d32594b
4e7e4c1c-e891-4758-9872-d77c00d8992c	1	Admin	Default Note	1	2022-01-20 20:34:43.433034+05:30	2020-06-01 02:30:00+05:30	A	f	1	b4117bfb-63b0-4c50-b22e-4f2978479ba8
81f10959-39b0-46fe-b444-13a3d23f3b6a	2	Staff	Default Note	1	2022-01-20 20:34:43.433871+05:30	2020-06-01 02:30:00+05:30	A	f	1	b4117bfb-63b0-4c50-b22e-4f2978479ba8
b453bdf6-8966-49a0-8c77-0c5fd1e956cc	1	Admin	Default Note	1	2022-01-21 10:44:53.177875+05:30	2020-06-01 02:30:00+05:30	A	f	1	731c47ee-fce9-4161-9090-f5f3c54a1c94
d94855a7-6142-4269-876a-d5e069324eeb	2	Staff	Default Note	1	2022-01-21 10:44:53.178701+05:30	2020-06-01 02:30:00+05:30	A	f	1	731c47ee-fce9-4161-9090-f5f3c54a1c94
53b5694b-88bf-4261-b2da-67989e7d0526	1	Admin	Default Note	1	2022-01-21 10:46:27.784374+05:30	2020-06-01 02:30:00+05:30	A	f	1	85bfd19b-c108-4a9e-97db-479230321d46
2bc20097-4204-4cd1-a1ee-b70d1cadb4e7	2	Staff	Default Note	1	2022-01-21 10:46:27.785297+05:30	2020-06-01 02:30:00+05:30	A	f	1	85bfd19b-c108-4a9e-97db-479230321d46
45d34f18-6cf8-4429-8ce4-90a14967ffbc	1	Admin	Default Note	1	2022-01-21 10:48:31.385139+05:30	2020-06-01 02:30:00+05:30	A	f	1	473383fa-ce83-4041-9a94-0338dbbe4df0
f4ea9ede-bb8c-4bde-aa55-b4479b820188	2	Staff	Default Note	1	2022-01-21 10:48:31.385856+05:30	2020-06-01 02:30:00+05:30	A	f	1	473383fa-ce83-4041-9a94-0338dbbe4df0
5f9be1fa-dac2-4213-be4d-e455f69a2860	1	Admin	Default Note	1	2022-01-22 09:04:30.348498+05:30	2020-06-01 02:30:00+05:30	A	f	1	6ab3708b-bcb6-4eec-945d-313f6adc4dd5
1c04b968-6c53-4cd7-82de-af26aebfbc68	2	Staff	Default Note	1	2022-01-22 09:04:30.350436+05:30	2020-06-01 02:30:00+05:30	A	f	1	6ab3708b-bcb6-4eec-945d-313f6adc4dd5
5808f9c5-5600-47fb-b27e-70c534cc62b6	1	Admin	Default Note	1	2022-01-22 14:07:17.187116+05:30	2020-06-01 02:30:00+05:30	A	f	1	10b8f12b-9c7b-4d31-8ceb-a18a7d1e04cd
c1c245a4-2674-409f-8baa-a69c0a315325	2	Staff	Default Note	1	2022-01-22 14:07:17.188746+05:30	2020-06-01 02:30:00+05:30	A	f	1	10b8f12b-9c7b-4d31-8ceb-a18a7d1e04cd
1b569c6a-b3ea-4906-a4f8-f789730c17bb	1	Admin	Default Note	1	2022-01-23 06:21:43.158531+05:30	2020-06-01 02:30:00+05:30	A	f	1	e4cd5106-67de-41f9-846d-752b77445c3a
d4766f7f-8557-4385-a350-5dd16bda00b8	2	Staff	Default Note	1	2022-01-23 06:21:43.159837+05:30	2020-06-01 02:30:00+05:30	A	f	1	e4cd5106-67de-41f9-846d-752b77445c3a
068014b6-9cab-4d1d-907e-e5ea2bef3532	1	Admin	Default Note	1	2022-01-24 15:39:33.594746+05:30	2020-06-01 02:30:00+05:30	A	f	1	26d2bb20-adbd-4d34-a88e-690827c462be
b4fd201c-f133-4aa8-a041-77c9159ec04c	2	Staff	Default Note	1	2022-01-24 15:39:33.595555+05:30	2020-06-01 02:30:00+05:30	A	f	1	26d2bb20-adbd-4d34-a88e-690827c462be
93f9b83f-a6f1-4738-97d4-20fe04e6a9d8	1	Admin	Default Note	1	2022-01-24 17:36:18.460397+05:30	2020-06-01 02:30:00+05:30	A	f	1	91e84ba8-c18f-489c-9097-50f94321a9a4
fa6720db-9129-4d08-98b9-432df8fa4f73	2	Staff	Default Note	1	2022-01-24 17:36:18.46181+05:30	2020-06-01 02:30:00+05:30	A	f	1	91e84ba8-c18f-489c-9097-50f94321a9a4
54dc61a9-aa26-4e6b-afdd-30e70d7543a0	1	Admin	Default Note	1	2022-01-24 19:40:47.435084+05:30	2020-06-01 02:30:00+05:30	A	f	1	55798cb4-b7a7-413a-bcb5-8ffe823930f4
5df387d0-ebbd-4ac7-9b61-dd57273622ae	2	Staff	Default Note	1	2022-01-24 19:40:47.436741+05:30	2020-06-01 02:30:00+05:30	A	f	1	55798cb4-b7a7-413a-bcb5-8ffe823930f4
e0269971-ddd0-4ef1-a96f-ebdc20362174	1	Admin	Default Note	1	2022-01-27 15:43:20.928725+05:30	2020-06-01 02:30:00+05:30	A	f	1	1b955cde-f944-4c21-91cd-5827e17de86a
a8f83615-0d54-453d-9c2c-4d64227c5894	2	Staff	Default Note	1	2022-01-27 15:43:20.938568+05:30	2020-06-01 02:30:00+05:30	A	f	1	1b955cde-f944-4c21-91cd-5827e17de86a
e31c20c1-ba47-4181-b39f-dd315727cfe5	1	Admin	Default Note	1	2022-01-27 15:52:58.103575+05:30	2020-06-01 02:30:00+05:30	A	f	1	bc1141b5-d982-4c73-8658-f8812e3a4e8e
ea79e3ef-421c-4819-914b-c01502f8fece	2	Staff	Default Note	1	2022-01-27 15:52:58.104346+05:30	2020-06-01 02:30:00+05:30	A	f	1	bc1141b5-d982-4c73-8658-f8812e3a4e8e
e5e80aa1-2b97-49bc-9658-a6ddef7fce0e	1	Admin	Default Note	1	2022-01-27 16:03:15.988152+05:30	2020-06-01 02:30:00+05:30	A	f	1	51d9e5d6-2c94-48b3-8903-10b359b84a82
890c7294-10e8-4cce-82c3-7c6c2fa597e1	2	Staff	Default Note	1	2022-01-27 16:03:15.989343+05:30	2020-06-01 02:30:00+05:30	A	f	1	51d9e5d6-2c94-48b3-8903-10b359b84a82
d19d8e55-6912-46ba-b3be-91eb59735368	1	Admin	Default Note	1	2022-01-28 01:43:38.643831+05:30	2020-06-01 02:30:00+05:30	A	f	1	257695a2-16fe-4acb-be80-6bb666384fbd
ced5a9a5-8717-4d64-b357-095a695036a9	2	Staff	Default Note	1	2022-01-28 01:43:38.645123+05:30	2020-06-01 02:30:00+05:30	A	f	1	257695a2-16fe-4acb-be80-6bb666384fbd
4b96fea8-82b6-423a-9a04-78e84f08bd91	1	Admin	Default Note	1	2022-01-28 11:46:30.367521+05:30	2020-06-01 02:30:00+05:30	A	f	1	e837c6a7-288a-4199-8b61-cc7905e54451
6b4d6dc0-619a-4d05-b168-560c976acf29	2	Staff	Default Note	1	2022-01-28 11:46:30.368266+05:30	2020-06-01 02:30:00+05:30	A	f	1	e837c6a7-288a-4199-8b61-cc7905e54451
be8839ff-c34a-49b0-9ce7-630e8370389b	3	aa	\N	260	2022-01-28 18:12:52.057713+05:30	2022-01-28 18:12:52.05116+05:30	A	f	1	91e84ba8-c18f-489c-9097-50f94321a9a4
fdb7ac95-b550-4d3d-967b-bd5068731ecb	1	Admin	Default Note	1	2022-01-29 11:18:34.202984+05:30	2020-06-01 02:30:00+05:30	A	f	1	bfc49080-518f-4ce7-a2eb-4bb0c7ad822f
d172831b-cfcf-4884-a7b5-1ae7294d4439	2	Staff	Default Note	1	2022-01-29 11:18:34.204599+05:30	2020-06-01 02:30:00+05:30	A	f	1	bfc49080-518f-4ce7-a2eb-4bb0c7ad822f
7a36ee8b-35f7-4284-9d64-5895a7a3f1d5	1	Admin	Default Note	1	2022-01-29 15:35:17.382385+05:30	2020-06-01 02:30:00+05:30	A	f	1	69e66470-68f3-4141-adf2-89dad395e8f6
0ebf6872-9f31-407d-8c25-773d01d45b84	2	Staff	Default Note	1	2022-01-29 15:35:17.383131+05:30	2020-06-01 02:30:00+05:30	A	f	1	69e66470-68f3-4141-adf2-89dad395e8f6
e770aeff-66c1-402d-af86-8fc6a6dea7db	1	Admin	Default Note	1	2022-01-30 01:21:13.936993+05:30	2020-06-01 02:30:00+05:30	A	f	1	93b67d8e-a162-450a-9a72-6a3c278604b5
e862a943-35cf-4645-895e-d2ec56973cdd	2	Staff	Default Note	1	2022-01-30 01:21:13.938761+05:30	2020-06-01 02:30:00+05:30	A	f	1	93b67d8e-a162-450a-9a72-6a3c278604b5
ff99f7c2-9aac-46c9-a745-e781319f2dc3	1	Admin	Default Note	1	2022-01-30 19:38:26.053727+05:30	2020-06-01 02:30:00+05:30	A	f	1	e38bf195-bd61-4fd3-a26b-938e2b129078
90f0a790-5d9a-45cd-83ee-89476ae8892b	2	Staff	Default Note	1	2022-01-30 19:38:26.054544+05:30	2020-06-01 02:30:00+05:30	A	f	1	e38bf195-bd61-4fd3-a26b-938e2b129078
937241e5-4d08-4e3d-b0ff-ab75779a0a10	1	Admin	Default Note	1	2022-02-02 14:00:22.263358+05:30	2020-06-01 02:30:00+05:30	A	f	1	2b0f8044-bdba-4248-9caf-e5e2e499fc5f
872f8922-9cfb-4cf0-a9bf-103cc45a3aeb	2	Staff	Default Note	1	2022-02-02 14:00:22.264173+05:30	2020-06-01 02:30:00+05:30	A	f	1	2b0f8044-bdba-4248-9caf-e5e2e499fc5f
324db025-33c4-4db9-b5af-29b4c0ca64b9	1	Admin	Default Note	1	2022-02-02 16:58:00.539685+05:30	2020-06-01 02:30:00+05:30	A	f	1	e92c2c13-95b0-4472-b3f8-c9d2c159f7fd
8b474e5b-b64b-4cf4-871f-85ac9805ad08	2	Staff	Default Note	1	2022-02-02 16:58:00.540611+05:30	2020-06-01 02:30:00+05:30	A	f	1	e92c2c13-95b0-4472-b3f8-c9d2c159f7fd
3259e1e6-572e-46b1-9a58-3bccd714b57a	1	Admin	Default Note	1	2022-02-05 11:14:15.507581+05:30	2020-06-01 02:30:00+05:30	A	f	1	64996d86-27be-4d2e-9270-39561941b598
595f3bca-e802-4f18-b497-2ae6b81f11d8	2	Staff	Default Note	1	2022-02-05 11:14:15.510141+05:30	2020-06-01 02:30:00+05:30	A	f	1	64996d86-27be-4d2e-9270-39561941b598
3dde8f5a-c1bc-4b1e-bdbe-122639cac566	1	Admin	Default Note	1	2022-02-08 17:11:57.059006+05:30	2020-06-01 02:30:00+05:30	A	f	1	c32526a6-a90a-4e06-8550-da558b6907d0
fc155f7f-de44-4a8d-8f69-5b7d933b0bb1	2	Staff	Default Note	1	2022-02-08 17:11:57.061725+05:30	2020-06-01 02:30:00+05:30	A	f	1	c32526a6-a90a-4e06-8550-da558b6907d0
71b195ac-6692-4cf2-a25e-c350930580d8	1	Admin	Default Note	1	2022-02-08 17:26:58.311111+05:30	2020-06-01 02:30:00+05:30	A	f	1	34e83d57-f92a-49c0-b54a-84a72b05a6e2
8d838ecc-3ecd-4376-a64d-40b31e629f6b	2	Staff	Default Note	1	2022-02-08 17:26:58.312574+05:30	2020-06-01 02:30:00+05:30	A	f	1	34e83d57-f92a-49c0-b54a-84a72b05a6e2
2184656a-8f3a-4331-9865-be2c0fcfab67	1	Admin	Default Note	1	2022-02-12 11:58:10.465816+05:30	2020-06-01 02:30:00+05:30	A	f	1	c12c2c56-a40c-47eb-a348-65d71a2be3b7
7433d828-201e-4288-a028-38e0eea1d8a8	2	Staff	Default Note	1	2022-02-12 11:58:10.46881+05:30	2020-06-01 02:30:00+05:30	A	f	1	c12c2c56-a40c-47eb-a348-65d71a2be3b7
96e5b06a-ba02-4fab-a928-c83a4de3b71c	1	Admin	Default Note	1	2022-02-13 10:55:53.738618+05:30	2020-06-01 02:30:00+05:30	A	f	1	bdd98b6c-32b9-4da3-86f7-efac5c7f072f
d9b10b36-e1db-4b3c-af60-04871e5996d6	2	Staff	Default Note	1	2022-02-13 10:55:53.740597+05:30	2020-06-01 02:30:00+05:30	A	f	1	bdd98b6c-32b9-4da3-86f7-efac5c7f072f
86ddf9b6-3635-444b-9b2f-b7c0f78be307	1	Admin	Default Note	1	2022-02-13 11:40:47.841805+05:30	2020-06-01 02:30:00+05:30	A	f	1	ecd45d3f-fc98-4dd3-b23a-7a0e00d7f349
1c713cdf-9210-42b7-89ad-90b823e841b1	2	Staff	Default Note	1	2022-02-13 11:40:47.843031+05:30	2020-06-01 02:30:00+05:30	A	f	1	ecd45d3f-fc98-4dd3-b23a-7a0e00d7f349
dcc53c4e-25e2-415f-95df-9c57772b117c	1	Admin	Default Note	1	2022-02-13 19:34:57.387433+05:30	2020-06-01 02:30:00+05:30	A	f	1	d26fb064-b97e-4fd0-86b5-54fe5abaf6cd
6bed00ce-f9cd-4b7a-bceb-bd6ec41571ce	2	Staff	Default Note	1	2022-02-13 19:34:57.390291+05:30	2020-06-01 02:30:00+05:30	A	f	1	d26fb064-b97e-4fd0-86b5-54fe5abaf6cd
f18ab5e1-b7a8-4246-b3ec-fc4039fdc661	1	Admin	Default Note	1	2022-02-13 19:37:06.977735+05:30	2020-06-01 02:30:00+05:30	A	f	1	5d25d15e-d8bd-4a75-9025-9614b53135da
fc2d51b5-e3ab-4aab-b707-79164c40d43a	2	Staff	Default Note	1	2022-02-13 19:37:06.978809+05:30	2020-06-01 02:30:00+05:30	A	f	1	5d25d15e-d8bd-4a75-9025-9614b53135da
69a4934f-21c2-4103-9286-38ae34c6ba88	1	Admin	Default Note	1	2022-02-13 19:38:40.443117+05:30	2020-06-01 02:30:00+05:30	A	f	1	70ae49bb-4b6a-47fa-9f8a-ffb1a8562743
7ed2ec61-e634-41f6-9bab-901c4ece77a0	2	Staff	Default Note	1	2022-02-13 19:38:40.444387+05:30	2020-06-01 02:30:00+05:30	A	f	1	70ae49bb-4b6a-47fa-9f8a-ffb1a8562743
5e5814a1-fe1f-43d7-a7cb-7b3d6b5b2222	3	manager	\N	76	2022-02-14 16:03:24.248737+05:30	2022-02-14 16:03:24.241181+05:30	A	f	1	df9a7e6c-11bd-49af-b35e-f48b116f95a6
7cf153c4-47bd-4b93-8e58-5513315af68a	1	Admin	Default Note	1	2022-02-14 23:33:28.959538+05:30	2020-06-01 02:30:00+05:30	A	f	1	3bb9730f-c65c-44ba-a385-e89b8e64e758
0d88e458-6e8b-40c3-90c8-bee284d6db54	2	Staff	Default Note	1	2022-02-14 23:33:28.962707+05:30	2020-06-01 02:30:00+05:30	A	f	1	3bb9730f-c65c-44ba-a385-e89b8e64e758
c4591aac-329b-4a08-a434-a3030c918e62	1	Admin	Default Note	1	2022-02-15 11:14:37.79385+05:30	2020-06-01 02:30:00+05:30	A	f	1	924abda3-7706-47b0-a908-2e0013e75fbc
89640439-4ac4-4185-b7fc-b3a3361faa67	2	Staff	Default Note	1	2022-02-15 11:14:37.79688+05:30	2020-06-01 02:30:00+05:30	A	f	1	924abda3-7706-47b0-a908-2e0013e75fbc
cdb0c41d-635c-4066-9a41-bf5eb9e31a7d	1	Admin	Default Note	1	2022-02-16 04:45:10.671794+05:30	2020-06-01 02:30:00+05:30	A	f	1	4ec75791-ef97-4f95-b914-8775a54025ea
9b2b5c4d-eea5-41fe-a004-341146e386e5	2	Staff	Default Note	1	2022-02-16 04:45:10.676661+05:30	2020-06-01 02:30:00+05:30	A	f	1	4ec75791-ef97-4f95-b914-8775a54025ea
675282da-65bf-4589-ac10-e6c1384697ae	4	role2	\N	76	2022-02-17 12:25:53.024373+05:30	2022-02-17 12:25:53.017351+05:30	A	f	1	df9a7e6c-11bd-49af-b35e-f48b116f95a6
648807d1-1146-48d3-bf5e-efa470422a38	3	role1	\N	76	2022-02-17 14:09:54.746186+05:30	2022-02-17 14:09:54.738501+05:30	A	f	1	69e66470-68f3-4141-adf2-89dad395e8f6
579c2147-f4cd-4eb2-9247-04f6cf0d1b55	1	Admin	Default Note	1	2022-02-19 20:07:28.707752+05:30	2020-06-01 02:30:00+05:30	A	f	1	f38f15be-e8c9-483b-a8f7-d991276cde78
a4b4954c-1276-45ce-8012-625ba17affab	2	Staff	Default Note	1	2022-02-19 20:07:28.709352+05:30	2020-06-01 02:30:00+05:30	A	f	1	f38f15be-e8c9-483b-a8f7-d991276cde78
bee6d128-24e8-4693-bb99-a02e724e67d6	1	Admin	Default Note	1	2022-02-19 21:20:15.258109+05:30	2020-06-01 02:30:00+05:30	A	f	1	f494e172-9cde-4801-9083-e58e5583cc1a
5fc2e851-c2f3-47bf-b356-d8681fec6373	2	Staff	Default Note	1	2022-02-19 21:20:15.258875+05:30	2020-06-01 02:30:00+05:30	A	f	1	f494e172-9cde-4801-9083-e58e5583cc1a
700414ac-c0ae-499a-9f8c-39d8822b7501	1	Admin	Default Note	1	2022-02-21 17:53:22.409171+05:30	2020-06-01 02:30:00+05:30	A	f	1	d2fb8a7e-c973-4057-804b-b60505a8f56e
89207cb9-0b99-4983-8e37-cb12c7388942	2	Staff	Default Note	1	2022-02-21 17:53:22.410977+05:30	2020-06-01 02:30:00+05:30	A	f	1	d2fb8a7e-c973-4057-804b-b60505a8f56e
9e72ee7d-cc75-4b2e-b1a3-034130975923	1	Admin	Default Note	1	2022-02-24 17:45:32.440979+05:30	2020-06-01 02:30:00+05:30	A	f	1	46d6fefa-4402-4d6a-8ed3-49251ba2e677
8fa6a2f0-e0c0-4fc7-8ed4-e64cd4bee08c	2	Staff	Default Note	1	2022-02-24 17:45:32.442465+05:30	2020-06-01 02:30:00+05:30	A	f	1	46d6fefa-4402-4d6a-8ed3-49251ba2e677
ac248d74-6a73-4661-80af-725b4757cbe1	1	Admin	Default Note	1	2022-02-24 20:09:15.675748+05:30	2020-06-01 02:30:00+05:30	A	f	1	6ebc9af4-7f1c-4de2-938d-060298ae5e81
8829bd09-5a92-47e9-944d-f859276892c5	2	Staff	Default Note	1	2022-02-24 20:09:15.677562+05:30	2020-06-01 02:30:00+05:30	A	f	1	6ebc9af4-7f1c-4de2-938d-060298ae5e81
57432e8d-3ed3-470d-80b5-dc22625a4e42	1	Admin	Default Note	1	2022-02-25 09:36:34.545346+05:30	2020-06-01 02:30:00+05:30	A	f	1	af99f52c-8de3-43b6-8f4d-988f158c2fd1
edd01e24-12c2-4260-811b-df82e47d3936	2	Staff	Default Note	1	2022-02-25 09:36:34.547204+05:30	2020-06-01 02:30:00+05:30	A	f	1	af99f52c-8de3-43b6-8f4d-988f158c2fd1
3925586d-c596-49c2-bca8-9fbff801392b	1	Admin	Default Note	1	2022-02-25 10:58:55.75167+05:30	2020-06-01 02:30:00+05:30	A	f	1	08845e39-44d2-4d01-aec3-21988e6a21d1
3f8ae36d-cca6-4e59-98e9-8ff2bdf8b321	2	Staff	Default Note	1	2022-02-25 10:58:55.753302+05:30	2020-06-01 02:30:00+05:30	A	f	1	08845e39-44d2-4d01-aec3-21988e6a21d1
48e59ff4-7d98-473d-ac3b-5ba56717f91b	1	Admin	Default Note	1	2022-02-25 15:56:39.164082+05:30	2020-06-01 02:30:00+05:30	A	f	1	8076f7d0-9075-44e6-a2a1-50f7590f4b9a
f2caec82-4b09-49df-b321-44aed9be39ff	2	Staff	Default Note	1	2022-02-25 15:56:39.165657+05:30	2020-06-01 02:30:00+05:30	A	f	1	8076f7d0-9075-44e6-a2a1-50f7590f4b9a
5442b05b-4f43-4681-b02f-b2d9f8d0dd90	1	Admin	Default Note	1	2022-02-26 03:25:29.159573+05:30	2020-06-01 02:30:00+05:30	A	f	1	c6cabc4a-6e3f-4e34-b42f-244958e88fcc
5b17572b-e5f5-465e-a034-6397f3253707	2	Staff	Default Note	1	2022-02-26 03:25:29.160922+05:30	2020-06-01 02:30:00+05:30	A	f	1	c6cabc4a-6e3f-4e34-b42f-244958e88fcc
720dc1e5-e8a2-4e3f-afea-f74dcdff6fef	1	Admin	Default Note	1	2022-02-26 10:41:41.719069+05:30	2020-06-01 02:30:00+05:30	A	f	1	3930085d-4537-4e6f-8b3e-370b706f097b
8805cc43-379d-4946-80ef-a1c80fc45c88	2	Staff	Default Note	1	2022-02-26 10:41:41.719856+05:30	2020-06-01 02:30:00+05:30	A	f	1	3930085d-4537-4e6f-8b3e-370b706f097b
a446dfc9-206a-4ef7-a3bc-57a6efdfa5ee	1	Admin	Default Note	1	2022-02-26 14:12:33.292837+05:30	2020-06-01 02:30:00+05:30	A	f	1	82315c7b-b2fa-4560-8491-f8e4b4b11ebe
245b5fa5-968b-4191-bccc-309da4ed7fc2	2	Staff	Default Note	1	2022-02-26 14:12:33.29364+05:30	2020-06-01 02:30:00+05:30	A	f	1	82315c7b-b2fa-4560-8491-f8e4b4b11ebe
5bc802cd-3182-46a4-9e77-63ff385d5e23	1	Admin	Default Note	1	2022-02-26 14:14:57.17198+05:30	2020-06-01 02:30:00+05:30	A	f	1	ad347c01-b9dd-401f-b385-bbd81a398eba
1e25246c-81a5-4b58-b12f-4b315566df30	2	Staff	Default Note	1	2022-02-26 14:14:57.172772+05:30	2020-06-01 02:30:00+05:30	A	f	1	ad347c01-b9dd-401f-b385-bbd81a398eba
0c5a2877-0bf9-4e38-9523-37c50608408e	1	Admin	Default Note	1	2022-02-27 13:04:45.203524+05:30	2020-06-01 02:30:00+05:30	A	f	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a
c3e0a90b-cfae-4796-a4fc-2e890aef156a	2	Staff	Default Note	1	2022-02-27 13:04:45.204357+05:30	2020-06-01 02:30:00+05:30	A	f	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a
1e0dc9f0-da57-441d-98bc-8e65abb6a26d	3	salesmen	\N	372	2022-02-27 13:29:25.839097+05:30	2022-02-27 13:29:25.832325+05:30	A	f	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a
844a6d3e-d3f7-4a20-a75e-f68e00642d70	1	Admin	Default Note	1	2022-02-28 15:20:50.926913+05:30	2020-06-01 02:30:00+05:30	A	f	1	b8fa7cbd-2060-48ec-9229-d5dee7de4832
e2c3008b-3081-41ba-8925-32335bdde302	2	Staff	Default Note	1	2022-02-28 15:20:50.928863+05:30	2020-06-01 02:30:00+05:30	A	f	1	b8fa7cbd-2060-48ec-9229-d5dee7de4832
b9f66ba7-9d5a-4b51-bdea-06f833cceaeb	4	Accountant	\N	372	2022-03-02 23:23:38.288228+05:30	2022-03-02 23:23:38.281646+05:30	A	f	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a
8fcbbccc-e20b-4cec-8d3e-e8a0773bcee4	5	Purchaser	\N	372	2022-03-02 23:24:55.627417+05:30	2022-03-02 23:24:55.618628+05:30	A	f	1	cbba36e8-8cb9-4570-9161-2aecf7cf8e8a
9f111e1c-4307-473c-b093-69b4520b770a	1	Admin	Default Note	1	2022-03-06 14:39:46.532404+05:30	2020-06-01 02:30:00+05:30	A	f	1	85b0c263-d294-4c4b-b05d-596c5c887c4f
8a29f54d-9d7b-4d2e-9477-9d4db231725c	2	Staff	Default Note	1	2022-03-06 14:39:46.536543+05:30	2020-06-01 02:30:00+05:30	A	f	1	85b0c263-d294-4c4b-b05d-596c5c887c4f
dff453a3-fd12-45af-af32-4f00e7061d96	1	Admin	Default Note	1	2022-03-06 23:16:57.801213+05:30	2020-06-01 02:30:00+05:30	A	f	1	30e1c142-9b1a-4596-80fa-064565bbe2a6
1590d873-5358-4168-90aa-f3b392add6f3	2	Staff	Default Note	1	2022-03-06 23:16:57.802165+05:30	2020-06-01 02:30:00+05:30	A	f	1	30e1c142-9b1a-4596-80fa-064565bbe2a6
ecfaee9a-0b75-49a9-94f9-c8df1279a5c7	1	Admin	Default Note	1	2022-03-07 09:44:13.67075+05:30	2020-06-01 02:30:00+05:30	A	f	1	0c254400-a256-4d16-8e88-98e4626e1a16
c13b4472-07e9-41ce-a057-21dc962446b3	2	Staff	Default Note	1	2022-03-07 09:44:13.674075+05:30	2020-06-01 02:30:00+05:30	A	f	1	0c254400-a256-4d16-8e88-98e4626e1a16
51a38b3d-0b6b-45ca-b032-59996a5205ff	3	Test user	\N	62	2022-03-08 14:52:42.573715+05:30	2022-03-08 14:52:42.565639+05:30	A	f	1	d4ca8637-696b-4ff0-8b88-991774b9547c
30430b6a-2ae8-4b77-b0d6-1d58548fde28	1	Admin	Default Note	1	2022-03-12 12:21:13.944237+05:30	2020-06-01 02:30:00+05:30	A	f	1	eeeaf2e2-15a0-4b62-a3a1-8a8d78dbf4ec
f7c3fad6-2fac-43b3-bdbf-3c1df0c3dacb	2	Staff	Default Note	1	2022-03-12 12:21:13.945889+05:30	2020-06-01 02:30:00+05:30	A	f	1	eeeaf2e2-15a0-4b62-a3a1-8a8d78dbf4ec
fce388b9-8b1c-4a78-94aa-1f828eac3b93	1	Admin	Default Note	1	2022-03-12 12:25:21.120461+05:30	2020-06-01 02:30:00+05:30	A	f	1	20189cff-39bf-43bd-879a-8ddfac902ae9
08fa095b-9ec8-45e8-900f-6ea35130b851	2	Staff	Default Note	1	2022-03-12 12:25:21.121555+05:30	2020-06-01 02:30:00+05:30	A	f	1	20189cff-39bf-43bd-879a-8ddfac902ae9
d3c7c815-8abf-40d4-91a1-3ac41032c6da	1	Admin	Default Note	1	2022-03-13 23:20:11.898955+05:30	2020-06-01 02:30:00+05:30	A	f	1	9884e82a-bddb-4105-adc3-8f6d741cf68c
7760c61e-51e3-4ff0-aa25-f0e07eb11be6	2	Staff	Default Note	1	2022-03-13 23:20:11.902412+05:30	2020-06-01 02:30:00+05:30	A	f	1	9884e82a-bddb-4105-adc3-8f6d741cf68c
30f88b2a-1b66-4fef-b4f7-c6f0d3116bf7	1	Admin	Default Note	1	2022-03-14 10:38:52.449728+05:30	2020-06-01 02:30:00+05:30	A	f	1	ffa8c920-ef76-43fa-a629-0b3f8fdd3c91
602306a0-2065-4c60-90b4-ec992610650f	2	Staff	Default Note	1	2022-03-14 10:38:52.452156+05:30	2020-06-01 02:30:00+05:30	A	f	1	ffa8c920-ef76-43fa-a629-0b3f8fdd3c91
da6a3d66-b182-475c-a440-8ec1b31e7799	1	Admin	Default Note	1	2022-03-14 16:13:00.639103+05:30	2020-06-01 02:30:00+05:30	A	f	1	89e29611-d06e-48e1-9afe-50eb756be97f
84d8c02f-c732-4cfd-be13-cfdbf80ed34b	2	Staff	Default Note	1	2022-03-14 16:13:00.64089+05:30	2020-06-01 02:30:00+05:30	A	f	1	89e29611-d06e-48e1-9afe-50eb756be97f
47baa63a-f384-481c-95a0-d2c0244b3e24	1	Admin	Default Note	1	2022-03-15 16:17:33.127556+05:30	2020-06-01 02:30:00+05:30	A	f	1	496411f0-f421-4944-b2b5-5b70f079a141
56e443e7-ed27-4e5a-b676-17d95c399b2f	2	Staff	Default Note	1	2022-03-15 16:17:33.129324+05:30	2020-06-01 02:30:00+05:30	A	f	1	496411f0-f421-4944-b2b5-5b70f079a141
79763c17-2a72-49f9-8ae4-7b26ec6154b6	1	Admin	Default Note	1	2022-03-15 16:19:46.828211+05:30	2020-06-01 02:30:00+05:30	A	f	1	df50c3ef-61a0-4cb2-bd4c-43d73906e94c
164da116-c950-4401-be49-d63b295fd7ab	2	Staff	Default Note	1	2022-03-15 16:19:46.829392+05:30	2020-06-01 02:30:00+05:30	A	f	1	df50c3ef-61a0-4cb2-bd4c-43d73906e94c
55b63a27-7e62-47c2-9872-7ac29678b070	1	Admin	Default Note	1	2022-03-15 16:59:43.098119+05:30	2020-06-01 02:30:00+05:30	A	f	1	dde73e9f-9465-4fc9-ae1a-42643da46cd2
25e77d93-2057-4808-b2db-ba582afcc145	2	Staff	Default Note	1	2022-03-15 16:59:43.100489+05:30	2020-06-01 02:30:00+05:30	A	f	1	dde73e9f-9465-4fc9-ae1a-42643da46cd2
540698bd-b185-447e-9ad5-f6abb0160aa2	1	Admin	Default Note	1	2022-03-16 01:42:37.435822+05:30	2020-06-01 02:30:00+05:30	A	f	1	696c8548-ae83-4ed3-a292-6fcc642abe23
ee8bb70f-27c7-4bb3-b44c-734de700bfe3	2	Staff	Default Note	1	2022-03-16 01:42:37.437202+05:30	2020-06-01 02:30:00+05:30	A	f	1	696c8548-ae83-4ed3-a292-6fcc642abe23
29a393b3-6f66-4371-b1bf-e3d11af6a0e3	1	Admin	Default Note	1	2022-03-16 22:55:55.506033+05:30	2020-06-01 02:30:00+05:30	A	f	1	9e5584b8-c6d9-4b4f-aefc-ad78272fe7f3
043b3087-394f-4b04-9bb6-a628f9ea8aed	2	Staff	Default Note	1	2022-03-16 22:55:55.507612+05:30	2020-06-01 02:30:00+05:30	A	f	1	9e5584b8-c6d9-4b4f-aefc-ad78272fe7f3
e8bbc7f4-1754-487c-af0c-f7f4c9bebda5	1	Admin	Default Note	1	2022-03-18 21:40:19.070047+05:30	2020-06-01 02:30:00+05:30	A	f	1	192f6c79-161c-4bcd-9578-deb8f5e3ea57
bcfcbcc9-be15-462d-b378-bd4c5f1d75f9	2	Staff	Default Note	1	2022-03-18 21:40:19.070714+05:30	2020-06-01 02:30:00+05:30	A	f	1	192f6c79-161c-4bcd-9578-deb8f5e3ea57
80a4f6b8-c5a5-4c2b-8b59-286438df2228	1	Admin	Default Note	1	2022-03-18 21:43:03.159289+05:30	2020-06-01 02:30:00+05:30	A	f	1	eb22f045-55d5-44e2-b18a-813ea6f615bf
b41d2b5c-5340-45c5-b5e0-f004657873ca	2	Staff	Default Note	1	2022-03-18 21:43:03.16003+05:30	2020-06-01 02:30:00+05:30	A	f	1	eb22f045-55d5-44e2-b18a-813ea6f615bf
3b3899a4-3d92-46e4-8a5d-9e1e235b8ffa	1	Admin	Default Note	1	2022-03-20 22:51:09.451744+05:30	2020-06-01 02:30:00+05:30	A	f	1	ef80ebe2-6854-4bbd-8669-7adcadb9dada
46891f1a-34e4-4a95-85ef-124588a453a2	2	Staff	Default Note	1	2022-03-20 22:51:09.45285+05:30	2020-06-01 02:30:00+05:30	A	f	1	ef80ebe2-6854-4bbd-8669-7adcadb9dada
719478e3-34ee-40d7-826c-3f873104fa44	1	Admin	Default Note	1	2022-03-21 13:49:41.629627+05:30	2020-06-01 02:30:00+05:30	A	f	1	b4455909-e4f8-4d0a-b8e2-3777499fceb1
01f17b48-b774-47ca-a0ea-9c763a5d8257	2	Staff	Default Note	1	2022-03-21 13:49:41.630301+05:30	2020-06-01 02:30:00+05:30	A	f	1	b4455909-e4f8-4d0a-b8e2-3777499fceb1
7c728fb3-06de-4b1b-a699-149754451a56	1	Admin	Default Note	1	2022-03-21 19:46:34.221709+05:30	2020-06-01 02:30:00+05:30	A	f	1	f5eb7639-d1e9-40be-9607-84f20ee1cac3
a32d1b41-5254-411f-9f7a-dad59760051d	2	Staff	Default Note	1	2022-03-21 19:46:34.222524+05:30	2020-06-01 02:30:00+05:30	A	f	1	f5eb7639-d1e9-40be-9607-84f20ee1cac3
90a58af0-7979-416f-9a57-e77238306cb4	1	Admin	Default Note	1	2022-03-22 00:08:35.858597+05:30	2020-06-01 02:30:00+05:30	A	f	1	0b2972ce-7a2c-488b-9a08-257a17fb54e5
ad6f9d23-18df-4a02-8bff-afdb1bd199ad	2	Staff	Default Note	1	2022-03-22 00:08:35.860077+05:30	2020-06-01 02:30:00+05:30	A	f	1	0b2972ce-7a2c-488b-9a08-257a17fb54e5
b4815e5b-9efc-4ba8-9ca0-0c6776644983	1	Admin	Default Note	1	2022-03-22 12:30:16.947352+05:30	2020-06-01 02:30:00+05:30	A	f	1	d15d9485-4058-4a50-ab76-078e29e46b6e
42a6e26c-2838-4730-bb91-f1787b843212	2	Staff	Default Note	1	2022-03-22 12:30:16.948387+05:30	2020-06-01 02:30:00+05:30	A	f	1	d15d9485-4058-4a50-ab76-078e29e46b6e
220b8c4d-8c8c-426e-accc-d7347ee4bf07	1	Admin	Default Note	1	2022-03-23 10:37:26.689897+05:30	2020-06-01 02:30:00+05:30	A	f	1	c9198e59-9642-4ebe-a405-227de27239e6
5fc40882-2e45-4182-90fa-a41332800c64	2	Staff	Default Note	1	2022-03-23 10:37:26.690605+05:30	2020-06-01 02:30:00+05:30	A	f	1	c9198e59-9642-4ebe-a405-227de27239e6
c6661610-ec00-4e9d-8eb4-aa3abb149c6a	1	Admin	Default Note	1	2022-03-25 10:48:54.961531+05:30	2020-06-01 02:30:00+05:30	A	f	1	ce18f348-856c-44cc-adac-0d23efc32e6e
eb05c97c-00d5-499b-9df3-e694adda912d	2	Staff	Default Note	1	2022-03-25 10:48:54.962285+05:30	2020-06-01 02:30:00+05:30	A	f	1	ce18f348-856c-44cc-adac-0d23efc32e6e
20875f81-2630-4b71-b744-1c88984ccc3c	1	Admin	Default Note	1	2022-03-25 14:54:54.845432+05:30	2020-06-01 02:30:00+05:30	A	f	1	99a668d4-9591-41db-b776-7d2a7ba26d4f
ea873306-e6d6-49a0-8bd2-a758944ba836	2	Staff	Default Note	1	2022-03-25 14:54:54.8467+05:30	2020-06-01 02:30:00+05:30	A	f	1	99a668d4-9591-41db-b776-7d2a7ba26d4f
510a01b5-9b1b-4bb4-8716-983301ac7dc3	1	Admin	Default Note	1	2022-03-25 20:16:42.710145+05:30	2020-06-01 02:30:00+05:30	A	f	1	b7c83b6f-83bf-466a-8acc-0663a8dc32f7
f2d03002-4218-4a8c-8889-0943b7b4b9fa	2	Staff	Default Note	1	2022-03-25 20:16:42.710956+05:30	2020-06-01 02:30:00+05:30	A	f	1	b7c83b6f-83bf-466a-8acc-0663a8dc32f7
d737a4eb-c85b-44b5-b37b-993e5537e1fe	1	Admin	Default Note	1	2022-03-28 11:37:47.863502+05:30	2020-06-01 02:30:00+05:30	A	f	1	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32
c43f5b84-1398-42c1-a50c-67b4f44b46cf	2	Staff	Default Note	1	2022-03-28 11:37:47.864276+05:30	2020-06-01 02:30:00+05:30	A	f	1	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32
47efcbb4-43b7-4172-877a-05b0e78a5e5f	1	Admin	Default Note	1	2022-03-29 22:11:06.301701+05:30	2020-06-01 02:30:00+05:30	A	f	1	22593720-2add-49a2-8387-7fa49202906e
067bcce8-3027-4865-a3e5-b62859c1c27e	2	Staff	Default Note	1	2022-03-29 22:11:06.302747+05:30	2020-06-01 02:30:00+05:30	A	f	1	22593720-2add-49a2-8387-7fa49202906e
179bd3f8-46c1-4921-a815-9abbe8c6fb5b	1	Admin	Default Note	1	2022-03-30 10:07:37.325379+05:30	2020-06-01 02:30:00+05:30	A	f	1	9152f512-0522-49d3-83cc-12d8444268b2
47ad734e-9782-48c4-9cdf-62bee366f4b9	2	Staff	Default Note	1	2022-03-30 10:07:37.326052+05:30	2020-06-01 02:30:00+05:30	A	f	1	9152f512-0522-49d3-83cc-12d8444268b2
0945615f-ecb5-451f-80a7-6f49a6c18e39	1	Admin	Default Note	1	2022-03-30 15:03:10.993566+05:30	2020-06-01 02:30:00+05:30	A	f	1	bfc93d28-62ad-4ca4-80a8-e37dc6fb49d8
51402025-b061-4fdc-8450-8e32afc9fe69	2	Staff	Default Note	1	2022-03-30 15:03:10.994303+05:30	2020-06-01 02:30:00+05:30	A	f	1	bfc93d28-62ad-4ca4-80a8-e37dc6fb49d8
7f818da7-dc6d-4e2c-8d1b-2db2db132f68	1	Admin	Default Note	1	2022-04-04 14:35:56.797587+05:30	2020-06-01 02:30:00+05:30	A	f	1	ecf6342c-8f2f-4e0e-8bad-2c456d46903a
e11715eb-5d0a-4093-ae2d-0cc6a79294ad	2	Staff	Default Note	1	2022-04-04 14:35:56.798596+05:30	2020-06-01 02:30:00+05:30	A	f	1	ecf6342c-8f2f-4e0e-8bad-2c456d46903a
9fc0a60f-a299-4a8e-b15b-284052769c5d	1	Admin	Default Note	1	2022-04-04 15:01:17.100588+05:30	2020-06-01 02:30:00+05:30	A	f	1	6445b018-3047-4169-b79d-96ac02269183
68af5fcd-4e96-4e8b-a764-821ccd836e95	2	Staff	Default Note	1	2022-04-04 15:01:17.101264+05:30	2020-06-01 02:30:00+05:30	A	f	1	6445b018-3047-4169-b79d-96ac02269183
aacb0588-ebcd-4f32-94d7-facd6047c9fe	1	Admin	Default Note	1	2022-04-04 15:02:26.897328+05:30	2020-06-01 02:30:00+05:30	A	f	1	a3b01dba-44fd-4e23-9897-47e1a29d1907
942774bc-d29a-4743-ae8b-cefc54b05341	2	Staff	Default Note	1	2022-04-04 15:02:26.898071+05:30	2020-06-01 02:30:00+05:30	A	f	1	a3b01dba-44fd-4e23-9897-47e1a29d1907
610d523d-1b6f-498a-88ae-3ddec8b225dc	1	Admin	Default Note	1	2022-04-04 16:22:30.508084+05:30	2020-06-01 02:30:00+05:30	A	f	1	d958db14-c22d-4e3c-99bb-541dc6be305b
5cff5fb2-6694-4010-b306-37d3fb98d45c	2	Staff	Default Note	1	2022-04-04 16:22:30.508874+05:30	2020-06-01 02:30:00+05:30	A	f	1	d958db14-c22d-4e3c-99bb-541dc6be305b
95508198-5702-4ce0-8844-0a56ecb71710	1	Admin	Default Note	1	2022-04-04 17:09:17.623545+05:30	2020-06-01 02:30:00+05:30	A	f	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8
c53448a2-9acd-4a8b-b512-b232b899e617	2	Staff	Default Note	1	2022-04-04 17:09:17.624533+05:30	2020-06-01 02:30:00+05:30	A	f	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8
5ddb53a5-fe42-4ad4-a7eb-a9c6cc03878b	1	Admin	Default Note	1	2022-04-04 19:48:10.845884+05:30	2020-06-01 02:30:00+05:30	A	f	1	fb5512d5-8884-47fd-9aef-8dbe7fd0a472
4662ccbe-afb2-41cc-b6c2-0aec2aadf391	2	Staff	Default Note	1	2022-04-04 19:48:10.846798+05:30	2020-06-01 02:30:00+05:30	A	f	1	fb5512d5-8884-47fd-9aef-8dbe7fd0a472
3d51af90-e5fc-4c83-a8c2-06ae76c53ba0	1	Admin	Default Note	1	2022-04-06 11:45:38.945185+05:30	2020-06-01 02:30:00+05:30	A	f	1	ae99c103-a655-4c44-9d57-46ceb2c55e99
a5655ded-365d-486d-854c-3ad543de77c6	2	Staff	Default Note	1	2022-04-06 11:45:38.946154+05:30	2020-06-01 02:30:00+05:30	A	f	1	ae99c103-a655-4c44-9d57-46ceb2c55e99
7ba8b4b9-b708-42c9-bdd4-2a2b4f46c001	1	Admin	Default Note	1	2022-04-06 11:47:02.275088+05:30	2020-06-01 02:30:00+05:30	A	f	1	eb9f614b-f0be-480f-82c8-0b0fbb70143f
118d4117-c01c-4306-b14f-10e0ea0dfef0	2	Staff	Default Note	1	2022-04-06 11:47:02.275839+05:30	2020-06-01 02:30:00+05:30	A	f	1	eb9f614b-f0be-480f-82c8-0b0fbb70143f
9580d1a2-d5fc-426f-adab-4766528fc37d	1	Admin	Default Note	1	2022-04-06 13:49:37.720602+05:30	2020-06-01 02:30:00+05:30	A	f	1	cdb7a13a-74bc-4c7b-8859-e367baa33a6f
78a7ab65-2e08-4382-b946-f7031ce905be	2	Staff	Default Note	1	2022-04-06 13:49:37.721505+05:30	2020-06-01 02:30:00+05:30	A	f	1	cdb7a13a-74bc-4c7b-8859-e367baa33a6f
a70672c2-b1ce-45d0-8c44-df16039c1482	1	Admin	Default Note	1	2022-04-06 16:00:00.864456+05:30	2020-06-01 02:30:00+05:30	A	f	1	fc41cd7d-57d8-4619-9a18-b21487f73d6a
844afdf6-41f2-4901-a77b-85cff6f358cb	2	Staff	Default Note	1	2022-04-06 16:00:00.865219+05:30	2020-06-01 02:30:00+05:30	A	f	1	fc41cd7d-57d8-4619-9a18-b21487f73d6a
358228ee-042b-4c67-9dff-ef5fd338f65b	1	Admin	Default Note	1	2022-04-06 16:43:57.846717+05:30	2020-06-01 02:30:00+05:30	A	f	1	3a7eaf79-20ad-4be1-9f17-6b812a12c15d
b11a511f-0b73-403d-9752-7fef6b0fefb3	2	Staff	Default Note	1	2022-04-06 16:43:57.84782+05:30	2020-06-01 02:30:00+05:30	A	f	1	3a7eaf79-20ad-4be1-9f17-6b812a12c15d
82b7d363-7a47-4dd7-813a-d262337dde70	1	Admin	Default Note	1	2022-04-07 17:33:55.849651+05:30	2020-06-01 02:30:00+05:30	A	f	1	71289a84-cb65-4a99-82d3-49d45f43651d
a6154afc-4f62-49a6-bdac-c1711c54e2f4	2	Staff	Default Note	1	2022-04-07 17:33:55.850322+05:30	2020-06-01 02:30:00+05:30	A	f	1	71289a84-cb65-4a99-82d3-49d45f43651d
8e1befb7-b0b9-4390-b347-3e91810f596f	1	Admin	Default Note	1	2022-04-13 03:07:57.267508+05:30	2020-06-01 02:30:00+05:30	A	f	1	b3fba004-a423-43a6-9113-1d1a41cf0576
1ff2918b-d008-49b3-8edb-d9fd59b8f1a8	2	Staff	Default Note	1	2022-04-13 03:07:57.268929+05:30	2020-06-01 02:30:00+05:30	A	f	1	b3fba004-a423-43a6-9113-1d1a41cf0576
358904de-29c3-4b09-bcde-70e8e607e2c9	1	Admin	Default Note	1	2022-04-13 04:07:40.852347+05:30	2020-06-01 02:30:00+05:30	A	f	1	4bd2040e-1a29-4699-90b6-b3f5be3ef925
24f91999-3931-4c1b-a625-3d1f87b8e8c8	2	Staff	Default Note	1	2022-04-13 04:07:40.853291+05:30	2020-06-01 02:30:00+05:30	A	f	1	4bd2040e-1a29-4699-90b6-b3f5be3ef925
e0f75bac-ab88-4187-b97f-c5eba398676d	1	Admin	Default Note	1	2022-04-13 16:43:21.367119+05:30	2020-06-01 02:30:00+05:30	A	f	1	7b89b58f-173f-4afe-bc50-f46c262ab3b7
49e396b9-108a-4ae1-ae74-01893e65f6ef	2	Staff	Default Note	1	2022-04-13 16:43:21.368154+05:30	2020-06-01 02:30:00+05:30	A	f	1	7b89b58f-173f-4afe-bc50-f46c262ab3b7
478ec547-f1ea-4c2e-8759-514753bc66ff	1	Admin	Default Note	1	2022-04-18 11:04:34.722501+05:30	2020-06-01 02:30:00+05:30	A	f	1	d98c417d-8472-4d0d-9dfa-ffc829159417
3d827ae2-ee26-4091-93ab-bbcc1e27eff5	2	Staff	Default Note	1	2022-04-18 11:04:34.723179+05:30	2020-06-01 02:30:00+05:30	A	f	1	d98c417d-8472-4d0d-9dfa-ffc829159417
810733b3-8186-40ce-83fd-574bdd37abf3	1	Admin	Default Note	1	2022-04-19 05:07:30.361738+05:30	2020-06-01 02:30:00+05:30	A	f	1	3ff9e67a-61c0-43a2-b4bf-9bb0d92cb84e
844f14f3-08e9-4e11-9626-cf7596bd0a0b	2	Staff	Default Note	1	2022-04-19 05:07:30.362726+05:30	2020-06-01 02:30:00+05:30	A	f	1	3ff9e67a-61c0-43a2-b4bf-9bb0d92cb84e
b07cea35-34d5-4c8b-b67f-983ad77a276e	1	Admin	Default Note	1	2022-04-19 21:54:27.71245+05:30	2020-06-01 02:30:00+05:30	A	f	1	389bd0d6-da50-4bf1-ad1f-d3da91d89213
3d78be51-14e5-464f-9347-c34123eb50b9	2	Staff	Default Note	1	2022-04-19 21:54:27.713477+05:30	2020-06-01 02:30:00+05:30	A	f	1	389bd0d6-da50-4bf1-ad1f-d3da91d89213
a0fd4902-744e-43b5-aaf4-f5e498a9248e	1	Admin	Default Note	1	2022-04-20 15:14:58.737396+05:30	2020-06-01 02:30:00+05:30	A	f	1	a246dd4c-0583-473a-9026-e9c44ba8859c
b630446a-3880-4f65-8291-fe13e12b18ab	2	Staff	Default Note	1	2022-04-20 15:14:58.738766+05:30	2020-06-01 02:30:00+05:30	A	f	1	a246dd4c-0583-473a-9026-e9c44ba8859c
d43b5d01-55e3-4f1e-9679-cfd4adf30e71	1	Admin	Default Note	1	2022-04-21 01:11:56.876657+05:30	2020-06-01 02:30:00+05:30	A	f	1	dc5ffeaa-887c-4c9a-9065-9441bd8c5f23
9d527af3-c72c-47ef-8f63-2577a82e20a0	2	Staff	Default Note	1	2022-04-21 01:11:56.878183+05:30	2020-06-01 02:30:00+05:30	A	f	1	dc5ffeaa-887c-4c9a-9065-9441bd8c5f23
06696661-e024-45b8-a6b6-9dcf7efef248	1	Admin	Default Note	1	2022-04-22 09:45:39.054983+05:30	2020-06-01 02:30:00+05:30	A	f	1	9cd0274f-3bf0-4644-a1fe-0ebb28c0be6c
52651521-4740-4798-a229-0069b8537edd	2	Staff	Default Note	1	2022-04-22 09:45:39.055976+05:30	2020-06-01 02:30:00+05:30	A	f	1	9cd0274f-3bf0-4644-a1fe-0ebb28c0be6c
1ef96f2a-8544-47d0-a248-4003ade95cfc	1	Admin	Default Note	1	2022-04-23 09:56:46.651397+05:30	2020-06-01 02:30:00+05:30	A	f	1	4f684660-13b2-4823-bc13-d2edea17dbb7
76b1e668-e9e9-4eaa-97b6-16ae3e41f5d2	2	Staff	Default Note	1	2022-04-23 09:56:46.652086+05:30	2020-06-01 02:30:00+05:30	A	f	1	4f684660-13b2-4823-bc13-d2edea17dbb7
40b3decf-345c-4c60-bd5f-625cf1120e6b	1	Admin	Default Note	1	2022-04-23 22:36:32.306521+05:30	2020-06-01 02:30:00+05:30	A	f	1	a5e22203-1d06-4887-b1ad-2c5940754382
e65eb10c-89f2-4bc4-baac-288b945a7a64	2	Staff	Default Note	1	2022-04-23 22:36:32.307279+05:30	2020-06-01 02:30:00+05:30	A	f	1	a5e22203-1d06-4887-b1ad-2c5940754382
ed6ee198-837e-4eb7-8567-b0bd872dab3a	1	Admin	Default Note	1	2022-04-23 23:09:25.746046+05:30	2020-06-01 02:30:00+05:30	A	f	1	379a9d10-ed8e-4ee3-81dc-09794d5091d2
77d1b281-9092-42aa-9133-4499232a6da2	2	Staff	Default Note	1	2022-04-23 23:09:25.747109+05:30	2020-06-01 02:30:00+05:30	A	f	1	379a9d10-ed8e-4ee3-81dc-09794d5091d2
2906f2e6-28e6-4bc0-a3a6-f4d9dfcf82e9	1	Admin	Default Note	1	2022-04-24 02:12:35.376109+05:30	2020-06-01 02:30:00+05:30	A	f	1	e5e25ac8-e95b-4863-aa56-ea527980398c
fbb83452-5cf7-450f-9a24-05075b6553e4	2	Staff	Default Note	1	2022-04-24 02:12:35.377378+05:30	2020-06-01 02:30:00+05:30	A	f	1	e5e25ac8-e95b-4863-aa56-ea527980398c
be51cc06-83f3-4fb4-87c8-550fcd9b9537	1	Admin	Default Note	1	2022-04-25 04:11:31.470819+05:30	2020-06-01 02:30:00+05:30	A	f	1	ab6aea22-1bcd-44ab-8424-ff52223d1e9b
4799316e-6544-4b77-9f37-5ad7c683862e	2	Staff	Default Note	1	2022-04-25 04:11:31.472593+05:30	2020-06-01 02:30:00+05:30	A	f	1	ab6aea22-1bcd-44ab-8424-ff52223d1e9b
56f62830-f150-423a-886e-f9bdf520588e	1	Admin	Default Note	1	2022-04-25 04:55:48.756473+05:30	2020-06-01 02:30:00+05:30	A	f	1	ecbdf73b-7b33-453f-97d0-77d1894213eb
739dd0ab-9336-4040-b0f4-e45af913ae1a	2	Staff	Default Note	1	2022-04-25 04:55:48.757214+05:30	2020-06-01 02:30:00+05:30	A	f	1	ecbdf73b-7b33-453f-97d0-77d1894213eb
8aece7f5-8101-441d-9629-3ebc1fc89ea6	1	Admin	Default Note	1	2022-04-26 18:15:46.6403+05:30	2020-06-01 02:30:00+05:30	A	f	1	433328ea-c573-457a-8a13-7ee512679644
787b1763-d493-4c80-b827-14d7c290cd4f	2	Staff	Default Note	1	2022-04-26 18:15:46.641656+05:30	2020-06-01 02:30:00+05:30	A	f	1	433328ea-c573-457a-8a13-7ee512679644
e12c2f4e-3ea4-477d-8e23-eb367e55be26	1	Admin	Default Note	1	2022-04-27 14:17:18.338809+05:30	2020-06-01 02:30:00+05:30	A	f	1	b6466821-4c80-493f-bcdb-5d58d6780d6e
15ace366-e458-48d3-b3d1-e17e7e72642a	2	Staff	Default Note	1	2022-04-27 14:17:18.340562+05:30	2020-06-01 02:30:00+05:30	A	f	1	b6466821-4c80-493f-bcdb-5d58d6780d6e
4da07774-8e4b-474b-808d-f34fe0ffa187	1	Admin	Default Note	1	2022-04-28 12:25:56.451231+05:30	2020-06-01 02:30:00+05:30	A	f	1	eae848be-772d-4494-90d1-d1443e0e1b31
fd8cddc2-4d9c-462c-9c9d-89c0611bcf20	2	Staff	Default Note	1	2022-04-28 12:25:56.452363+05:30	2020-06-01 02:30:00+05:30	A	f	1	eae848be-772d-4494-90d1-d1443e0e1b31
731143c0-6b90-4bde-af66-de5a3152ceeb	1	Admin	Default Note	1	2022-04-28 13:14:43.126621+05:30	2020-06-01 02:30:00+05:30	A	f	1	9b8cbb5f-44df-4b0a-bed9-f9fa832d1588
339f50ae-54d6-4b32-adc3-10efd9466f2b	2	Staff	Default Note	1	2022-04-28 13:14:43.127408+05:30	2020-06-01 02:30:00+05:30	A	f	1	9b8cbb5f-44df-4b0a-bed9-f9fa832d1588
d0510361-837b-4dfd-8f28-0c596a583037	1	Admin	Default Note	1	2022-04-28 13:37:17.527795+05:30	2020-06-01 02:30:00+05:30	A	f	1	5aaa8093-4bb2-452e-8250-85b9d0c38d50
0e59884c-867b-49a1-a495-916dd90ed7e5	2	Staff	Default Note	1	2022-04-28 13:37:17.529006+05:30	2020-06-01 02:30:00+05:30	A	f	1	5aaa8093-4bb2-452e-8250-85b9d0c38d50
9a2427b2-e5d9-4ca7-8c4e-5d66345017db	1	Admin	Default Note	1	2022-04-28 14:48:54.82515+05:30	2020-06-01 02:30:00+05:30	A	f	1	fb6ddcc9-a887-4edf-8919-1bfbd07f8e29
28d8c922-95b5-4045-84ca-3b919372f22d	2	Staff	Default Note	1	2022-04-28 14:48:54.826264+05:30	2020-06-01 02:30:00+05:30	A	f	1	fb6ddcc9-a887-4edf-8919-1bfbd07f8e29
2f65562b-3f97-4b8c-adbc-847fd0bbc6f7	1	Admin	Default Note	1	2022-04-28 14:50:24.563862+05:30	2020-06-01 02:30:00+05:30	A	f	1	941d3d5a-fe4f-4eb6-89fc-b3ec5778caa4
9d009e75-19c9-4b00-b1aa-6a95f8d1df9b	2	Staff	Default Note	1	2022-04-28 14:50:24.564784+05:30	2020-06-01 02:30:00+05:30	A	f	1	941d3d5a-fe4f-4eb6-89fc-b3ec5778caa4
26ab0303-1888-4f12-931f-e93bab859967	1	Admin	Default Note	1	2022-04-28 14:57:41.468209+05:30	2020-06-01 02:30:00+05:30	A	f	1	7bde9de7-d90f-4191-8899-5aa67898249a
e61e1cd1-7749-46f7-a8c4-9d72b4856260	2	Staff	Default Note	1	2022-04-28 14:57:41.469427+05:30	2020-06-01 02:30:00+05:30	A	f	1	7bde9de7-d90f-4191-8899-5aa67898249a
6b4451c4-9f6f-418b-b4cf-51f860000010	1	Admin	Default Note	1	2022-04-28 15:33:45.787625+05:30	2020-06-01 02:30:00+05:30	A	f	1	11bb5d1a-0440-42f5-baf7-f98cf82106bb
1ac4e5b7-c149-4597-a958-e856c603ddab	2	Staff	Default Note	1	2022-04-28 15:33:45.788788+05:30	2020-06-01 02:30:00+05:30	A	f	1	11bb5d1a-0440-42f5-baf7-f98cf82106bb
c89d7ff0-c73d-4ea1-93a7-b87c24c8928f	1	Admin	Default Note	1	2022-04-28 15:49:24.822267+05:30	2020-06-01 02:30:00+05:30	A	f	1	0902ac47-a724-4d50-8880-365ca10e7943
067287d6-8b75-4010-90fb-63d1fac8ce66	2	Staff	Default Note	1	2022-04-28 15:49:24.823201+05:30	2020-06-01 02:30:00+05:30	A	f	1	0902ac47-a724-4d50-8880-365ca10e7943
30b99801-9ab4-4e56-936e-be4a51149f33	1	Admin	Default Note	1	2022-04-28 15:56:12.9541+05:30	2020-06-01 02:30:00+05:30	A	f	1	819f10e7-7a00-4492-9475-db3f51fe0249
8831fb3a-52f5-49a2-a6a5-dc7249a0175b	2	Staff	Default Note	1	2022-04-28 15:56:12.955144+05:30	2020-06-01 02:30:00+05:30	A	f	1	819f10e7-7a00-4492-9475-db3f51fe0249
6437c9d9-eb06-46fd-bd37-61c30eca4d50	1	Admin	Default Note	1	2022-04-28 16:26:37.516544+05:30	2020-06-01 02:30:00+05:30	A	f	1	663e3799-85d8-4208-8024-c8b8216f322d
5dc80ec5-f26c-4af9-87bb-daf688cf9705	2	Staff	Default Note	1	2022-04-28 16:26:37.517554+05:30	2020-06-01 02:30:00+05:30	A	f	1	663e3799-85d8-4208-8024-c8b8216f322d
212bfec4-977b-4b24-8aad-6a66dc4494f5	1	Admin	Default Note	1	2022-04-28 16:31:50.424986+05:30	2020-06-01 02:30:00+05:30	A	f	1	bd0da7ad-bade-455b-bf27-31e311c2fcff
6772e8f1-8c54-457f-b88d-4f9d43d04cc3	2	Staff	Default Note	1	2022-04-28 16:31:50.426015+05:30	2020-06-01 02:30:00+05:30	A	f	1	bd0da7ad-bade-455b-bf27-31e311c2fcff
8e6a323c-9a41-4c79-b296-eb582a81038c	3	Cashier	\N	382	2022-04-29 12:16:37.486192+05:30	2022-04-29 12:16:37.478602+05:30	A	f	1	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32
f29be1aa-a7a7-4ee4-b199-60e7a2ea93c1	1	Admin	Default Note	1	2022-05-01 19:42:15.162763+05:30	2020-06-01 02:30:00+05:30	A	f	1	7effb1b1-a222-4119-9d7e-05e4142a20a0
7b9e5537-e858-4e99-94a9-9d562c0b213e	2	Staff	Default Note	1	2022-05-01 19:42:15.163926+05:30	2020-06-01 02:30:00+05:30	A	f	1	7effb1b1-a222-4119-9d7e-05e4142a20a0
60364ab0-8335-468d-b081-4053053cef67	1	Admin	Default Note	1	2022-05-04 11:47:16.168085+05:30	2020-06-01 02:30:00+05:30	A	f	1	47c5669a-087c-4ab3-97ce-9e110e3dcf90
2b099e16-6e60-447d-9d18-6df5ffdb3fcf	2	Staff	Default Note	1	2022-05-04 11:47:16.16924+05:30	2020-06-01 02:30:00+05:30	A	f	1	47c5669a-087c-4ab3-97ce-9e110e3dcf90
548072ed-7979-4338-9b22-78f151c1b7e4	1	Admin	Default Note	1	2022-05-06 11:54:21.954079+05:30	2020-06-01 02:30:00+05:30	A	f	1	3bca8b72-a84d-4279-8c4c-e7834bb00515
4ecac4b4-188d-4a66-8ba9-b7a38c4904e4	2	Staff	Default Note	1	2022-05-06 11:54:21.955181+05:30	2020-06-01 02:30:00+05:30	A	f	1	3bca8b72-a84d-4279-8c4c-e7834bb00515
e48f9de5-ffa5-4148-9ab3-53ff8ec88fdd	1	Admin	Default Note	1	2022-05-07 17:23:22.133136+05:30	2020-06-01 02:30:00+05:30	A	f	1	8171eab3-e534-490c-8ab9-cc2ec9e1c2ea
8d1db41e-a709-4d96-a7ab-d95302c9e82c	2	Staff	Default Note	1	2022-05-07 17:23:22.134262+05:30	2020-06-01 02:30:00+05:30	A	f	1	8171eab3-e534-490c-8ab9-cc2ec9e1c2ea
e7a102a1-2c25-4844-b225-63b67287061f	1	Admin	Default Note	1	2022-05-07 17:27:44.03682+05:30	2020-06-01 02:30:00+05:30	A	f	1	5215eb9e-f285-4ee2-8886-262b2a68fcb3
99fbde57-dc7b-4aa7-8a55-bffdbde5b5fb	2	Staff	Default Note	1	2022-05-07 17:27:44.037685+05:30	2020-06-01 02:30:00+05:30	A	f	1	5215eb9e-f285-4ee2-8886-262b2a68fcb3
334b3669-dbe4-4a4e-af69-c18ad1b3bd82	1	Admin	Default Note	1	2022-05-07 19:22:36.724542+05:30	2020-06-01 02:30:00+05:30	A	f	1	e0af00ad-f367-4d55-b79f-6a77e389302b
f2acf6ab-8584-4b2c-b323-b3216bd67e66	2	Staff	Default Note	1	2022-05-07 19:22:36.725227+05:30	2020-06-01 02:30:00+05:30	A	f	1	e0af00ad-f367-4d55-b79f-6a77e389302b
2b5023ba-b890-4e42-8055-5c30b6e03ec8	1	Admin	Default Note	1	2022-05-07 19:34:15.253704+05:30	2020-06-01 02:30:00+05:30	A	f	1	f4a46e31-2eda-4013-942f-7aa8a2e6cf4c
be7fcf66-8d8e-4984-9c28-afc32494b9c1	2	Staff	Default Note	1	2022-05-07 19:34:15.254517+05:30	2020-06-01 02:30:00+05:30	A	f	1	f4a46e31-2eda-4013-942f-7aa8a2e6cf4c
17398ded-4580-41d0-98d5-03aa985a2a96	1	Admin	Default Note	1	2022-05-10 04:38:15.433179+05:30	2020-06-01 02:30:00+05:30	A	f	1	deae8417-9780-4806-92ae-66e0fc0bcf25
c314b834-d653-47ad-bc72-60c12c200b85	2	Staff	Default Note	1	2022-05-10 04:38:15.434321+05:30	2020-06-01 02:30:00+05:30	A	f	1	deae8417-9780-4806-92ae-66e0fc0bcf25
40a96989-f752-4fa9-b2e5-e0f152e388a0	1	Admin	Default Note	1	2022-05-10 09:51:36.377491+05:30	2020-06-01 02:30:00+05:30	A	f	1	8f8f0961-ca0b-4e63-a6ff-6d032adfb521
595600ab-bc76-4137-aad6-6de611717f26	2	Staff	Default Note	1	2022-05-10 09:51:36.378432+05:30	2020-06-01 02:30:00+05:30	A	f	1	8f8f0961-ca0b-4e63-a6ff-6d032adfb521
84027613-a7ac-4ae4-b29c-6e454507488d	3	ACCOUNTANT	\N	46	2022-05-11 19:43:40.537334+05:30	2022-05-11 19:43:40.530669+05:30	A	f	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8
2d53d0b5-b466-42c5-a529-1a387c11b134	4	ACCOUNTANT	\N	46	2022-05-11 19:48:51.350585+05:30	2022-05-11 19:48:51.343983+05:30	A	f	1	54ba4163-584f-4d3f-bb02-120b9800ba97
f7808de2-6e86-4320-8d0d-b2f9674f6669	1	Admin	Default Note	1	2022-05-17 14:04:32.511125+05:30	2020-06-01 02:30:00+05:30	A	f	1	6255e028-8e21-40d3-a822-31c770a8235e
ad7a7a42-e8e2-4999-b9a2-018bbfa71ef7	2	Staff	Default Note	1	2022-05-17 14:04:32.512209+05:30	2020-06-01 02:30:00+05:30	A	f	1	6255e028-8e21-40d3-a822-31c770a8235e
2ac92045-5801-4673-af82-6b0766146987	1	Admin	Default Note	1	2022-05-18 19:48:16.335906+05:30	2020-06-01 02:30:00+05:30	A	f	1	e5a5c952-2c37-4699-b6b1-a95249491eb8
8b054322-b99e-49a7-a669-9e71ee57ee49	2	Staff	Default Note	1	2022-05-18 19:48:16.340841+05:30	2020-06-01 02:30:00+05:30	A	f	1	e5a5c952-2c37-4699-b6b1-a95249491eb8
21e8e5ab-8bf7-42f8-b1f5-93f1c77b93c3	5	others	\N	46	2022-05-19 13:34:47.410045+05:30	2022-05-19 13:34:47.402996+05:30	A	f	1	54ba4163-584f-4d3f-bb02-120b9800ba97
a26071b5-4f31-4f32-923f-96a0ac19f66a	4	others	\N	46	2022-05-19 13:38:19.92443+05:30	2022-05-19 13:38:19.918095+05:30	A	f	1	f4b9c29b-a3fe-403c-995e-2eeaa5d9fbd8
20700965-a3d1-4622-9c08-646d40eda2cb	1	Admin	Default Note	1	2022-05-24 11:58:51.908102+05:30	2020-06-01 02:30:00+05:30	A	f	1	85225fa8-cf46-4a69-807f-2dfff48287bc
5c67fc6d-032c-4cb8-899a-ee3a61db194c	2	Staff	Default Note	1	2022-05-24 11:58:51.909602+05:30	2020-06-01 02:30:00+05:30	A	f	1	85225fa8-cf46-4a69-807f-2dfff48287bc
4c1e934b-52d9-4845-af6e-27148558a440	1	Admin	Default Note	1	2022-05-28 13:36:08.396743+05:30	2020-06-01 02:30:00+05:30	A	f	1	3df9f1ca-a499-4d67-8bf6-1e2583d97e7a
59e59287-300a-46c0-8c97-e5d9fc23eef8	2	Staff	Default Note	1	2022-05-28 13:36:08.397679+05:30	2020-06-01 02:30:00+05:30	A	f	1	3df9f1ca-a499-4d67-8bf6-1e2583d97e7a
3a98ffc3-4717-4210-984e-ac3cdc8344c5	4	StoreKeeper	\N	382	2022-05-30 14:45:11.239758+05:30	2022-05-30 14:45:11.233418+05:30	A	f	1	22aa64dd-7b7e-4b49-9bea-1c3fd55c5b32
1a7ff36b-d370-4034-bbfe-d60e8b11789c	1	Admin	Default Note	1	2022-06-02 16:45:09.732773+05:30	2020-06-01 02:30:00+05:30	A	f	1	0a29adb7-a152-4a3c-a0e7-872db8b0be1f
ba286ecb-73f1-4798-b15b-4200c3475e45	2	Staff	Default Note	1	2022-06-02 16:45:09.734349+05:30	2020-06-01 02:30:00+05:30	A	f	1	0a29adb7-a152-4a3c-a0e7-872db8b0be1f
02bea9da-aa36-4032-99f5-b3a30935f79c	1	Admin	Default Note	1	2022-06-03 11:26:56.11098+05:30	2020-06-01 02:30:00+05:30	A	f	1	f78592c4-f92f-483c-8278-55034bd265e6
ba8997ae-eef1-4931-817b-5e9f65e2d83e	2	Staff	Default Note	1	2022-06-03 11:26:56.112069+05:30	2020-06-01 02:30:00+05:30	A	f	1	f78592c4-f92f-483c-8278-55034bd265e6
792ae7ab-0c9d-43f0-ad1b-c69a6238e1a5	1	Admin	Default Note	1	2022-06-03 15:50:09.332333+05:30	2020-06-01 02:30:00+05:30	A	f	1	510e5554-216b-4e2a-9326-7c0ef5ba4ce9
bc4f4523-bb85-451e-9455-066fb61420a3	2	Staff	Default Note	1	2022-06-03 15:50:09.33332+05:30	2020-06-01 02:30:00+05:30	A	f	1	510e5554-216b-4e2a-9326-7c0ef5ba4ce9
2b4a2692-1d79-4f8e-aa96-6a8b6105bbcd	1	Admin	Default Note	1	2022-06-07 10:17:21.615408+05:30	2020-06-01 02:30:00+05:30	A	f	1	31411b4e-8721-4f68-a0df-fd06d6f5bdf9
14908410-fad4-46cd-9e5f-e9ae30c1f7dd	2	Staff	Default Note	1	2022-06-07 10:17:21.616802+05:30	2020-06-01 02:30:00+05:30	A	f	1	31411b4e-8721-4f68-a0df-fd06d6f5bdf9
9167dff1-d51e-4c1f-8b7c-952d1424b55a	1	Admin	Default Note	1	2022-06-07 10:44:57.627436+05:30	2020-06-01 02:30:00+05:30	A	f	1	f65d9558-9de8-4194-94a5-a33242fe3e80
6e5d6104-1435-4bc9-bdcd-94e8124bf76f	2	Staff	Default Note	1	2022-06-07 10:44:57.628522+05:30	2020-06-01 02:30:00+05:30	A	f	1	f65d9558-9de8-4194-94a5-a33242fe3e80
4e9638a8-ddd9-484e-b723-c246879e6fdd	1	Admin	Default Note	1	2022-06-07 12:04:35.368648+05:30	2020-06-01 02:30:00+05:30	A	f	1	4de62d91-a400-4be6-9db5-ab903eaa8c56
4909ddd3-1746-4889-8fc1-d950209a3bf2	2	Staff	Default Note	1	2022-06-07 12:04:35.369836+05:30	2020-06-01 02:30:00+05:30	A	f	1	4de62d91-a400-4be6-9db5-ab903eaa8c56
6c2e3133-3fc9-4237-b6fb-8095ae6c3efb	1	Admin	Default Note	1	2022-06-07 16:27:34.51371+05:30	2020-06-01 02:30:00+05:30	A	f	1	355182fe-5711-4e3f-933f-0f7309caa27b
b13ecb72-c748-424a-85b1-4cb6d8ff42d2	2	Staff	Default Note	1	2022-06-07 16:27:34.514511+05:30	2020-06-01 02:30:00+05:30	A	f	1	355182fe-5711-4e3f-933f-0f7309caa27b
6993fd9a-507d-4c65-b503-0910fe3bb71c	1	Admin	Default Note	1	2022-06-07 16:29:26.255195+05:30	2020-06-01 02:30:00+05:30	A	f	1	6e16110d-22d0-42fd-96ec-dbb35a225b2a
4f41f764-56d8-42a3-a63f-f6e672b3a8e0	2	Staff	Default Note	1	2022-06-07 16:29:26.256057+05:30	2020-06-01 02:30:00+05:30	A	f	1	6e16110d-22d0-42fd-96ec-dbb35a225b2a
f1d72bff-98b0-4559-ac54-d1fba9ea87eb	1	Admin	Default Note	1	2022-06-08 12:25:56.337871+05:30	2020-06-01 02:30:00+05:30	A	f	1	4c5b08f3-a3ac-47ff-bac1-9b950be34d63
e42b59b9-3e49-48a2-95c1-c1aea23bfb51	2	Staff	Default Note	1	2022-06-08 12:25:56.338987+05:30	2020-06-01 02:30:00+05:30	A	f	1	4c5b08f3-a3ac-47ff-bac1-9b950be34d63
eac3ed41-50a2-4b58-9c7d-b5d58240df16	1	Admin	Default Note	1	2022-06-09 14:37:11.044929+05:30	2020-06-01 02:30:00+05:30	A	f	1	6c357b27-683f-42e7-9d94-1b1ffd0f41b9
fc642681-111b-4782-ab95-41f77ecf3624	2	Staff	Default Note	1	2022-06-09 14:37:11.045679+05:30	2020-06-01 02:30:00+05:30	A	f	1	6c357b27-683f-42e7-9d94-1b1ffd0f41b9
2cf3d5a8-dbad-46d6-95e0-4e72fc021439	1	Admin	Default Note	1	2022-06-10 13:35:13.835798+05:30	2020-06-01 02:30:00+05:30	A	f	1	7d124276-ca3e-4a70-9b2d-f9257641b881
37ac5af8-d620-4f3f-b383-44295394a2c8	2	Staff	Default Note	1	2022-06-10 13:35:13.837293+05:30	2020-06-01 02:30:00+05:30	A	f	1	7d124276-ca3e-4a70-9b2d-f9257641b881
cb23c562-2a9e-4e47-8f0e-72b9b3308c43	1	Admin	Default Note	1	2022-06-13 09:47:02.257265+05:30	2020-06-01 02:30:00+05:30	A	f	1	90866a22-2468-4663-a77d-eb19c1c33152
86ec2452-85b6-46f4-884e-b03dbb9a997a	2	Staff	Default Note	1	2022-06-13 09:47:02.258445+05:30	2020-06-01 02:30:00+05:30	A	f	1	90866a22-2468-4663-a77d-eb19c1c33152
3643848c-db86-460b-8508-edca906a505e	1	Admin	Default Note	1	2022-06-13 18:42:17.391225+05:30	2020-06-01 02:30:00+05:30	A	f	1	3c9f0bef-9eb0-4acb-a1dd-c4c1bb7cfa75
d4cb23eb-0017-430d-b571-c0430c907a8b	2	Staff	Default Note	1	2022-06-13 18:42:17.392289+05:30	2020-06-01 02:30:00+05:30	A	f	1	3c9f0bef-9eb0-4acb-a1dd-c4c1bb7cfa75
4664d5f6-ceea-4060-ae95-24cca9a1823c	1	Admin	Default Note	1	2022-06-14 01:48:24.635659+05:30	2020-06-01 02:30:00+05:30	A	f	1	54ffbb90-97eb-4c45-b1f7-5407d9e417a7
6cfe919a-ead3-431e-a819-fd3b9b011eb6	2	Staff	Default Note	1	2022-06-14 01:48:24.636458+05:30	2020-06-01 02:30:00+05:30	A	f	1	54ffbb90-97eb-4c45-b1f7-5407d9e417a7
e150d83b-0bc1-4a93-9fde-fc8f96f7f744	1	Admin	Default Note	1	2022-06-17 15:25:52.56318+05:30	2020-06-01 02:30:00+05:30	A	f	1	66acff5c-29f2-483c-a9e7-018b381d00f8
990bc098-7c2f-40cb-9a79-43e83004673d	2	Staff	Default Note	1	2022-06-17 15:25:52.564443+05:30	2020-06-01 02:30:00+05:30	A	f	1	66acff5c-29f2-483c-a9e7-018b381d00f8
746170bc-d0d5-4d5d-8ba9-ff0b3139113f	1	Admin	Default Note	1	2022-06-19 20:13:45.463982+05:30	2020-06-01 02:30:00+05:30	A	f	1	2329fcd1-d87e-4648-84dc-3221154eaa0e
9654a522-9878-4ba5-a467-5f9cc2bd3895	2	Staff	Default Note	1	2022-06-19 20:13:45.465382+05:30	2020-06-01 02:30:00+05:30	A	f	1	2329fcd1-d87e-4648-84dc-3221154eaa0e
3c213f0d-c4de-4ef9-aaa5-36ff630253f8	1	Admin	Default Note	1	2022-06-20 21:10:11.802682+05:30	2020-06-01 02:30:00+05:30	A	f	1	a147b367-1ae7-4130-afa0-653e2e4bd658
522a2c55-3e82-4a4d-a17f-ecaf2755818f	2	Staff	Default Note	1	2022-06-20 21:10:11.803807+05:30	2020-06-01 02:30:00+05:30	A	f	1	a147b367-1ae7-4130-afa0-653e2e4bd658
28064e81-9cdb-467a-bfd3-13c0c8ae93be	3	Accounts	\N	31	2022-06-23 11:46:06.135055+05:30	2022-06-23 11:46:06.128715+05:30	A	f	1	66acff5c-29f2-483c-a9e7-018b381d00f8
2129a5d6-122d-4bd5-9475-a3d055f92809	1	Admin	Default Note	1	2022-06-23 11:47:27.949816+05:30	2020-06-01 02:30:00+05:30	A	f	1	c676be3d-419f-40c1-98b5-2fcc5763e315
a86044b1-99b4-41a9-9995-d8350390b847	2	Staff	Default Note	1	2022-06-23 11:47:27.950837+05:30	2020-06-01 02:30:00+05:30	A	f	1	c676be3d-419f-40c1-98b5-2fcc5763e315
a3bb19eb-83f4-4a59-828e-ce4241cb7af3	3	Accounts	\N	31	2022-06-23 13:07:08.5757+05:30	2022-06-23 13:07:08.565447+05:30	A	f	1	ded7822a-1355-40c1-aa0d-2335153d4d08
c3c5f896-47d8-4632-a89c-065ebd6a7a49	1	Admin	Default Note	1	2022-06-27 11:39:38.163954+05:30	2020-06-01 02:30:00+05:30	A	f	1	d0f4a410-e463-4b9a-b619-6c180daa16cb
d94a137d-d80d-4996-8da3-7ee0f24989ea	2	Staff	Default Note	1	2022-06-27 11:39:38.165072+05:30	2020-06-01 02:30:00+05:30	A	f	1	d0f4a410-e463-4b9a-b619-6c180daa16cb
f23111c4-571e-4ee6-a5a3-a44c9973db58	1	Admin	Default Note	1	2022-06-27 15:17:34.708312+05:30	2020-06-01 02:30:00+05:30	A	f	1	79bbad87-9900-4719-adf6-7e8f04b815a1
e17c07c8-d75a-438e-8c3f-31e7e44ecf22	2	Staff	Default Note	1	2022-06-27 15:17:34.709353+05:30	2020-06-01 02:30:00+05:30	A	f	1	79bbad87-9900-4719-adf6-7e8f04b815a1
dd876e0f-2ee5-4be2-9ff0-0cd50a0d62b4	1	Admin	Default Note	1	2022-06-29 17:01:51.941034+05:30	2020-06-01 02:30:00+05:30	A	f	1	83c52e5b-4e94-4bde-b5a5-95699451982f
a2dd0a95-a4bc-4f19-9e84-a0547d428103	2	Staff	Default Note	1	2022-06-29 17:01:51.942101+05:30	2020-06-01 02:30:00+05:30	A	f	1	83c52e5b-4e94-4bde-b5a5-95699451982f
6ac7a44b-c963-4883-9d5b-067372e613cb	1	Admin	Default Note	1	2022-06-29 18:37:10.410333+05:30	2020-06-01 02:30:00+05:30	A	f	1	fd11193b-749f-4743-a4e6-f4be9984f645
fa1f7f25-459b-4f59-a121-90a97f75a755	2	Staff	Default Note	1	2022-06-29 18:37:10.411051+05:30	2020-06-01 02:30:00+05:30	A	f	1	fd11193b-749f-4743-a4e6-f4be9984f645
19e91b44-93eb-4621-91b2-144e1a297fd3	1	Admin	Default Note	1	2022-06-30 15:33:58.606558+05:30	2020-06-01 02:30:00+05:30	A	f	1	f181a8d1-e316-4cc1-8916-d1ba15fbc1bc
5613c3dd-4aab-4ae9-8c0c-5b0b3f5e066a	2	Staff	Default Note	1	2022-06-30 15:33:58.607287+05:30	2020-06-01 02:30:00+05:30	A	f	1	f181a8d1-e316-4cc1-8916-d1ba15fbc1bc
7de8195e-5294-43a3-85b0-d461ce0ae3d3	1	Admin	Default Note	1	2022-07-01 01:47:55.519685+05:30	2020-06-01 02:30:00+05:30	A	f	1	f5ce00d5-5b58-4b71-93a5-511582cca0d2
25259d44-f74e-4da9-bcef-81fc9c6f51d0	2	Staff	Default Note	1	2022-07-01 01:47:55.520726+05:30	2020-06-01 02:30:00+05:30	A	f	1	f5ce00d5-5b58-4b71-93a5-511582cca0d2
55c4aff8-bc06-4ecf-8cb5-4e5704801707	3	اركان	\N	477	2022-07-01 08:22:36.234448+05:30	2022-07-01 08:22:36.227919+05:30	A	f	1	f5ce00d5-5b58-4b71-93a5-511582cca0d2
13d907ec-e931-4af6-9560-b4a517ad5c1b	1	Admin	Default Note	1	2022-07-01 11:08:31.183336+05:30	2020-06-01 02:30:00+05:30	A	f	1	e50237cc-a192-4c1b-aaa3-595a5ff2f4b3
cec518b1-0c39-4283-b61b-be029dde7564	2	Staff	Default Note	1	2022-07-01 11:08:31.184109+05:30	2020-06-01 02:30:00+05:30	A	f	1	e50237cc-a192-4c1b-aaa3-595a5ff2f4b3
744d971d-98e7-46fe-94df-bf76b807b30b	1	Admin	Default Note	1	2022-07-06 16:59:06.28743+05:30	2020-06-01 02:30:00+05:30	A	f	1	b227d4fc-62c2-4c68-be70-81c893823ae5
6a49930b-b8d7-42a6-8c4e-1881df304d05	2	Staff	Default Note	1	2022-07-06 16:59:06.288733+05:30	2020-06-01 02:30:00+05:30	A	f	1	b227d4fc-62c2-4c68-be70-81c893823ae5
1e0605c1-bad7-44fd-9dfa-768051643dce	1	Admin	Default Note	1	2022-07-06 17:01:35.802369+05:30	2020-06-01 02:30:00+05:30	A	f	1	899b926a-b451-402b-9b8f-c0bc4bea3fc6
526a3178-cfbd-44ad-9116-4833b13e69d1	2	Staff	Default Note	1	2022-07-06 17:01:35.803209+05:30	2020-06-01 02:30:00+05:30	A	f	1	899b926a-b451-402b-9b8f-c0bc4bea3fc6
499014eb-a37e-498e-b27e-f598d4b5165b	1	Admin	Default Note	1	2022-07-07 09:29:47.595151+05:30	2020-06-01 02:30:00+05:30	A	f	1	b2a29165-0728-4eb1-b887-374e6f27fa00
30a2782e-de01-46fd-acfc-a5fbb9e27786	2	Staff	Default Note	1	2022-07-07 09:29:47.596657+05:30	2020-06-01 02:30:00+05:30	A	f	1	b2a29165-0728-4eb1-b887-374e6f27fa00
6684a45e-8f2a-4f66-bafb-0115dc1cc88a	1	Admin	Default Note	1	2022-07-08 10:22:57.363109+05:30	2020-06-01 02:30:00+05:30	A	f	1	380fcc53-018c-4316-bd32-8c3f6b8f1974
c1b5c958-bb65-4132-8c86-904c2114a010	2	Staff	Default Note	1	2022-07-08 10:22:57.364405+05:30	2020-06-01 02:30:00+05:30	A	f	1	380fcc53-018c-4316-bd32-8c3f6b8f1974
f7c8bba9-54f6-4789-91c9-06dc706c63bb	1	Admin	Default Note	1	2022-07-08 13:23:26.527832+05:30	2020-06-01 02:30:00+05:30	A	f	1	07f17601-8a85-42a8-97d7-8a48845404b3
191f3857-f2b9-4e40-b33f-7471467067c3	2	Staff	Default Note	1	2022-07-08 13:23:26.529268+05:30	2020-06-01 02:30:00+05:30	A	f	1	07f17601-8a85-42a8-97d7-8a48845404b3
dd50a73e-7aaa-435e-8147-af06805949bf	1	Admin	Default Note	1	2022-07-08 13:30:24.454879+05:30	2020-06-01 02:30:00+05:30	A	f	1	9153785d-27de-4396-a461-30f90ed6746c
f4645848-c55f-4832-979c-9ad0689deb43	2	Staff	Default Note	1	2022-07-08 13:30:24.456126+05:30	2020-06-01 02:30:00+05:30	A	f	1	9153785d-27de-4396-a461-30f90ed6746c
0e2d0114-822d-4963-be96-af550869bdf6	1	Admin	Default Note	1	2022-07-08 13:39:25.520347+05:30	2020-06-01 02:30:00+05:30	A	f	1	3abd97e5-4720-4f71-bcc0-cf4c265e9f67
83d8267e-620f-4b7d-a89c-ab009f00cb88	2	Staff	Default Note	1	2022-07-08 13:39:25.521334+05:30	2020-06-01 02:30:00+05:30	A	f	1	3abd97e5-4720-4f71-bcc0-cf4c265e9f67
0e15cce1-347e-4dc8-82c3-f444b07401f0	1	Admin	Default Note	1	2022-07-08 13:44:45.2068+05:30	2020-06-01 02:30:00+05:30	A	f	1	29e3ab91-bd68-4c61-9878-570170a8c205
8ba0a843-3a09-471e-82ec-ae1dcc4e25cb	2	Staff	Default Note	1	2022-07-08 13:44:45.20779+05:30	2020-06-01 02:30:00+05:30	A	f	1	29e3ab91-bd68-4c61-9878-570170a8c205
dc7b7378-34b0-4a89-bb17-eba57098a0f1	1	Admin	Default Note	1	2022-07-08 14:05:18.843845+05:30	2020-06-01 02:30:00+05:30	A	f	1	4e6f539f-f339-44ab-920f-dc5975efcf6c
0dd90d01-aee4-4e89-9129-923f18bdf371	2	Staff	Default Note	1	2022-07-08 14:05:18.844953+05:30	2020-06-01 02:30:00+05:30	A	f	1	4e6f539f-f339-44ab-920f-dc5975efcf6c
b538d9ca-0920-4bf6-8e94-741945cfe4e4	1	Admin	Default Note	1	2022-07-08 15:51:05.379326+05:30	2020-06-01 02:30:00+05:30	A	f	1	ed268c11-b719-4f01-9907-e8328d736881
fbe1f3aa-13a7-4fe4-ab9f-7b9d4d5ffe5b	2	Staff	Default Note	1	2022-07-08 15:51:05.380315+05:30	2020-06-01 02:30:00+05:30	A	f	1	ed268c11-b719-4f01-9907-e8328d736881
33401676-fc97-4bcb-94d4-383e55eec82e	1	Admin	Default Note	1	2022-07-09 14:43:45.268951+05:30	2020-06-01 02:30:00+05:30	A	f	1	9fcf0c87-bac5-4325-a2ef-2868f55f6b18
c6d533f7-3be1-4f0a-be94-8bdaab9d42a4	2	Staff	Default Note	1	2022-07-09 14:43:45.270108+05:30	2020-06-01 02:30:00+05:30	A	f	1	9fcf0c87-bac5-4325-a2ef-2868f55f6b18
bd506a23-663d-432e-aefa-5abc0d9931d8	1	Admin	Default Note	1	2022-07-12 13:37:20.508479+05:30	2020-06-01 02:30:00+05:30	A	f	1	b8f26e57-72a3-4d3e-a014-5dd28e6dbe96
bfc28575-5245-49c5-8e35-f218bf958287	2	Staff	Default Note	1	2022-07-12 13:37:20.509782+05:30	2020-06-01 02:30:00+05:30	A	f	1	b8f26e57-72a3-4d3e-a014-5dd28e6dbe96
611ae50e-5def-47b4-bf11-734ba35b414a	1	Admin	Default Note	1	2022-07-12 13:55:14.393195+05:30	2020-06-01 02:30:00+05:30	A	f	1	3646174a-4190-42b7-8df2-f946cee71673
405ee8b1-4a79-4071-b711-628494f0e4a1	2	Staff	Default Note	1	2022-07-12 13:55:14.394314+05:30	2020-06-01 02:30:00+05:30	A	f	1	3646174a-4190-42b7-8df2-f946cee71673
7acf3850-8933-4c68-ac50-d6e126d7f91a	1	Admin	Default Note	1	2022-07-12 14:15:08.06483+05:30	2020-06-01 02:30:00+05:30	A	f	1	85c625ee-110c-450b-8f3a-4b8ce24c6535
aea69121-935b-4f2a-a783-b474aa0a083c	2	Staff	Default Note	1	2022-07-12 14:15:08.065847+05:30	2020-06-01 02:30:00+05:30	A	f	1	85c625ee-110c-450b-8f3a-4b8ce24c6535
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 192, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 390, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vikncodes
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: admin_business_type admin_business_type_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.admin_business_type
    ADD CONSTRAINT admin_business_type_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: companySettings_companySettings companySettings_companySettings_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."companySettings_companySettings"
    ADD CONSTRAINT "companySettings_companySettings_pkey" PRIMARY KEY (id);


--
-- Name: country_country country_country_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.country_country
    ADD CONSTRAINT country_country_pkey PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: financialYear_financialYear financialYear_financialYear_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."financialYear_financialYear"
    ADD CONSTRAINT "financialYear_financialYear_pkey" PRIMARY KEY (id);


--
-- Name: invitedUsers_invitedUsers invitedUsers_invitedUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."invitedUsers_invitedUsers"
    ADD CONSTRAINT "invitedUsers_invitedUsers_pkey" PRIMARY KEY (id);


--
-- Name: state_state state_state_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.state_state
    ADD CONSTRAINT state_state_pkey PRIMARY KEY (id);


--
-- Name: users_userTableLog users_userTableLog_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTableLog"
    ADD CONSTRAINT "users_userTableLog_pkey" PRIMARY KEY (id);


--
-- Name: users_userTable users_userTable_CompanyID_id_id_f81f261a_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTable"
    ADD CONSTRAINT "users_userTable_CompanyID_id_id_f81f261a_uniq" UNIQUE ("CompanyID_id", id);


--
-- Name: users_userTable users_userTable_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTable"
    ADD CONSTRAINT "users_userTable_pkey" PRIMARY KEY (id);


--
-- Name: users_userType users_userType_CompanyID_id_ID_6dd4c4de_uniq; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userType"
    ADD CONSTRAINT "users_userType_CompanyID_id_ID_6dd4c4de_uniq" UNIQUE ("CompanyID_id", "ID");


--
-- Name: users_userType users_userType_pkey; Type: CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userType"
    ADD CONSTRAINT "users_userType_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: companySettings_companySettings_Country_id_3f11085e; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "companySettings_companySettings_Country_id_3f11085e" ON public."companySettings_companySettings" USING btree ("Country_id");


--
-- Name: companySettings_companySettings_State_id_8aae4f39; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "companySettings_companySettings_State_id_8aae4f39" ON public."companySettings_companySettings" USING btree ("State_id");


--
-- Name: companySettings_companySettings_business_type_id_9a62dd85; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "companySettings_companySettings_business_type_id_9a62dd85" ON public."companySettings_companySettings" USING btree (business_type_id);


--
-- Name: companySettings_companySettings_owner_id_df1e07ce; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "companySettings_companySettings_owner_id_df1e07ce" ON public."companySettings_companySettings" USING btree (owner_id);


--
-- Name: customer_Country_id_1e13c5a7; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "customer_Country_id_1e13c5a7" ON public.customer USING btree ("Country_id");


--
-- Name: customer_LastLoginCompanyID_id_78352b46; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "customer_LastLoginCompanyID_id_78352b46" ON public.customer USING btree ("LastLoginCompanyID_id");


--
-- Name: customer_State_id_fb12000a; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "customer_State_id_fb12000a" ON public.customer USING btree ("State_id");


--
-- Name: customer_user_id_fde49d68; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX customer_user_id_fde49d68 ON public.customer USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: financialYear_financialYear_CompanyID_id_12883ea2; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "financialYear_financialYear_CompanyID_id_12883ea2" ON public."financialYear_financialYear" USING btree ("CompanyID_id");


--
-- Name: invitedUsers_invitedUsers_CompanyID_id_25334693; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "invitedUsers_invitedUsers_CompanyID_id_25334693" ON public."invitedUsers_invitedUsers" USING btree ("CompanyID_id");


--
-- Name: invitedUsers_invitedUsers_UserType_id_2ff011d9; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "invitedUsers_invitedUsers_UserType_id_2ff011d9" ON public."invitedUsers_invitedUsers" USING btree ("UserType_id");


--
-- Name: state_state_Country_id_759d6b20; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "state_state_Country_id_759d6b20" ON public.state_state USING btree ("Country_id");


--
-- Name: users_userTableLog_CompanyID_id_b1d29f84; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userTableLog_CompanyID_id_b1d29f84" ON public."users_userTableLog" USING btree ("CompanyID_id");


--
-- Name: users_userTableLog_UserType_id_849ef439; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userTableLog_UserType_id_849ef439" ON public."users_userTableLog" USING btree ("UserType_id");


--
-- Name: users_userTableLog_customer_id_a4419ef6; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userTableLog_customer_id_a4419ef6" ON public."users_userTableLog" USING btree (customer_id);


--
-- Name: users_userTable_CompanyID_id_b5296794; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userTable_CompanyID_id_b5296794" ON public."users_userTable" USING btree ("CompanyID_id");


--
-- Name: users_userTable_UserType_id_7ea24f0e; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userTable_UserType_id_7ea24f0e" ON public."users_userTable" USING btree ("UserType_id");


--
-- Name: users_userTable_customer_id_a7209d4c; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userTable_customer_id_a7209d4c" ON public."users_userTable" USING btree (customer_id);


--
-- Name: users_userType_CompanyID_id_621d79dc; Type: INDEX; Schema: public; Owner: vikncodes
--

CREATE INDEX "users_userType_CompanyID_id_621d79dc" ON public."users_userType" USING btree ("CompanyID_id");


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companySettings_companySettings companySettings_comp_Country_id_3f11085e_fk_country_c; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."companySettings_companySettings"
    ADD CONSTRAINT "companySettings_comp_Country_id_3f11085e_fk_country_c" FOREIGN KEY ("Country_id") REFERENCES public.country_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companySettings_companySettings companySettings_comp_State_id_8aae4f39_fk_state_sta; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."companySettings_companySettings"
    ADD CONSTRAINT "companySettings_comp_State_id_8aae4f39_fk_state_sta" FOREIGN KEY ("State_id") REFERENCES public.state_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companySettings_companySettings companySettings_comp_business_type_id_9a62dd85_fk_admin_bus; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."companySettings_companySettings"
    ADD CONSTRAINT "companySettings_comp_business_type_id_9a62dd85_fk_admin_bus" FOREIGN KEY (business_type_id) REFERENCES public.admin_business_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companySettings_companySettings companySettings_comp_owner_id_df1e07ce_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."companySettings_companySettings"
    ADD CONSTRAINT "companySettings_comp_owner_id_df1e07ce_fk_auth_user" FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer customer_Country_id_1e13c5a7_fk_country_country_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "customer_Country_id_1e13c5a7_fk_country_country_id" FOREIGN KEY ("Country_id") REFERENCES public.country_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer customer_LastLoginCompanyID_i_78352b46_fk_companySe; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "customer_LastLoginCompanyID_i_78352b46_fk_companySe" FOREIGN KEY ("LastLoginCompanyID_id") REFERENCES public."companySettings_companySettings"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer customer_State_id_fb12000a_fk_state_state_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "customer_State_id_fb12000a_fk_state_state_id" FOREIGN KEY ("State_id") REFERENCES public.state_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer customer_user_id_fde49d68_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_user_id_fde49d68_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: financialYear_financialYear financialYear_financ_CompanyID_id_12883ea2_fk_companySe; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."financialYear_financialYear"
    ADD CONSTRAINT "financialYear_financ_CompanyID_id_12883ea2_fk_companySe" FOREIGN KEY ("CompanyID_id") REFERENCES public."companySettings_companySettings"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invitedUsers_invitedUsers invitedUsers_invited_CompanyID_id_25334693_fk_companySe; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."invitedUsers_invitedUsers"
    ADD CONSTRAINT "invitedUsers_invited_CompanyID_id_25334693_fk_companySe" FOREIGN KEY ("CompanyID_id") REFERENCES public."companySettings_companySettings"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invitedUsers_invitedUsers invitedUsers_invited_UserType_id_2ff011d9_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."invitedUsers_invitedUsers"
    ADD CONSTRAINT "invitedUsers_invited_UserType_id_2ff011d9_fk_users_use" FOREIGN KEY ("UserType_id") REFERENCES public."users_userType"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: state_state state_state_Country_id_759d6b20_fk_country_country_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public.state_state
    ADD CONSTRAINT "state_state_Country_id_759d6b20_fk_country_country_id" FOREIGN KEY ("Country_id") REFERENCES public.country_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userTableLog users_userTableLog_CompanyID_id_b1d29f84_fk_companySe; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTableLog"
    ADD CONSTRAINT "users_userTableLog_CompanyID_id_b1d29f84_fk_companySe" FOREIGN KEY ("CompanyID_id") REFERENCES public."companySettings_companySettings"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userTableLog users_userTableLog_UserType_id_849ef439_fk_users_userType_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTableLog"
    ADD CONSTRAINT "users_userTableLog_UserType_id_849ef439_fk_users_userType_id" FOREIGN KEY ("UserType_id") REFERENCES public."users_userType"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userTableLog users_userTableLog_customer_id_a4419ef6_fk_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTableLog"
    ADD CONSTRAINT "users_userTableLog_customer_id_a4419ef6_fk_customer_id" FOREIGN KEY (customer_id) REFERENCES public.customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userTable users_userTable_CompanyID_id_b5296794_fk_companySe; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTable"
    ADD CONSTRAINT "users_userTable_CompanyID_id_b5296794_fk_companySe" FOREIGN KEY ("CompanyID_id") REFERENCES public."companySettings_companySettings"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userTable users_userTable_UserType_id_7ea24f0e_fk_users_userType_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTable"
    ADD CONSTRAINT "users_userTable_UserType_id_7ea24f0e_fk_users_userType_id" FOREIGN KEY ("UserType_id") REFERENCES public."users_userType"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userTable users_userTable_customer_id_a7209d4c_fk_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userTable"
    ADD CONSTRAINT "users_userTable_customer_id_a7209d4c_fk_customer_id" FOREIGN KEY (customer_id) REFERENCES public.customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userType users_userType_CompanyID_id_621d79dc_fk_companySe; Type: FK CONSTRAINT; Schema: public; Owner: vikncodes
--

ALTER TABLE ONLY public."users_userType"
    ADD CONSTRAINT "users_userType_CompanyID_id_621d79dc_fk_companySe" FOREIGN KEY ("CompanyID_id") REFERENCES public."companySettings_companySettings"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

