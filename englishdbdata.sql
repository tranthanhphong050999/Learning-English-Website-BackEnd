-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2021 lúc 08:13 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `englishdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `AC_Id` int(11) NOT NULL,
  `AC_userName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_fullName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_Email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_Streak` int(11) NOT NULL,
  `AC_Exp` int(11) NOT NULL,
  `AC_State` int(11) NOT NULL,
  `AC_Role` int(11) NOT NULL,
  `AC_idExpOfOneDay` int(11) NOT NULL,
  `AC_passWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `AC_Avatar` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`AC_Id`, `AC_userName`, `AC_fullName`, `AC_Email`, `AC_Streak`, `AC_Exp`, `AC_State`, `AC_Role`, `AC_idExpOfOneDay`, `AC_passWord`, `AC_Avatar`) VALUES
(8, 'tranthanhphong05@gmail.com', 'Trần thanh phong', 'tranthanhphong05@gmail.com', 0, 0, 0, 0, 0, 'ac0ddb993625d6a8c888df710ee3da85', 'facebook.com'),
(10, 'tranthanhphong05@gmail.com', 'Trần thanh phong', 'tranthanhphong05@gmail.com', 0, 0, 0, 0, 0, '574b511f6eb1d4acd00e369496cacc23', 'facebook.com'),
(11, 'tranthanhphong05@gmail.com', 'Trần thanh phong', 'tranthanhphong05@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(12, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(13, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(14, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(15, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(16, 'tranthanhphong07@gmail.com', 'Trần thanh phong', 'tranthanhphong07@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(17, 'tranthanhphong10@gmail.com', 'Trần thanh phong', 'tranthanhphong10@gmail.com', 0, 0, 0, 0, 0, 'd77a97205c528566a0b80e84e55df832', ''),
(18, '', '', '', 0, 0, 0, 0, 0, '060f9548e5ff6347641b240090546090', ''),
(19, 'tranthanhphong08@gmail.com', 'Trần Thanh Phong', 'tranthanhphong08@gmail.com', 0, 0, 0, 0, 0, 'e151d8b62598a2294c28c6f93d01c40c', ''),
(20, 'tranthanhphong11@gmail.com', 'Trần Thanh Phong', 'tranthanhphong11@gmail.com', 0, 0, 0, 0, 0, 'e151d8b62598a2294c28c6f93d01c40c', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalogstored`
--

CREATE TABLE `catalogstored` (
  `CS_Id` int(11) NOT NULL,
  `CS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CS_numDay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalogstored`
--

INSERT INTO `catalogstored` (`CS_Id`, `CS_Name`, `CS_numDay`) VALUES
(1, 'Hộp 1', 1),
(2, 'Hộp 2', 2),
(3, 'Hộp 3', 3),
(4, 'Hộp 4', 7),
(5, 'Hộp 5', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customdegree`
--

CREATE TABLE `customdegree` (
  `CD_Id` int(11) NOT NULL,
  `CD_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customdegree`
--

INSERT INTO `customdegree` (`CD_Id`, `CD_Name`) VALUES
(1, 'Dễ'),
(2, 'Trung bình'),
(3, 'Khó'),
(4, 'Rất khó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expofoneday`
--

CREATE TABLE `expofoneday` (
  `EOOD_Id` int(11) NOT NULL,
  `EOOD_Exp` int(11) NOT NULL,
  `EOOD_dateCreated` date NOT NULL,
  `EOOD_idAccount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `expofoneday`
--

INSERT INTO `expofoneday` (`EOOD_Id`, `EOOD_Exp`, `EOOD_dateCreated`, `EOOD_idAccount`) VALUES
(1, 100, '2021-04-12', 8),
(2, 90, '2021-04-12', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `game`
--

CREATE TABLE `game` (
  `G_Id` int(11) NOT NULL,
  `G_Word` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `G_numQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `game`
--

INSERT INTO `game` (`G_Id`, `G_Word`, `G_numQuestion`) VALUES
(1, 'abandon;ability;able;abortion;about;above;abroad;absence;absolute;absolutely;absorb;abuse;academic;accept;access;accident;accompany;accomplish;according;account;accurate;accuse;achieve;achievement;acid;acknowledge;acquire;across;act;action;active;activist;activity;actor;actress;actual;actually;ad;adapt;add;addition;additional;address;adequate;adjust;adjustment;administration;administrator;admire;admission;admit;adolescent;adopt;adult;advance;advanced;advantage;adventure;advertising;advice;advise;adviser;advocate;affair;affect;afford;afraid;African;African-American;after;afternoon;again;against;age;agency;agenda;agent;aggressive;ago;agree;agreement;agricultural;ah;ahead;aid;aide;AIDS;aim;air;aircraft;airline;airport;album;alcohol;alive;all;alliance;allow;ally;almost;alone;along;already;also;alter;alternative;although;always;AM;amazing;American;among;amount;analysis;analyst;analyze;ancient;and;anger;angle;angry;animal;anniversary;announce;annual;another;answer;anticipate;anxiety;any;anybody;anymore;anyone;anything;anyway;anywhere;apart;apartment;apparent;apparently;appeal;appear;appearance;apple;application;apply;appoint;appointment;appreciate;approach;appropriate;approval;approve;approximately;Arab;architect;area;argue;argument;arise;arm;armed;army;around;arrange;arrangement;arrest;arrival;arrive;art;article;artist;artistic;as;Asian;aside;ask;asleep;aspect;assault;assert;assess;assessment;asset;assign;assignment;assist;assistance;assistant;associate;association;assume;assumption;assure;at;athlete;athletic;atmosphere;attach;attack;attempt;attend;attention;attitude;attorney;attract;attractive;attribute;audience;author;authority;auto;available;average;avoid;award;aware;awareness;away;awful;baby;back;background;bad;badly;bag;bake;balance;ball;ban;band;bank;bar;barely;barrel;barrier;base;baseball;basic;basically;basis;basket;basketball;bathroom;battery;battle;be;beach;bean;bear;beat;beautiful;beauty;because;become;bed;bedroom;beer;before;begin;beginning;behavior;behind;being;belief;believe;bell;belong;below;belt;bench;bend;beneath;benefit;beside;besides;best;bet;better;between;beyond;Bible;big;bike;bill;billion;bind;biological;bird;birth;birthday;bit;bite;black;blade;blame;blanket;blind;block;blood;blow;blue;board;boat;body;bomb;bombing;bond;bone;book;boom;boot;border;born;borrow;boss;both;bother;bottle;bottom;boundary;bowl;box;boy;boyfriend;brain;branch;brand;bread;break;breakfast;breast;breath;breathe;brick;bridge;brief;briefly;bright;brilliant;bring;British;broad;broken;brother;brown;brush;buck;budget;build;building;bullet;bunch;burden;burn;bury;bus;business;busy;but;butter;button;buy;buyer;by;cabin;cabinet;cable;cake;calculate;call;camera;camp;campaign;campus;can;Canadian;cancer;candidate;cap;capability;capable;capacity;capital;captain;capture;car;carbon;card;care;career;careful;carefully;carrier;carry;case;cash;cast;cat;catch;category;Catholic;cause;ceiling;celebrate;celebration;celebrity;cell;center;central;century;CEO;ceremony;certain;certainly;chain;chair;chairman;challenge;chamber;champion;championship;chance;change;changing;channel;chapter;character;characteristic;characterize;charge;charity;chart;chase;cheap;check;cheek;cheese;chef;chemical;chest;chicken;chief;child;childhood;Chinese;chip;chocolate;choice;cholesterol;choose;Christian;Christmas;church;cigarette;circle;circumstance;cite;citizen;city;civil;civilian;claim;class;classic;classroom;clean;clear;clearly;client;climate;climb;clinic;clinical;clock;close;closely;closer;clothes;clothing;cloud;club;clue;cluster;coach;coal;coalition;coast;coat;code;coffee;cognitive;cold;collapse;colleague;collect;collection;collective;college;colonial;color;column;combination;combine;come;comedy;comfort;comfortable;command;commander;comment;commercial;commission;commit;commitment;committee;common;communicate;communication;community;company;compare;comparison;compete;competition;competitive;competitor;complain;complaint;complete;completely;complex;complicated;component;compose;composition;comprehensive;computer;concentrate;concentration;concept;concern;concerned;concert;conclude;conclusion;concrete;condition;conduct;conference;confidence;confident;confirm;conflict;confront;confusion;Congress;congressional;connect;connection;consciousness;consensus;consequence;conservative;consider;considerable;consideration;consist;consistent;constant;constantly;constitute;constitutional;construct;construction;consultant;consume;consumer;consumption;contact;contain;container;contemporary;content;contest;context;continue;continued;contract;contrast;contribute;contribution;control;controversial;controversy;convention;conventional;conversation;convert;conviction;convince;cook;cookie;cooking;cool;cooperation;cop;cope;copy;core;corn;corner;corporate;corporation;correct;correspondent;cost;cotton;couch;could;council;counselor;count;counter;country;county;couple;courage;course;court;cousin;cover;coverage;cow;crack;craft;crash;crazy;cream;create;creation;creative;creature;credit;crew;crime;criminal;crisis;criteria;critic;critical;criticism;criticize;crop;cross;crowd;crucial;cry;cultural;culture;cup;curious;current;currently;curriculum;custom;customer;cut;cycle;dad;daily;damage;dance;danger;dangerous;dare;dark;darkness;data;date;daughter;day;dead;deal;dealer;dear;death;debate;debt;decade;decide;decision;deck;declare;decline;decrease;deep;deeply;deer;defeat;defend;defendant;defense;defensive;deficit;define;definitely;definition;degree;delay;deliver;delivery;demand;democracy;Democrat;democratic;demonstrate;demonstration;deny;department;depend;dependent;depending;depict;depression;depth;deputy;derive;describe;description;desert;deserve;design;designer;desire;desk;desperate;despite;destroy;destruction;detail;detailed;detect;determine;develop;developing;development;device;devote;dialogue;die;diet;differ;difference;different;differently;difficult;difficulty;dig;digital;dimension;dining;dinner;direct;direction;directly;director;dirt;dirty;disability;disagree;disappear;disaster;discipline;discourse;discover;discovery;discrimination;discuss;discussion;disease;dish;dismiss;disorder;display;dispute;distance;distant;distinct;distinction;distinguish;distribute;distribution;district;diverse;diversity;divide;division;divorce;DNA;do;doctor;document;dog;domestic;dominant;dominate;door;double;doubt;down;downtown;dozen;draft;drag;drama;dramatic;dramatically;draw;drawing;dream;dress;drink;drive;driver;drop;drug;dry;due;during;dust;duty;each;eager;ear;early;earn;earnings;earth;ease;easily;east;eastern;easy;eat;economic;economics;economist;economy;edge;edition;editor;educate;education;educational;educator;effect;effective;effectively;efficiency;efficient;effort;egg;eight;either;elderly;elect;election;electric;electricity;electronic;element;elementary;eliminate;elite;else;elsewhere;e-mail;embrace;emerge;emergency;emission;emotion;emotional;emphasis;emphasize;employ;employee;employer;employment;empty;enable;encounter;encourage;end;enemy;energy;enforcement;engage;engine;engineer;engineering;English;enhance;enjoy;enormous;enough;ensure;enter;enterprise;entertainment;entire;entirely;entrance;entry;environment;environmental;episode;equal;equally;equipment;era;error;escape;especially;essay;essential;essentially;establish;establishment;estate;estimate;etc;ethics;ethnic;European;evaluate;evaluation;even;evening;event;eventually;ever;every;everybody;everyday;everyone;everything;everywhere;evidence;evolution;evolve;exact;exactly;examination;examine;example;exceed;excellent;except;exception;exchange;exciting;executive;exercise;exhibit;exhibition;exist;existence;existing;expand;expansion;expect;expectation;expense;expensive;experience;experiment;expert;explain;explanation;explode;explore;explosion;expose;exposure;express;expression;extend;extension;extensive;extent;external;extra;extraordinary;extreme;extremely;eye;fabric;face;facility;fact;factor;factory;faculty;fade;fail;failure;fair;fairly;faith;fall;false;familiar;family;famous;fan;fantasy;far;farm;farmer;fashion;fast;fat;fate;father;fault;favor;favorite;fear;feature;federal;fee;feed;feel;feeling;fellow;female;fence;few;fewer;fiber;fiction;field;fifteen;fifth;fifty;fight;fighter;fighting;figure;file;fill;film;final;finally;finance;financial;find;finding;fine;finger;finish;fire;firm;first;fish;fishing;fit;fitness;five;fix;flag;flame;flat;flavor;flee;flesh;flight;float;floor;flow;flower;fly;focus;folk;follow;following;food;foot;football;for;force;foreign;forest;forever;forget;form;formal;formation;former;formula;forth;fortune;forward;found;foundation;founder;four;fourth;frame;framework;free;freedom;freeze;French;frequency;frequent;frequently;fresh;friend;friendly;friendship;from;front;fruit;frustration;fuel;full;fully;fun;function;fund;fundamental;funding;funeral;funny;furniture;furthermore;future;gain;galaxy;gallery;game;gang;gap;garage;garden;garlic;gas;gate;gather;gay;gaze;gear;gender;gene;general;generally;generate;generation;genetic;gentleman;gently;German;gesture;get;ghost;giant;gift;gifted;girl;girlfriend;give;given;glad;glance;glass;global;glove;go;goal;God;gold;golden;golf;good;government;governor;grab;grade;gradually;graduate;grain;grand;grandfather;grandmother;grant;grass;grave;gray;great;greatest;green;grocery;ground;group;grow;growing;growth;guarantee;guard;guess;guest;guide;guideline;guilty;gun;guy;habit;habitat;hair;half;hall;hand;handful;handle;hang;happen;happy;hard;hardly;hat;hate;have;he;head;headline;headquarters;health;healthy;hear;hearing;heart;heat;heaven;heavily;heavy;heel;height;helicopter;hell;hello;help;helpful;her;here;heritage;hero;herself;hey;hi;hide;high;highlight;highly;highway;hill;him;himself;hip;hire;his;historian;historic;historical;history;hit;hold;hole;holiday;holy;home;homeless;honest;honey;honor;hope;horizon;horror;horse;hospital;host;hot;hotel;hour;house;household;housing;how;however;huge;human;humor;hundred;hungry;hunter;hunting;hurt;husband;hypothesis;I;ice;idea;ideal;identification;identify;identity;ie;if;ignore;ill;illegal;illness;illustrate;image;imagination;imagine;immediate;immediately;immigrant;immigration;impact;implement;implication;imply;importance;important;impose;impossible;impress;impression;impressive;improve;improvement;in;incentive;incident;include;including;income;incorporate;increase;increased;increasing;increasingly;incredible;indeed;independence;independent;index;Indian;indicate;indication;individual;industrial;industry;infant;infection;inflation;influence;inform;information;ingredient;initial;initially;initiative;injury;inner;innocent;inquiry;inside;insight;insist;inspire;install;instance;instead;institution;institutional;instruction;instructor;instrument;insurance;intellectual;intelligence;intend;intense;intensity;intention;interaction;interest;interested;interesting;internal;international;Internet;interpret;interpretation;intervention;interview;into;introduce;introduction;invasion;invest;investigate;investigation;investigator;investment;investor;invite;involve;involved;involvement;Iraqi;Irish;iron;Islamic;island;Israeli;issue;it;Italian;item;its;itself;jacket;jail;Japanese;jet;Jew;Jewish;job;join;joint;joke;journal;journalist;journey;joy;judge;judgment;juice;jump;junior;jury;just;justice;justify;keep;key;kick;kid;kill;killer;killing;kind;king;kiss;kitchen;knee;knife;knock;know;knowledge;lab;label;labor;laboratory;lack;lady;lake;land;landscape;language;lap;large;largely;last;late;later;Latin;latter;laugh;launch;law;lawn;lawsuit;lawyer;lay;layer;lead;leader;leadership;leading;leaf;league;lean;learn;learning;least;leather;leave;left;leg;legacy;legal;legend;legislation;legitimate;lemon;length;less;lesson;let;letter;level;liberal;library;license;lie;life;lifestyle;lifetime;lift;light;like;likely;limit;limitation;limited;line;link;lip;list;listen;literally;literary;literature;little;live;living;load;loan;local;locate;location;lock;long;long-term;look;loose;lose;loss;lost;lot;lots;loud;love;lovely;lover;low;lower;luck;lucky;lunch;lung;machine;mad;magazine;mail;main;mainly;maintain;maintenance;major;majority;make;maker;makeup;male;mall;man;manage;management;manager;manner;manufacturer;manufacturing;many;map;margin;mark;market;marketing;marriage;married;marry;mask;mass;massive;master;match;material;math;matter;may;maybe;mayor;me;meal;mean;meaning;meanwhile;measure;measurement;meat;mechanism;media;medical;medication;medicine;medium;meet;meeting;member;membership;memory;mental;mention;menu;mere;merely;mess;message;metal;meter;method;Mexican;middle;might;military;milk;million;mind;mine;minister;minor;minority;minute;miracle;mirror;miss;missile;mission;mistake;mix;mixture;mode;model;moderate;modern;modest;mom;moment;money;monitor;month;mood;moon;moral;more;moreover;morning;mortgage;most;mostly;mother;motion;motivation;motor;mount;mountain;mouse;mouth;move;movement;movie;Mr;Mrs;Ms;much;multiple;murder;muscle;museum;music;musical;musician;Muslim;must;mutual;my;myself;mystery;myth;naked;name;narrative;narrow;nation;national;native;natural;naturally;nature;near;nearby;nearly;necessarily;necessary;neck;need;negative;negotiate;negotiation;neighbor;neighborhood;neither;nerve;nervous;net;network;never;nevertheless;new;newly;news;newspaper;next;nice;night;nine;no;nobody;nod;noise;nomination;none;nonetheless;nor;normal;normally;north;northern;nose;not;note;nothing;notice;notion;novel;now;nowhere;n\'t;nuclear;number;numerous;nurse;nut;object;objective;obligation;observation;observe;observer;obtain;obvious;obviously;occasion;occasionally;occupation;occupy;occur;ocean;odd;odds;of;off;offense;offensive;offer;office;officer;official;often;oh;oil;ok;okay;old;Olympic;on;once;one;ongoing;onion;online;only;onto;open;opening;operate;operating;operation;operator;opinion;opponent;opportunity;oppose;opposite;opposition;option;or;orange;order;ordinary;organic;organization;organize;orientation;origin;original;originally;other;others;otherwise;ought;our;ourselves;out;outcome;outside;oven;over;overall;overcome;overlook;owe;own;owner;pace;pack;package;page;pain;painful;paint;painter;painting;pair;pale;Palestinian;palm;pan;panel;pant;paper;parent;park;parking;part;participant;participate;participation;particular;particularly;partly;partner;partnership;party;pass;passage;passenger;passion;past;patch;path;patient;pattern;pause;pay;payment;PC;peace;peak;peer;penalty;people;pepper;per;perceive;percentage;perception;perfect;perfectly;perform;performance;perhaps;period;permanent;permission;permit;person;personal;personality;personally;personnel;perspective;persuade;pet;phase;phenomenon;philosophy;phone;photo;photograph;photographer;phrase;physical;physically;physician;piano;pick;picture;pie;piece;pile;pilot;pine;pink;pipe;pitch;place;plan;plane;planet;planning;plant;plastic;plate;platform;play;player;please;pleasure;plenty;plot;plus;PM;pocket;poem;poet;poetry;point;pole;police;policy;political;politically;politician;politics;poll;pollution;pool;poor;pop;popular;population;porch;port;portion;portrait;portray;pose;position;positive;possess;possibility;possible;possibly;post;pot;potato;potential;potentially;pound;pour;poverty;powder;power;powerful;practical;practice;pray;prayer;precisely;predict;prefer;preference;pregnancy;pregnant;preparation;prepare;prescription;presence;present;presentation;preserve;president;presidential;press;pressure;pretend;pretty;prevent;previous;previously;price;pride;priest;primarily;primary;prime;principal;principle;print;prior;priority;prison;prisoner;privacy;private;probably;problem;procedure;proceed;process;produce;producer;product;production;profession;professional;professor;profile;profit;program;progress;project;prominent;promise;promote;prompt;proof;proper;properly;property;proportion;proposal;propose;proposed;prosecutor;prospect;protect;protection;protein;protest;proud;prove;provide;provider;province;provision;psychological;psychologist;psychology;public;publication;publicly;publish;publisher;pull;punishment;purchase;pure;purpose;pursue;push;put;qualify;quality;quarter;quarterback;question;quick;quickly;quiet;quietly;quit;quite;quote;race;racial;radical;radio;rail;rain;raise;range;rank;rapid;rapidly;rare;rarely;rate;rather;rating;ratio;raw;reach;react;reaction;read;reader;reading;ready;real;reality;realize;really;reason;reasonable;recall;receive;recent;recently;recipe;recognition;recognize;recommend;recommendation;record;recording;recover;recovery;recruit;red;reduce;reduction;refer;reference;reflect;reflection;reform;refugee;refuse;regard;regarding;regardless;regime;region;regional;register;regular;regularly;regulate;regulation;reinforce;reject;relate;relation;relationship;relative;relatively;relax;release;relevant;relief;religion;religious;rely;remain;remaining;remarkable;remember;remind;remote;remove;repeat;repeatedly;replace;reply;report;reporter;represent;representation;representative;Republican;reputation;request;require;requirement;research;researcher;resemble;reservation;resident;resist;resistance;resolution;resolve;resort;resource;respect;respond;respondent;response;responsibility;responsible;rest;restaurant;restore;restriction;result;retain;retire;retirement;return;reveal;revenue;review;revolution;rhythm;rice;rich;rid;ride;rifle;right;ring;rise;risk;river;road;rock;role;roll;romantic;roof;room;root;rope;rose;rough;roughly;round;route;routine;row;rub;rule;run;running;rural;rush;Russian;sacred;sad;safe;safety;sake;salad;salary;sale;sales;salt;same;sample;sanction;sand;satellite;satisfaction;satisfy;sauce;save;saving;say;scale;scandal;scared;scenario;scene;schedule;scheme;scholar;scholarship;school;science;scientific;scientist;scope;score;scream;screen;script;sea;search;season;seat;second;secret;secretary;section;sector;secure;security;see;seed;seek;seem;segment;seize;select;selection;self;sell;Senate;senator;send;senior;sense;sensitive;sentence;separate;sequence;series;serious;seriously;serve;service;session;set;setting;settle;settlement;seven;several;severe;sex;sexual;shade;shadow;shake;shall;shape;share;sharp;she;sheet;shelf;shell;shelter;shift;shine;ship;shirt;shit;shock;shoe;shoot;shooting;shop;shopping;shore;short;shortly;shot;should;shoulder;shout;show;shower;shrug;shut;sick;side;sigh;sight;sign;signal;significance;significant;significantly;silence;silent;silver;similar;similarly;simple;simply;sin;since;sing;singer;single;sink;sir;sister;sit;site;situation;six;size;ski;skill;skin;sky;slave;sleep;slice;slide;slight;slightly;slip;slow;slowly;small;smart;smell;smile;smoke;smooth;snap;snow;so;so-called;soccer;social;society;soft;software;soil;solar;soldier;solid;solution;solve;some;somebody;somehow;someone;something;sometimes;somewhat;somewhere;son;song;soon;sophisticated;sorry;sort;soul;sound;soup;source;south;southern;Soviet;space;Spanish;speak;speaker;special;specialist;species;specific;specifically;speech;speed;spend;spending;spin;spirit;spiritual;split;spokesman;sport;spot;spread;spring;square;squeeze;stability;stable;staff;stage;stair;stake;stand;standard;standing;star;stare;start;state;statement;station;statistics;status;stay;steady;steal;steel;step;stick;still;stir;stock;stomach;stone;stop;storage;store;storm;story;straight;strange;stranger;strategic;strategy;stream;street;strength;strengthen;stress;stretch;strike;string;strip;stroke;strong;strongly;structure;struggle;student;studio;study;stuff;stupid;style;subject;submit;subsequent;substance;substantial;succeed;success;successful;successfully;such;sudden;suddenly;sue;suffer;sufficient;sugar;suggest;suggestion;suicide;suit;summer;summit;sun;super;supply;support;supporter;suppose;supposed;Supreme;sure;surely;surface;surgery;surprise;surprised;surprising;surprisingly;surround;survey;survival;survive;survivor;suspect;sustain;swear;sweep;sweet;swim;swing;switch;symbol;symptom;system;table;tablespoon;tactic;tail;take;tale;talent;talk;tall;tank;tap;tape;target;task;taste;tax;taxpayer;tea;teach;teacher;teaching;team;tear;teaspoon;technical;technique;technology;teen;teenager;telephone;telescope;television;tell;temperature;temporary;ten;tend;tendency;tennis;tension;tent;term;terms;terrible;territory;terror;terrorism;terrorist;test;testify;testimony;testing;text;than;thank;thanks;that;the;theater;their;them;theme;themselves;then;theory;therapy;there;therefore;these;they;thick;thin;thing;think;thinking;third;thirty;this;those;though;thought;thousand;threat;threaten;three;throat;through;throughout;throw;thus;ticket;tie;tight;time;tiny;tip;tire;tired;tissue;title;to;tobacco;today;toe;together;tomato;tomorrow;tone;tongue;tonight;too;tool;tooth;top;topic;toss;total;totally;touch;tough;tour;tourist;tournament;toward;towards;tower;town;toy;trace;track;trade;tradition;traditional;traffic;tragedy;trail;train;training;transfer;transform;transformation;transition;translate;transportation;travel;treat;treatment;treaty;tree;tremendous;trend;trial;tribe;trick;trip;troop;trouble;truck;true;truly;trust;truth;try;tube;tunnel;turn;TV;twelve;twenty;twice;twin;two;type;typical;typically;ugly;ultimate;ultimately;unable;uncle;under;undergo;understand;understanding;unfortunately;uniform;union;unique;unit;United;universal;universe;university;unknown;unless;unlike;unlikely;until;unusual;up;upon;upper;urban;urge;us;use;used;useful;user;usual;usually;utility;vacation;valley;valuable;value;variable;variation;variety;various;vary;vast;vegetable;vehicle;venture;version;versus;very;vessel;veteran;via;victim;victory;video;view;viewer;village;violate;violation;violence;violent;virtually;virtue;virus;visible;vision;visit;visitor;visual;vital;voice;volume;volunteer;vote;voter;vs;vulnerable;wage;wait;wake;walk;wall;wander;want;war;warm;warn;warning;wash;waste;watch;water;wave;way;we;weak;wealth;wealthy;weapon;wear;weather;wedding;week;weekend;weekly;weigh;weight;welcome;welfare;well;west;western;wet;what;whatever;wheel;when;whenever;where;whereas;whether;which;while;whisper;white;who;whole;whom;whose;why;wide;widely;widespread;wife;wild;will;willing;win;wind;window;wine;wing;winner;winter;wipe;wire;wisdom;wise;wish;with;withdraw;within;without;witness;woman;wonder;wonderful;wood;wooden;word;work;worker;working;works;workshop;world;worried;worry;worth;would;wound;wrap;write;writer;writing;wrong;yard;yeah;year;yell;yellow;yes;yesterday;yet;yield;you;young;your;yours;yourself;youth;zone', 10),
(2, 'như;tôi;mình;mà;ông;là;cho;trên;là;với;họ;được;tại;một;có;này;từ;bởi;nóng;từ;nhưng;những gì;một số;là;nó;anh;hoặc;có;các;của;để;và;một;trong;chúng tôi;có thể;ra;khác;là;mà;làm;của họ;thời gian;nếu;sẽ;như thế nào;nói;một;môi;nói;không;bộ;ba;muốn;không khí;cũng;cũng;chơi;nhỏ;cuối;đặt;nhà;đọc;tay;cổng;lớn;chính tả;thêm;thậm chí;đất;ở đây;phải;lớn;cao;như vậy;theo;hành động;lý do tại sao;xin;người đàn ông;thay đổi;đi;ánh sáng;loại;tắt;cần;nhà;hình ảnh;thử;chúng tôi;một lần nữa;động vật;điểm;mẹ;thế giới;gần;xây dựng;tự;đất;cha;bất kỳ;mới;công việc;một phần;có;được;nơi;thực hiện;sống;nơi;sau khi;trở lại;ít;chỉ;chung quanh;người đàn ông;năm;đến;chương trình;mỗi;tốt;tôi;cung cấp cho;của chúng tôi;dưới;tên;rất;thông qua;chỉ;hình thức;câu;tuyệt vời;nghi;nói;giúp;thấp;dòng;khác nhau;lần lượt;nguyên nhân;nhiều;có nghĩa là;trước;di chuyển;ngay;cậu bé;cũ;quá;như nhau;cô;tất cả;có;khi;lên;sử dụng;của bạn;cách;về;nhiều;sau đó;họ;viết;sẽ;như;để;các;cô;lâu;làm;điều;thấy;anh;hai;có;xem;hơn;ngày;có thể;đi;đến;đã làm;số;âm thanh;không có;nhất;nhân dân;của tôi;hơn;biết;nước;hơn;gọi;đầu tiên;người;có thể;xuống;bên;được;bây giờ;tìm;đầu;đứng;riêng;trang;nên;nước;tìm thấy;câu trả lời;trường;phát triển;nghiên cứu;vẫn;học;nhà máy;bìa;thực phẩm;ánh nắng mặt trời;bốn;giữa;nhà nước;giữ;mắt;không bao giờ;cuối cùng;cho phép;nghĩ;thành phố;cây;qua;trang trại;cứng;bắt đầu;might;câu chuyện;cưa;đến nay;biển;vẽ;còn lại;cuối;chạy;không;trong khi;báo chí;gần;đêm;thực;cuộc sống;số;phía bắc;cuốn sách;thực hiện;mất;khoa học;ăn;phòng;người bạn;bắt đầu;ý tưởng;cá;núi;ngăn chặn;một lần;cơ sở;nghe;ngựa;cắt;chắc chắn;xem;màu;khuôn mặt;gỗ;chính;mở;dường như;cùng;tiếp theo;trắng;trẻ em;bắt đầu;có;đi bộ;Ví dụ;giảm bớt;giấy;nhóm;luôn luôn;nhạc;những;cả hai;đánh dấu;thường;thư;cho đến khi;dặm;sông;xe;chân;chăm sóc;thứ hai;đủ;đồng bằng;cô gái;thông thường;trẻ;sẵn sàng;trên đây;bao giờ;màu đỏ;danh sách;mặc dù;cảm thấy;nói chuyện;chim;sớm;cơ thể;con chó;gia đình;trực tiếp;đặt ra;lại;bài hát;đo lường;cửa;sản phẩm;đen;ngắn;chữ số;lớp;gió;câu hỏi;xảy ra;hoàn thành;tàu;khu vực;một nửa;đá;để;lửa;nam;vấn đề;mảnh;nói;biết;vượt qua;từ;đầu;toàn bộ;vua;đường phố;inch;nhân;không có gì;Tất nhiên;ở lại;bánh xe;đầy đủ;lực;màu xanh;đối tượng;quyết định;bề mặt;sâu;mặt trăng;đảo;chân;hệ thống;bận rộn;kiểm tra;ghi;thuyền;phổ biến;vàng;có thể;máy bay;thay;khô;tự hỏi;cười;ngàn;trước;ran;kiểm tra;trò chơi;hình dạng;đánh đồng;nóng;bỏ lỡ;mang;nhiệt;tuyết;lốp xe;mang lại;vâng;xa;điền;đông;sơn;ngôn ngữ;trong;đơn vị;điện;thị trấn;tốt;nhất định;bay;giảm;dẫn;kêu;tối;máy;ghi;đợi;kế hoạch;con số;sao;hộp;danh từ;lĩnh vực;phần còn lại;chính xác;thể;bảng;Xong;vẻ đẹp;ổ đĩa;đứng;chứa;trước;dạy;tuần;thức;đã;màu xanh lá cây;oh;nhanh chóng;phát triển;đại dương;ấm áp;miễn phí;phút;mạnh mẽ;đặc biệt;tâm;sau;trong;đuôi;sản xuất;thực tế;không gian;nghe;tốt nhất;giờ;tốt hơn;đúng;trong khi;trăm;năm;nhớ;bước;đầu;giư;tây;mặt đất;quan tâm;đạt;nhanh chóng;động từ;hát;lắng nghe;sáu;bảng;du lịch;ít;buổi sáng;mười;đơn giản;nhiều;nguyên âm;hướng;chiến tranh;đặt;chống lại;mô hình;chậm;trung tâm;tình yêu;người;tiền;phục vụ;xuất hiện;đường;Bản đồ;mưa;quy tắc;phối;kéo;lạnh;thông báo;giọng nói;năng lượng;săn;có thể xảy ra;giường;anh trai;trứng;đi xe;pin;tin;có lẽ;chọn;đột ngột;tính;vuông;lý do;chiều dài;đại diện;nghệ thuật;Tiêu đề;khu;kích thước;khác nhau;giải quyết;nói;trọng lượng;chung;băng;vấn đề;vòng tròn;đôi;bao gồm;chia;âm tiết;cảm thấy;lớn;bóng;nhưng;sóng;rơi;tim;là;hiện nay;nặng;khiêu vũ;động cơ;vị trí;cánh tay;rộng;buồm;tài liệu;phần;rừng;ngồi;cuộc đua;cửa sổ;cửa hàng;mùa hè;đào tạo;ngủ;chứng minh;đơn độc;chân;tập thể dục;tường;bắt;mount;muốn;bầu trời;hội đồng quản trị;niềm vui;mùa đông;ngồi;bằng văn bản;hoang dã;cụ;giữ;kính;cỏ;bò;công việc;cạnh;dấu hiệu;lần;qua;mềm;vui vẻ;sáng;khí;thời tiết;tháng;triệu;chịu;kết thúc;hạnh phúc;hy vọng;hoa;mặc;lạ;ra đi;thương mại;giai điệu;chuyến đi;văn phòng;nhận;hàng;miệng;chính xác;biểu tượng;chết;nhất;rắc rối;hét lên;trừ;đã viết;hạt giống;giai điệu;tham gia;đề nghị;sạch;nghỉ;phụ nữ;sân;tăng;xấu;đòn;dầu;máu;chạm;tăng;phần trăm;trộn;đội;dây;chi phí;thua;nâu;mặc;vườn;như nhau;gửi;chọn;giảm;phù hợp với;chảy;công bằng;ngân hàng;thu thập;lưu;kiểm soát;số thập phân;tai;khác;khá;đã phá vỡ;khi;trung;giết;con trai;hồ;thời điểm;quy mô;lớn;mùa xuân;quan sát;con;thẳng;phụ âm;quốc gia;từ điển;sưa;tốc độ;phương pháp;cơ quan;trả;tuổi;phần;váy;điện toán đám mây;bất ngờ;yên tĩnh;đá;nhỏ;lên cao;mát mẻ;thiết kế;người nghèo;rất nhiều;thí nghiệm;dưới;chính;sắt;đơn;thanh;phẳng;hai mươi;da;nụ cười;nếp;lỗ;nhảy;bé;tám;làng;đáp ứng;gốc;mua;nâng cao;giải quyết;kim loại;liệu;đẩy;bảy;đoạn;thứ ba;có trách nhiệm;được tổ chức;lông;mô tả;nấu ăn;sàn;hoặc;kết quả;ghi;đồi;an toàn;mèo;thế kỷ;xem xét;loại;pháp luật;bit;bờ biển;bản sao;cụm từ;im lặng;cao;cát;đất;cuộn;nhiệt độ;ngón tay;ngành công nghiệp;giá trị;cuộc chiến;lời nói dối;đánh bại;kích thích;tự nhiên;xem;ý nghĩa;vốn;sẽ không;ghế;nguy hiểm;trái cây;giàu;dày;người lính;quá trình;hoạt động;thực hành;riêng biệt;khó khăn;bác sĩ;xin vui lòng;bảo vệ;trưa;cây trồng;hiện đại;yếu tố;nhấn;sinh viên;góc;bên;cung cấp;có;xác định vị trí;vòng;nhân vật;côn trùng;bắt;thời gian;chỉ ra;radio;nói;nguyên tử;con người;lịch sử;hiệu lực;điện;mong đợi;xương;đường sắt;tưởng tượng;cho;đồng ý;do đó;nhẹ nhàng;người phụ nữ;đội trưởng;đoán;cần thiết;sắc nét;cánh;tạo;hàng xóm;rửa;bat;thay;đám đông;ngô;so sánh;bài thơ;chuỗi;chuông;phụ thuộc;thịt;chà;ống;nổi tiếng;đồng đô la;sông;sợ hãi;cảnh;mỏng;tam giác;hành tinh;nhanh;trưởng;thuộc địa;đồng hồ;tôi;cà vạt;nhập;chính;tươi;tìm kiếm;gửi;vàng;súng;cho phép;in;chết;tại chỗ;sa mạc;phù hợp với;hiện tại;thang máy;tăng;đến;chủ;theo dõi;mẹ;bờ;phân chia;tờ;chất;ủng hộ;kết nối;bài;chi tiêu;hợp âm;chất béo;vui;ban đầu;chia sẻ;trạm;cha;bánh mì;phí;thích hợp;thanh;phục vụ;phân khúc;nô lệ;vịt;ngay lập tức;thị trường;mức độ;cư;gà;thân yêu;kẻ thù;trả lời;ly;xảy ra;hỗ trợ;bài phát biểu;thiên nhiên;phạm vi;hơi nước;chuyển động;con đường;chất lỏng;đăng nhập;có nghĩa là;thương;răng;vỏ;cổ;oxy;đường;chết;khá;kỹ năng;phụ nữ;mùa;giải pháp;nam châm;bạc;cảm ơn;chi nhánh;trận đấu;hậu tố;đặc biệt là;sung;sợ;to;em gái;thép;thảo luận;về phía trước;tương tự;hướng dẫn;kinh nghiệm;điểm;táo;mua;dẫn;sân;áo;khối lượng;thẻ;ban nhạc;dây;trượt;giành chiến thắng;mơ;buổi tối;điều kiện;thức ăn chăn nuôi;công cụ;tổng số;cơ bản;mùi;thung lũng;cũng không;đôi;ghế;tiếp tục;khối;biểu đồ;mũ;bán;thành công;công ty;trừ;sự kiện;riêng;thỏa thuận;bơi;hạn;ngược lại;vợ;giày;vai;lây lan;sắp xếp;trại;phát minh;bông;Sinh;xác định;lít;chín;xe tải;tiếng ồn;mức;cơ hội;thu thập;cửa hàng;căng ra;ném;tỏa sáng;tài sản;cột;phân tử;chọn;sai;màu xám;lặp lại;yêu cầu;rộng;chuẩn bị;muối;mui;số nhiều;tức giận;xin;lục', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `learningnumberday`
--

CREATE TABLE `learningnumberday` (
  `LND_Id` int(11) NOT NULL,
  `LND_numberOfDay` int(11) NOT NULL,
  `LND_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `learningnumberday`
--

INSERT INTO `learningnumberday` (`LND_Id`, `LND_numberOfDay`, `LND_Name`) VALUES
(1, 2, 'Học trong vòng 2 ngày'),
(2, 3, 'Học trong vòng 3 ngày'),
(3, 5, 'Học trong vòng 5 ngày'),
(4, 7, 'Học trong vòng 7 ngày'),
(5, 9, 'Học trong vòng 9 ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `S_Id` int(11) NOT NULL,
  `S_userName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_passWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_Value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `session`
--

INSERT INTO `session` (`S_Id`, `S_userName`, `S_passWord`, `S_Value`) VALUES
(1, 'phongt1223', '123123132132', 'fErlV5NNdwn-B4m5u2nibQpL0xDuhpu1'),
(2, 'phongt1223', '123123132132', 'wqQsW3CpdRE73zFLThTj3n17jSkrNth9'),
(3, 'phongt1223', '123123132132', 'hAiEZrGE7olyOavTv2GiigcSPVPxpNlb'),
(4, 'phongt1223', '123123132132', 'LGXrSq5bL5LvVo745v7qKpQpGTYWrDbs'),
(5, 'phongt1223', '123123132132', 'O0nX4jzfR9-YajoDLyk2QClO4Ze51zrW'),
(6, 'phongt1223', '123123132132', 'O0nX4jzfR9-YajoDLyk2QClO4Ze51zrW'),
(7, 'tranthanhphong050999@gmail.com', 'U2FsdGVkX18bA303nGHSMdOiW+V3bQSWJTHy31E+FCI=', 'i_dcb8idPHSq4bFuot4Sg_FiKagC4974'),
(8, 'tranthanhphong050999@gmail.com', 'U2FsdGVkX18bA303nGHSMdOiW+V3bQSWJTHy31E+FCI=', 'i_dcb8idPHSq4bFuot4Sg_FiKagC4974'),
(9, 'tranthanhphong050999@gmail.com', 'U2FsdGVkX18bA303nGHSMdOiW+V3bQSWJTHy31E+FCI=', '7r1muRF0NtN28cfmmVZ0-J078wSTID2T'),
(10, 'tranthanhphong0509@gmail.com', 'U2FsdGVkX18TzuEw+yQg1+8VYnPV9v1cJ8Q+J8HyE7M=', '7r1muRF0NtN28cfmmVZ0-J078wSTID2T'),
(11, 'tranthanhphong05@gmail.com', 'U2FsdGVkX1+PPNFUWDz8wnCcAFyMzBilt5FUp6Ko1RI=', 'Qq73EqtVfk3hi2pb63BVm5yNcKU0cZ31'),
(12, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'kUcwrLmZRKJywnipP0bUlQPOmMI9FG_L'),
(13, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'aY9qFSix5MHzWgZkg6vbQIvLJXLDdMK3'),
(14, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'QeJRTMTD7yAMjHX3l14zK3EFsvhXcZZx'),
(15, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'QeJRTMTD7yAMjHX3l14zK3EFsvhXcZZx'),
(16, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', '76BOVKBrsPfnqR-IGDqc0cEyYg_fBT1p'),
(17, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', 'u0rlagZzthsK_0cy7T3Ae0BlvEjJ8HBA'),
(18, 'tranthanhphong05@gmail.com', 'ac0ddb993625d6a8c888df710ee3da85', '6Idnl7GK87wnQy7_Py7MGTVt0CENXiEX');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word`
--

CREATE TABLE `word` (
  `W_Id` int(11) NOT NULL,
  `W_originalWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_translatedWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_Phrase` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_phraseMean` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_Avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_learnTimes` int(11) NOT NULL,
  `W_dateCreated` date NOT NULL,
  `W_Degree` int(11) NOT NULL,
  `W_linkPost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_idWordBook` int(11) NOT NULL,
  `W_idLearningNumberDay` int(11) NOT NULL,
  `W_idCustomDegree` int(11) NOT NULL,
  `W_idState` int(11) NOT NULL,
  `W_wrongTimes` int(11) NOT NULL DEFAULT '0',
  `W_idCatalogStored` int(11) NOT NULL,
  `W_ipaWord` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `W_typeOfWord` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `word`
--

INSERT INTO `word` (`W_Id`, `W_originalWord`, `W_translatedWord`, `W_Phrase`, `W_phraseMean`, `W_Avatar`, `W_learnTimes`, `W_dateCreated`, `W_Degree`, `W_linkPost`, `W_idWordBook`, `W_idLearningNumberDay`, `W_idCustomDegree`, `W_idState`, `W_wrongTimes`, `W_idCatalogStored`, `W_ipaWord`, `W_typeOfWord`) VALUES
(6, '', '', '', '', '', 0, '0000-00-00', 0, '', 0, 0, 0, 4, 0, 0, '', ''),
(7, 'Good', 'Tốt', 'Let’s go on a picnic tomorrow if the weather’s good', 'Hãy đi dã ngoại vào ngày mai nếu thời tiết tốt', 'good.png', 7, '2021-04-17', 2, 'https://dictionary.cambridge.org/vi/dictionary/english/good', 2, 2, 2, 4, 0, 1, '', ''),
(8, 'Stupid', 'Ngốc nghếch', 'I just made another stupid mistake.', 'Tôi vừa phạm một sai lầm ngốc nghếch', 'stupid.png', 5, '2021-04-01', 3, 'https://dictionary.cambridge.org/vi/dictionary/english/stupid', 4, 2, 1, 0, 0, 1, '', ''),
(9, 'Couple', 'Cặp đôi', 'We’re having two couples over for dinner', 'Chúng tôi có hai cặp đôi đến ăn tối', 'couple.png', 10, '2021-04-26', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(10, 'Cat', 'Con mèo', 'the cat family', 'Gia đình mèo', 'Cat.png', 5, '2021-04-26', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(11, 'celebrity', 'Người nổi tiếng', 'Hollywood celebrities turned up at Laguna Beach.', 'Người nổi tiếng Hollywood xuất hiện tại bãi biển laguna', 'celebrity.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(12, 'picture', 'Hình ảnh', 'It’s an old set, and the picture is a little fuzzy', 'Đó là một bộ cũ và hình ảnh hơi mờ', 'picture.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(13, 'around', 'Xung quanh', 'We drove around town for a while, looking for a place to park.', 'Chúng tôi lái xe quanh thị trấn một lúc,tìm chỗ đậu', 'around.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(15, 'left', 'bên trái', 'He injured his left eye', 'anh bị thương ở mắt trái', 'left.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(16, 'letter', 'lá thư', 'I got a letter from the bank this morning.', 'Tôi nhận được một lá thư từ ngân hàng sáng nay', 'letter', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 1, '', ''),
(17, 'never', 'không bao giờ', 'He was never seen again', 'anh ấy đã không bao giờ được nhìn thấy nữa', 'never.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(18, 'start', 'bắt đầu', ' When do you start your new job?', 'Khi nào bạn bắt đầu công việc mới', 'start.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(19, 'afraid', 'sợ', 'She was afraid, but never thought of quitting.', 'Cô sợ, nhưng chưa bao giờ nghĩ đến việc bỏ nghề', 'start.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(20, 'truth', 'sự thật', 'Tell the truth, now, how did the chair get broken?', 'Nói thật đi, bây giờ làm sao mà chiếc ghế bị gãy', 'truth.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(21, 'know', 'Biết', 'Do you know the answer?', 'Bạn có biết câu trả lời không?', 'know.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(22, 'drink', 'Uống', 'She drinks a glass of orange juice every morning.', 'Cô ấy uống một ly nước cam vào mỗi buổi sáng', 'drink.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(23, 'party', 'Buổi tiệc', 'Sally is having a party at her place tonight.', 'Sally sẽ có một buổi tiệc tại chỗ của cô ấy tối nay', 'party.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 2, '', ''),
(24, 'many', 'Nhiều', 'Many people bought tickets for the concert.', 'Nhiều người đã mua vé xem buổi biểu diễn', 'many.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 4, '', ''),
(25, 'Please', 'Xin vui lòng', 'Please, David, put the knife down', 'làm ơn, David, bỏ con dao xuốn', 'Please', 5, '2021-04-20', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 4, '', ''),
(26, ' face', 'khuôn mặt', 'We climbed the north face of Mount Washington.', 'Chúng tôi leo lên mặt bắc của núi Washington', 'face', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 5, '', ''),
(27, ' give', 'cho', 'We’re collecting for the Red Cross – please give what you can.', 'Chúng tôi đang quyên góp cho hội chữ thập đỏ - vui lòng cung cấp những gì bạn có thể', 'give.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, '', ''),
(28, ' hobby', 'sở thích', 'Sonya’s hobbies include traveling, sailing, and reading fiction.', 'sở thích của sonya bao gồm đi du lịch, chèo thuyền và đọc tiểu thuyết', 'hobby.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, '', ''),
(29, 'little', 'ít', 'They have very little money', 'họ có rất ít tiền', 'little.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 4, 0, 3, '', ''),
(30, 'feel', 'cảm thất', 'She said she didn’t want anyone to feel sorry for her.', 'cô ấy nói rằng cô ấy không muốn bất cứ ai cảm thấy có lỗi với mình', 'feel.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 6, 0, 3, '', ''),
(31, 'young', 'trẻ', 'Young children should not be left alone at home.', 'không nên để trẻ nhỏ ở nhà một mình', 'young.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, '', ''),
(32, 'story', 'câu chuyện', 'My daughter won’t go to bed without hearing a bedtime story.', 'con gái tôi sẽ không ngủ nếu không nghe một câu chuyện trước khi đi ngủ', 'story.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, '', ''),
(33, 'like', 'thích, giống', 'I like your new haircut.', 'tôi thích kiểu tóc mới của bạn', 'like.png', 5, '2021-04-19', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, '', ''),
(34, 'like', 'thích, giống', 'I like your new haircut.', 'tôi thích kiểu tóc mới của bạn', 'like.png', 5, '2021-04-22', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, 'a', 'a'),
(35, 'likebcabbc', 'thích, giống', 'I like your new haircut.', 'tôi thích kiểu tóc mới của bạn', 'like.png', 5, '2021-04-22', 1, 'https://stepup.edu.vn/blog/bai-doc-tieng-anh/', 8, 5, 3, 1, 0, 3, 'a', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordbook`
--

CREATE TABLE `wordbook` (
  `WB_Id` int(11) NOT NULL,
  `WB_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `WB_idAccount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wordbook`
--

INSERT INTO `wordbook` (`WB_Id`, `WB_Name`, `WB_idAccount`) VALUES
(2, 'Gia Đình', 8),
(3, 'Đời sống', 10),
(4, 'Xã hội', 8),
(5, 'Hàng ngày', 12),
(6, 'Hàng ngày', 17),
(7, 'Hàng ngày', 18),
(8, 'Hàng ngày', 19),
(9, 'Hàng ngày', 20),
(10, 'abandon\r\nability\r\nable\r\nabortion\r\nabout\r\nabove\r\nabroad\r\nabsence\r\nabsolute\r\nabsolutely\r\nabsorb\r\nabuse\r\nacademic\r\naccept\r\naccess\r\naccident\r\naccompany\r\naccomplish\r\naccording\r\naccount\r\naccurate\r\naccuse\r\nachieve\r\nachievement\r\nacid\r\nacknowledge\r\nacquire\r\nacross\r\nact\r\naction\r\nactive\r\nactivist\r\nactivity\r\nactor\r\nactress\r\nactual\r\nactually\r\nad\r\nadapt\r\nadd\r\naddition\r\nadditional\r\naddress\r\nadequate\r\nadjust\r\nadjustment\r\nadministration\r\nadministrator\r\nadmire\r\nadmission\r\nadmit\r\nadolescent\r\nadopt\r\nadult\r\nadvance\r\nadvanced\r\nadvantage\r\nadventure\r\nadvertising\r\nadvice\r\nadvise\r\nadviser\r\nadvocate\r\naffair\r\naffect\r\nafford\r\nafraid\r\nAfrican\r\nAfrican-American\r\nafter\r\nafternoon\r\nagain\r\nagainst\r\nage\r\nagency\r\nagenda\r\nagent\r\naggressive\r\nago\r\nagree\r\nagreement\r\nagricultural\r\nah\r\nahead\r\naid\r\naide\r\nAIDS\r\naim\r\nair\r\naircraft\r\nairline\r\nairport\r\nalbum\r\nalcohol\r\nalive\r\nall\r\nalliance\r\nallow\r\nally\r\nalmost\r\nalone\r\nalong\r\nalready\r\nalso\r\nalter\r\nalternative\r\nalthough\r\nalways\r\nAM\r\namazing\r\nAmerican\r\namong\r\namount\r\nanalysis\r\nanalyst\r\nanalyze\r\nancient\r\nand\r\nanger\r\nangle\r\nangry\r\nanimal\r\nanniversary\r\nannounce\r\nannual\r\nanother\r\nanswer\r\nanticipate\r\nanxiety\r\nany\r\nanybody\r\nanymore\r\nanyone\r\nanything\r\nanyway\r\nanywhere\r\napart\r\napartment\r\napparent\r\napparently\r\nappeal\r\nappear\r\nappearance\r\napple\r\napplication\r\napply\r\nappoint\r\nappointment\r\nappreciate\r\napproach\r\nappropriate\r\napproval\r\napprove\r\napproximately\r\nArab\r\narchitect\r\narea\r\nargue\r\nargument\r\narise\r\narm\r\narmed\r\narmy\r\naround\r\narrange\r\narrangement\r\narrest\r\narrival\r\narrive\r\nart\r\narticle\r\nartist\r\nartistic\r\nas\r\nAsian\r\naside\r\nask\r\nasleep\r\naspect\r\nassault\r\nassert\r\nassess\r\nassessment\r\nasset\r\nassign\r\nassignment\r\nassist\r\nassistance\r\nassistant\r\nassociate\r\nassociation\r\nassume\r\nassumption\r\nassure\r\nat\r\nathlete\r\nathletic\r\natmosphere\r\nattach\r\nattack\r\nattempt\r\nattend\r\nattention\r\nattitude\r\nattorney\r\nattract\r\nattractive\r\nattribute\r\naudience\r\nauthor\r\nauthority\r\nauto\r\navailable\r\naverage\r\navoid\r\naward\r\naware\r\nawareness\r\naway\r\nawful\r\nbaby\r\nback\r\nbackground\r\nbad\r\nbadly\r\nbag\r\nbake\r\nbalance\r\nball\r\nban\r\nband\r\nbank\r\nbar\r\nbarely\r\nbarrel\r\nbarrier\r\nbase\r\nbaseball\r\nbasic\r\nbasically\r\nbasis\r\nbasket\r\nbasketball\r\nbathroom\r\nbattery\r\nbattle\r\nbe\r\nbeach\r\nbean\r\nbear\r\nbeat\r\nbeautiful\r\nbeauty\r\nbecause\r\nbecome\r\nbed\r\nbedroom\r\nbeer\r\nbefore\r\nbegin\r\nbeginning\r\nbehavior\r\nbehind\r\nbeing\r\nbelief\r\nbelieve\r\nbell\r\nbelong\r\nbelow\r\nbelt\r\nbench\r\nbend\r\nbeneath\r\nbenefit\r\nbeside\r\nbesides\r\nbest\r\nbet\r\nbetter\r\nbetween\r\nbeyond\r\nBible\r\nbig\r\nbike\r\nbill\r\nbillion\r\nbind\r\nbiological\r\nbird\r\nbirth\r\nbirthday\r\nbit\r\nbite\r\nblack\r\nblade\r\nblame\r\nblanket\r\nblind\r\nblock\r\nblood\r\nblow\r\nblue\r\nboard\r\nboat\r\nbody\r\nbomb\r\nbombing\r\nbond\r\nbone\r\nbook\r\nboom\r\nboot\r\nborder\r\nborn\r\nborrow\r\nboss\r\nboth\r\nbother\r\nbottle\r\nbottom\r\nboundary\r\nbowl\r\nbox\r\nboy\r\nboyfriend\r\nbrain\r\nbranch\r\nbrand\r\nbread\r\nbreak\r\nbreakfast\r\nbreast\r\nbreath\r\nbreathe\r\nbrick\r\nbridge\r\nbrief\r\nbriefly\r\nbright\r\nbrilliant\r\nbring\r\nBritish\r\nbroad\r\nbroken\r\nbrother\r\nbrown\r\nbrush\r\nbuck\r\nbudget\r\nbuild\r\nbuilding\r\nbullet\r\nbunch\r\nburden\r\nburn\r\nbury\r\nbus\r\nbusiness\r\nbusy\r\nbut\r\nbutter\r\nbutton\r\nbuy\r\nbuyer\r\nby\r\ncabin\r\ncabinet\r\ncable\r\ncake\r\ncalculate\r\ncall\r\ncamera\r\ncamp\r\ncampaign\r\ncampus\r\ncan\r\nCanadian\r\ncancer\r\ncandidate\r\ncap\r\ncapability\r\ncapable\r\ncapacity\r\ncapital\r\ncaptain\r\ncapture\r\ncar\r\ncarbon\r\ncard\r\ncare\r\ncareer\r\ncareful\r\ncarefully\r\ncarrier\r\ncarry\r\ncase\r\ncash\r\ncast\r\ncat\r\ncatch\r\ncategory\r\nCatholic\r\ncause\r\nceiling\r\ncelebrate\r\ncelebration\r\ncelebrity\r\ncell\r\ncenter\r\ncentral\r\ncentury\r\nCEO\r\nceremony\r\ncertain\r\ncertainly\r\nchain\r\nchair\r\nchairman\r\nchallenge\r\nchamber\r\nchampion\r\nchampionship\r\nchance\r\nchange\r\nchanging\r\nchannel\r\nchapter\r\ncharacter\r\ncharacteristic\r\ncharacterize\r\ncharge\r\ncharity\r\nchart\r\nchase\r\ncheap\r\ncheck\r\ncheek\r\ncheese\r\nchef\r\nchemical\r\nchest\r\nchicken\r\nchief\r\nchild\r\nchildhood\r\nChinese\r\nchip\r\nchocolate\r\nchoice\r\ncholesterol\r\nchoose\r\nChristian\r\nChristmas\r\nchurch\r\ncigarette\r\ncircle\r\ncircumstance\r\ncite\r\ncitizen\r\ncity\r\ncivil\r\ncivilian\r\nclaim\r\nclass\r\nclassic\r\nclassroom\r\nclean\r\nclear\r\nclearly\r\nclient\r\nclimate\r\nclimb\r\nclinic\r\nclinical\r\nclock\r\nclose\r\nclosely\r\ncloser\r\nclothes\r\nclothing\r\ncloud\r\nclub\r\nclue\r\ncluster\r\ncoach\r\ncoal\r\ncoalition\r\ncoast\r\ncoat\r\ncode\r\ncoffee\r\ncognitive\r\ncold\r\ncollapse\r\ncolleague\r\ncollect\r\ncollection\r\ncollective\r\ncollege\r\ncolonial\r\ncolor\r\ncolumn\r\ncombination\r\ncombine\r\ncome\r\ncomedy\r\ncomfort\r\ncomfortable\r\ncommand\r\ncommander\r\ncomment\r\ncommercial\r\ncommission\r\ncommit\r\ncommitment\r\ncommittee\r\ncommon\r\ncommunicate\r\ncommunication\r\ncommunity\r\ncompany\r\ncompare\r\ncomparison\r\ncompete\r\ncompetition\r\ncompetitive\r\ncompetitor\r\ncomplain\r\ncomplaint\r\ncomplete\r\ncompletely\r\ncomplex\r\ncomplicated\r\ncomponent\r\ncompose\r\ncomposition\r\ncomprehensive\r\ncomputer\r\nconcentrate\r\nconcentration\r\nconcept\r\nconcern\r\nconcerned\r\nconcert\r\nconclude\r\nconclusion\r\nconcrete\r\ncondition\r\nconduct\r\nconference\r\nconfidence\r\nconfident\r\nconfirm\r\nconflict\r\nconfront\r\nconfusion\r\nCongress\r\ncongressional\r\nconnect\r\nconnection\r\nconsciousness\r\nconsensus\r\nconsequence\r\nconservative\r\nconsider\r\nconsiderable\r\nconsideration\r\nconsist\r\nconsistent\r\nconstant\r\nconstantly\r\nconstitute\r\nconstitutional\r\nconstruct\r\nconstruction\r\nconsultant\r\nconsume\r\nconsumer\r\nconsumption\r\ncontact\r\ncontain\r\ncontainer\r\ncontemporary\r\ncontent\r\ncontest\r\ncontext\r\ncontinue\r\ncontinued\r\ncontract\r\ncontrast\r\ncontribute\r\ncontribution\r\ncontrol\r\ncontroversial\r\ncontroversy\r\nconvention\r\nconventional\r\nconversation\r\nconvert\r\nconviction\r\nconvince\r\ncook\r\ncookie\r\ncooking\r\ncool\r\ncooperation\r\ncop\r\ncope\r\ncopy\r\ncore\r\ncorn\r\ncorner\r\ncorporate\r\ncorporation\r\ncorrect\r\ncorrespondent\r\ncost\r\ncotton\r\ncouch\r\ncould\r\ncouncil\r\ncounselor\r\ncount\r\ncounter\r\ncountry\r\ncounty\r\ncouple\r\ncourage\r\ncourse\r\ncourt\r\ncousin\r\ncover\r\ncoverage\r\ncow\r\ncrack\r\ncraft\r\ncrash\r\ncrazy\r\ncream\r\ncreate\r\ncreation\r\ncreative\r\ncreature\r\ncredit\r\ncrew\r\ncrime\r\ncriminal\r\ncrisis\r\ncriteria\r\ncritic\r\ncritical\r\ncriticism\r\ncriticize\r\ncrop\r\ncross\r\ncrowd\r\ncrucial\r\ncry\r\ncultural\r\nculture\r\ncup\r\ncurious\r\ncurrent\r\ncurrently\r\ncurriculum\r\ncustom\r\ncustomer\r\ncut\r\ncycle\r\ndad\r\ndaily\r\ndamage\r\ndance\r\ndanger\r\ndangerous\r\ndare\r\ndark\r\ndarkness\r\ndata\r\ndate\r\ndaughter\r\nday\r\ndead\r\ndeal\r\ndealer\r\ndear\r\ndeath\r\ndebate\r\ndebt\r\ndecade\r\ndecide\r\ndecision\r\ndeck\r\ndeclare\r\ndecline\r\ndecrease\r\ndeep\r\ndeeply\r\ndeer\r\ndefeat\r\ndefend\r\ndefendant\r\ndefense\r\ndefensive\r\ndeficit\r\ndefine\r\ndefinitely\r\ndefinition\r\ndegree\r\ndelay\r\ndeliver\r\ndelivery\r\ndemand\r\ndemocracy\r\nDemocrat\r\ndemocratic\r\ndemonstrate\r\ndemonstration\r\ndeny\r\ndepartment\r\ndepend\r\ndependent\r\ndepending\r\ndepict\r\ndepression\r\ndepth\r\ndeputy\r\nderive\r\ndescribe\r\ndescription\r\ndesert\r\ndeserve\r\ndesign\r\ndesigner\r\ndesire\r\ndesk\r\ndesperate\r\ndespite\r\ndestroy\r\ndestruction\r\ndetail\r\ndetailed\r\ndetect\r\ndetermine\r\ndevelop\r\ndeveloping\r\ndevelopment\r\ndevice\r\ndevote\r\ndialogue\r\ndie\r\ndiet\r\ndiffer\r\ndifference\r\ndifferent\r\ndifferently\r\ndifficult\r\ndifficulty\r\ndig\r\ndigital\r\ndimension\r\ndining\r\ndinner\r\ndirect\r\ndirection\r\ndirectly\r\ndirector\r\ndirt\r\ndirty\r\ndisability\r\ndisagree\r\ndisappear\r\ndisaster\r\ndiscipline\r\ndiscourse\r\ndiscover\r\ndiscovery\r\ndiscrimination\r\ndiscuss\r\ndiscussion\r\ndisease\r\ndish\r\ndismiss\r\ndisorder\r\ndisplay\r\ndispute\r\ndistance\r\ndistant\r\ndistinct\r\ndistinction\r\ndistinguish\r\ndistribute\r\ndistribution\r\ndistrict\r\ndiverse\r\ndiversity\r\ndivide\r\ndivision\r\ndivorce\r\nDNA\r\ndo\r\ndoctor\r\ndocument\r\ndog\r\ndomestic\r\ndominant\r\ndominate\r\ndoor\r\ndouble\r\ndoubt\r\ndown\r\ndowntown\r\ndozen\r\ndraft\r\ndrag\r\ndrama\r\ndramatic\r\ndramatically\r\ndraw\r\ndrawing\r\ndream\r\ndress\r\ndrink\r\ndrive\r\ndriver\r\ndrop\r\ndrug\r\ndry\r\ndue\r\nduring\r\ndust\r\nduty\r\neach\r\neager\r\near\r\nearly\r\nearn\r\nearnings\r\nearth\r\nease\r\neasily\r\neast\r\neastern\r\neasy\r\neat\r\neconomic\r\neconomics\r\neconomist\r\neconomy\r\nedge\r\nedition\r\neditor\r\neducate\r\neducation\r\neducational\r\neducator\r\neffect\r\neffective\r\neffectively\r\nefficiency\r\nefficient\r\neffort\r\negg\r\neight\r\neither\r\nelderly\r\nelect\r\nelection\r\nelectric\r\nelectricity\r\nelectronic\r\nelement\r\nelementary\r\neliminate\r\nelite\r\nelse\r\nelsewhere\r\ne-mail\r\nembrace\r\nemerge\r\nemergency\r\nemission\r\nemotion\r\nemotional\r\nemphasis\r\nemphasize\r\nemploy\r\nemployee\r\nemployer\r\nemployment\r\nempty\r\nenable\r\nencounter\r\nencourage\r\nend\r\nenemy\r\nenergy\r\nenforcement\r\nengage\r\nengine\r\nengineer\r\nengineering\r\nEnglish\r\nenhance\r\nenjoy\r\nenormous\r\nenough\r\nensure\r\nenter\r\nenterprise\r\nentertainment\r\nentire\r\nentirely\r\nentrance\r\nentry\r\nenvironment\r\nenvironmental\r\nepisode\r\nequal\r\nequally\r\nequipment\r\nera\r\nerror\r\nescape\r\nespecially\r\nessay\r\nessential\r\nessentially\r\nestablish\r\nestablishment\r\nestate\r\nestimate\r\netc\r\nethics\r\nethnic\r\nEuropean\r\nevaluate\r\nevaluation\r\neven\r\nevening\r\nevent\r\neventually\r\never\r\nevery\r\neverybody\r\neveryday\r\neveryone\r\neverything\r\neverywhere\r\nevidence\r\nevolution\r\nevolve\r\nexact\r\nexactly\r\nexamination\r\nexamine\r\nexample\r\nexceed\r\nexcellent\r\nexcept\r\nexception\r\nexchange\r\nexciting\r\nexecutive\r\nexercise\r\nexhibit\r\nexhibition\r\nexist\r\nexistence\r\nexisting\r\nexpand\r\nexpansion\r\nexpect\r\nexpectation\r\nexpense\r\nexpensive\r\nexperience\r\nexperiment\r\nexpert\r\nexplain\r\nexplanation\r\nexplode\r\nexplore\r\nexplosion\r\nexpose\r\nexposure\r\nexpress\r\nexpression\r\nextend\r\nextension\r\nextensive\r\nextent\r\nexternal\r\nextra\r\nextraordinary\r\nextreme\r\nextremely\r\neye\r\nfabric\r\nface\r\nfacility\r\nfact\r\nfactor\r\nfactory\r\nfaculty\r\nfade\r\nfail\r\nfailure\r\nfair\r\nfairly\r\nfaith\r\nfall\r\nfalse\r\nfamiliar\r\nfamily\r\nfamous\r\nfan\r\nfantasy\r\nfar\r\nfarm\r\nfarmer\r\nfashion\r\nfast\r\nfat\r\nfate\r\nfather\r\nfault\r\nfavor\r\nfavorite\r\nfear\r\nfeature\r\nfederal\r\nfee\r\nfeed\r\nfeel\r\nfeeling\r\nfellow\r\nfemale\r\nfence\r\nfew\r\nfewer\r\nfiber\r\nfiction\r\nfield\r\nfifteen\r\nfifth\r\nfifty\r\nfight\r\nfighter\r\nfighting\r\nfigure\r\nfile\r\nfill\r\nfilm\r\nfinal\r\nfinally\r\nfinance\r\nfinancial\r\nfind\r\nfinding\r\nfine\r\nfinger\r\nfinish\r\nfire\r\nfirm\r\nfirst\r\nfish\r\nfishing\r\nfit\r\nfitness\r\nfive\r\nfix\r\nflag\r\nflame\r\nflat\r\nflavor\r\nflee\r\nflesh\r\nflight\r\nfloat\r\nfloor\r\nflow\r\nflower\r\nfly\r\nfocus\r\nfolk\r\nfollow\r\nfollowing\r\nfood\r\nfoot\r\nfootball\r\nfor\r\nforce\r\nforeign\r\nforest\r\nforever\r\nforget\r\nform\r\nformal\r\nformation\r\nformer\r\nformula\r\nforth\r\nfortune\r\nforward\r\nfound\r\nfoundation\r\nfounder\r\nfour\r\nfourth\r\nframe\r\nframework\r\nfree\r\nfreedom\r\nfreeze\r\nFrench\r\nfrequency\r\nfrequent\r\nfrequently\r\nfresh\r\nfriend\r\nfriendly\r\nfriendship\r\nfrom\r\nfront\r\nfruit\r\nfrustration\r\nfuel\r\nfull\r\nfully\r\nfun\r\nfunction\r\nfund\r\nfundamental\r\nfunding\r\nfuneral\r\nfunny\r\nfurniture\r\nfurthermore\r\nfuture\r\ngain\r\ngalaxy\r\ngallery\r\ngame\r\ngang\r\ngap\r\ngarage\r\ngarden\r\ngarlic\r\ngas\r\ngate\r\ngather\r\ngay\r\ngaze\r\ngear\r\ngender\r\ngene\r\ngeneral\r\ngenerally\r\ngenerate\r\ngeneration\r\ngenetic\r\ngentleman\r\ngently\r\nGerman\r\ngesture\r\nget\r\nghost\r\ngiant\r\ngift\r\ngifted\r\ngirl\r\ngirlfriend\r\ngive\r\ngiven\r\nglad\r\nglance\r\nglass\r\nglobal\r\nglove\r\ngo\r\ngoal\r\nGod\r\ngold\r\ngolden\r\ngolf\r\ngood\r\ngovernment\r\ngovernor\r\ngrab\r\ngrade\r\ngradually\r\ngraduate\r\ngrain\r\ngrand\r\ngrandfather\r\ngrandmother\r\ngrant\r\ngrass\r\ngrave\r\ngray\r\ngreat\r\ngreatest\r\ngreen\r\ngrocery\r\nground\r\ngroup\r\ngrow\r\ngrowing\r\ngrowth\r\nguarantee\r\nguard\r\nguess\r\nguest\r\nguide\r\nguideline\r\nguilty\r\ngun\r\nguy\r\nhabit\r\nhabitat\r\nhair\r\nhalf\r\nhall\r\nhand\r\nhandful\r\nhandle\r\nhang\r\nhappen\r\nhappy\r\nhard\r\nhardly\r\nhat\r\nhate\r\nhave\r\nhe\r\nhead\r\nheadline\r\nheadquarters\r\nhealth\r\nhealthy\r\nhear\r\nhearing\r\nheart\r\nheat\r\nheaven\r\nheavily\r\nheavy\r\nheel\r\nheight\r\nhelicopter\r\nhell\r\nhello\r\nhelp\r\nhelpful\r\nher\r\nhere\r\nheritage\r\nhero\r\nherself\r\nhey\r\nhi\r\nhide\r\nhigh\r\nhighlight\r\nhighly\r\nhighway\r\nhill\r\nhim\r\nhimself\r\nhip\r\nhire\r\nhis\r\nhistorian\r\nhistoric\r\nhistorical\r\nhistory\r\nhit\r\nhold\r\nhole\r\nholiday\r\nholy\r\nhome\r\nhomeless\r\nhonest\r\nhoney\r\nhonor\r\nhope\r\nhorizon\r\nhorror\r\nhorse\r\nhospital\r\nhost\r\nhot\r\nhotel\r\nhour\r\nhouse\r\nhousehold\r\nhousing\r\nhow\r\nhowever\r\nhuge\r\nhuman\r\nhumor\r\nhundred\r\nhungry\r\nhunter\r\nhunting\r\nhurt\r\nhusband\r\nhypothesis\r\nI\r\nice\r\nidea\r\nideal\r\nidentification\r\nidentify\r\nidentity\r\nie\r\nif\r\nignore\r\nill\r\nillegal\r\nillness\r\nillustrate\r\nimage\r\nimagination\r\nimagine\r\nimmediate\r\nimmediately\r\nimmigrant\r\nimmigration\r\nimpact\r\nimplement\r\nimplication\r\nimply\r\nimportance\r\nimportant\r\nimpose\r\nimpossible\r\nimpress\r\nimpression\r\nimpressive\r\nimprove\r\nimprovement\r\nin\r\nincentive\r\nincident\r\ninclude\r\nincluding\r\nincome\r\nincorporate\r\nincrease\r\nincreased\r\nincreasing\r\nincreasingly\r\nincredible\r\nindeed\r\nindependence\r\nindependent\r\nindex\r\nIndian\r\nindicate\r\nindication\r\nindividual\r\nindustrial\r\nindustry\r\ninfant\r\ninfection\r\ninflation\r\ninfluence\r\ninform\r\ninformation\r\ningredient\r\ninitial\r\ninitially\r\ninitiative\r\ninjury\r\ninner\r\ninnocent\r\ninquiry\r\ninside\r\ninsight\r\ninsist\r\ninspire\r\ninstall\r\ninstance\r\ninstead\r\ninstitution\r\ninstitutional\r\ninstruction\r\ninstructor\r\ninstrument\r\ninsurance\r\nintellectual\r\nintelligence\r\nintend\r\nintense\r\nintensity\r\nintention\r\ninteraction\r\ninterest\r\ninterested\r\ninteresting\r\ninternal\r\ninternational\r\nInternet\r\ninterpret\r\ninterpretation\r\nintervention\r\ninterview\r\ninto\r\nintroduce\r\nintroduction\r\ninvasion\r\ninvest\r\ninvestigate\r\ninvestigation\r\ninvestigator\r\ninvestment\r\ninvestor\r\ninvite\r\ninvolve\r\ninvolved\r\ninvolvement\r\nIraqi\r\nIrish\r\niron\r\nIslamic\r\nisland\r\nIsraeli\r\nissue\r\nit\r\nItalian\r\nitem\r\nits\r\nitself\r\njacket\r\njail\r\nJapanese\r\njet\r\nJew\r\nJewish\r\njob\r\njoin\r\njoint\r\njoke\r\njournal\r\njournalist\r\njourney\r\njoy\r\njudge\r\njudgment\r\njuice\r\njump\r\njunior\r\njury\r\njust\r\njustice\r\njustify\r\nkeep\r\nkey\r\nkick\r\nkid\r\nkill\r\nkiller\r\nkilling\r\nkind\r\nking\r\nkiss\r\nkitchen\r\nknee\r\nknife\r\nknock\r\nknow\r\nknowledge\r\nlab\r\nlabel\r\nlabor\r\nlaboratory\r\nlack\r\nlady\r\nlake\r\nland\r\nlandscape\r\nlanguage\r\nlap\r\nlarge\r\nlargely\r\nlast\r\nlate\r\nlater\r\nLatin\r\nlatter\r\nlaugh\r\nlaunch\r\nlaw\r\nlawn\r\nlawsuit\r\nlawyer\r\nlay\r\nlayer\r\nlead\r\nleader\r\nleadership\r\nleading\r\nleaf\r\nleague\r\nlean\r\nlearn\r\nlearning\r\nleast\r\nleather\r\nleave\r\nleft\r\nleg\r\nlegacy\r\nlegal\r\nlegend\r\nlegislation\r\nlegitimate\r\nlemon\r\nlength\r\nless\r\nlesson\r\nlet\r\nletter\r\nlevel\r\nliberal\r\nlibrary\r\nlicense\r\nlie\r\nlife\r\nlifestyle\r\nlifetime\r\nlift\r\nlight\r\nlike\r\nlikely\r\nlimit\r\nlimitation\r\nlimited\r\nline\r\nlink\r\nlip\r\nlist\r\nlisten\r\nliterally\r\nliterary\r\nliterature\r\nlittle\r\nlive\r\nliving\r\nload\r\nloan\r\nlocal\r\nlocate\r\nlocation\r\nlock\r\nlong\r\nlong-term\r\nlook\r\nloose\r\nlose\r\nloss\r\nlost\r\nlot\r\nlots\r\nloud\r\nlove\r\nlovely\r\nlover\r\nlow\r\nlower\r\nluck\r\nlucky\r\nlunch\r\nlung\r\nmachine\r\nmad\r\nmagazine\r\nmail\r\nmain\r\nmainly\r\nmaintain\r\nmaintenance\r\nmajor\r\nmajority\r\nmake\r\nmaker\r\nmakeup\r\nmale\r\nmall\r\nman\r\nmanage\r\nmanagement\r\nmanager\r\nmanner\r\nmanufacturer\r\nmanufacturing\r\nmany\r\nmap\r\nmargin\r\nmark\r\nmarket\r\nmarketing\r\nmarriage\r\nmarried\r\nmarry\r\nmask\r\nmass\r\nmassive\r\nmaster\r\nmatch\r\nmaterial\r\nmath\r\nmatter\r\nmay\r\nmaybe\r\nmayor\r\nme\r\nmeal\r\nmean\r\nmeaning\r\nmeanwhile\r\nmeasure\r\nmeasurement\r\nmeat\r\nmechanism\r\nmedia\r\nmedical\r\nmedication\r\nmedicine\r\nmedium\r\nmeet\r\nmeeting\r\nmember\r\nmembership\r\nmemory\r\nmental\r\nmention\r\nmenu\r\nmere\r\nmerely\r\nmess\r\nmessage\r\nmetal\r\nmeter\r\nmethod\r\nMexican\r\nmiddle\r\nmight\r\nmilitary\r\nmilk\r\nmillion\r\nmind\r\nmine\r\nminister\r\nminor\r\nminority\r\nminute\r\nmiracle\r\nmirror\r\nmiss\r\nmissile\r\nmission\r\nmistake\r\nmix\r\nmixture\r\nmode\r\nmodel\r\nmoderate\r\nmodern\r\nmodest\r\nmom\r\nmoment\r\nmoney\r\nmonitor\r\nmonth\r\nmood\r\nmoon\r\nmoral\r\nmore\r\nmoreover\r\nmorning\r\nmortgage\r\nmost\r\nmostly\r\nmother\r\nmotion\r\nmotivation\r\nmotor\r\nmount\r\nmountain\r\nmouse\r\nmouth\r\nmove\r\nmovement\r\nmovie\r\nMr\r\nMrs\r\nMs\r\nmuch\r\nmultiple\r\nmurder\r\nmuscle\r\nmuseum\r\nmusic\r\nmusical\r\nmusician\r\nMuslim\r\nmust\r\nmutual\r\nmy\r\nmyself\r\nmystery\r\nmyth\r\nnaked\r\nname\r\nnarrative\r\nnarrow\r\nnation\r\nnational\r\nnative\r\nnatural\r\nnaturally\r\nnature\r\nnear\r\nnearby\r\nnearly\r\nnecessarily\r\nnecessary\r\nneck\r\nneed\r\nnegative\r\nnegotiate\r\nnegotiation\r\nneighbor\r\nneighborhood\r\nneither\r\nnerve\r\nnervous\r\nnet\r\nnetwork\r\nnever\r\nnevertheless\r\nnew\r\nnewly\r\nnews\r\nnewspaper\r\nnext\r\nnice\r\nnight\r\nnine\r\nno\r\nnobody\r\nnod\r\nnoise\r\nnomination\r\nnone\r\nnonetheless\r\nnor\r\nnormal\r\nnormally\r\nnorth\r\nnorthern\r\nnose\r\nnot\r\nnote\r\nnothing\r\nnotice\r\nnotion\r\nnovel\r\nnow\r\nnowhere\r\nn\'t\r\nnuclear\r\nnumber\r\nnumerous\r\nnurse\r\nnut\r\nobject\r\nobjective\r\nobligation\r\nobservation\r\nobserve\r\nobserver\r\nobtain\r\nobvious\r\nobviously\r\noccasion\r\noccasionally\r\noccupation\r\noccupy\r\noccur\r\nocean\r\nodd\r\nodds\r\nof\r\noff\r\noffense\r\noffensive\r\noffer\r\noffice\r\nofficer\r\nofficial\r\noften\r\noh\r\noil\r\nok\r\nokay\r\nold\r\nOlympic\r\non\r\nonce\r\none\r\nongoing\r\nonion\r\nonline\r\nonly\r\nonto\r\nopen\r\nopening\r\noperate\r\noperating\r\noperation\r\noperator\r\nopinion\r\nopponent\r\nopportunity\r\noppose\r\nopposite\r\nopposition\r\noption\r\nor\r\norange\r\norder\r\nordinary\r\norganic\r\norganization\r\norganize\r\norientation\r\norigin\r\noriginal\r\noriginally\r\nother\r\nothers\r\notherwise\r\nought\r\nour\r\nourselves\r\nout\r\noutcome\r\noutside\r\noven\r\nover\r\noverall\r\novercome\r\noverlook\r\nowe\r\nown\r\nowner\r\npace\r\npack\r\npackage\r\npage\r\npain\r\npainful\r\npaint\r\npainter\r\npainting\r\npair\r\npale\r\nPalestinian\r\npalm\r\npan\r\npanel\r\npant\r\npaper\r\nparent\r\npark\r\nparking\r\npart\r\nparticipant\r\nparticipate\r\nparticipation\r\nparticular\r\nparticularly\r\npartly\r\npartner\r\npartnership\r\nparty\r\npass\r\npassage\r\npassenger\r\npassion\r\npast\r\npatch\r\npath\r\npatient\r\npattern\r\npause\r\npay\r\npayment\r\nPC\r\npeace\r\npeak\r\npeer\r\npenalty\r\npeople\r\npepper\r\nper\r\nperceive\r\npercentage\r\nperception\r\nperfect\r\nperfectly\r\nperform\r\nperformance\r\nperhaps\r\nperiod\r\npermanent\r\npermission\r\npermit\r\nperson\r\npersonal\r\npersonality\r\npersonally\r\npersonnel\r\nperspective\r\npersuade\r\npet\r\nphase\r\nphenomenon\r\nphilosophy\r\nphone\r\nphoto\r\nphotograph\r\nphotographer\r\nphrase\r\nphysical\r\nphysically\r\nphysician\r\npiano\r\npick\r\npicture\r\npie\r\npiece\r\npile\r\npilot\r\npine\r\npink\r\npipe\r\npitch\r\nplace\r\nplan\r\nplane\r\nplanet\r\nplanning\r\nplant\r\nplastic\r\nplate\r\nplatform\r\nplay\r\nplayer\r\nplease\r\npleasure\r\nplenty\r\nplot\r\nplus\r\nPM\r\npocket\r\npoem\r\npoet\r\npoetry\r\npoint\r\npole\r\npolice\r\npolicy\r\npolitical\r\npolitically\r\npolitician\r\npolitics\r\npoll\r\npollution\r\npool\r\npoor\r\npop\r\npopular\r\npopulation\r\nporch\r\nport\r\nportion\r\nportrait\r\nportray\r\npose\r\nposition\r\npositive\r\npossess\r\npossibility\r\npossible\r\npossibly\r\npost\r\npot\r\npotato\r\npotential\r\npotentially\r\npound\r\npour\r\npoverty\r\npowder\r\npower\r\npowerful\r\npractical\r\npractice\r\npray\r\nprayer\r\nprecisely\r\npredict\r\nprefer\r\npreference\r\npregnancy\r\npregnant\r\npreparation\r\nprepare\r\nprescription\r\npresence\r\npresent\r\npresentation\r\npreserve\r\npresident\r\npresidential\r\npress\r\npressure\r\npretend\r\npretty\r\nprevent\r\nprevious\r\npreviously\r\nprice\r\npride\r\npriest\r\nprimarily\r\nprimary\r\nprime\r\nprincipal\r\nprinciple\r\nprint\r\nprior\r\npriority\r\nprison\r\nprisoner\r\nprivacy\r\nprivate\r\nprobably\r\nproblem\r\nprocedure\r\nproceed\r\nprocess\r\nproduce\r\nproducer\r\nproduct\r\nproduction\r\nprofession\r\nprofessional\r\nprofessor\r\nprofile\r\nprofit\r\nprogram\r\nprogress\r\nproject\r\nprominent\r\npromise\r\npromote\r\nprompt\r\nproof\r\nproper\r\nproperly\r\nproperty\r\nproportion\r\nproposal\r\npropose\r\nproposed\r\nprosecutor\r\nprospect\r\nprotect\r\nprotection\r\nprotein\r\nprotest\r\nproud\r\nprove\r\nprovide\r\nprovider\r\nprovince\r\nprovision\r\npsychological\r\npsychologist\r\npsychology\r\npublic\r\npublication\r\npublicly\r\npublish\r\npublisher\r\npull\r\npunishment\r\npurchase\r\npure\r\npurpose\r\npursue\r\npush\r\nput\r\nqualify\r\nquality\r\nquarter\r\nquarterback\r\nquestion\r\nquick\r\nquickly\r\nquiet\r\nquietly\r\nquit\r\nquite\r\nquote\r\nrace\r\nracial\r\nradical\r\nradio\r\nrail\r\nrain\r\nraise\r\nrange\r\nrank\r\nrapid\r\nrapidly\r\nrare\r\nrarely\r\nrate\r\nrather\r\nrating\r\nratio\r\nraw\r\nreach\r\nreact\r\nreaction\r\nread\r\nreader\r\nreading\r\nready\r\nreal\r\nreality\r\nrealize\r\nreally\r\nreason\r\nreasonable\r\nrecall\r\nreceive\r\nrecent\r\nrecently\r\nrecipe\r\nrecognition\r\nrecognize\r\nrecommend\r\nrecommendation\r\nrecord\r\nrecording\r\nrecover\r\nrecovery\r\nrecruit\r\nred\r\nreduce\r\nreduction\r\nrefer\r\nreference\r\nreflect\r\nreflection\r\nreform\r\nrefugee\r\nrefuse\r\nregard\r\nregarding\r\nregardless\r\nregime\r\nregion\r\nregional\r\nregister\r\nregular\r\nregularly\r\nregulate\r\nregulation\r\nreinforce\r\nreject\r\nrelate\r\nrelation\r\nrelationship\r\nrelative\r\nrelatively\r\nrelax\r\nrelease\r\nrelevant\r\nrelief\r\nreligion\r\nreligious\r\nrely\r\nremain\r\nremaining\r\nremarkable\r\nremember\r\nremind\r\nremote\r\nremove\r\nrepeat\r\nrepeatedly\r\nreplace\r\nreply\r\nreport\r\nreporter\r\nrepresent\r\nrepresentation\r\nrepresentative\r\nRepublican\r\nreputation\r\nrequest\r\nrequire\r\nrequirement\r\nresearch\r\nresearcher\r\nresemble\r\nreservation\r\nresident\r\nresist\r\nresistance\r\nresolution\r\nresolve\r\nresort\r\nresource\r\nrespect\r\nrespond\r\nrespondent\r\nresponse\r\nresponsibility\r\nresponsible\r\nrest\r\nrestaurant\r\nrestore\r\nrestriction\r\nresult\r\nretain\r\nretire\r\nretirement\r\nreturn\r\nreveal\r\nrevenue\r\nreview\r\nrevolution\r\nrhythm\r\nrice\r\nrich\r\nrid\r\nride\r\nrifle\r\nright\r\nring\r\nrise\r\nrisk\r\nriver\r\nroad\r\nrock\r\nrole\r\nroll\r\nromantic\r\nroof\r\nroom\r\nroot\r\nrope\r\nrose\r\nrough\r\nroughly\r\nround\r\nroute\r\nroutine\r\nrow\r\nrub\r\nrule\r\nrun\r\nrunning\r\nrural\r\nrush\r\nRussian\r\nsacred\r\nsad\r\nsafe\r\nsafety\r\nsake\r\nsalad\r\nsalary\r\nsale\r\nsales\r\nsalt\r\nsame\r\nsample\r\nsanction\r\nsand\r\nsatellite\r\nsatisfaction\r\nsatisfy\r\nsauce\r\nsave\r\nsaving\r\nsay\r\nscale\r\nscandal\r\nscared\r\nscenario\r\nscene\r\nschedule\r\nscheme\r\nscholar\r\nscholarship\r\nschool\r\nscience\r\nscientific\r\nscientist\r\nscope\r\nscore\r\nscream\r\nscreen\r\nscript\r\nsea\r\nsearch\r\nseason\r\nseat\r\nsecond\r\nsecret\r\nsecretary\r\nsection\r\nsector\r\nsecure\r\nsecurity\r\nsee\r\nseed\r\nseek\r\nseem\r\nsegment\r\nseize\r\nselect\r\nselection\r\nself\r\nsell\r\nSenate\r\nsenator\r\nsend\r\nsenior\r\nsense\r\nsensitive\r\nsentence\r\nseparate\r\nsequence\r\nseries\r\nserious\r\nseriously\r\nserve\r\nservice\r\nsession\r\nset\r\nsetting\r\nsettle\r\nsettlement\r\nseven\r\nseveral\r\nsevere\r\nsex\r\nsexual\r\nshade\r\nshadow\r\nshake\r\nshall\r\nshape\r\nshare\r\nsharp\r\nshe\r\nsheet\r\nshelf\r\nshell\r\nshelter\r\nshift\r\nshine\r\nship\r\nshirt\r\nshit\r\nshock\r\nshoe\r\nshoot\r\nshooting\r\nshop\r\nshopping\r\nshore\r\nshort\r\nshortly\r\nshot\r\nshould\r\nshoulder\r\nshout\r\nshow\r\nshower\r\nshrug\r\nshut\r\nsick\r\nside\r\nsigh\r\nsight\r\nsign\r\nsignal\r\nsignificance\r\nsignificant\r\nsignificantly\r\nsilence\r\nsilent\r\nsilver\r\nsimilar\r\nsimilarly\r\nsimple\r\nsimply\r\nsin\r\nsince\r\nsing\r\nsinger\r\nsingle\r\nsink\r\nsir\r\nsister\r\nsit\r\nsite\r\nsituation\r\nsix\r\nsize\r\nski\r\nskill\r\nskin\r\nsky\r\nslave\r\nsleep\r\nslice\r\nslide\r\nslight\r\nslightly\r\nslip\r\nslow\r\nslowly\r\nsmall\r\nsmart\r\nsmell\r\nsmile\r\nsmoke\r\nsmooth\r\nsnap\r\nsnow\r\nso\r\nso-called\r\nsoccer\r\nsocial\r\nsociety\r\nsoft\r\nsoftware\r\nsoil\r\nsolar\r\nsoldier\r\nsolid\r\nsolution\r\nsolve\r\nsome\r\nsomebody\r\nsomehow\r\nsomeone\r\nsomething\r\nsometimes\r\nsomewhat\r\nsomewhere\r\nson\r\nsong\r\nsoon\r\nsophisticated\r\nsorry\r\nsort\r\nsoul\r\nsound\r\nsoup\r\nsource\r\nsouth\r\nsouthern\r\nSoviet\r\nspace\r\nSpanish\r\nspeak\r\nspeaker\r\nspecial\r\nspecialist\r\nspecies\r\nspecific\r\nspecifically\r\nspeech\r\nspeed\r\nspend\r\nspending\r\nspin\r\nspirit\r\nspiritual\r\nsplit\r\nspokesman\r\nsport\r\nspot\r\nspread\r\nspring\r\nsquare\r\nsqueeze\r\nstability\r\nstable\r\nstaff\r\nstage\r\nstair\r\nstake\r\nstand\r\nstandard\r\nstanding\r\nstar\r\nstare\r\nstart\r\nstate\r\nstatement\r\nstation\r\nstatistics\r\nstatus\r\nstay\r\nsteady\r\nsteal\r\nsteel\r\nstep\r\nstick\r\nstill\r\nstir\r\nstock\r\nstomach\r\nstone\r\nstop\r\nstorage\r\nstore\r\nstorm\r\nstory\r\nstraight\r\nstrange\r\nstranger\r\nstrategic\r\nstrategy\r\nstream\r\nstreet\r\nstrength\r\nstrengthen\r\nstress\r\nstretch\r\nstrike\r\nstring\r\nstrip\r\nstroke\r\nstrong\r\nstrongly\r\nstructure\r\nstruggle\r\nstudent\r\nstudio\r\nstudy\r\nstuff\r\nstupid\r\nstyle\r\nsubject\r\nsubmit\r\nsubsequent\r\nsubstance\r\nsubstantial\r\nsucceed\r\nsuccess\r\nsuccessful\r\nsuccessfully\r\nsuch\r\nsudden\r\nsuddenly\r\nsue\r\nsuffer\r\nsufficient\r\nsugar\r\nsuggest\r\nsuggestion\r\nsuicide\r\nsuit\r\nsummer\r\nsummit\r\nsun\r\nsuper\r\nsupply\r\nsupport\r\nsupporter\r\nsuppose\r\nsupposed\r\nSupreme\r\nsure\r\nsurely\r\nsurface\r\nsurgery\r\nsurprise\r\nsurprised\r\nsurprising\r\nsurprisingly\r\nsurround\r\nsurvey\r\nsurvival\r\nsurvive\r\nsurvivor\r\nsuspect\r\nsustain\r\nswear\r\nsweep\r\nsweet\r\nswim\r\nswing\r\nswitch\r\nsymbol\r\nsymptom\r\nsystem\r\ntable\r\ntablespoon\r\ntactic\r\ntail\r\ntake\r\ntale\r\ntalent\r\ntalk\r\ntall\r\ntank\r\ntap\r\ntape\r\ntarget\r\ntask\r\ntaste\r\ntax\r\ntaxpayer\r\ntea\r\nteach\r\nteacher\r\nteaching\r\nteam\r\ntear\r\nteaspoon\r\ntechnical\r\ntechnique\r\ntechnology\r\nteen\r\nteenager\r\ntelephone\r\ntelescope\r\ntelevision\r\ntell\r\ntemperature\r\ntemporary\r\nten\r\ntend\r\ntendency\r\ntennis\r\ntension\r\ntent\r\nterm\r\nterms\r\nterrible\r\nterritory\r\nterror\r\nterrorism\r\nterrorist\r\ntest\r\ntestify\r\ntestimony\r\ntesting\r\ntext\r\nthan\r\nthank\r\nthanks\r\nthat\r\nthe\r\ntheater\r\ntheir\r\nthem\r\ntheme\r\nthemselves\r\nthen\r\ntheory\r\ntherapy\r\nthere\r\ntherefore\r\nthese\r\nthey\r\nthick\r\nthin\r\nthing\r\nthink\r\nthinking\r\nthird\r\nthirty\r\nthis\r\nthose\r\nthough\r\nthought\r\nthousand\r\nthreat\r\nthreaten\r\nthree\r\nthroat\r\nthrough\r\nthroughout\r\nthrow\r\nthus\r\nticket\r\ntie\r\ntight\r\ntime\r\ntiny\r\ntip\r\ntire\r\ntired\r\ntissue\r\ntitle\r\nto\r\ntobacco\r\ntoday\r\ntoe\r\ntogether\r\ntomato\r\ntomorrow\r\ntone\r\ntongue\r\ntonight\r\ntoo\r\ntool\r\ntooth\r\ntop\r\ntopic\r\ntoss\r\ntotal\r\ntotally\r\ntouch\r\ntough\r\ntour\r\ntourist\r\ntournament\r\ntoward\r\ntowards\r\ntower\r\ntown\r\ntoy\r\ntrace\r\ntrack\r\ntrade\r\ntradition\r\ntraditional\r\ntraffic\r\ntragedy\r\ntrail\r\ntrain\r\ntraining\r\ntransfer\r\ntransform\r\ntransformation\r\ntransition\r\ntranslate\r\ntransportation\r\ntravel\r\ntreat\r\ntreatment\r\ntreaty\r\ntree\r\ntremendous\r\ntrend\r\ntrial\r\ntribe\r\ntrick\r\ntrip\r\ntroop\r\ntrouble\r\ntruck\r\ntrue\r\ntruly\r\ntrust\r\ntruth\r\ntry\r\ntube\r\ntunnel\r\nturn\r\nTV\r\ntwelve\r\ntwenty\r\ntwice\r\ntwin\r\ntwo\r\ntype\r\ntypical\r\ntypically\r\nugly\r\nultimate\r\nultimately\r\nunable\r\nuncle\r\nunder\r\nundergo\r\nunderstand\r\nunderstanding\r\nunfortunately\r\nuniform\r\nunion\r\nunique\r\nunit\r\nUnited\r\nuniversal\r\nuniverse\r\nuniversity\r\nunknown\r\nunless\r\nunlike\r\nunlikely\r\nuntil\r\nunusual\r\nup\r\nupon\r\nupper\r\nurban\r\nurge\r\nus\r\nuse\r\nused\r\nuseful\r\nuser\r\nusual\r\nusually\r\nutility\r\nvacation\r\nvalley\r\nvaluable\r\nvalue\r\nvariable\r\nvariation\r\nvariety\r\nvarious\r\nvary\r\nvast\r\nvegetable\r\nvehicle\r\nventure\r\nversion\r\nversus\r\nvery\r\nvessel\r\nveteran\r\nvia\r\nvictim\r\nvictory\r\nvideo\r\nview\r\nviewer\r\nvillage\r\nviolate\r\nviolation\r\nviolence\r\nviolent\r\nvirtually\r\nvirtue\r\nvirus\r\nvisible\r\nvision\r\nvisit\r\nvisitor\r\nvisual\r\nvital\r\nvoice\r\nvolume\r\nvolunteer\r\nvote\r\nvoter\r\nvs\r\nvulnerable\r\nwage\r\nwait\r\nwake\r\nwalk\r\nwall\r\nwander\r\nwant\r\nwar\r\nwarm\r\nwarn\r\nwarning\r\nwash\r\nwaste\r\nwatch\r\nwater\r\nwave\r\nway\r\nwe\r\nweak\r\nwealth\r\nwealthy\r\nweapon\r\nwear\r\nweather\r\nwedding\r\nweek\r\nweekend\r\nweekly\r\nweigh\r\nweight\r\nwelcome\r\nwelfare\r\nwell\r\nwest\r\nwestern\r\nwet\r\nwhat\r\nwhatever\r\nwheel\r\nwhen\r\nwhenever\r\nwhere\r\nwhereas\r\nwhether\r\nwhich\r\nwhile\r\nwhisper\r\nwhite\r\nwho\r\nwhole\r\nwhom\r\nwhose\r\nwhy\r\nwide\r\nwidely\r\nwidespread\r\nwife\r\nwild\r\nwill\r\nwilling\r\nwin\r\nwind\r\nwindow\r\nwine\r\nwing\r\nwinner\r\nwinter\r\nwipe\r\nwire\r\nwisdom\r\nwise\r\nwish\r\nwith\r\nwithdraw\r\nwithin\r\nwithout\r\nwitness\r\nwoman\r\nwonder\r\nwonderful\r\nwood\r\nwooden\r\nword\r\nwork\r\nworker\r\nworking\r\nworks\r\nworkshop\r\nworld\r\nworried\r\nworry\r\nworth\r\nwould\r\nwound\r\nwrap\r\nwrite\r\nwriter\r\nwriting\r\nwrong\r\nyard\r\nyeah\r\nyear\r\nyell\r\nyellow\r\nyes\r\nyesterday\r\nyet\r\nyield\r\nyou\r\nyoung\r\nyour\r\nyours\r\nyourself\r\nyouth\r\nzone', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordbookstate`
--

CREATE TABLE `wordbookstate` (
  `WBS_Id` int(11) NOT NULL,
  `WBS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `WBS_Detail` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wordbookstate`
--

INSERT INTO `wordbookstate` (`WBS_Id`, `WBS_Name`, `WBS_Detail`) VALUES
(1, 'Trạng thái 1', 'Trạng thái 1'),
(2, 'Trạng thái 2', 'Trạng thái 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wordstate`
--

CREATE TABLE `wordstate` (
  `WS_Id` int(11) NOT NULL,
  `WS_Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wordstate`
--

INSERT INTO `wordstate` (`WS_Id`, `WS_Name`) VALUES
(1, 'Ưu tiên học trước'),
(2, 'Không học nữa'),
(3, 'Đang học'),
(4, 'Đã thuộc'),
(5, 'Ưu tiên và đang học'),
(6, 'Ưu tiên và đã thuộc');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AC_Id`);

--
-- Chỉ mục cho bảng `catalogstored`
--
ALTER TABLE `catalogstored`
  ADD PRIMARY KEY (`CS_Id`);

--
-- Chỉ mục cho bảng `customdegree`
--
ALTER TABLE `customdegree`
  ADD PRIMARY KEY (`CD_Id`);

--
-- Chỉ mục cho bảng `expofoneday`
--
ALTER TABLE `expofoneday`
  ADD PRIMARY KEY (`EOOD_Id`);

--
-- Chỉ mục cho bảng `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`G_Id`);

--
-- Chỉ mục cho bảng `learningnumberday`
--
ALTER TABLE `learningnumberday`
  ADD PRIMARY KEY (`LND_Id`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`S_Id`);

--
-- Chỉ mục cho bảng `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`W_Id`);

--
-- Chỉ mục cho bảng `wordbook`
--
ALTER TABLE `wordbook`
  ADD PRIMARY KEY (`WB_Id`);

--
-- Chỉ mục cho bảng `wordbookstate`
--
ALTER TABLE `wordbookstate`
  ADD PRIMARY KEY (`WBS_Id`);

--
-- Chỉ mục cho bảng `wordstate`
--
ALTER TABLE `wordstate`
  ADD PRIMARY KEY (`WS_Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `AC_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `catalogstored`
--
ALTER TABLE `catalogstored`
  MODIFY `CS_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customdegree`
--
ALTER TABLE `customdegree`
  MODIFY `CD_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `expofoneday`
--
ALTER TABLE `expofoneday`
  MODIFY `EOOD_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `game`
--
ALTER TABLE `game`
  MODIFY `G_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `learningnumberday`
--
ALTER TABLE `learningnumberday`
  MODIFY `LND_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `session`
--
ALTER TABLE `session`
  MODIFY `S_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `word`
--
ALTER TABLE `word`
  MODIFY `W_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `wordbook`
--
ALTER TABLE `wordbook`
  MODIFY `WB_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `wordbookstate`
--
ALTER TABLE `wordbookstate`
  MODIFY `WBS_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wordstate`
--
ALTER TABLE `wordstate`
  MODIFY `WS_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
