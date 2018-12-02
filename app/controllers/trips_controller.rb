class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  cattr_accessor :countries
  @@countries = {
    "Afghanistan" => { la: 34.51666667,lo: 69.183333 },
    "Albania" => { la: 41.31666667,lo: 19.816667 },
    "Algeria" => { la: 36.75,lo: 3.05 },
    "American Samoa" => { la: -14.26666667,lo: -170.7},
    "Andorra" => { la: 42.5,lo: 1.516667},
    "Angola" => { la: -8.833333333,lo: 13.216667},
    "Anguilla" => { la: 18.21666667,lo: -63.05},
    "Antarctica" => { la: 0,lo: 0},
    "Antigua and Barbuda" => { la: 17.11666667,lo: -61.85},
    "Argentina" => { la: -34.58333333,lo: -58.666667},
    "Armenia" => { la: 40.16666667,lo: 44.5},
    "Aruba" => { la: 12.51666667,lo: -70.033333},
    "Australia" => { la: -35.26666667,lo: 149.133333},
    "Austria" => { la: 48.2,lo: 16.366667},
    "Azerbaijan" => { la: 40.38333333,lo: 49.866667},
    "The Bahamas" => { la: 25.08333333,lo: -77.35},
    "Bahrain" => { la: 26.23333333,lo: 50.566667},
    "Bangladesh" => { la: 23.71666667,lo: 90.4},
    "Barbados" => { la: 13.1,lo: -59.616667},
    "Belarus" => { la: 53.9,lo: 27.566667},
    "Belgium" => { la: 50.83333333,lo: 4.333333},
    "Belize" => { la: 17.25,lo: -88.766667},
    "Benin" => { la: 6.483333333,lo: 2.616667},
    "Bermuda" => { la: 32.28333333	,lo: -64.783333},
    "Bhutan" => { la: 27.46666667,lo: 89.633333},
    "Bolivia" => { la: -16.5,lo: -68.15},
    "Bonaire" => { la: 12.1443,lo: 68.2655},
    "Bosnia and Herzegovina" => { la: 43.86666667,lo: 18.416667},
    "Botswana" => { la: -24.63333333,lo: 25.9},
    "Bouvet Island" => { la: 54.4208,lo: 3.3464},
    "Brazil" => { la: -15.78333333,lo: -47.916667},
    "British Indian Ocean Territory" => { la: -7.3,lo: 72.4},
    "United States Minor Outlying Islands" => { la:19.2823 ,lo:166.6470 },
    "Virgin Islands (British)" => { la: 18.41666667,lo: -64.616667},
    "Virgin Islands (U.S.)" => { la: 18.3419,lo: 64.9307},
    "Brunei" => { la: 4.883333333,lo: 114.933333},
    "Bulgaria" => { la: 42.68333333,lo: 23.316667},
    "Burkina Faso" => { la: 12.36666667,lo: -1.516667},
    "Burundi" => { la: -3.366666667,lo: 29.35},
    "Cambodia" => { la: 11.55,lo: 104.916667},
    "Cameroon" => { la: 3.866666667,lo: 11.516667},
    "Canada" => { la: 45.41666667,lo: -75.7},
    "Cape Verde" => { la: 14.91666667,lo: -23.516667},
    "Cayman Islands" => { la: 19.3,lo: -81.383333},
    "Central African Republic" => { la: 4.366666667,lo: 18.583333},
    "Chad" => { la: 12.1,lo: 15.033333},
    "Chile" => { la: -33.45,lo: -70.666667},
    "China" => { la: 39.91666667,lo: 116.383333},
    "Christmas Island" => { la: -10.41666667,lo: 105.716667},
    "Cocos (Keeling) Islands" => { la: -12.16666667,lo: 96.833333},
    "Colombia" => { la: 4.6,lo: -74.083333},
    "Comoros" => { la: -11.7,lo: 43.233333},
    "Republic of the Congo" => { la: 4.2634,lo: 15.2429},
    "Democratic Republic of the Congo" => { la: 4.4419,lo: 15.2663},
    "Cook Islands" => { la: -21.2,lo: -159.766667},
    "Costa Rica" => { la: 9.933333333,lo: -84.083333},
    "Croatia" => { la: 45.8,lo: 16},
    "Cuba" => { la: 23.11666667,lo: -82.35},
    "Curaçao" => { la: 12.1,lo: -68.916667},
    "Cyprus" => { la: 35.16666667	,lo: 33.366667},
    "Czech Republic" => { la: 50.08333333,lo: 14.466667},
    "Denmark" => { la: 55.66666667,lo: 12.583333},
    "Djibouti" => { la: 11.58333333,lo: 43.15},
    "Dominica" => { la: 15.3,lo: -61.4},
    "Dominican Republic" => { la: 18.46666667,lo: -69.9},
    "Ecuador" => { la: -0.216666667,lo: -78.5},
    "Egypt" => { la: 30.05,lo: 31.25},
    "El Salvador" => { la: 13.7,lo: -89.2},
    "Equatorial Guinea" => { la: 3.75,lo: 8.783333},
    "Eritrea" => { la: 15.33333333	,lo: 38.933333},
    "Estonia" => { la: 59.43333333,lo: 24.716667},
    "Ethiopia" => { la: 9.033333333,lo: 38.7},
    "Falkland Islands" => { la: -51.7,lo: -57.85},
    "Faroe Islands" => { la: 62,lo: -6.766667},
    "Fiji" => { la: -18.13333333,lo: 178.416667	},
    "Finland" => { la: 60.16666667,lo: 24.933333},
    "France" => { la: 48.86666667,lo: 2.333333},
    "French Guiana" => { la: 4.9224,lo: 52.3135},
    "French Polynesia" => { la: -17.53333333,lo: -149.566667},
    "French Southern and Antarctic Lands" => { la: -49.35,lo: 70.216667},
    "Gabon" => { la: 0.383333333,lo: 9.45},
    "The Gambia" => { la: 13.4549,lo: 16.5790},
    "Georgia" => { la: 41.68333333,lo: 44.833333 },
    "Germany" => { la: 52.51666667,lo: 13.4},
    "Ghana" => { la: 5.55,lo: -0.216667},
    "Gibraltar" => { la: 36.13333333 ,lo: -5.35},
    "Greece" => { la: 37.98333333	,lo: 23.733333},
    "Greenland" => { la: 64.18333333,lo: -51.75},
    "Grenada" => { la: 12.05,lo: -61.75},
    "Guadeloupe" => { la: 16.0341,lo: 61.6947},
    "Guam" => { la: 13.46666667,lo: 144.733333},
    "Guatemala" => { la: 14.61666667,lo: -90.516667},
    "Guernsey" => { la: 49.45,lo: -2.533333},
    "Guinea" => { la: 9.5,lo: -13.7},
    "Guinea-Bissau" => { la: 11.85,lo: -15.583333},
    "Guyana" => { la: 6.8,lo: -58.15},
    "Haiti" => { la: 18.53333333,lo: -72.333333},
    "Heard Island and McDonald Islands" => { la: 0,lo: 0},
    "Holy See" => { la: 41.9029,lo: 12.4534},
    "Honduras" => { la: 14.1,lo: -87.216667},
    "Hong Kong" => { la: 0,lo: 0},
    "Hungary" => { la: 47.5,lo: 19.083333},
    "Iceland" => { la: 64.15,lo: -21.95},
    "India" => { la: 28.6,lo: 77.2},
    "Indonesia" => { la: -6.166666667,lo: 106.816667},
    "Ivory Coast" => { la: 6.8276,lo: 5.2893},
    "Iran" => { la: 35.7,lo: 51.416667},
    "Iraq" => { la: 33.33333333,lo: 44.4},
    "Republic of Ireland" => { la: 53.31666667,lo: -6.233333},
    "Isle of Man" => { la: 54.15,lo: -4.483333},
    "Israel" => { la: 31.76666667,lo: 35.233333},
    "Italy" => { la: 41.9,lo: 12.483333	},
    "Jamaica" => { la: 18,lo: -76.8},
    "Japan" => { la: 35.68333333,lo: 139.75},
    "Jersey" => { la: 49.18333333,lo: -2.1},
    "Jordan" => { la: 31.95,lo: 35.933333},
    "Kazakhstan" => { la: 51.16666667,lo: 71.416667},
    "Kenya" => { la: -1.283333333,lo: 36.816667},
    "Kiribati" => { la: -0.883333333,lo: 169.533333},
    "Kuwait" => { la: 29.36666667,lo: 47.966667},
    "Kyrgyzstan" => { la: 42.86666667,lo: 74.6},
    "Laos" => { la: 17.96666667,lo: 102.6},
    "Latvia" => { la: 56.95,lo: 24.1},
    "Lebanon" => { la: 33.86666667,lo: 35.5},
    "Lesotho" => { la: -29.31666667,lo: 27.483333},
    "Liberia" => { la:6.3 ,lo:-10.8 },
    "Libya" => { la:32.88333333 ,lo:13.166667 },
    "Liechtenstein" => { la:47.13333333 ,lo:9.516667 },
    "Lithuania" => { la:54.68333333 ,lo:25.316667 },
    "Luxembourg" => { la:49.6 ,lo:6.116667 },
    "Macau" => { la:0 ,lo:0 },
    "Republic of Macedonia" => { la:42 ,lo:21.433333 },
    "Madagascar" => { la:-18.91666667 ,lo:47.516667 },
    "Malawi" => { la:-13.96666667 ,lo:33.783333 },
    "Malaysia" => { la:3.166666667 ,lo:101.7 },
    "Maldives" => { la:4.166666667 ,lo:73.5 },
    "Mali" => { la:12.65 ,lo:-8 },
    "Malta" => { la:35.88333333 ,lo:14.5 },
    "Marshall Islands" => { la:7.1 ,lo:171.383333 },
    "Martinique" => { la:18.06666667 ,lo:-15.966667 },
    "Mauritania" => { la:18.0735 ,lo:15.9582 },
    "Mauritius" => { la:-20.15 ,lo:57.483333 },
    "Mayotte" => { la:12.7809 ,lo:45.2279 },
    "Mexico" => { la:19.43333333 ,lo:-99.133333 },
    "Federated States of Micronesia" => { la:38.3000 ,lo:20.4167 },
    "Moldova" => { la:47 ,lo:28.85 },
    "Monaco" => { la:43.73333333 ,lo:7.416667 },
    "Mongolia" => { la:47.91666667 ,lo:106.916667 },
    "Montenegro" => { la:42.43333333 ,lo:19.266667 },
    "Montserrat" => { la:16.7 ,lo:-62.216667 },
    "Morocco" => { la:34.01666667 ,lo:-6.816667 },
    "Mozambique" => { la:-25.95 ,lo:32.583333 },
    "Myanmar" => { la:16.8 ,lo:96.15 },
    "Namibia" => { la:-22.56666667 ,lo:17.083333 },
    "Nauru" => { la:-0.5477 ,lo:166.920867 },
    "Nepal" => { la:27.71666667 ,lo:85.316667 },
    "Netherlands" => { la:52.35 ,lo:4.916667 },
    "New Caledonia" => { la:-22.26666667 ,lo:166.45 },
    "New Zealand" => { la:-41.3 ,lo:174.783333 },
    "Nicaragua" => { la:12.13333333 ,lo:-86.25 },
    "Niger" => { la:13.51666667 ,lo:2.116667 },
    "Nigeria" => { la:9.083333333 ,lo:7.533333 },
    "Niue" => { la:-19.01666667 ,lo:-169.916667 },
    "Norfolk Island" => { la:-29.05 ,lo:167.966667 },
    "North Korea" => { la:39.01666667 ,lo:125.75 },
    "Northern Mariana Islands" => { la:15.2 ,lo:145.75 },
    "Norway" => { la:59.91666667 ,lo:10.75 },
    "Oman" => { la:23.61666667 ,lo:58.583333 },
    "Pakistan" => { la:33.68333333 ,lo:73.05 },
    "Palau" => { la:7.483333333 ,lo:134.633333 },
    "Palestine" => { la:31.76666667 ,lo:35.233333 },
    "Panama" => { la:8.966666667 ,lo:-79.533333 },
    "Papua New Guinea" => { la:-9.45 ,lo:147.183333 },
    "Paraguay" => { la:-25.26666667 ,lo:-57.666667 },
    "Peru" => { la:-12.05 ,lo:-77.05 },
    "Philippines" => { la:14.6 ,lo:120.966667 },
    "Pitcairn Islands" => { la:-25.06666667 ,lo:-130.083333 },
    "Poland" => { la:52.25 ,lo:21 },
    "Portugal" => { la:38.71666667 ,lo:-9.133333 },
    "Puerto Rico" => { la:18.46666667 ,lo: -66.116667 },
    "Qatar" => { la:25.28333333 ,lo:51.533333 },
    "Republic of Kosovo" => { la:42.667542 ,lo:21.166191 },
    "Réunion" => { la:20.8907 ,lo:55.4551 },
    "Romania" => { la:44.43333333 ,lo:26.1 },
    "Russia" => { la:55.75 ,lo:37.6 },
    "Rwanda" => { la:-1.95 ,lo:30.05 },
    "Saint Barthélemy" => { la:17.88333333 ,lo:-62.85 },
    "Saint Helena" => { la:-15.93333333 ,lo:-5.716667 },
    "Saint Kitts and Nevis" => { la:17.3 ,lo:-62.716667 },
    "Saint Lucia" => { la:14 ,lo:-61 },
    "Saint Martin" => { la:18.0731 ,lo:-63.0822 },
    "Saint Pierre and Miquelon" => { la:46.76666667 ,lo:-56.183333 },
    "Saint Vincent and the Grenadines" => { la:13.13333333 ,lo:-61.216667 },
    "Samoa" => { la:-13.81666667 ,lo:-171.766667 },
    "San Marino" => { la:43.93333333 ,lo:12.416667 },
    "São Tomé and Príncipe" => { la:0.333333333 ,lo:6.733333 },
    "Saudi Arabia" => { la:24.65 ,lo:46.7 },
    "Senegal" => { la:14.73333333 ,lo:-17.633333 },
    "Serbia" => { la:44.83333333 ,lo:20.5 },
    "Seychelles" => { la:-4.616666667 ,lo:55.45 },
    "Sierra Leone" => { la:8.483333333 ,lo:-13.233333 },
    "Singapore" => { la:1.283333333 ,lo:103.85 },
    "Sint Maarten" => { la:18.01666667 ,lo:-63.033333 },
    "Slovakia" => { la:48.15 ,lo:17.116667 },
    "Slovenia" => { la:46.05 ,lo:14.516667 },
    "Solomon Islands" => { la:-9.433333333 ,lo:159.95 },
    "Somalia" => { la:2.066666667 ,lo:45.333333 },
    "South Africa" => { la:-25.7 ,lo:28.216667 },
    "South Georgia" => { la:-54.283333 ,lo:36.5 },
    "South Korea" => { la:37.55 ,lo:126.98333 },
    "South Sudan" => { la:4.85 ,lo:31.616667 },
    "Spain" => { la:40.4 ,lo:-3.683333 },
    "Sri Lanka" => { la:6.916666667 ,lo:79.833333 },
    "Sudan" => { la:15.6 ,lo:32.533333 },
    "Suriname" => { la:5.833333333 ,lo:-55.166667 },
    "Svalbard and Jan Mayen" => { la:78.21666667 ,lo:15.633333 },
    "Swaziland" => { la:-26.31666667 ,lo:31.133333 },
    "Sweden" => { la:59.33333333 ,lo:18.05 },
    "Switzerland" => { la:46.91666667 ,lo:7.466667 },
    "Syria" => { la:33.5 ,lo:36.3 },
    "Taiwan" => { la:25.03333333 ,lo:121.516667 },
    "Tajikistan" => { la:38.55 ,lo:68.766667 },
    "Tanzania" => { la:-6.8 ,lo:39.283333 },
    "Thailand" => { la:13.75 ,lo:100.516667 },
    "East Timor" => { la:-8.583333333 ,lo:125.6 },
    "Togo" => { la:6.116666667 ,lo:1.216667 },
    "Tokelau" => { la:-9.166667 ,lo:-171.833333 },
    "Tonga" => { la:-21.13333333 ,lo:-175.2 },
    "Trinidad and Tobago" => { la:10.65 ,lo:-61.516667 },
    "Tunisia" => { la:36.8 ,lo:10.183333 },
    "Turkey" => { la:39.93333333 ,lo:32.866667 },
    "Turkmenistan" => { la:37.95 ,lo:58.383333 },
    "Turks and Caicos Islands" => { la:21.46666667 ,lo:-71.133333 },
    "Tuvalu" => { la:-8.516666667 ,lo:179.216667 },
    "Uganda" => { la:0.316666667 ,lo:32.55 },
    "Ukraine" => { la:50.43333333 ,lo:30.516667 },
    "United Arab Emirates" => { la:24.46666667 ,lo:54.366667 },
    "United Kingdom" => { la:51.5 ,lo:-0.083333 },
    "United States" => { la:38.883333 ,lo:-77 },
    "Uruguay" => { la:-34.85 ,lo:-56.166667 },
    "Uzbekistan" => { la:41.31666667 ,lo:69.25 },
    "Vanuatu" => { la:-17.73333333 ,lo:168.316667 },
    "Venezuela" => { la:10.48333333 ,lo:-66.866667 },
    "Vietnam" => { la:21.03333333 ,lo:105.85 },
    "Wallis and Futuna" => { la:-13.95 ,lo:-171.933333 },
    "Western Sahara" => { la:27.153611 ,lo:-13.203333 },
    "Yemen" => { la:15.35 ,lo:44.2 },
    "Zambia" => { la:-15.41666667 ,lo:28.283333 },
    "Zimbabwe" => { la:-17.81666667 ,lo:31.033333 }
  }
  # GET /trips
  # GET /trips.json
  def index
    redirect_to login_path if !logged_in?
    @trips = Trip.all
    @user = current_user
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
    #VenueHolder.new("Chile").venues.first.name
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    @trip.returnDate = Time.now
    @trip.startDate = Time.now
    @trip.price = 10;
    @trip.user = current_user

    respond_to do |format|
      if @trip.save
        @trip.venue_holder = VenueHolder.new(@trip.destination, @trip.https)
        
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:verified,:price,:destination,:startDate,:returnDate, :image, :image_one, :image_two, :image_three, :https)
    end
end
