const axios = require('axios');

const getSuggestions = async (query) => {
  const apiKey = process.env.GOOGLE_MAPS_API_KEY;
  const url = `https://maps.googleapis.com/maps/api/place/textsearch/json`;
  const response = await axios.get(url, {
    params: { query, key: apiKey },
  });

  return response.data.results.map((place) => ({
    name: place.name,
    address: place.formatted_address,
    location: place.geometry.location,
  }));
};

module.exports = { getSuggestions };
