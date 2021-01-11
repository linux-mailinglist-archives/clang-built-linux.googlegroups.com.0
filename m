Return-Path: <clang-built-linux+bncBDFKPCXSSAHBBZ566L7QKGQE6RFRXIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A63A2F1E54
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 19:56:40 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id e11sf105944edn.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 10:56:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610391400; cv=pass;
        d=google.com; s=arc-20160816;
        b=HUOly/wKpB7okmKf3RgTJmZhZKu5VfWpPcj6bCsc11SXt2gyBA6m3cHHPiiRo/vSdm
         WWqY9cfuIgm/Kdp4xUKKsE5jkYxS7GE97I/lJM2G0WHGyPYA5N+td+II55vVeIFp0HJ6
         ASm5xBgHrO7/JgVLmwbqER66533XX4YBRAq6OIy58PY/We1Ek7Nhi1yvx8qwgUdjIxxp
         1rKo8Lj1wiAotGnJ3YtPpzh+l11C2zcE5NsZmrmUB24gOKwg5BQLA7HjLDphoDK5VRCc
         WInXcxnxc6nOvGNFlMVyRaSDiAphgGBLFbHbduVqAzWvCwudNZrgcyP9Zq4V15etreSJ
         7woA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:auto-submitted
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:reply-to:from:date:sender:dkim-signature;
        bh=TFpwDt5JYjZrtPEAy4NwfEUHy+wis7iTgsBVADpPjbM=;
        b=RxutM+9FVTm6ylaJFWmQhK31HQ0wHEUpXO97AHJ+KAW9vFfHIlbFMA353XOq8eQ4Vt
         UjGvJrrn9h/JTqGSm86dgeG/Q2d50bR3nUEIvzzmTxuXKClxEuQ5nF/uQsYXslG/79tn
         64aCnmneg29XIdOro+zHfKQWRPdGPNLvQ7ON4g0AR19yZxBzQaqiBCHstb/W6nyKfGSl
         au1PMSY5BQ5g8hBd80CqX29dPsFpnXp6nomWEB8ggaRYLTWXMGj6KeczgUhIQmHDliHk
         yBExkwF9R2XyZVzropOf4JFgtLcrwufvebhtGSLRbe0Lm1U6WrOqmyfeXlnG+o0zkLJF
         Xdmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zendesk.com header.s=zendesk2 header.b=Pq0HOaoj;
       spf=pass (google.com: domain of support@travis-ci.com designates 188.172.138.13 as permitted sender) smtp.mailfrom=support@travis-ci.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:reply-to:cc:message-id:in-reply-to:references
         :subject:mime-version:content-transfer-encoding:auto-submitted
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFpwDt5JYjZrtPEAy4NwfEUHy+wis7iTgsBVADpPjbM=;
        b=bmgHvMoYVBiHJGjeQUK0doEUdP2ONAUedM/LNOcks/kKBwvmWKCx0k9cSgNi/TtXsZ
         h6yRs1a1VD2DdMXQqE+yHmI4wMtxFCYwdTEfCYoISt9rmLiJ04cMHmvcJZDa7k/DkL+K
         neg8N8+vdJRfdEWou2HM5zH2fkn29G0/784hGQiUHJT2h71ucA79OIRelcMYBsAVn3h+
         mT+zmhMzi49Nactr4HOdm4tqXATnL7IivLBhJ5Am4Us88foY2hU70XG65xUApqLF69Q4
         sXy3BA2mNzhp1vV+bwFPwQktOqUX/s1OLt9tSNRZSzuY7GHEZB7N6+H1NmvM/aZ4wAE4
         Dsiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:reply-to:cc:message-id
         :in-reply-to:references:subject:mime-version
         :content-transfer-encoding:auto-submitted:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFpwDt5JYjZrtPEAy4NwfEUHy+wis7iTgsBVADpPjbM=;
        b=JGac02pPneQMTA1LjUMlRaUYCYN2BTl7osz63I4PIfqAYACoQ3knGPJoi94XV0EmnY
         pYKoab1MP3YjGBSagAyOLnnGR1TNPInIf7X8utwgMGgXpEZWnB4hlOAVbxNHxuSRyA46
         OtWZl4ESqxdiDax0Y6kfy5Sr24J1ggy5ODoCrxt7MOtz+msXY47QaDrFK03Q2U2hrZFd
         z3v64FN9dh3DHDXOb9bk8u2qKyzTF+pyy0OsR9HZQE6E70XYjAhjx6R0XFcMw4dasG+k
         lVBPKWjLfgVRQr7S/oo3hGpUv6jn5QLB9yOJJIwvGXXXyxy3GgA8JAgJVRGAaNU9uXnr
         RGsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r5VbXi1JD0XCY4oP/rbYQ6nWaYghWLv9KLf4kzHNhc1ZcNmWM
	b07tVICFQYmYFPLMDJk8EQU=
