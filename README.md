
# react-native-bring-helper

## Getting started

`$ npm install react-native-bring-helper --save`

### Mostly automatic installation

`$ react-native link react-native-bring-helper`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-bring-helper` and add `RNBringHelper.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBringHelper.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.dh.bring.helper.RNBringHelperPackage;` to the imports at the top of the file
  - Add `new RNBringHelperPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-bring-helper'
  	project(':react-native-bring-helper').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-bring-helper/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-bring-helper')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBringHelper.sln` in `node_modules/react-native-bring-helper/windows/RNBringHelper.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Bring.Helper.RNBringHelper;` to the usings at the top of the file
  - Add `new RNBringHelperPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBringHelper from 'react-native-bring-helper';

// TODO: What to do with the module?
RNBringHelper;
```
  # bring-helper
