create table if not exists Genre (
	GenreID varchar (40) primary key,
	Name varchar (40) not null
);

create table if not exists Artist (
	ArtistID varchar (40) primary key,
	Name varchar (40) not null,
	GenreID varchar (40) references Genre(GenreID)
);

create table if not exists Albums (
	AlbumID varchar (40) primary key,
	ArtistID varchar (40) references Artist(ArtistID),
	AlbumName varchar (40) not null,
	year decimal (40) not null
);

create table if not exists Tracks (
	AlbumID varchar (40) references Albums(AlbumID),
	Title varchar (40) not null,
	Tim decimal (10)

);
