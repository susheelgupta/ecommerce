<%@ page import="com.maali.tournamentmanager.MSport" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Maali</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>

<body>
%{--<div align="center"><h1>Welcome to Maali Tournament Manager</h1>--}%
%{--You can choose your action from below.....--}%
%{--</div>--}%
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create">Players</g:link></li>
        <li><g:link class="create">Matches</g:link></li>
        <li><g:link class="create">Schedule</g:link></li>
        <li><g:link class="create">Statistics</g:link></li>
        <li><g:link class="create">Blogs</g:link></li>
        <li><g:link class="create">Settings</g:link></li>
        <li><g:link class="create">ABC</g:link></li>
    </ul>
</div>


<div id="status" role="complementary">
    <h1>Games</h1>
    <ul>
        <g:each in="${sportTeamMap}" var="entry">
            <li><g:link action="show" controller="MSport" id="${entry.getKey().id}"><h3>${entry.getKey().sportName}</h3></g:link>
                <br/>
                <g:each in="${entry.getValue()}" var="team">
                    &nbsp;&nbsp;<g:link action="show" controller="MTeam" id="${team.id}">${team.name}</g:link>

                </g:each>
            </li>
        </g:each>
    </ul>
</div>

<div id="status" role="complementary" style="width: 400px; margin-left: 0px; margin-right: 0px;">
    <h1>Notifications</h1>
    *Team1 VS TeamB Semifinals @ Stadium1 <br/>
    *IPL Qualifiers on 20thMay @ College Grounds <br/>
    * Upcoming  Events <br/>

</div>
</div><div id="status" role="complementary" style=" width: 260px;">
    <h1>Ranking</h1>
    * Team1 is ranked 105th in Football
</div>


<div id="status" role="complementary" style="width: 300px;"><ol start="1">
    <li>Go to Sport Menu... <g:link controller="MSport" action="list">click here</g:link></li>
    <li>Go to League Menu... <g:link controller="MLeague" action="list">click here</g:link></li>
    <li>Go to Team Menu ... <g:link controller="MTeam" action="list">click here</g:link></li>
    <li>Go to Tournament Menu ... <g:link controller="MTournament" action="list">click here</g:link></li>
    <li>Go to Match Menu ... <g:link controller="MMatch" action="list">click here</g:link></li>

</ol></div>

</body>
</html>
