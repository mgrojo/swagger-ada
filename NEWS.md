Version 0.7.0   - Aug 2023
  - Add support for OpenAPI Number and array of Number
  - Add support for Bearer API Key authorization
  - Update the openapi generator to version 7.0.1
    - The number type does not work consistently (float and double are not mapped correctly),
    - The consumes and produces do not allow to really use several mime types for a request or response,
    - The file and binary types are using an incorrect Ada mapping that is not supported by the Ada library,
    - Added x-ada-no-vector, x-ada-serialize-op extensions to better control the generated Ada code

Version 0.6.0   - Aug 2022
  - Rename Swagger package into OpenAPI and provide a Swagger package for compatibility
  - Update the openapi generator to version 6.0.0
  - Add support for text/plain response
  - Add support to use external Ada types in OpenAPI definitions
  - Add support for multiple response types
  - Add support for binary responses
  - Add support for Ada enum generation for OpenAPI enums
  - Integrate Swagger UI v4.13.0

Version 0.5.1   - Feb 2022
  - Fix #6: Issues in README.md
  - Fix #8: Missing swagger-servers-config.ads when compiling with alire

Version 0.5.0   - Jul 2021
  - Fix for GNAT 2021
  - Update the openapi generator to version 5.2.0

Version 0.4.0   - Feb 2021
  - Update the openapi generator to version 5.1.0

Version 0.3.0   - Nov 2020
  - Install the openapi generator
  - Update the openapi generator to version 5.0.0
  - Update to use Swagger UI 3.36.0
  - Fixed Ada client code generator to support `FreeFormObject` and multi-path parameters
  - Add support for HTTP HEAD, OPTIONS and PATCH requests

Version 0.2.0   - May 2020
  - Refactor the build process

Version 0.1.0   - Jul 2018
  - First version for OpenAPI
