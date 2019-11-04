Return-Path: <clang-built-linux+bncBD66FMGZA4IL5JMC5YCRUBAAYKS5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A702CEEABC
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 22:06:07 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id v11sf14352439pfm.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 13:06:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572901566; cv=pass;
        d=google.com; s=arc-20160816;
        b=m+/NPZIzaHh0Fs1KC1u5G4dE2ApVeQ5+FRvih92mHLA01DJoyVRvoMQyAAUP0cZQoR
         GCnpT08hXZ9CshSFOsHJ1HqwsVmhW5fXgU9fYppju6g6HoAls2KjlEcKoxT+K0i807FD
         FVyJZP+hHQWbGjsTHl3FbiCmSvSxErj8uUGoEysUcozv+NXhJ2Vi5J9mjpwlh6VBWB5L
         TR4vRnz8NT/cLk8d2VWje8xK0JTAx5YR2UcOxHp5ATKkZ2dBA8r5odqunTVj31CHbiiO
         RK2bEpTUg0j6Ll4oVvCYIxVxtU1iNwa59r1+l7Dw2MeTBtznH6Ecy/hnuo5mvf0DRwRU
         pPVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=rI9uF85/RvFunjGJJAAxg8oyWpQECM278jHdN1Cq7h0=;
        b=GCpF926WtOC835eqLToo6dtq4at6O/MPujBEHxDE6kQ4kkVPrhLhe4jq/bm3/J4ZEg
         AC5XuaH+E7By7qvpQSOHuSuB9PNt+15z4OfDt1IDq5ywY1o8MyoinG4KbKf4+N+eqKZm
         O97SdCnTW2nCnQr/j9VBZZOu9zyWDfwnj5KkiWOwZyVkJWaY+b+/w3lE9iwODAkKA6Iq
         vQNmZOWmdfTNO89X0FuKRi8kn0CVdK1favYGJ4sBvCfhlDpRWtJrUeAlr9nCPzDMRHpV
         zsVThmlQPYLik3cuWt/SelZTRJn5BXM+XPn3mWaua+5zdN0eFX566fEnkhK13IVDYG7i
         drBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DiUwyIr3;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rI9uF85/RvFunjGJJAAxg8oyWpQECM278jHdN1Cq7h0=;
        b=dzeoju+yM/oHc9bHBdxIYKl54gG/fCZI05hHRlHxNk4i04RXanvcUS328bEYYVCqSC
         k3CsYN9cbzrU3ivrBWTY0C+/asZhg9ooFMsfTqpYjiyb2haVGt5M0sRCM9SWyQTVRkQs
         kmVshF/A8tAaH5OB+kDsN/9vI+hbL/X0JHeXdMOVeVjK3gNWGFpBPM0TAQbEvyA3m7qJ
         Voyva/kKZ5csrGyCG12n2JiwtARGKAJSVVaGaSp36N2bYEbziFG7ZGkFeieX9bkDiyMw
         hcNlqzX+/hBup3KSQBXA6K3FcjTRmRIdLy6ZwXfh3gppszF/vLyee+oPQTBqiuQJGLXE
         7Qug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rI9uF85/RvFunjGJJAAxg8oyWpQECM278jHdN1Cq7h0=;
        b=CTCiLUYy79JAM6m4tiJWgnyx2HvAhV4QeAS99yCfXQDp+flsJ0ZVb6I4gCpyDHDKlq
         Ai5LrtLhXTIfelzUoycZ6h7BfQgOMlQAHaMblxZ1j/jEMvgiNiu1wSbtw/lnYbd0NmTl
         z9mKCS37xf2ZTiwhosXlTeZVh6ZLs8Cph6cu+JM1FDtGNfQ7j4NBHgHILIL6K35zVL8q
         CwXztvE2jYOhZVHaWMuPlgcu5Jg8hToODE3Y1Jwdn/kcxQbGCxYdXZj27zi89BfPf9O5
         85kIB/XcdA6U4l5zUuUpPVRTu1DcTH0mGHzf3frzcBBFkLi6o5rAywC9bHd9Mby39siC
         pOfQ==
X-Gm-Message-State: APjAAAWrrq5hETMqifiDLGkEeBIlg102wZ6i9S6UkwawAQiRpUbVvX6U
	zY/iFNNCjydvpzQGbGfZ6yU=
X-Google-Smtp-Source: APXvYqxuezHuzOplExgqUEGMf9qteArmTbmQO0ncOe9aaAmFQBXLMEaqd/BdEiBpirVQM+1m6Pz3lA==
X-Received: by 2002:a17:90a:858a:: with SMTP id m10mr1591557pjn.128.1572901566398;
        Mon, 04 Nov 2019 13:06:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7292:: with SMTP id d18ls3602298pll.13.gmail; Mon,
 04 Nov 2019 13:06:06 -0800 (PST)
