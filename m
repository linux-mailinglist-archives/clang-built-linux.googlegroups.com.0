Return-Path: <clang-built-linux+bncBD66FMGZA4IMZLXH5ICRUBEODV7IE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BEE91A12
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 00:55:09 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id y187sf1052982vkf.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 15:55:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566168908; cv=pass;
        d=google.com; s=arc-20160816;
        b=ARU2OmT0PaPaj72gA5+aO8ghWvwGQN6YeKnV6VhGg85cSTl45wQjH4sChA/zN2C4fk
         LhQX2kD/Lqz/uT4DSEgxskSYRsBtv3eR+xdMdc9JMLyUoEFaPTcjl+MApuvAlsXhTvJ5
         oE2HBbdZPNDSffriU7WLVUmJ0HnciA1E8cKjWiea+7ngKvZuCW/n+0YxfiD7rQB3Mu+k
         SCSqZK2fMfg1qm2ghVGP1/36KEs5czNTWbR26PRPIGiS2rp1FRac88Mb+KDGiFEjMtJN
         GiSmFjbJWltDrJQ51iP16O9urwgQDgXaQ1uN8q4c4DerS6PPMNAIUQNNm+4sWvfps6Gn
         pZIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=tfcIrMpTfwciRg7PEPnUE1hV6S/j6bJ/WzaiaF3gl4w=;
        b=uKFeFlAjtyv6xagXBaY7W/pTNc/KnHV9nT6aOWuW4pPwW2FjjAtHIg8kZLsFKNGnpK
         urWJ49Nlquv9M/HNdDXCXSP20VN65+m/IrWS35nCv3qO+xYnD6rgVUkCffutj2ebZu93
         fgJM7blkOjIiP1F0LhZ8g7/wOnNKL/2x6caWVPrO9w6QFYDMYDbe61XgCiZ1KXi2m4Sm
         1ey4/Vhrhor1IBxoiA/NDWRXDbbmutUManVWNiLs9AtYBpFTkNUA6WCOV09+TeGPgEPk
         zpNVZjT6DPGbgtuBr4GEz1ZbKZDCSJtv6DpmehCuUhIoa8/x0CkcviQc6BLgo/To9paa
         VR6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kSI8U91d;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tfcIrMpTfwciRg7PEPnUE1hV6S/j6bJ/WzaiaF3gl4w=;
        b=Ifo8YpDsXPKlY+1Ak8XweaSAkCpS5wymEXs4tCJCDvUUyY1ZANbNw5gzweekStlMbz
         RpYTFtLFOcIouH6YtA48ri56DSPTF7+5F07h+38s3FU/a3Ovt7YavFPIa1/o9sJuXYRE
         93Usp8j8ZEJlmAvOOIlDNPJVB7Jj6mqnOLwawg1KmjgbCiQ4gLXOt7SkdqY3Il2guJPy
         cd9O9ratXPsiAl2V/kx1htMBAoSaZIl4EWmiBvkPRMMaKdclg9swFd7GWN/uB5imSuX6
         3xXSG0AnUUX17xPSEbbSbSWE+dDYGksHf6yWq7bK9a30vfD/D6PbmCjjz35EVFrLzHR/
         7GVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tfcIrMpTfwciRg7PEPnUE1hV6S/j6bJ/WzaiaF3gl4w=;
        b=tCgnt64W2tZueRwSvLi6iHCaFqBfCJW21dknnYYxLQjlWDYzdn8IqFqJc69T/2o9Sr
         Aqcn2Yrq78YVlLn7t4Md+hrAEruVyeJqqvObo1uM60K2ItlVMRuinOpbiLyOJWBtbx+R
         DYHle8JsCGCXussUXk44t2lABhbnP65o+ayFpxYFDwvW6u91WXmLQcAb7xIjppM7HkDA
         vuMjiU1dt5SJLaQCyQSgotd1H6mdiiuV1II/cI5/chxVEb1SzmpC2hCe4hS7CZt7GYNW
         G05PCFTyml/67HWQ+IvO+v6rXXKnBd0Km5T46Q4Wia4wcQ4UyqtAI3KvAJ98UFZ4/Wme
         n3Ug==
