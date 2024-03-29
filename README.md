# Lifeline

Lifeline, empowers individuals and communities with the ability to save lives through core functionalities: linking with community responders and providing quality first aid education.

## Overview

Given that a staggering `59% of deaths` from injuries could have been prevented if adequate first aid had been administered before the arrival of an ambulance, we set out to `inculcate first aid knowledge` and `increase public confidence` in administering first aid with Lifeline. Lifeline aims to shorten the time period between onset of emergency and arrival of services by `crowdsourcing` first-aid responders, while increasing the awareness and preparedness of the public through `quality knowledge`.

###### British Red Cross First Aid [^1]

[^1]: [#DontStopAt999 Campaign](https://www.redcross.org.uk/first-aid/dont-stop-at-999)

## Demo Video

![maxresdefault](https://user-images.githubusercontent.com/63765620/228293309-03d00704-d9ea-4674-8b1c-b9f28049d392.jpg)

> Youtube Video Link: https://youtu.be/CLiAbHw80Ek

## Table of Contents

  <ol>
    <li><a href="#technologies">Technologies</a></li>
    <li><a href="#un-sustainable-development-goals-and-targets">UN Sustainable Development Goals And Targets</a></li>
    <li><a href="#core-functionalities">Core Functionalities</a></li>
    <li><a href="#distribution">Distribution</a></li>
    <li><a href="#license">License</a></li>
  </ol>

## Technologies

<div align="center">
	<img height="60" src="https://user-images.githubusercontent.com/25181517/189716855-2c69ca7a-5149-4647-936d-780610911353.png" alt="Firebase" title="Firebase" />
	<img height="60" src="https://user-images.githubusercontent.com/63765620/228299869-36a40db1-c608-45cb-8fd4-fbe45425ecb2.png" alt="Android" title="Android" />
	<img height="60" src="https://user-images.githubusercontent.com/25181517/186150365-da1eccce-6201-487c-8649-45e9e99435fd.png" alt="Flutter" title="Flutter" />
 	<img height="60" src="https://user-images.githubusercontent.com/63765620/228297319-699b5cee-0fc4-4c1f-972c-5a945ca30af9.png" alt="Flutter" title="Google Maps Platform" />
	<img height="60" src="https://user-images.githubusercontent.com/63765620/228300098-4aa01eeb-003c-48f2-acfb-e1d17883b1ad.png" alt="Flutter" title="Dart" />
	<img height="58" src="https://user-images.githubusercontent.com/63765620/228302531-4822866b-d460-4741-9185-958f17fce9f7.png" alt="Flutter" title="Dart" />
</div>

## UN Sustainable Development Goals And Targets

### SDG 3: Good Health and Well-being

![health](https://user-images.githubusercontent.com/63765620/228413156-ab24326d-a560-44bf-a506-529c435ab41b.png)

> 3.2 - End all preventable deaths under 5 y/o
>
> 3.4 - Reduce mortality from non-communicable diseases and promote mental health
>
> 3.6 - Reduce road injuries and deaths
>
> 3.c - Increase health financing and support health workforce in developing countries

-   Choking is the 4th leading cause of unintentional death in children under 5. At least 1 child dies from choking every 5 days in the US with more than 12,000 children taken to A&E for such incidents.
-   Mental disorders are among the leading causes of disability worldwide, with depression being the most common. NCDs disproportionately affect LDCs, with 85% of premature deaths occurring in these countries.
-   1 in 5 individuals involved in road accidents die due to delayed first-aid, and 2/3 of deaths occur within 25 min after trauma.
-   Half the world's population lack access to essential health services. In LDCs, shortage of skilled health workers is a major barrier to providing adequate emergency response.

### SDG 4: Quality Education

![edu](https://user-images.githubusercontent.com/63765620/228413247-fbceaa34-1927-42fb-b28d-5c348731d86d.png)

> 4.7 - Education for sustainable development and global citizenship

-   A survey by the British Red Cross found only 5% of adults have the knowledge and confidence to administer first aid in emergency situations.
    Furthermore, in LDCs, the lack of access to robust healthcare systems and trained healthcare workers makes basic first aid knowledge and skills
    even more crucial in response to emergency situations.
-   Over 150,000 lives could be saved each year if more people were trained in basic first aid.

## Core Functionalities

### First Aid Guidance

<img width="1230" alt="First Aid Guidance" src="https://user-images.githubusercontent.com/88138479/228447164-6ff879eb-eda1-4ef2-9072-fba28854fb6f.png">

Lifeline provides first aid guidance to users. These first aid instructions are easily accessible within at most 2 clicks from the home page, saving valuable time in emergencies. Under each flow, clear illustrations and detailed instructions are given so that users can easily follow along.

### Community Responder

<img width="1230" alt="Community Responder" src="https://user-images.githubusercontent.com/88138479/228447333-53b4b969-fb51-43ee-9a20-4490fed43dea.png">

Lifeline provides the capabilities for users to respond to emergency help requested by users in need.

### Personalised Learning

<img width="1230" alt="Personalised Learning" src="https://user-images.githubusercontent.com/88138479/228447444-a441fab1-e572-45e0-b8b6-8c0bf654119d.png">

Lifeline is a one-stop destination to access a wealth of first aid knowledge. It offers a personalised experience to individuals with different needs with progress tracking allowing users to learn at their own pace.Learning contents are categorised into topics and further divided into subtopics, using bite sized content for effective and convenient learning on-the-go. Information is presented in a modernised way catering to content consumption trends.

## Distribution

Lifeline's current release is built for Android devices. Alpha build has been tested on Google Pixel 4, Pixel 5 and Samsung Galaxy S10.

[v0.1.1-alpha release APK](https://github.com/ackselz/Lifeline/releases/tag/v0.1.1-alpha)

### Running locally

1. Clone the repository

```sh
git clone https://github.com/ackselz/Lifeline.git
```

2. Run

```sh
flutter run
```

### User Details

The following user account was used in the demo video. You may create your own accounts via the `registration` feature
which syncs emergency reporting and user learning progression with firebase.

_Location services can be simulated through tweaking settings of the android emulator or mobile device. As of alpha release, resolving of emergencies have yet to be implemented._

```text
Demo User Login Details

Email: dev@gmail.com
Password: googlesolutions
```

## License

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-yellow.svg)](https://www.gnu.org/licenses/gpl-3.0)

Source code distributed under the GNU GPL v3 license. Credits of youtube videos and images used goes to respective owners of the resources.
All videos and images are used are for demo purposes only and are not intended for commercial use.

Developed by:

-   [Tan Shao Chong](https://github.com/ackselz)
-   [Lau Quan Feng Ryan](https://github.com/RyanLauQF)
-   [Xu Jialu](https://github.com/3nityR)
-   [Zhou Ziheng](https://github.com/zorridge)
