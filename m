Return-Path: <clang-built-linux+bncBAABBMP4S33AKGQEILD5LRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A06601DC2F9
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 01:33:06 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id a69sf4221650pje.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 16:33:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590017585; cv=pass;
        d=google.com; s=arc-20160816;
        b=MY0ISbPWXbGCBRKpFI9WGgVQxvtV0oL2t3AErjYByygN7QaJ3P+PPUN4gL6QG7hQZT
         j4mRIGQi1NEgyRWK85XFEyp3gkHuVODkYl33g0V9+qTPLlmMO+w4Sk+dv37mkP3X8SVw
         vcQOdExOgGLPuxNJZCsK0zB4MiWHDFMtdbr0TgGOZ5KUmvEKUT0RSRmyndC95Thvb+Qh
         JvBhz8jy2R0Lp7FqZR5MsrZKpTJOlwLtkuDdDqfu4fqHcai3NZQt9b9UNznYS+pVwjXG
         lgH4cX81/PEuhdcAiyVt/50QQPdeT2//KBNKLp6/4WPZqfQE9h3+/G8MKfxQrkujbsTr
         pR8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:importance
         :content-transfer-encoding:mime-version:subject:message-id:reply-to
         :from:date:sender:dkim-signature;
        bh=cKI2+Sq8Ak3/pXsnwlbMJI7hj8xpgIdcsWpMg154HU4=;
        b=sfWuqOObJs7BZ47zOMdD9cWxgY7eLmGTtudqSpumhfDnAbwbdFLvOcjbT0fhg3uwra
         vUHTR3Yu4cgYP0Mois/NpYK6hyAVHxtqwcy7xLj0q0vv63aiLAqTBZ9FU00ptsI8kH+O
         2+7f1p9xXBILLz2mrlMHB05aiYT/BiAujhRxua6rNwST/8ZyLrhmvg4fffWAiDNhtO19
         SNA9DFDkbXTD7dL+DiGC9x+VVXeNjXs/vgEndoc1HC6HQt0BCDhogp29efs9ZTocIx7S
         rSFQG0Iq50zba00ct9ZG+zNDAjqd9+v9ISEpH6NeAD/Y5ENNEPCHFWeiV2J2KSOjzK1I
         KL+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 209.17.115.112 is neither permitted nor denied by best guess record for domain of jerry1@mikejerry.me) smtp.mailfrom=jerry1@mikejerry.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:reply-to:message-id:subject:mime-version
         :content-transfer-encoding:importance:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cKI2+Sq8Ak3/pXsnwlbMJI7hj8xpgIdcsWpMg154HU4=;
        b=XPpwL+C8M9S3+ZDn+JMdiifPMYouEOIkKCwJ6J2nFTUJLww7XUd/PP1uR1HZ1/3ZUL
         kc+cAxQM8CUK82/sHlRlSTua+wB3toMIyrHNzDGt6xAl37OHFb1c4kLh/5cGPFiEUBhv
         V4W49jH1nDSNQL9JQYaTD8LbkJIi7j3pf0cwuL3g8V9WhMZZczzjmm4IdN4ogRnSMX+t
         8X0sG6Hmzrs40ZyxrL/eHl/YKfJb9V9ATjdA/ojKFXFk8XFDFvIVjKrjD5baGzsRxGHk
         nD7n35xo8CXyQUr97D+AP+O4zAUgyOr2kYJWziSsHNDwv2Aa0G+o4vPcQxlEWiWi8hbX
         h9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:reply-to:message-id:subject
         :mime-version:content-transfer-encoding:importance:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cKI2+Sq8Ak3/pXsnwlbMJI7hj8xpgIdcsWpMg154HU4=;
        b=twM3VEGKM7crGWvZTnUzEc3siedmvBe2jQnF7AcrIO2OLGkAceStXbPcUuIwMu5u9Y
         k60Nv03oI1QdNsAnGn8gzg1KPt96YXwLRKhZSRI+iwwHkj7EnphGDsjPxBc787iCkVAW
         sf1qvYN0wusy+ODDHMOTlbq8Vf98rP9XN4dslS/7fI2EF/JXIZN/fmKLPYPrBMPNBStO
         P1uVq4aMxij/nXHiB9s92YHdwbVaOkFVU8JN4cEseETnKpLgZi55jBXNZogf4oQ9a2Zs
         lhqH31zBTjuVd6yOZ3Zq4wVsDysxvSzoRgFwQojC3fXEob9RUX+khg0ZJKkgj/9oEm31
         84dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EnsyeYaowX1iOxHXrNF9qXR2wWLSOEqiWo0ch4d8MQMcpRC7Z
	RqhbsRAX5XKN1svbMnqo3co=
X-Google-Smtp-Source: ABdhPJzqm3eoAWE7bGbm9jzaRSrsqQSRcHSOaHdOE7PvcUIzlPGqIWAfKKiakZaQKKSET2of0NO1Ug==
X-Received: by 2002:aa7:829a:: with SMTP id s26mr2906832pfm.40.1590017585370;
        Wed, 20 May 2020 16:33:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c38e:: with SMTP id h14ls161629pjt.1.canary-gmail;
 Wed, 20 May 2020 16:33:05 -0700 (PDT)
