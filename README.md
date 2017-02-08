# README

## Interface for photo booth
The app is an admin interface for a series of physical photo booths. The photo booths upload whenever a customer takes a picture in the photo booths. The customer can then visit a special url to view their picture online, and share it to Facebook.

The app has three responsibilities. First responsibility is to allow customers to view & share their pictures. The second responsibility is to allow admins to manage the photo booths. Also, an API is needed to allow the photo booths to communicate with the backend (i.e. mostly uploading pictures for now).

The process for the photo booths (physical unit) is as follows:
When it starts up, it will send a request to an API and request a new picture. We need to create the picture in the database before we take the actual picture because we have to print the URL on the print-out. So we need two API endpoints:
1. Create a picture for a certain photo booth (eg. a path like POST /photo_booths/1/pictures.json), which will return a JSON representation of the created picture model.
2. Upload a picture file for an existing picture model (eg. a path like PATCH /api/pictures/95e58c1c-975d-45fd-962c-0c5cf4665072)

The API has to be protected, http basic auth is sufficient for that.

Please build a rails app named "epique" which will be this interface. This will be a rewrite of a legacy app which was implemented using [Sinatra](http://www.sinatrarb.com/).

- There are 2 models, PhotoBooth & Picture (there is an association between theese two models, photo_booth has many pictures)
- Each PhotoBooth has a name.
- Each picture has a uuid (you can configure rails to use uuid as a primary key for a table instead of an integer), an `uploaded_at` column which is set when a picture was uploaded.
- There needs to be authentication in place, please use [Devise](https://github.com/plataformatec/devise) for that. However, there should be no possibility for users to register, only a sign in. (Users will be created manually in the rails console for now)
- Add a simple view where the admin can view a list of all photo booths (ie. the name & the number of uploaded pictures).
- Admins must be able to create new photo booths.
- Add a view for end users, where they can see their picture. Important: access has to happen by uuid (eg. GET /pictures/95e58c1c-975d-45fd-962c-0c5cf4665072 as a security measure - so users cannot enumerate IDs and access other users pictures).
- Please test your app using rspec - focus on [model](https://www.relishapp.com/rspec/rspec-rails/v/3-5/docs/model-specs) & [feature](https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec) specs.



Steps:
1. Setup rails project with latest version 5.0.1
2. Create models (with generators)
3. ...