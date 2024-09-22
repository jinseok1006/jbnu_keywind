# :wind_face: Keywind

Keywind is a component-based Keycloak Login Theme built with [Tailwind CSS](https://github.com/tailwindlabs/tailwindcss) and [Alpine.js](https://github.com/alpinejs/alpine).

![Preview](./preview.png)

### Styled Pages

- Error
- Login
- Login Config TOTP
- Login IDP Link Confirm
- Login OAuth Grant
- Login OTP
- Login Page Expired
- Login Password
- Login Recovery Authn Code Config
- Login Recovery Authn Code Input
- Login Reset Password
- Login Update Password
- Login Update Profile
- Login Username
- Login X.509 Info
- Logout Confirm
- Register
- Select Authenticator
- Terms and Conditions
- WebAuthn Authenticate
- WebAuthn Error
- WebAuthn Register

### Identity Provider Icons

- Apple
- Bitbucket
- Discord
- Facebook
- GitHub
- GitLab
- Google
- Instagram
- LinkedIn
- Microsoft
- OpenID
- Red Hat OpenShift
- PayPal
- Slack
- Stack Overflow
- Twitter

## Installation

Keywind has been designed with component-based architecture from the start, and **you can customize as little or as much Keywind as you need**:

1. [Deploy Keywind Login Theme](https://www.keycloak.org/docs/latest/server_development/#deploying-themes)
2. [Create your own Login Theme](https://www.keycloak.org/docs/latest/server_development/#creating-a-theme)
3. Specify parent theme in [theme properties](https://www.keycloak.org/docs/latest/server_development/#theme-properties):

```
parent=keywind
```

4. Brand and customize components with [FreeMarker](https://freemarker.apache.org/docs/dgui_quickstart_template.html)

## Customization

### Theme

When you do need to customize a palette, you can configure your colors under the `colors` key in the `theme` section of Tailwind config file:

`tailwind.config.js`

```js
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: colors.red,
      },
    },
  },
};
```

Read more about Tailwind CSS configuration in the [documentation](https://tailwindcss.com/docs/configuration).

### Components

You can update Keywind components in your own child theme. For example, create a copy of the `body` component and change the background:

`theme/mytheme/login/components/atoms/body.ftl`

```
<#macro kw>
  <body class="bg-primary-100">
    <#nested>
  </body>
</#macro>
```

## Build

When you're ready to deploy your own theme, run the build command to generate a static production build.

```bash
pnpm install
pnpm build
```

To deploy a theme as an archive, create a JAR archive with the theme resources.

```bash
pnpm build:jar
```

<br/>
<br/>

# 변경 로그

모든 주요 변경 사항은 아래와 같이 기록됩니다.

## 수정 기록

### 수정 사항
- **로그인 화면**: 로그인 화면 생성 시 일반 로그인보다 소셜 로그인의 위치가 가장 위에 오도록 바꿈.
- **commit message**: "Social Login first"
- **수정 파일**: template.ftl, login.ftl, identity-provider.ftl
-  2024/09/09. by eunhyekim811

### 수정 사항
- **로그인 화면**: 로그인 화면에 안내문구 및 문의 관련 문장 삽입
- **commit message**: "login guide"
- **수정 파일**: template.ftl, alert.ftl
-  2024/09/10. by eunhyekim811

### 수정 사항
- **로그인 화면**: 로그인 화면에서만 안내문구 뜨도록 수정
- **commit message**: "guide at only login page"
- **수정 파일**: template.ftl, identity-provider.ftl
-  2024/09/11. by eunhyekim811

### 수정 사항
- **로그인 화면**: 로그인 화면 안내문구 개조식으로 수정
- **commit message**: "login guide remodeling(bullet point)"
- **수정 파일**: identity-provider.ftl
-  2024/09/22. by eunhyekim811

### 수정 사항
- **소셜 로그인 버튼**: 소셜 로그인 버튼 배경색 및 문구 추가
- **commit message**: "google button remodeling"
- **수정 파일**: identity-provider.ftl
-  2024/09/22. by eunhyekim811

### 수정 사항
- **로그인 버튼**: 로그인 버튼 마우스 오버 시 색 조정
- **commit message**: "button remodeling - hover"
- **수정 파일**: button.ftl
-  2024/09/22. by eunhyekim811