X-Gm-Message-State: APjAAAVj/9JvHamtzI3ZzDvnU/c3DvEcOa60WzPeyACvAEfM9VPrAhzf
	RtY3S3kklOPXPsTBUQHZKY0=
X-Google-Smtp-Source: APXvYqwArLWBxzH5raxLcwMoQlaaqtYAQ7zv75SzWgClWOiN8g0Ur2AuvdzjP8RJ2XUdu8MIiCr2kA==
X-Received: by 2002:a67:5cc7:: with SMTP id q190mr12710450vsb.174.1566168908753;
        Sun, 18 Aug 2019 15:55:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2686:: with SMTP id t6ls853941uao.8.gmail; Sun, 18 Aug
 2019 15:55:08 -0700 (PDT)
X-Received: by 2002:ab0:6345:: with SMTP id f5mr12221099uap.35.1566168908093;
        Sun, 18 Aug 2019 15:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566168908; cv=none;
        d=google.com; s=arc-20160816;
        b=C5f/UCBvhIOtjL7HP/9NWYV0VoN/tDSD5o+7/fHKLgcv9Ci/te/4gQogwlNm9Fv8Y3
         dLI+cwUpxPvL60fSlS/RJ0b2qFvQHLq8AH6dV70Jzcv7QqQmK1FfOE6prLb/VUrTQoSK
         ZwVZ+uJDlsceNUpWOYoste0F55eBMEcAr1vP2G+dVXwKkMPTdAuXMrZ0Odz8+5eS3Cg1
         m6roC+L5pEgZJoEqHO5fclUclGtQDmVlSPWgnp3TV33yvdLCXIZ+GEIh88jSJy4ZCaWb
         MdlveURYcbYyTFePop4srNwhuiqA1RTh45uyrwMvqDa1XdTO81sFbd+tYPe/0r+DD+TJ
         Z2vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=6qtbzsxnC/1WI2royq7vPtIbg0kbVgYsBwh1dBGL5gE=;
        b=V5BdXbTuneGS7W9HK+lO4OgtL/Kcs8JLbFH7X2iJs92Z7a0yLSA7zeYYNfrSOfnROW
         TcNlnY6T5Mmme5wuJLJklAhZYTAC6m5VX0EyEN2bScEvmlvLKSW4o4c6OhAL8QEf0s3k
         Na7dusiCZRMrr8gcxs2C+FQxufj6VsgNN/yCG6/qjjceuSSkvI/XoqTWfA7PuZnJwr0m
         /oGkb2q9ijuiWBTYpuOxJigqJKDT2oGKOmICZ7XfLix625sKMI5s9bHy0bGEri0Yn/vq
         Il98cS+E5dB898YUNJO4/0l4s00Z/zpZIAWRJ59zIQkUXUFie4iP+UorU4vXTLrLuOa/
         sY5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kSI8U91d;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com. [2607:f8b0:4864:20::e34])
        by gmr-mx.google.com with ESMTPS id c10si685860uao.0.2019.08.18.15.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 15:55:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e34 as permitted sender) client-ip=2607:f8b0:4864:20::e34;
Received: by mail-vs1-xe34.google.com with SMTP id i128so7127527vsc.7
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 15:55:08 -0700 (PDT)
X-Received: by 2002:a67:f44a:: with SMTP id r10mr11444166vsn.212.1566168907408;
 Sun, 18 Aug 2019 15:55:07 -0700 (PDT)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 18 Aug 2019 15:54:56 -0700
Message-ID: <CAGG=3QVfgs24b962DBph0ptnoCh-1DTk4-_=DyDL5EcjBS9Wtg@mail.gmail.com>
Subject: [Announcement] Clang-Built Linux Meet-Up
To: clang linux fellowship <clang-linux-fellowship@google.com>, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000062d95f05906c1db6"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kSI8U91d;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e34 as
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

