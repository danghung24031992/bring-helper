
import { NativeModules, Platform } from 'react-native';
const { RNBringHelper } = NativeModules;

const isIOS = Platform.OS === 'ios'

export default {
    keepOnScreen(isOn){
        if(isIOS){
            RNBringHelper.keepOnScreen(isOn);
        }
    },
    async saveLocalStorage(key , value){
        if(!isIOS){
            await RNBringHelper.saveLocalStorage(key , value);
        }
    }
}