X-Received: by 2002:a17:90a:8415:: with SMTP id j21mr7866541pjn.186.1590017585070;
        Wed, 20 May 2020 16:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590017585; cv=none;
        d=google.com; s=arc-20160816;
        b=wcQEIJJX0LSywPlID4knsStIjG3RyvNGAasfYefb5b/YQJ2uMoR/Y0lFfGEBDqXlU1
         JIFVKvMEzHWi2mEZOAkgxtBnCLDuNg1tdTc/O4kptWdJCvhsqLp/XF4ByFwk+zYq5Zx0
         Crbxc+Uoiah1Cq6UThQVo0wnyEnPD6I2MLxjW9Z3r2X7jiKhwW9ce7NGRz7UeNvH7Zut
         Ri683yiG4HxqIuwjDbdq3dlDA2mwvk8Ya5ECv5xX6WkLIc985D/xSHX4KHYw3nGp79Zj
         EgE29/YSN4cYisvde84NGz8cnQAVSnzcwKfvk8OQYUH7fGgXHlfThFAWMVSvpn0Wccd4
         TcXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:importance:content-transfer-encoding:mime-version:subject
         :message-id:reply-to:from:date;
        bh=15cisKZ2qwYD+Tup8MAVH8n8/hpiKp5l/QEw5UED42I=;
        b=V+cPdpvfUe+eSPKhvVb+SzflV5tk9uRclwH0s6yiqDs9zX7daZ9gTr3a5JcPD0aR23
         xsh4xTC/QDpN7Y5nRDSWTvWeBxHYoQvpm4oYz7K2RuKZEwGI9B9/2pprYFUipiQUu9wc
         GCUx0Sj/XFJEIQC1FLLgG1QOveNRYDqrfmW7VRQzW7U5/lo85/50XT/rahtD4nT7T/dF
         CjG3mND2nJoddkfOKvUB0hJKBTdOAdR4pve9bAjW5ysXjcdDPP/YIi57gDMWuGod6vgR
         +gxgCPKywO46rP8wdVpTxor0BZNiLaf3vwcPIx0LoRBYrti0ZXX7Fig/CDqVziQPo7Tf
         +Zpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 209.17.115.112 is neither permitted nor denied by best guess record for domain of jerry1@mikejerry.me) smtp.mailfrom=jerry1@mikejerry.me
Received: from atl4mhob19.registeredsite.com (atl4mhob19.registeredsite.com. [209.17.115.112])
        by gmr-mx.google.com with ESMTPS id g6si259498pjl.1.2020.05.20.16.33.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 16:33:04 -0700 (PDT)
Received-SPF: neutral (google.com: 209.17.115.112 is neither permitted nor denied by best guess record for domain of jerry1@mikejerry.me) client-ip=209.17.115.112;
Received: from atl4dcoxapp01pod7 (atl4dcoxapp01pod7.registeredsite.com [10.30.35.39])
	by atl4mhob19.registeredsite.com (8.14.4/8.14.4) with ESMTP id 04KNWvRY031349
	(version=TLSv1/SSLv3 cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 20 May 2020 19:32:57 -0400
Date: Wed, 20 May 2020 19:32:57 -0400 (EDT)
From: SELFRIDGES RETAIL LIMITED <jerry1@mikejerry.me>
Reply-To: SELFRIDGES RETAIL LIMITED <jerry1@mikejerry.me>
Message-ID: <1540407499.115360.1590017577230@webmail7.networksolutionsemail.com>
Subject: Hi
MIME-Version: 1.0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.2-Rev19
X-Originating-Client: open-xchange-appsuite
To: undisclosed-recipients:;
X-Original-Sender: jerry1@mikejerry.me
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 209.17.115.112 is neither permitted nor denied by best guess
 record for domain of jerry1@mikejerry.me) smtp.mailfrom=jerry1@mikejerry.me
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

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div class=3D"default-style">
   <br>
  </div>
  <div class=3D"io-ox-signature">
   <div class=3D"default-style">
    <div class=3D"yiv6893716229default-style">
     <br>Hi,
    </div>
    <div class=3D"yiv6893716229default-style">
     <br>
    </div>
    <div class=3D"yiv6893716229default-style">
     I write to inform you of a great business opportunity. My names is Jer=
ry Oceane Ivoirien Fran=C3=A7ais, there is a business proposal i will like =
to discuss with you or your ORG. If it interests you please let me know and=
 let's work it our together.
    </div>
    <div class=3D"yiv6893716229default-style">
     Regards
    </div>
    <div class=3D"yiv6893716229default-style">
     <br>Jerry Oceane.
    </div>
   </div>
  </div>=20
 </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/1540407499.115360.1590017577230%40webmail7.net=
worksolutionsemail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/1540407499.115360.1590017577230%40w=
ebmail7.networksolutionsemail.com</a>.<br />