X-Google-Smtp-Source: ABdhPJzgDYBjOdOZF3p9Is++zTvvyv/xRIKIa7PVgZp7fu7YnJb0/ZvRBzf/TDG2rDw5ylugdiNn1w==
X-Received: by 2002:a17:906:5f97:: with SMTP id a23mr650444eju.128.1610391400019;
        Mon, 11 Jan 2021 10:56:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8a9b:: with SMTP id j27ls533690edj.3.gmail; Mon, 11 Jan
 2021 10:56:39 -0800 (PST)
X-Received: by 2002:a05:6402:2066:: with SMTP id bd6mr562706edb.211.1610391399201;
        Mon, 11 Jan 2021 10:56:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610391399; cv=none;
        d=google.com; s=arc-20160816;
        b=JHkQVrBFkbJ0b7jvTR5KUr+VhK5LRY8clXPKJe3kcIp6A39dyrM/tpBlbilv8Qy7jL
         Iuu7dqlOrEEQluy5Gc2k3UkRYNHkO+p6R5luWSraph5phO1g47Q5UOjMM/+nMHE3fQhB
         xLspNctYnzjAPufjnHbEdXeQoMV2WFVrJEVfvejI1oleIFL7v7n4fIIXsEDjEJ5ybsMG
         ULWjC9V3U3A4yw8bhTJeXVW4xTHkW3KzMSP3HeYhiELQvH/TWTqnTYJv8pCnmFGq2+bc
         OUuH6MOyrLZSFxNzIJbi/zxG9qqILWscC29OWn22SkAHXO6YiiF6GPWNOlvhg3q5UNuT
         70uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:auto-submitted:content-transfer-encoding
         :mime-version:subject:references:in-reply-to:message-id:cc:reply-to
         :from:date;
        bh=pzk+iRnuFUH6uo7Cl9WRF8KXKHQ13gM0UsRd21xnxsc=;
        b=FMRMOZIAnZ24WTCc6Kzy/9faGVLpeDUGYFD9j7NLvp3if1WDiFdyWCim3qrX1xPXDN
         QuWJrlTVN/plwBLaC2WRE/MxtmrKa8UiLaif9lXjh1WY0N8Z/+dlq3jnBox+9WF/us5d
         onWnzvPNhvi2cyJYpzOvOEYPXpmN5uYIqdQRgp2opvHAPSD6CcwX6pK4Ys7JVzb/JAHH
         +Too6eeIM7zClQJ3GHcWj3EwZYQ6RLiOzrZOlVnU/ZDmW/9Q4eOldK+7YHGfD7Usz7Q3
         3CZikmpLA5D5CdmvUJk37LK9QroqlYWoW3GYFbPwbecujPuuDURQJtaCTPwEp0d4oizl
         jzGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zendesk.com header.s=zendesk2 header.b=Pq0HOaoj;
       spf=pass (google.com: domain of support@travis-ci.com designates 188.172.138.13 as permitted sender) smtp.mailfrom=support@travis-ci.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
