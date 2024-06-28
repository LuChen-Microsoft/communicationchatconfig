# Azure Communication Messages TypeSpec Specification

The TypeSpec and generated API specification for the Azure Communication Chat Config.

## Development Environment

0. Change directory into the directory.

1. Install Node.js 16 LTS and ensure you are able to run the npm command in a command prompt:

   ```console
   npm --version
   ```

2. Install Azure DevOps Auth helper for npm to pull the libraries from the secured feed

   ```console
   npm install -g vsts-npm-auth
   vsts-npm-auth -config .npmrc
   ```

3. Install TypeSpec compiler and libraries:

   ```console
   npm install -g @typespec/compiler
   ```

4. (Optional) Install the TypeSpec extension for your editor of choice:

   - Visual Studio Code

     ``` console
     tsp code install
     ```

   - Visual Studio

     ``` console
     tsp vs install
     ```

5. Install node package dependencies:

   ```console
   tsp install
   ```

6. Compile TypeSpec to Swagger. 
   ```console
   npx tsp compile .
   ```

## Testing and Viewing API as an Interface

1. Visit the official [Swagger Editor](https://editor.swagger.io/).

2. Copy the generated Swagger and paste it into the editor.