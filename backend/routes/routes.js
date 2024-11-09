const express = require('express');
const router = express.Router();
const { getRouteSuggestions } = require('../controllers/routeController');

router.get('/', getRouteSuggestions);

module.exports = router;