Received: from outbyoip13.pod18.euc1.zdsys.com (outbyoip13.pod18.euc1.zdsys.com. [188.172.138.13])
        by gmr-mx.google.com with ESMTPS id z13si23127ejb.1.2021.01.11.10.56.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 10:56:39 -0800 (PST)
Received-SPF: pass (google.com: domain of support@travis-ci.com designates 188.172.138.13 as permitted sender) client-ip=188.172.138.13;
Received: from zendesk.com (unknown [10.218.217.198])
	by outbyoip13.pod18.euc1.zdsys.com (Postfix) with ESMTP id 4DF2xL60xNz3hhTT;
	Mon, 11 Jan 2021 18:56:38 +0000 (UTC)
Date: Mon, 11 Jan 2021 18:56:38 +0000
From: "Nick Desaulniers (Support)" <support@travis-ci.com>
Reply-To: Support <support@travis-ci.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
 Dan Rue <dan.rue@linaro.org>
Message-ID: <L7VKGOM25K_5ffc9f6678dde_503f05c010585f_sprut@zendesk.com>
In-Reply-To: <CAKwvOdmucoQPfc4ovC847TkG3D+ok0pq3=gsN6VvRVf1Ph4O-Q@mail.gmail.com>
 <L7VKGOM25K_5fd908fd5600d_4b5665bc15886c_sprut@zendesk.com>
References: <L7VKGOM25K@zendesk.com>
 <L7VKGOM25K_5fd908fd52382_52d765b81249e4_sprut@zendesk.com>
 <L7VKGOM25K_5fc7e0596c390_5db245d0310849_sprut@zendesk.com>
 <CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx=DLuwg@mail.gmail.com>
 <CAKwvOdmucoQPfc4ovC847TkG3D+ok0pq3=gsN6VvRVf1Ph4O-Q@mail.gmail.com>
Subject: Request for OSS only credits
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="--==_mimepart_5ffc9f66c8845_503f05c0105938";
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Delivery-Context: event-id-701889556779
Auto-Submitted: auto-generated
X-Auto-Response-Suppress: All
X-Mailer: Zendesk Mailer
X-Zendesk-From-Account-Id: 68b8aed
X-Original-Sender: support@travis-ci.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zendesk.com header.s=zendesk2 header.b=Pq0HOaoj;       spf=pass
 (google.com: domain of support@travis-ci.com designates 188.172.138.13 as
 permitted sender) smtp.mailfrom=support@travis-ci.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
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


----==_mimepart_5ffc9f66c8845_503f05c0105938
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

##- Please type your reply above this line -##

You are registered as a CC on this request (23735). Reply to this email to =
add a comment to the request.

----------------------------------------------

Nick Desaulniers, Jan 11, 2021, 13:56 EST

Hi Erica,
We probably don't meet the requirement "Project must not be sponsored
by a commercial company or organization (monetary or with employees
paid to work on the project)." I'm a paid contributor to this
project. I find this list of requirements to be curious; it's not
listed publicly AFAICT and not from
https://blog.travis-ci.com/oss-announcement which says "Open source
accounts, as always, will be completely free under travis-ci.com."
Having paid contributors doesn't change the fact that the project is
open source, though perhaps "open source accounts" has a different
definition?

Is there a way to get a quote then for more credits? Or are
https://travis-ci.com/organizations/ClangBuiltLinux/plan the only
options? We'd prefer faster builds over additional concurrency, if
available?

----------------------------------------------

Erika Kuntar, Dec 15, 2020, 14:05 EST

Hello Nick=E2=80=8B ,

Thanks for contacting Travis-CI Support! We would love to help.

We offer an Open Source Subscription for free to non-commercial open-source=
 projects. To qualify for an Open Source subscription, the project must mee=
t the following requirements:


