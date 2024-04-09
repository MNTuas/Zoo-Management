<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Responsive Registration Form | CodingLab</title>
    <link rel="stylesheet" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }
    body {
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 10px;
      background: linear-gradient(135deg, #52d789, #307964);
    }
    .container {
      max-width: 700px;
      width: 100%;
      background-color: #fff;
      padding: 25px 30px;
      border-radius: 5px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
    }
    .container .title {
      font-size: 25px;
      font-weight: 500;
      position: relative;
    }
    .container .title::before {
      content: "";
      position: absolute;
      left: 0;
      bottom: 0;
      height: 3px;
      width: 30px;
      border-radius: 5px;
      background: linear-gradient(135deg, #52d789, #307964);
    }
    .content form .user-details {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 20px 0 12px 0;
    }
    form .user-details .input-box {
      margin-bottom: 15px;
      width: calc(100% / 2 - 20px);
    }
    form .input-box span.details {
      display: block;
      font-weight: 500;
      margin-bottom: 5px;
    }
    .user-details .input-box input {
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 16px;
      border-radius: 5px;
      padding-left: 15px;
      border: 1px solid #ccc;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
    }
    .user-details .input-box input:focus,
    .user-details .input-box input:valid {
      border-color: #52d789;
    }
    form .gender-details .gender-title {
      font-size: 20px;
      font-weight: 500;
    }
    form .category {
      display: flex;
      width: 80%;
      margin: 14px 0;
      justify-content: space-between;
    }
    form .category label {
      display: flex;
      align-items: center;
      cursor: pointer;
    }
    form .category label .dot {
      height: 18px;
      width: 18px;
      border-radius: 50%;
      margin-right: 10px;
      background: #d9d9d9;
      border: 5px solid transparent;
      transition: all 0.3s ease;
    }
    #dot-1:checked ~ .category label .one,
    #dot-2:checked ~ .category label .two,
    #dot-3:checked ~ .category label .three {
      background: #52d789;
      border-color: #d9d9d9;
    }
    form input[type="radio"] {
      display: none;
    }
    form .button {
      height: 45px;
      margin: 35px 0;
    }
    form .button input {
      height: 100%;
      width: 100%;
      border-radius: 5px;
      border: none;
      color: #fff;
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
      background: linear-gradient(135deg, #52d789, #376d50);
    }
    form .button input:hover {
      /* transform: scale(0.99); */
      background: linear-gradient(-135deg, #52d789, #376d50);
    }
    @media (max-width: 584px) {
      .container {
        max-width: 100%;
      }
      form .user-details .input-box {
        margin-bottom: 15px;
        width: 100%;
      }
      form .category {
        width: 100%;
      }
      .content form .user-details {
        max-height: 300px;
        overflow-y: scroll;
      }
      .user-details::-webkit-scrollbar {
        width: 5px;
      }
    }
    @media (max-width: 459px) {
      .container .content .category {
        flex-direction: column;
      }
    }
  </style>
  <body>
    <div class="container">
      <div class="flex justify-between">
        <div class="title">Update Animals</div>
        <!-- back button -->
        <div class="flex ml-0">
          <a
            href="animalsearch?animalID=A001"
            class="group flex items-center bg-transparent text-xl font-thin tracking-widest text-white hover:text-green-500 back-button"
          >
            <svg
              viewBox="0 0 46 16"
              height="15"
              width="35"
              xmlns="http://www.w3.org/2000/svg"
              id="arrow-horizontal"
              class="fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
            >
              <path
                transform="scale(-1, 1) translate(-30)"
                d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                data-name="Path 10"
                id="Path_10"
              ></path>
            </svg>
            <span
              class="ml-2 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-green-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
              >Back</span
            >
          </a>
        </div>
        <!-- end back -->
      </div>
      <div class="content">
        <form action="updateanimal" method="POST" enctype="multipart/form-data">
          <input type="hidden" name="animalid" value="${aa.animal_id}" />
          <div class="user-details">
            <div class="input-box">
              <span class="details">Cage Name</span>
              <input
                type="text"
                name="name"
                id="fullName"
                required
                value="${aa.name}"
                required
              />
            </div>

            <div class="input-box">
              <span class="details">Choose status</span>
              <select
                class="w-full rounded-md border border-[#e0e0e0] bg-white py-2 px-6 text-xl font-medium text-red-500 outline-none focus:border-[#6A64F1] focus:shadow-md"
                name="status"
                value="${aa.status}"
              >
                <option>NORMAL</option>
                <option>DEATH</option>
                <option>SICK</option>
              </select>
            </div>
            <div class="input-box">
              <label
                for="date"
                class="mb-3 block text-xl font-medium text-[#07074D]"
              >
                Date
              </label>
              <input
                class="w-full rounded-md border border-[#e0e0e0] bg-white py-2 px-6 text-2xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                type="date"
                name="dayin"
                value="${aa.dayin}"
              />
            </div>

            <div class="input-box">
              <span class="details mt-2">Select Cage_ID</span>

              <select
                class="w-full rounded-md border border-[#e0e0e0] bg-white py-2 px-6 text-xl font-medium text-red-500 outline-none focus:border-[#6A64F1] focus:shadow-md"
                name="animalcageid"
                value="${aa.animalcage_id}"
              >
                <c:forEach items="${cage}" var="c">
                  <option>${c.animalcage_id}</option>
                </c:forEach>
              </select>
            </div>

            <!-- photo -->
            <div class="w-full bg-white">
              <div
                class="container mx-auto h-full flex flex-col justify-center items-center"
              >
                <div id="images-container"></div>
                <div class="flex w-full justify-center">
                  <div id="multi-upload-button">
                    <button
                      type="button"
                      class="bg-white rounded-md px-12 py-4 text-xl border text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-green-500 duration-[400ms,700ms] transition-[color,box-shadow]"
                    >
                      Upload Photo
                    </button>
                  </div>
                  <div
                    class="border-gray-300 rounded-r-md flex items-center justify-between"
                  >
                    <span id="multi-upload-text" class="p-2 text-xl"></span>
                    <button
                      id="multi-upload-delete"
                      class="hidden"
                      onclick="removeMultiUpload()"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="fill-current text-red-700 w-3 h-3"
                        viewBox="0 0 320 512"
                      >
                        <path
                          d="M310.6 361.4c12.5 12.5 12.5 32.75 0 45.25C304.4 412.9 296.2 416 288 416s-16.38-3.125-22.62-9.375L160 301.3L54.63 406.6C48.38 412.9 40.19 416 32 416S15.63 412.9 9.375 406.6c-12.5-12.5-12.5-32.75 0-45.25l105.4-105.4L9.375 150.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0L160 210.8l105.4-105.4c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25l-105.4 105.4L310.6 361.4z"
                        />
                      </svg>
                    </button>
                  </div>
                </div>
                <input
                  type="file"
                  id="multi-upload-input"
                  class="hidden"
                  name="photo"
                  multiple
                />
              </div>
            </div>
            <script src="js/createphoto.js"></script>
            <!-- end photo -->
          </div>

          <div class="button">
            <input type="submit" name="action" value="Submit" />
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