--00000000000062d95f05906c1db6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*The Clang-Built Linux Meet-Up is Go!*

*Where:* Google campus in Z=C3=BCrich, Switzerland
*When:* 27th-29th September 2019

We're happy to announce the first clang-built Linux meet-up 27th-29th
September in Z=C3=BCrich, Switzerland!

The meet-up is a casual affair with no set agenda. The purpose is to get
together in person to discuss the project. We'll use Google's Z=C3=BCrich c=
ampus
as a central point, but can branch out from there.

Even though there's no formal agenda, if you have a presentation you would
like to give we would love to hear it! Please email Nick Desaulniers and I
if you'd like to give a presentation.

We don't have a webpage set up for this event, so if you're planning on
attending please email me and Nick Desaulniers so that we can get an
estimate of how many people to expect.

We hope to see you there!

Share and enjoy!
-bw

*Logistics*

Map: Google's Z=C3=BCrich Campus <http://Brandschenkestrasse 110, 8002 Z=C3=
=BCrich,
Switzerland>
Hotels: (I've stayed in the first two before. They're pretty cool! The
Engimatt looks interesting.)
B2 Boutique Hotel <https://www.b2boutiquehotels.com/de/>
Sheraton Four-Points Sihl City
<https://www.marriott.com/hotels/travel/zrhfp-four-points-sihlcity-zurich/>
Engimatt Hotel <https://engimatt.ch/en/>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGG%3D3QVfgs24b962DBph0ptnoCh-1DTk4-_%3DDyDL5EcjBS9Wtg%4=
0mail.gmail.com.

--00000000000062d95f05906c1db6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><b><font size=3D"4">The Clang-Built Linux Meet-Up is Go!</=
font></b><div><b><br></b></div><div><b>Where:</b>=C2=A0Google campus in Z=
=C3=BCrich, Switzerland</div><div><b>When:</b>=C2=A027th-29th September 201=
9</div><div><b><br></b></div><div>We&#39;re happy to announce the first cla=
ng-built Linux meet-up 27th-29th September in Z=C3=BCrich, Switzerland!</di=
v><div><br></div><div>The meet-up is a casual affair with no set agenda. Th=
e purpose is to get together in person to discuss the project. We&#39;ll us=
e Google&#39;s Z=C3=BCrich campus as a central point, but can branch out fr=
om there.</div><div><br></div><div>Even though there&#39;s no formal agenda=
, if you have a presentation you would like to give we would love to hear i=
t! Please email Nick Desaulniers and I if you&#39;d like to give a presenta=
tion.</div><div><br></div><div>We don&#39;t have a webpage=C2=A0set up for =
this event, so if you&#39;re planning on attending please email me and Nick=
 Desaulniers so that we can get an estimate of how many people to expect.</=
div><div><br></div><div>We hope to see you there!</div><div><br></div><div>=
Share and enjoy!</div><div>-bw</div><div><br></div><div><b>Logistics</b></d=
iv><div><br></div><div>Map:=C2=A0<a href=3D"http://Brandschenkestrasse 110,=
 8002 Z=C3=BCrich, Switzerland">Google&#39;s Z=C3=BCrich Campus</a></div><d=
iv>Hotels: (I&#39;ve stayed in the first two before. They&#39;re pretty coo=
l! The Engimatt looks interesting.)</div><div><a href=3D"https://www.b2bout=
iquehotels.com/de/">B2 Boutique Hotel</a></div><div><a href=3D"https://www.=
marriott.com/hotels/travel/zrhfp-four-points-sihlcity-zurich/">Sheraton Fou=
r-Points Sihl City</a><br></div><div><a href=3D"https://engimatt.ch/en/">En=
gimatt Hotel</a><br></div><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QVfgs24b962DBph0ptnoCh-1DTk4-_%3DDyDL5=
EcjBS9Wtg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVfgs24b962DBph0ptnoCh-=
1DTk4-_%3DDyDL5EcjBS9Wtg%40mail.gmail.com</a>.<br />

--00000000000062d95f05906c1db6--
