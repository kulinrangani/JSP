<!DOCTYPE html>
<html lang="en">
  <body align="center"> 
    <main>
      <h1>Speed Calculator</h1>
      <form action="./success.jsp" method="POST">
        <fieldset class="mb-2">
          <legend class="font-bold text-md">City A to B:</legend>
          <div class="input__container">
            <label for="abDistance" class="input__label">Distance(km):</label>
            <input
              required
              type="number"
              name="abDistance"
              id="abDistance"
              class="input"
            />
          </div>
          <div class="input__container">
            <label for="abTime" class="input__label">Time Taken(hr):</label>
            <input
              required
              type="number"
              name="abTime"
              id="abTime"
              class="input"
            />
          </div>
        </fieldset>
        <fieldset class="mb-2">
          <legend class="font-bold text-md">City B to C:</legend>
          <div class="input__container">
            <label for="bcDistance" class="input__label">Distance(km):</label>
            <input
              required
              type="number"
              name="bcDistance"
              id="bcDistance"
              class="input"
            />
          </div>
          <div class="input__container">
            <label for="bcTime" class="input__label">Time Taken(hr):</label>
            <input
              required
              type="number"
              name="bcTime"
              id="bcTime"
              class="input"
            />
          </div>
        </fieldset>
        <fieldset class="mb-2">
          <legend class="font-bold text-md">City C to D:</legend>
          <div class="input__container">
            <label for="cdDistance" class="input__label">Distance(km):</label>
            <input
              required
              type="number"
              name="cdDistance"
              id="cdDistance"
              class="input"
            />
          </div>
          <div class="input__container">
            <label for="cdTime" class="input__label">Time Taken(hr):</label>
            <input
              required
              type="number"
              name="cdTime"
              id="cdTime"
              class="input"
            />
          </div>
        </fieldset>
        <button type="submit" class="button">Get Details</button>
      </form>
    </main>
  </body>
</html>
