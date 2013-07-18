package com.maali.tournamentmanager



import org.junit.*
import grails.test.mixin.*

@TestFor(PlayersController)
@Mock(Players)
class PlayersControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/players/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.playersInstanceList.size() == 0
        assert model.playersInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.playersInstance != null
    }

    void testSave() {
        controller.save()

        assert model.playersInstance != null
        assert view == '/players/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/players/show/1'
        assert controller.flash.message != null
        assert Players.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/players/list'


        populateValidParams(params)
        def players = new Players(params)

        assert players.save() != null

        params.id = players.id

        def model = controller.show()

        assert model.playersInstance == players
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/players/list'


        populateValidParams(params)
        def players = new Players(params)

        assert players.save() != null

        params.id = players.id

        def model = controller.edit()

        assert model.playersInstance == players
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/players/list'

        response.reset()


        populateValidParams(params)
        def players = new Players(params)

        assert players.save() != null

        // test invalid parameters in update
        params.id = players.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/players/edit"
        assert model.playersInstance != null

        players.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/players/show/$players.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        players.clearErrors()

        populateValidParams(params)
        params.id = players.id
        params.version = -1
        controller.update()

        assert view == "/players/edit"
        assert model.playersInstance != null
        assert model.playersInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/players/list'

        response.reset()

        populateValidParams(params)
        def players = new Players(params)

        assert players.save() != null
        assert Players.count() == 1

        params.id = players.id

        controller.delete()

        assert Players.count() == 0
        assert Players.get(players.id) == null
        assert response.redirectedUrl == '/players/list'
    }
}