X-Received: by 2002:a17:902:bf43:: with SMTP id u3mr28354528pls.339.1572901565920;
        Mon, 04 Nov 2019 13:06:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572901565; cv=none;
        d=google.com; s=arc-20160816;
        b=JApE7sqv3Ca4HXOeWj2qJFPMOnHqOZ3QMH4LyzXW5RCpwKauPBNCPRiO1EHkzdVKvM
         4JsexIAV9Sh2PJmSyUiR9YZ7LfWtqq5mXclcWovucWpL7Dhhw+gz98deOU6JDZK8J5y8
         WgLuSZetnkIEH1506zou0dnL3kutkjoo8P7J/vC4KJcm7jPONPztyOoET2lSGsJUtckW
         TFgZIsdoRkdYyEE8fjsvWypWfdW+AIMC9Il72HEyBqAkvxrVS4wPeiRWyp7V1OHV2jYS
         cLCzgg9YDwORG2eHNTYcAxpz9TPCNyoSW71xhjikH1hKj3iOU2OngIz9dj+vCQo8n3/5
         fitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=4w8Nk1vexr6GISF48V18yjC+e4UBTvl/drSTwDsiF0Y=;
        b=T+Bw/wymSbS9B1cHoOdnS2nBECdVZRnJLZyhQRqUVHq3R5IbU5IQpL0o8zOxP2bKw1
         iP5woCgW+PgIUYUmIKql2KoTrQhmPYHr4p1Uhu4PczrNh18Plau/nhfs8NyzyJGzheUv
         l52Z51ucTlqipGda58QXGkZ1HXN8IT4BdoyUxoyDS0+yJIUfOQ6OxfUz8GUHVsHWbF+t
         cVjYesAslOajNke8VYLfjQN4NFToEcnwXE2wGuBz/3NUPsHzeJsBtnenlL+nvDhxAm+j
         QGHxUnrXjZwIidH/1RxN5m8P1MbNcN1X9AnitlPjl2KCvU3kIxXKlMtX25FlhDrlGXq0
         oZiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DiUwyIr3;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com. [2607:f8b0:4864:20::e36])
        by gmr-mx.google.com with ESMTPS id ba9si630255plb.5.2019.11.04.13.06.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 13:06:05 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e36 as permitted sender) client-ip=2607:f8b0:4864:20::e36;
Received: by mail-vs1-xe36.google.com with SMTP id q21so11964855vsg.3
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 13:06:05 -0800 (PST)
X-Received: by 2002:a67:5d02:: with SMTP id r2mr10123847vsb.212.1572901564574;
 Mon, 04 Nov 2019 13:06:04 -0800 (PST)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 13:05:53 -0800
Message-ID: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
Subject: [Meet-Up] Call For Presentations
To: clang linux fellowship <clang-linux-fellowship@google.com>, clang-built-linux@googlegroups.com, 
	nhuck15@gmail.com
Content-Type: multipart/alternative; boundary="000000000000065d5805968bafd5"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DiUwyIr3;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e36 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--000000000000065d5805968bafd5
Content-Type: text/plain; charset="UTF-8"

*The Official Clang-Built Linux Meet-Up Call For Presentations Announcement*

Now that we have a date for the meet-up and people are starting to sign up,
we need content. :-) We are looking for presentations you think would be
interesting to people. Your presentation could be an hour or half hour,
though I wouldn't focus too much on the time aspect.

If you have a presentation please contact me and Nick to let us know.

Some people have already mentioned presentations they would like to give.
If you did, please let us know again just to verify.

Share and enjoy!
-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWPXoYMwWcDMu%2BsAGgdJPXULw2XjZB76Uhjcx%2Bz6yo9rg%40mail.gmail.com.

--000000000000065d5805968bafd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><b><font size=3D"4">The Official Clang-Built Linux Me=
et-Up Call For Presentations Announcement</font></b></div><div><br></div><d=
iv>Now that we have a date for the meet-up and people are starting to sign =
up, we need content. :-) We are looking for presentations you think would b=
e interesting to people. Your presentation could be an hour or half hour, t=
hough I wouldn&#39;t focus too much on the time aspect.</div><div><br></div=
><div>If you have a presentation please contact me and Nick to let us know.=
</div><div><br></div><div>Some people have already mentioned presentations =
they would like to give. If you did, please let us know again just to verif=
y.</div><div><br></div><div>Share and enjoy!</div><div>-bw</div><div><br></=
div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QWPXoYMwWcDMu%2BsAGgdJPXULw2XjZB76Uhjc=
x%2Bz6yo9rg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWPXoYMwWcDMu%2BsAGgd=
JPXULw2XjZB76Uhjcx%2Bz6yo9rg%40mail.gmail.com</a>.<br />

--000000000000065d5805968bafd5--