- You are a project lead or regular committer (latest commit in the last mo=
nth)
- Project must be at least 3 months old and is in active development (with =
regular commits and activity)
- Project meets the OSD specification
- Project must not be sponsored by a commercial company or organization (mo=
netary or with employees paid to work on the project)
- Project can not provide commercial services or distribute paid versions o=
f the software

Does this sound like you and your project? We'd be very happy to support yo=
u!

However, if your project does not match these requirements or you have furt=
her questions [1], please feel free to ask!

We look forward to your response if you meet these requirements to proceed =
with the next steps.

Thank you

[1] https://docs.travis-ci.com/user/billing-faq/

--
Erika

Your Friends @Travis CI

Test and Deploy with Confidence.
www.travis-ci.com

=E2=80=94
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: contact@travis-ci.org | Amtsgericht Charlottenburg, Berlin, HRB =
140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: D=
E282002648

----------------------------------------------

Nick Desaulniers, Dec 2, 2020, 13:43 EST

To Whom it May Concern,
Regarding our TravisCI project
(https://travis-ci.com/github/ClangBuiltLinux/continuous-integration),
I noticed that our last build stopped on Nov 20, 2020 with a banner
that reads:

"Builds have been temporarily disabled for public repositories due to
a negative credit balance. Please go to the Plan page to replenish
your credit balance or alter your Consume paid credits for OSS
setting."

I suspect this is in regards to the blog post:
https://blog.travis-ci.com/oss-announcement

On https://travis-ci.com/organizations/ClangBuiltLinux/plan, I can see
"You have used 16090 of 10000 credits; -6090 credits available." The
toggle for "Consume paid credits for OSS" looks enabled. When I click
on the "OSS only credits" I see we have 0 credits.

If I understand the note on
https://docs.travis-ci.com/user/billing-overview/#credits-vs-oss-only-credi=
ts
correctly, which reads:

"On occassion, an allotment of OSS Only credits may be granted by
Travis CI. These credits may be used only for builds over public
repositories and are meant for open source support. The OSS credits
may be assigned as one time pool or renewable pool, subject to case by
case assesment of Travis CI staff."

Then it sounds like we need to make a formal request for Travis CI
staff to review our case?

For more information on our project, it's performing build+boot tests
of the open source Linux kernel via the open source compiler toolchain
LLVM, then boot testing the resulting image via the open source
machine emulator QEMU using the open source Buildroot utility to
create minimal userspace images.

I am actively working with Linaro to offload the relatively expensive
builds to their tuxbuild service; I would still like to use Travis CI
for the github integration and ability to share hyperlinks to build
reports when Travis CI spots regressions (based on the number of
branches we're testing, Travis CI helps us spot regressions in the
Linux kernel daily).
--=20
Thanks,
~Nick Desaulniers

--------------------------------
This email is a service from Travis CI.









[L7VKGO-M25K]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/L7VKGOM25K_5ffc9f6678dde_503f05c010585f_sprut%40zendesk.c=
om.

----==_mimepart_5ffc9f66c8845_503f05c0105938
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.=
w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=3D"http://www.w3.org/1999/xhtml"><head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
/>
  <style type=3D"text/css">
    table td {
      border-collapse: collapse;
    }
    body[dir=3Drtl] .directional_text_wrapper { direction: rtl; unicode-bid=
i: embed; }

  </style>
</head>
<body lang=3D"en-us" style=3D"width: 100%!important; margin: 0; padding: 0;=
" xml:lang=3D"en-us">
  <div style=3D"padding: 10px ; line-height: 18px; font-family: 'Lucida Gra=
nde',Verdana,Arial,sans-serif; font-size: 12px; color:#444444;">
    <div style=3D"color: #b5b5b5;">##- Please type your reply above this li=
ne -##</div>
    <p dir=3D"ltr">You are registered as a CC on this request (23735). Repl=
y to this email to add a comment to the request.</p><p dir=3D"ltr"></p><div=
 style=3D"margin-top: 25px" data-version=3D"2"><table width=3D"100%" cellpa=
dding=3D"0" cellspacing=3D"0" border=3D"0" role=3D"presentation">  <tbody><=
tr>    <td width=3D"100%" style=3D"padding: 15px 0; border-top: 1px dotted =
#c5c5c5;">      <table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" b=
order=3D"0" style=3D"table-layout:fixed;" role=3D"presentation">        <tb=
ody><tr>                      <td valign=3D"top" style=3D"padding: 0 15px 0=
 15px; width: 40px;">              <img width=3D"40" height=3D"40" alt=3D""=
 style=3D"height: auto; line-height: 100%; outline: none; text-decoration: =
none; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5=
px;" src=3D"https://secure.gravatar.com/avatar/5fc870b8c20eabbd093381ac52df=
9726?size=3D40&amp;default=3Dhttps%3A%2F%2Fassets.zendesk.com%2Fimages%2F20=
16%2Fdefault-avatar-80.png&amp;r=3Dg" />            </td>                  =
  <td width=3D"100%" style=3D"padding: 0; margin: 0;" valign=3D"top">      =
      <p style=3D"font-family:'Lucida Grande','Lucida Sans Unicode','Lucida=
 Sans',Verdana,Tahoma,sans-serif; font-size: 15px; line-height: 18px; margi=
n-bottom: 0; margin-top: 0; padding: 0; color:#1b1d1e;" dir=3D"ltr">       =
                       <strong>Nick Desaulniers</strong>                   =
       </p>            <p style=3D"font-family:'Lucida Grande','Lucida Sans=
 Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; font-size: 13px; line-he=
ight: 25px; margin-bottom: 15px; margin-top: 0; padding: 0; color:#bbbbbb;"=
 dir=3D"ltr">              Jan 11, 2021, 13:56 EST            </p>         =
                           <div class=3D"zd-comment" dir=3D"auto" style=3D"=
color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahom=
a', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0=
"><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode=
', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-he=
ight: 22px; margin: 15px 0">Hi Erica,<br />We probably don't meet the requi=
rement "Project must not be sponsored<br />by a commercial company or organ=
ization (monetary or with employees<br />paid to work on the project)." I'm=
 a paid contributor to this<br />project. I find this list of requirements =
to be curious; it's not<br />listed publicly AFAICT and not from<br /><a hr=
ef=3D"https://blog.travis-ci.com/oss-announcement" target=3D"_blank" rel=3D=
"nofollow noreferrer">https://blog.travis-ci.com/oss-announcement</a> which=
 says "Open source<br />accounts, as always, will be completely free under =
travis-ci.com."<br />Having paid contributors doesn't change the fact that =
the project is<br />open source, though perhaps "open source accounts" has =
a different<br />definition?</p><p dir=3D"ltr" style=3D"color: #2b2e2f; fon=
t-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-s=
erif; font-size: 14px; line-height: 22px; margin: 15px 0">Is there a way to=
 get a quote then for more credits? Or are<br /><a href=3D"https://travis-c=
i.com/organizations/ClangBuiltLinux/plan" target=3D"_blank" rel=3D"nofollow=
 noreferrer">https://travis-ci.com/organizations/ClangBuiltLinux/plan</a> t=
he only<br />options? We'd prefer faster builds over additional concurrency=
, if<br />available?</p></div>                                  </td>      =
  </tr>      </tbody></table>    </td>  </tr></tbody></table><p dir=3D"ltr"=
></p><table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" border=3D"0"=
 role=3D"presentation">  <tbody><tr>    <td width=3D"100%" style=3D"padding=
: 15px 0; border-top: 1px dotted #c5c5c5;">      <table width=3D"100%" cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"table-layout:fixed;" =
role=3D"presentation">        <tbody><tr>                      <td valign=
=3D"top" style=3D"padding: 0 15px 0 15px; width: 40px;">              <img =
width=3D"40" height=3D"40" alt=3D"" style=3D"height: auto; line-height: 100=
%; outline: none; text-decoration: none; -webkit-border-radius: 5px; -moz-b=
order-radius: 5px; border-radius: 5px;" src=3D"https://travisci.zendesk.com=
/system/photos/3601/1804/6359/image0__1_.jpeg" />            </td>         =
           <td width=3D"100%" style=3D"padding: 0; margin: 0;" valign=3D"to=
p">            <p style=3D"font-family:'Lucida Grande','Lucida Sans Unicode=
','Lucida Sans',Verdana,Tahoma,sans-serif; font-size: 15px; line-height: 18=
px; margin-bottom: 0; margin-top: 0; padding: 0; color:#1b1d1e;" dir=3D"ltr=
">                                                                    <stro=
ng>Erika Kuntar</strong> (Travis CI)                                       =
                     </p>            <p style=3D"font-family:'Lucida Grande=
','Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; font-size:=
 13px; line-height: 25px; margin-bottom: 15px; margin-top: 0; padding: 0; c=
olor:#bbbbbb;" dir=3D"ltr">              Dec 15, 2020, 14:05 EST           =
 </p>                                    <div class=3D"zd-comment" dir=3D"a=
uto" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida G=
rande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; =
margin: 15px 0">Hello Nick=E2=80=8B ,<br /><br />Thanks for contacting Trav=
is-CI Support! We would love to help. <br /><br />We offer an Open Source S=
ubscription for free to non-commercial open-source projects. To qualify for=
 an Open Source subscription, the project must meet the following requireme=
nts:<br /><br /><ul dir=3D"auto" style=3D"list-style-type: disc; margin: 10=
px 0 15px 30px; padding-left: 15px"><li style=3D"font-family: 'Lucida Sans =
Unicode', 'Lucida Grande', 'tahoma', Verdana, sans-serif; font-size: 14px; =
line-height: 22px; margin: 10px 0">You are a project lead or regular commit=
ter (latest commit in the last month)<br /></li><li style=3D"font-family: '=
Lucida Sans Unicode', 'Lucida Grande', 'tahoma', Verdana, sans-serif; font-=
size: 14px; line-height: 22px; margin: 10px 0">Project must be at least 3 m=
onths old and is in active development (with regular commits and activity)<=
br /></li><li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande',=
 'tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin:=
 10px 0">Project meets the <a href=3D"https://opensource.org/docs/osd" rel=
=3D"noreferrer">OSD</a> specification<br /></li><li style=3D"font-family: '=
Lucida Sans Unicode', 'Lucida Grande', 'tahoma', Verdana, sans-serif; font-=
size: 14px; line-height: 22px; margin: 10px 0">Project must not be sponsore=
d by a commercial company or organization (monetary or with employees paid =
to work on the project)<br /></li><li style=3D"font-family: 'Lucida Sans Un=
icode', 'Lucida Grande', 'tahoma', Verdana, sans-serif; font-size: 14px; li=
ne-height: 22px; margin: 10px 0">Project can not provide commercial service=
s or distribute paid versions of the software<br /></li></ul><br />Does thi=
s sound like you and your project? We'd be very happy to support you! <br /=
><br />However, if your project does not match these requirements or you ha=
ve further questions [1], please feel free to ask!<br /><br />We look forwa=
rd to your response if you meet these requirements to proceed with the next=
 steps.<br /><br />Thank you<br /><br />[1] <a href=3D"https://docs.travis-=
ci.com/user/billing-faq/" rel=3D"noreferrer">https://docs.travis-ci.com/use=
r/billing-faq/</a><br /><div class=3D"signature"><p dir=3D"ltr" style=3D"co=
lor: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma'=
, Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">=
--<br />
Erika</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans =
Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; =
line-height: 22px; margin: 15px 0">Your Friends @Travis CI<br /><br />
Test and Deploy with Confidence.<br /><a href=3D"http://www.travis-ci.com" =
rel=3D"noreferrer">www.travis-ci.com</a></p><p dir=3D"ltr" style=3D"color: =
#2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Ver=
dana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">=E2=
=80=94<br />
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: <a href=3D"mailto:contact@travis-ci.org" rel=3D"noreferrer">cont=
act@travis-ci.org</a> | Amtsgericht Charlottenburg, Berlin, HRB 140133 B | =
Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: DE282002648<=
/p></div></div><p dir=3D"ltr">                                  </p></td>  =
      </tr>      </tbody></table>    </td>  </tr></tbody></table><p dir=3D"=
ltr"></p><table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" role=3D"presentation">  <tbody><tr>    <td width=3D"100%" style=3D"p=
adding: 15px 0; border-top: 1px dotted #c5c5c5;">      <table width=3D"100%=
" cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"table-layout:fi=
xed;" role=3D"presentation">        <tbody><tr>                      <td va=
lign=3D"top" style=3D"padding: 0 15px 0 15px; width: 40px;">              <=
img width=3D"40" height=3D"40" alt=3D"" style=3D"height: auto; line-height:=
 100%; outline: none; text-decoration: none; -webkit-border-radius: 5px; -m=
oz-border-radius: 5px; border-radius: 5px;" src=3D"https://secure.gravatar.=
com/avatar/5fc870b8c20eabbd093381ac52df9726?size=3D40&amp;default=3Dhttps%3=
A%2F%2Fassets.zendesk.com%2Fimages%2F2016%2Fdefault-avatar-80.png&amp;r=3Dg=
" />            </td>                    <td width=3D"100%" style=3D"paddin=
g: 0; margin: 0;" valign=3D"top">            <p style=3D"font-family:'Lucid=
a Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; fo=
nt-size: 15px; line-height: 18px; margin-bottom: 0; margin-top: 0; padding:=
 0; color:#1b1d1e;" dir=3D"ltr">                              <strong>Nick =
Desaulniers</strong>                          </p>            <p style=3D"f=
ont-family:'Lucida Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Taho=
ma,sans-serif; font-size: 13px; line-height: 25px; margin-bottom: 15px; mar=
gin-top: 0; padding: 0; color:#bbbbbb;" dir=3D"ltr">              Dec 2, 20=
20, 13:43 EST            </p>                                    <div class=
=3D"zd-comment" dir=3D"auto" style=3D"color: #2b2e2f; font-family: 'Lucida =
Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 1=
4px; line-height: 22px; margin: 15px 0"><p dir=3D"ltr" style=3D"color: #2b2=
e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana=
, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">To Whom i=
t May Concern,<br />Regarding our TravisCI project<br />(<a href=3D"https:/=
/travis-ci.com/github/ClangBuiltLinux/continuous-integration" target=3D"_bl=
ank" rel=3D"nofollow noreferrer">https://travis-ci.com/github/ClangBuiltLin=
ux/continuous-integration</a>),<br />I noticed that our last build stopped =
on Nov 20, 2020 with a banner<br />that reads:</p><p dir=3D"ltr" style=3D"c=
olor: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma=
', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0"=
>"Builds have been temporarily disabled for public repositories due to<br /=
>a negative credit balance. Please go to the Plan page to replenish<br />yo=
ur credit balance or alter your Consume paid credits for OSS<br />setting."=
</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unico=
de', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-=
height: 22px; margin: 15px 0">I suspect this is in regards to the blog post=
:<br /><a href=3D"https://blog.travis-ci.com/oss-announcement" target=3D"_b=
lank" rel=3D"nofollow noreferrer">https://blog.travis-ci.com/oss-announceme=
nt</a></p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans=
 Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px;=
 line-height: 22px; margin: 15px 0">On <a href=3D"https://travis-ci.com/org=
anizations/ClangBuiltLinux/plan" target=3D"_blank" rel=3D"nofollow noreferr=
er">https://travis-ci.com/organizations/ClangBuiltLinux/plan</a>, I can see=
<br />"You have used 16090 of 10000 credits; -6090 credits available." The<=
br />toggle for "Consume paid credits for OSS" looks enabled. When I click<=
br />on the "OSS only credits" I see we have 0 credits.</p><p dir=3D"ltr" s=
tyle=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande'=
, 'Tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin=
: 15px 0">If I understand the note on<br /><a href=3D"https://docs.travis-c=
i.com/user/billing-overview/#credits-vs-oss-only-credits" target=3D"_blank"=
 rel=3D"nofollow noreferrer">https://docs.travis-ci.com/user/billing-overvi=
ew/#credits-vs-oss-only-credits</a><br />correctly, which reads:</p><p dir=
=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Luci=
da Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22=
px; margin: 15px 0">"On occassion, an allotment of OSS Only credits may be =
granted by<br />Travis CI. These credits may be used only for builds over p=
ublic<br />repositories and are meant for open source support. The OSS cred=
its<br />may be assigned as one time pool or renewable pool, subject to cas=
e by<br />case assesment of Travis CI staff."</p><p dir=3D"ltr" style=3D"co=
lor: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma'=
, Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">=
Then it sounds like we need to make a formal request for Travis CI<br />sta=
ff to review our case?</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-fami=
ly: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; =
font-size: 14px; line-height: 22px; margin: 15px 0">For more information on=
 our project, it's performing build+boot tests<br />of the open source Linu=
x kernel via the open source compiler toolchain<br />LLVM, then boot testin=
g the resulting image via the open source<br />machine emulator QEMU using =
the open source Buildroot utility to<br />create minimal userspace images.<=
/p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicod=
e', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-h=
eight: 22px; margin: 15px 0">I am actively working with Linaro to offload t=
he relatively expensive<br />builds to their tuxbuild service; I would stil=
l like to use Travis CI<br />for the github integration and ability to shar=
e hyperlinks to build<br />reports when Travis CI spots regressions (based =
on the number of<br />branches we're testing, Travis CI helps us spot regre=
ssions in the<br />Linux kernel daily).<br />-- <br />Thanks,<br />~Nick De=
saulniers</p></div>                                  </td>        </tr>    =
  </tbody></table>    </td>  </tr></tbody></table></div>
  </div>
  <div style=3D"padding: 10px ; line-height: 18px; font-family: 'Lucida Gra=
nde',Verdana,Arial,sans-serif; font-size: 12px; color: #aaaaaa;&#10;    mar=
gin: 10px 0 14px 0; padding-top: 10px; border-top: 1px solid #eeeeee;">
    This email is a service from Travis CI. Delivered by <a href=3D"https:/=
/www.zendesk.com/support/?utm_campaign=3Dtext&amp;utm_content=3DTravis+CI&a=
mp;utm_medium=3Dpoweredbyzendesk&amp;utm_source=3Demail-notification" style=
=3D"color: black;" target=3D"_blank">Zendesk</a>
  </div>
<span style=3D"color:#FFFFFF" aria-hidden=3D"true">[L7VKGO-M25K]</span><div=
 itemscope=3D"" itemtype=3D"http://schema.org/EmailMessage" style=3D"displa=
y:none">  <div itemprop=3D"action" itemscope=3D"" itemtype=3D"http://schema=
.org/ViewAction">    <link itemprop=3D"url" href=3D"https://support.travis-=
ci.com/hc/requests/23735" />    <meta itemprop=3D"name" content=3D"View tic=
ket" />  </div></div>

</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/L7VKGOM25K_5ffc9f6678dde_503f05c010585f_sprut%=
40zendesk.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google=
.com/d/msgid/clang-built-linux/L7VKGOM25K_5ffc9f6678dde_503f05c010585f_spru=
t%40zendesk.com</a>.<br />

----==_mimepart_5ffc9f66c8845_503f05c0105938--
