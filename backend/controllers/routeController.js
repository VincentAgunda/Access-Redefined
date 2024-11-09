const googleMapsService = require('../services/googleMapsService');

const getRouteSuggestions = async (req, res, next) => {
  try {
    const { search } = req.query;
    const suggestions = await googleMapsService.getSuggestions(search);
    res.status(200).json(suggestions);
  } catch (error) {
    next(error);
  }
};

module.exports = { getRouteSuggestions };
