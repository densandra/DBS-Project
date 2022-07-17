--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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

--
-- Name: decision; Type: TYPE; Schema: public; Owner: the_user
--

CREATE TYPE public.decision AS ENUM (
    'Ja',
    'Nein'
);


ALTER TYPE public.decision OWNER TO the_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: artikel; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.artikel (
    doi character varying(128) NOT NULL,
    titel character varying(255),
    jahr integer,
    journal character varying(255),
    typ character varying(128),
    quelle character varying(3)
);


ALTER TABLE public.artikel OWNER TO the_user;

--
-- Name: autor; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.autor (
    nachname character varying(64) NOT NULL,
    vorname character varying(64) NOT NULL
);


ALTER TABLE public.autor OWNER TO the_user;

--
-- Name: doi_autor; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.doi_autor (
    doi character varying(128),
    nachname character varying(64),
    vorname character varying(64)
);


ALTER TABLE public.doi_autor OWNER TO the_user;

--
-- Name: doi_hmd; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.doi_hmd (
    doi character varying(128),
    name character varying(128)
);


ALTER TABLE public.doi_hmd OWNER TO the_user;

--
-- Name: hmd; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.hmd (
    name character varying(128) NOT NULL,
    typ character varying(4),
    jahr character varying(4),
    preis character varying(10),
    display character varying(64),
    hersteller character varying(64)
);


ALTER TABLE public.hmd OWNER TO the_user;

--
-- Name: literature_data; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.literature_data (
    quelle character varying(3),
    autor character varying(512),
    titel character varying(255),
    jahr integer,
    journal character varying(255),
    typ character varying(128),
    doi character varying(128),
    gelesen character varying(6),
    empirisch character varying(4),
    ausschlusspunkt character varying(32),
    ausschlussgrund character varying(64),
    kommentar character varying(255),
    feld character varying(64),
    thema character varying(64),
    hmd character varying(64),
    interaction_device character varying(255),
    no_participants character varying(8),
    low_abstraction character varying(1),
    medium character varying(1),
    high character(1),
    exactly_like_re character(1),
    similar_to_re character(1),
    different_to_re character(1),
    training character(1),
    no_training character(1),
    walking character(1),
    balance character(1),
    navigation_orientation character(1),
    searching_identifying character(1),
    reaching character(1),
    picking_manual_object_interaction character(1),
    cognitive_memory_tasks character(1),
    spatial_perception character(1),
    quantitative character(1),
    qualitative character(1),
    experiment character(1),
    secondary_research character(1),
    subjective_feedback character(1),
    consistent character(1),
    better character(1),
    worse character(1)
);


ALTER TABLE public.literature_data OWNER TO the_user;

--
-- Name: review; Type: TABLE; Schema: public; Owner: the_user
--

CREATE TABLE public.review (
    doi character varying(128) NOT NULL,
    gelesen character varying(6),
    empirisch character varying(4),
    ausschlusspunkt character varying(32),
    ausschlussgrund character varying(64),
    kommentar character varying(255),
    feld character varying(64),
    thema character varying(64),
    interaction_device character varying(255),
    no_participants character varying(8),
    low_abstraction character varying(1),
    medium character varying(1),
    high character(1),
    exactly_like_re character(1),
    similar_to_re character(1),
    different_to_re character(1),
    training character(1),
    no_training character(1),
    walking character(1),
    balance character(1),
    navigation_orientation character(1),
    searching_identifying character(1),
    reaching character(1),
    picking_manual_object_interaction character(1),
    cognitive_memory_tasks character(1),
    spatial_perception character(1),
    quantitative character(1),
    qualitative character(1),
    experiment character(1),
    secondary_research character(1),
    subjective_feedback character(1),
    consistent character(1),
    better character(1),
    worse character(1)
);


ALTER TABLE public.review OWNER TO the_user;

--
-- Data for Name: artikel; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.artikel (doi, titel, jahr, journal, typ, quelle) FROM stdin;
10.31209/2019.100000149	Laparoscopic Training Exercises Using HTC VIVE	2020	INTELLIGENT AUTOMATION AND SOFT COMPUTING		WOS
10.31209/2019.100000131	Implementation of Local Area VR Environment using Mobile HMD and Multiple Kinects	2020	INTELLIGENT AUTOMATION AND SOFT COMPUTING		WOS
10.31209/2019.100000134	Distinction Between Real Faces and Photos by Analysis of Face Data	2020	INTELLIGENT AUTOMATION AND SOFT COMPUTING		WOS
10.1007/s00464-019-06887-8	Cognitive load and performance in immersive virtual reality versus conventional virtual reality simulation training of laparoscopic surgery: a randomized trial	2020	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		WOS
10.1109/MCE.2019.2953741	Tracking Attacks on Virtual Reality Systems	2020	IEEE CONSUMER ELECTRONICS MAGAZINE		WOS
10.1007/s10055-019-00389-7	Advantages and limits of virtual reality in learning processes: Briviesca in the fifteenth century	2020	VIRTUAL REALITY		WOS
10.1016/j.foodqual.2019.103833	The relationship between disgust sensitivity and behaviour: A virtual reality study on food disgust	2020	FOOD QUALITY AND PREFERENCE		WOS
10.1080/10447318.2020.1726108	Cybersickness in Virtual Reality Head-Mounted Displays: Examining the Influence of Sex Differences and Vehicle Control	2020	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER INTERACTION		WOS
10.3341/jkos.2020.61.2.125	Relationship between Ocular Fatigue and Use of a Virtual Reality Device	2020	JOURNAL OF THE KOREAN OPHTHALMOLOGICAL SOCIETY		WOS
10.1002/jsid.840	Depth perception in shuffleboard: Depth cues effect on depth perception in virtual and augmented reality system	2020	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.1007/s10639-020-10119-1	The challenges of using head mounted virtual reality in K-12 schools from a teacher perspective	2020	EDUCATION AND INFORMATION TECHNOLOGIES		WOS
10.3389/fmed.2019.00329	Older Adults With Cognitive and/or Physical Impairments Can Benefit From Immersive Virtual Reality Experiences: A Feasibility Study	2020	FRONTIERS IN MEDICINE		WOS
10.1080/14616688.2020.1713881	Exploring virtual reality experiences of slum tourism	2020	TOURISM GEOGRAPHIES		WOS
10.4218/etrij.2019-0284	Simulation and measurement: Feasibility study of Tactile Internet applications for mmWave virtual reality	2020	ETRI JOURNAL		WOS
10.3390/brainsci10010055	Motor Program Transformation of Throwing Dart from the Third-Person Perspective	2020	BRAIN SCIENCES		WOS
10.1109/JIOT.2019.2946593	Alohomora: Motion-Based Hotword Detection in Head-Mounted Displays	2020	IEEE INTERNET OF THINGS JOURNAL		WOS
10.1097/AUD.0000000000000736	Use of Commercial Virtual Reality Technology to Assess Verticality Perception in Static and Dynamic Visual Backgrounds	2020	EAR AND HEARING		WOS
10.1016/j.pnucene.2019.103127	Simplified virtual reality training system for radiation shielding and measurement in nuclear engineering	2020	PROGRESS IN NUCLEAR ENERGY		WOS
10.1007/s12555-018-0882-3	Calibration and Evaluation for Visuo-haptic Collocation in Haptic Augmented Virtuality Systems	2020	INTERNATIONAL JOURNAL OF CONTROL AUTOMATION AND SYSTEMS		WOS
10.1080/10494820.2019.1703008	A virtual reality role-playing serious game for experiential learning	2019	INTERACTIVE LEARNING ENVIRONMENTS		WOS
10.1108/LHT-08-2019-0166	An environmental scan of virtual and augmented reality services in academic libraries	2019	LIBRARY HI TECH		WOS
10.1016/j.jbiomech.2019.109379	A quantitative method for evaluation of 6 degree of freedom virtual reality systems	2019	JOURNAL OF BIOMECHANICS		WOS
10.1016/j.displa.2019.08.003	Effects of postural stability, active control, exposure duration and repeated exposures on HMD induced cybersickness	2019	DISPLAYS		WOS
10.1016/j.jmapro.2019.10.016	Virtual reality human-robot collaborative welding: A case study of weaving gas tungsten arc welding	2019	JOURNAL OF MANUFACTURING PROCESSES		WOS
10.1016/j.humov.2019.102526	Weighting and reweighting of visual input via head mounted display given unilateral peripheral vestibular dysfunction	2019	HUMAN MOVEMENT SCIENCE		WOS
10.1177/0018720819835088	The Validity of an Oculus Rift to Assess Postural Changes During Balance Tasks	2019	HUMAN FACTORS		WOS
10.1007/s10055-018-0376-x	Do virtual reality head-mounted displays make a difference? A comparison of presence and self-efficacy between head-mounted displays and desktop computer-facilitated virtual environments	2019	VIRTUAL REALITY		WOS
10.1177/0735633119854025	Transforming Earth Science Education Through Immersive Experiences: Delivering on a Long Held Promise	2019	JOURNAL OF EDUCATIONAL COMPUTING RESEARCH		WOS
10.1007/s10055-019-00412-x	Game play in virtual reality driving simulation involving head-mounted display and comparison to desktop display	2019	VIRTUAL REALITY		WOS
10.14716/ijtech.v10i7.3259	REAL-TIME VOLUME RENDERING INTERACTION IN VIRTUAL REALITY	2019	INTERNATIONAL JOURNAL OF TECHNOLOGY		WOS
10.3389/fnhum.2019.00417	Validation of the Virtual Reality Neuroscience Questionnaire: Maximum Duration of Immersive Virtual Reality Sessions Without the Presence of Pertinent Adverse Symptomatology	2019	FRONTIERS IN HUMAN NEUROSCIENCE		WOS
10.1007/s10055-019-00409-6	The impact of the input interface in a virtual environment: the Vive controller and the Myo armband	2019	VIRTUAL REALITY		WOS
10.3389/fnhum.2019.00401	Estimating Cognitive Workload in an Interactive Virtual Reality Environment Using EEG	2019	FRONTIERS IN HUMAN NEUROSCIENCE		WOS
10.1080/17483107.2019.1688398	Quantitative analysis of the Oculus Rift S in controlled movement	2019	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY		WOS
10.1007/s12065-019-00314-6	The application of augmented reality and unity 3D in interaction with intangible cultural heritage	2019	EVOLUTIONARY INTELLIGENCE		WOS
10.1007/s10055-019-00407-8	Effects of steering locomotion and teleporting on cybersickness and presence in HMD-based virtual reality	2019	VIRTUAL REALITY		WOS
10.1002/cav.1873	Mobile-powered head-mounted displays versus cave automatic virtual environment experiments for evacuation research	2019	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.3390/su11226453	A Novel Head Mounted Display Based Methodology for Balance Evaluation and Rehabilitation	2019	SUSTAINABILITY		WOS
10.1080/00207540601064773	Augmented reality applications in manufacturing: a survey.	2008	International Journal of Production Research	Article	BSP
10.3390/ijerph16224406	Virtual Reality Gaming Elevates Heart Rate but Not Energy Expenditure Compared to Conventional Exercise in Adult Males	2019	INTERNATIONAL JOURNAL OF ENVIRONMENTAL RESEARCH AND PUBLIC HEALTH		WOS
10.1016/j.heliyon.2019.e02583	Virtual skills training: the role of presence and agency	2019	HELIYON		WOS
10.21053/ceo.2018.01592	Feasibility of Eye Tracking Assisted Vestibular Rehabilitation Strategy Using Immersive Virtual Reality	2019	CLINICAL AND EXPERIMENTAL OTORHINOLARYNGOLOGY		WOS
10.12659/MSM.915284	The Effects of Viewing Smart Devices on Static Balance, Oculomotor Function, and Dizziness in Healthy Adults	2019	MEDICAL SCIENCE MONITOR		WOS
10.1080/17453054.2019.1671813	Exploration of temporal bone anatomy using mixed reality (HoloLens): development of a mixed reality anatomy teaching resource prototype	2020	JOURNAL OF VISUAL COMMUNICATION IN MEDICINE		WOS
10.1186/s12984-019-0601-1	Advantages of using 3D virtual reality based training in persons with Parkinson's disease: a parallel study	2019	JOURNAL OF NEUROENGINEERING AND REHABILITATION		WOS
10.1007/s11042-019-08220-w	RoleVR: Multi-experience in immersive virtual reality between co-located HMD and non-HMD users	2020	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.1016/j.compedu.2019.103600	A case study of immersive virtual field trips in an elementary classroom: Students' learning experience and teacher-student interaction behaviors	2019	COMPUTERS & EDUCATION		WOS
10.1177/0278364919842925	Communicating and controlling robot arm motion intent through mixed-reality head-mounted displays	2019	INTERNATIONAL JOURNAL OF ROBOTICS RESEARCH		WOS
10.1016/j.autcon.2019.102884	User-centered interior finishing material selection: An immersive virtual reality-based interactive approach	2019	AUTOMATION IN CONSTRUCTION		WOS
10.1109/JSEN.2019.2921644	Automatic Calibration of a Six-Degrees-of-Freedom Pose Estimation System	2019	IEEE SENSORS JOURNAL		WOS
10.1007/s10956-019-09781-z	I'm a Computer Scientist!: Virtual Reality Experience Influences Stereotype Threat and STEM Motivation Among Undergraduate Women	2019	JOURNAL OF SCIENCE EDUCATION AND TECHNOLOGY		WOS
10.1016/j.buildenv.2019.106285	Spatial perception of ceiling height and type variation in immersive virtual environments	2019	BUILDING AND ENVIRONMENT		WOS
10.1177/1471301219868036	Bringing the outside in: The feasibility of virtual reality with people with dementia in an inpatient psychiatric care setting	2019	DEMENTIA-INTERNATIONAL JOURNAL OF SOCIAL RESEARCH AND PRACTICE		WOS
10.2196/13887	An Immersive Virtual Reality Platform for Assessing Spatial Navigation Memory in Predementia Screening: Feasibility and Usability Study	2019	JMIR MENTAL HEALTH		WOS
10.1364/OE.27.024877	Transverse chromatic aberration in virtual reality head-mounted displays	2019	OPTICS EXPRESS		WOS
10.1093/iwc/iwz033	Augmented Experiences: Investigating the Feasibility of Virtual Reality as Part of a Workplace Wellbeing Intervention	2019	INTERACTING WITH COMPUTERS		WOS
10.1007/s10015-019-00536-y	Emotional evaluation for pictures displayed with small FOV telescope environment in virtual reality headset	2019	ARTIFICIAL LIFE AND ROBOTICS		WOS
10.1109/TNSRE.2019.2931778	Estimating Forearm Axial Rotation Using Vive Trackers for Interaction With Serious Games	2019	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING		WOS
10.1007/s10055-018-0348-1	Behavioural intentions of using virtual reality in learning: perspectives of acceptance of information technology and learning style	2019	VIRTUAL REALITY		WOS
10.1115/1.4043068	An Olfactory Display to Study the Integration of Vision and Olfaction in a Virtual Reality Environment	2019	JOURNAL OF COMPUTING AND INFORMATION SCIENCE IN ENGINEERING		WOS
10.1016/j.apergo.2019.04.001	Evaluation of a virtual reality head mounted display as a tool for posture assessment in digital human modelling software	2019	APPLIED ERGONOMICS		WOS
10.3389/fnagi.2019.00218	Cycling and Spatial Navigation in an Enriched, Immersive 3D Virtual Park Environment: A Feasibility Study in Younger and Older Adults	2019	FRONTIERS IN AGING NEUROSCIENCE		WOS
10.1177/0018720819867501	Effects of Initial Starting Distance and Gap Characteristics on Children's and Young Adults' Velocity Regulation When Intercepting Moving Gaps	2019	HUMAN FACTORS		WOS
10.1145/3313902	Visual Stabilization of Balance in Virtual Reality Using the HTC Vive	2019	ACM TRANSACTIONS ON APPLIED PERCEPTION		WOS
10.1016/j.entcom.2019.100308	Impact of different immersive techniques on the perceived sense of presence measured via subjective scales	2019	ENTERTAINMENT COMPUTING		WOS
10.3390/jcm8081153	Cue-Elicited Anxiety and Alcohol Craving as Indicators of the Validity of ALCO-VR Software: A Virtual Reality Study	2019	JOURNAL OF CLINICAL MEDICINE		WOS
10.1016/j.jflm.2019.06.005	Digital restoration of fragmentary human skeletal remains: Testing the feasibility of virtual reality	2019	JOURNAL OF FORENSIC AND LEGAL MEDICINE		WOS
10.1080/10494820.2019.1641525	Examining the impact of head-mounted display virtual reality on the science self-efficacy of high schoolers	2019	INTERACTIVE LEARNING ENVIRONMENTS		WOS
10.3389/frobt.2019.00050	Desktop VR Is Better Than Non-ambulatory HMD VR for Spatial Learning	2019	FRONTIERS IN ROBOTICS AND AI		WOS
10.1109/TLT.2019.2926727	Collaborative Educational Environments Incorporating Mixed Reality Technologies: A Systematic Mapping Study	2019	IEEE TRANSACTIONS ON LEARNING TECHNOLOGIES		WOS
00.0000/0027	Fixation Detection with Ray-casting in Immersive Virtual Reality	2019	INTERNATIONAL JOURNAL OF ADVANCED COMPUTER SCIENCE AND APPLICATIONS		WOS
10.1016/j.ergon.2019.06.013	Effects of displays on a direct reaching task: A comparative study of head mounted display and stereoscopic widescreen display	2019	INTERNATIONAL JOURNAL OF INDUSTRIAL ERGONOMICS		WOS
10.1016/j.diin.2019.04.007	Inception: Virtual Space in Memory Space in Real Space - Memory Forensics of Immersive Virtual Reality with the HTC Vive	2019	DIGITAL INVESTIGATION		WOS
10.1109/LRA.2019.2921928	Modeling of Human Welders' Operations in Virtual Reality Human-Robot Interaction	2019	IEEE ROBOTICS AND AUTOMATION LETTERS		WOS
10.1016/j.displa.2018.07.001	Postural stability predicts the likelihood of cybersickness in active HMD-based virtual reality	2019	DISPLAYS		WOS
10.1016/j.displa.2018.10.001	Vection does not necessitate visually induced motion sickness	2019	DISPLAYS		WOS
10.1007/s11548-019-01992-4	Accuracy assessment for the co-registration between optical and VIVE head-mounted display tracking	2019	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		WOS
10.1016/j.archger.2019.05.008	Vestibular rehabilitation in older adults with and without mild cognitive impairment: Effects of virtual reality using a head-mounted display	2019	ARCHIVES OF GERONTOLOGY AND GERIATRICS		WOS
10.1016/j.simpat.2019.03.005	AR-PED: A framework of augmented reality enabled pedestrian-in-the-loop simulation	2019	SIMULATION MODELLING PRACTICE AND THEORY		WOS
10.1108/JET-12-2018-0057	User-centred design of an active computer gaming system for strength and balance exercises for older adults	2019	JOURNAL OF ENABLING TECHNOLOGIES		WOS
10.3389/fpsyg.2019.01330	Age-Related Differences With Immersive and Non-immersive Virtual Reality in Memory Assessment	2019	FRONTIERS IN PSYCHOLOGY		WOS
10.1080/00140139.2019.1582805	Comparison of visual fatigue caused by head-mounted display for virtual reality and two-dimensional display using objective and subjective evaluation	2019	ERGONOMICS		WOS
10.1016/j.cag.2019.03.018	User color temperature preferences in immersive virtual realities	2019	COMPUTERS & GRAPHICS-UK		WOS
10.1007/s11277-018-5382-5	Interactive Physiotherapy: An Application Based on Virtual Reality and Bio-feedback	2019	WIRELESS PERSONAL COMMUNICATIONS		WOS
10.1007/s41064-019-00065-0	Duisburg 1566: Transferring a Historic 3D City Model from Google Earth into a Virtual Reality Application	2019	PFG-JOURNAL OF PHOTOGRAMMETRY REMOTE SENSING AND GEOINFORMATION SCIENCE		WOS
10.3928/02793695-20190430-01	Virtual Reality for Individuals With Substance Use Disorders	2019	JOURNAL OF PSYCHOSOCIAL NURSING AND MENTAL HEALTH SERVICES		WOS
10.1177/1553350618822860	A Virtual Reality Environment to Visualize Three-Dimensional Patient-Specific Models by a Mobile Head-Mounted Display	2019	SURGICAL INNOVATION		WOS
10.1007/s10055-018-0371-2	Assessing hands-free interactions for VR using eye gaze and electromyography	2019	VIRTUAL REALITY		WOS
10.1007/s10055-018-0374-z	Real-time body tracking in virtual reality using a Vive tracker	2019	VIRTUAL REALITY		WOS
10.1016/j.chb.2018.12.018	The impact of immersion on the perception of pornography: A virtual reality study	2019	COMPUTERS IN HUMAN BEHAVIOR		WOS
10.1200/JGO.18.00263	Using Low-Cost Virtual Reality Simulation to Build Surgical Capacity for Cervical Cancer Treatment	2019	JOURNAL OF GLOBAL ONCOLOGY		WOS
10.1002/cav.1880	Screwing assembly oriented interactive model segmentation in HMD VR environment	2019	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.3390/info10050177	Development of a Virtual Reality-Based Game Approach for Supporting Sensory Processing Disorders Treatment	2019	INFORMATION		WOS
10.1097/NNE.0000000000000570	Evaluating the Usability of a Second-Generation Virtual Reality Game for Refreshing Sterile Urinary Catheterization Skills	2019	NURSE EDUCATOR		WOS
10.1109/TVCG.2019.2898782	VR Exploration Assistance through Automatic Occlusion Removal	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1016/j.apacoust.2018.12.037	Subjective and objective evaluation of water-supply and drainage noises in apartment buildings by using a head-mounted display	2019	APPLIED ACOUSTICS		WOS
10.1016/j.jbiomech.2019.02.015	Feasibility of using a fully immersive virtual reality system for kinematic data collection	2019	JOURNAL OF BIOMECHANICS		WOS
10.1016/j.jbmt.2019.02.012	The role of EEG and EMG combined virtual reality gaming system in facial palsy rehabilitation - A case report	2019	JOURNAL OF BODYWORK AND MOVEMENT THERAPIES		WOS
10.1002/jsid.765	Aligning content rendering resolution and feature size with display capability in near-eye display systems	2019	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.3390/sym11040476	A Study on the Presence of Immersive User Interface in Collaborative Virtual Environments Application	2019	SYMMETRY-BASEL		WOS
10.1177/1354856517738171	Far from paradise: The body, the apparatus and the image of contemporary virtual reality	2019	CONVERGENCE-THE INTERNATIONAL JOURNAL OF RESEARCH INTO NEW MEDIA TECHNOLOGIES		WOS
10.1089/end.2018.0626	Pilot Assessment of Immersive Virtual Reality Renal Models as an Educational and Preoperative Planning Tool for Percutaneous Nephrolithotomy	2019	JOURNAL OF ENDOUROLOGY		WOS
10.1016/j.jcde.2018.05.006	Navigation modes, operation methods, observation scales and background options in UI design for high learning performance in VR-based architectural applications	2019	JOURNAL OF COMPUTATIONAL DESIGN AND ENGINEERING		WOS
10.1016/j.cpc.2018.11.013	NOMAD VR: Multiplatform virtual reality viewer for chemistry simulations	2019	COMPUTER PHYSICS COMMUNICATIONS		WOS
10.24507/ijicic.15.02.591	IMMERSIVE VIRTUAL REALITY SUPPORTING CONTENT FOR EVALUATING INTERFACE USING OCULUS RIFT AND LEAP MOTION	2019	INTERNATIONAL JOURNAL OF INNOVATIVE COMPUTING INFORMATION AND CONTROL		WOS
10.1109/LRA.2018.2888628	Fluidic Elastomer Actuators for Haptic Interactions in Virtual Reality	2019	IEEE ROBOTICS AND AUTOMATION LETTERS		WOS
10.1371/journal.pone.0214603	Sound source localization with varying amount of visual information in virtual reality	2019	PLOS ONE		WOS
10.1016/j.jbiomech.2019.02.004	Head mounted displays for capturing head kinematics in postural tasks	2019	JOURNAL OF BIOMECHANICS		WOS
10.3332/ecancer.2019.910	Creating a low-cost virtual reality surgical simulation to increase surgical oncology capacity and capability	2019	ECANCERMEDICALSCIENCE		WOS
10.3390/su11061605	Research on 3D Painting in Virtual Reality to Improve Students' Motivation of 3D Animation Learning	2019	SUSTAINABILITY		WOS
10.1186/s13673-019-0169-6	Infrared bundle adjusting and clustering method for head-mounted display and Leap Motion calibration	2019	HUMAN-CENTRIC COMPUTING AND INFORMATION SCIENCES		WOS
10.1007/s11042-018-6403-9	New design and comparative analysis of smartwatch metaphor-based hand gestures for 3D navigation in mobile virtual reality	2019	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.3390/s19051121	Real-Time Eyeblink Detector and Eye State Classifier for Virtual Reality (VR) Headsets (Head-Mounted Displays, HMDs)	2019	SENSORS		WOS
10.1007/s10209-017-0581-5	Immersive 360 degrees video user experience: impact of different variables in the sense of presence and cybersickness	2019	UNIVERSAL ACCESS IN THE INFORMATION SOCIETY		WOS
10.1007/s10055-018-0346-3	Virtual memory palaces: immersion aids recall	2019	VIRTUAL REALITY		WOS
10.1007/s10055-018-0364-1	Verification of the possibility and effectiveness of experiential learning using HMD-based immersive VR technologies	2019	VIRTUAL REALITY		WOS
10.1007/s11548-018-1814-7	Head-mounted display augmented reality to guide pedicle screw placement utilizing computed tomography	2019	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		WOS
10.1037/neu0000517	Neuropsychological Assessment of Visual Selective Attention and Processing Capacity With Head-Mounted Displays	2019	NEUROPSYCHOLOGY		WOS
10.1016/j.buildenv.2018.12.054	Downstairs resident classification characteristics for upstairs walking vibration noise in an apartment building under virtual reality environment	2019	BUILDING AND ENVIRONMENT		WOS
10.1186/s12859-019-2666-z	BioVR: a platform for virtual reality assisted biological data integration and visualization	2019	BMC BIOINFORMATICS		WOS
10.1016/j.chb.2018.04.036	The effects of appearance and motion of virtual characters on emotional reactivity	2018	COMPUTERS IN HUMAN BEHAVIOR		WOS
10.1167/tvst.8.1.23	Preliminary Evaluation of Two Digital Image Processing Strategies for Head-Mounted Magnification for Low Vision Patients	2019	TRANSLATIONAL VISION SCIENCE & TECHNOLOGY		WOS
10.1002/jsid.747	Vision-tangible interactive display method for mixed and virtual reality: Toward the human-centered editable reality	2019	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.1002/jsid.750	Subjective and objective evaluation of visual fatigue caused by continuous and discontinuous use of HMDs	2019	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.1119/1.5080224	Electromagnetic field visualization in virtual reality	2019	AMERICAN JOURNAL OF PHYSICS		WOS
10.1088/1741-2552/aaed17	Tracking feature-based attention	2019	JOURNAL OF NEURAL ENGINEERING		WOS
10.1364/OE.27.001164	Hybrid light field head-mounted display using time-multiplexed liquid crystal lens array for resolution enhancement	2019	OPTICS EXPRESS		WOS
10.1016/j.buildenv.2018.11.004	Three-dimensional virtual reality-based subjective evaluation of road traffic noise heard in urban high-rise residential buildings	2019	BUILDING AND ENVIRONMENT		WOS
00.0000/0060	"AN ""AD PATRES"" ITINERARY. THE FONTANELLE CEMETERY IN NAPLES BETWEEN TECHNOLOGY AND CREATIVITY"	2019	ARCHEOLOGIA E CALCOLATORI		WOS
00.0000/0061	Gamification Support for Learning in Spatial Computing Environments	2019	JOURNAL OF UNIVERSAL COMPUTER SCIENCE		WOS
10.3233/ICA-180586	An online brain-computer interface in mobile virtual reality environments	2019	INTEGRATED COMPUTER-AIDED ENGINEERING		WOS
10.1109/ACCESS.2019.2934990	Development of Virtual Reality Serious Game for Underground Rock-Related Hazards Safety Training	2019	IEEE ACCESS		WOS
10.3233/VES-190660	A Smartphone-based gaming system for vestibular rehabilitation: A usability study	2019	JOURNAL OF VESTIBULAR RESEARCH-EQUILIBRIUM & ORIENTATION		WOS
10.1016/j.ijleo.2019.01.083	Miniaturization design of head-mounted display optical system based on double threshold method for virtual reality	2019	OPTIK		WOS
10.1080/15980316.2019.1567612	Do users Perceive the same image differently? Comparison of OLED and LCD in mobile HMDs and smartphones	2019	JOURNAL OF INFORMATION DISPLAY		WOS
10.1109/ACCESS.2019.2905143	The Introduction of a Novel Virtual Reality Training System for Gynecology Learning and Its User Experience Research	2019	IEEE ACCESS		WOS
10.3991/ijoe.v15i06.9933	An Interactive Mixed Reality Ray Tracing Rendering Mobile Application of Medical Data in Minimally Invasive Surgeries	2019	INTERNATIONAL JOURNAL OF ONLINE AND BIOMEDICAL ENGINEERING		WOS
10.1016/j.jbi.2018.11.012	An interactive and low-cost full body rehabilitation framework based on 3D immersive serious games	2019	JOURNAL OF BIOMEDICAL INFORMATICS		WOS
10.1109/ACCESS.2019.2897018	Prototyping a Digital Twin for Real Time Remote Control Over Mobile Networks: Application of Remote Surgery	2019	IEEE ACCESS		WOS
10.1109/ACCESS.2018.2878237	Walking Simulation for VR Game Character Using Remote Sensoring Device Based on AHRS-Motion Recognition	2019	IEEE ACCESS		WOS
10.1016/j.jvcir.2018.11.039	ImmerTai: Immersive Motion Learning in VR Environments	2019	JOURNAL OF VISUAL COMMUNICATION AND IMAGE REPRESENTATION		WOS
10.1515/sjpain-2018-0123	The effects of auditory background noise and virtual reality technology on video game distraction analgesia	2019	SCANDINAVIAN JOURNAL OF PAIN		WOS
10.1016/j.apergo.2018.08.012	An evaluation for VR glasses system user experience: The influence factors of interactive operation and motion sickness	2019	APPLIED ERGONOMICS		WOS
10.1016/j.compedu.2018.09.015	Investigating learning outcomes and subjective experiences in 360-degree videos	2019	COMPUTERS & EDUCATION		WOS
10.1115/1.4041428	Efficacy Investigation of Virtual Reality Teaching Module in Manufacturing System Design Course	2019	JOURNAL OF MECHANICAL DESIGN		WOS
10.1177/0361198118758311	Virtual Reality Headset Training: Can It Be Used to Improve Young Drivers' Latent Hazard Anticipation and Mitigation Skills	2018	TRANSPORTATION RESEARCH RECORD		WOS
10.18383/j.tom.2018.00053	Evaluation of Virtual Reality for Detection of Lung Nodules on Computed Tomography	2018	TOMOGRAPHY		WOS
10.1109/TCDS.2018.2828865	Action Augmented Real Virtuality: A Design for Presence	2018	IEEE TRANSACTIONS ON COGNITIVE AND DEVELOPMENTAL SYSTEMS		WOS
10.1088/1741-2552/aadd55	A head mounted device stimulator for optogenetic retinal prosthesis	2018	JOURNAL OF NEURAL ENGINEERING		WOS
10.3389/fpsyg.2018.02265	Virtual Reality Analgesia for Pediatric Dental Patients	2018	FRONTIERS IN PSYCHOLOGY		WOS
10.1108/JCHMSD-09-2017-0067	The historic wooden model of Solomon's Temple 3D recording, modelling and immersive virtual reality visualisation	2018	JOURNAL OF CULTURAL HERITAGE MANAGEMENT AND SUSTAINABLE DEVELOPMENT		WOS
10.3389/fpsyg.2018.02086	The Past, Present, and Future o f Virtual and Augmented Reality Research: A Network and Cluster Analysis of the Literature	2018	FRONTIERS IN PSYCHOLOGY		WOS
10.1145/3265755	Project Star Catcher: A Novel Immersive Virtual Reality Experience for Upper Limb Rehabilitation	2018	ACM TRANSACTIONS ON ACCESSIBLE COMPUTING		WOS
10.6036/8816	Machining optimization of large casting components by remote monitoring and 3D visualization techniques	2018	DYNA		WOS
10.1109/TVCG.2018.2868527	Towards Fully Mobile 3D Face, Body, and Environment Capture Using Only Head-worn Cameras	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TMM.2018.2829187	Efficient Audio Rendering Using Angular Region-Wise Source Enhancement for 360 degrees Video	2018	IEEE TRANSACTIONS ON MULTIMEDIA		WOS
10.1007/s10055-017-0329-9	Self-reported discomfort when using commercially targeted virtual reality equipment in discomfort distraction	2018	VIRTUAL REALITY		WOS
10.1186/s13673-018-0154-5	User-elicited dual-hand interactions for manipulating 3D objects in virtual reality environments	2018	HUMAN-CENTRIC COMPUTING AND INFORMATION SCIENCES		WOS
10.1049/htl.2018.5077	Multiuser virtual reality environment for visualising neuroimaging data	2018	HEALTHCARE TECHNOLOGY LETTERS		WOS
10.1007/s11042-018-5730-1	VRheab: a fully immersive motor rehabilitation system based on recurrent neural network	2018	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.30773/pi.2018.06.28.3	Spatial Learning and Memory Using a Radial Arm Maze with a Head-Mounted Display	2018	PSYCHIATRY INVESTIGATION		WOS
10.1089/g4h.2017.0190	Factors Affecting Enjoyment of Virtual Reality Games: A Comparison Involving Consumer-Grade Virtual Reality Technology	2019	GAMES FOR HEALTH JOURNAL		WOS
10.1016/j.apergo.2018.03.015	Effects of unexpected visual motion on postural sway and motion sickness	2018	APPLIED ERGONOMICS		WOS
10.1016/j.ijom.2018.01.005	An innovative virtual reality training tool for orthognathic surgery	2018	INTERNATIONAL JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY		WOS
10.3390/electronics7090171	Time Sequential Motion-to-Photon Latency Measurement System for Virtual Reality Head-Mounted Displays	2018	ELECTRONICS		WOS
10.1016/j.rehab.2018.07.003	Modulating the internal model of verticality by virtual reality and body-weight support walking: A pilot study	2018	ANNALS OF PHYSICAL AND REHABILITATION MEDICINE		WOS
10.3390/sym10090400	Change of Blink Rate in Viewing Virtual Reality with HMD	2018	SYMMETRY-BASEL		WOS
10.1007/s00024-017-1755-z	Geovisualisation of Relief in a Virtual Reality System on the Basis of Low-Level Aerial Imagery	2018	PURE AND APPLIED GEOPHYSICS		WOS
10.1007/s00371-018-1501-2	Virtual reality's effect on parameter optimisation for crowd-sourced procedural animation	2018	VISUAL COMPUTER		WOS
10.1109/TVCG.2017.2754257	A Survey of Calibration Methods for Optical See-Through Head-Mounted Displays	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1007/s11042-017-5328-z	A system for head-neck rehabilitation exercises based on serious gaming and virtual reality	2018	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.1145/3230648	Behavior Analysis of Human Locomotion in the Real World and Virtual Reality for the Manufacturing Industry	2018	ACM TRANSACTIONS ON APPLIED PERCEPTION		WOS
10.1145/3232678	A Network-Based Virtual Reality Simulation Training Approach for Orthopedic Surgery	2018	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		WOS
10.1017/S1754470X18000090	Two case studies from a virtual reality intervention for delusions: feasibility and preliminary evidence	2018	COGNITIVE BEHAVIOUR THERAPIST		WOS
10.1371/journal.pone.0200724	The same video game in 2D, 3D or virtual reality - How does technology impact game evaluation and brand placements?	2018	PLOS ONE		WOS
10.11999/JEIT170995	Research and Implementation on Flower Plants Rendering Technology Based on Physical Light Simulation for VR Application	2018	JOURNAL OF ELECTRONICS & INFORMATION TECHNOLOGY		WOS
10.1016/j.jocs.2018.05.002	Real-time automated image segmentation technique for cerebral aneurysm on reconfigurable system-on-chip	2018	JOURNAL OF COMPUTATIONAL SCIENCE		WOS
00.0000/0028	Scientific Articles Exploration System Model based in Immersive Virtual Reality and Natural Language Processing Techniques	2018	INTERNATIONAL JOURNAL OF ADVANCED COMPUTER SCIENCE AND APPLICATIONS		WOS
10.1016/j.culher.2018.01.020	ReVitAge: Realistic virtual heritage taking shadows and sky illumination into account	2018	JOURNAL OF CULTURAL HERITAGE		WOS
10.1145/3182644	FaceVR: Real-Time Gaze-Aware Facial Reenactment in Virtual Reality	2018	ACM TRANSACTIONS ON GRAPHICS		WOS
00.0000/0029	Gender differences in attentional bias after owning a virtual avatar with increased weight	2018	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.1364/BOE.9.002825	Real-time visualization and interaction with static and live optical coherence tomography volumes in immersive virtual reality	2018	BIOMEDICAL OPTICS EXPRESS		WOS
10.4218/etrij.2017-0166	Expanded Exit-Pupil Holographic Head-Mounted Display With High-Speed Digital Micromirror Device	2018	ETRI JOURNAL		WOS
00.0000/0030	An Effective Virtual Reality based Remedy for Acrophobia	2018	INTERNATIONAL JOURNAL OF ADVANCED COMPUTER SCIENCE AND APPLICATIONS		WOS
10.1142/S1793962318400020	Flexible visualization framework for head-mounted display with gesture interaction interface	2018	INTERNATIONAL JOURNAL OF MODELING SIMULATION AND SCIENTIFIC COMPUTING		WOS
10.14257/ijgdc.2018.11.6.09	System for Evaluating Elements of VR Content that Cause Motion Sickness	2018	INTERNATIONAL JOURNAL OF GRID AND DISTRIBUTED COMPUTING		WOS
10.1007/s10822-018-0123-0	Touching proteins with virtual bare hands	2018	JOURNAL OF COMPUTER-AIDED MOLECULAR DESIGN		WOS
10.1371/journal.pone.0195886	The search for instantaneous vection: An oscillating visual prime reduces vection onset latency	2018	PLOS ONE		WOS
10.1111/desc.12557	The development of bodily self-consciousness: changing responses to the Full Body Illusion in childhood	2018	DEVELOPMENTAL SCIENCE		WOS
10.1364/OE.26.001161	Integrated 3D display and imaging using dual purpose passive screen and head-mounted projectors and camera	2018	OPTICS EXPRESS		WOS
10.1016/j.joms.2017.10.002	Effectiveness of Immersive Virtual Reality in Surgical Training-A Randomized Control Trial	2018	JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY		WOS
10.1002/cav.1812	Effects of interface on procedural skill transfer in virtual training: Lifeboat launching operation study	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1002/cav.1830	Evaluating enjoyment, presence, and emulator sickness in VR games based on first- and third- person viewing perspectives	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1016/j.cag.2017.11.007	Presence and cybersickness in immersive content: Effects of content type, exposure time and gender	2018	COMPUTERS & GRAPHICS-UK		WOS
10.1109/TVCG.2018.2793698	NotifiVR: Exploring Interruptions and Notifications in Virtual Reality	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2018.2794629	The Impact of Avatar Personalization and Immersion on Virtual Body Ownership, Presence, and Emotional Response	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1145/3229316.3229320	WHEN MIXED REALITY MEETS INTERNET OF THINGS: Toward the Realization of Ubiquitous Mixed Reality	2018	MOBILE COMPUTING AND COMMUNICATIONS REVIEW		WOS
10.1093/comjnl/bxx117	Visual Exploration of 3D Geospatial Networks in a Virtual Reality Environment	2018	COMPUTER JOURNAL		WOS
10.1016/j.chb.2017.11.033	Navigation in virtual environments using head-mounted displays: Allocentric vs. egocentric behaviors	2018	COMPUTERS IN HUMAN BEHAVIOR		WOS
10.1016/j.fusengdes.2018.02.031	Preliminary realization of immersive EAST system using virtual reality	2018	FUSION ENGINEERING AND DESIGN		WOS
10.1007/s10055-017-0313-4	Evaluation of visual feedback techniques for virtual grasping with bare hands using Leap Motion and Oculus Rift	2018	VIRTUAL REALITY		WOS
10.1007/s10055-017-0316-1	Control mapping in virtual reality: effects on spatial presence and controller naturalness	2018	VIRTUAL REALITY		WOS
10.5195/ijt.2018.6250	SAFETY AND FEASIBILITY OF A FIRST-PERSON VIEW, FULL-BODY INTERACTION GAME FOR TELEREHABILITATION POST-STROKE	2018	INTERNATIONAL JOURNAL OF TELEREHABILITATION		WOS
10.3390/computers7010015	Users' Perceptions Using Low-End and High-End Mobile-Rendered HMDs: A Comparative Study	2018	COMPUTERS		WOS
10.1111/tra.12538	Journey to the centre of the cell: Virtual reality immersion into scientific data	2018	TRAFFIC		WOS
10.14257/ijgdc.2018.11.2.09	Analysis of a Quality Evaluation Model for VR Contents	2018	INTERNATIONAL JOURNAL OF GRID AND DISTRIBUTED COMPUTING		WOS
10.1007/s11036-017-0834-9	Consumer-oriented Head Mounted Displays: Analysis and Evaluation of Stereoscopic Characteristics and User Preferences	2018	MOBILE NETWORKS & APPLICATIONS		WOS
10.1007/s11548-017-1686-2	Highly immersive virtual reality laparoscopy simulation: development and future aspects	2018	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		WOS
10.1109/TVCG.2017.2653117	Effects of Different Types of Virtual Reality Display on Presence and Learning in a Safety Training Scenario	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1177/1729881417751545	Application of virtual reality in teleoperation of the military mobile robotic system TAROS	2018	INTERNATIONAL JOURNAL OF ADVANCED ROBOTIC SYSTEMS		WOS
10.3788/YJYXS20183301.0085	Panoramic video display quality assessment based on HTC Vive	2018	CHINESE JOURNAL OF LIQUID CRYSTALS AND DISPLAYS		WOS
10.1089/g4h.2017.0114	Comparison of Oculus Rift and HTC Vive: Feasibility for Virtual Reality-Based Exploration, Navigation, Exergaming, and Rehabilitation	2018	GAMES FOR HEALTH JOURNAL		WOS
10.1080/21681163.2017.1343687	Design of adaptive control and virtual reality-based fine hand motion rehabilitation system and its effects in subacute stroke patients	2018	COMPUTER METHODS IN BIOMECHANICS AND BIOMEDICAL ENGINEERING-IMAGING AND VISUALIZATION		WOS
10.1080/08824096.2018.1525349	Ways of Seeing Matter: The Impact of a Naturally Mapped Perceptual System on the Persuasive Effects of Immersive Virtual Reality Advertising	2018	COMMUNICATION RESEARCH REPORTS		WOS
10.3233/VES-190650	A virtual reality head stability test for patients with vestibular dysfunction	2018	JOURNAL OF VESTIBULAR RESEARCH-EQUILIBRIUM & ORIENTATION		WOS
10.3991/ijoe.v13i08.7371	An Educational Physics Laboratory in Mobile Versus Room Scale Virtual Reality - A Comparative Study	2017	ONLINE ENGINEERING & INTERNET OF THINGS		WOS
10.5277/ABB-01082-2018-02	Balance disturbances coefficient as a new value to assess ability to maintain balance on the basis of FFT curves	2018	ACTA OF BIOENGINEERING AND BIOMECHANICS		WOS
10.1108/ILS-07-2018-0069	Virtual reality learning environments Development of multi-user reference support experiences	2018	INFORMATION AND LEARNING SCIENCE		WOS
00.0000/0031	IMMERSIVE VR IN THE CONSTRUCTION CLASSROOM TO INCREASE STUDENT UNDERSTANDING OF SEQUENCE, ASSEMBLY, AND SPACE OF WOOD FRAME CONSTRUCTION	2018	JOURNAL OF INFORMATION TECHNOLOGY IN CONSTRUCTION		WOS
10.1162/netn_a_00044	NeuroCave: A web-based immersive visualization platform for exploring connectome datasets	2018	NETWORK NEUROSCIENCE		WOS
00.0000/0032	Target Selection in Head-Mounted Display Virtual Reality Environments	2018	JOURNAL OF UNIVERSAL COMPUTER SCIENCE		WOS
10.1109/ACCESS.2018.2864872	A Framework for Assessing Spatial Presence of Omnidirectional Video on Virtual Reality Device	2018	IEEE ACCESS		WOS
00.0000/0033	A SKETCH-BASED 3D MODELING METHOD FOR 3D CRIME SCENE PRESENTATION	2018	JOURNAL OF DIGITAL FORENSICS SECURITY AND LAW		WOS
10.17398/1695-288X.17.1.61	Assessment of a History educational video game. The student's opinion	2018	REVISTA LATINOAMERICANA DE TECNOLOGIA EDUCATIVA-RELATEC		WOS
10.18494/SAM.2018.1912	Effect of Social Facilitation without Presence of Others on Swallowing Function and Eating Behavior	2018	SENSORS AND MATERIALS		WOS
10.1007/s41064-020-00106-z	Stuttgart City Walk: A Case Study on Visualizing Textured DSM Meshes for the General Public Using Virtual Reality	2020	PFG-JOURNAL OF PHOTOGRAMMETRY REMOTE SENSING AND GEOINFORMATION SCIENCE		WOS
10.1007/s10916-020-01550-5	VR4Health: Personalized teaching and learning anatomy using VR	2020	JOURNAL OF MEDICAL SYSTEMS		WOS
10.1007/s10055-020-00432-y	Revisiting affordance perception in contemporary virtual reality	2020	VIRTUAL REALITY		WOS
10.1002/pmrj.12206	Upper Extremity Rehabilitation Using Fully Immersive Virtual Reality Games With a Head Mount Display: A Feasibility Study	2020	PM&R		WOS
10.1109/TMM.2019.2933338	Realistic Facial Expression Reconstruction for VR HMD Users	2020	IEEE TRANSACTIONS ON MULTIMEDIA		WOS
10.1109/TMM.2019.2931807	Optimizing Fixation Prediction Using Recurrent Neural Networks for 360 degrees Video Streaming in Head-Mounted Virtual Reality	2020	IEEE TRANSACTIONS ON MULTIMEDIA		WOS
10.1016/j.archger.2019.104004	Visual dependence affects the motor behavior of older adults during the Timed Up and Go (TUG) test	2020	ARCHIVES OF GERONTOLOGY AND GERIATRICS		WOS
10.1016/j.ijhcs.2020.102413	Extending Fitts' law in three-dimensional virtual environments with current low-cost virtual reality technology	2020	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		WOS
10.1016/j.ijhcs.2020.102414	Comparing selection mechanisms for gaze input techniques in head-mounted displays	2020	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		WOS
10.1007/s10055-019-00401-0	Don't make me sick: investigating the incidence of cybersickness in commercial virtual reality headsets	2020	VIRTUAL REALITY		WOS
10.1016/j.chb.2020.106295	Restoration in a virtual reality forest environment	2020	COMPUTERS IN HUMAN BEHAVIOR		WOS
10.3758/s13428-019-01336-9	Size and shape constancy in consumer virtual reality	2020	BEHAVIOR RESEARCH METHODS		WOS
10.1007/s00104-020-01188-6	Extended reality technologies for support of surgical workflows	2020	CHIRURG		WOS
10.1007/s10639-019-10050-0	An immersive virtual reality educational intervention on people with autism spectrum disorders (ASD) for the development of communication skills and problem solving	2020	EDUCATION AND INFORMATION TECHNOLOGIES		WOS
10.1109/MCSE.2020.2972822	Augmented and Virtual Reality in Surgery	2020	COMPUTING IN SCIENCE & ENGINEERING		WOS
10.1007/s11042-019-08390-7	Viewport-adaptive 360-degree video coding	2020	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.1016/j.isprsjprs.2020.03.007	Interactive dense point clouds in a game engine	2020	ISPRS JOURNAL OF PHOTOGRAMMETRY AND REMOTE SENSING		WOS
10.1109/TVCG.2020.2973473	DGaze: CNN-Based Gaze Prediction in Dynamic Scenes	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2020.2973498	Mind the Gap: The Underrepresentation of Female Participants and Authors in Virtual Reality Research	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2020.2973442	Eye-dominance-guided Foveated Rendering	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2020.2973075	Using Facial Animation to Increase the Enfacement Illusion and Avatar Self-Identification	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2020.2973441	EarVR: Using Ear Haptics in Virtual Reality for Deaf and Hard-of-Hearing People	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2020.2973053	Toward Standardized Classification of Foveated Displays	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1007/s00445-020-01376-6	Real world-based immersive Virtual Reality for research, teaching and communication in volcanology	2020	BULLETIN OF VOLCANOLOGY		WOS
10.1111/bjet.12946	Immersive virtual field trips and elementary students' perceptions	2020	BRITISH JOURNAL OF EDUCATIONAL TECHNOLOGY		WOS
10.1002/col.22509	Discomfort luminance level of head-mounted displays depending on the adapting luminance	2020	COLOR RESEARCH AND APPLICATION		WOS
10.3389/fnins.2020.00357	Visuomotor Transformation for the Lead Leg Affects Trail Leg Trajectories During Visually Guided Crossing Over a Virtual Obstacle in Humans	2020	FRONTIERS IN NEUROSCIENCE		WOS
10.1007/s10055-020-00433-x	Motivations, design, and preliminary testing for a 360 degrees vision simulator	2020	VIRTUAL REALITY		WOS
10.1080/09588221.2020.1752735	The impact of a virtual reality app on adolescent EFL learners' vocabulary learning	2020	COMPUTER ASSISTED LANGUAGE LEARNING		WOS
10.1186/s12984-020-00678-2	Transfer of motor skill between virtual reality viewed using a head-mounted display and conventional screen environments	2020	JOURNAL OF NEUROENGINEERING AND REHABILITATION		WOS
10.1007/s10055-020-00440-y	Virtual experience, real consequences: the potential negative emotional consequences of virtual reality gameplay	2020	VIRTUAL REALITY		WOS
10.1177/1470412920906260	Empathy for the game master: how virtual reality creates empathy for those seen to be creating VR	2020	JOURNAL OF VISUAL CULTURE		WOS
10.1007/s11548-020-02126-x	Simulation of scattered radiation during intraoperative imaging in a virtual reality learning environment	2020	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		WOS
10.1016/j.apergo.2019.103010	The effects of target location on musculoskeletal load, task performance, and subjective discomfort during virtual reality interactions	2020	APPLIED ERGONOMICS		WOS
10.1007/s12262-020-02131-z	Virtual Operating Room Simulation Setup (VORSS) for Procedural Training in Minimally Invasive Surgery - a Pilot Study	2020	INDIAN JOURNAL OF SURGERY		WOS
10.3390/app10062026	Encoding, Exchange and Manipulation of Captured Immersive VR Sessions for Learning Environments: the PRISMIN Framework	2020	APPLIED SCIENCES-BASEL		WOS
10.3390/info11030134	Design of a 3D Platform for Immersive Neurocognitive Rehabilitation	2020	INFORMATION		WOS
10.1016/j.jmatprotec.2004.09.086	A new hybrid dynamic modelling approach for process planning	2005	JOURNAL OF MATERIALS PROCESSING TECHNOLOGY	Article	WOS
10.3390/app10051668	GazeGuide: An Eye-Gaze-Guided Active Immersive UAV Camera	2020	APPLIED SCIENCES-BASEL		WOS
10.1163/22134808-20201445	How Much of What We Learn in Virtual Reality Transfers to Real-World Navigation?	2020	MULTISENSORY RESEARCH		WOS
10.1007/s10846-019-01054-6	Head-synced Drone Control for Reducing Virtual Reality Sickness	2020	JOURNAL OF INTELLIGENT & ROBOTIC SYSTEMS		WOS
10.1016/j.jhtm.2020.02.003	Impact of VR on impulsive desire for a destination	2020	JOURNAL OF HOSPITALITY AND TOURISM MANAGEMENT		WOS
10.1007/s00464-019-06862-3	Effectiveness of the HoloLens mixed-reality headset in minimally invasive surgery: a simulation-based feasibility study	2020	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		WOS
10.3837/tiis.2020.02.020	Effect Analysis of Virtual-reality Vestibular Rehabilitation based on Eye-tracking	2020	KSII TRANSACTIONS ON INTERNET AND INFORMATION SYSTEMS		WOS
10.1007/s41064-020-00091-3	Preserving the Knowledge of the Past Through Virtual Visits: From 3D Laser Scanning to Virtual Reality Visualisation at the Istanbul catalca Incegiz Caves	2020	PFG-JOURNAL OF PHOTOGRAMMETRY REMOTE SENSING AND GEOINFORMATION SCIENCE		WOS
10.1007/s10055-019-00411-y	Level of immersion affects spatial learning in virtual environments: results of a three-condition within-subjects study with long intersession intervals	2020	VIRTUAL REALITY		WOS
10.1002/cav.1920	Sketch-based shape-constrained fireworks simulation in head-mounted virtual reality	2020	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.3389/frobt.2020.00020	Audio in VR: Effects of a Soundscape and Movement-Triggered Step Sounds on Presence	2020	FRONTIERS IN ROBOTICS AND AI		WOS
10.1089/g4h.2019.0102	Studying the Effect of Display Type and Viewing Perspective on User Experience in Virtual Reality Exergames	2020	GAMES FOR HEALTH JOURNAL		WOS
10.1007/s00779-020-01373-8	Design methodology for 360 degrees immersive video applications: the case study of a cultural heritage virtual tour	2020	PERSONAL AND UBIQUITOUS COMPUTING		WOS
10.1016/j.buildenv.2019.106544	Effects of audio-visual interactions on soundscape and landscape perception and their influence on satisfaction with the urban environment	2020	BUILDING AND ENVIRONMENT		WOS
10.3390/app10041427	Exocentric Distance Judgment and Accuracy of Head-Mounted and Stereoscopic Widescreen Displays in Frontal Planes	2020	APPLIED SCIENCES-BASEL		WOS
10.3390/s20041204	Embodiment Is Related to Better Performance on a Brain-Computer Interface in Immersive Virtual Reality: A Pilot Study	2020	SENSORS		WOS
10.1016/j.encep.2019.09.002	Feasibility study of therapeutic exposure in virtual reality for pathological gamblers	2020	ENCEPHALE-REVUE DE PSYCHIATRIE CLINIQUE BIOLOGIQUE ET THERAPEUTIQUE		WOS
10.1007/s11042-019-7331-z	Crossmodal perception in virtual reality	2020	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.1109/JPROC.2019.2894817	Scalable 360 degrees Video Stream Delivery: Challenges, Solutions, and Opportunities	2019	PROCEEDINGS OF THE IEEE		WOS
10.1016/j.actpsy.2019.102987	The self-generated full body illusion is accompanied by impaired detection of somatosensory stimuli	2020	ACTA PSYCHOLOGICA		WOS
10.1016/j.tra.2019.11.008	Evaluating cyclists' perception of satisfaction using 360 degrees videos	2020	TRANSPORTATION RESEARCH PART A-POLICY AND PRACTICE		WOS
10.1016/j.ajo.2019.10.006	Expansion of Peripheral Visual Field with Novel Virtual Reality Digital Spectacles	2020	AMERICAN JOURNAL OF OPHTHALMOLOGY		WOS
10.3389/frobt.2020.00004	Virtual Reality Is Sexist: But It Does Not Have to Be	2020	FRONTIERS IN ROBOTICS AND AI		WOS
10.3389/fpsyg.2020.00035	Gaze Behavior in Social Fear Conditioning: An Eye-Tracking Study in Virtual Reality	2020	FRONTIERS IN PSYCHOLOGY		WOS
10.1364/OE.382804	Effect of surface roughness of optical waveguide on imaging quality and a formula of RSE tolerance and incident angle	2020	OPTICS EXPRESS		WOS
00.0000/0034	COMPARISON OF USER EXPERIENCES BASED ON WATCHING 360 degrees IMMERSIVE VIDEO AND REALITY-A CASE STUDY OF A SCOOTER RIDE	2020	PROMET-TRAFFIC & TRANSPORTATION		WOS
10.1109/ACCESS.2020.2988678	Identifying the Optimal 3D Display Technology for Hands-On Virtual Experiential Learning: A Comparison Study	2020	IEEE ACCESS		WOS
10.1109/ACCESS.2020.2983608	Real-Time Recognition of Facial Expressions Using Facial Electromyograms Recorded Around the Eyes for Social Virtual Reality Applications	2020	IEEE ACCESS		WOS
10.37190/ABB-01490-2019-03	Assessment of gait stability and preferred walking speed in virtual reality	2020	ACTA OF BIOENGINEERING AND BIOMECHANICS		WOS
10.1109/ACCESS.2020.2972122	Depth Perception in Virtual Reality Systems: Effect of Screen Distance, Environment Richness and Display Factors	2020	IEEE ACCESS		WOS
10.1109/ACCESS.2020.2970921	A Comparative Study Between Wired and Wireless Virtual Reality Setups	2020	IEEE ACCESS		WOS
10.1109/ACCESS.2020.2977688	Eye-Contact Game Using Mixed Reality for the Treatment of Children With Attention Deficit Hyperactivity Disorder	2020	IEEE ACCESS		WOS
10.1109/TOH.2020.2965937	Pseudo-Sensation of Walking Generated by Passive Whole-Body Motions in Heave and Yaw Directions	2020	IEEE TRANSACTIONS ON HAPTICS		WOS
10.3390/sym12010053	Asymmetric Interface: User Interface of Asymmetric Virtual Reality for New Presence and Experience	2020	SYMMETRY-BASEL		WOS
10.18261/issn.1892-2686-2020-01-02	Virtual Reality non-medical treatment for patients after surgery An exploratory pilot study	2020	NORDISK SYGEPLEJEFORSKNING-NORDIC NURSING RESEARCH		WOS
10.1016/j.displa.2019.08.004	A study of cybersickness and sensory conflict theory using a motion-coupled virtual reality system	2020	DISPLAYS		WOS
10.1109/TVCG.2019.2934395	The Impact of Immersion on Cluster Identification Tasks	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1016/j.buildenv.2019.106423	The effects of spatial separations between water sound and traffic noise sources on soundscape assessment	2020	BUILDING AND ENVIRONMENT		WOS
10.1016/j.compedu.2019.103707	A meta-analysis of virtual reality training programs for social skill development	2020	COMPUTERS & EDUCATION		WOS
10.3389/fmed.2019.00287	Perception and Performance on a Virtual Reality Cognitive Stimulation for Use in the Intensive Care Unit: A Non-randomized Trial in Critically Ill Patients	2019	FRONTIERS IN MEDICINE		WOS
10.1145/3362101	Tile-based Adaptive Streaming for Virtual Reality Video	2019	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		WOS
10.3390/info10120386	How Do eHMIs Affect Pedestrians' Crossing Behavior? A Study Using a Head-Mounted Display Combined with a Motion Suit	2019	INFORMATION		WOS
10.1016/j.cag.2019.09.005	A survey of real locomotion techniques for immersive virtual reality applications on head-mounted displays	2019	COMPUTERS & GRAPHICS-UK		WOS
10.1177/1550147719894533	Region of interest-based segmented tiled adaptive streaming using head-mounted display tracking sensing data	2019	INTERNATIONAL JOURNAL OF DISTRIBUTED SENSOR NETWORKS		WOS
10.1016/j.janxdis.2019.102147	Changes in trauma-potentiated startle, skin conductance, and heart rate within prolonged exposure therapy for PTSD in high and low treatment responders	2019	JOURNAL OF ANXIETY DISORDERS		WOS
10.1177/0018720819836343	External Human-Machine Interfaces on Automated Vehicles: Effects on Pedestrian Crossing Decisions	2019	HUMAN FACTORS		WOS
10.1007/s10055-018-0345-4	Haptic virtual reality and immersive learning for enhanced organic chemistry instruction	2019	VIRTUAL REALITY		WOS
10.1177/0735633119854030	A Design Model for Using Virtual Reality in Behavioral Skills Training	2019	JOURNAL OF EDUCATIONAL COMPUTING RESEARCH		WOS
10.1038/s41586-019-1687-0	Skin-integrated wireless haptic interfaces for virtual and augmented reality	2019	NATURE		WOS
10.1186/s12938-019-0731-5	Assessment of eye fatigue caused by head-mounted displays using eye-tracking	2019	BIOMEDICAL ENGINEERING ONLINE		WOS
10.1016/j.neuron.2019.08.012	A Modality-Independent Network Underlies the Retrieval of Large-Scale Spatial Environments in the Human Brain	2019	NEURON		WOS
10.2352/J.ImagingSci.Technol.2019.63.6.060409	The Impact of Radial Distortions in VR Headsets on Perceived Surface Slant	2019	JOURNAL OF IMAGING SCIENCE AND TECHNOLOGY		WOS
10.1145/3355089.3356530	The Camera Offset Space: Real-time Potentially Visible Set Computations for Streaming Rendering	2019	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1145/3355089.3356490	Reducing Simulator Sickness with Perceptual Camera Control	2019	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1145/3355089.3356557	DeepFovea: Neural Reconstruction for Foveated Rendering and Video Compression using Learned Statistics of Natural Videos	2019	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1145/3355089.3356517	Holographic Near-Eye Displays Based on Overlap-Add Stereograms	2019	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1145/3355089.3356552	DiCE: Dichoptic Contrast Enhancement for VR and Stereo Displays	2019	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1109/JBHI.2019.2892485	The Effect of Mirroring Display of Virtual Reality Tour of the Operating Theatre on Preoperative Anxiety: A Randomized Controlled Trial	2019	IEEE JOURNAL OF BIOMEDICAL AND HEALTH INFORMATICS		WOS
10.3390/app9214652	The Effects of Augmented Reality Interaction Techniques on Egocentric Distance Estimation Accuracy	2019	APPLIED SCIENCES-BASEL		WOS
10.1109/TVCG.2019.2932239	ReconViguRation: Reconfiguring Physical Keyboards in Virtual Reality	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2019.2932215	Face/On: Multi-Modal Haptic Feedback for Head-Mounted Displays in Virtual Reality	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2019.2932173	Conveying spatial awareness cues in xR collaborations	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.3389/frobt.2019.00104	How Foot Tracking Matters: The Impact of an Animated Self-Avatar on Interaction, Embodiment and Presence in Shared Virtual Environments	2019	FRONTIERS IN ROBOTICS AND AI		WOS
10.1002/adom.201901360	Practical Chromatic Aberration Correction in Virtual Reality Displays Enabled by Cost-Effective Ultra-Broadband Liquid Crystal Polymer Lenses	2020	ADVANCED OPTICAL MATERIALS		WOS
10.3758/s13428-019-01310-5	NavWell: A simplified virtual-reality platform for spatial navigation and memory experiments	2020	BEHAVIOR RESEARCH METHODS		WOS
10.3389/fmars.2019.00644	Virtual Reality and Oceanography: Overview, Applications, and Perspective	2019	FRONTIERS IN MARINE SCIENCE		WOS
10.3390/s18092832	A Walking-in-Place Method for Virtual Reality Using Position and Orientation Tracking	2018	SENSORS		WOS
10.3389/fneur.2019.01061	Embodiment and Presence in Virtual Reality After Stroke. A Comparative Study With Healthy Subjects	2019	FRONTIERS IN NEUROLOGY		WOS
10.1016/j.humov.2019.102515	Goal-directed aiming under restricted viewing conditions with confirmatory sensory feedback	2019	HUMAN MOVEMENT SCIENCE		WOS
10.1249/MSS.0000000000002016	Interactive Virtual Reality Reduces Quadriceps Pain during High-Intensity Cycling	2019	MEDICINE AND SCIENCE IN SPORTS AND EXERCISE		WOS
10.1177/0031512519857869	Using Virtual Reality to Study Subjective Time in Crowded Versus Uncrowded Environments	2019	PERCEPTUAL AND MOTOR SKILLS		WOS
10.1016/j.neuroimage.2019.06.010	Towards OPM-MEG in a virtual reality environment	2019	NEUROIMAGE		WOS
10.1142/S1793351X19400166	Efficient Live and On-Demand Tiled HEVC 360 VR Video Streaming	2019	INTERNATIONAL JOURNAL OF SEMANTIC COMPUTING		WOS
10.1016/j.buildenv.2019.106278	Developing an Innovative Method for Visual Perception Evaluation in a Physical-Based Virtual Environment	2019	BUILDING AND ENVIRONMENT		WOS
10.1109/MCE.2019.2923934	Motorcycle Head-Up Display: Design of Presenting Navigation Information	2019	IEEE CONSUMER ELECTRONICS MAGAZINE		WOS
10.1007/s00415-019-09370-5	Fear of heights in virtual reality saturates 20 to 40 m above ground	2019	JOURNAL OF NEUROLOGY		WOS
10.1097/PHM.0000000000001190	Immersive Virtual Reality Mirror Therapy for Upper Limb Recovery After Stroke A Pilot Study	2019	AMERICAN JOURNAL OF PHYSICAL MEDICINE & REHABILITATION		WOS
10.1016/j.landurbplan.2019.05.006	The influence of landmarks and urban form on cognitive maps using virtual reality	2019	LANDSCAPE AND URBAN PLANNING		WOS
10.3138/cjfs.28.1.2019-0012	THE SUBJECTIVE MACHINE? THE CINEMATOGRAPHIC APPROPRIATIONS OF CONTEMPORARY IMMERSIVE DEVICES	2019	CANADIAN JOURNAL OF FILM STUDIES-REVUE CANADIENNE D ETUDES CINEMATOGRAPHIQUES		WOS
10.3390/app9163384	A Subjective Study on User Perception Aspects in Virtual Reality	2019	APPLIED SCIENCES-BASEL		WOS
10.1145/3335053	6K and 8K Effective Resolution with 4K HEVC Decoding Capability for 360 Video Streaming	2019	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		WOS
10.1080/0144929X.2019.1641228	Reality-based interaction affecting mental workload in virtual reality mental arithmetic training	2019	BEHAVIOUR & INFORMATION TECHNOLOGY		WOS
10.1111/sms.13453	Effects of music, video, and 360-degree video on cycle ergometer exercise at the ventilatory threshold	2019	SCANDINAVIAN JOURNAL OF MEDICINE & SCIENCE IN SPORTS		WOS
10.1111/ejn.14499	Vection in virtual reality modulates vestibular-evoked myogenic potentials	2019	EUROPEAN JOURNAL OF NEUROSCIENCE		WOS
10.3390/s19143063	HiFinger: One-Handed Text Entry Technique for Virtual Environments Based on Touches between Fingers	2019	SENSORS		WOS
10.3390/su11143894	Contextualization of Archaeological Information Using Augmented Photospheres, Viewed with Head-Mounted Displays	2019	SUSTAINABILITY		WOS
10.1021/acs.jchemed.8b00905	Bug Off Pain: An Educational Virtual Reality Game on Spider Venoms and Chronic Pain for Public Engagement	2019	JOURNAL OF CHEMICAL EDUCATION		WOS
10.1016/j.appdev.2019.101052	Virtual reality's effect on children's inhibitory control, social compliance, and sharing	2019	JOURNAL OF APPLIED DEVELOPMENTAL PSYCHOLOGY		WOS
00.0000/0035	Classification for Human Balance Capacity Based on Visual Stimulation under a Virtual Reality Environment	2019	SENSORS		WOS
00.0000/0036	Virtual reality exposure with eye-gaze adaptive virtual cognitions	2019	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
00.0000/0037	Virtual Reality and Minimal Analgesia Attenuate Pain During Spine Surgery	2019	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.3390/computers8020039	Diffusion of Innovation: Case of Co-Design of Cabins in Mobile Work Machine Industry	2019	COMPUTERS		WOS
10.1038/s41433-019-0356-8	Using smartphone-delivered stereoscopic vision in microsurgery: a feasibility study	2019	EYE		WOS
10.1007/s00170-018-03237-1	2.5DHANDS: a gesture-based MR remote collaborative platform	2019	INTERNATIONAL JOURNAL OF ADVANCED MANUFACTURING TECHNOLOGY		WOS
10.1007/s10055-018-0370-3	VR aftereffect and the relation of cybersickness and cognitive performance	2019	VIRTUAL REALITY		WOS
10.1016/j.cognition.2019.03.003	Sensorimotor contingency modulates breakthrough of virtual 3D objects during a breaking continuous flash suppression paradigm	2019	COGNITION		WOS
10.3389/fpubh.2019.00116	Behavioral Counseling Training for Primary Care Providers: Immersive Virtual Simulation as a Training Tool	2019	FRONTIERS IN PUBLIC HEALTH		WOS
10.1093/pm/pny269	Characteristics of Phantom Limb Pain Alleviated with Virtual Reality Rehabilitation	2019	PAIN MEDICINE		WOS
10.1002/cav.1882	Virtual titration laboratory experiment with differentiated instruction	2019	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1111/cgf.13654	Near-Eye Display and Tracking Technologies for Virtual and Augmented Reality	2019	COMPUTER GRAPHICS FORUM		WOS
10.3390/app9091919	The Effect of Retinal Eccentricity on Visually Induced Motion Sickness and Postural Control	2019	APPLIED SCIENCES-BASEL		WOS
10.1007/s10339-019-00903-4	The choice of intrinsic axis under multi-cue conditions	2019	COGNITIVE PROCESSING		WOS
10.1109/TDSC.2018.2800048	GaitLock: Protect Virtual and Augmented Reality Headsets Using Gait	2019	IEEE TRANSACTIONS ON DEPENDABLE AND SECURE COMPUTING		WOS
10.1109/TVCG.2019.2898736	RingText: Dwell-free and hands-free Text Entry for Mobile Head-Mounted Displays using Head Motions	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2019.2898763	Immersive Virtual Colonoscopy	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1080/10447318.2018.1484054	Comparison of Gaze Cursor Input Methods for Virtual Reality Devices	2019	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER INTERACTION		WOS
00.0000/0038	Development of a Cross-Platform Cockpit for Simulated and Tele-Operated Excavators	2019	JOURNAL OF ROBOTICS AND MECHATRONICS		WOS
10.30773/pi.2019.02.08	Joint Attention Virtual Classroom: A Preliminary Study	2019	PSYCHIATRY INVESTIGATION		WOS
10.1016/j.learninstruc.2017.12.007	Adding immersive virtual reality to a science lab simulation causes more presence but less learning	2019	LEARNING AND INSTRUCTION		WOS
10.1016/j.socec.2019.02.007	Goggles in the lab: Economic experiments in immersive virtual environments	2019	JOURNAL OF BEHAVIORAL AND EXPERIMENTAL ECONOMICS		WOS
10.3390/app9061182	Holographic Three-Dimensional Virtual Reality and Augmented Reality Display Based on 4K-Spatial Light Modulators	2019	APPLIED SCIENCES-BASEL		WOS
10.1186/s40691-018-0166-9	How to evoke consumer approach intention toward VR stores? Sequential mediation through telepresence and experiential value	2019	FASHION AND TEXTILES		WOS
10.1093/iwc/iwz018	Navigation Comparison between a Real and a Virtual Museum: Time-dependent Differences using a Head Mounted Display	2019	INTERACTING WITH COMPUTERS		WOS
10.1016/j.foodres.2018.01.028	Immersive virtual reality technology in a three-dimensional virtual simulated store: Investigating telepresence and usability	2019	FOOD RESEARCH INTERNATIONAL		WOS
10.1109/JETCAS.2019.2898750	OmniCast :Wireless Pseudo-Analog Transmission for Omnidirectional Video	2019	IEEE JOURNAL ON EMERGING AND SELECTED TOPICS IN CIRCUITS AND SYSTEMS		WOS
10.2196/11517	Believing Is Seeing: A Proof-of-Concept Semiexperimental Study on Using Mobile Virtual Reality to Boost the Effects of Interpretation Bias Modification for Anxiety	2019	JMIR MENTAL HEALTH		WOS
10.1364/AO.58.000A74	Progress in virtual reality and augmented reality based on holographic display	2019	APPLIED OPTICS		WOS
10.1016/j.jvcir.2019.01.012	A client-based adaptation framework for 360-degree video streaming	2019	JOURNAL OF VISUAL COMMUNICATION AND IMAGE REPRESENTATION		WOS
10.3758/s13428-018-1116-6	A virtual reality approach identifies flexible inhibition of motion aftereffects induced by head rotation	2019	BEHAVIOR RESEARCH METHODS		WOS
10.1016/j.actpsy.2018.12.005	Influence of route decision-making and experience on human path integration	2019	ACTA PSYCHOLOGICA		WOS
10.1016/j.jstrokecerebrovasdis.2018.10.018	The Role of Personalized Virtual Reality in Education for Patients Post Stroke-A Qualitative Case Series	2019	JOURNAL OF STROKE & CEREBROVASCULAR DISEASES		WOS
10.3389/fnhum.2018.00504	Mimicking Schizophrenia: Reducing P300b by Minimally Fragmenting Healthy Participants' Selves Using Immersive Virtual Reality Embodiment	2019	FRONTIERS IN HUMAN NEUROSCIENCE		WOS
10.1007/978-3-030-03635-5_13	Beacon Virtua: A Virtual Reality Simulation Detailing the Recent and Shipwreck History of Beacon Island, Western Australia	2019	3D RECORDING AND INTERPRETATION FOR MARITIME ARCHAEOLOGY		WOS
10.16910/jemr.12.8.1	VR/AR Head-mounted Display System-based Measurement and Evaluation of Dynamic Visual Acuity	2019	JOURNAL OF EYE MOVEMENT RESEARCH		WOS
00.0000/0039	CAPTURE, REPRESENTATION, AND RENDERING OF 3D AUDIO FOR VIRTUAL AND AUGMENTED REALITY	2019	INTERNATIONAL JOURNAL ON INFORMATION TECHNOLOGIES AND SECURITY		WOS
10.1109/ACCESS.2019.2940073	Beyond Feeling Sick: The Visual and Cognitive Aftereffects of Virtual Reality	2019	IEEE ACCESS		WOS
10.1155/2019/9680697	Comparison of Visual Stimuli for Steady-State Visual Evoked Potential-Based Brain-Computer Interfaces in Virtual Reality Environment in terms of Classification Accuracy and Visual Comfort	2019	COMPUTATIONAL INTELLIGENCE AND NEUROSCIENCE		WOS
10.1109/ACCESS.2019.2921880	Unequal Error Protection Aided Region of Interest Aware Wireless Panoramic Video	2019	IEEE ACCESS		WOS
10.1080/15980316.2019.1606859	Full-color computational holographic near-eye display	2019	JOURNAL OF INFORMATION DISPLAY		WOS
10.1250/ast.40.265	Effect of auditory and visual stimuli on distance perception presented by head-mounted display and headphone	2019	ACOUSTICAL SCIENCE AND TECHNOLOGY		WOS
10.1080/15980316.2019.1572662	Progress of display performances: AR, VR, QLED, OLED, and TFT	2019	JOURNAL OF INFORMATION DISPLAY		WOS
00.0000/0040	Implementation of Augmented Virtuality in Virtual Meeting Room Application	2019	INTERNETWORKING INDONESIA		WOS
10.1109/ACCESS.2019.2910737	Binocular Phase-Coded Visual Stimuli for SSVEP-Based BCI	2019	IEEE ACCESS		WOS
10.1117/1.JEI.28.1.013019	Equatorial part segmentation model for 360-deg video projection	2019	JOURNAL OF ELECTRONIC IMAGING		WOS
10.3390/ijgi8010003	Collaborative Immersive Virtual Environments for Education in Geography	2019	ISPRS INTERNATIONAL JOURNAL OF GEO-INFORMATION		WOS
10.1177/0269215518788598	Long-term effects of vestibular rehabilitation and head-mounted gaming task procedure in unilateral vestibular hypofunction: a 12-month follow-up of a randomized controlled trial	2019	CLINICAL REHABILITATION		WOS
10.1364/OE.26.034142	Fast switching, high contrast and high resolution liquid crystal device for virtual reality display	2018	OPTICS EXPRESS		WOS
10.1162/PRES_a_00318	A Survey on Simulation Sickness in Driving Applications with Virtual Reality Head-Mounted Displays	2018	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS		WOS
10.1016/j.cag.2018.10.006	A comparative evaluation of direct hand and wand interactions on consumer devices	2018	COMPUTERS & GRAPHICS-UK		WOS
10.1109/TVCG.2017.2778249	Efficient VR and AR Navigation Through Multiperspective Occlusion Management	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.7717/peerj.5847	Effects of mixed reality head-mounted glasses during 90 minutes of mental and manual tasks on cognitive and physiological functions	2018	PEERJ		WOS
10.1016/j.actpsy.2018.09.009	Incongruent multisensory stimuli alter bodily self-consciousness: Evidence from a first-person perspective experience	2018	ACTA PSYCHOLOGICA		WOS
10.1002/jsid.734	Novel MRI hyper-realistic head-up display system for patient comfort	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.1016/j.cag.2018.07.007	Assessment of an articulatory interface for tactile intercommunication in immersive virtual environments	2018	COMPUTERS & GRAPHICS-UK		WOS
10.17973/MMSJ.2018_11_2017100	VIRTUAL LABORATORY FOR STUDY OF CONSTRUCTION OF MACHINE TOOLS	2018	MM SCIENCE JOURNAL		WOS
10.1016/j.image.2018.05.010	The prediction of head and eye movement for 360 degree images	2018	SIGNAL PROCESSING-IMAGE COMMUNICATION		WOS
10.7717/peerj.5844	Don't worry, be active: how to facilitate the detection of errors in immersive virtual environments	2018	PEERJ		WOS
10.3389/fnhum.2018.00420	BCI to Potentially Enhance Streaming Images to a VR Headset by Predicting Head Rotation	2018	FRONTIERS IN HUMAN NEUROSCIENCE		WOS
10.3389/fpsyg.2018.01901	Responding to Other People's Posture: Visually Induced Motion Sickness From Naturally Generated Optic Flow	2018	FRONTIERS IN PSYCHOLOGY		WOS
10.1145/3238303	Comparison of Unobtrusive Visual Guidance Methods in an Immersive Dome Environment	2018	ACM TRANSACTIONS ON APPLIED PERCEPTION		WOS
10.1145/3238301	Foveated Depth-of-Field Filtering in Head-Mounted Displays	2018	ACM TRANSACTIONS ON APPLIED PERCEPTION		WOS
10.1002/jsid.708	New fast response in-plane switching liquid crystal mode	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.1109/LRA.2018.2864359	Delay Compensation for a Telepresence System With 3D 360 Degree Vision Based on Deep Head Motion Prediction and Dynamic FoV Adaptation	2018	IEEE ROBOTICS AND AUTOMATION LETTERS		WOS
10.1002/cav.1805	A shared augmented virtual environment for real-time mixed reality applications	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1016/j.concog.2018.05.005	The influence of visual and vestibular orientation cues in a clock reading task	2018	CONSCIOUSNESS AND COGNITION		WOS
10.1167/18.9.1	Creating correct blur and its effect on accommodation	2018	JOURNAL OF VISION		WOS
10.1111/psyp.13090	Dissociation of frontal-midline delta-theta and posterior alpha oscillations: A mobile EEG study	2018	PSYCHOPHYSIOLOGY		WOS
10.1145/3209661	Designing and Evaluating a Mesh Simplification Algorithm for Virtual Reality	2018	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		WOS
10.1145/3205864	Novel Hybrid-Cast Approach to Reduce Bandwidth and Latency for Cloud-Based Virtual Space	2018	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		WOS
10.1145/3197517.3201335	In the Blink of an Eye - Leveraging Blink-Induced Suppression for Imperceptible Position and Orientation Redirection in Virtual Reality	2018	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1162/leon_a_01641	Inhabitat: An Imaginary Ecosystem in a Children's Science Museum	2018	LEONARDO		WOS
10.1167/tvst.7.4.2	High-Performance Virtual Reality Volume Rendering of Original Optical Coherence Tomography Point-Cloud Data Enhanced With Real-Time Ray Casting	2018	TRANSLATIONAL VISION SCIENCE & TECHNOLOGY		WOS
10.1017/pasa.2018.19	Immersive Virtual Reality Experiences for All-Sky Data	2018	PUBLICATIONS OF THE ASTRONOMICAL SOCIETY OF AUSTRALIA		WOS
00.0000/0041	Using the Virtual Multitasking Test to Assess the Realization of Intentions: A Preliminary Psychometric Study	2018	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.1016/j.ijhcs.2018.02.003	Effects of mixed-reality on players' behaviour and immersion in a cultural tourism game: A cognitive processing perspective	2018	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		WOS
10.1016/j.ecns.2018.03.001	Assessing Simulation, Virtual Reality, and Television Modalities in Clinical Training	2018	CLINICAL SIMULATION IN NURSING		WOS
10.1177/1553350618761756	Artificial Versus Video-Based Immersive Virtual Surroundings: Analysis of Performance and User's Preference	2018	SURGICAL INNOVATION		WOS
10.1002/cae.21915	VR-embedded BIM immersive system for QS engineering education	2018	COMPUTER APPLICATIONS IN ENGINEERING EDUCATION		WOS
10.1002/jsid.658	An 18 megapixel 4.3 '' 1443 ppi 120 Hz OLED display for wide field of view high acuity head mounted displays	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.3928/23258160-20180501-08	Ocular Tolerance of Contemporary Electronic Display Devices	2018	OPHTHALMIC SURGERY LASERS & IMAGING RETINA		WOS
10.1002/cav.1838	Empowerment and embodiment for collaborative mixed reality systems	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1109/TVCG.2018.2794639	Evaluating Multiple Levels of an Interaction Fidelity Continuum on Performance and Learning in Near-Field Training Simulations	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2018.2794119	Gaze-Aware Streaming Solutions for the Next Generation of Mobile VR Experiences	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2018.2794071	Parallax360: Stereoscopic 360 degrees Scene Representation for Head-Motion Parallax	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2018.2793038	Ascending and Descending in Virtual Reality: Simple and Safe System using Passive Haptics	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1364/JOSAA.35.00B130	Correlation between perception of color, shadows, and surface textures and the realism of a scene in virtual reality	2018	JOURNAL OF THE OPTICAL SOCIETY OF AMERICA A-OPTICS IMAGE SCIENCE AND VISION		WOS
10.1109/THMS.2017.2782490	Effects of Augmented Reality on the Performance of Teleoperated Industrial Assembly Tasks in a Robotic Embodiment	2018	IEEE TRANSACTIONS ON HUMAN-MACHINE SYSTEMS		WOS
10.1371/journal.pone.0194137	Influence of bone-conducted vibration on simulator sickness in virtual reality	2018	PLOS ONE		WOS
10.1097/01.NEP.0000000000000258	The Student Experience With Varying Immersion Levels of Virtual Reality Simulation	2018	NURSING EDUCATION PERSPECTIVES		WOS
10.1364/OE.26.004863	High-resolution additive light field near-eye display by switchable Pancharatnam-Berry phase lenses	2018	OPTICS EXPRESS		WOS
10.3389/fneur.2018.00067	Immersive Low-Cost Virtual Reality Treatment for Phantom Limb Pain: Evidence from Two Cases	2018	FRONTIERS IN NEUROLOGY		WOS
10.3389/fneur.2018.00048	The effect of Visual stimuli on stability and complexity of Postural control	2018	FRONTIERS IN NEUROLOGY		WOS
10.1002/jsid.638	An AMOLED pixel circuit for high image quality of 1000ppi mobile displays in AR and VR applications	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		WOS
10.1016/j.jenvp.2018.01.001	Exploring perceived restoration potential of urban green enclosure through immersive virtual environments	2018	JOURNAL OF ENVIRONMENTAL PSYCHOLOGY		WOS
10.1007/s12008-017-0377-0	Improved virtual reality perception with calibrated stereo and variable focus for industrial use	2018	INTERNATIONAL JOURNAL OF INTERACTIVE DESIGN AND MANUFACTURING - IJIDEM		WOS
10.1109/TVCG.2017.2658570	Augmented Reality versus Virtual Reality for 3D Object Manipulation	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.3389/fpsyg.2017.02321	Experiencing Nature through Immersive Virtual Environments: Environmental Perceptions, Physical Engagement, and Affective Responses during a Simulated Nature Walk	2018	FRONTIERS IN PSYCHOLOGY		WOS
10.1371/journal.pone.0189275	Missing depth cues in virtual reality limit performance and quality of three dimensional reaching movements	2018	PLOS ONE		WOS
10.1080/15420353.2018.1498427	From Archive, to Access, to Experience-Historical Documents as a Basis for Immersive Experiences	2018	JOURNAL OF MAP & GEOGRAPHY LIBRARIES		WOS
00.0000/0042	An underwater tablet for documentation and use of submerged archaeological sites	2018	ARCHEOMATICA-TECNOLOGIE PER I BENI CULTURALI		WOS
10.3991/ijoe.v14i05.7788	Disseminating Civil Engineering through Virtual Reality: An Immersive Interface	2018	INTERNATIONAL JOURNAL OF ONLINE ENGINEERING		WOS
10.1080/17503280.2018.1503859	Touring the 'World Picture': virtual reality and the tourist gaze	2018	STUDIES IN DOCUMENTARY FILM		WOS
10.1080/17571472.2018.1483000	Using virtual reality to train emotional and social skills in children with autism spectrum disorder	2018	LONDON JOURNAL OF PRIMARY CARE		WOS
10.1155/2018/2585797	Immersive Gesture Interfaces for Navigation of 3D Maps in HMD-Based Mobile Virtual Environments	2018	MOBILE INFORMATION SYSTEMS		WOS
10.3991/ijoe.v14i03.8112	VR Interactive Feature of HTML5-based WebVR Control Laboratory by Using Head-mounted Display	2018	INTERNATIONAL JOURNAL OF ONLINE ENGINEERING		WOS
10.1155/2018/4798359	BCI and FES Based Therapy for Stroke Rehabilitation Using VR Facilities	2018	WIRELESS COMMUNICATIONS & MOBILE COMPUTING		WOS
10.1109/TOH.2017.2741488	Multimodal Evaluation of the Differences between Real and Virtual Assemblies	2018	IEEE TRANSACTIONS ON HAPTICS		WOS
10.3103/S1068335618010049	Requirements for Optical Systems for Virtual Displays	2018	BULLETIN OF THE LEBEDEV PHYSICS INSTITUTE		WOS
10.1016/j.displa.2018.01.002	Effects of display type and motion control on cybersickness in a virtual bike simulator	2018	DISPLAYS		WOS
10.1016/j.autcon.2017.10.009	Zero latency: Real-time synchronization of BIM data in virtual reality for collaborative decision-making	2018	AUTOMATION IN CONSTRUCTION		WOS
10.1007/s11277-017-4954-0	Effect of Interaction Based on Augmented Context in Immersive Virtual Reality Environment	2018	WIRELESS PERSONAL COMMUNICATIONS		WOS
10.1111/jspn.12201	Effectiveness of a virtual reality intervention to minimize pediatric stress and pain intensity during venipuncture	2018	JOURNAL FOR SPECIALISTS IN PEDIATRIC NURSING		WOS
10.1038/s41598-017-18289-8	Orientation in Virtual Reality Does Not Fully Measure Up to the Real-World	2017	SCIENTIFIC REPORTS		WOS
10.1109/JSEN.2017.2762704	Hybrid PS-V Technique: A Novel Sensor Fusion Approach for Fast Mobile Eye-Tracking With Sensor-Shift Aware Correction	2017	IEEE SENSORS JOURNAL		WOS
10.1371/journal.pone.0187220	Fear of falling and postural reactivity in patients with glaucoma	2017	PLOS ONE		WOS
10.3390/technologies5040077	Motion Instruction Method Using Head Motion-Associated Virtual Stereo Rearview	2017	TECHNOLOGIES		WOS
10.1109/JSYST.2015.2410533	Development of a Three-Dimensional Multimode Visual Immersive System With Applications in Telepresence	2017	IEEE SYSTEMS JOURNAL		WOS
00.0000/0043	History and Current State of Virtual Reality Technology and Its Application in Language Education	2017	JOURNAL OF TECHNOLOGY AND CHINESE LANGUAGE TEACHING		WOS
10.1097/MRR.0000000000000244	Three-dimensional head-mounted gaming task procedure maximizes effects of vestibular rehabilitation in unilateral vestibular hypofunction: a randomized controlled pilot trial	2017	INTERNATIONAL JOURNAL OF REHABILITATION RESEARCH		WOS
10.1038/s41598-017-16316-2	A Deep-Dream Virtual Reality Platform for Studying Altered Perceptual Phenomenology	2017	SCIENTIFIC REPORTS		WOS
10.1371/journal.pone.0187777	Meditation experts try Virtual Reality Mindfulness: A pilot study evaluation of the feasibility and acceptability of Virtual Reality to facilitate mindfulness practice in people attending a Mindfulness conference.	2017	PLOS ONE		WOS
10.26687/archnet-ijar.v11i3.1395	VIRTUAL WOLVERHAMPTON: RECREATING THE HISTORIC CITY IN VIRTUAL REALITY	2017	ARCHNET-IJAR INTERNATIONAL JOURNAL OF ARCHITECTURAL RESEARCH		WOS
10.1016/j.fusengdes.2017.03.131	Minimising operator dose during JET shutdown using virtual	2017	FUSION ENGINEERING AND DESIGN		WOS
10.2352/J.ImagingSci.Technol.2017.61.6.060406	Display Infrastructure for Virtual Environments	2017	JOURNAL OF IMAGING SCIENCE AND TECHNOLOGY		WOS
10.1109/TVCG.2017.2735098	Cognitive Cost of Using Augmented Reality Displays	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1007/s00104-017-0465-5	I will do laparoscopy somewhere else. Total, highly immersive virtual reality without side effects?	2017	CHIRURG		WOS
10.1007/s00221-016-4846-7	The virtual reality head-mounted display Oculus Rift induces motion sickness and is sexist in its effects	2017	EXPERIMENTAL BRAIN RESEARCH		WOS
10.1007/s00464-017-5500-6	New dimensions in surgical training: immersive virtual reality laparoscopic simulation exhilarates surgical staff	2017	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		WOS
10.1016/j.cmpb.2017.08.008	Motion Rehab AVE 3D: A VR-based exergame for post-stroke rehabilitation	2017	COMPUTER METHODS AND PROGRAMS IN BIOMEDICINE		WOS
10.1145/3106155	Perceived Space in the HTC Vive	2017	ACM TRANSACTIONS ON APPLIED PERCEPTION		WOS
10.1002/ase.1696	The Effectiveness of Virtual and Augmented Reality in Health Sciences and Medical Anatomy	2017	ANATOMICAL SCIENCES EDUCATION		WOS
10.1097/SLA.0000000000002448	Mixed Reality in Visceral Surgery Development of a Suitable Workflow and Evaluation of Intraoperative Use-cases	2017	ANNALS OF SURGERY		WOS
10.1016/j.apergo.2017.03.007	Efficacy of virtual reality in pedestrian safety research	2017	APPLIED ERGONOMICS		WOS
10.1212/WNL.0000000000004585	Virtual reality improves embodiment and neuropathic pain caused by spinal cord injury	2017	NEUROLOGY		WOS
10.3807/COPP.2017.1.5.474	Tolerance Analysis of Focus-adjustable Head-mounted Displays	2017	CURRENT OPTICS AND PHOTONICS		WOS
10.1038/s41598-017-13153-1	Visuo-acoustic stimulation that helps you to relax: A virtual reality setup for patients in the intensive care unit	2017	SCIENTIFIC REPORTS		WOS
10.1038/lsa.2017.81	Automated design of freeform imaging systems	2017	LIGHT-SCIENCE & APPLICATIONS		WOS
10.20965/jdr.2017.p0882	Development of a Virtual Reality Experience System for Interior Damage Due to an Earthquake - Utilizing E-Defense Shake Table Test -	2017	JOURNAL OF DISASTER RESEARCH		WOS
10.1002/alr.21986	Immersive virtual reality as a teaching tool for neuroanatomy	2017	INTERNATIONAL FORUM OF ALLERGY & RHINOLOGY		WOS
10.3389/fnhum.2017.00477	Walking through Architectural Spaces: The Impact of Interior Forms on Human Brain Dynamics	2017	FRONTIERS IN HUMAN NEUROSCIENCE		WOS
10.3389/fpsyg.2017.01611	"The Use of Virtual Reality Facilitates Dialectical Behavior Therapy (R) ""Observing Sounds and Visuals"" Mindfulness Skills Training Exercises for a Latino Patient with Severe Burns: A Case Study"	2017	FRONTIERS IN PSYCHOLOGY		WOS
10.3389/frobt.2017.00042	Wearable Vibrotactile Haptic Device for Stiffness Discrimination during Virtual Interactions	2017	FRONTIERS IN ROBOTICS AND AI		WOS
10.17083/ijsg.v4i3.178	Evaluation of Visuo-Spatial Perspective Taking Skills using a Digital Game with Different Levels of Immersion	2017	INTERNATIONAL JOURNAL OF SERIOUS GAMES		WOS
10.1002/cav.1727	Exploitation of multiplayer interaction and development of virtual puppetry storytelling using gesture control and stereoscopic devices	2017	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1007/s00464-016-5379-7	OR fire virtual training simulator: design and face validity	2017	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		WOS
10.1007/s00006-016-0689-3	A Conformal Geometric Algebra Code Generator Comparison for Virtual Character Simulation in Mixed Reality	2017	ADVANCES IN APPLIED CLIFFORD ALGEBRAS		WOS
10.1109/TNSRE.2016.2626391	Local and Remote Cooperation With Virtual and Robotic Agents: A P300 BCI Study in Healthy and People Living With Spinal Cord Injury	2017	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING		WOS
10.1167/17.9.11	Comparison of view-based and reconstruction-based models of human navigational strategy	2017	JOURNAL OF VISION		WOS
10.1109/TVCG.2016.2601607	Amplified Head Rotation in Virtual Reality and the Effects on 3D Search, Training Transfer, and Spatial Orientation	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2016.2586071	Extended LazyNav: Virtual 3D Ground Navigation for Large Displays and Head-Mounted Displays	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
00.0000/0044	A method for creating interactive, user-resembling avatars	2017	PEERJ COMPUTER SCIENCE		WOS
10.1145/3072959.3073645	Low-Cost 360 Stereo Photography and Video Capture	2017	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1016/j.ijmst.2017.05.005	Head-mounted display-based intuitive virtual reality training system for the mining industry	2017	INTERNATIONAL JOURNAL OF MINING SCIENCE AND TECHNOLOGY		WOS
10.3813/AAA.919086	Interactive Soundscapes: 360 degrees-Video Based Immersive Virtual Reality in a Tool for the Participatory Acoustic Environment Evaluation of Urban Areas	2017	ACTA ACUSTICA UNITED WITH ACUSTICA		WOS
10.1016/j.displa.2017.01.002	Correlating reaction time and nausea measures with traditional measures of cybersickness	2017	DISPLAYS		WOS
10.1145/3072959.3073624	Holographic Near-Eye Displays for Virtual and Augmented Reality	2017	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1186/s12886-017-0501-8	Amblyopia treatment of adults with dichoptic training using the virtual reality oculus rift head mounted display: preliminary results	2017	BMC OPHTHALMOLOGY		WOS
00.0000/0045	Triggering and measuring social inhibitory response in humans immersed in interactions with virtual humans	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
00.0000/0046	Exploring the impact of hand movement delays and hand appearance on myoelectric prosthesis embodiment using Immersive Virtual Reality	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.1016/j.entcom.2017.04.004	Controlling VR games: control schemes and the player experience	2017	ENTERTAINMENT COMPUTING		WOS
10.1007/s12193-016-0236-5	Diegetic user interfaces for virtual environments with HMDs: a user experience study with oculus rift	2017	JOURNAL ON MULTIMODAL USER INTERFACES		WOS
00.0000/0047	Behavioral, craving, and anxiety responses among light and heavy drinking college students in alcohol-related virtual environments	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.1016/j.autneu.2016.12.004	Profiling subjective symptoms and autonomic changes associated with cybersickness	2017	AUTONOMIC NEUROSCIENCE-BASIC & CLINICAL		WOS
00.0000/0048	"Does owning a ""fatter"" virtual body increase body anxiety in college students?"	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.1007/s00221-017-4929-0	Control of vertical posture while elevating one foot to avoid a real or virtual obstacle	2017	EXPERIMENTAL BRAIN RESEARCH		WOS
10.1177/2041669517708205	The Accuracy and Precision of Position and Orientation Tracking in the HTC Vive Virtual Reality System for Scientific Research	2017	I-PERCEPTION		WOS
10.3390/s17051112	Photosensor-Based Latency Measurement System for Head-Mounted Displays	2017	SENSORS		WOS
10.1109/TVCG.2016.2527649	Extrafoveal Video Extension for an Immersive Viewing Experience	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1177/2049463717698349	Contextual modulation of pain sensitivity utilising virtual environments	2017	BRITISH JOURNAL OF PAIN		WOS
10.1111/ejn.13545	Visual appearance of a virtual upper limb modulates the temperature of the real hand: a thermal imaging study in Immersive Virtual Reality	2017	EUROPEAN JOURNAL OF NEUROSCIENCE		WOS
10.1016/j.ijhcs.2017.01.002	Mortality salience in virtual reality experiences and its effects on users' attitudes towards risk	2017	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		WOS
10.1109/JPROC.2017.2648796	Enabling Focus Cues in Head-Mounted Displays	2017	PROCEEDINGS OF THE IEEE		WOS
10.1038/srep45469	Visuomotor adaptation in head-mounted virtual reality versus conventional training	2017	SCIENTIFIC REPORTS		WOS
10.7358/neur-2017-021-lean	Consumer Neuroscience: the traditional and VR TV Commercial	2017	NEUROPSYCHOLOGICAL TRENDS		WOS
10.1109/TVCG.2017.2656979	The Problem of Persistence with Rotating Displays	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2017.2657238	Designing a Vibrotactile Head-mounted Display for Spatial Awareness in 3D Spaces	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2017.2657139	Scaled Jump in Gravity-reduced Virtual Environments	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2017.2656958	Earthquake Safety Training through Virtual Drills	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1371/journal.pone.0173972	HTC Vive MeVisLab integration via OpenVR for medical applications	2017	PLOS ONE		WOS
10.3389/frobt.2017.00011	Stereoscopic First Person View System for Drone Navigation	2017	FRONTIERS IN ROBOTICS AND AI		WOS
10.7776/ASK.2017.36.2.130	Interactive sound experience interface based on virtual concert hall	2017	JOURNAL OF THE ACOUSTICAL SOCIETY OF KOREA		WOS
10.1007/s10055-016-0296-6	A virtual reality keyboard with realistic haptic feedback in a fully immersive virtual environment	2017	VIRTUAL REALITY		WOS
10.3389/fnhum.2017.00079	Manipulating Bodily Presence Affects Cross-Modal Spatial Attention: A Virtual-Reality-Based ERP Study	2017	FRONTIERS IN HUMAN NEUROSCIENCE		WOS
10.1186/s12984-017-0225-2	Walking in fully immersive virtual environments: an evaluation of potential adverse effects in older adults and individuals with Parkinson's disease	2017	JOURNAL OF NEUROENGINEERING AND REHABILITATION		WOS
10.3389/frobt.2017.00003	Immersive Mixed Reality for Manufacturing Training	2017	FRONTIERS IN ROBOTICS AND AI		WOS
10.15675/gepros.v12i1.1605	Design and development of an immersive virtual environment for teaching of the superposition of movements principle for engineering students	2017	REVISTA EDUCACION EN INGENIERIA		WOS
10.1088/1748-3190/12/1/014001	Human-in-the-loop active electrosense	2017	BIOINSPIRATION & BIOMIMETICS		WOS
10.1109/THMS.2016.2611824	Metaphoric Hand Gestures for Orientation-Aware VR Object Manipulation With an Egocentric Viewpoint	2017	IEEE TRANSACTIONS ON HUMAN-MACHINE SYSTEMS		WOS
10.5277/ABB-00784-2016-02	Influence of changing frequency and various sceneries on stabilometric parameters and on the effect of adaptation in an immersive 3D virtual environment	2017	ACTA OF BIOENGINEERING AND BIOMECHANICS		WOS
10.1080/01691864.2016.1264885	Development of VR platform for cloud-based neurorehabilitation and its application to research on sense of agency and ownership	2017	ADVANCED ROBOTICS		WOS
10.1016/j.apergo.2016.06.014	Cybersickness without the wobble: Experimental results speak against postural instability theory	2017	APPLIED ERGONOMICS		WOS
10.14742/ajet.3840	Virtualisation devices for student learning: Comparison between desktop-based (Oculus Rift) and mobile-based (Gear VR) virtual reality in medical and health science education	2017	AUSTRALASIAN JOURNAL OF EDUCATIONAL TECHNOLOGY		WOS
10.1016/j.displa.2016.11.001	Vection and cybersickness generated by head-and-display motion in the Oculus Rift	2017	DISPLAYS		WOS
10.1080/13682199.2017.1355090	Virtual figure model crafting with VR HMD and Leap Motion	2017	IMAGING SCIENCE JOURNAL		WOS
10.1080/14606925.2017.1352966	Experiencing Technology Enabled Empathy Mapping	2017	DESIGN JOURNAL		WOS
10.1080/10749357.2017.1351069	Validation of an immersive virtual reality system for training near and far space neglect in individuals with stroke: a pilot study	2017	TOPICS IN STROKE REHABILITATION		WOS
10.16910/jemr.10.5.2	A Quality-Centered Analysis of Eye Tracking Data in Foveated Rendering	2017	JOURNAL OF EYE MOVEMENT RESEARCH		WOS
10.11621/pir.2017.0310	The application of virtual reality technology to testing resistance to motion sickness	2017	PSYCHOLOGY IN RUSSIA-STATE OF THE ART		WOS
10.2147/CIA.S141251	Assessing balance through the use of a low-cost head-mounted display in older adults: a pilot study	2017	CLINICAL INTERVENTIONS IN AGING		WOS
10.5937/fmet1702205S	Immersive Virtual Reality Course at the Digital Production Studies	2017	FME TRANSACTIONS		WOS
10.3991/ijet.v12i05.6766	Design of Immersive Virtual Reality System to Improve Communication Skills in Individuals with Autism	2017	INTERNATIONAL JOURNAL OF EMERGING TECHNOLOGIES IN LEARNING		WOS
10.1080/17483107.2016.1176259	Training wheelchair navigation in immersive virtual environments for patients with spinal cord injury - end-user input to design an effective system	2017	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY		WOS
10.1016/j.culher.2016.09.003	Access to complex reality-based 3D models using virtual reality solutions	2017	JOURNAL OF CULTURAL HERITAGE		WOS
10.1002/ejp.910	Restoring movement representation and alleviating phantom limb pain through short-term neurorehabilitation with a virtual reality system	2017	EUROPEAN JOURNAL OF PAIN		WOS
10.6035/2174-0992.2017.13.12	Innovative Experiences in Interactive Devices applied to videogames: The Oculus Rift Case	2017	ADCOMUNICA-REVISTA CIENTIFICA DE ESTRATEGIAS TENDENCIAS E INNOVACION EN COMMUNICACION		WOS
10.1016/j.apergo.2016.05.003	Immersion factors affecting perception and behaviour in a virtual reality power wheelchair simulator	2017	APPLIED ERGONOMICS		WOS
10.1371/journal.pone.0167523	The Impact of Virtual Reality on Chronic Pain	2016	PLOS ONE		WOS
10.3389/frobt.2016.00074	Enhancing Our Lives with Immersive Virtual Reality	2016	FRONTIERS IN ROBOTICS AND AI		WOS
10.1109/JDT.2016.2617889	Overlapped-Area Removal-Based Image Interpolation for Head-Mounted Displays	2016	JOURNAL OF DISPLAY TECHNOLOGY		WOS
10.1115/1.4033230	Freehand Gesture and Tactile Interaction for Shape Design	2016	JOURNAL OF COMPUTING AND INFORMATION SCIENCE IN ENGINEERING		WOS
10.1038/srep37016	Using the virtual reality device Oculus Rift for neuropsychological assessment of visual processing capabilities	2016	SCIENTIFIC REPORTS		WOS
10.18421/TEM54-04	Interactive Scientific Visualization in 3D Virtual Reality Model	2016	TEM JOURNAL-TECHNOLOGY EDUCATION MANAGEMENT INFORMATICS		WOS
10.1145/2980179.2980252	High-Fidelity Facial and Speech Animation for VR HMDs	2016	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1145/2980179.2980246	Towards Foveated Rendering for Gaze-Tracked Virtual Reality	2016	ACM TRANSACTIONS ON GRAPHICS		WOS
10.1007/s10055-016-0292-x	Individual differences in virtual reality: Are spatial presence and spatial ability linked?	2016	VIRTUAL REALITY		WOS
10.1007/s10055-016-0295-7	A questionnaire for measuring presence in virtual environments: factor analysis of the presence questionnaire and adaptation into Brazilian Portuguese	2016	VIRTUAL REALITY		WOS
10.1145/2983530	Examining The Role of Smart TVs and VR HMDs in Synchronous At-a-Distance Media Consumption	2016	ACM TRANSACTIONS ON COMPUTER-HUMAN INTERACTION		WOS
10.1007/s11528-016-0085-9	A Framework for Aligning Instructional Design Strategies with Affordances of CAVE Immersive Virtual Reality Systems	2016	TECHTRENDS		WOS
10.3389/fpsyg.2016.01649	Non-hierarchical Influence of Visual Form, Touch, and Position Cues on Embodiment, Agency, and Presence in Virtual Reality	2016	FRONTIERS IN PSYCHOLOGY		WOS
00.0000/0049	A Rift in the Ground: Theorizing the Evolution of Anchor Values in Crowdfunding Communities through the Oculus Rift Case Study	2016	JOURNAL OF THE ASSOCIATION FOR INFORMATION SYSTEMS		WOS
10.1088/1741-2560/13/5/056006	Application of virtual reality head mounted display for investigation of movement: a novel effect of orientation of attention	2016	JOURNAL OF NEURAL ENGINEERING		WOS
10.1016/j.cmpb.2016.07.026	Human field of regard, field of view, and attention bias	2016	COMPUTER METHODS AND PROGRAMS IN BIOMEDICINE		WOS
10.1007/s11042-016-3520-1	Application of precise indoor position tracking to immersive virtual reality with translational movement support	2016	MULTIMEDIA TOOLS AND APPLICATIONS		WOS
10.3390/sym8090093	Modeling and Optimization of a Tree Based on Virtual Reality for Immersive Virtual Landscape Generation	2016	SYMMETRY-BASEL		WOS
10.1007/s10055-016-0287-7	A comparative evaluation of viewing metaphors on psychophysical skills education in an interactive virtual environment	2016	VIRTUAL REALITY		WOS
10.1007/s10055-016-0288-6	An objective measure for the visual fidelity of virtual reality and the risks of falls in a virtual environment	2016	VIRTUAL REALITY		WOS
10.1364/AO.55.006969	Development of an immersive virtual reality head-mounted display with high performance	2016	APPLIED OPTICS		WOS
10.1162/COMJ_a_00372	Virtual Reality Musical Instruments: State of the Art, Design Principles, and Future Directions	2016	COMPUTER MUSIC JOURNAL		WOS
10.1016/j.displa.2016.07.002	Use of physiological signals to predict cybersickness	2016	DISPLAYS		WOS
10.1007/s10803-016-2830-5	Brief Report: A Pilot Study of the Use of a Virtual Reality Headset in Autism Populations	2016	JOURNAL OF AUTISM AND DEVELOPMENTAL DISORDERS		WOS
10.3788/COL201614.080901	Acceleration for computer-generated hologram in head-mounted display with effective diffraction area recording method for eyes	2016	CHINESE OPTICS LETTERS		WOS
10.1186/s12984-016-0174-1	Feasibility of a walking virtual reality system for rehabilitation: objective and subjective parameters	2016	JOURNAL OF NEUROENGINEERING AND REHABILITATION		WOS
10.1145/2971320	Effects of Visual Latency on Vehicle Driving Behavior	2016	ACM TRANSACTIONS ON APPLIED PERCEPTION		WOS
10.1007/s40299-016-0293-2	The Effects of Virtual Reality Learning Environment on Student Cognitive and Linguistic Development	2016	ASIA-PACIFIC EDUCATION RESEARCHER		WOS
10.3389/frobt.2016.00043	Social Influence on Evacuation Behavior in Real and Virtual Environments	2016	FRONTIERS IN ROBOTICS AND AI		WOS
10.2196/games.5526	Design of a Serious Game for Handling Obstetrical Emergencies	2016	JMIR SERIOUS GAMES		WOS
10.1145/2897824.2925883	Mapping Virtual and Physical Reality	2016	ACM TRANSACTIONS ON GRAPHICS		WOS
10.2196/games.6476	Effects of Visual Display on Joint Excursions Used to Play Virtual Dodgeball	2016	JMIR SERIOUS GAMES		WOS
10.1587/transinf.2016EDL8028	Design and Comparison of Immersive Gesture Interfaces for HMD Based Virtual World Navigation	2016	IEICE TRANSACTIONS ON INFORMATION AND SYSTEMS		WOS
10.1007/s00586-016-4388-5	Neck motion kinematics: an inter-tester reliability study using an interactive neck VR assessment in asymptomatic individuals	2016	EUROPEAN SPINE JOURNAL		WOS
10.1016/j.gaitpost.2016.06.010	The effect of viewing a virtual environment through a head-mounted display on balance	2016	GAIT & POSTURE		WOS
10.1109/TVCG.2016.2520921	A Study of Layout, Rendering, and Interaction Methods for Immersive Graph Visualization	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2015.2473855	Resolving the Vergence-Accommodation Conflict in Head-Mounted Displays	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.3928/01913913-20160511-01	Effects of Head-Mounted Display on the Oculomotor System and Refractive Error in Normal Adolescents	2016	JOURNAL OF PEDIATRIC OPHTHALMOLOGY & STRABISMUS		WOS
00.0000/0050	Being Different: The Transformative Potential of Virtual Reality	2016	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		WOS
10.1007/s10916-016-0475-8	Bigdata Oriented Multimedia Mobile Health Applications	2016	JOURNAL OF MEDICAL SYSTEMS		WOS
10.1088/1741-2560/13/2/026022	Assistive peripheral phosphene arrays deliver advantages in obstacle avoidance in simulated end-stage retinitis pigmentosa: a virtual-reality study	2016	JOURNAL OF NEURAL ENGINEERING		WOS
10.1016/j.jmgm.2016.02.009	iBET: Immersive visualization of biological electron-transfer dynamics	2016	JOURNAL OF MOLECULAR GRAPHICS & MODELLING		WOS
10.1109/TVCG.2016.2518137	Who turned the clock? Effects of Manipulated Zeitgebers, Cognitive Load and Immersion on Time Estimation	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2016.2518298	Examining Rotation Gain in CAVE-like Virtual Environments	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2016.2518098	Taking Immersive VR Leap in Training of Landing Signal Officers	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2016.2518079	Construction and Evaluation of an Ultra Low Latency Frameless Renderer for VR	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1109/TVCG.2016.2518135	An 'In the Wild' Experiment on Presence and Embodiment using Consumer Virtual Reality Equipment	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		WOS
10.1002/cav.1633	Interactive digital graffiti canvas system	2016	COMPUTER ANIMATION AND VIRTUAL WORLDS		WOS
10.1007/s00464-015-4278-7	Face and construct validation of a next generation virtual reality (Gen2-VR (c)) surgical simulator	2016	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		WOS
10.1016/j.entcom.2016.01.001	Visual 3D motion acuity predicts discomfort in 3D stereoscopic environments	2016	ENTERTAINMENT COMPUTING		WOS
10.1098/rsos.150567	Sound can enhance the analgesic effect of virtual reality	2016	ROYAL SOCIETY OPEN SCIENCE		WOS
10.3389/fpsyg.2016.00268	Representation of Patients' Hand Modulates Fear Reactions of Patients with Spider Phobia in Virtual Reality	2016	FRONTIERS IN PSYCHOLOGY		WOS
10.1371/journal.pone.0148060	First-Person Perspective Virtual Body Posture Influences Stress: A Virtual Reality Body Ownership Study	2016	PLOS ONE		WOS
10.1585/pfr.11.2406060	An Intuitive Interface for Visualizing Numerical Data in a Head-Mounted Display with Gesture Control	2016	PLASMA AND FUSION RESEARCH		WOS
00.0000/0052	The Perceived Naturalness of Virtual Walking Speeds during WIP locomotion: Summary and Meta-Analyses	2016	PSYCHNOLOGY JOURNAL		WOS
10.16910/jemr.9.6.4	Effectiveness of a Virtual Reality Head-Mounted Display System-based Developmental Eye Movement Test	2016	JOURNAL OF EYE MOVEMENT RESEARCH		WOS
10.7195/ri14.v24i2.965	Virtual reality (HMD) and Interaction from the Perspective of Narrative Construction and Communication: Taxonomic Proposal	2016	REVISTA ICONO 14-REVISTA CIENTIFICA DE COMUNICACION Y TECNOLOGIAS		WOS
10.1007/978-3-319-28722-5_10	Virtual Reality, Game Design, and Virtual Art Galleries	2016	CURATING THE DIGITAL: SPACE FOR ART AND INTERACTION		WOS
00.0000/0053	A Comparative Study of Sense of Presence of Traditional Virtual Reality and Immersive Environments	2016	AUSTRALASIAN JOURNAL OF INFORMATION SYSTEMS		WOS
10.1109/JTEHM.2016.2623787	Effects of Real-World Versus Virtual Environments on Joint Excursions in Full-Body Reaching Tasks	2016	IEEE JOURNAL OF TRANSLATIONAL ENGINEERING IN HEALTH AND MEDICINE-JTEHM		WOS
10.1080/19439962.2015.1046621	Way-finding lighting systems for rail tunnel evacuation: A virtual reality experiment with Oculus Rift (R)	2016	JOURNAL OF TRANSPORTATION SAFETY & SECURITY		WOS
10.1016/j.future.2018.02.029	Evaluating the effects of collaboration and competition in navigation tasks and spatial knowledge acquisition within virtual reality environments.	2019	Future Generation Computer Systems		BSP
10.1016/j.future.2018.11.041	Estimating VR Sickness and user experience using different HMD technologies: An evaluation study.	2019	Future Generation Computer Systems		BSP
10.1089/cyber.2019.0206	Using Virtual Reality Head-Mounted Displays in Schools with Autistic Children: Views, Experiences, and Future Directions.	2020	CyberPsychology, Behavior & Social Networking		BSP
10.1007/s11517-019-02070-2	Effects of virtual reality technology locomotive multi-sensory motion stimuli on a user simulator sickness and controller intuitiveness during a navigation task.	2020	Medical & Biological Engineering & Computing		BSP
10.1016/j.aap.2019.105356	Road crossing decisions in real and virtual environments: A comparative study on simulator validity.	2020	Accident Analysis & Prevention		BSP
10.1089/cyber.2020.29183.gri	How Cyberpsychology and Virtual Reality Can Help Us to Overcome the Psychological Burden of Coronavirus.	2020	CyberPsychology, Behavior & Social Networking		BSP
10.1049/iet-ipr.2017.0826	Perceptual video quality metric for compression artefacts: from two-dimensional to omnidirectional.	2018	IET Image Processing		BSP
10.1016/j.ergon.2020.102939	Usability of the size, spacing, and operation method of virtual buttons with virtual hand on head-mounted displays.	2020	International Journal of Industrial Ergonomics		BSP
10.1016/j.jbusres.2018.10.054	The influence of virtual reality in e-commerce.	2019	Journal of Business Research		BSP
10.1016/j.aap.2018.06.003	Get ready for automated driving using Virtual Reality.	2018	Accident Analysis & Prevention		BSP
10.1080/10447318.2017.1412144	Body Movement Reduces Pain Intensity in Virtual Reality-Based Analgesia.	2018	International Journal of Human-Computer Interaction		BSP
10.1080/10548408.2019.1618781	Integrating virtual reality devices into the body: effects of technological embodiment on customer engagement and behavioral intentions toward the destination.	2019	Journal of Travel & Tourism Marketing		BSP
10.1080/10447318.2017.1411665	Spatialized Vibrotactile Feedback Improves Goal-Directed Movements in Cluttered Virtual Environments.	2018	International Journal of Human-Computer Interaction		BSP
10.1080/13527266.2019.1671480	Using virtual reality to promote the university brand: When do telepresence and system immersion matter?	2020	Journal of Marketing Communications		BSP
10.1016/j.future.2018.08.049	Influence of video content type on users' virtual reality sickness perception and physiological response.	2019	Future Generation Computer Systems		BSP
10.1108/JBIM-12-2018-0407	Value formation with immersive technologies: an activity perspective.	2020	Journal of Business & Industrial Marketing		BSP
10.1080/10447318.2018.1429061	Virtual Reality Interfaces for Interacting with Three-Dimensional Graphs.	2019	International Journal of Human-Computer Interaction		BSP
10.1016/j.trf.2017.08.005	Driver behavior in mixed and virtual reality – A comparative study.	2019	Transportation Research: Part F		BSP
10.1111/cgf.13757	Real?Time Analytic Antialiased Text for 3?D Environments.	2019	Computer Graphics Forum		BSP
10.1016/j.jbusres.2019.01.017	Exploring barriers to adoption of Virtual Reality through Social Media Analytics and Machine Learning – An assessment of technology, network, price and trialability.	2019	Journal of Business Research		BSP
10.1016/j.jretconser.2019.02.016	The examination of virtual reality at the intersection of consumer experience, shopping journey and physical retailing.	2019	Journal of Retailing & Consumer Services		BSP
10.1080/10447318.2018.1541546	Selecting Menu Items in Mobile Head-Mounted Displays: Effects of Selection Technique and Active Area.	2019	International Journal of Human-Computer Interaction		BSP
10.1111/cgf.13026	Foveated Real-Time Ray Tracing for Head-Mounted Displays.	2016	Computer Graphics Forum		BSP
10.1049/iet-ipr.2018.5920	Survey on depth perception in head mounted displays: distance estimation in virtual reality, augmented reality, and mixed reality.	2019	IET Image Processing		BSP
10.1109/MCG.2018.111125628	15 Years of Research on Redirected Walking in Immersive Virtual Environments.	2018	IEEE Computer Graphics & Applications		BSP
10.1177/1046878118820905	Virtual Reality Simulation Technology for Cardiopulmonary Resuscitation Training: An Innovative Hybrid System With Haptic Feedback.	2019	Simulation & Gaming		BSP
10.18559/ebr.2018.3.4	Virtual reality in marketing communication - the impact on the message, technology and offer perception - empirical study.	2018	Economics & Business Review		BSP
10.6017/ital.v39i1.11369	Virtual Reality: A Survey of Use at an Academic Library.	2020	Information Technology & Libraries		BSP
10.1109/TPC.2018.2804238	Understanding Virtual Reality: Presence, Embodiment, and Professional Practice.	2018	IEEE Transactions on Professional Communication		BSP
10.1109/TCE.2018.2879065	A QoE and Simulator Sickness Evaluation of a Smart-Exercise-Bike Virtual Reality System via User Feedback and Physiological Signals.	2019	IEEE Transactions on Consumer Electronics		BSP
10.1016/j.ipm.2019.102105	Evaluating the use of interactive virtual reality technology with older adults living in residential aged care.	2020	Information Processing & Management		BSP
10.1109/MCG.2018.2875609	The Office of the Future: Virtual, Portable, and Global.	2018	IEEE Computer Graphics & Applications		BSP
10.1109/TBC.2018.2811627	Subjective Panoramic Video Quality Assessment Database for Coding Applications.	2018	IEEE Transactions on Broadcasting		BSP
10.1109/MCG.2018.2884272	A Virtual Reality Training Application for Adults With Asperger's Syndrome.	2019	IEEE Computer Graphics & Applications		BSP
10.1080/10447318.2018.1519164	Effects of Travel Modes on Performances and User Comfort: A Comparison between ArmSwinger and Teleporting.	2019	International Journal of Human-Computer Interaction		BSP
10.1080/07370024.2016.1243478	The Perceptual Quality of the Oculus Rift for Immersive Virtual Reality.	2019	Human-Computer Interaction		BSP
10.1109/MCG.2019.2936753	A Compelling Virtual Tour of the Dunhuang Cave With an Immersive Head-Mounted Display.	2020	IEEE Computer Graphics & Applications		BSP
10.1016/j.jretconser.2019.01.010	Consumer perceptions and purchase behavior toward imperfect fruits and vegetables in an immersive virtual reality grocery store.	2019	Journal of Retailing & Consumer Services		BSP
10.1109/TASE.2019.2945607	Virtual Reality Robot-Assisted Welding Based on Human Intention Recognition.	2020	IEEE Transactions on Automation Science & Engineering		BSP
10.22430/21457778.1213	Análisis y evaluación de procesos de interactividad en entornos virtuales de aprendizaje.	2019	Revista Trilogía		BSP
10.1109/TCSVT.2019.2953827	Omnidirectional 360° Video Coding Technology in Responses to the Joint Call for Proposals on Video Compression With Capability Beyond HEVC.	2020	IEEE Transactions on Circuits & Systems for Video Technology		BSP
10.1145/3329119	A Survey on 360° Video Streaming: Acquisition, Transmission, and Display.	2019	ACM Computing Surveys		BSP
10.1089/cyber.2017.0499	Modulation of Excitability in the Temporoparietal Junction Relieves Virtual Reality Sickness.	2018	CyberPsychology, Behavior & Social Networking		BSP
10.1080/0144929X.2016.1212931	Virtual reality systems enhance students’ achievements in engineering education.	2016	Behaviour & Information Technology		BSP
10.1111/cgf.13780	Tessellated Shading Streaming.	2019	Computer Graphics Forum		BSP
10.1089/cyber.2015.0130	The Immersive Virtual Reality Experience: A Typology of Users Revealed Through Multiple Correspondence Analysis Combined with Cluster Analysis Technique.	2016	CyberPsychology, Behavior & Social Networking		BSP
10.18280/isi.240310	Interactive Design of Commercial Space Signage System Based on Object Detection.	2019	Ingénierie des Systèmes d'Information		BSP
10.1109/MCG.2019.2915717	Follow the Smoke: Immersive Display of Motion Data With Synthesized Smoke.	2019	IEEE Computer Graphics & Applications		BSP
10.1109/MCOM.001.1800876	Mobile Immersive Computing: Research Challenges and the Road Ahead.	2019	IEEE Communications Magazine		BSP
10.1109/MCG.2018.021951628	Human-Centered VR Design: Five Essentials Every Engineer Needs to Know.	2018	IEEE Computer Graphics & Applications		BSP
10.1089/cyber.2017.0714	Pain Distraction During Ambulatory Surgery: Virtual Reality and Mobile Devices.	2019	CyberPsychology, Behavior & Social Networking		BSP
10.1111/rssa.12381	Visualizing spatiotemporal models with virtual reality: from fully immersive environments to applications in stereoscopic view.	2019	Journal of the Royal Statistical Society: Series A (Statistics in Society)		BSP
00.0000/0054	A Rift in the Ground: Theorizing the Evolution of Anchor Values in Crowdfunding Communities through the Oculus Rift Case Study.	2016	Journal of the Association for Information Systems		BSP
10.1016/j.ijinfomgt.2016.04.017	A content service deployment plan for metaverse museum exhibitions—Centering on the combination of beacons and HMDs.	2017	International Journal of Information Management		BSP
10.1080/0144929X.2016.1264483	Effects of using a force feedback haptic augmented simulation on the attitudes of the gifted students towards studying chemical bonds in virtual reality environment.	2017	Behaviour & Information Technology		BSP
10.1080/07370024.2018.1469408	Virtual Reality Interventions for Personal Development: A Meta-Analysis of Hardware and Software.	2019	Human-Computer Interaction		BSP
10.1016/j.cie.2018.11.060	Visual computing technologies to support the Operator 4.0.	2020	Computers & Industrial Engineering		BSP
10.1111/cgf.12956	Adaptive Image-Space Sampling for Gaze-Contingent Real-time Rendering.	2016	Computer Graphics Forum		BSP
10.4018/IJMBL.2016100104	Mobile VR in Education: From the Fringe to the Mainstream.	2016	Information Resources Management Journal		BSP
10.1080/16864360.2016.1273584	A virtual environment to emulate tailor’s work.	2017	Computer-Aided Design & Applications		BSP
10.1089/cyber.2017.0174	Beat the Fear of Public Speaking: Mobile 360° Video Virtual Reality Exposure Training in Home Environment Reduces Public Speaking Anxiety.	2017	CyberPsychology, Behavior & Social Networking		BSP
10.1109/TMI.2019.2926501	Specular Reflections Removal for Endoscopic Image Sequences With Adaptive-RPCA Decomposition.	2020	IEEE Transactions on Medical Imaging		BSP
10.1016/j.ergon.2016.01.001	Ergonomic evaluation of interaction techniques and 3D menus for the practical design of 3D stereoscopic displays.	2016	International Journal of Industrial Ergonomics		BSP
10.1037/xlm0000597	Learning-dependent evolution of spatial representations in large-scale virtual environments.	2019	Journal of Experimental Psychology. Learning, Memory & Cognition		BSP
10.1089/cyber.2018.0027	Physiological Monitoring During Augmented Reality Exercise Confirms Advantages to Health and Well-Being.	2019	CyberPsychology, Behavior & Social Networking		BSP
10.1037/xhp0000597	Full-body ownership illusion elicited by visuo-vestibular integration.	2019	Journal of Experimental Psychology. Human Perception & Performance		BSP
10.1016/j.jclepro.2019.117805	A review of emerging industry 4.0 technologies in remanufacturing.	2019	Journal of Cleaner Production		BSP
10.1109/MCG.2017.2801407	Beaming into the News: A System for and Case Study of Tele-Immersive Journalism.	2018	IEEE Computer Graphics & Applications		BSP
10.1016/j.iccn.2020.102849	Effect of virtual reality meditation on sleep quality of intensive care unit patients: A randomised controlled trial	2020	INTENSIVE AND CRITICAL CARE NURSING	Article	WOS
10.1007/s11227-018-2615-z	Natural embedding of live actors and entities into 360 degrees virtual reality scenes	2020	JOURNAL OF SUPERCOMPUTING	Article	WOS
10.1007/s10055-020-00449-3	Comparison of gaze accuracy and precision in real-world and virtual reality	2020	VIRTUAL REALITY	"Article; Early Access"	WOS
10.1007/s11042-020-09026-x	A novel method to enhance the touristic 360 degrees promotional video experience	2020	MULTIMEDIA TOOLS AND APPLICATIONS	"Article; Early Access"	WOS
10.1186/s12886-020-01471-4	Influence of virtual reality on visual parameters: immersive versus non-immersive mode	2020	BMC OPHTHALMOLOGY	Article	WOS
10.1177/1937586720924787	Using Immersive Virtual Environments (IVEs) to Conduct Environmental Design Research: A Primer and Decision Framework	2020	HERD-HEALTH ENVIRONMENTS RESEARCH & DESIGN JOURNAL	"Article; Early Access"	WOS
10.1080/17483107.2020.1765419	Contextual sensory integration training via head mounted display for individuals with vestibular disorders: a feasibility study	2020	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY	"Article; Early Access"	WOS
10.3390/su12093823	Virtual Reality Nature Experiences Involving Wolves on YouTube: Presence, Emotions, and Attitudes in Immersive and Nonimmersive Settings	2020	SUSTAINABILITY	Article	WOS
10.3390/app10093012	Efficacy of Virtual Reality in Painting Art Exhibitions Appreciation	2020	APPLIED SCIENCES-BASEL	Article	WOS
10.3390/app10093182	ArkaeVision VR Game: User Experience Research between Real and Virtual Paestum	2020	APPLIED SCIENCES-BASEL	Article	WOS
10.1177/2055668320913770	Participatory design and evaluation of virtual reality games to promote engagement in physical activity for people living with dementia	2020	JOURNAL OF REHABILITATION AND ASSISTIVE TECHNOLOGIES ENGINEERING	Article	WOS
10.1016/j.cag.2020.03.006	Deep into visual saliency for immersive VR environments rendered in real-time	2020	COMPUTERS & GRAPHICS-UK	Article	WOS
10.1371/journal.pone.0231152	Accuracy and precision of stimulus timing and reaction times with Unreal Engine and SteamVR	2020	PLOS ONE	Article	WOS
10.1371/journal.pone.0223631	Virtual reality as a tool for environmental conservation and fundraising	2020	PLOS ONE	Article	WOS
10.3390/s20071917	Gaze Tracking and Point Estimation Using Low-Cost Head-Mounted Devices	2020	SENSORS	"Article; Proceedings Paper"	WOS
10.3390/s20082208	Closed-Loop Attention Restoration Theory for Virtual Reality-Based Attentional Engagement Enhancement	2020	SENSORS	Article	WOS
10.3390/s20082168	The Impact of a Novel Immersive Virtual Reality Technology Associated with Serious Games in Parkinson's Disease Patients on Upper Limb Rehabilitation: A Mixed Methods Intervention Study	2020	SENSORS	Article	WOS
10.3390/s20082264	Foveation Pipeline for 360 degrees Video-Based Telemedicine	2020	SENSORS	Article	WOS
10.1371/journal.pone.0230042	Read-the-game: System for skill-based visual exploratory activity assessment with a full body virtual reality soccer simulation	2020	PLOS ONE	Article	WOS
10.32604/cmc.2020.09930	Design of Learning Media in Mixed Reality for Lao Education	2020	CMC-COMPUTERS MATERIALS & CONTINUA	Article	WOS
10.1371/journal.pone.0225972	Walking with head-mounted virtual and augmented reality devices: Effects on position control and gait biomechanics	2019	PLOS ONE	Article	WOS
10.3389/frobt.2019.00084	Virtual Reality for Information Visualization Might Just Work This Time	2019	FRONTIERS IN ROBOTICS AND AI	Article	WOS
10.1080/07421222.2019.1628889	Shopping in Virtual Reality Stores: The Influence of Immersion on System Adoption	2019	JOURNAL OF MANAGEMENT INFORMATION SYSTEMS	Article	WOS
10.1016/j.bjoms.2018.04.002	Virtual reality head-mounted display for endoscopically-assisted implant surgery	2018	BRITISH JOURNAL OF ORAL & MAXILLOFACIAL SURGERY	Article	WOS
10.1016/B978-0-12-809481-5.00009-2	Immersive Virtual Reality and the Developing Child	2017	COGNITIVE DEVELOPMENT IN DIGITAL CONTEXTS	"Article; Book Chapter"	WOS
00.0000/0055	VIRTUAL REALITY DESIGN: HOW UPCOMING HEAD-MOUNTED DISPLAYS CHANGE DESIGN PARADIGMS OF VIRTUAL REALITY WORLDS	2016	MEDIA TROPES	Article	WOS
10.1587/transinf.2015EDP7165	A Novel Earthquake Education System Based on Virtual Reality	2015	IEICE TRANSACTIONS ON INFORMATION AND SYSTEMS	Article	WOS
00.0000/0056	Multi-modal interface realization for scenario-based immersive virtual reality experience simulator	2015	ASIA LIFE SCIENCES	Article	WOS
10.3762/bjnano.6.220	Virtual reality visual feedback for hand-controlled scanning probe microscopy manipulation of single molecules	2015	BEILSTEIN JOURNAL OF NANOTECHNOLOGY	Article	WOS
10.1021/acs.jcim.5b00544	Molecular Rift: Virtual Reality for Drug Designers	2015	JOURNAL OF CHEMICAL INFORMATION AND MODELING	Article	WOS
10.1007/s10055-015-0270-8	On the validity of virtual reality-based auditory experiments: a case study about ratings of the overall listening experience	2015	VIRTUAL REALITY	Article	WOS
10.1016/j.physbeh.2015.08.043	Cybersickness provoked by head-mounted display affects cutaneous vascular tone, heart rate and reaction time	2015	PHYSIOLOGY & BEHAVIOR	Article	WOS
10.1080/00222895.2015.1015674	Visual and Proprioceptive Adaptation of Arm Position in a Virtual Environment	2015	JOURNAL OF MOTOR BEHAVIOR	Article	WOS
10.1145/2766939	Facial Performance Sensing Head-Mounted Display	2015	ACM TRANSACTIONS ON GRAPHICS	"Article; Proceedings Paper"	WOS
10.1016/j.chb.2015.01.065	Treating small animal phobias using a projective-augmented reality system: A single-case study	2015	COMPUTERS IN HUMAN BEHAVIOR	Article	WOS
10.3389/fneur.2015.00164	Maintaining balance when looking at a virtual reality three-dimensional display of a field of moving dots or at a virtual reality scene	2015	FRONTIERS IN NEUROLOGY	Article	WOS
00.0000/0057	Virtual aquatic garden based on fish schooling simulation	2015	ASIA LIFE SCIENCES	Article	WOS
00.0000/0058	User experience of interactive virtual aquarium contents using head-mounted display (HMD)	2015	ASIA LIFE SCIENCES	Article	WOS
10.3389/fnins.2015.00207	Rapid P300 brain-computer interface communication with a head-mounted display	2015	FRONTIERS IN NEUROSCIENCE	Article	WOS
10.1007/s10055-015-0260-x	Posttraumatic stress disorder: possibilities for olfaction and virtual reality exposure therapy	2015	VIRTUAL REALITY	Article	WOS
10.1088/1741-2560/12/3/036001	Towards an assistive peripheral visual prosthesis for long-term treatment of retinitis pigmentosa: evaluating mobility performance in immersive simulations	2015	JOURNAL OF NEURAL ENGINEERING	Article	WOS
00.0000/0059	The New Dawn of Virtual Reality in Health Care: Medical Simulation and Experiential Interface	2015	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE	Article	WOS
10.3389/fpsyg.2015.00713	Comparing the effectiveness of different displays in enhancing illusions of self-movement (vection)	2015	FRONTIERS IN PSYCHOLOGY	Article	WOS
10.1016/j.cag.2015.02.007	Coordinated hybrid virtual environments: Seamless interaction contexts for effective virtual reality	2015	COMPUTERS & GRAPHICS-UK	Article	WOS
10.1364/AO.54.003422	Slim near-eye display using pinhole aperture arrays	2015	APPLIED OPTICS	Article	WOS
10.1145/2720020	Affordance Judgments in HMD-Based Virtual Environments: Stepping over a Pole and Stepping off a Ledge	2015	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	WOS
10.1016/j.math.2014.10.002	Interactive cervical motion kinematics: Sensitivity, specificity and clinically significant values for identifying kinematic impairments in patients with chronic neck pain	2015	MANUAL THERAPY	Article	WOS
10.1109/TVCG.2015.2391858	WAVE: Interactive Wave-based Sound Propagation for Virtual Environments	2015	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	WOS
10.1109/TVCG.2015.2391860	3D Finger CAPE: Clicking Action and Position Estimation under Self-Occlusions in Egocentric Viewpoint	2015	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	WOS
10.1109/TVCG.2015.2391853	Assessing Knowledge Retention of an Immersive Serious Game vs. a Traditional Education Method in Aviation Safety	2015	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	WOS
10.3389/fpsyg.2015.00248	The Oculus Rift: a cost-effective tool for studying visual-vestibular interactions in self-motion perception	2015	FRONTIERS IN PSYCHOLOGY	Article	WOS
10.3758/s13428-014-0463-1	WeaVR: a self-contained and wearable immersive virtual environment simulation system	2015	BEHAVIOR RESEARCH METHODS	Article	WOS
10.1145/2699254	Eye Height Manipulations: A Possible Solution to Reduce Underestimation of Egocentric Distances in Head-Mounted Displays	2015	ACM Transactions on Applied Perception	Article	WOS
10.1016/j.jbiomech.2015.01.005	The accuracy of the Oculus Rift virtual reality head-mounted display during cervical spine mobility measurement	2015	JOURNAL OF BIOMECHANICS	Article	WOS
10.1016/j.ssci.2014.09.017	Virtual Reality-based pilot training for underground coal miners	2015	SAFETY SCIENCE	Article	WOS
10.17759/exppsy.2015080205	THE CONTENT OF PROFESSIONAL ACTIVITY AS A FACTOR OF APPLICATION EFFICIENCY OF VIRTUAL REALITY TECHNOLOGY	2015	EKSPERIMENTALNAYA PSIKHOLOGIYA	Article	WOS
10.1068/p7929	Testing the mechanisms underlying improved distance judgments in virtual environments	2015	PERCEPTION	Article	WOS
10.3233/978-1-61499-595-1-3	The New Dawn of Virtual Reality in Health Care: Medical Simulation and Experiential Interface	2015	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE 2015: VIRTUAL REALITY IN HEALTHCARE: MEDICAL SIMULATION AND EXPERIENTIAL INTERFACE	"Article; Book Chapter"	WOS
10.3109/17483107.2014.889230	Virtual reality for the assessment of frontotemporal dementia, a feasibility study	2015	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY	Article	WOS
10.1016/j.ijhcs.2014.09.002	Use of auditory event-related potentials to measure immersion during a computer game	2015	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES	Article	WOS
10.1007/s10055-014-0248-y	New wireless connection between user and VE using speech processing	2014	VIRTUAL REALITY	Article	WOS
10.1007/s10055-014-0249-x	Aerial full spherical HDR imaging and display	2014	VIRTUAL REALITY	Article	WOS
10.1109/MPUL.2014.2355298	Tomorrow's Hospital How technology will be transforming both inpatient and at-home care	2014	IEEE PULSE	Article	WOS
10.1115/1.4027114	Design of a Naturalistic Navigational Virtual Reality Using Oculus Rift	2014	JOURNAL OF MEDICAL DEVICES-TRANSACTIONS OF THE ASME	"Article; Proceedings Paper"	WOS
10.1016/j.destud.2009.11.001	Augmented reality for collaborative product design and development	2010	DESIGN STUDIES	Article	WOS
10.3758/s13428-013-0412-4	An augmented reality home-training system based on the mirror training and imagery approach	2014	BEHAVIOR RESEARCH METHODS	Article	WOS
10.1037/a0036240	The Use of Immersive Virtual Reality (VR) to Predict the Occurrence 6 Months Later of Paranoid Thinking and Posttraumatic Stress Symptoms Assessed by Self-Report and Interviewer Methods: A Study of Individuals Who Have Been Physically Assaulted	2014	PSYCHOLOGICAL ASSESSMENT	Article	WOS
10.1002/jsid.269	Distance estimation of near-field visual objects in stereoscopic displays	2014	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY	Article	WOS
10.7717/peerj.337	Sense of presence and anxiety during virtual social interactions between a human and virtual humans	2014	PEERJ	Article	WOS
10.1109/TVCG.2014.18	Dynamic Affordances in Embodied Interactive Systems: The Role of Display and Mode of Locomotion	2014	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	WOS
10.4103/1673-5374.131612	Virtual reality interface devices in the reorganization of neural networks in the brain of patients with neurological diseases	2014	NEURAL REGENERATION RESEARCH	Article	WOS
10.1186/1471-2105-15-56	iview: an interactive WebGL visualizer for protein-ligand complex	2014	BMC BIOINFORMATICS	Article	WOS
10.1155/2014/206082	Testing of Visual Field with Virtual Reality Goggles in Manual and Visual Grasp Modes	2014	BIOMED RESEARCH INTERNATIONAL	Article	WOS
10.3389/fpsyg.2013.00946	Visual capture and the experience of having two bodies - evidence from two different virtual reality techniques	2013	FRONTIERS IN PSYCHOLOGY	Article	WOS
10.3109/10582452.2013.851760	Cervicocephalic Kinaesthesia in Subjects with and without Peripherally Induced Pain	2013	JOURNAL OF MUSCULOSKELETAL PAIN	Article	WOS
10.1145/2508363.2508366	Near-Eye Light Field Displays	2013	ACM TRANSACTIONS ON GRAPHICS	"Article; Proceedings Paper"	WOS
10.1038/ijo.2013.87	Effects of providing personalized feedback of child's obesity risk on mothers' food choices using a virtual reality buffet	2013	INTERNATIONAL JOURNAL OF OBESITY	Article	WOS
10.3389/fnhum.2013.00580	Pshychological influences on distance estimation in a virtual reality environment	2013	FRONTIERS IN HUMAN NEUROSCIENCE	Article	WOS
10.1073/pnas.1306779110	Illusory ownership of a virtual child body causes overestimation of object sizes and implicit attitude changes	2013	PROCEEDINGS OF THE NATIONAL ACADEMY OF SCIENCES OF THE UNITED STATES OF AMERICA	Article	WOS
10.1186/1743-0003-10-80	Altered steering strategies for goal-directed locomotion in stroke	2013	JOURNAL OF NEUROENGINEERING AND REHABILITATION	Article	WOS
10.3389/fpsyg.2013.00354	"Seeing and ""feeling"" architecture: how bodily self-consciousness alters architectonic experience and affects the perception of interiors"	2013	FRONTIERS IN PSYCHOLOGY	Article	WOS
10.1016/j.displa.2012.10.007	Exploiting perceptual limitations and illusions to support walking through virtual environments in confined physical spaces	2013	DISPLAYS	Article	WOS
10.1109/TVCG.2013.43	Validation of the MR Simulation Approach for Evaluating the Effects of Immersion on Visual Analysis of Volume Data	2013	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	WOS
10.1016/j.displa.2013.01.001	Egocentric distance perception in large screen immersive displays	2013	DISPLAYS	Article	WOS
10.1109/TNSRE.2012.2237040	Head Stabilization Shows Visual and Inertial Dependence During Passive Stimulation: Implications for Virtual Rehabilitation	2013	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING	Article	WOS
10.1007/s10055-012-0216-3	Perceiving affordances in virtual reality: influence of person and environmental properties in perception of standing on virtual grounds	2013	VIRTUAL REALITY	Article	WOS
10.1007/s00221-012-3352-9	Virtual reality for assessment of patients suffering chronic pain: a case study	2013	EXPERIMENTAL BRAIN RESEARCH	Article	WOS
00.0000/0001	An Evaluation of Targeting Accuracy in Immersive First-Person Shooters Comparing Different Tracking Approaches and Mapping Models	2013	JOURNAL OF UNIVERSAL COMPUTER SCIENCE	Article	WOS
10.4015/S1016237212500391	DEVELOPMENT OF AN AUGMENTED REALITY-ORIENTED GAME SYSTEM FOR STROKE REHABILITATION ASSESSMENT	2012	BIOMEDICAL ENGINEERING-APPLICATIONS BASIS COMMUNICATIONS	Article	WOS
10.1371/journal.pone.0040867	Extending Body Space in Immersive Virtual Reality: A Very Long Arm Illusion	2012	PLOS ONE	Article	WOS
10.1109/TVCG.2011.278	Interactive Visibility Retargeting in VR Using Conformal Visualization	2012	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	WOS
10.1007/s00702-011-0757-8	Does pre-exposure inhibit fear context conditioning? A Virtual Reality Study	2012	JOURNAL OF NEURAL TRANSMISSION	Article	WOS
10.1162/PRES_a_00111	Effects of Stereoscopic Viewing on Presence, Anxiety, and Cybersickness in a Virtual Reality Environment for Public Speaking	2012	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1007/s00221-012-3048-1	Multisensory integration in the estimation of walked distances	2012	EXPERIMENTAL BRAIN RESEARCH	Article	WOS
10.1109/TVCG.2012.45	Geometric Calibration of Head-Mounted Displays and its Effects on Distance Estimation	2012	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	WOS
10.1145/2134203.2134206	Reinforcement Learning Utilizes Proxemics: An Avatar Learns to Manipulate the Position of People in Immersive Virtual Reality	2012	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	WOS
10.1177/0269215511419383	Effects of treadmill training with optic flow on balance and gait in individuals following stroke: randomized controlled trials	2012	CLINICAL REHABILITATION	Article	WOS
10.1162/PRES_a_00089	Full Body Acting Rehearsal in a Networked Virtual Environment-A Case Study	2012	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1371/journal.pone.0030021	Virtual Reality as a Tool for Evaluation of Repetitive Rhythmic Movements in the Elderly and Parkinson's Disease Patients	2012	PLOS ONE	Article	WOS
10.1080/01431161.2011.629233	The potential for using 3D visualization for data exploration, error correction and analysis of LiDAR point clouds	2012	REMOTE SENSING LETTERS	Article	WOS
10.1016/j.cirp.2012.05.010	Augmented reality applications in design and manufacturing	2012	CIRP ANNALS-MANUFACTURING TECHNOLOGY	"Article; Proceedings Paper"	WOS
10.1016/j.chb.2011.06.006	Interactive gaming reduces experimental pain with or without a head mounted display	2011	COMPUTERS IN HUMAN BEHAVIOR	Article	WOS
10.1371/journal.pone.0025759	Talk to the Virtual Hands: Self-Animated Avatars Improve Communication in Head-Mounted Display Virtual Environments	2011	PLOS ONE	Article	WOS
10.1016/j.actpsy.2011.05.015	Comparison of grasping movements made by healthy subjects in a 3-dimensional immersive virtual versus physical environment	2011	ACTA PSYCHOLOGICA	Article	WOS
10.1109/TVCG.2011.41	Change Blindness Phenomena for Virtual Reality Display Systems	2011	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	WOS
10.1016/j.jneumeth.2011.05.011	An automated calibration method for non-see-through head mounted displays	2011	JOURNAL OF NEUROSCIENCE METHODS	Article	WOS
10.1109/TVCG.2010.248	Natural Perspective Projections for Head-Mounted Displays	2011	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	WOS
10.1186/1743-0003-8-36	Viewing medium affects arm motor performance in 3D virtual environments	2011	JOURNAL OF NEUROENGINEERING AND REHABILITATION	Article	WOS
00.0000/0002	A CORBA-Based Control Architecture for Real-Time Teleoperation Tasks in a Developmental Humanoid Robot	2011	INTERNATIONAL JOURNAL OF ADVANCED ROBOTIC SYSTEMS	Article	WOS
10.1162/PRES_a_00048	Depth Perception Within Peripersonal Space Using Head-Mounted Display	2011	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1109/MAES.2011.5763338	A Low Cost Flight Simulator Using Virtual Reality Tools	2011	IEEE AEROSPACE AND ELECTRONIC SYSTEMS MAGAZINE	Article	WOS
10.1098/rstb.2010.0209	The (human) science of medical virtual learning environments	2011	PHILOSOPHICAL TRANSACTIONS OF THE ROYAL SOCIETY B-BIOLOGICAL SCIENCES	Article	WOS
10.1371/journal.pone.0016128	Multisensory Stimulation Can Induce an Illusion of Larger Belly Size in Immersive Virtual Reality	2011	PLOS ONE	Article	WOS
10.1080/10447318.2011.552059	An Augmented Reality System for the Treatment of Phobia to Small Animals Viewed Via an Optical See-Through HMD: Comparison With a Similar System Viewed Via a Video See-Through HMD	2011	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER INTERACTION	Article	WOS
10.1162/pres_a_00016	The Effects of Higher Levels of Immersion on Procedure Memorization Performance and Implications for Educational Virtual Environments	2010	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1016/j.compedu.2010.06.005	Integrating video-capture virtual reality technology into a physically interactive learning environment for English learning	2010	COMPUTERS & EDUCATION	Article	WOS
10.1162/PRES_a_00005	Immersive Journalism: Immersive Virtual Reality for the First-Person Experience of News	2010	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	"Article; Proceedings Paper"	WOS
10.1093/jpepsy/jsp082	Effects of Videogame Distraction and a Virtual Reality Type Head-Mounted Display Helmet on Cold Pressor Pain in Young Elementary School-Aged Children	2010	JOURNAL OF PEDIATRIC PSYCHOLOGY	Article	WOS
10.1007/s11554-009-0141-1	IMMIView: a multi-user solution for design review in real-time	2010	JOURNAL OF REAL-TIME IMAGE PROCESSING	Article	WOS
10.3758/BRM.42.2.414	Controlled interaction: Strategies for using virtual reality to study perception	2010	BEHAVIOR RESEARCH METHODS	Article	WOS
10.1002/cav.324	A gesture control system for intuitive 3D interaction with virtual objects	2010	COMPUTER ANIMATION AND VIRTUAL WORLDS	"Article; Proceedings Paper"	WOS
10.1016/j.comppsych.2008.12.001	Development of a computer-based behavioral assessment of checking behavior in obsessive-compulsive disorder	2010	COMPREHENSIVE PSYCHIATRY	Article	WOS
10.1016/j.isprsjprs.2009.10.001	Augmented reality and photogrammetry: A synergy to visualize physical and virtual city environments	2010	ISPRS JOURNAL OF PHOTOGRAMMETRY AND REMOTE SENSING	Article	WOS
10.1109/JDT.2009.2029123	Comparison of Near-to-Eye Displays: Subjective Experience and Comfort	2010	JOURNAL OF DISPLAY TECHNOLOGY	Article	WOS
10.1167/10.13.11	Dynamic visual information facilitates object recognition from novel viewpoints	2010	JOURNAL OF VISION	Article	WOS
10.1016/j.burns.2009.01.013	Virtual reality: Feasibility of implementation in a regional burn center	2009	BURNS	Article	WOS
10.1097/OPX.0b013e3181adff42	Effects of a Head-Mounted Display on the Oculomotor System of Children	2009	OPTOMETRY AND VISION SCIENCE	Article	WOS
10.1093/jpepsy/jsn023	Effects of Videogame Distraction using a Virtual Reality Type Head-Mounted Display Helmet on Cold Pressor Pain in Children	2009	JOURNAL OF PEDIATRIC PSYCHOLOGY	Article	WOS
10.1162/pres.18.3.232	Comparison of the Levels of Presence and Anxiety in an Acrophobic Environment Viewed via HMD or CAVE	2009	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1016/j.apmr.2008.10.030	Kinematics of Pointing Movements Made in a Virtual Versus a Physical 3-Dimensional Environment in Healthy and Stroke Subjects	2009	ARCHIVES OF PHYSICAL MEDICINE AND REHABILITATION	"Article; Proceedings Paper"	WOS
00.0000/0003	Measurement and Analysis of Binocular Perceptual Characteristics with Peripheral Vision for the Development of Head Mounted Display with Wide View	2009	INFORMATION-AN INTERNATIONAL INTERDISCIPLINARY JOURNAL	Article	WOS
10.1097/BRS.0b013e31819b3254	Cervical Motion Assessment Using Virtual Reality	2009	SPINE	Article	WOS
10.1016/j.resuscitation.2008.12.016	Virtual reality enhanced mannequin (VREM) that is well received by resuscitation experts	2009	RESUSCITATION	Article	WOS
10.1007/s11042-008-0223-2	Head-mounted display versus desktop for 3D navigation in virtual reality: a user study	2009	MULTIMEDIA TOOLS AND APPLICATIONS	Article	WOS
10.1162/pres.17.6.575	The Comparisons of Heart Rate Variability and Perceived Exertion During Simulated Cycling with Various Viewing Devices	2008	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1111/j.1553-2712.2008.00191.x	Teaching Mass Casualty Triage Skills Using Immersive Three-dimensional Virtual Reality	2008	ACADEMIC EMERGENCY MEDICINE	Article	WOS
10.1016/j.actaastro.2007.11.001	Desktop-VR system for preflight 3D navigation training	2008	ACTA ASTRONAUTICA	Article	WOS
10.3390/s8074350	The image transceiver device: Studies of improved physical design	2008	SENSORS	Article	WOS
10.1089/cpb.2007.0116	Development and clinical trial of virtual reality-based cognitive assessment in people with stroke: Preliminary study	2008	CYBERPSYCHOLOGY & BEHAVIOR	Article	WOS
10.1109/TNSRE.2008.922676	Design of a modular and low-latency virtual-environment platform for applications in motor adaptation research, neurological disorders, and neurorehabilitation	2008	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING	Article	WOS
10.1016/j.displa.2007.09.005	Virtual reality induced symptoms and effects (VRISE): Comparison of head mounted display (HMD), desktop and projection display systems	2008	DISPLAYS	Article	WOS
10.1016/j.epsr.2007.03.014	Virtual reality applied to a full simulator of electrical sub-stations	2008	ELECTRIC POWER SYSTEMS RESEARCH	Article	WOS
10.1007/s00221-007-1134-6	Gait deviations induced by visual stimulation in roll	2008	EXPERIMENTAL BRAIN RESEARCH	Article	WOS
10.1123/jsr.17.1.38	Do the physical characteristics of a virtual reality device contraindicate its use for balance assessment?	2008	JOURNAL OF SPORT REHABILITATION	Article	WOS
10.1002/cae.20145	3D Stereo Vision System Effectiveness for Engineering Design and Graphics Education	2008	COMPUTER APPLICATIONS IN ENGINEERING EDUCATION	Article	WOS
10.1145/1278387.1278392	Using Virtual Environments to Assess Time-to-Contact Judgments from Pedestrian Viewpoints	2007	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	WOS
10.1037/0278-6133.26.6.794	Active and passive distraction using a head-mounted display helmet: Effects on cold pressor pain in children	2007	HEALTH PSYCHOLOGY	Article	WOS
10.1007/s11554-007-0043-z	The MATRIS project: real-time markerless camera tracking for Augmented Reality and broadcast applications	2007	JOURNAL OF REAL-TIME IMAGE PROCESSING	Article	WOS
10.1186/1743-0003-4-35	Evaluation of adaptation to visually induced motion sickness based on the maximum cross-correlation between pulse transmission time and heart rate	2007	JOURNAL OF NEUROENGINEERING AND REHABILITATION	Article	WOS
00.0000/0004	Virtual-reality-based 3D navigation training for emergency egress from spacecraft	2007	AVIATION SPACE AND ENVIRONMENTAL MEDICINE	Article	WOS
10.1162/pres.16.4.399	Effects of virtual reality immersion and walking speed on coordination of arm and leg movements	2007	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1145/1265957.1265961	Functional Similarities in Spatial Representations Between Real and Virtual Environments	2007	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	WOS
10.3130/jaabe.6.57	Application of human-scale immersive VR system for environmental design assessment - A proposal for an architectural design evaluation tool	2007	JOURNAL OF ASIAN ARCHITECTURE AND BUILDING ENGINEERING	Article	WOS
10.1109/TVCG.2007.37	Evaluation of a low-cost 3D sound system for immersive virtual reality training systems	2007	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	WOS
10.1518/001872007779598028	Seeing size and feeling weight: The size-weight illusion in natural and virtual reality	2007	HUMAN FACTORS	Article	WOS
10.1162/pres.16.1.111	Viewing moving objects in virtual reality can change the dynamics of sensorimotor EEG rhythms	2007	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1145/1227134.1227139	Step Frequency and Perceived Self-Motion	2007	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	WOS
10.1188/07.ONF.39-46	Virtual reality: A distraction intervention for chemotherapy	2007	ONCOLOGY NURSING FORUM	Article	WOS
10.1016/j.jpain.2006.04.006	Virtual reality helmet display quality influences the magnitude of virtual reality analgesia	2006	JOURNAL OF PAIN	Article	WOS
10.1016/j.eurpsy.2004.10.004	High sensitivity to multisensory conflicts in agoraphobia exhibited by virtual reality	2006	EUROPEAN PSYCHIATRY	Article	WOS
10.1162/pres.15.5.588	Super wide field of view head mounted display using catadioptrical optics	2006	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	"Article; Proceedings Paper"	WOS
10.1016/j.neulet.2006.06.007	Ventriloquism aftereffects occur in the rear hemisphere	2006	NEUROSCIENCE LETTERS	Article	WOS
10.1016/j.optlaseng.2005.06.005	A novel device for head gesture measurement system in combination with eye-controlled human-machine interface	2006	OPTICS AND LASERS IN ENGINEERING	Article	WOS
10.1109/TVCG.2006.55	The effect of visual and interaction fidelity on spatial cognition in immersive virtual environments	2006	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	WOS
10.1117/1.2189211	Field-of-view tests for a virtual cockpit application	2006	JOURNAL OF ELECTRONIC IMAGING	Article	WOS
10.1016/j.ijhcs.2005.08.004	Multimodal astronaut virtual training prototype	2006	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES	Article	WOS
00.0000/0005	A cooperative engineering environment using virtual reality with sensory user interfaces for steel bridge erection	2006	COOPERATIVE DESIGN, VISUALIZATION, AND ENGINEERING, PROCEEDINGS	"Article; Proceedings Paper"	WOS
10.1002/ecjb.20304	A wide-field-of-view catadioptrical head-mounted display	2006	ELECTRONICS AND COMMUNICATIONS IN JAPAN PART II-ELECTRONICS	Article	WOS
10.1080/13506280544000273	Crossmodal binding in localizing objects outside the field of view	2006	VISUAL COGNITION	Article	WOS
10.1162/1054746053967012	Comparison of two VR platforms for rehabilitation: Video capture versus HMD	2005	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1097/01.OPX.0000156307.95086.6	The development of a symptom questionnaire for assessing virtual reality viewing using a head-mounted display	2005	OPTOMETRY AND VISION SCIENCE	Article	WOS
10.1016/j.autcon.2004.08.001	A new paradigm for Human-Building Interaction: the use of CFD and Augmented Reality	2005	AUTOMATION IN CONSTRUCTION	Article	WOS
00.0000/0006	ATDV: An image transforming system	2005	COMPUTATIONAL SCIENCE - ICCS 2005, PT 1, PROCEEDINGS	"Article; Proceedings Paper"	WOS
00.0000/0007	An interaction interface for multiple agents on shared 3D display	2005	COOPERATIVE DESIGN, VISUALIZATION, AND ENGINEERING, PROCEEDINGS	"Article; Proceedings Paper"	WOS
10.1089/cpb.2004.7.519	Neurofeedback training with virtual reality for inattention and impulsiveness	2004	CYBERPSYCHOLOGY & BEHAVIOR	Article	WOS
10.1177/1063293X04042469	A CAD-augmented reality integrated environment for assembly sequence check and interactive validation	2004	CONCURRENT ENGINEERING-RESEARCH AND APPLICATIONS	Article	WOS
10.1518/hfes.46.1.142.30384	Conflicting motion cues to the visual and vestibular self-motion systems around 0.06 Hz evoke simulator sickness	2004	HUMAN FACTORS	Article	WOS
10.1037/0022-0663.96.1.165	Personalized messages that promote science learning in virtual environments	2004	JOURNAL OF EDUCATIONAL PSYCHOLOGY	Article	WOS
10.1016/S0005-7967(03)00139-6	Treatment of acrophobia in virtual reality: The role of immersion and presence	2004	BEHAVIOUR RESEARCH AND THERAPY	Article	WOS
00.0000/0008	WARAJI: Foot-driven navigation interfaces for virtual reality applications	2004	ADVANCES IN MULTIMEDIA INFORMATION PROCESSING - PCM 2004, PT 3, PROCEEDINGS	"Article; Proceedings Paper"	WOS
00.0000/0009	Collaborative interactions on 3D display for multi-user game environments	2004	COMPUTER HUMAN INTERACTION: PROCEEDINGS	"Article; Proceedings Paper"	WOS
10.1007/s10384-003-0001-7	Effects of an eyeglass-free 3-D display on the human visual system	2004	JAPANESE JOURNAL OF OPHTHALMOLOGY	Article	WOS
10.1017/S0263574703005447	Assessment of various display devices on a virtual reality-based hand rehabilitation system	2004	ROBOTICA	Article	WOS
10.1016/j.biopha.2003.08.010	Can personality traits predict pathological responses to audiovisual stimulation?	2003	BIOMEDICINE & PHARMACOTHERAPY	"Article; Proceedings Paper"	WOS
00.0000/0010	Eye movement, vection, and motion sickness with foveal and peripheral vision	2003	AVIATION SPACE AND ENVIRONMENTAL MEDICINE	Article	WOS
10.1055/s-2003-37831	A head-mounted display system for augmented reality: Initial evaluation for interventional MRI	2003	ROFO-FORTSCHRITTE AUF DEM GEBIET DER RONTGENSTRAHLEN UND DER BILDGEBENDEN VERFAHREN	Article	WOS
10.1016/S0007-8506(07)60517-4	Integrating augmented reality in the assembly domain - Fundamentals, benefits and applications	2003	CIRP ANNALS-MANUFACTURING TECHNOLOGY	Article	WOS
00.0000/0011	Hand postures recognition in large-display VR environments	2003	GESTURE-BASED COMMUNICATION IN HUMAN-COMPUTER INTERACTION	"Article; Proceedings Paper"	WOS
00.0000/0012	Implementation of a virtual environment for traffic accident simulation Part II: Developing the virtual environment	2003	JOURNAL OF INTELLIGENT & FUZZY SYSTEMS	Article	WOS
10.1023/A:1021778608344	Walking on virtual tiles	2002	NEURAL PROCESSING LETTERS	Article	WOS
10.1016/S0143-8166(02)00034-9	An eye behavior measuring device for VR system	2002	OPTICS AND LASERS IN ENGINEERING	Article	WOS
10.1037//0022-0663.94.3.598	Learning science in virtual reality multimedia environments: Role of methods and media	2002	JOURNAL OF EDUCATIONAL PSYCHOLOGY	Article	WOS
10.1360/02tb9297	Refractive-diffractive visual system for micro-display of LCOS	2002	CHINESE SCIENCE BULLETIN	Article	WOS
10.1023/A:1019960305038	Wireless user perspectives in Europe: HandSmart mediaphone interface	2002	WIRELESS PERSONAL COMMUNICATIONS	"Article; Proceedings Paper"	WOS
10.1007/s00268-001-0127-z	Image display technology and image processing	2001	WORLD JOURNAL OF SURGERY	Article	WOS
10.1016/S0097-8493(01)00118-2	A tangible AR desktop environment	2001	COMPUTERS & GRAPHICS-UK	Article	WOS
10.1006/ijhc.2001.0475	Theme-based content analysis: a flexible method for virtual environment evaluation	2001	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES	Article	WOS
10.1162/1054746011470226	Virtual environments for assessing and rehabilitating cognitive/functional performance - A review of projects at the USC Integrated Media Systems Center	2001	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1162/1054746011470271	Virtual reality and driving: Tthe road to better assessment for cognitively impaired populations	2001	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
00.0000/0013	Vestibule-ocular reflex modification after virtual environment exposure	2001	ACTA OTO-LARYNGOLOGICA	Article	WOS
10.1504/IJTM.2001.002917	Integrating virtual 3-D display systems into product design reviews: some insights from empirical testing	2001	INTERNATIONAL JOURNAL OF TECHNOLOGY MANAGEMENT	Article	WOS
10.1016/S0924-0136(00)00717-2	Designing an immersive virtual reality interface for layout planning	2000	JOURNAL OF MATERIALS PROCESSING TECHNOLOGY	"Article; Proceedings Paper"	WOS
10.1016/S0887-6185(00)00052-9	Adaptation as a sensorial profile in trait anxiety: A study with virtual reality	2000	JOURNAL OF ANXIETY DISORDERS	Article	WOS
10.1016/S0141-9382(00)00029-9	Habituation to the side effects of immersion in a virtual environment	2000	DISPLAYS	Article	WOS
00.0000/0014	Safety and comfort of eyeglass displays	2000	HANDHELD AND UBIQUITOUS COMPUTING, PROCEEDINGS	"Article; Proceedings Paper"	WOS
00.0000/0015	The varioscope AR - A head-mounted operating microscope for augmented reality	2000	MEDICAL IMAGE COMPUTING AND COMPUTER-ASSISTED INTERVENTION - MICCAI 2000	"Article; Proceedings Paper"	WOS
00.0000/0016	On latency compensation and its effects on head-motion trajectories in virtual environments	2000	VISUAL COMPUTER	Article	WOS
10.1016/S0278-2391(99)90722-X	Clinical experience with interactive teleconsultation and teleassistance in craniomaxillofacial surgical procedures	1999	JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY	Article	WOS
10.2170/jjphysiol.49.417	Postural adjustment response to depth direction moving patterns produced by virtual reality graphics	1999	JAPANESE JOURNAL OF PHYSIOLOGY	Article	WOS
10.1518/001872099779611067	Target-directed head movements in a head-coupled virtual environment: Predicting the effects of lags using Fitts' law	1999	HUMAN FACTORS	Article	WOS
10.1097/00006324-199909000-00021	Oculomotor function after virtual reality use differentiates symptomatic from asymptomatic individuals	1999	OPTOMETRY AND VISION SCIENCE	Article	WOS
10.1162/105474699566341	Virtual reality as communication tool: A sociocognitive analysis	1999	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1162/105474699566152	Virtual reality-induced symptoms and effects (VRISE)	1999	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	"Article; Proceedings Paper"	WOS
10.1016/S0141-9331(98)00105-7	Visor projected helmet mounted displays technology and applications	1999	MICROPROCESSORS AND MICROSYSTEMS	Article	WOS
10.1016/S0003-6870(98)00041-6	The nauseogenicity of two methods of navigating within a virtual environment	1999	APPLIED ERGONOMICS	Article	WOS
10.1016/S0003-6870(98)00043-X	Oculomotor changes within virtual environments	1999	APPLIED ERGONOMICS	Article	WOS
10.1016/S0003-6870(98)00045-3	Physical ergonomics of virtual environment use	1999	APPLIED ERGONOMICS	Article	WOS
10.1016/S0361-9230(98)00104-X	Static posture tests for the assessment of postural instability after virtual environment use	1998	BRAIN RESEARCH BULLETIN	Article	WOS
00.0000/0017	A versatile stereoscopic visual display system for vestibular and oculomotor research	1998	JOURNAL OF VESTIBULAR RESEARCH-EQUILIBRIUM & ORIENTATION	Article	WOS
10.1162/105474698565811	Multisensor integrated prediction for virtual reality	1998	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
00.0000/0018	Advances in electrolytic sensors and their use in crash dummies	1998	MEASUREMENTS & CONTROL	Article	WOS
10.1080/001401398187035	Gaze angle: a possible mechanism of visual stress in virtual reality headsets	1998	ERGONOMICS	Article	WOS
10.1109/5.662873	Current and future applications of virtual reality for medicine	1998	PROCEEDINGS OF THE IEEE	Article	WOS
10.1016/S0141-9382(97)00011-5	The occurrence of virtual simulation sickness symptoms when an HMD was used as a personal viewing system	1997	DISPLAYS	Article	WOS
10.1023/A:1018639714611	Interactive collaborative media environments	1997	BT TECHNOLOGY JOURNAL	Article	WOS
10.1080/001401397187603	Virtual environments and ergonomics: needs and opportunities	1997	ERGONOMICS	"Article; Proceedings Paper"	WOS
10.1518/001872097778827070	Multiaccommodative stimuli in VR systems: Problems & solutions	1997	HUMAN FACTORS	Article	WOS
10.1016/S0168-874X(96)00078-9	Combining MSC/NASTRAN, sensitivity methods, and virtual reality to facilitate interactive design	1997	FINITE ELEMENTS IN ANALYSIS AND DESIGN	Article	WOS
00.0000/0019	High-res VR displays	1997	COMPUTER GRAPHICS WORLD	Article	WOS
10.1016/S0278-2391(97)90689-3	Virtual reality for orthognathic surgery: The augmented reality environment concept	1997	JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY	Article	WOS
10.1162/pres.1997.6.1.118	Implementation of dynamic robotic graphics for a virtual control panel	1997	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
10.1080/00140139608964552	Stereopsis with normal and reversed binocular parallax using a head mounted display in normal and strabismic subjects	1996	ERGONOMICS	Article	WOS
10.1080/00140139608964557	Effects on visual functions during tasks of object handling in virtual environment with a head mounted display	1996	ERGONOMICS	Article	WOS
10.1143/JJAP.35.3121	A system for superimposing a 3-dimensional stereoscopic motion echo image of the heart onto the chest	1996	JAPANESE JOURNAL OF APPLIED PHYSICS PART 1-REGULAR PAPERS SHORT NOTES & REVIEW PAPERS	"Article; Proceedings Paper"	WOS
10.1016/S0901-5027(96)80062-2	Image guided surgery	1996	INTERNATIONAL JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY	Article	WOS
00.0000/0020	Other faces of Virtual Reality	1996	MULTIMEDIA, HYPERMEDIA AND VIRTUAL REALITY: MODELS, SYSTEMS, AND APPLICATIONS	"Article; Proceedings Paper"	WOS
00.0000/0021	THE VISUAL-DISPLAY TRANSFORMATION FOR VIRTUAL-REALITY	1995	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	WOS
00.0000/0022	VIRTUAL-REALITY IN MEDICINE	1995	RADIOLOGE	Article	WOS
10.1007/BF02407087	A LOW-POWER HIGH-PERFORMANCE POLYGON RENDERER FOR COMPUTER-GRAPHICS	1995	JOURNAL OF VLSI SIGNAL PROCESSING	Article	WOS
10.1016/0010-4825(94)00007-D	THE RESPONSIVE WORKBENCH - A VIRTUAL WORKING ENVIRONMENT FOR PHYSICIANS	1995	COMPUTERS IN BIOLOGY AND MEDICINE	Article	WOS
00.0000/0023	REDUCING THE LATENCY IN HEAD-MOUNTED DISPLAYS BY A NOVEL PREDICTION METHOD USING GREY SYSTEM-THEORY	1994	COMPUTER GRAPHICS FORUM	Article	WOS
10.1145/159161.173948	DECOUPLED SIMULATION IN VIRTUAL-REALITY WITH THE MR TOOLKIT	1993	ACM TRANSACTIONS ON INFORMATION SYSTEMS	Article	WOS
10.1145/159544.159587	KNOWLEDGE-BASED AUGMENTED REALITY	1993	COMMUNICATIONS OF THE ACM	Article	WOS
10.1109/TBME.2009.2028013	A 3-D Mixed-Reality System for Stereoscopic Visualization of Medical Dataset.	2009	IEEE Transactions on Biomedical Engineering	Article	BSP
10.1089/10949310050078805	A Rapid Prototyping Framework for the Development of Virtual Environments in Mental Health.	2000	CyberPsychology & Behavior	Article	BSP
10.1089/109493103322011542	A Virtual Reality System for Neurobehavioral and Functional MRI Studies.	2003	CyberPsychology & Behavior	Article	BSP
10.1109/MM.2014.94	An Augmented Reality Processor with a Congestion-Aware Network-on-Chip Scheduler.	2014	IEEE Micro	Article	BSP
10.1016/S0001-4575(02)00081-7	An investigation of road crossing in a virtual environment	2003	Accident Analysis & Prevention	Article	BSP
10.1089/cpb.2008.0003	Anxiety Provocation and Measurement Using Virtual Reality in Patients with Obsessive-Compulsive Disorder.	2008	CyberPsychology & Behavior	Article	BSP
10.1089/cyber.2014.0046	Application of Virtual Body Swapping to Patients with Complex Regional Pain Syndrome: A Pilot Study.	2014	CyberPsychology, Behavior & Social Networking	Article	BSP
10.1080/10447318.2014.927283	Augmented Presentations: Supporting the Communication in Presentations by Means of Augmented Reality.	2014	International Journal of Human-Computer Interaction	Article	BSP
10.1109/MCG.2012.110	Beaming: An Asymmetric Telepresence System.	2012	IEEE Computer Graphics & Applications	Article	BSP
10.1504/IJCAT.2015.069331	Construction of a virtual reality environment for robotic manufacturing cells.	2015	International Journal of Computer Applications in Technology	Article	BSP
10.1089/cpb.2009.0118	Crushing Virtual Cigarettes Reduces Tobacco Addiction and Treatment Discontinuation.	2009	CyberPsychology & Behavior	Article	BSP
10.1109/MCG.2004.1297006	Developing Killer Apps for Industrial Augmented Reality.	2004	IEEE Computer Graphics & Applications	Article	BSP
10.1080/07408170304345	Development and pilot testing for virtual manufacturing tools with intelligent attributes.	2003	IIE Transactions	Article	BSP
10.1080/16864360.2006.10738485	Development of a Simulator Based on Train Performance Simulation.	2006	Computer-Aided Design & Applications	Article	BSP
10.1037/a0027524	Effect of Viewing Plane on Perceived Distances in Real and Virtual Environments.	2012	Journal of Experimental Psychology. Human Perception & Performance	Article	BSP
10.1089/cpb.2006.9.207	Effectiveness of Virtual Reality for Pediatric Pain Distraction during IV Placement.	2006	CyberPsychology & Behavior	Article	BSP
10.1002/hfm.20566	Effects of Displays on Visually Controlled Task Performance in Three-Dimensional Virtual Reality Environment.	2015	Human Factors & Ergonomics in Manufacturing & Service Industries	Article	BSP
10.1089/109493101300117910	Evaluation for the Design of Experience in Virtual Environments: Modeling Breakdown of Interaction and Illusion.	2001	CyberPsychology & Behavior	Article	BSP
10.1089/1094931042403109	Factors That Influence Presence in Educational Virtual Environments.	2004	CyberPsychology & Behavior	Article	BSP
10.1089/cyber.2014.0058	Feasibility of Articulated Arm Mounted Oculus Rift Virtual Reality Goggles for Adjunctive Pain Control During Occupational Therapy in Pediatric Burn Patients.	2014	CyberPsychology, Behavior & Social Networking	Article	BSP
10.1089/cpb.2006.9.591	Head-Mounted Displays for Clinical Virtual Reality Applications: Pitfalls in Understanding User Behavior while Using Technology.	2006	CyberPsychology & Behavior	Article	BSP
10.1089/cpb.2004.7.734	Immersion and Emotion: Their Impact on the Sense of Presence.	2004	CyberPsychology & Behavior	Article	BSP
00.0000/0024	Implementation of a virtual environment for traffic accident simulation.	2003	Journal of Intelligent & Fuzzy Systems	Article	BSP
10.1080/01449290903160459	Increasing the geometric field of view in head mounted displays through proprioceptive task and multimodal feedback for effective close range interaction.	2010	Behaviour & Information Technology	Article	BSP
10.1109/38.963462	Mixed Reality: Future Dreams Seen at the Border between Real and Virtual Worlds.	2001	IEEE Computer Graphics & Applications	Article	BSP
10.1089/1094931042403055	Neurofeedback Training with Virtual Reality for Inattention and Impulsiveness.	2004	CyberPsychology & Behavior	Article	BSP
10.3233/wor-2012-0442-2201	On the effect of free vs. restricted interaction during the exploration of virtual environments.	2012	Work	Article	BSP
10.1080/16864360.2006.10738444	Organic Shape Modeling through Haptic Devices.	2006	Computer-Aided Design & Applications	Article	BSP
10.1089/cpb.2007.9996	Pain Modulation during Drives through Cold and Hot Virtual Environments.	2007	CyberPsychology & Behavior	Article	BSP
10.1080/088395197118154	PERCEPTIVE SPACES FOR PERFORMANCE AND ENTERTAINMENT UNTETHERED INTERACTION USING COMPUTER VISION AND AUDITION.	1997	Applied Artificial Intelligence	Article	BSP
10.1089/10949310050078788	Preclinical Evaluation of a Virtual Reality Neuropsychological Test System: Occurrence of Side Effects.	2000	CyberPsychology & Behavior	Article	BSP
10.1109/MCG.2015.98	Reducing Visual Discomfort with HMDs Using Dynamic Depth of Field.	2015	IEEE Computer Graphics & Applications	Article	BSP
10.1109/MCG.2014.117	Spatial User Interfaces for Large-Scale Projector-Based Augmented Reality.	2014	IEEE Computer Graphics & Applications	Article	BSP
10.1109/TRO.2009.2028765	Stereo Viewing and Virtual Reality Technologies in Mobile Robot Teleguide.	2009	IEEE Transactions on Robotics	Article	BSP
10.1109/TIE.2014.2334675	Stereoscopic Visualization and 3-D Technologies in Medical Endoscopic Teleoperation.	2015	IEEE Transactions on Industrial Electronics	Article	BSP
10.3758/s13421-010-0054-z	The effect of landmark and body-based sensory information on route knowledge.	2011	Memory & Cognition	Article	BSP
10.1089/109493103769710505	The Effect of Two Types of Virtual Reality on Voluntary Center of Pressure Displacement.	2003	CyberPsychology & Behavior	Article	BSP
10.1089/109493102753770516	The Effect of Virtual Reality Cognitive Training for Attention Enhancement.	2002	CyberPsychology & Behavior	Article	BSP
10.1089/109493102753685890	The Effect of Visual Stimulation via the Eyeglass Display and the Perception of Pain.	2002	CyberPsychology & Behavior	Article	BSP
10.1089/109493101300117938	The Effects of Levels of Immersion on Memory and Presence in Virtual Environments: A Reality Centered Approach.	2001	CyberPsychology & Behavior	Article	BSP
10.1089/10949310050078940	The Virtual Classroom: A Virtual Reality Environment for the Assessment and Rehabilitation of Attention Deficits.	2000	CyberPsychology & Behavior	Article	BSP
10.1080/10447318.2015.1039909	Usability Evaluation of VR Interface for Mobile Robot Teleoperation.	2015	International Journal of Human-Computer Interaction	Article	BSP
10.1089/cpb.2006.9.388	Using a Virtual Reality System to Study Balance and Walking in a Virtual Outdoor Environment: APilot Study.	2006	CyberPsychology & Behavior	Article	BSP
10.1109/TBME.2005.848378	Using EMG to Anticipate Head Motion for Virtual-Environment Applications.	2005	IEEE Transactions on Biomedical Engineering	Article	BSP
10.1109/MCG.2014.103	Virtual Reality for the Masses.	2014	IEEE Computer Graphics & Applications	Article	BSP
10.1089/cpb.2006.9.137	Virtual Reality in the Rehabilitation of the Upper Limb after Stroke: The User’s Perspective.	2006	CyberPsychology & Behavior	Article	BSP
10.1089/109493103322011605	Virtual Reality Intervention for Older Women with Breast Cancer.	2003	CyberPsychology & Behavior	Article	BSP
10.1109/MCG.2015.102	Virtual Reality Software and Technology.	2015	IEEE Computer Graphics & Applications	Article	BSP
10.1089/cyber.2009.0263	Virtual-Reality Distraction and Cold-Pressor Pain Tolerance: Does Avatar Point of View Matter?	2010	CyberPsychology, Behavior & Social Networking	Article	BSP
10.1109/MCG.2014.82	Visualization beyond the Desktop--the Next Big Thing.	2014	IEEE Computer Graphics & Applications	Article	BSP
00.0000/0026	Walk-up VR: Virtual Reality beyond Projection Screens.	2000	IEEE Computer Graphics & Applications	Article	BSP
10.14400/JDC.2015.13.8.465	????? ?? ????? ?? ??? ??.	2015	Journal of Digital Convergence	Article	BSP
10.1145/1498700.1498702	The effects of head-mounted display mechanical properties and field of view on distance judgments in virtual environments	2009	ACM Transactions on Applied Perception	Article	SB
10.1145/1823738.1823744	How does presentation method and measurement protocol affect distance estimation in real and virtual environments?	2010	ACM Transactions on Applied Perception	Artikle	SB
10.1016/j.ergon.2010.10.001	Predicting real-world ergonomic measurements by simulation in a virtual environment	2011	International Journal of Industrial Ergonomics		SB
10.1016/j.gaitpost.2012.02.010	Influence of real and virtual heights on standing balance	2012	Gait and Posture		SB
10.1016/j.jneumeth.2018.03.010	The Virtual Shop: A new immersive virtual reality environment and scenario for the assessment of everyday memory	2018	Journal of Neuroscience Methods jo		SB
10.3758/s13414-011-0170-2	The underestimation of egocentric distance:evidence from frontal matching tasks	2011	Attention, Perception, and Psychophysics		SB
\.


--
-- Data for Name: autor; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.autor (nachname, vorname) FROM stdin;
 Abd-Alhamid	 Fedaa
 Abdel-Mottaleb	 Mostafa
 Abdel-Mottaleb	 Mohamed
 Abdelqader	 Bilal
 Abdullah	 Maria
 Abe	 K
 Abe	 M
 Abe	 Ricardo Y.
 Abinahed	 Julien
 Abou Shousha	 Mohamed
 Abowd	 Gregory D.
 Abrams	 Howard B.
 Abreham	 Betsha T.
 Abreham	 Betsha Tizazu
 Abu-Alqumsan	 Mohammad
 Aburub	 AS
 Achotegui-Loizate	 Jose
 Ackerman	 CS
 Adam	 Rankin
 Aedo	 Ignacio
 Agah	 MR
 Agethen	 Philipp
 Aglioti	 Salvatore Maria
 Aglioti	 Salvatore M.
 Agrawal	 Ravi
 Agrimi	 Alessio
 Aguiar	 Naomi R.
 Aguilar	 Mario
 Ahamba	 Godson
 Aharon-Peretz	 J
 Ahmadpour	 Naseem
 Ahmed	 Ayman Z.
 Ahmed	 Imtiaj
 Ahmed	 Kamran
 Ahn	 Yong-Deok
 Ahn	 Sun Joo
 Ahn	 Sang Chul
 Ahn	 Young Joong
 Ahrens	 Axel
 Aiken	 MP
 Ajilore	 Olusola
 Ajimsha	 M. S.
 Akhtar	 Aadeel
 Aksit	 K
 Aksit	 K.
 Aksit	 Kaan
 Al Janabi	 Hasaneen Fathy
 Al Osman	 Hussein
 Al-Ansari	 Abdulla
 Al-Atabany	 Walid
 Al-Hassan	 Dabia
 Al-Hemadi	 Moza
 Al-Hussein	 Mohamed
 Al-Jabir	 Ahmed
 Al-Khodairy	 Abdul-Wahab
 Albayrak	 D
 Albert	 Rachel
 Albuquerque	 Georgia
 Alcaniz	 Mariano
 Alcaniz	 M
 Alcaniz	 Andmariano
 Alcañiz	 Mariano
 Alcañiz	 M.
 Alcaniz Raya	 Mariano
 Aldaba	 C
 Aldaba	 Cassandra N.
 Alessandrini	 Marco
 Alexander	 Thomas
 Alexander	 Nicholas
 Alfaro	 Luis
 Alghamdi	 Najood
 Alhalabi	 Wadee S.
 Alhalabi	 Wadee
 Alhamid	 Mohammed F.
 Ali	 Almaas A.
 Alikovskaia	 Tatiana
 Alja'am	 Jihad M.
 Allain	 Philippe
 Allen	 Brian
 Allen	 Daniel R.
 Allison	 Robert S.
 Allue	 M.
 Almajid	 R
 Almousa	 Omamah
 Alpers	 Georg W.
 Alpona	 Hena
 Alrehaili	 Enas Abdulrahman
 Alsaeedi	 Nassr
 Alshaer	 Abdulaziz
 Álvarez	 Hugo
 Amati	 G
 Ambron	 Elisabetta
 Amemiya	 Tomohiro
 Ames	 SL
 Aminlou	 Alireza
 Amira	 Abbes
 Ammann	 Jeanine
 An	 Gwangseok
 Anastasiou	 Dimitris
 Andersen	 Steven Arild Wuyts
 Anderson	 Barrett R.
 Anderson	 Barrett
 Anderson	 TJ
 Andre	 Elisabeth
 Andreu-Gracia	 Alexis
 Ang	 Chee Siang
 Anggraini	 E
 Anglin	 J. M.
 Angulo	 Jesus
 Antley	 A
 Antoniac	 P
 Antoniou	 V
 Aoki	 H
 Ap Cenydd	 Llyr
 Appel	 Lora
 Appel	 Eva
 Applegate	 Megan E.
 Apthorp	 Deborah
 Arakawa	 Toshiya
 Araki	 Kenji
 Arbelaiz	 Ander
 Arbez	 C
 Arcioni	 Benjamin
 Ard	 Tyler
 Argyriou	 Lemonia
 Arias	 P
 Arias Ferrer	 Laura
 Ariotti	 Nicholas
 Armstrong	 Niall
 Aruin	 Alexander
 Asakura	 Takumi
 Ashmead	 DH
 Ashour	 Omar
 Askin	 MB
 Aspell	 JE
 Aspell	 Jane E.
 Assaban	 Franck
 Atzori	 Barbara
 Au	 IPH
 Augimeri	 Ivan
 Augusto	 Rafael
 Augusto	 Juan Carlos
 Avakaw	 Syarhei
 Avila	 Lisa
 Avizzano	 Carlo Alberto
 Avola	 Danilo
 Avouris	 Nikolaos
 Awdziej	 Marcin
 Aydin	 Abdullatif
 Aykut	 Tamay
 Ayoub	 Ashraf
 Ayoub	 A.
 Azam	 Muhammad
 Azarbayejani	 Ali J.
 Babault	 Nicolas
 Babu	 SV
 Babu	 Sabarish V.
 Babu	 Raiju
 Bach	 F
 Bachhuber	 Christoph
 Bachmann	 ER
 Bacim	 Felipe
 Backman	 Anders
 Badam	 Sriram Karthik
 Badano	 Aldo
 Bae	 Yoosung
 Li	 Li
 Baehrer	 Sabine
 Baek	 Jong-Sang
 Baek	 Seung Jun
 Baek-Hwan	 Cho
 Baggerman	 JW
 Baggili	 Ibrahim
 Baghaei	 Nilufar
 Bagher	 Mahda M.
 Bagley	 Brendon
 Bahat	 Hilla Sarig
 Bahat	 HS
 Bahirat	 Kanchan
 Bai	 Xiaoliang
 Bai	 Jianying
 Bailenson	 JN
 Bailenson	 Jeremy N.
 Bailey	 Jakki O.
 Bailey	 Benjamin John
 Bailey	 Benjamin
 Bailey	 Mike
 Bailey	 JO
 Baker	 Steven
 Baker	 Steven J.
 Balaskas	 Konstantinos
 Balasubramanian	 Sivakumar
 Balasubramanyam	 Adithya
 Baldassi	 Giulio
 Ballaz	 C
 Ballaz	 Laurent
 Balram	 Nikhil
 Ban	 Y
 Banaei	 Maryam
 Banakou	 D
 Banks	 Martin S.
 Baños	 R. M.
 Banville	 Frederic
 Bao	 Min
 Baqai	 Attiya
 Barabanschikova	 Valentina V.
 Barabanshikova	 VV
 Baram	 Y
 Baran	 Perver K.
 Barandiaran	 Iñigo
 Barandiaran	 Javier
 Barandiaran	 Inigo
 Baratoff	 G
 Barnes	 Gareth R.
 Barnes	 D. G.
 Barnhart	 Betsy
 Barniv	 Yair
 Barreiros	 Jose
 Barrera	 S
 Barrett	 John Martin
 Barros	 L
 Barton III	 Robert J.
 Bascle	 B
 Basler	 Lee
 Basso	 V
 Baumann	 Stephen
 Baumeister	 James
 Baur	 Kilian
 Bazzanello Henrique	 Patricia Paula
 Beach	 DS
 Beams	 Ryan
 Becciani	 U.
 Beck	 K
 Bedard	 Philippe
 Bedia	 M. G.
 Beebe	 Shaun
 Behler	 Christian
 Beiser	 Ines
 Bekrater-Bodmann	 R
 Bell	 Joshua D.
 Belleville	 S
 Bellini	 Dom
 Bendas	 D
 Bennett	 Christopher
 Bennis	 F
 Bensaali	 Faycal
 Benty	 Nir
 Bergamasco	 Massimo
 Bergamasco	 M
 Berger	 M
 Bergmann	 H
 Bergstroem	 Ilias
 Berkman	 Mehmet Ilker
 Bermell-Garcia	 Pablo
 Berry	 MJ
 Berthold	 Adam
 Berthoz	 A
 Bertoletti De Marchi	 Ana Carolina
 Bertomeu-Panisello	 Paola
 Bertrand	 Jeffrey
 Bertrand	 Jeffrey W.
 Bertrand	 JW
 Bessa	 Maximino
 Bessa	 M
 Bex	 Peter J.
 Bhagat	 Aakash B.
 Bhargava	 Ayush
 Bhargava	 A
 Bian	 Yulong
 Bibic	 Lucka
 Biddulph	 Tara
 Bielawski	 Kevin S.
 Biemond	 R
 Bieniek	 Andrzej
 Bigné	 Enrique
 Billinghurst	 Mark
 Bing	 Eric G.
 Bird	 Jonathan M.
 Birkfellner	 W
 Bischof	 H
 Bisson	 Etienne
 Bistricky	 Steven L.
 Bjerrum	 Flemming
 Black	 Kathryn
 Blackmore	 KL
 Blackmore	 Karen L.
 Blackmore	 Karen
 Blair	 Jordan
 Blanke	 O
 Blanke	 Olaf
 Blissing	 Bjorn
 Blissing	 Björn
 Bochenek	 GM
 Bodenheimer	 B
 Boechat	 Pedro
 Boer	 Erwin R.
 Boffo	 Marilisa
 Boger	 J
 Bogler	 Orly
 Boller	 B
 Bolte	 B
 Bonali	 F. L.
 Bong	 Kyeongryeol
 Boon	 MY
 Boon	 Mei-Ying
 Borao	 Luis
 Bordegoni	 Monica
 Borrego	 Adrian
 Borrego	 Adrin
 Borsari	 Alessia
 Bortnyk	 CT
 Bos	 Jelte E.
 Bostan	 Barbaros
 Bostrom	 J
 Bot-Robin	 Virginie
 Botden	 Sanne M. B. I.
 Botella	 C
 Botella	 C.
 Boto	 Elena
 Botsch	 Mario
 Bott	 Oliver Johannes
 Bottino	 Rosa
 Bou-Haidar	 Pascal
 Boubekeur	 Tamy
 Bouchard	 Stéphane
 Boudaoud	 Ben
 Bouki	 Vassiliki
 Bourbonnais	 D
 Bourdin	 Christophe
 Bourke	 Paul
 Bowerly	 T.
 Bowerly	 T
 Bowman	 DA
 Bowman	 Doug A.
 Bowskill	 JM
 Bowtell	 Richard
 Boyce	 Jill M.
 Boylan	 Patrick
 Bozzelli	 G
 Bradley	 Chris K.
 Bradley	 Ryan
 Brambilla	 Elena
 Brandt	 Thomas
 Brandt	 T
 Brayda	 Luca
 Breitinger	 Frank
 Breitkopf	 Katharina
 Breitkreuz	 Karen
 Bremner	 Andrew J.
 Breton-Lopez	 J
 Brewster	 Stephen
 Brinkman	 WP
 Brinkman	 Willem-Paul
 Brizzi	 Filippo
 Brkic	 Karla
 Brodbeck	 Dominique
 Brookes	 David A.
 Brookes	 Matthew J.
 Brouwer	 Anne-Marie
 Brown	 Richard K. J.
 Brown	 Ross A.
 Browning	 MHEM
 Brucker	 Marvin
 Bruder	 Gerd
 Bruder	 G
 Brum	 Manoela Rogofski
 Brungart	 Douglas
 Bruno	 Luisa Vittoria
 Bruno	 LC
 Bruno	 Fabio
 Bruns	 Conner R.
 Bruzelius	 Fredrik
 Bucht	 Gustaf
 Buckland	 DA
 Buckwalter	 J.G.
 Buckwalter	 JG
 Bukhari	 Faisal
 Bullinger	 Alex H.
 Bulthoff	 HH
 Bülthoff	 Heinrich
 Burgess	 AM
 Burgess	 L
 Burgess-Limerick	 R
 Burgmair	 Christoph
 Burkhardt	 JM
 Burns	 CG
 Burns	 Alex
 Burwell	 C
 Buss	 Alan R.
 Bussing	 AG
 Bustillo	 Andres
 Butler	 JS
 Butler	 John S.
 Buttussi	 Fabio
 Buttussi	 F
 Buxbaum	 Laurel J.
 Buyuksalih	 Gurcan
 Byagowi	 A
 Byun	 Hye Suk
 CHENG-HSIN	 HSU
 CHING-LING	 FAN
 Cabanellas	 JM
 Caesaron	 D
 Caesaron	 Dino
 Caffrey	 Michelle
 Cai	 Ruifan
 Cai	 C
 Cakiroglu	 Unal
 Calabro	 Massimo
 Calatrava	 J
 Calautit	 John
 Caligiana	 G
 Calogiuri	 Giovanna
 Calusdian	 J
 Calvo	 Rafael A.
 Cameron	 AA
 Campbell	 Andrew
 Campos	 JL
 Campos	 Daniel
 Campos	 Jennifer L.
 Cano-de-la-Cuerda	 R
 Canseco Aguilar	 Patricia
 Cao	 Jingyue
 Cao	 S
 Cao	 Liangcai
 Cao	 Caroline G. L.
 Cao	 Shi
 Capi	 G
 Capin	 TK
 Carbonara	 Corey P.
 Cardoso	 Jorge C. S.
 Caria	 A
 Carlow	 Klancy
 Carmen Juan	 M. -
 Carnaghi	 Andrea
 Carnahan	 Patrick
 Carnegie	 Kieran
 Carrasco	 Romina
 Carrasco-Zevallos	 Oscar M.
 Carretero	 A
 Carrozzino	 M
 Carruth	 Daniel W.
 Carulli	 Marina
 Caruso	 Giandomenico
 Carvalho	 Barbara Rangel
 Casanova	 Lorenzo
 Caserman	 Polona
 Casey	 Peter
 Cassin	 Simone
 Casteleira	 Audrey
 Castiello	 U
 Castro-Gonzalez	 David
 Castruccio	 Stefano
 Cattin	 Philippe C.
 Cattozzo	 Giammaria
 Cecil	 J.
 Celikcan	 U
 Cerato	 I
 Cerchiari	 EL
 Cermeron	 Julio
 Cetinic	 Ivona
 Cha	 Young-Woon
 Cha	 KR
 Cha	 Seung Hyun
 Cha	 Ho-Seung
 Cha	 Kyung Ryeol
 Cha	 Baekdong
 Cha	 BR
 Chablat	 D
 Chabra	 Rohan
 Chai	 Chong Chul
 Chai	 Young Ho
 Chalmers	 Alan
 Chambe	 Mathieu
 Chamberlain	 Brent C.
 Chan	 Leith K. Y.
 Chan	 ZYS
 Chandaria	 J
 Chandler	 DL
 Chandra	 Sushil
 Chang	 Shu-Hsuan
 Chang	 Jian
 Chang	 HJ
 Chang	 Chen-Wei
 Chang	 KC
 Chang	 Chien-Yen
 Chang	 Alvin
 Chao	 Chloe M.
 Charles	 Darryl
 Chateau	 Carmela
 Chaudet	 Lionel
 Chaudhary	 Ayesha Hoor
 Chaves	 Keylor
 Checa	 David
 Chellali	 R
 Chempakasseril	 Aditya
 Chen	 Yongxing
 Chen	 Celia S.
 Chen	 Xilin
 Chen	 CH
 Chen	 Xiaojun
 Chen	 Shenshuai
 Chen	 YY
 Chen	 KRB
 Chen	 Hongda
 Chen	 Can
 Chen	 Howard Hao-Jan
 Chen	 XQ
 Chen	 Zhidong
 Chen	 Yu-Li
 Chen	 Mu-Yen
 Chen	 Feng
 Chen	 Zhenzhong
 Chen	 YL
 Chen	 CC
 Chen	 Chen(Crystal)
 Chen	 Sichao
 Chen	 Hung?Jen
 Chen	 Zhibo
 Chen	 SJ
 Chen	 Yang-Sheng
 Chen	 Xiaoming
 Chen	 Elvis C. S.
 Chen	 Hao
 Cheng	 Ping?Yun
 Cheng	 Sarah
 Cheng	 Yongchao
 Cheng	 Kun-Hung
 Cheok	 Adrian David
 Cheong	 Douglas
 Cheong	 Yeram
 Cherep	 Lucia A.
 Chesham	 Alvin
 Chessa	 Manuela
 Chethana	 B.
 Cheung	 Sen-ching S.
 Cheung	 RTH
 Chevaldonne	 M
 Chevassus	 N
 Chheang	 V
 Chiarovano	 E.
 Chiarovano	 E
 Chiba	 S
 Chicchi Giglioli	 Irene Alice
 Chien	 Gary
 Chihara	 K
 Chin	 Seongah
 Chin	 KY
 Chiorri	 Carlo
 Chirivella	 Javier
 Chittaro	 Luca
 Chittaro	 L
 Chmelik	 Jiri
 Cho	 SungIk
 Cho	 Kyungeun
 Cho	 Sungrae
 Cho	 Seoungjae
 Cho	 Hye-Seung
 Cho	 Sungkun
 Cho	 Baek-Hwan
 Cho	 BH
 Choe	 Mungyeong
 Choi	 Kang-min
 Choi	 Hojong
 Choi	 Gyoojae
 Choi	 Geunseop
 Choi	 Seong-Jun
 Choi	 Hyunmin
 Choi	 Hee-soo
 Choi	 Seong Jun
 Choi	 JD
 Choi	 Song-Woo
 Choi	 Youngchyul
 Choi	 Yeongcheol
 Cholewiak	 Steven A.
 Choo	 James
 Choo	 Ho Jung
 Chopra	 V
 Chou	 Ping-Yen
 Chou	 YH
 Chryssolouris	 G
 Chrzan	 Milosz
 Chu	 Veronica C.
 Chu	 Shu-Chuan
 Chua	 C.
 Chua	 C
 Chuang	 TY
 Chung	 GKM
 Chung	 Y
 Chung	 Hyun Chae
 Chung	 CYL
 Chung	 Joanne W.Y.
 Cikajlo	 Imre
 Cinque	 Luigi
 Cipresso	 Pietro
 Cirio	 G
 Civelek	 Turhan
 Clark	 Logan D.
 Clark	 Andrew J.
 Claure	 Houston
 Clayman	 Ralph
 Clendaniel	 LD
 Clifton	 Jeremy
 Cline	 Michael
 Cloutier	 S
 Cobb	 Sue
 Cobb	 SVG
 Cobb	 S
 Cochrane	 Thomas
 Coelho	 Antonio
 Cohen	 Michael F.
 Cohen	 Leedan
 Collett	 James
 Collina	 Simona
 Colton	 M.B.
 Colussi	 Eliane Lucia
 Cometti	 Carole
 Commins	 Sean
 Conde-Mendez	 Gregory
 Conley	 Iian
 Connolly	 KK
 Conradi	 Jessica
 Cook	 Henry E.
 Cook	 Matt
 Coombs	 William T.
 Corcoran	 Kevin
 Cornman	 Jesse
 Corriveau-Lecavalier	 N
 Cosic	 Kresimir
 Coslett	 H. Branch
 Cosma	 Giovanni
 Cosson	 Michel
 Costa	 RM
 Costello	 PJ
 Couture	 Jean-Francois
 Covarrubias	 Mario
 Cowie	 Dorothy
 Coxon	 Matthew
 Coxon	 M
 Cozza	 Marco
 Craig	 Paul A.
 Creem-Regehr	 SH
 Creem-Regehr	 S.H.
 Creem-Regehr	 Sarah H.
 Cremer	 JF
 Crescentini	 Cristiano
 Crisci	 Megan
 Crosbie	 J. H.
 Cudeiro	 J
 Cuenca-Zaldivar	 JN
 Cuesta-Gomez	 A
 Cuevas	 Anthony
 Cugini	 Umberto
 Cui	 Xiaoyu
 Cui	 Feng
 Cunha	 G
 Curry	 Christopher
 Curthoys	 IS
 Cuschieri	 A
 Cvetko	 Steve
 Czub	 Marcin
 D'Agostino	 Michele
 D'Cruz	 M
 D'Zmura	 Michael
 Daems	 Walter
 Dafoulas	 Georgios A.
 Daga	 Fablo B.
 Dahlquist	 Lynnda M.
 Dahlquist	 LM
 Dai	 Zehang
 Dakanalis	 Antonios
 Dakua	 Sarada
 Damlakhi	 Mohamad Shahm
 Dan	 Lilly
 Dang	 Bryan K.
 Daniel	 Sylvie
 Dao	 Nhu-Ngoc
 Darakjian	 Nora
 Darrell	 Trevor J.
 Darvish	 K
 Dasgupta	 Prokar
 Dau	 Torsten
 David	 Y
 Davidenko	 Nicolas
 Davidson	 PR
 Davis	 Thomas P.
 Davis	 SL
 Davis	 Simon
 Dayarathna	 Vidanelage L.
 De	 Suvranu
 De Foe	 Alexander
 De La Pena	 Nonny
 De Luca	 Valerio
 De Nino	 M
 De Paolis	 Lucio Tommaso
 De Paolis	 Lucio T.
 De Santis	 Alberto
 De Turck	 Filip
 De-Juan-Ripoll	 Carla
 Deb	 Shuchisnigdha
 Debruille	 J. Bruno
 Decker	 Julian
 Deemer	 Ashley D.
 Degenaar	 Patrick
 Deggim	 Simon
 Dehner	 C
 Del Signore	 Anthony
 Del Verme	 Laura
 Delage	 E.
 Deng	 Lingyun
 Deng	 Shujie
 Deng	 Zhigang
 Dennison	 Mark
 Dennison	 Mark S.
 Dennison	 Mark Stephen
 Deremeik	 James T.
 Desselle	 Mathilde R.
 Dey	 Sujit
 Di Girolamo	 S
 Di Nardo	 W
 Di Stefano	 Erika
 Dias	 P
 Díaz	 Paloma
 Diaz-Marsa	 Marina
 Didyk	 Piotr
 Diedrick	 Meg
 Diels	 Cyriel
 Diemer	 Julia E.
 Diers	 M
 Dieterich	 M
 Dietrich	 Andre
 Dietrichkeit	 Mona
 Dietz	 Oliver
 Diez	 Helen V.
 Dijksterhuis	 Ap
 Dillinger	 L
 Ding	 Ding
 Dingler	 Tilman
 Dinis	 Fabio Matoseiro
 Diniz-Filho	 Alberto
 Dodds	 TJ
 Doerr	 KU
 Doh-Chul	 Yang
 Dolezal	 Milan
 Dominguez	 Eva
 Donaj	 Gregor
 Donat	 Julia C.
 Dong	 Yajie
 Dong	 Ik Shin
 Dong-Hyung	 Lee
 Doong	 JL
 Dorozhkin	 Denis
 Dorrian	 Jillian
 Dou	 Wenhua
 Doucede	 Guillaume
 Doumas	 Leonidas A. A.
 Dowsett	 Ross
 Dowson	 Christopher G.
 Draelos	 Mark
 Dresing	 Klaus
 Drettakis	 George
 Drewelow	 Grant
 Drnovšek	 Janko
 Drummond	 Jason
 Druskis	 Justinas
 Du	 Haiping
 Du	 Ruofei
 Du	 Jing
 Duane	 JW
 Duane	 Josann W.
 Duffin	 Joseph
 Duh	 HBL
 Duh	 Henry B. -L.
 Duin	 Ann Hill
 Dunlop	 Boadie W.
 Dunn	 G
 Durand	 Fredo
 Durgin	 FH
 Dyszak	 Georg N.
 Eachus	 Peter
 Eckes	 A
 Economou	 Daphne
 Edwards	 Bosede Iyiade
 Efron	 U
 Egan	 Catherine
 Egea Vivancos	 Alejandro
 Egger	 Jan
 Ehlers	 A
 Ehrsson	 H. Henrik
 Ein	 Natalie
 Eisapour	 M
 Eisemann	 Martin
 Ekstrom	 Arne D.
 El Jamiy	 Fatima
 El Rhalibi	 Abdennour
 El-Naggar	 Mohamed Y.
 El-Seoud	 Samir A.
 ElSayed	 Neven A. M.
 Ellermeier	 Wolfgang
 Ellertson	 Anthony
 Elli	 Marco
 Ellis	 A.
 Ellis	 Mathew
 Ellman	 Asko
 Elmqvist	 Niklas
 Elor	 Aviv
 Elsawy	 Amr
 Emmelkamp	 PMG
 Emura	 S
 Encarnacao	 L. Miguel
 Endo	 Takao
 Enislidis	 G
 Ericson	 Mark
 Eriksson	 J
 Eriksson	 Olle
 Eriksson	 Staffan
 Erkut	 Cumhur
 Ernst	 Nathan
 Erolin	 Caroline
 Erra	 Ugo
 Esat	 T
 Esin	 Yury
 Eslami	 Mohammad
 Espeland	 Havard N.
 Esteves	 Augusto
 Eun-Seok	 Kim
 Evans	 Pete
 Evans	 Bryce
 Ewald	 H
 Ewers	 R
 FEINER	 S
 FROHLICH	 B
 Fabbro	 Franco
 Fabroyir	 Hadziq
 Fadeev	 Kirill
 Fagerheim	 Kaia A.
 Fairclough	 SH
 Fairen	 M
 Faith	 MS
 Fajnerova	 Iveta
 Falahee	 M
 Faletto-Passy	 Dominique
 Fan	 CL
 Fan	 Yachun
 Fan	 Mengying
 Fang	 Sandra
 Fanini	 Bruno
 Fantoni	 Carlo
 Farago	 P
 Farah	 Maya F.
 Farbiz	 F
 Farra	 Sharon L.
 Faucher	 LD
 Faure	 Charles
 Faux	 Steven G.
 Fayette	 Dan
 Feintuch	 U
 Feldstein	 Ilja T.
 Felez	 J
 Feller	 Joseph
 Feng	 Junyan
 Feng	 Rui
 Feng	 Xue
 Ferber	 R
 Ferguson	 Charles
 Ferlay	 Fabien
 Fernandez Herrero	 Jorge
 Fernandez-Ruiz	 Yolanda
 Ferrari	 Vincenzo
 Ferre	 Elisa Raffaella
 Ferreira	 C
 Ferreira	 Renato
 Ferrer	 CDR
 Ferrer	 Emilio
 Ferrer-Garcia	 Marta
 Ferrino	 M
 Ferrise	 Francesco
 Fetzick	 Scott
 Fidas	 Christos
 Fidopiastis	 Cali
 Fiebelkorn	 F
 Figl	 M
 Figueiredo	 Lucas
 Filali	 Maroua Salem
 Files	 Benjamin T.
 Filter	 E
 Finan	 Deirdre
 Finch	 M
 Fink	 GR
 Finkenzeller	 Andreas
 Finley	 James M.
 Finseth	 Tor
 Fisher	 Boris
 Fisher	 Donald L.
 Fitzgibbon	 Andrew W.
 Fitzgibbon	 AW
 Flach	 John
 Flavián	 Carlos
 Flinn	 Jeff
 Flint	 Kristina
 Flor	 H
 Flores	 J
 Flores	 Thomas
 Florez	 Julian
 Fluke	 C. J.
 Foell	 J
 Foerster	 Rebecca M.
 Folsom	 Linda C.
 Forbes	 Angus G.
 Foreman	 Stephen
 Foresti	 Gian Luca
 Foster	 Linda
 Foxen-Craft	 Emily C.
 Frady	 Kristin
 Frahm	 Jan-Michael
 France	 Christopher R.
 Francis	 BA
 Franklin	 J.
 Fransson	 Goran
 Frederiksen	 Joakim Grant
 Freeman	 D
 Freina	 Laura
 Freitag	 Sebastian
 Frenz	 H
 Friedman	 D
 Friedman	 Doron
 Frisoli	 A
 Frisoli	 Antonio
 Friston	 Sebastian
 Fromhold	 Mark
 Frost	 Megan
 Fu	 Hanyi
 Fu	 G
 Fu	 Qiang
 Fuchs	 X
 Fuchs	 J.
 Fuchs	 Henry
 Fujikado	 Takashi
 Fujiwara	 Kyoko
 Fujiwara	 Susumu
 Fukuda	 H
 Fukudo	 S
 Fukuoka	 Hiroaki
 Funahara	 Yusuke
 Fung	 CP
 Furness	 TA
 Fusco	 Gabriele
 Fuzheng	 Yang
 GREEN	 M
 GRUNST	 G
 Gabbouj	 Moncef
 Gadia	 Davide
 Gagel	 Philipp
 Gaggioli	 Andrea
 Gagliardo	 Pablo
 Gaia	 E
 Gaisbauer	 Felix
 Gall	 Dominik
 Gall	 Markus
 Gallace	 Alberto
 Gallagher	 Maria
 Gallieni	 Maurizio
 Galpin	 Adam
 Gamito	 Pedro
 Gan	 Woon-Seng
 Ganni	 Bhaskar Rao
 Ganni	 Sandeep
 Gao	 Hongyue
 Gao	 Xiaorong
 Gao	 Zhiyong
 Gao	 Zhongpai
 Gao	 Kaixin
 Gao	 Xin
 Garcia	 AS
 Garcia-Agundez	 Augusto
 García-Alonso	 Alejandro
 Garcia-Campayo	 Javier
 Garcia-Garcia	 Inmaculada
 Garcia-Hernandez	 Ruben Jesus
 Garcia-Palacios	 Azucena
 Garety	 P
 Garrison	 Teena M.
 Gatica-Rojas	 V
 Gautier	 Estelle Jean dit
 Gavarkovs	 Adam G.
 Gavgani	 Alireza Mazloumi
 Gaydadjiev	 Georgi
 Gee	 Laura
 Geelhoed	 E
 Genton	 Marc G.
 Georgiou	 Andreas
 Gerber	 Stephan M.
 Gerig	 Nicolas
 Gernert	 JL
 Gertrudix Barrio	 Manuel
 Geršak	 Gregor
 Gesslein	 Travis
 Geuss	 Michael N.
 Ghita	 Alexandra
 Ghosh	 Sarthak
 Giannopoulos	 E
 Gibby	 Jacob T.
 Gillen	 Glen
 Gilson	 SJ
 Gioia	 Annamaria
 Giphart	 JE
 Girard	 Bruno
 Girard	 Benoit
 Giugni	 Andrea
 Gleasure	 Rob
 Glennerster	 A
 Glennerster	 Andrew
 Glines	 Madison
 Glotzbach	 E
 Glucksman	 E
 Goates	 Michael
 Goebel	 Stefan
 Gogouvitis	 X. V.
 Gokoglu	 Seyfullah
 Golas	 A
 Gold	 Jeffrey I.
 Golding	 Dan
 Golokhvast	 Kirill
 Gomez	 Jocelyn
 Goncalves	 Guilherme
 Goncalves	 G
 Gong	 XL
 Gong	 Huixing
 Gonzalez	 P
 Gonzalez	 Miriam
 Gonzalez	 ED
 Gonzalez-Franco	 Mar
 Gonzalez-Franco	 M
 Gonzalez-Ibanez	 Cristina
 Goodall	 Todd
 Goodnight	 Jessica Morgan
 Goodsitt	 Mitchell
 Goolkasian	 P
 Goonetilleke	 RS
 Goossens	 Richard H. M.
 Gootjes-Dreesbach	 Luise
 Gordon	 NS
 Gospodarek	 M
 Govindaraj	 Satish
 Grabowski	 Andrzej
 Grabowski	 A
 Gracia-Blanes	 Mireia
 Gracitelli	 Carolina P. B.
 Gramann	 Klaus
 Gramopadhye	 Anand K.
 Granato	 Marco
 Graziano	 Alessandro
 Grebner	 C
 Grechkin	 TY
 Green	 C. Shawn
 Green	 Jeremy
 Green	 MFB
 Green	 Katherine A.
 Greene	 David
 Greer	 Trey
 Greitemeyer	 Tobias
 Greunke	 Larry
 Griffin	 Tom
 Griffin	 MJ
 Grime	 John
 Griwodz	 Carsten
 Groenendyk	 Michael
 Grogorick	 Steve
 Groten	 R
 Grotto	 Rosapia Lauro
 Groves	 Leah A.
 Grubert	 Jens
 Grudzewski	 Filip
 Gruenbaum	 PE
 Grzella	 Karsten
 Gu	 Jiaxi
 Gu	 XD
 Gual	 Antoni
 Guan	 CG
 Guan	 Shiqi
 Guangtian	 Zou
 Guarnieri	 Griselda
 Gueita-Rodriguez	 J
 Guerrero	 B.
 Guetl	 Christian
 Guger	 Cristoph
 Guillaume	 F
 Guillon	 Rodrigue
 Guillotel	 Philippe
 Guimaraes	 Ana Sofia
 Guitton	 P
 Guixeres	 Jaime
 Guna	 Jože
 Guo	 MY
 Guo	 Qinglei
 Guo	 Jie
 Guo	 Jichengsi
 Gupta	 Avinash
 Gupta	 Swati
 Gutenko	 Ievgeniia
 Guthrie	 Bradley R.
 Gutierrez-Maldonado	 Jose
 Gutierrez-Maldonado	 Jos
 Gutruf	 Philipp
 Gutworth	 Melissa B.
 Guy	 Emilie
 Guynup	 S.
 Gzik	 Marek
 HOLLOWAY	 R
 Ha	 JS
 Ha	 Hyeyoung
 Ha	 Suk-Gyu
 Haala	 N
 Haberl	 Jack K.
 Hadipriono	 FC
 Hadipriono	 Fabian C.
 Haemmerle	 Isabella
 Haffar	 Maud
 Hagio	 Shota
 Hagita	 Katsumi
 Hahn	 Jim F.
 Hahn	 Joonku
 Hakkinen	 J
 Halabi	 Osama
 Halawani	 Alaa
 Halder	 S
 Halicka	 Juraj
 Halik	 Lukasz
 Halvorsen	 Pal
 Hamada	 H
 Hamedi	 M
 Hamilton	 Michael
 Hampson	 Ralph
 Han	 Sung H.
 Han	 Jungmin
 Han	 Kiwan
 Han	 K
 Han	 JungHyun
 Han	 Bo
 Han	 Ping-Hsuan
 Han	 Sung-Hee
 Han	 Insook
 Hanchuk	 Stephanie
 Hancock	 Sarah M.
 Hand	 C
 Hanel	 R
 Hanhart	 Philippe
 Hanley	 Taylor
 Hann	 Alexander
 Hanna	 G
 Hannuksela	 Miska M.
 Hansen	 C.
 Hansen	 Christian
 Hanzo	 Lajos
 Happee	 Riender
 Harb	 Dana H.
 Harel	 Daphna
 Harjunen	 Ville J.
 Harmon	 Sarah
 Hart	 J.
 Hartanto	 D
 Hartman	 LS
 Hartmann	 Christina
 Harvie	 Daniel S.
 Hasan	 Mahmud
 Hasanbelliu	 Erion
 Hashimoto	 N
 Hashmi	 MSJ
 Hasler	 Pascal W.
 Hassebrock	 Justin A.
 Hatami	 Javad
 Hauru	 Kaisa
 He	 Weiping
 He	 Tianyu
 He	 Zehao
 He	 Ying
 Heeren	 Tjebo
 Heineken	 E
 Hejtmanek	 Lukas
 Helsel	 S
 Henriques	 Steven
 Hensen	 Benedikt
 Henshall	 Gareth I.
 Heo	 Jiwoong
 Heo	 H
 Heo	 Hayoung
 Herbelin	 B
 Herbert	 LJ
 Herbert	 Linda J.
 Herff	 Christian
 Herman	 Lukas
 Hernandez-Molina	 Ricardo
 Hernandez-Mora	 M.
 Hernandez-Serrano	 Olga
 Hernando Barbosa	 Luis
 Herre	 J
 Herrera	 Jose
 Heydrich	 L
 Heynderickx	 I
 Hibbard	 Paul B.
 Hickey	 S
 Hildenbrand	 Dietmar
 Hill	 KJ
 Hill	 Ryan M.
 Hinkenjann	 Andre
 Hinkenjann	 André
 Hinrichs	 K
 Hinrichs	 KH
 Hintermller	 Cristoph
 Hioka	 Yusuke
 Hirohara	 Yoko
 Hirose	 Michitaka
 Hirota	 Masakazu
 Hladky	 Jozef
 Hladky	 J.
 Hlavac	 Michal
 Hnatek	 Leo
 Ho	 Jung-tsung
 Ho	 Li-Hsing
 Ho	 CW
 Ho	 Derek Kwun-hong
 Ho-Jun	 Son
 Hodges	 LF
 Hodgson	 Eri
 Hodgson	 E
 Hodrien	 Andrew
 Hoepfner	 Ole
 Hoffman	 HG
 Hoffman	 Hunter G.
 Hoffman	 David M.
 Hoinville	 T
 Holdershaw	 Judith L.
 Holm	 Anders
 Holmberg	 Jorgen
 Holmes	 Niall
 Holmes	 Dominic
 Holmlund	 Kenneth
 Holopainen	 Jani
 Homayouni	 Maryam
 Homma	 Riken
 Hong	 Min
 Hong	 Taehoon
 Hong	 Injoon
 Hong	 Sung Kwang
 Hong	 Soungkyun
 Hong	 Seong-Kwan
 Hong	 Joo Young
 Hongo	 M
 Honold	 M
 Hood	 LE
 Hoogendyk	 Steve
 Horn	 SB
 Horner	 Rosa
 Hornsey	 Rebecca L.
 Hossain	 M. Anwar
 Hossain	 M. Shamim
 Hotnog	 Jeff
 Hotta	 Aira
 Hou	 Xueshi
 Hou	 Junhui
 Howard	 Matt C.
 Howarth	 PA
 Howes	 Sarah C.
 Hoyano	 Kengo
 Hsieh	 Po-Yuan
 Hsieh	 PL
 Hsu	 Chih-Wen
 Hsu	 CH
 Hu	 Yong
 Hu	 B
 Hu	 Ping
 Hu	 Wenshan
 Hu	 Wei
 Hu	 Wen
 Hu	 Qiang
 Hu	 Zhiming
 Hua	 Hong
 Huai	 Yongjian
 Huang	 Huijle
 Huang	 Jianping
 Huang	 CY
 Huang	 SF
 Huang	 Jiawei
 Huang	 Wen
 Huang	 Xianwei
 Huang	 WS
 Huang	 Shang-Hao
 Huang	 Kaisi
 Huang	 Yen-Zhang
 Huang	 Cheng-Ting
 Huang	 Yi-Pai
 Huang	 Fei-Hui
 Huang	 Weibo
 Huang	 Yonggang
 Huber	 Tobias
 Huber	 T.
 Huber	 K
 Huesgen	 S
 Huffman	 Derek J.
 Hui	 Zhang
 Hujsak	 BD
 Hujsak	 Bryan D.
 Hulin	 Thomas
 Humar	 Iztok
 Humphrey	 L.
 Hung	 SS
 Hung	 Yi-Ping
 Hunt	 W.
 Huo	 Qingze
 Huo	 Yongkai
 Huppert	 Doreen
 Hur	 Hee Jin
 Hussein	 Ealaf Sayed
 Hutabarat	 Windo
 Hutchinson	 Michael
 Hwang	 Jae-In
 Hwang	 Jaejin
 Hwang	 JI
 Hwang	 S
 Hwang	 CJ
 Hyyppa	 Juha
 Hyyppa	 Hannu
 Ibáñez-Sánchez	 Sergio
 Ibarra	 Gerardo
 Ichinose	 A.
 Ida	 Hirofumi
 Ifukube	 T
 Ijaz	 Kiran
 Ikei	 Yasushi
 Iki	 Kazuhisa
 Ilie	 Adrian
 Iloreta	 Alfred
 Im	 Chang-Hwan
 Im	 Youngjae
 Inamura	 Tetsunari
 Inarra	 Susana
 Ino	 S
 Inomata	 Kazunori
 Inoue	 Yuji
 Insa	 E
 Inui	 N
 Ip	 Edward H.
 Ip	 Horace Ho Shing
 Iqbal	 Waheed
 Iqbal	 Asif
 Irimia	 Danut Constantin
 Irle	 E.
 Irlitti	 Andrew
 Isabel Suero	 Maria
 Ishikawa	 Atsuya
 Isin	 Lale
 Ito	 Kenichiro
 Ito	 Masaru
 Itoh	 Yuta
 Ivanenko	 YP
 Iwai	 Daisuke
 Iwakabe	 Yasushi
 Iwata	 Hiroyasu
 Izatt	 Joseph
 Izumi	 Shin-ichi
 Izumi	 Shin-Ichi
 Jackson	 Kathy Lou
 Jackson	 Daniel
 Jacucci	 Giulio
 Jahn	 K
 Jakimowicz	 Jack
 Jakob	 Stephan M.
 Jallouli	 Anas
 James	 Ryan
 James	 Allan R.
 Jang	 Ho Jin
 Jang	 BT
 Jang	 Han Lee
 Jang	 Dong Pyo
 Jang	 Youngkyoon
 Jang	 Yu-Ping
 Jang	 Y
 Jang	 Ju Yeun
 Jang	 Woncheol
 Jankowski	 Jaros?aw
 Jankowski	 J
 Jann	 Kay
 Jansen	 Wouter
 Jaradat	 Raed
 Jardon-Huete	 A
 Jarsaillon	 Pierre J.
 Jarvenpaa	 T
 Jarvis	 C
 Javan	 Ramin
 Jeitziner	 Marie-Madlen
 Jeng	 MC
 Jenkins	 Keith G.
 Jeon	 Young-Tae
 Jeon	 Han Jae
 Jeon	 Bomyi
 Jeon	 Jin Yong
 Jeon	 Ikbeom
 Jeong	 S
 Jeong	 JiYoon
 Jeong	 Seongwook
 Jeong	 Kisung
 Jeppsson	 Mattis
 Jerald	 Jason
 Jez	 Marco
 Ji	 Hongyu
 Ji	 YK
 Ji	 Haru Hyunkyung
 Ji	 Bowen
 Jia	 Feiyong
 Jian	 Chuyao
 Jiang	 Haiyan
 Jiang	 BC
 Jiang	 S
 Jiang	 Guohua
 Jiang	 Yi
 Jiang	 Jianmin
 Jiao	 Y
 Jiao	 Wenhua
 Jimenez	 E
 Jimenez Fernandez-Palacios	 Belen
 Jimeno	 Monica
 Jin	 Guo-Fan
 Jin	 Xiaogang
 Jin	 Guofan
 Jin	 Haiyan
 Jo	 Hyun In
 Johansen	 Dag
 Johnson	 Sarah
 Johnson	 Michael T.
 Johnston	 Lucy
 Johnston	 Angus P. R.
 Johnston	 Jed
 Jones	 KK
 Jones	 Daniel B.
 Jones	 Stephanie B.
 Jones	 SB
 Jones	 Parker
 Jones	 Ted
 Jones	 RD
 Jordan	 Xavier
 Jordan	 JD
 Jorge	 JA
 Joseph	 Michael H.
 Joseph	 A
 Joshi	 A
 Josman	 N
 Jost	 Tyler A.
 Jost	 Patrick
 Jota	 R
 Jouvent	 R
 Jovanovic	 Tanja
 Juan	 MC
 Juliano	 Julia M.
 Julin	 Arttu
 Jun	 Hyun-Kyu
 Jung	 Eui S.
 Jung	 Sunhye
 Jung	 Sang Hoon
 Jung	 Jinki
 Jung	 Su-min
 Jung	 Yong Ju
 Jung	 Malte
 Jung	 HY
 Jung-Ho	 Kim
 Jurda	 Mikolas
 Jurik	 Vojtech
 Jurkojc	 Jacek
 KRAMER	 JL
 KRUGER	 W
 Kacic	 Zdravko
 Kageyama	 Akira
 Kalarat	 Kosin
 Kaler	 Kamaljot S.
 Kameda	 Y
 Kammoun	 Fahmi
 Kamping	 S
 Kan	 Tuna
 Kan	 Peter
 Kanbara	 M
 Kanda	 Hiroyuki
 Kang	 Hyunjeong
 Kang	 Jian
 Kang	 Yusi
 Kang	 HK
 Kang	 YJ
 Kang	 Jiyoung
 Kang	 J
 Kang	 YooSeok
 Kang	 In Byeong
 Kang	 Suk-Ju
 Kani	 K
 Kant	 Alexis J.
 Kapeller	 Christoph
 Kaplan	 David M.
 Kaplanyan	 Anton S.
 Kaplanyan	 Anton
 Karageorghis	 Costas I.
 Kardong-Edgren	 Suzan
 Karduna	 Andrew R.
 Karimi	 Mojtaba
 Kashem	 Rashed
 Kassouha	 Ammar
 Kastanis	 I
 Katada	 S
 Katayama	 Akihiro
 Kathner	 I
 Kato	 Hirokazu
 Katsigiannis	 Stamos
 Katz	 N
 Kaufman	 AE
 Kaufman	 Arie E.
 Kaufman	 Arie
 Kaufmann	 Hannes
 Kautz	 Jan
 Kautz	 J
 Kawai	 Ryuta
 Kawakami	 O
 Kawakita	 T
 Kawara	 T
 Kawashima	 R
 Kazempourradi	 Seyedmandi
 Kearney	 JK
 Keenan	 Lisa
 Kehrer	 J.
 Keim	 D. A.
 Keinrath	 C
 Keir	 Peter J.
 Keiriz	 Johnson J. G.
 Keller	 Brenton
 Kellner	 F
 Kelly	 Nathan
 Kelly	 J
 Kelly	 Jonathan W.
 Kelly	 Jennifer
 Kelly	 Debbie M.
 Kennedy	 Jessie
 Kenney	 Laurence
 Kenntner-Mabiala	 Ramona
 Kent	 Michael
 Kerherve	 Hugo A.
 Kerin	 Mairi
 Kermer	 C
 Kern	 Angelika C.
 Kersten	 Thomas P.
 Kersten	 Thomas Peter
 Kesavadas	 T.
 Keshner	 E
 Keshner	 EA
 Kessler	 Klaus
 Kesztyues	 T.I.
 Ketelaars	 Loes E. H.
 Keum	 Nack-Hyeon
 Khaderi	 Khizer R.
 Khamene	 A
 Khan	 Muhammad Shamim
 Khan	 Muhammad Sikandar Lal
 Kho	 Song Y.
 Khooshabeh	 Peter
 Khoroshikh	 Pavel
 Khurana	 Aman
 Khuu	 SK
 Kilteni	 K
 Kilteni	 Konstantina
 Kim	 Tae-Kyun
 Kim	 Seongki
 Kim	 IY
 Kim	 Aram
 Kim	 Chan-Hyung
 Kim	 Jungho
 Kim	 Hyun K.
 Kim	 Jonghyun
 Kim	 S
 Kim	 Hyunjeong
 Kim	 Y
 Kim	 Jin-Hee
 Kim	 Yun Ki
 Kim	 L
 Kim	 J. Y.
 Kim	 Sung Min
 Kim	 Chanhun
 Kim	 Sun I.
 Kim	 Sun-Jeong
 Kim	 Dohyeon
 Kim	 Martha
 Kim	 JungYoon
 Kim	 Hyosun
 Kim	 Hyounghun
 Kim	 Sang-heon
 Kim	 Jae-Jin
 Kim	 SeungYeop
 Kim	 K
 Kim	 Gyeonghoon
 Kim	 DH
 Kim	 Ki-Hong
 Kim	 Jin Ha
 Kim	 Hyung-Jong
 Kim	 JJ
 Kim	 Jung-Ho
 Kim	 Kibum
 Kim	 Seong-Pil
 Kim	 Dongho
 Kim	 MyoungGon
 Kim	 Jeong Ho
 Kim	 Eunjoo
 Kim	 Yongwan
 Kim	 Kwanguk
 Kim	 Mingyu
 Kim	 Yong Sun
 Kim	 Hyoung-Gook
 Kim	 Jinmo
 Kim	 Youchang
 Kim	 Hwi
 Kim	 Nam-Gyoon
 Kim	 Saebyul
 Kim	 SK
 Kim	 In Young
 Kim	 Kwanguk (Kenny)
 Kim	 Sungyeup
 Kim	 YS
 Kim	 JY
 Kim	 Donghyun
 Kim	 GerardJounghyun
 Kim	 Tae Wan
 Kim	 Juno
 Kim	 Beom-Su
 Kim	 Youngmin
 Kim	 Joohwan
 Kim	 Seung-Hyun
 Kim	 Hyun-Wook
 Kim	 J
 Kim	 SI
 Kim	 Joongheon
 Kim	 Mugeon
 Kim	 Soo-Kyun
 Kim	 Andrea S.
 Kim	 CH
 Kim	 TK
 Kimura	 Kazushige
 Kimura	 Shunichi
 Kimura-Thollander	 Philippe
 Kinateder	 Max
 King	 Marcus
 King	 Danielle
 King	 Corey
 Kirn	 BongHoon
 Kirwan	 Grainne H.
 Kishore	 Sameer
 Kitahara	 I
 Kitazaki	 Michiteru
 Kizony	 R
 Klamma	 Ralf
 Klesel	 Brenna C.
 Klimova	 Oxana A.
 Klimova	 OA
 Klippel	 Alexander
 Kloos	 U
 Knaut	 LA
 Kneist	 W.
 Kneist	 Werner
 Knobel	 Samuel E. J.
 Knodler	 Michael
 Knorlein	 Benjamin
 Koch	 R
 Kodama	 Yuuki
 Kodesh	 E
 Kohler	 Mark
 Kohli	 L
 Kojs	 Juraj
 Kolivand	 Hoshang
 Kollin	 Joel S.
 Komachi	 Y
 Komogortsev	 Oleg V.
 Komura	 Taku
 Komura	 Shinichi
 Kong	 Z
 Konge	 Lars
 Konidaris	 George
 Konrad	 Robert
 Koo	 Choongwan
 Koo	 Ja-Won
 Kooijman	 Lars
 Koomhin	 Phanit
 Kopf	 Johannes
 Kopper	 R
 Koprowski	 Brion
 Koren	 Istvan
 Korhonen	 Arto
 Korpi	 Michael F.
 Korves	 B
 Kot	 Tomas
 Kotani	 Akira
 Koulieris	 George Alex
 Koulieris	 G. A.
 Kounlaxay	 K
 Kourtesis	 Panagiotis
 Koutsabasis	 Panayiotis
 Kouzaki	 Motoki
 Kovalev	 AI
 Kovalev	 Artem I.
 Kovar	 Jiri
 Kozachuk	 James
 Koziol	 Scott
 Kozulin	 P
 Kramberger	 Iztok
 Kramer	 PD
 Kramer	 M
 Kramida	 Gregory
 Kranzlmueller	 Dieter
 Krasovsky	 Ta
 Kraus	 M
 Kraus	 M.
 Krichenbauer	 Max
 Krieger	 Eva
 Krijn	 M
 Kristensen	 Christian H.
 Kristensson	 Per Ola
 Krokos	 M.
 Krokos	 Eric
 Kroupa	 Jiri
 Kruijff	 Ernst
 Krum	 David M.
 Krusienski	 Dean J.
 Ku	 Jeonghun
 Ku	 J
 Kuang	 Ying
 Kubali	 E
 Kubbat	 W
 Kubicek	 Petr
 Kubler	 A
 Kuchenbecker	 Katherine J.
 Kuhl	 S
 Kuhlen	 Torsten W.
 Kuiper	 Ouren X.
 Kuipers	 E
 Kulpa	 Richard
 Kumagaya	 S.
 Kumar	 Pavan B. N.
 Kumar	 Yadav Sunil
 Kuniyoshi	 Y.
 Kuno	 S
 Kunz	 BR
 Kunze	 Kai
 Kuo	 Hung-Jen
 Kuo	 Ting-chang
 Kuo	 Anthony
 Kupka	 Tomas
 Kuppam	 Veera Aneesh
 Kurita	 Yuichi
 Kurniawan	 Sri
 Kuroda	 T
 Kuth	 Bastian
 Kwak	 Jeonghun
 Kwak	 Youngshin
 Kweon	 Il-Joo
 Kwon	 Oh-Hyun
 Kwon	 Chongsan
 Kwon	 Ohung
 Kwon	 Oh-Kyong
 Kwon	 Soon-Chul
 Kwon	 Soonchul
 Kyriakakis	 C.
 LIANG	 JD
 La Femina	 Peter
 Laaki	 Heikki
 Labbé-Pinlon	 Blandine
 Laha	 B
 Lai	 Chengyuan
 Lajoie	 Yves
 Lam	 BF
 Lam	 Bhan
 Lambeta	 M
 Lamontagne	 A
 Lamour	 R
 Landau	 L
 Landman	 Jaime
 Lang	 Hauke
 Lang	 H.
 Langbehn	 Eike
 Lange	 Belinda
 Langseth	 Ragnar
 Lanman	 D
 Lappe	 M
 Lappe	 Markus
 Lapresa	 Michele
 Larsson	 Daniel
 Latham	 K
 Latorre	 Jorge
 Latoschik	 Marc Erich
 Lau	 Henry Y. K.
 Lau	 Rynson W.H.
 Laufer	 Y
 Laukkanen	 S
 Launonen	 R
 Laurell	 Christofer
 Laurijssen	 Dennis
 Lavoie	 Raymond
 Law	 EF
 Lawrence	 PJ
 Lazic	 Marko
 Lazkanotegi	 Inigo
 Leahy	 Michael J.
 Leahy	 Diarmuid
 Leanza	 Federica
 Lecuyer	 A
 Lee	 Hyo-Jeong
 Lee	 Grace
 Lee	 Jae Yeol
 Lee	 M
 Lee	 Uichin
 Lee	 Kyungwon
 Lee	 Hsin-Hseuh
 Lee	 ChanMi
 Lee	 Jun Yeob
 Lee	 Yang Sun
 Lee	 Jungyup
 Lee	 Seung Hee
 Lee	 JH
 Lee	 W. H.
 Lee	 Sang Hyeok
 Lee	 Byoungho
 Lee	 Kyeongbong
 Lee	 Dukho
 Lee	 Seung-Hyun
 Lee	 Siyeong
 Lee	 Jiwon
 Lee	 KF
 Lee	 General
 Lee	 Yong Hee
 Lee	 Jang-Han
 Lee	 Donggeon
 Lee	 Chang-Hee
 Lee	 SM
 Lee	 Sang Hwa
 Lee	 Sung-Jin
 Lee	 Kyuho
 Lee	 Sungjin
 Lee	 SH
 Lee	 Eun-Young
 Lee	 Yea Som
 Lee	 Byong Kwon
 Lee	 KunHyuk
 Lee	 Tzu-Kuei
 Lee	 Kyogu
 Lee	 Seung Jae
 Lee	 RG
 Lee	 Jang Han
 Lee	 G
 Lee	 Juyoung
 Lee	 Jung Seop
 Lee	 F
 Lee	 Gyuchang
 Lee	 Jung
 Lee	 Yun-Han
 Lee	 WH
 Lee	 Irene
 Lee	 Sang-Lyn
 Lee	 SY
 Lee	 Youngki
 Leeb	 R
 Lefebvre	 Stephanie
 Lefohn	 Aaron
 Leggett	 James
 Lei	 Zhongcheng
 Leimkuhler	 Thomas
 Leinen	 P
 Leitkam	 Samuel T.
 Lemay	 Martin
 Lennon	 S.
 Leonardis	 Daniele
 Leotta	 Alfio
 Leow	 Alex D.
 Lepcha	 Anjali
 Lerma	 JL
 Lesjak	 Isabel
 Lesmana	 Raymond
 Leung	 KS
 Levin	 MF
 Leyrer	 M
 Li	 Heng
 Li	 Shiying
 Li	 Suna
 Li	 XG
 Li	 Yue
 Li	 Jie
 Li	 Yi-Na
 Li	 Dan
 Li	 H
 Li	 Yiming
 Li	 Z
 Li	 Jin
 Li	 Jing
 Li	 Xing
 Li	 Yi
 Li	 Haibo
 Li	 ZT
 Li	 Mengtong
 Li	 Hao
 Li	 Yongmin
 Li	 Dengfeng
 Li	 Katie
 Li	 Hong
 Li	 Changyang
 Li	 Ye
 Li	 Shaohui
 Li	 Hongle
 Li	 Ruixuan
 Li	 Meng
 Li	 G
 Li	 Ta-Wei
 Li	 HJ
 Li	 Sheng
 Li	 Baichun
 Li	 Ranyang
 Liang	 Mingli
 Liang	 Zhipeng
 Liang	 Wei
 Liang	 Hui
 Liang	 Hai-Ning
 Liaño	 V.
 Libessart	 Aurelien
 Liew	 Sook-Lei
 Liew	 S. -L.
 Lilja	 Andrew
 Lim	 Young Jin
 Lim	 Joseph J.
 Lim	 Eun-Cheon
 Lim	 Sungjin
 Lin	 Chiuhsiang J.
 Lin	 CJ
 Lin	 Cyrus
 Lin	 CY
 Lin	 Jih-Hsuan Tammy
 Lin	 Chien-Chun
 Lin	 Chiuhsiang Joe
 Lin	 JH
 Lin	 Ting-Hsuan
 Lin	 RT
 Lin	 M
 Lin	 Ming C.
 Lin	 CS
 Lin	 CL
 Lin	 QF
 Lin	 Qiaojuan
 Linares	 Ricardo
 Lindeman	 R
 Lindsay-Decusati	 Rebecca
 Lindstaedt	 Maren
 Linehan	 Marsha M.
 Ling	 Y
 Linkenauger	 SA
 Litleskare	 Sigbjorn
 Liu	 Sen
 Liu	 Yebin
 Liu	 Xiaomin
 Liu	 Yiming
 Liu	 Juan
 Liu	 Hexu
 Liu	 Yue
 Liu	 YJ
 Liu	 Sheng
 Liu	 Iou-Shiuan
 Liu	 Zizheng
 Liu	 Weiqi
 Liu	 Qiang
 Liu	 Feiyang
 Liu	 Jicheng
 Liu	 Jin
 Liu	 Shijuan
 Livatino	 Salvatore
 Liverani	 A
 Llinares	 Carmen
 Llobera	 J
 Llorens	 Roberto
 Loetscher	 Tobias
 Loftus	 M
 Lohmann	 Rudiger
 Lombart	 Cindy
 Lopez	 Richard
 Lopez	 Maria Murcia
 Lopez del Hoyo	 Yolanda
 Lorenzo	 Gonzalo
 Lott	 Alison
 Lou	 JW
 Louison	 Céphise
 Loup	 Guillaume
 Loup-Escande	 Emilie
 Love	 Gordon D.
 Lovell	 Nigel H.
 Lovell	 NH
 Lovreglio	 Ruggiero
 Lu	 Xinran
 Lu	 ZW
 Lu	 Wei
 Lu	 Feiyu
 Lu	 Yao
 Luan	 Haiwen
 Lubetzky	 AV
 Lubetzky	 Anat V.
 Lubetzky	 V
 Lucaites	 KM
 Lucas	 Jason
 Luebke	 David
 Luebke	 D
 Luis Higuera-Trujillo	 Juan
 Luis Perez	 Angel
 Luján Rodríguez	 Guillermo
 Lund	 Kasper Duemose
 Lundin-Olsson	 Lillemor
 Lungaro	 Pietro
 Luo	 Bicheng
 Luo	 Jie
 Luo	 Chengwen
 Luo	 Xi
 Luo	 Hao
 Luo	 Haizhen
 Lupu	 Robert Gabriel
 Lv	 Hao
 Lv	 Zhihan
 MACINTYRE	 B
 MENG	 THY
 MING	 OY
 Ma	 Xiaozhe
 Ma	 Kwan-Liu
 Ma	 M.
 Ma	 Junfeng
 Ma	 Heng
 Ma	 CY
 Ma	 L
 Ma	 Minhua
 Maaskant	 Pleun
 Maass	 H
 Mac Gregor	 Dougal
 MacAskill	 MR
 MacDougall	 HG
 MacDougall	 H.
 MacIver	 Malcolm A.
 MacPhail	 AJC
 MacPherson	 Sarah E.
 Macchione	 Nicola
 Machinaka	 H
 Maciel	 Anderson
 Mackintosh	 Bundy
 Macuga	 Kristen L.
 Madathil	 Kapil C.
 Madathil	 Kapil
 Madeira	 J
 Mady	 Amr S.
 Maereg	 Andualem Tadesse
 Maffei	 Luigi
 Magail	 Jerome
 Magdalon	 EC
 Maggiorini	 Dario
 Magnor	 Marcus
 Maguire	 Eleanor A.
 Maher	 Sheryl
 Maiello	 Guido
 Maimone	 Andrew
 Main	 Kelley
 Majumder	 Aditi
 Makransky	 Guido
 Malandrino	 Delfina
 Malik	 Muhammad Kamran
 Malkawi	 AM
 Maloca	 Peter M.
 Malone	 LC
 Malpica	 S.
 Man	 Ka Lok
 Manders	 C
 Mangeruga	 Marino
 Mania	 K.
 Mania	 K
 Mania	 Katerina
 Maniam	 Pavithran
 Manocha	 D
 Manocha	 Dinesh
 Manser	 Kelly
 Mantiuk	 R. K.
 Mantiuk	 Rafal K.
 Maples-Keller	 Jessica L.
 Marchal	 M
 Marchetti	 Luca
 Marchetto	 Jonathan
 Marfia	 Gustavo
 Marianovsky	 E
 Marin-Morales	 Javier
 Marini	 Marco Raoul
 Marino	 Joseph
 Markkanen	 J
 Markus	 LA
 Marner	 Michael R.
 Maroto	 J
 Marran	 L
 Marschall	 Marton
 Marseille	 C.
 Marsh	 Tim
 Marsh	 Anthony P.
 Marsh	 Ronald
 Martel	 Erin
 Martin	 L
 Martinez	 D
 Martinez	 J
 Martinez	 ML
 Martinez Soto	 Juan Manuel
 Martinez-Mallen	 Esteve
 Martínez-Navarro	 Jesus
 Martins	 Joao Pocas
 Maruna	 CC
 Masfrand	 Stephane
 Masia	 B.
 Masmoudi	 Nouri
 Massof	 Robert W.
 Masullo	 Massimiliano
 Masumoto	 J
 Matani	 A
 Matsangidou	 Maria
 Matsumoto	 Keigo
 Matsumura	 Masayo
 Matsuo	 A
 Matsushima	 Toshiharu
 Matsuzaki	 Kazutoshi
 Matteucci	 PB
 Mattila	 Osmo
 Matzen	 Kevin
 Mavridou	 I
 Maxhall	 Marcus
 Mayer	 RE
 Mayer	 Richard E.
 Mayo	 Johnathan
 Mayor	 Jesus
 Mayorga	 David
 Mazurek	 Grzegorz
 Mazzurega	 Mara
 McBride	 CM
 McBrien	 NA
 McComas	 Joan
 McConnell	 Daniel S.
 McCorriston	 Michael
 McDonough	 Suzanne
 McDonough	 S. M.
 McDowell	 Alexander
 McFadyen	 BJ
 McGee	 JS
 McGhee	 John
 McGill	 Mark
 McGovern	 Eavan
 McGrath	 Megan
 McKenna	 Aisling
 McKenna	 KD
 McKenzie	 Chris
 McNeely	 WA
 McNeill	 M. D. J.
 Mcmahan	 Ryan P.
 Medeiros	 Felipe A.
 Meentemeyer	 Ross K.
 Megali	 Giuseppe
 Mehlitz	 M.
 Mehra	 R
 Meilinger	 T
 Meissner	 M
 Melo	 M
 Melo	 Miguel
 Memon	 Azam Rafique
 Memon	 Khuhed
 Mendez	 MF
 Mendez-Rebolledo	 G
 Meng	 Xiaoxu
 Meng	 Xiangxiang
 Menshikova	 Galina Ya.
 Menshikova	 GY
 Menzies	 R. J.
 Mercado Borja	 William Enrique
 Merchant	 J
 Meric	 Muge
 Merienne	 F
 Mestre	 Daniel R.
 Mesure	 G.
 Meyer	 Walter J.
 Meyer	 III
 Micarelli	 Alessandro
 Micarelli	 Beatrice
 Micarelli	 Domenico
 Micaroni	 Lorenzo
 Miceu	 Piero
 Michaelis	 Jessica R.
 Michaelsen	 SM
 Michalski	 Stefan Carlo
 Miche	 Yoan
 Michnik	 Robert
 Michopoulos	 Vasiliki
 Midwinter	 Mark J.
 Mihajlovic	 Zeljka
 Mihalik	 JP
 Mijakovska	 Svetlana
 Mikropoulos	 Tassos A.
 Millan	 Elena
 Miller	 Alexander
 Miller	 Ian
 Miller	 Gavin S. P.
 Millesi	 W
 Millis	 Scott R.
 Min	 Xiongkuo
 Mirhosseini	 Seyedkoosha
 Mirzaei	 MA
 Mirzaei	 Mohammadreza
 Mitchell	 Kenny
 Mittal	 Ashutosh
 Mittelstaedt	 Justin Maximilian
 Mittelstaedt	 Justin
 Miyagawa	 Suguru
 Miyake	 Y
 Miyazaki	 K
 Miyoshi	 Tomomitsu
 Modrego-Alarcon	 Marta
 Moen	 Erick
 Mohapatra	 Sambit
 Mohler	 BJ
 Mohler	 Betty
 Moioli	 Renan C.
 Mojzis	 Peter
 Mol	 Jantsje M.
 Moldoveanu	 Alin
 Molina	 JP
 Molina	 Marcos
 Molla	 Ramon
 Mon-Williams	 M
 Mon-Williams	 Mark
 Mondon	 Silvia
 Monna	 Fabrice
 Monras	 Miquel
 Monras-Arnau	 Miquel
 Monteiro	 Diego
 Monteiro	 Pedro
 Montero Montes	 Alvaro
 Moody	 A
 Moon	 Jae
 Moore	 Todd
 Moosburner	 Simon
 Moosburnerl	 Simon
 Morabito	 Daniele
 Morais	 Diogo
 Moreau	 Guillaume
 Moreno	 Aitor
 Moreno	 Manuel
 Moreno	 R
 Moreno-Perez	 Elena
 Mori	 Takayuki
 Morimoto	 Takeshi
 Morina	 N
 Morioka	 Shu
 Morioka	 S.
 Moritz	 Steffen
 Moro	 Christian
 Morrison	 Ben
 Morse	 SE
 Mosca	 Franco
 Moser	 Kenneth
 Moshfeghi	 Andrew A.
 Mosimann	 Urs P.
 Mosso Lara	 José Luis
 Mosso Lara	 Dejanira
 Mosso Vazquez	 Jose Luis
 Mosso Vázquez	 José Luis
 Mountain	 Rodney
 Mourant	 RR
 Mourtzis	 D
 Mousas	 Christos
 Moussavi	 Zahra
 Moussavi	 Z
 Mowrey	 Corinne M.
 Moyes	 J
 Mu	 GG
 Muehlberger	 Andreas
 Muelder	 Chris
 Mueller	 Joerg
 Mueller-Spahn	 Franz
 Mueri	 Rene M.
 Muhlberger	 A
 Mühlberger	 Andreas
 Mujber	 TS
 Muldner	 Kasia
 Muldoon	 Meghan
 Munafo	 Justin
 Mundy	 Peter
 Murata	 Takahiro
 Murata	 T
 Muravyev	 N. V.
 Muri	 Rene M.
 Muroi	 Daisuke
 Murray	 Geoffrey
 Murray	 Brooke
 Mursic	 Rebecca
 Muscato	 Giovanni
 Mushtaq	 Faisal
 Mwanahamuntu	 Mulindi
 Myall	 DJ
 Myoung	 Jae-Min
 Na	 Kun-Hoo
 Na	 Woongsoo
 Naceri	 A
 Nagahara	 H
 Nagao	 Ryohei
 Nagar	 Atulya
 Nagata	 S
 Nagel	 Matthias
 Naghdy	 Fazel
 Naghdy	 Golshah
 Nahm	 Francis Sahngun
 Nahrstedt	 Klara
 Nai	 Weizhi
 Naish	 Jonathan
 Naismith	 Sharon L.
 Nakajima	 M
 Nakamura	 Hiroaki
 Nakamura	 S
 Nakane	 T
 Nakano	 C. Masato
 Nalevska	 Gorica Popovska
 Nalivaiko	 E
 Nalivaiko	 Eugene
 Nam	 SangHun
 Nandakumar	 Krithika
 Nanjappan	 Vijayakumar
 Nanka	 S
 Narasimham	 G
 Narciso	 David
 Narumi	 Takuji
 Nasu	 Y
 Natale	 Danielle M.
 Natapoff	 A
 Naujoks	 M
 Navab	 Nassir
 Navarrete-Cardero	 Luis
 Navarro	 S
 Navarro	 Nicolas
 Navarro	 Xavi
 Navarro-Haro	 Maria V.
 Nawaz	 Zubair
 Nay	 Kevin
 Nayak	 Samir Ranjan
 Naylor	 Matthew
 Nduka	 C
 Neale	 H
 Nedel	 Luciana
 Nedelkovski	 Igor
 Nee	 AYC
 Nee	 A. Y. C.
 Neerincx	 Mark A.
 Nef	 Tobias
 Neff	 Chris
 Nefs	 HT
 Nehrujee	 Aravind
 Neil	 Mark
 Nelson	 Bradley
 Nelson	 KM
 Nelson	 Michelle R.
 Nemeth	 Zoltan A.
 Nemeth	 ZA
 Nesbitt	 KV
 Nesbitt	 Keith V.
 Nesbitt	 Keith
 Neubauer	 Daniel
 Neumann	 U
 Neumann	 U.
 Neumayer	 M
 Neuper	 C
 Neves	 Barbara Barbosa
 Neveu	 M
 Newbutt	 Nigel
 Newman	 Bradley
 Ng	 Adrian K. T.
 Ng	 Jacobus K.F.
 Ngoc	 Nam P.
 Nguyen	 Brian J.
 Nguyen	 TD
 Nguyen	 D. V.
 Nicholls	 A
 Nichols	 S
 Nichols	 SC
 Niehorster	 Diederick C.
 Nielsen	 Marc
 Nierula	 Birgit
 Niessner	 Matthias
 Nilsen	 Dawn M.
 Nilsson	 Niels C.
 Nilsson	 Daniel
 Nilsson	 Niels Christian
 Ning	 Xin
 Nishimura	 Hidekazu
 Nitta	 S
 Niwa	 Kenta
 Nobel-Jorgensen	 Morten
 Noe	 Enrique
 Noh	 ST
 Noh	 Yong Young
 Nomikou	 P.
 Nomura	 Yoshihiko
 Nonaka	 Makoto
 Nordahl	 Rolf
 Nordin	 Fredrik
 Normand	 JM
 Normand	 Jean-Marie
 Norrby	 M
 Norrholm	 Seth Davin
 North	 Max M.
 North	 Sarah
 Novak	 Petr
 Nunnerley	 Joanne
 Nussipova	 Gulnar
 Nyberg	 Lars
 O'Connor	 Patrick J.
 O'Hare	 David
 O'Leary	 Mitchell
 O'Leary-Kelley	 Colleen
 O'Riordan	 Sean
 Oakley	 Ian
 Oba	 H
 Obradovic	 Ratko
 Obradovic	 Jelena
 Obrzut	 Sebastian
 Odette	 Katy L.
 Odin	 Anais
 Oelke	 D.
 Ofek	 Eyal
 Ogi	 Tetsuro
 Ogoshi	 Yasuhiro
 Oh	 Eui-Yeol
 Oh	 BM
 Ohira	 Masahiro
 Ohka	 M
 Ohki	 Yukari
 Ohmi	 M
 Ohno	 R
 Oiknine	 Ashley H.
 Ojal	 Sushant
 Ojeda	 Luciano
 Okhunov	 Zhamshid
 Okumura	 Haruhiko
 Okunev	 Mikhail
 Okura	 F
 Olasky	 Jaisa
 Olivas	 A
 Oliveira	 Jorge
 Oliver	 Nick
 Oliver	 JH
 Olson	 Ashley
 Olszewski	 Kyle
 Olszewski	 K
 Oman	 CM
 Omand	 Melissa M.
 Ona-Simbana	 ED
 Onda	 Y
 Ong	 SK
 Ong	 S. K.
 Ong	 Zhen-Ting
 Ooi	 Kenneth
 Oouchida	 Yutaka
 Oprean	 Danielle
 Ortega	 Lluisa
 Orús	 Carlos
 Oshiro	 O
 Osumi	 M.
 Osumi	 Michihiro
 Otake	 Yuko
 Otkhmezuri	 Boris
 Ott	 Renaud
 Ottaviani	 F
 Otte	 Alexander
 Otto	 Michael
 Ouellet	 É
 Ouhyoung	 M
 Owyong	 Michael
 Oyekoya	 Wole
 Ozkan	 Gozde Enc
 Pa	 Judy
 Paciorkowski	 Alex R.
 Padmanaban	 Nitish
 Paepcke-Hjeltness	 Verena
 Pagano	 CC
 Pagano	 A
 Page	 Sarah
 Pahud	 Michel
 Pai	 Yun Suen
 Pair	 J
 Paizis	 Christos
 Pal	 Mahendra Kumar
 Palacios-Cena	 D
 Palaneer	 Sharanya
 Palicte	 Jeland S.
 Paljic	 Alexis
 Palluel	 Estelle
 Palmisano	 S
 Palmisano	 Stephen
 Palombini	 A
 Paludetti	 G
 Pan	 CX
 Pan	 Ye
 Pan	 Junjun
 Pan	 Jeng-Shyang
 Pan	 Tien-Szu
 Panchal	 Nishant
 Pannone	 Daniele
 Papadopoulos	 C
 Papaefthymiou	 Margarita
 Papagiannakis	 George
 Papangelis	 Konstantinos
 Pardo	 Pedro J.
 Parger	 Mathias
 Parham	 Groesbeck
 Parham	 Groesbeck P.
 Parikh	 Pratik J.
 Park	 Jae-Hyeung
 Park	 J
 Park	 Gangrae
 Park	 Choul Yong
 Park	 Wonjun
 Park	 Jeong Hye
 Park	 San
 Park	 SW
 Park	 Joon-Sang
 Park	 Taiwoo
 Park	 Seongjun
 Park	 Kyeong-Beom
 Park	 Jin Young
 Park	 Seonghun
 Park	 Junyoung
 Park	 Seongwook
 Park	 CI
 Park	 Jisun
 Park	 Jin-Woo
 Park	 Jaehyun
 Park	 Kyudong
 Parker	 DE
 Parkhomenko	 Egor
 Parmar	 Dhaval
 Parrish	 II
 Parton	 Robert G.
 Parvinen	 Petri
 Paschold	 M.
 Paschold	 Markus
 Pasqualini	 I
 Pastel	 S
 Patel	 Roshan M.
 Patel	 Vrajeshri
 Patel	 H
 Paterson	 Alistair
 Patil	 Ashok Kumar
 Patney	 Anjul
 Paton	 Melissa
 Patron	 C
 Patterson	 David R.
 Patterson	 DR
 Patton	 Debbie
 Pauli	 P
 Pauli	 Paul
 Pavani	 Francesco
 Pavone	 Enea F.
 Pears	 M.
 Pears	 Matthew
 Pece	 Fabrizio
 Peck	 Tabitha C.
 Peck	 Tabitha
 Pedlow	 Katy
 Peebles	 D.
 Peebles	 David
 Peele	 Bryan
 Peer	 Angelika
 Pei	 Weihua
 Pellino	 TA
 Peng	 Qiaoqiao
 Peng	 Yifan
 Pentland	 Alex P.
 Penumudi	 Sai Akhil
 Pepe	 Luca
 Peperkorn	 Henrik M.
 Peppoloni	 Lorenzo
 Pérard?Gayot	 Arsène
 Pereira	 JM
 Perennou	 Dominic
 Perez	 D
 Perez	 Daniel
 Perez-Ara	 MA
 Perez-Corrales	 J
 Perez-Marcos	 D
 Perlin	 Ken
 Perrin	 Theo
 Perrotta	 Andre
 Persky	 S
 Peshkin	 Michael
 Peterhans	 Vega
 Peters	 Terry M.
 Peterson	 Nicolette
 Petkov	 K
 Petlund	 Andreas
 Petrangeli	 Stefano
 Petri	 K
 Petriaggi	 Barbara Davidde
 Peukert	 C
 Pfaller	 Michael
 Pfeiffer	 T
 Pfeiffer	 Thies
 Pfeiffer	 J
 Pfurtscheller	 G
 Pham	 Cuong T.
 Pham	 Duc Truong
 Pham Thi Minh	 Ly
 Phan	 Viet
 Philips	 JO
 Phillips	 J
 Phillips	 A. M.
 Phillips	 Elizabeth
 Piccione	 Joseph
 Picciotti	 P
 Piccolo	 U.
 Pickup	 Lyndsey C.
 Pidcoe	 Peter E.
 Piekielek	 Nathan
 Pierno	 AC
 Pietrabissa	 Andrea
 Pimentel	 A
 Pinero	 David P.
 Ping	 Jiamin
 Pinto	 Robin
 Piotrowska	 Katarzyna
 Pirela-Cruz	 M.
 Pirker	 Johanna
 Piryankova	 IV
 Piskorz	 Joanna
 Piumsomboon	 Thammathip
 Pizarro	 Rodrigo
 Pla-Sanjuanelo	 Joana
 Plaisant	 Catherine
 Plechata	 Adela
 Ploder	 O
 Plooy	 A
 Plumert	 JM
 Poboroniuc	 Marian Silviu
 Poga?nik	 Matevž
 Pogorelov	 Konstantin
 Polechonski	 Jacek
 Polito	 Vince
 Pollard	 Kimberly A.
 Polonen	 M
 Pomes	 A
 Pons	 Guillaume
 Popescu	 Voicu
 Popovic	 Sinisa
 Popovski	 Filip
 Porras-Garcia	 Bruno
 Portales	 C
 Portelli	 Rony
 Posada	 Jorge
 Potel	 Mike
 Poth	 Christian H.
 Potisk	 Karmen Peterlin
 Pouya	 Omid Ranjbar
 Powell	 Sean
 Poyry	 Essi
 Pozeg	 Polona
 Prabhakaran	 Balakrishnan
 Prada	 Rui
 Prada-Jimenez	 Vladimir
 Prandi	 Catia
 Prates	 Joana
 Prates	 Raquel
 Pratschke	 Johann
 Preuss	 Nora
 Price	 True
 Pritchard	 Stephen C.
 Privitera	 Filippo
 Proffitt	 Rachel
 Provencher	 Marianne
 Przybilla	 Heinz-Juergen
 Pulijala	 Yeshwanth
 Pulijala	 Y.
 Pulli	 P
 Punpongsanon	 Parinya
 Putilin	 A. N.
 Puyana-Romero	 Virginia
 Qayumi	 Karim
 Qidwai	 Uvais
 Qin	 Zong
 Qin	 Hong
 Qin	 Zihe
 Qu	 C
 Queisner	 Moritz
 Quevedo	 AA
 Quigley	 Chris
 Quinlivan	 Brendan
 ROBINETT	 W
 RU	 JR
 Rademacher	 H
 Radwin	 RG
 Rae	 James
 Raffle	 Hayes
 Rafique	 Muhammad Usman
 Rafolt	 D
 Ragan	 Eric D.
 Ragan	 ED
 Ragusa	 JM
 Raikos	 Athanasios
 Ramadan	 Zahy B.
 Ramanthan	 Parmesh
 Ramirez	 Maribel
 Ramirez Alvarado	 Maria del Mar
 Ramsayer	 B
 Ramsey	 A
 Ramsey	 Eleanor
 Ramzan	 Naeem
 Rance	 M
 Rand	 D
 Rangelova	 Stanislava
 Rao	 Raj
 Raptis	 George E.
 Rashed	 Essam A.
 Rasse	 M
 Ratamero	 Erick Martins
 Rauch	 Sheila A. M.
 Rautenberg	 U
 Ravaja	 Niklas
 Ravichandran	 Roshan
 Raya	 Laura
 Read	 Molly
 Rebimbas	 Jose
 Rechowicz	 Krzysztof
 Reed	 C
 Regan	 Matthew
 Regenbrecht	 Holger
 Regenbrecht	 H
 Regia-Corte	 T
 Rehman	 Shafiq Ur
 Reichenberger	 Jonas
 Reichert	 James F.
 Reid	 David
 Reilly	 Richard B.
 Reinhart	 G
 Rejeski	 W. Jack
 Remond	 J-J
 Remondino	 Fabio
 Ren	 Pu
 Rewkowski	 Nicholas
 Rey	 B.
 Reyes	 Gabriel
 Reznik	 D
 Rhee	 Taehyun
 Ribas-Sabate	 Joan
 Ricciardi	 S
 Richard	 Paul
 Richards	 TL
 Richardson	 Michael
 Richardt	 Christian
 Richardt	 C.
 Richerzhagen	 Christian
 Ridout	 Brad
 Riecke	 Bernhard E.
 Riecke	 BE
 Rieder	 Rafael
 Riegler	 Michael
 Riener	 Robert
 Rienhoff	 O.
 Rieser	 J
 Rietzler	 Michael
 Rigas	 Ioannis
 Riggs	 Sara L.
 Rigoli	 Marcelo M.
 Rigutti	 Sara
 Rimzhim	 Anurag
 Rio	 E
 Ripamonti	 Laura Anna
 Risi	 Dante
 Ritsos	 Panagiotis D.
 Ritz	 Leah T.
 Riva	 G
 Riva	 Giuseppe
 Rizzetto	 Francesco
 Rizzi	 Caterina
 Rizzo	 A
 Rizzo	 A.A.
 Rizzo	 Albert Skip
 Rizzo	 AA
 Rizzuto	 Michael A.
 Robb	 AC
 Robert	 Maxime T.
 Roberts	 Jonathan C.
 Roberts	 DC
 Roberts	 Linda
 Roberts	 David
 Roberts	 Gillian
 Robertson	 Elena
 Robinson	 A
 Robles-Garcia	 V
 Roccetti	 Marco
 Rodrigues	 Eduardo
 Roessler	 Andreas
 Roettl	 Johanna
 Rogers	 SJ
 Rogers	 S. J.
 Rogers	 John A.
 Rojo	 Diego
 Rokers	 Bas
 Rolland	 Tanguy
 Romanos	 P
 Romer	 Rudolf A.
 Romero	 G
 Romo	 L.
 Ron	 L
 Ronchi	 Enrico
 Ronchi	 Roberta
 Ronkko	 J
 Rooney	 Brendan
 Roongpoovapatr	 Vatookarn
 Ropelato	 Sandro
 Roquet	 Paul
 Rosa	 Pedro J.
 Rose	 Vienna
 Roseboom	 Warrick
 Rosen	 Eric
 Rosenberg	 Marta
 Rosenberg	 Laura
 Rosenberg	 Evan Suma
 Rosendahl	 Erik
 Rosenthal	 MZ
 Rosenthal	 Scott
 Ross	 Nicole C.
 Ross	 Heather Dohn
 Ross	 Miriam
 Rossi	 Henrique
 Roth	 Daniel
 Roth	 Thorsten
 Rothbaum	 Barbara Olasov
 Ruben	 Jasper
 Rubio Tamayo	 Jose Luis
 Rubod	 Chrystele
 Ruddle	 Roy
 Rueda	 Jose Jesus Garcia
 Rueger	 Christoph
 Ruffaldi	 Emanuele
 Rufo	 Gizem
 Rukzio	 Enrico
 Rungta	 A
 Rupp	 Michael A.
 Rus	 Daniela
 Russell	 Kenneth B.
 Rutkowski	 Anne-Francoise
 Ryder	 Andrew
 Rydgren	 Tore L.
 Rylander	 Jonathan
 Ryu	 Jeha
 Ryu	 Jaeyeol
 Ryu	 Jung-Hee
 Ryu	 J
 Ryu	 Eun-Seok
 Ryu	 JinHo
 Ryu	 Jae Myung
 SELIGMANN	 D
 SHAW	 C
 SUN	 YQ
 Saba	 Tanzila
 Sadagic	 Amela
 Sadun	 A
 Safiullah	 Shoaib
 Sagardia	 Mikel
 Sahula	 Vaclav
 Saika	 Makoto
 Saiki	 Seiji
 Saito	 Shunsuke
 Saito	 S
 Sakamoto	 Ryota
 Sakamoto	 Naohisa
 Sakhare	 Ashwin R.
 Saldana	 Santiago J.
 Salemink	 Elske
 Salomoni	 Paola
 Salvendy	 G
 Salvi	 Marco
 Sampaio	 Mariana
 Sampogna	 Gianluca
 Samuel	 Siby
 Sanchez-Herrera-Baeza	 P
 Sanchez-Vives	 MV
 Sanchez-Vives	 Maria V.
 Sandor	 Christian
 Sandsdalen	 Tuva
 Sandström	 Christian
 Sang	 Min Lee
 Sang	 Xinzhu
 Sankaranarayanan	 Ganesh
 Sanmartin	 G
 Sano	 Y.
 Santarnecchi	 Emiliano
 Santos	 Sibele
 Santoso	 Handri
 Saraiva	 Tomaz
 Saredakis	 Dimitrios
 Sarig-Bahat	 H
 Sarlat	 L
 Sasaki	 H
 Sasaki	 Takashi
 Sasinka	 Cenek
 Sasinkova	 Alzbeta
 Satava	 RM
 Sato	 Tetsuya
 Sato	 Kosuke
 Sato	 M
 Sauer	 Igor M.
 Sauer	 F
 Sayed	 Ahmed M.
 Scandola	 Michele
 Scarfe	 Peter
 Scerbo	 Siroberto
 Schatzschneider	 Christian
 Scherer	 R
 Schiffbauer	 JD
 Schilken	 E.
 Schluter	 A
 Schmalstieg	 Dieter
 Schmitz	 CL
 Schmohl	 S
 Schnack	 Alexander
 Schneider	 SM
 Schneider	 Walter
 Schneider	 Werner X.
 Schneider	 Susan M.
 Schneider	 Daniel
 Schneider	 E
 Schnell	 Philipp
 Schoeffler	 M
 Scholl	 Hendrik P. N.
 Schor	 C
 Schuemie	 MJ
 Schulte	 FP
 Schultheis	 Maria T.
 Schultheis	 MT
 Schurr	 MJ
 Schwaitzberg	 Steven D.
 Schwaitzberg	 Steven
 Schwartzman	 David J.
 Secco	 Emanuele L.
 Sedlak	 Michal
 Seguelas	 A
 Segura	 Álvaro
 Segura	 Alvaro
 Seibel	 Eric J.
 Seibel	 EJ
 Seibert	 Jonmichael
 Seidel	 Hans-Peter
 Seidel	 H. P.
 Sekar	 Viswa Subramanian
 Seki	 Kenta
 Sela	 Itamar
 Semeraro	 F
 Seo	 Eo Jin
 Seo	 Young-jun
 Seo	 HG
 Seo	 Min-Woo
 Seo	 Seung-hun
 Seok	 Hyeon Kim
 Serafin	 Stefania
 Sergi	 B
 Sergievich	 Alexander
 Sernagor	 Evelyne
 Serrano	 A.
 Serrano-Troncoso	 Eduardo
 Seth	 Anil K.
 Seung-Hyun	 Lee
 Seward	 AE
 Sgouros	 Tom
 Shafer	 Daniel M.
 Shah	 Vishal
 Shah	 Syed Muhammad Zaigham Abbas
 Shaikh	 Zubair Ahmed
 Shakir	 Mohamed
 Shalaby	 Salma Tarek
 Shan	 Ling
 Shapira	 Omer
 Sharar	 Sam R.
 Sharar	 SR
 Sharples	 S
 Shattuck	 David W.
 Shei	 HJ
 Shelhamer	 M
 Shen	 Yuzhong
 Shen	 Jie(Doreen)
 Shen	 Yiran
 Shen	 Kele
 Shen	 Y
 Shen	 Chien-wen
 Shepherd	 Robert
 Sherrill	 Andrew
 Sherstyuk	 A
 Shi	 Xueliang
 Shi	 Zhiru
 Shi	 Yuwei
 Shi	 Yangming
 Shibata	 K
 Shibuya	 Satoshi
 Shimada	 Hikari
 Shimokawa	 Kazuma
 Shin	 Yonghwan
 Shin	 DI
 Shin	 Hoon Sub
 Shin	 Jongkyu
 Shin	 Joon-Ho
 Shiner	 Christine T.
 Shing	 CY
 Shishido	 H
 Shizuka	 K
 Shonkwiler	 Erin L.
 Shouji	 T
 Shrivastava	 Raj
 Shu	 Yu
 Shuai	 Wan
 Shui	 Wuyang
 Si	 Yaqing
 Sidanin	 Predrag
 Siegel	 Zachary D.
 Siegrist	 Michael
 Siess	 Andreas
 Sil	 S
 Silva	 Gustavo R.
 Silva	 Igor Macedo
 Silva	 S
 Simionovici	 Y
 Simões	 Bruno
 Simon	 Timothy M.
 Simon	 Sofia C.
 Simone	 Lisa K.
 Simpson	 Gordon
 Sinatra	 Anne M.
 Sinclair	 David
 Singh	 Shruti
 Singhal	 S
 Singule	 Vladislav
 Sioni	 Riccardo
 Siriaraya	 Panote
 Sisemore	 D.
 Sitaraman	 Ramesh
 Sjoberg	 Rickard
 Skaug	 Marit Aralt
 Skavern	 Hege
 Skinner	 Jonathan
 Slater	 M
 Slater	 Mel
 Slusallek	 Philipp
 Smaczynski	 Maciej
 Smart	 Jr.
 Smirnov	 Alexey
 Smith	 William R.
 Smith	 Shamus
 Smith	 S
 Smith	 Richard
 Smith	 Jacob
 Smith	 Ross T.
 Smith	 Ashley
 Smith	 Sherrill J.
 Smith	 Shana
 Smither	 Janan A.
 Smolyanskiy	 Nikolai
 Snell	 Deborah
 So	 RHY
 Sochenov	 Anton
 Sockol	 Laura E.
 Soeda	 M
 Sohn	 Bong-Soo
 Solange Lopez-Segura	 Lilian
 Solazzi	 Massimiliano
 Solca	 Marco
 Solini	 H
 Soltan	 Ahmed
 Somrak	 Andrej
 Son	 Ho-Jun
 Sondell	 Björn
 Song	 Lei
 Song	 Aiguo
 Song	 Xuefei
 Song	 Fei
 Song	 Chang-Geun
 Song	 Jeungeun
 Sonne	 Michael W. L.
 Soomro	 Shoaib R.
 Soon-Chul	 Kwon
 Sorel	 Anthony
 Sorensen	 Stine Maya Dreier
 Sörhammar	 David
 Sousa Santos	 B
 Sowizral	 HA
 Sowndararajan	 A
 Spanlang	 B
 Spanlang	 Bernhard
 Spantidi	 Ourania
 Spape	 Michiel M.
 Sparacino	 Flavia
 Spicer	 Ryan P.
 Spitzley	 Kate A.
 Spjut	 Josef
 Sportillo	 Daniele
 Sprecher	 Elliot
 Srinivasan	 RS
 Srivastava	 Priyanka
 Ssin	 Seung Youb
 Stachon	 Zdenek
 Stamminger	 Marc
 Stangl	 Gregg
 Stanney	 Kay
 Starner	 Thad E.
 Starr	 Christine R.
 Starrett	 Michael J.
 Starrett	 Michael
 State	 Andrei
 Steckel	 Jan
 Steed	 Anthony
 Stefanucci	 Jeanine K.
 Stein	 C
 Stein	 Joel
 Steinbach	 Eckehard
 Steinberger	 M.
 Steinberger	 Markus
 Steinicke	 Frank
 Steinicke	 F
 Steinmetz	 Ralf
 Stelling	 Dirk
 Stengel	 Michael
 Stengel	 M.
 Stensland	 IIakon
 Stenvall	 Michael
 Stepan	 Katelyn
 Steptoe	 William
 Stewart	 Inga
 Stirling	 Allan
 Stoffregen	 Thomas A.
 Stojanovska	 Jadranka
 Stokes	 Jared D.
 Stokes	 Leanne
 Stokking	 Hans
 Stone	 RJ
 Stradford	 Joy
 Straga	 Marta
 Strawderman	 Lesley
 Stricker	 D
 Stromberga	 Zane
 Strouboulis	 Vassilis
 Strupp	 M
 Stubbs	 Chris
 Stupar-Rutenfrans	 Snežana
 Su	 Zhaoqi
 Suaning	 GJ
 Suaning	 Gregg J.
 Subramanian	 SK
 Subramanium	 Hari
 Suencksen	 Matthias
 Sugimori	 Eriko
 Sugita	 N
 Sugiura	 Tokuhiro
 Sugiyama	 T.
 Suh	 Young-Woo
 Sui	 Xiaomeng
 Suk	 Hyeon-Jeong
 Sullivan	 Richard
 Sumantri	 Eric
 Sumitani	 M.
 Sumitani	 Masahiko
 Sun	 Qi
 Sun	 Chengyu
 Sun	 Tien?Lung
 Sun	 Ying
 Sun	 Mengmeng
 Sun	 Xiaoying
 Sun	 Hung
 Sun	 Minghui
 Sun	 Rujie
 Sunar	 Mohd Shahrizal
 Sung	 Yunsick
 Sung	 WH
 Sung	 Connie
 Sutera	 J
 Suzukamo	 Yoshimi
 Suzuki	 Y
 Suzuki	 Keisuke
 Svatonova	 Hana
 Sveistrup	 Heidi
 Svendsen	 Morten Bo Sondergaard
 Swan	 II
 Swapp	 D
 Swapp	 David
 Sween	 Richard
 Swenor	 Bonnielin K.
 Swenson	 Samuel A.
 Swinkels	 Lieke M. J.
 Syawaludin	 MF
 Szecsi	 T
 Szeliski	 Richard
 Szpak	 Ancret
 TAN	 WC
 Tabayashi	 K
 Tabbaa	 Luma
 Tabrizian	 Payam
 Tachi	 S
 Tai	 Tzu-Yu
 Takada	 Masashi
 Takahashi	 Masaki
 Takahashi	 K
 Takahashi	 H
 Taketom	 Takafumi
 Takeuchi	 Naoyuki
 Talarn-Caparros	 Antoni
 Tammi	 Kari
 Tamura	 Hideyuki
 Tamura	 Yuichi
 Tan	 Sze-Tiong
 Tan	 CheeSim
 Tanaka	 A
 Tang	 Peter
 Tang	 Xiangjun
 Tanh	 Quang Tran
 Tanikawa	 Tomohiro
 Tansey	 K
 Tarimci	 O
 Tashev	 Ivan J.
 Tauscher	 Jan-Philipp
 Tautz	 FS
 Tavella	 Mauro
 Taylor W. Cleworth	 Mark G. Carpenter
 Teahan	 William J.
 Tecchia	 F
 Tecchia	 Franco
 Teichrieb	 Veronica
 Teistler	 Michael
 Teixeira	 Joao
 Teixidor	 Lidia
 Tejkl	 Hynek
 Tellex	 Stefanie
 Temirov	 R
 Teng	 Wei-Chung
 Teodorescu	 Mircea
 Teramoto	 W
 Terkildsen	 Thomas S.
 Terlutter	 Ralf
 Thalmann	 Daniel
 Tham	 Jason
 Theobalt	 Christian
 Thiebaux	 M
 Thies	 Justus
 Thomas	 BH
 Thomas	 GA
 Thomas	 Bruce H.
 Thomas	 Jerald
 Thomas	 James S.
 Thompson	 C
 Thompson	 Benjamin
 Thompson	 WB
 Thompson	 William B.
 Thompson	 S.B.
 Thompson-Butel	 Angelica G.
 Thorn	 Jacob
 Thornberry	 Conor
 Thurston	 Miranda
 Tiainen	 Tarja
 Tian	 Peilin
 Tibaldi	 A.
 Tidoni	 Emmanuele
 Tien	 SC
 Tieri	 Gaetano
 Tigue	 C
 Tilbury	 Simon
 Tingting	 Lei
 Tiwari	 Ashutosh
 Todd	 Graeme
 Tollmar	 Konrad
 Tomozawa	 Hiromitsu
 Tompkin	 James
 Tong	 Ruofeng
 Tong	 Boyang
 Tong	 Jonathan
 Torrecilla	 Carmen
 Traill	 DM
 Tran	 Huyen T. T.
 Tran	 Van Thanh
 Treasure	 Janet
 Treleaven	 Julia
 Treleaven	 J
 Tremmel	 Christoph
 Troger	 C
 Troia	 Elena
 Trojan	 J
 Troje	 Nikolaus F.
 Trombetta	 Mateus
 Truong	 Cong Thang
 Truppe	 M
 Trutna	 T
 Trutoiu	 L
 Tsai	 Ling
 Tsai	 Chin-Chung
 Tsai	 Tsun-Hung
 Tsai	 PY
 Tsang	 Ivan
 Tschirschwitz	 Felix
 Tse	 Mimi M.Y.
 Tucker	 C
 Tufail	 Adnan
 Tuma	 Zdenek
 Tumialis	 Alexey
 Turban	 Laura
 Turcotte	 Vincent
 Turppa	 Tuomas
 Tutzauer	 P
 Ucar	 Erdem
 Ueda	 Yu
 Uematsu	 Hisashi
 Ugarte	 Ramón
 Ugwitz	 Pavel
 Ulrich	 Deborah L.
 Ulusoy	 Erdem
 Umut	 Ilhan
 Unenaka	 Satoshi
 Ungureanu	 Florina
 Urban	 Fabrice
 Urbanek	 Tomas
 Urbanova	 Petra
 Urey	 Hakan
 Urwyler	 Prabitha
 Ustunel	 Hakan
 VOLTER	 S
 Vakili	 G
 Vakulin	 A
 Valdez	 Andre
 Valero	 Alfredo Jose Fanghella
 Valls-Sole	 J
 Valzolgher	 Chiara
 Van Der Zaag	 C.
 Van Rooyen	 A.
 Vance	 JM
 Vanzulli	 Angelo
 Varshney	 Amitabh
 Vasanthan	 Lenny
 Vasconcelos-Raposo	 J
 Vasconcelos-Raposo	 Jose
 Vasudevan	 E
 Vaughan	 Richard
 Vazquez-Guardado	 Abraham
 Vega	 Maria Torres
 Velasco	 Juan Pablo Nunez
 Veling	 Harm
 Vercher	 Jean-Louis
 Vereneck	 Ray
 Verhulst	 Eulalie
 Verhulst	 Adrien
 Verstraten	 F. A. J.
 Vertemati	 Maurizio
 Vetere	 Frank
 Vexo	 Frédéric
 Viaud-Delmon	 I
 Viehland	 Christian
 Vienne	 Cyril
 Vieri	 Carlin
 Vignais	 Nicolas
 Vijay	 Palash
 Vilalta-Abella	 Ferran
 Vincent	 D
 Vincent	 DS
 Virtanen	 Juho-Pekka
 Vismara	 Cinzia
 Vitali	 Andrea
 Vitello	 F.
 Viziano	 Andrea
 Vogt	 S
 Volkova	 Ekaterina
 Vorontsova	 N
 Vosinakis	 Spyros
 Vosniakos	 G-C.
 Vourvopoulos	 Athanasios
 WEN-CHIH	 LO
 WESCHE	 G
 Wacker	 FK
 Wacker	 Jan
 Wagenaar	 RC
 Wagner	 John
 Wagner	 LK
 Wagner	 A
 Wagner	 C
 Wagner	 M
 Wahlqvist	 Jonathan
 Wake	 N.
 Wakefield	 Graham
 Walcutt	 Noah L.
 Walia	 Sartaaj
 Walkowski	 Stevan
 Waller	 D
 Wallgrun	 Jan Oliver
 Wallner	 Juergen
 Walpole	 Samuel
 Walsh	 James A.
 Waltemate	 Thomas
 Wan	 Xiaoang
 Wang	 Wei
 Wang	 Tianwei
 Wang	 Yijun
 Wang	 ZQ
 Wang	 Xiaoyun
 Wang	 Zian
 Wang	 Xiangyang
 Wang	 FY
 Wang	 Yingbin
 Wang	 Nan
 Wang	 Yunhai
 Wang	 K. R.
 Wang	 Jinling
 Wang	 Xikui
 Wang	 Dong-Yue
 Wang	 Xu
 Wang	 Zhu
 Wang	 YM
 Wang	 Chun-Ping
 Wang	 Chen
 Wang	 Yanyun(Mia)
 Wang	 Yan
 Wang	 Peng
 Wang	 BJ
 Wang	 Yongtian
 Wang	 Huiwen
 Wang	 J
 Wang	 Qiyue
 Wang	 Guoping
 Wang	 Lili
 Wang	 Z
 Wang	 Yunqi
 Wang	 Ze-wei
 Wann	 J
 Wanschitz	 F
 Ward	 DS
 Warren	 Jessica
 Warren	 William H.
 Warusfel	 O
 Watanabe	 K
 Watanabe	 T
 Watanabe	 S
 Watanabe	 Kandai
 Watanabe	 Yoshihiro
 Waterman	 Amanda
 Watzinger	 F
 Wauters	 Tim
 Waycott	 Jenny
 Webb	 NA
 Webb	 Robyn
 Webb	 David P.
 Webb	 Richard I.
 Weber	 Lynne M.
 Weech	 Seamas
 Wei	 Zhonglun
 Wei	 Li-Yi
 Wei	 Tao
 Wei	 Miaoluan
 Wei	 LY
 Wei	 Zhen
 Weidner	 R
 Weier	 Martin
 Weil	 P
 Weiler	 N.
 Weinhardt	 C
 Weiss	 Karen E.
 Weiss	 KE
 Weiss	 PL
 Welch	 Gregory F.
 Wen	 Hongkai
 Wender	 Carly L. A.
 Wendt	 M
 Weng	 Dongdong
 Weniger	 G.
 Wenjie	 Zou
 Werb	 Michael
 Werblin	 Frank S.
 Westelius	 Claes
 Westerman	 C
 Westphal	 S
 Wetzel	 Ryan
 Wetzstein	 Gordon
 Weyers	 Benjamin
 Weyrich	 Tim
 Whangbo	 Taeg-keun
 Whitlock	 Tyler
 Whitney	 David
 Whitton	 MC
 Whitton	 Mary
 Whitworth	 M.
 Wiederhold	 BK
 Wiederhold	 Mark D.
 Wiederhold	 Brenda K.
 Wieland	 P
 Wiers	 Reinout W.
 Wieser	 Matthias J.
 Wiesing	 M
 Wilcox	 Laurie M.
 Wilczek	 Josef
 Wilkinson	 Tracey
 Willems	 KE
 Willemsen	 P.
 Willemsen	 P
 Williams	 Laura
 Williams	 Mark A.
 Williams	 B
 Williamson	 John H.
 Willis	 Rhys
 Wilson	 Iseult
 Wilson	 JR
 Winston	 Lauren
 Wischgoll	 Thomas
 Wiseman	 Micaela
 Wish	 JR
 Wisti	 A. Zachary
 Witte	 K
 Witthauer	 Lilian
 Wittmann	 Frieder
 Wloka	 Dieter
 Wodarski	 Piotr
 Woelfe	 Matthias
 Wohlheiter	 K
 Woldegiorgis	 Bereket Haile
 Woldegiorgis	 Bereket H.
 Woldegiorgis	 BH
 Wolf	 Dennis
 Wolf	 S.
 Wolf	 Peter
 Wolffsohn	 JS
 Won	 S
 Won	 Seungwon
 Wong	 Thomas K.S.
 Wong	 Sai-Keung
 Wong	 MH
 Woo	 W
 Woo	 Woontack
 Woodruff	 Maria A.
 Woods	 Andrew
 Wooldridge	 D
 Worley	 Julie
 Wren	 Christopher R.
 Wright	 Malcolm J.
 Wright	 Peter
 Wright	 WG
 Wright	 W. Geoffrey
 Wroblewski	 D
 Wrzesien	 M
 Wu	 CH
 Wu	 Yupeng
 Wu	 Jian
 Wu	 Shin-Tson
 Wu	 Dui-Yi
 Wu	 JL
 Wu	 Bo-Jyun
 Wu	 Dai-Yun
 Wu	 Chien-Min
 Wu	 JR
 Wu	 Meng-Lin
 Wu	 Peggy
 Wuehr	 Max
 Wunderling	 Tom
 Wyman	 Chris
 Wyss	 Patric
 Xia	 J. Y.
 Xiang	 Handun
 Xiao	 Zhaolin
 Xiao	 Liquan
 Xiao	 B. J.
 Xie	 Ning
 Xie	 Le
 Xie	 Zhaoqian
 Xiong	 Jianghao
 Xiong	 Ruiqin
 Xu	 Fan
 Xu	 Wenge
 Xu	 Zhenlin
 Xu	 Weitao
 Xu	 Diqiong
 Xu	 X
 Xu	 Feng
 Xu	 Wei Wei
 Xu	 Jizheng
 Xue	 Yeguang
 Xue	 Chuansong
 YU-TUNG	 PAI
 Yabuki	 N
 Yachida	 M
 Yagi	 Y
 Yamaguchi	 Tatsuo
 Yamaguchi	 Masahiro
 Yamamoto	 Goshiro
 Yamamoto	 Hiroyuki
 Yamani	 Yusuke
 Yamano	 M
 Yamashita	 Takuzo
 Yamazaki	 Yoichiro
 Yambe	 T
 Yan	 Binbin
 Yan	 Bin
 Yang	 JC
 Yang	 Bian
 Yang	 Fu-zheng
 Yang	 Joon Young
 Yang	 Sung-Hyun
 Yang	 Vincent
 Yang	 Hong
 Yang	 Hong Seok
 Yang	 Daiqin
 Yang	 Xuefeng
 Yang	 Tong
 Yang	 Fuzheng
 Yang	 Ungyeon
 Yang	 Jilin
 Yang	 Paul
 Yang	 Chen
 Yao	 Zhaolin
 Yao	 Mike Z.
 Yao	 Eason
 Yasinski	 Carly W.
 Yasuda	 Kazuhiro
 Yasui	 Kento
 Yata	 Tatsuya
 Yavrucuk	 I
 Yazdanfar	 Abbas
 Ye	 Weibing
 Ye	 Quan
 Ye	 Yan
 Yeh	 TP
 Yeh	 Shih-Ching
 Yeh	 MS
 Yen	 SC
 Yen	 Andrew
 Yeong	 Samuel
 Yeslam	 Noor
 Yi	 Kangrui
 Yildirim	 Cagdas
 Yildirim	 Caglar
 Yin	 TK
 Yokoya	 N
 Yong	 Jun-Hai
 Yoo	 Hoi-Jun
 Yoo	 KH
 Yoo	 Jisang
 Yoon	 Jin
 Yoon	 Jeong Hwan
 Yoon	 HJ
 Yoon	 Soo Young
 Yoshizawa	 T
 Yoshizawa	 M
 You	 Lihua
 Youn	 JH
 Yozu	 A.
 Yu	 Lap-Fai
 Yu	 Haoping
 Yu	 Yingjie
 Yu	 Mengli
 Yu	 H
 Yu	 Chongxiu
 Yu	 Xinge
 Yu	 You-guang
 Yu	 CW
 Yu	 Rui
 Yu	 TW
 Yu	 YongJoon
 Yu	 Xunbo
 Yu	 Yang
 Yu	 Difeng
 Yu	 Zhiwen
 Yu	 Jingyi
 Yu	 HY
 Yuan	 M. L.
 Yuan	 Sze Ngar Vanessa
 Yuan	 ML
 Yue	 Yong
 Yun	 Deok-Young
 Yun	 SJ
 Yussof	 H
 Zaleski-King	 Ashley
 Zampini	 Massimiliano
 Zanbaka	 C
 Zapf	 MPH
 Zapf	 Marc Patrick H.
 Zare	 Alireza
 Zarraonandia	 Telmo
 Zee	 DS
 Zeiger	 Joshua
 Zelaya	 Melissa
 Zeng	 Zongshun
 Zeroth	 Julia A.
 Zhai	 Xiaojun
 Zhai	 Guangtao
 Zhan	 Tao
 Zhan	 Liang
 Zhang	 Mi
 Zhang	 Shusheng
 Zhang	 Yingxue
 Zhang	 Zeying
 Zhang	 YuMing
 Zhang	 Meng-Jia
 Zhang	 Ruiheng
 Zhang	 Daliang
 Zhang	 Changxing
 Zhang	 Fang
 Zhang	 Han
 Zhang	 Tianyu
 Zhang	 M
 Zhang	 JH
 Zhang	 Junsong
 Zhang	 Jimmy F.
 Zhang	 Zhenliang
 Zhang	 Shuai
 Zhang	 Yuxuan
 Zhang	 Kang
 Zhang	 Peichang
 Zhang	 Tao
 Zhang	 Jian Jun
 Zhang	 Xiaoyun
 Zhang	 Wei
 Zhang	 W
 Zhang	 Congyi
 Zhao	 Dong
 Zhao	 Wenshuo
 Zhao	 Weihua
 Zhao	 QL
 Zhao	 Jing
 Zhao	 Yuxuan
 Zhao	 Yibiao
 Zhao	 Jiayan
 Zhao	 Mingjun
 Zhao	 Weixun
 Zheng	 Huadong
 Zhong	 Fangcheng
 Zhong	 Yishan
 Zhou	 Hong
 Zhou	 Ronggang
 Zhou	 Jun
 Zhou	 SH
 Zhou	 Keping
 Zhou	 Wen
 Zhou	 JC
 Zhou	 Mingquan
 Zhou	 Ting
 Zhou	 Chao
 Zhu	 Xiaoqiang
 Zhu	 Lifeng
 Zhu	 Jun
 Zhu	 Jing
 Zhu	 Mengyao
 Zhu	 Xiuqing
 Zhu	 Kang
 Zhu	 Yucheng
 Zhu	 Lingli
 Zhu	 Yu
 Ziak	 Peter
 Zink	 Michael
 Zmuda	 M
 Zocco	 Alessandro
 Zollhofer	 Michael
 Zopf	 Regine
 Zou	 Zhengbo
 Zou	 Wenjie
 Zou	 Junyu
 Zulaika	 Juanjo
 de Araujo	 BR
 de Carvalho	 J. Emanuel Ramos
 de Clercq	 Koen
 de Jesus Oliveira	 Victor Adriel
 de Ligny	 CD
 de Oliveira	 Fernando R.
 de Quiros	 CBB
 de Vries	 B. Van Wyk
 de Waele	 C
 de Waele	 C.
 de Winter	 Joost
 de Winter	 Joost C. F.
 de la Pena	 N
 de la Riviere	 JB
 de la Rosa	 S
 ter Horst	 Arjan C.
 van Gisbergen	 Marnix S.
 van Schie	 Hein T.
 van der Hooft	 Jeroen
 van der Mast	 CAPG
 van der Waa	 Jasper
 van der Zaag	 C
\.


--
-- Data for Name: doi_autor; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.doi_autor (doi, nachname, vorname) FROM stdin;
10.31209/2019.100000149	 Chaudhary	 Ayesha Hoor
10.31209/2019.100000149	 Bukhari	 Faisal
10.31209/2019.100000149	 Iqbal	 Waheed
10.31209/2019.100000149	 Nawaz	 Zubair
10.31209/2019.100000149	 Malik	 Muhammad Kamran
10.31209/2019.100000131	 Kim	 Soo-Kyun
10.31209/2019.100000131	 Lee	 Chang-Hee
10.31209/2019.100000131	 Kim	 Sun-Jeong
10.31209/2019.100000131	 Song	 Chang-Geun
10.31209/2019.100000131	 Lee	 Jung
10.31209/2019.100000134	 Lee	 Byong Kwon
10.31209/2019.100000134	 Lee	 Yang Sun
10.1007/s00464-019-06887-8	 Frederiksen	 Joakim Grant
10.1007/s00464-019-06887-8	 Sorensen	 Stine Maya Dreier
10.1007/s00464-019-06887-8	 Konge	 Lars
10.1007/s00464-019-06887-8	 Svendsen	 Morten Bo Sondergaard
10.1007/s00464-019-06887-8	 Nobel-Jorgensen	 Morten
10.1007/s00464-019-06887-8	 Bjerrum	 Flemming
10.1007/s00464-019-06887-8	 Andersen	 Steven Arild Wuyts
10.1109/MCE.2019.2953741	 Rafique	 Muhammad Usman
10.1109/MCE.2019.2953741	 Cheung	 Sen-ching S.
10.1007/s10055-019-00389-7	 Checa	 David
10.1007/s10055-019-00389-7	 Bustillo	 Andres
10.1016/j.foodqual.2019.103833	 Ammann	 Jeanine
10.1016/j.foodqual.2019.103833	 Hartmann	 Christina
10.1016/j.foodqual.2019.103833	 Peterhans	 Vega
10.1016/j.foodqual.2019.103833	 Ropelato	 Sandro
10.1016/j.foodqual.2019.103833	 Siegrist	 Michael
10.1080/10447318.2020.1726108	 Curry	 Christopher
10.1080/10447318.2020.1726108	 Li	 Ruixuan
10.1080/10447318.2020.1726108	 Peterson	 Nicolette
10.1080/10447318.2020.1726108	 Stoffregen	 Thomas A.
10.3341/jkos.2020.61.2.125	 Lee	 Sang Hyeok
10.3341/jkos.2020.61.2.125	 Kim	 Martha
10.3341/jkos.2020.61.2.125	 Kim	 Hyosun
10.3341/jkos.2020.61.2.125	 Park	 Choul Yong
10.1002/jsid.840	 Ping	 Jiamin
10.1002/jsid.840	 Weng	 Dongdong
10.1002/jsid.840	 Liu	 Yue
10.1002/jsid.840	 Wang	 Yongtian
10.1007/s10639-020-10119-1	 Fransson	 Goran
10.1007/s10639-020-10119-1	 Holmberg	 Jorgen
10.1007/s10639-020-10119-1	 Westelius	 Claes
10.3389/fmed.2019.00329	 Appel	 Lora
10.3389/fmed.2019.00329	 Appel	 Eva
10.3389/fmed.2019.00329	 Bogler	 Orly
10.3389/fmed.2019.00329	 Wiseman	 Micaela
10.3389/fmed.2019.00329	 Cohen	 Leedan
10.3389/fmed.2019.00329	 Ein	 Natalie
10.3389/fmed.2019.00329	 Abrams	 Howard B.
10.3389/fmed.2019.00329	 Campos	 Jennifer L.
10.1080/14616688.2020.1713881	 Griffin	 Tom
10.1080/14616688.2020.1713881	 Muldoon	 Meghan
10.4218/etrij.2019-0284	 Na	 Woongsoo
10.4218/etrij.2019-0284	 Dao	 Nhu-Ngoc
10.4218/etrij.2019-0284	 Kim	 Joongheon
10.4218/etrij.2019-0284	 Ryu	 Eun-Seok
10.4218/etrij.2019-0284	 Cho	 Sungrae
10.3390/brainsci10010055	 Tumialis	 Alexey
10.3390/brainsci10010055	 Smirnov	 Alexey
10.3390/brainsci10010055	 Fadeev	 Kirill
10.3390/brainsci10010055	 Alikovskaia	 Tatiana
10.3390/brainsci10010055	 Khoroshikh	 Pavel
10.3390/brainsci10010055	 Sergievich	 Alexander
10.3390/brainsci10010055	 Golokhvast	 Kirill
10.1109/JIOT.2019.2946593	 Gu	 Jiaxi
10.1109/JIOT.2019.2946593	 Yu	 Zhiwen
10.1109/JIOT.2019.2946593	 Shen	 Kele
10.1097/AUD.0000000000000736	 Zaleski-King	 Ashley
10.1097/AUD.0000000000000736	 Pinto	 Robin
10.1097/AUD.0000000000000736	 Lee	 General
10.1097/AUD.0000000000000736	 Brungart	 Douglas
10.1016/j.pnucene.2019.103127	 Hagita	 Katsumi
10.1016/j.pnucene.2019.103127	 Kodama	 Yuuki
10.1016/j.pnucene.2019.103127	 Takada	 Masashi
10.1007/s12555-018-0882-3	 Bae	 Yoosung
10.1007/s12555-018-0882-3	 Cha	 Baekdong
10.1007/s12555-018-0882-3	 Ryu	 Jeha
10.1080/10494820.2019.1703008	 Alrehaili	 Enas Abdulrahman
10.1080/10494820.2019.1703008	 Al Osman	 Hussein
10.1108/LHT-08-2019-0166	 Greene	 David
10.1108/LHT-08-2019-0166	 Groenendyk	 Michael
10.1016/j.jbiomech.2019.109379	 Jost	 Tyler A.
10.1016/j.jbiomech.2019.109379	 Drewelow	 Grant
10.1016/j.jbiomech.2019.109379	 Koziol	 Scott
10.1016/j.jbiomech.2019.109379	 Rylander	 Jonathan
10.1016/j.displa.2019.08.003	 Risi	 Dante
10.1016/j.displa.2019.08.003	 Palmisano	 Stephen
10.1016/j.jmapro.2019.10.016	 Wang	 Qiyue
10.1016/j.jmapro.2019.10.016	 Cheng	 Yongchao
10.1016/j.jmapro.2019.10.016	 Jiao	 Wenhua
10.1016/j.jmapro.2019.10.016	 Johnson	 Michael T.
10.1016/j.jmapro.2019.10.016	 Zhang	 YuMing
10.1016/j.humov.2019.102526	 Lubetzky	 Anat V.
10.1016/j.humov.2019.102526	 Harel	 Daphna
10.1016/j.humov.2019.102526	 Kelly	 Jennifer
10.1016/j.humov.2019.102526	 Hujsak	 Bryan D.
10.1016/j.humov.2019.102526	 Perlin	 Ken
10.1177/0018720819835088	 Marchetto	 Jonathan
10.1177/0018720819835088	 Wright	 W. Geoffrey
10.1007/s10055-018-0376-x	 Shu	 Yu
10.1007/s10055-018-0376-x	 Huang	 Yen-Zhang
10.1007/s10055-018-0376-x	 Chang	 Shu-Hsuan
10.1007/s10055-018-0376-x	 Chen	 Mu-Yen
10.1177/0735633119854025	 Klippel	 Alexander
10.1177/0735633119854025	 Zhao	 Jiayan
10.1177/0735633119854025	 Jackson	 Kathy Lou
10.1177/0735633119854025	 La Femina	 Peter
10.1177/0735633119854025	 Stubbs	 Chris
10.1177/0735633119854025	 Wetzel	 Ryan
10.1177/0735633119854025	 Blair	 Jordan
10.1177/0735633119854025	 Wallgrun	 Jan Oliver
10.1177/0735633119854025	 Oprean	 Danielle
10.1007/s10055-019-00412-x	 Cao	 Shi
10.1007/s10055-019-00412-x	 Nandakumar	 Krithika
10.1007/s10055-019-00412-x	 Babu	 Raiju
10.1007/s10055-019-00412-x	 Thompson	 Benjamin
10.14716/ijtech.v10i7.3259	 Kalarat	 Kosin
10.14716/ijtech.v10i7.3259	 Koomhin	 Phanit
10.3389/fnhum.2019.00417	 Kourtesis	 Panagiotis
10.3389/fnhum.2019.00417	 Collina	 Simona
10.3389/fnhum.2019.00417	 Doumas	 Leonidas A. A.
10.3389/fnhum.2019.00417	 MacPherson	 Sarah E.
10.1007/s10055-019-00409-6	 De Paolis	 Lucio Tommaso
10.1007/s10055-019-00409-6	 De Luca	 Valerio
10.3389/fnhum.2019.00401	 Tremmel	 Christoph
10.3389/fnhum.2019.00401	 Herff	 Christian
10.3389/fnhum.2019.00401	 Sato	 Tetsuya
10.3389/fnhum.2019.00401	 Rechowicz	 Krzysztof
10.3389/fnhum.2019.00401	 Yamani	 Yusuke
10.3389/fnhum.2019.00401	 Krusienski	 Dean J.
10.1080/17483107.2019.1688398	 Jost	 Tyler A.
10.1080/17483107.2019.1688398	 Nelson	 Bradley
10.1080/17483107.2019.1688398	 Rylander	 Jonathan
10.1007/s12065-019-00314-6	 Huang	 Weibo
10.1007/s12065-019-00314-6	 Xiang	 Handun
10.1007/s12065-019-00314-6	 Li	 Shaohui
10.1007/s10055-019-00407-8	 Clifton	 Jeremy
10.1007/s10055-019-00407-8	 Palmisano	 Stephen
10.1002/cav.1873	 Ronchi	 Enrico
10.1002/cav.1873	 Mayorga	 David
10.1002/cav.1873	 Lovreglio	 Ruggiero
10.1002/cav.1873	 Wahlqvist	 Jonathan
10.1002/cav.1873	 Nilsson	 Daniel
10.3390/su11226453	 Lee	 Eun-Young
10.3390/su11226453	 Tran	 Van Thanh
10.3390/su11226453	 Kim	 Dongho
10.1080/00207540601064773	 Ong	 S. K.
10.1080/00207540601064773	 Yuan	 M. L.
10.1080/00207540601064773	 Nee	 A. Y. C.
10.3390/ijerph16224406	 Perrin	 Theo
10.3390/ijerph16224406	 Faure	 Charles
10.3390/ijerph16224406	 Nay	 Kevin
10.3390/ijerph16224406	 Cattozzo	 Giammaria
10.3390/ijerph16224406	 Sorel	 Anthony
10.3390/ijerph16224406	 Kulpa	 Richard
10.3390/ijerph16224406	 Kerherve	 Hugo A.
10.1016/j.heliyon.2019.e02583	 Piccione	 Joseph
10.1016/j.heliyon.2019.e02583	 Collett	 James
10.1016/j.heliyon.2019.e02583	 De Foe	 Alexander
10.21053/ceo.2018.01592	 Park	 Jeong Hye
10.21053/ceo.2018.01592	 Jeon	 Han Jae
10.21053/ceo.2018.01592	 Lim	 Eun-Cheon
10.21053/ceo.2018.01592	 Koo	 Ja-Won
10.21053/ceo.2018.01592	 Lee	 Hyo-Jeong
10.21053/ceo.2018.01592	 Kim	 Hyung-Jong
10.21053/ceo.2018.01592	 Lee	 Jung Seop
10.21053/ceo.2018.01592	 Song	 Chang-Geun
10.21053/ceo.2018.01592	 Hong	 Sung Kwang
10.12659/MSM.915284	 Lee	 Donggeon
10.12659/MSM.915284	 Hong	 Soungkyun
10.12659/MSM.915284	 Jung	 Sunhye
10.12659/MSM.915284	 Lee	 Kyeongbong
10.12659/MSM.915284	 Lee	 Gyuchang
10.1080/17453054.2019.1671813	 Maniam	 Pavithran
10.1080/17453054.2019.1671813	 Schnell	 Philipp
10.1080/17453054.2019.1671813	 Dan	 Lilly
10.1080/17453054.2019.1671813	 Portelli	 Rony
10.1080/17453054.2019.1671813	 Erolin	 Caroline
10.1080/17453054.2019.1671813	 Mountain	 Rodney
10.1080/17453054.2019.1671813	 Wilkinson	 Tracey
10.1186/s12984-019-0601-1	 Cikajlo	 Imre
10.1186/s12984-019-0601-1	 Potisk	 Karmen Peterlin
10.1007/s11042-019-08220-w	 Lee	 Jiwon
10.1007/s11042-019-08220-w	 Kim	 Mingyu
10.1007/s11042-019-08220-w	 Kim	 Jinmo
10.1016/j.compedu.2019.103600	 Cheng	 Kun-Hung
10.1016/j.compedu.2019.103600	 Tsai	 Chin-Chung
10.1177/0278364919842925	 Rosen	 Eric
10.1177/0278364919842925	 Whitney	 David
10.1177/0278364919842925	 Phillips	 Elizabeth
10.1177/0278364919842925	 Chien	 Gary
10.1177/0278364919842925	 Tompkin	 James
10.1177/0278364919842925	 Konidaris	 George
10.1177/0278364919842925	 Tellex	 Stefanie
10.1016/j.autcon.2019.102884	 Zhang	 Yuxuan
10.1016/j.autcon.2019.102884	 Liu	 Hexu
10.1016/j.autcon.2019.102884	 Zhao	 Mingjun
10.3390/sym11040476	 Park	 Seongjun
10.1016/j.autcon.2019.102884	 Al-Hussein	 Mohamed
10.1109/JSEN.2019.2921644	 Jansen	 Wouter
10.1109/JSEN.2019.2921644	 Laurijssen	 Dennis
10.1109/JSEN.2019.2921644	 Daems	 Walter
10.1109/JSEN.2019.2921644	 Steckel	 Jan
10.1007/s10956-019-09781-z	 Starr	 Christine R.
10.1007/s10956-019-09781-z	 Anderson	 Barrett R.
10.1007/s10956-019-09781-z	 Green	 Katherine A.
10.1016/j.buildenv.2019.106285	 Cha	 Seung Hyun
10.1016/j.buildenv.2019.106285	 Koo	 Choongwan
10.1016/j.buildenv.2019.106285	 Kim	 Tae Wan
10.1016/j.buildenv.2019.106285	 Hong	 Taehoon
10.1177/1471301219868036	 Rose	 Vienna
10.1177/1471301219868036	 Stewart	 Inga
10.1177/1471301219868036	 Jenkins	 Keith G.
10.1177/1471301219868036	 Tabbaa	 Luma
10.1177/1471301219868036	 Ang	 Chee Siang
10.1177/1471301219868036	 Matsangidou	 Maria
10.2196/13887	 Ijaz	 Kiran
10.2196/13887	 Ahmadpour	 Naseem
10.2196/13887	 Naismith	 Sharon L.
10.2196/13887	 Calvo	 Rafael A.
10.1364/OE.27.024877	 Beams	 Ryan
10.1364/OE.27.024877	 Kim	 Andrea S.
10.1364/OE.27.024877	 Badano	 Aldo
10.1093/iwc/iwz033	 Naylor	 Matthew
10.1093/iwc/iwz033	 Morrison	 Ben
10.1093/iwc/iwz033	 Ridout	 Brad
10.1093/iwc/iwz033	 Campbell	 Andrew
10.1007/s10015-019-00536-y	 Yamaguchi	 Masahiro
10.1007/s10015-019-00536-y	 Matsumura	 Masayo
10.1007/s10015-019-00536-y	 Shimada	 Hikari
10.1007/s10015-019-00536-y	 Araki	 Kenji
10.1109/TNSRE.2019.2931778	 Nai	 Weizhi
10.1109/TNSRE.2019.2931778	 Feng	 Junyan
10.1109/TNSRE.2019.2931778	 Shan	 Ling
10.1109/TNSRE.2019.2931778	 Jia	 Feiyong
10.1109/TNSRE.2019.2931778	 Sun	 Minghui
10.1109/TNSRE.2019.2931778	 Sun	 Xiaoying
10.1007/s10055-018-0348-1	 Shen	 Chien-wen
10.1007/s10055-018-0348-1	 Ho	 Jung-tsung
10.1007/s10055-018-0348-1	 Pham Thi Minh	 Ly
10.1007/s10055-018-0348-1	 Kuo	 Ting-chang
10.1115/1.4043068	 Micaroni	 Lorenzo
10.1115/1.4043068	 Carulli	 Marina
10.1115/1.4043068	 Ferrise	 Francesco
10.1115/1.4043068	 Gallace	 Alberto
10.1115/1.4043068	 Bordegoni	 Monica
10.1016/j.apergo.2019.04.001	 Rizzuto	 Michael A.
10.1016/j.apergo.2019.04.001	 Sonne	 Michael W. L.
10.1016/j.apergo.2019.04.001	 Vignais	 Nicolas
10.1016/j.apergo.2019.04.001	 Keir	 Peter J.
10.3389/fnagi.2019.00218	 Sakhare	 Ashwin R.
10.3389/fnagi.2019.00218	 Yang	 Vincent
10.3389/fnagi.2019.00218	 Stradford	 Joy
10.3389/fnagi.2019.00218	 Tsang	 Ivan
10.3389/fnagi.2019.00218	 Ravichandran	 Roshan
10.3389/fnagi.2019.00218	 Pa	 Judy
10.1177/0018720819867501	 Chung	 Hyun Chae
10.1177/0018720819867501	 Choi	 Gyoojae
10.1177/0018720819867501	 Azam	 Muhammad
10.1145/3313902	 Kelly	 Jonathan W.
10.1145/3313902	 Klesel	 Brenna C.
10.1145/3313902	 Cherep	 Lucia A.
10.1016/j.entcom.2019.100308	 Yildirim	 Cagdas
10.1016/j.entcom.2019.100308	 Bostan	 Barbaros
10.1016/j.entcom.2019.100308	 Berkman	 Mehmet Ilker
10.3390/jcm8081153	 Ghita	 Alexandra
10.3390/jcm8081153	 Hernandez-Serrano	 Olga
10.3390/jcm8081153	 Fernandez-Ruiz	 Yolanda
10.3390/jcm8081153	 Monras	 Miquel
10.3390/jcm8081153	 Ortega	 Lluisa
10.3390/jcm8081153	 Mondon	 Silvia
10.3390/jcm8081153	 Teixidor	 Lidia
10.3390/jcm8081153	 Gual	 Antoni
10.3390/jcm8081153	 Porras-Garcia	 Bruno
10.3390/jcm8081153	 Ferrer-Garcia	 Marta
10.3390/jcm8081153	 Gutierrez-Maldonado	 Jose
10.1016/j.jflm.2019.06.005	 Jurda	 Mikolas
10.1016/j.jflm.2019.06.005	 Urbanova	 Petra
10.1016/j.jflm.2019.06.005	 Chmelik	 Jiri
10.1080/10494820.2019.1641525	 Huang	 Wen
10.3389/frobt.2019.00050	 Srivastava	 Priyanka
10.3389/frobt.2019.00050	 Rimzhim	 Anurag
10.3389/frobt.2019.00050	 Vijay	 Palash
10.3389/frobt.2019.00050	 Singh	 Shruti
10.3389/frobt.2019.00050	 Chandra	 Sushil
10.1109/TLT.2019.2926727	 Ali	 Almaas A.
10.1109/TLT.2019.2926727	 Dafoulas	 Georgios A.
10.1109/TLT.2019.2926727	 Augusto	 Juan Carlos
00.0000/0027	 Alghamdi	 Najood
00.0000/0027	 Alhalabi	 Wadee
10.1016/j.ergon.2019.06.013	 Lin	 Chiuhsiang J.
10.1016/j.ergon.2019.06.013	 Abreham	 Betsha T.
10.1016/j.ergon.2019.06.013	 Woldegiorgis	 Bereket H.
10.1016/j.diin.2019.04.007	 Casey	 Peter
10.1016/j.diin.2019.04.007	 Lindsay-Decusati	 Rebecca
10.1016/j.diin.2019.04.007	 Baggili	 Ibrahim
10.1016/j.diin.2019.04.007	 Breitinger	 Frank
10.1109/LRA.2019.2921928	 Wang	 Qiyue
10.1109/LRA.2019.2921928	 Jiao	 Wenhua
10.1109/LRA.2019.2921928	 Yu	 Rui
10.1109/LRA.2019.2921928	 Johnson	 Michael T.
10.1109/LRA.2019.2921928	 Zhang	 YuMing
10.1016/j.displa.2018.07.001	 Arcioni	 Benjamin
10.1016/j.displa.2018.07.001	 Palmisano	 Stephen
10.1016/j.displa.2018.07.001	 Apthorp	 Deborah
10.1016/j.displa.2018.07.001	 Kim	 Juno
10.1016/j.displa.2018.10.001	 Kuiper	 Ouren X.
10.1016/j.displa.2018.10.001	 Bos	 Jelte E.
10.1016/j.displa.2018.10.001	 Diels	 Cyriel
10.1007/s11548-019-01992-4	 Groves	 Leah A.
10.1007/s11548-019-01992-4	 Carnahan	 Patrick
10.1007/s11548-019-01992-4	 Allen	 Daniel R.
10.1007/s11548-019-01992-4	 Adam	 Rankin
10.1007/s11548-019-01992-4	 Peters	 Terry M.
10.1007/s11548-019-01992-4	 Chen	 Elvis C. S.
10.1016/j.archger.2019.05.008	 Micarelli	 Alessandro
10.1016/j.archger.2019.05.008	 Viziano	 Andrea
10.1016/j.archger.2019.05.008	 Micarelli	 Beatrice
10.1016/j.archger.2019.05.008	 Augimeri	 Ivan
10.1016/j.archger.2019.05.008	 Alessandrini	 Marco
10.1016/j.simpat.2019.03.005	 Perez	 Daniel
10.1016/j.simpat.2019.03.005	 Hasan	 Mahmud
10.1016/j.simpat.2019.03.005	 Shen	 Yuzhong
10.1016/j.simpat.2019.03.005	 Yang	 Hong
10.1108/JET-12-2018-0057	 Howes	 Sarah C.
10.1108/JET-12-2018-0057	 Charles	 Darryl
10.1108/JET-12-2018-0057	 Pedlow	 Katy
10.1108/JET-12-2018-0057	 Wilson	 Iseult
10.1108/JET-12-2018-0057	 Holmes	 Dominic
10.1108/JET-12-2018-0057	 McDonough	 Suzanne
10.3389/fpsyg.2019.01330	 Plechata	 Adela
10.3389/fpsyg.2019.01330	 Sahula	 Vaclav
10.3389/fpsyg.2019.01330	 Fayette	 Dan
10.3389/fpsyg.2019.01330	 Fajnerova	 Iveta
10.1080/00140139.2019.1582805	 Hirota	 Masakazu
10.1080/00140139.2019.1582805	 Kanda	 Hiroyuki
10.1080/00140139.2019.1582805	 Endo	 Takao
10.1080/00140139.2019.1582805	 Miyoshi	 Tomomitsu
10.1080/00140139.2019.1582805	 Miyagawa	 Suguru
10.1080/00140139.2019.1582805	 Hirohara	 Yoko
10.1080/00140139.2019.1582805	 Yamaguchi	 Tatsuo
10.1080/00140139.2019.1582805	 Saika	 Makoto
10.1080/00140139.2019.1582805	 Morimoto	 Takeshi
10.1080/00140139.2019.1582805	 Fujikado	 Takashi
10.1016/j.cag.2019.03.018	 Siess	 Andreas
10.1016/j.cag.2019.03.018	 Woelfe	 Matthias
10.1007/s11277-018-5382-5	 Baqai	 Attiya
10.1007/s11277-018-5382-5	 Memon	 Khuhed
10.1007/s11277-018-5382-5	 Memon	 Azam Rafique
10.1007/s11277-018-5382-5	 Shah	 Syed Muhammad Zaigham Abbas
10.1007/s41064-019-00065-0	 Tschirschwitz	 Felix
10.1007/s41064-019-00065-0	 Richerzhagen	 Christian
10.1007/s41064-019-00065-0	 Przybilla	 Heinz-Juergen
10.1007/s41064-019-00065-0	 Kersten	 Thomas P.
10.3928/02793695-20190430-01	 Worley	 Julie
10.1177/1553350618822860	 Vertemati	 Maurizio
10.1177/1553350618822860	 Cassin	 Simone
10.1177/1553350618822860	 Rizzetto	 Francesco
10.1177/1553350618822860	 Vanzulli	 Angelo
10.1177/1553350618822860	 Elli	 Marco
10.1177/1553350618822860	 Sampogna	 Gianluca
10.1177/1553350618822860	 Gallieni	 Maurizio
10.1007/s10055-018-0371-2	 Pai	 Yun Suen
10.1007/s10055-018-0371-2	 Dingler	 Tilman
10.1007/s10055-018-0371-2	 Kunze	 Kai
10.1007/s10055-018-0374-z	 Caserman	 Polona
10.1007/s10055-018-0374-z	 Garcia-Agundez	 Augusto
10.1007/s10055-018-0374-z	 Konrad	 Robert
10.1007/s10055-018-0374-z	 Goebel	 Stefan
10.1007/s10055-018-0374-z	 Steinmetz	 Ralf
10.1016/j.chb.2018.12.018	 Simon	 Sofia C.
10.1016/j.chb.2018.12.018	 Greitemeyer	 Tobias
10.1200/JGO.18.00263	 Bing	 Eric G.
10.1200/JGO.18.00263	 Parham	 Groesbeck P.
10.1200/JGO.18.00263	 Cuevas	 Anthony
10.1200/JGO.18.00263	 Fisher	 Boris
10.1200/JGO.18.00263	 Skinner	 Jonathan
10.1200/JGO.18.00263	 Mwanahamuntu	 Mulindi
10.1200/JGO.18.00263	 Sullivan	 Richard
10.1002/cav.1880	 Zhu	 Xiaoqiang
10.1002/cav.1880	 Song	 Lei
10.1002/cav.1880	 Wang	 Nan
10.1002/cav.1880	 Zhang	 Ruiheng
10.1002/cav.1880	 Chen	 Shenshuai
10.1002/cav.1880	 Wang	 Xiangyang
10.1002/cav.1880	 Zhu	 Mengyao
10.1002/cav.1880	 You	 Lihua
10.1002/cav.1880	 Deng	 Zhigang
10.1002/cav.1880	 Jin	 Xiaogang
10.3390/info10050177	 Rossi	 Henrique
10.3390/info10050177	 Prates	 Raquel
10.3390/info10050177	 Santos	 Sibele
10.3390/info10050177	 Ferreira	 Renato
10.1097/NNE.0000000000000570	 Kardong-Edgren	 Suzan
10.1097/NNE.0000000000000570	 Breitkreuz	 Karen
10.1097/NNE.0000000000000570	 Werb	 Michael
10.1097/NNE.0000000000000570	 Foreman	 Stephen
10.1097/NNE.0000000000000570	 Ellertson	 Anthony
10.1109/TVCG.2019.2898782	 Wang	 Lili
10.1109/TVCG.2019.2898782	 Wu	 Jian
10.1109/TVCG.2019.2898782	 Yang	 Xuefeng
10.1109/TVCG.2019.2898782	 Popescu	 Voicu
10.1016/j.apacoust.2018.12.037	 Jeon	 Jin Yong
10.1016/j.apacoust.2018.12.037	 Jo	 Hyun In
10.1016/j.apacoust.2018.12.037	 Kim	 Sung Min
10.1016/j.apacoust.2018.12.037	 Yang	 Hong Seok
10.1016/j.jbiomech.2019.02.015	 Spitzley	 Kate A.
10.1016/j.jbiomech.2019.02.015	 Karduna	 Andrew R.
10.1016/j.jbmt.2019.02.012	 Qidwai	 Uvais
10.1016/j.jbmt.2019.02.012	 Ajimsha	 M. S.
10.1016/j.jbmt.2019.02.012	 Shakir	 Mohamed
10.1002/jsid.765	 Hoffman	 David M.
10.1002/jsid.765	 McKenzie	 Chris
10.1002/jsid.765	 Koprowski	 Brion
10.1002/jsid.765	 Iqbal	 Asif
10.1002/jsid.765	 Balram	 Nikhil
10.3390/sym11040476	 Park	 Wonjun
10.3390/sym11040476	 Heo	 Hayoung
10.3390/sym11040476	 Kim	 Jinmo
10.1177/1354856517738171	 Golding	 Dan
10.1089/end.2018.0626	 Parkhomenko	 Egor
10.1089/end.2018.0626	 O'Leary	 Mitchell
10.1089/end.2018.0626	 Safiullah	 Shoaib
10.1089/end.2018.0626	 Walia	 Sartaaj
10.1089/end.2018.0626	 Owyong	 Michael
10.1089/end.2018.0626	 Lin	 Cyrus
10.1089/end.2018.0626	 James	 Ryan
10.1089/end.2018.0626	 Okhunov	 Zhamshid
10.1089/end.2018.0626	 Patel	 Roshan M.
10.1089/end.2018.0626	 Kaler	 Kamaljot S.
10.1089/end.2018.0626	 Landman	 Jaime
10.1089/end.2018.0626	 Clayman	 Ralph
10.1016/j.jcde.2018.05.006	 Sun	 Chengyu
10.1016/j.jcde.2018.05.006	 Hu	 Wei
10.1016/j.jcde.2018.05.006	 Xu	 Diqiong
10.1016/j.cpc.2018.11.013	 Garcia-Hernandez	 Ruben Jesus
10.1016/j.cpc.2018.11.013	 Kranzlmueller	 Dieter
10.24507/ijicic.15.02.591	 Yasui	 Kento
10.24507/ijicic.15.02.591	 Kawai	 Ryuta
10.24507/ijicic.15.02.591	 Arakawa	 Toshiya
10.1109/LRA.2018.2888628	 Barreiros	 Jose
10.1109/LRA.2018.2888628	 Claure	 Houston
10.1109/LRA.2018.2888628	 Peele	 Bryan
10.1109/LRA.2018.2888628	 Shapira	 Omer
10.1109/LRA.2018.2888628	 Spjut	 Josef
10.1109/LRA.2018.2888628	 Luebke	 David
10.1109/LRA.2018.2888628	 Jung	 Malte
10.1109/LRA.2018.2888628	 Shepherd	 Robert
10.1371/journal.pone.0214603	 Ahrens	 Axel
10.1371/journal.pone.0214603	 Lund	 Kasper Duemose
10.1371/journal.pone.0214603	 Marschall	 Marton
10.1371/journal.pone.0214603	 Dau	 Torsten
10.1016/j.jbiomech.2019.02.004	 Lubetzky	 Anat V.
10.1016/j.jbiomech.2019.02.004	 Wang	 Zhu
10.1016/j.jbiomech.2019.02.004	 Krasovsky	 Ta
10.3332/ecancer.2019.910	 Parham	 Groesbeck
10.3332/ecancer.2019.910	 Bing	 Eric G.
10.3332/ecancer.2019.910	 Cuevas	 Anthony
10.3332/ecancer.2019.910	 Fisher	 Boris
10.3332/ecancer.2019.910	 Skinner	 Jonathan
10.3332/ecancer.2019.910	 Mwanahamuntu	 Mulindi
10.3332/ecancer.2019.910	 Sullivan	 Richard
10.3390/su11061605	 Ho	 Li-Hsing
10.3390/su11061605	 Sun	 Hung
10.3390/su11061605	 Tsai	 Tsun-Hung
10.1186/s13673-019-0169-6	 Park	 San
10.1186/s13673-019-0169-6	 Cho	 Seoungjae
10.1186/s13673-019-0169-6	 Park	 Jisun
10.1186/s13673-019-0169-6	 Huang	 Kaisi
10.1186/s13673-019-0169-6	 Sung	 Yunsick
10.1186/s13673-019-0169-6	 Cho	 Kyungeun
10.1007/s11042-018-6403-9	 Park	 Kyeong-Beom
10.1007/s11042-018-6403-9	 Lee	 Jae Yeol
10.3390/s19051121	 Alsaeedi	 Nassr
10.3390/s19051121	 Wloka	 Dieter
10.1007/s10209-017-0581-5	 Narciso	 David
10.1007/s10209-017-0581-5	 Bessa	 Maximino
10.1007/s10209-017-0581-5	 Melo	 Miguel
10.1007/s10209-017-0581-5	 Coelho	 Antonio
10.1007/s10209-017-0581-5	 Vasconcelos-Raposo	 Jose
10.1007/s10055-018-0346-3	 Krokos	 Eric
10.1007/s10055-018-0346-3	 Plaisant	 Catherine
10.1007/s10055-018-0346-3	 Varshney	 Amitabh
10.1007/s10055-018-0364-1	 Kwon	 Chongsan
10.1007/s11548-018-1814-7	 Gibby	 Jacob T.
10.1007/s11548-018-1814-7	 Swenson	 Samuel A.
10.1007/s11548-018-1814-7	 Cvetko	 Steve
10.1007/s11548-018-1814-7	 Rao	 Raj
10.1007/s11548-018-1814-7	 Javan	 Ramin
10.1037/neu0000517	 Foerster	 Rebecca M.
10.1037/neu0000517	 Poth	 Christian H.
10.1037/neu0000517	 Behler	 Christian
10.1037/neu0000517	 Botsch	 Mario
10.1037/neu0000517	 Schneider	 Werner X.
10.1016/j.buildenv.2018.12.054	 Jo	 Hyun In
10.1016/j.buildenv.2018.12.054	 Jeon	 Jin Yong
10.1186/s12859-019-2666-z	 Zhang	 Jimmy F.
10.1186/s12859-019-2666-z	 Paciorkowski	 Alex R.
10.1186/s12859-019-2666-z	 Craig	 Paul A.
10.1186/s12859-019-2666-z	 Cui	 Feng
10.1167/tvst.8.1.23	 Deemer	 Ashley D.
10.1167/tvst.8.1.23	 Swenor	 Bonnielin K.
10.1167/tvst.8.1.23	 Fujiwara	 Kyoko
10.1167/tvst.8.1.23	 Deremeik	 James T.
10.1167/tvst.8.1.23	 Ross	 Nicole C.
10.1167/tvst.8.1.23	 Natale	 Danielle M.
10.1167/tvst.8.1.23	 Bradley	 Chris K.
10.1167/tvst.8.1.23	 Werblin	 Frank S.
10.1167/tvst.8.1.23	 Massof	 Robert W.
10.1002/jsid.747	 Zhang	 Zhenliang
10.1002/jsid.747	 Li	 Yue
10.1002/jsid.747	 Guo	 Jie
10.1002/jsid.747	 Weng	 Dongdong
10.1002/jsid.747	 Liu	 Yue
10.1002/jsid.747	 Wang	 Yongtian
10.1002/jsid.750	 Guo	 Jie
10.1002/jsid.750	 Weng	 Dongdong
10.1002/jsid.750	 Zhang	 Zhenliang
10.1002/jsid.750	 Liu	 Yue
10.1002/jsid.750	 Duh	 Henry B. -L.
10.1002/jsid.750	 Wang	 Yongtian
10.1119/1.5080224	 Franklin	 J.
10.1119/1.5080224	 Ryder	 Andrew
10.1088/1741-2552/aaed17	 Chu	 Veronica C.
10.1088/1741-2552/aaed17	 D'Zmura	 Michael
10.1364/OE.27.001164	 Chou	 Ping-Yen
10.1364/OE.27.001164	 Wu	 Dui-Yi
10.1364/OE.27.001164	 Huang	 Shang-Hao
10.1364/OE.27.001164	 Wang	 Chun-Ping
10.1364/OE.27.001164	 Qin	 Zong
10.1364/OE.27.001164	 Huang	 Cheng-Ting
10.1364/OE.27.001164	 Hsieh	 Po-Yuan
10.1364/OE.27.001164	 Lee	 Hsin-Hseuh
10.1364/OE.27.001164	 Lin	 Ting-Hsuan
10.1364/OE.27.001164	 Huang	 Yi-Pai
10.1016/j.buildenv.2018.11.004	 Jeon	 Jin Yong
10.1016/j.buildenv.2018.11.004	 Jo	 Hyun In
00.0000/0060	 Del Verme	 Laura
00.0000/0061	 Hensen	 Benedikt
00.0000/0061	 Koren	 Istvan
00.0000/0061	 Klamma	 Ralf
10.3233/ICA-180586	 Yao	 Zhaolin
10.3233/ICA-180586	 Wang	 Yijun
10.3233/ICA-180586	 Yang	 Chen
10.3233/ICA-180586	 Pei	 Weihua
10.3233/ICA-180586	 Gao	 Xiaorong
10.3233/ICA-180586	 Chen	 Hongda
10.1109/ACCESS.2019.2934990	 Liang	 Zhipeng
10.1109/ACCESS.2019.2934990	 Zhou	 Keping
10.1109/ACCESS.2019.2934990	 Gao	 Kaixin
10.3233/VES-190660	 Nehrujee	 Aravind
10.3233/VES-190660	 Vasanthan	 Lenny
10.3233/VES-190660	 Lepcha	 Anjali
10.3233/VES-190660	 Balasubramanian	 Sivakumar
10.1016/j.ijleo.2019.01.083	 Zeng	 Zongshun
10.1016/j.ijleo.2019.01.083	 Ma	 Xiaozhe
10.1016/j.ijleo.2019.01.083	 Zhang	 Fang
10.1016/j.ijleo.2019.01.083	 Zhu	 Jing
10.1016/j.ijleo.2019.01.083	 Avakaw	 Syarhei
10.1016/j.ijleo.2019.01.083	 Huang	 Huijle
10.1080/15980316.2019.1567612	 Han	 Jungmin
10.1080/15980316.2019.1567612	 Suk	 Hyeon-Jeong
10.1109/ACCESS.2019.2905143	 Chang	 Chen-Wei
10.1109/ACCESS.2019.2905143	 Yeh	 Shih-Ching
10.1109/ACCESS.2019.2905143	 Li	 Mengtong
10.1109/ACCESS.2019.2905143	 Yao	 Eason
10.3991/ijoe.v15i06.9933	 El-Seoud	 Samir A.
10.3991/ijoe.v15i06.9933	 Mady	 Amr S.
10.3991/ijoe.v15i06.9933	 Rashed	 Essam A.
10.1016/j.jbi.2018.11.012	 Avola	 Danilo
10.1016/j.jbi.2018.11.012	 Cinque	 Luigi
10.1016/j.jbi.2018.11.012	 Foresti	 Gian Luca
10.1016/j.jbi.2018.11.012	 Marini	 Marco Raoul
10.1109/ACCESS.2019.2897018	 Laaki	 Heikki
10.1109/ACCESS.2019.2897018	 Miche	 Yoan
10.1109/ACCESS.2019.2897018	 Tammi	 Kari
10.1109/ACCESS.2018.2878237	 Kim	 J. Y.
10.1109/ACCESS.2018.2878237	 Lee	 W. H.
10.1016/j.jvcir.2018.11.039	 Chen	 Xiaoming
10.1016/j.jvcir.2018.11.039	 Chen	 Zhibo
10.1016/j.jvcir.2018.11.039	 Li	 Ye
10.1016/j.jvcir.2018.11.039	 He	 Tianyu
10.1016/j.jvcir.2018.11.039	 Hou	 Junhui
10.1016/j.jvcir.2018.11.039	 Liu	 Sen
10.1016/j.jvcir.2018.11.039	 He	 Ying
10.1515/sjpain-2018-0123	 Zeroth	 Julia A.
10.1515/sjpain-2018-0123	 Dahlquist	 Lynnda M.
10.1515/sjpain-2018-0123	 Foxen-Craft	 Emily C.
10.1016/j.apergo.2018.08.012	 Yu	 Mengli
10.1016/j.apergo.2018.08.012	 Zhou	 Ronggang
10.1016/j.apergo.2018.08.012	 Wang	 Huiwen
10.1016/j.apergo.2018.08.012	 Zhao	 Weihua
10.1016/j.compedu.2018.09.015	 Rupp	 Michael A.
10.1016/j.compedu.2018.09.015	 Odette	 Katy L.
10.1016/j.compedu.2018.09.015	 Kozachuk	 James
10.1016/j.compedu.2018.09.015	 Michaelis	 Jessica R.
10.1016/j.compedu.2018.09.015	 Smither	 Janan A.
10.1016/j.compedu.2018.09.015	 McConnell	 Daniel S.
10.1115/1.4041428	 Ma	 Junfeng
10.1115/1.4041428	 Jaradat	 Raed
10.1115/1.4041428	 Ashour	 Omar
10.1115/1.4041428	 Hamilton	 Michael
10.1115/1.4041428	 Jones	 Parker
10.1115/1.4041428	 Dayarathna	 Vidanelage L.
10.1177/0361198118758311	 Agrawal	 Ravi
10.1177/0361198118758311	 Knodler	 Michael
10.1177/0361198118758311	 Fisher	 Donald L.
10.1177/0361198118758311	 Samuel	 Siby
10.18383/j.tom.2018.00053	 Nguyen	 Brian J.
10.18383/j.tom.2018.00053	 Khurana	 Aman
10.18383/j.tom.2018.00053	 Bagley	 Brendon
10.18383/j.tom.2018.00053	 Yen	 Andrew
10.18383/j.tom.2018.00053	 Brown	 Richard K. J.
10.18383/j.tom.2018.00053	 Stojanovska	 Jadranka
10.18383/j.tom.2018.00053	 Cline	 Michael
10.18383/j.tom.2018.00053	 Goodsitt	 Mitchell
10.18383/j.tom.2018.00053	 Obrzut	 Sebastian
10.1109/TCDS.2018.2828865	 Khan	 Muhammad Sikandar Lal
10.1109/TCDS.2018.2828865	 Halawani	 Alaa
10.1109/TCDS.2018.2828865	 Rehman	 Shafiq Ur
10.1109/TCDS.2018.2828865	 Li	 Haibo
10.1088/1741-2552/aadd55	 Soltan	 Ahmed
10.1088/1741-2552/aadd55	 Barrett	 John Martin
10.1088/1741-2552/aadd55	 Maaskant	 Pleun
10.1088/1741-2552/aadd55	 Armstrong	 Niall
10.1088/1741-2552/aadd55	 Al-Atabany	 Walid
10.1088/1741-2552/aadd55	 Chaudet	 Lionel
10.1088/1741-2552/aadd55	 Neil	 Mark
10.1088/1741-2552/aadd55	 Sernagor	 Evelyne
10.1088/1741-2552/aadd55	 Degenaar	 Patrick
10.3389/fpsyg.2018.02265	 Atzori	 Barbara
10.3389/fpsyg.2018.02265	 Grotto	 Rosapia Lauro
10.3389/fpsyg.2018.02265	 Giugni	 Andrea
10.3389/fpsyg.2018.02265	 Calabro	 Massimo
10.3389/fpsyg.2018.02265	 Alhalabi	 Wadee
10.3389/fpsyg.2018.02265	 Hoffman	 Hunter G.
10.1108/JCHMSD-09-2017-0067	 Kersten	 Thomas Peter
10.1108/JCHMSD-09-2017-0067	 Tschirschwitz	 Felix
10.1108/JCHMSD-09-2017-0067	 Lindstaedt	 Maren
10.1108/JCHMSD-09-2017-0067	 Deggim	 Simon
10.3389/fpsyg.2018.02086	 Cipresso	 Pietro
10.3389/fpsyg.2018.02086	 Chicchi Giglioli	 Irene Alice
10.3389/fpsyg.2018.02086	 Alcaniz Raya	 Mariano
10.3389/fpsyg.2018.02086	 Riva	 Giuseppe
10.1145/3265755	 Elor	 Aviv
10.1145/3265755	 Teodorescu	 Mircea
10.1145/3265755	 Kurniawan	 Sri
10.6036/8816	 Checa	 David
10.6036/8816	 Zulaika	 Juanjo
10.6036/8816	 Lazkanotegi	 Inigo
10.6036/8816	 Bustillo	 Andres
10.1109/TVCG.2018.2868527	 Cha	 Young-Woon
10.1109/TVCG.2018.2868527	 Price	 True
10.1109/TVCG.2018.2868527	 Wei	 Zhen
10.1109/TVCG.2018.2868527	 Lu	 Xinran
10.1109/TVCG.2018.2868527	 Rewkowski	 Nicholas
10.1109/TVCG.2018.2868527	 Chabra	 Rohan
10.1109/TVCG.2018.2868527	 Qin	 Zihe
10.1109/TVCG.2018.2868527	 Kim	 Hyounghun
10.1109/TVCG.2018.2868527	 Su	 Zhaoqi
10.1109/TVCG.2018.2868527	 Liu	 Yebin
10.1109/TVCG.2018.2868527	 Ilie	 Adrian
10.1109/TVCG.2018.2868527	 State	 Andrei
10.1109/TVCG.2018.2868527	 Xu	 Zhenlin
10.1109/TVCG.2018.2868527	 Frahm	 Jan-Michael
10.1109/TVCG.2018.2868527	 Fuchs	 Henry
10.1109/TMM.2018.2829187	 Niwa	 Kenta
10.1109/TMM.2018.2829187	 Hioka	 Yusuke
10.1109/TMM.2018.2829187	 Uematsu	 Hisashi
10.1007/s10055-017-0329-9	 Boylan	 Patrick
10.1007/s10055-017-0329-9	 Kirwan	 Grainne H.
10.1007/s10055-017-0329-9	 Rooney	 Brendan
10.1186/s13673-018-0154-5	 Nanjappan	 Vijayakumar
10.1186/s13673-018-0154-5	 Liang	 Hai-Ning
10.1186/s13673-018-0154-5	 Lu	 Feiyu
10.1186/s13673-018-0154-5	 Papangelis	 Konstantinos
10.1186/s13673-018-0154-5	 Yue	 Yong
10.1186/s13673-018-0154-5	 Man	 Ka Lok
10.1049/htl.2018.5077	 Shattuck	 David W.
10.1007/s11042-018-5730-1	 Avola	 Danilo
10.1007/s11042-018-5730-1	 Cinque	 Luigi
10.1007/s11042-018-5730-1	 Foresti	 Gian Luca
10.1007/s11042-018-5730-1	 Marini	 Marco Raoul
10.1007/s11042-018-5730-1	 Pannone	 Daniele
10.30773/pi.2018.06.28.3	 Kim	 Hyunjeong
10.30773/pi.2018.06.28.3	 Park	 Jin Young
10.30773/pi.2018.06.28.3	 Kim	 Kwanguk (Kenny)
10.1089/g4h.2017.0190	 Shafer	 Daniel M.
10.1089/g4h.2017.0190	 Carbonara	 Corey P.
10.1089/g4h.2017.0190	 Korpi	 Michael F.
10.1016/j.apergo.2018.03.015	 Dennison	 Mark
10.1016/j.apergo.2018.03.015	 D'Zmura	 Michael
10.1016/j.chb.2018.04.036	 Mousas	 Christos
10.1016/j.chb.2018.04.036	 Anastasiou	 Dimitris
10.1016/j.chb.2018.04.036	 Spantidi	 Ourania
10.1016/j.ijom.2018.01.005	 Pulijala	 Y.
10.1016/j.ijom.2018.01.005	 Ma	 M.
10.1016/j.ijom.2018.01.005	 Pears	 M.
10.1016/j.ijom.2018.01.005	 Peebles	 D.
10.1016/j.ijom.2018.01.005	 Ayoub	 A.
10.3390/electronics7090171	 Choi	 Song-Woo
10.3390/electronics7090171	 Lee	 Siyeong
10.3390/electronics7090171	 Seo	 Min-Woo
10.3390/electronics7090171	 Kang	 Suk-Ju
10.1016/j.rehab.2018.07.003	 Odin	 Anais
10.1016/j.rehab.2018.07.003	 Faletto-Passy	 Dominique
10.1016/j.rehab.2018.07.003	 Assaban	 Franck
10.1016/j.rehab.2018.07.003	 Perennou	 Dominic
10.3390/sym10090400	 Kim	 Jungho
10.3390/sym10090400	 Kumar	 Yadav Sunil
10.3390/sym10090400	 Yoo	 Jisang
10.3390/sym10090400	 Kwon	 Soonchul
10.1007/s00024-017-1755-z	 Halik	 Lukasz
10.1007/s00024-017-1755-z	 Smaczynski	 Maciej
10.1007/s00371-018-1501-2	 Henshall	 Gareth I.
10.1007/s00371-018-1501-2	 Teahan	 William J.
10.1007/s00371-018-1501-2	 Ap Cenydd	 Llyr
10.1109/TVCG.2017.2754257	 Grubert	 Jens
10.1109/TVCG.2017.2754257	 Itoh	 Yuta
10.1109/TVCG.2017.2754257	 Moser	 Kenneth
10.1109/TVCG.2017.2754257	 Swan	 II
10.1007/s11042-017-5328-z	 Mihajlovic	 Zeljka
10.1007/s11042-017-5328-z	 Popovic	 Sinisa
10.1007/s11042-017-5328-z	 Brkic	 Karla
10.1007/s11042-017-5328-z	 Cosic	 Kresimir
10.1145/3230648	 Agethen	 Philipp
10.1145/3230648	 Sekar	 Viswa Subramanian
10.1145/3230648	 Gaisbauer	 Felix
10.1145/3230648	 Pfeiffer	 Thies
10.1145/3230648	 Otto	 Michael
10.1145/3230648	 Rukzio	 Enrico
10.1145/3232678	 Cecil	 J.
10.1145/3232678	 Gupta	 Avinash
10.1145/3232678	 Pirela-Cruz	 M.
10.1145/3232678	 Ramanthan	 Parmesh
10.1017/S1754470X18000090	 Dietrichkeit	 Mona
10.1017/S1754470X18000090	 Flint	 Kristina
10.1017/S1754470X18000090	 Krieger	 Eva
10.1017/S1754470X18000090	 Grzella	 Karsten
10.1017/S1754470X18000090	 Nagel	 Matthias
10.1017/S1754470X18000090	 Moritz	 Steffen
10.1371/journal.pone.0200724	 Roettl	 Johanna
10.1371/journal.pone.0200724	 Terlutter	 Ralf
10.11999/JEIT170995	 Huai	 Yongjian
10.11999/JEIT170995	 Zhang	 Han
10.11999/JEIT170995	 Zhang	 Shuai
10.1016/j.jocs.2018.05.002	 Zhai	 Xiaojun
10.1016/j.jocs.2018.05.002	 Eslami	 Mohammad
10.1016/j.jocs.2018.05.002	 Hussein	 Ealaf Sayed
10.1016/j.jocs.2018.05.002	 Filali	 Maroua Salem
10.1016/j.jocs.2018.05.002	 Shalaby	 Salma Tarek
10.1016/j.jocs.2018.05.002	 Amira	 Abbes
10.1016/j.jocs.2018.05.002	 Bensaali	 Faycal
10.1016/j.jocs.2018.05.002	 Dakua	 Sarada
10.1016/j.jocs.2018.05.002	 Abinahed	 Julien
10.1016/j.jocs.2018.05.002	 Al-Ansari	 Abdulla
10.1016/j.jocs.2018.05.002	 Ahmed	 Ayman Z.
00.0000/0028	 Alfaro	 Luis
00.0000/0028	 Linares	 Ricardo
00.0000/0028	 Herrera	 Jose
10.1016/j.culher.2018.01.020	 Kolivand	 Hoshang
10.1016/j.culher.2018.01.020	 El Rhalibi	 Abdennour
10.1016/j.culher.2018.01.020	 Sunar	 Mohd Shahrizal
10.1016/j.culher.2018.01.020	 Saba	 Tanzila
10.1145/3182644	 Thies	 Justus
10.1145/3182644	 Zollhofer	 Michael
10.1145/3182644	 Stamminger	 Marc
10.1145/3182644	 Theobalt	 Christian
10.1145/3182644	 Niessner	 Matthias
00.0000/0029	 Porras-Garcia	 Bruno
00.0000/0029	 Ghita	 Alexandra
00.0000/0029	 Moreno	 Manuel
00.0000/0029	 Ferrer-Garcia	 Marta
00.0000/0029	 Bertomeu-Panisello	 Paola
00.0000/0029	 Serrano-Troncoso	 Eduardo
00.0000/0029	 Riva	 Giuseppe
00.0000/0029	 Dakanalis	 Antonios
00.0000/0029	 Achotegui-Loizate	 Jose
00.0000/0029	 Talarn-Caparros	 Antoni
00.0000/0029	 Andreu-Gracia	 Alexis
00.0000/0029	 Treasure	 Janet
00.0000/0029	 Martinez-Mallen	 Esteve
00.0000/0029	 Moreno-Perez	 Elena
00.0000/0029	 Gutierrez-Maldonado	 Jose
10.1364/BOE.9.002825	 Draelos	 Mark
10.1364/BOE.9.002825	 Keller	 Brenton
10.1364/BOE.9.002825	 Viehland	 Christian
10.1364/BOE.9.002825	 Carrasco-Zevallos	 Oscar M.
10.1364/BOE.9.002825	 Kuo	 Anthony
10.1364/BOE.9.002825	 Izatt	 Joseph
10.4218/etrij.2017-0166	 Kim	 Mugeon
10.4218/etrij.2017-0166	 Lim	 Sungjin
10.4218/etrij.2017-0166	 Choi	 Geunseop
10.4218/etrij.2017-0166	 Kim	 Youngmin
10.4218/etrij.2017-0166	 Kim	 Hwi
10.4218/etrij.2017-0166	 Hahn	 Joonku
00.0000/0030	 Abdullah	 Maria
00.0000/0030	 Shaikh	 Zubair Ahmed
10.1142/S1793962318400020	 Jarsaillon	 Pierre J.
10.1142/S1793962318400020	 Sakamoto	 Naohisa
10.1142/S1793962318400020	 Kageyama	 Akira
10.14257/ijgdc.2018.11.6.09	 Jung	 Su-min
10.14257/ijgdc.2018.11.6.09	 Wang	 Dong-Yue
10.14257/ijgdc.2018.11.6.09	 Whangbo	 Taeg-keun
10.1007/s10822-018-0123-0	 Ratamero	 Erick Martins
10.1007/s10822-018-0123-0	 Bellini	 Dom
10.1007/s10822-018-0123-0	 Dowson	 Christopher G.
10.1007/s10822-018-0123-0	 Romer	 Rudolf A.
10.1371/journal.pone.0195886	 Palmisano	 Stephen
10.1371/journal.pone.0195886	 Riecke	 Bernhard E.
10.1111/desc.12557	 Cowie	 Dorothy
10.1111/desc.12557	 McKenna	 Aisling
10.1111/desc.12557	 Bremner	 Andrew J.
10.1111/desc.12557	 Aspell	 Jane E.
10.1364/OE.26.001161	 Soomro	 Shoaib R.
10.1364/OE.26.001161	 Urey	 Hakan
10.1016/j.joms.2017.10.002	 Pulijala	 Yeshwanth
10.1016/j.joms.2017.10.002	 Ma	 Minhua
10.1016/j.joms.2017.10.002	 Pears	 Matthew
10.1016/j.joms.2017.10.002	 Peebles	 David
10.1016/j.joms.2017.10.002	 Ayoub	 Ashraf
10.1002/cav.1812	 Jung	 Jinki
10.1002/cav.1812	 Ahn	 Young Joong
10.1002/cav.1830	 Monteiro	 Diego
10.1002/cav.1830	 Liang	 Hai-Ning
10.1002/cav.1830	 Xu	 Wenge
10.1002/cav.1830	 Brucker	 Marvin
10.1002/cav.1830	 Nanjappan	 Vijayakumar
10.1002/cav.1830	 Yue	 Yong
10.1016/j.cag.2017.11.007	 Melo	 Miguel
10.1016/j.cag.2017.11.007	 Vasconcelos-Raposo	 Jose
10.1016/j.cag.2017.11.007	 Bessa	 Maximino
10.1109/TVCG.2018.2793698	 Ghosh	 Sarthak
10.1109/TVCG.2018.2793698	 Winston	 Lauren
10.1109/TVCG.2018.2793698	 Panchal	 Nishant
10.1109/TVCG.2018.2793698	 Kimura-Thollander	 Philippe
10.1109/TVCG.2018.2793698	 Hotnog	 Jeff
10.1109/TVCG.2018.2793698	 Cheong	 Douglas
10.1109/TVCG.2018.2793698	 Reyes	 Gabriel
10.1109/TVCG.2018.2793698	 Abowd	 Gregory D.
10.1109/TVCG.2018.2794629	 Waltemate	 Thomas
10.1109/TVCG.2018.2794629	 Gall	 Dominik
10.1109/TVCG.2018.2794629	 Roth	 Daniel
10.1109/TVCG.2018.2794629	 Botsch	 Mario
10.1109/TVCG.2018.2794629	 Latoschik	 Marc Erich
10.1145/3229316.3229320	 Park	 Taiwoo
10.1145/3229316.3229320	 Zhang	 Mi
10.1145/3229316.3229320	 Lee	 Youngki
10.1093/comjnl/bxx117	 Zhang	 Meng-Jia
10.1093/comjnl/bxx117	 Zhang	 Kang
10.1093/comjnl/bxx117	 Li	 Jie
10.1093/comjnl/bxx117	 Li	 Yi-Na
10.1016/j.chb.2017.11.033	 Fabroyir	 Hadziq
10.1016/j.chb.2017.11.033	 Teng	 Wei-Chung
10.1016/j.fusengdes.2018.02.031	 Li	 Dan
10.1016/j.fusengdes.2018.02.031	 Xiao	 B. J.
10.1016/j.fusengdes.2018.02.031	 Xia	 J. Y.
10.1016/j.fusengdes.2018.02.031	 Wang	 K. R.
10.1007/s10055-017-0313-4	 Vosinakis	 Spyros
10.1007/s10055-017-0313-4	 Koutsabasis	 Panayiotis
10.1007/s10055-017-0316-1	 Seibert	 Jonmichael
10.1007/s10055-017-0316-1	 Shafer	 Daniel M.
10.5195/ijt.2018.6250	 Proffitt	 Rachel
10.5195/ijt.2018.6250	 Warren	 Jessica
10.5195/ijt.2018.6250	 Lange	 Belinda
10.5195/ijt.2018.6250	 Chang	 Chien-Yen
10.3390/computers7010015	 Carmen Juan	 M. -
10.3390/computers7010015	 Garcia-Garcia	 Inmaculada
10.3390/computers7010015	 Molla	 Ramon
10.3390/computers7010015	 Lopez	 Richard
10.1111/tra.12538	 Johnston	 Angus P. R.
10.1111/tra.12538	 Rae	 James
10.1111/tra.12538	 Ariotti	 Nicholas
10.1111/tra.12538	 Bailey	 Benjamin
10.1111/tra.12538	 Lilja	 Andrew
10.1111/tra.12538	 Webb	 Robyn
10.1111/tra.12538	 Ferguson	 Charles
10.1111/tra.12538	 Maher	 Sheryl
10.1111/tra.12538	 Davis	 Thomas P.
10.1111/tra.12538	 Webb	 Richard I.
10.1111/tra.12538	 McGhee	 John
10.1111/tra.12538	 Parton	 Robert G.
10.14257/ijgdc.2018.11.2.09	 Lee	 Sang Hwa
10.14257/ijgdc.2018.11.2.09	 Nam	 SangHun
10.14257/ijgdc.2018.11.2.09	 Kim	 JungYoon
10.1007/s11036-017-0834-9	 Gadia	 Davide
10.1007/s11036-017-0834-9	 Granato	 Marco
10.1007/s11036-017-0834-9	 Maggiorini	 Dario
10.1007/s11036-017-0834-9	 Ripamonti	 Laura Anna
10.1007/s11036-017-0834-9	 Vismara	 Cinzia
10.1007/s11548-017-1686-2	 Huber	 Tobias
10.1007/s11548-017-1686-2	 Wunderling	 Tom
10.1007/s11548-017-1686-2	 Paschold	 Markus
10.1007/s11548-017-1686-2	 Lang	 Hauke
10.1007/s11548-017-1686-2	 Kneist	 Werner
10.1007/s11548-017-1686-2	 Hansen	 Christian
10.1109/TVCG.2017.2653117	 Buttussi	 Fabio
10.1109/TVCG.2017.2653117	 Chittaro	 Luca
10.1177/1729881417751545	 Kot	 Tomas
10.1177/1729881417751545	 Novak	 Petr
10.3788/YJYXS20183301.0085	 Wang	 Ze-wei
10.3788/YJYXS20183301.0085	 Yu	 You-guang
10.3788/YJYXS20183301.0085	 Yang	 Fu-zheng
10.1089/g4h.2017.0114	 Borrego	 Adrian
10.1089/g4h.2017.0114	 Latorre	 Jorge
10.1089/g4h.2017.0114	 Alcaniz	 Mariano
10.1089/g4h.2017.0114	 Llorens	 Roberto
10.1080/21681163.2017.1343687	 Huang	 Xianwei
10.1080/21681163.2017.1343687	 Naghdy	 Fazel
10.1080/21681163.2017.1343687	 Du	 Haiping
10.1080/21681163.2017.1343687	 Naghdy	 Golshah
10.1080/21681163.2017.1343687	 Murray	 Geoffrey
10.1080/08824096.2018.1525349	 Wu	 Dai-Yun
10.1080/08824096.2018.1525349	 Lin	 Jih-Hsuan Tammy
10.3233/VES-190650	 Lubetzky	 V
10.3233/VES-190650	 Hujsak	 Bryan D.
10.3991/ijoe.v13i08.7371	 Pirker	 Johanna
10.3991/ijoe.v13i08.7371	 Lesjak	 Isabel
10.3991/ijoe.v13i08.7371	 Parger	 Mathias
10.3991/ijoe.v13i08.7371	 Guetl	 Christian
10.5277/ABB-01082-2018-02	 Jurkojc	 Jacek
10.1108/ILS-07-2018-0069	 Hahn	 Jim F.
00.0000/0031	 Lucas	 Jason
10.1162/netn_a_00044	 Keiriz	 Johnson J. G.
10.1162/netn_a_00044	 Zhan	 Liang
10.1162/netn_a_00044	 Ajilore	 Olusola
10.1162/netn_a_00044	 Leow	 Alex D.
10.1162/netn_a_00044	 Forbes	 Angus G.
00.0000/0032	 Yu	 Difeng
00.0000/0032	 Liang	 Hai-Ning
00.0000/0032	 Lu	 Feiyu
00.0000/0032	 Nanjappan	 Vijayakumar
00.0000/0032	 Papangelis	 Konstantinos
00.0000/0032	 Wang	 Wei
10.1109/ACCESS.2018.2864872	 Zou	 Wenjie
10.1109/ACCESS.2018.2864872	 Yang	 Fuzheng
10.1109/ACCESS.2018.2864872	 Zhang	 Wei
10.1109/ACCESS.2018.2864872	 Li	 Yi
10.1109/ACCESS.2018.2864872	 Yu	 Haoping
00.0000/0033	 Ren	 Pu
00.0000/0033	 Shui	 Wuyang
00.0000/0033	 Liu	 Jin
00.0000/0033	 Fan	 Yachun
00.0000/0033	 Zhao	 Wenshuo
00.0000/0033	 Zhou	 Mingquan
10.17398/1695-288X.17.1.61	 Martinez Soto	 Juan Manuel
10.17398/1695-288X.17.1.61	 Egea Vivancos	 Alejandro
10.17398/1695-288X.17.1.61	 Arias Ferrer	 Laura
10.18494/SAM.2018.1912	 Hoyano	 Kengo
10.18494/SAM.2018.1912	 Ogoshi	 Yasuhiro
10.1007/s41064-020-00106-z	 Schmohl	 S
10.1007/s41064-020-00106-z	 Tutzauer	 P
10.1007/s41064-020-00106-z	 Haala	 N
10.1007/s10916-020-01550-5	 Fairen	 M
10.1007/s10916-020-01550-5	 Moyes	 J
10.1007/s10916-020-01550-5	 Insa	 E
10.1007/s10055-020-00432-y	 Bhargava	 A
10.1007/s10055-020-00432-y	 Lucaites	 KM
10.1007/s10055-020-00432-y	 Hartman	 LS
10.1007/s10055-020-00432-y	 Solini	 H
10.1007/s10055-020-00432-y	 Bertrand	 JW
10.1007/s10055-020-00432-y	 Robb	 AC
10.1007/s10055-020-00432-y	 Pagano	 CC
10.1007/s10055-020-00432-y	 Babu	 SV
10.1002/pmrj.12206	 Lee	 SH
10.1002/pmrj.12206	 Jung	 HY
10.1002/pmrj.12206	 Yun	 SJ
10.1002/pmrj.12206	 Oh	 BM
10.1002/pmrj.12206	 Seo	 HG
10.1109/TMM.2019.2933338	 Lou	 JW
10.1109/TMM.2019.2933338	 Wang	 YM
10.1109/TMM.2019.2933338	 Nduka	 C
10.1109/TMM.2019.2933338	 Hamedi	 M
10.1109/TMM.2019.2933338	 Mavridou	 I
10.1109/TMM.2019.2933338	 Wang	 FY
10.1109/TMM.2019.2933338	 Yu	 H
10.1109/TMM.2019.2931807	 Fan	 CL
10.1109/TMM.2019.2931807	 Yen	 SC
10.1109/TMM.2019.2931807	 Huang	 CY
10.1109/TMM.2019.2931807	 Hsu	 CH
10.1016/j.archger.2019.104004	 Almajid	 R
10.1016/j.archger.2019.104004	 Tucker	 C
10.1016/j.archger.2019.104004	 Wright	 WG
10.1016/j.archger.2019.104004	 Vasudevan	 E
10.1016/j.archger.2019.104004	 Keshner	 E
10.1364/OE.382804	 Kuang	 Ying
10.1016/j.ijhcs.2020.102413	 Clark	 Logan D.
10.1016/j.ijhcs.2020.102413	 Bhagat	 Aakash B.
10.1016/j.ijhcs.2020.102413	 Riggs	 Sara L.
10.1016/j.ijhcs.2020.102414	 Esteves	 Augusto
10.1016/j.ijhcs.2020.102414	 Shin	 Yonghwan
10.1016/j.ijhcs.2020.102414	 Oakley	 Ian
10.1007/s10055-019-00401-0	 Yildirim	 Caglar
10.1016/j.chb.2020.106295	 Mattila	 Osmo
10.1016/j.chb.2020.106295	 Korhonen	 Arto
10.1016/j.chb.2020.106295	 Poyry	 Essi
10.1016/j.chb.2020.106295	 Hauru	 Kaisa
10.1016/j.chb.2020.106295	 Holopainen	 Jani
10.1016/j.chb.2020.106295	 Parvinen	 Petri
10.3758/s13428-019-01336-9	 Hornsey	 Rebecca L.
10.3758/s13428-019-01336-9	 Hibbard	 Paul B.
10.3758/s13428-019-01336-9	 Scarfe	 Peter
10.1007/s00104-020-01188-6	 Rueger	 Christoph
10.1007/s00104-020-01188-6	 Moosburnerl	 Simon
10.1007/s00104-020-01188-6	 Sauer	 Igor M.
10.1007/s10639-019-10050-0	 Fernandez Herrero	 Jorge
10.1007/s00170-018-03237-1	 He	 Weiping
10.1007/s10639-019-10050-0	 Lorenzo	 Gonzalo
10.1109/MCSE.2020.2972822	 Desselle	 Mathilde R.
10.1109/MCSE.2020.2972822	 Brown	 Ross A.
10.1109/MCSE.2020.2972822	 James	 Allan R.
10.1109/MCSE.2020.2972822	 Midwinter	 Mark J.
10.1109/MCSE.2020.2972822	 Powell	 Sean
10.1109/MCSE.2020.2972822	 Woodruff	 Maria A.
10.1007/s11042-019-08390-7	 Hu	 Qiang
10.1007/s11042-019-08390-7	 Zhou	 Jun
10.1007/s11042-019-08390-7	 Zhang	 Xiaoyun
10.1007/s11042-019-08390-7	 Shi	 Zhiru
10.1007/s11042-019-08390-7	 Gao	 Zhiyong
10.1016/j.isprsjprs.2020.03.007	 Virtanen	 Juho-Pekka
10.1016/j.isprsjprs.2020.03.007	 Daniel	 Sylvie
10.1016/j.isprsjprs.2020.03.007	 Turppa	 Tuomas
10.1016/j.isprsjprs.2020.03.007	 Zhu	 Lingli
10.1016/j.isprsjprs.2020.03.007	 Julin	 Arttu
10.1016/j.isprsjprs.2020.03.007	 Hyyppa	 Hannu
10.1016/j.isprsjprs.2020.03.007	 Hyyppa	 Juha
10.1109/TVCG.2020.2973473	 Hu	 Zhiming
10.1109/TVCG.2020.2973473	 Li	 Sheng
10.1109/TVCG.2020.2973473	 Zhang	 Congyi
10.1109/TVCG.2020.2973473	 Yi	 Kangrui
10.1109/TVCG.2020.2973473	 Wang	 Guoping
10.1109/TVCG.2020.2973473	 Manocha	 Dinesh
10.1109/TVCG.2020.2973498	 Peck	 Tabitha C.
10.1109/TVCG.2020.2973498	 Sockol	 Laura E.
10.1109/TVCG.2020.2973498	 Hancock	 Sarah M.
10.1109/TVCG.2020.2973442	 Meng	 Xiaoxu
10.1109/TVCG.2020.2973442	 Du	 Ruofei
10.1109/TVCG.2020.2973442	 Varshney	 Amitabh
10.1109/TVCG.2020.2973075	 Gonzalez-Franco	 Mar
10.1109/TVCG.2020.2973075	 Steed	 Anthony
10.1109/TVCG.2020.2973075	 Hoogendyk	 Steve
10.1109/TVCG.2020.2973075	 Ofek	 Eyal
10.1109/TVCG.2020.2973441	 Mirzaei	 Mohammadreza
10.1109/TVCG.2020.2973441	 Kan	 Peter
10.1109/TVCG.2020.2973441	 Kaufmann	 Hannes
10.1109/TVCG.2020.2973053	 Spjut	 Josef
10.1109/TVCG.2020.2973053	 Boudaoud	 Ben
10.1109/TVCG.2020.2973053	 Kim	 Jonghyun
10.1109/TVCG.2020.2973053	 Greer	 Trey
10.1109/TVCG.2020.2973053	 Albert	 Rachel
10.1109/TVCG.2020.2973053	 Stengel	 Michael
10.1109/TVCG.2020.2973053	 Aksit	 Kaan
10.1109/TVCG.2020.2973053	 Luebke	 David
10.1007/s00445-020-01376-6	 Tibaldi	 A.
10.1007/s00445-020-01376-6	 Bonali	 F. L.
10.1007/s00445-020-01376-6	 Vitello	 F.
10.1007/s00445-020-01376-6	 Delage	 E.
10.1007/s00445-020-01376-6	 Nomikou	 P.
10.1007/s00445-020-01376-6	 Antoniou	 V
10.1007/s00445-020-01376-6	 Becciani	 U.
10.1007/s00445-020-01376-6	 de Vries	 B. Van Wyk
10.1007/s00445-020-01376-6	 Krokos	 M.
10.1007/s00445-020-01376-6	 Whitworth	 M.
10.1111/bjet.12946	 Han	 Insook
10.1002/col.22509	 Ha	 Hyeyoung
10.1002/col.22509	 Kwak	 Youngshin
10.1002/col.22509	 Kim	 Hyosun
10.1002/col.22509	 Seo	 Young-jun
10.3389/fnins.2020.00357	 Hagio	 Shota
10.3389/fnins.2020.00357	 Kouzaki	 Motoki
10.1007/s10055-020-00433-x	 Cook	 Matt
10.1007/s10055-020-00433-x	 Grime	 John
10.1080/09588221.2020.1752735	 Tai	 Tzu-Yu
10.1080/09588221.2020.1752735	 Chen	 Howard Hao-Jan
10.1080/09588221.2020.1752735	 Todd	 Graeme
10.1186/s12984-020-00678-2	 Juliano	 Julia M.
10.1186/s12984-020-00678-2	 Liew	 Sook-Lei
10.1007/s10055-020-00440-y	 Lavoie	 Raymond
10.1007/s10055-020-00440-y	 Main	 Kelley
10.1007/s10055-020-00440-y	 King	 Corey
10.1007/s10055-020-00440-y	 King	 Danielle
10.1177/1470412920906260	 Roquet	 Paul
10.1007/s11548-020-02126-x	 Suencksen	 Matthias
10.1007/s11548-020-02126-x	 Bott	 Oliver Johannes
10.1007/s11548-020-02126-x	 Dresing	 Klaus
10.1007/s11548-020-02126-x	 Teistler	 Michael
10.1016/j.apergo.2019.103010	 Penumudi	 Sai Akhil
10.1016/j.apergo.2019.103010	 Kuppam	 Veera Aneesh
10.1016/j.apergo.2019.103010	 Kim	 Jeong Ho
10.1016/j.apergo.2019.103010	 Hwang	 Jaejin
10.1007/s12262-020-02131-z	 Ganni	 Sandeep
10.1007/s12262-020-02131-z	 Li	 Meng
10.1007/s12262-020-02131-z	 Botden	 Sanne M. B. I.
10.1007/s12262-020-02131-z	 Nayak	 Samir Ranjan
10.1007/s12262-020-02131-z	 Ganni	 Bhaskar Rao
10.1007/s12262-020-02131-z	 Rutkowski	 Anne-Francoise
10.1007/s12262-020-02131-z	 Goossens	 Richard H. M.
10.1007/s12262-020-02131-z	 Jakimowicz	 Jack
10.3390/app10062026	 Fanini	 Bruno
10.3390/app10062026	 Cinque	 Luigi
10.3390/info11030134	 Avola	 Danilo
10.3390/info11030134	 Cinque	 Luigi
10.3390/info11030134	 Pannone	 Daniele
10.1016/j.jmatprotec.2004.09.086	 Mujber	 TS
10.1016/j.jmatprotec.2004.09.086	 Szecsi	 T
10.1016/j.jmatprotec.2004.09.086	 Hashmi	 MSJ
10.3390/app10051668	 Kumar	 Pavan B. N.
10.3390/app10051668	 Balasubramanyam	 Adithya
10.3390/app10051668	 Patil	 Ashok Kumar
10.3390/app10051668	 Chethana	 B.
10.3390/app10051668	 Chai	 Young Ho
10.1163/22134808-20201445	 Hejtmanek	 Lukas
10.1163/22134808-20201445	 Starrett	 Michael
10.1163/22134808-20201445	 Ferrer	 Emilio
10.1163/22134808-20201445	 Ekstrom	 Arne D.
10.1007/s10846-019-01054-6	 Watanabe	 Kandai
10.1007/s10846-019-01054-6	 Takahashi	 Masaki
10.1016/j.jhtm.2020.02.003	 Kang	 Hyunjeong
10.1007/s00464-019-06862-3	 Al Janabi	 Hasaneen Fathy
10.1007/s00464-019-06862-3	 Aydin	 Abdullatif
10.1007/s00464-019-06862-3	 Palaneer	 Sharanya
10.1007/s00464-019-06862-3	 Macchione	 Nicola
10.1007/s00464-019-06862-3	 Al-Jabir	 Ahmed
10.1007/s00464-019-06862-3	 Khan	 Muhammad Shamim
10.1007/s00464-019-06862-3	 Dasgupta	 Prokar
10.1007/s00464-019-06862-3	 Ahmed	 Kamran
10.3837/tiis.2020.02.020	 Lee	 Sungjin
10.3837/tiis.2020.02.020	 Hong	 Min
10.3837/tiis.2020.02.020	 Kim	 Sungyeup
10.3837/tiis.2020.02.020	 Choi	 Seong Jun
10.1007/s41064-020-00091-3	 Buyuksalih	 Gurcan
10.1007/s41064-020-00091-3	 Kan	 Tuna
10.1007/s41064-020-00091-3	 Ozkan	 Gozde Enc
10.1007/s41064-020-00091-3	 Meric	 Muge
10.1007/s41064-020-00091-3	 Isin	 Lale
10.1007/s41064-020-00091-3	 Kersten	 Thomas P.
10.1007/s10055-019-00411-y	 Pollard	 Kimberly A.
10.1007/s10055-019-00411-y	 Oiknine	 Ashley H.
10.1007/s10055-019-00411-y	 Files	 Benjamin T.
10.1007/s10055-019-00411-y	 Sinatra	 Anne M.
10.1007/s10055-019-00411-y	 Patton	 Debbie
10.1007/s10055-019-00411-y	 Ericson	 Mark
10.1007/s10055-019-00411-y	 Thomas	 Jerald
10.1007/s10055-019-00411-y	 Khooshabeh	 Peter
10.1002/cav.1920	 Cui	 Xiaoyu
10.1002/cav.1920	 Cai	 Ruifan
10.1002/cav.1920	 Tang	 Xiangjun
10.1002/cav.1920	 Deng	 Zhigang
10.1002/cav.1920	 Jin	 Xiaogang
10.3389/frobt.2020.00020	 Kern	 Angelika C.
10.3389/frobt.2020.00020	 Ellermeier	 Wolfgang
10.1089/g4h.2019.0102	 Xu	 Wenge
10.1089/g4h.2019.0102	 Liang	 Hai-Ning
10.1089/g4h.2019.0102	 Zhang	 Zeying
10.1089/g4h.2019.0102	 Baghaei	 Nilufar
10.1007/s00779-020-01373-8	 Argyriou	 Lemonia
10.1007/s00779-020-01373-8	 Economou	 Daphne
10.1007/s00779-020-01373-8	 Bouki	 Vassiliki
10.1016/j.buildenv.2019.106544	 Jeon	 Jin Yong
10.1016/j.buildenv.2019.106544	 Jo	 Hyun In
10.3390/app10041427	 Lin	 Chiuhsiang Joe
10.3390/app10041427	 Abreham	 Betsha Tizazu
10.3390/app10041427	 Caesaron	 Dino
10.3390/app10041427	 Woldegiorgis	 Bereket Haile
10.3390/s20041204	 Juliano	 Julia M.
10.3390/s20041204	 Spicer	 Ryan P.
10.3390/s20041204	 Vourvopoulos	 Athanasios
10.3390/s20041204	 Lefebvre	 Stephanie
10.3390/s20041204	 Jann	 Kay
10.3390/s20041204	 Ard	 Tyler
10.3390/s20041204	 Santarnecchi	 Emiliano
10.3390/s20041204	 Krum	 David M.
10.3390/s20041204	 Liew	 Sook-Lei
10.1016/j.encep.2019.09.002	 Remond	 J-J
10.1016/j.encep.2019.09.002	 Hernandez-Mora	 M.
10.1016/j.encep.2019.09.002	 Marseille	 C.
10.1016/j.encep.2019.09.002	 Mesure	 G.
10.1016/j.encep.2019.09.002	 Romo	 L.
10.1007/s11042-019-7331-z	 Malpica	 S.
10.1007/s11042-019-7331-z	 Serrano	 A.
10.1007/s11042-019-7331-z	 Allue	 M.
10.1007/s11042-019-7331-z	 Bedia	 M. G.
10.1007/s11042-019-7331-z	 Masia	 B.
10.1109/JPROC.2019.2894817	 Zink	 Michael
10.1109/JPROC.2019.2894817	 Sitaraman	 Ramesh
10.1109/JPROC.2019.2894817	 Nahrstedt	 Klara
10.1016/j.actpsy.2019.102987	 Swinkels	 Lieke M. J.
10.1016/j.actpsy.2019.102987	 van Schie	 Hein T.
10.1016/j.actpsy.2019.102987	 Veling	 Harm
10.1016/j.actpsy.2019.102987	 ter Horst	 Arjan C.
10.1016/j.actpsy.2019.102987	 Dijksterhuis	 Ap
10.1016/j.tra.2019.11.008	 Liu	 Qiang
10.1016/j.tra.2019.11.008	 Homma	 Riken
10.1016/j.tra.2019.11.008	 Iki	 Kazuhisa
10.1016/j.ajo.2019.10.006	 Sayed	 Ahmed M.
10.1016/j.ajo.2019.10.006	 Abdel-Mottaleb	 Mostafa
10.1016/j.ajo.2019.10.006	 Kashem	 Rashed
10.1016/j.ajo.2019.10.006	 Roongpoovapatr	 Vatookarn
10.1016/j.ajo.2019.10.006	 Elsawy	 Amr
10.1016/j.ajo.2019.10.006	 Abdel-Mottaleb	 Mohamed
10.1016/j.ajo.2019.10.006	 Parrish	 II
10.1016/j.ajo.2019.10.006	 Abou Shousha	 Mohamed
10.3389/frobt.2020.00004	 Stanney	 Kay
10.3389/frobt.2020.00004	 Fidopiastis	 Cali
10.3389/frobt.2020.00004	 Foster	 Linda
10.3389/fpsyg.2020.00035	 Reichenberger	 Jonas
10.3389/fpsyg.2020.00035	 Pfaller	 Michael
10.3389/fpsyg.2020.00035	 Muehlberger	 Andreas
10.1364/OE.382804	 Liu	 Juan
10.1364/OE.382804	 Shi	 Xueliang
00.0000/0034	 Huang	 Fei-Hui
10.1109/ACCESS.2020.2988678	 Zhou	 Chao
10.1109/ACCESS.2020.2988678	 Li	 Hong
10.1109/ACCESS.2020.2988678	 Bian	 Yulong
10.1109/ACCESS.2020.2983608	 Cha	 Ho-Seung
10.1109/ACCESS.2020.2983608	 Choi	 Seong-Jun
10.1109/ACCESS.2020.2983608	 Im	 Chang-Hwan
10.37190/ABB-01490-2019-03	 Wodarski	 Piotr
10.37190/ABB-01490-2019-03	 Jurkojc	 Jacek
10.37190/ABB-01490-2019-03	 Polechonski	 Jacek
10.37190/ABB-01490-2019-03	 Bieniek	 Andrzej
10.37190/ABB-01490-2019-03	 Chrzan	 Milosz
10.37190/ABB-01490-2019-03	 Michnik	 Robert
10.37190/ABB-01490-2019-03	 Gzik	 Marek
10.1109/ACCESS.2020.2972122	 Vienne	 Cyril
10.1109/ACCESS.2020.2972122	 Masfrand	 Stephane
10.1109/ACCESS.2020.2972122	 Bourdin	 Christophe
10.1109/ACCESS.2020.2972122	 Vercher	 Jean-Louis
10.1109/ACCESS.2020.2970921	 Goncalves	 Guilherme
10.1109/ACCESS.2020.2970921	 Monteiro	 Pedro
10.1109/ACCESS.2020.2970921	 Melo	 Miguel
10.1109/ACCESS.2020.2970921	 Vasconcelos-Raposo	 Jose
10.1109/ACCESS.2020.2970921	 Bessa	 Maximino
10.1109/ACCESS.2020.2977688	 Kim	 Seongki
10.1109/ACCESS.2020.2977688	 Ryu	 JinHo
10.1109/ACCESS.2020.2977688	 Choi	 Youngchyul
10.1109/ACCESS.2020.2977688	 Kang	 YooSeok
10.1109/ACCESS.2020.2977688	 Li	 Hongle
10.1109/ACCESS.2020.2977688	 Kim	 Kibum
10.1109/TOH.2020.2965937	 Amemiya	 Tomohiro
10.1109/TOH.2020.2965937	 Kitazaki	 Michiteru
10.1109/TOH.2020.2965937	 Ikei	 Yasushi
10.3390/sym12010053	 Jeong	 Kisung
10.3390/sym12010053	 Kim	 Jinmo
10.3390/sym12010053	 Kim	 Mingyu
10.3390/sym12010053	 Lee	 Jiwon
10.3390/sym12010053	 Kim	 Chanhun
10.18261/issn.1892-2686-2020-01-02	 Skavern	 Hege
10.18261/issn.1892-2686-2020-01-02	 Sandsdalen	 Tuva
10.18261/issn.1892-2686-2020-01-02	 Skaug	 Marit Aralt
10.1016/j.displa.2019.08.004	 Ng	 Adrian K. T.
10.1016/j.displa.2019.08.004	 Chan	 Leith K. Y.
10.1016/j.displa.2019.08.004	 Lau	 Henry Y. K.
10.1109/TVCG.2019.2934395	 Kraus	 M.
10.1109/TVCG.2019.2934395	 Weiler	 N.
10.1109/TVCG.2019.2934395	 Oelke	 D.
10.1109/TVCG.2019.2934395	 Kehrer	 J.
10.1109/TVCG.2019.2934395	 Keim	 D. A.
10.1109/TVCG.2019.2934395	 Fuchs	 J.
10.1016/j.buildenv.2019.106423	 Hong	 Joo Young
10.1016/j.buildenv.2019.106423	 Lam	 Bhan
10.1016/j.buildenv.2019.106423	 Ong	 Zhen-Ting
10.1016/j.buildenv.2019.106423	 Ooi	 Kenneth
10.1016/j.buildenv.2019.106423	 Gan	 Woon-Seng
10.1016/j.buildenv.2019.106423	 Kang	 Jian
10.1016/j.buildenv.2019.106423	 Yeong	 Samuel
10.1016/j.buildenv.2019.106423	 Lee	 Irene
10.1016/j.buildenv.2019.106423	 Tan	 Sze-Tiong
10.1016/j.compedu.2019.103707	 Howard	 Matt C.
10.1016/j.compedu.2019.103707	 Gutworth	 Melissa B.
10.3389/fmed.2019.00287	 Gerber	 Stephan M.
10.3389/fmed.2019.00287	 Jeitziner	 Marie-Madlen
10.3389/fmed.2019.00287	 Knobel	 Samuel E. J.
10.3389/fmed.2019.00287	 Mosimann	 Urs P.
10.3389/fmed.2019.00287	 Mueri	 Rene M.
10.3389/fmed.2019.00287	 Jakob	 Stephan M.
10.3389/fmed.2019.00287	 Nef	 Tobias
10.1145/3362101	 van der Hooft	 Jeroen
10.1145/3362101	 Vega	 Maria Torres
10.1145/3362101	 Petrangeli	 Stefano
10.1145/3362101	 Wauters	 Tim
10.1145/3362101	 De Turck	 Filip
10.3390/info10120386	 Kooijman	 Lars
10.3390/info10120386	 Happee	 Riender
10.3390/info10120386	 de Winter	 Joost C. F.
10.1016/j.cag.2019.09.005	 Cardoso	 Jorge C. S.
10.1016/j.cag.2019.09.005	 Perrotta	 Andre
10.1177/1550147719894533	 Kim	 Hyun-Wook
10.1177/1550147719894533	 Yang	 Sung-Hyun
10.1016/j.janxdis.2019.102147	 Maples-Keller	 Jessica L.
10.1016/j.janxdis.2019.102147	 Rauch	 Sheila A. M.
10.1016/j.janxdis.2019.102147	 Jovanovic	 Tanja
10.1016/j.janxdis.2019.102147	 Yasinski	 Carly W.
10.1016/j.janxdis.2019.102147	 Goodnight	 Jessica Morgan
10.1016/j.janxdis.2019.102147	 Sherrill	 Andrew
10.1016/j.janxdis.2019.102147	 Black	 Kathryn
10.1016/j.janxdis.2019.102147	 Michopoulos	 Vasiliki
10.1016/j.janxdis.2019.102147	 Dunlop	 Boadie W.
10.1016/j.janxdis.2019.102147	 Rothbaum	 Barbara Olasov
10.1016/j.janxdis.2019.102147	 Norrholm	 Seth Davin
10.1177/0018720819836343	 de Clercq	 Koen
10.1177/0018720819836343	 Dietrich	 Andre
10.1177/0018720819836343	 Velasco	 Juan Pablo Nunez
10.1177/0018720819836343	 de Winter	 Joost
10.1177/0018720819836343	 Happee	 Riender
10.1007/s10055-018-0345-4	 Edwards	 Bosede Iyiade
10.1007/s10055-018-0345-4	 Bielawski	 Kevin S.
10.1007/s10055-018-0345-4	 Prada	 Rui
10.1007/s10055-018-0345-4	 Cheok	 Adrian David
10.1177/0735633119854030	 Cakiroglu	 Unal
10.1177/0735633119854030	 Gokoglu	 Seyfullah
10.1038/s41586-019-1687-0	 Yu	 Xinge
10.1038/s41586-019-1687-0	 Xie	 Zhaoqian
10.1038/s41586-019-1687-0	 Yu	 Yang
10.1038/s41586-019-1687-0	 Lee	 Jungyup
10.1038/s41586-019-1687-0	 Vazquez-Guardado	 Abraham
10.1038/s41586-019-1687-0	 Luan	 Haiwen
10.1038/s41586-019-1687-0	 Ruben	 Jasper
10.1038/s41586-019-1687-0	 Ning	 Xin
10.1038/s41586-019-1687-0	 Akhtar	 Aadeel
10.1038/s41586-019-1687-0	 Li	 Dengfeng
10.1038/s41586-019-1687-0	 Ji	 Bowen
10.1038/s41586-019-1687-0	 Liu	 Yiming
10.1038/s41586-019-1687-0	 Sun	 Rujie
10.1038/s41586-019-1687-0	 Cao	 Jingyue
10.1038/s41586-019-1687-0	 Huo	 Qingze
10.1038/s41586-019-1687-0	 Zhong	 Yishan
10.1038/s41586-019-1687-0	 Lee	 ChanMi
10.1038/s41586-019-1687-0	 Kim	 SeungYeop
10.1038/s41586-019-1687-0	 Gutruf	 Philipp
10.1038/s41586-019-1687-0	 Zhang	 Changxing
10.1038/s41586-019-1687-0	 Xue	 Yeguang
10.1038/s41586-019-1687-0	 Guo	 Qinglei
10.1038/s41586-019-1687-0	 Chempakasseril	 Aditya
10.1038/s41586-019-1687-0	 Tian	 Peilin
10.1038/s41586-019-1687-0	 Lu	 Wei
10.1038/s41586-019-1687-0	 Jeong	 JiYoon
10.1038/s41586-019-1687-0	 Yu	 YongJoon
10.1038/s41586-019-1687-0	 Cornman	 Jesse
10.1038/s41586-019-1687-0	 Tan	 CheeSim
10.1038/s41586-019-1687-0	 Kirn	 BongHoon
10.1038/s41586-019-1687-0	 Lee	 KunHyuk
10.1038/s41586-019-1687-0	 Feng	 Xue
10.1038/s41586-019-1687-0	 Huang	 Yonggang
10.1038/s41586-019-1687-0	 Rogers	 John A.
10.1186/s12938-019-0731-5	 Wang	 Yan
10.1186/s12938-019-0731-5	 Zhai	 Guangtao
10.1186/s12938-019-0731-5	 Chen	 Sichao
10.1186/s12938-019-0731-5	 Min	 Xiongkuo
10.1186/s12938-019-0731-5	 Gao	 Zhongpai
10.1186/s12938-019-0731-5	 Song	 Xuefei
10.1016/j.neuron.2019.08.012	 Huffman	 Derek J.
10.1016/j.neuron.2019.08.012	 Ekstrom	 Arne D.
10.2352/J.ImagingSci.Technol.2019.63.6.060409	 Tong	 Jonathan
10.2352/J.ImagingSci.Technol.2019.63.6.060409	 Allison	 Robert S.
10.2352/J.ImagingSci.Technol.2019.63.6.060409	 Wilcox	 Laurie M.
10.1145/3355089.3356530	 Hladky	 Jozef
10.1145/3355089.3356530	 Seidel	 Hans-Peter
10.1145/3355089.3356530	 Steinberger	 Markus
10.1145/3355089.3356490	 Hu	 Ping
10.1145/3355089.3356490	 Sun	 Qi
10.1145/3355089.3356490	 Didyk	 Piotr
10.1145/3355089.3356490	 Wei	 Li-Yi
10.1145/3355089.3356490	 Kaufman	 Arie E.
10.1145/3355089.3356557	 Kaplanyan	 Anton S.
10.1145/3355089.3356557	 Sochenov	 Anton
10.1145/3355089.3356557	 Leimkuhler	 Thomas
10.1145/3355089.3356557	 Okunev	 Mikhail
10.1145/3355089.3356557	 Goodall	 Todd
10.1145/3355089.3356557	 Rufo	 Gizem
10.1145/3355089.3356517	 Padmanaban	 Nitish
10.1145/3355089.3356517	 Peng	 Yifan
10.1145/3355089.3356517	 Wetzstein	 Gordon
10.1145/3355089.3356552	 Zhong	 Fangcheng
10.1145/3355089.3356552	 Koulieris	 George Alex
10.1145/3355089.3356552	 Drettakis	 George
10.1145/3355089.3356552	 Banks	 Martin S.
10.1145/3355089.3356552	 Chambe	 Mathieu
10.1145/3355089.3356552	 Durand	 Fredo
10.1145/3355089.3356552	 Mantiuk	 Rafal K.
10.1109/JBHI.2019.2892485	 Park	 Jin-Woo
10.1109/JBHI.2019.2892485	 Nahm	 Francis Sahngun
10.1109/JBHI.2019.2892485	 Kim	 Jin-Hee
10.1109/JBHI.2019.2892485	 Jeon	 Young-Tae
10.1109/JBHI.2019.2892485	 Ryu	 Jung-Hee
10.1109/JBHI.2019.2892485	 Han	 Sung-Hee
10.3390/app9214652	 Lin	 Chiuhsiang Joe
10.3390/app9214652	 Caesaron	 Dino
10.3390/app9214652	 Woldegiorgis	 Bereket Haile
10.1109/TVCG.2019.2932239	 Schneider	 Daniel
10.1109/TVCG.2019.2932239	 Otte	 Alexander
10.1109/TVCG.2019.2932239	 Gesslein	 Travis
10.1109/TVCG.2019.2932239	 Gagel	 Philipp
10.1109/TVCG.2019.2932239	 Kuth	 Bastian
10.1109/TVCG.2019.2932239	 Damlakhi	 Mohamad Shahm
10.1109/TVCG.2019.2932239	 Dietz	 Oliver
10.1109/TVCG.2019.2932239	 Ofek	 Eyal
10.1109/TVCG.2019.2932239	 Pahud	 Michel
10.1109/TVCG.2019.2932239	 Kristensson	 Per Ola
10.1109/TVCG.2019.2932239	 Mueller	 Joerg
10.1109/TVCG.2019.2932239	 Grubert	 Jens
10.1109/TVCG.2019.2932215	 Wolf	 Dennis
10.1109/TVCG.2019.2932215	 Rietzler	 Michael
10.1109/TVCG.2019.2932215	 Hnatek	 Leo
10.1109/TVCG.2019.2932215	 Rukzio	 Enrico
10.1109/TVCG.2019.2932173	 Irlitti	 Andrew
10.1109/TVCG.2019.2932173	 Piumsomboon	 Thammathip
10.1109/TVCG.2019.2932173	 Jackson	 Daniel
10.1109/TVCG.2019.2932173	 Thomas	 Bruce H.
10.3389/frobt.2019.00104	 Pan	 Ye
10.3389/frobt.2019.00104	 Steed	 Anthony
10.1002/adom.201901360	 Zhan	 Tao
10.1002/adom.201901360	 Zou	 Junyu
10.1002/adom.201901360	 Xiong	 Jianghao
10.1002/adom.201901360	 Liu	 Xiaomin
10.1002/adom.201901360	 Chen	 Hao
10.1002/adom.201901360	 Yang	 Jilin
10.1002/adom.201901360	 Liu	 Sheng
10.1002/adom.201901360	 Dong	 Yajie
10.1002/adom.201901360	 Wu	 Shin-Tson
10.3758/s13428-019-01310-5	 Commins	 Sean
10.3758/s13428-019-01310-5	 Duffin	 Joseph
10.3758/s13428-019-01310-5	 Chaves	 Keylor
10.3758/s13428-019-01310-5	 Leahy	 Diarmuid
10.3758/s13428-019-01310-5	 Corcoran	 Kevin
10.3758/s13428-019-01310-5	 Caffrey	 Michelle
10.3758/s13428-019-01310-5	 Keenan	 Lisa
10.3758/s13428-019-01310-5	 Finan	 Deirdre
10.3758/s13428-019-01310-5	 Thornberry	 Conor
10.3389/fmars.2019.00644	 Walcutt	 Noah L.
10.3389/fmars.2019.00644	 Knorlein	 Benjamin
10.3389/fmars.2019.00644	 Sgouros	 Tom
10.3389/fmars.2019.00644	 Cetinic	 Ivona
10.3389/fmars.2019.00644	 Omand	 Melissa M.
10.3389/fneur.2019.01061	 Borrego	 Adrian
10.3389/fneur.2019.01061	 Latorre	 Jorge
10.3389/fneur.2019.01061	 Alcaniz	 Mariano
10.3389/fneur.2019.01061	 Llorens	 Roberto
10.1016/j.humov.2019.102515	 Bell	 Joshua D.
10.1016/j.humov.2019.102515	 Macuga	 Kristen L.
10.1249/MSS.0000000000002016	 Wender	 Carly L. A.
10.1249/MSS.0000000000002016	 Ahn	 Sun Joo
10.1249/MSS.0000000000002016	 O'Connor	 Patrick J.
10.1177/0031512519857869	 Shimokawa	 Kazuma
10.1177/0031512519857869	 Sugimori	 Eriko
10.1016/j.neuroimage.2019.06.010	 Roberts	 Gillian
10.1016/j.neuroimage.2019.06.010	 Holmes	 Niall
10.1016/j.neuroimage.2019.06.010	 Alexander	 Nicholas
10.1016/j.neuroimage.2019.06.010	 Boto	 Elena
10.1016/j.neuroimage.2019.06.010	 Leggett	 James
10.1016/j.neuroimage.2019.06.010	 Hill	 Ryan M.
10.1016/j.neuroimage.2019.06.010	 Shah	 Vishal
10.1016/j.neuroimage.2019.06.010	 Read	 Molly
10.1016/j.neuroimage.2019.06.010	 Vaughan	 Richard
10.1016/j.neuroimage.2019.06.010	 Maguire	 Eleanor A.
10.1016/j.neuroimage.2019.06.010	 Kessler	 Klaus
10.1016/j.neuroimage.2019.06.010	 Beebe	 Shaun
10.1016/j.neuroimage.2019.06.010	 Fromhold	 Mark
10.1016/j.neuroimage.2019.06.010	 Barnes	 Gareth R.
10.1016/j.neuroimage.2019.06.010	 Bowtell	 Richard
10.1016/j.neuroimage.2019.06.010	 Brookes	 Matthew J.
10.1142/S1793351X19400166	 Jeppsson	 Mattis
10.1142/S1793351X19400166	 Espeland	 Havard N.
10.1142/S1793351X19400166	 Kupka	 Tomas
10.1142/S1793351X19400166	 Langseth	 Ragnar
10.1142/S1793351X19400166	 Petlund	 Andreas
10.1142/S1793351X19400166	 Peng	 Qiaoqiao
10.1142/S1793351X19400166	 Xue	 Chuansong
10.1142/S1793351X19400166	 Johansen	 Dag
10.1142/S1793351X19400166	 Pogorelov	 Konstantin
10.1142/S1793351X19400166	 Stensland	 IIakon
10.1142/S1793351X19400166	 Griwodz	 Carsten
10.1142/S1793351X19400166	 Riegler	 Michael
10.1142/S1793351X19400166	 Halvorsen	 Pal
10.1016/j.buildenv.2019.106278	 Abd-Alhamid	 Fedaa
10.1016/j.buildenv.2019.106278	 Kent	 Michael
10.1016/j.buildenv.2019.106278	 Bennett	 Christopher
10.1016/j.buildenv.2019.106278	 Calautit	 John
10.1016/j.buildenv.2019.106278	 Wu	 Yupeng
10.1109/MCE.2019.2923934	 Ito	 Kenichiro
10.1109/MCE.2019.2923934	 Nishimura	 Hidekazu
10.1109/MCE.2019.2923934	 Ogi	 Tetsuro
10.1007/s00415-019-09370-5	 Wuehr	 Max
10.1007/s00415-019-09370-5	 Breitkopf	 Katharina
10.1007/s00415-019-09370-5	 Decker	 Julian
10.1007/s00415-019-09370-5	 Ibarra	 Gerardo
10.1007/s00415-019-09370-5	 Huppert	 Doreen
10.1007/s00415-019-09370-5	 Brandt	 Thomas
10.1097/PHM.0000000000001190	 Weber	 Lynne M.
10.1097/PHM.0000000000001190	 Nilsen	 Dawn M.
10.1097/PHM.0000000000001190	 Gillen	 Glen
10.1097/PHM.0000000000001190	 Yoon	 Jin
10.1097/PHM.0000000000001190	 Stein	 Joel
10.1016/j.landurbplan.2019.05.006	 Bruns	 Conner R.
10.1016/j.landurbplan.2019.05.006	 Chamberlain	 Brent C.
10.3138/cjfs.28.1.2019-0012	 Bedard	 Philippe
10.3390/app9163384	 Tran	 Huyen T. T.
10.3390/app9163384	 Ngoc	 Nam P.
10.3390/app9163384	 Pham	 Cuong T.
10.3390/app9163384	 Jung	 Yong Ju
10.3390/app9163384	 Truong	 Cong Thang
10.1145/3335053	 Zare	 Alireza
10.1145/3335053	 Homayouni	 Maryam
10.1145/3335053	 Aminlou	 Alireza
10.1145/3335053	 Hannuksela	 Miska M.
10.1145/3335053	 Gabbouj	 Moncef
10.1080/0144929X.2019.1641228	 Jost	 Patrick
10.1080/0144929X.2019.1641228	 Cobb	 Sue
10.1080/0144929X.2019.1641228	 Haemmerle	 Isabella
10.1111/sms.13453	 Bird	 Jonathan M.
10.1111/sms.13453	 Karageorghis	 Costas I.
10.1111/sms.13453	 Baker	 Steven J.
10.1111/sms.13453	 Brookes	 David A.
10.1111/ejn.14499	 Gallagher	 Maria
10.1111/ejn.14499	 Dowsett	 Ross
10.1111/ejn.14499	 Ferre	 Elisa Raffaella
10.3390/s19143063	 Jiang	 Haiyan
10.3390/s19143063	 Weng	 Dongdong
10.3390/s19143063	 Zhang	 Zhenliang
10.3390/s19143063	 Chen	 Feng
10.3390/su11143894	 Monna	 Fabrice
10.3390/su11143894	 Navarro	 Nicolas
10.3390/su11143894	 Magail	 Jerome
10.3390/su11143894	 Guillon	 Rodrigue
10.3390/su11143894	 Rolland	 Tanguy
10.3390/su11143894	 Wilczek	 Josef
10.3390/su11143894	 Esin	 Yury
10.3390/su11143894	 Chateau	 Carmela
10.1021/acs.jchemed.8b00905	 Bibic	 Lucka
10.1021/acs.jchemed.8b00905	 Druskis	 Justinas
10.1021/acs.jchemed.8b00905	 Walpole	 Samuel
10.1021/acs.jchemed.8b00905	 Angulo	 Jesus
10.1021/acs.jchemed.8b00905	 Stokes	 Leanne
10.1016/j.appdev.2019.101052	 Bailey	 Jakki O.
10.1016/j.appdev.2019.101052	 Bailenson	 Jeremy N.
10.2196/11517	 Boffo	 Marilisa
10.1016/j.appdev.2019.101052	 Obradovic	 Jelena
10.1016/j.appdev.2019.101052	 Aguiar	 Naomi R.
00.0000/0035	 Jin	 Haiyan
00.0000/0035	 Xie	 Le
00.0000/0035	 Xiao	 Zhaolin
00.0000/0035	 Zhou	 Ting
00.0000/0036	 Ding	 Ding
00.0000/0036	 Brinkman	 Willem-Paul
00.0000/0036	 Neerincx	 Mark A.
00.0000/0037	 Mosso Vazquez	 Jose Luis
00.0000/0037	 Canseco Aguilar	 Patricia
00.0000/0037	 Mosso Lara	 Dejanira
00.0000/0037	 Miller	 Ian
00.0000/0037	 Wiederhold	 Brenda K.
00.0000/0037	 Wiederhold	 Mark D.
10.3390/computers8020039	 Ellman	 Asko
10.3390/computers8020039	 Tiainen	 Tarja
10.1038/s41433-019-0356-8	 Ho	 Derek Kwun-hong
10.1007/s00170-018-03237-1	 Wang	 Peng
10.1007/s00170-018-03237-1	 Zhang	 Shusheng
10.1007/s00170-018-03237-1	 Bai	 Xiaoliang
10.1007/s00170-018-03237-1	 Billinghurst	 Mark
10.1007/s00170-018-03237-1	 Sun	 Mengmeng
10.1007/s00170-018-03237-1	 Chen	 Yongxing
10.1007/s00170-018-03237-1	 Lv	 Hao
10.1007/s00170-018-03237-1	 Ji	 Hongyu
10.1007/s10055-018-0370-3	 Mittelstaedt	 Justin Maximilian
10.1007/s10055-018-0370-3	 Wacker	 Jan
10.1007/s10055-018-0370-3	 Stelling	 Dirk
10.1016/j.cognition.2019.03.003	 Suzuki	 Keisuke
10.1016/j.cognition.2019.03.003	 Schwartzman	 David J.
10.1016/j.cognition.2019.03.003	 Augusto	 Rafael
10.1016/j.cognition.2019.03.003	 Seth	 Anil K.
10.3389/fpubh.2019.00116	 Gavarkovs	 Adam G.
10.1093/pm/pny269	 Osumi	 Michihiro
10.1093/pm/pny269	 Inomata	 Kazunori
10.1093/pm/pny269	 Inoue	 Yuji
10.1093/pm/pny269	 Otake	 Yuko
10.1093/pm/pny269	 Morioka	 Shu
10.1093/pm/pny269	 Sumitani	 Masahiko
10.1002/cav.1882	 Wu	 Bo-Jyun
10.1002/cav.1882	 Wong	 Sai-Keung
10.1002/cav.1882	 Li	 Ta-Wei
10.1111/cgf.13654	 Koulieris	 G. A.
10.1111/cgf.13654	 Aksit	 K.
10.1111/cgf.13654	 Stengel	 M.
10.1111/cgf.13654	 Mantiuk	 R. K.
10.1111/cgf.13654	 Mania	 K.
10.1111/cgf.13654	 Richardt	 C.
10.3390/app9091919	 Kim	 Nam-Gyoon
10.3390/app9091919	 Kim	 Beom-Su
10.1007/s10339-019-00903-4	 Li	 Jing
10.1007/s10339-019-00903-4	 Xie	 Ning
10.1007/s10339-019-00903-4	 Zhao	 Weixun
10.1109/TDSC.2018.2800048	 Shen	 Yiran
10.1109/TDSC.2018.2800048	 Wen	 Hongkai
10.1109/TDSC.2018.2800048	 Luo	 Chengwen
10.1109/TDSC.2018.2800048	 Xu	 Weitao
10.1109/TDSC.2018.2800048	 Zhang	 Tao
10.1109/TDSC.2018.2800048	 Hu	 Wen
10.1109/TDSC.2018.2800048	 Rus	 Daniela
10.1109/TVCG.2019.2898736	 Xu	 Wenge
10.1109/TVCG.2019.2898736	 Liang	 Hai-Ning
10.1109/TVCG.2019.2898736	 Zhao	 Yuxuan
10.1109/TVCG.2019.2898736	 Zhang	 Tianyu
10.1109/TVCG.2019.2898736	 Yu	 Difeng
10.1109/TVCG.2019.2898736	 Monteiro	 Diego
10.1109/TVCG.2019.2898763	 Mirhosseini	 Seyedkoosha
10.1109/TVCG.2019.2898763	 Gutenko	 Ievgeniia
10.1109/TVCG.2019.2898763	 Ojal	 Sushant
10.1109/TVCG.2019.2898763	 Marino	 Joseph
10.1109/TVCG.2019.2898763	 Kaufman	 Arie
10.1080/10447318.2018.1484054	 Choe	 Mungyeong
10.1080/10447318.2018.1484054	 Choi	 Yeongcheol
10.1080/10447318.2018.1484054	 Park	 Jaehyun
10.1080/10447318.2018.1484054	 Kim	 Hyun K.
00.0000/0038	 Ito	 Masaru
00.0000/0038	 Funahara	 Yusuke
00.0000/0038	 Saiki	 Seiji
00.0000/0038	 Yamazaki	 Yoichiro
00.0000/0038	 Kurita	 Yuichi
10.30773/pi.2019.02.08	 Seo	 Seung-hun
10.30773/pi.2019.02.08	 Kim	 Eunjoo
10.30773/pi.2019.02.08	 Mundy	 Peter
10.30773/pi.2019.02.08	 Heo	 Jiwoong
10.30773/pi.2019.02.08	 Kim	 Kwanguk (Kenny)
10.1016/j.learninstruc.2017.12.007	 Makransky	 Guido
10.1016/j.learninstruc.2017.12.007	 Terkildsen	 Thomas S.
10.1016/j.learninstruc.2017.12.007	 Mayer	 Richard E.
10.1016/j.socec.2019.02.007	 Mol	 Jantsje M.
10.3390/app9061182	 Gao	 Hongyue
10.3390/app9061182	 Xu	 Fan
10.3390/app9061182	 Liu	 Jicheng
10.3390/app9061182	 Dai	 Zehang
10.3390/app9061182	 Zhou	 Wen
10.3390/app9061182	 Li	 Suna
10.3390/app9061182	 Yu	 Yingjie
10.3390/app9061182	 Zheng	 Huadong
10.1186/s40691-018-0166-9	 Jang	 Ju Yeun
10.1186/s40691-018-0166-9	 Hur	 Hee Jin
10.1186/s40691-018-0166-9	 Choo	 Ho Jung
10.1093/iwc/iwz018	 Marin-Morales	 Javier
10.1093/iwc/iwz018	 Luis Higuera-Trujillo	 Juan
10.1093/iwc/iwz018	 De-Juan-Ripoll	 Carla
10.1093/iwc/iwz018	 Llinares	 Carmen
10.1093/iwc/iwz018	 Guixeres	 Jaime
10.1093/iwc/iwz018	 Inarra	 Susana
10.1093/iwc/iwz018	 Alcaniz	 Andmariano
10.1016/j.foodres.2018.01.028	 Schnack	 Alexander
10.1016/j.foodres.2018.01.028	 Wright	 Malcolm J.
10.1016/j.foodres.2018.01.028	 Holdershaw	 Judith L.
10.1109/JETCAS.2019.2898750	 Zhao	 Jing
10.1109/JETCAS.2019.2898750	 Xiong	 Ruiqin
10.1109/JETCAS.2019.2898750	 Xu	 Jizheng
10.2196/11517	 Otkhmezuri	 Boris
10.2196/11517	 Siriaraya	 Panote
10.2196/11517	 Matsangidou	 Maria
10.2196/11517	 Wiers	 Reinout W.
10.2196/11517	 Mackintosh	 Bundy
10.2196/11517	 Ang	 Chee Siang
10.2196/11517	 Salemink	 Elske
10.1364/AO.58.000A74	 He	 Zehao
10.1364/AO.58.000A74	 Sui	 Xiaomeng
10.1364/AO.58.000A74	 Jin	 Guofan
10.1364/AO.58.000A74	 Cao	 Liangcai
10.1016/j.jvcir.2019.01.012	 Nguyen	 D. V.
10.1016/j.jvcir.2019.01.012	 Tran	 Huyen T. T.
10.1016/j.jvcir.2019.01.012	 Truong	 Cong Thang
10.3758/s13428-018-1116-6	 Bai	 Jianying
10.3758/s13428-018-1116-6	 Bao	 Min
10.3758/s13428-018-1116-6	 Zhang	 Tao
10.3758/s13428-018-1116-6	 Jiang	 Yi
10.1016/j.actpsy.2018.12.005	 Guo	 Jichengsi
10.1016/j.actpsy.2018.12.005	 Huang	 Jianping
10.1016/j.actpsy.2018.12.005	 Wan	 Xiaoang
10.1016/j.jstrokecerebrovasdis.2018.10.018	 Thompson-Butel	 Angelica G.
10.3991/ijoe.v14i03.8112	 Guan	 Shiqi
10.1016/j.jstrokecerebrovasdis.2018.10.018	 Shiner	 Christine T.
10.1016/j.jstrokecerebrovasdis.2018.10.018	 McGhee	 John
10.1016/j.jstrokecerebrovasdis.2018.10.018	 Bailey	 Benjamin John
10.1016/j.jstrokecerebrovasdis.2018.10.018	 Bou-Haidar	 Pascal
10.1016/j.jstrokecerebrovasdis.2018.10.018	 McCorriston	 Michael
10.1016/j.jstrokecerebrovasdis.2018.10.018	 Faux	 Steven G.
10.3389/fnhum.2018.00504	 Spanlang	 Bernhard
10.3389/fnhum.2018.00504	 Nierula	 Birgit
10.3389/fnhum.2018.00504	 Haffar	 Maud
10.3389/fnhum.2018.00504	 Debruille	 J. Bruno
10.1007/978-3-030-03635-5_13	 Woods	 Andrew
10.1007/978-3-030-03635-5_13	 Oliver	 Nick
10.1007/978-3-030-03635-5_13	 Bourke	 Paul
10.1007/978-3-030-03635-5_13	 Green	 Jeremy
10.1007/978-3-030-03635-5_13	 Paterson	 Alistair
10.16910/jemr.12.8.1	 Jung-Ho	 Kim
10.16910/jemr.12.8.1	 Ho-Jun	 Son
10.16910/jemr.12.8.1	 Seung-Hyun	 Lee
10.16910/jemr.12.8.1	 Soon-Chul	 Kwon
00.0000/0039	 Tashev	 Ivan J.
10.1109/ACCESS.2019.2940073	 Szpak	 Ancret
10.1109/ACCESS.2019.2940073	 Michalski	 Stefan Carlo
10.1109/ACCESS.2019.2940073	 Saredakis	 Dimitrios
10.1109/ACCESS.2019.2940073	 Chen	 Celia S.
10.1109/ACCESS.2019.2940073	 Loetscher	 Tobias
10.1155/2019/9680697	 Choi	 Kang-min
10.1155/2019/9680697	 Park	 Seonghun
10.1155/2019/9680697	 Im	 Chang-Hwan
10.1109/ACCESS.2019.2921880	 Huo	 Yongkai
10.1109/ACCESS.2019.2921880	 Wang	 Xu
10.1109/ACCESS.2019.2921880	 Zhang	 Peichang
10.1109/ACCESS.2019.2921880	 Jiang	 Jianmin
10.1109/ACCESS.2019.2921880	 Hanzo	 Lajos
10.1080/15980316.2019.1606859	 Kazempourradi	 Seyedmandi
10.1080/15980316.2019.1606859	 Ulusoy	 Erdem
10.1080/15980316.2019.1606859	 Urey	 Hakan
10.1250/ast.40.265	 Asakura	 Takumi
10.1250/ast.40.265	 Ishikawa	 Atsuya
10.1080/15980316.2019.1572662	 Jang	 Ho Jin
10.1080/15980316.2019.1572662	 Lee	 Jun Yeob
10.1080/15980316.2019.1572662	 Kwak	 Jeonghun
10.1080/15980316.2019.1572662	 Lee	 Dukho
10.1080/15980316.2019.1572662	 Park	 Jae-Hyeung
10.1080/15980316.2019.1572662	 Lee	 Byoungho
10.1080/15980316.2019.1572662	 Noh	 Yong Young
00.0000/0040	 Sumantri	 Eric
00.0000/0040	 Lesmana	 Raymond
00.0000/0040	 Santoso	 Handri
10.1109/ACCESS.2019.2910737	 Kramberger	 Iztok
10.1109/ACCESS.2019.2910737	 Kacic	 Zdravko
10.1109/ACCESS.2019.2910737	 Donaj	 Gregor
10.1117/1.JEI.28.1.013019	 Jallouli	 Anas
10.1117/1.JEI.28.1.013019	 Kammoun	 Fahmi
10.1117/1.JEI.28.1.013019	 Masmoudi	 Nouri
10.3390/ijgi8010003	 Sasinka	 Cenek
10.3390/ijgi8010003	 Stachon	 Zdenek
10.3390/ijgi8010003	 Sedlak	 Michal
10.3390/ijgi8010003	 Chmelik	 Jiri
10.3390/ijgi8010003	 Herman	 Lukas
10.3390/ijgi8010003	 Kubicek	 Petr
10.3390/ijgi8010003	 Sasinkova	 Alzbeta
10.3390/ijgi8010003	 Dolezal	 Milan
10.3390/ijgi8010003	 Tejkl	 Hynek
10.3390/ijgi8010003	 Urbanek	 Tomas
10.3390/ijgi8010003	 Svatonova	 Hana
10.3390/ijgi8010003	 Ugwitz	 Pavel
10.3390/ijgi8010003	 Jurik	 Vojtech
10.1177/0269215518788598	 Viziano	 Andrea
10.1177/0269215518788598	 Micarelli	 Alessandro
10.1177/0269215518788598	 Augimeri	 Ivan
10.1177/0269215518788598	 Micarelli	 Domenico
10.1177/0269215518788598	 Alessandrini	 Marco
10.1364/OE.26.034142	 Yoon	 Jeong Hwan
10.1364/OE.26.034142	 Lee	 Seung Jae
10.1364/OE.26.034142	 Lim	 Young Jin
10.1364/OE.26.034142	 Seo	 Eo Jin
10.1364/OE.26.034142	 Shin	 Hoon Sub
10.1364/OE.26.034142	 Myoung	 Jae-Min
10.1364/OE.26.034142	 Lee	 Seung Hee
10.1162/PRES_a_00318	 Rangelova	 Stanislava
10.1162/PRES_a_00318	 Andre	 Elisabeth
10.1016/j.cag.2018.10.006	 Figueiredo	 Lucas
10.1016/j.cag.2018.10.006	 Rodrigues	 Eduardo
10.1016/j.cag.2018.10.006	 Teixeira	 Joao
10.1016/j.cag.2018.10.006	 Teichrieb	 Veronica
10.1109/TVCG.2017.2778249	 Wu	 Meng-Lin
10.1109/TVCG.2017.2778249	 Popescu	 Voicu
10.7717/peerj.5847	 Cometti	 Carole
10.7717/peerj.5847	 Paizis	 Christos
10.7717/peerj.5847	 Casteleira	 Audrey
10.7717/peerj.5847	 Pons	 Guillaume
10.7717/peerj.5847	 Babault	 Nicolas
10.1016/j.actpsy.2018.09.009	 Valzolgher	 Chiara
10.1016/j.actpsy.2018.09.009	 Mazzurega	 Mara
10.1016/j.actpsy.2018.09.009	 Zampini	 Massimiliano
10.1016/j.actpsy.2018.09.009	 Pavani	 Francesco
10.1002/jsid.734	 Sasaki	 Takashi
10.1002/jsid.734	 Hotta	 Aira
10.1002/jsid.734	 Murata	 Takahiro
10.1002/jsid.734	 Ueda	 Yu
10.1002/jsid.734	 Okumura	 Haruhiko
10.1016/j.cag.2018.07.007	 de Jesus Oliveira	 Victor Adriel
10.1016/j.cag.2018.07.007	 Nedel	 Luciana
10.1016/j.cag.2018.07.007	 Maciel	 Anderson
10.17973/MMSJ.2018_11_2017100	 Kroupa	 Jiri
10.17973/MMSJ.2018_11_2017100	 Tuma	 Zdenek
10.17973/MMSJ.2018_11_2017100	 Kovar	 Jiri
10.17973/MMSJ.2018_11_2017100	 Singule	 Vladislav
10.1016/j.image.2018.05.010	 Zhu	 Yucheng
10.1016/j.image.2018.05.010	 Zhai	 Guangtao
10.1016/j.image.2018.05.010	 Min	 Xiongkuo
10.7717/peerj.5844	 Rigutti	 Sara
10.7717/peerj.5844	 Straga	 Marta
10.7717/peerj.5844	 Jez	 Marco
10.7717/peerj.5844	 Baldassi	 Giulio
10.7717/peerj.5844	 Carnaghi	 Andrea
10.7717/peerj.5844	 Miceu	 Piero
10.7717/peerj.5844	 Fantoni	 Carlo
10.3389/fnhum.2018.00420	 Brouwer	 Anne-Marie
10.3389/fnhum.2018.00420	 van der Waa	 Jasper
10.3389/fnhum.2018.00420	 Stokking	 Hans
10.3389/fpsyg.2018.01901	 Cook	 Henry E.
10.3389/fpsyg.2018.01901	 Hassebrock	 Justin A.
10.3389/fpsyg.2018.01901	 Smart	 Jr.
10.1145/3238303	 Grogorick	 Steve
10.1145/3238303	 Albuquerque	 Georgia
10.1145/3238303	 Tauscher	 Jan-Philipp
10.1145/3238303	 Magnor	 Marcus
10.1145/3238301	 Weier	 Martin
10.1145/3238301	 Roth	 Thorsten
10.1145/3238301	 Hinkenjann	 Andre
10.1145/3238301	 Slusallek	 Philipp
10.1002/jsid.708	 Matsushima	 Toshiharu
10.1002/jsid.708	 Seki	 Kenta
10.1002/jsid.708	 Kimura	 Shunichi
10.1002/jsid.708	 Iwakabe	 Yasushi
10.1002/jsid.708	 Yata	 Tatsuya
10.1002/jsid.708	 Watanabe	 Yoshihiro
10.1002/jsid.708	 Komura	 Shinichi
10.1109/LRA.2018.2864359	 Aykut	 Tamay
10.1109/LRA.2018.2864359	 Karimi	 Mojtaba
10.1109/LRA.2018.2864359	 Burgmair	 Christoph
10.1109/LRA.2018.2864359	 Finkenzeller	 Andreas
10.1109/LRA.2018.2864359	 Bachhuber	 Christoph
10.1109/LRA.2018.2864359	 Steinbach	 Eckehard
10.3390/s18092832	 Lee	 Juyoung
10.3390/s18092832	 Ahn	 Sang Chul
10.3390/s18092832	 Hwang	 Jae-In
10.1002/cav.1805	 Zhu	 Yu
10.1002/cav.1805	 Li	 Shiying
10.1002/cav.1805	 Luo	 Xi
10.1002/cav.1805	 Zhu	 Kang
10.1002/cav.1805	 Fu	 Qiang
10.1002/cav.1805	 Chen	 Xilin
10.1002/cav.1805	 Gong	 Huixing
10.1002/cav.1805	 Yu	 Jingyi
10.1016/j.concog.2018.05.005	 Davidenko	 Nicolas
10.1016/j.concog.2018.05.005	 Cheong	 Yeram
10.1016/j.concog.2018.05.005	 Waterman	 Amanda
10.1016/j.concog.2018.05.005	 Smith	 Jacob
10.1016/j.concog.2018.05.005	 Anderson	 Barrett
10.1016/j.concog.2018.05.005	 Harmon	 Sarah
10.1167/18.9.1	 Cholewiak	 Steven A.
10.1167/18.9.1	 Love	 Gordon D.
10.1167/18.9.1	 Banks	 Martin S.
10.1111/psyp.13090	 Liang	 Mingli
10.1111/psyp.13090	 Starrett	 Michael J.
10.1111/psyp.13090	 Ekstrom	 Arne D.
10.1145/3209661	 Bahirat	 Kanchan
10.1145/3209661	 Lai	 Chengyuan
10.1145/3209661	 Mcmahan	 Ryan P.
10.1145/3209661	 Prabhakaran	 Balakrishnan
10.1145/3205864	 Hou	 Xueshi
10.1145/3205864	 Lu	 Yao
10.1145/3205864	 Dey	 Sujit
10.1145/3197517.3201335	 Langbehn	 Eike
10.1145/3197517.3201335	 Steinicke	 Frank
10.1145/3197517.3201335	 Lappe	 Markus
10.1145/3197517.3201335	 Welch	 Gregory F.
10.1145/3197517.3201335	 Bruder	 Gerd
10.1162/leon_a_01641	 Ji	 Haru Hyunkyung
10.1162/leon_a_01641	 Wakefield	 Graham
10.1167/tvst.7.4.2	 Maloca	 Peter M.
10.1167/tvst.7.4.2	 de Carvalho	 J. Emanuel Ramos
10.1167/tvst.7.4.2	 Heeren	 Tjebo
10.1167/tvst.7.4.2	 Hasler	 Pascal W.
10.1167/tvst.7.4.2	 Mushtaq	 Faisal
10.1167/tvst.7.4.2	 Mon-Williams	 Mark
10.1167/tvst.7.4.2	 Scholl	 Hendrik P. N.
10.1167/tvst.7.4.2	 Balaskas	 Konstantinos
10.1167/tvst.7.4.2	 Egan	 Catherine
10.1167/tvst.7.4.2	 Tufail	 Adnan
10.1167/tvst.7.4.2	 Witthauer	 Lilian
10.1167/tvst.7.4.2	 Cattin	 Philippe C.
10.1017/pasa.2018.19	 Fluke	 C. J.
10.1017/pasa.2018.19	 Barnes	 D. G.
00.0000/0041	 Banville	 Frederic
00.0000/0041	 Provencher	 Marianne
00.0000/0041	 Verhulst	 Eulalie
00.0000/0041	 Richard	 Paul
00.0000/0041	 Couture	 Jean-Francois
00.0000/0041	 Flores	 Thomas
00.0000/0041	 Allain	 Philippe
10.1016/j.ijhcs.2018.02.003	 Raptis	 George E.
10.1016/j.ijhcs.2018.02.003	 Fidas	 Christos
10.1016/j.ijhcs.2018.02.003	 Avouris	 Nikolaos
10.1016/j.ecns.2018.03.001	 Dang	 Bryan K.
10.1016/j.ecns.2018.03.001	 Palicte	 Jeland S.
10.1016/j.ecns.2018.03.001	 Valdez	 Andre
10.1016/j.ecns.2018.03.001	 O'Leary-Kelley	 Colleen
10.1177/1553350618761756	 Huber	 Tobias
10.1177/1553350618761756	 Paschold	 Markus
10.1177/1553350618761756	 Hansen	 Christian
10.1177/1553350618761756	 Lang	 Hauke
10.1177/1553350618761756	 Kneist	 Werner
10.1002/cae.21915	 Wang	 Chen
10.1002/cae.21915	 Li	 Heng
10.1002/cae.21915	 Kho	 Song Y.
10.1002/jsid.658	 Vieri	 Carlin
10.1002/jsid.658	 Lee	 Grace
10.1002/jsid.658	 Balram	 Nikhil
10.1002/jsid.658	 Jung	 Sang Hoon
10.1002/jsid.658	 Yang	 Joon Young
10.1002/jsid.658	 Yoon	 Soo Young
10.1002/jsid.658	 Kang	 In Byeong
10.3928/23258160-20180501-08	 Clark	 Andrew J.
10.3928/23258160-20180501-08	 Yang	 Paul
10.3928/23258160-20180501-08	 Khaderi	 Khizer R.
10.3928/23258160-20180501-08	 Moshfeghi	 Andrew A.
10.1002/cav.1838	 Pan	 Ye
10.1002/cav.1838	 Sinclair	 David
10.1002/cav.1838	 Mitchell	 Kenny
10.1109/TVCG.2018.2794639	 Bhargava	 Ayush
10.1109/TVCG.2018.2794639	 Bertrand	 Jeffrey W.
10.1109/TVCG.2018.2794639	 Gramopadhye	 Anand K.
10.1109/TVCG.2018.2794639	 Madathil	 Kapil C.
10.1109/TVCG.2018.2794639	 Babu	 Sabarish V.
10.1109/TVCG.2018.2794119	 Lungaro	 Pietro
10.1109/TVCG.2018.2794119	 Sjoberg	 Rickard
10.1109/TVCG.2018.2794119	 Valero	 Alfredo Jose Fanghella
10.1109/TVCG.2018.2794119	 Mittal	 Ashutosh
10.1109/TVCG.2018.2794119	 Tollmar	 Konrad
10.1109/TVCG.2018.2794071	 Luo	 Bicheng
10.1109/TVCG.2018.2794071	 Xu	 Feng
10.1109/TVCG.2018.2794071	 Richardt	 Christian
10.1109/TVCG.2018.2794071	 Yong	 Jun-Hai
10.1109/TVCG.2018.2793038	 Nagao	 Ryohei
10.1109/TVCG.2018.2793038	 Matsumoto	 Keigo
10.1109/TVCG.2018.2793038	 Narumi	 Takuji
10.1109/TVCG.2018.2793038	 Tanikawa	 Tomohiro
10.1109/TVCG.2018.2793038	 Hirose	 Michitaka
10.1364/JOSAA.35.00B130	 Pardo	 Pedro J.
10.1364/JOSAA.35.00B130	 Isabel Suero	 Maria
10.1364/JOSAA.35.00B130	 Luis Perez	 Angel
10.1109/THMS.2017.2782490	 Brizzi	 Filippo
10.1109/THMS.2017.2782490	 Peppoloni	 Lorenzo
10.1109/THMS.2017.2782490	 Graziano	 Alessandro
10.1109/THMS.2017.2782490	 Di Stefano	 Erika
10.1109/THMS.2017.2782490	 Avizzano	 Carlo Alberto
10.1109/THMS.2017.2782490	 Ruffaldi	 Emanuele
10.1371/journal.pone.0194137	 Weech	 Seamas
10.1371/journal.pone.0194137	 Moon	 Jae
10.1371/journal.pone.0194137	 Troje	 Nikolaus F.
10.1097/01.NEP.0000000000000258	 Farra	 Sharon L.
10.1097/01.NEP.0000000000000258	 Smith	 Sherrill J.
10.1097/01.NEP.0000000000000258	 Ulrich	 Deborah L.
10.1364/OE.26.004863	 Zhan	 Tao
10.1364/OE.26.004863	 Lee	 Yun-Han
10.1364/OE.26.004863	 Wu	 Shin-Tson
10.3389/fneur.2018.00067	 Ambron	 Elisabetta
10.3389/fneur.2018.00067	 Miller	 Alexander
10.3389/fneur.2018.00067	 Kuchenbecker	 Katherine J.
10.3389/fneur.2018.00067	 Buxbaum	 Laurel J.
10.3389/fneur.2018.00067	 Coslett	 H. Branch
10.3389/fneur.2018.00048	 Luo	 Haizhen
10.3389/fneur.2018.00048	 Wang	 Xiaoyun
10.3389/fneur.2018.00048	 Fan	 Mengying
10.3389/fneur.2018.00048	 Deng	 Lingyun
10.3389/fneur.2018.00048	 Jian	 Chuyao
10.3389/fneur.2018.00048	 Wei	 Miaoluan
10.3389/fneur.2018.00048	 Luo	 Jie
10.1002/jsid.638	 Keum	 Nack-Hyeon
10.1002/jsid.638	 Hong	 Seong-Kwan
10.1002/jsid.638	 Chai	 Chong Chul
10.1002/jsid.638	 Kwon	 Oh-Kyong
10.1016/j.jenvp.2018.01.001	 Tabrizian	 Payam
10.1016/j.jenvp.2018.01.001	 Baran	 Perver K.
10.1016/j.jenvp.2018.01.001	 Smith	 William R.
10.1016/j.jenvp.2018.01.001	 Meentemeyer	 Ross K.
10.1007/s12008-017-0377-0	 Segura	 Alvaro
10.1007/s12008-017-0377-0	 Barandiaran	 Javier
10.1007/s12008-017-0377-0	 Moreno	 Aitor
10.1007/s12008-017-0377-0	 Barandiaran	 Inigo
10.1007/s12008-017-0377-0	 Florez	 Julian
10.1109/TVCG.2017.2658570	 Krichenbauer	 Max
10.1109/TVCG.2017.2658570	 Yamamoto	 Goshiro
10.1109/TVCG.2017.2658570	 Taketom	 Takafumi
10.1109/TVCG.2017.2658570	 Sandor	 Christian
10.1109/TVCG.2017.2658570	 Kato	 Hirokazu
10.3389/fpsyg.2017.02321	 Calogiuri	 Giovanna
10.3389/fpsyg.2017.02321	 Litleskare	 Sigbjorn
10.3389/fpsyg.2017.02321	 Fagerheim	 Kaia A.
10.3389/fpsyg.2017.02321	 Rydgren	 Tore L.
10.3389/fpsyg.2017.02321	 Brambilla	 Elena
10.3389/fpsyg.2017.02321	 Thurston	 Miranda
10.1371/journal.pone.0189275	 Gerig	 Nicolas
10.1371/journal.pone.0189275	 Mayo	 Johnathan
10.1371/journal.pone.0189275	 Baur	 Kilian
10.1371/journal.pone.0189275	 Wittmann	 Frieder
10.1371/journal.pone.0189275	 Riener	 Robert
10.1371/journal.pone.0189275	 Wolf	 Peter
10.1080/15420353.2018.1498427	 Huang	 Jiawei
10.1080/15420353.2018.1498427	 Bagher	 Mahda M.
10.1080/15420353.2018.1498427	 Ross	 Heather Dohn
10.1080/15420353.2018.1498427	 Piekielek	 Nathan
10.1080/15420353.2018.1498427	 Wallgrun	 Jan Oliver
10.1109/TVCG.2017.2735098	 Kohler	 Mark
10.1080/15420353.2018.1498427	 Zhao	 Jiayan
10.1080/15420353.2018.1498427	 Klippel	 Alexander
00.0000/0042	 Bruno	 Fabio
00.0000/0042	 Petriaggi	 Barbara Davidde
00.0000/0042	 Mangeruga	 Marino
00.0000/0042	 Cozza	 Marco
10.3991/ijoe.v14i05.7788	 Dinis	 Fabio Matoseiro
10.3991/ijoe.v14i05.7788	 Martins	 Joao Pocas
10.3991/ijoe.v14i05.7788	 Carvalho	 Barbara Rangel
10.3991/ijoe.v14i05.7788	 Guimaraes	 Ana Sofia
10.1080/17503280.2018.1503859	 Leotta	 Alfio
10.1080/17503280.2018.1503859	 Ross	 Miriam
10.1080/17571472.2018.1483000	 Yuan	 Sze Ngar Vanessa
10.1080/17571472.2018.1483000	 Ip	 Horace Ho Shing
10.1155/2018/2585797	 Lee	 Yea Som
10.1155/2018/2585797	 Sohn	 Bong-Soo
10.3991/ijoe.v14i03.8112	 Ye	 Quan
10.3991/ijoe.v14i03.8112	 Hu	 Wenshan
10.3991/ijoe.v14i03.8112	 Zhou	 Hong
10.3991/ijoe.v14i03.8112	 Lei	 Zhongcheng
10.1155/2018/4798359	 Lupu	 Robert Gabriel
10.1155/2018/4798359	 Irimia	 Danut Constantin
10.1155/2018/4798359	 Ungureanu	 Florina
10.1155/2018/4798359	 Poboroniuc	 Marian Silviu
10.1155/2018/4798359	 Moldoveanu	 Alin
10.1109/TOH.2017.2741488	 Sagardia	 Mikel
10.1109/TOH.2017.2741488	 Hulin	 Thomas
10.3103/S1068335618010049	 Ryu	 Jaeyeol
10.3103/S1068335618010049	 Muravyev	 N. V.
10.3103/S1068335618010049	 Putilin	 A. N.
10.1016/j.displa.2018.01.002	 Mittelstaedt	 Justin
10.1016/j.displa.2018.01.002	 Wacker	 Jan
10.1016/j.displa.2018.01.002	 Stelling	 Dirk
10.1016/j.autcon.2017.10.009	 Du	 Jing
10.1016/j.autcon.2017.10.009	 Zou	 Zhengbo
10.1016/j.autcon.2017.10.009	 Shi	 Yangming
10.1016/j.autcon.2017.10.009	 Zhao	 Dong
10.1007/s11277-017-4954-0	 Kang	 Jiyoung
10.1111/jspn.12201	 Piskorz	 Joanna
10.1111/jspn.12201	 Czub	 Marcin
10.1038/s41598-017-18289-8	 Kimura	 Kazushige
10.1038/s41598-017-18289-8	 Reichert	 James F.
10.1038/s41598-017-18289-8	 Olson	 Ashley
10.1038/s41598-017-18289-8	 Pouya	 Omid Ranjbar
10.1038/s41598-017-18289-8	 Wang	 Xikui
10.1038/s41598-017-18289-8	 Moussavi	 Zahra
10.1038/s41598-017-18289-8	 Kelly	 Debbie M.
10.1109/JSEN.2017.2762704	 Rigas	 Ioannis
10.1109/JSEN.2017.2762704	 Raffle	 Hayes
10.1109/JSEN.2017.2762704	 Komogortsev	 Oleg V.
10.1371/journal.pone.0187220	 Daga	 Fablo B.
10.1371/journal.pone.0187220	 Diniz-Filho	 Alberto
10.1371/journal.pone.0187220	 Boer	 Erwin R.
10.1371/journal.pone.0187220	 Gracitelli	 Carolina P. B.
10.1371/journal.pone.0187220	 Abe	 Ricardo Y.
10.1371/journal.pone.0187220	 Medeiros	 Felipe A.
10.3390/technologies5040077	 Nomura	 Yoshihiko
10.3390/technologies5040077	 Fukuoka	 Hiroaki
10.3390/technologies5040077	 Sakamoto	 Ryota
10.3390/technologies5040077	 Sugiura	 Tokuhiro
10.1109/JSYST.2015.2410533	 Luo	 Hao
10.1109/JSYST.2015.2410533	 Pan	 Tien-Szu
10.1109/JSYST.2015.2410533	 Pan	 Jeng-Shyang
10.1109/JSYST.2015.2410533	 Chu	 Shu-Chuan
10.1109/JSYST.2015.2410533	 Yang	 Bian
00.0000/0043	 Ye	 Weibing
00.0000/0043	 Liu	 Shijuan
00.0000/0043	 Song	 Fei
10.1097/MRR.0000000000000244	 Micarelli	 Alessandro
10.1097/MRR.0000000000000244	 Viziano	 Andrea
10.1097/MRR.0000000000000244	 Augimeri	 Ivan
10.1097/MRR.0000000000000244	 Micarelli	 Domenico
10.1097/MRR.0000000000000244	 Alessandrini	 Marco
10.1038/s41598-017-16316-2	 Suzuki	 Keisuke
10.1038/s41598-017-16316-2	 Roseboom	 Warrick
10.1038/s41598-017-16316-2	 Schwartzman	 David J.
10.1038/s41598-017-16316-2	 Seth	 Anil K.
10.1371/journal.pone.0187777	 Navarro-Haro	 Maria V.
10.1371/journal.pone.0187777	 Lopez del Hoyo	 Yolanda
10.1371/journal.pone.0187777	 Campos	 Daniel
10.1371/journal.pone.0187777	 Linehan	 Marsha M.
10.1371/journal.pone.0187777	 Hoffman	 Hunter G.
10.1371/journal.pone.0187777	 Garcia-Palacios	 Azucena
10.1371/journal.pone.0187777	 Modrego-Alarcon	 Marta
10.1371/journal.pone.0187777	 Borao	 Luis
10.1371/journal.pone.0187777	 Garcia-Campayo	 Javier
10.26687/archnet-ijar.v11i3.1395	 Ramsey	 Eleanor
10.1016/j.fusengdes.2017.03.131	 Naish	 Jonathan
10.1016/j.fusengdes.2017.03.131	 Burns	 Alex
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Wischgoll	 Thomas
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Glines	 Madison
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Whitlock	 Tyler
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Guthrie	 Bradley R.
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Mowrey	 Corinne M.
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Parikh	 Pratik J.
10.2352/J.ImagingSci.Technol.2017.61.6.060406	 Flach	 John
10.1109/TVCG.2017.2735098	 Baumeister	 James
10.1109/TVCG.2017.2735098	 Ssin	 Seung Youb
10.1109/TVCG.2017.2735098	 ElSayed	 Neven A. M.
10.1109/TVCG.2017.2735098	 Dorrian	 Jillian
10.1109/TVCG.2017.2735098	 Webb	 David P.
10.1109/TVCG.2017.2735098	 Walsh	 James A.
10.1109/TVCG.2017.2735098	 Simon	 Timothy M.
10.1109/TVCG.2017.2735098	 Irlitti	 Andrew
10.1109/TVCG.2017.2735098	 Smith	 Ross T.
10.1109/TVCG.2017.2735098	 Thomas	 Bruce H.
10.1007/s00104-017-0465-5	 Huber	 T.
10.1007/s00104-017-0465-5	 Paschold	 M.
10.1007/s00104-017-0465-5	 Hansen	 C.
10.1007/s00104-017-0465-5	 Lang	 H.
10.1007/s00104-017-0465-5	 Kneist	 W.
10.1007/s00221-016-4846-7	 Munafo	 Justin
10.1007/s00221-016-4846-7	 Diedrick	 Meg
10.1007/s00221-016-4846-7	 Stoffregen	 Thomas A.
10.1007/s00464-017-5500-6	 Huber	 Tobias
10.1007/s00464-017-5500-6	 Paschold	 Markus
10.1007/s00464-017-5500-6	 Hansen	 Christian
10.1007/s00464-017-5500-6	 Wunderling	 Tom
10.1007/s00464-017-5500-6	 Lang	 Hauke
10.1007/s00464-017-5500-6	 Kneist	 Werner
10.1016/j.cmpb.2017.08.008	 Trombetta	 Mateus
10.1016/j.cmpb.2017.08.008	 Bazzanello Henrique	 Patricia Paula
10.1016/j.cmpb.2017.08.008	 Brum	 Manoela Rogofski
10.1016/j.cmpb.2017.08.008	 Colussi	 Eliane Lucia
10.1016/j.cmpb.2017.08.008	 Bertoletti De Marchi	 Ana Carolina
10.1016/j.cmpb.2017.08.008	 Rieder	 Rafael
10.1145/3106155	 Kelly	 Jonathan W.
10.1145/3106155	 Cherep	 Lucia A.
10.1145/3106155	 Siegel	 Zachary D.
10.1002/ase.1696	 Moro	 Christian
10.1002/ase.1696	 Stromberga	 Zane
10.1002/ase.1696	 Raikos	 Athanasios
10.1002/ase.1696	 Stirling	 Allan
10.1097/SLA.0000000000002448	 Sauer	 Igor M.
10.1097/SLA.0000000000002448	 Queisner	 Moritz
10.1097/SLA.0000000000002448	 Tang	 Peter
10.1097/SLA.0000000000002448	 Moosburner	 Simon
10.1097/SLA.0000000000002448	 Hoepfner	 Ole
10.1097/SLA.0000000000002448	 Horner	 Rosa
10.1097/SLA.0000000000002448	 Lohmann	 Rudiger
10.1097/SLA.0000000000002448	 Pratschke	 Johann
10.1016/j.apergo.2017.03.007	 Deb	 Shuchisnigdha
10.1016/j.apergo.2017.03.007	 Carruth	 Daniel W.
10.1016/j.apergo.2017.03.007	 Sween	 Richard
10.1016/j.apergo.2017.03.007	 Strawderman	 Lesley
10.1016/j.apergo.2017.03.007	 Garrison	 Teena M.
10.1212/WNL.0000000000004585	 Pozeg	 Polona
10.1212/WNL.0000000000004585	 Palluel	 Estelle
10.1212/WNL.0000000000004585	 Ronchi	 Roberta
10.1212/WNL.0000000000004585	 Solca	 Marco
10.1212/WNL.0000000000004585	 Al-Khodairy	 Abdul-Wahab
10.1212/WNL.0000000000004585	 Jordan	 Xavier
10.1212/WNL.0000000000004585	 Kassouha	 Ammar
10.1212/WNL.0000000000004585	 Blanke	 Olaf
10.3807/COPP.2017.1.5.474	 Choi	 Hojong
10.3807/COPP.2017.1.5.474	 Ryu	 Jae Myung
10.3807/COPP.2017.1.5.474	 Kim	 Jin Ha
10.1038/s41598-017-13153-1	 Gerber	 Stephan M.
10.1038/s41598-017-13153-1	 Jeitziner	 Marie-Madlen
10.1038/s41598-017-13153-1	 Wyss	 Patric
10.1038/s41598-017-13153-1	 Chesham	 Alvin
10.1038/s41598-017-13153-1	 Urwyler	 Prabitha
10.1038/s41598-017-13153-1	 Muri	 Rene M.
10.1038/s41598-017-13153-1	 Jakob	 Stephan M.
10.1038/s41598-017-13153-1	 Nef	 Tobias
10.1038/lsa.2017.81	 Yang	 Tong
10.1038/lsa.2017.81	 Jin	 Guo-Fan
10.1038/lsa.2017.81	 Zhu	 Jun
10.20965/jdr.2017.p0882	 Yamashita	 Takuzo
10.20965/jdr.2017.p0882	 Pal	 Mahendra Kumar
10.20965/jdr.2017.p0882	 Matsuzaki	 Kazutoshi
10.20965/jdr.2017.p0882	 Tomozawa	 Hiromitsu
10.1002/alr.21986	 Stepan	 Katelyn
10.1002/alr.21986	 Zeiger	 Joshua
10.1002/alr.21986	 Hanchuk	 Stephanie
10.1002/alr.21986	 Del Signore	 Anthony
10.1002/alr.21986	 Shrivastava	 Raj
10.1002/alr.21986	 Govindaraj	 Satish
10.1002/alr.21986	 Iloreta	 Alfred
10.3389/fnhum.2017.00477	 Banaei	 Maryam
10.3389/fnhum.2017.00477	 Hatami	 Javad
10.3389/fnhum.2017.00477	 Yazdanfar	 Abbas
10.3389/fnhum.2017.00477	 Gramann	 Klaus
10.3389/fpsyg.2017.01611	 Gomez	 Jocelyn
10.3389/fpsyg.2017.01611	 Hoffman	 Hunter G.
10.3389/fpsyg.2017.01611	 Bistricky	 Steven L.
10.3389/fpsyg.2017.01611	 Gonzalez	 Miriam
10.3389/fpsyg.2017.01611	 Rosenberg	 Laura
10.3389/fpsyg.2017.01611	 Sampaio	 Mariana
10.3389/fpsyg.2017.01611	 Garcia-Palacios	 Azucena
10.3389/fpsyg.2017.01611	 Navarro-Haro	 Maria V.
10.3389/fpsyg.2017.01611	 Alhalabi	 Wadee
10.3389/fpsyg.2017.01611	 Rosenberg	 Marta
10.3389/fpsyg.2017.01611	 Meyer	 III
10.3389/fpsyg.2017.01611	 Linehan	 Marsha M.
10.3389/frobt.2017.00042	 Maereg	 Andualem Tadesse
10.3389/frobt.2017.00042	 Nagar	 Atulya
10.3389/frobt.2017.00042	 Reid	 David
10.3389/frobt.2017.00042	 Secco	 Emanuele L.
10.17083/ijsg.v4i3.178	 Freina	 Laura
10.17083/ijsg.v4i3.178	 Bottino	 Rosa
10.17083/ijsg.v4i3.178	 Tavella	 Mauro
10.17083/ijsg.v4i3.178	 Chiorri	 Carlo
10.1002/cav.1727	 Liang	 Hui
10.1002/cav.1727	 Chang	 Jian
10.1002/cav.1727	 Deng	 Shujie
10.1002/cav.1727	 Chen	 Can
10.1002/cav.1727	 Tong	 Ruofeng
10.1002/cav.1727	 Zhang	 Jian Jun
10.1007/s00464-016-5379-7	 Dorozhkin	 Denis
10.1007/s00464-016-5379-7	 Olasky	 Jaisa
10.1007/s00464-016-5379-7	 Jones	 Daniel B.
10.1007/s00464-016-5379-7	 Schwaitzberg	 Steven D.
10.1007/s00464-016-5379-7	 Jones	 Stephanie B.
10.1007/s00464-016-5379-7	 Cao	 Caroline G. L.
10.1007/s00464-016-5379-7	 Molina	 Marcos
10.1007/s00464-016-5379-7	 Henriques	 Steven
10.1007/s00464-016-5379-7	 Wang	 Jinling
10.1007/s00464-016-5379-7	 Flinn	 Jeff
10.1007/s00464-016-5379-7	 De	 Suvranu
10.1007/s00006-016-0689-3	 Papaefthymiou	 Margarita
10.1007/s00006-016-0689-3	 Hildenbrand	 Dietmar
10.1007/s00006-016-0689-3	 Papagiannakis	 George
10.1109/TNSRE.2016.2626391	 Tidoni	 Emmanuele
10.1109/TNSRE.2016.2626391	 Abu-Alqumsan	 Mohammad
10.1109/TNSRE.2016.2626391	 Leonardis	 Daniele
10.1109/TNSRE.2016.2626391	 Kapeller	 Christoph
10.1109/TNSRE.2016.2626391	 Fusco	 Gabriele
10.1109/TNSRE.2016.2626391	 Guger	 Cristoph
10.1109/TNSRE.2016.2626391	 Hintermller	 Cristoph
10.1109/TNSRE.2016.2626391	 Peer	 Angelika
10.1109/TNSRE.2016.2626391	 Frisoli	 Antonio
10.1109/TNSRE.2016.2626391	 Tecchia	 Franco
10.1109/TNSRE.2016.2626391	 Bergamasco	 Massimo
10.1109/TNSRE.2016.2626391	 Aglioti	 Salvatore Maria
10.1167/17.9.11	 Gootjes-Dreesbach	 Luise
10.1167/17.9.11	 Pickup	 Lyndsey C.
10.1167/17.9.11	 Fitzgibbon	 Andrew W.
10.1167/17.9.11	 Glennerster	 Andrew
10.1109/TVCG.2016.2601607	 Ragan	 Eric D.
10.1109/TVCG.2016.2601607	 Scerbo	 Siroberto
10.1109/TVCG.2016.2601607	 Bacim	 Felipe
10.1109/TVCG.2016.2601607	 Bowman	 Doug A.
10.1109/TVCG.2016.2586071	 Punpongsanon	 Parinya
10.1109/TVCG.2016.2586071	 Guy	 Emilie
10.1109/TVCG.2016.2586071	 Iwai	 Daisuke
10.1109/TVCG.2016.2586071	 Sato	 Kosuke
10.1109/TVCG.2016.2586071	 Boubekeur	 Tamy
00.0000/0044	 Silva	 Igor Macedo
00.0000/0044	 Moioli	 Renan C.
10.1145/3072959.3073645	 Matzen	 Kevin
10.1145/3072959.3073645	 Cohen	 Michael F.
10.1145/3072959.3073645	 Evans	 Bryce
10.1145/3072959.3073645	 Kopf	 Johannes
10.1145/3072959.3073645	 Szeliski	 Richard
10.1016/j.ijmst.2017.05.005	 Hui	 Zhang
10.3813/AAA.919086	 Puyana-Romero	 Virginia
10.3813/AAA.919086	 Solange Lopez-Segura	 Lilian
10.3813/AAA.919086	 Maffei	 Luigi
10.3813/AAA.919086	 Hernandez-Molina	 Ricardo
10.3813/AAA.919086	 Masullo	 Massimiliano
10.1016/j.displa.2017.01.002	 Nesbitt	 Keith
10.1016/j.displa.2017.01.002	 Davis	 Simon
10.1016/j.displa.2017.01.002	 Blackmore	 Karen
10.1016/j.displa.2017.01.002	 Nalivaiko	 Eugene
10.1145/3072959.3073624	 Maimone	 Andrew
10.1145/3072959.3073624	 Georgiou	 Andreas
10.1145/3072959.3073624	 Kollin	 Joel S.
10.1186/s12886-017-0501-8	 Ziak	 Peter
10.1186/s12886-017-0501-8	 Holm	 Anders
10.1186/s12886-017-0501-8	 Halicka	 Juraj
10.1186/s12886-017-0501-8	 Mojzis	 Peter
10.1186/s12886-017-0501-8	 Pinero	 David P.
00.0000/0045	 Ahamba	 Godson
00.0000/0045	 Roberts	 David
00.0000/0045	 Eachus	 Peter
00.0000/0046	 Hodrien	 Andrew
00.0000/0046	 Galpin	 Adam
00.0000/0046	 Roberts	 David
00.0000/0046	 Kenney	 Laurence
10.1016/j.entcom.2017.04.004	 Martel	 Erin
10.1016/j.entcom.2017.04.004	 Muldner	 Kasia
10.1007/s12193-016-0236-5	 Salomoni	 Paola
10.1007/s12193-016-0236-5	 Prandi	 Catia
10.1007/s12193-016-0236-5	 Roccetti	 Marco
10.1007/s12193-016-0236-5	 Casanova	 Lorenzo
10.1007/s12193-016-0236-5	 Marchetti	 Luca
10.1007/s12193-016-0236-5	 Marfia	 Gustavo
00.0000/0047	 Ghita	 Alexandra
00.0000/0047	 Ferrer-Garcia	 Marta
00.0000/0047	 Gutierrez-Maldonado	 Jos
10.1016/j.autneu.2016.12.004	 Gavgani	 Alireza Mazloumi
10.1016/j.autneu.2016.12.004	 Nesbitt	 Keith V.
10.1016/j.autneu.2016.12.004	 Blackmore	 Karen L.
10.1016/j.autneu.2016.12.004	 Nalivaiko	 Eugene
00.0000/0048	 Ferrer-Garcia	 Marta
00.0000/0048	 Porras-Garcia	 Bruno
00.0000/0048	 Gonzalez-Ibanez	 Cristina
00.0000/0048	 Gracia-Blanes	 Mireia
00.0000/0048	 Vilalta-Abella	 Ferran
00.0000/0048	 Pla-Sanjuanelo	 Joana
00.0000/0048	 Riva	 Giuseppe
00.0000/0048	 Dakanalis	 Antonios
00.0000/0048	 Achotegui-Loizate	 Jose
00.0000/0048	 Talarn-Caparros	 Antoni
00.0000/0048	 Ribas-Sabate	 Joan
00.0000/0048	 Andreu-Gracia	 Alexis
00.0000/0048	 Diaz-Marsa	 Marina
00.0000/0048	 Monras-Arnau	 Miquel
00.0000/0048	 Serrano-Troncoso	 Eduardo
00.0000/0048	 Treasure	 Janet
00.0000/0048	 Gutierrez-Maldonado	 Jose
10.1007/s00221-017-4929-0	 Ida	 Hirofumi
10.1007/s00221-017-4929-0	 Mohapatra	 Sambit
10.1007/s00221-017-4929-0	 Aruin	 Alexander
10.1177/2041669517708205	 Niehorster	 Diederick C.
10.1177/2041669517708205	 Li	 Li
10.1177/2041669517708205	 Lappe	 Markus
10.3390/s17051112	 Seo	 Min-Woo
10.3390/s17051112	 Choi	 Song-Woo
10.3390/s17051112	 Lee	 Sang-Lyn
10.3390/s17051112	 Oh	 Eui-Yeol
10.3390/s17051112	 Baek	 Jong-Sang
10.3390/s17051112	 Kang	 Suk-Ju
10.1109/TVCG.2016.2527649	 Turban	 Laura
10.1109/TVCG.2016.2527649	 Urban	 Fabrice
10.1109/TVCG.2016.2527649	 Guillotel	 Philippe
10.1177/2049463717698349	 Smith	 Ashley
10.1177/2049463717698349	 Carlow	 Klancy
10.1177/2049463717698349	 Biddulph	 Tara
10.1177/2049463717698349	 Murray	 Brooke
10.1177/2049463717698349	 Paton	 Melissa
10.1177/2049463717698349	 Harvie	 Daniel S.
10.1111/ejn.13545	 Tieri	 Gaetano
10.1111/ejn.13545	 Gioia	 Annamaria
10.1111/ejn.13545	 Scandola	 Michele
10.1111/ejn.13545	 Pavone	 Enea F.
10.1111/ejn.13545	 Aglioti	 Salvatore M.
10.1016/j.ijhcs.2017.01.002	 Chittaro	 Luca
10.1016/j.ijhcs.2017.01.002	 Sioni	 Riccardo
10.1016/j.ijhcs.2017.01.002	 Crescentini	 Cristiano
10.1016/j.ijhcs.2017.01.002	 Fabbro	 Franco
10.1109/JPROC.2017.2648796	 Hua	 Hong
10.1038/srep45469	 Anglin	 J. M.
10.1038/srep45469	 Sugiyama	 T.
10.1038/srep45469	 Liew	 S. -L.
10.7358/neur-2017-021-lean	 Leanza	 Federica
10.1109/TVCG.2017.2656979	 Regan	 Matthew
10.1109/TVCG.2017.2656979	 Miller	 Gavin S. P.
10.1109/TVCG.2017.2657238	 de Jesus Oliveira	 Victor Adriel
10.1109/TVCG.2017.2657238	 Brayda	 Luca
10.1109/TVCG.2017.2657238	 Nedel	 Luciana
10.1109/TVCG.2017.2657238	 Maciel	 Anderson
10.1109/TVCG.2017.2657139	 Kim	 MyoungGon
10.1109/TVCG.2017.2657139	 Cho	 SungIk
10.1109/TVCG.2017.2657139	 Tanh	 Quang Tran
10.1109/TVCG.2017.2657139	 Kim	 Seong-Pil
10.1109/TVCG.2017.2657139	 Kwon	 Ohung
10.1109/TVCG.2017.2657139	 Han	 JungHyun
10.1109/TVCG.2017.2656958	 Li	 Changyang
10.1109/TVCG.2017.2656958	 Liang	 Wei
10.1109/TVCG.2017.2656958	 Quigley	 Chris
10.1109/TVCG.2017.2656958	 Zhao	 Yibiao
10.1109/TVCG.2017.2656958	 Yu	 Lap-Fai
10.1371/journal.pone.0173972	 Egger	 Jan
10.1371/journal.pone.0173972	 Gall	 Markus
10.1371/journal.pone.0173972	 Wallner	 Juergen
10.1371/journal.pone.0173972	 Boechat	 Pedro
10.1371/journal.pone.0173972	 Hann	 Alexander
10.1371/journal.pone.0173972	 Li	 Xing
10.1371/journal.pone.0173972	 Chen	 Xiaojun
10.1371/journal.pone.0173972	 Schmalstieg	 Dieter
10.3389/frobt.2017.00011	 Smolyanskiy	 Nikolai
10.3389/frobt.2017.00011	 Gonzalez-Franco	 Mar
10.7776/ASK.2017.36.2.130	 Cho	 Hye-Seung
10.7776/ASK.2017.36.2.130	 Kim	 Hyoung-Gook
10.1007/s10055-016-0296-6	 Wu	 Chien-Min
10.1007/s10055-016-0296-6	 Hsu	 Chih-Wen
10.1007/s10055-016-0296-6	 Lee	 Tzu-Kuei
10.1007/s10055-016-0296-6	 Smith	 Shana
10.3389/fnhum.2017.00079	 Harjunen	 Ville J.
10.3389/fnhum.2017.00079	 Ahmed	 Imtiaj
10.3389/fnhum.2017.00079	 Jacucci	 Giulio
10.3389/fnhum.2017.00079	 Ravaja	 Niklas
10.3389/fnhum.2017.00079	 Spape	 Michiel M.
10.1186/s12984-017-0225-2	 Kim	 Aram
10.1186/s12984-017-0225-2	 Darakjian	 Nora
10.1186/s12984-017-0225-2	 Finley	 James M.
10.3389/frobt.2017.00003	 Gonzalez-Franco	 Mar
10.3389/frobt.2017.00003	 Pizarro	 Rodrigo
10.3389/frobt.2017.00003	 Cermeron	 Julio
10.3389/frobt.2017.00003	 Li	 Katie
10.3389/frobt.2017.00003	 Thorn	 Jacob
10.3389/frobt.2017.00003	 Hutabarat	 Windo
10.3389/frobt.2017.00003	 Tiwari	 Ashutosh
10.3389/frobt.2017.00003	 Bermell-Garcia	 Pablo
10.15675/gepros.v12i1.1605	 Castro-Gonzalez	 David
10.15675/gepros.v12i1.1605	 Hernando Barbosa	 Luis
10.15675/gepros.v12i1.1605	 Prada-Jimenez	 Vladimir
10.15675/gepros.v12i1.1605	 Conde-Mendez	 Gregory
10.1088/1748-3190/12/1/014001	 Fang	 Sandra
10.1088/1748-3190/12/1/014001	 Peshkin	 Michael
10.1088/1748-3190/12/1/014001	 MacIver	 Malcolm A.
10.1109/THMS.2016.2611824	 Jang	 Youngkyoon
10.1109/THMS.2016.2611824	 Jeon	 Ikbeom
10.1109/THMS.2016.2611824	 Kim	 Tae-Kyun
10.1109/THMS.2016.2611824	 Woo	 Woontack
10.5277/ABB-00784-2016-02	 Jurkojc	 Jacek
10.5277/ABB-00784-2016-02	 Wodarski	 Piotr
10.5277/ABB-00784-2016-02	 Bieniek	 Andrzej
10.5277/ABB-00784-2016-02	 Gzik	 Marek
10.5277/ABB-00784-2016-02	 Michnik	 Robert
10.1080/01691864.2016.1264885	 Inamura	 Tetsunari
10.1080/01691864.2016.1264885	 Unenaka	 Satoshi
10.1080/01691864.2016.1264885	 Shibuya	 Satoshi
10.1080/01691864.2016.1264885	 Ohki	 Yukari
10.1080/01691864.2016.1264885	 Oouchida	 Yutaka
10.1080/01691864.2016.1264885	 Izumi	 Shin-ichi
10.1016/j.apergo.2016.06.014	 Dennison	 Mark Stephen
10.1016/j.apergo.2016.06.014	 D'Zmura	 Michael
10.14742/ajet.3840	 Moro	 Christian
10.14742/ajet.3840	 Stromberga	 Zane
10.14742/ajet.3840	 Stirling	 Allan
10.1016/j.displa.2016.11.001	 Palmisano	 Stephen
10.1016/j.displa.2016.11.001	 Mursic	 Rebecca
10.1016/j.displa.2016.11.001	 Kim	 Juno
10.1080/13682199.2017.1355090	 Park	 Gangrae
10.1080/13682199.2017.1355090	 Choi	 Hyunmin
10.1080/13682199.2017.1355090	 Lee	 Uichin
10.1080/13682199.2017.1355090	 Chin	 Seongah
10.1080/14606925.2017.1352966	 Neubauer	 Daniel
10.1080/14606925.2017.1352966	 Paepcke-Hjeltness	 Verena
10.1080/14606925.2017.1352966	 Evans	 Pete
10.1080/14606925.2017.1352966	 Barnhart	 Betsy
10.1080/14606925.2017.1352966	 Finseth	 Tor
10.1080/10749357.2017.1351069	 Yasuda	 Kazuhiro
10.1016/j.jmgm.2016.02.009	 Ma	 Heng
10.1080/10749357.2017.1351069	 Muroi	 Daisuke
10.1080/10749357.2017.1351069	 Ohira	 Masahiro
10.1080/10749357.2017.1351069	 Iwata	 Hiroyasu
10.16910/jemr.10.5.2	 Roth	 Thorsten
10.16910/jemr.10.5.2	 Weier	 Martin
10.16910/jemr.10.5.2	 Hinkenjann	 Andre
10.16910/jemr.10.5.2	 Li	 Yongmin
10.16910/jemr.10.5.2	 Slusallek	 Philipp
10.11621/pir.2017.0310	 Menshikova	 Galina Ya.
10.11621/pir.2017.0310	 Kovalev	 Artem I.
10.11621/pir.2017.0310	 Klimova	 Oxana A.
10.11621/pir.2017.0310	 Barabanschikova	 Valentina V.
10.2147/CIA.S141251	 Saldana	 Santiago J.
10.2147/CIA.S141251	 Marsh	 Anthony P.
10.2147/CIA.S141251	 Rejeski	 W. Jack
10.2147/CIA.S141251	 Haberl	 Jack K.
10.2147/CIA.S141251	 Wu	 Peggy
10.2147/CIA.S141251	 Rosenthal	 Scott
10.2147/CIA.S141251	 Ip	 Edward H.
10.5937/fmet1702205S	 Sidanin	 Predrag
10.5937/fmet1702205S	 Lazic	 Marko
10.5937/fmet1702205S	 Obradovic	 Ratko
10.3991/ijet.v12i05.6766	 Halabi	 Osama
10.3991/ijet.v12i05.6766	 El-Seoud	 Samir A.
10.3991/ijet.v12i05.6766	 Alja'am	 Jihad M.
10.3991/ijet.v12i05.6766	 Alpona	 Hena
10.3991/ijet.v12i05.6766	 Al-Hemadi	 Moza
10.3991/ijet.v12i05.6766	 Al-Hassan	 Dabia
10.1080/17483107.2016.1176259	 Nunnerley	 Joanne
10.1080/17483107.2016.1176259	 Gupta	 Swati
10.1080/17483107.2016.1176259	 Snell	 Deborah
10.1080/17483107.2016.1176259	 King	 Marcus
10.1016/j.culher.2016.09.003	 Jimenez Fernandez-Palacios	 Belen
10.1016/j.culher.2016.09.003	 Morabito	 Daniele
10.1016/j.culher.2016.09.003	 Remondino	 Fabio
10.1002/ejp.910	 Osumi	 M.
10.1002/ejp.910	 Ichinose	 A.
10.1002/ejp.910	 Sumitani	 M.
10.1002/ejp.910	 Wake	 N.
10.1002/ejp.910	 Sano	 Y.
10.1002/ejp.910	 Yozu	 A.
10.1002/ejp.910	 Kumagaya	 S.
10.1002/ejp.910	 Kuniyoshi	 Y.
10.1002/ejp.910	 Morioka	 S.
10.6035/2174-0992.2017.13.12	 Ramirez Alvarado	 Maria del Mar
10.6035/2174-0992.2017.13.12	 Navarrete-Cardero	 Luis
10.1016/j.apergo.2016.05.003	 Alshaer	 Abdulaziz
10.1016/j.apergo.2016.05.003	 Regenbrecht	 Holger
10.1016/j.apergo.2016.05.003	 O'Hare	 David
10.1371/journal.pone.0167523	 Jones	 Ted
10.1371/journal.pone.0167523	 Moore	 Todd
10.1371/journal.pone.0167523	 Choo	 James
10.3389/frobt.2016.00074	 Slater	 Mel
10.3389/frobt.2016.00074	 Sanchez-Vives	 Maria V.
10.1109/JDT.2016.2617889	 Ahn	 Yong-Deok
10.1109/JDT.2016.2617889	 Kang	 Suk-Ju
10.1115/1.4033230	 Bordegoni	 Monica
10.1115/1.4033230	 Covarrubias	 Mario
10.1115/1.4033230	 Caruso	 Giandomenico
10.1115/1.4033230	 Cugini	 Umberto
10.1038/srep37016	 Foerster	 Rebecca M.
10.1038/srep37016	 Poth	 Christian H.
10.1038/srep37016	 Behler	 Christian
10.1038/srep37016	 Botsch	 Mario
10.1038/srep37016	 Schneider	 Werner X.
10.18421/TEM54-04	 Popovski	 Filip
10.18421/TEM54-04	 Nedelkovski	 Igor
10.18421/TEM54-04	 Mijakovska	 Svetlana
10.18421/TEM54-04	 Nalevska	 Gorica Popovska
10.1145/2980179.2980252	 Olszewski	 Kyle
10.1145/2980179.2980252	 Lim	 Joseph J.
10.1145/2980179.2980252	 Saito	 Shunsuke
10.1145/2980179.2980252	 Li	 Hao
10.1145/2980179.2980246	 Patney	 Anjul
10.1145/2980179.2980246	 Salvi	 Marco
10.1145/2980179.2980246	 Kim	 Joohwan
10.1145/2980179.2980246	 Kaplanyan	 Anton
10.1145/2980179.2980246	 Wyman	 Chris
10.1145/2980179.2980246	 Benty	 Nir
10.1145/2980179.2980246	 Luebke	 David
10.1145/2980179.2980246	 Lefohn	 Aaron
10.1007/s10055-016-0292-x	 Coxon	 Matthew
10.1007/s10055-016-0292-x	 Kelly	 Nathan
10.1007/s10055-016-0292-x	 Page	 Sarah
10.1007/s10055-016-0295-7	 Silva	 Gustavo R.
10.1007/s10055-016-0295-7	 Donat	 Julia C.
10.1007/s10055-016-0295-7	 Rigoli	 Marcelo M.
10.1007/s10055-016-0295-7	 de Oliveira	 Fernando R.
10.1007/s10055-016-0295-7	 Kristensen	 Christian H.
10.1145/2983530	 McGill	 Mark
10.1145/2983530	 Williamson	 John H.
10.1145/2983530	 Brewster	 Stephen
10.1007/s11528-016-0085-9	 Ritz	 Leah T.
10.1007/s11528-016-0085-9	 Buss	 Alan R.
10.3389/fpsyg.2016.01649	 Pritchard	 Stephen C.
10.3389/fpsyg.2016.01649	 Zopf	 Regine
10.3389/fpsyg.2016.01649	 Polito	 Vince
10.3389/fpsyg.2016.01649	 Kaplan	 David M.
10.3389/fpsyg.2016.01649	 Williams	 Mark A.
00.0000/0049	 Gleasure	 Rob
00.0000/0049	 Feller	 Joseph
10.1088/1741-2560/13/5/056006	 Quinlivan	 Brendan
10.1088/1741-2560/13/5/056006	 Butler	 John S.
10.1088/1741-2560/13/5/056006	 Beiser	 Ines
10.1088/1741-2560/13/5/056006	 Williams	 Laura
10.1088/1741-2560/13/5/056006	 McGovern	 Eavan
10.1088/1741-2560/13/5/056006	 O'Riordan	 Sean
10.1088/1741-2560/13/5/056006	 Hutchinson	 Michael
10.1088/1741-2560/13/5/056006	 Reilly	 Richard B.
10.1016/j.cmpb.2016.07.026	 Jang	 Woncheol
10.1016/j.cmpb.2016.07.026	 Shin	 Joon-Ho
10.1016/j.cmpb.2016.07.026	 Kim	 Mingyu
10.1016/j.cmpb.2016.07.026	 Kim	 Kwanguk (Kenny)
10.1007/s11042-016-3520-1	 Shin	 Jongkyu
10.1007/s11042-016-3520-1	 An	 Gwangseok
10.1007/s11042-016-3520-1	 Park	 Joon-Sang
10.1007/s11042-016-3520-1	 Baek	 Seung Jun
10.1007/s11042-016-3520-1	 Lee	 Kyogu
10.3390/sym8090093	 Kim	 Jinmo
10.1007/s10055-016-0287-7	 Parmar	 Dhaval
10.1007/s10055-016-0287-7	 Bertrand	 Jeffrey
10.1007/s10055-016-0287-7	 Babu	 Sabarish V.
10.1007/s10055-016-0287-7	 Madathil	 Kapil
10.1007/s10055-016-0287-7	 Zelaya	 Melissa
10.1007/s10055-016-0287-7	 Wang	 Tianwei
10.1007/s10055-016-0287-7	 Wagner	 John
10.1007/s10055-016-0287-7	 Gramopadhye	 Anand K.
10.1007/s10055-016-0287-7	 Frady	 Kristin
10.1007/s10055-016-0288-6	 Menzies	 R. J.
10.1007/s10055-016-0288-6	 Rogers	 S. J.
10.1007/s10055-016-0288-6	 Phillips	 A. M.
10.1007/s10055-016-0288-6	 Chiarovano	 E.
10.1007/s10055-016-0288-6	 de Waele	 C.
10.1007/s10055-016-0288-6	 Verstraten	 F. A. J.
10.1007/s10055-016-0288-6	 MacDougall	 H.
10.1364/AO.55.006969	 Wang	 Yunqi
10.1364/AO.55.006969	 Liu	 Weiqi
10.1364/AO.55.006969	 Meng	 Xiangxiang
10.1364/AO.55.006969	 Fu	 Hanyi
10.1364/AO.55.006969	 Zhang	 Daliang
10.1364/AO.55.006969	 Kang	 Yusi
10.1364/AO.55.006969	 Feng	 Rui
10.1364/AO.55.006969	 Wei	 Zhonglun
10.1364/AO.55.006969	 Zhu	 Xiuqing
10.1364/AO.55.006969	 Jiang	 Guohua
10.1162/COMJ_a_00372	 Serafin	 Stefania
10.1162/COMJ_a_00372	 Erkut	 Cumhur
10.1162/COMJ_a_00372	 Kojs	 Juraj
10.1162/COMJ_a_00372	 Nilsson	 Niels C.
10.1162/COMJ_a_00372	 Nordahl	 Rolf
10.1016/j.displa.2016.07.002	 Dennison	 Mark S.
10.1016/j.displa.2016.07.002	 Wisti	 A. Zachary
10.1016/j.displa.2016.07.002	 D'Zmura	 Michael
10.1007/s10803-016-2830-5	 Newbutt	 Nigel
10.1007/s10803-016-2830-5	 Sung	 Connie
10.1007/s10803-016-2830-5	 Kuo	 Hung-Jen
10.1007/s10803-016-2830-5	 Leahy	 Michael J.
10.1007/s10803-016-2830-5	 Lin	 Chien-Chun
10.1007/s10803-016-2830-5	 Tong	 Boyang
10.3788/COL201614.080901	 Chen	 Zhidong
10.3788/COL201614.080901	 Sang	 Xinzhu
10.3788/COL201614.080901	 Lin	 Qiaojuan
10.3788/COL201614.080901	 Li	 Jin
10.3788/COL201614.080901	 Yu	 Xunbo
10.3788/COL201614.080901	 Gao	 Xin
10.3788/COL201614.080901	 Yan	 Binbin
10.3788/COL201614.080901	 Yu	 Chongxiu
10.3788/COL201614.080901	 Dou	 Wenhua
10.3788/COL201614.080901	 Xiao	 Liquan
10.1186/s12984-016-0174-1	 Borrego	 Adrin
10.1186/s12984-016-0174-1	 Latorre	 Jorge
10.1186/s12984-016-0174-1	 Llorens	 Roberto
10.1186/s12984-016-0174-1	 Alcaniz	 Mariano
10.1186/s12984-016-0174-1	 Noe	 Enrique
10.1145/2971320	 Blissing	 Bjorn
10.1145/2971320	 Bruzelius	 Fredrik
10.1145/2971320	 Eriksson	 Olle
10.1007/s40299-016-0293-2	 Chen	 Yu-Li
10.3389/frobt.2016.00043	 Kinateder	 Max
10.3389/frobt.2016.00043	 Warren	 William H.
10.2196/games.5526	 Gautier	 Estelle Jean dit
10.2196/games.5526	 Bot-Robin	 Virginie
10.2196/games.5526	 Libessart	 Aurelien
10.2196/games.5526	 Doucede	 Guillaume
10.2196/games.5526	 Cosson	 Michel
10.2196/games.5526	 Rubod	 Chrystele
10.1145/2897824.2925883	 Sun	 Qi
10.1145/2897824.2925883	 Wei	 Li-Yi
10.1145/2897824.2925883	 Kaufman	 Arie
10.2196/games.6476	 Thomas	 James S.
10.2196/games.6476	 France	 Christopher R.
10.2196/games.6476	 Applegate	 Megan E.
10.2196/games.6476	 Leitkam	 Samuel T.
10.2196/games.6476	 Pidcoe	 Peter E.
10.2196/games.6476	 Walkowski	 Stevan
10.1587/transinf.2016EDL8028	 Sohn	 Bong-Soo
10.1007/s00586-016-4388-5	 Bahat	 Hilla Sarig
10.1007/s00586-016-4388-5	 Sprecher	 Elliot
10.1007/s00586-016-4388-5	 Sela	 Itamar
10.1007/s00586-016-4388-5	 Treleaven	 Julia
10.1016/j.gaitpost.2016.06.010	 Robert	 Maxime T.
10.1016/j.gaitpost.2016.06.010	 Ballaz	 Laurent
10.1016/j.gaitpost.2016.06.010	 Lemay	 Martin
10.1109/TVCG.2016.2520921	 Kwon	 Oh-Hyun
10.1109/TVCG.2016.2520921	 Muelder	 Chris
10.1109/TVCG.2016.2520921	 Lee	 Kyungwon
10.1109/TVCG.2016.2520921	 Ma	 Kwan-Liu
10.1109/TVCG.2015.2473855	 Kramida	 Gregory
10.3928/01913913-20160511-01	 Ha	 Suk-Gyu
10.3928/01913913-20160511-01	 Na	 Kun-Hoo
10.3928/01913913-20160511-01	 Kweon	 Il-Joo
10.3928/01913913-20160511-01	 Suh	 Young-Woo
10.3928/01913913-20160511-01	 Kim	 Seung-Hyun
00.0000/0050	 Riva	 Giuseppe
00.0000/0050	 Wiederhold	 Brenda K.
00.0000/0050	 Gaggioli	 Andrea
10.1007/s10916-016-0475-8	 Lv	 Zhihan
10.1007/s10916-016-0475-8	 Chirivella	 Javier
10.1007/s10916-016-0475-8	 Gagliardo	 Pablo
10.1088/1741-2560/13/2/026022	 Zapf	 Marc Patrick H.
10.1088/1741-2560/13/2/026022	 Boon	 Mei-Ying
10.1088/1741-2560/13/2/026022	 Lovell	 Nigel H.
10.1088/1741-2560/13/2/026022	 Suaning	 Gregg J.
10.1016/j.jmgm.2016.02.009	 Nakano	 C. Masato
10.1016/j.jmgm.2016.02.009	 Moen	 Erick
10.1016/j.jmgm.2016.02.009	 Byun	 Hye Suk
10.1016/j.jmgm.2016.02.009	 Newman	 Bradley
10.1016/j.jmgm.2016.02.009	 McDowell	 Alexander
10.1016/j.jmgm.2016.02.009	 Wei	 Tao
10.1016/j.jmgm.2016.02.009	 El-Naggar	 Mohamed Y.
10.1109/TVCG.2016.2518137	 Schatzschneider	 Christian
10.1109/TVCG.2016.2518137	 Bruder	 Gerd
10.1109/TVCG.2016.2518137	 Steinicke	 Frank
10.1109/TVCG.2016.2518298	 Freitag	 Sebastian
10.1109/TVCG.2016.2518298	 Weyers	 Benjamin
10.1109/TVCG.2016.2518298	 Kuhlen	 Torsten W.
10.1109/TVCG.2016.2518098	 Greunke	 Larry
10.1109/TVCG.2016.2518098	 Sadagic	 Amela
10.1109/TVCG.2016.2518079	 Friston	 Sebastian
10.1109/TVCG.2016.2518079	 Steed	 Anthony
10.1109/TVCG.2016.2518079	 Tilbury	 Simon
10.1109/TVCG.2016.2518079	 Gaydadjiev	 Georgi
10.1109/TVCG.2016.2518135	 Steed	 Anthony
10.1109/TVCG.2016.2518135	 Friston	 Sebastian
10.1109/TVCG.2016.2518135	 Lopez	 Maria Murcia
10.1109/TVCG.2016.2518135	 Drummond	 Jason
10.1109/TVCG.2016.2518135	 Pan	 Ye
10.1109/TVCG.2016.2518135	 Swapp	 David
10.1002/cav.1633	 Kim	 Yong Sun
10.1002/cav.1633	 Kim	 Yongwan
10.1002/cav.1633	 Kim	 Ki-Hong
10.1007/s00464-015-4278-7	 Sankaranarayanan	 Ganesh
10.1007/s00464-015-4278-7	 Li	 Baichun
10.1007/s00464-015-4278-7	 Manser	 Kelly
10.1007/s00464-015-4278-7	 Jones	 Stephanie B.
10.1007/s00464-015-4278-7	 Jones	 Daniel B.
10.1007/s00464-015-4278-7	 Schwaitzberg	 Steven
10.1007/s00464-015-4278-7	 Cao	 Caroline G. L.
10.1007/s00464-015-4278-7	 De	 Suvranu
10.1016/j.entcom.2016.01.001	 Allen	 Brian
10.1016/j.entcom.2016.01.001	 Hanley	 Taylor
10.1016/j.entcom.2016.01.001	 Rokers	 Bas
10.1016/j.entcom.2016.01.001	 Green	 C. Shawn
10.1098/rsos.150567	 Johnson	 Sarah
10.1098/rsos.150567	 Coxon	 Matthew
10.3389/fpsyg.2016.00268	 Peperkorn	 Henrik M.
10.3389/fpsyg.2016.00268	 Diemer	 Julia E.
10.3389/fpsyg.2016.00268	 Alpers	 Georg W.
10.3389/fpsyg.2016.00268	 Muehlberger	 Andreas
10.1371/journal.pone.0148060	 Bergstroem	 Ilias
10.1371/journal.pone.0148060	 Kilteni	 Konstantina
10.1371/journal.pone.0148060	 Slater	 Mel
10.1585/pfr.11.2406060	 Tamura	 Yuichi
10.1585/pfr.11.2406060	 Nakamura	 Hiroaki
10.1585/pfr.11.2406060	 Fujiwara	 Susumu
00.0000/0052	 Nilsson	 Niels Christian
00.0000/0052	 Serafin	 Stefania
00.0000/0052	 Nordahl	 Rolf
10.16910/jemr.9.6.4	 Kim	 Jung-Ho
10.16910/jemr.9.6.4	 Son	 Ho-Jun
10.16910/jemr.9.6.4	 Lee	 Sung-Jin
10.16910/jemr.9.6.4	 Yun	 Deok-Young
10.16910/jemr.9.6.4	 Kwon	 Soon-Chul
10.16910/jemr.9.6.4	 Lee	 Seung-Hyun
10.7195/ri14.v24i2.965	 Rubio Tamayo	 Jose Luis
10.7195/ri14.v24i2.965	 Gertrudix Barrio	 Manuel
10.1007/978-3-319-28722-5_10	 Guynup	 S.
00.0000/0053	 North	 Max M.
00.0000/0053	 North	 Sarah
10.1109/JTEHM.2016.2623787	 Thomas	 James S.
10.1109/JTEHM.2016.2623787	 France	 Christopher R.
10.1109/JTEHM.2016.2623787	 Leitkam	 Samuel T.
10.1109/JTEHM.2016.2623787	 Applegate	 Megan E.
10.1109/JTEHM.2016.2623787	 Pidcoe	 Peter E.
10.1109/JTEHM.2016.2623787	 Walkowski	 Stevan
10.1080/19439962.2015.1046621	 Cosma	 Giovanni
10.1080/19439962.2015.1046621	 Ronchi	 Enrico
10.1080/19439962.2015.1046621	 Nilsson	 Daniel
10.1016/j.future.2018.02.029	 Liang	 Hai-Ning
10.1016/j.future.2018.02.029	 Lu	 Feiyu
10.1016/j.future.2018.02.029	 Shi	 Yuwei
10.1016/j.future.2018.02.029	 Nanjappan	 Vijayakumar
10.1016/j.future.2018.02.029	 Papangelis	 Konstantinos
10.1016/j.future.2018.11.041	 Somrak	 Andrej
10.1016/j.future.2018.11.041	 Humar	 Iztok
10.1016/j.future.2018.11.041	 Hossain	 M. Shamim
10.1016/j.future.2018.11.041	 Alhamid	 Mohammed F.
10.1016/j.future.2018.11.041	 Hossain	 M. Anwar
10.1016/j.future.2018.11.041	 Guna	 Jože
10.1089/cyber.2019.0206	 Newbutt	 Nigel
10.1089/cyber.2019.0206	 Bradley	 Ryan
10.1089/cyber.2019.0206	 Conley	 Iian
10.1007/s11517-019-02070-2	 Aldaba	 Cassandra N.
10.1007/s11517-019-02070-2	 Moussavi	 Zahra
10.1016/j.aap.2019.105356	 Feldstein	 Ilja T.
10.1016/j.aap.2019.105356	 Dyszak	 Georg N.
10.1089/cyber.2020.29183.gri	 Riva	 Giuseppe
10.1089/cyber.2020.29183.gri	 Wiederhold	 Brenda K.
10.1049/iet-ipr.2017.0826	 Wenjie	 Zou
10.1049/iet-ipr.2017.0826	 Fuzheng	 Yang
10.1049/iet-ipr.2017.0826	 Shuai	 Wan
10.1016/j.ergon.2020.102939	 Park	 Kyudong
10.1016/j.ergon.2020.102939	 Kim	 Dohyeon
10.1016/j.ergon.2020.102939	 Han	 Sung H.
10.1016/j.jbusres.2018.10.054	 Martínez-Navarro	 Jesus
10.1016/j.jbusres.2018.10.054	 Bigné	 Enrique
10.1016/j.jbusres.2018.10.054	 Guixeres	 Jaime
10.1016/j.jbusres.2018.10.054	 Alcañiz	 Mariano
10.1016/j.jbusres.2018.10.054	 Torrecilla	 Carmen
10.1016/j.aap.2018.06.003	 Sportillo	 Daniele
10.1016/j.aap.2018.06.003	 Paljic	 Alexis
10.1016/j.aap.2018.06.003	 Ojeda	 Luciano
10.1080/10447318.2017.1412144	 Czub	 Marcin
10.1080/10447318.2017.1412144	 Piskorz	 Joanna
10.1080/10548408.2019.1618781	 Flavián	 Carlos
10.1080/10548408.2019.1618781	 Ibáñez-Sánchez	 Sergio
10.1080/10548408.2019.1618781	 Orús	 Carlos
10.1080/10447318.2017.1411665	 Louison	 Céphise
10.1080/10447318.2017.1411665	 Ferlay	 Fabien
10.1080/10447318.2017.1411665	 Mestre	 Daniel R.
10.1080/13527266.2019.1671480	 Shen	 Jie(Doreen)
10.1080/13527266.2019.1671480	 Wang	 Yanyun(Mia)
10.1080/13527266.2019.1671480	 Chen	 Chen(Crystal)
10.1080/13527266.2019.1671480	 Nelson	 Michelle R.
10.1080/13527266.2019.1671480	 Yao	 Mike Z.
10.1016/j.future.2018.08.049	 Guna	 Jože
10.1016/j.future.2018.08.049	 Geršak	 Gregor
10.1016/j.future.2018.08.049	 Humar	 Iztok
10.1016/j.future.2018.08.049	 Song	 Jeungeun
10.1016/j.future.2018.08.049	 Drnovšek	 Janko
10.1016/j.future.2018.08.049	 Poga?nik	 Matevž
10.1108/JBIM-12-2018-0407	 Nussipova	 Gulnar
10.1108/JBIM-12-2018-0407	 Nordin	 Fredrik
10.1108/JBIM-12-2018-0407	 Sörhammar	 David
10.1080/10447318.2018.1429061	 Erra	 Ugo
10.1080/10447318.2018.1429061	 Malandrino	 Delfina
10.1080/10447318.2018.1429061	 Pepe	 Luca
10.1016/j.trf.2017.08.005	 Blissing	 Björn
10.1016/j.trf.2017.08.005	 Bruzelius	 Fredrik
10.1016/j.trf.2017.08.005	 Eriksson	 Olle
10.1111/cgf.13757	 Ellis	 A.
10.1111/cgf.13757	 Hunt	 W.
10.1111/cgf.13757	 Hart	 J.
10.1016/j.jbusres.2019.01.017	 Laurell	 Christofer
10.1016/j.jbusres.2019.01.017	 Sandström	 Christian
10.1016/j.jbusres.2019.01.017	 Berthold	 Adam
10.1016/j.jbusres.2019.01.017	 Larsson	 Daniel
10.1016/j.jretconser.2019.02.016	 Farah	 Maya F.
10.1016/j.jretconser.2019.02.016	 Ramadan	 Zahy B.
10.1016/j.jretconser.2019.02.016	 Harb	 Dana H.
10.1080/10447318.2018.1541546	 Chittaro	 Luca
10.1080/10447318.2018.1541546	 Sioni	 Riccardo
10.1111/cgf.13026	 Weier	 Martin
10.1111/cgf.13026	 Roth	 Thorsten
10.1111/cgf.13026	 Kruijff	 Ernst
10.1111/cgf.13026	 Hinkenjann	 André
10.1111/cgf.13026	 Pérard?Gayot	 Arsène
10.1111/cgf.13026	 Slusallek	 Philipp
10.1111/cgf.13026	 Li	 Yongmin
10.1049/iet-ipr.2018.5920	 El Jamiy	 Fatima
10.1049/iet-ipr.2018.5920	 Marsh	 Ronald
10.1109/MCG.2018.111125628	 Nilsson	 Niels Christian
10.1109/MCG.2018.111125628	 Peck	 Tabitha
10.1109/MCG.2018.111125628	 Bruder	 Gerd
10.1109/MCG.2018.111125628	 Hodgson	 Eri
10.1109/MCG.2018.111125628	 Serafin	 Stefania
10.1109/MCG.2018.111125628	 Whitton	 Mary
10.1109/MCG.2018.111125628	 Steinicke	 Frank
10.1109/MCG.2018.111125628	 Rosenberg	 Evan Suma
10.1177/1046878118820905	 Almousa	 Omamah
10.1177/1046878118820905	 Prates	 Joana
10.1177/1046878118820905	 Yeslam	 Noor
10.1177/1046878118820905	 Mac Gregor	 Dougal
10.1177/1046878118820905	 Zhang	 Junsong
10.1177/1046878118820905	 Phan	 Viet
10.1177/1046878118820905	 Nielsen	 Marc
10.1177/1046878118820905	 Smith	 Richard
10.1177/1046878118820905	 Qayumi	 Karim
10.18559/ebr.2018.3.4	 Grudzewski	 Filip
10.18559/ebr.2018.3.4	 Awdziej	 Marcin
10.18559/ebr.2018.3.4	 Mazurek	 Grzegorz
10.18559/ebr.2018.3.4	 Piotrowska	 Katarzyna
10.6017/ital.v39i1.11369	 Frost	 Megan
10.6017/ital.v39i1.11369	 Goates	 Michael
10.6017/ital.v39i1.11369	 Cheng	 Sarah
10.6017/ital.v39i1.11369	 Johnston	 Jed
10.1109/TPC.2018.2804238	 Tham	 Jason
10.1109/TPC.2018.2804238	 Duin	 Ann Hill
10.1109/TPC.2018.2804238	 Gee	 Laura
10.1109/TPC.2018.2804238	 Ernst	 Nathan
10.1109/TPC.2018.2804238	 Abdelqader	 Bilal
10.1109/TPC.2018.2804238	 McGrath	 Megan
10.1109/TCE.2018.2879065	 Katsigiannis	 Stamos
10.1109/TCE.2018.2879065	 Willis	 Rhys
10.1109/TCE.2018.2879065	 Ramzan	 Naeem
10.1016/j.ipm.2019.102105	 Baker	 Steven
10.1016/j.ipm.2019.102105	 Waycott	 Jenny
10.1016/j.ipm.2019.102105	 Robertson	 Elena
10.1016/j.ipm.2019.102105	 Carrasco	 Romina
10.1016/j.ipm.2019.102105	 Neves	 Barbara Barbosa
10.1016/j.ipm.2019.102105	 Hampson	 Ralph
10.1016/j.ipm.2019.102105	 Vetere	 Frank
10.1109/MCG.2018.2875609	 Grubert	 Jens
10.1109/MCG.2018.2875609	 Ofek	 Eyal
10.1109/MCG.2018.2875609	 Pahud	 Michel
10.1109/MCG.2018.2875609	 Kristensson	 Per Ola
10.1109/TBC.2018.2811627	 Zhang	 Yingxue
10.1109/TBC.2018.2811627	 Wang	 Yingbin
10.1109/TBC.2018.2811627	 Liu	 Feiyang
10.1109/TBC.2018.2811627	 Liu	 Zizheng
10.1109/TBC.2018.2811627	 Li	 Yiming
10.1109/TBC.2018.2811627	 Yang	 Daiqin
10.1109/TBC.2018.2811627	 Chen	 Zhenzhong
10.1109/MCG.2018.2884272	 Rojo	 Diego
10.1109/MCG.2018.2884272	 Mayor	 Jesus
10.1109/MCG.2018.2884272	 Rueda	 Jose Jesus Garcia
10.1109/MCG.2018.2884272	 Raya	 Laura
10.1109/MCG.2018.2884272	 Potel	 Mike
10.1080/10447318.2018.1519164	 Loup	 Guillaume
10.1080/10447318.2018.1519164	 Loup-Escande	 Emilie
10.1080/07370024.2016.1243478	 Chessa	 Manuela
10.1080/07370024.2016.1243478	 Maiello	 Guido
10.1080/07370024.2016.1243478	 Borsari	 Alessia
10.1080/07370024.2016.1243478	 Bex	 Peter J.
10.1109/MCG.2019.2936753	 Han	 Ping-Hsuan
10.1109/MCG.2019.2936753	 Chen	 Yang-Sheng
10.1109/MCG.2019.2936753	 Liu	 Iou-Shiuan
10.1109/MCG.2019.2936753	 Jang	 Yu-Ping
10.1109/MCG.2019.2936753	 Tsai	 Ling
10.1109/MCG.2019.2936753	 Chang	 Alvin
10.1109/MCG.2019.2936753	 Hung	 Yi-Ping
10.1016/j.jretconser.2019.01.010	 Lombart	 Cindy
10.1016/j.jretconser.2019.01.010	 Millan	 Elena
10.1016/j.jretconser.2019.01.010	 Normand	 Jean-Marie
10.1016/j.jretconser.2019.01.010	 Verhulst	 Adrien
10.1016/j.jretconser.2019.01.010	 Labbé-Pinlon	 Blandine
10.1016/j.jretconser.2019.01.010	 Moreau	 Guillaume
10.1109/TASE.2019.2945607	 Wang	 Qiyue
10.1109/TASE.2019.2945607	 Jiao	 Wenhua
10.1109/TASE.2019.2945607	 Yu	 Rui
10.1109/TASE.2019.2945607	 Johnson	 Michael T.
10.1109/TASE.2019.2945607	 Zhang	 YuMing
10.22430/21457778.1213	 Mercado Borja	 William Enrique
10.22430/21457778.1213	 Guarnieri	 Griselda
10.22430/21457778.1213	 Luján Rodríguez	 Guillermo
10.1109/TCSVT.2019.2953827	 Ye	 Yan
10.1109/TCSVT.2019.2953827	 Boyce	 Jill M.
10.1109/TCSVT.2019.2953827	 Hanhart	 Philippe
10.1145/3329119	 CHING-LING	 FAN
10.1145/3329119	 WEN-CHIH	 LO
10.1145/3329119	 YU-TUNG	 PAI
10.1145/3329119	 CHENG-HSIN	 HSU
10.1089/cyber.2017.0499	 Takeuchi	 Naoyuki
10.1089/cyber.2017.0499	 Mori	 Takayuki
10.1089/cyber.2017.0499	 Suzukamo	 Yoshimi
10.1089/cyber.2017.0499	 Izumi	 Shin-Ichi
10.1080/0144929X.2016.1212931	 Alhalabi	 Wadee S.
10.1111/cgf.13780	 Hladky	 J.
10.1111/cgf.13780	 Seidel	 H. P.
10.1111/cgf.13780	 Steinberger	 M.
10.1089/cyber.2015.0130	 Rosa	 Pedro J.
10.1089/cyber.2015.0130	 Morais	 Diogo
10.1089/cyber.2015.0130	 Gamito	 Pedro
10.1089/cyber.2015.0130	 Oliveira	 Jorge
10.1089/cyber.2015.0130	 Saraiva	 Tomaz
10.18280/isi.240310	 Tingting	 Lei
10.18280/isi.240310	 Guangtian	 Zou
10.1109/MCG.2019.2915717	 Zhu	 Lifeng
10.1109/MCG.2019.2915717	 Wang	 Zian
10.1109/MCG.2019.2915717	 Wang	 Yunhai
10.1109/MCG.2019.2915717	 Song	 Aiguo
10.1109/MCG.2019.2915717	 Potel	 Mike
10.1109/MCOM.001.1800876	 Han	 Bo
10.1109/MCG.2018.021951628	 Jerald	 Jason
10.1089/cyber.2017.0714	 Mosso Vázquez	 José Luis
10.1089/cyber.2017.0714	 Mosso Lara	 Dejanira
10.1089/cyber.2017.0714	 Mosso Lara	 José Luis
10.1089/cyber.2017.0714	 Miller	 Ian
10.1089/cyber.2017.0714	 Wiederhold	 Mark D.
10.1089/cyber.2017.0714	 Wiederhold	 Brenda K.
10.1111/rssa.12381	 Castruccio	 Stefano
10.1111/rssa.12381	 Genton	 Marc G.
10.1111/rssa.12381	 Sun	 Ying
00.0000/0054	 Gleasure	 Rob
00.0000/0054	 Feller	 Joseph
10.1016/j.ijinfomgt.2016.04.017	 Choi	 Hee-soo
10.1016/j.ijinfomgt.2016.04.017	 Kim	 Sang-heon
10.1080/0144929X.2016.1264483	 Ucar	 Erdem
10.1080/0144929X.2016.1264483	 Ustunel	 Hakan
10.1080/0144929X.2016.1264483	 Civelek	 Turhan
10.1080/0144929X.2016.1264483	 Umut	 Ilhan
10.1080/07370024.2018.1469408	 Howard	 Matt C.
10.1016/j.cie.2018.11.060	 Segura	 Álvaro
10.1016/j.cie.2018.11.060	 Diez	 Helen V.
10.1016/j.cie.2018.11.060	 Barandiaran	 Iñigo
10.1016/j.cie.2018.11.060	 Arbelaiz	 Ander
10.1016/j.cie.2018.11.060	 Álvarez	 Hugo
10.1016/j.cie.2018.11.060	 Simões	 Bruno
10.1016/j.cie.2018.11.060	 Posada	 Jorge
10.1016/j.cie.2018.11.060	 García-Alonso	 Alejandro
10.1016/j.cie.2018.11.060	 Ugarte	 Ramón
10.1111/cgf.12956	 Stengel	 Michael
10.1111/cgf.12956	 Grogorick	 Steve
10.1111/cgf.12956	 Eisemann	 Martin
10.1111/cgf.12956	 Magnor	 Marcus
10.4018/IJMBL.2016100104	 Cochrane	 Thomas
10.1080/16864360.2016.1273584	 Vitali	 Andrea
10.1080/16864360.2016.1273584	 Rizzi	 Caterina
10.1089/cyber.2017.0174	 Stupar-Rutenfrans	 Snežana
10.1089/cyber.2017.0174	 Ketelaars	 Loes E. H.
10.1089/cyber.2017.0174	 van Gisbergen	 Marnix S.
10.1109/TMI.2019.2926501	 Li	 Ranyang
10.1109/TMI.2019.2926501	 Pan	 Junjun
10.1109/TMI.2019.2926501	 Si	 Yaqing
10.1109/TMI.2019.2926501	 Yan	 Bin
10.1109/TMI.2019.2926501	 Hu	 Yong
10.1109/TMI.2019.2926501	 Qin	 Hong
10.1016/j.ergon.2016.01.001	 Jeong	 Seongwook
10.1016/j.ergon.2016.01.001	 Jung	 Eui S.
10.1016/j.ergon.2016.01.001	 Im	 Youngjae
10.1037/xlm0000597	 Starrett	 Michael J.
10.1037/xlm0000597	 Stokes	 Jared D.
10.1037/xlm0000597	 Huffman	 Derek J.
10.1037/xlm0000597	 Ferrer	 Emilio
10.1037/xlm0000597	 Ekstrom	 Arne D.
10.1089/cyber.2018.0027	 Wiederhold	 Mark D.
10.1089/cyber.2018.0027	 Crisci	 Megan
10.1089/cyber.2018.0027	 Patel	 Vrajeshri
10.1089/cyber.2018.0027	 Nonaka	 Makoto
10.1089/cyber.2018.0027	 Wiederhold	 Brenda K.
10.1037/xhp0000597	 Preuss	 Nora
10.1037/xhp0000597	 Ehrsson	 H. Henrik
10.1016/j.jclepro.2019.117805	 Kerin	 Mairi
10.1016/j.jclepro.2019.117805	 Pham	 Duc Truong
10.1109/MCG.2017.2801407	 Kishore	 Sameer
10.1109/MCG.2017.2801407	 Navarro	 Xavi
10.1109/MCG.2017.2801407	 Dominguez	 Eva
10.1109/MCG.2017.2801407	 De La Pena	 Nonny
10.1109/MCG.2017.2801407	 Slater	 Mel
10.1016/j.iccn.2020.102849	 Lee	 SY
10.1016/j.iccn.2020.102849	 Kang	 J
10.1007/s11227-018-2615-z	 Chheang	 V
10.1007/s11227-018-2615-z	 Jeong	 S
10.1007/s11227-018-2615-z	 Lee	 G
10.1007/s11227-018-2615-z	 Ha	 JS
10.1007/s11227-018-2615-z	 Yoo	 KH
10.1007/s10055-020-00449-3	 Pastel	 S
10.1007/s10055-020-00449-3	 Chen	 CH
10.1007/s10055-020-00449-3	 Martin	 L
10.1007/s10055-020-00449-3	 Naujoks	 M
10.1007/s10055-020-00449-3	 Petri	 K
10.1007/s10055-020-00449-3	 Witte	 K
10.1007/s11042-020-09026-x	 Goncalves	 G
10.1007/s11042-020-09026-x	 Melo	 M
10.1007/s11042-020-09026-x	 Vasconcelos-Raposo	 J
10.1007/s11042-020-09026-x	 Bessa	 M
10.1186/s12886-020-01471-4	 Yoon	 HJ
10.1186/s12886-020-01471-4	 Kim	 J
10.1186/s12886-020-01471-4	 Park	 SW
10.1186/s12886-020-01471-4	 Heo	 H
10.1177/1937586720924787	 Joseph	 A
10.1177/1937586720924787	 Browning	 MHEM
10.1177/1937586720924787	 Jiang	 S
10.1080/17483107.2020.1765419	 Lubetzky	 AV
10.1080/17483107.2020.1765419	 Kelly	 J
10.1080/17483107.2020.1765419	 Wang	 Z
10.1080/17483107.2020.1765419	 Gospodarek	 M
10.1080/17483107.2020.1765419	 Fu	 G
10.1080/17483107.2020.1765419	 Sutera	 J
10.1080/17483107.2020.1765419	 Hujsak	 BD
10.3390/su12093823	 Filter	 E
10.3390/su12093823	 Eckes	 A
10.3390/su12093823	 Fiebelkorn	 F
10.3390/su12093823	 Bussing	 AG
10.3390/app10093012	 Lin	 CL
10.3390/app10093012	 Chen	 SJ
10.3390/app10093012	 Lin	 RT
10.3390/app10093182	 Pagano	 A
10.3390/app10093182	 Palombini	 A
10.3390/app10093182	 Bozzelli	 G
10.3390/app10093182	 De Nino	 M
10.3390/app10093182	 Cerato	 I
10.3390/app10093182	 Ricciardi	 S
10.1177/2055668320913770	 Eisapour	 M
10.1177/2055668320913770	 Cao	 S
10.1177/2055668320913770	 Boger	 J
10.1016/j.cag.2020.03.006	 Celikcan	 U
10.1016/j.cag.2020.03.006	 Askin	 MB
10.1016/j.cag.2020.03.006	 Albayrak	 D
10.1016/j.cag.2020.03.006	 Capin	 TK
10.1371/journal.pone.0231152	 Wiesing	 M
10.1371/journal.pone.0231152	 Fink	 GR
10.1371/journal.pone.0231152	 Weidner	 R
10.1371/journal.pone.0223631	 Nelson	 KM
10.1371/journal.pone.0223631	 Anggraini	 E
10.1371/journal.pone.0223631	 Schluter	 A
10.3390/s20071917	 Lee	 KF
10.3390/s20071917	 Chen	 YL
10.3390/s20071917	 Yu	 CW
10.3390/s20071917	 Chin	 KY
10.3390/s20071917	 Wu	 CH
10.3390/s20082208	 Li	 G
10.3390/s20082208	 Zhou	 SH
10.3390/s20082208	 Kong	 Z
10.3390/s20082208	 Guo	 MY
10.3390/s20082168	 Sanchez-Herrera-Baeza	 P
10.3390/s20082168	 Cano-de-la-Cuerda	 R
10.3390/s20082168	 Ona-Simbana	 ED
10.3390/s20082168	 Palacios-Cena	 D
10.3390/s20082168	 Perez-Corrales	 J
10.3390/s20082168	 Cuenca-Zaldivar	 JN
10.3390/s20082168	 Gueita-Rodriguez	 J
10.3390/s20082168	 de Quiros	 CBB
10.3390/s20082168	 Jardon-Huete	 A
10.3390/s20082168	 Cuesta-Gomez	 A
10.3390/s20082264	 Syawaludin	 MF
10.3390/s20082264	 Lee	 M
10.3390/s20082264	 Hwang	 JI
10.1371/journal.pone.0230042	 Ferrer	 CDR
10.1371/journal.pone.0230042	 Shishido	 H
10.1371/journal.pone.0230042	 Kitahara	 I
10.1371/journal.pone.0230042	 Kameda	 Y
10.32604/cmc.2020.09930	 Kounlaxay	 K
10.32604/cmc.2020.09930	 Kim	 SK
10.1371/journal.pone.0225972	 Chan	 ZYS
10.1371/journal.pone.0225972	 MacPhail	 AJC
10.1371/journal.pone.0225972	 Au	 IPH
10.1371/journal.pone.0225972	 Zhang	 JH
10.1371/journal.pone.0225972	 Lam	 BF
10.1371/journal.pone.0225972	 Ferber	 R
10.1371/journal.pone.0225972	 Cheung	 RTH
10.3389/frobt.2019.00084	 Thomas	 BH
10.1080/07421222.2019.1628889	 Peukert	 C
10.1080/07421222.2019.1628889	 Pfeiffer	 J
10.1080/07421222.2019.1628889	 Meissner	 M
10.1080/07421222.2019.1628889	 Pfeiffer	 T
10.1080/07421222.2019.1628889	 Weinhardt	 C
10.1016/j.bjoms.2018.04.002	 Matsuo	 A
10.1016/j.bjoms.2018.04.002	 Hamada	 H
10.1016/j.bjoms.2018.04.002	 Oba	 H
10.1016/j.bjoms.2018.04.002	 Shibata	 K
10.1016/B978-0-12-809481-5.00009-2	 Bailey	 JO
10.1016/B978-0-12-809481-5.00009-2	 Bailenson	 JN
00.0000/0055	 Stein	 C
10.1587/transinf.2015EDP7165	 Gong	 XL
10.1587/transinf.2015EDP7165	 Liu	 YJ
10.1587/transinf.2015EDP7165	 Jiao	 Y
10.1587/transinf.2015EDP7165	 Wang	 BJ
10.1587/transinf.2015EDP7165	 Zhou	 JC
10.1587/transinf.2015EDP7165	 Yu	 HY
00.0000/0056	 Youn	 JH
00.0000/0056	 Cha	 BR
00.0000/0056	 Eun-Seok	 Kim
00.0000/0056	 Ji	 YK
10.3762/bjnano.6.220	 Leinen	 P
10.3762/bjnano.6.220	 Green	 MFB
10.3762/bjnano.6.220	 Esat	 T
10.3762/bjnano.6.220	 Wagner	 C
10.3762/bjnano.6.220	 Tautz	 FS
10.3762/bjnano.6.220	 Temirov	 R
10.1021/acs.jcim.5b00544	 Norrby	 M
10.1021/acs.jcim.5b00544	 Grebner	 C
10.1021/acs.jcim.5b00544	 Eriksson	 J
10.1021/acs.jcim.5b00544	 Bostrom	 J
10.1007/s10055-015-0270-8	 Schoeffler	 M
10.1007/s10055-015-0270-8	 Gernert	 JL
10.1007/s10055-015-0270-8	 Neumayer	 M
10.1007/s10055-015-0270-8	 Westphal	 S
10.1007/s10055-015-0270-8	 Herre	 J
10.1016/j.physbeh.2015.08.043	 Nalivaiko	 E
10.1016/j.physbeh.2015.08.043	 Davis	 SL
10.1016/j.physbeh.2015.08.043	 Blackmore	 KL
10.1016/j.physbeh.2015.08.043	 Vakulin	 A
10.1016/j.physbeh.2015.08.043	 Nesbitt	 KV
10.1080/00222895.2015.1015674	 Masumoto	 J
10.1080/00222895.2015.1015674	 Inui	 N
10.1145/2766939	 Li	 H
10.1145/2766939	 Trutoiu	 L
10.1145/2766939	 Olszewski	 K
10.1145/2766939	 Wei	 LY
10.1145/2766939	 Trutna	 T
10.1145/2766939	 Hsieh	 PL
10.1145/2766939	 Nicholls	 A
10.1145/2766939	 Ma	 CY
10.1016/j.chb.2015.01.065	 Wrzesien	 M
10.1016/j.chb.2015.01.065	 Botella	 C
10.1016/j.chb.2015.01.065	 Breton-Lopez	 J
10.1016/j.chb.2015.01.065	 Gonzalez	 ED
10.1016/j.chb.2015.01.065	 Burkhardt	 JM
10.1016/j.chb.2015.01.065	 Alcaniz	 M
10.1016/j.chb.2015.01.065	 Perez-Ara	 MA
10.3389/fneur.2015.00164	 Chiarovano	 E
10.3389/fneur.2015.00164	 de Waele	 C
10.3389/fneur.2015.00164	 MacDougall	 HG
10.3389/fneur.2015.00164	 Rogers	 SJ
10.3389/fneur.2015.00164	 Burgess	 AM
10.3389/fneur.2015.00164	 Curthoys	 IS
00.0000/0057	 Kim	 JY
00.0000/0057	 Lee	 WH
00.0000/0058	 Kim	 JY
00.0000/0058	 Kim	 YS
10.3389/fnins.2015.00207	 Kathner	 I
10.3389/fnins.2015.00207	 Kubler	 A
10.3389/fnins.2015.00207	 Halder	 S
10.1007/s10055-015-0260-x	 Aiken	 MP
10.1007/s10055-015-0260-x	 Berry	 MJ
10.1088/1741-2560/12/3/036001	 Zapf	 MPH
10.1088/1741-2560/12/3/036001	 Boon	 MY
10.1088/1741-2560/12/3/036001	 Matteucci	 PB
10.1088/1741-2560/12/3/036001	 Lovell	 NH
10.1088/1741-2560/12/3/036001	 Suaning	 GJ
00.0000/0059	 Riva	 G
00.0000/0059	 Wiederhold	 BK
10.3389/fpsyg.2015.00713	 Riecke	 BE
10.3389/fpsyg.2015.00713	 Jordan	 JD
10.1016/j.cag.2015.02.007	 Wang	 J
10.1016/j.cag.2015.02.007	 Lindeman	 R
10.1364/AO.54.003422	 Aksit	 K
10.1364/AO.54.003422	 Kautz	 J
10.1364/AO.54.003422	 Luebke	 D
10.1145/2720020	 Lin	 QF
10.1145/2720020	 Rieser	 J
10.1145/2720020	 Bodenheimer	 B
10.1016/j.math.2014.10.002	 Bahat	 HS
10.1016/j.math.2014.10.002	 Chen	 XQ
10.1016/j.math.2014.10.002	 Reznik	 D
10.1016/j.math.2014.10.002	 Kodesh	 E
10.1016/j.math.2014.10.002	 Treleaven	 J
10.1109/TVCG.2015.2391858	 Mehra	 R
10.1109/TVCG.2015.2391858	 Rungta	 A
10.1109/TVCG.2015.2391858	 Golas	 A
10.1109/TVCG.2015.2391858	 Lin	 M
10.1109/TVCG.2015.2391858	 Manocha	 D
10.1109/TVCG.2015.2391860	 Jang	 Y
10.1109/TVCG.2015.2391860	 Noh	 ST
10.1109/TVCG.2015.2391860	 Chang	 HJ
10.1109/TVCG.2015.2391860	 Kim	 TK
10.1109/TVCG.2015.2391860	 Woo	 W
10.1109/TVCG.2015.2391853	 Chittaro	 L
10.1109/TVCG.2015.2391853	 Buttussi	 F
10.3389/fpsyg.2015.00248	 Kim	 J
10.3389/fpsyg.2015.00248	 Chung	 CYL
10.3389/fpsyg.2015.00248	 Nakamura	 S
10.3389/fpsyg.2015.00248	 Palmisano	 S
10.3389/fpsyg.2015.00248	 Khuu	 SK
10.3758/s13428-014-0463-1	 Hodgson	 E
10.3758/s13428-014-0463-1	 Bachmann	 ER
10.3758/s13428-014-0463-1	 Vincent	 D
10.3758/s13428-014-0463-1	 Zmuda	 M
10.3758/s13428-014-0463-1	 Waller	 D
10.3758/s13428-014-0463-1	 Calusdian	 J
10.1145/2699254	 Leyrer	 M
10.1145/2699254	 Linkenauger	 SA
10.1145/2699254	 Bulthoff	 HH
10.1145/2699254	 Mohler	 BJ
10.1016/j.jbiomech.2015.01.005	 Xu	 X
10.1016/j.jbiomech.2015.01.005	 Chen	 KRB
10.1016/j.jbiomech.2015.01.005	 Lin	 JH
10.1016/j.jbiomech.2015.01.005	 Radwin	 RG
10.1016/j.ssci.2014.09.017	 Grabowski	 A
10.1016/j.ssci.2014.09.017	 Jankowski	 J
10.17759/exppsy.2015080205	 Kovalev	 AI
10.17759/exppsy.2015080205	 Menshikova	 GY
10.17759/exppsy.2015080205	 Klimova	 OA
10.17759/exppsy.2015080205	 Barabanshikova	 VV
10.1068/p7929	 Kunz	 BR
10.1068/p7929	 Creem-Regehr	 SH
10.1068/p7929	 Thompson	 WB
10.3233/978-1-61499-595-1-3	 Riva	 G
10.3233/978-1-61499-595-1-3	 Wiederhold	 BK
10.3109/17483107.2014.889230	 Mendez	 MF
10.3109/17483107.2014.889230	 Joshi	 A
10.3109/17483107.2014.889230	 Jimenez	 E
10.1016/j.ijhcs.2014.09.002	 Burns	 CG
10.1016/j.ijhcs.2014.09.002	 Fairclough	 SH
10.1007/s10055-014-0248-y	 Mirzaei	 MA
10.1007/s10055-014-0248-y	 Merienne	 F
10.1007/s10055-014-0248-y	 Oliver	 JH
10.1007/s10055-014-0249-x	 Okura	 F
10.1007/s10055-014-0249-x	 Kanbara	 M
10.1007/s10055-014-0249-x	 Yokoya	 N
10.1109/MPUL.2014.2355298	 Chandler	 DL
10.1115/1.4027114	 Byagowi	 A
10.1115/1.4027114	 Singhal	 S
10.1115/1.4027114	 Lambeta	 M
10.1115/1.4027114	 Aldaba	 C
10.1115/1.4027114	 Moussavi	 Z
10.1016/j.destud.2009.11.001	 Shen	 Y
10.1016/j.destud.2009.11.001	 Ong	 SK
10.1016/j.destud.2009.11.001	 Nee	 AYC
10.3758/s13428-013-0412-4	 Trojan	 J
10.3758/s13428-013-0412-4	 Diers	 M
10.3758/s13428-013-0412-4	 Fuchs	 X
10.3758/s13428-013-0412-4	 Bach	 F
10.3758/s13428-013-0412-4	 Bekrater-Bodmann	 R
10.3758/s13428-013-0412-4	 Foell	 J
10.3758/s13428-013-0412-4	 Kamping	 S
10.3758/s13428-013-0412-4	 Rance	 M
10.3758/s13428-013-0412-4	 Maass	 H
10.3758/s13428-013-0412-4	 Flor	 H
10.1037/a0036240	 Freeman	 D
10.1037/a0036240	 Antley	 A
10.1037/a0036240	 Ehlers	 A
10.1037/a0036240	 Dunn	 G
10.1037/a0036240	 Thompson	 C
10.1037/a0036240	 Vorontsova	 N
10.1037/a0036240	 Garety	 P
10.1037/a0036240	 Kuipers	 E
10.1037/a0036240	 Glucksman	 E
10.1037/a0036240	 Slater	 M
10.1002/jsid.269	 Lin	 CJ
10.1002/jsid.269	 Woldegiorgis	 BH
10.1002/jsid.269	 Caesaron	 D
10.7717/peerj.337	 Morina	 N
10.7717/peerj.337	 Brinkman	 WP
10.7717/peerj.337	 Hartanto	 D
10.7717/peerj.337	 Emmelkamp	 PMG
10.1109/TVCG.2014.18	 Grechkin	 TY
10.1109/TVCG.2014.18	 Plumert	 JM
10.1109/TVCG.2014.18	 Kearney	 JK
10.4103/1673-5374.131612	 Gatica-Rojas	 V
10.4103/1673-5374.131612	 Mendez-Rebolledo	 G
10.1186/1471-2105-15-56	 Li	 HJ
10.1186/1471-2105-15-56	 Leung	 KS
10.1186/1471-2105-15-56	 Nakane	 T
10.1186/1471-2105-15-56	 Wong	 MH
10.1155/2014/206082	 Wroblewski	 D
10.1155/2014/206082	 Francis	 BA
10.1155/2014/206082	 Sadun	 A
10.1155/2014/206082	 Vakili	 G
10.1155/2014/206082	 Chopra	 V
10.3389/fpsyg.2013.00946	 Heydrich	 L
10.3389/fpsyg.2013.00946	 Dodds	 TJ
10.3389/fpsyg.2013.00946	 Aspell	 JE
10.3389/fpsyg.2013.00946	 Herbelin	 B
10.3389/fpsyg.2013.00946	 Bulthoff	 HH
10.3389/fpsyg.2013.00946	 Mohler	 BJ
10.3389/fpsyg.2013.00946	 Blanke	 O
10.3109/10582452.2013.851760	 Ramsayer	 B
10.3109/10582452.2013.851760	 Honold	 M
10.3109/10582452.2013.851760	 Beck	 K
10.3109/10582452.2013.851760	 Kraus	 M
10.3109/10582452.2013.851760	 Kramer	 M
10.3109/10582452.2013.851760	 Dehner	 C
10.1145/2508363.2508366	 Lanman	 D
10.1145/2508363.2508366	 Luebke	 D
10.1038/ijo.2013.87	 McBride	 CM
10.1038/ijo.2013.87	 Persky	 S
10.1038/ijo.2013.87	 Wagner	 LK
10.1038/ijo.2013.87	 Faith	 MS
10.1038/ijo.2013.87	 Ward	 DS
10.3389/fnhum.2013.00580	 Takahashi	 K
10.3389/fnhum.2013.00580	 Meilinger	 T
10.3389/fnhum.2013.00580	 Watanabe	 K
10.3389/fnhum.2013.00580	 Bulthoff	 HH
10.1073/pnas.1306779110	 Banakou	 D
10.1073/pnas.1306779110	 Groten	 R
10.1073/pnas.1306779110	 Slater	 M
10.1186/1743-0003-10-80	 Aburub	 AS
10.1186/1743-0003-10-80	 Lamontagne	 A
10.3389/fpsyg.2013.00354	 Pasqualini	 I
10.3389/fpsyg.2013.00354	 Llobera	 J
10.3389/fpsyg.2013.00354	 Blanke	 O
10.1016/j.displa.2012.10.007	 Bruder	 G
10.1016/j.displa.2012.10.007	 Steinicke	 F
10.1016/j.displa.2012.10.007	 Bolte	 B
10.1016/j.displa.2012.10.007	 Wieland	 P
10.1016/j.displa.2012.10.007	 Frenz	 H
10.1016/j.displa.2012.10.007	 Lappe	 M
10.1109/TVCG.2013.43	 Laha	 B
10.1109/TVCG.2013.43	 Bowman	 DA
10.1109/TVCG.2013.43	 Schiffbauer	 JD
10.1016/j.displa.2013.01.001	 Piryankova	 IV
10.1016/j.displa.2013.01.001	 de la Rosa	 S
10.1016/j.displa.2013.01.001	 Kloos	 U
10.1016/j.displa.2013.01.001	 Bulthoff	 HH
10.1016/j.displa.2013.01.001	 Mohler	 BJ
10.1109/TNSRE.2012.2237040	 Wright	 WG
10.1109/TNSRE.2012.2237040	 Agah	 MR
10.1109/TNSRE.2012.2237040	 Darvish	 K
10.1109/TNSRE.2012.2237040	 Keshner	 EA
10.1007/s10055-012-0216-3	 Regia-Corte	 T
10.1007/s10055-012-0216-3	 Marchal	 M
10.1007/s10055-012-0216-3	 Cirio	 G
10.1007/s10055-012-0216-3	 Lecuyer	 A
10.1007/s00221-012-3352-9	 Llobera	 J
10.1007/s00221-012-3352-9	 Gonzalez-Franco	 M
10.1007/s00221-012-3352-9	 Perez-Marcos	 D
10.1007/s00221-012-3352-9	 Valls-Sole	 J
10.1007/s00221-012-3352-9	 Slater	 M
10.1007/s00221-012-3352-9	 Sanchez-Vives	 MV
00.0000/0001	 Garcia	 AS
00.0000/0001	 Olivas	 A
00.0000/0001	 Molina	 JP
00.0000/0001	 Martinez	 J
00.0000/0001	 Gonzalez	 P
00.0000/0001	 Martinez	 D
10.4015/S1016237212500391	 Lee	 RG
10.4015/S1016237212500391	 Tien	 SC
10.4015/S1016237212500391	 Chen	 CC
10.4015/S1016237212500391	 Chen	 YY
10.1371/journal.pone.0040867	 Kilteni	 K
10.1371/journal.pone.0040867	 Normand	 JM
10.1371/journal.pone.0040867	 Sanchez-Vives	 MV
10.1371/journal.pone.0040867	 Slater	 M
10.1109/TVCG.2011.278	 Petkov	 K
10.1109/TVCG.2011.278	 Papadopoulos	 C
10.1109/TVCG.2011.278	 Zhang	 M
10.1109/TVCG.2011.278	 Kaufman	 AE
10.1109/TVCG.2011.278	 Gu	 XD
10.1007/s00702-011-0757-8	 Troger	 C
10.1007/s00702-011-0757-8	 Ewald	 H
10.1007/s00702-011-0757-8	 Glotzbach	 E
10.1007/s00702-011-0757-8	 Pauli	 P
10.1007/s00702-011-0757-8	 Muhlberger	 A
10.1162/PRES_a_00111	 Ling	 Y
10.1162/PRES_a_00111	 Brinkman	 WP
10.1162/PRES_a_00111	 Nefs	 HT
10.1162/PRES_a_00111	 Qu	 C
10.1162/PRES_a_00111	 Heynderickx	 I
10.1007/s00221-012-3048-1	 Campos	 JL
10.1007/s00221-012-3048-1	 Butler	 JS
10.1007/s00221-012-3048-1	 Bulthoff	 HH
10.1109/TVCG.2012.45	 Kellner	 F
10.1109/TVCG.2012.45	 Bolte	 B
10.1109/TVCG.2012.45	 Bruder	 G
10.1109/TVCG.2012.45	 Rautenberg	 U
10.1109/TVCG.2012.45	 Steinicke	 F
10.1109/TVCG.2012.45	 Lappe	 M
10.1109/TVCG.2012.45	 Koch	 R
10.1145/2134203.2134206	 Kastanis	 I
10.1145/2134203.2134206	 Slater	 M
10.1177/0269215511419383	 Kang	 HK
10.1177/0269215511419383	 Kim	 Y
10.1177/0269215511419383	 Chung	 Y
10.1177/0269215511419383	 Hwang	 S
10.1162/PRES_a_00089	 Normand	 JM
10.1162/PRES_a_00089	 Spanlang	 B
10.1162/PRES_a_00089	 Tecchia	 F
10.1162/PRES_a_00089	 Carrozzino	 M
10.1162/PRES_a_00089	 Swapp	 D
10.1162/PRES_a_00089	 Slater	 M
10.1371/journal.pone.0030021	 Arias	 P
10.1371/journal.pone.0030021	 Robles-Garcia	 V
10.1371/journal.pone.0030021	 Sanmartin	 G
10.1371/journal.pone.0030021	 Flores	 J
10.1371/journal.pone.0030021	 Cudeiro	 J
10.1080/01431161.2011.629233	 Burwell	 C
10.1080/01431161.2011.629233	 Jarvis	 C
10.1080/01431161.2011.629233	 Tansey	 K
10.1016/j.cirp.2012.05.010	 Nee	 AYC
10.1016/j.cirp.2012.05.010	 Ong	 SK
10.1016/j.cirp.2012.05.010	 Chryssolouris	 G
10.1016/j.cirp.2012.05.010	 Mourtzis	 D
10.1016/j.chb.2011.06.006	 Gordon	 NS
10.1016/j.chb.2011.06.006	 Merchant	 J
10.1016/j.chb.2011.06.006	 Zanbaka	 C
10.1016/j.chb.2011.06.006	 Hodges	 LF
10.1016/j.chb.2011.06.006	 Goolkasian	 P
10.1371/journal.pone.0025759	 Dodds	 TJ
10.1371/journal.pone.0025759	 Mohler	 BJ
10.1371/journal.pone.0025759	 Bulthoff	 HH
10.1016/j.actpsy.2011.05.015	 Magdalon	 EC
10.1016/j.actpsy.2011.05.015	 Michaelsen	 SM
10.1016/j.actpsy.2011.05.015	 Quevedo	 AA
10.1016/j.actpsy.2011.05.015	 Levin	 MF
10.1109/TVCG.2011.41	 Steinicke	 F
10.1109/TVCG.2011.41	 Bruder	 G
10.1109/TVCG.2011.41	 Hinrichs	 K
10.1109/TVCG.2011.41	 Willemsen	 P
10.1016/j.jneumeth.2011.05.011	 Gilson	 SJ
10.1016/j.jneumeth.2011.05.011	 Fitzgibbon	 AW
10.1016/j.jneumeth.2011.05.011	 Glennerster	 A
10.1109/TVCG.2010.248	 Steinicke	 F
10.1109/TVCG.2010.248	 Bruder	 G
10.1109/TVCG.2010.248	 Kuhl	 S
10.1109/TVCG.2010.248	 Willemsen	 P
10.1109/TVCG.2010.248	 Lappe	 M
10.1109/TVCG.2010.248	 Hinrichs	 KH
10.1186/1743-0003-8-36	 Subramanian	 SK
10.1186/1743-0003-8-36	 Levin	 MF
00.0000/0002	 Yussof	 H
00.0000/0002	 Capi	 G
00.0000/0002	 Nasu	 Y
00.0000/0002	 Yamano	 M
00.0000/0002	 Ohka	 M
10.1162/PRES_a_00048	 Naceri	 A
10.1162/PRES_a_00048	 Chellali	 R
10.1162/PRES_a_00048	 Hoinville	 T
10.1109/MAES.2011.5763338	 Yavrucuk	 I
10.1109/MAES.2011.5763338	 Kubali	 E
10.1109/MAES.2011.5763338	 Tarimci	 O
10.1098/rstb.2010.0209	 Stone	 RJ
10.1371/journal.pone.0016128	 Normand	 JM
10.1371/journal.pone.0016128	 Giannopoulos	 E
10.1371/journal.pone.0016128	 Spanlang	 B
10.1371/journal.pone.0016128	 Slater	 M
10.1080/10447318.2011.552059	 Juan	 MC
10.1080/10447318.2011.552059	 Calatrava	 J
10.1162/pres_a_00016	 Ragan	 ED
10.1162/pres_a_00016	 Sowndararajan	 A
10.1162/pres_a_00016	 Kopper	 R
10.1162/pres_a_00016	 Bowman	 DA
10.1016/j.compedu.2010.06.005	 Yang	 JC
10.1016/j.compedu.2010.06.005	 Chen	 CH
10.1016/j.compedu.2010.06.005	 Jeng	 MC
10.1162/PRES_a_00005	 de la Pena	 N
10.1162/PRES_a_00005	 Weil	 P
10.1162/PRES_a_00005	 Llobera	 J
10.1162/PRES_a_00005	 Giannopoulos	 E
10.1162/PRES_a_00005	 Pomes	 A
10.1162/PRES_a_00005	 Spanlang	 B
10.1162/PRES_a_00005	 Friedman	 D
10.1162/PRES_a_00005	 Sanchez-Vives	 MV
10.1162/PRES_a_00005	 Slater	 M
10.1093/jpepsy/jsp082	 Dahlquist	 LM
10.1093/jpepsy/jsp082	 Weiss	 KE
10.1093/jpepsy/jsp082	 Law	 EF
10.1093/jpepsy/jsp082	 Sil	 S
10.1093/jpepsy/jsp082	 Herbert	 LJ
10.1093/jpepsy/jsp082	 Horn	 SB
10.1093/jpepsy/jsp082	 Wohlheiter	 K
10.1093/jpepsy/jsp082	 Ackerman	 CS
10.1007/s11554-009-0141-1	 Jota	 R
10.1007/s11554-009-0141-1	 de Araujo	 BR
10.1007/s11554-009-0141-1	 Bruno	 LC
10.1007/s11554-009-0141-1	 Pereira	 JM
10.1007/s11554-009-0141-1	 Jorge	 JA
10.3758/BRM.42.2.414	 Durgin	 FH
10.3758/BRM.42.2.414	 Li	 Z
10.1002/cav.324	 Manders	 C
10.1002/cav.324	 Farbiz	 F
10.1002/cav.324	 Yin	 TK
10.1002/cav.324	 Yuan	 ML
10.1002/cav.324	 Guan	 CG
10.1016/j.comppsych.2008.12.001	 Kim	 K
10.1016/j.comppsych.2008.12.001	 Kim	 SI
10.1016/j.comppsych.2008.12.001	 Cha	 KR
10.1016/j.comppsych.2008.12.001	 Park	 J
10.1016/j.comppsych.2008.12.001	 Rosenthal	 MZ
10.1016/j.comppsych.2008.12.001	 Kim	 JJ
10.1016/j.comppsych.2008.12.001	 Han	 K
10.1016/j.comppsych.2008.12.001	 Kim	 IY
10.1016/j.comppsych.2008.12.001	 Kim	 CH
10.1016/j.isprsjprs.2009.10.001	 Portales	 C
10.1016/j.isprsjprs.2009.10.001	 Lerma	 JL
10.1016/j.isprsjprs.2009.10.001	 Navarro	 S
10.1109/JDT.2009.2029123	 Polonen	 M
10.1109/JDT.2009.2029123	 Jarvenpaa	 T
10.1109/JDT.2009.2029123	 Hakkinen	 J
10.1167/10.13.11	 Teramoto	 W
10.1167/10.13.11	 Riecke	 BE
10.1016/j.burns.2009.01.013	 Markus	 LA
10.1016/j.burns.2009.01.013	 Willems	 KE
10.1016/j.burns.2009.01.013	 Maruna	 CC
10.1016/j.burns.2009.01.013	 Schmitz	 CL
10.1016/j.burns.2009.01.013	 Pellino	 TA
10.1016/j.burns.2009.01.013	 Wish	 JR
10.1016/j.burns.2009.01.013	 Faucher	 LD
10.1016/j.burns.2009.01.013	 Schurr	 MJ
10.1097/OPX.0b013e3181adff42	 Kozulin	 P
10.1097/OPX.0b013e3181adff42	 Ames	 SL
10.1097/OPX.0b013e3181adff42	 McBrien	 NA
10.1093/jpepsy/jsn023	 Dahlquist	 LM
10.1093/jpepsy/jsn023	 Weiss	 KE
10.1093/jpepsy/jsn023	 Clendaniel	 LD
10.1093/jpepsy/jsn023	 Law	 EF
10.1093/jpepsy/jsn023	 Ackerman	 CS
10.1093/jpepsy/jsn023	 McKenna	 KD
10.1162/pres.18.3.232	 Juan	 MC
10.1162/pres.18.3.232	 Perez	 D
10.1016/j.apmr.2008.10.030	 Knaut	 LA
10.1016/j.apmr.2008.10.030	 Subramanian	 SK
10.1016/j.apmr.2008.10.030	 McFadyen	 BJ
10.1016/j.apmr.2008.10.030	 Bourbonnais	 D
10.1016/j.apmr.2008.10.030	 Levin	 MF
00.0000/0003	 Li	 XG
00.0000/0003	 Cai	 C
00.0000/0003	 Wu	 JL
10.1097/BRS.0b013e31819b3254	 Sarig-Bahat	 H
10.1097/BRS.0b013e31819b3254	 Weiss	 PL
10.1097/BRS.0b013e31819b3254	 Laufer	 Y
10.1016/j.resuscitation.2008.12.016	 Semeraro	 F
10.1016/j.resuscitation.2008.12.016	 Frisoli	 A
10.1016/j.resuscitation.2008.12.016	 Bergamasco	 M
10.1016/j.resuscitation.2008.12.016	 Cerchiari	 EL
10.1007/s11042-008-0223-2	 Sousa Santos	 B
10.1007/s11042-008-0223-2	 Dias	 P
10.1007/s11042-008-0223-2	 Pimentel	 A
10.1007/s11042-008-0223-2	 Baggerman	 JW
10.1007/s11042-008-0223-2	 Ferreira	 C
10.1007/s11042-008-0223-2	 Silva	 S
10.1007/s11042-008-0223-2	 Madeira	 J
10.1162/pres.17.6.575	 Huang	 SF
10.1162/pres.17.6.575	 Tsai	 PY
10.1162/pres.17.6.575	 Sung	 WH
10.1162/pres.17.6.575	 Lin	 CY
10.1162/pres.17.6.575	 Chuang	 TY
10.1111/j.1553-2712.2008.00191.x	 Vincent	 DS
10.1111/j.1553-2712.2008.00191.x	 Sherstyuk	 A
10.1111/j.1553-2712.2008.00191.x	 Burgess	 L
10.1111/j.1553-2712.2008.00191.x	 Connolly	 KK
10.1016/j.actaastro.2007.11.001	 Aoki	 H
10.1016/j.actaastro.2007.11.001	 Oman	 CM
10.1016/j.actaastro.2007.11.001	 Buckland	 DA
10.1016/j.actaastro.2007.11.001	 Natapoff	 A
10.3390/s8074350	 David	 Y
10.3390/s8074350	 Efron	 U
10.1089/cpb.2007.0116	 Kang	 YJ
10.1089/cpb.2007.0116	 Ku	 J
10.1089/cpb.2007.0116	 Han	 K
10.1089/cpb.2007.0116	 Kim	 SI
10.1089/cpb.2007.0116	 Yu	 TW
10.1089/cpb.2007.0116	 Lee	 JH
10.1089/cpb.2007.0116	 Park	 CI
10.1109/TNSRE.2008.922676	 Myall	 DJ
10.1109/TNSRE.2008.922676	 MacAskill	 MR
10.1109/TNSRE.2008.922676	 Davidson	 PR
10.1109/TNSRE.2008.922676	 Anderson	 TJ
10.1109/TNSRE.2008.922676	 Jones	 RD
10.1016/j.displa.2007.09.005	 Sharples	 S
10.1016/j.displa.2007.09.005	 Cobb	 S
10.1016/j.displa.2007.09.005	 Moody	 A
10.1016/j.displa.2007.09.005	 Wilson	 JR
10.1016/j.epsr.2007.03.014	 Romero	 G
10.1016/j.epsr.2007.03.014	 Maroto	 J
10.1016/j.epsr.2007.03.014	 Felez	 J
10.1016/j.epsr.2007.03.014	 Cabanellas	 JM
10.1016/j.epsr.2007.03.014	 Martinez	 ML
10.1016/j.epsr.2007.03.014	 Carretero	 A
10.1007/s00221-007-1134-6	 Schneider	 E
10.1007/s00221-007-1134-6	 Jahn	 K
10.1007/s00221-007-1134-6	 Dieterich	 M
10.1007/s00221-007-1134-6	 Brandt	 T
10.1007/s00221-007-1134-6	 Strupp	 M
10.1123/jsr.17.1.38	 Mihalik	 JP
10.1123/jsr.17.1.38	 Kohli	 L
10.1123/jsr.17.1.38	 Whitton	 MC
10.1002/cae.20145	 Pan	 CX
10.1002/cae.20145	 Smith	 S
10.1145/1278387.1278392	 Seward	 AE
10.1145/1278387.1278392	 Ashmead	 DH
10.1145/1278387.1278392	 Bodenheimer	 B
10.1037/0278-6133.26.6.794	 Dahlquist	 LM
10.1037/0278-6133.26.6.794	 McKenna	 KD
10.1037/0278-6133.26.6.794	 Jones	 KK
10.1037/0278-6133.26.6.794	 Dillinger	 L
10.1037/0278-6133.26.6.794	 Weiss	 KE
10.1037/0278-6133.26.6.794	 Ackerman	 CS
10.1007/s11554-007-0043-z	 Chandaria	 J
10.1007/s11554-007-0043-z	 Thomas	 GA
10.1007/s11554-007-0043-z	 Stricker	 D
10.1186/1743-0003-4-35	 Sugita	 N
10.1186/1743-0003-4-35	 Yoshizawa	 M
10.1186/1743-0003-4-35	 Abe	 M
10.1186/1743-0003-4-35	 Tanaka	 A
10.1186/1743-0003-4-35	 Watanabe	 T
10.1186/1743-0003-4-35	 Chiba	 S
10.1186/1743-0003-4-35	 Yambe	 T
10.1186/1743-0003-4-35	 Nitta	 S
00.0000/0004	 Aoki	 H
00.0000/0004	 Oman	 CM
00.0000/0004	 Natapoff	 A
10.1162/pres.16.4.399	 Giphart	 JE
10.1162/pres.16.4.399	 Chou	 YH
10.1162/pres.16.4.399	 Kim	 DH
10.1162/pres.16.4.399	 Bortnyk	 CT
10.1162/pres.16.4.399	 Wagenaar	 RC
10.1145/1265957.1265961	 Williams	 B
10.1145/1265957.1265961	 Narasimham	 G
10.1145/1265957.1265961	 Westerman	 C
10.1145/1265957.1265961	 Rieser	 J
10.1145/1265957.1265961	 Bodenheimer	 B
10.3130/jaabe.6.57	 Ryu	 J
10.3130/jaabe.6.57	 Hashimoto	 N
10.3130/jaabe.6.57	 Sato	 M
10.3130/jaabe.6.57	 Soeda	 M
10.3130/jaabe.6.57	 Ohno	 R
10.1109/TVCG.2007.37	 Doerr	 KU
10.1109/TVCG.2007.37	 Rademacher	 H
10.1109/TVCG.2007.37	 Huesgen	 S
10.1109/TVCG.2007.37	 Kubbat	 W
10.1518/001872007779598028	 Heineken	 E
10.1518/001872007779598028	 Schulte	 FP
10.1162/pres.16.1.111	 Pfurtscheller	 G
10.1162/pres.16.1.111	 Scherer	 R
10.1162/pres.16.1.111	 Leeb	 R
10.1162/pres.16.1.111	 Keinrath	 C
10.1162/pres.16.1.111	 Neuper	 C
10.1162/pres.16.1.111	 Lee	 F
10.1162/pres.16.1.111	 Bischof	 H
10.1145/1227134.1227139	 Durgin	 FH
10.1145/1227134.1227139	 Reed	 C
10.1145/1227134.1227139	 Tigue	 C
10.1188/07.ONF.39-46	 Schneider	 SM
10.1188/07.ONF.39-46	 Hood	 LE
10.1016/j.jpain.2006.04.006	 Hoffman	 HG
10.1016/j.jpain.2006.04.006	 Seibel	 EJ
10.1016/j.jpain.2006.04.006	 Richards	 TL
10.1016/j.jpain.2006.04.006	 Furness	 TA
10.1016/j.jpain.2006.04.006	 Patterson	 DR
10.1016/j.jpain.2006.04.006	 Sharar	 SR
10.1016/j.eurpsy.2004.10.004	 Viaud-Delmon	 I
10.1016/j.eurpsy.2004.10.004	 Warusfel	 O
10.1016/j.eurpsy.2004.10.004	 Seguelas	 A
10.1016/j.eurpsy.2004.10.004	 Rio	 E
10.1016/j.eurpsy.2004.10.004	 Jouvent	 R
10.1162/pres.15.5.588	 Nagahara	 H
10.1162/pres.15.5.588	 Yagi	 Y
10.1162/pres.15.5.588	 Yachida	 M
10.1016/j.neulet.2006.06.007	 Sarlat	 L
10.1016/j.neulet.2006.06.007	 Warusfel	 O
10.1016/j.neulet.2006.06.007	 Viaud-Delmon	 I
10.1016/j.optlaseng.2005.06.005	 Lin	 CS
10.1016/j.optlaseng.2005.06.005	 Ho	 CW
10.1016/j.optlaseng.2005.06.005	 Chang	 KC
10.1016/j.optlaseng.2005.06.005	 Hung	 SS
10.1016/j.optlaseng.2005.06.005	 Shei	 HJ
10.1016/j.optlaseng.2005.06.005	 Yeh	 MS
10.1109/TVCG.2006.55	 Mania	 K
10.1109/TVCG.2006.55	 Wooldridge	 D
10.1109/TVCG.2006.55	 Coxon	 M
10.1109/TVCG.2006.55	 Robinson	 A
10.1117/1.2189211	 Chevaldonne	 M
10.1117/1.2189211	 Ballaz	 C
10.1117/1.2189211	 Merienne	 F
10.1117/1.2189211	 Neveu	 M
10.1117/1.2189211	 Chevassus	 N
10.1117/1.2189211	 Guillaume	 F
10.1117/1.2189211	 Arbez	 C
10.1016/j.ijhcs.2005.08.004	 Ronkko	 J
10.1016/j.ijhcs.2005.08.004	 Markkanen	 J
10.1016/j.ijhcs.2005.08.004	 Launonen	 R
10.1016/j.ijhcs.2005.08.004	 Ferrino	 M
10.1016/j.ijhcs.2005.08.004	 Gaia	 E
10.1016/j.ijhcs.2005.08.004	 Basso	 V
10.1016/j.ijhcs.2005.08.004	 Patel	 H
10.1016/j.ijhcs.2005.08.004	 D'Cruz	 M
10.1016/j.ijhcs.2005.08.004	 Laukkanen	 S
00.0000/0005	 Yabuki	 N
00.0000/0005	 Machinaka	 H
00.0000/0005	 Li	 ZT
10.1002/ecjb.20304	 Nagahara	 H
10.1002/ecjb.20304	 Yagi	 Y
10.1002/ecjb.20304	 Yachida	 M
10.1080/13506280544000273	 Pierno	 AC
10.1080/13506280544000273	 Caria	 A
10.1080/13506280544000273	 Castiello	 U
10.1162/1054746053967012	 Rand	 D
10.1162/1054746053967012	 Kizony	 R
10.1162/1054746053967012	 Feintuch	 U
10.1162/1054746053967012	 Katz	 N
10.1162/1054746053967012	 Josman	 N
10.1162/1054746053967012	 Rizzo	 A
10.1162/1054746053967012	 Weiss	 PL
10.1097/01.OPX.0000156307.95086.6	 Ames	 SL
10.1097/01.OPX.0000156307.95086.6	 Wolffsohn	 JS
10.1097/01.OPX.0000156307.95086.6	 McBrien	 NA
10.1016/j.autcon.2004.08.001	 Malkawi	 AM
10.1016/j.autcon.2004.08.001	 Srinivasan	 RS
00.0000/0006	 Farago	 P
00.0000/0006	 Barros	 L
00.0000/0006	 Cunha	 G
00.0000/0006	 Landau	 L
00.0000/0006	 Costa	 RM
00.0000/0007	 Choi	 JD
00.0000/0007	 Hwang	 CJ
10.1089/cpb.2004.7.519	 Cho	 BH
10.1089/cpb.2004.7.519	 Kim	 S
10.1089/cpb.2004.7.519	 Shin	 DI
10.1089/cpb.2004.7.519	 Lee	 JH
10.1089/cpb.2004.7.519	 Lee	 SM
10.1089/cpb.2004.7.519	 Kim	 IY
10.1089/cpb.2004.7.519	 Kim	 SI
10.1177/1063293X04042469	 Liverani	 A
10.1177/1063293X04042469	 Amati	 G
10.1177/1063293X04042469	 Caligiana	 G
10.1518/hfes.46.1.142.30384	 Duh	 HBL
10.1518/hfes.46.1.142.30384	 Parker	 DE
10.1518/hfes.46.1.142.30384	 Philips	 JO
10.1518/hfes.46.1.142.30384	 Furness	 TA
10.1037/0022-0663.96.1.165	 Moreno	 R
10.1037/0022-0663.96.1.165	 Mayer	 RE
10.1016/S0005-7967(03)00139-6	 Krijn	 M
10.1016/S0005-7967(03)00139-6	 Emmelkamp	 PMG
10.1016/S0005-7967(03)00139-6	 Biemond	 R
10.1016/S0005-7967(03)00139-6	 de Ligny	 CD
10.1016/S0005-7967(03)00139-6	 Schuemie	 MJ
10.1016/S0005-7967(03)00139-6	 van der Mast	 CAPG
00.0000/0008	 Barrera	 S
00.0000/0008	 Romanos	 P
00.0000/0008	 Saito	 S
00.0000/0008	 Takahashi	 H
00.0000/0008	 Nakajima	 M
00.0000/0009	 Choi	 JD
00.0000/0009	 Jang	 BT
00.0000/0009	 Hwang	 CJ
10.1007/s10384-003-0001-7	 Suzuki	 Y
10.1007/s10384-003-0001-7	 Onda	 Y
10.1007/s10384-003-0001-7	 Katada	 S
10.1007/s10384-003-0001-7	 Ino	 S
10.1007/s10384-003-0001-7	 Ifukube	 T
10.1017/S0263574703005447	 Huang	 WS
10.1017/S0263574703005447	 Shing	 CY
10.1017/S0263574703005447	 Fung	 CP
10.1017/S0263574703005447	 Chuang	 TY
10.1017/S0263574703005447	 Jeng	 MC
10.1017/S0263574703005447	 Doong	 JL
10.1016/j.biopha.2003.08.010	 Yambe	 T
10.1016/j.biopha.2003.08.010	 Yoshizawa	 M
10.1016/j.biopha.2003.08.010	 Fukudo	 S
10.1016/j.biopha.2003.08.010	 Fukuda	 H
10.1016/j.biopha.2003.08.010	 Kawashima	 R
10.1016/j.biopha.2003.08.010	 Shizuka	 K
10.1016/j.biopha.2003.08.010	 Nanka	 S
10.1016/j.biopha.2003.08.010	 Tanaka	 A
10.1016/j.biopha.2003.08.010	 Abe	 K
10.1016/j.biopha.2003.08.010	 Shouji	 T
10.1016/j.biopha.2003.08.010	 Hongo	 M
10.1016/j.biopha.2003.08.010	 Tabayashi	 K
10.1016/j.biopha.2003.08.010	 Nitta	 S
00.0000/0010	 Webb	 NA
00.0000/0010	 Griffin	 MJ
10.1055/s-2003-37831	 Wendt	 M
10.1055/s-2003-37831	 Sauer	 F
10.1055/s-2003-37831	 Khamene	 A
10.1055/s-2003-37831	 Bascle	 B
10.1055/s-2003-37831	 Vogt	 S
10.1055/s-2003-37831	 Wacker	 FK
10.1016/S0007-8506(07)60517-4	 Reinhart	 G
10.1016/S0007-8506(07)60517-4	 Patron	 C
00.0000/0011	 de la Riviere	 JB
00.0000/0011	 Guitton	 P
00.0000/0012	 Hadipriono	 FC
00.0000/0012	 Duane	 JW
00.0000/0012	 Nemeth	 ZA
00.0000/0012	 Won	 S
10.1023/A:1021778608344	 Baram	 Y
10.1023/A:1021778608344	 Aharon-Peretz	 J
10.1023/A:1021778608344	 Simionovici	 Y
10.1023/A:1021778608344	 Ron	 L
10.1016/S0143-8166(02)00034-9	 Lin	 CS
10.1037//0022-0663.94.3.598	 Moreno	 R
10.1037//0022-0663.94.3.598	 Mayer	 RE
10.1360/02tb9297	 Zhao	 QL
10.1360/02tb9297	 Wang	 ZQ
10.1360/02tb9297	 Mu	 GG
10.1360/02tb9297	 Lu	 ZW
10.1023/A:1019960305038	 Antoniac	 P
10.1023/A:1019960305038	 Pulli	 P
10.1023/A:1019960305038	 Kuroda	 T
10.1023/A:1019960305038	 Bendas	 D
10.1023/A:1019960305038	 Hickey	 S
10.1023/A:1019960305038	 Sasaki	 H
10.1007/s00268-001-0127-z	 Hanna	 G
10.1007/s00268-001-0127-z	 Cuschieri	 A
10.1016/S0097-8493(01)00118-2	 Regenbrecht	 H
10.1016/S0097-8493(01)00118-2	 Baratoff	 G
10.1016/S0097-8493(01)00118-2	 Wagner	 M
10.1006/ijhc.2001.0475	 Neale	 H
10.1006/ijhc.2001.0475	 Nichols	 S
10.1162/1054746011470226	 Rizzo	 AA
10.1162/1054746011470226	 Buckwalter	 JG
10.1162/1054746011470226	 McGee	 JS
10.1162/1054746011470226	 Bowerly	 T
10.1162/1054746011470226	 van der Zaag	 C
10.1162/1054746011470226	 Neumann	 U
10.1162/1054746011470226	 Thiebaux	 M
10.1162/1054746011470226	 Kim	 L
10.1162/1054746011470226	 Pair	 J
10.1162/1054746011470226	 Chua	 C
10.1162/1054746011470271	 Schultheis	 MT
10.1162/1054746011470271	 Mourant	 RR
00.0000/0013	 Di Girolamo	 S
00.0000/0013	 Picciotti	 P
00.0000/0013	 Sergi	 B
00.0000/0013	 Di Nardo	 W
00.0000/0013	 Paludetti	 G
00.0000/0013	 Ottaviani	 F
10.1504/IJTM.2001.002917	 Bochenek	 GM
10.1504/IJTM.2001.002917	 Ragusa	 JM
10.1504/IJTM.2001.002917	 Malone	 LC
10.1016/S0924-0136(00)00717-2	 Korves	 B
10.1016/S0924-0136(00)00717-2	 Loftus	 M
10.1016/S0887-6185(00)00052-9	 Viaud-Delmon	 I
10.1016/S0887-6185(00)00052-9	 Ivanenko	 YP
10.1016/S0887-6185(00)00052-9	 Berthoz	 A
10.1016/S0887-6185(00)00052-9	 Jouvent	 R
10.1016/S0141-9382(00)00029-9	 Hill	 KJ
10.1016/S0141-9382(00)00029-9	 Howarth	 PA
00.0000/0014	 Geelhoed	 E
00.0000/0014	 Falahee	 M
00.0000/0014	 Latham	 K
00.0000/0015	 Birkfellner	 W
00.0000/0015	 Figl	 M
00.0000/0015	 Huber	 K
00.0000/0015	 Watzinger	 F
00.0000/0015	 Wanschitz	 F
00.0000/0015	 Hanel	 R
00.0000/0015	 Wagner	 A
00.0000/0015	 Rafolt	 D
00.0000/0015	 Ewers	 R
00.0000/0015	 Bergmann	 H
00.0000/0016	 Wu	 JR
00.0000/0016	 Ouhyoung	 M
10.1016/S0278-2391(99)90722-X	 Wagner	 A
10.1016/S0278-2391(99)90722-X	 Millesi	 W
10.1016/S0278-2391(99)90722-X	 Watzinger	 F
10.1016/S0278-2391(99)90722-X	 Truppe	 M
10.1016/S0278-2391(99)90722-X	 Rasse	 M
10.1016/S0278-2391(99)90722-X	 Enislidis	 G
10.1016/S0278-2391(99)90722-X	 Kermer	 C
10.1016/S0278-2391(99)90722-X	 Ewers	 R
10.2170/jjphysiol.49.417	 Kuno	 S
10.2170/jjphysiol.49.417	 Kawakita	 T
10.2170/jjphysiol.49.417	 Kawakami	 O
10.2170/jjphysiol.49.417	 Miyake	 Y
10.2170/jjphysiol.49.417	 Watanabe	 S
10.1518/001872099779611067	 So	 RHY
10.1518/001872099779611067	 Chung	 GKM
10.1518/001872099779611067	 Goonetilleke	 RS
10.1097/00006324-199909000-00021	 Morse	 SE
10.1097/00006324-199909000-00021	 Jiang	 BC
10.1162/105474699566341	 Riva	 G
10.1162/105474699566152	 Cobb	 SVG
10.1162/105474699566152	 Nichols	 S
10.1162/105474699566152	 Ramsey	 A
10.1162/105474699566152	 Wilson	 JR
10.1016/S0141-9331(98)00105-7	 Cameron	 AA
10.1016/S0003-6870(98)00041-6	 Howarth	 PA
10.1016/S0003-6870(98)00041-6	 Finch	 M
10.1016/S0003-6870(98)00043-X	 Howarth	 PA
10.1016/S0003-6870(98)00045-3	 Nichols	 S
10.1016/S0361-9230(98)00104-X	 Cobb	 SVG
10.1016/S0361-9230(98)00104-X	 Nichols	 SC
00.0000/0017	 Kramer	 PD
00.0000/0017	 Roberts	 DC
00.0000/0017	 Shelhamer	 M
00.0000/0017	 Zee	 DS
10.1162/105474698565811	 Emura	 S
10.1162/105474698565811	 Tachi	 S
00.0000/0018	 Lamour	 R
00.0000/0018	 Beach	 DS
00.0000/0018	 Berger	 M
00.0000/0018	 Marianovsky	 E
10.1080/001401398187035	 Mon-Williams	 M
10.1080/001401398187035	 Plooy	 A
10.1080/001401398187035	 Burgess-Limerick	 R
10.1080/001401398187035	 Wann	 J
10.1109/5.662873	 Satava	 RM
10.1109/5.662873	 Jones	 SB
10.1016/S0141-9382(97)00011-5	 Howarth	 PA
10.1016/S0141-9382(97)00011-5	 Costello	 PJ
10.1023/A:1018639714611	 Traill	 DM
10.1023/A:1018639714611	 Bowskill	 JM
10.1023/A:1018639714611	 Lawrence	 PJ
10.1080/001401397187603	 Wilson	 JR
10.1518/001872097778827070	 Marran	 L
10.1518/001872097778827070	 Schor	 C
10.1016/S0168-874X(96)00078-9	 Yeh	 TP
10.1016/S0168-874X(96)00078-9	 Vance	 JM
00.0000/0019	 Helsel	 S
10.1016/S0278-2391(97)90689-3	 Wagner	 A
10.1016/S0278-2391(97)90689-3	 Rasse	 M
10.1016/S0278-2391(97)90689-3	 Millesi	 W
10.1016/S0278-2391(97)90689-3	 Ewers	 R
10.1162/pres.1997.6.1.118	 Gruenbaum	 PE
10.1162/pres.1997.6.1.118	 McNeely	 WA
10.1162/pres.1997.6.1.118	 Sowizral	 HA
10.1080/00140139608964552	 Komachi	 Y
10.1080/00140139608964552	 Miyazaki	 K
10.1080/00140139608964552	 Murata	 T
10.1080/00140139608964552	 Nagata	 S
10.1080/00140139608964552	 Kani	 K
10.1080/00140139608964557	 Kawara	 T
10.1080/00140139608964557	 Ohmi	 M
10.1080/00140139608964557	 Yoshizawa	 T
10.1143/JJAP.35.3121	 Matani	 A
10.1143/JJAP.35.3121	 Ban	 Y
10.1143/JJAP.35.3121	 Oshiro	 O
10.1143/JJAP.35.3121	 Chihara	 K
10.1016/S0901-5027(96)80062-2	 Wagner	 A
10.1016/S0901-5027(96)80062-2	 Ploder	 O
10.1016/S0901-5027(96)80062-2	 Enislidis	 G
10.1016/S0901-5027(96)80062-2	 Truppe	 M
00.0000/0020	 Hand	 C
00.0000/0021	 ROBINETT	 W
00.0000/0021	 HOLLOWAY	 R
00.0000/0022	 VOLTER	 S
00.0000/0022	 KRAMER	 JL
10.1007/BF02407087	 TAN	 WC
10.1007/BF02407087	 MENG	 THY
10.1016/0010-4825(94)00007-D	 FROHLICH	 B
10.1016/0010-4825(94)00007-D	 GRUNST	 G
10.1016/0010-4825(94)00007-D	 KRUGER	 W
10.1016/0010-4825(94)00007-D	 WESCHE	 G
00.0000/0023	 RU	 JR
00.0000/0023	 MING	 OY
10.1145/159161.173948	 SHAW	 C
10.1145/159161.173948	 GREEN	 M
10.1145/159161.173948	 LIANG	 JD
10.1145/159161.173948	 SUN	 YQ
10.1145/159544.159587	 FEINER	 S
10.1145/159544.159587	 MACINTYRE	 B
10.1145/159544.159587	 SELIGMANN	 D
10.1109/TBME.2009.2028013	 Ferrari	 Vincenzo
10.1109/TBME.2009.2028013	 Megali	 Giuseppe
10.1109/TBME.2009.2028013	 Troia	 Elena
10.1109/TBME.2009.2028013	 Pietrabissa	 Andrea
10.1109/TBME.2009.2028013	 Mosca	 Franco
10.1089/10949310050078805	 Roessler	 Andreas
10.1089/10949310050078805	 Mueller-Spahn	 Franz
10.1089/10949310050078805	 Baehrer	 Sabine
10.1089/10949310050078805	 Bullinger	 Alex H.
10.1089/109493103322011542	 Baumann	 Stephen
10.1089/109493103322011542	 Neff	 Chris
10.1089/109493103322011542	 Fetzick	 Scott
10.1089/109493103322011542	 Stangl	 Gregg
10.1089/109493103322011542	 Basler	 Lee
10.1089/109493103322011542	 Vereneck	 Ray
10.1089/109493103322011542	 Schneider	 Walter
10.1109/MM.2014.94	 Kim	 Gyeonghoon
10.1109/MM.2014.94	 Kim	 Donghyun
10.1109/MM.2014.94	 Park	 Seongwook
10.1109/MM.2014.94	 Kim	 Youchang
10.1109/MM.2014.94	 Lee	 Kyuho
10.1109/MM.2014.94	 Hong	 Injoon
10.1109/MM.2014.94	 Bong	 Kyeongryeol
10.1109/MM.2014.94	 Yoo	 Hoi-Jun
10.1016/S0001-4575(02)00081-7	 Simpson	 Gordon
10.1016/S0001-4575(02)00081-7	 Johnston	 Lucy
10.1016/S0001-4575(02)00081-7	 Richardson	 Michael
10.1089/cpb.2008.0003	 Kim	 Kwanguk
10.1089/cpb.2008.0003	 Kim	 Chan-Hyung
10.1089/cpb.2008.0003	 Cha	 Kyung Ryeol
10.1089/cpb.2008.0003	 Park	 Junyoung
10.1089/cpb.2008.0003	 Han	 Kiwan
10.1089/cpb.2008.0003	 Kim	 Yun Ki
10.1089/cpb.2008.0003	 Kim	 Jae-Jin
10.1089/cpb.2008.0003	 Kim	 In Young
10.1089/cpb.2008.0003	 Kim	 Sun I.
10.1089/cyber.2014.0046	 Jeon	 Bomyi
10.1089/cyber.2014.0046	 Cho	 Sungkun
10.1089/cyber.2014.0046	 Lee	 Jang-Han
10.1080/10447318.2014.927283	 Zarraonandia	 Telmo
10.1080/10447318.2014.927283	 Aedo	 Ignacio
10.1080/10447318.2014.927283	 Díaz	 Paloma
10.1080/10447318.2014.927283	 Montero Montes	 Alvaro
10.1109/MCG.2012.110	 Steed	 Anthony
10.1109/MCG.2012.110	 Steptoe	 William
10.1109/MCG.2012.110	 Oyekoya	 Wole
10.1109/MCG.2012.110	 Pece	 Fabrizio
10.1109/MCG.2012.110	 Weyrich	 Tim
10.1109/MCG.2012.110	 Kautz	 Jan
10.1109/MCG.2012.110	 Friedman	 Doron
10.1109/MCG.2012.110	 Peer	 Angelika
10.1109/MCG.2012.110	 Solazzi	 Massimiliano
10.1109/MCG.2012.110	 Tecchia	 Franco
10.1109/MCG.2012.110	 Bergamasco	 Massimo
10.1109/MCG.2012.110	 Slater	 Mel
10.1504/IJCAT.2015.069331	 Gogouvitis	 X. V.
10.1504/IJCAT.2015.069331	 Vosniakos	 G-C.
10.1089/cpb.2009.0118	 Girard	 Benoit
10.1089/cpb.2009.0118	 Turcotte	 Vincent
10.1089/cpb.2009.0118	 Bouchard	 Stéphane
10.1089/cpb.2009.0118	 Girard	 Bruno
10.1109/MCG.2004.1297006	 Navab	 Nassir
10.1080/07408170304345	 Kesavadas	 T.
10.1080/07408170304345	 Subramanium	 Hari
10.1080/16864360.2006.10738485	 Jun	 Hyun-Kyu
10.1080/16864360.2006.10738485	 Dong-Hyung	 Lee
10.1080/16864360.2006.10738485	 Doh-Chul	 Yang
10.1037/a0027524	 Geuss	 Michael N.
10.1037/a0027524	 Stefanucci	 Jeanine K.
10.1037/a0027524	 Creem-Regehr	 Sarah H.
10.1037/a0027524	 Thompson	 William B.
10.1089/cpb.2006.9.207	 Gold	 Jeffrey I.
10.1089/cpb.2006.9.207	 Seok	 Hyeon Kim
10.1089/cpb.2006.9.207	 Kant	 Alexis J.
10.1089/cpb.2006.9.207	 Joseph	 Michael H.
10.1089/cpb.2006.9.207	 Rizzo	 Albert Skip
10.1002/hfm.20566	 Lin	 Chiuhsiang Joe
10.1002/hfm.20566	 Chen	 Hung?Jen
10.1002/hfm.20566	 Cheng	 Ping?Yun
10.1002/hfm.20566	 Sun	 Tien?Lung
10.1089/109493101300117910	 Marsh	 Tim
10.1089/109493101300117910	 Wright	 Peter
10.1089/109493101300117910	 Smith	 Shamus
10.1089/1094931042403109	 Mikropoulos	 Tassos A.
10.1089/1094931042403109	 Strouboulis	 Vassilis
10.1089/cyber.2014.0058	 Hoffman	 Hunter G.
10.1089/cyber.2014.0058	 Meyer	 Walter J.
10.1089/cyber.2014.0058	 Ramirez	 Maribel
10.1089/cyber.2014.0058	 Roberts	 Linda
10.1089/cyber.2014.0058	 Seibel	 Eric J.
10.1089/cyber.2014.0058	 Atzori	 Barbara
10.1089/cyber.2014.0058	 Sharar	 Sam R.
10.1089/cyber.2014.0058	 Patterson	 David R.
10.1089/cpb.2006.9.591	 Simone	 Lisa K.
10.1089/cpb.2006.9.591	 Schultheis	 Maria T.
10.1089/cpb.2006.9.591	 Rebimbas	 Jose
10.1089/cpb.2006.9.591	 Millis	 Scott R.
10.1089/cpb.2004.7.734	 Baños	 R. M.
10.1089/cpb.2004.7.734	 Botella	 C.
10.1089/cpb.2004.7.734	 Alcañiz	 M.
10.1089/cpb.2004.7.734	 Liaño	 V.
10.1089/cpb.2004.7.734	 Guerrero	 B.
10.1089/cpb.2004.7.734	 Rey	 B.
00.0000/0024	 Hadipriono	 Fabian C.
00.0000/0024	 Duane	 Josann W.
00.0000/0024	 Nemeth	 Zoltan A.
00.0000/0024	 Won	 Seungwon
10.1080/01449290903160459	 Yang	 Ungyeon
10.1080/01449290903160459	 Kim	 GerardJounghyun
10.1109/38.963462	 Tamura	 Hideyuki
10.1109/38.963462	 Yamamoto	 Hiroyuki
10.1109/38.963462	 Katayama	 Akihiro
10.1089/1094931042403055	 Baek-Hwan	 Cho
10.1089/1094931042403055	 Kim	 Saebyul
10.1089/1094931042403055	 Dong	 Ik Shin
10.1089/1094931042403055	 Jang	 Han Lee
10.1089/1094931042403055	 Sang	 Min Lee
10.1089/1094931042403055	 Kim	 In Young
10.1089/1094931042403055	 Kim	 Sun I.
10.3233/wor-2012-0442-2201	 Conradi	 Jessica
10.3233/wor-2012-0442-2201	 Alexander	 Thomas
10.1080/16864360.2006.10738444	 Ott	 Renaud
10.1080/16864360.2006.10738444	 Thalmann	 Daniel
10.1080/16864360.2006.10738444	 Vexo	 Frédéric
10.1089/cpb.2007.9996	 Mühlberger	 Andreas
10.1089/cpb.2007.9996	 Wieser	 Matthias J.
10.1089/cpb.2007.9996	 Kenntner-Mabiala	 Ramona
10.1089/cpb.2007.9996	 Pauli	 Paul
10.1089/cpb.2007.9996	 Wiederhold	 Brenda K.
10.1080/088395197118154	 Wren	 Christopher R.
10.1080/088395197118154	 Sparacino	 Flavia
10.1080/088395197118154	 Azarbayejani	 Ali J.
10.1080/088395197118154	 Darrell	 Trevor J.
10.1080/088395197118154	 Starner	 Thad E.
10.1080/088395197118154	 Kotani	 Akira
10.1080/088395197118154	 Chao	 Chloe M.
10.1080/088395197118154	 Hlavac	 Michal
10.1080/088395197118154	 Russell	 Kenneth B.
10.1080/088395197118154	 Pentland	 Alex P.
10.1089/10949310050078788	 Kesztyues	 T.I.
10.1089/10949310050078788	 Mehlitz	 M.
10.1089/10949310050078788	 Schilken	 E.
10.1089/10949310050078788	 Weniger	 G.
10.1089/10949310050078788	 Wolf	 S.
10.1089/10949310050078788	 Piccolo	 U.
10.1089/10949310050078788	 Irle	 E.
10.1089/10949310050078788	 Rienhoff	 O.
10.1109/MCG.2015.98	 Carnegie	 Kieran
10.1109/MCG.2015.98	 Rhee	 Taehyun
10.1109/MCG.2014.117	 Marner	 Michael R.
10.1109/MCG.2014.117	 Smith	 Ross T.
10.1109/MCG.2014.117	 Walsh	 James A.
10.1109/MCG.2014.117	 Thomas	 Bruce H.
10.1109/TRO.2009.2028765	 Livatino	 Salvatore
10.1109/TRO.2009.2028765	 Muscato	 Giovanni
10.1109/TRO.2009.2028765	 Privitera	 Filippo
10.1109/TIE.2014.2334675	 Livatino	 Salvatore
10.1109/TIE.2014.2334675	 De Paolis	 Lucio T.
10.1109/TIE.2014.2334675	 D'Agostino	 Michele
10.1109/TIE.2014.2334675	 Zocco	 Alessandro
10.1109/TIE.2014.2334675	 Agrimi	 Alessio
10.1109/TIE.2014.2334675	 De Santis	 Alberto
10.1109/TIE.2014.2334675	 Bruno	 Luisa Vittoria
10.1109/TIE.2014.2334675	 Lapresa	 Michele
10.3758/s13421-010-0054-z	 Ruddle	 Roy
10.3758/s13421-010-0054-z	 Volkova	 Ekaterina
10.3758/s13421-010-0054-z	 Mohler	 Betty
10.3758/s13421-010-0054-z	 Bülthoff	 Heinrich
10.1089/109493103769710505	 Lott	 Alison
10.1089/109493103769710505	 Bisson	 Etienne
10.1089/109493103769710505	 Lajoie	 Yves
10.1089/109493103769710505	 McComas	 Joan
10.1089/109493103769710505	 Sveistrup	 Heidi
10.1089/109493102753770516	 Cho	 Baek-Hwan
10.1089/109493102753770516	 Ku	 Jeonghun
10.1089/109493102753770516	 Jang	 Dong Pyo
10.1089/109493102753770516	 Kim	 Saebyul
10.1089/109493102753770516	 Lee	 Yong Hee
10.1089/109493102753770516	 Kim	 In Young
10.1089/109493102753770516	 Lee	 Jang Han
10.1089/109493102753770516	 Kim	 Sun I.
10.1089/109493102753685890	 Tse	 Mimi M.Y.
10.1089/109493102753685890	 Ng	 Jacobus K.F.
10.1089/109493102753685890	 Chung	 Joanne W.Y.
10.1089/109493102753685890	 Wong	 Thomas K.S.
10.1089/109493101300117938	 Mania	 Katerina
10.1089/109493101300117938	 Chalmers	 Alan
10.1089/10949310050078940	 Rizzo	 A.A.
10.1089/10949310050078940	 Buckwalter	 J.G.
10.1089/10949310050078940	 Bowerly	 T.
10.1089/10949310050078940	 Van Der Zaag	 C.
10.1089/10949310050078940	 Humphrey	 L.
10.1089/10949310050078940	 Neumann	 U.
10.1089/10949310050078940	 Chua	 C.
10.1089/10949310050078940	 Kyriakakis	 C.
10.1089/10949310050078940	 Van Rooyen	 A.
10.1089/10949310050078940	 Sisemore	 D.
10.1080/10447318.2015.1039909	 Jankowski	 Jaros?aw
10.1080/10447318.2015.1039909	 Grabowski	 Andrzej
10.1089/cpb.2006.9.388	 Nyberg	 Lars
10.1089/cpb.2006.9.388	 Lundin-Olsson	 Lillemor
10.1089/cpb.2006.9.388	 Sondell	 Björn
10.1089/cpb.2006.9.388	 Backman	 Anders
10.1089/cpb.2006.9.388	 Holmlund	 Kenneth
10.1089/cpb.2006.9.388	 Eriksson	 Staffan
10.1089/cpb.2006.9.388	 Stenvall	 Michael
10.1089/cpb.2006.9.388	 Rosendahl	 Erik
10.1089/cpb.2006.9.388	 Maxhall	 Marcus
10.1089/cpb.2006.9.388	 Bucht	 Gustaf
10.1109/TBME.2005.848378	 Barniv	 Yair
10.1109/TBME.2005.848378	 Aguilar	 Mario
10.1109/TBME.2005.848378	 Hasanbelliu	 Erion
10.1109/MCG.2014.103	 Avila	 Lisa
10.1109/MCG.2014.103	 Bailey	 Mike
10.1089/cpb.2006.9.137	 Crosbie	 J. H.
10.1089/cpb.2006.9.137	 Lennon	 S.
10.1089/cpb.2006.9.137	 McNeill	 M. D. J.
10.1089/cpb.2006.9.137	 McDonough	 S. M.
10.1089/109493103322011605	 Schneider	 Susan M.
10.1089/109493103322011605	 Ellis	 Mathew
10.1089/109493103322011605	 Coombs	 William T.
10.1089/109493103322011605	 Shonkwiler	 Erin L.
10.1089/109493103322011605	 Folsom	 Linda C.
10.1109/MCG.2015.102	 Komura	 Taku
10.1109/MCG.2015.102	 Lau	 Rynson W.H.
10.1109/MCG.2015.102	 Lin	 Ming C.
10.1109/MCG.2015.102	 Manocha	 Dinesh
10.1109/MCG.2015.102	 Majumder	 Aditi
10.1109/MCG.2015.102	 Xu	 Wei Wei
10.1089/cyber.2009.0263	 Dahlquist	 Lynnda M.
10.1089/cyber.2009.0263	 Herbert	 Linda J.
10.1089/cyber.2009.0263	 Weiss	 Karen E.
10.1089/cyber.2009.0263	 Jimeno	 Monica
10.1109/MCG.2014.82	 Roberts	 Jonathan C.
10.1109/MCG.2014.82	 Ritsos	 Panagiotis D.
10.1109/MCG.2014.82	 Badam	 Sriram Karthik
10.1109/MCG.2014.82	 Elmqvist	 Niklas
10.1109/MCG.2014.82	 Brodbeck	 Dominique
10.1109/MCG.2014.82	 Kennedy	 Jessie
00.0000/0026	 Encarnacao	 L. Miguel
00.0000/0026	 Barton III	 Robert J.
10.1145/1498700.1498702	 Willemsen	 P.
10.1145/1498700.1498702	 Colton	 M.B.
10.1145/1498700.1498702	 Creem-Regehr	 S.H.
10.1145/1498700.1498702	 Thompson	 S.B.
10.1145/1823738.1823744	 Grechkin	 TY
10.1145/1823738.1823744	 Nguyen	 TD
10.1145/1823738.1823744	 Plumert	 JM
10.1145/1823738.1823744	 Cremer	 JF
10.1145/1823738.1823744	 Kearney	 JK
10.1016/j.ergon.2010.10.001	 Hu	 B
10.1016/j.ergon.2010.10.001	 Ma	 L
10.1016/j.ergon.2010.10.001	 Zhang	 W
10.1016/j.ergon.2010.10.001	 Salvendy	 G
10.1016/j.ergon.2010.10.001	 Chablat	 D
10.1016/j.ergon.2010.10.001	 Bennis	 F
10.1016/j.gaitpost.2012.02.010	 Taylor W. Cleworth	 Mark G. Carpenter
10.1016/j.jneumeth.2018.03.010	 Ouellet	 É
10.1016/j.jneumeth.2018.03.010	 Boller	 B
10.1016/j.jneumeth.2018.03.010	 Corriveau-Lecavalier	 N
10.1016/j.jneumeth.2018.03.010	 Cloutier	 S
10.1016/j.jneumeth.2018.03.010	 Belleville	 S
10.3758/s13414-011-0170-2	 Li	 Z
10.3758/s13414-011-0170-2	 Phillips	 J
10.3758/s13414-011-0170-2	 Durgin	 FH
\.


--
-- Data for Name: doi_hmd; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.doi_hmd (doi, name) FROM stdin;
10.1016/j.ergon.2010.10.001	5DT HMD 800-26 3D
10.1162/PRES_a_00048	Cybermind Visette45 SXGA
00.0000/0036	FOVE 0
10.1007/s11042-018-6403-9	Google Cardboard
10.1007/s11042-018-6403-9	Oculus Rift DK2
10.1016/j.ijhcs.2020.102414	Google Daydream VR
10.2352/J.ImagingSci.Technol.2019.63.6.060409	Google Pixel 2 XL, Wheatstone mirror stereoscope
10.1089/cpb.2004.7.519	HMD Daeyang E&C
10.1089/109493101300117938	HP Prototype
10.3233/ICA-180586	HTC Vive
10.1109/MCE.2019.2953741	HTC Vive
10.1016/j.pnucene.2019.103127	HTC Vive
10.1007/s12555-018-0882-3	HTC Vive
10.1016/j.jbiomech.2019.109379	HTC Vive
10.1016/j.jmapro.2019.10.016	HTC Vive
10.1177/0735633119854025	HTC Vive
10.3390/ijerph16224406	HTC Vive
10.1109/JSEN.2019.2921644	HTC Vive
10.1007/s10956-019-09781-z	HTC Vive
10.1109/TNSRE.2019.2931778	HTC Vive
10.1145/3313902	HTC Vive
10.1016/j.jflm.2019.06.005	HTC Vive
10.1016/j.ergon.2019.06.013	HTC Vive
10.1016/j.diin.2019.04.007	HTC Vive
10.1109/LRA.2019.2921928	HTC Vive
10.1007/s11548-019-01992-4	HTC Vive
10.1007/s10055-018-0374-z	HTC Vive
10.1109/TVCG.2019.2898782	HTC Vive
10.1016/j.jcde.2018.05.006	HTC Vive
10.3390/su11061605	HTC Vive
10.1007/s10055-018-0364-1	HTC Vive
10.1037/neu0000517	HTC Vive
10.1119/1.5080224	HTC Vive
00.0000/0061	HTC Vive
10.1109/ACCESS.2019.2934990	HTC Vive
10.1109/ACCESS.2019.2905143	HTC Vive
10.1109/ACCESS.2019.2897018	HTC Vive
10.1109/ACCESS.2018.2878237	HTC Vive
10.18383/j.tom.2018.00053	HTC Vive
10.1108/JCHMSD-09-2017-0067	HTC Vive
10.1145/3265755	HTC Vive
10.1186/s13673-018-0154-5	HTC Vive
10.1049/htl.2018.5077	HTC Vive
10.1145/3230648	HTC Vive
10.1145/3232678	HTC Vive
10.1364/BOE.9.002825	HTC Vive
10.1016/j.fusengdes.2018.02.031	HTC Vive
10.1108/ILS-07-2018-0069	HTC Vive
10.1007/s41064-020-00106-z	HTC Vive
10.1007/s10055-020-00432-y	HTC Vive
10.1002/pmrj.12206	HTC Vive
10.1007/s10055-020-00440-y	HTC Vive
10.3390/info11030134	HTC Vive
10.1163/22134808-20201445	HTC Vive
10.1007/s41064-020-00091-3	HTC Vive
10.3390/app10041427	HTC Vive
10.1109/ACCESS.2020.2972122	HTC Vive
10.1016/j.buildenv.2019.106278	HTC Vive
00.0000/0035	HTC Vive
10.1002/cav.1882	HTC Vive
10.1093/iwc/iwz018	HTC Vive
10.1016/j.cag.2018.10.006	HTC Vive
10.1371/journal.pone.0189275	HTC Vive
10.1007/s00464-017-5500-6	HTC Vive
10.1145/3106155	HTC Vive
10.1016/j.apergo.2017.03.007	HTC Vive
10.1177/2041669517708205	HTC Vive
10.1371/journal.pone.0173972	HTC Vive
10.1007/s10055-020-00449-3	HTC Vive
10.1016/j.cag.2020.03.006	HTC Vive
10.1080/07421222.2019.1628889	HTC Vive
10.1007/s10055-019-00409-6	HTC Vive
10.1089/g4h.2017.0114	HTC Vive
10.1089/g4h.2017.0114	Oculus Rift
10.1109/TVCG.2019.2932239	HTC Vive Pro
10.1016/j.ijhcs.2018.02.003	HoloLens
10.1007/s00586-016-4388-5	I- glasses HRV Pro
10.3389/fnhum.2013.00580	Kaiser SR80
10.1016/j.actpsy.2011.05.015	Kaiser XL50
10.1016/j.apmr.2008.10.030	Kaiser XL50
10.1177/0269215511419383	MSP-209, Kowon Technology
10.1002/jsid.840	NED+ optical see?through stereographic AR HMD
10.1145/1823738.1823744	NVIS nVisor ST50
10.1016/j.jneumeth.2018.03.010	NVIS nVisor ST50
10.1109/TOH.2017.2741488	NVIS nVisor ST50
10.1109/TVCG.2014.18	NVIS nVisor ST50
10.3758/BRM.42.2.414	NVIS nVisor ST50
10.1007/s10055-019-00411-y	NVIS nVisor ST50
10.1007/s10055-019-00411-y	Oculus Rift CV1
10.1068/p7929	NVIS nVisor SX
10.1145/2699254	NVIS nVisor SX
10.3233/wor-2012-0442-2201	NVIS nVisor SX
10.1037/a0027524	NVIS nVisor SX
10.1145/1498700.1498702	NVIS nVisor SX
10.1145/2720020	NVIS nVisor SX
10.1364/OE.27.024877	Oculus Go
10.1364/OE.27.024877	Oculus Rift
10.1364/OE.27.024877	Samsung Gear VR
10.1364/OE.27.024877	HTC Vive
10.2196/games.5526	Oculus Rift
10.1016/j.ijom.2018.01.005	Oculus Rift
10.1007/s11042-017-5328-z	Oculus Rift
10.1142/S1793962318400020	Oculus Rift
10.1016/j.joms.2017.10.002	Oculus Rift
10.1093/comjnl/bxx117	Oculus Rift
10.1007/s10055-017-0313-4	Oculus Rift
10.5195/ijt.2018.6250	Oculus Rift
10.1177/1729881417751545	Oculus Rift
10.3233/VES-190650	Oculus Rift
10.1007/s10055-017-0329-9	Oculus Rift
10.5277/ABB-01082-2018-02	Oculus Rift
10.3389/fpsyg.2018.02265	Oculus Rift
10.1177/0361198118758311	Oculus Rift
10.1115/1.4041428	Oculus Rift
10.1177/1470412920906260	Oculus Rift
10.1016/j.apergo.2019.103010	Oculus Rift
10.1007/s12262-020-02131-z	Oculus Rift
10.1016/j.compedu.2018.09.015	Oculus Rift
10.1016/j.jvcir.2018.11.039	Oculus Rift
10.3389/frobt.2017.00042	Oculus Rift
10.1186/s12886-017-0501-8	Oculus Rift
10.1007/s12193-016-0236-5	Oculus Rift
00.0000/0047	Oculus Rift
10.1080/17483107.2019.1688398	Oculus Rift
10.1007/s10055-019-00389-7	Oculus Rift
10.1186/s12984-017-0225-2	Oculus Rift
10.1186/s13673-019-0169-6	Oculus Rift
10.1080/17483107.2016.1176259	Oculus Rift
10.1016/j.culher.2016.09.003	Oculus Rift
10.1038/srep37016	Oculus Rift
10.3389/fpsyg.2016.01649	Oculus Rift
10.3390/sym8090093	Oculus Rift
10.1109/TVCG.2015.2391860	Oculus Rift
10.1200/JGO.18.00263	Oculus Rift
10.3332/ecancer.2019.910	Oculus Rift
10.1016/j.entcom.2016.01.001	Oculus Rift
10.1109/JTEHM.2016.2623787	Oculus Rift
10.1080/19439962.2015.1046621	Oculus Rift
10.1016/j.heliyon.2019.e02583	Oculus Rift
10.2196/13887	Oculus Rift
10.1093/iwc/iwz033	Oculus Rift
10.1016/j.apergo.2019.04.001	Oculus Rift
10.1177/0018720819867501	Oculus Rift
10.1089/end.2018.0626	Oculus Rift
10.3389/fpsyg.2015.00713	Oculus Rift
10.3389/frobt.2019.00050	Oculus Rift
10.3762/bjnano.6.220	Oculus Rift
10.1021/acs.jcim.5b00544	Oculus Rift
10.1007/s10055-015-0270-8	Oculus Rift
10.1007/s11277-018-5382-5	Oculus Rift
10.1097/NNE.0000000000000570	Oculus Rift
10.1007/s10055-019-00412-x	Oculus Rift
10.1115/1.4027114	Oculus Rift
10.1177/0018720819835088	Oculus Rift
10.1007/s00464-019-06887-8	Oculus Rift
10.1016/j.humov.2019.102526	Oculus Rift
10.1097/AUD.0000000000000736	Oculus Rift
10.1016/j.jbiomech.2015.01.005	Oculus Rift
10.1002/jsid.747	Oculus Rift
10.17973/MMSJ.2018_11_2017100	Oculus Rift
10.3389/fpsyg.2015.00248	Oculus Rift
10.1155/2018/4798359	Oculus Rift
10.1371/journal.pone.0187220	Oculus Rift
10.1371/journal.pone.0187777	Oculus Rift
10.1007/s00221-016-4846-7	Oculus Rift
10.1002/alr.21986	Oculus Rift
10.3389/fpsyg.2017.01611	Oculus Rift
10.1080/13527266.2019.1671480	Oculus Rift
10.1080/13527266.2019.1671480	Google Cardboard
10.1007/s10055-019-00401-0	Oculus Rift
10.1007/s10055-019-00401-0	HTC Vive
10.1016/j.jbusres.2019.01.017	Oculus Rift
10.1016/j.jbusres.2019.01.017	HTC Vive
10.3758/s13428-019-01336-9	Oculus Rift
10.3758/s13428-019-01336-9	HTC Vive
10.24507/ijicic.15.02.591	Oculus Rift CV1
10.1007/s00415-019-09370-5	Oculus Rift CV1
10.1016/j.ijhcs.2020.102413	Oculus Rift CV1
10.1177/2055668320913770	Oculus Rift CV1
10.1016/j.buildenv.2019.106285	Oculus Rift CV1
10.1186/s12984-019-0601-1	Oculus Rift CV1
10.1016/j.physbeh.2015.08.043	Oculus Rift DK1
10.1109/TVCG.2017.2658570	Oculus Rift DK2
10.1007/s10055-018-0346-3	Oculus Rift DK2
10.1038/s41598-017-18289-8	Oculus Rift DK2
10.1007/s10055-016-0292-x	Oculus Rift DK2
10.1016/j.archger.2019.104004	Oculus Rift DK2
10.16910/jemr.10.5.2	Oculus Rift DK2
10.1145/2897824.2925883	Oculus Rift DK2
10.1002/cav.1812	Oculus Rift DK2
10.1186/s12984-020-00678-2	Oculus Rift DK2
10.3390/s20082168	Oculus Rift DK2
10.1080/10494820.2019.1703008	Oculus Rift DK2
10.1038/srep45469	Oculus Rift DK2
10.1088/1741-2552/aaed17	Oculus Rift DK2
10.30773/pi.2018.06.28.3	Oculus Rift DK2
10.1016/j.rehab.2018.07.003	Oculus Rift DK2
10.37190/ABB-01490-2019-03	Oculus Rift DK2
10.1080/21681163.2017.1343687	Oculus Rift DK2
00.0000/0032	Oculus Rift DK2
00.0000/0032	HTC Vive
10.3389/fnins.2020.00357	PlayStation VR
10.1162/pres.16.4.399	ProView 60 HMD Kaiser
10.1109/TVCG.2018.2794639	Razer Hydra
10.1109/TVCG.2010.248	Rockwell Collins ProView SR80 
10.1177/1553350618822860	Samsung Gear VR
00.0000/0040	Samsung Gear VR
10.1016/j.apacoust.2018.12.037	Samsung Gear VR
10.1371/journal.pone.0225972	Samsung Gear VR
10.1109/TVCG.2016.2518135	Samsung Gear VR
10.1109/TVCG.2016.2518135	Google Cardboard
10.3991/ijoe.v13i08.7371	Samsung Gear VR
10.3991/ijoe.v13i08.7371	HTC Vive
10.14742/ajet.3840	Samsung Gear VR
10.14742/ajet.3840	Oculus Rift
10.1007/s10055-016-0288-6	Samsung Gear VR
10.1007/s10055-016-0288-6	Oculus Rift
10.1007/s10055-016-0288-6	Google Cardboard
10.3389/frobt.2019.00084	Samsung Gear VR
10.3389/fpsyg.2017.02321	Samsung Gear VR
10.1016/j.humov.2019.102515	Sensics zSight
10.1080/00222895.2015.1015674	Sony HMZ-T1 HMD
10.1109/TVCG.2015.2391853	Sony HMZ-T1 HMD
10.1080/07408170304345	V6 HMD
10.1145/1227134.1227139	V8 HMD
10.1145/1227134.1227139	NVIS Cybermind HMD
10.1186/s40691-018-0166-9	VR Box
10.1016/j.displa.2007.09.005	V8 HMD
10.1145/1265957.1265961	V8 HMD
00.0000/0004	V8 HMD
10.1123/jsr.17.1.38	V8 HMD
10.3389/fpsyg.2013.00354	VR1280
10.1016/S0003-6870(98)00041-6	Virtual i-glasses
10.1518/001872007779598028	Visette Pro HMD
10.1371/journal.pone.0030021	Vuzix iWear VR920
10.1145/1278387.1278392	eMagin Z800
10.1007/s10055-012-0216-3	eMagin Z800
10.1007/s00221-012-3048-1	eMagin Z800
10.1007/s11042-008-0223-2	i-glasses SVGA Pro
10.1007/s00221-017-4929-0	iWear VR920, Vuzix Corp.
10.1016/j.gaitpost.2012.02.010	piSight
10.3758/s13414-011-0170-2	xSight HMD
10.1142/S1793351X19400166	Samsung Gear VR
10.1109/TVCG.2011.41	ProView SR80 HMD Kaiser
\.


--
-- Data for Name: hmd; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.hmd (name, typ, jahr, preis, display, hersteller) FROM stdin;
Oculus Rift	VR	2016	599	2 x AMOLED	Oculus
HTC Vive	VR	2016	799	2 x OLED	HTC
Oculus Rift DK2	VR	2014	350	Single OLED	Oculus
Oculus Rift CV1	VR	2016	599	PenTile OLED	Oculus
Samsung Gear VR	VR	2015	99	Super AMOLED	Samsung
Kaiser XL50	VR	1998	15000	LCD	Kaiser Electro-Optics
Virtual Research V8 HMD	VR			LCD	Virtual Research
NVIS nVisor SX	VR	2003	240000	2 x LCoS	NVIS
NED+ optical seethrough stereographic AR HMD	AR				
Oculus Go	VR	2018	199	Single LCD	Oculus
Google Cardboard	VR	2014	15		Google
Google Daydream VR	VR	2016	79		Google
PlayStation VR	VR	2016	299	Single OLED	Sony
Google Pixel 2 XL, Wheatstone mirror stereoscope	VR	2019			
HTC Vive Pro	VR	2018	599	2 x AMOLED	
Sensics zSight	VR	2014		OLED	Sensics
FOVE 0	VR	2017	549	OLED	FOVE
VR Box	VR	2017			
HoloLens	AR	2016	3000	2 x LCoS	Microsoft
Razer Hydra	NONE				Razer
I- glasses HRV Pro	VR		1199		I-O Display Systems
Oculus Rift DK1	VR	2013	300	Single LCD	Oculus
Sony HMZ-T1 HMD	VR	2011	799	OLED	Sony
nVIS nVisor ST	VR	2005	34000	LCOS	Avis
Kaiser SR80	VR				Kaiser Electro-Optics Inc.
Virtual Research Systems VR1280	VR	2005	15900	FLCoS	Virtual Research
MSP-209, Kowon Technology	VR	2006	216	LCD	Kowon Technology
Vuzix iWear VR920	VR	2009	400	2 x LCD	Vuzix
Rockwell Collins ProView SR80 	VR	-	35000	FLCoS	Rockwell Collins Optronics
Cybermind Visette45 SXGA	VR	2005	10000	FLCOS	Cybermind
DaeYang Enc Co. DH-4400 3D	VR	2001	2000	LCOS	Daeyang E&C
i-glasses SVGA Pro	VR	2005	1199	-	I-O Display Systems
eMagin Z800 3DVisor	VR	2005	899	2 x OLED	eMagin
ProView 60 HMD Kaiser	VR			LCD	Kaiser
Visette Pro HMD	VR			LCD	Cybermind
SGI Onyx 2	NONE	1996			Silicon Graphics
HMD Daeyang E&C	VR				Daeyang E & C Co., Ltd.
Sony Glasstron VR	VR			LCD	Sony
Virtual i-glasses	VR	1995			I-O Display Systems
V6 HMD	VR	1998		diagonal Active Matrix LCD	Virtual Research
5DT HMD 800-26 3D	VR	1990	2895	LCOS or OLED	Fifth Dimension Technologies
piSight	VR	2006		LCD	Sensics Corporation
xSight HMD	AR	2022		binocular color display	Elbit Systems
HP Prototype	VR	2015	1099		HP inc.
NED+ optical see?through stereographic AR HMD	VR	2015	20000		
NVIS nVisor ST50	AR	2020		X2 OLED SXGA	NVIS
ProView SR80 HMD Kaiser	VR	2015	7000		Kaiser Electro-Optics Inc.
V8 HMD	VR	2000	5000	diagonal Active Matrix LCD	Virtual Research
NVIS Cybermind HMD	VR	2011	1000	LCD	NVIS
VR1280	VR	2017	2000	LCD	Virtual Research
eMagin Z800	VR	2017	1775	LCD	eMagin
iWear VR920, Vuzix Corp.	VR	2000	1300	LCD	Vuzix Corp.
\.


--
-- Data for Name: literature_data; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.literature_data (quelle, autor, titel, jahr, journal, typ, doi, gelesen, empirisch, ausschlusspunkt, ausschlussgrund, kommentar, feld, thema, hmd, interaction_device, no_participants, low_abstraction, medium, high, exactly_like_re, similar_to_re, different_to_re, training, no_training, walking, balance, navigation_orientation, searching_identifying, reaching, picking_manual_object_interaction, cognitive_memory_tasks, spatial_perception, quantitative, qualitative, experiment, secondary_research, subjective_feedback, consistent, better, worse) FROM stdin;
WOS	"Chaudhary, Ayesha Hoor; Bukhari, Faisal; Iqbal, Waheed; Nawaz, Zubair; Malik, Muhammad Kamran"	Laparoscopic Training Exercises Using HTC VIVE	2020	INTELLIGENT AUTOMATION AND SOFT COMPUTING		10.31209/2019.100000149	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Soo-Kyun; Lee, Chang-Hee; Kim, Sun-Jeong; Song, Chang-Geun; Lee, Jung"	Implementation of Local Area VR Environment using Mobile HMD and Multiple Kinects	2020	INTELLIGENT AUTOMATION AND SOFT COMPUTING		10.31209/2019.100000131	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Byong Kwon; Lee, Yang Sun"	Distinction Between Real Faces and Photos by Analysis of Face Data	2020	INTELLIGENT AUTOMATION AND SOFT COMPUTING		10.31209/2019.100000134	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Frederiksen, Joakim Grant; Sorensen, Stine Maya Dreier; Konge, Lars; Svendsen, Morten Bo Sondergaard; Nobel-Jorgensen, Morten; Bjerrum, Flemming; Andersen, Steven Arild Wuyts"	Cognitive load and performance in immersive virtual reality versus conventional virtual reality simulation training of laparoscopic surgery: a randomized trial	2020	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		10.1007/s00464-019-06887-8	Görge	Ja	Sample		evtl. Interessant: Training von Chirurgie	Medizin	Training	Oculus Rift	Lap sim surgery simulator	31	x		 	x	 	 	x	 	 	 	 	x	 	x	 	x	x	 	x	 	 	 	 	x
WOS	"Rafique, Muhammad Usman; Cheung, Sen-ching S."	Tracking Attacks on Virtual Reality Systems	2020	IEEE CONSUMER ELECTRONICS MAGAZINE		10.1109/MCE.2019.2953741	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Security	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Checa, David; Bustillo, Andres"	Advantages and limits of virtual reality in learning processes: Briviesca in the fifteenth century	2020	VIRTUAL REALITY		10.1007/s10055-019-00389-7	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Räumliches Lernen	Archäologie / Museen	Training	Oculus Rift	Oculus Touch controllers & gamepad	100			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ammann, Jeanine; Hartmann, Christina; Peterhans, Vega; Ropelato, Sandro; Siegrist, Michael"	The relationship between disgust sensitivity and behaviour: A virtual reality study on food disgust	2020	FOOD QUALITY AND PREFERENCE		10.1016/j.foodqual.2019.103833	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Curry, Christopher; Li, Ruixuan; Peterson, Nicolette; Stoffregen, Thomas A."	Cybersickness in Virtual Reality Head-Mounted Displays: Examining the Influence of Sex Differences and Vehicle Control	2020	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER INTERACTION		10.1080/10447318.2020.1726108	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Sang Hyeok; Kim, Martha; Kim, Hyosun; Park, Choul Yong"	Relationship between Ocular Fatigue and Use of a Virtual Reality Device	2020	JOURNAL OF THE KOREAN OPHTHALMOLOGICAL SOCIETY		10.3341/jkos.2020.61.2.125	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ping, Jiamin; Weng, Dongdong; Liu, Yue; Wang, Yongtian"	Depth perception in shuffleboard: Depth cues effect on depth perception in virtual and augmented reality system	2020	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.840	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Depth perception in VR	Hardwareentwicklung und Evaluation	Visual perception	NED+ optical see?through stereographic AR HMD	None	22			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fransson, Goran; Holmberg, Jorgen; Westelius, Claes"	The challenges of using head mounted virtual reality in K-12 schools from a teacher perspective	2020	EDUCATION AND INFORMATION TECHNOLOGIES		10.1007/s10639-020-10119-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Appel, Lora; Appel, Eva; Bogler, Orly; Wiseman, Micaela; Cohen, Leedan; Ein, Natalie; Abrams, Howard B.; Campos, Jennifer L."	Older Adults With Cognitive and/or Physical Impairments Can Benefit From Immersive Virtual Reality Experiences: A Feasibility Study	2020	FRONTIERS IN MEDICINE		10.3389/fmed.2019.00329	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Griffin, Tom; Muldoon, Meghan"	Exploring virtual reality experiences of slum tourism	2020	TOURISM GEOGRAPHIES		10.1080/14616688.2020.1713881	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Tourism	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Na, Woongsoo; Dao, Nhu-Ngoc; Kim, Joongheon; Ryu, Eun-Seok; Cho, Sungrae"	Simulation and measurement: Feasibility study of Tactile Internet applications for mmWave virtual reality	2020	ETRI JOURNAL		10.4218/etrij.2019-0284	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tumialis, Alexey; Smirnov, Alexey; Fadeev, Kirill; Alikovskaia, Tatiana; Khoroshikh, Pavel; Sergievich, Alexander; Golokhvast, Kirill"	Motor Program Transformation of Throwing Dart from the Third-Person Perspective	2020	BRAIN SCIENCES		10.3390/brainsci10010055	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gu, Jiaxi; Yu, Zhiwen; Shen, Kele"	Alohomora: Motion-Based Hotword Detection in Head-Mounted Displays	2020	IEEE INTERNET OF THINGS JOURNAL		10.1109/JIOT.2019.2946593	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zaleski-King, Ashley; Pinto, Robin; Lee, General; Brungart, Douglas"	Use of Commercial Virtual Reality Technology to Assess Verticality Perception in Static and Dynamic Visual Backgrounds	2020	EAR AND HEARING		10.1097/AUD.0000000000000736	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	ectl. Vergleich Wahrnehmung	Human biology	Measurement of body functions	Oculus Rift	Computer mouse	44			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hagita, Katsumi; Kodama, Yuuki; Takada, Masashi"	Simplified virtual reality training system for radiation shielding and measurement in nuclear engineering	2020	PROGRESS IN NUCLEAR ENERGY		10.1016/j.pnucene.2019.103127	Görge	?	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Training	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bae, Yoosung; Cha, Baekdong; Ryu, Jeha"	Calibration and Evaluation for Visuo-haptic Collocation in Haptic Augmented Virtuality Systems	2020	INTERNATIONAL JOURNAL OF CONTROL AUTOMATION AND SYSTEMS		10.1007/s12555-018-0882-3	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Haptics / Physical interaction	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Alrehaili, Enas Abdulrahman; Al Osman, Hussein"	A virtual reality role-playing serious game for experiential learning	2019	INTERACTIVE LEARNING ENVIRONMENTS		10.1080/10494820.2019.1703008	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. experiential learning	Bildungswesen	Training	Oculus Rift DK2	Keyboard	31			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Greene, David; Groenendyk, Michael"	An environmental scan of virtual and augmented reality services in academic libraries	2019	LIBRARY HI TECH		10.1108/LHT-08-2019-0166	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jost, Tyler A.; Drewelow, Grant; Koziol, Scott; Rylander, Jonathan"	A quantitative method for evaluation of 6 degree of freedom virtual reality systems	2019	JOURNAL OF BIOMECHANICS		10.1016/j.jbiomech.2019.109379	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Risi, Dante; Palmisano, Stephen"	Effects of postural stability, active control, exposure duration and repeated exposures on HMD induced cybersickness	2019	DISPLAYS		10.1016/j.displa.2019.08.003	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Qiyue; Cheng, Yongchao; Jiao, Wenhua; Johnson, Michael T.; Zhang, YuMing"	Virtual reality human-robot collaborative welding: A case study of weaving gas tungsten arc welding	2019	JOURNAL OF MANUFACTURING PROCESSES		10.1016/j.jmapro.2019.10.016	Görge	Nein	Volltext	nur Technik		Manufacturing	Remote Control / Digital Twin	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lubetzky, Anat V.; Harel, Daphna; Kelly, Jennifer; Hujsak, Bryan D.; Perlin, Ken"	Weighting and reweighting of visual input via head mounted display given unilateral peripheral vestibular dysfunction	2019	HUMAN MOVEMENT SCIENCE		10.1016/j.humov.2019.102526	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human biology	Balance	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Marchetto, Jonathan; Wright, W. Geoffrey"	The Validity of an Oculus Rift to Assess Postural Changes During Balance Tasks	2019	HUMAN FACTORS		10.1177/0018720819835088	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Balance	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shu, Yu; Huang, Yen-Zhang; Chang, Shu-Hsuan; Chen, Mu-Yen"	Do virtual reality head-mounted displays make a difference? A comparison of presence and self-efficacy between head-mounted displays and desktop computer-facilitated virtual environments	2019	VIRTUAL REALITY		10.1007/s10055-018-0376-x	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Klippel, Alexander; Zhao, Jiayan; Jackson, Kathy Lou; La Femina, Peter; Stubbs, Chris; Wetzel, Ryan; Blair, Jordan; Wallgrun, Jan Oliver; Oprean, Danielle"	Transforming Earth Science Education Through Immersive Experiences: Delivering on a Long Held Promise	2019	JOURNAL OF EDUCATIONAL COMPUTING RESEARCH		10.1177/0735633119854025	Görge	Ja	Sample		Analysing learning eff	Bildungswesen	Training	HTC Vive	HTC Vive controller	37	x		 	x	 	 	x	 	 	 	 	x	 	 	x	 	x	x	x	 	 	 	x	 
WOS	"Cao, Shi; Nandakumar, Krithika; Babu, Raiju; Thompson, Benjamin"	Game play in virtual reality driving simulation involving head-mounted display and comparison to desktop display	2019	VIRTUAL REALITY		10.1007/s10055-019-00412-x	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kalarat, Kosin; Koomhin, Phanit"	REAL-TIME VOLUME RENDERING INTERACTION IN VIRTUAL REALITY	2019	INTERNATIONAL JOURNAL OF TECHNOLOGY		10.14716/ijtech.v10i7.3259	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kourtesis, Panagiotis; Collina, Simona; Doumas, Leonidas A. A.; MacPherson, Sarah E."	Validation of the Virtual Reality Neuroscience Questionnaire: Maximum Duration of Immersive Virtual Reality Sessions Without the Presence of Pertinent Adverse Symptomatology	2019	FRONTIERS IN HUMAN NEUROSCIENCE		10.3389/fnhum.2019.00417	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"De Paolis, Lucio Tommaso; De Luca, Valerio"	The impact of the input interface in a virtual environment: the Vive controller and the Myo armband	2019	VIRTUAL REALITY		10.1007/s10055-019-00409-6	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction	HTC Vive & Myo					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tremmel, Christoph; Herff, Christian; Sato, Tetsuya; Rechowicz, Krzysztof; Yamani, Yusuke; Krusienski, Dean J."	Estimating Cognitive Workload in an Interactive Virtual Reality Environment Using EEG	2019	FRONTIERS IN HUMAN NEUROSCIENCE		10.3389/fnhum.2019.00401	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jost, Tyler A.; Nelson, Bradley; Rylander, Jonathan"	Quantitative analysis of the Oculus Rift S in controlled movement	2019	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY		10.1080/17483107.2019.1688398	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huang, Weibo; Xiang, Handun; Li, Shaohui"	The application of augmented reality and unity 3D in interaction with intangible cultural heritage	2019	EVOLUTIONARY INTELLIGENCE		10.1007/s12065-019-00314-6	Görge	Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Clifton, Jeremy; Palmisano, Stephen"	Effects of steering locomotion and teleporting on cybersickness and presence in HMD-based virtual reality	2019	VIRTUAL REALITY		10.1007/s10055-019-00407-8	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung	evtl. laufen in VR aber kein Vergleich	Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ronchi, Enrico; Mayorga, David; Lovreglio, Ruggiero; Wahlqvist, Jonathan; Nilsson, Daniel"	Mobile-powered head-mounted displays versus cave automatic virtual environment experiments for evacuation research	2019	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1873	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Eun-Young; Tran, Van Thanh; Kim, Dongho"	A Novel Head Mounted Display Based Methodology for Balance Evaluation and Rehabilitation	2019	SUSTAINABILITY		10.3390/su11226453	Görge	Ja	Abstract	kein VR		Hardwareentwicklung und Evaluation	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ong, S. K.; Yuan, M. L.; Nee, A. Y. C."	Augmented reality applications in manufacturing: a survey.	2008	International Journal of Production Research	Article	10.1080/00207540601064773		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Perrin, Theo; Faure, Charles; Nay, Kevin; Cattozzo, Giammaria; Sorel, Anthony; Kulpa, Richard; Kerherve, Hugo A."	Virtual Reality Gaming Elevates Heart Rate but Not Energy Expenditure Compared to Conventional Exercise in Adult Males	2019	INTERNATIONAL JOURNAL OF ENVIRONMENTAL RESEARCH AND PUBLIC HEALTH		10.3390/ijerph16224406	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	Vergleich: Energy Expenditure	Human biology	Measurement of body functions	HTC Vive	HTC Vive controllers	9			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Piccione, Joseph; Collett, James; De Foe, Alexander"	Virtual skills training: the role of presence and agency	2019	HELIYON		10.1016/j.heliyon.2019.e02583	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	VR golf training	Hardwareentwicklung und Evaluation	Training	Oculus Rift	Oculus handheld controllers	23			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, Jeong Hye; Jeon, Han Jae; Lim, Eun-Cheon; Koo, Ja-Won; Lee, Hyo-Jeong; Kim, Hyung-Jong; Lee, Jung Seop; Song, Chang-Geun; Hong, Sung Kwang"	Feasibility of Eye Tracking Assisted Vestibular Rehabilitation Strategy Using Immersive Virtual Reality	2019	CLINICAL AND EXPERIMENTAL OTORHINOLARYNGOLOGY		10.21053/ceo.2018.01592	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Donggeon; Hong, Soungkyun; Jung, Sunhye; Lee, Kyeongbong; Lee, Gyuchang"	The Effects of Viewing Smart Devices on Static Balance, Oculomotor Function, and Dizziness in Healthy Adults	2019	MEDICAL SCIENCE MONITOR		10.12659/MSM.915284	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human biology	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Maniam, Pavithran; Schnell, Philipp; Dan, Lilly; Portelli, Rony; Erolin, Caroline; Mountain, Rodney; Wilkinson, Tracey"	Exploration of temporal bone anatomy using mixed reality (HoloLens): development of a mixed reality anatomy teaching resource prototype	2020	JOURNAL OF VISUAL COMMUNICATION IN MEDICINE		10.1080/17453054.2019.1671813	Görge	Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cikajlo, Imre; Potisk, Karmen Peterlin"	Advantages of using 3D virtual reality based training in persons with Parkinson's disease: a parallel study	2019	JOURNAL OF NEUROENGINEERING AND REHABILITATION		10.1186/s12984-019-0601-1	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Training von Pick and Place für Parkinson	Medizin	Rehabilitation / Treatment	Oculus Rift CV1	Leap motion controller	20			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Jiwon; Kim, Mingyu; Kim, Jinmo"	RoleVR: Multi-experience in immersive virtual reality between co-located HMD and non-HMD users	2020	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-019-08220-w	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cheng, Kun-Hung; Tsai, Chin-Chung"	A case study of immersive virtual field trips in an elementary classroom: Students' learning experience and teacher-student interaction behaviors	2019	COMPUTERS & EDUCATION		10.1016/j.compedu.2019.103600	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rosen, Eric; Whitney, David; Phillips, Elizabeth; Chien, Gary; Tompkin, James; Konidaris, George; Tellex, Stefanie"	Communicating and controlling robot arm motion intent through mixed-reality head-mounted displays	2019	INTERNATIONAL JOURNAL OF ROBOTICS RESEARCH		10.1177/0278364919842925	Görge	Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhang, Yuxuan; Liu, Hexu; Zhao, Mingjun; Al-Hussein, Mohamed"	User-centered interior finishing material selection: An immersive virtual reality-based interactive approach	2019	AUTOMATION IN CONSTRUCTION		10.1016/j.autcon.2019.102884	Görge	Nein	Volltext	nur Technik		Bauwesen / Architektur	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jansen, Wouter; Laurijssen, Dennis; Daems, Walter; Steckel, Jan"	Automatic Calibration of a Six-Degrees-of-Freedom Pose Estimation System	2019	IEEE SENSORS JOURNAL		10.1109/JSEN.2019.2921644	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Starr, Christine R.; Anderson, Barrett R.; Green, Katherine A."	I'm a Computer Scientist!: Virtual Reality Experience Influences Stereotype Threat and STEM Motivation Among Undergraduate Women	2019	JOURNAL OF SCIENCE EDUCATION AND TECHNOLOGY		10.1007/s10956-019-09781-z	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Emotions / Empathy / Fear	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cha, Seung Hyun; Koo, Choongwan; Kim, Tae Wan; Hong, Taehoon"	Spatial perception of ceiling height and type variation in immersive virtual environments	2019	BUILDING AND ENVIRONMENT		10.1016/j.buildenv.2019.106285	Görge	Ja	Sample		Spatial perception in rooms with different ceiling height	Bauwesen / Architektur	Visual perception	Oculus Rift CV1	Xbox controller	40	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	 	x	 	x	 	 
WOS	"Rose, Vienna; Stewart, Inga; Jenkins, Keith G.; Tabbaa, Luma; Ang, Chee Siang; Matsangidou, Maria"	Bringing the outside in: The feasibility of virtual reality with people with dementia in an inpatient psychiatric care setting	2019	DEMENTIA-INTERNATIONAL JOURNAL OF SOCIAL RESEARCH AND PRACTICE		10.1177/1471301219868036	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ijaz, Kiran; Ahmadpour, Naseem; Naismith, Sharon L.; Calvo, Rafael A."	An Immersive Virtual Reality Platform for Assessing Spatial Navigation Memory in Predementia Screening: Feasibility and Usability Study	2019	JMIR MENTAL HEALTH		10.2196/13887	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Memory Assessment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Beams, Ryan; Kim, Andrea S.; Badano, Aldo"	Transverse chromatic aberration in virtual reality head-mounted displays	2019	OPTICS EXPRESS		10.1364/OE.27.024877	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation	Oculus Go, Oculus Rift, Samsung Gear VR, HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Naylor, Matthew; Morrison, Ben; Ridout, Brad; Campbell, Andrew"	Augmented Experiences: Investigating the Feasibility of Virtual Reality as Part of a Workplace Wellbeing Intervention	2019	INTERACTING WITH COMPUTERS		10.1093/iwc/iwz033	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Emotions / Empathy / Fear	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yamaguchi, Masahiro; Matsumura, Masayo; Shimada, Hikari; Araki, Kenji"	Emotional evaluation for pictures displayed with small FOV telescope environment in virtual reality headset	2019	ARTIFICIAL LIFE AND ROBOTICS		10.1007/s10015-019-00536-y	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nai, Weizhi; Feng, Junyan; Shan, Ling; Jia, Feiyong; Sun, Minghui; Sun, Xiaoying"	Estimating Forearm Axial Rotation Using Vive Trackers for Interaction With Serious Games	2019	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING		10.1109/TNSRE.2019.2931778	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shen, Chien-wen; Ho, Jung-tsung; Pham Thi Minh, Ly; Kuo, Ting-chang"	Behavioural intentions of using virtual reality in learning: perspectives of acceptance of information technology and learning style	2019	VIRTUAL REALITY		10.1007/s10055-018-0348-1	Görge	Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Micaroni, Lorenzo; Carulli, Marina; Ferrise, Francesco; Gallace, Alberto; Bordegoni, Monica"	An Olfactory Display to Study the Integration of Vision and Olfaction in a Virtual Reality Environment	2019	JOURNAL OF COMPUTING AND INFORMATION SCIENCE IN ENGINEERING		10.1115/1.4043068	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Olfactory perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rizzuto, Michael A.; Sonne, Michael W. L.; Vignais, Nicolas; Keir, Peter J."	Evaluation of a virtual reality head mounted display as a tool for posture assessment in digital human modelling software	2019	APPLIED ERGONOMICS		10.1016/j.apergo.2019.04.001	Görge	Ja	Sample		Comparing postures and kinematics of a pointing task	Ergonomie	Measurement of body functions	Oculus Rift	Raptor 4 Motion capture	14			x	x	 	 	 	x	 	 	 	 	 	 	 	 	x	 	x	 	 	x	 	x
WOS	"Sakhare, Ashwin R.; Yang, Vincent; Stradford, Joy; Tsang, Ivan; Ravichandran, Roshan; Pa, Judy"	Cycling and Spatial Navigation in an Enriched, Immersive 3D Virtual Park Environment: A Feasibility Study in Younger and Older Adults	2019	FRONTIERS IN AGING NEUROSCIENCE		10.3389/fnagi.2019.00218	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chung, Hyun Chae; Choi, Gyoojae; Azam, Muhammad"	Effects of Initial Starting Distance and Gap Characteristics on Children's and Young Adults' Velocity Regulation When Intercepting Moving Gaps	2019	HUMAN FACTORS		10.1177/0018720819867501	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Movement / Navigation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kelly, Jonathan W.; Klesel, Brenna C.; Cherep, Lucia A."	Visual Stabilization of Balance in Virtual Reality Using the HTC Vive	2019	ACM TRANSACTIONS ON APPLIED PERCEPTION		10.1145/3313902	Görge	Ja	Sample		Comparing balance standing on one leg only	Ergonomie	Balance	HTC Vive	None	32	x		 	x	 	 	 	x	 	x	 	 	 	 	 	 	x	 	x	 	 	 	 	x
WOS	"Yildirim, Cagdas; Bostan, Barbaros; Berkman, Mehmet Ilker"	Impact of different immersive techniques on the perceived sense of presence measured via subjective scales	2019	ENTERTAINMENT COMPUTING		10.1016/j.entcom.2019.100308	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ghita, Alexandra; Hernandez-Serrano, Olga; Fernandez-Ruiz, Yolanda; Monras, Miquel; Ortega, Lluisa; Mondon, Silvia; Teixidor, Lidia; Gual, Antoni; Porras-Garcia, Bruno; Ferrer-Garcia, Marta; Gutierrez-Maldonado, Jose"	Cue-Elicited Anxiety and Alcohol Craving as Indicators of the Validity of ALCO-VR Software: A Virtual Reality Study	2019	JOURNAL OF CLINICAL MEDICINE		10.3390/jcm8081153	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jurda, Mikolas; Urbanova, Petra; Chmelik, Jiri"	Digital restoration of fragmentary human skeletal remains: Testing the feasibility of virtual reality	2019	JOURNAL OF FORENSIC AND LEGAL MEDICINE		10.1016/j.jflm.2019.06.005	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Huang, Wen	Examining the impact of head-mounted display virtual reality on the science self-efficacy of high schoolers	2019	INTERACTIVE LEARNING ENVIRONMENTS		10.1080/10494820.2019.1641525	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Srivastava, Priyanka; Rimzhim, Anurag; Vijay, Palash; Singh, Shruti; Chandra, Sushil"	Desktop VR Is Better Than Non-ambulatory HMD VR for Spatial Learning	2019	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2019.00050	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Vergleich von Lernen in VR	Hardwareentwicklung und Evaluation	Training	Oculus Rift	Xbox 360 controller	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ali, Almaas A.; Dafoulas, Georgios A.; Augusto, Juan Carlos"	Collaborative Educational Environments Incorporating Mixed Reality Technologies: A Systematic Mapping Study	2019	IEEE TRANSACTIONS ON LEARNING TECHNOLOGIES		10.1109/TLT.2019.2926727	Görge	Ja	Abstract	Review									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Alghamdi, Najood; Alhalabi, Wadee"	Fixation Detection with Ray-casting in Immersive Virtual Reality	2019	INTERNATIONAL JOURNAL OF ADVANCED COMPUTER SCIENCE AND APPLICATIONS		00.0000/0027	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, Chiuhsiang J.; Abreham, Betsha T.; Woldegiorgis, Bereket H."	Effects of displays on a direct reaching task: A comparative study of head mounted display and stereoscopic widescreen display	2019	INTERNATIONAL JOURNAL OF INDUSTRIAL ERGONOMICS		10.1016/j.ergon.2019.06.013	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich Reaching Task	Ergonomie	Haptics / Physical interaction	HTC Vive	HTC Vive controller	18			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Casey, Peter; Lindsay-Decusati, Rebecca; Baggili, Ibrahim; Breitinger, Frank"	Inception: Virtual Space in Memory Space in Real Space - Memory Forensics of Immersive Virtual Reality with the HTC Vive	2019	DIGITAL INVESTIGATION		10.1016/j.diin.2019.04.007	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Security	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Qiyue; Jiao, Wenhua; Yu, Rui; Johnson, Michael T.; Zhang, YuMing"	Modeling of Human Welders' Operations in Virtual Reality Human-Robot Interaction	2019	IEEE ROBOTICS AND AUTOMATION LETTERS		10.1109/LRA.2019.2921928	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Manufacturing	Remote Control / Digital Twin	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Arcioni, Benjamin; Palmisano, Stephen; Apthorp, Deborah; Kim, Juno"	Postural stability predicts the likelihood of cybersickness in active HMD-based virtual reality	2019	DISPLAYS		10.1016/j.displa.2018.07.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kuiper, Ouren X.; Bos, Jelte E.; Diels, Cyriel"	Vection does not necessitate visually induced motion sickness	2019	DISPLAYS		10.1016/j.displa.2018.10.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Groves, Leah A.; Carnahan, Patrick; Allen, Daniel R.; Adam, Rankin; Peters, Terry M.; Chen, Elvis C. S."	Accuracy assessment for the co-registration between optical and VIVE head-mounted display tracking	2019	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		10.1007/s11548-019-01992-4	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Micarelli, Alessandro; Viziano, Andrea; Micarelli, Beatrice; Augimeri, Ivan; Alessandrini, Marco"	Vestibular rehabilitation in older adults with and without mild cognitive impairment: Effects of virtual reality using a head-mounted display	2019	ARCHIVES OF GERONTOLOGY AND GERIATRICS		10.1016/j.archger.2019.05.008	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Perez, Daniel; Hasan, Mahmud; Shen, Yuzhong; Yang, Hong"	AR-PED: A framework of augmented reality enabled pedestrian-in-the-loop simulation	2019	SIMULATION MODELLING PRACTICE AND THEORY		10.1016/j.simpat.2019.03.005	Görge	Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Howes, Sarah C.; Charles, Darryl; Pedlow, Katy; Wilson, Iseult; Holmes, Dominic; McDonough, Suzanne"	User-centred design of an active computer gaming system for strength and balance exercises for older adults	2019	JOURNAL OF ENABLING TECHNOLOGIES		10.1108/JET-12-2018-0057	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Plechata, Adela; Sahula, Vaclav; Fayette, Dan; Fajnerova, Iveta"	Age-Related Differences With Immersive and Non-immersive Virtual Reality in Memory Assessment	2019	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2019.01330	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Memory Assessment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hirota, Masakazu; Kanda, Hiroyuki; Endo, Takao; Miyoshi, Tomomitsu; Miyagawa, Suguru; Hirohara, Yoko; Yamaguchi, Tatsuo; Saika, Makoto; Morimoto, Takeshi; Fujikado, Takashi"	Comparison of visual fatigue caused by head-mounted display for virtual reality and two-dimensional display using objective and subjective evaluation	2019	ERGONOMICS		10.1080/00140139.2019.1582805	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Ergonomie	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Siess, Andreas; Woelfe, Matthias"	User color temperature preferences in immersive virtual realities	2019	COMPUTERS & GRAPHICS-UK		10.1016/j.cag.2019.03.018	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Baqai, Attiya; Memon, Khuhed; Memon, Azam Rafique; Shah, Syed Muhammad Zaigham Abbas"	Interactive Physiotherapy: An Application Based on Virtual Reality and Bio-feedback	2019	WIRELESS PERSONAL COMMUNICATIONS		10.1007/s11277-018-5382-5	Görge	Ja	Sample		evtl. Vergleiche Bewegungen mit Literatur	Human biology	Rehabilitation / Treatment	Oculus Rift	Kinect	3		x	 	 	x	 	x	 	 	 	 	 	x	 	 	x	 	x	 	 	x	 	x	 
WOS	"Tschirschwitz, Felix; Richerzhagen, Christian; Przybilla, Heinz-Juergen; Kersten, Thomas P."	Duisburg 1566: Transferring a Historic 3D City Model from Google Earth into a Virtual Reality Application	2019	PFG-JOURNAL OF PHOTOGRAMMETRY REMOTE SENSING AND GEOINFORMATION SCIENCE		10.1007/s41064-019-00065-0	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Worley, Julie	Virtual Reality for Individuals With Substance Use Disorders	2019	JOURNAL OF PSYCHOSOCIAL NURSING AND MENTAL HEALTH SERVICES		10.3928/02793695-20190430-01	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Vertemati, Maurizio; Cassin, Simone; Rizzetto, Francesco; Vanzulli, Angelo; Elli, Marco; Sampogna, Gianluca; Gallieni, Maurizio"	A Virtual Reality Environment to Visualize Three-Dimensional Patient-Specific Models by a Mobile Head-Mounted Display	2019	SURGICAL INNOVATION		10.1177/1553350618822860	Görge	Ja	Sample		Anatomy training using low-cost VR	Medizin	Training	Samsung Gear VR	Samsung Gerar VR controller	33	x		 	x	 	 	x	 	 	 	 	x	 	 	x	 	 	x	 	 	x	x	x	 
WOS	"Pai, Yun Suen; Dingler, Tilman; Kunze, Kai"	Assessing hands-free interactions for VR using eye gaze and electromyography	2019	VIRTUAL REALITY		10.1007/s10055-018-0371-2	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Caserman, Polona; Garcia-Agundez, Augusto; Konrad, Robert; Goebel, Stefan; Steinmetz, Ralf"	Real-time body tracking in virtual reality using a Vive tracker	2019	VIRTUAL REALITY		10.1007/s10055-018-0374-z	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Simon, Sofia C.; Greitemeyer, Tobias"	The impact of immersion on the perception of pornography: A virtual reality study	2019	COMPUTERS IN HUMAN BEHAVIOR		10.1016/j.chb.2018.12.018	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bing, Eric G.; Parham, Groesbeck P.; Cuevas, Anthony; Fisher, Boris; Skinner, Jonathan; Mwanahamuntu, Mulindi; Sullivan, Richard"	Using Low-Cost Virtual Reality Simulation to Build Surgical Capacity for Cervical Cancer Treatment	2019	JOURNAL OF GLOBAL ONCOLOGY		10.1200/JGO.18.00263	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Training im Bereich Medizin	Medizin	Training	Oculus Rift	Oculus Rift handheld controllers	10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhu, Xiaoqiang; Song, Lei; Wang, Nan; Zhang, Ruiheng; Chen, Shenshuai; Wang, Xiangyang; Zhu, Mengyao; You, Lihua; Deng, Zhigang; Jin, Xiaogang"	Screwing assembly oriented interactive model segmentation in HMD VR environment	2019	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1880	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Assembly						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rossi, Henrique; Prates, Raquel; Santos, Sibele; Ferreira, Renato"	Development of a Virtual Reality-Based Game Approach for Supporting Sensory Processing Disorders Treatment	2019	INFORMATION		10.3390/info10050177	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kardong-Edgren, Suzan; Breitkreuz, Karen; Werb, Michael; Foreman, Stephen; Ellertson, Anthony"	Evaluating the Usability of a Second-Generation Virtual Reality Game for Refreshing Sterile Urinary Catheterization Skills	2019	NURSE EDUCATOR		10.1097/NNE.0000000000000570	Görge	Ja	Sample		evtl. Training von Katether	Medizin	Training	Oculus Rift	Haptic gloves & Leap motion controller	31	x		 	x	 	 	x	 	 	 	 	x	 	x	x	 	 	x	 	 	x	 	x	 
WOS	"Wang, Lili; Wu, Jian; Yang, Xuefeng; Popescu, Voicu"	VR Exploration Assistance through Automatic Occlusion Removal	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2898782	Görge	Ja	Volltext	nur Technik	evtl. Vergleich Navigation	Softwareentwicklung	Movement / Navigation	HTC Vive	HTC Vive controllers	16			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jeon, Jin Yong; Jo, Hyun In; Kim, Sung Min; Yang, Hong Seok"	Subjective and objective evaluation of water-supply and drainage noises in apartment buildings by using a head-mounted display	2019	APPLIED ACOUSTICS		10.1016/j.apacoust.2018.12.037	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Wahrnehmung von Sound	Bauwesen / Architektur	Perception of Sound	Samsung Gear VR	None	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Spitzley, Kate A.; Karduna, Andrew R."	Feasibility of using a fully immersive virtual reality system for kinematic data collection	2019	JOURNAL OF BIOMECHANICS		10.1016/j.jbiomech.2019.02.015	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Qidwai, Uvais; Ajimsha, M. S.; Shakir, Mohamed"	The role of EEG and EMG combined virtual reality gaming system in facial palsy rehabilitation - A case report	2019	JOURNAL OF BODYWORK AND MOVEMENT THERAPIES		10.1016/j.jbmt.2019.02.012	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hoffman, David M.; McKenzie, Chris; Koprowski, Brion; Iqbal, Asif; Balram, Nikhil"	Aligning content rendering resolution and feature size with display capability in near-eye display systems	2019	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.765	Görge		Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, Wonjun; Heo, Hayoung; Park, Seongjun; Kim, Jinmo"	A Study on the Presence of Immersive User Interface in Collaborative Virtual Environments Application	2019	SYMMETRY-BASEL		10.3390/sym11040476	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Golding, Dan	Far from paradise: The body, the apparatus and the image of contemporary virtual reality	2019	CONVERGENCE-THE INTERNATIONAL JOURNAL OF RESEARCH INTO NEW MEDIA TECHNOLOGIES		10.1177/1354856517738171	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Parkhomenko, Egor; O'Leary, Mitchell; Safiullah, Shoaib; Walia, Sartaaj; Owyong, Michael; Lin, Cyrus; James, Ryan; Okhunov, Zhamshid; Patel, Roshan M.; Kaler, Kamaljot S.; Landman, Jaime; Clayman, Ralph"	Pilot Assessment of Immersive Virtual Reality Renal Models as an Educational and Preoperative Planning Tool for Percutaneous Nephrolithotomy	2019	JOURNAL OF ENDOUROLOGY		10.1089/end.2018.0626	Görge	Ja	Sample		Preoperative visualisation for surgical planning and training using VR	Medizin	Visualisation	Oculus Rift	Oculus Touch controllers	4	x		 	x	 	 	x	 	 	 	 	x	 	x	x	 	x	x	x	 	x	 	x	 
WOS	"Sun, Chengyu; Hu, Wei; Xu, Diqiong"	Navigation modes, operation methods, observation scales and background options in UI design for high learning performance in VR-based architectural applications	2019	JOURNAL OF COMPUTATIONAL DESIGN AND ENGINEERING		10.1016/j.jcde.2018.05.006	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich Bewegung in VR	Bauwesen / Architektur	Movement / Navigation	HTC Vive	HTC Vive controllers	150			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Garcia-Hernandez, Ruben Jesus; Kranzlmueller, Dieter"	NOMAD VR: Multiplatform virtual reality viewer for chemistry simulations	2019	COMPUTER PHYSICS COMMUNICATIONS		10.1016/j.cpc.2018.11.013	Görge	Ja	Abstract	nur Technik		Chemistry	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yasui, Kento; Kawai, Ryuta; Arakawa, Toshiya"	IMMERSIVE VIRTUAL REALITY SUPPORTING CONTENT FOR EVALUATING INTERFACE USING OCULUS RIFT AND LEAP MOTION	2019	INTERNATIONAL JOURNAL OF INNOVATIVE COMPUTING INFORMATION AND CONTROL		10.24507/ijicic.15.02.591	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	Button pressing using a haptics device	Manufacturing	Assembly	Oculus Rift CV1	Leap motion controller & custom haptic device	25			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Barreiros, Jose; Claure, Houston; Peele, Bryan; Shapira, Omer; Spjut, Josef; Luebke, David; Jung, Malte; Shepherd, Robert"	Fluidic Elastomer Actuators for Haptic Interactions in Virtual Reality	2019	IEEE ROBOTICS AND AUTOMATION LETTERS		10.1109/LRA.2018.2888628	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ahrens, Axel; Lund, Kasper Duemose; Marschall, Marton; Dau, Torsten"	Sound source localization with varying amount of visual information in virtual reality	2019	PLOS ONE		10.1371/journal.pone.0214603	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lubetzky, Anat V.; Wang, Zhu; Krasovsky, Ta"	Head mounted displays for capturing head kinematics in postural tasks	2019	JOURNAL OF BIOMECHANICS		10.1016/j.jbiomech.2019.02.004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Parham, Groesbeck; Bing, Eric G.; Cuevas, Anthony; Fisher, Boris; Skinner, Jonathan; Mwanahamuntu, Mulindi; Sullivan, Richard"	Creating a low-cost virtual reality surgical simulation to increase surgical oncology capacity and capability	2019	ECANCERMEDICALSCIENCE		10.3332/ecancer.2019.910	Görge	Nein	Volltext	kein Vergleich zu realer Anwendung	interessant: Vergleich chirurgisches Training	Medizin	Training	Oculus Rift	Oculus Touch controller				 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ho, Li-Hsing; Sun, Hung; Tsai, Tsun-Hung"	Research on 3D Painting in Virtual Reality to Improve Students' Motivation of 3D Animation Learning	2019	SUSTAINABILITY		10.3390/su11061605	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Training	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, San; Cho, Seoungjae; Park, Jisun; Huang, Kaisi; Sung, Yunsick; Cho, Kyungeun"	Infrared bundle adjusting and clustering method for head-mounted display and Leap Motion calibration	2019	HUMAN-CENTRIC COMPUTING AND INFORMATION SCIENCES		10.1186/s13673-019-0169-6	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, Kyeong-Beom; Lee, Jae Yeol"	New design and comparative analysis of smartwatch metaphor-based hand gestures for 3D navigation in mobile virtual reality	2019	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-018-6403-9	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Interessant: Vergleich Navigation	Hardwareentwicklung und Evaluation	Movement / Navigation	Google Cardboard & Oculus Rift DK2	Leap motion controller on custom smart watch, keyboard	30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Alsaeedi, Nassr; Wloka, Dieter"	Real-Time Eyeblink Detector and Eye State Classifier for Virtual Reality (VR) Headsets (Head-Mounted Displays, HMDs)	2019	SENSORS		10.3390/s19051121	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Narciso, David; Bessa, Maximino; Melo, Miguel; Coelho, Antonio; Vasconcelos-Raposo, Jose"	Immersive 360 degrees video user experience: impact of different variables in the sense of presence and cybersickness	2019	UNIVERSAL ACCESS IN THE INFORMATION SOCIETY		10.1007/s10209-017-0581-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Krokos, Eric; Plaisant, Catherine; Varshney, Amitabh"	Virtual memory palaces: immersion aids recall	2019	VIRTUAL REALITY		10.1007/s10055-018-0346-3	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Memory Assessment	Oculus Rift DK2					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Kwon, Chongsan	Verification of the possibility and effectiveness of experiential learning using HMD-based immersive VR technologies	2019	VIRTUAL REALITY		10.1007/s10055-018-0364-1	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Experential learning	Hardwareentwicklung und Evaluation	Training	HTC Vive	HTC Vive controller & PS4 controller	42			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gibby, Jacob T.; Swenson, Samuel A.; Cvetko, Steve; Rao, Raj; Javan, Ramin"	Head-mounted display augmented reality to guide pedicle screw placement utilizing computed tomography	2019	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		10.1007/s11548-018-1814-7	Görge	Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Foerster, Rebecca M.; Poth, Christian H.; Behler, Christian; Botsch, Mario; Schneider, Werner X."	Neuropsychological Assessment of Visual Selective Attention and Processing Capacity With Head-Mounted Displays	2019	NEUROPSYCHOLOGY		10.1037/neu0000517	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visual perception	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jo, Hyun In; Jeon, Jin Yong"	Downstairs resident classification characteristics for upstairs walking vibration noise in an apartment building under virtual reality environment	2019	BUILDING AND ENVIRONMENT		10.1016/j.buildenv.2018.12.054	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhang, Jimmy F.; Paciorkowski, Alex R.; Craig, Paul A.; Cui, Feng"	BioVR: a platform for virtual reality assisted biological data integration and visualization	2019	BMC BIOINFORMATICS		10.1186/s12859-019-2666-z	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Deemer, Ashley D.; Swenor, Bonnielin K.; Fujiwara, Kyoko; Deremeik, James T.; Ross, Nicole C.; Natale, Danielle M.; Bradley, Chris K.; Werblin, Frank S.; Massof, Robert W."	Preliminary Evaluation of Two Digital Image Processing Strategies for Head-Mounted Magnification for Low Vision Patients	2019	TRANSLATIONAL VISION SCIENCE & TECHNOLOGY		10.1167/tvst.8.1.23	Görge	Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhang, Zhenliang; Li, Yue; Guo, Jie; Weng, Dongdong; Liu, Yue; Wang, Yongtian"	Vision-tangible interactive display method for mixed and virtual reality: Toward the human-centered editable reality	2019	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.747	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Guo, Jie; Weng, Dongdong; Zhang, Zhenliang; Liu, Yue; Duh, Henry B. -L.; Wang, Yongtian"	Subjective and objective evaluation of visual fatigue caused by continuous and discontinuous use of HMDs	2019	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.750	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Franklin, J.; Ryder, Andrew"	Electromagnetic field visualization in virtual reality	2019	AMERICAN JOURNAL OF PHYSICS		10.1119/1.5080224	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chu, Veronica C.; D'Zmura, Michael"	Tracking feature-based attention	2019	JOURNAL OF NEURAL ENGINEERING		10.1088/1741-2552/aaed17	Görge	Ja	Volltext	VR nur als Methode	evtl. Auswirkung von Flickersn auf Erkennbarkeit	Human biology	Visual perception	Oculus Rift DK2		24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chou, Ping-Yen; Wu, Dui-Yi; Huang, Shang-Hao; Wang, Chun-Ping; Qin, Zong; Huang, Cheng-Ting; Hsieh, Po-Yuan; Lee, Hsin-Hseuh; Lin, Ting-Hsuan; Huang, Yi-Pai"	Hybrid light field head-mounted display using time-multiplexed liquid crystal lens array for resolution enhancement	2019	OPTICS EXPRESS		10.1364/OE.27.001164	Görge	Nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jeon, Jin Yong; Jo, Hyun In"	Three-dimensional virtual reality-based subjective evaluation of road traffic noise heard in urban high-rise residential buildings	2019	BUILDING AND ENVIRONMENT		10.1016/j.buildenv.2018.11.004	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Bauwesen / Architektur	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Del Verme, Laura	"AN ""AD PATRES"" ITINERARY. THE FONTANELLE CEMETERY IN NAPLES BETWEEN TECHNOLOGY AND CREATIVITY"	2019	ARCHEOLOGIA E CALCOLATORI		00.0000/0060	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hensen, Benedikt; Koren, Istvan; Klamma, Ralf"	Gamification Support for Learning in Spatial Computing Environments	2019	JOURNAL OF UNIVERSAL COMPUTER SCIENCE		00.0000/0061	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Einfluss von Gamification	Medizin	Training	HTC Vive	HTC Vive controllers	14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yao, Zhaolin; Wang, Yijun; Yang, Chen; Pei, Weihua; Gao, Xiaorong; Chen, Hongda"	An online brain-computer interface in mobile virtual reality environments	2019	INTEGRATED COMPUTER-AIDED ENGINEERING		10.3233/ICA-180586	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Liang, Zhipeng; Zhou, Keping; Gao, Kaixin"	Development of Virtual Reality Serious Game for Underground Rock-Related Hazards Safety Training	2019	IEEE ACCESS		10.1109/ACCESS.2019.2934990	Görge	Ja	Sample		VR Game for training the perception of hazardous situations in mining	Mining	Training	HTC Vive	HTC Vive controllers	30	x		 	x	 	 	x	 	 	 	 	x	 	 	x	 	x	 	x	 	 	 	x	 
WOS	"Cipresso, Pietro; Chicchi Giglioli, Irene Alice; Alcaniz Raya, Mariano; Riva, Giuseppe"	The Past, Present, and Future o f Virtual and Augmented Reality Research: A Network and Cluster Analysis of the Literature	2018	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2018.02086	Görge	Ja	Abstract	Review									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nehrujee, Aravind; Vasanthan, Lenny; Lepcha, Anjali; Balasubramanian, Sivakumar"	A Smartphone-based gaming system for vestibular rehabilitation: A usability study	2019	JOURNAL OF VESTIBULAR RESEARCH-EQUILIBRIUM & ORIENTATION		10.3233/VES-190660	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zeng, Zongshun; Ma, Xiaozhe; Zhang, Fang; Zhu, Jing; Avakaw, Syarhei; Huang, Huijle"	Miniaturization design of head-mounted display optical system based on double threshold method for virtual reality	2019	OPTIK		10.1016/j.ijleo.2019.01.083	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Han, Jungmin; Suk, Hyeon-Jeong"	Do users Perceive the same image differently? Comparison of OLED and LCD in mobile HMDs and smartphones	2019	JOURNAL OF INFORMATION DISPLAY		10.1080/15980316.2019.1567612	Görge	Ja	Abstract	VR nur als Methode		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chang, Chen-Wei; Yeh, Shih-Ching; Li, Mengtong; Yao, Eason"	The Introduction of a Novel Virtual Reality Training System for Gynecology Learning and Its User Experience Research	2019	IEEE ACCESS		10.1109/ACCESS.2019.2905143	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: VR als Training	Medizin	Training	HTC Vive	Joystick	87			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"El-Seoud, Samir A.; Mady, Amr S.; Rashed, Essam A."	An Interactive Mixed Reality Ray Tracing Rendering Mobile Application of Medical Data in Minimally Invasive Surgeries	2019	INTERNATIONAL JOURNAL OF ONLINE AND BIOMEDICAL ENGINEERING		10.3991/ijoe.v15i06.9933	Görge	Nein	Titel	kein VR		Medizin	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Avola, Danilo; Cinque, Luigi; Foresti, Gian Luca; Marini, Marco Raoul"	An interactive and low-cost full body rehabilitation framework based on 3D immersive serious games	2019	JOURNAL OF BIOMEDICAL INFORMATICS		10.1016/j.jbi.2018.11.012	Görge	Ja	Abstract	nur Technik		Medizin	Rehabilitation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Laaki, Heikki; Miche, Yoan; Tammi, Kari"	Prototyping a Digital Twin for Real Time Remote Control Over Mobile Networks: Application of Remote Surgery	2019	IEEE ACCESS		10.1109/ACCESS.2019.2897018	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Remote Control / Digital Twin	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, J. Y.; Lee, W. H."	Walking Simulation for VR Game Character Using Remote Sensoring Device Based on AHRS-Motion Recognition	2019	IEEE ACCESS		10.1109/ACCESS.2018.2878237	Görge	Ja	Volltext	nur Technik	evtl. interessant: Laufen in VR	Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface	HTC Vive	Custom input device	5			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chen, Xiaoming; Chen, Zhibo; Li, Ye; He, Tianyu; Hou, Junhui; Liu, Sen; He, Ying"	ImmerTai: Immersive Motion Learning in VR Environments	2019	JOURNAL OF VISUAL COMMUNICATION AND IMAGE REPRESENTATION		10.1016/j.jvcir.2018.11.039	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Taichi-Training	Medizin	Training	Oculus Rift	Kinect	18			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zeroth, Julia A.; Dahlquist, Lynnda M.; Foxen-Craft, Emily C."	The effects of auditory background noise and virtual reality technology on video game distraction analgesia	2019	SCANDINAVIAN JOURNAL OF PAIN		10.1515/sjpain-2018-0123	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yu, Mengli; Zhou, Ronggang; Wang, Huiwen; Zhao, Weihua"	An evaluation for VR glasses system user experience: The influence factors of interactive operation and motion sickness	2019	APPLIED ERGONOMICS		10.1016/j.apergo.2018.08.012	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rupp, Michael A.; Odette, Katy L.; Kozachuk, James; Michaelis, Jessica R.; Smither, Janan A.; McConnell, Daniel S."	Investigating learning outcomes and subjective experiences in 360-degree videos	2019	COMPUTERS & EDUCATION		10.1016/j.compedu.2018.09.015	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Training	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ma, Junfeng; Jaradat, Raed; Ashour, Omar; Hamilton, Michael; Jones, Parker; Dayarathna, Vidanelage L."	Efficacy Investigation of Virtual Reality Teaching Module in Manufacturing System Design Course	2019	JOURNAL OF MECHANICAL DESIGN		10.1115/1.4041428	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Manufacturing planning training	Manufacturing	Training	Oculus Rift	Oculus Touch controller	36			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Agrawal, Ravi; Knodler, Michael; Fisher, Donald L.; Samuel, Siby"	Virtual Reality Headset Training: Can It Be Used to Improve Young Drivers' Latent Hazard Anticipation and Mitigation Skills	2018	TRANSPORTATION RESEARCH RECORD		10.1177/0361198118758311	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Training	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nguyen, Brian J.; Khurana, Aman; Bagley, Brendon; Yen, Andrew; Brown, Richard K. J.; Stojanovska, Jadranka; Cline, Michael; Goodsitt, Mitchell; Obrzut, Sebastian"	Evaluation of Virtual Reality for Detection of Lung Nodules on Computed Tomography	2018	TOMOGRAPHY		10.18383/j.tom.2018.00053	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Khan, Muhammad Sikandar Lal; Halawani, Alaa; Rehman, Shafiq Ur; Li, Haibo"	Action Augmented Real Virtuality: A Design for Presence	2018	IEEE TRANSACTIONS ON COGNITIVE AND DEVELOPMENTAL SYSTEMS		10.1109/TCDS.2018.2828865	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Soltan, Ahmed; Barrett, John Martin; Maaskant, Pleun; Armstrong, Niall; Al-Atabany, Walid; Chaudet, Lionel; Neil, Mark; Sernagor, Evelyne; Degenaar, Patrick"	A head mounted device stimulator for optogenetic retinal prosthesis	2018	JOURNAL OF NEURAL ENGINEERING		10.1088/1741-2552/aadd55	Görge	Ja	Abstract	nur Technik		Medizin	Rehabilitation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Atzori, Barbara; Grotto, Rosapia Lauro; Giugni, Andrea; Calabro, Massimo; Alhalabi, Wadee; Hoffman, Hunter G."	Virtual Reality Analgesia for Pediatric Dental Patients	2018	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2018.02265	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kersten, Thomas Peter; Tschirschwitz, Felix; Lindstaedt, Maren; Deggim, Simon"	The historic wooden model of Solomon's Temple 3D recording, modelling and immersive virtual reality visualisation	2018	JOURNAL OF CULTURAL HERITAGE MANAGEMENT AND SUSTAINABLE DEVELOPMENT		10.1108/JCHMSD-09-2017-0067	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Elor, Aviv; Teodorescu, Mircea; Kurniawan, Sri"	Project Star Catcher: A Novel Immersive Virtual Reality Experience for Upper Limb Rehabilitation	2018	ACM TRANSACTIONS ON ACCESSIBLE COMPUTING		10.1145/3265755	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Bewegungstraining	Medizin	Rehabilitation	HTC Vive	HTC Vive controllers	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Checa, David; Zulaika, Juanjo; Lazkanotegi, Inigo; Bustillo, Andres"	Machining optimization of large casting components by remote monitoring and 3D visualization techniques	2018	DYNA		10.6036/8816	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cha, Young-Woon; Price, True; Wei, Zhen; Lu, Xinran; Rewkowski, Nicholas; Chabra, Rohan; Qin, Zihe; Kim, Hyounghun; Su, Zhaoqi; Liu, Yebin; Ilie, Adrian; State, Andrei; Xu, Zhenlin; Frahm, Jan-Michael; Fuchs, Henry"	Towards Fully Mobile 3D Face, Body, and Environment Capture Using Only Head-worn Cameras	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2868527	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Niwa, Kenta; Hioka, Yusuke; Uematsu, Hisashi"	Efficient Audio Rendering Using Angular Region-Wise Source Enhancement for 360 degrees Video	2018	IEEE TRANSACTIONS ON MULTIMEDIA		10.1109/TMM.2018.2829187	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Boylan, Patrick; Kirwan, Grainne H.; Rooney, Brendan"	Self-reported discomfort when using commercially targeted virtual reality equipment in discomfort distraction	2018	VIRTUAL REALITY		10.1007/s10055-017-0329-9	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Collaboration	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nanjappan, Vijayakumar; Liang, Hai-Ning; Lu, Feiyu; Papangelis, Konstantinos; Yue, Yong; Man, Ka Lok"	User-elicited dual-hand interactions for manipulating 3D objects in virtual reality environments	2018	HUMAN-CENTRIC COMPUTING AND INFORMATION SCIENCES		10.1186/s13673-018-0154-5	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Interessant: Interaktion in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	HTC Vive	Vive controller	12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Shattuck, David W.	Multiuser virtual reality environment for visualising neuroimaging data	2018	HEALTHCARE TECHNOLOGY LETTERS		10.1049/htl.2018.5077	Görge	Nein	Abstract	nur Technik		Medizin	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Avola, Danilo; Cinque, Luigi; Foresti, Gian Luca; Marini, Marco Raoul; Pannone, Daniele"	VRheab: a fully immersive motor rehabilitation system based on recurrent neural network	2018	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-018-5730-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Hyunjeong; Park, Jin Young; Kim, Kwanguk (Kenny)"	Spatial Learning and Memory Using a Radial Arm Maze with a Head-Mounted Display	2018	PSYCHIATRY INVESTIGATION		10.30773/pi.2018.06.28.3	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Vergleich von spatial learning	Medizin	Memory Assessment	Oculus Rift DK2	Joystick	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shafer, Daniel M.; Carbonara, Corey P.; Korpi, Michael F."	Factors Affecting Enjoyment of Virtual Reality Games: A Comparison Involving Consumer-Grade Virtual Reality Technology	2019	GAMES FOR HEALTH JOURNAL		10.1089/g4h.2017.0190	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dennison, Mark; D'Zmura, Michael"	Effects of unexpected visual motion on postural sway and motion sickness	2018	APPLIED ERGONOMICS		10.1016/j.apergo.2018.03.015	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mousas, Christos; Anastasiou, Dimitris; Spantidi, Ourania"	The effects of appearance and motion of virtual characters on emotional reactivity	2018	COMPUTERS IN HUMAN BEHAVIOR		10.1016/j.chb.2018.04.036	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pulijala, Y.; Ma, M.; Pears, M.; Peebles, D.; Ayoub, A."	An innovative virtual reality training tool for orthognathic surgery	2018	INTERNATIONAL JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY		10.1016/j.ijom.2018.01.005	Görge	Ja	Sample		Orthognathic surgery training using VR	Medizin	Training	Oculus Rift	Leap motion	9	x		 	x	 	 	x	 	 	 	 	 	 	x	x	 	 	x	 	 	x	x	x	 
WOS	"Choi, Song-Woo; Lee, Siyeong; Seo, Min-Woo; Kang, Suk-Ju"	Time Sequential Motion-to-Photon Latency Measurement System for Virtual Reality Head-Mounted Displays	2018	ELECTRONICS		10.3390/electronics7090171	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Odin, Anais; Faletto-Passy, Dominique; Assaban, Franck; Perennou, Dominic"	Modulating the internal model of verticality by virtual reality and body-weight support walking: A pilot study	2018	ANNALS OF PHYSICAL AND REHABILITATION MEDICINE		10.1016/j.rehab.2018.07.003	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Laufen in VR	Medizin	Rehabilitation	Oculus Rift DK2		17			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Jungho; Kumar, Yadav Sunil; Yoo, Jisang; Kwon, Soonchul"	Change of Blink Rate in Viewing Virtual Reality with HMD	2018	SYMMETRY-BASEL		10.3390/sym10090400	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Halik, Lukasz; Smaczynski, Maciej"	Geovisualisation of Relief in a Virtual Reality System on the Basis of Low-Level Aerial Imagery	2018	PURE AND APPLIED GEOPHYSICS		10.1007/s00024-017-1755-z	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Henshall, Gareth I.; Teahan, William J.; Ap Cenydd, Llyr"	Virtual reality's effect on parameter optimisation for crowd-sourced procedural animation	2018	VISUAL COMPUTER		10.1007/s00371-018-1501-2	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Grubert, Jens; Itoh, Yuta; Moser, Kenneth; Swan, J. Edward, II"	A Survey of Calibration Methods for Optical See-Through Head-Mounted Displays	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2754257	Görge	Ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mihajlovic, Zeljka; Popovic, Sinisa; Brkic, Karla; Cosic, Kresimir"	A system for head-neck rehabilitation exercises based on serious gaming and virtual reality	2018	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-017-5328-z	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Agethen, Philipp; Sekar, Viswa Subramanian; Gaisbauer, Felix; Pfeiffer, Thies; Otto, Michael; Rukzio, Enrico"	Behavior Analysis of Human Locomotion in the Real World and Virtual Reality for the Manufacturing Industry	2018	ACM TRANSACTIONS ON APPLIED PERCEPTION		10.1145/3230648	Görge	Ja	Sample		Human walking and obstacle avoidance	Manufacturing	Movement / Navigation	HTC Vive	HTC Vive tracking system	30		x	 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	 	 	x	 	x
WOS	"Cecil, J.; Gupta, Avinash; Pirela-Cruz, M.; Ramanthan, Parmesh"	A Network-Based Virtual Reality Simulation Training Approach for Orthopedic Surgery	2018	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		10.1145/3232678	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dietrichkeit, Mona; Flint, Kristina; Krieger, Eva; Grzella, Karsten; Nagel, Matthias; Moritz, Steffen"	Two case studies from a virtual reality intervention for delusions: feasibility and preliminary evidence	2018	COGNITIVE BEHAVIOUR THERAPIST		10.1017/S1754470X18000090	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Roettl, Johanna; Terlutter, Ralf"	The same video game in 2D, 3D or virtual reality - How does technology impact game evaluation and brand placements?	2018	PLOS ONE		10.1371/journal.pone.0200724	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Perception of prodcuts						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huai, Yongjian; Zhang, Han; Zhang, Shuai"	Research and Implementation on Flower Plants Rendering Technology Based on Physical Light Simulation for VR Application	2018	JOURNAL OF ELECTRONICS & INFORMATION TECHNOLOGY		10.11999/JEIT170995	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhai, Xiaojun; Eslami, Mohammad; Hussein, Ealaf Sayed; Filali, Maroua Salem; Shalaby, Salma Tarek; Amira, Abbes; Bensaali, Faycal; Dakua, Sarada; Abinahed, Julien; Al-Ansari, Abdulla; Ahmed, Ayman Z."	Real-time automated image segmentation technique for cerebral aneurysm on reconfigurable system-on-chip	2018	JOURNAL OF COMPUTATIONAL SCIENCE		10.1016/j.jocs.2018.05.002	Görge	Ja	Abstract	nur Technik		Medizin	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Alfaro, Luis; Linares, Ricardo; Herrera, Jose"	Scientific Articles Exploration System Model based in Immersive Virtual Reality and Natural Language Processing Techniques	2018	INTERNATIONAL JOURNAL OF ADVANCED COMPUTER SCIENCE AND APPLICATIONS		00.0000/0028	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kolivand, Hoshang; El Rhalibi, Abdennour; Sunar, Mohd Shahrizal; Saba, Tanzila"	ReVitAge: Realistic virtual heritage taking shadows and sky illumination into account	2018	JOURNAL OF CULTURAL HERITAGE		10.1016/j.culher.2018.01.020	Görge	Nein	Abstract	kein VR		Archäologie / Museen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Thies, Justus; Zollhofer, Michael; Stamminger, Marc; Theobalt, Christian; Niessner, Matthias"	FaceVR: Real-Time Gaze-Aware Facial Reenactment in Virtual Reality	2018	ACM TRANSACTIONS ON GRAPHICS		10.1145/3182644	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Porras-Garcia, Bruno; Ghita, Alexandra; Moreno, Manuel; Ferrer-Garcia, Marta; Bertomeu-Panisello, Paola; Serrano-Troncoso, Eduardo; Riva, Giuseppe; Dakanalis, Antonios; Achotegui-Loizate, Jose; Talarn-Caparros, Antoni; Andreu-Gracia, Alexis; Treasure, Janet; Martinez-Mallen, Esteve; Moreno-Perez, Elena; Gutierrez-Maldonado, Jose"	Gender differences in attentional bias after owning a virtual avatar with increased weight	2018	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0029	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Draelos, Mark; Keller, Brenton; Viehland, Christian; Carrasco-Zevallos, Oscar M.; Kuo, Anthony; Izatt, Joseph"	Real-time visualization and interaction with static and live optical coherence tomography volumes in immersive virtual reality	2018	BIOMEDICAL OPTICS EXPRESS		10.1364/BOE.9.002825	Görge	Nein	Abstract	nur Technik		Medizin	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Mugeon; Lim, Sungjin; Choi, Geunseop; Kim, Youngmin; Kim, Hwi; Hahn, Joonku"	Expanded Exit-Pupil Holographic Head-Mounted Display With High-Speed Digital Micromirror Device	2018	ETRI JOURNAL		10.4218/etrij.2017-0166	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Abdullah, Maria; Shaikh, Zubair Ahmed"	An Effective Virtual Reality based Remedy for Acrophobia	2018	INTERNATIONAL JOURNAL OF ADVANCED COMPUTER SCIENCE AND APPLICATIONS		00.0000/0030	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jarsaillon, Pierre J.; Sakamoto, Naohisa; Kageyama, Akira"	Flexible visualization framework for head-mounted display with gesture interaction interface	2018	INTERNATIONAL JOURNAL OF MODELING SIMULATION AND SCIENTIFIC COMPUTING		10.1142/S1793962318400020	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jung, Su-min; Wang, Dong-Yue; Whangbo, Taeg-keun"	System for Evaluating Elements of VR Content that Cause Motion Sickness	2018	INTERNATIONAL JOURNAL OF GRID AND DISTRIBUTED COMPUTING		10.14257/ijgdc.2018.11.6.09	Görge	Nein	Volltext	nur Technik		Softwareentwicklung	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ratamero, Erick Martins; Bellini, Dom; Dowson, Christopher G.; Romer, Rudolf A."	Touching proteins with virtual bare hands	2018	JOURNAL OF COMPUTER-AIDED MOLECULAR DESIGN		10.1007/s10822-018-0123-0	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Palmisano, Stephen; Riecke, Bernhard E."	The search for instantaneous vection: An oscillating visual prime reduces vection onset latency	2018	PLOS ONE		10.1371/journal.pone.0195886	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cowie, Dorothy; McKenna, Aisling; Bremner, Andrew J.; Aspell, Jane E."	The development of bodily self-consciousness: changing responses to the Full Body Illusion in childhood	2018	DEVELOPMENTAL SCIENCE		10.1111/desc.12557	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Soomro, Shoaib R.; Urey, Hakan"	Integrated 3D display and imaging using dual purpose passive screen and head-mounted projectors and camera	2018	OPTICS EXPRESS		10.1364/OE.26.001161	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Han, Insook	Immersive virtual field trips and elementary students' perceptions	2020	BRITISH JOURNAL OF EDUCATIONAL TECHNOLOGY		10.1111/bjet.12946	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pulijala, Yeshwanth; Ma, Minhua; Pears, Matthew; Peebles, David; Ayoub, Ashraf"	Effectiveness of Immersive Virtual Reality in Surgical Training-A Randomized Control Trial	2018	JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY		10.1016/j.joms.2017.10.002	Görge	Ja	Sample		Self-confidence levels after surgical training in VR compared to text-based surgical training	Medizin	Training	Oculus Rift	Leap motion	91		x	 	 	x	 	x	 	 	 	 	 	 	x	x	 	 	x	 	 	x	 	x	 
WOS	"Jung, Jinki; Ahn, Young Joong"	Effects of interface on procedural skill transfer in virtual training: Lifeboat launching operation study	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1812	Görge	Ja	Sample		Training of manual lifeboat operation	Ingenieurwesen / Physik	Training	Oculus Rift DK2	Keyboard & Joypad, Leap motion controller & Myo armbands	64	x		 	x	 	 	x	 	 	 	 	x	x	 	x	 	x	 	x	 	 	 	x	 
WOS	"Monteiro, Diego; Liang, Hai-Ning; Xu, Wenge; Brucker, Marvin; Nanjappan, Vijayakumar; Yue, Yong"	Evaluating enjoyment, presence, and emulator sickness in VR games based on first- and third- person viewing perspectives	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1830	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Melo, Miguel; Vasconcelos-Raposo, Jose; Bessa, Maximino"	Presence and cybersickness in immersive content: Effects of content type, exposure time and gender	2018	COMPUTERS & GRAPHICS-UK		10.1016/j.cag.2017.11.007	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ghosh, Sarthak; Winston, Lauren; Panchal, Nishant; Kimura-Thollander, Philippe; Hotnog, Jeff; Cheong, Douglas; Reyes, Gabriel; Abowd, Gregory D."	NotifiVR: Exploring Interruptions and Notifications in Virtual Reality	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2793698	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Waltemate, Thomas; Gall, Dominik; Roth, Daniel; Botsch, Mario; Latoschik, Marc Erich"	The Impact of Avatar Personalization and Immersion on Virtual Body Ownership, Presence, and Emotional Response	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2794629	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, Taiwoo; Zhang, Mi; Lee, Youngki"	WHEN MIXED REALITY MEETS INTERNET OF THINGS: Toward the Realization of Ubiquitous Mixed Reality	2018	MOBILE COMPUTING AND COMMUNICATIONS REVIEW		10.1145/3229316.3229320	Görge	Ja	Abstract	kein VR		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhang, Meng-Jia; Zhang, Kang; Li, Jie; Li, Yi-Na"	Visual Exploration of 3D Geospatial Networks in a Virtual Reality Environment	2018	COMPUTER JOURNAL		10.1093/comjnl/bxx117	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visualisation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fabroyir, Hadziq; Teng, Wei-Chung"	Navigation in virtual environments using head-mounted displays: Allocentric vs. egocentric behaviors	2018	COMPUTERS IN HUMAN BEHAVIOR		10.1016/j.chb.2017.11.033	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Li, Dan; Xiao, B. J.; Xia, J. Y.; Wang, K. R."	Preliminary realization of immersive EAST system using virtual reality	2018	FUSION ENGINEERING AND DESIGN		10.1016/j.fusengdes.2018.02.031	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Model design	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Vosinakis, Spyros; Koutsabasis, Panayiotis"	Evaluation of visual feedback techniques for virtual grasping with bare hands using Leap Motion and Oculus Rift	2018	VIRTUAL REALITY		10.1007/s10055-017-0313-4	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Evaluation Greifen	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Oculus Rift	Leao motion controller	32			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Seibert, Jonmichael; Shafer, Daniel M."	Control mapping in virtual reality: effects on spatial presence and controller naturalness	2018	VIRTUAL REALITY		10.1007/s10055-017-0316-1	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Proffitt, Rachel; Warren, Jessica; Lange, Belinda; Chang, Chien-Yen"	SAFETY AND FEASIBILITY OF A FIRST-PERSON VIEW, FULL-BODY INTERACTION GAME FOR TELEREHABILITATION POST-STROKE	2018	INTERNATIONAL JOURNAL OF TELEREHABILITATION		10.5195/ijt.2018.6250	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Carmen Juan, M. -; Garcia-Garcia, Inmaculada; Molla, Ramon; Lopez, Richard"	Users' Perceptions Using Low-End and High-End Mobile-Rendered HMDs: A Comparative Study	2018	COMPUTERS		10.3390/computers7010015	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Johnston, Angus P. R.; Rae, James; Ariotti, Nicholas; Bailey, Benjamin; Lilja, Andrew; Webb, Robyn; Ferguson, Charles; Maher, Sheryl; Davis, Thomas P.; Webb, Richard I.; McGhee, John; Parton, Robert G."	Journey to the centre of the cell: Virtual reality immersion into scientific data	2018	TRAFFIC		10.1111/tra.12538	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Sang Hwa; Nam, SangHun; Kim, JungYoon"	Analysis of a Quality Evaluation Model for VR Contents	2018	INTERNATIONAL JOURNAL OF GRID AND DISTRIBUTED COMPUTING		10.14257/ijgdc.2018.11.2.09	Görge	Nein	Abstract	nur Technik		VR Allgemein	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gadia, Davide; Granato, Marco; Maggiorini, Dario; Ripamonti, Laura Anna; Vismara, Cinzia"	Consumer-oriented Head Mounted Displays: Analysis and Evaluation of Stereoscopic Characteristics and User Preferences	2018	MOBILE NETWORKS & APPLICATIONS		10.1007/s11036-017-0834-9	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huber, Tobias; Wunderling, Tom; Paschold, Markus; Lang, Hauke; Kneist, Werner; Hansen, Christian"	Highly immersive virtual reality laparoscopy simulation: development and future aspects	2018	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		10.1007/s11548-017-1686-2	Görge	Ja	Abstract	nur Technik		Medizin	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Buttussi, Fabio; Chittaro, Luca"	Effects of Different Types of Virtual Reality Display on Presence and Learning in a Safety Training Scenario	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2653117	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kot, Tomas; Novak, Petr"	Application of virtual reality in teleoperation of the military mobile robotic system TAROS	2018	INTERNATIONAL JOURNAL OF ADVANCED ROBOTIC SYSTEMS		10.1177/1729881417751545	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Remote Control / Digital Twin	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Ze-wei; Yu, You-guang; Yang, Fu-zheng"	Panoramic video display quality assessment based on HTC Vive	2018	CHINESE JOURNAL OF LIQUID CRYSTALS AND DISPLAYS		10.3788/YJYXS20183301.0085	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Borrego, Adrian; Latorre, Jorge; Alcaniz, Mariano; Llorens, Roberto"	Comparison of Oculus Rift and HTC Vive: Feasibility for Virtual Reality-Based Exploration, Navigation, Exergaming, and Rehabilitation	2018	GAMES FOR HEALTH JOURNAL		10.1089/g4h.2017.0114	Görge	Ja	Volltext	nur Technik	evtl. Evaluation der HTC Vive	Hardwareentwicklung und Evaluation	Evaluation of VR systems	HTC Vive & Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huang, Xianwei; Naghdy, Fazel; Du, Haiping; Naghdy, Golshah; Murray, Geoffrey"	Design of adaptive control and virtual reality-based fine hand motion rehabilitation system and its effects in subacute stroke patients	2018	COMPUTER METHODS IN BIOMECHANICS AND BIOMEDICAL ENGINEERING-IMAGING AND VISUALIZATION		10.1080/21681163.2017.1343687	Görge	Ja	Sample		evtl. Training von Hand Motion	Medizin	Rehabilitation / Treatment	Oculus Rift DK2	Rehabilitation roboter	8		x	 	 	 	x	x	 	 	 	 	 	 	x	 	 	x	 	 	x	 	 	x	 
WOS	"Wu, Dai-Yun; Lin, Jih-Hsuan Tammy"	Ways of Seeing Matter: The Impact of a Naturally Mapped Perceptual System on the Persuasive Effects of Immersive Virtual Reality Advertising	2018	COMMUNICATION RESEARCH REPORTS		10.1080/08824096.2018.1525349	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lubetzky, Anat, V; Hujsak, Bryan D."	A virtual reality head stability test for patients with vestibular dysfunction	2018	JOURNAL OF VESTIBULAR RESEARCH-EQUILIBRIUM & ORIENTATION		10.3233/VES-190650	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pirker, Johanna; Lesjak, Isabel; Parger, Mathias; Guetl, Christian"	An Educational Physics Laboratory in Mobile Versus Room Scale Virtual Reality - A Comparative Study	2017	ONLINE ENGINEERING & INTERNET OF THINGS		10.3991/ijoe.v13i08.7371	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems	Samsung Gear VR & HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Jurkojc, Jacek	Balance disturbances coefficient as a new value to assess ability to maintain balance on the basis of FFT curves	2018	ACTA OF BIOENGINEERING AND BIOMECHANICS		10.5277/ABB-01082-2018-02	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Balance	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Hahn, Jim F.	Virtual reality learning environments Development of multi-user reference support experiences	2018	INFORMATION AND LEARNING SCIENCE		10.1108/ILS-07-2018-0069	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Collaboration	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Lucas, Jason	IMMERSIVE VR IN THE CONSTRUCTION CLASSROOM TO INCREASE STUDENT UNDERSTANDING OF SEQUENCE, ASSEMBLY, AND SPACE OF WOOD FRAME CONSTRUCTION	2018	JOURNAL OF INFORMATION TECHNOLOGY IN CONSTRUCTION		00.0000/0031	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Keiriz, Johnson J. G.; Zhan, Liang; Ajilore, Olusola; Leow, Alex D.; Forbes, Angus G."	NeuroCave: A web-based immersive visualization platform for exploring connectome datasets	2018	NETWORK NEUROSCIENCE		10.1162/netn_a_00044	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yu, Difeng; Liang, Hai-Ning; Lu, Feiyu; Nanjappan, Vijayakumar; Papangelis, Konstantinos; Wang, Wei"	Target Selection in Head-Mounted Display Virtual Reality Environments	2018	JOURNAL OF UNIVERSAL COMPUTER SCIENCE		00.0000/0032	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Target Selection	Softwareentwicklung	Haptics / Physical interaction	Oculus Rift DK2 & HTC Vive	Keyboard & Leap motion capture & HTC Vive controller & XBOC 260 Controller & Computer mouse	39			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zou, Wenjie; Yang, Fuzheng; Zhang, Wei; Li, Yi; Yu, Haoping"	A Framework for Assessing Spatial Presence of Omnidirectional Video on Virtual Reality Device	2018	IEEE ACCESS		10.1109/ACCESS.2018.2864872	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ren, Pu; Shui, Wuyang; Liu, Jin; Fan, Yachun; Zhao, Wenshuo; Zhou, Mingquan"	A SKETCH-BASED 3D MODELING METHOD FOR 3D CRIME SCENE PRESENTATION	2018	JOURNAL OF DIGITAL FORENSICS SECURITY AND LAW		00.0000/0033	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Martinez Soto, Juan Manuel; Egea Vivancos, Alejandro; Arias Ferrer, Laura"	Assessment of a History educational video game. The student's opinion	2018	REVISTA LATINOAMERICANA DE TECNOLOGIA EDUCATIVA-RELATEC		10.17398/1695-288X.17.1.61	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hoyano, Kengo; Ogoshi, Yasuhiro"	Effect of Social Facilitation without Presence of Others on Swallowing Function and Eating Behavior	2018	SENSORS AND MATERIALS		10.18494/SAM.2018.1912	Görge	Ja	Abstract	kein VR		Psychology	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schmohl, S; Tutzauer, P; Haala, N"	Stuttgart City Walk: A Case Study on Visualizing Textured DSM Meshes for the General Public Using Virtual Reality	2020	PFG-JOURNAL OF PHOTOGRAMMETRY REMOTE SENSING AND GEOINFORMATION SCIENCE		10.1007/s41064-020-00106-z	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fairen, M; Moyes, J; Insa, E"	VR4Health: Personalized teaching and learning anatomy using VR	2020	JOURNAL OF MEDICAL SYSTEMS		10.1007/s10916-020-01550-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bhargava, A; Lucaites, KM; Hartman, LS; Solini, H; Bertrand, JW; Robb, AC; Pagano, CC; Babu, SV"	Revisiting affordance perception in contemporary virtual reality	2020	VIRTUAL REALITY		10.1007/s10055-020-00432-y	Görge	Ja	Sample		Judgement of space for passing through a yliding door in VR and in reality	Psychology	Visual perception	HTC Vive	HTC Vive controllers	35	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	x	x	 	 	x	 	x
WOS	"Lee, SH; Jung, HY; Yun, SJ; Oh, BM; Seo, HG"	Upper Extremity Rehabilitation Using Fully Immersive Virtual Reality Games With a Head Mount Display: A Feasibility Study	2020	PM&R		10.1002/pmrj.12206	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lou, JW; Wang, YM; Nduka, C; Hamedi, M; Mavridou, I; Wang, FY; Yu, H"	Realistic Facial Expression Reconstruction for VR HMD Users	2020	IEEE TRANSACTIONS ON MULTIMEDIA		10.1109/TMM.2019.2933338	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fan, CL; Yen, SC; Huang, CY; Hsu, CH"	Optimizing Fixation Prediction Using Recurrent Neural Networks for 360 degrees Video Streaming in Head-Mounted Virtual Reality	2020	IEEE TRANSACTIONS ON MULTIMEDIA		10.1109/TMM.2019.2931807	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Almajid, R; Tucker, C; Wright, WG; Vasudevan, E; Keshner, E"	Visual dependence affects the motor behavior of older adults during the Timed Up and Go (TUG) test	2020	ARCHIVES OF GERONTOLOGY AND GERIATRICS		10.1016/j.archger.2019.104004	Görge	Ja	Volltext	kein VR	evtl. Vergleich Motor performance	Medizin	Rehabilitation / Treatment	Oculus Rift DK2		28			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Clark, Logan D.; Bhagat, Aakash B.; Riggs, Sara L."	Extending Fitts' law in three-dimensional virtual environments with current low-cost virtual reality technology	2020	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		10.1016/j.ijhcs.2020.102413	Görge	Ja	Sample		Predicting pointing task times in VR and comparing them to real-world model results	Ergonomie	Haptics / Physical interaction	Oculus Rift CV1	Oculus Touch controller	23			x	 	 	x	 	x	 	 	 	 	x	 	 	 	x	 	 	x	 	 	 	x
WOS	"Esteves, Augusto; Shin, Yonghwan; Oakley, Ian"	Comparing selection mechanisms for gaze input techniques in head-mounted displays	2020	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		10.1016/j.ijhcs.2020.102414	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	ectl. Innput Methoden	Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface	Google Daydream VR	Keyboard, Mobile Phone, Leap Motion, Speech	38			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Yildirim, Caglar	Don't make me sick: investigating the incidence of cybersickness in commercial virtual reality headsets	2020	VIRTUAL REALITY		10.1007/s10055-019-00401-0	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue	Oculus Rift & HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mattila, Osmo; Korhonen, Arto; Poyry, Essi; Hauru, Kaisa; Holopainen, Jani; Parvinen, Petri"	Restoration in a virtual reality forest environment	2020	COMPUTERS IN HUMAN BEHAVIOR		10.1016/j.chb.2020.106295	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hornsey, Rebecca L.; Hibbard, Paul B.; Scarfe, Peter"	Size and shape constancy in consumer virtual reality	2020	BEHAVIOR RESEARCH METHODS		10.3758/s13428-019-01336-9	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	ectl. Wahrnehmung von Size and Distance	Hardwareentwicklung und Evaluation	Visual perception	Oculus Rift & HTC Vive	HMD controllers	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rueger, Christoph; Moosburnerl, Simon; Sauer, Igor M."	Extended reality technologies for support of surgical workflows	2020	CHIRURG		10.1007/s00104-020-01188-6	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fernandez Herrero, Jorge; Lorenzo, Gonzalo"	An immersive virtual reality educational intervention on people with autism spectrum disorders (ASD) for the development of communication skills and problem solving	2020	EDUCATION AND INFORMATION TECHNOLOGIES		10.1007/s10639-019-10050-0	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Desselle, Mathilde R.; Brown, Ross A.; James, Allan R.; Midwinter, Mark J.; Powell, Sean; Woodruff, Maria A."	Augmented and Virtual Reality in Surgery	2020	COMPUTING IN SCIENCE & ENGINEERING		10.1109/MCSE.2020.2972822	Görge		Abstract	Review		Medizin	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hu, Qiang; Zhou, Jun; Zhang, Xiaoyun; Shi, Zhiru; Gao, Zhiyong"	Viewport-adaptive 360-degree video coding	2020	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-019-08390-7	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Virtanen, Juho-Pekka; Daniel, Sylvie; Turppa, Tuomas; Zhu, Lingli; Julin, Arttu; Hyyppa, Hannu; Hyyppa, Juha"	Interactive dense point clouds in a game engine	2020	ISPRS JOURNAL OF PHOTOGRAMMETRY AND REMOTE SENSING		10.1016/j.isprsjprs.2020.03.007	Görge	Nein	Abstract	kein VR		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hu, Zhiming; Li, Sheng; Zhang, Congyi; Yi, Kangrui; Wang, Guoping; Manocha, Dinesh"	DGaze: CNN-Based Gaze Prediction in Dynamic Scenes	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2020.2973473	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Peck, Tabitha C.; Sockol, Laura E.; Hancock, Sarah M."	Mind the Gap: The Underrepresentation of Female Participants and Authors in Virtual Reality Research	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2020.2973498	Görge	Ja	Abstract	Review		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Meng, Xiaoxu; Du, Ruofei; Varshney, Amitabh"	Eye-dominance-guided Foveated Rendering	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2020.2973442	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gonzalez-Franco, Mar; Steed, Anthony; Hoogendyk, Steve; Ofek, Eyal"	Using Facial Animation to Increase the Enfacement Illusion and Avatar Self-Identification	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2020.2973075	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mirzaei, Mohammadreza; Kan, Peter; Kaufmann, Hannes"	EarVR: Using Ear Haptics in Virtual Reality for Deaf and Hard-of-Hearing People	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2020.2973441	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Spjut, Josef; Boudaoud, Ben; Kim, Jonghyun; Greer, Trey; Albert, Rachel; Stengel, Michael; Aksit, Kaan; Luebke, David"	Toward Standardized Classification of Foveated Displays	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2020.2973053	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tibaldi, A.; Bonali, F. L.; Vitello, F.; Delage, E.; Nomikou, P.; Antoniou, V; Becciani, U.; de Vries, B. Van Wyk; Krokos, M.; Whitworth, M."	Real world-based immersive Virtual Reality for research, teaching and communication in volcanology	2020	BULLETIN OF VOLCANOLOGY		10.1007/s00445-020-01376-6	Görge	Nein	Abstract	nur Technik		Volcanology	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ha, Hyeyoung; Kwak, Youngshin; Kim, Hyosun; Seo, Young-jun"	Discomfort luminance level of head-mounted displays depending on the adapting luminance	2020	COLOR RESEARCH AND APPLICATION		10.1002/col.22509	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hagio, Shota; Kouzaki, Motoki"	Visuomotor Transformation for the Lead Leg Affects Trail Leg Trajectories During Visually Guided Crossing Over a Virtual Obstacle in Humans	2020	FRONTIERS IN NEUROSCIENCE		10.3389/fnins.2020.00357	Görge	Ja	Sample		Crossing obstacles while walking in VR and in reality	Ergonomie	Movement / Navigation	PlayStation VR	Motion capture	13			x	 	 	x	 	x	x	 	 	 	 	 	 	x	x	 	x	 	 	x	x	 
WOS	"Cook, Matt; Grime, John"	Motivations, design, and preliminary testing for a 360 degrees vision simulator	2020	VIRTUAL REALITY		10.1007/s10055-020-00433-x	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tai, Tzu-Yu; Chen, Howard Hao-Jan; Todd, Graeme"	The impact of a virtual reality app on adolescent EFL learners' vocabulary learning	2020	COMPUTER ASSISTED LANGUAGE LEARNING		10.1080/09588221.2020.1752735	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Juliano, Julia M.; Liew, Sook-Lei"	Transfer of motor skill between virtual reality viewed using a head-mounted display and conventional screen environments	2020	JOURNAL OF NEUROENGINEERING AND REHABILITATION		10.1186/s12984-020-00678-2	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Transfer von Motor Skills	Ergonomie	Haptics / Physical interaction	Oculus Rift DK2	Futek Pinch Sensor FSH01465 (Force Sensor)	70			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lavoie, Raymond; Main, Kelley; King, Corey; King, Danielle"	Virtual experience, real consequences: the potential negative emotional consequences of virtual reality gameplay	2020	VIRTUAL REALITY		10.1007/s10055-020-00440-y	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Effect of Immersion	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Roquet, Paul	Empathy for the game master: how virtual reality creates empathy for those seen to be creating VR	2020	JOURNAL OF VISUAL CULTURE		10.1177/1470412920906260	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Emotions / Empathy	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Suencksen, Matthias; Bott, Oliver Johannes; Dresing, Klaus; Teistler, Michael"	Simulation of scattered radiation during intraoperative imaging in a virtual reality learning environment	2020	INTERNATIONAL JOURNAL OF COMPUTER ASSISTED RADIOLOGY AND SURGERY		10.1007/s11548-020-02126-x	Görge	Nein	Abstract	nur Technik		Medizin	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Penumudi, Sai Akhil; Kuppam, Veera Aneesh; Kim, Jeong Ho; Hwang, Jaejin"	The effects of target location on musculoskeletal load, task performance, and subjective discomfort during virtual reality interactions	2020	APPLIED ERGONOMICS		10.1016/j.apergo.2019.103010	Görge	Ja	Sample		Accessing head and neck kinematics ans muscle activities during pointing tasks in VR	Ergonomie	Haptics / Physical interaction	Oculus Rift	Leap Motion	20			x	 	 	x	 	x	 	 	 	 	x	 	 	 	x	 	 	x	 	x	 	 
WOS	"Ganni, Sandeep; Li, Meng; Botden, Sanne M. B. I.; Nayak, Samir Ranjan; Ganni, Bhaskar Rao; Rutkowski, Anne-Francoise; Goossens, Richard H. M.; Jakimowicz, Jack"	Virtual Operating Room Simulation Setup (VORSS) for Procedural Training in Minimally Invasive Surgery - a Pilot Study	2020	INDIAN JOURNAL OF SURGERY		10.1007/s12262-020-02131-z	Görge	Ja	Sample		evtl. interessant: Training Chirurgie	Medizin	Training	Oculus Rift	Surgical Simulator	28	x		 	x	 	 	x	 	 	 	 	 	 	x	 	 	 	x	 	 	x	 	x	 
WOS	"Fanini, Bruno; Cinque, Luigi"	Encoding, Exchange and Manipulation of Captured Immersive VR Sessions for Learning Environments: the PRISMIN Framework	2020	APPLIED SCIENCES-BASEL		10.3390/app10062026	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Avola, Danilo; Cinque, Luigi; Pannone, Daniele"	Design of a 3D Platform for Immersive Neurocognitive Rehabilitation	2020	INFORMATION		10.3390/info11030134	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Lösen cognitiver Aufgaben	Medizin	Rehabilitation / Treatment	HTC Vive	HTC Vive controllers	42			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mujber, TS; Szecsi, T; Hashmi, MSJ"	A new hybrid dynamic modelling approach for process planning	2005	JOURNAL OF MATERIALS PROCESSING TECHNOLOGY	Article	10.1016/j.jmatprotec.2004.09.086		nein	Abstract	nur Technik		Manufacturing	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kumar, Pavan B. N.; Balasubramanyam, Adithya; Patil, Ashok Kumar; Chethana, B.; Chai, Young Ho"	GazeGuide: An Eye-Gaze-Guided Active Immersive UAV Camera	2020	APPLIED SCIENCES-BASEL		10.3390/app10051668	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hejtmanek, Lukas; Starrett, Michael; Ferrer, Emilio; Ekstrom, Arne D."	How Much of What We Learn in Virtual Reality Transfers to Real-World Navigation?	2020	MULTISENSORY RESEARCH		10.1163/22134808-20201445	Görge	Ja	Sample		Navigation while walking inside an office building	Bauwesen / Architektur	Movement / Navigation	HTC Vive	Treadmill	102	x		 	x	 	 	x	 	x	 	x	 	 	 	 	 	x	 	x	 	 	x	 	x
WOS	"Watanabe, Kandai; Takahashi, Masaki"	Head-synced Drone Control for Reducing Virtual Reality Sickness	2020	JOURNAL OF INTELLIGENT & ROBOTIC SYSTEMS		10.1007/s10846-019-01054-6	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Kang, Hyunjeong	Impact of VR on impulsive desire for a destination	2020	JOURNAL OF HOSPITALITY AND TOURISM MANAGEMENT		10.1016/j.jhtm.2020.02.003	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Al Janabi, Hasaneen Fathy; Aydin, Abdullatif; Palaneer, Sharanya; Macchione, Nicola; Al-Jabir, Ahmed; Khan, Muhammad Shamim; Dasgupta, Prokar; Ahmed, Kamran"	Effectiveness of the HoloLens mixed-reality headset in minimally invasive surgery: a simulation-based feasibility study	2020	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		10.1007/s00464-019-06862-3	Görge	Ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Sungjin; Hong, Min; Kim, Sungyeup; Choi, Seong Jun"	Effect Analysis of Virtual-reality Vestibular Rehabilitation based on Eye-tracking	2020	KSII TRANSACTIONS ON INTERNET AND INFORMATION SYSTEMS		10.3837/tiis.2020.02.020	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhou, Chao; Li, Hong; Bian, Yulong"	Identifying the Optimal 3D Display Technology for Hands-On Virtual Experiential Learning: A Comparison Study	2020	IEEE ACCESS		10.1109/ACCESS.2020.2988678	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Buyuksalih, Gurcan; Kan, Tuna; Ozkan, Gozde Enc; Meric, Muge; Isin, Lale; Kersten, Thomas P."	Preserving the Knowledge of the Past Through Virtual Visits: From 3D Laser Scanning to Virtual Reality Visualisation at the Istanbul catalca Incegiz Caves	2020	PFG-JOURNAL OF PHOTOGRAMMETRY REMOTE SENSING AND GEOINFORMATION SCIENCE		10.1007/s41064-020-00091-3	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pollard, Kimberly A.; Oiknine, Ashley H.; Files, Benjamin T.; Sinatra, Anne M.; Patton, Debbie; Ericson, Mark; Thomas, Jerald; Khooshabeh, Peter"	Level of immersion affects spatial learning in virtual environments: results of a three-condition within-subjects study with long intersession intervals	2020	VIRTUAL REALITY		10.1007/s10055-019-00411-y	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Spatial learning	Hardwareentwicklung und Evaluation	Visual perception	NVIS nVisor ST50 & Oculus Rift CV1	Xbox ONE game controller	61			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cui, Xiaoyu; Cai, Ruifan; Tang, Xiangjun; Deng, Zhigang; Jin, Xiaogang"	Sketch-based shape-constrained fireworks simulation in head-mounted virtual reality	2020	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1920	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design		controller				 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kern, Angelika C.; Ellermeier, Wolfgang"	Audio in VR: Effects of a Soundscape and Movement-Triggered Step Sounds on Presence	2020	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2020.00020	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Xu, Wenge; Liang, Hai-Ning; Zhang, Zeying; Baghaei, Nilufar"	Studying the Effect of Display Type and Viewing Perspective on User Experience in Virtual Reality Exergames	2020	GAMES FOR HEALTH JOURNAL		10.1089/g4h.2019.0102	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Argyriou, Lemonia; Economou, Daphne; Bouki, Vassiliki"	Design methodology for 360 degrees immersive video applications: the case study of a cultural heritage virtual tour	2020	PERSONAL AND UBIQUITOUS COMPUTING		10.1007/s00779-020-01373-8	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jeon, Jin Yong; Jo, Hyun In"	Effects of audio-visual interactions on soundscape and landscape perception and their influence on satisfaction with the urban environment	2020	BUILDING AND ENVIRONMENT		10.1016/j.buildenv.2019.106544	Görge	Ja	Abstract	VR nur als Methode		Bauwesen / Architektur	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, Chiuhsiang Joe; Abreham, Betsha Tizazu; Caesaron, Dino; Woldegiorgis, Bereket Haile"	Exocentric Distance Judgment and Accuracy of Head-Mounted and Stereoscopic Widescreen Displays in Frontal Planes	2020	APPLIED SCIENCES-BASEL		10.3390/app10041427	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Abschätzung von Distanzen	Hardwareentwicklung und Evaluation	Visual perception	HTC Vive	Motion capture	16			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Juliano, Julia M.; Spicer, Ryan P.; Vourvopoulos, Athanasios; Lefebvre, Stephanie; Jann, Kay; Ard, Tyler; Santarnecchi, Emiliano; Krum, David M.; Liew, Sook-Lei"	Embodiment Is Related to Better Performance on a Brain-Computer Interface in Immersive Virtual Reality: A Pilot Study	2020	SENSORS		10.3390/s20041204	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Remond, J-J; Hernandez-Mora, M.; Marseille, C.; Mesure, G.; Romo, L."	Feasibility study of therapeutic exposure in virtual reality for pathological gamblers	2020	ENCEPHALE-REVUE DE PSYCHIATRIE CLINIQUE BIOLOGIQUE ET THERAPEUTIQUE		10.1016/j.encep.2019.09.002	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Malpica, S.; Serrano, A.; Allue, M.; Bedia, M. G.; Masia, B."	Crossmodal perception in virtual reality	2020	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-019-7331-z	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zink, Michael; Sitaraman, Ramesh; Nahrstedt, Klara"	Scalable 360 degrees Video Stream Delivery: Challenges, Solutions, and Opportunities	2019	PROCEEDINGS OF THE IEEE		10.1109/JPROC.2019.2894817	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Swinkels, Lieke M. J.; van Schie, Hein T.; Veling, Harm; ter Horst, Arjan C.; Dijksterhuis, Ap"	The self-generated full body illusion is accompanied by impaired detection of somatosensory stimuli	2020	ACTA PSYCHOLOGICA		10.1016/j.actpsy.2019.102987	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Liu, Qiang; Homma, Riken; Iki, Kazuhisa"	Evaluating cyclists' perception of satisfaction using 360 degrees videos	2020	TRANSPORTATION RESEARCH PART A-POLICY AND PRACTICE		10.1016/j.tra.2019.11.008	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sayed, Ahmed M.; Abdel-Mottaleb, Mostafa; Kashem, Rashed; Roongpoovapatr, Vatookarn; Elsawy, Amr; Abdel-Mottaleb, Mohamed; Parrish, Richard K., II; Abou Shousha, Mohamed"	Expansion of Peripheral Visual Field with Novel Virtual Reality Digital Spectacles	2020	AMERICAN JOURNAL OF OPHTHALMOLOGY		10.1016/j.ajo.2019.10.006	Görge	Ja	Abstract	nur Technik		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Stanney, Kay; Fidopiastis, Cali; Foster, Linda"	Virtual Reality Is Sexist: But It Does Not Have to Be	2020	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2020.00004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Reichenberger, Jonas; Pfaller, Michael; Muehlberger, Andreas"	Gaze Behavior in Social Fear Conditioning: An Eye-Tracking Study in Virtual Reality	2020	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2020.00035	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kuang, Ying; Liu, Juan; Shi, Xueliang"	Effect of surface roughness of optical waveguide on imaging quality and a formula of RSE tolerance and incident angle	2020	OPTICS EXPRESS		10.1364/OE.382804	Görge		Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Huang, Fei-Hui	COMPARISON OF USER EXPERIENCES BASED ON WATCHING 360 degrees IMMERSIVE VIDEO AND REALITY-A CASE STUDY OF A SCOOTER RIDE	2020	PROMET-TRAFFIC & TRANSPORTATION		00.0000/0034	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cha, Ho-Seung; Choi, Seong-Jun; Im, Chang-Hwan"	Real-Time Recognition of Facial Expressions Using Facial Electromyograms Recorded Around the Eyes for Social Virtual Reality Applications	2020	IEEE ACCESS		10.1109/ACCESS.2020.2983608	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wodarski, Piotr; Jurkojc, Jacek; Polechonski, Jacek; Bieniek, Andrzej; Chrzan, Milosz; Michnik, Robert; Gzik, Marek"	Assessment of gait stability and preferred walking speed in virtual reality	2020	ACTA OF BIOENGINEERING AND BIOMECHANICS		10.37190/ABB-01490-2019-03	Görge	Ja	Sample		Assessment of preferred walking speed and gait in VR and comparison to reality	Ergonomie	Movement / Navigation	Oculus Rift DK2	Treadmill	40	x		 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	x	 	 	 	x
WOS	"Vienne, Cyril; Masfrand, Stephane; Bourdin, Christophe; Vercher, Jean-Louis"	Depth Perception in Virtual Reality Systems: Effect of Screen Distance, Environment Richness and Display Factors	2020	IEEE ACCESS		10.1109/ACCESS.2020.2972122	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Depth perception	Hardwareentwicklung und Evaluation	Visual perception	HTC Vive	None	52			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Goncalves, Guilherme; Monteiro, Pedro; Melo, Miguel; Vasconcelos-Raposo, Jose; Bessa, Maximino"	A Comparative Study Between Wired and Wireless Virtual Reality Setups	2020	IEEE ACCESS		10.1109/ACCESS.2020.2970921	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Seongki; Ryu, JinHo; Choi, Youngchyul; Kang, YooSeok; Li, Hongle; Kim, Kibum"	Eye-Contact Game Using Mixed Reality for the Treatment of Children With Attention Deficit Hyperactivity Disorder	2020	IEEE ACCESS		10.1109/ACCESS.2020.2977688	Görge	Ja	Abstract	kein VR		Psychology	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Amemiya, Tomohiro; Kitazaki, Michiteru; Ikei, Yasushi"	Pseudo-Sensation of Walking Generated by Passive Whole-Body Motions in Heave and Yaw Directions	2020	IEEE TRANSACTIONS ON HAPTICS		10.1109/TOH.2020.2965937	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jeong, Kisung; Kim, Jinmo; Kim, Mingyu; Lee, Jiwon; Kim, Chanhun"	Asymmetric Interface: User Interface of Asymmetric Virtual Reality for New Presence and Experience	2020	SYMMETRY-BASEL		10.3390/sym12010053	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Skavern, Hege; Sandsdalen, Tuva; Skaug, Marit Aralt"	Virtual Reality non-medical treatment for patients after surgery An exploratory pilot study	2020	NORDISK SYGEPLEJEFORSKNING-NORDIC NURSING RESEARCH		10.18261/issn.1892-2686-2020-01-02	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ng, Adrian K. T.; Chan, Leith K. Y.; Lau, Henry Y. K."	A study of cybersickness and sensory conflict theory using a motion-coupled virtual reality system	2020	DISPLAYS		10.1016/j.displa.2019.08.004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kraus, M.; Weiler, N.; Oelke, D.; Kehrer, J.; Keim, D. A.; Fuchs, J."	The Impact of Immersion on Cluster Identification Tasks	2020	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2934395	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hong, Joo Young; Lam, Bhan; Ong, Zhen-Ting; Ooi, Kenneth; Gan, Woon-Seng; Kang, Jian; Yeong, Samuel; Lee, Irene; Tan, Sze-Tiong"	The effects of spatial separations between water sound and traffic noise sources on soundscape assessment	2020	BUILDING AND ENVIRONMENT		10.1016/j.buildenv.2019.106423	Görge	Ja	Abstract	VR nur als Methode		Bauwesen / Architektur	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Howard, Matt C.; Gutworth, Melissa B."	A meta-analysis of virtual reality training programs for social skill development	2020	COMPUTERS & EDUCATION		10.1016/j.compedu.2019.103707	Görge	Nein	Abstract	Review		Psychology	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gerber, Stephan M.; Jeitziner, Marie-Madlen; Knobel, Samuel E. J.; Mosimann, Urs P.; Mueri, Rene M.; Jakob, Stephan M.; Nef, Tobias"	Perception and Performance on a Virtual Reality Cognitive Stimulation for Use in the Intensive Care Unit: A Non-randomized Trial in Critically Ill Patients	2019	FRONTIERS IN MEDICINE		10.3389/fmed.2019.00287	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"van der Hooft, Jeroen; Vega, Maria Torres; Petrangeli, Stefano; Wauters, Tim; De Turck, Filip"	Tile-based Adaptive Streaming for Virtual Reality Video	2019	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		10.1145/3362101	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kooijman, Lars; Happee, Riender; de Winter, Joost C. F."	How Do eHMIs Affect Pedestrians' Crossing Behavior? A Study Using a Head-Mounted Display Combined with a Motion Suit	2019	INFORMATION		10.3390/info10120386	Görge	Ja	Abstract	VR nur als Methode		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cardoso, Jorge C. S.; Perrotta, Andre"	A survey of real locomotion techniques for immersive virtual reality applications on head-mounted displays	2019	COMPUTERS & GRAPHICS-UK		10.1016/j.cag.2019.09.005	Görge	Ja	Volltext	Review	evtl. interessant: Locomotion in VR	Ergonomie	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Hyun-Wook; Yang, Sung-Hyun"	Region of interest-based segmented tiled adaptive streaming using head-mounted display tracking sensing data	2019	INTERNATIONAL JOURNAL OF DISTRIBUTED SENSOR NETWORKS		10.1177/1550147719894533	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Maples-Keller, Jessica L.; Rauch, Sheila A. M.; Jovanovic, Tanja; Yasinski, Carly W.; Goodnight, Jessica Morgan; Sherrill, Andrew; Black, Kathryn; Michopoulos, Vasiliki; Dunlop, Boadie W.; Rothbaum, Barbara Olasov; Norrholm, Seth Davin"	Changes in trauma-potentiated startle, skin conductance, and heart rate within prolonged exposure therapy for PTSD in high and low treatment responders	2019	JOURNAL OF ANXIETY DISORDERS		10.1016/j.janxdis.2019.102147	Görge	Ja	Abstract	VR nur als Methode		Psychology	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"de Clercq, Koen; Dietrich, Andre; Velasco, Juan Pablo Nunez; de Winter, Joost; Happee, Riender"	External Human-Machine Interfaces on Automated Vehicles: Effects on Pedestrian Crossing Decisions	2019	HUMAN FACTORS		10.1177/0018720819836343	Görge	Ja	Abstract	VR nur als Methode		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Edwards, Bosede Iyiade; Bielawski, Kevin S.; Prada, Rui; Cheok, Adrian David"	Haptic virtual reality and immersive learning for enhanced organic chemistry instruction	2019	VIRTUAL REALITY		10.1007/s10055-018-0345-4	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cakiroglu, Unal; Gokoglu, Seyfullah"	A Design Model for Using Virtual Reality in Behavioral Skills Training	2019	JOURNAL OF EDUCATIONAL COMPUTING RESEARCH		10.1177/0735633119854030	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Training von Verhalten	Bildungswesen	Training		Joystick	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yu, Xinge; Xie, Zhaoqian; Yu, Yang; Lee, Jungyup; Vazquez-Guardado, Abraham; Luan, Haiwen; Ruben, Jasper; Ning, Xin; Akhtar, Aadeel; Li, Dengfeng; Ji, Bowen; Liu, Yiming; Sun, Rujie; Cao, Jingyue; Huo, Qingze; Zhong, Yishan; Lee, ChanMi; Kim, SeungYeop; Gutruf, Philipp; Zhang, Changxing; Xue, Yeguang; Guo, Qinglei; Chempakasseril, Aditya; Tian, Peilin; Lu, Wei; Jeong, JiYoon; Yu, YongJoon; Cornman, Jesse; Tan, CheeSim; Kirn, BongHoon; Lee, KunHyuk; Feng, Xue; Huang, Yonggang; Rogers, John A."	Skin-integrated wireless haptic interfaces for virtual and augmented reality	2019	NATURE		10.1038/s41586-019-1687-0	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Yan; Zhai, Guangtao; Chen, Sichao; Min, Xiongkuo; Gao, Zhongpai; Song, Xuefei"	Assessment of eye fatigue caused by head-mounted displays using eye-tracking	2019	BIOMEDICAL ENGINEERING ONLINE		10.1186/s12938-019-0731-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huffman, Derek J.; Ekstrom, Arne D."	A Modality-Independent Network Underlies the Retrieval of Large-Scale Spatial Environments in the Human Brain	2019	NEURON		10.1016/j.neuron.2019.08.012	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tong, Jonathan; Allison, Robert S.; Wilcox, Laurie M."	The Impact of Radial Distortions in VR Headsets on Perceived Surface Slant	2019	JOURNAL OF IMAGING SCIENCE AND TECHNOLOGY		10.2352/J.ImagingSci.Technol.2019.63.6.060409	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Wahrnehmung von Schräge	Ergonomie	Visual perception	Google Pixel 2 XL, Wheatstone mirror stereoscope	None	22			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hladky, Jozef; Seidel, Hans-Peter; Steinberger, Markus"	The Camera Offset Space: Real-time Potentially Visible Set Computations for Streaming Rendering	2019	ACM TRANSACTIONS ON GRAPHICS		10.1145/3355089.3356530	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hu, Ping; Sun, Qi; Didyk, Piotr; Wei, Li-Yi; Kaufman, Arie E."	Reducing Simulator Sickness with Perceptual Camera Control	2019	ACM TRANSACTIONS ON GRAPHICS		10.1145/3355089.3356490	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kaplanyan, Anton S.; Sochenov, Anton; Leimkuhler, Thomas; Okunev, Mikhail; Goodall, Todd; Rufo, Gizem"	DeepFovea: Neural Reconstruction for Foveated Rendering and Video Compression using Learned Statistics of Natural Videos	2019	ACM TRANSACTIONS ON GRAPHICS		10.1145/3355089.3356557	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Padmanaban, Nitish; Peng, Yifan; Wetzstein, Gordon"	Holographic Near-Eye Displays Based on Overlap-Add Stereograms	2019	ACM TRANSACTIONS ON GRAPHICS		10.1145/3355089.3356517	Görge	Ja	Abstract	kein VR		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhong, Fangcheng; Koulieris, George Alex; Drettakis, George; Banks, Martin S.; Chambe, Mathieu; Durand, Fredo; Mantiuk, Rafal K."	DiCE: Dichoptic Contrast Enhancement for VR and Stereo Displays	2019	ACM TRANSACTIONS ON GRAPHICS		10.1145/3355089.3356552	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, Jin-Woo; Nahm, Francis Sahngun; Kim, Jin-Hee; Jeon, Young-Tae; Ryu, Jung-Hee; Han, Sung-Hee"	The Effect of Mirroring Display of Virtual Reality Tour of the Operating Theatre on Preoperative Anxiety: A Randomized Controlled Trial	2019	IEEE JOURNAL OF BIOMEDICAL AND HEALTH INFORMATICS		10.1109/JBHI.2019.2892485	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, Chiuhsiang Joe; Caesaron, Dino; Woldegiorgis, Bereket Haile"	The Effects of Augmented Reality Interaction Techniques on Egocentric Distance Estimation Accuracy	2019	APPLIED SCIENCES-BASEL		10.3390/app9214652	Görge	Ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schneider, Daniel; Otte, Alexander; Gesslein, Travis; Gagel, Philipp; Kuth, Bastian; Damlakhi, Mohamad Shahm; Dietz, Oliver; Ofek, Eyal; Pahud, Michel; Kristensson, Per Ola; Mueller, Joerg; Grubert, Jens"	ReconViguRation: Reconfiguring Physical Keyboards in Virtual Reality	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2932239	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Bedienung Keyboard	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	HTC Vive Pro	Physical Logitech G810 keyboard	20			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wolf, Dennis; Rietzler, Michael; Hnatek, Leo; Rukzio, Enrico"	Face/On: Multi-Modal Haptic Feedback for Head-Mounted Displays in Virtual Reality	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2932215	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Irlitti, Andrew; Piumsomboon, Thammathip; Jackson, Daniel; Thomas, Bruce H."	Conveying spatial awareness cues in xR collaborations	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2932173	Görge	Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pan, Ye; Steed, Anthony"	How Foot Tracking Matters: The Impact of an Animated Self-Avatar on Interaction, Embodiment and Presence in Shared Virtual Environments	2019	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2019.00104	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhan, Tao; Zou, Junyu; Xiong, Jianghao; Liu, Xiaomin; Chen, Hao; Yang, Jilin; Liu, Sheng; Dong, Yajie; Wu, Shin-Tson"	Practical Chromatic Aberration Correction in Virtual Reality Displays Enabled by Cost-Effective Ultra-Broadband Liquid Crystal Polymer Lenses	2020	ADVANCED OPTICAL MATERIALS		10.1002/adom.201901360	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Commins, Sean; Duffin, Joseph; Chaves, Keylor; Leahy, Diarmuid; Corcoran, Kevin; Caffrey, Michelle; Keenan, Lisa; Finan, Deirdre; Thornberry, Conor"	NavWell: A simplified virtual-reality platform for spatial navigation and memory experiments	2020	BEHAVIOR RESEARCH METHODS		10.3758/s13428-019-01310-5	Görge	Nein	Abstract	nur Technik		Psychology	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Walcutt, Noah L.; Knorlein, Benjamin; Sgouros, Tom; Cetinic, Ivona; Omand, Melissa M."	Virtual Reality and Oceanography: Overview, Applications, and Perspective	2019	FRONTIERS IN MARINE SCIENCE		10.3389/fmars.2019.00644	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Borrego, Adrian; Latorre, Jorge; Alcaniz, Mariano; Llorens, Roberto"	Embodiment and Presence in Virtual Reality After Stroke. A Comparative Study With Healthy Subjects	2019	FRONTIERS IN NEUROLOGY		10.3389/fneur.2019.01061	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bell, Joshua D.; Macuga, Kristen L."	Goal-directed aiming under restricted viewing conditions with confirmatory sensory feedback	2019	HUMAN MOVEMENT SCIENCE		10.1016/j.humov.2019.102515	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich Zeigeaufgabe	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Sensics zSight	Motion Capture	83			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wender, Carly L. A.; Ahn, Sun Joo; O'Connor, Patrick J."	Interactive Virtual Reality Reduces Quadriceps Pain during High-Intensity Cycling	2019	MEDICINE AND SCIENCE IN SPORTS AND EXERCISE		10.1249/MSS.0000000000002016	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shimokawa, Kazuma; Sugimori, Eriko"	Using Virtual Reality to Study Subjective Time in Crowded Versus Uncrowded Environments	2019	PERCEPTUAL AND MOTOR SKILLS		10.1177/0031512519857869	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Roberts, Gillian; Holmes, Niall; Alexander, Nicholas; Boto, Elena; Leggett, James; Hill, Ryan M.; Shah, Vishal; Read, Molly; Vaughan, Richard; Maguire, Eleanor A.; Kessler, Klaus; Beebe, Shaun; Fromhold, Mark; Barnes, Gareth R.; Bowtell, Richard; Brookes, Matthew J."	Towards OPM-MEG in a virtual reality environment	2019	NEUROIMAGE		10.1016/j.neuroimage.2019.06.010	Görge	Nein	Abstract	nur Technik		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jeppsson, Mattis; Espeland, Havard N.; Kupka, Tomas; Langseth, Ragnar; Petlund, Andreas; Peng, Qiaoqiao; Xue, Chuansong; Johansen, Dag; Pogorelov, Konstantin; Stensland, IIakon; Griwodz, Carsten; Riegler, Michael; Halvorsen, Pal"	Efficient Live and On-Demand Tiled HEVC 360 VR Video Streaming	2019	INTERNATIONAL JOURNAL OF SEMANTIC COMPUTING		10.1142/S1793351X19400166	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development	Gear VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Abd-Alhamid, Fedaa; Kent, Michael; Bennett, Christopher; Calautit, John; Wu, Yupeng"	Developing an Innovative Method for Visual Perception Evaluation in a Physical-Based Virtual Environment	2019	BUILDING AND ENVIRONMENT		10.1016/j.buildenv.2019.106278	Görge	Ja	Sample		Performing a reading task in VR and in reality and comparing performance, lighning perception and physical reactions.	Bauwesen / Architektur	Visual perception	HTC Vive		20	x		 	x	 	 	 	x	 	 	 	x	 	 	 	 	x	x	x	 	 	x	 	x
WOS	"Ito, Kenichiro; Nishimura, Hidekazu; Ogi, Tetsuro"	Motorcycle Head-Up Display: Design of Presenting Navigation Information	2019	IEEE CONSUMER ELECTRONICS MAGAZINE		10.1109/MCE.2019.2923934	Görge	Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wuehr, Max; Breitkopf, Katharina; Decker, Julian; Ibarra, Gerardo; Huppert, Doreen; Brandt, Thomas"	Fear of heights in virtual reality saturates 20 to 40 m above ground	2019	JOURNAL OF NEUROLOGY		10.1007/s00415-019-09370-5	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Wahrnehmung von Höhe	Psychology	Emotions / Empathy / Fear	Oculus Rift CV1		23			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Weber, Lynne M.; Nilsen, Dawn M.; Gillen, Glen; Yoon, Jin; Stein, Joel"	Immersive Virtual Reality Mirror Therapy for Upper Limb Recovery After Stroke A Pilot Study	2019	AMERICAN JOURNAL OF PHYSICAL MEDICINE & REHABILITATION		10.1097/PHM.0000000000001190	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bruns, Conner R.; Chamberlain, Brent C."	The influence of landmarks and urban form on cognitive maps using virtual reality	2019	LANDSCAPE AND URBAN PLANNING		10.1016/j.landurbplan.2019.05.006	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Bedard, Philippe	THE SUBJECTIVE MACHINE? THE CINEMATOGRAPHIC APPROPRIATIONS OF CONTEMPORARY IMMERSIVE DEVICES	2019	CANADIAN JOURNAL OF FILM STUDIES-REVUE CANADIENNE D ETUDES CINEMATOGRAPHIQUES		10.3138/cjfs.28.1.2019-0012	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tran, Huyen T. T.; Ngoc, Nam P.; Pham, Cuong T.; Jung, Yong Ju; Truong, Cong Thang"	A Subjective Study on User Perception Aspects in Virtual Reality	2019	APPLIED SCIENCES-BASEL		10.3390/app9163384	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zare, Alireza; Homayouni, Maryam; Aminlou, Alireza; Hannuksela, Miska M.; Gabbouj, Moncef"	6K and 8K Effective Resolution with 4K HEVC Decoding Capability for 360 Video Streaming	2019	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		10.1145/3335053	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jost, Patrick; Cobb, Sue; Haemmerle, Isabella"	Reality-based interaction affecting mental workload in virtual reality mental arithmetic training	2019	BEHAVIOUR & INFORMATION TECHNOLOGY		10.1080/0144929X.2019.1641228	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bird, Jonathan M.; Karageorghis, Costas I.; Baker, Steven J.; Brookes, David A."	Effects of music, video, and 360-degree video on cycle ergometer exercise at the ventilatory threshold	2019	SCANDINAVIAN JOURNAL OF MEDICINE & SCIENCE IN SPORTS		10.1111/sms.13453	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gallagher, Maria; Dowsett, Ross; Ferre, Elisa Raffaella"	Vection in virtual reality modulates vestibular-evoked myogenic potentials	2019	EUROPEAN JOURNAL OF NEUROSCIENCE		10.1111/ejn.14499	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jiang, Haiyan; Weng, Dongdong; Zhang, Zhenliang; Chen, Feng"	HiFinger: One-Handed Text Entry Technique for Virtual Environments Based on Touches between Fingers	2019	SENSORS		10.3390/s19143063	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Monna, Fabrice; Navarro, Nicolas; Magail, Jerome; Guillon, Rodrigue; Rolland, Tanguy; Wilczek, Josef; Esin, Yury; Chateau, Carmela"	Contextualization of Archaeological Information Using Augmented Photospheres, Viewed with Head-Mounted Displays	2019	SUSTAINABILITY		10.3390/su11143894	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bibic, Lucka; Druskis, Justinas; Walpole, Samuel; Angulo, Jesus; Stokes, Leanne"	Bug Off Pain: An Educational Virtual Reality Game on Spider Venoms and Chronic Pain for Public Engagement	2019	JOURNAL OF CHEMICAL EDUCATION		10.1021/acs.jchemed.8b00905	Görge	Ja	Abstract	nur Technik		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bailey, Jakki O.; Bailenson, Jeremy N.; Obradovic, Jelena; Aguiar, Naomi R."	Virtual reality's effect on children's inhibitory control, social compliance, and sharing	2019	JOURNAL OF APPLIED DEVELOPMENTAL PSYCHOLOGY		10.1016/j.appdev.2019.101052	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Behaviour						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jin, Haiyan; Xie, Le; Xiao, Zhaolin; Zhou, Ting"	Classification for Human Balance Capacity Based on Visual Stimulation under a Virtual Reality Environment	2019	SENSORS		00.0000/0035	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Movement / Navigation	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ding, Ding; Brinkman, Willem-Paul; Neerincx, Mark A."	Virtual reality exposure with eye-gaze adaptive virtual cognitions	2019	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0036	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung		Psychology	Visual perception	FOVE 0		24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mosso Vazquez, Jose Luis; Canseco Aguilar, Patricia; Mosso Lara, Dejanira; Miller, Ian; Wiederhold, Brenda K.; Wiederhold, Mark D."	Virtual Reality and Minimal Analgesia Attenuate Pain During Spine Surgery	2019	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0037	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ellman, Asko; Tiainen, Tarja"	Diffusion of Innovation: Case of Co-Design of Cabins in Mobile Work Machine Industry	2019	COMPUTERS		10.3390/computers8020039	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Ho, Derek Kwun-hong	Using smartphone-delivered stereoscopic vision in microsurgery: a feasibility study	2019	EYE		10.1038/s41433-019-0356-8	Görge	Nein	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Operation in VR	Medizin	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Peng; Zhang, Shusheng; Bai, Xiaoliang; Billinghurst, Mark; He, Weiping; Sun, Mengmeng; Chen, Yongxing; Lv, Hao; Ji, Hongyu"	2.5DHANDS: a gesture-based MR remote collaborative platform	2019	INTERNATIONAL JOURNAL OF ADVANCED MANUFACTURING TECHNOLOGY		10.1007/s00170-018-03237-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Manufacturing	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mittelstaedt, Justin Maximilian; Wacker, Jan; Stelling, Dirk"	VR aftereffect and the relation of cybersickness and cognitive performance	2019	VIRTUAL REALITY		10.1007/s10055-018-0370-3	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Suzuki, Keisuke; Schwartzman, David J.; Augusto, Rafael; Seth, Anil K."	Sensorimotor contingency modulates breakthrough of virtual 3D objects during a breaking continuous flash suppression paradigm	2019	COGNITION		10.1016/j.cognition.2019.03.003	Görge	Ja	Abstract	nur Technik		Psychology	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Gavarkovs, Adam G.	Behavioral Counseling Training for Primary Care Providers: Immersive Virtual Simulation as a Training Tool	2019	FRONTIERS IN PUBLIC HEALTH		10.3389/fpubh.2019.00116	Görge	Nein	Abstract	Review		Psychology	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Osumi, Michihiro; Inomata, Kazunori; Inoue, Yuji; Otake, Yuko; Morioka, Shu; Sumitani, Masahiko"	Characteristics of Phantom Limb Pain Alleviated with Virtual Reality Rehabilitation	2019	PAIN MEDICINE		10.1093/pm/pny269	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wu, Bo-Jyun; Wong, Sai-Keung; Li, Ta-Wei"	Virtual titration laboratory experiment with differentiated instruction	2019	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1882	Görge	Ja	Sample		evtl. Vergleich: Training von manueller Tätigkeit	Bildungswesen	Training	HTC Vive	Leap motion controller & HTC controller	28	x		 	x	 	 	x	 	 	 	 	 	 	x	 	 	x	x	x	 	 	x	x	 
WOS	"Koulieris, G. A.; Aksit, K.; Stengel, M.; Mantiuk, R. K.; Mania, K.; Richardt, C."	Near-Eye Display and Tracking Technologies for Virtual and Augmented Reality	2019	COMPUTER GRAPHICS FORUM		10.1111/cgf.13654	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Nam-Gyoon; Kim, Beom-Su"	The Effect of Retinal Eccentricity on Visually Induced Motion Sickness and Postural Control	2019	APPLIED SCIENCES-BASEL		10.3390/app9091919	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Li, Jing; Xie, Ning; Zhao, Weixun"	The choice of intrinsic axis under multi-cue conditions	2019	COGNITIVE PROCESSING		10.1007/s10339-019-00903-4	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shen, Yiran; Wen, Hongkai; Luo, Chengwen; Xu, Weitao; Zhang, Tao; Hu, Wen; Rus, Daniela"	GaitLock: Protect Virtual and Augmented Reality Headsets Using Gait	2019	IEEE TRANSACTIONS ON DEPENDABLE AND SECURE COMPUTING		10.1109/TDSC.2018.2800048	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Security						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Xu, Wenge; Liang, Hai-Ning; Zhao, Yuxuan; Zhang, Tianyu; Yu, Difeng; Monteiro, Diego"	RingText: Dwell-free and hands-free Text Entry for Mobile Head-Mounted Displays using Head Motions	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2898736	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mirhosseini, Seyedkoosha; Gutenko, Ievgeniia; Ojal, Sushant; Marino, Joseph; Kaufman, Arie"	Immersive Virtual Colonoscopy	2019	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2019.2898763	Görge	Nein	Abstract	nur Technik		Medizin	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Choe, Mungyeong; Choi, Yeongcheol; Park, Jaehyun; Kim, Hyun K."	Comparison of Gaze Cursor Input Methods for Virtual Reality Devices	2019	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER INTERACTION		10.1080/10447318.2018.1484054	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ito, Masaru; Funahara, Yusuke; Saiki, Seiji; Yamazaki, Yoichiro; Kurita, Yuichi"	Development of a Cross-Platform Cockpit for Simulated and Tele-Operated Excavators	2019	JOURNAL OF ROBOTICS AND MECHATRONICS		00.0000/0038	Görge	Nein	Abstract	nicht Englisch		Ingenieurwesen / Physik	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Seo, Seung-hun; Kim, Eunjoo; Mundy, Peter; Heo, Jiwoong; Kim, Kwanguk (Kenny)"	Joint Attention Virtual Classroom: A Preliminary Study	2019	PSYCHIATRY INVESTIGATION		10.30773/pi.2019.02.08	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Makransky, Guido; Terkildsen, Thomas S.; Mayer, Richard E."	Adding immersive virtual reality to a science lab simulation causes more presence but less learning	2019	LEARNING AND INSTRUCTION		10.1016/j.learninstruc.2017.12.007	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Mol, Jantsje M.	Goggles in the lab: Economic experiments in immersive virtual environments	2019	JOURNAL OF BEHAVIORAL AND EXPERIMENTAL ECONOMICS		10.1016/j.socec.2019.02.007	Görge	Nein	Volltext	Review	evtl. generell Anwendbarkeit von VR	Psychology / Human factors	Behaviour						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gao, Hongyue; Xu, Fan; Liu, Jicheng; Dai, Zehang; Zhou, Wen; Li, Suna; Yu, Yingjie; Zheng, Huadong"	Holographic Three-Dimensional Virtual Reality and Augmented Reality Display Based on 4K-Spatial Light Modulators	2019	APPLIED SCIENCES-BASEL		10.3390/app9061182	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jang, Ju Yeun; Hur, Hee Jin; Choo, Ho Jung"	How to evoke consumer approach intention toward VR stores? Sequential mediation through telepresence and experiential value	2019	FASHION AND TEXTILES		10.1186/s40691-018-0166-9	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. VR Auswahl von Produkten	Retail / Marketing	Perception of prodcuts / Advertisement	VR Box		101			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Marin-Morales, Javier; Luis Higuera-Trujillo, Juan; De-Juan-Ripoll, Carla; Llinares, Carmen; Guixeres, Jaime; Inarra, Susana; Alcaniz, Andmariano"	Navigation Comparison between a Real and a Virtual Museum: Time-dependent Differences using a Head Mounted Display	2019	INTERACTING WITH COMPUTERS		10.1093/iwc/iwz018	Görge	Ja	Sample		Vergleich: Navigation VR-Real	Psychology	Movement / Navigation	HTC Vive	HTC Vive controller (teleport navigation)	60	x		 	x	 	 	 	x	 	 	x	 	 	 	 	 	x	 	x	 	 	x	 	x
WOS	"Schnack, Alexander; Wright, Malcolm J.; Holdershaw, Judith L."	Immersive virtual reality technology in a three-dimensional virtual simulated store: Investigating telepresence and usability	2019	FOOD RESEARCH INTERNATIONAL		10.1016/j.foodres.2018.01.028	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Retail / Marketing	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhao, Jing; Xiong, Ruiqin; Xu, Jizheng"	OmniCast :Wireless Pseudo-Analog Transmission for Omnidirectional Video	2019	IEEE JOURNAL ON EMERGING AND SELECTED TOPICS IN CIRCUITS AND SYSTEMS		10.1109/JETCAS.2019.2898750	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Otkhmezuri, Boris; Boffo, Marilisa; Siriaraya, Panote; Matsangidou, Maria; Wiers, Reinout W.; Mackintosh, Bundy; Ang, Chee Siang; Salemink, Elske"	Believing Is Seeing: A Proof-of-Concept Semiexperimental Study on Using Mobile Virtual Reality to Boost the Effects of Interpretation Bias Modification for Anxiety	2019	JMIR MENTAL HEALTH		10.2196/11517	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"He, Zehao; Sui, Xiaomeng; Jin, Guofan; Cao, Liangcai"	Progress in virtual reality and augmented reality based on holographic display	2019	APPLIED OPTICS		10.1364/AO.58.000A74	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nguyen, D. V.; Tran, Huyen T. T.; Truong, Cong Thang"	A client-based adaptation framework for 360-degree video streaming	2019	JOURNAL OF VISUAL COMMUNICATION AND IMAGE REPRESENTATION		10.1016/j.jvcir.2019.01.012	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bai, Jianying; Bao, Min; Zhang, Tao; Jiang, Yi"	A virtual reality approach identifies flexible inhibition of motion aftereffects induced by head rotation	2019	BEHAVIOR RESEARCH METHODS		10.3758/s13428-018-1116-6	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Guo, Jichengsi; Huang, Jianping; Wan, Xiaoang"	Influence of route decision-making and experience on human path integration	2019	ACTA PSYCHOLOGICA		10.1016/j.actpsy.2018.12.005	Görge	Ja	Abstract	VR nur als Methode		Psychology	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Thompson-Butel, Angelica G.; Shiner, Christine T.; McGhee, John; Bailey, Benjamin John; Bou-Haidar, Pascal; McCorriston, Michael; Faux, Steven G."	The Role of Personalized Virtual Reality in Education for Patients Post Stroke-A Qualitative Case Series	2019	JOURNAL OF STROKE & CEREBROVASCULAR DISEASES		10.1016/j.jstrokecerebrovasdis.2018.10.018	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Spanlang, Bernhard; Nierula, Birgit; Haffar, Maud; Debruille, J. Bruno"	Mimicking Schizophrenia: Reducing P300b by Minimally Fragmenting Healthy Participants' Selves Using Immersive Virtual Reality Embodiment	2019	FRONTIERS IN HUMAN NEUROSCIENCE		10.3389/fnhum.2018.00504	Görge	Ja	Abstract	VR nur als Methode		Psychology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Woods, Andrew; Oliver, Nick; Bourke, Paul; Green, Jeremy; Paterson, Alistair"	Beacon Virtua: A Virtual Reality Simulation Detailing the Recent and Shipwreck History of Beacon Island, Western Australia	2019	3D RECORDING AND INTERPRETATION FOR MARITIME ARCHAEOLOGY		10.1007/978-3-030-03635-5_13	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jung-Ho, Kim; Ho-Jun, Son; Seung-Hyun, Lee; Soon-Chul, Kwon"	VR/AR Head-mounted Display System-based Measurement and Evaluation of Dynamic Visual Acuity	2019	JOURNAL OF EYE MOVEMENT RESEARCH		10.16910/jemr.12.8.1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Tashev, Ivan J.	CAPTURE, REPRESENTATION, AND RENDERING OF 3D AUDIO FOR VIRTUAL AND AUGMENTED REALITY	2019	INTERNATIONAL JOURNAL ON INFORMATION TECHNOLOGIES AND SECURITY		00.0000/0039	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Szpak, Ancret; Michalski, Stefan Carlo; Saredakis, Dimitrios; Chen, Celia S.; Loetscher, Tobias"	Beyond Feeling Sick: The Visual and Cognitive Aftereffects of Virtual Reality	2019	IEEE ACCESS		10.1109/ACCESS.2019.2940073	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Choi, Kang-min; Park, Seonghun; Im, Chang-Hwan"	Comparison of Visual Stimuli for Steady-State Visual Evoked Potential-Based Brain-Computer Interfaces in Virtual Reality Environment in terms of Classification Accuracy and Visual Comfort	2019	COMPUTATIONAL INTELLIGENCE AND NEUROSCIENCE		10.1155/2019/9680697	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huo, Yongkai; Wang, Xu; Zhang, Peichang; Jiang, Jianmin; Hanzo, Lajos"	Unequal Error Protection Aided Region of Interest Aware Wireless Panoramic Video	2019	IEEE ACCESS		10.1109/ACCESS.2019.2921880	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kazempourradi, Seyedmandi; Ulusoy, Erdem; Urey, Hakan"	Full-color computational holographic near-eye display	2019	JOURNAL OF INFORMATION DISPLAY		10.1080/15980316.2019.1606859	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Asakura, Takumi; Ishikawa, Atsuya"	Effect of auditory and visual stimuli on distance perception presented by head-mounted display and headphone	2019	ACOUSTICAL SCIENCE AND TECHNOLOGY		10.1250/ast.40.265	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jang, Ho Jin; Lee, Jun Yeob; Kwak, Jeonghun; Lee, Dukho; Park, Jae-Hyeung; Lee, Byoungho; Noh, Yong Young"	Progress of display performances: AR, VR, QLED, OLED, and TFT	2019	JOURNAL OF INFORMATION DISPLAY		10.1080/15980316.2019.1572662	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sumantri, Eric; Lesmana, Raymond; Santoso, Handri"	Implementation of Augmented Virtuality in Virtual Meeting Room Application	2019	INTERNETWORKING INDONESIA		00.0000/0040	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design	Samsung Gear VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kramberger, Iztok; Kacic, Zdravko; Donaj, Gregor"	Binocular Phase-Coded Visual Stimuli for SSVEP-Based BCI	2019	IEEE ACCESS		10.1109/ACCESS.2019.2910737	Görge	Ja	Abstract	nur Technik		Human Biology	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jallouli, Anas; Kammoun, Fahmi; Masmoudi, Nouri"	Equatorial part segmentation model for 360-deg video projection	2019	JOURNAL OF ELECTRONIC IMAGING		10.1117/1.JEI.28.1.013019	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sasinka, Cenek; Stachon, Zdenek; Sedlak, Michal; Chmelik, Jiri; Herman, Lukas; Kubicek, Petr; Sasinkova, Alzbeta; Dolezal, Milan; Tejkl, Hynek; Urbanek, Tomas; Svatonova, Hana; Ugwitz, Pavel; Jurik, Vojtech"	Collaborative Immersive Virtual Environments for Education in Geography	2019	ISPRS INTERNATIONAL JOURNAL OF GEO-INFORMATION		10.3390/ijgi8010003	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Viziano, Andrea; Micarelli, Alessandro; Augimeri, Ivan; Micarelli, Domenico; Alessandrini, Marco"	Long-term effects of vestibular rehabilitation and head-mounted gaming task procedure in unilateral vestibular hypofunction: a 12-month follow-up of a randomized controlled trial	2019	CLINICAL REHABILITATION		10.1177/0269215518788598	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yoon, Jeong Hwan; Lee, Seung Jae; Lim, Young Jin; Seo, Eo Jin; Shin, Hoon Sub; Myoung, Jae-Min; Lee, Seung Hee"	Fast switching, high contrast and high resolution liquid crystal device for virtual reality display	2018	OPTICS EXPRESS		10.1364/OE.26.034142	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rangelova, Stanislava; Andre, Elisabeth"	A Survey on Simulation Sickness in Driving Applications with Virtual Reality Head-Mounted Displays	2018	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS		10.1162/PRES_a_00318	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Figueiredo, Lucas; Rodrigues, Eduardo; Teixeira, Joao; Teichrieb, Veronica"	A comparative evaluation of direct hand and wand interactions on consumer devices	2018	COMPUTERS & GRAPHICS-UK		10.1016/j.cag.2018.10.006	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Interaktion in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	HTC Vive	Leap motion controller & HTC controller	24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wu, Meng-Lin; Popescu, Voicu"	Efficient VR and AR Navigation Through Multiperspective Occlusion Management	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2778249	Görge	Nein	Abstract	nur Technik		Psychology	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cometti, Carole; Paizis, Christos; Casteleira, Audrey; Pons, Guillaume; Babault, Nicolas"	Effects of mixed reality head-mounted glasses during 90 minutes of mental and manual tasks on cognitive and physiological functions	2018	PEERJ		10.7717/peerj.5847	Görge		Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Valzolgher, Chiara; Mazzurega, Mara; Zampini, Massimiliano; Pavani, Francesco"	Incongruent multisensory stimuli alter bodily self-consciousness: Evidence from a first-person perspective experience	2018	ACTA PSYCHOLOGICA		10.1016/j.actpsy.2018.09.009	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sasaki, Takashi; Hotta, Aira; Murata, Takahiro; Ueda, Yu; Okumura, Haruhiko"	Novel MRI hyper-realistic head-up display system for patient comfort	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.734	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"de Jesus Oliveira, Victor Adriel; Nedel, Luciana; Maciel, Anderson"	Assessment of an articulatory interface for tactile intercommunication in immersive virtual environments	2018	COMPUTERS & GRAPHICS-UK		10.1016/j.cag.2018.07.007	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kroupa, Jiri; Tuma, Zdenek; Kovar, Jiri; Singule, Vladislav"	VIRTUAL LABORATORY FOR STUDY OF CONSTRUCTION OF MACHINE TOOLS	2018	MM SCIENCE JOURNAL		10.17973/MMSJ.2018_11_2017100	Görge	Nein	Abstract	kein Vergleich zu realer Anwendung		Manufacturing	Model design	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhu, Yucheng; Zhai, Guangtao; Min, Xiongkuo"	The prediction of head and eye movement for 360 degree images	2018	SIGNAL PROCESSING-IMAGE COMMUNICATION		10.1016/j.image.2018.05.010	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rigutti, Sara; Straga, Marta; Jez, Marco; Baldassi, Giulio; Carnaghi, Andrea; Miceu, Piero; Fantoni, Carlo"	Don't worry, be active: how to facilitate the detection of errors in immersive virtual environments	2018	PEERJ		10.7717/peerj.5844	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Brouwer, Anne-Marie; van der Waa, Jasper; Stokking, Hans"	BCI to Potentially Enhance Streaming Images to a VR Headset by Predicting Head Rotation	2018	FRONTIERS IN HUMAN NEUROSCIENCE		10.3389/fnhum.2018.00420	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cook, Henry E.; Hassebrock, Justin A.; Smart, L. James, Jr."	Responding to Other People's Posture: Visually Induced Motion Sickness From Naturally Generated Optic Flow	2018	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2018.01901	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Grogorick, Steve; Albuquerque, Georgia; Tauscher, Jan-Philipp; Magnor, Marcus"	Comparison of Unobtrusive Visual Guidance Methods in an Immersive Dome Environment	2018	ACM TRANSACTIONS ON APPLIED PERCEPTION		10.1145/3238303	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Weier, Martin; Roth, Thorsten; Hinkenjann, Andre; Slusallek, Philipp"	Foveated Depth-of-Field Filtering in Head-Mounted Displays	2018	ACM TRANSACTIONS ON APPLIED PERCEPTION		10.1145/3238301	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Matsushima, Toshiharu; Seki, Kenta; Kimura, Shunichi; Iwakabe, Yasushi; Yata, Tatsuya; Watanabe, Yoshihiro; Komura, Shinichi"	New fast response in-plane switching liquid crystal mode	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.708	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Aykut, Tamay; Karimi, Mojtaba; Burgmair, Christoph; Finkenzeller, Andreas; Bachhuber, Christoph; Steinbach, Eckehard"	Delay Compensation for a Telepresence System With 3D 360 Degree Vision Based on Deep Head Motion Prediction and Dynamic FoV Adaptation	2018	IEEE ROBOTICS AND AUTOMATION LETTERS		10.1109/LRA.2018.2864359	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Juyoung; Ahn, Sang Chul; Hwang, Jae-In"	A Walking-in-Place Method for Virtual Reality Using Position and Orientation Tracking	2018	SENSORS		10.3390/s18092832	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhu, Yu; Li, Shiying; Luo, Xi; Zhu, Kang; Fu, Qiang; Chen, Xilin; Gong, Huixing; Yu, Jingyi"	A shared augmented virtual environment for real-time mixed reality applications	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1805	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Davidenko, Nicolas; Cheong, Yeram; Waterman, Amanda; Smith, Jacob; Anderson, Barrett; Harmon, Sarah"	The influence of visual and vestibular orientation cues in a clock reading task	2018	CONSCIOUSNESS AND COGNITION		10.1016/j.concog.2018.05.005	Görge	Ja	Abstract	VR nur als Methode		Psychology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cholewiak, Steven A.; Love, Gordon D.; Banks, Martin S."	Creating correct blur and its effect on accommodation	2018	JOURNAL OF VISION		10.1167/18.9.1	Görge	Nein	Abstract	kein VR		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Liang, Mingli; Starrett, Michael J.; Ekstrom, Arne D."	Dissociation of frontal-midline delta-theta and posterior alpha oscillations: A mobile EEG study	2018	PSYCHOPHYSIOLOGY		10.1111/psyp.13090	Görge	Ja	Abstract	VR nur als Methode		Psychology	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bahirat, Kanchan; Lai, Chengyuan; Mcmahan, Ryan P.; Prabhakaran, Balakrishnan"	Designing and Evaluating a Mesh Simplification Algorithm for Virtual Reality	2018	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		10.1145/3209661	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hou, Xueshi; Lu, Yao; Dey, Sujit"	Novel Hybrid-Cast Approach to Reduce Bandwidth and Latency for Cloud-Based Virtual Space	2018	ACM TRANSACTIONS ON MULTIMEDIA COMPUTING COMMUNICATIONS AND APPLICATIONS		10.1145/3205864	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Langbehn, Eike; Steinicke, Frank; Lappe, Markus; Welch, Gregory F.; Bruder, Gerd"	In the Blink of an Eye - Leveraging Blink-Induced Suppression for Imperceptible Position and Orientation Redirection in Virtual Reality	2018	ACM TRANSACTIONS ON GRAPHICS		10.1145/3197517.3201335	Görge	Nein	Volltext	nur Technik		Softwareentwicklung	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ji, Haru Hyunkyung; Wakefield, Graham"	Inhabitat: An Imaginary Ecosystem in a Children's Science Museum	2018	LEONARDO		10.1162/leon_a_01641	Görge	Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Maloca, Peter M.; de Carvalho, J. Emanuel Ramos; Heeren, Tjebo; Hasler, Pascal W.; Mushtaq, Faisal; Mon-Williams, Mark; Scholl, Hendrik P. N.; Balaskas, Konstantinos; Egan, Catherine; Tufail, Adnan; Witthauer, Lilian; Cattin, Philippe C."	High-Performance Virtual Reality Volume Rendering of Original Optical Coherence Tomography Point-Cloud Data Enhanced With Real-Time Ray Casting	2018	TRANSLATIONAL VISION SCIENCE & TECHNOLOGY		10.1167/tvst.7.4.2	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fluke, C. J.; Barnes, D. G."	Immersive Virtual Reality Experiences for All-Sky Data	2018	PUBLICATIONS OF THE ASTRONOMICAL SOCIETY OF AUSTRALIA		10.1017/pasa.2018.19	Görge	Nein	Abstract	nur Technik		Astronomie	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Moro, Christian; Stromberga, Zane; Raikos, Athanasios; Stirling, Allan"	The Effectiveness of Virtual and Augmented Reality in Health Sciences and Medical Anatomy	2017	ANATOMICAL SCIENCES EDUCATION		10.1002/ase.1696	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Banville, Frederic; Provencher, Marianne; Verhulst, Eulalie; Richard, Paul; Couture, Jean-Francois; Flores, Thomas; Allain, Philippe"	Using the Virtual Multitasking Test to Assess the Realization of Intentions: A Preliminary Psychometric Study	2018	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0041	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology	Memory Assessment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Raptis, George E.; Fidas, Christos; Avouris, Nikolaos"	Effects of mixed-reality on players' behaviour and immersion in a cultural tourism game: A cognitive processing perspective	2018	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		10.1016/j.ijhcs.2018.02.003	Görge	Ja	Volltext	kein VR	evtl. Suchen	Psychology / Human factors	Visual perception	HoloLens		73			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dang, Bryan K.; Palicte, Jeland S.; Valdez, Andre; O'Leary-Kelley, Colleen"	Assessing Simulation, Virtual Reality, and Television Modalities in Clinical Training	2018	CLINICAL SIMULATION IN NURSING		10.1016/j.ecns.2018.03.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huber, Tobias; Paschold, Markus; Hansen, Christian; Lang, Hauke; Kneist, Werner"	Artificial Versus Video-Based Immersive Virtual Surroundings: Analysis of Performance and User's Preference	2018	SURGICAL INNOVATION		10.1177/1553350618761756	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Chen; Li, Heng; Kho, Song Y."	VR-embedded BIM immersive system for QS engineering education	2018	COMPUTER APPLICATIONS IN ENGINEERING EDUCATION		10.1002/cae.21915	Görge	Nein	Abstract	nur Technik		Bauwesen / Architektur	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Vieri, Carlin; Lee, Grace; Balram, Nikhil; Jung, Sang Hoon; Yang, Joon Young; Yoon, Soo Young; Kang, In Byeong"	An 18 megapixel 4.3 '' 1443 ppi 120 Hz OLED display for wide field of view high acuity head mounted displays	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.658	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Clark, Andrew J.; Yang, Paul; Khaderi, Khizer R.; Moshfeghi, Andrew A."	Ocular Tolerance of Contemporary Electronic Display Devices	2018	OPHTHALMIC SURGERY LASERS & IMAGING RETINA		10.3928/23258160-20180501-08	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pan, Ye; Sinclair, David; Mitchell, Kenny"	Empowerment and embodiment for collaborative mixed reality systems	2018	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1838	Görge	Ja	Abstract	kein VR		Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bhargava, Ayush; Bertrand, Jeffrey W.; Gramopadhye, Anand K.; Madathil, Kapil C.; Babu, Sabarish V."	Evaluating Multiple Levels of an Interaction Fidelity Continuum on Performance and Learning in Near-Field Training Simulations	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2794639	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Einfluss Interaktion auf Training	Hardwareentwicklung und Evaluation	Training	Razer Hydra	Hydra controller	65			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lungaro, Pietro; Sjoberg, Rickard; Valero, Alfredo Jose Fanghella; Mittal, Ashutosh; Tollmar, Konrad"	Gaze-Aware Streaming Solutions for the Next Generation of Mobile VR Experiences	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2794119	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Luo, Bicheng; Xu, Feng; Richardt, Christian; Yong, Jun-Hai"	Parallax360: Stereoscopic 360 degrees Scene Representation for Head-Motion Parallax	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2794071	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nagao, Ryohei; Matsumoto, Keigo; Narumi, Takuji; Tanikawa, Tomohiro; Hirose, Michitaka"	Ascending and Descending in Virtual Reality: Simple and Safe System using Passive Haptics	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2018.2793038	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pardo, Pedro J.; Isabel Suero, Maria; Luis Perez, Angel"	Correlation between perception of color, shadows, and surface textures and the realism of a scene in virtual reality	2018	JOURNAL OF THE OPTICAL SOCIETY OF AMERICA A-OPTICS IMAGE SCIENCE AND VISION		10.1364/JOSAA.35.00B130	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Brizzi, Filippo; Peppoloni, Lorenzo; Graziano, Alessandro; Di Stefano, Erika; Avizzano, Carlo Alberto; Ruffaldi, Emanuele"	Effects of Augmented Reality on the Performance of Teleoperated Industrial Assembly Tasks in a Robotic Embodiment	2018	IEEE TRANSACTIONS ON HUMAN-MACHINE SYSTEMS		10.1109/THMS.2017.2782490	Görge	Ja	Abstract	kein VR		Manufacturing	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Weech, Seamas; Moon, Jae; Troje, Nikolaus F."	Influence of bone-conducted vibration on simulator sickness in virtual reality	2018	PLOS ONE		10.1371/journal.pone.0194137	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Farra, Sharon L.; Smith, Sherrill J.; Ulrich, Deborah L."	The Student Experience With Varying Immersion Levels of Virtual Reality Simulation	2018	NURSING EDUCATION PERSPECTIVES		10.1097/01.NEP.0000000000000258	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhan, Tao; Lee, Yun-Han; Wu, Shin-Tson"	High-resolution additive light field near-eye display by switchable Pancharatnam-Berry phase lenses	2018	OPTICS EXPRESS		10.1364/OE.26.004863	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ambron, Elisabetta; Miller, Alexander; Kuchenbecker, Katherine J.; Buxbaum, Laurel J.; Coslett, H. Branch"	Immersive Low-Cost Virtual Reality Treatment for Phantom Limb Pain: Evidence from Two Cases	2018	FRONTIERS IN NEUROLOGY		10.3389/fneur.2018.00067	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Luo, Haizhen; Wang, Xiaoyun; Fan, Mengying; Deng, Lingyun; Jian, Chuyao; Wei, Miaoluan; Luo, Jie"	The effect of Visual stimuli on stability and complexity of Postural control	2018	FRONTIERS IN NEUROLOGY		10.3389/fneur.2018.00048	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Keum, Nack-Hyeon; Hong, Seong-Kwan; Chai, Chong Chul; Kwon, Oh-Kyong"	An AMOLED pixel circuit for high image quality of 1000ppi mobile displays in AR and VR applications	2018	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY		10.1002/jsid.638	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tabrizian, Payam; Baran, Perver K.; Smith, William R.; Meentemeyer, Ross K."	Exploring perceived restoration potential of urban green enclosure through immersive virtual environments	2018	JOURNAL OF ENVIRONMENTAL PSYCHOLOGY		10.1016/j.jenvp.2018.01.001	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Segura, Alvaro; Barandiaran, Javier; Moreno, Aitor; Barandiaran, Inigo; Florez, Julian"	Improved virtual reality perception with calibrated stereo and variable focus for industrial use	2018	INTERNATIONAL JOURNAL OF INTERACTIVE DESIGN AND MANUFACTURING - IJIDEM		10.1007/s12008-017-0377-0	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Krichenbauer, Max; Yamamoto, Goshiro; Taketom, Takafumi; Sandor, Christian; Kato, Hirokazu"	Augmented Reality versus Virtual Reality for 3D Object Manipulation	2018	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2658570	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Manipulation in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Oculus Rift DK2	Comuter mouse & custom 3d input device	24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Calogiuri, Giovanna; Litleskare, Sigbjorn; Fagerheim, Kaia A.; Rydgren, Tore L.; Brambilla, Elena; Thurston, Miranda"	Experiencing Nature through Immersive Virtual Environments: Environmental Perceptions, Physical Engagement, and Affective Responses during a Simulated Nature Walk	2018	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2017.02321	Görge	Ja	Sample		Heart rate and emotional response of walking in nature in VR and in reality	Psychology / Human factors	Emotions / Empathy / Fear	Samsung S7 on Samsung Gear VR	Treadmill	26			x	x	 	 	 	x	x	 	 	 	 	 	 	 	x	x	x	 	 	x	 	x
WOS	"Gerig, Nicolas; Mayo, Johnathan; Baur, Kilian; Wittmann, Frieder; Riener, Robert; Wolf, Peter"	Missing depth cues in virtual reality limit performance and quality of three dimensional reaching movements	2018	PLOS ONE		10.1371/journal.pone.0189275	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	ectl. Reaching in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	HTC Vive	HTC Vive controllers	56			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huang, Jiawei; Bagher, Mahda M.; Ross, Heather Dohn; Piekielek, Nathan; Wallgrun, Jan Oliver; Zhao, Jiayan; Klippel, Alexander"	From Archive, to Access, to Experience-Historical Documents as a Basis for Immersive Experiences	2018	JOURNAL OF MAP & GEOGRAPHY LIBRARIES		10.1080/15420353.2018.1498427	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bruno, Fabio; Petriaggi, Barbara Davidde; Mangeruga, Marino; Cozza, Marco"	An underwater tablet for documentation and use of submerged archaeological sites	2018	ARCHEOMATICA-TECNOLOGIE PER I BENI CULTURALI		00.0000/0042	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dinis, Fabio Matoseiro; Martins, Joao Pocas; Carvalho, Barbara Rangel; Guimaraes, Ana Sofia"	Disseminating Civil Engineering through Virtual Reality: An Immersive Interface	2018	INTERNATIONAL JOURNAL OF ONLINE ENGINEERING		10.3991/ijoe.v14i05.7788	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Leotta, Alfio; Ross, Miriam"	Touring the 'World Picture': virtual reality and the tourist gaze	2018	STUDIES IN DOCUMENTARY FILM		10.1080/17503280.2018.1503859	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yuan, Sze Ngar Vanessa; Ip, Horace Ho Shing"	Using virtual reality to train emotional and social skills in children with autism spectrum disorder	2018	LONDON JOURNAL OF PRIMARY CARE		10.1080/17571472.2018.1483000	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, Yea Som; Sohn, Bong-Soo"	Immersive Gesture Interfaces for Navigation of 3D Maps in HMD-Based Mobile Virtual Environments	2018	MOBILE INFORMATION SYSTEMS		10.1155/2018/2585797	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ye, Quan; Hu, Wenshan; Zhou, Hong; Lei, Zhongcheng; Guan, Shiqi"	VR Interactive Feature of HTML5-based WebVR Control Laboratory by Using Head-mounted Display	2018	INTERNATIONAL JOURNAL OF ONLINE ENGINEERING		10.3991/ijoe.v14i03.8112	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lupu, Robert Gabriel; Irimia, Danut Constantin; Ungureanu, Florina; Poboroniuc, Marian Silviu; Moldoveanu, Alin"	BCI and FES Based Therapy for Stroke Rehabilitation Using VR Facilities	2018	WIRELESS COMMUNICATIONS & MOBILE COMPUTING		10.1155/2018/4798359	Görge	Ja	Abstract	nur Technik		Medizin	Rehabilitation / Treatment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sagardia, Mikel; Hulin, Thomas"	Multimodal Evaluation of the Differences between Real and Virtual Assemblies	2018	IEEE TRANSACTIONS ON HAPTICS		10.1109/TOH.2017.2741488	Görge	Ja	Sample		Using a custom built haptics interface for an assembly task in VR and the real world	Ergonomie	Assembly	NVIS nVisor ST50	HUG bimanual haptic device	24	x		 	x	 	 	 	x	 	 	 	 	 	x	 	 	x	 	x	 	 	 	 	x
WOS	"Ryu, Jaeyeol; Muravyev, N. V.; Putilin, A. N."	Requirements for Optical Systems for Virtual Displays	2018	BULLETIN OF THE LEBEDEV PHYSICS INSTITUTE		10.3103/S1068335618010049	Görge	Nein	Abstract	nur Technik		Human Biology	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mittelstaedt, Justin; Wacker, Jan; Stelling, Dirk"	Effects of display type and motion control on cybersickness in a virtual bike simulator	2018	DISPLAYS		10.1016/j.displa.2018.01.002	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Du, Jing; Zou, Zhengbo; Shi, Yangming; Zhao, Dong"	Zero latency: Real-time synchronization of BIM data in virtual reality for collaborative decision-making	2018	AUTOMATION IN CONSTRUCTION		10.1016/j.autcon.2017.10.009	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Kang, Jiyoung	Effect of Interaction Based on Augmented Context in Immersive Virtual Reality Environment	2018	WIRELESS PERSONAL COMMUNICATIONS		10.1007/s11277-017-4954-0	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		VR Allgemein	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Piskorz, Joanna; Czub, Marcin"	Effectiveness of a virtual reality intervention to minimize pediatric stress and pain intensity during venipuncture	2018	JOURNAL FOR SPECIALISTS IN PEDIATRIC NURSING		10.1111/jspn.12201	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kimura, Kazushige; Reichert, James F.; Olson, Ashley; Pouya, Omid Ranjbar; Wang, Xikui; Moussavi, Zahra; Kelly, Debbie M."	Orientation in Virtual Reality Does Not Fully Measure Up to the Real-World	2017	SCIENTIFIC REPORTS		10.1038/s41598-017-18289-8	Görge	Ja	Sample		Comparison of orientation between VR and real world	Psychology / Human factors	Movement / Navigation	Oculus Rift DK2	VRNChair	64			x	x	 	 	x	 	 	 	x	 	 	 	x	x	x	 	x	 	 	x	x	x
WOS	"Rigas, Ioannis; Raffle, Hayes; Komogortsev, Oleg V."	Hybrid PS-V Technique: A Novel Sensor Fusion Approach for Fast Mobile Eye-Tracking With Sensor-Shift Aware Correction	2017	IEEE SENSORS JOURNAL		10.1109/JSEN.2017.2762704	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Daga, Fablo B.; Diniz-Filho, Alberto; Boer, Erwin R.; Gracitelli, Carolina P. B.; Abe, Ricardo Y.; Medeiros, Felipe A."	Fear of falling and postural reactivity in patients with glaucoma	2017	PLOS ONE		10.1371/journal.pone.0187220	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Balance	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nomura, Yoshihiko; Fukuoka, Hiroaki; Sakamoto, Ryota; Sugiura, Tokuhiro"	Motion Instruction Method Using Head Motion-Associated Virtual Stereo Rearview	2017	TECHNOLOGIES		10.3390/technologies5040077	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Luo, Hao; Pan, Tien-Szu; Pan, Jeng-Shyang; Chu, Shu-Chuan; Yang, Bian"	Development of a Three-Dimensional Multimode Visual Immersive System With Applications in Telepresence	2017	IEEE SYSTEMS JOURNAL		10.1109/JSYST.2015.2410533	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ye, Weibing; Liu, Shijuan; Song, Fei"	History and Current State of Virtual Reality Technology and Its Application in Language Education	2017	JOURNAL OF TECHNOLOGY AND CHINESE LANGUAGE TEACHING		00.0000/0043	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Micarelli, Alessandro; Viziano, Andrea; Augimeri, Ivan; Micarelli, Domenico; Alessandrini, Marco"	Three-dimensional head-mounted gaming task procedure maximizes effects of vestibular rehabilitation in unilateral vestibular hypofunction: a randomized controlled pilot trial	2017	INTERNATIONAL JOURNAL OF REHABILITATION RESEARCH		10.1097/MRR.0000000000000244	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Suzuki, Keisuke; Roseboom, Warrick; Schwartzman, David J.; Seth, Anil K."	A Deep-Dream Virtual Reality Platform for Studying Altered Perceptual Phenomenology	2017	SCIENTIFIC REPORTS		10.1038/s41598-017-16316-2	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Navarro-Haro, Maria V.; Lopez del Hoyo, Yolanda; Campos, Daniel; Linehan, Marsha M.; Hoffman, Hunter G.; Garcia-Palacios, Azucena; Modrego-Alarcon, Marta; Borao, Luis; Garcia-Campayo, Javier"	Meditation experts try Virtual Reality Mindfulness: A pilot study evaluation of the feasibility and acceptability of Virtual Reality to facilitate mindfulness practice in people attending a Mindfulness conference.	2017	PLOS ONE		10.1371/journal.pone.0187777	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Training	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Ramsey, Eleanor	VIRTUAL WOLVERHAMPTON: RECREATING THE HISTORIC CITY IN VIRTUAL REALITY	2017	ARCHNET-IJAR INTERNATIONAL JOURNAL OF ARCHITECTURAL RESEARCH		10.26687/archnet-ijar.v11i3.1395	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Naish, Jonathan; Burns, Alex"	Minimising operator dose during JET shutdown using virtual	2017	FUSION ENGINEERING AND DESIGN		10.1016/j.fusengdes.2017.03.131	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wischgoll, Thomas; Glines, Madison; Whitlock, Tyler; Guthrie, Bradley R.; Mowrey, Corinne M.; Parikh, Pratik J.; Flach, John"	Display Infrastructure for Virtual Environments	2017	JOURNAL OF IMAGING SCIENCE AND TECHNOLOGY		10.2352/J.ImagingSci.Technol.2017.61.6.060406	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Baumeister, James; Ssin, Seung Youb; ElSayed, Neven A. M.; Dorrian, Jillian; Webb, David P.; Walsh, James A.; Simon, Timothy M.; Irlitti, Andrew; Smith, Ross T.; Kohler, Mark; Thomas, Bruce H."	Cognitive Cost of Using Augmented Reality Displays	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2735098	Görge	Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huber, T.; Paschold, M.; Hansen, C.; Lang, H.; Kneist, W."	I will do laparoscopy somewhere else. Total, highly immersive virtual reality without side effects?	2017	CHIRURG		10.1007/s00104-017-0465-5	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Munafo, Justin; Diedrick, Meg; Stoffregen, Thomas A."	The virtual reality head-mounted display Oculus Rift induces motion sickness and is sexist in its effects	2017	EXPERIMENTAL BRAIN RESEARCH		10.1007/s00221-016-4846-7	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huber, Tobias; Paschold, Markus; Hansen, Christian; Wunderling, Tom; Lang, Hauke; Kneist, Werner"	New dimensions in surgical training: immersive virtual reality laparoscopic simulation exhilarates surgical staff	2017	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		10.1007/s00464-017-5500-6	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung	evtl. Training von Chirurgie	Medizin	Training	HTC Vive	laparoscopic simulator	10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Trombetta, Mateus; Bazzanello Henrique, Patricia Paula; Brum, Manoela Rogofski; Colussi, Eliane Lucia; Bertoletti De Marchi, Ana Carolina; Rieder, Rafael"	Motion Rehab AVE 3D: A VR-based exergame for post-stroke rehabilitation	2017	COMPUTER METHODS AND PROGRAMS IN BIOMEDICINE		10.1016/j.cmpb.2017.08.008	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kelly, Jonathan W.; Cherep, Lucia A.; Siegel, Zachary D."	Perceived Space in the HTC Vive	2017	ACM TRANSACTIONS ON APPLIED PERCEPTION		10.1145/3106155	Görge	Ja	Sample		Comparison of perceived sitances in VR and real world	Hardwareentwicklung und Evaluation	Visual perception	HTC Vive	Controllers, Remote Control	76	x		x	x	 	x	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	x
WOS	"Sauer, Igor M.; Queisner, Moritz; Tang, Peter; Moosburner, Simon; Hoepfner, Ole; Horner, Rosa; Lohmann, Rudiger; Pratschke, Johann"	Mixed Reality in Visceral Surgery Development of a Suitable Workflow and Evaluation of Intraoperative Use-cases	2017	ANNALS OF SURGERY		10.1097/SLA.0000000000002448	Görge	Ja	Abstract	kein VR		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Deb, Shuchisnigdha; Carruth, Daniel W.; Sween, Richard; Strawderman, Lesley; Garrison, Teena M."	Efficacy of virtual reality in pedestrian safety research	2017	APPLIED ERGONOMICS		10.1016/j.apergo.2017.03.007	Görge	Ja	Sample		Analysis of spatial perception in VR for safe road crossing of pedestrians	Ergonomie	Visual perception	HTC Vive		21	x		 	x	 	 	x	 	 	 	 	 	 	 	 	x	x	 	 	x	 	x	 	 
WOS	"Pozeg, Polona; Palluel, Estelle; Ronchi, Roberta; Solca, Marco; Al-Khodairy, Abdul-Wahab; Jordan, Xavier; Kassouha, Ammar; Blanke, Olaf"	Virtual reality improves embodiment and neuropathic pain caused by spinal cord injury	2017	NEUROLOGY		10.1212/WNL.0000000000004585	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Choi, Hojong; Ryu, Jae Myung; Kim, Jin Ha"	Tolerance Analysis of Focus-adjustable Head-mounted Displays	2017	CURRENT OPTICS AND PHOTONICS		10.3807/COPP.2017.1.5.474	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gerber, Stephan M.; Jeitziner, Marie-Madlen; Wyss, Patric; Chesham, Alvin; Urwyler, Prabitha; Muri, Rene M.; Jakob, Stephan M.; Nef, Tobias"	Visuo-acoustic stimulation that helps you to relax: A virtual reality setup for patients in the intensive care unit	2017	SCIENTIFIC REPORTS		10.1038/s41598-017-13153-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yang, Tong; Jin, Guo-Fan; Zhu, Jun"	Automated design of freeform imaging systems	2017	LIGHT-SCIENCE & APPLICATIONS		10.1038/lsa.2017.81	Görge	Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yamashita, Takuzo; Pal, Mahendra Kumar; Matsuzaki, Kazutoshi; Tomozawa, Hiromitsu"	Development of a Virtual Reality Experience System for Interior Damage Due to an Earthquake - Utilizing E-Defense Shake Table Test -	2017	JOURNAL OF DISASTER RESEARCH		10.20965/jdr.2017.p0882	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Stepan, Katelyn; Zeiger, Joshua; Hanchuk, Stephanie; Del Signore, Anthony; Shrivastava, Raj; Govindaraj, Satish; Iloreta, Alfred"	Immersive virtual reality as a teaching tool for neuroanatomy	2017	INTERNATIONAL FORUM OF ALLERGY & RHINOLOGY		10.1002/alr.21986	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Chirurgie-Training	Medizin	Training	Oculus Rift	Controller	66			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Banaei, Maryam; Hatami, Javad; Yazdanfar, Abbas; Gramann, Klaus"	Walking through Architectural Spaces: The Impact of Interior Forms on Human Brain Dynamics	2017	FRONTIERS IN HUMAN NEUROSCIENCE		10.3389/fnhum.2017.00477	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Bauwesen / Architektur	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gomez, Jocelyn; Hoffman, Hunter G.; Bistricky, Steven L.; Gonzalez, Miriam; Rosenberg, Laura; Sampaio, Mariana; Garcia-Palacios, Azucena; Navarro-Haro, Maria V.; Alhalabi, Wadee; Rosenberg, Marta; Meyer, Walter J., III; Linehan, Marsha M."	"The Use of Virtual Reality Facilitates Dialectical Behavior Therapy (R) ""Observing Sounds and Visuals"" Mindfulness Skills Training Exercises for a Latino Patient with Severe Burns: A Case Study"	2017	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2017.01611	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Maereg, Andualem Tadesse; Nagar, Atulya; Reid, David; Secco, Emanuele L."	Wearable Vibrotactile Haptic Device for Stiffness Discrimination during Virtual Interactions	2017	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2017.00042	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Freina, Laura; Bottino, Rosa; Tavella, Mauro; Chiorri, Carlo"	Evaluation of Visuo-Spatial Perspective Taking Skills using a Digital Game with Different Levels of Immersion	2017	INTERNATIONAL JOURNAL OF SERIOUS GAMES		10.17083/ijsg.v4i3.178	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Liang, Hui; Chang, Jian; Deng, Shujie; Chen, Can; Tong, Ruofeng; Zhang, Jian Jun"	Exploitation of multiplayer interaction and development of virtual puppetry storytelling using gesture control and stereoscopic devices	2017	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1727	Görge	Ja	Abstract	nur Technik		Bildungswesen	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dorozhkin, Denis; Olasky, Jaisa; Jones, Daniel B.; Schwaitzberg, Steven D.; Jones, Stephanie B.; Cao, Caroline G. L.; Molina, Marcos; Henriques, Steven; Wang, Jinling; Flinn, Jeff; De, Suvranu"	OR fire virtual training simulator: design and face validity	2017	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		10.1007/s00464-016-5379-7	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Papaefthymiou, Margarita; Hildenbrand, Dietmar; Papagiannakis, George"	A Conformal Geometric Algebra Code Generator Comparison for Virtual Character Simulation in Mixed Reality	2017	ADVANCES IN APPLIED CLIFFORD ALGEBRAS		10.1007/s00006-016-0689-3	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tidoni, Emmanuele; Abu-Alqumsan, Mohammad; Leonardis, Daniele; Kapeller, Christoph; Fusco, Gabriele; Guger, Cristoph; Hintermller, Cristoph; Peer, Angelika; Frisoli, Antonio; Tecchia, Franco; Bergamasco, Massimo; Aglioti, Salvatore Maria"	Local and Remote Cooperation With Virtual and Robotic Agents: A P300 BCI Study in Healthy and People Living With Spinal Cord Injury	2017	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING		10.1109/TNSRE.2016.2626391	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gootjes-Dreesbach, Luise; Pickup, Lyndsey C.; Fitzgibbon, Andrew W.; Glennerster, Andrew"	Comparison of view-based and reconstruction-based models of human navigational strategy	2017	JOURNAL OF VISION		10.1167/17.9.11	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Turban, Laura; Urban, Fabrice; Guillotel, Philippe"	Extrafoveal Video Extension for an Immersive Viewing Experience	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2527649	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ragan, Eric D.; Scerbo, Siroberto; Bacim, Felipe; Bowman, Doug A."	Amplified Head Rotation in Virtual Reality and the Effects on 3D Search, Training Transfer, and Spatial Orientation	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2601607	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Punpongsanon, Parinya; Guy, Emilie; Iwai, Daisuke; Sato, Kosuke; Boubekeur, Tamy"	Extended LazyNav: Virtual 3D Ground Navigation for Large Displays and Head-Mounted Displays	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2586071	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Silva, Igor Macedo; Moioli, Renan C."	A method for creating interactive, user-resembling avatars	2017	PEERJ COMPUTER SCIENCE		00.0000/0044	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Matzen, Kevin; Cohen, Michael F.; Evans, Bryce; Kopf, Johannes; Szeliski, Richard"	Low-Cost 360 Stereo Photography and Video Capture	2017	ACM TRANSACTIONS ON GRAPHICS		10.1145/3072959.3073645	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Hui, Zhang	Head-mounted display-based intuitive virtual reality training system for the mining industry	2017	INTERNATIONAL JOURNAL OF MINING SCIENCE AND TECHNOLOGY		10.1016/j.ijmst.2017.05.005	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Mining	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Puyana-Romero, Virginia; Solange Lopez-Segura, Lilian; Maffei, Luigi; Hernandez-Molina, Ricardo; Masullo, Massimiliano"	Interactive Soundscapes: 360 degrees-Video Based Immersive Virtual Reality in a Tool for the Participatory Acoustic Environment Evaluation of Urban Areas	2017	ACTA ACUSTICA UNITED WITH ACUSTICA		10.3813/AAA.919086	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nesbitt, Keith; Davis, Simon; Blackmore, Karen; Nalivaiko, Eugene"	Correlating reaction time and nausea measures with traditional measures of cybersickness	2017	DISPLAYS		10.1016/j.displa.2017.01.002	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Maimone, Andrew; Georgiou, Andreas; Kollin, Joel S."	Holographic Near-Eye Displays for Virtual and Augmented Reality	2017	ACM TRANSACTIONS ON GRAPHICS		10.1145/3072959.3073624	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ziak, Peter; Holm, Anders; Halicka, Juraj; Mojzis, Peter; Pinero, David P."	Amblyopia treatment of adults with dichoptic training using the virtual reality oculus rift head mounted display: preliminary results	2017	BMC OPHTHALMOLOGY		10.1186/s12886-017-0501-8	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ahamba, Godson; Roberts, David; Eachus, Peter"	Triggering and measuring social inhibitory response in humans immersed in interactions with virtual humans	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0045	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hodrien, Andrew; Galpin, Adam; Roberts, David; Kenney, Laurence"	Exploring the impact of hand movement delays and hand appearance on myoelectric prosthesis embodiment using Immersive Virtual Reality	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0046	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Martel, Erin; Muldner, Kasia"	Controlling VR games: control schemes and the player experience	2017	ENTERTAINMENT COMPUTING		10.1016/j.entcom.2017.04.004	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Salomoni, Paola; Prandi, Catia; Roccetti, Marco; Casanova, Lorenzo; Marchetti, Luca; Marfia, Gustavo"	Diegetic user interfaces for virtual environments with HMDs: a user experience study with oculus rift	2017	JOURNAL ON MULTIMODAL USER INTERFACES		10.1007/s12193-016-0236-5	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visual perception	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ghita, Alexandra; Ferrer-Garcia, Marta; Gutierrez-Maldonado, Jos"	Behavioral, craving, and anxiety responses among light and heavy drinking college students in alcohol-related virtual environments	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0047	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gavgani, Alireza Mazloumi; Nesbitt, Keith V.; Blackmore, Karen L.; Nalivaiko, Eugene"	Profiling subjective symptoms and autonomic changes associated with cybersickness	2017	AUTONOMIC NEUROSCIENCE-BASIC & CLINICAL		10.1016/j.autneu.2016.12.004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ferrer-Garcia, Marta; Porras-Garcia, Bruno; Gonzalez-Ibanez, Cristina; Gracia-Blanes, Mireia; Vilalta-Abella, Ferran; Pla-Sanjuanelo, Joana; Riva, Giuseppe; Dakanalis, Antonios; Achotegui-Loizate, Jose; Talarn-Caparros, Antoni; Ribas-Sabate, Joan; Andreu-Gracia, Alexis; Diaz-Marsa, Marina; Monras-Arnau, Miquel; Serrano-Troncoso, Eduardo; Treasure, Janet; Gutierrez-Maldonado, Jose"	"Does owning a ""fatter"" virtual body increase body anxiety in college students?"	2017	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0048	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ida, Hirofumi; Mohapatra, Sambit; Aruin, Alexander"	Control of vertical posture while elevating one foot to avoid a real or virtual obstacle	2017	EXPERIMENTAL BRAIN RESEARCH		10.1007/s00221-017-4929-0	Görge	Ja	Sample		interssant. Vergleich Ausweichen von Hindernissen	Ergonomie	Movement / Navigation	iWear VR920, Vuzix Corp.		10		x	 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	 	 	 	 	x
WOS	"Niehorster, Diederick C.; Li, Li; Lappe, Markus"	The Accuracy and Precision of Position and Orientation Tracking in the HTC Vive Virtual Reality System for Scientific Research	2017	I-PERCEPTION		10.1177/2041669517708205	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Seo, Min-Woo; Choi, Song-Woo; Lee, Sang-Lyn; Oh, Eui-Yeol; Baek, Jong-Sang; Kang, Suk-Ju"	Photosensor-Based Latency Measurement System for Head-Mounted Displays	2017	SENSORS		10.3390/s17051112	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Smith, Ashley; Carlow, Klancy; Biddulph, Tara; Murray, Brooke; Paton, Melissa; Harvie, Daniel S."	Contextual modulation of pain sensitivity utilising virtual environments	2017	BRITISH JOURNAL OF PAIN		10.1177/2049463717698349	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tieri, Gaetano; Gioia, Annamaria; Scandola, Michele; Pavone, Enea F.; Aglioti, Salvatore M."	Visual appearance of a virtual upper limb modulates the temperature of the real hand: a thermal imaging study in Immersive Virtual Reality	2017	EUROPEAN JOURNAL OF NEUROSCIENCE		10.1111/ejn.13545	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chittaro, Luca; Sioni, Riccardo; Crescentini, Cristiano; Fabbro, Franco"	Mortality salience in virtual reality experiences and its effects on users' attitudes towards risk	2017	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES		10.1016/j.ijhcs.2017.01.002	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Hua, Hong	Enabling Focus Cues in Head-Mounted Displays	2017	PROCEEDINGS OF THE IEEE		10.1109/JPROC.2017.2648796	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Anglin, J. M.; Sugiyama, T.; Liew, S. -L."	Visuomotor adaptation in head-mounted virtual reality versus conventional training	2017	SCIENTIFIC REPORTS		10.1038/srep45469	Görge	Ja	Sample		Training of visumotor skills in VR and in reality	Psychology / Human factors	Training	Oculus Rift DK2		24			x	x	 	 	x	 	 	 	 	x	 	 	x	 	x	 	x	 	 	x	 	x
WOS	Leanza, Federica	Consumer Neuroscience: the traditional and VR TV Commercial	2017	NEUROPSYCHOLOGICAL TRENDS		10.7358/neur-2017-021-lean	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Regan, Matthew; Miller, Gavin S. P."	The Problem of Persistence with Rotating Displays	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2656979	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"de Jesus Oliveira, Victor Adriel; Brayda, Luca; Nedel, Luciana; Maciel, Anderson"	Designing a Vibrotactile Head-mounted Display for Spatial Awareness in 3D Spaces	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2657238	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, MyoungGon; Cho, SungIk; Tanh, Quang Tran; Kim, Seong-Pil; Kwon, Ohung; Han, JungHyun"	Scaled Jump in Gravity-reduced Virtual Environments	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2657139	Görge	Nein	Abstract	kein VR		Ingenieurwesen / Physik	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Li, Changyang; Liang, Wei; Quigley, Chris; Zhao, Yibiao; Yu, Lap-Fai"	Earthquake Safety Training through Virtual Drills	2017	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2017.2656958	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Egger, Jan; Gall, Markus; Wallner, Juergen; Boechat, Pedro; Hann, Alexander; Li, Xing; Chen, Xiaojun; Schmalstieg, Dieter"	HTC Vive MeVisLab integration via OpenVR for medical applications	2017	PLOS ONE		10.1371/journal.pone.0173972	Görge	Nein	Abstract	nur Technik		Medizin	Model design	HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Smolyanskiy, Nikolai; Gonzalez-Franco, Mar"	Stereoscopic First Person View System for Drone Navigation	2017	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2017.00011	Görge	Ja	Abstract	nur Technik		Ingenieurwesen / Physik	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cho, Hye-Seung; Kim, Hyoung-Gook"	Interactive sound experience interface based on virtual concert hall	2017	JOURNAL OF THE ACOUSTICAL SOCIETY OF KOREA		10.7776/ASK.2017.36.2.130	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wu, Chien-Min; Hsu, Chih-Wen; Lee, Tzu-Kuei; Smith, Shana"	A virtual reality keyboard with realistic haptic feedback in a fully immersive virtual environment	2017	VIRTUAL REALITY		10.1007/s10055-016-0296-6	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Harjunen, Ville J.; Ahmed, Imtiaj; Jacucci, Giulio; Ravaja, Niklas; Spape, Michiel M."	Manipulating Bodily Presence Affects Cross-Modal Spatial Attention: A Virtual-Reality-Based ERP Study	2017	FRONTIERS IN HUMAN NEUROSCIENCE		10.3389/fnhum.2017.00079	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Aram; Darakjian, Nora; Finley, James M."	Walking in fully immersive virtual environments: an evaluation of potential adverse effects in older adults and individuals with Parkinson's disease	2017	JOURNAL OF NEUROENGINEERING AND REHABILITATION		10.1186/s12984-017-0225-2	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gonzalez-Franco, Mar; Pizarro, Rodrigo; Cermeron, Julio; Li, Katie; Thorn, Jacob; Hutabarat, Windo; Tiwari, Ashutosh; Bermell-Garcia, Pablo"	Immersive Mixed Reality for Manufacturing Training	2017	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2017.00003	Görge	Ja	Abstract	kein VR		Manufacturing	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Castro-Gonzalez, David; Hernando Barbosa, Luis; Prada-Jimenez, Vladimir; Conde-Mendez, Gregory"	Design and development of an immersive virtual environment for teaching of the superposition of movements principle for engineering students	2017	REVISTA EDUCACION EN INGENIERIA		10.15675/gepros.v12i1.1605	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Fang, Sandra; Peshkin, Michael; MacIver, Malcolm A."	Human-in-the-loop active electrosense	2017	BIOINSPIRATION & BIOMIMETICS		10.1088/1748-3190/12/1/014001	Görge	Ja	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jang, Youngkyoon; Jeon, Ikbeom; Kim, Tae-Kyun; Woo, Woontack"	Metaphoric Hand Gestures for Orientation-Aware VR Object Manipulation With an Egocentric Viewpoint	2017	IEEE TRANSACTIONS ON HUMAN-MACHINE SYSTEMS		10.1109/THMS.2016.2611824	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ahn, Yong-Deok; Kang, Suk-Ju"	Overlapped-Area Removal-Based Image Interpolation for Head-Mounted Displays	2016	JOURNAL OF DISPLAY TECHNOLOGY		10.1109/JDT.2016.2617889	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jurkojc, Jacek; Wodarski, Piotr; Bieniek, Andrzej; Gzik, Marek; Michnik, Robert"	Influence of changing frequency and various sceneries on stabilometric parameters and on the effect of adaptation in an immersive 3D virtual environment	2017	ACTA OF BIOENGINEERING AND BIOMECHANICS		10.5277/ABB-00784-2016-02	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Inamura, Tetsunari; Unenaka, Satoshi; Shibuya, Satoshi; Ohki, Yukari; Oouchida, Yutaka; Izumi, Shin-ichi"	Development of VR platform for cloud-based neurorehabilitation and its application to research on sense of agency and ownership	2017	ADVANCED ROBOTICS		10.1080/01691864.2016.1264885	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dennison, Mark Stephen; D'Zmura, Michael"	Cybersickness without the wobble: Experimental results speak against postural instability theory	2017	APPLIED ERGONOMICS		10.1016/j.apergo.2016.06.014	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Moro, Christian; Stromberga, Zane; Stirling, Allan"	Virtualisation devices for student learning: Comparison between desktop-based (Oculus Rift) and mobile-based (Gear VR) virtual reality in medical and health science education	2017	AUSTRALASIAN JOURNAL OF EDUCATIONAL TECHNOLOGY		10.14742/ajet.3840	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training	Samsung Gear VR & Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Palmisano, Stephen; Mursic, Rebecca; Kim, Juno"	Vection and cybersickness generated by head-and-display motion in the Oculus Rift	2017	DISPLAYS		10.1016/j.displa.2016.11.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Park, Gangrae; Choi, Hyunmin; Lee, Uichin; Chin, Seongah"	Virtual figure model crafting with VR HMD and Leap Motion	2017	IMAGING SCIENCE JOURNAL		10.1080/13682199.2017.1355090	Görge	Ja	Abstract	nur Technik		Psychology / Human factors	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Neubauer, Daniel; Paepcke-Hjeltness, Verena; Evans, Pete; Barnhart, Betsy; Finseth, Tor"	Experiencing Technology Enabled Empathy Mapping	2017	DESIGN JOURNAL		10.1080/14606925.2017.1352966	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Design	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yasuda, Kazuhiro; Muroi, Daisuke; Ohira, Masahiro; Iwata, Hiroyasu"	Validation of an immersive virtual reality system for training near and far space neglect in individuals with stroke: a pilot study	2017	TOPICS IN STROKE REHABILITATION		10.1080/10749357.2017.1351069	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Roth, Thorsten; Weier, Martin; Hinkenjann, Andre; Li, Yongmin; Slusallek, Philipp"	A Quality-Centered Analysis of Eye Tracking Data in Foveated Rendering	2017	JOURNAL OF EYE MOVEMENT RESEARCH		10.16910/jemr.10.5.2	Görge	Ja	Volltext	nur Technik	evtl. Interessant: Wahrnehmung in VR	Hardwareentwicklung und Evaluation	Visual perception	Oculus Rift DK2		15			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Menshikova, Galina Ya.; Kovalev, Artem I.; Klimova, Oxana A.; Barabanschikova, Valentina V."	The application of virtual reality technology to testing resistance to motion sickness	2017	PSYCHOLOGY IN RUSSIA-STATE OF THE ART		10.11621/pir.2017.0310	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Saldana, Santiago J.; Marsh, Anthony P.; Rejeski, W. Jack; Haberl, Jack K.; Wu, Peggy; Rosenthal, Scott; Ip, Edward H."	Assessing balance through the use of a low-cost head-mounted display in older adults: a pilot study	2017	CLINICAL INTERVENTIONS IN AGING		10.2147/CIA.S141251	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sidanin, Predrag; Lazic, Marko; Obradovic, Ratko"	Immersive Virtual Reality Course at the Digital Production Studies	2017	FME TRANSACTIONS		10.5937/fmet1702205S	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Halabi, Osama; El-Seoud, Samir A.; Alja'am, Jihad M.; Alpona, Hena; Al-Hemadi, Moza; Al-Hassan, Dabia"	Design of Immersive Virtual Reality System to Improve Communication Skills in Individuals with Autism	2017	INTERNATIONAL JOURNAL OF EMERGING TECHNOLOGIES IN LEARNING		10.3991/ijet.v12i05.6766	Görge	Ja	Abstract	nur Technik		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nunnerley, Joanne; Gupta, Swati; Snell, Deborah; King, Marcus"	Training wheelchair navigation in immersive virtual environments for patients with spinal cord injury - end-user input to design an effective system	2017	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY		10.1080/17483107.2016.1176259	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Wheelchair Control	Medizin	Movement / Navigation	Oculus Rift	Dynamic Control wheelchair joystick	12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jimenez Fernandez-Palacios, Belen; Morabito, Daniele; Remondino, Fabio"	Access to complex reality-based 3D models using virtual reality solutions	2017	JOURNAL OF CULTURAL HERITAGE		10.1016/j.culher.2016.09.003	Görge	Ja	Abstract	nur Technik		Archäologie / Museen	Visualisation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Osumi, M.; Ichinose, A.; Sumitani, M.; Wake, N.; Sano, Y.; Yozu, A.; Kumagaya, S.; Kuniyoshi, Y.; Morioka, S."	Restoring movement representation and alleviating phantom limb pain through short-term neurorehabilitation with a virtual reality system	2017	EUROPEAN JOURNAL OF PAIN		10.1002/ejp.910	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ramirez Alvarado, Maria del Mar; Navarrete-Cardero, Luis"	Innovative Experiences in Interactive Devices applied to videogames: The Oculus Rift Case	2017	ADCOMUNICA-REVISTA CIENTIFICA DE ESTRATEGIAS TENDENCIAS E INNOVACION EN COMMUNICACION		10.6035/2174-0992.2017.13.12	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Alshaer, Abdulaziz; Regenbrecht, Holger; O'Hare, David"	Immersion factors affecting perception and behaviour in a virtual reality power wheelchair simulator	2017	APPLIED ERGONOMICS		10.1016/j.apergo.2016.05.003	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Ergonomie	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jones, Ted; Moore, Todd; Choo, James"	The Impact of Virtual Reality on Chronic Pain	2016	PLOS ONE		10.1371/journal.pone.0167523	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Slater, Mel; Sanchez-Vives, Maria V."	Enhancing Our Lives with Immersive Virtual Reality	2016	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2016.00074	Görge	Nein	Abstract	Review									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bordegoni, Monica; Covarrubias, Mario; Caruso, Giandomenico; Cugini, Umberto"	Freehand Gesture and Tactile Interaction for Shape Design	2016	JOURNAL OF COMPUTING AND INFORMATION SCIENCE IN ENGINEERING		10.1115/1.4033230	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Foerster, Rebecca M.; Poth, Christian H.; Behler, Christian; Botsch, Mario; Schneider, Werner X."	Using the virtual reality device Oculus Rift for neuropsychological assessment of visual processing capabilities	2016	SCIENTIFIC REPORTS		10.1038/srep37016	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Measurement of body functions	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Popovski, Filip; Nedelkovski, Igor; Mijakovska, Svetlana; Nalevska, Gorica Popovska"	Interactive Scientific Visualization in 3D Virtual Reality Model	2016	TEM JOURNAL-TECHNOLOGY EDUCATION MANAGEMENT INFORMATICS		10.18421/TEM54-04	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Olszewski, Kyle; Lim, Joseph J.; Saito, Shunsuke; Li, Hao"	High-Fidelity Facial and Speech Animation for VR HMDs	2016	ACM TRANSACTIONS ON GRAPHICS		10.1145/2980179.2980252	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Patney, Anjul; Salvi, Marco; Kim, Joohwan; Kaplanyan, Anton; Wyman, Chris; Benty, Nir; Luebke, David; Lefohn, Aaron"	Towards Foveated Rendering for Gaze-Tracked Virtual Reality	2016	ACM TRANSACTIONS ON GRAPHICS		10.1145/2980179.2980246	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Coxon, Matthew; Kelly, Nathan; Page, Sarah"	Individual differences in virtual reality: Are spatial presence and spatial ability linked?	2016	VIRTUAL REALITY		10.1007/s10055-016-0292-x	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Vergleich räumliche Wahrnehmung	Human Biology	Visual perception	Oculus Rift DK2	None	50			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Silva, Gustavo R.; Donat, Julia C.; Rigoli, Marcelo M.; de Oliveira, Fernando R.; Kristensen, Christian H."	A questionnaire for measuring presence in virtual environments: factor analysis of the presence questionnaire and adaptation into Brazilian Portuguese	2016	VIRTUAL REALITY		10.1007/s10055-016-0295-7	Görge	Ja	Abstract	nur Technik		Psychology / Human factors	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"McGill, Mark; Williamson, John H.; Brewster, Stephen"	Examining The Role of Smart TVs and VR HMDs in Synchronous At-a-Distance Media Consumption	2016	ACM TRANSACTIONS ON COMPUTER-HUMAN INTERACTION		10.1145/2983530	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ritz, Leah T.; Buss, Alan R."	A Framework for Aligning Instructional Design Strategies with Affordances of CAVE Immersive Virtual Reality Systems	2016	TECHTRENDS		10.1007/s11528-016-0085-9	Görge	Ja	Abstract	kein VR		Softwareentwicklung	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pritchard, Stephen C.; Zopf, Regine; Polito, Vince; Kaplan, David M.; Williams, Mark A."	Non-hierarchical Influence of Visual Form, Touch, and Position Cues on Embodiment, Agency, and Presence in Virtual Reality	2016	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2016.01649	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gleasure, Rob; Feller, Joseph"	A Rift in the Ground: Theorizing the Evolution of Anchor Values in Crowdfunding Communities through the Oculus Rift Case Study	2016	JOURNAL OF THE ASSOCIATION FOR INFORMATION SYSTEMS		00.0000/0049	Görge	Nein	Abstract	kein VR		Retail / Marketing	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Quinlivan, Brendan; Butler, John S.; Beiser, Ines; Williams, Laura; McGovern, Eavan; O'Riordan, Sean; Hutchinson, Michael; Reilly, Richard B."	Application of virtual reality head mounted display for investigation of movement: a novel effect of orientation of attention	2016	JOURNAL OF NEURAL ENGINEERING		10.1088/1741-2560/13/5/056006	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jang, Woncheol; Shin, Joon-Ho; Kim, Mingyu; Kim, Kwanguk (Kenny)"	Human field of regard, field of view, and attention bias	2016	COMPUTER METHODS AND PROGRAMS IN BIOMEDICINE		10.1016/j.cmpb.2016.07.026	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shin, Jongkyu; An, Gwangseok; Park, Joon-Sang; Baek, Seung Jun; Lee, Kyogu"	Application of precise indoor position tracking to immersive virtual reality with translational movement support	2016	MULTIMEDIA TOOLS AND APPLICATIONS		10.1007/s11042-016-3520-1	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Kim, Jinmo	Modeling and Optimization of a Tree Based on Virtual Reality for Immersive Virtual Landscape Generation	2016	SYMMETRY-BASEL		10.3390/sym8090093	Görge	Nein	Abstract	VR nur als Methode		Softwareentwicklung	Visualisation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Parmar, Dhaval; Bertrand, Jeffrey; Babu, Sabarish V.; Madathil, Kapil; Zelaya, Melissa; Wang, Tianwei; Wagner, John; Gramopadhye, Anand K.; Frady, Kristin"	A comparative evaluation of viewing metaphors on psychophysical skills education in an interactive virtual environment	2016	VIRTUAL REALITY		10.1007/s10055-016-0287-7	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Menzies, R. J.; Rogers, S. J.; Phillips, A. M.; Chiarovano, E.; de Waele, C.; Verstraten, F. A. J.; MacDougall, H."	An objective measure for the visual fidelity of virtual reality and the risks of falls in a virtual environment	2016	VIRTUAL REALITY		10.1007/s10055-016-0288-6	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Presence	Samsung Gear VR & Oculus Rift & Google Cardboard					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, Yunqi; Liu, Weiqi; Meng, Xiangxiang; Fu, Hanyi; Zhang, Daliang; Kang, Yusi; Feng, Rui; Wei, Zhonglun; Zhu, Xiuqing; Jiang, Guohua"	Development of an immersive virtual reality head-mounted display with high performance	2016	APPLIED OPTICS		10.1364/AO.55.006969	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Serafin, Stefania; Erkut, Cumhur; Kojs, Juraj; Nilsson, Niels C.; Nordahl, Rolf"	Virtual Reality Musical Instruments: State of the Art, Design Principles, and Future Directions	2016	COMPUTER MUSIC JOURNAL		10.1162/COMJ_a_00372	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Musik	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dennison, Mark S.; Wisti, A. Zachary; D'Zmura, Michael"	Use of physiological signals to predict cybersickness	2016	DISPLAYS		10.1016/j.displa.2016.07.002	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Newbutt, Nigel; Sung, Connie; Kuo, Hung-Jen; Leahy, Michael J.; Lin, Chien-Chun; Tong, Boyang"	Brief Report: A Pilot Study of the Use of a Virtual Reality Headset in Autism Populations	2016	JOURNAL OF AUTISM AND DEVELOPMENTAL DISORDERS		10.1007/s10803-016-2830-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chen, Zhidong; Sang, Xinzhu; Lin, Qiaojuan; Li, Jin; Yu, Xunbo; Gao, Xin; Yan, Binbin; Yu, Chongxiu; Dou, Wenhua; Xiao, Liquan"	Acceleration for computer-generated hologram in head-mounted display with effective diffraction area recording method for eyes	2016	CHINESE OPTICS LETTERS		10.3788/COL201614.080901	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Borrego, Adrin; Latorre, Jorge; Llorens, Roberto; Alcaniz, Mariano; Noe, Enrique"	Feasibility of a walking virtual reality system for rehabilitation: objective and subjective parameters	2016	JOURNAL OF NEUROENGINEERING AND REHABILITATION		10.1186/s12984-016-0174-1	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Blissing, Bjorn; Bruzelius, Fredrik; Eriksson, Olle"	Effects of Visual Latency on Vehicle Driving Behavior	2016	ACM TRANSACTIONS ON APPLIED PERCEPTION		10.1145/2971320	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Chen, Yu-Li	The Effects of Virtual Reality Learning Environment on Student Cognitive and Linguistic Development	2016	ASIA-PACIFIC EDUCATION RESEARCHER		10.1007/s40299-016-0293-2	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kinateder, Max; Warren, William H."	Social Influence on Evacuation Behavior in Real and Virtual Environments	2016	FRONTIERS IN ROBOTICS AND AI		10.3389/frobt.2016.00043	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gautier, Estelle Jean dit; Bot-Robin, Virginie; Libessart, Aurelien; Doucede, Guillaume; Cosson, Michel; Rubod, Chrystele"	Design of a Serious Game for Handling Obstetrical Emergencies	2016	JMIR SERIOUS GAMES		10.2196/games.5526	Görge	Nein	Abstract	nur Technik		Medizin	Training	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sun, Qi; Wei, Li-Yi; Kaufman, Arie"	Mapping Virtual and Physical Reality	2016	ACM TRANSACTIONS ON GRAPHICS		10.1145/2897824.2925883	Görge	Ja	Volltext	nur Technik	evtl. Vergleich Laufen	Softwareentwicklung	Movement / Navigation	Oculus Rift DK2		7			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Thomas, James S.; France, Christopher R.; Applegate, Megan E.; Leitkam, Samuel T.; Pidcoe, Peter E.; Walkowski, Stevan"	Effects of Visual Display on Joint Excursions Used to Play Virtual Dodgeball	2016	JMIR SERIOUS GAMES		10.2196/games.6476	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Sohn, Bong-Soo	Design and Comparison of Immersive Gesture Interfaces for HMD Based Virtual World Navigation	2016	IEICE TRANSACTIONS ON INFORMATION AND SYSTEMS		10.1587/transinf.2016EDL8028	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bahat, Hilla Sarig; Sprecher, Elliot; Sela, Itamar; Treleaven, Julia"	Neck motion kinematics: an inter-tester reliability study using an interactive neck VR assessment in asymptomatic individuals	2016	EUROPEAN SPINE JOURNAL		10.1007/s00586-016-4388-5	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich von Nackenbewegungen	Medizin	Rehabilitation / Treatment	I- glasses HRV Pro	Fastrak tracking system	46			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Robert, Maxime T.; Ballaz, Laurent; Lemay, Martin"	The effect of viewing a virtual environment through a head-mounted display on balance	2016	GAIT & POSTURE		10.1016/j.gaitpost.2016.06.010	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kwon, Oh-Hyun; Muelder, Chris; Lee, Kyungwon; Ma, Kwan-Liu"	A Study of Layout, Rendering, and Interaction Methods for Immersive Graph Visualization	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2520921	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Kramida, Gregory	Resolving the Vergence-Accommodation Conflict in Head-Mounted Displays	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2015.2473855	Görge	Nein	Abstract	Review		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ha, Suk-Gyu; Na, Kun-Hoo; Kweon, Il-Joo; Suh, Young-Woo; Kim, Seung-Hyun"	Effects of Head-Mounted Display on the Oculomotor System and Refractive Error in Normal Adolescents	2016	JOURNAL OF PEDIATRIC OPHTHALMOLOGY & STRABISMUS		10.3928/01913913-20160511-01	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Riva, Giuseppe; Wiederhold, Brenda K.; Gaggioli, Andrea"	Being Different: The Transformative Potential of Virtual Reality	2016	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE		00.0000/0050	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lv, Zhihan; Chirivella, Javier; Gagliardo, Pablo"	Bigdata Oriented Multimedia Mobile Health Applications	2016	JOURNAL OF MEDICAL SYSTEMS		10.1007/s10916-016-0475-8	Görge	Nein	Abstract	nur Technik		Medizin	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zapf, Marc Patrick H.; Boon, Mei-Ying; Lovell, Nigel H.; Suaning, Gregg J."	Assistive peripheral phosphene arrays deliver advantages in obstacle avoidance in simulated end-stage retinitis pigmentosa: a virtual-reality study	2016	JOURNAL OF NEURAL ENGINEERING		10.1088/1741-2560/13/2/026022	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nakano, C. Masato; Moen, Erick; Byun, Hye Suk; Ma, Heng; Newman, Bradley; McDowell, Alexander; Wei, Tao; El-Naggar, Mohamed Y."	iBET: Immersive visualization of biological electron-transfer dynamics	2016	JOURNAL OF MOLECULAR GRAPHICS & MODELLING		10.1016/j.jmgm.2016.02.009	Görge	Nein	Abstract	nur Technik		Biologie / Chemie	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schatzschneider, Christian; Bruder, Gerd; Steinicke, Frank"	Who turned the clock? Effects of Manipulated Zeitgebers, Cognitive Load and Immersion on Time Estimation	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2518137	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Freitag, Sebastian; Weyers, Benjamin; Kuhlen, Torsten W."	Examining Rotation Gain in CAVE-like Virtual Environments	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2518298	Görge	Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Greunke, Larry; Sadagic, Amela"	Taking Immersive VR Leap in Training of Landing Signal Officers	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2518098	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Friston, Sebastian; Steed, Anthony; Tilbury, Simon; Gaydadjiev, Georgi"	Construction and Evaluation of an Ultra Low Latency Frameless Renderer for VR	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2518079	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Steed, Anthony; Friston, Sebastian; Lopez, Maria Murcia; Drummond, Jason; Pan, Ye; Swapp, David"	An 'In the Wild' Experiment on Presence and Embodiment using Consumer Virtual Reality Equipment	2016	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS		10.1109/TVCG.2016.2518135	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Presence	Samsung Gear VR & Google Cardboard					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Yong Sun; Kim, Yongwan; Kim, Ki-Hong"	Interactive digital graffiti canvas system	2016	COMPUTER ANIMATION AND VIRTUAL WORLDS		10.1002/cav.1633	Görge	Ja	Volltext	nur Technik	evtl. Vergleich Graffitti	Softwareentwicklung	Haptics / Physical interaction			14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sankaranarayanan, Ganesh; Li, Baichun; Manser, Kelly; Jones, Stephanie B.; Jones, Daniel B.; Schwaitzberg, Steven; Cao, Caroline G. L.; De, Suvranu"	Face and construct validation of a next generation virtual reality (Gen2-VR (c)) surgical simulator	2016	SURGICAL ENDOSCOPY AND OTHER INTERVENTIONAL TECHNIQUES		10.1007/s00464-015-4278-7	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Allen, Brian; Hanley, Taylor; Rokers, Bas; Green, C. Shawn"	Visual 3D motion acuity predicts discomfort in 3D stereoscopic environments	2016	ENTERTAINMENT COMPUTING		10.1016/j.entcom.2016.01.001	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Johnson, Sarah; Coxon, Matthew"	Sound can enhance the analgesic effect of virtual reality	2016	ROYAL SOCIETY OPEN SCIENCE		10.1098/rsos.150567	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Peperkorn, Henrik M.; Diemer, Julia E.; Alpers, Georg W.; Muehlberger, Andreas"	Representation of Patients' Hand Modulates Fear Reactions of Patients with Spider Phobia in Virtual Reality	2016	FRONTIERS IN PSYCHOLOGY		10.3389/fpsyg.2016.00268	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bergstroem, Ilias; Kilteni, Konstantina; Slater, Mel"	First-Person Perspective Virtual Body Posture Influences Stress: A Virtual Reality Body Ownership Study	2016	PLOS ONE		10.1371/journal.pone.0148060	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Tamura, Yuichi; Nakamura, Hiroaki; Fujiwara, Susumu"	An Intuitive Interface for Visualizing Numerical Data in a Head-Mounted Display with Gesture Control	2016	PLASMA AND FUSION RESEARCH		10.1585/pfr.11.2406060	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nilsson, Niels Christian; Serafin, Stefania; Nordahl, Rolf"	The Perceived Naturalness of Virtual Walking Speeds during WIP locomotion: Summary and Meta-Analyses	2016	PSYCHNOLOGY JOURNAL		00.0000/0052	Görge	Nein	Abstract	Review		Ergonomie	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, Jung-Ho; Son, Ho-Jun; Lee, Sung-Jin; Yun, Deok-Young; Kwon, Soon-Chul; Lee, Seung-Hyun"	Effectiveness of a Virtual Reality Head-Mounted Display System-based Developmental Eye Movement Test	2016	JOURNAL OF EYE MOVEMENT RESEARCH		10.16910/jemr.9.6.4	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rubio Tamayo, Jose Luis; Gertrudix Barrio, Manuel"	Virtual reality (HMD) and Interaction from the Perspective of Narrative Construction and Communication: Taxonomic Proposal	2016	REVISTA ICONO 14-REVISTA CIENTIFICA DE COMUNICACION Y TECNOLOGIAS		10.7195/ri14.v24i2.965	Görge		Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Guynup, S.	Virtual Reality, Game Design, and Virtual Art Galleries	2016	CURATING THE DIGITAL: SPACE FOR ART AND INTERACTION		10.1007/978-3-319-28722-5_10	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"North, Max M.; North, Sarah"	A Comparative Study of Sense of Presence of Traditional Virtual Reality and Immersive Environments	2016	AUSTRALASIAN JOURNAL OF INFORMATION SYSTEMS		00.0000/0053	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Thomas, James S.; France, Christopher R.; Leitkam, Samuel T.; Applegate, Megan E.; Pidcoe, Peter E.; Walkowski, Stevan"	Effects of Real-World Versus Virtual Environments on Joint Excursions in Full-Body Reaching Tasks	2016	IEEE JOURNAL OF TRANSLATIONAL ENGINEERING IN HEALTH AND MEDICINE-JTEHM		10.1109/JTEHM.2016.2623787	Görge	Ja	Sample		Comparison of movement and posture in reaching task	Ergonomie	Haptics / Physical interaction	Oculus Rift	Motion Capture	17	x		 	 	 	x	 	x	 	 	 	 	x	 	 	 	x	 	x	 	 	 	 	x
WOS	"Cosma, Giovanni; Ronchi, Enrico; Nilsson, Daniel"	Way-finding lighting systems for rail tunnel evacuation: A virtual reality experiment with Oculus Rift (R)	2016	JOURNAL OF TRANSPORTATION SAFETY & SECURITY		10.1080/19439962.2015.1046621	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Ingenieurwesen / Physik	Movement / Navigation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Liang, Hai-Ning; Lu, Feiyu; Shi, Yuwei; Nanjappan, Vijayakumar; Papangelis, Konstantinos"	Evaluating the effects of collaboration and competition in navigation tasks and spatial knowledge acquisition within virtual reality environments.	2019	Future Generation Computer Systems		10.1016/j.future.2018.02.029	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Somrak, Andrej; Humar, Iztok; Hossain, M. Shamim; Alhamid, Mohammed F.; Hossain, M. Anwar; Guna, Jože"	Estimating VR Sickness and user experience using different HMD technologies: An evaluation study.	2019	Future Generation Computer Systems		10.1016/j.future.2018.11.041	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Newbutt, Nigel; Bradley, Ryan; Conley, Iian"	Using Virtual Reality Head-Mounted Displays in Schools with Autistic Children: Views, Experiences, and Future Directions.	2020	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2019.0206	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Aldaba, Cassandra N.; Moussavi, Zahra"	Effects of virtual reality technology locomotive multi-sensory motion stimuli on a user simulator sickness and controller intuitiveness during a navigation task.	2020	Medical & Biological Engineering & Computing		10.1007/s11517-019-02070-2	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Feldstein, Ilja T.; Dyszak, Georg N."	Road crossing decisions in real and virtual environments: A comparative study on simulator validity.	2020	Accident Analysis & Prevention		10.1016/j.aap.2019.105356	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Riva, Giuseppe; Wiederhold, Brenda K."	How Cyberpsychology and Virtual Reality Can Help Us to Overcome the Psychological Burden of Coronavirus.	2020	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2020.29183.gri	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Wenjie, Zou; Fuzheng, Yang; Shuai, Wan"	Perceptual video quality metric for compression artefacts: from two-dimensional to omnidirectional.	2018	IET Image Processing		10.1049/iet-ipr.2017.0826	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Park, Kyudong; Kim, Dohyeon; Han, Sung H."	Usability of the size, spacing, and operation method of virtual buttons with virtual hand on head-mounted displays.	2020	International Journal of Industrial Ergonomics		10.1016/j.ergon.2020.102939	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Martínez-Navarro, Jesus; Bigné, Enrique; Guixeres, Jaime; Alcañiz, Mariano; Torrecilla, Carmen"	The influence of virtual reality in e-commerce.	2019	Journal of Business Research		10.1016/j.jbusres.2018.10.054	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Sportillo, Daniele; Paljic, Alexis; Ojeda, Luciano"	Get ready for automated driving using Virtual Reality.	2018	Accident Analysis & Prevention		10.1016/j.aap.2018.06.003	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Czub, Marcin; Piskorz, Joanna"	Body Movement Reduces Pain Intensity in Virtual Reality-Based Analgesia.	2018	International Journal of Human-Computer Interaction		10.1080/10447318.2017.1412144	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Flavián, Carlos; Ibáñez-Sánchez, Sergio; Orús, Carlos"	Integrating virtual reality devices into the body: effects of technological embodiment on customer engagement and behavioral intentions toward the destination.	2019	Journal of Travel & Tourism Marketing		10.1080/10548408.2019.1618781	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Louison, Céphise; Ferlay, Fabien; Mestre, Daniel R."	Spatialized Vibrotactile Feedback Improves Goal-Directed Movements in Cluttered Virtual Environments.	2018	International Journal of Human-Computer Interaction		10.1080/10447318.2017.1411665	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Shen, Jie(Doreen); Wang, Yanyun(Mia); Chen, Chen(Crystal); Nelson, Michelle R.; Yao, Mike Z."	Using virtual reality to promote the university brand: When do telepresence and system immersion matter?	2020	Journal of Marketing Communications		10.1080/13527266.2019.1671480	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Retail / Marketing	Presence	Oculus Rift & Google Cardboard					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Guna, Jože; Geršak, Gregor; Humar, Iztok; Song, Jeungeun; Drnovšek, Janko; Poga?nik, Matevž"	Influence of video content type on users' virtual reality sickness perception and physiological response.	2019	Future Generation Computer Systems		10.1016/j.future.2018.08.049	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Nussipova, Gulnar; Nordin, Fredrik; Sörhammar, David"	Value formation with immersive technologies: an activity perspective.	2020	Journal of Business & Industrial Marketing		10.1108/JBIM-12-2018-0407	Görge	Ja	Abstract	kein Zugriff	evtl. Nutzung von VR?	Retail / Marketing	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Erra, Ugo; Malandrino, Delfina; Pepe, Luca"	Virtual Reality Interfaces for Interacting with Three-Dimensional Graphs.	2019	International Journal of Human-Computer Interaction		10.1080/10447318.2018.1429061	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Blissing, Björn; Bruzelius, Fredrik; Eriksson, Olle"	Driver behavior in mixed and virtual reality – A comparative study.	2019	Transportation Research: Part F		10.1016/j.trf.2017.08.005	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ellis, A.; Hunt, W.; Hart, J."	Real?Time Analytic Antialiased Text for 3?D Environments.	2019	Computer Graphics Forum		10.1111/cgf.13757	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Laurell, Christofer; Sandström, Christian; Berthold, Adam; Larsson, Daniel"	Exploring barriers to adoption of Virtual Reality through Social Media Analytics and Machine Learning – An assessment of technology, network, price and trialability.	2019	Journal of Business Research		10.1016/j.jbusres.2019.01.017	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Image of VR / Use of VR	Oculus Rift & HTC Vive					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Farah, Maya F.; Ramadan, Zahy B.; Harb, Dana H."	The examination of virtual reality at the intersection of consumer experience, shopping journey and physical retailing.	2019	Journal of Retailing & Consumer Services		10.1016/j.jretconser.2019.02.016	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Chittaro, Luca; Sioni, Riccardo"	Selecting Menu Items in Mobile Head-Mounted Displays: Effects of Selection Technique and Active Area.	2019	International Journal of Human-Computer Interaction		10.1080/10447318.2018.1541546	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Weier, Martin; Roth, Thorsten; Kruijff, Ernst; Hinkenjann, André; Pérard?Gayot, Arsène; Slusallek, Philipp; Li, Yongmin"	Foveated Real-Time Ray Tracing for Head-Mounted Displays.	2016	Computer Graphics Forum		10.1111/cgf.13026	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Marran, L; Schor, C"	Multiaccommodative stimuli in VR systems: Problems & solutions	1997	HUMAN FACTORS	Article	10.1518/001872097778827070		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"El Jamiy, Fatima; Marsh, Ronald"	Survey on depth perception in head mounted displays: distance estimation in virtual reality, augmented reality, and mixed reality.	2019	IET Image Processing		10.1049/iet-ipr.2018.5920	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Nilsson, Niels Christian; Peck, Tabitha; Bruder, Gerd; Hodgson, Eri; Serafin, Stefania; Whitton, Mary; Steinicke, Frank; Rosenberg, Evan Suma"	15 Years of Research on Redirected Walking in Immersive Virtual Environments.	2018	IEEE Computer Graphics & Applications		10.1109/MCG.2018.111125628	Görge	Nein	Abstract	Review	evtl. Laufen in VR?	Ergonomie	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Almousa, Omamah; Prates, Joana; Yeslam, Noor; Mac Gregor, Dougal; Zhang, Junsong; Phan, Viet; Nielsen, Marc; Smith, Richard; Qayumi, Karim"	Virtual Reality Simulation Technology for Cardiopulmonary Resuscitation Training: An Innovative Hybrid System With Haptic Feedback.	2019	Simulation & Gaming		10.1177/1046878118820905	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Grudzewski, Filip; Awdziej, Marcin; Mazurek, Grzegorz; Piotrowska, Katarzyna"	Virtual reality in marketing communication - the impact on the message, technology and offer perception - empirical study.	2018	Economics & Business Review		10.18559/ebr.2018.3.4	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Frost, Megan; Goates, Michael; Cheng, Sarah; Johnston, Jed"	Virtual Reality: A Survey of Use at an Academic Library.	2020	Information Technology & Libraries		10.6017/ital.v39i1.11369	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Tham, Jason; Duin, Ann Hill; Gee, Laura; Ernst, Nathan; Abdelqader, Bilal; McGrath, Megan"	Understanding Virtual Reality: Presence, Embodiment, and Professional Practice.	2018	IEEE Transactions on Professional Communication		10.1109/TPC.2018.2804238	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Katsigiannis, Stamos; Willis, Rhys; Ramzan, Naeem"	A QoE and Simulator Sickness Evaluation of a Smart-Exercise-Bike Virtual Reality System via User Feedback and Physiological Signals.	2019	IEEE Transactions on Consumer Electronics		10.1109/TCE.2018.2879065	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Baker, Steven; Waycott, Jenny; Robertson, Elena; Carrasco, Romina; Neves, Barbara Barbosa; Hampson, Ralph; Vetere, Frank"	Evaluating the use of interactive virtual reality technology with older adults living in residential aged care.	2020	Information Processing & Management		10.1016/j.ipm.2019.102105	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Grubert, Jens; Ofek, Eyal; Pahud, Michel; Kristensson, Per Ola"	The Office of the Future: Virtual, Portable, and Global.	2018	IEEE Computer Graphics & Applications		10.1109/MCG.2018.2875609	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Zhang, Yingxue; Wang, Yingbin; Liu, Feiyang; Liu, Zizheng; Li, Yiming; Yang, Daiqin; Chen, Zhenzhong"	Subjective Panoramic Video Quality Assessment Database for Coding Applications.	2018	IEEE Transactions on Broadcasting		10.1109/TBC.2018.2811627	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Rojo, Diego; Mayor, Jesus; Rueda, Jose Jesus Garcia; Raya, Laura; Potel, Mike"	A Virtual Reality Training Application for Adults With Asperger's Syndrome.	2019	IEEE Computer Graphics & Applications		10.1109/MCG.2018.2884272	Görge	Nein	Abstract	nur Technik		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Loup, Guillaume; Loup-Escande, Emilie"	Effects of Travel Modes on Performances and User Comfort: A Comparison between ArmSwinger and Teleporting.	2019	International Journal of Human-Computer Interaction		10.1080/10447318.2018.1519164	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Chessa, Manuela; Maiello, Guido; Borsari, Alessia; Bex, Peter J."	The Perceptual Quality of the Oculus Rift for Immersive Virtual Reality.	2019	Human-Computer Interaction		10.1080/07370024.2016.1243478	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Han, Ping-Hsuan; Chen, Yang-Sheng; Liu, Iou-Shiuan; Jang, Yu-Ping; Tsai, Ling; Chang, Alvin; Hung, Yi-Ping"	A Compelling Virtual Tour of the Dunhuang Cave With an Immersive Head-Mounted Display.	2020	IEEE Computer Graphics & Applications		10.1109/MCG.2019.2936753	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Lombart, Cindy; Millan, Elena; Normand, Jean-Marie; Verhulst, Adrien; Labbé-Pinlon, Blandine; Moreau, Guillaume"	Consumer perceptions and purchase behavior toward imperfect fruits and vegetables in an immersive virtual reality grocery store.	2019	Journal of Retailing & Consumer Services		10.1016/j.jretconser.2019.01.010	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Wang, Qiyue; Jiao, Wenhua; Yu, Rui; Johnson, Michael T.; Zhang, YuMing"	Virtual Reality Robot-Assisted Welding Based on Human Intention Recognition.	2020	IEEE Transactions on Automation Science & Engineering		10.1109/TASE.2019.2945607	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Mercado Borja, William Enrique; Guarnieri, Griselda; Luján Rodríguez, Guillermo"	Análisis y evaluación de procesos de interactividad en entornos virtuales de aprendizaje.	2019	Revista Trilogía		10.22430/21457778.1213	Görge		Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ye, Yan; Boyce, Jill M.; Hanhart, Philippe"	Omnidirectional 360° Video Coding Technology in Responses to the Joint Call for Proposals on Video Compression With Capability Beyond HEVC.	2020	IEEE Transactions on Circuits & Systems for Video Technology		10.1109/TCSVT.2019.2953827	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"CHING-LING, FAN; WEN-CHIH, LO; YU-TUNG, PAI; CHENG-HSIN, HSU"	A Survey on 360° Video Streaming: Acquisition, Transmission, and Display.	2019	ACM Computing Surveys		10.1145/3329119	Görge	Nein	Abstract	Review		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Takeuchi, Naoyuki; Mori, Takayuki; Suzukamo, Yoshimi; Izumi, Shin-Ichi"	Modulation of Excitability in the Temporoparietal Junction Relieves Virtual Reality Sickness.	2018	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2017.0499	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	Alhalabi, Wadee S.	Virtual reality systems enhance students’ achievements in engineering education.	2016	Behaviour & Information Technology		10.1080/0144929X.2016.1212931	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Hladky, J.; Seidel, H. P.; Steinberger, M."	Tessellated Shading Streaming.	2019	Computer Graphics Forum		10.1111/cgf.13780	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Rosa, Pedro J.; Morais, Diogo; Gamito, Pedro; Oliveira, Jorge; Saraiva, Tomaz"	The Immersive Virtual Reality Experience: A Typology of Users Revealed Through Multiple Correspondence Analysis Combined with Cluster Analysis Technique.	2016	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2015.0130	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Tingting, Lei; Guangtian, Zou"	Interactive Design of Commercial Space Signage System Based on Object Detection.	2019	Ingénierie des Systèmes d'Information		10.18280/isi.240310	Görge	Ja	Abstract	VR nur als Methode		Bauwesen / Architektur	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Zhu, Lifeng; Wang, Zian; Wang, Yunhai; Song, Aiguo; Potel, Mike"	Follow the Smoke: Immersive Display of Motion Data With Synthesized Smoke.	2019	IEEE Computer Graphics & Applications		10.1109/MCG.2019.2915717	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	Han, Bo	Mobile Immersive Computing: Research Challenges and the Road Ahead.	2019	IEEE Communications Magazine		10.1109/MCOM.001.1800876	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	Jerald, Jason	Human-Centered VR Design: Five Essentials Every Engineer Needs to Know.	2018	IEEE Computer Graphics & Applications		10.1109/MCG.2018.021951628	Görge	Nein	Abstract	nur Technik		Psychology / Human factors	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Mosso Vázquez, José Luis; Mosso Lara, Dejanira; Mosso Lara, José Luis; Miller, Ian; Wiederhold, Mark D.; Wiederhold, Brenda K."	Pain Distraction During Ambulatory Surgery: Virtual Reality and Mobile Devices.	2019	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2017.0714	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Castruccio, Stefano; Genton, Marc G.; Sun, Ying"	Visualizing spatiotemporal models with virtual reality: from fully immersive environments to applications in stereoscopic view.	2019	Journal of the Royal Statistical Society: Series A (Statistics in Society)		10.1111/rssa.12381	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Gleasure, Rob; Feller, Joseph"	A Rift in the Ground: Theorizing the Evolution of Anchor Values in Crowdfunding Communities through the Oculus Rift Case Study.	2016	Journal of the Association for Information Systems		00.0000/0054	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Choi, Hee-soo; Kim, Sang-heon"	A content service deployment plan for metaverse museum exhibitions—Centering on the combination of beacons and HMDs.	2017	International Journal of Information Management		10.1016/j.ijinfomgt.2016.04.017	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ucar, Erdem; Ustunel, Hakan; Civelek, Turhan; Umut, Ilhan"	Effects of using a force feedback haptic augmented simulation on the attitudes of the gifted students towards studying chemical bonds in virtual reality environment.	2017	Behaviour & Information Technology		10.1080/0144929X.2016.1264483	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	Howard, Matt C.	Virtual Reality Interventions for Personal Development: A Meta-Analysis of Hardware and Software.	2019	Human-Computer Interaction		10.1080/07370024.2018.1469408	Görge	Nein	Abstract	Review		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Segura, Álvaro; Diez, Helen V.; Barandiaran, Iñigo; Arbelaiz, Ander; Álvarez, Hugo; Simões, Bruno; Posada, Jorge; García-Alonso, Alejandro; Ugarte, Ramón"	Visual computing technologies to support the Operator 4.0.	2020	Computers & Industrial Engineering		10.1016/j.cie.2018.11.060	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Manufacturing	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Stengel, Michael; Grogorick, Steve; Eisemann, Martin; Magnor, Marcus"	Adaptive Image-Space Sampling for Gaze-Contingent Real-time Rendering.	2016	Computer Graphics Forum		10.1111/cgf.12956	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	Cochrane, Thomas	Mobile VR in Education: From the Fringe to the Mainstream.	2016	Information Resources Management Journal		10.4018/IJMBL.2016100104	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Vitali, Andrea; Rizzi, Caterina"	A virtual environment to emulate tailor’s work.	2017	Computer-Aided Design & Applications		10.1080/16864360.2016.1273584	Görge	Nein	Abstract	nur Technik		Design	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Stupar-Rutenfrans, Snežana; Ketelaars, Loes E. H.; van Gisbergen, Marnix S."	Beat the Fear of Public Speaking: Mobile 360° Video Virtual Reality Exposure Training in Home Environment Reduces Public Speaking Anxiety.	2017	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2017.0174	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Li, Ranyang; Pan, Junjun; Si, Yaqing; Yan, Bin; Hu, Yong; Qin, Hong"	Specular Reflections Removal for Endoscopic Image Sequences With Adaptive-RPCA Decomposition.	2020	IEEE Transactions on Medical Imaging		10.1109/TMI.2019.2926501	Görge	Ja	Abstract	kein VR		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Jeong, Seongwook; Jung, Eui S.; Im, Youngjae"	Ergonomic evaluation of interaction techniques and 3D menus for the practical design of 3D stereoscopic displays.	2016	International Journal of Industrial Ergonomics		10.1016/j.ergon.2016.01.001	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Starrett, Michael J.; Stokes, Jared D.; Huffman, Derek J.; Ferrer, Emilio; Ekstrom, Arne D."	Learning-dependent evolution of spatial representations in large-scale virtual environments.	2019	Journal of Experimental Psychology. Learning, Memory & Cognition		10.1037/xlm0000597	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Wiederhold, Mark D.; Crisci, Megan; Patel, Vrajeshri; Nonaka, Makoto; Wiederhold, Brenda K."	Physiological Monitoring During Augmented Reality Exercise Confirms Advantages to Health and Well-Being.	2019	CyberPsychology, Behavior & Social Networking		10.1089/cyber.2018.0027	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Preuss, Nora; Ehrsson, H. Henrik"	Full-body ownership illusion elicited by visuo-vestibular integration.	2019	Journal of Experimental Psychology. Human Perception & Performance		10.1037/xhp0000597	Görge		Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Kerin, Mairi; Pham, Duc Truong"	A review of emerging industry 4.0 technologies in remanufacturing.	2019	Journal of Cleaner Production		10.1016/j.jclepro.2019.117805	Görge	Nein	Abstract	Review		Manufacturing	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Burwell, C; Jarvis, C; Tansey, K"	The potential for using 3D visualization for data exploration, error correction and analysis of LiDAR point clouds	2012	REMOTE SENSING LETTERS	Article	10.1080/01431161.2011.629233		nein	Titel	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Kishore, Sameer; Navarro, Xavi; Dominguez, Eva; De La Pena, Nonny; Slater, Mel"	Beaming into the News: A System for and Case Study of Tele-Immersive Journalism.	2018	IEEE Computer Graphics & Applications		10.1109/MCG.2017.2801407	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, SY; Kang, J"	Effect of virtual reality meditation on sleep quality of intensive care unit patients: A randomised controlled trial	2020	INTENSIVE AND CRITICAL CARE NURSING	Article	10.1016/j.iccn.2020.102849		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chheang, V; Jeong, S; Lee, G; Ha, JS; Yoo, KH"	Natural embedding of live actors and entities into 360 degrees virtual reality scenes	2020	JOURNAL OF SUPERCOMPUTING	Article	10.1007/s11227-018-2615-z		Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pastel, S; Chen, CH; Martin, L; Naujoks, M; Petri, K; Witte, K"	Comparison of gaze accuracy and precision in real-world and virtual reality	2020	VIRTUAL REALITY	"Article; Early Access"	10.1007/s10055-020-00449-3		Ja	Sample		Gaze accuracy and precission for static and movinc objects in VR and in reality	Psychology / Human factors	Visual perception	HTC Vive	None	21			x	x	 	 	 	x	 	 	 	x	 	 	 	 	x	 	 	 	 	x	 	x
WOS	"Goncalves, G; Melo, M; Vasconcelos-Raposo, J; Bessa, M"	A novel method to enhance the touristic 360 degrees promotional video experience	2020	MULTIMEDIA TOOLS AND APPLICATIONS	"Article; Early Access"	10.1007/s11042-020-09026-x		Ja	Titel	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Haptics / Physical interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yoon, HJ; Kim, J; Park, SW; Heo, H"	Influence of virtual reality on visual parameters: immersive versus non-immersive mode	2020	BMC OPHTHALMOLOGY	Article	10.1186/s12886-020-01471-4			Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Joseph, A; Browning, MHEM; Jiang, S"	Using Immersive Virtual Environments (IVEs) to Conduct Environmental Design Research: A Primer and Decision Framework	2020	HERD-HEALTH ENVIRONMENTS RESEARCH & DESIGN JOURNAL	"Article; Early Access"	10.1177/1937586720924787		Ja	Volltext	nur Technik	interessant: Design mit VR	Design	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lubetzky, AV; Kelly, J; Wang, Z; Gospodarek, M; Fu, G; Sutera, J; Hujsak, BD"	Contextual sensory integration training via head mounted display for individuals with vestibular disorders: a feasibility study	2020	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY	"Article; Early Access"	10.1080/17483107.2020.1765419		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Filter, E; Eckes, A; Fiebelkorn, F; Bussing, AG"	Virtual Reality Nature Experiences Involving Wolves on YouTube: Presence, Emotions, and Attitudes in Immersive and Nonimmersive Settings	2020	SUSTAINABILITY	Article	10.3390/su12093823		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, CL; Chen, SJ; Lin, RT"	Efficacy of Virtual Reality in Painting Art Exhibitions Appreciation	2020	APPLIED SCIENCES-BASEL	Article	10.3390/app10093012		Ja	Titel	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pagano, A; Palombini, A; Bozzelli, G; De Nino, M; Cerato, I; Ricciardi, S"	ArkaeVision VR Game: User Experience Research between Real and Virtual Paestum	2020	APPLIED SCIENCES-BASEL	Article	10.3390/app10093182		Ja	Titel	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Eisapour, M; Cao, S; Boger, J"	Participatory design and evaluation of virtual reality games to promote engagement in physical activity for people living with dementia	2020	JOURNAL OF REHABILITATION AND ASSISTIVE TECHNOLOGIES ENGINEERING	Article	10.1177/2055668320913770		Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Vergleich	Medizin	Rehabilitation / Treatment	Oculus Rift CV1	Oculus Rift handheld touch controllers	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Celikcan, U; Askin, MB; Albayrak, D; Capin, TK"	Deep into visual saliency for immersive VR environments rendered in real-time	2020	COMPUTERS & GRAPHICS-UK	Article	10.1016/j.cag.2020.03.006		Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Vergleich Aufmerksamkeit	Psychology / Human factors	Visual perception	HTC Vive	None	30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wiesing, M; Fink, GR; Weidner, R"	Accuracy and precision of stimulus timing and reaction times with Unreal Engine and SteamVR	2020	PLOS ONE	Article	10.1371/journal.pone.0231152		Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nelson, KM; Anggraini, E; Schluter, A"	Virtual reality as a tool for environmental conservation and fundraising	2020	PLOS ONE	Article	10.1371/journal.pone.0223631		Ja	Titel	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Perception of prodcuts / Advertisement						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, KF; Chen, YL; Yu, CW; Chin, KY; Wu, CH"	Gaze Tracking and Point Estimation Using Low-Cost Head-Mounted Devices	2020	SENSORS	"Article; Proceedings Paper"	10.3390/s20071917		Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Li, G; Zhou, SH; Kong, Z; Guo, MY"	Closed-Loop Attention Restoration Theory for Virtual Reality-Based Attentional Engagement Enhancement	2020	SENSORS	Article	10.3390/s20082208		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sanchez-Herrera-Baeza, P; Cano-de-la-Cuerda, R; Ona-Simbana, ED; Palacios-Cena, D; Perez-Corrales, J; Cuenca-Zaldivar, JN; Gueita-Rodriguez, J; de Quiros, CBB; Jardon-Huete, A; Cuesta-Gomez, A"	The Impact of a Novel Immersive Virtual Reality Technology Associated with Serious Games in Parkinson's Disease Patients on Upper Limb Rehabilitation: A Mixed Methods Intervention Study	2020	SENSORS	Article	10.3390/s20082168		Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Training manueller Tätigkeiten	Medizin	Rehabilitation / Treatment	Oculus Rift DK2	leap motion controller—OR2-LMC	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Syawaludin, MF; Lee, M; Hwang, JI"	Foveation Pipeline for 360 degrees Video-Based Telemedicine	2020	SENSORS	Article	10.3390/s20082264		Nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nee, AYC; Ong, SK; Chryssolouris, G; Mourtzis, D"	Augmented reality applications in design and manufacturing	2012	CIRP ANNALS-MANUFACTURING TECHNOLOGY	"Article; Proceedings Paper"	10.1016/j.cirp.2012.05.010		nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ferrer, CDR; Shishido, H; Kitahara, I; Kameda, Y"	Read-the-game: System for skill-based visual exploratory activity assessment with a full body virtual reality soccer simulation	2020	PLOS ONE	Article	10.1371/journal.pone.0230042		Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kounlaxay, K; Kim, SK"	Design of Learning Media in Mixed Reality for Lao Education	2020	CMC-COMPUTERS MATERIALS & CONTINUA	Article	10.32604/cmc.2020.09930		Nein	Abstract	kein VR		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chan, ZYS; MacPhail, AJC; Au, IPH; Zhang, JH; Lam, BF; Ferber, R; Cheung, RTH"	Walking with head-mounted virtual and augmented reality devices: Effects on position control and gait biomechanics	2019	PLOS ONE	Article	10.1371/journal.pone.0225972		Ja	Sample		interessant: laufen in VR	Hardwareentwicklung und Evaluation	Model design	Samsung Gear VR	Treadmill	13	x		 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	 	 	 	 	x
WOS	Thomas, BH	Virtual Reality for Information Visualization Might Just Work This Time	2019	FRONTIERS IN ROBOTICS AND AI	Article	10.3389/frobt.2019.00084			Titel	Review				Samsung Gear VR SM-R322 and Samsung Galaxy S7					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Peukert, C; Pfeiffer, J; Meissner, M; Pfeiffer, T; Weinhardt, C"	Shopping in Virtual Reality Stores: The Influence of Immersion on System Adoption	2019	JOURNAL OF MANAGEMENT INFORMATION SYSTEMS	Article	10.1080/07421222.2019.1628889		Ja	Sample	kein Vergleich zu realer Anwendung	Effect of immersion on shopping in VR	Retail / Marketing	Effect of Immersion	HTC Vive		260	x		 	x	 	 	 	x	 	 	 	x	 	 	 	 	 	x	 	 	x	 	 	x
WOS	"Matsuo, A; Hamada, H; Oba, H; Shibata, K"	Virtual reality head-mounted display for endoscopically-assisted implant surgery	2018	BRITISH JOURNAL OF ORAL & MAXILLOFACIAL SURGERY	Article	10.1016/j.bjoms.2018.04.002			Titel	kein VR		Medizin	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bailey, JO; Bailenson, JN"	Immersive Virtual Reality and the Developing Child	2017	COGNITIVE DEVELOPMENT IN DIGITAL CONTEXTS	"Article; Book Chapter"	10.1016/B978-0-12-809481-5.00009-2		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Stein, C	VIRTUAL REALITY DESIGN: HOW UPCOMING HEAD-MOUNTED DISPLAYS CHANGE DESIGN PARADIGMS OF VIRTUAL REALITY WORLDS	2016	MEDIA TROPES	Article	00.0000/0055		Nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gong, XL; Liu, YJ; Jiao, Y; Wang, BJ; Zhou, JC; Yu, HY"	A Novel Earthquake Education System Based on Virtual Reality	2015	IEICE TRANSACTIONS ON INFORMATION AND SYSTEMS	Article	10.1587/transinf.2015EDP7165		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Youn, JH; Cha, BR; Eun-Seok, Kim; Ji, YK"	Multi-modal interface realization for scenario-based immersive virtual reality experience simulator	2015	ASIA LIFE SCIENCES	Article	00.0000/0056		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Leinen, P; Green, MFB; Esat, T; Wagner, C; Tautz, FS; Temirov, R"	Virtual reality visual feedback for hand-controlled scanning probe microscopy manipulation of single molecules	2015	BEILSTEIN JOURNAL OF NANOTECHNOLOGY	Article	10.3762/bjnano.6.220		Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Norrby, M; Grebner, C; Eriksson, J; Bostrom, J"	Molecular Rift: Virtual Reality for Drug Designers	2015	JOURNAL OF CHEMICAL INFORMATION AND MODELING	Article	10.1021/acs.jcim.5b00544		Nein	Abstract	nur Technik		Biologie / Chemie	Visualisation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schoeffler, M; Gernert, JL; Neumayer, M; Westphal, S; Herre, J"	On the validity of virtual reality-based auditory experiments: a case study about ratings of the overall listening experience	2015	VIRTUAL REALITY	Article	10.1007/s10055-015-0270-8		Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Hören in VR und real	Psychology / Human factors	Perception of Sound	Oculus Rift		30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nalivaiko, E; Davis, SL; Blackmore, KL; Vakulin, A; Nesbitt, KV"	Cybersickness provoked by head-mounted display affects cutaneous vascular tone, heart rate and reaction time	2015	PHYSIOLOGY & BEHAVIOR	Article	10.1016/j.physbeh.2015.08.043		Ja	Volltext	kein Bezug zu manueller Kommissionierung	Einfluss Cybersichness auf reaction time	Psychology / Human factors	Cybersickness / Fatigue	Oculus Rift DK1	None	26			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Masumoto, J; Inui, N"	Visual and Proprioceptive Adaptation of Arm Position in a Virtual Environment	2015	JOURNAL OF MOTOR BEHAVIOR	Article	10.1080/00222895.2015.1015674		Ja	Volltext	kein Bezug zu manueller Kommissionierung	Vergleich Arm Position	Ergonomie	Body Illusion	Sony HMZ-T1 HMD	None	10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Li, H; Trutoiu, L; Olszewski, K; Wei, LY; Trutna, T; Hsieh, PL; Nicholls, A; Ma, CY"	Facial Performance Sensing Head-Mounted Display	2015	ACM TRANSACTIONS ON GRAPHICS	"Article; Proceedings Paper"	10.1145/2766939		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wrzesien, M; Botella, C; Breton-Lopez, J; Gonzalez, ED; Burkhardt, JM; Alcaniz, M; Perez-Ara, MA"	Treating small animal phobias using a projective-augmented reality system: A single-case study	2015	COMPUTERS IN HUMAN BEHAVIOR	Article	10.1016/j.chb.2015.01.065		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chiarovano, E; de Waele, C; MacDougall, HG; Rogers, SJ; Burgess, AM; Curthoys, IS"	Maintaining balance when looking at a virtual reality three-dimensional display of a field of moving dots or at a virtual reality scene	2015	FRONTIERS IN NEUROLOGY	Article	10.3389/fneur.2015.00164		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, JY; Lee, WH"	Virtual aquatic garden based on fish schooling simulation	2015	ASIA LIFE SCIENCES	Article	00.0000/0057		Nein	Abstract	nur Technik		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, JY; Kim, YS"	User experience of interactive virtual aquarium contents using head-mounted display (HMD)	2015	ASIA LIFE SCIENCES	Article	00.0000/0058		Nein	Abstract	nur Technik		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kathner, I; Kubler, A; Halder, S"	Rapid P300 brain-computer interface communication with a head-mounted display	2015	FRONTIERS IN NEUROSCIENCE	Article	10.3389/fnins.2015.00207		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Aiken, MP; Berry, MJ"	Posttraumatic stress disorder: possibilities for olfaction and virtual reality exposure therapy	2015	VIRTUAL REALITY	Article	10.1007/s10055-015-0260-x		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zapf, MPH; Boon, MY; Matteucci, PB; Lovell, NH; Suaning, GJ"	Towards an assistive peripheral visual prosthesis for long-term treatment of retinitis pigmentosa: evaluating mobility performance in immersive simulations	2015	JOURNAL OF NEURAL ENGINEERING	Article	10.1088/1741-2560/12/3/036001		Ja	Volltext	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Riva, G; Wiederhold, BK"	The New Dawn of Virtual Reality in Health Care: Medical Simulation and Experiential Interface	2015	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE	Article	00.0000/0059		Nein	Abstract	kein Vergleich zu realer Anwendung		Medizin	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Riecke, BE; Jordan, JD"	Comparing the effectiveness of different displays in enhancing illusions of self-movement (vection)	2015	FRONTIERS IN PSYCHOLOGY	Article	10.3389/fpsyg.2015.00713		Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wang, J; Lindeman, R"	Coordinated hybrid virtual environments: Seamless interaction contexts for effective virtual reality	2015	COMPUTERS & GRAPHICS-UK	Article	10.1016/j.cag.2015.02.007		Ja	Abstract	kein VR		Softwareentwicklung	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Aksit, K; Kautz, J; Luebke, D"	Slim near-eye display using pinhole aperture arrays	2015	APPLIED OPTICS	Article	10.1364/AO.54.003422		Nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, QF; Rieser, J; Bodenheimer, B"	Affordance Judgments in HMD-Based Virtual Environments: Stepping over a Pole and Stepping off a Ledge	2015	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	10.1145/2720020		Ja	Sample		Importance of seeing self-avatar in VR for spatial perception	Psychology / Human factors	Visual perception	NVIS nVisor SX	Motion Capture	84	x		 	 	x	 	 	x	 	 	 	 	 	 	 	x	x	 	x	x	 	x	 	 
WOS	"Bahat, HS; Chen, XQ; Reznik, D; Kodesh, E; Treleaven, J"	Interactive cervical motion kinematics: Sensitivity, specificity and clinically significant values for identifying kinematic impairments in patients with chronic neck pain	2015	MANUAL THERAPY	Article	10.1016/j.math.2014.10.002		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mehra, R; Rungta, A; Golas, A; Lin, M; Manocha, D"	WAVE: Interactive Wave-based Sound Propagation for Virtual Environments	2015	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	10.1109/TVCG.2015.2391858		Ja	Abstract	nur Technik		Softwareentwicklung	Perception of Sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jang, Y; Noh, ST; Chang, HJ; Kim, TK; Woo, W"	3D Finger CAPE: Clicking Action and Position Estimation under Self-Occlusions in Egocentric Viewpoint	2015	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	10.1109/TVCG.2015.2391860		Ja	Volltext	kein Vergleich zu realer Anwendung	interessant	Softwareentwicklung	Haptics / Physical interaction	Oculus Rift	Custom development	12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chittaro, L; Buttussi, F"	Assessing Knowledge Retention of an Immersive Serious Game vs. a Traditional Education Method in Aviation Safety	2015	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	10.1109/TVCG.2015.2391853		Ja	Volltext	kein Bezug zu manueller Kommissionierung	Training Vergleich Langzeit	Psychology / Human factors	Training	Sony HMZ-T1 HMD	Nintendo Nunchuck	48			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, J; Chung, CYL; Nakamura, S; Palmisano, S; Khuu, SK"	The Oculus Rift: a cost-effective tool for studying visual-vestibular interactions in self-motion perception	2015	FRONTIERS IN PSYCHOLOGY	Article	10.3389/fpsyg.2015.00248		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Movement / Navigation	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hodgson, E; Bachmann, ER; Vincent, D; Zmuda, M; Waller, D; Calusdian, J"	WeaVR: a self-contained and wearable immersive virtual environment simulation system	2015	BEHAVIOR RESEARCH METHODS	Article	10.3758/s13428-014-0463-1		ja	Titel	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Leyrer, M; Linkenauger, SA; Bulthoff, HH; Mohler, BJ"	Eye Height Manipulations: A Possible Solution to Reduce Underestimation of Egocentric Distances in Head-Mounted Displays	2015	ACM Transactions on Applied Perception	Article	10.1145/2699254		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	NVIS nVisor SX	None	39			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Xu, X; Chen, KRB; Lin, JH; Radwin, RG"	The accuracy of the Oculus Rift virtual reality head-mounted display during cervical spine mobility measurement	2015	JOURNAL OF BIOMECHANICS	Article	10.1016/j.jbiomech.2015.01.005		ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Grabowski, A; Jankowski, J"	Virtual Reality-based pilot training for underground coal miners	2015	SAFETY SCIENCE	Article	10.1016/j.ssci.2014.09.017		ja	Abstract	kein Vergleich zu realer Anwendung		Mining	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kovalev, AI; Menshikova, GY; Klimova, OA; Barabanshikova, VV"	THE CONTENT OF PROFESSIONAL ACTIVITY AS A FACTOR OF APPLICATION EFFICIENCY OF VIRTUAL REALITY TECHNOLOGY	2015	EKSPERIMENTALNAYA PSIKHOLOGIYA	Article	10.17759/exppsy.2015080205		ja	Abstract	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kunz, BR; Creem-Regehr, SH; Thompson, WB"	Testing the mechanisms underlying improved distance judgments in virtual environments	2015	PERCEPTION	Article	10.1068/p7929		Ja	Sample		interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	NVIS nVisor SX	None	56	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	 	x	 	x	 	 
WOS	"Riva, G; Wiederhold, BK"	The New Dawn of Virtual Reality in Health Care: Medical Simulation and Experiential Interface	2015	ANNUAL REVIEW OF CYBERTHERAPY AND TELEMEDICINE 2015: VIRTUAL REALITY IN HEALTHCARE: MEDICAL SIMULATION AND EXPERIENTIAL INTERFACE	"Article; Book Chapter"	10.3233/978-1-61499-595-1-3		nein	Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mendez, MF; Joshi, A; Jimenez, E"	Virtual reality for the assessment of frontotemporal dementia, a feasibility study	2015	DISABILITY AND REHABILITATION-ASSISTIVE TECHNOLOGY	Article	10.3109/17483107.2014.889230		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Diagnosis						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Burns, CG; Fairclough, SH"	Use of auditory event-related potentials to measure immersion during a computer game	2015	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES	Article	10.1016/j.ijhcs.2014.09.002		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mirzaei, MA; Merienne, F; Oliver, JH"	New wireless connection between user and VE using speech processing	2014	VIRTUAL REALITY	Article	10.1007/s10055-014-0248-y		ja	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Okura, F; Kanbara, M; Yokoya, N"	Aerial full spherical HDR imaging and display	2014	VIRTUAL REALITY	Article	10.1007/s10055-014-0249-x		ja	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Chandler, DL	Tomorrow's Hospital How technology will be transforming both inpatient and at-home care	2014	IEEE PULSE	Article	10.1109/MPUL.2014.2355298		nein	Abstract	nur Technik		Medizin	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Byagowi, A; Singhal, S; Lambeta, M; Aldaba, C; Moussavi, Z"	Design of a Naturalistic Navigational Virtual Reality Using Oculus Rift	2014	JOURNAL OF MEDICAL DEVICES-TRANSACTIONS OF THE ASME	"Article; Proceedings Paper"	10.1115/1.4027114		nein	Abstract	nur Technik		Medizin	Model design	Oculus Rift					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Shen, Y; Ong, SK; Nee, AYC"	Augmented reality for collaborative product design and development	2010	DESIGN STUDIES	Article	10.1016/j.destud.2009.11.001		ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Trojan, J; Diers, M; Fuchs, X; Bach, F; Bekrater-Bodmann, R; Foell, J; Kamping, S; Rance, M; Maass, H; Flor, H"	An augmented reality home-training system based on the mirror training and imagery approach	2014	BEHAVIOR RESEARCH METHODS	Article	10.3758/s13428-013-0412-4		nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Freeman, D; Antley, A; Ehlers, A; Dunn, G; Thompson, C; Vorontsova, N; Garety, P; Kuipers, E; Glucksman, E; Slater, M"	The Use of Immersive Virtual Reality (VR) to Predict the Occurrence 6 Months Later of Paranoid Thinking and Posttraumatic Stress Symptoms Assessed by Self-Report and Interviewer Methods: A Study of Individuals Who Have Been Physically Assaulted	2014	PSYCHOLOGICAL ASSESSMENT	Article	10.1037/a0036240		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, CJ; Woldegiorgis, BH; Caesaron, D"	Distance estimation of near-field visual objects in stereoscopic displays	2014	JOURNAL OF THE SOCIETY FOR INFORMATION DISPLAY	Article	10.1002/jsid.269		Ja	Volltext	kein VR	interessant: Abschätzung von Distanzen	Ergonomie	Haptics / Physical interaction			10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Morina, N; Brinkman, WP; Hartanto, D; Emmelkamp, PMG"	Sense of presence and anxiety during virtual social interactions between a human and virtual humans	2014	PEERJ	Article	10.7717/peerj.337		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Grechkin, TY; Plumert, JM; Kearney, JK"	Dynamic Affordances in Embodied Interactive Systems: The Role of Display and Mode of Locomotion	2014	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	10.1109/TVCG.2014.18		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Laufen in VR	Hardwareentwicklung und Evaluation	Movement / Navigation	NVIS nVisor ST50	Joystick 	63			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gatica-Rojas, V; Mendez-Rebolledo, G"	Virtual reality interface devices in the reorganization of neural networks in the brain of patients with neurological diseases	2014	NEURAL REGENERATION RESEARCH	Article	10.4103/1673-5374.131612		ja	Abstract	kein VR		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Li, HJ; Leung, KS; Nakane, T; Wong, MH"	iview: an interactive WebGL visualizer for protein-ligand complex	2014	BMC BIOINFORMATICS	Article	10.1186/1471-2105-15-56		nein	Abstract	nur Technik		Biologie / Chemie	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wroblewski, D; Francis, BA; Sadun, A; Vakili, G; Chopra, V"	Testing of Visual Field with Virtual Reality Goggles in Manual and Visual Grasp Modes	2014	BIOMED RESEARCH INTERNATIONAL	Article	10.1155/2014/206082		ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Heydrich, L; Dodds, TJ; Aspell, JE; Herbelin, B; Bulthoff, HH; Mohler, BJ; Blanke, O"	Visual capture and the experience of having two bodies - evidence from two different virtual reality techniques	2013	FRONTIERS IN PSYCHOLOGY	Article	10.3389/fpsyg.2013.00946		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ramsayer, B; Honold, M; Beck, K; Kraus, M; Kramer, M; Dehner, C"	Cervicocephalic Kinaesthesia in Subjects with and without Peripherally Induced Pain	2013	JOURNAL OF MUSCULOSKELETAL PAIN	Article	10.3109/10582452.2013.851760		ja	Abstract	VR nur als Methode		Medizin	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lanman, D; Luebke, D"	Near-Eye Light Field Displays	2013	ACM TRANSACTIONS ON GRAPHICS	"Article; Proceedings Paper"	10.1145/2508363.2508366		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"McBride, CM; Persky, S; Wagner, LK; Faith, MS; Ward, DS"	Effects of providing personalized feedback of child's obesity risk on mothers' food choices using a virtual reality buffet	2013	INTERNATIONAL JOURNAL OF OBESITY	Article	10.1038/ijo.2013.87		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Behaviour						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Takahashi, K; Meilinger, T; Watanabe, K; Bulthoff, HH"	Pshychological influences on distance estimation in a virtual reality environment	2013	FRONTIERS IN HUMAN NEUROSCIENCE	Article	10.3389/fnhum.2013.00580		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	Kaiser SR80	Buttons	14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Banakou, D; Groten, R; Slater, M"	Illusory ownership of a virtual child body causes overestimation of object sizes and implicit attitude changes	2013	PROCEEDINGS OF THE NATIONAL ACADEMY OF SCIENCES OF THE UNITED STATES OF AMERICA	Article	10.1073/pnas.1306779110		ja	Titel	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Aburub, AS; Lamontagne, A"	Altered steering strategies for goal-directed locomotion in stroke	2013	JOURNAL OF NEUROENGINEERING AND REHABILITATION	Article	10.1186/1743-0003-10-80		ja	Abstract	VR nur als Methode		Human Biology	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pasqualini, I; Llobera, J; Blanke, O"	"Seeing and ""feeling"" architecture: how bodily self-consciousness alters architectonic experience and affects the perception of interiors"	2013	FRONTIERS IN PSYCHOLOGY	Article	10.3389/fpsyg.2013.00354		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Abschätzung von Distanzen	Psychology / Human factors	Body Illusion	Virtual Research Systems VR1280	None	24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bruder, G; Steinicke, F; Bolte, B; Wieland, P; Frenz, H; Lappe, M"	Exploiting perceptual limitations and illusions to support walking through virtual environments in confined physical spaces	2013	DISPLAYS	Article	10.1016/j.displa.2012.10.007		Nein	Volltext	kein Vergleich zu realer Anwendung	evtl. Ausnutzung von Illussionen biem Laufen	Softwareentwicklung	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Laha, B; Bowman, DA; Schiffbauer, JD"	Validation of the MR Simulation Approach for Evaluating the Effects of Immersion on Visual Analysis of Volume Data	2013	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	10.1109/TVCG.2013.43		ja	Volltext	nur Technik		Psychology / Human factors	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Piryankova, IV; de la Rosa, S; Kloos, U; Bulthoff, HH; Mohler, BJ"	Egocentric distance perception in large screen immersive displays	2013	DISPLAYS	Article	10.1016/j.displa.2013.01.001		ja	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wright, WG; Agah, MR; Darvish, K; Keshner, EA"	Head Stabilization Shows Visual and Inertial Dependence During Passive Stimulation: Implications for Virtual Rehabilitation	2013	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING	Article	10.1109/TNSRE.2012.2237040		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Regia-Corte, T; Marchal, M; Cirio, G; Lecuyer, A"	Perceiving affordances in virtual reality: influence of person and environmental properties in perception of standing on virtual grounds	2013	VIRTUAL REALITY	Article	10.1007/s10055-012-0216-3		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Wahrnehmung von Stehen auf geneigten Oberflächen	Psychology / Human factors	Balance	eMagin Z800		12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Llobera, J; Gonzalez-Franco, M; Perez-Marcos, D; Valls-Sole, J; Slater, M; Sanchez-Vives, MV"	Virtual reality for assessment of patients suffering chronic pain: a case study	2013	EXPERIMENTAL BRAIN RESEARCH	Article	10.1007/s00221-012-3352-9		ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Garcia, AS; Olivas, A; Molina, JP; Martinez, J; Gonzalez, P; Martinez, D"	An Evaluation of Targeting Accuracy in Immersive First-Person Shooters Comparing Different Tracking Approaches and Mapping Models	2013	JOURNAL OF UNIVERSAL COMPUTER SCIENCE	Article	00.0000/0001		nein	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lee, RG; Tien, SC; Chen, CC; Chen, YY"	DEVELOPMENT OF AN AUGMENTED REALITY-ORIENTED GAME SYSTEM FOR STROKE REHABILITATION ASSESSMENT	2012	BIOMEDICAL ENGINEERING-APPLICATIONS BASIS COMMUNICATIONS	Article	10.4015/S1016237212500391		ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kilteni, K; Normand, JM; Sanchez-Vives, MV; Slater, M"	Extending Body Space in Immersive Virtual Reality: A Very Long Arm Illusion	2012	PLOS ONE	Article	10.1371/journal.pone.0040867		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Petkov, K; Papadopoulos, C; Zhang, M; Kaufman, AE; Gu, XD"	Interactive Visibility Retargeting in VR Using Conformal Visualization	2012	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	10.1109/TVCG.2011.278		nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Troger, C; Ewald, H; Glotzbach, E; Pauli, P; Muhlberger, A"	Does pre-exposure inhibit fear context conditioning? A Virtual Reality Study	2012	JOURNAL OF NEURAL TRANSMISSION	Article	10.1007/s00702-011-0757-8		ja	Abstract	VR nur als Methode		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ling, Y; Brinkman, WP; Nefs, HT; Qu, C; Heynderickx, I"	Effects of Stereoscopic Viewing on Presence, Anxiety, and Cybersickness in a Virtual Reality Environment for Public Speaking	2012	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/PRES_a_00111		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Campos, JL; Butler, JS; Bulthoff, HH"	Multisensory integration in the estimation of walked distances	2012	EXPERIMENTAL BRAIN RESEARCH	Article	10.1007/s00221-012-3048-1		ja	Sample		Perception of walking distance	Psychology / Human factors	Movement / Navigation	eMagin Z800	Game controller	25			x	 	 	 	 	x	x	 	 	 	 	 	 	x	x	 	 	x	 	x	 	x
WOS	"Kellner, F; Bolte, B; Bruder, G; Rautenberg, U; Steinicke, F; Lappe, M; Koch, R"	Geometric Calibration of Head-Mounted Displays and its Effects on Distance Estimation	2012	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	"Article; Proceedings Paper"	10.1109/TVCG.2012.45		ja	Abstract	kein VR		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kastanis, I; Slater, M"	Reinforcement Learning Utilizes Proxemics: An Avatar Learns to Manipulate the Position of People in Immersive Virtual Reality	2012	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	10.1145/2134203.2134206		ja	Abstract	kein Bezug zu manueller Kommissionierung	Vergleich sozialer Nähe	Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kang, HK; Kim, Y; Chung, Y; Hwang, S"	Effects of treadmill training with optic flow on balance and gait in individuals following stroke: randomized controlled trials	2012	CLINICAL REHABILITATION	Article	10.1177/0269215511419383		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Gleichgewichtstraining	Medizin	Rehabilitation / Treatment	MSP-209, Kowon Technology	Treadmill	30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Normand, JM; Spanlang, B; Tecchia, F; Carrozzino, M; Swapp, D; Slater, M"	Full Body Acting Rehearsal in a Networked Virtual Environment-A Case Study	2012	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/PRES_a_00089		ja	Abstract	nur Technik		Softwareentwicklung	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Arias, P; Robles-Garcia, V; Sanmartin, G; Flores, J; Cudeiro, J"	Virtual Reality as a Tool for Evaluation of Repetitive Rhythmic Movements in the Elderly and Parkinson's Disease Patients	2012	PLOS ONE	Article	10.1371/journal.pone.0030021		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Finger Movement Vergleich VR Real	Medizin	Measurement of body functions	Vuzix iWear VR920	None	34			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gordon, NS; Merchant, J; Zanbaka, C; Hodges, LF; Goolkasian, P"	Interactive gaming reduces experimental pain with or without a head mounted display	2011	COMPUTERS IN HUMAN BEHAVIOR	Article	10.1016/j.chb.2011.06.006		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dodds, TJ; Mohler, BJ; Bulthoff, HH"	Talk to the Virtual Hands: Self-Animated Avatars Improve Communication in Head-Mounted Display Virtual Environments	2011	PLOS ONE	Article	10.1371/journal.pone.0025759		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Magdalon, EC; Michaelsen, SM; Quevedo, AA; Levin, MF"	Comparison of grasping movements made by healthy subjects in a 3-dimensional immersive virtual versus physical environment	2011	ACTA PSYCHOLOGICA	Article	10.1016/j.actpsy.2011.05.015		ja	Sample		Reach and grasp with and withour haptic feedback in comparison to real world	Ergonomie	Haptics / Physical interaction	Kaiser XL50	Cyberglove & Cybergrasp, Immersion Corp.	10			x	x	 	 	 	x	 	 	 	 	x	x	 	 	 	 	x	 	 	x	 	x
WOS	"Steinicke, F; Bruder, G; Hinrichs, K; Willemsen, P"	Change Blindness Phenomena for Virtual Reality Display Systems	2011	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	10.1109/TVCG.2011.41		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Change blindness	Human Biology	Visual perception	ProView SR80 HMD	None	18			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gilson, SJ; Fitzgibbon, AW; Glennerster, A"	An automated calibration method for non-see-through head mounted displays	2011	JOURNAL OF NEUROSCIENCE METHODS	Article	10.1016/j.jneumeth.2011.05.011		nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Steinicke, F; Bruder, G; Kuhl, S; Willemsen, P; Lappe, M; Hinrichs, KH"	Natural Perspective Projections for Head-Mounted Displays	2011	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	10.1109/TVCG.2010.248		ja	Sample		Vergleich Field of View	Psychology / Human factors	Visual perception	Rockwell Collins ProView SR80 	Nintendo Wii Controller & PowerMate input device	21	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	 	 	x
WOS	"Subramanian, SK; Levin, MF"	Viewing medium affects arm motor performance in 3D virtual environments	2011	JOURNAL OF NEUROENGINEERING AND REHABILITATION	Article	10.1186/1743-0003-8-36		ja	Abstract	kein Vergleich zu realer Anwendung		Ergonomie	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yussof, H; Capi, G; Nasu, Y; Yamano, M; Ohka, M"	A CORBA-Based Control Architecture for Real-Time Teleoperation Tasks in a Developmental Humanoid Robot	2011	INTERNATIONAL JOURNAL OF ADVANCED ROBOTIC SYSTEMS	Article	00.0000/0002		nein	Titel	nur Technik		Softwareentwicklung	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Naceri, A; Chellali, R; Hoinville, T"	Depth Perception Within Peripersonal Space Using Head-Mounted Display	2011	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/PRES_a_00048		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	Cybermind Visette45 SXGA	Motion Tracking	51			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yavrucuk, I; Kubali, E; Tarimci, O"	A Low Cost Flight Simulator Using Virtual Reality Tools	2011	IEEE AEROSPACE AND ELECTRONIC SYSTEMS MAGAZINE	Article	10.1109/MAES.2011.5763338		nein	Abstract	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Stone, RJ	The (human) science of medical virtual learning environments	2011	PHILOSOPHICAL TRANSACTIONS OF THE ROYAL SOCIETY B-BIOLOGICAL SCIENCES	Article	10.1098/rstb.2010.0209		nein	Volltext	Review	evtl. interessant	Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Normand, JM; Giannopoulos, E; Spanlang, B; Slater, M"	Multisensory Stimulation Can Induce an Illusion of Larger Belly Size in Immersive Virtual Reality	2011	PLOS ONE	Article	10.1371/journal.pone.0016128		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Juan, MC; Calatrava, J"	An Augmented Reality System for the Treatment of Phobia to Small Animals Viewed Via an Optical See-Through HMD: Comparison With a Similar System Viewed Via a Video See-Through HMD	2011	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER INTERACTION	Article	10.1080/10447318.2011.552059		ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ragan, ED; Sowndararajan, A; Kopper, R; Bowman, DA"	The Effects of Higher Levels of Immersion on Procedure Memorization Performance and Implications for Educational Virtual Environments	2010	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/pres_a_00016		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yang, JC; Chen, CH; Jeng, MC"	Integrating video-capture virtual reality technology into a physically interactive learning environment for English learning	2010	COMPUTERS & EDUCATION	Article	10.1016/j.compedu.2010.06.005		ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"de la Pena, N; Weil, P; Llobera, J; Giannopoulos, E; Pomes, A; Spanlang, B; Friedman, D; Sanchez-Vives, MV; Slater, M"	Immersive Journalism: Immersive Virtual Reality for the First-Person Experience of News	2010	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	"Article; Proceedings Paper"	10.1162/PRES_a_00005		nein	Abstract	nur Technik		Journalism	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dahlquist, LM; Weiss, KE; Law, EF; Sil, S; Herbert, LJ; Horn, SB; Wohlheiter, K; Ackerman, CS"	Effects of Videogame Distraction and a Virtual Reality Type Head-Mounted Display Helmet on Cold Pressor Pain in Young Elementary School-Aged Children	2010	JOURNAL OF PEDIATRIC PSYCHOLOGY	Article	10.1093/jpepsy/jsp082		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Jota, R; de Araujo, BR; Bruno, LC; Pereira, JM; Jorge, JA"	IMMIView: a multi-user solution for design review in real-time	2010	JOURNAL OF REAL-TIME IMAGE PROCESSING	Article	10.1007/s11554-009-0141-1		nein	Abstract	nur Technik		Design	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Durgin, FH; Li, Z"	Controlled interaction: Strategies for using virtual reality to study perception	2010	BEHAVIOR RESEARCH METHODS	Article	10.3758/BRM.42.2.414		ja	Volltext	nur Technik	interessant: Unterschiede bezüglich Limitationen von HMD	Psychology / Human factors	Visual perception	NVIS nVisor ST50		24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Manders, C; Farbiz, F; Yin, TK; Yuan, ML; Guan, CG"	A gesture control system for intuitive 3D interaction with virtual objects	2010	COMPUTER ANIMATION AND VIRTUAL WORLDS	"Article; Proceedings Paper"	10.1002/cav.324		nein	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kim, K; Kim, SI; Cha, KR; Park, J; Rosenthal, MZ; Kim, JJ; Han, K; Kim, IY; Kim, CH"	Development of a computer-based behavioral assessment of checking behavior in obsessive-compulsive disorder	2010	COMPREHENSIVE PSYCHIATRY	Article	10.1016/j.comppsych.2008.12.001		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Portales, C; Lerma, JL; Navarro, S"	Augmented reality and photogrammetry: A synergy to visualize physical and virtual city environments	2010	ISPRS JOURNAL OF PHOTOGRAMMETRY AND REMOTE SENSING	Article	10.1016/j.isprsjprs.2009.10.001		nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Polonen, M; Jarvenpaa, T; Hakkinen, J"	Comparison of Near-to-Eye Displays: Subjective Experience and Comfort	2010	JOURNAL OF DISPLAY TECHNOLOGY	Article	10.1109/JDT.2009.2029123		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. allgemein Workload bei HMD	Hardwareentwicklung und Evaluation	Evaluation of VR systems	multiple		99			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Teramoto, W; Riecke, BE"	Dynamic visual information facilitates object recognition from novel viewpoints	2010	JOURNAL OF VISION	Article	10.1167/10.13.11		ja	Abstract	VR nur als Methode		Human Biology	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Markus, LA; Willems, KE; Maruna, CC; Schmitz, CL; Pellino, TA; Wish, JR; Faucher, LD; Schurr, MJ"	Virtual reality: Feasibility of implementation in a regional burn center	2009	BURNS	Article	10.1016/j.burns.2009.01.013		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kozulin, P; Ames, SL; McBrien, NA"	Effects of a Head-Mounted Display on the Oculomotor System of Children	2009	OPTOMETRY AND VISION SCIENCE	Article	10.1097/OPX.0b013e3181adff42		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dahlquist, LM; Weiss, KE; Clendaniel, LD; Law, EF; Ackerman, CS; McKenna, KD"	Effects of Videogame Distraction using a Virtual Reality Type Head-Mounted Display Helmet on Cold Pressor Pain in Children	2009	JOURNAL OF PEDIATRIC PSYCHOLOGY	Article	10.1093/jpepsy/jsn023		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Juan, MC; Perez, D"	Comparison of the Levels of Presence and Anxiety in an Acrophobic Environment Viewed via HMD or CAVE	2009	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/pres.18.3.232		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Knaut, LA; Subramanian, SK; McFadyen, BJ; Bourbonnais, D; Levin, MF"	Kinematics of Pointing Movements Made in a Virtual Versus a Physical 3-Dimensional Environment in Healthy and Stroke Subjects	2009	ARCHIVES OF PHYSICAL MEDICINE AND REHABILITATION	"Article; Proceedings Paper"	10.1016/j.apmr.2008.10.030		ja	Sample		interssant: Vergleich Pointing Movement	Medizin	Body kinematics / Hand movements	Kaiser XL50		15			x	x	 	 	 	x	 	 	 	 	x	 	 	 	x	 	x	 	 	x	 	x
WOS	"Li, XG; Cai, C; Wu, JL"	Measurement and Analysis of Binocular Perceptual Characteristics with Peripheral Vision for the Development of Head Mounted Display with Wide View	2009	INFORMATION-AN INTERNATIONAL INTERDISCIPLINARY JOURNAL	Article	00.0000/0003		nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sarig-Bahat, H; Weiss, PL; Laufer, Y"	Cervical Motion Assessment Using Virtual Reality	2009	SPINE	Article	10.1097/BRS.0b013e31819b3254		ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Semeraro, F; Frisoli, A; Bergamasco, M; Cerchiari, EL"	Virtual reality enhanced mannequin (VREM) that is well received by resuscitation experts	2009	RESUSCITATION	Article	10.1016/j.resuscitation.2008.12.016		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sousa Santos, B; Dias, P; Pimentel, A; Baggerman, JW; Ferreira, C; Silva, S; Madeira, J"	Head-mounted display versus desktop for 3D navigation in virtual reality: a user study	2009	MULTIMEDIA TOOLS AND APPLICATIONS	Article	10.1007/s11042-008-0223-2		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Vergleich Navidation	Hardwareentwicklung und Evaluation	Movement / Navigation	i-glasses SVGA Pro		42			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huang, SF; Tsai, PY; Sung, WH; Lin, CY; Chuang, TY"	The Comparisons of Heart Rate Variability and Perceived Exertion During Simulated Cycling with Various Viewing Devices	2008	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/pres.17.6.575		ja	Volltext	kein Bezug zu manueller Kommissionierung	evtzl. Interessant: Heart Rate im Vergleich zu real	Human Biology	Measurement of body functions			16			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Vincent, DS; Sherstyuk, A; Burgess, L; Connolly, KK"	Teaching Mass Casualty Triage Skills Using Immersive Three-dimensional Virtual Reality	2008	ACADEMIC EMERGENCY MEDICINE	Article	10.1111/j.1553-2712.2008.00191.x		ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Aoki, H; Oman, CM; Buckland, DA; Natapoff, A"	Desktop-VR system for preflight 3D navigation training	2008	ACTA ASTRONAUTICA	Article	10.1016/j.actaastro.2007.11.001		ja	Abstract	kein Vergleich zu realer Anwendung		Aviation	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"David, Y; Efron, U"	The image transceiver device: Studies of improved physical design	2008	SENSORS	Article	10.3390/s8074350		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kang, YJ; Ku, J; Han, K; Kim, SI; Yu, TW; Lee, JH; Park, CI"	Development and clinical trial of virtual reality-based cognitive assessment in people with stroke: Preliminary study	2008	CYBERPSYCHOLOGY & BEHAVIOR	Article	10.1089/cpb.2007.0116		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Myall, DJ; MacAskill, MR; Davidson, PR; Anderson, TJ; Jones, RD"	Design of a modular and low-latency virtual-environment platform for applications in motor adaptation research, neurological disorders, and neurorehabilitation	2008	IEEE TRANSACTIONS ON NEURAL SYSTEMS AND REHABILITATION ENGINEERING	Article	10.1109/TNSRE.2008.922676		nein	Abstract	nur Technik		Human Biology	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Viaud-Delmon, I; Warusfel, O; Seguelas, A; Rio, E; Jouvent, R"	High sensitivity to multisensory conflicts in agoraphobia exhibited by virtual reality	2006	EUROPEAN PSYCHIATRY	Article	10.1016/j.eurpsy.2004.10.004		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sharples, S; Cobb, S; Moody, A; Wilson, JR"	Virtual reality induced symptoms and effects (VRISE): Comparison of head mounted display (HMD), desktop and projection display systems	2008	DISPLAYS	Article	10.1016/j.displa.2007.09.005		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Vergleich HMD zu normaler Leinwand (Übelkeit)	Hardwareentwicklung und Evaluation	Evaluation of VR systems	Virtual Research Systems V8 HMD		139			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Romero, G; Maroto, J; Felez, J; Cabanellas, JM; Martinez, ML; Carretero, A"	Virtual reality applied to a full simulator of electrical sub-stations	2008	ELECTRIC POWER SYSTEMS RESEARCH	Article	10.1016/j.epsr.2007.03.014		nein	Abstract	nur Technik		Ingenieurwesen / Physik	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schneider, E; Jahn, K; Dieterich, M; Brandt, T; Strupp, M"	Gait deviations induced by visual stimulation in roll	2008	EXPERIMENTAL BRAIN RESEARCH	Article	10.1007/s00221-007-1134-6		ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mihalik, JP; Kohli, L; Whitton, MC"	Do the physical characteristics of a virtual reality device contraindicate its use for balance assessment?	2008	JOURNAL OF SPORT REHABILITATION	Article	10.1123/jsr.17.1.38		ja	Volltext	kein VR	Effect of HMD weight on balance	Ergonomie	Balance	Virtual Research Systems V8 HMD		20			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pan, CX; Smith, S"	3D Stereo Vision System Effectiveness for Engineering Design and Graphics Education	2008	COMPUTER APPLICATIONS IN ENGINEERING EDUCATION	Article	10.1002/cae.20145		ja	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Seward, AE; Ashmead, DH; Bodenheimer, B"	Using Virtual Environments to Assess Time-to-Contact Judgments from Pedestrian Viewpoints	2007	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	10.1145/1278387.1278392		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Beurteilung von Entfernungen in VR	Hardwareentwicklung und Evaluation	Visual perception	eMagin Z800	Joystick Logitech Aattack 3	8			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Dahlquist, LM; McKenna, KD; Jones, KK; Dillinger, L; Weiss, KE; Ackerman, CS"	Active and passive distraction using a head-mounted display helmet: Effects on cold pressor pain in children	2007	HEALTH PSYCHOLOGY	Article	10.1037/0278-6133.26.6.794		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chandaria, J; Thomas, GA; Stricker, D"	The MATRIS project: real-time markerless camera tracking for Augmented Reality and broadcast applications	2007	JOURNAL OF REAL-TIME IMAGE PROCESSING	Article	10.1007/s11554-007-0043-z		nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sugita, N; Yoshizawa, M; Abe, M; Tanaka, A; Watanabe, T; Chiba, S; Yambe, T; Nitta, S"	Evaluation of adaptation to visually induced motion sickness based on the maximum cross-correlation between pulse transmission time and heart rate	2007	JOURNAL OF NEUROENGINEERING AND REHABILITATION	Article	10.1186/1743-0003-4-35		ja	Volltext	kein VR	evtl. Motion sickness	Human Biology	Cybersickness / Fatigue			21			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Aoki, H; Oman, CM; Natapoff, A"	Virtual-reality-based 3D navigation training for emergency egress from spacecraft	2007	AVIATION SPACE AND ENVIRONMENTAL MEDICINE	Article	00.0000/0004		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Training von Orientierung und räumliche Wahrnehmung	Aviation	Training	Virtual Research Systems V8 HMD	Hand controller Thrustmaster FireStorm Dual Analog 3	36			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Giphart, JE; Chou, YH; Kim, DH; Bortnyk, CT; Wagenaar, RC"	Effects of virtual reality immersion and walking speed on coordination of arm and leg movements	2007	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/pres.16.4.399		Ja	Sample		Comparison of walking coordination	Ergonomie	Movement / Navigation	ProView 60 HMD Kaiser	Motion Tracking, Foot Switch, Treadmill	10	x		 	x	 	 	 	 	x	 	 	 	 	 	 	 	x	 	x	 	 	 	 	x
WOS	"Williams, B; Narasimham, G; Westerman, C; Rieser, J; Bodenheimer, B"	Functional Similarities in Spatial Representations Between Real and Virtual Environments	2007	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	10.1145/1265957.1265961		ja	Sample		 Vergleich räumliches Lernen	Psychology / Human factors	Visual perception	Virtual Research Systems V8 HMD	None	30	x		 	x	 	 	x	 	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	 
WOS	"Ryu, J; Hashimoto, N; Sato, M; Soeda, M; Ohno, R"	Application of human-scale immersive VR system for environmental design assessment - A proposal for an architectural design evaluation tool	2007	JOURNAL OF ASIAN ARCHITECTURE AND BUILDING ENGINEERING	Article	10.3130/jaabe.6.57		ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Doerr, KU; Rademacher, H; Huesgen, S; Kubbat, W"	Evaluation of a low-cost 3D sound system for immersive virtual reality training systems	2007	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	10.1109/TVCG.2007.37		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Perception of sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Heineken, E; Schulte, FP"	Seeing size and feeling weight: The size-weight illusion in natural and virtual reality	2007	HUMAN FACTORS	Article	10.1518/001872007779598028		ja	Sample		interessant: Vergleich von Gewichten	Ergonomie	Haptics / Physical interaction	Visette Pro HMD	Real object in VR	30			x	x	 	 	 	x	 	 	 	 	 	x	 	 	 	 	x	 	 	x	x	 
WOS	"Pfurtscheller, G; Scherer, R; Leeb, R; Keinrath, C; Neuper, C; Lee, F; Bischof, H"	Viewing moving objects in virtual reality can change the dynamics of sensorimotor EEG rhythms	2007	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/pres.16.1.111		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Durgin, FH; Reed, C; Tigue, C"	Step Frequency and Perceived Self-Motion	2007	ACM TRANSACTIONS ON APPLIED PERCEPTION	Article	10.1145/1227134.1227139		ja	Volltext	VR nur als Methode	evtl. Laufen auf Laufband	Ergonomie	Movement / Navigation	V8 & nVis Cybermind HMD	Treadmill	58			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schneider, SM; Hood, LE"	Virtual reality: A distraction intervention for chemotherapy	2007	ONCOLOGY NURSING FORUM	Article	10.1188/07.ONF.39-46		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hoffman, HG; Seibel, EJ; Richards, TL; Furness, TA; Patterson, DR; Sharar, SR"	Virtual reality helmet display quality influences the magnitude of virtual reality analgesia	2006	JOURNAL OF PAIN	Article	10.1016/j.jpain.2006.04.006		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nagahara, H; Yagi, Y; Yachida, M"	Super wide field of view head mounted display using catadioptrical optics	2006	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	"Article; Proceedings Paper"	10.1162/pres.15.5.588		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Sarlat, L; Warusfel, O; Viaud-Delmon, I"	Ventriloquism aftereffects occur in the rear hemisphere	2006	NEUROSCIENCE LETTERS	Article	10.1016/j.neulet.2006.06.007		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of sound						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lin, CS; Ho, CW; Chang, KC; Hung, SS; Shei, HJ; Yeh, MS"	A novel device for head gesture measurement system in combination with eye-controlled human-machine interface	2006	OPTICS AND LASERS IN ENGINEERING	Article	10.1016/j.optlaseng.2005.06.005		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mania, K; Wooldridge, D; Coxon, M; Robinson, A"	The effect of visual and interaction fidelity on spatial cognition in immersive virtual environments	2006	IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS	Article	10.1109/TVCG.2006.55		nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Memory Assessment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Chevaldonne, M; Ballaz, C; Merienne, F; Neveu, M; Chevassus, N; Guillaume, F; Arbez, C"	Field-of-view tests for a virtual cockpit application	2006	JOURNAL OF ELECTRONIC IMAGING	Article	10.1117/1.2189211		ja	Abstract	kein Vergleich zu realer Anwendung		Aviation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ronkko, J; Markkanen, J; Launonen, R; Ferrino, M; Gaia, E; Basso, V; Patel, H; D'Cruz, M; Laukkanen, S"	Multimodal astronaut virtual training prototype	2006	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES	Article	10.1016/j.ijhcs.2005.08.004		nein	Abstract	kein VR		Aviation	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yabuki, N; Machinaka, H; Li, ZT"	A cooperative engineering environment using virtual reality with sensory user interfaces for steel bridge erection	2006	COOPERATIVE DESIGN, VISUALIZATION, AND ENGINEERING, PROCEEDINGS	"Article; Proceedings Paper"	00.0000/0005		nein	Abstract	nur Technik		Ingenieurwesen / Physik	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Nagahara, H; Yagi, Y; Yachida, M"	A wide-field-of-view catadioptrical head-mounted display	2006	ELECTRONICS AND COMMUNICATIONS IN JAPAN PART II-ELECTRONICS	Article	10.1002/ecjb.20304		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Pierno, AC; Caria, A; Castiello, U"	Crossmodal binding in localizing objects outside the field of view	2006	VISUAL COGNITION	Article	10.1080/13506280544000273		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rand, D; Kizony, R; Feintuch, U; Katz, N; Josman, N; Rizzo, A; Weiss, PL"	Comparison of two VR platforms for rehabilitation: Video capture versus HMD	2005	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/1054746053967012		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Ames, SL; Wolffsohn, JS; McBrien, NA"	The development of a symptom questionnaire for assessing virtual reality viewing using a head-mounted display	2005	OPTOMETRY AND VISION SCIENCE	Article	10.1097/01.OPX.0000156307.95086.6		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Malkawi, AM; Srinivasan, RS"	A new paradigm for Human-Building Interaction: the use of CFD and Augmented Reality	2005	AUTOMATION IN CONSTRUCTION	Article	10.1016/j.autcon.2004.08.001		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Farago, P; Barros, L; Cunha, G; Landau, L; Costa, RM"	ATDV: An image transforming system	2005	COMPUTATIONAL SCIENCE - ICCS 2005, PT 1, PROCEEDINGS	"Article; Proceedings Paper"	00.0000/0006		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Choi, JD; Hwang, CJ"	An interaction interface for multiple agents on shared 3D display	2005	COOPERATIVE DESIGN, VISUALIZATION, AND ENGINEERING, PROCEEDINGS	"Article; Proceedings Paper"	00.0000/0007		Nein	Titel	nur Technik		Softwareentwicklung	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cho, BH; Kim, S; Shin, DI; Lee, JH; Lee, SM; Kim, IY; Kim, SI"	Neurofeedback training with virtual reality for inattention and impulsiveness	2004	CYBERPSYCHOLOGY & BEHAVIOR	Article	10.1089/cpb.2004.7.519		Ja	Sample		evtl. Training längerer Aufmerksamkeit	Psychology / Human factors	Training	HMD Daeyang E&C		28		x	 	 	x	 	x	 	 	 	 	 	 	 	x	 	x	 	x	 	 	 	x	 
WOS	"Liverani, A; Amati, G; Caligiana, G"	A CAD-augmented reality integrated environment for assembly sequence check and interactive validation	2004	CONCURRENT ENGINEERING-RESEARCH AND APPLICATIONS	Article	10.1177/1063293X04042469		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Duh, HBL; Parker, DE; Philips, JO; Furness, TA"	Conflicting motion cues to the visual and vestibular self-motion systems around 0.06 Hz evoke simulator sickness	2004	HUMAN FACTORS	Article	10.1518/hfes.46.1.142.30384		Ja	Abstract	VR nur als Methode		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Moreno, R; Mayer, RE"	Personalized messages that promote science learning in virtual environments	2004	JOURNAL OF EDUCATIONAL PSYCHOLOGY	Article	10.1037/0022-0663.96.1.165		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Krijn, M; Emmelkamp, PMG; Biemond, R; de Ligny, CD; Schuemie, MJ; van der Mast, CAPG"	Treatment of acrophobia in virtual reality: The role of immersion and presence	2004	BEHAVIOUR RESEARCH AND THERAPY	Article	10.1016/S0005-7967(03)00139-6		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Barrera, S; Romanos, P; Saito, S; Takahashi, H; Nakajima, M"	WARAJI: Foot-driven navigation interfaces for virtual reality applications	2004	ADVANCES IN MULTIMEDIA INFORMATION PROCESSING - PCM 2004, PT 3, PROCEEDINGS	"Article; Proceedings Paper"	00.0000/0008		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Choi, JD; Jang, BT; Hwang, CJ"	Collaborative interactions on 3D display for multi-user game environments	2004	COMPUTER HUMAN INTERACTION: PROCEEDINGS	"Article; Proceedings Paper"	00.0000/0009		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Suzuki, Y; Onda, Y; Katada, S; Ino, S; Ifukube, T"	Effects of an eyeglass-free 3-D display on the human visual system	2004	JAPANESE JOURNAL OF OPHTHALMOLOGY	Article	10.1007/s10384-003-0001-7		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Huang, WS; Shing, CY; Fung, CP; Chuang, TY; Jeng, MC; Doong, JL"	Assessment of various display devices on a virtual reality-based hand rehabilitation system	2004	ROBOTICA	Article	10.1017/S0263574703005447		Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yambe, T; Yoshizawa, M; Fukudo, S; Fukuda, H; Kawashima, R; Shizuka, K; Nanka, S; Tanaka, A; Abe, K; Shouji, T; Hongo, M; Tabayashi, K; Nitta, S"	Can personality traits predict pathological responses to audiovisual stimulation?	2003	BIOMEDICINE & PHARMACOTHERAPY	"Article; Proceedings Paper"	10.1016/j.biopha.2003.08.010		Ja	Abstract	VR nur als Methode		Psychology / Human factors	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Webb, NA; Griffin, MJ"	Eye movement, vection, and motion sickness with foveal and peripheral vision	2003	AVIATION SPACE AND ENVIRONMENTAL MEDICINE	Article	00.0000/0010		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wendt, M; Sauer, F; Khamene, A; Bascle, B; Vogt, S; Wacker, FK"	A head-mounted display system for augmented reality: Initial evaluation for interventional MRI	2003	ROFO-FORTSCHRITTE AUF DEM GEBIET DER RONTGENSTRAHLEN UND DER BILDGEBENDEN VERFAHREN	Article	10.1055/s-2003-37831		Ja	Titel	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Reinhart, G; Patron, C"	Integrating augmented reality in the assembly domain - Fundamentals, benefits and applications	2003	CIRP ANNALS-MANUFACTURING TECHNOLOGY	Article	10.1016/S0007-8506(07)60517-4		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"de la Riviere, JB; Guitton, P"	Hand postures recognition in large-display VR environments	2003	GESTURE-BASED COMMUNICATION IN HUMAN-COMPUTER INTERACTION	"Article; Proceedings Paper"	00.0000/0011		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hadipriono, FC; Duane, JW; Nemeth, ZA; Won, S"	Implementation of a virtual environment for traffic accident simulation Part II: Developing the virtual environment	2003	JOURNAL OF INTELLIGENT & FUZZY SYSTEMS	Article	00.0000/0012		Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Baram, Y; Aharon-Peretz, J; Simionovici, Y; Ron, L"	Walking on virtual tiles	2002	NEURAL PROCESSING LETTERS	Article	10.1023/A:1021778608344		Ja	Volltext	kein VR	evtl. Vergleich Laufen	Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Lin, CS	An eye behavior measuring device for VR system	2002	OPTICS AND LASERS IN ENGINEERING	Article	10.1016/S0143-8166(02)00034-9		Nein	Titel	nur Technik		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Moreno, R; Mayer, RE"	Learning science in virtual reality multimedia environments: Role of methods and media	2002	JOURNAL OF EDUCATIONAL PSYCHOLOGY	Article	10.1037//0022-0663.94.3.598		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Zhao, QL; Wang, ZQ; Mu, GG; Lu, ZW"	Refractive-diffractive visual system for micro-display of LCOS	2002	CHINESE SCIENCE BULLETIN	Article	10.1360/02tb9297			Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Antoniac, P; Pulli, P; Kuroda, T; Bendas, D; Hickey, S; Sasaki, H"	Wireless user perspectives in Europe: HandSmart mediaphone interface	2002	WIRELESS PERSONAL COMMUNICATIONS	"Article; Proceedings Paper"	10.1023/A:1019960305038		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hanna, G; Cuschieri, A"	Image display technology and image processing	2001	WORLD JOURNAL OF SURGERY	Article	10.1007/s00268-001-0127-z		Nein	Abstract	nur Technik		Medizin	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Regenbrecht, H; Baratoff, G; Wagner, M"	A tangible AR desktop environment	2001	COMPUTERS & GRAPHICS-UK	Article	10.1016/S0097-8493(01)00118-2		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Neale, H; Nichols, S"	Theme-based content analysis: a flexible method for virtual environment evaluation	2001	INTERNATIONAL JOURNAL OF HUMAN-COMPUTER STUDIES	Article	10.1006/ijhc.2001.0475		Nein	Abstract	nur Technik		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Rizzo, AA; Buckwalter, JG; McGee, JS; Bowerly, T; van der Zaag, C; Neumann, U; Thiebaux, M; Kim, L; Pair, J; Chua, C"	Virtual environments for assessing and rehabilitating cognitive/functional performance - A review of projects at the USC Integrated Media Systems Center	2001	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/1054746011470226		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Schultheis, MT; Mourant, RR"	Virtual reality and driving: Tthe road to better assessment for cognitively impaired populations	2001	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/1054746011470271		Nein	Volltext	nur Technik	evtl. Vergleich Autofahren	Psychology / Human factors	Diagnosis						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Di Girolamo, S; Picciotti, P; Sergi, B; Di Nardo, W; Paludetti, G; Ottaviani, F"	Vestibule-ocular reflex modification after virtual environment exposure	2001	ACTA OTO-LARYNGOLOGICA	Article	00.0000/0013		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Bochenek, GM; Ragusa, JM; Malone, LC"	Integrating virtual 3-D display systems into product design reviews: some insights from empirical testing	2001	INTERNATIONAL JOURNAL OF TECHNOLOGY MANAGEMENT	Article	10.1504/IJTM.2001.002917		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Design	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Korves, B; Loftus, M"	Designing an immersive virtual reality interface for layout planning	2000	JOURNAL OF MATERIALS PROCESSING TECHNOLOGY	"Article; Proceedings Paper"	10.1016/S0924-0136(00)00717-2		Nein	Abstract	nur Technik		Manufacturing	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Viaud-Delmon, I; Ivanenko, YP; Berthoz, A; Jouvent, R"	Adaptation as a sensorial profile in trait anxiety: A study with virtual reality	2000	JOURNAL OF ANXIETY DISORDERS	Article	10.1016/S0887-6185(00)00052-9		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Hill, KJ; Howarth, PA"	Habituation to the side effects of immersion in a virtual environment	2000	DISPLAYS	Article	10.1016/S0141-9382(00)00029-9		Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Geelhoed, E; Falahee, M; Latham, K"	Safety and comfort of eyeglass displays	2000	HANDHELD AND UBIQUITOUS COMPUTING, PROCEEDINGS	"Article; Proceedings Paper"	00.0000/0014		Nein	Abstract	nur Technik		Human Biology	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Birkfellner, W; Figl, M; Huber, K; Watzinger, F; Wanschitz, F; Hanel, R; Wagner, A; Rafolt, D; Ewers, R; Bergmann, H"	The varioscope AR - A head-mounted operating microscope for augmented reality	2000	MEDICAL IMAGE COMPUTING AND COMPUTER-ASSISTED INTERVENTION - MICCAI 2000	"Article; Proceedings Paper"	00.0000/0015		?	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wu, JR; Ouhyoung, M"	On latency compensation and its effects on head-motion trajectories in virtual environments	2000	VISUAL COMPUTER	Article	00.0000/0016		Ja	Abstract	nur Technik		Softwareentwicklung	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wagner, A; Millesi, W; Watzinger, F; Truppe, M; Rasse, M; Enislidis, G; Kermer, C; Ewers, R"	Clinical experience with interactive teleconsultation and teleassistance in craniomaxillofacial surgical procedures	1999	JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY	Article	10.1016/S0278-2391(99)90722-X		Ja	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kuno, S; Kawakita, T; Kawakami, O; Miyake, Y; Watanabe, S"	Postural adjustment response to depth direction moving patterns produced by virtual reality graphics	1999	JAPANESE JOURNAL OF PHYSIOLOGY	Article	10.2170/jjphysiol.49.417		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"So, RHY; Chung, GKM; Goonetilleke, RS"	Target-directed head movements in a head-coupled virtual environment: Predicting the effects of lags using Fitts' law	1999	HUMAN FACTORS	Article	10.1518/001872099779611067		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Morse, SE; Jiang, BC"	Oculomotor function after virtual reality use differentiates symptomatic from asymptomatic individuals	1999	OPTOMETRY AND VISION SCIENCE	Article	10.1097/00006324-199909000-00021		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Riva, G	Virtual reality as communication tool: A sociocognitive analysis	1999	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/105474699566341		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cobb, SVG; Nichols, S; Ramsey, A; Wilson, JR"	Virtual reality-induced symptoms and effects (VRISE)	1999	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	"Article; Proceedings Paper"	10.1162/105474699566152		Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Effect of Immersion						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Cameron, AA	Visor projected helmet mounted displays technology and applications	1999	MICROPROCESSORS AND MICROSYSTEMS	Article	10.1016/S0141-9331(98)00105-7		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Howarth, PA; Finch, M"	The nauseogenicity of two methods of navigating within a virtual environment	1999	APPLIED ERGONOMICS	Article	10.1016/S0003-6870(98)00041-6		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Übelkeit bein Laufen in VR	Ergonomie	Cybersickness / Fatigue	Virtual i-glasses		14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Howarth, PA	Oculomotor changes within virtual environments	1999	APPLIED ERGONOMICS	Article	10.1016/S0003-6870(98)00043-X		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Nichols, S	Physical ergonomics of virtual environment use	1999	APPLIED ERGONOMICS	Article	10.1016/S0003-6870(98)00045-3		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Ergonomie / Interaktion in VR	Ergonomie	Evaluation of VR systems			9			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Cobb, SVG; Nichols, SC"	Static posture tests for the assessment of postural instability after virtual environment use	1998	BRAIN RESEARCH BULLETIN	Article	10.1016/S0361-9230(98)00104-X		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Balance						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kramer, PD; Roberts, DC; Shelhamer, M; Zee, DS"	A versatile stereoscopic visual display system for vestibular and oculomotor research	1998	JOURNAL OF VESTIBULAR RESEARCH-EQUILIBRIUM & ORIENTATION	Article	00.0000/0017		Nein	Abstract	nur Technik		Human Biology	Hardware development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Emura, S; Tachi, S"	Multisensor integrated prediction for virtual reality	1998	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/105474698565811		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Lamour, R; Beach, DS; Berger, M; Marianovsky, E"	Advances in electrolytic sensors and their use in crash dummies	1998	MEASUREMENTS & CONTROL	Article	00.0000/0018			Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Mon-Williams, M; Plooy, A; Burgess-Limerick, R; Wann, J"	Gaze angle: a possible mechanism of visual stress in virtual reality headsets	1998	ERGONOMICS	Article	10.1080/001401398187035		Ja	Abstract	nur Technik		Human Biology	Effect of HMDs on Eyesight						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Satava, RM; Jones, SB"	Current and future applications of virtual reality for medicine	1998	PROCEEDINGS OF THE IEEE	Article	10.1109/5.662873		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Howarth, PA; Costello, PJ"	The occurrence of virtual simulation sickness symptoms when an HMD was used as a personal viewing system	1997	DISPLAYS	Article	10.1016/S0141-9382(97)00011-5		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Traill, DM; Bowskill, JM; Lawrence, PJ"	Interactive collaborative media environments	1997	BT TECHNOLOGY JOURNAL	Article	10.1023/A:1018639714611		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Wilson, JR	Virtual environments and ergonomics: needs and opportunities	1997	ERGONOMICS	"Article; Proceedings Paper"	10.1080/001401397187603		Nein	Volltext	kein Vergleich zu realer Anwendung	evtl. Ergonomie in VR	Ergonomie	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Yeh, TP; Vance, JM"	Combining MSC/NASTRAN, sensitivity methods, and virtual reality to facilitate interactive design	1997	FINITE ELEMENTS IN ANALYSIS AND DESIGN	Article	10.1016/S0168-874X(96)00078-9		Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Helsel, S	High-res VR displays	1997	COMPUTER GRAPHICS WORLD	Article	00.0000/0019			Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wagner, A; Rasse, M; Millesi, W; Ewers, R"	Virtual reality for orthognathic surgery: The augmented reality environment concept	1997	JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY	Article	10.1016/S0278-2391(97)90689-3		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Gruenbaum, PE; McNeely, WA; Sowizral, HA"	Implementation of dynamic robotic graphics for a virtual control panel	1997	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	10.1162/pres.1997.6.1.118		Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Komachi, Y; Miyazaki, K; Murata, T; Nagata, S; Kani, K"	Stereopsis with normal and reversed binocular parallax using a head mounted display in normal and strabismic subjects	1996	ERGONOMICS	Article	10.1080/00140139608964552		Ja	Abstract	VR nur als Methode		Ergonomie	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Kawara, T; Ohmi, M; Yoshizawa, T"	Effects on visual functions during tasks of object handling in virtual environment with a head mounted display	1996	ERGONOMICS	Article	10.1080/00140139608964557		Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. handling in VR	Ergonomie	Haptics / Physical interaction			23			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Matani, A; Ban, Y; Oshiro, O; Chihara, K"	A system for superimposing a 3-dimensional stereoscopic motion echo image of the heart onto the chest	1996	JAPANESE JOURNAL OF APPLIED PHYSICS PART 1-REGULAR PAPERS SHORT NOTES & REVIEW PAPERS	"Article; Proceedings Paper"	10.1143/JJAP.35.3121		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"Wagner, A; Ploder, O; Enislidis, G; Truppe, M"	Image guided surgery	1996	INTERNATIONAL JOURNAL OF ORAL AND MAXILLOFACIAL SURGERY	Article	10.1016/S0901-5027(96)80062-2		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	Hand, C	Other faces of Virtual Reality	1996	MULTIMEDIA, HYPERMEDIA AND VIRTUAL REALITY: MODELS, SYSTEMS, AND APPLICATIONS	"Article; Proceedings Paper"	00.0000/0020		Nein	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"ROBINETT, W; HOLLOWAY, R"	THE VISUAL-DISPLAY TRANSFORMATION FOR VIRTUAL-REALITY	1995	PRESENCE-TELEOPERATORS AND VIRTUAL ENVIRONMENTS	Article	00.0000/0021		Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"VOLTER, S; KRAMER, JL"	VIRTUAL-REALITY IN MEDICINE	1995	RADIOLOGE	Article	00.0000/0022			Titel	kein Zugriff									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"TAN, WC; MENG, THY"	A LOW-POWER HIGH-PERFORMANCE POLYGON RENDERER FOR COMPUTER-GRAPHICS	1995	JOURNAL OF VLSI SIGNAL PROCESSING	Article	10.1007/BF02407087		Nein	Titel	nur Technik		Softwareentwicklung	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"FROHLICH, B; GRUNST, G; KRUGER, W; WESCHE, G"	THE RESPONSIVE WORKBENCH - A VIRTUAL WORKING ENVIRONMENT FOR PHYSICIANS	1995	COMPUTERS IN BIOLOGY AND MEDICINE	Article	10.1016/0010-4825(94)00007-D		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"RU, JR; MING, OY"	REDUCING THE LATENCY IN HEAD-MOUNTED DISPLAYS BY A NOVEL PREDICTION METHOD USING GREY SYSTEM-THEORY	1994	COMPUTER GRAPHICS FORUM	Article	00.0000/0023		Nein	Titel	nur Technik		Softwareentwicklung	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"SHAW, C; GREEN, M; LIANG, JD; SUN, YQ"	DECOUPLED SIMULATION IN VIRTUAL-REALITY WITH THE MR TOOLKIT	1993	ACM TRANSACTIONS ON INFORMATION SYSTEMS	Article	10.1145/159161.173948		Nein	Abstract	nur Technik		Softwareentwicklung	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
WOS	"FEINER, S; MACINTYRE, B; SELIGMANN, D"	KNOWLEDGE-BASED AUGMENTED REALITY	1993	COMMUNICATIONS OF THE ACM	Article	10.1145/159544.159587		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ferrari, Vincenzo; Megali, Giuseppe; Troia, Elena; Pietrabissa, Andrea; Mosca, Franco"	A 3-D Mixed-Reality System for Stereoscopic Visualization of Medical Dataset.	2009	IEEE Transactions on Biomedical Engineering	Article	10.1109/TBME.2009.2028013			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Roessler, Andreas; Mueller-Spahn, Franz; Baehrer, Sabine; Bullinger, Alex H."	A Rapid Prototyping Framework for the Development of Virtual Environments in Mental Health.	2000	CyberPsychology & Behavior	Article	10.1089/10949310050078805		Nein	Abstract	nur Technik		Psychology / Human factors	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Baumann, Stephen; Neff, Chris; Fetzick, Scott; Stangl, Gregg; Basler, Lee; Vereneck, Ray; Schneider, Walter"	A Virtual Reality System for Neurobehavioral and Functional MRI Studies.	2003	CyberPsychology & Behavior	Article	10.1089/109493103322011542			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Kim, Gyeonghoon; Kim, Donghyun; Park, Seongwook; Kim, Youchang; Lee, Kyuho; Hong, Injoon; Bong, Kyeongryeol; Yoo, Hoi-Jun"	An Augmented Reality Processor with a Congestion-Aware Network-on-Chip Scheduler.	2014	IEEE Micro	Article	10.1109/MM.2014.94		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Simpson, Gordon; Johnston, Lucy; Richardson, Michael"	An investigation of road crossing in a virtual environment	2003	Accident Analysis & Prevention	Article	10.1016/S0001-4575(02)00081-7			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Kim, Kwanguk; Kim, Chan-Hyung; Cha, Kyung Ryeol; Park, Junyoung; Han, Kiwan; Kim, Yun Ki; Kim, Jae-Jin; Kim, In Young; Kim, Sun I."	Anxiety Provocation and Measurement Using Virtual Reality in Patients with Obsessive-Compulsive Disorder.	2008	CyberPsychology & Behavior	Article	10.1089/cpb.2008.0003			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Jeon, Bomyi; Cho, Sungkun; Lee, Jang-Han"	Application of Virtual Body Swapping to Patients with Complex Regional Pain Syndrome: A Pilot Study.	2014	CyberPsychology, Behavior & Social Networking	Article	10.1089/cyber.2014.0046		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort / Stress						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Zarraonandia, Telmo; Aedo, Ignacio; Díaz, Paloma; Montero Montes, Alvaro"	Augmented Presentations: Supporting the Communication in Presentations by Means of Augmented Reality.	2014	International Journal of Human-Computer Interaction	Article	10.1080/10447318.2014.927283		Ja	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Steed, Anthony; Steptoe, William; Oyekoya, Wole; Pece, Fabrizio; Weyrich, Tim; Kautz, Jan; Friedman, Doron; Peer, Angelika; Solazzi, Massimiliano; Tecchia, Franco; Bergamasco, Massimo; Slater, Mel"	Beaming: An Asymmetric Telepresence System.	2012	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2012.110		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration / Interaction						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Gogouvitis, X. V.; Vosniakos, G-C."	Construction of a virtual reality environment for robotic manufacturing cells.	2015	International Journal of Computer Applications in Technology	Article	10.1504/IJCAT.2015.069331		Nein	Abstract	nur Technik		Softwareentwicklung	Remote Control / Digital Twin						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Girard, Benoit; Turcotte, Vincent; Bouchard, Stéphane; Girard, Bruno"	Crushing Virtual Cigarettes Reduces Tobacco Addiction and Treatment Discontinuation.	2009	CyberPsychology & Behavior	Article	10.1089/cpb.2009.0118			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	Navab, Nassir	Developing Killer Apps for Industrial Augmented Reality.	2004	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2004.1297006		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Kesavadas, T.; Subramanium, Hari"	Development and pilot testing for virtual manufacturing tools with intelligent attributes.	2003	IIE Transactions	Article	10.1080/07408170304345		Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Bedienung von Werkzeugen in VR	Softwareentwicklung	Remote Control / Digital Twin	V6 HMD	Moude & Gloves	11			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Jun, Hyun-Kyu; Dong-Hyung, Lee; Doh-Chul, Yang"	Development of a Simulator Based on Train Performance Simulation.	2006	Computer-Aided Design & Applications	Article	10.1080/16864360.2006.10738485		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Design	Model design						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Geuss, Michael N.; Stefanucci, Jeanine K.; Creem-Regehr, Sarah H.; Thompson, William B."	Effect of Viewing Plane on Perceived Distances in Real and Virtual Environments.	2012	Journal of Experimental Psychology. Human Perception & Performance	Article	10.1037/a0027524		Ja	Sample		interessant: Vergleich Distanzen	Psychology / Human factors	Visual perception	NVIS nVisor SX	None	60	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	x
BSP	"Gold, Jeffrey I.; Seok, Hyeon Kim; Kant, Alexis J.; Joseph, Michael H.; Rizzo, Albert ""Skip"""	Effectiveness of Virtual Reality for Pediatric Pain Distraction during IV Placement.	2006	CyberPsychology & Behavior	Article	10.1089/cpb.2006.9.207			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Lin, Chiuhsiang Joe; Chen, Hung?Jen; Cheng, Ping?Yun; Sun, Tien?Lung"	Effects of Displays on Visually Controlled Task Performance in Three-Dimensional Virtual Reality Environment.	2015	Human Factors & Ergonomics in Manufacturing & Service Industries	Article	10.1002/hfm.20566			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Marsh, Tim; Wright, Peter; Smith, Shamus"	Evaluation for the Design of Experience in Virtual Environments: Modeling Breakdown of Interaction and Illusion.	2001	CyberPsychology & Behavior	Article	10.1089/109493101300117910			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Mikropoulos, Tassos A.; Strouboulis, Vassilis"	Factors That Influence Presence in Educational Virtual Environments.	2004	CyberPsychology & Behavior	Article	10.1089/1094931042403109		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Presence						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Hoffman, Hunter G.; Meyer, Walter J.; Ramirez, Maribel; Roberts, Linda; Seibel, Eric J.; Atzori, Barbara; Sharar, Sam R.; Patterson, David R."	Feasibility of Articulated Arm Mounted Oculus Rift Virtual Reality Goggles for Adjunctive Pain Control During Occupational Therapy in Pediatric Burn Patients.	2014	CyberPsychology, Behavior & Social Networking	Article	10.1089/cyber.2014.0058			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Simone, Lisa K.; Schultheis, Maria T.; Rebimbas, Jose; Millis, Scott R."	Head-Mounted Displays for Clinical Virtual Reality Applications: Pitfalls in Understanding User Behavior while Using Technology.	2006	CyberPsychology & Behavior	Article	10.1089/cpb.2006.9.591			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Baños, R. M.; Botella, C.; Alcañiz, M.; Liaño, V.; Guerrero, B.; Rey, B."	Immersion and Emotion: Their Impact on the Sense of Presence.	2004	CyberPsychology & Behavior	Article	10.1089/cpb.2004.7.734		Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Rolle von Immersion	Psychology / Human factors	Presence			60			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Hadipriono, Fabian C.; Duane, Josann W.; Nemeth, Zoltan A.; Won, Seungwon"	Implementation of a virtual environment for traffic accident simulation.	2003	Journal of Intelligent & Fuzzy Systems	Article	00.0000/0024			Dopplung										 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Yang, Ungyeon; Kim, GerardJounghyun"	Increasing the geometric field of view in head mounted displays through proprioceptive task and multimodal feedback for effective close range interaction.	2010	Behaviour & Information Technology	Article	10.1080/01449290903160459			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Tamura, Hideyuki; Yamamoto, Hiroyuki; Katayama, Akihiro"	Mixed Reality: Future Dreams Seen at the Border between Real and Virtual Worlds.	2001	IEEE Computer Graphics & Applications	Article	10.1109/38.963462		Nein	Abstract	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Baek-Hwan, Cho; Kim, Saebyul; Dong, Ik Shin; Jang, Han Lee; Sang, Min Lee; Kim, In Young; Kim, Sun I."	Neurofeedback Training with Virtual Reality for Inattention and Impulsiveness.	2004	CyberPsychology & Behavior	Article	10.1089/1094931042403055			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Conradi, Jessica; Alexander, Thomas"	On the effect of free vs. restricted interaction during the exploration of virtual environments.	2012	Work	Article	10.3233/wor-2012-0442-2201		Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Navigation und Balance	Ergonomie	Haptics / Physical interaction	NVIS nVisor SX		36			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ott, Renaud; Thalmann, Daniel; Vexo, Frédéric"	Organic Shape Modeling through Haptic Devices.	2006	Computer-Aided Design & Applications	Article	10.1080/16864360.2006.10738444		Nein	Abstract	nur Technik		Design	Software development						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Mühlberger, Andreas; Wieser, Matthias J.; Kenntner-Mabiala, Ramona; Pauli, Paul; Wiederhold, Brenda K."	Pain Modulation during Drives through Cold and Hot Virtual Environments.	2007	CyberPsychology & Behavior	Article	10.1089/cpb.2007.9996			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Wren, Christopher R.; Sparacino, Flavia; Azarbayejani, Ali J.; Darrell, Trevor J.; Starner, Thad E.; Kotani, Akira; Chao, Chloe M.; Hlavac, Michal; Russell, Kenneth B.; Pentland, Alex P."	PERCEPTIVE SPACES FOR PERFORMANCE AND ENTERTAINMENT UNTETHERED INTERACTION USING COMPUTER VISION AND AUDITION.	1997	Applied Artificial Intelligence	Article	10.1080/088395197118154		Nein	Abstract	nur Technik		Softwareentwicklung	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Kesztyues, T.I.; Mehlitz, M.; Schilken, E.; Weniger, G.; Wolf, S.; Piccolo, U.; Irle, E.; Rienhoff, O."	Preclinical Evaluation of a Virtual Reality Neuropsychological Test System: Occurrence of Side Effects.	2000	CyberPsychology & Behavior	Article	10.1089/10949310050078788			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Carnegie, Kieran; Rhee, Taehyun"	Reducing Visual Discomfort with HMDs Using Dynamic Depth of Field.	2015	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2015.98		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visual perception						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Marner, Michael R.; Smith, Ross T.; Walsh, James A.; Thomas, Bruce H."	Spatial User Interfaces for Large-Scale Projector-Based Augmented Reality.	2014	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2014.117		Nein	Titel	kein VR									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Livatino, Salvatore; Muscato, Giovanni; Privitera, Filippo"	Stereo Viewing and Virtual Reality Technologies in Mobile Robot Teleguide.	2009	IEEE Transactions on Robotics	Article	10.1109/TRO.2009.2028765			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Livatino, Salvatore; De Paolis, Lucio T.; D'Agostino, Michele; Zocco, Alessandro; Agrimi, Alessio; De Santis, Alberto; Bruno, Luisa Vittoria; Lapresa, Michele"	Stereoscopic Visualization and 3-D Technologies in Medical Endoscopic Teleoperation.	2015	IEEE Transactions on Industrial Electronics	Article	10.1109/TIE.2014.2334675			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Ruddle, Roy; Volkova, Ekaterina; Mohler, Betty; Bülthoff, Heinrich"	The effect of landmark and body-based sensory information on route knowledge.	2011	Memory & Cognition	Article	10.3758/s13421-010-0054-z			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Lott, Alison; Bisson, Etienne; Lajoie, Yves; McComas, Joan; Sveistrup, Heidi"	The Effect of Two Types of Virtual Reality on Voluntary Center of Pressure Displacement.	2003	CyberPsychology & Behavior	Article	10.1089/109493103769710505			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Cho, Baek-Hwan; Ku, Jeonghun; Jang, Dong Pyo; Kim, Saebyul; Lee, Yong Hee; Kim, In Young; Lee, Jang Han; Kim, Sun I."	The Effect of Virtual Reality Cognitive Training for Attention Enhancement.	2002	CyberPsychology & Behavior	Article	10.1089/109493102753770516			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Tse, Mimi M.Y.; Ng, Jacobus K.F.; Chung, Joanne W.Y.; Wong, Thomas K.S."	The Effect of Visual Stimulation via the Eyeglass Display and the Perception of Pain.	2002	CyberPsychology & Behavior	Article	10.1089/109493102753685890		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort / Stress						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Mania, Katerina; Chalmers, Alan"	The Effects of Levels of Immersion on Memory and Presence in Virtual Environments: A Reality Centered Approach.	2001	CyberPsychology & Behavior	Article	10.1089/109493101300117938		Ja	Sample		evtl. interessant: Erinnerung / Lernen in VR	Psychology / Human factors	Effect of Immersion	HP Prototype	Mouse	18	x		 	x	 	 	x	 	 	 	 	 	 	 	x	x	 	x	x	 	 	x	 	 
BSP	"Rizzo, A.A.; Buckwalter, J.G.; Bowerly, T.; Van Der Zaag, C.; Humphrey, L.; Neumann, U.; Chua, C.; Kyriakakis, C.; Van Rooyen, A.; Sisemore, D."	The Virtual Classroom: A Virtual Reality Environment for the Assessment and Rehabilitation of Attention Deficits.	2000	CyberPsychology & Behavior	Article	10.1089/10949310050078940			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Jankowski, Jaros?aw; Grabowski, Andrzej"	Usability Evaluation of VR Interface for Mobile Robot Teleoperation.	2015	International Journal of Human-Computer Interaction	Article	10.1080/10447318.2015.1039909			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Nyberg, Lars; Lundin-Olsson, Lillemor; Sondell, Björn; Backman, Anders; Holmlund, Kenneth; Eriksson, Staffan; Stenvall, Michael; Rosendahl, Erik; Maxhall, Marcus; Bucht, Gustaf"	Using a Virtual Reality System to Study Balance and Walking in a Virtual Outdoor Environment: APilot Study.	2006	CyberPsychology & Behavior	Article	10.1089/cpb.2006.9.388			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Barniv, Yair; Aguilar, Mario; Hasanbelliu, Erion"	Using EMG to Anticipate Head Motion for Virtual-Environment Applications.	2005	IEEE Transactions on Biomedical Engineering	Article	10.1109/TBME.2005.848378		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Avila, Lisa; Bailey, Mike"	Virtual Reality for the Masses.	2014	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2014.103		Nein	Abstract	nur Technik		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Crosbie, J. H.; Lennon, S.; McNeill, M. D. J.; McDonough, S. M."	Virtual Reality in the Rehabilitation of the Upper Limb after Stroke: The User’s Perspective.	2006	CyberPsychology & Behavior	Article	10.1089/cpb.2006.9.137			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Schneider, Susan M.; Ellis, Mathew; Coombs, William T.; Shonkwiler, Erin L.; Folsom, Linda C."	Virtual Reality Intervention for Older Women with Breast Cancer.	2003	CyberPsychology & Behavior	Article	10.1089/109493103322011605			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Komura, Taku; Lau, Rynson W.H.; Lin, Ming C.; Manocha, Dinesh; Majumder, Aditi; Xu, Wei Wei"	Virtual Reality Software and Technology.	2015	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2015.102		Nein	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Dahlquist, Lynnda M.; Herbert, Linda J.; Weiss, Karen E.; Jimeno, Monica"	Virtual-Reality Distraction and Cold-Pressor Pain Tolerance: Does Avatar Point of View Matter?	2010	CyberPsychology, Behavior & Social Networking	Article	10.1089/cyber.2009.0263			Dopplung	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Roberts, Jonathan C.; Ritsos, Panagiotis D.; Badam, Sriram Karthik; Elmqvist, Niklas; Brodbeck, Dominique; Kennedy, Jessie"	Visualization beyond the Desktop--the Next Big Thing.	2014	IEEE Computer Graphics & Applications	Article	10.1109/MCG.2014.82		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visualisation						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	"Encarnacao, L. Miguel; Barton III, Robert J."	Walk-up VR: Virtual Reality beyond Projection Screens.	2000	IEEE Computer Graphics & Applications	Article	00.0000/0026		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems						 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
BSP	?,??	????? ?? ????? ?? ??? ??.	2015	Journal of Digital Convergence	Article	10.14400/JDC.2015.13.8.465		Nein	Abstract	nicht Englisch									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
SB	"Willemsen, P.; Colton, M.B.; Creem-Regehr, S.H.; Thompson, S.B."	The effects of head-mounted display mechanical properties and field of view on distance judgments in virtual environments	2009	ACM Transactions on Applied Perception	Article	10.1145/1498700.1498702		Ja	Sample		Distance walking in real world, in VR and with mockup HMD	Hardwareentwicklung und Evaluation	Visual perception	NVIS nVisor SX	Intersense IS-900 motion tracker	116	x		 	x	 	 	 	x	x	 	 	 	 	 	 	x	x	 	x	 	 	 	 	x
SB	"Grechkin, TY; Nguyen, TD; Plumert, JM; Cremer, JF; Kearney, JK"	How does presentation method and measurement protocol affect distance estimation in real and virtual environments?	2010	ACM Transactions on Applied Perception	Artikle	10.1145/1823738.1823744		Ja	Sample		Evaluation of distance perception in reality and in VR wearing an HMD	Psychology / Human factors	Visual perception	NVIS nVisor ST50	Motion capture	107	x		 	x	 	 	 	x	x	 	 	 	 	 	 	x	x	 	x	 	 	 	 	x
SB	"Hu, B; Ma, L; Zhang, W; Salvendy, G; Chablat, D; Bennis, F"	Predicting real-world ergonomic measurements by simulation in a virtual environment	2011	International Journal of Industrial Ergonomics		10.1016/j.ergon.2010.10.001		Ja	Sample		Comparison of the ergonomics of a drilling task in VR and in reality	Ergonomie	Haptics / Physical interaction	5DT HMD 800-26 3D	Polhemus motion tracking	30		x	 	x	 	 	 	x	 	 	 	 	x	x	 	 	x	x	x	 	 	x	 	 
SB	Taylor W. Cleworth, Brian C. Horslen, Mark G. Carpenter	Influence of real and virtual heights on standing balance	2012	Gait and Posture		10.1016/j.gaitpost.2012.02.010		ja	Sample		Simulating standing on elevated surfaces in order to analyze balance and induced axieties	Psychology / Human factors	Balance	piSight	None	18	x		 	x	 	 	 	x	 	x	 	 	 	 	 	x	x	 	x	 	 	x	 	x
SB	"Ouellet,É; Boller, B; Corriveau-Lecavalier, N; Cloutier, S; Belleville, S"	The Virtual Shop: A new immersive virtual reality environment and scenario for the assessment of everyday memory	2018	Journal of Neuroscience Methods jo		10.1016/j.jneumeth.2018.03.010		ja	Sample		Everyday memory assessment	Human Biology	Measurement of body functions	NVIS nVisor ST50	PPT-X motion tracking	84	x		 	 	 	x	 	x	 	 	 	 	 	 	x	 	x	 	x	 	x	x	 	 
SB	"Li, Z; Phillips, J; Durgin, FH"	The underestimation of egocentric distance:evidence from frontal matching tasks	2011	Attention, Perception, and Psychophysics		10.3758/s13414-011-0170-2		ja	Sample		Estimation of perceived egocentric and exocentric distances in VR	Psychology / Human factors	Visual perception	xSight HMD	None	83	x		 	 	x	 	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	 
\.


--
-- Data for Name: review; Type: TABLE DATA; Schema: public; Owner: the_user
--

COPY public.review (doi, gelesen, empirisch, ausschlusspunkt, ausschlussgrund, kommentar, feld, thema, interaction_device, no_participants, low_abstraction, medium, high, exactly_like_re, similar_to_re, different_to_re, training, no_training, walking, balance, navigation_orientation, searching_identifying, reaching, picking_manual_object_interaction, cognitive_memory_tasks, spatial_perception, quantitative, qualitative, experiment, secondary_research, subjective_feedback, consistent, better, worse) FROM stdin;
10.31209/2019.100000149	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.31209/2019.100000131	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.31209/2019.100000134	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00464-019-06887-8	Görge	Ja	Sample		evtl. Interessant: Training von Chirurgie	Medizin	Training	Lap sim surgery simulator	31	x		 	x	 	 	x	 	 	 	 	x	 	x	 	x	x	 	x	 	 	 	 	x
10.1109/MCE.2019.2953741	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Security					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-019-00389-7	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Räumliches Lernen	Archäologie / Museen	Training	Oculus Touch controllers & gamepad	100			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.foodqual.2019.103833	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2020.1726108	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3341/jkos.2020.61.2.125	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.840	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Depth perception in VR	Hardwareentwicklung und Evaluation	Visual perception	None	22			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10639-020-10119-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fmed.2019.00329	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/14616688.2020.1713881	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Tourism	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.4218/etrij.2019-0284	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/brainsci10010055	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JIOT.2019.2946593	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/AUD.0000000000000736	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	ectl. Vergleich Wahrnehmung	Human biology	Measurement of body functions	Computer mouse	44			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.pnucene.2019.103127	Görge	?	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s12555-018-0882-3	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10494820.2019.1703008	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. experiential learning	Bildungswesen	Training	Keyboard	31			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1108/LHT-08-2019-0166	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbiomech.2019.109379	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2019.08.003	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jmapro.2019.10.016	Görge	Nein	Volltext	nur Technik		Manufacturing	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.humov.2019.102526	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human biology	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0018720819835088	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0376-x	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0735633119854025	Görge	Ja	Sample		Analysing learning eff	Bildungswesen	Training	HTC Vive controller	37	x		 	x	 	 	x	 	 	 	 	x	 	 	x	 	x	x	x	 	 	 	x	 
10.1007/s10055-019-00412-x	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.14716/ijtech.v10i7.3259	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2019.00417	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-019-00409-6	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2019.00401	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/17483107.2019.1688398	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s12065-019-00314-6	Görge	Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-019-00407-8	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung	evtl. laufen in VR aber kein Vergleich	Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1873	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/su11226453	Görge	Ja	Abstract	kein VR		Hardwareentwicklung und Evaluation	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/00207540601064773		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/ijerph16224406	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	Vergleich: Energy Expenditure	Human biology	Measurement of body functions	HTC Vive controllers	9			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.heliyon.2019.e02583	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	VR golf training	Hardwareentwicklung und Evaluation	Training	Oculus handheld controllers	23			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.21053/ceo.2018.01592	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.12659/MSM.915284	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human biology	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/17453054.2019.1671813	Görge	Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12984-019-0601-1	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Training von Pick and Place für Parkinson	Medizin	Rehabilitation / Treatment	Leap motion controller	20			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-019-08220-w	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.compedu.2019.103600	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0278364919842925	Görge	Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.autcon.2019.102884	Görge	Nein	Volltext	nur Technik		Bauwesen / Architektur	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JSEN.2019.2921644	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10956-019-09781-z	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.buildenv.2019.106285	Görge	Ja	Sample		Spatial perception in rooms with different ceiling height	Bauwesen / Architektur	Visual perception	Xbox controller	40	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	 	x	 	x	 	 
10.1177/1471301219868036	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2196/13887	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Memory Assessment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/OE.27.024877	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1093/iwc/iwz033	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10015-019-00536-y	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TNSRE.2019.2931778	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0348-1	Görge	Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1115/1.4043068	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Olfactory perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2019.04.001	Görge	Ja	Sample		Comparing postures and kinematics of a pointing task	Ergonomie	Measurement of body functions	Raptor 4 Motion capture	14			x	x	 	 	 	x	 	 	 	 	 	 	 	 	x	 	x	 	 	x	 	x
10.3389/fnagi.2019.00218	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0018720819867501	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3313902	Görge	Ja	Sample		Comparing balance standing on one leg only	Ergonomie	Balance	None	32	x		 	x	 	 	 	x	 	x	 	 	 	 	 	 	x	 	x	 	 	 	 	x
10.1016/j.entcom.2019.100308	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/jcm8081153	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jflm.2019.06.005	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10494820.2019.1641525	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2019.00050	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Vergleich von Lernen in VR	Hardwareentwicklung und Evaluation	Training	Xbox 360 controller	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TLT.2019.2926727	Görge	Ja	Abstract	Review								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0027	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ergon.2019.06.013	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich Reaching Task	Ergonomie	Haptics / Physical interaction	HTC Vive controller	18			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.diin.2019.04.007	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Security					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/LRA.2019.2921928	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Manufacturing	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2018.07.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2018.10.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11548-019-01992-4	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.archger.2019.05.008	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.simpat.2019.03.005	Görge	Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1108/JET-12-2018-0057	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2019.01330	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Memory Assessment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/00140139.2019.1582805	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Ergonomie	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2019.03.018	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11277-018-5382-5	Görge	Ja	Sample		evtl. Vergleiche Bewegungen mit Literatur	Human biology	Rehabilitation / Treatment	Kinect	3		x	 	 	x	 	x	 	 	 	 	 	x	 	 	x	 	x	 	 	x	 	x	 
10.1007/s41064-019-00065-0	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3928/02793695-20190430-01	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1553350618822860	Görge	Ja	Sample		Anatomy training using low-cost VR	Medizin	Training	Samsung Gerar VR controller	33	x		 	x	 	 	x	 	 	 	 	x	 	 	x	 	 	x	 	 	x	x	x	 
10.1007/s10055-018-0371-2	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0374-z	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.chb.2018.12.018	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1200/JGO.18.00263	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Training im Bereich Medizin	Medizin	Training	Oculus Rift handheld controllers	10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1880	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Assembly					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/info10050177	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/NNE.0000000000000570	Görge	Ja	Sample		evtl. Training von Katether	Medizin	Training	Haptic gloves & Leap motion controller	31	x		 	x	 	 	x	 	 	 	 	x	 	x	x	 	 	x	 	 	x	 	x	 
10.1109/TVCG.2019.2898782	Görge	Ja	Volltext	nur Technik	evtl. Vergleich Navigation	Softwareentwicklung	Movement / Navigation	HTC Vive controllers	16			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apacoust.2018.12.037	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Wahrnehmung von Sound	Bauwesen / Architektur	Perception of Sound	None	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbiomech.2019.02.015	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbmt.2019.02.012	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.765	Görge		Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/sym11040476	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1354856517738171	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/end.2018.0626	Görge	Ja	Sample		Preoperative visualisation for surgical planning and training using VR	Medizin	Visualisation	Oculus Touch controllers	4	x		 	x	 	 	x	 	 	 	 	x	 	x	x	 	x	x	x	 	x	 	x	 
10.1016/j.jcde.2018.05.006	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich Bewegung in VR	Bauwesen / Architektur	Movement / Navigation	HTC Vive controllers	150			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cpc.2018.11.013	Görge	Ja	Abstract	nur Technik		Chemistry	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.24507/ijicic.15.02.591	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	Button pressing using a haptics device	Manufacturing	Assembly	Leap motion controller & custom haptic device	25			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/LRA.2018.2888628	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0214603	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbiomech.2019.02.004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3332/ecancer.2019.910	Görge	Nein	Volltext	kein Vergleich zu realer Anwendung	interessant: Vergleich chirurgisches Training	Medizin	Training	Oculus Touch controller				 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/su11061605	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s13673-019-0169-6	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-018-6403-9	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Interessant: Vergleich Navigation	Hardwareentwicklung und Evaluation	Movement / Navigation	Leap motion controller on custom smart watch, keyboard	30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s19051121	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10209-017-0581-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0346-3	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Memory Assessment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0364-1	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Experential learning	Hardwareentwicklung und Evaluation	Training	HTC Vive controller & PS4 controller	42			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11548-018-1814-7	Görge	Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/neu0000517	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.buildenv.2018.12.054	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12859-019-2666-z	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1167/tvst.8.1.23	Görge	Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.747	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.750	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1119/1.5080224	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1088/1741-2552/aaed17	Görge	Ja	Volltext	VR nur als Methode	evtl. Auswirkung von Flickersn auf Erkennbarkeit	Human biology	Visual perception		24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/OE.27.001164	Görge	Nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.buildenv.2018.11.004	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Bauwesen / Architektur	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0060	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0061	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Einfluss von Gamification	Medizin	Training	HTC Vive controllers	14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3233/ICA-180586	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2019.2934990	Görge	Ja	Sample		VR Game for training the perception of hazardous situations in mining	Mining	Training	HTC Vive controllers	30	x		 	x	 	 	x	 	 	 	 	x	 	 	x	 	x	 	x	 	 	 	x	 
10.3233/VES-190660	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijleo.2019.01.083	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/15980316.2019.1567612	Görge	Ja	Abstract	VR nur als Methode		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2019.2905143	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: VR als Training	Medizin	Training	Joystick	87			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3991/ijoe.v15i06.9933	Görge	Nein	Titel	kein VR		Medizin	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbi.2018.11.012	Görge	Ja	Abstract	nur Technik		Medizin	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2019.2897018	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2018.2878237	Görge	Ja	Volltext	nur Technik	evtl. interessant: Laufen in VR	Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface	Custom input device	5			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jvcir.2018.11.039	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Taichi-Training	Medizin	Training	Kinect	18			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1515/sjpain-2018-0123	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2018.08.012	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.compedu.2018.09.015	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1115/1.4041428	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Manufacturing planning training	Manufacturing	Training	Oculus Touch controller	36			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0361198118758311	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.18383/j.tom.2018.00053	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TCDS.2018.2828865	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1088/1741-2552/aadd55	Görge	Ja	Abstract	nur Technik		Medizin	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2018.02265	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1108/JCHMSD-09-2017-0067	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2018.02086	Görge	Ja	Abstract	Review								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3265755	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Bewegungstraining	Medizin	Rehabilitation	HTC Vive controllers	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.6036/8816	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2868527	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TMM.2018.2829187	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-017-0329-9	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Collaboration					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s13673-018-0154-5	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Interessant: Interaktion in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Vive controller	12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1049/htl.2018.5077	Görge	Nein	Abstract	nur Technik		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-018-5730-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijinfomgt.2016.04.017	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.30773/pi.2018.06.28.3	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Vergleich von spatial learning	Medizin	Memory Assessment	Joystick	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/g4h.2017.0190	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2018.03.015	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.chb.2018.04.036	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijom.2018.01.005	Görge	Ja	Sample		Orthognathic surgery training using VR	Medizin	Training	Leap motion	9	x		 	x	 	 	x	 	 	 	 	 	 	x	x	 	 	x	 	 	x	x	x	 
10.3390/electronics7090171	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.rehab.2018.07.003	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Laufen in VR	Medizin	Rehabilitation		17			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/sym10090400	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00024-017-1755-z	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00371-018-1501-2	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2754257	Görge	Ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-017-5328-z	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3230648	Görge	Ja	Sample		Human walking and obstacle avoidance	Manufacturing	Movement / Navigation	HTC Vive tracking system	30		x	 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	 	 	x	 	x
10.1145/3232678	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1017/S1754470X18000090	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0200724	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Perception of prodcuts					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.11999/JEIT170995	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jocs.2018.05.002	Görge	Ja	Abstract	nur Technik		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0028	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.culher.2018.01.020	Görge	Nein	Abstract	kein VR		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3182644	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0029	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/BOE.9.002825	Görge	Nein	Abstract	nur Technik		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.4218/etrij.2017-0166	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0030	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1142/S1793962318400020	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.14257/ijgdc.2018.11.6.09	Görge	Nein	Volltext	nur Technik		Softwareentwicklung	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10822-018-0123-0	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0195886	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/desc.12557	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/OE.26.001161	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.joms.2017.10.002	Görge	Ja	Sample		Self-confidence levels after surgical training in VR compared to text-based surgical training	Medizin	Training	Leap motion	91		x	 	 	x	 	x	 	 	 	 	 	 	x	x	 	 	x	 	 	x	 	x	 
10.1002/cav.1812	Görge	Ja	Sample		Training of manual lifeboat operation	Ingenieurwesen / Physik	Training	Keyboard & Joypad, Leap motion controller & Myo armbands	64	x		 	x	 	 	x	 	 	 	 	x	x	 	x	 	x	 	x	 	 	 	x	 
10.1002/cav.1830	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2017.11.007	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2793698	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2794629	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3229316.3229320	Görge	Ja	Abstract	kein VR		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1093/comjnl/bxx117	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.chb.2017.11.033	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.fusengdes.2018.02.031	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-017-0313-4	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Evaluation Greifen	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Leao motion controller	32			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-017-0316-1	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.5195/ijt.2018.6250	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/computers7010015	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/tra.12538	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.14257/ijgdc.2018.11.2.09	Görge	Nein	Abstract	nur Technik		VR Allgemein	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11036-017-0834-9	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11548-017-1686-2	Görge	Ja	Abstract	nur Technik		Medizin	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2653117	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1729881417751545	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3788/YJYXS20183301.0085	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/g4h.2017.0114	Görge	Ja	Volltext	nur Technik	evtl. Evaluation der HTC Vive	Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/21681163.2017.1343687	Görge	Ja	Sample		evtl. Training von Hand Motion	Medizin	Rehabilitation / Treatment	Rehabilitation roboter	8		x	 	 	 	x	x	 	 	 	 	 	 	x	 	 	x	 	 	x	 	 	x	 
10.1080/08824096.2018.1525349	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3233/VES-190650	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3991/ijoe.v13i08.7371	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.5277/ABB-01082-2018-02	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1108/ILS-07-2018-0069	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Collaboration					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0031	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/netn_a_00044	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0032	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Target Selection	Softwareentwicklung	Haptics / Physical interaction	Keyboard & Leap motion capture & HTC Vive controller & XBOC 260 Controller & Computer mouse	39			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2018.2864872	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0033	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.17398/1695-288X.17.1.61	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.18494/SAM.2018.1912	Görge	Ja	Abstract	kein VR		Psychology	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s41064-020-00106-z	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10916-020-01550-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-020-00432-y	Görge	Ja	Sample		Judgement of space for passing through a yliding door in VR and in reality	Psychology	Visual perception	HTC Vive controllers	35	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	x	x	 	 	x	 	x
10.1002/pmrj.12206	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TMM.2019.2933338	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TMM.2019.2931807	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.archger.2019.104004	Görge	Ja	Volltext	kein VR	evtl. Vergleich Motor performance	Medizin	Rehabilitation / Treatment		28			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijhcs.2020.102413	Görge	Ja	Sample		Predicting pointing task times in VR and comparing them to real-world model results	Ergonomie	Haptics / Physical interaction	Oculus Touch controller	23			x	 	 	x	 	x	 	 	 	 	x	 	 	 	x	 	 	x	 	 	 	x
10.1016/j.ijhcs.2020.102414	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	ectl. Innput Methoden	Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface	Keyboard, Mobile Phone, Leap Motion, Speech	38			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-019-00401-0	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.chb.2020.106295	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/s13428-019-01336-9	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	ectl. Wahrnehmung von Size and Distance	Hardwareentwicklung und Evaluation	Visual perception	HMD controllers	40			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00104-020-01188-6	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10639-019-10050-0	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCSE.2020.2972822	Görge		Abstract	Review		Medizin	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-019-08390-7	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.isprsjprs.2020.03.007	Görge	Nein	Abstract	kein VR		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2020.2973473	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2020.2973498	Görge	Ja	Abstract	Review		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2020.2973442	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2020.2973075	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2020.2973441	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2020.2973053	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00445-020-01376-6	Görge	Nein	Abstract	nur Technik		Volcanology	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/bjet.12946	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/col.22509	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnins.2020.00357	Görge	Ja	Sample		Crossing obstacles while walking in VR and in reality	Ergonomie	Movement / Navigation	Motion capture	13			x	 	 	x	 	x	x	 	 	 	 	 	 	x	x	 	x	 	 	x	x	 
10.1007/s10055-020-00433-x	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/09588221.2020.1752735	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12984-020-00678-2	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Transfer von Motor Skills	Ergonomie	Haptics / Physical interaction	Futek Pinch Sensor FSH01465 (Force Sensor)	70			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-020-00440-y	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1470412920906260	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Emotions / Empathy					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11548-020-02126-x	Görge	Nein	Abstract	nur Technik		Medizin	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2019.103010	Görge	Ja	Sample		Accessing head and neck kinematics ans muscle activities during pointing tasks in VR	Ergonomie	Haptics / Physical interaction	Leap Motion	20			x	 	 	x	 	x	 	 	 	 	x	 	 	 	x	 	 	x	 	x	 	 
10.1007/s12262-020-02131-z	Görge	Ja	Sample		evtl. interessant: Training Chirurgie	Medizin	Training	Surgical Simulator	28	x		 	x	 	 	x	 	 	 	 	 	 	x	 	 	 	x	 	 	x	 	x	 
10.3390/app10062026	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/info11030134	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Lösen cognitiver Aufgaben	Medizin	Rehabilitation / Treatment	HTC Vive controllers	42			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jmatprotec.2004.09.086		nein	Abstract	nur Technik		Manufacturing	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app10051668	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1163/22134808-20201445	Görge	Ja	Sample		Navigation while walking inside an office building	Bauwesen / Architektur	Movement / Navigation	Treadmill	102	x		 	x	 	 	x	 	x	 	x	 	 	 	 	 	x	 	x	 	 	x	 	x
10.1007/s10846-019-01054-6	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jhtm.2020.02.003	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00464-019-06862-3	Görge	Ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3837/tiis.2020.02.020	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s41064-020-00091-3	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-019-00411-y	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Spatial learning	Hardwareentwicklung und Evaluation	Visual perception	Xbox ONE game controller	61			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1920	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design	controller				 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2020.00020	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/g4h.2019.0102	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00779-020-01373-8	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.buildenv.2019.106544	Görge	Ja	Abstract	VR nur als Methode		Bauwesen / Architektur	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app10041427	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Abschätzung von Distanzen	Hardwareentwicklung und Evaluation	Visual perception	Motion capture	16			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s20041204	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.encep.2019.09.002	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-019-7331-z	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JPROC.2019.2894817	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.actpsy.2019.102987	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.tra.2019.11.008	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ajo.2019.10.006	Görge	Ja	Abstract	nur Technik		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2020.00004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2020.00035	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/OE.382804	Görge		Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0034	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2020.2988678	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2020.2983608	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.37190/ABB-01490-2019-03	Görge	Ja	Sample		Assessment of preferred walking speed and gait in VR and comparison to reality	Ergonomie	Movement / Navigation	Treadmill	40	x		 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	x	 	 	 	x
10.1109/ACCESS.2020.2972122	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Depth perception	Hardwareentwicklung und Evaluation	Visual perception	None	52			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2020.2970921	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2020.2977688	Görge	Ja	Abstract	kein VR		Psychology	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TOH.2020.2965937	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/sym12010053	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.18261/issn.1892-2686-2020-01-02	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2019.08.004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2019.2934395	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.buildenv.2019.106423	Görge	Ja	Abstract	VR nur als Methode		Bauwesen / Architektur	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.compedu.2019.103707	Görge	Nein	Abstract	Review		Psychology	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fmed.2019.00287	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3362101	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/info10120386	Görge	Ja	Abstract	VR nur als Methode		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2019.09.005	Görge	Ja	Volltext	Review	evtl. interessant: Locomotion in VR	Ergonomie	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1550147719894533	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.janxdis.2019.102147	Görge	Ja	Abstract	VR nur als Methode		Psychology	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0018720819836343	Görge	Ja	Abstract	VR nur als Methode		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0345-4	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0735633119854030	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Training von Verhalten	Bildungswesen	Training	Joystick	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/s41586-019-1687-0	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12938-019-0731-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.neuron.2019.08.012	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2352/J.ImagingSci.Technol.2019.63.6.060409	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Wahrnehmung von Schräge	Ergonomie	Visual perception	None	22			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3355089.3356530	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3355089.3356490	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3355089.3356557	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3355089.3356517	Görge	Ja	Abstract	kein VR		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3355089.3356552	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JBHI.2019.2892485	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app9214652	Görge	Ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2019.2932239	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Bedienung Keyboard	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Physical Logitech G810 keyboard	20			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2019.2932215	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2019.2932173	Görge	Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2019.00104	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/adom.201901360	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/s13428-019-01310-5	Görge	Nein	Abstract	nur Technik		Psychology	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fmars.2019.00644	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fneur.2019.01061	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.humov.2019.102515	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich Zeigeaufgabe	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Motion Capture	83			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1249/MSS.0000000000002016	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0031512519857869	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.neuroimage.2019.06.010	Görge	Nein	Abstract	nur Technik		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1142/S1793351X19400166	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.buildenv.2019.106278	Görge	Ja	Sample		Performing a reading task in VR and in reality and comparing performance, lighning perception and physical reactions.	Bauwesen / Architektur	Visual perception		20	x		 	x	 	 	 	x	 	 	 	x	 	 	 	 	x	x	x	 	 	x	 	x
10.1109/MCE.2019.2923934	Görge	Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00415-019-09370-5	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. interessant: Wahrnehmung von Höhe	Psychology	Emotions / Empathy / Fear		23			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/PHM.0000000000001190	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.landurbplan.2019.05.006	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3138/cjfs.28.1.2019-0012	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app9163384	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3335053	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/0144929X.2019.1641228	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/sms.13453	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/ejn.14499	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s19143063	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/su11143894	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1021/acs.jchemed.8b00905	Görge	Ja	Abstract	nur Technik		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.appdev.2019.101052	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Behaviour					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0035	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0036	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung		Psychology	Visual perception		24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0037	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/computers8020039	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/s41433-019-0356-8	Görge	Nein	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Operation in VR	Medizin	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00170-018-03237-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Manufacturing	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-018-0370-3	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cognition.2019.03.003	Görge	Ja	Abstract	nur Technik		Psychology	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpubh.2019.00116	Görge	Nein	Abstract	Review		Psychology	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1093/pm/pny269	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1882	Görge	Ja	Sample		evtl. Vergleich: Training von manueller Tätigkeit	Bildungswesen	Training	Leap motion controller & HTC controller	28	x		 	x	 	 	x	 	 	 	 	 	 	x	 	 	x	x	x	 	 	x	x	 
10.1111/cgf.13654	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app9091919	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10339-019-00903-4	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TDSC.2018.2800048	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Security					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2019.2898736	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2019.2898763	Görge	Nein	Abstract	nur Technik		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2018.1484054	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0038	Görge	Nein	Abstract	nicht Englisch		Ingenieurwesen / Physik	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.30773/pi.2019.02.08	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.learninstruc.2017.12.007	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.socec.2019.02.007	Görge	Nein	Volltext	Review	evtl. generell Anwendbarkeit von VR	Psychology / Human factors	Behaviour					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app9061182	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s40691-018-0166-9	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. VR Auswahl von Produkten	Retail / Marketing	Perception of prodcuts / Advertisement		101			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1093/iwc/iwz018	Görge	Ja	Sample		Vergleich: Navigation VR-Real	Psychology	Movement / Navigation	HTC Vive controller (teleport navigation)	60	x		 	x	 	 	 	x	 	 	x	 	 	 	 	 	x	 	x	 	 	x	 	x
10.1016/j.foodres.2018.01.028	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Retail / Marketing	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JETCAS.2019.2898750	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2196/11517	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/AO.58.000A74	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jvcir.2019.01.012	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/s13428-018-1116-6	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.actpsy.2018.12.005	Görge	Ja	Abstract	VR nur als Methode		Psychology	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jstrokecerebrovasdis.2018.10.018	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2018.00504	Görge	Ja	Abstract	VR nur als Methode		Psychology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/978-3-030-03635-5_13	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.16910/jemr.12.8.1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0039	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2019.2940073	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1155/2019/9680697	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2019.2921880	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/15980316.2019.1606859	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1250/ast.40.265	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/15980316.2019.1572662	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0040	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/ACCESS.2019.2910737	Görge	Ja	Abstract	nur Technik		Human Biology	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1117/1.JEI.28.1.013019	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/ijgi8010003	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0269215518788598	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/OE.26.034142	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/PRES_a_00318	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2018.10.006	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Interaktion in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Leap motion controller & HTC controller	24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2778249	Görge	Nein	Abstract	nur Technik		Psychology	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.7717/peerj.5847	Görge		Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.actpsy.2018.09.009	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.734	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2018.07.007	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.17973/MMSJ.2018_11_2017100	Görge	Nein	Abstract	kein Vergleich zu realer Anwendung		Manufacturing	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.image.2018.05.010	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.7717/peerj.5844	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2018.00420	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2018.01901	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3238303	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3238301	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.708	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/LRA.2018.2864359	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s18092832	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1805	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.concog.2018.05.005	Görge	Ja	Abstract	VR nur als Methode		Psychology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1167/18.9.1	Görge	Nein	Abstract	kein VR		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/psyp.13090	Görge	Ja	Abstract	VR nur als Methode		Psychology	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3209661	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3205864	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3197517.3201335	Görge	Nein	Volltext	nur Technik		Softwareentwicklung	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/leon_a_01641	Görge	Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1167/tvst.7.4.2	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1017/pasa.2018.19	Görge	Nein	Abstract	nur Technik		Astronomie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0041	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology	Memory Assessment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijhcs.2018.02.003	Görge	Ja	Volltext	kein VR	evtl. Suchen	Psychology / Human factors	Visual perception		73			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ecns.2018.03.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1553350618761756	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cae.21915	Görge	Nein	Abstract	nur Technik		Bauwesen / Architektur	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.658	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3928/23258160-20180501-08	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1838	Görge	Ja	Abstract	kein VR		Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2794639	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Einfluss Interaktion auf Training	Hardwareentwicklung und Evaluation	Training	Hydra controller	65			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2794119	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2794071	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2018.2793038	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/JOSAA.35.00B130	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/THMS.2017.2782490	Görge	Ja	Abstract	kein VR		Manufacturing	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0194137	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/01.NEP.0000000000000258	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/OE.26.004863	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fneur.2018.00067	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fneur.2018.00048	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.638	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jenvp.2018.01.001	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s12008-017-0377-0	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2658570	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Manipulation in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	Comuter mouse & custom 3d input device	24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2017.02321	Görge	Ja	Sample		Heart rate and emotional response of walking in nature in VR and in reality	Psychology / Human factors	Emotions / Empathy / Fear	Treadmill	26			x	x	 	 	 	x	x	 	 	 	 	 	 	 	x	x	x	 	 	x	 	x
10.1371/journal.pone.0189275	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	ectl. Reaching in VR	Hardwareentwicklung und Evaluation	Haptics / Physical interaction	HTC Vive controllers	56			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/15420353.2018.1498427	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0042	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3991/ijoe.v14i05.7788	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/17503280.2018.1503859	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/17571472.2018.1483000	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1155/2018/2585797	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3991/ijoe.v14i03.8112	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1155/2018/4798359	Görge	Ja	Abstract	nur Technik		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TOH.2017.2741488	Görge	Ja	Sample		Using a custom built haptics interface for an assembly task in VR and the real world	Ergonomie	Assembly	HUG bimanual haptic device	24	x		 	x	 	 	 	x	 	 	 	 	 	x	 	 	x	 	x	 	 	 	 	x
10.3103/S1068335618010049	Görge	Nein	Abstract	nur Technik		Human Biology	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2018.01.002	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.autcon.2017.10.009	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11277-017-4954-0	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		VR Allgemein	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/jspn.12201	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/s41598-017-18289-8	Görge	Ja	Sample		Comparison of orientation between VR and real world	Psychology / Human factors	Movement / Navigation	VRNChair	64			x	x	 	 	x	 	 	 	x	 	 	 	x	x	x	 	x	 	 	x	x	x
10.1109/JSEN.2017.2762704	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0187220	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/technologies5040077	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JSYST.2015.2410533	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0043	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/MRR.0000000000000244	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/s41598-017-16316-2	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0187777	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.26687/archnet-ijar.v11i3.1395	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.fusengdes.2017.03.131	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2352/J.ImagingSci.Technol.2017.61.6.060406	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2735098	Görge	Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00104-017-0465-5	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00221-016-4846-7	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00464-017-5500-6	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung	evtl. Training von Chirurgie	Medizin	Training	laparoscopic simulator	10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cmpb.2017.08.008	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3106155	Görge	Ja	Sample		Comparison of perceived sitances in VR and real world	Hardwareentwicklung und Evaluation	Visual perception	Controllers, Remote Control	76	x		x	x	 	x	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	x
10.1002/ase.1696	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/SLA.0000000000002448	Görge	Ja	Abstract	kein VR		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2017.03.007	Görge	Ja	Sample		Analysis of spatial perception in VR for safe road crossing of pedestrians	Ergonomie	Visual perception		21	x		 	x	 	 	x	 	 	 	 	 	 	 	 	x	x	 	 	x	 	x	 	 
10.1212/WNL.0000000000004585	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3807/COPP.2017.1.5.474	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/s41598-017-13153-1	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/lsa.2017.81	Görge	Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.20965/jdr.2017.p0882	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/alr.21986	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Chirurgie-Training	Medizin	Training	Controller	66			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2017.00477	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Bauwesen / Architektur	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2017.01611	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2017.00042	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.17083/ijsg.v4i3.178	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1727	Görge	Ja	Abstract	nur Technik		Bildungswesen	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00464-016-5379-7	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00006-016-0689-3	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TNSRE.2016.2626391	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1167/17.9.11	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2601607	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2586071	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0044	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3072959.3073645	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijmst.2017.05.005	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Mining	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3813/AAA.919086	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2017.01.002	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3072959.3073624	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12886-017-0501-8	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0045	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0046	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.entcom.2017.04.004	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s12193-016-0236-5	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0047	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.autneu.2016.12.004	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0048	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00221-017-4929-0	Görge	Ja	Sample		interssant. Vergleich Ausweichen von Hindernissen	Ergonomie	Movement / Navigation		10		x	 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	 	 	 	 	x
10.1177/2041669517708205	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s17051112	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2527649	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/2049463717698349	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/ejn.13545	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijhcs.2017.01.002	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JPROC.2017.2648796	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/srep45469	Görge	Ja	Sample		Training of visumotor skills in VR and in reality	Psychology / Human factors	Training		24			x	x	 	 	x	 	 	 	 	x	 	 	x	 	x	 	x	 	 	x	 	x
10.7358/neur-2017-021-lean	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2656979	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2657238	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2657139	Görge	Nein	Abstract	kein VR		Ingenieurwesen / Physik	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2017.2656958	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0173972	Görge	Nein	Abstract	nur Technik		Medizin	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/0144929X.2016.1264483	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2017.00011	Görge	Ja	Abstract	nur Technik		Ingenieurwesen / Physik	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.7776/ASK.2017.36.2.130	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-016-0296-6	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2017.00079	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12984-017-0225-2	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2017.00003	Görge	Ja	Abstract	kein VR		Manufacturing	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.15675/gepros.v12i1.1605	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1088/1748-3190/12/1/014001	Görge	Ja	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/THMS.2016.2611824	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.5277/ABB-00784-2016-02	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/01691864.2016.1264885	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2016.06.014	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.14742/ajet.3840	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2016.11.001	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/13682199.2017.1355090	Görge	Ja	Abstract	nur Technik		Psychology / Human factors	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/14606925.2017.1352966	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Design	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10749357.2017.1351069	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.16910/jemr.10.5.2	Görge	Ja	Volltext	nur Technik	evtl. Interessant: Wahrnehmung in VR	Hardwareentwicklung und Evaluation	Visual perception		15			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.11621/pir.2017.0310	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2147/CIA.S141251	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.5937/fmet1702205S	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3991/ijet.v12i05.6766	Görge	Ja	Abstract	nur Technik		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/17483107.2016.1176259	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Wheelchair Control	Medizin	Movement / Navigation	Dynamic Control wheelchair joystick	12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.culher.2016.09.003	Görge	Ja	Abstract	nur Technik		Archäologie / Museen	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/ejp.910	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.6035/2174-0992.2017.13.12	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apergo.2016.05.003	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Ergonomie	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0167523	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2016.00074	Görge	Nein	Abstract	Review								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JDT.2016.2617889	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1115/1.4033230	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/srep37016	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.18421/TEM54-04	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2980179.2980252	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2980179.2980246	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-016-0292-x	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Vergleich räumliche Wahrnehmung	Human Biology	Visual perception	None	50			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-016-0295-7	Görge	Ja	Abstract	nur Technik		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2983530	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11528-016-0085-9	Görge	Ja	Abstract	kein VR		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2016.01649	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0049	Görge	Nein	Abstract	kein VR		Retail / Marketing	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1088/1741-2560/13/5/056006	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cmpb.2016.07.026	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0001-4575(02)00081-7			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-016-3520-1	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/sym8090093	Görge	Nein	Abstract	VR nur als Methode		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-016-0287-7	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-016-0288-6	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/AO.55.006969	Görge	Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/COMJ_a_00372	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Musik	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2016.07.002	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10803-016-2830-5	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3788/COL201614.080901	Görge	Nein	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12984-016-0174-1	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2971320	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s40299-016-0293-2	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/frobt.2016.00043	Görge	Ja	Abstract	VR nur als Methode		Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2196/games.5526	Görge	Nein	Abstract	nur Technik		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2897824.2925883	Görge	Ja	Volltext	nur Technik	evtl. Vergleich Laufen	Softwareentwicklung	Movement / Navigation		7			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2196/games.6476	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1587/transinf.2016EDL8028	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00586-016-4388-5	Görge	Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Vergleich von Nackenbewegungen	Medizin	Rehabilitation / Treatment	Fastrak tracking system	46			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.gaitpost.2016.06.010	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2520921	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2015.2473855	Görge	Nein	Abstract	Review		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3928/01913913-20160511-01	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0050	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10916-016-0475-8	Görge	Nein	Abstract	nur Technik		Medizin	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1088/1741-2560/13/2/026022	Görge	Ja	Abstract	VR nur als Methode		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jmgm.2016.02.009	Görge	Nein	Abstract	nur Technik		Biologie / Chemie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2518137	Görge	Ja	Volltext	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2518298	Görge	Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2518098	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2518079	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2016.2518135	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.1633	Görge	Ja	Volltext	nur Technik	evtl. Vergleich Graffitti	Softwareentwicklung	Haptics / Physical interaction		14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00464-015-4278-7	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.entcom.2016.01.001	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1098/rsos.150567	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2016.00268	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0148060	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1585/pfr.11.2406060	Görge	Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0052	Görge	Nein	Abstract	Review		Ergonomie	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.16910/jemr.9.6.4	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.7195/ri14.v24i2.965	Görge		Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/978-3-319-28722-5_10	Görge	Nein	Abstract	nur Technik		Archäologie / Museen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0053	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JTEHM.2016.2623787	Görge	Ja	Sample		Comparison of movement and posture in reaching task	Ergonomie	Haptics / Physical interaction	Motion Capture	17	x		 	 	 	x	 	x	 	 	 	 	x	 	 	 	x	 	x	 	 	 	 	x
10.1080/19439962.2015.1046621	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Ingenieurwesen / Physik	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.future.2018.02.029	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.future.2018.11.041	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2019.0206	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11517-019-02070-2	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.aap.2019.105356	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2020.29183.gri	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1049/iet-ipr.2017.0826	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ergon.2020.102939	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbusres.2018.10.054	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.aap.2018.06.003	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2017.1412144	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10548408.2019.1618781	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2017.1411665	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/13527266.2019.1671480	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Retail / Marketing	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.future.2018.08.049	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1108/JBIM-12-2018-0407	Görge	Ja	Abstract	kein Zugriff	evtl. Nutzung von VR?	Retail / Marketing	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2018.1429061	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.trf.2017.08.005	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/cgf.13757	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbusres.2019.01.017	Görge	Ja	Abstract	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jretconser.2019.02.016	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2018.1541546	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/cgf.13026	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1049/iet-ipr.2018.5920	Görge	Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2018.111125628	Görge	Nein	Abstract	Review	evtl. Laufen in VR?	Ergonomie	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1046878118820905	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.18559/ebr.2018.3.4	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.6017/ital.v39i1.11369	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TPC.2018.2804238	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TCE.2018.2879065	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ipm.2019.102105	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2018.2875609	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TBC.2018.2811627	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2018.2884272	Görge	Nein	Abstract	nur Technik		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2018.1519164	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/07370024.2016.1243478	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2019.2936753	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jretconser.2019.01.010	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TASE.2019.2945607	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.22430/21457778.1213	Görge		Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TCSVT.2019.2953827	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/3329119	Görge	Nein	Abstract	Review		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2017.0499	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/0144929X.2016.1212931	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/cgf.13780	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2015.0130	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.18280/isi.240310	Görge	Ja	Abstract	VR nur als Methode		Bauwesen / Architektur	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2019.2915717	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCOM.001.1800876	Görge	Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2018.021951628	Görge	Nein	Abstract	nur Technik		Psychology / Human factors	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2017.0714	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/rssa.12381	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0054	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/07370024.2018.1469408	Görge	Nein	Abstract	Review		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cie.2018.11.060	Görge	Nein	Abstract	kein Bezug zu manueller Kommissionierung		Manufacturing	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/cgf.12956	Görge	Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.4018/IJMBL.2016100104	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/16864360.2016.1273584	Görge	Nein	Abstract	nur Technik		Design	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2017.0174	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TMI.2019.2926501	Görge	Ja	Abstract	kein VR		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ergon.2016.01.001	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/xlm0000597	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2018.0027	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/xhp0000597	Görge		Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jclepro.2019.117805	Görge	Nein	Abstract	Review		Manufacturing	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2017.2801407	Görge	Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.iccn.2020.102849		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11227-018-2615-z		Ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-020-00449-3		Ja	Sample		Gaze accuracy and precission for static and movinc objects in VR and in reality	Psychology / Human factors	Visual perception	None	21			x	x	 	 	 	x	 	 	 	x	 	 	 	 	x	 	 	 	 	x	 	x
10.1007/s11042-020-09026-x		Ja	Titel	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Haptics / Physical interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/s12886-020-01471-4			Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/1937586720924787		Ja	Volltext	nur Technik	interessant: Design mit VR	Design	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/17483107.2020.1765419		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/su12093823		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Biologie / Chemie	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app10093012		Ja	Titel	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/app10093182		Ja	Titel	kein Bezug zu manueller Kommissionierung		Archäologie / Museen	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/2055668320913770		Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Vergleich	Medizin	Rehabilitation / Treatment	Oculus Rift handheld touch controllers	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2020.03.006		Ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Vergleich Aufmerksamkeit	Psychology / Human factors	Visual perception	None	30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0231152		Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0223631		Ja	Titel	kein Bezug zu manueller Kommissionierung		Retail / Marketing	Perception of prodcuts / Advertisement					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s20071917		Ja	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s20082208		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s20082168		Ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Training manueller Tätigkeiten	Medizin	Rehabilitation / Treatment	leap motion controller—OR2-LMC	6			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s20082264		Nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0230042		Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.32604/cmc.2020.09930		Nein	Abstract	kein VR		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0225972		Ja	Sample		interessant: laufen in VR	Hardwareentwicklung und Evaluation	Model design	Treadmill	13	x		 	x	 	 	 	x	x	 	 	 	 	 	 	 	x	 	x	 	 	 	 	x
10.3389/frobt.2019.00084			Titel	Review								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/07421222.2019.1628889		Ja	Sample	kein Vergleich zu realer Anwendung	Effect of immersion on shopping in VR	Retail / Marketing	Effect of Immersion		260	x		 	x	 	 	 	x	 	 	 	x	 	 	 	 	 	x	 	 	x	 	 	x
10.1016/j.bjoms.2018.04.002			Titel	kein VR		Medizin	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/B978-0-12-809481-5.00009-2		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0055		Nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1587/transinf.2015EDP7165		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0056		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3762/bjnano.6.220		Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1021/acs.jcim.5b00544		Nein	Abstract	nur Technik		Biologie / Chemie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-015-0270-8		Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Hören in VR und real	Psychology / Human factors	Perception of Sound		30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.physbeh.2015.08.043		Ja	Volltext	kein Bezug zu manueller Kommissionierung	Einfluss Cybersichness auf reaction time	Psychology / Human factors	Cybersickness / Fatigue	None	26			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/00222895.2015.1015674		Ja	Volltext	kein Bezug zu manueller Kommissionierung	Vergleich Arm Position	Ergonomie	Body Illusion	None	10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2766939		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.chb.2015.01.065		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fneur.2015.00164		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0057		Nein	Abstract	nur Technik		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0058		Nein	Abstract	nur Technik		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnins.2015.00207		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-015-0260-x		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1088/1741-2560/12/3/036001		Ja	Volltext	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0059		Nein	Abstract	kein Vergleich zu realer Anwendung		Medizin	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2015.00713		Ja	Abstract	kein Vergleich zu realer Anwendung		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cag.2015.02.007		Ja	Abstract	kein VR		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1364/AO.54.003422		Nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2720020		Ja	Sample		Importance of seeing self-avatar in VR for spatial perception	Psychology / Human factors	Visual perception	Motion Capture	84	x		 	 	x	 	 	x	 	 	 	 	 	 	 	x	x	 	x	x	 	x	 	 
10.1016/j.math.2014.10.002		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2015.2391858		Ja	Abstract	nur Technik		Softwareentwicklung	Perception of Sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2015.2391860		Ja	Volltext	kein Vergleich zu realer Anwendung	interessant	Softwareentwicklung	Haptics / Physical interaction	Custom development	12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2015.2391853		Ja	Volltext	kein Bezug zu manueller Kommissionierung	Training Vergleich Langzeit	Psychology / Human factors	Training	Nintendo Nunchuck	48			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2015.00248		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/s13428-014-0463-1		ja	Titel	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2699254		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	None	39			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jbiomech.2015.01.005		ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ssci.2014.09.017		ja	Abstract	kein Vergleich zu realer Anwendung		Mining	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.17759/exppsy.2015080205		ja	Abstract	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1068/p7929		Ja	Sample		interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	None	56	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	 	x	 	x	 	 
10.3233/978-1-61499-595-1-3		nein	Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3109/17483107.2014.889230		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Diagnosis					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijhcs.2014.09.002		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-014-0248-y		ja	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-014-0249-x		ja	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MPUL.2014.2355298		nein	Abstract	nur Technik		Medizin	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1115/1.4027114		nein	Abstract	nur Technik		Medizin	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.destud.2009.11.001		ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/s13428-013-0412-4		nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/a0036240		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/jsid.269		Ja	Volltext	kein VR	interessant: Abschätzung von Distanzen	Ergonomie	Haptics / Physical interaction		10			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.7717/peerj.337		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2014.18		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Laufen in VR	Hardwareentwicklung und Evaluation	Movement / Navigation	Joystick 	63			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.4103/1673-5374.131612		ja	Abstract	kein VR		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/1471-2105-15-56		nein	Abstract	nur Technik		Biologie / Chemie	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1155/2014/206082		ja	Abstract	kein Vergleich zu realer Anwendung		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2013.00946		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3109/10582452.2013.851760		ja	Abstract	VR nur als Methode		Medizin	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2508363.2508366		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1038/ijo.2013.87		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Behaviour					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fnhum.2013.00580		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	Buttons	14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1073/pnas.1306779110		ja	Titel	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/1743-0003-10-80		ja	Abstract	VR nur als Methode		Human Biology	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3389/fpsyg.2013.00354		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Abschätzung von Distanzen	Psychology / Human factors	Body Illusion	None	24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2012.10.007		Nein	Volltext	kein Vergleich zu realer Anwendung	evtl. Ausnutzung von Illussionen biem Laufen	Softwareentwicklung	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2013.43		ja	Volltext	nur Technik		Psychology / Human factors	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2013.01.001		ja	Abstract	kein VR		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TNSRE.2012.2237040		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10055-012-0216-3		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Wahrnehmung von Stehen auf geneigten Oberflächen	Psychology / Human factors	Balance		12			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00221-012-3352-9		ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0001		nein	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.4015/S1016237212500391		ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0040867		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2011.278		nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00702-011-0757-8		ja	Abstract	VR nur als Methode		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/PRES_a_00111		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00221-012-3048-1		ja	Sample		Perception of walking distance	Psychology / Human factors	Movement / Navigation	Game controller	25			x	 	 	 	 	x	x	 	 	 	 	 	 	x	x	 	 	x	 	x	 	x
10.1109/TVCG.2012.45		ja	Abstract	kein VR		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/2134203.2134206		ja	Abstract	kein Bezug zu manueller Kommissionierung	Vergleich sozialer Nähe	Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1177/0269215511419383		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Gleichgewichtstraining	Medizin	Rehabilitation / Treatment	Treadmill	30			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/PRES_a_00089		ja	Abstract	nur Technik		Softwareentwicklung	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0030021		ja	Volltext	kein Bezug zu manueller Kommissionierung	interessant: Finger Movement Vergleich VR Real	Medizin	Measurement of body functions	None	34			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/01431161.2011.629233		nein	Titel	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.cirp.2012.05.010		nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.chb.2011.06.006		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0025759		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.actpsy.2011.05.015		ja	Sample		Reach and grasp with and withour haptic feedback in comparison to real world	Ergonomie	Haptics / Physical interaction	Cyberglove & Cybergrasp, Immersion Corp.	10			x	x	 	 	 	x	 	 	 	 	x	x	 	 	 	 	x	 	 	x	 	x
10.1109/TVCG.2011.41		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Change blindness	Human Biology	Visual perception	None	18			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jneumeth.2011.05.011		nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2010.248		ja	Sample		Vergleich Field of View	Psychology / Human factors	Visual perception	Nintendo Wii Controller & PowerMate input device	21	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	 	 	x
10.1186/1743-0003-8-36		ja	Abstract	kein Vergleich zu realer Anwendung		Ergonomie	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0002		nein	Titel	nur Technik		Softwareentwicklung	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/PRES_a_00048		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Abschätzung von Distanzen	Psychology / Human factors	Visual perception	Motion Tracking	51			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MAES.2011.5763338		nein	Abstract	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1098/rstb.2010.0209		nein	Volltext	Review	evtl. interessant	Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1371/journal.pone.0016128		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Body Illusion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2011.552059		ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/pres_a_00016		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.compedu.2010.06.005		ja	Abstract	kein Bezug zu manueller Kommissionierung		Bildungswesen	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/PRES_a_00005		nein	Abstract	nur Technik		Journalism	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1093/jpepsy/jsp082		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11554-009-0141-1		nein	Abstract	nur Technik		Design	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/BRM.42.2.414		ja	Volltext	nur Technik	interessant: Unterschiede bezüglich Limitationen von HMD	Psychology / Human factors	Visual perception		24			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cav.324		nein	Abstract	nur Technik		Softwareentwicklung	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.comppsych.2008.12.001		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.isprsjprs.2009.10.001		nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/JDT.2009.2029123		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. allgemein Workload bei HMD	Hardwareentwicklung und Evaluation	Evaluation of VR systems		99			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1167/10.13.11		ja	Abstract	VR nur als Methode		Human Biology	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.burns.2009.01.013		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/OPX.0b013e3181adff42		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1093/jpepsy/jsn023		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/pres.18.3.232		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.apmr.2008.10.030		ja	Sample		interssant: Vergleich Pointing Movement	Medizin	Body kinematics / Hand movements		15			x	x	 	 	 	x	 	 	 	 	x	 	 	 	x	 	x	 	 	x	 	x
00.0000/0003		nein	Titel	nur Technik		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/BRS.0b013e31819b3254		ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.resuscitation.2008.12.016		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11042-008-0223-2		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Vergleich Navidation	Hardwareentwicklung und Evaluation	Movement / Navigation		42			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/pres.17.6.575		ja	Volltext	kein Bezug zu manueller Kommissionierung	evtzl. Interessant: Heart Rate im Vergleich zu real	Human Biology	Measurement of body functions		16			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1111/j.1553-2712.2008.00191.x		ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.actaastro.2007.11.001		ja	Abstract	kein Vergleich zu realer Anwendung		Aviation	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3390/s8074350		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2007.0116		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TNSRE.2008.922676		nein	Abstract	nur Technik		Human Biology	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.displa.2007.09.005		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. interessant: Vergleich HMD zu normaler Leinwand (Übelkeit)	Hardwareentwicklung und Evaluation	Evaluation of VR systems		139			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.epsr.2007.03.014		nein	Abstract	nur Technik		Ingenieurwesen / Physik	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00221-007-1134-6		ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1123/jsr.17.1.38		ja	Volltext	kein VR	Effect of HMD weight on balance	Ergonomie	Balance		20			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/cae.20145		ja	Abstract	kein Bezug zu manueller Kommissionierung		Ingenieurwesen / Physik	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/1278387.1278392		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Beurteilung von Entfernungen in VR	Hardwareentwicklung und Evaluation	Visual perception	Joystick Logitech Aattack 3	8			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/0278-6133.26.6.794		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s11554-007-0043-z		nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1186/1743-0003-4-35		ja	Volltext	kein VR	evtl. Motion sickness	Human Biology	Cybersickness / Fatigue		21			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0004		ja	Volltext	kein Vergleich zu realer Anwendung	interessant: Training von Orientierung und räumliche Wahrnehmung	Aviation	Training	Hand controller Thrustmaster FireStorm Dual Analog 3	36			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/pres.16.4.399		Ja	Sample		Comparison of walking coordination	Ergonomie	Movement / Navigation	Motion Tracking, Foot Switch, Treadmill	10	x		 	x	 	 	 	 	x	 	 	 	 	 	 	 	x	 	x	 	 	 	 	x
10.1145/1265957.1265961		ja	Sample		 Vergleich räumliches Lernen	Psychology / Human factors	Visual perception	None	30	x		 	x	 	 	x	 	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	 
10.3130/jaabe.6.57		ja	Abstract	kein Bezug zu manueller Kommissionierung		Bauwesen / Architektur	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2007.37		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Perception of sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1518/001872007779598028		ja	Sample		interessant: Vergleich von Gewichten	Ergonomie	Haptics / Physical interaction	Real object in VR	30			x	x	 	 	 	x	 	 	 	 	 	x	 	 	 	 	x	 	 	x	x	 
10.1162/pres.16.1.111		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/1227134.1227139		ja	Volltext	VR nur als Methode	evtl. Laufen auf Laufband	Ergonomie	Movement / Navigation	Treadmill	58			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1188/07.ONF.39-46		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.jpain.2006.04.006		ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Perception of Pain / Discomfort					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.eurpsy.2004.10.004		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/pres.15.5.588		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.neulet.2006.06.007		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of sound					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.optlaseng.2005.06.005		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TVCG.2006.55		nein	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Memory Assessment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1117/1.2189211		ja	Abstract	kein Vergleich zu realer Anwendung		Aviation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.ijhcs.2005.08.004		nein	Abstract	kein VR		Aviation	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0005		nein	Abstract	nur Technik		Ingenieurwesen / Physik	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/ecjb.20304		nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/13506280544000273		ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/1054746053967012		ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/01.OPX.0000156307.95086.6		ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.autcon.2004.08.001		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0006		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0007		Nein	Titel	nur Technik		Softwareentwicklung	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2004.7.519		Ja	Sample		evtl. Training längerer Aufmerksamkeit	Psychology / Human factors	Training		28		x	 	 	x	 	x	 	 	 	 	 	 	 	x	 	x	 	x	 	 	 	x	 
10.1177/1063293X04042469		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1518/hfes.46.1.142.30384		Ja	Abstract	VR nur als Methode		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/0022-0663.96.1.165		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0005-7967(03)00139-6		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0008		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Movement / Navigation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0009		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s10384-003-0001-7		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1017/S0263574703005447		Ja	Abstract	kein Vergleich zu realer Anwendung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/j.biopha.2003.08.010		Ja	Abstract	VR nur als Methode		Psychology / Human factors	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0010		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1055/s-2003-37831		Ja	Titel	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0007-8506(07)60517-4		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0011		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Control of VR / Human-Computer Interface					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0012		Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1023/A:1021778608344		Ja	Volltext	kein VR	evtl. Vergleich Laufen	Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0143-8166(02)00034-9		Nein	Titel	nur Technik		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037//0022-0663.94.3.598		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Training					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1360/02tb9297			Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1023/A:1019960305038		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/s00268-001-0127-z		Nein	Abstract	nur Technik		Medizin	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0097-8493(01)00118-2		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1006/ijhc.2001.0475		Nein	Abstract	nur Technik		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/1054746011470226		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Rehabilitation / Treatment					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/1054746011470271		Nein	Volltext	nur Technik	evtl. Vergleich Autofahren	Psychology / Human factors	Diagnosis					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2008.0003			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0013		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1504/IJTM.2001.002917		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Design	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0924-0136(00)00717-2		Nein	Abstract	nur Technik		Manufacturing	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0887-6185(00)00052-9		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Emotions / Empathy / Fear					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0141-9382(00)00029-9		Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0014		Nein	Abstract	nur Technik		Human Biology	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0015		?	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0016		Ja	Abstract	nur Technik		Softwareentwicklung	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0278-2391(99)90722-X		Ja	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.2170/jjphysiol.49.417		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Ergonomie	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1518/001872099779611067		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Softwareentwicklung	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1097/00006324-199909000-00021		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Medizin	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/105474699566341		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/105474699566152		Ja	Abstract	kein Vergleich zu realer Anwendung		Psychology / Human factors	Effect of Immersion					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0141-9331(98)00105-7		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0003-6870(98)00041-6		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Übelkeit bein Laufen in VR	Ergonomie	Cybersickness / Fatigue		14			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0003-6870(98)00043-X		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0003-6870(98)00045-3		ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Ergonomie / Interaktion in VR	Ergonomie	Evaluation of VR systems		9			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0361-9230(98)00104-X		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Human Biology	Balance					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0017		Nein	Abstract	nur Technik		Human Biology	Hardware development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/105474698565811		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Tracking / Motion Capturing (Evaluation)					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0018			Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/001401398187035		Ja	Abstract	nur Technik		Human Biology	Effect of HMDs on Eyesight					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/5.662873		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0141-9382(97)00011-5		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Cybersickness / Fatigue					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1023/A:1018639714611		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/001401397187603		Nein	Volltext	kein Vergleich zu realer Anwendung	evtl. Ergonomie in VR	Ergonomie	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1518/001872097778827070		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0168-874X(96)00078-9		Nein	Abstract	nur Technik		Ingenieurwesen / Physik	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0019			Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0278-2391(97)90689-3		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1162/pres.1997.6.1.118		Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/00140139608964552		Ja	Abstract	VR nur als Methode		Ergonomie	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/00140139608964557		Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. handling in VR	Ergonomie	Haptics / Physical interaction		23			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1143/JJAP.35.3121		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/S0901-5027(96)80062-2		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0020		Nein	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0021		Nein	Abstract	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0022			Titel	kein Zugriff								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1007/BF02407087		Nein	Titel	nur Technik		Softwareentwicklung	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1016/0010-4825(94)00007-D		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0023		Nein	Titel	nur Technik		Softwareentwicklung	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/159161.173948		Nein	Abstract	nur Technik		Softwareentwicklung	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/159544.159587		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TBME.2009.2028013			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/10949310050078805		Nein	Abstract	nur Technik		Psychology / Human factors	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493103322011542			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MM.2014.94		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2014.0046		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort / Stress					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2014.927283		Ja	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2012.110		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Collaboration / Interaction					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1504/IJCAT.2015.069331		Nein	Abstract	nur Technik		Softwareentwicklung	Remote Control / Digital Twin					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2009.0118			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2004.1297006		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/07408170304345		Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Bedienung von Werkzeugen in VR	Softwareentwicklung	Remote Control / Digital Twin	Moude & Gloves	11			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/16864360.2006.10738485		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Design	Model design					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1037/a0027524		Ja	Sample		interessant: Vergleich Distanzen	Psychology / Human factors	Visual perception	None	60	x		 	x	 	 	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	x
10.1089/cpb.2006.9.207			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1002/hfm.20566			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493101300117910			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/1094931042403109		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Presence					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2014.0058			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2006.9.591			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2004.7.734		Ja	Volltext	kein Bezug zu manueller Kommissionierung	evtl. Rolle von Immersion	Psychology / Human factors	Presence		60			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0024			Dopplung									 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/01449290903160459			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/38.963462		Nein	Abstract	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/1094931042403055			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3233/wor-2012-0442-2201		Ja	Volltext	kein Vergleich zu realer Anwendung	evtl. Navigation und Balance	Ergonomie	Haptics / Physical interaction		36			 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/16864360.2006.10738444		Nein	Abstract	nur Technik		Design	Software development					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2007.9996			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/088395197118154		Nein	Abstract	nur Technik		Softwareentwicklung	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/10949310050078788			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2015.98		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visual perception					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2014.117		Nein	Titel	kein VR								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TRO.2009.2028765			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TIE.2014.2334675			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.3758/s13421-010-0054-z			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493103769710505			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493102753770516			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493102753685890		Ja	Abstract	kein Bezug zu manueller Kommissionierung		Psychology / Human factors	Perception of Pain / Discomfort / Stress					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493101300117938		Ja	Sample		evtl. interessant: Erinnerung / Lernen in VR	Psychology / Human factors	Effect of Immersion	Mouse	18	x		 	x	 	 	x	 	 	 	 	 	 	 	x	x	 	x	x	 	 	x	 	 
10.1089/10949310050078940			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1080/10447318.2015.1039909			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2006.9.388			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/TBME.2005.848378		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Measurement of body functions					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2014.103		Nein	Abstract	nur Technik		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cpb.2006.9.137			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/109493103322011605			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2015.102		Nein	Abstract	kein Bezug zu manueller Kommissionierung		VR Allgemein	Image of VR / Use of VR					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1089/cyber.2009.0263			Dopplung	Dopplung								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1109/MCG.2014.82		Nein	Abstract	kein Bezug zu manueller Kommissionierung		Hardwareentwicklung und Evaluation	Visualisation					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
00.0000/0026		Nein	Abstract	nur Technik		Hardwareentwicklung und Evaluation	Evaluation of VR systems					 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.14400/JDC.2015.13.8.465		Nein	Abstract	nicht Englisch								 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
10.1145/1498700.1498702		Ja	Sample		Distance walking in real world, in VR and with mockup HMD	Hardwareentwicklung und Evaluation	Visual perception	Intersense IS-900 motion tracker	116	x		 	x	 	 	 	x	x	 	 	 	 	 	 	x	x	 	x	 	 	 	 	x
10.1145/1823738.1823744		Ja	Sample		Evaluation of distance perception in reality and in VR wearing an HMD	Psychology / Human factors	Visual perception	Motion capture	107	x		 	x	 	 	 	x	x	 	 	 	 	 	 	x	x	 	x	 	 	 	 	x
10.1016/j.ergon.2010.10.001		Ja	Sample		Comparison of the ergonomics of a drilling task in VR and in reality	Ergonomie	Haptics / Physical interaction	Polhemus motion tracking	30		x	 	x	 	 	 	x	 	 	 	 	x	x	 	 	x	x	x	 	 	x	 	 
10.1016/j.gaitpost.2012.02.010		ja	Sample		Simulating standing on elevated surfaces in order to analyze balance and induced axieties	Psychology / Human factors	Balance	None	18	x		 	x	 	 	 	x	 	x	 	 	 	 	 	x	x	 	x	 	 	x	 	x
10.1016/j.jneumeth.2018.03.010		ja	Sample		Everyday memory assessment	Human Biology	Measurement of body functions	PPT-X motion tracking	84	x		 	 	 	x	 	x	 	 	 	 	 	 	x	 	x	 	x	 	x	x	 	 
10.3758/s13414-011-0170-2		ja	Sample		Estimation of perceived egocentric and exocentric distances in VR	Psychology / Human factors	Visual perception	None	83	x		 	 	x	 	 	x	 	 	 	 	 	 	 	x	x	 	x	 	 	x	 	 
\.


--
-- Name: artikel artikel_pkey; Type: CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.artikel
    ADD CONSTRAINT artikel_pkey PRIMARY KEY (doi);


--
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (nachname, vorname);


--
-- Name: hmd hmd_pkey; Type: CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.hmd
    ADD CONSTRAINT hmd_pkey PRIMARY KEY (name);


--
-- Name: review review_pkey; Type: CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (doi);


--
-- Name: doi_autor fk_artikel_doi; Type: FK CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.doi_autor
    ADD CONSTRAINT fk_artikel_doi FOREIGN KEY (nachname, vorname) REFERENCES public.autor(nachname, vorname);


--
-- Name: doi_autor fk_doi_artikel; Type: FK CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.doi_autor
    ADD CONSTRAINT fk_doi_artikel FOREIGN KEY (doi) REFERENCES public.artikel(doi);


--
-- Name: doi_hmd fk_doi_hmd; Type: FK CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.doi_hmd
    ADD CONSTRAINT fk_doi_hmd FOREIGN KEY (doi) REFERENCES public.review(doi);


--
-- Name: doi_hmd fk_hmd_doi; Type: FK CONSTRAINT; Schema: public; Owner: the_user
--

ALTER TABLE ONLY public.doi_hmd
    ADD CONSTRAINT fk_hmd_doi FOREIGN KEY (name) REFERENCES public.hmd(name);


--
-- PostgreSQL database dump complete
--

