Return-Path: <clang-built-linux+bncBDPINV4F24ORBJ7PZL3QKGQENXNH22Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 923B62069FC
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 04:17:11 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id g14sf1640082wrp.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592965031; cv=pass;
        d=google.com; s=arc-20160816;
        b=pIjKB90OWxuE7IoovpwREHl13vmkFDQsguR3g/ehSIYz3aEMJ5CpKctRROS6NWufrb
         kguEM5sqox3un0oKNMFonh1jA+lGpAUdAZTweqwkw+rUU6Px0vJP/nuCLPI+kIKCunNY
         Xuk9kDK54AaxjSO+eS4w5+BBGz+JaFIayn7SiuAQ86vA42oLAk/4kuW/JvnASRvwHx85
         l/6268OyQBfIg7oXJjwoe9n9xecj27E4MBQAdZmS9S/TMlBfcDBrg5C3pmo+zU8Df44t
         mcEGJglcSlOn4MUHx7urzkivYGw5hpz3jzN3k8CGgVKuMHv3M4eRF+IY+HTLwdHQiuiM
         Svcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:reply-to
         :mime-version:to:subject:from:sender:dkim-signature;
        bh=7ooQAU/vYQi0KBrEhpm4z10uEEJZlNWC+HSKB7YWOt4=;
        b=u7PXMSC0ObvAHUnFOxcUA9aH746GrJvpA1JQq8I03m+r4qudO7/iXQi+DGgAmZQv2t
         FdUijp+HHhGDIv2LXxBe3qpUpVvmovMyxJaLtmQruJ4Cv+BQEgfF326omnJszn6YR+x+
         uaWdFygZ3S0BLcDRYSAIFu/6e9yU+V6VYXvY3/TmvuikX9s/eNjITjKopqYO7APCGjRg
         y27kJ+TjRxVpeUUYQ6azujLpwC9L0oyX6QZn/klnB/27BTCSKz3IZNX0UsZ7LPt6POVX
         IraMfECHnYUKf5UwKLRbp4lrsNMI4EtIAZmJqRrOBvr0IDr3vBSL6HAzaYqeE35KGldY
         bE+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning karen@pei.com does not designate 80.12.242.135 as permitted sender) smtp.mailfrom=karen@pei.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=pei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:mime-version:reply-to:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ooQAU/vYQi0KBrEhpm4z10uEEJZlNWC+HSKB7YWOt4=;
        b=ROLIugjaX5OBOxckd3AlqjGQ5exessmiS8zFOPyaHlw8jzY4uMPAQAYWNOVH4lkWsu
         hJW1YWuhauXRKKRVuvFRfbKmCW+KR50EsN/SiyScpQSQRJ0qosv7TmdwXclzWcGzXGOO
         aW926fv/ltTy/WMbB8GnlGbLTjK3LUU4s8Jb6DySavLwPMc4HmeWEwEz1frDtCB/1CJq
         35M5j/55/WLdqvSAZSa91xYxk35a5e3ND3f6pLF3w/CjpFDALKg1KkFWNoJUJcl1n88O
         HwjLNitZ3Z/TEy02McPutiWjbGw7RACwaY9gZY8kibT2yU4MM/fUHJIZDC4Wvw8NS+qy
         Yc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:mime-version:reply-to
         :date:message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7ooQAU/vYQi0KBrEhpm4z10uEEJZlNWC+HSKB7YWOt4=;
        b=myeLcbqZngxiRgT0pN5CbulfFoYwKzgR4u/jMwr2iIxxqMrBjat9IGdkvzdyQhoduv
         9XnNeHaFQR55S44GNj/5YWsTVd2D3zBgBkAWvqnQrVdvBoC4BJDx80vixVlIlHGH9Ewz
         NwHwwFYuc7+I1/vUO7yR6J0+hhwuo1vLs+lWSvQMfVeIBd91681xvXSixRmy5Q7/nZBB
         1Z4E8ZNWbQsHaN9FcvOcpegrEDfhe9vst8oA+roe9BXG45J3xWTL5E+JDBjpkhlucl6q
         lYJZBnygqU0vYXTRP0XoUt2oFdeK2+t3iZlnPc8nPcJ5uYlEcNaXU78uz5aLpJjsLgQc
         Dy1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KGYCHF1xcUjAQxUM7ilHG7hFm40ktgIK/doA8j1wbP1AJUkLf
	qbf6StVm+0Tc9hlgvEZn09E=
X-Google-Smtp-Source: ABdhPJwansnQI6BQ2dNsesTxAkUKLfIH1mg9Nq7XU9XHOQ18wnRcy7mvKxQYUZjBg3k2N203Y3oKAA==
X-Received: by 2002:adf:d0d0:: with SMTP id z16mr11472202wrh.95.1592965031120;
        Tue, 23 Jun 2020 19:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls793482wru.0.gmail; Tue, 23 Jun
 2020 19:17:10 -0700 (PDT)
