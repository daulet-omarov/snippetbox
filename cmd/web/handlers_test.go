package main

import (
	"net/http"
	"snippetbox.dauletomarov.net/internal/assert"
	"testing"
)

func TestPing(t *testing.T) {
	app := newTestApplication()

	ts := newTestServer(t, app.routes())
	defer ts.Close()

	code, _, body := ts.get(t, "/ping")

	assert.Equal(t, code, http.StatusOK)
	assert.Equal(t, body, "OK")
}
