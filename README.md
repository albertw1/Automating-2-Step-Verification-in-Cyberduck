# Automating-2-Step-Verification-in-Cyberduck

Connecting to a server can often be time consuming when it requires 2-step verification. For example, the following message prompt will come up when you are attempting to initialize a session, and sometimes even when uploading/downloading any files.

<img width="286" alt="Cyberduck 2-Step" src="https://user-images.githubusercontent.com/31450556/112774335-3c349700-8fee-11eb-8606-ddf3dbe65466.png">

We can use a simple approach by writing some Applescript to completely automate a 2-step verification procedure in Cyberduck, which works for all MacOS computers. The idea is to use Automator to create a modified version of Cyberduck containing our Applescript code. It assumes you have `oauthtool` installed (you can install it by doing `brew install oath-toolkit`) and that your authentication secret is placed in a file `~/.JAuth.rc`. The following screenshot shows how you would set it up in Automator. You first open Automator and then select "Application".

<img width="1210" alt="New Application" src="https://user-images.githubusercontent.com/31450556/112774894-ec56cf80-8fef-11eb-97b9-84479f818c92.png">

Then you add in the setup and code to create the new modified app I've named as `Myberduck` below.

<img width="1217" alt="Automator" src="https://user-images.githubusercontent.com/31450556/112774807-a994f780-8fef-11eb-9223-b1deb935b772.png">

Afterwards, save this in your `Applications` folder and then run the modified application you've made. This should bring up prompts asking if you would like to enable Privacy options under `System Preferences > Security & Privacy > Privacy`. 

<img width="254" alt="Security" src="https://user-images.githubusercontent.com/31450556/112775019-6c7d3500-8ff0-11eb-86fa-e1c213538911.png">

You want to click ok for this prompt. Then, make sure you add your modified app `Myberduck` to the list in `System Preferences > Security & Privacy > Privacy > Accessibility`.

<img width="662" alt="Accessibility" src="https://user-images.githubusercontent.com/31450556/112775192-f927f300-8ff0-11eb-82a4-5d4eb316b37b.png">

In summary, each time you try to login to your server, as long as you have set the authentication procedure correctly, it will *automatically* paste in your 2-step authentication code.