X-Received: by 2002:adf:ec4e:: with SMTP id w14mr29445551wrn.280.1592965030632;
        Tue, 23 Jun 2020 19:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592965030; cv=none;
        d=google.com; s=arc-20160816;
        b=G9QehAZ5qSYc2J5ce53fhrygYDgE+lCOP5+slMpoUbgjufoCHnuJVQnIqQ8n3siVIY
         EQ8Mz3rvkPyYpHhhJlVZyv37szIWnMePOTPg0k+boLDMj9c4jRYlZ84QsUWAbY9FQKgT
         Jdyr4IOht6ZEhi2IJWkUkhHIjDg2D9Zj2EB1tpO/tIUjLPLlFGoG3Cw8X8YgPCn4sMbz
         uZuMJhzGw+hm1VFRE294jAKMViTDv9vY53e1nYeRyeNupO8s8qZ/VThIszizJM9CW8Ej
         +ly0O9v2pVfhzuat7jZwhumCrH0Vrdq4PC7R/r9u/SrKxnh2vg3sjLgAWSPq0zsPwZwr
         tL/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:reply-to:mime-version:to:subject:from;
        bh=Wwz8OxjATWlkkFvaDbEaS+1IHUtc/UIlj5SoO6WUZSs=;
        b=PiUFpvaypEyRgUsO7qZnGpbTNBSeyy30trcZUzoVJXeeHE+b7UHWyu6V6/Ej/h7yIz
         6UgULI4lFRhTIyVb8G6F1STUpHSEa8PQhFCdMO+dESlm8J8Pn03+YEmfnsLpsFwk+LCF
         ZQE7eUfzzcT6qKSps8wfbRMQ3dgkvnZUsqlVB2hr5qXIYsIVAKvRMUM9fa6tuEsnIasa
         5xVx46mzhPLAaqIosjlj/N3GJAcgiqiMeZaCEGl5ZnUWxtxL3e/031t5+mG76xYAIIKD
         6JyhgbtMYjThVoTwn8WO+Z9XOLhRMKAFYsmGU3UrJWqoB4UN3bGtp0sl00VjMNQgUUUC
         9TCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning karen@pei.com does not designate 80.12.242.135 as permitted sender) smtp.mailfrom=karen@pei.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=pei.com
Received: from smtp.smtpout.orange.fr (smtp13.smtpout.orange.fr. [80.12.242.135])
        by gmr-mx.google.com with ESMTPS id o201si42093wme.1.2020.06.23.19.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Jun 2020 19:17:10 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning karen@pei.com does not designate 80.12.242.135 as permitted sender) client-ip=80.12.242.135;
Received: from DESKTOP-Q5JCF6G ([90.3.146.230])
	by mwinf5d71 with ME
	id uqCQ220054yUvma03qH8Pa; Wed, 24 Jun 2020 04:17:10 +0200
X-ME-Helo: DESKTOP-Q5JCF6G
X-ME-Date: Wed, 24 Jun 2020 04:17:10 +0200
X-ME-IP: 90.3.146.230
From: "Ms Karen Ngui" <karen@pei.com>
Subject: To ~~~ clang-built-linux@googlegroups.com
To: <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD"
MIME-Version: 1.0
Reply-To: <invoicekngui054@gmail.com>
Date: Tue, 23 Jun 2020 19:17:09 -0700
Message-Id: <230820200617199CAACD5B78$06DD23BA6E@DESKTOPQJCFG>
X-Original-Sender: karen@pei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning karen@pei.com does not designate
 80.12.242.135 as permitted sender) smtp.mailfrom=karen@pei.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=pei.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

This is a multi-part message in MIME format

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD
Content-Type: text/plain; charset="UTF-8"


Kindly confirm if you got my business collaboration In-mail sent to you via LinkedIn.

Thanks. Mrs. Ngui

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/230820200617199CAACD5B78%2406DD23BA6E%40DESKTOPQJCFG.

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
  <META name=3DGenerator content=3D10.90> <META name=3Dviewport content=3D"=
width=3Ddevice-width, initial-scale=3D1"> <META name=3Dformat-detection con=
tent=3Dtelephone=3Dno><title>To ~~~ clang-built-linux@googlegroups.com</tit=
le>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P align=3Dce=
nter><FONT size=3D3 face=3DArial><STRONG><FONT size=3D3 face=3DArial><STRON=
G>Kindly check through email,&nbsp; I sent you a proposal via LinkedIn on t=
he 20th of last month...did you get the message?</STRONG></FONT></P></STRON=
G></FONT> <P align=3Dleft><FONT size=3D3 face=3DArial></FONT>&nbsp;</P></bo=
dy>
 </html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/230820200617199CAACD5B78%2406DD23BA6E%40DESKTO=
PQJCFG?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/=
msgid/clang-built-linux/230820200617199CAACD5B78%2406DD23BA6E%40DESKTOPQJCF=
G</a>.<br />

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD--

