Return-Path: <clang-built-linux+bncBDFKPCXSSAHBBWFJ3CBQMGQEHXFI3UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B9535E8B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 00:02:00 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id 33-20020adf80240000b02900f9e2646f9asf54415wrk.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 15:02:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618351320; cv=pass;
        d=google.com; s=arc-20160816;
        b=HSSdOsP2Xf6HlLMfsuJymRE1ultTrFICCaV5zmnKsX2t94xn6Is9wANDwPqyseO45C
         bSFYl2c8GqNwBi0/LVRtTOxyJyElBwsAwUVQDesvUSh6g8ytlvuCijLJMdZOLGuD21uw
         TXA8egOYYbrfCukeU7VXxf//kvH5ks3ynf91MWPiw5NmSWtFyEpb79hMvFUhsUzSrblQ
         vWunUB8Z/z+IwqpyeHb/z6blxe/rh+jOlxwRNztUObUrYW2qBEFepQ2Nrvp6JGATeVlM
         nwFdjo3daKwRkjFMAlQr4O+qU45qk0zN0ZrqiNYualJ0wNukwLkfuyAdqhCIRFH2E4Uo
         pO0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:auto-submitted
         :content-transfer-encoding:mime-version:subject:in-reply-to
         :message-id:cc:reply-to:from:date:sender:dkim-signature;
        bh=PYz2grgRKEZOqvkFH4sUDnB3+AYyWdDUBhtjbzKoGPk=;
        b=SpaX4oqlNOF6S3WRptRScXl8D8TyBBpUp3grO/c/KdbIgHI1ukdR5QLrQw4GQmERao
         GSeYDvKkNrzP0F4SI3a6ZAPgwQ2i5lzBs9MG81+MTS02rg8a9gIX6o5VjlDsKYx/Cee3
         V5yfq4VGidha+F7MvVvY/TxwtQbIricppnr2LvqKhqqO725w84VeatkwcOn/Cq0NEV9Z
         pePITjr7TMab7zpkGeKnsu8zR1dhwFTQR7G3jZuhgaT7EWfFmBxOuTokLjl30yAb7sOw
         Lx7cJI77FygB8DEQ1v4PlPaaIwyuNglwy+mu6XtioivsJSawPejXgRqfqkLhPZidvBN4
         NiMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zendesk.com header.s=zendesk2 header.b=NuuvMiBA;
       spf=pass (google.com: domain of support@travis-ci.com designates 188.172.138.11 as permitted sender) smtp.mailfrom=support@travis-ci.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:reply-to:cc:message-id:in-reply-to:subject
         :mime-version:content-transfer-encoding:auto-submitted
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYz2grgRKEZOqvkFH4sUDnB3+AYyWdDUBhtjbzKoGPk=;
        b=JOJtkJnrFQeaeM1b1+sPwqB6JXNFuZXivgiZIXcFdunlMIic6DrKJV4bI8UDb5phJ7
         /jy+XMdnnT8GbGpEyLu+gokbBS/1UwSFAnNIzcLmJo7d9vC2dHajJxvevMVgS0qfc+wa
         +gZlXCOSSVDDvclttujtqgmKtW1IRLRb5OhGMYJ4lYUbZELMoFIWwzJAtqYzw/KWsMDP
         anROp6Mjq1A6yDwfPtNr0NWF+uDZZdxZgKBzatS5aUpz0g/NWQwkAB4RD9z/z5BbiJea
         /i/ILYxZMlh50BwiEN1/FGmJvi+I2YOpapFp0UzBl3H+iDV0ivC/KmgiIDNsKo1jC68p
         +67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:reply-to:cc:message-id
         :in-reply-to:subject:mime-version:content-transfer-encoding
         :auto-submitted:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PYz2grgRKEZOqvkFH4sUDnB3+AYyWdDUBhtjbzKoGPk=;
        b=beC+3vxn5V0ywVCNNLVPZ9o+39rWV8MwgUgFa9iF7G1Il+LLELdpWJPkeSZw4EAUvR
         jIidlM2tJ7DriDXGGmxJJA9K2coJsncOZZewczaicjLohqQTM+/Y/hDQIRyGknBww3it
         3XX+TU/CQ94O56IBdga3+8WFJZD+Z3p7WM2GVB8cdNyHulpxeZgfSmxQ419iJTGKdoo3
         YBC/Im0ZApt65lap8N3vPk1i15NIs8nnxqtJUD12y5Ls49fA85dGl/zvYaacofWb2w+F
         hebLeU/RyKtxhkpb2+iVxDWj/LFPgDgsNodPRBULKzmkCGNwfWt7lE/N6a7W8ZvoUiY/
         dwJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335tdTkktUNkYflLmOdbV/BkHJUf41uE0wVcxJJxcptU9/mQ56/
	4/sjUNL3APTE2EimoxSG7eE=
X-Google-Smtp-Source: ABdhPJw6gUfMudppp1uCfzYZwz8duzjKE1cVbs2ne/ySihmPLNLJZCmurbqM0T7Gpk01X7iqzHKyYw==
X-Received: by 2002:adf:ba54:: with SMTP id t20mr10707363wrg.353.1618351320331;
        Tue, 13 Apr 2021 15:02:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls350843wrz.0.gmail; Tue, 13 Apr
 2021 15:01:59 -0700 (PDT)
X-Received: by 2002:a5d:4312:: with SMTP id h18mr38706698wrq.193.1618351319443;
        Tue, 13 Apr 2021 15:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618351319; cv=none;
        d=google.com; s=arc-20160816;
        b=FvF4Fv3dCfTwKa6zTVH71g1hdJANEThDFol6uXZyljEj9o26FiTNpeSzXult+qmFDK
         /Bck1RjQoeyVGDfIzaBz21HThEbIpom9QulwTckfooRW1wMCNUCa1ghulGh5o4cVcZtZ
         5UmQrWHdI9axRR9T1KrwzQF3PMhZaB+9v8kDFssgmkA93040EGtYRD9vHbp+E0FOgRg0
         AHpSw7kP1FNRXO61sf7ZxlHqi2B6KT13a9IDp54n0Hn0s7Xq7SfhfkBNrDoSPQtxmcFJ
         YaF3IR/foXCB7dtVlIPjJjE8iezq6pGjBWYHhKkQcbdJtB1Vy/czOZ6ur9aUfpyeYPp8
         4+OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:auto-submitted:content-transfer-encoding
         :mime-version:subject:in-reply-to:message-id:cc:reply-to:from:date;
        bh=aONaVoJ/w/BVO52fPWbSqFzqQ5FMEz1mmTvB+VtEvmY=;
        b=FfYkV8GUiBctKafY8g09ajyjY5NVwqovd0k5xqO5qYIAfzg7XJtQlMxhXfPPnbO5fe
         1mUvUFrX7Br7LFxRxtvHeB95AF99IswoEzoNo+L1FIl9uTrUzuMbPjfjVeKdRAKUjYmr
         an7kHV4HrkDNlt01YVHvmdyyD7Ny1/IgyHd2ibLj5vf3E768m45Zi5h0/DbbzUxGMs0g
         5Afejl4BqqfnhT9JZIv4vlnV/VpsQwqxCWqVyXZgaBilt72TnLiIEqLsFZVjO+FcVnyI
         eHCS5IRqFqtvUFkL+Jn4Iw20L7fz8M/qL97VU7VNDQl8JW0Ap9FE45dKG+WBCwh5OWt/
         /dag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zendesk.com header.s=zendesk2 header.b=NuuvMiBA;
       spf=pass (google.com: domain of support@travis-ci.com designates 188.172.138.11 as permitted sender) smtp.mailfrom=support@travis-ci.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=travis-ci.com
Received: from outbyoip11.pod18.euc1.zdsys.com (outbyoip11.pod18.euc1.zdsys.com. [188.172.138.11])
        by gmr-mx.google.com with ESMTPS id s8si1338017wrn.5.2021.04.13.15.01.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 15:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of support@travis-ci.com designates 188.172.138.11 as permitted sender) client-ip=188.172.138.11;
Received: from zendesk.com (unknown [10.218.220.231])
	by outbyoip11.pod18.euc1.zdsys.com (Postfix) with ESMTP id 4FKfhl1J0pz14K2s;
	Tue, 13 Apr 2021 22:01:59 +0000 (UTC)
Date: Tue, 13 Apr 2021 22:01:59 +0000
From: "MK (Support)" <support@travis-ci.com>
Reply-To: Support <support@travis-ci.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
 Dan Rue <dan.rue@linaro.org>, 
 Stephen Hines <srhines@google.com>, 
 Lars Bergstrom <larsberg@google.com>
Message-ID: <L7VKGOM25K_607614d686a15_312acea2d65970740ef_sprut@zendesk.com>
In-Reply-To: <L7VKGOM25K@zendesk.com>
 <L7VKGOM25K_5ffc9f6678dde_503f05c010585f_sprut@zendesk.com>
 <L7VKGOM25K_5fd908fd5600d_4b5665bc15886c_sprut@zendesk.com>
Subject: Request for OSS only credits
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="--==_mimepart_607614d725f04_312acea2d659707412c";
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Delivery-Context: event-id-759134375399
Auto-Submitted: auto-generated
X-Auto-Response-Suppress: All
X-Mailer: Zendesk Mailer
X-Zendesk-From-Account-Id: 68b8aed
X-Original-Sender: support@travis-ci.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zendesk.com header.s=zendesk2 header.b=NuuvMiBA;       spf=pass
 (google.com: domain of support@travis-ci.com designates 188.172.138.11 as
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


----==_mimepart_607614d725f04_312acea2d659707412c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

##- Please type your reply above this line -##

You are registered as a CC on this request (23735). Reply to this email to =
add a comment to the request.

----------------------------------------------

MK, Apr 13, 2021, 15:01 PDT

Hello Nick=E2=80=8B ,

Please accept our sincere apologies for any inconvenience caused due to del=
ays in processing your open-source credit request while we made improvement=
s to the platform.

Open source has always been and always will be at the core of what Travis C=
I stands for. After reviewing your open source qualifications, I am pleased=
 to notify you that 25k credits were added to your account allowing you to =
resume running OSS builds. When your credits begin running low again, pleas=
e reach back out to the Support team.

Credits Consumption Metric
OS.              # CREDITS PER STARTED BUILD MINUTE
Linux.          10
Experimental FreeBSD.         10
Windows.         20
MacOS.         50


Please let us know if you have any questions!

Thanks and happy building!,
=E2=80=8B
Your Friends @Travis-CI

_Note: OSS credits may be used solely with respect to open source projects =
that reside on a public repository. Please note that in no event shall OSS =
credits be used in support of commercial or enterprise projects or with res=
pect to any project that resides on a private repository. Travis CI shall d=
etermine the amount and frequency of all OSS Credit allotments at its sole =
discretion and reserves the right to deny, reduce or suspend such allotment=
s._

--
MK

Your Friends @Travis CI

Test and Deploy with Confidence.
www.travis-ci.com

=E2=80=94
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: contact@travis-ci.org | Amtsgericht Charlottenburg, Berlin, HRB =
140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: D=
E282002648

----------------------------------------------

Nick Desaulniers, Jan 11, 2021, 10:56 PST

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

Erika Kuntar, Dec 15, 2020, 11:05 PST

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

Nick Desaulniers, Dec 2, 2020, 10:43 PST

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
clang-built-linux/L7VKGOM25K_607614d686a15_312acea2d65970740ef_sprut%40zend=
esk.com.

----==_mimepart_607614d725f04_312acea2d659707412c
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
px;" src=3D"https://travisci.zendesk.com/system/photos/360404094054/TravisC=
I-Mascot-1.png" />            </td>                    <td width=3D"100%" s=
tyle=3D"padding: 0; margin: 0;" valign=3D"top">            <p style=3D"font=
-family:'Lucida Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,=
sans-serif; font-size: 15px; line-height: 18px; margin-bottom: 0; margin-to=
p: 0; padding: 0; color:#1b1d1e;" dir=3D"ltr">                             =
                                       <strong>MK</strong> (Travis CI)     =
                                                       </p>            <p s=
tyle=3D"font-family:'Lucida Grande','Lucida Sans Unicode','Lucida Sans',Ver=
dana,Tahoma,sans-serif; font-size: 13px; line-height: 25px; margin-bottom: =
15px; margin-top: 0; padding: 0; color:#bbbbbb;" dir=3D"ltr">              =
Apr 13, 2021, 15:01 PDT            </p>                                    =
<div class=3D"zd-comment" dir=3D"auto" style=3D"color: #2b2e2f; font-family=
: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; fo=
nt-size: 14px; line-height: 22px; margin: 15px 0">Hello Nick=E2=80=8B=C2=A0=
,<br /><br />Please accept our sincere apologies for any inconvenience caus=
ed due to delays in processing your open-source credit request while we mad=
e improvements to the platform.=C2=A0<br /><br />Open source has always bee=
n and always will be at the core of what Travis CI stands for. After review=
ing your open source qualifications, I am pleased to notify you that 25k cr=
edits were added to your account allowing you to resume running OSS builds.=
 When your credits begin running low again, please reach back out to the Su=
pport team.<br /><br />Credits Consumption Metric<br />OS.=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # CREDITS PER STARTED BUILD MINUTE<br />Lin=
ux.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 10<br />Experimental FreeBSD.=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A010<br />Windows.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A020<br />MacOS.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A050<br /><br /><br />Plea=
se let us know if you have any questions! <br /><br />Thanks and happy buil=
ding!,<br />=E2=80=8B=C2=A0<br />Your Friends @Travis-CI<br /><br /><i>Note=
: OSS credits may be used solely with respect to open source projects that =
reside on a public repository. Please note that in no event shall OSS credi=
ts be used in support of commercial or enterprise projects or with respect =
to any project that resides on a private repository. Travis CI shall determ=
ine the amount and frequency of all OSS Credit allotments at its sole discr=
etion and reserves the right to deny, reduce or suspend such allotments.</i=
><br /><div class=3D"signature"><p dir=3D"ltr" style=3D"color: #2b2e2f; fon=
t-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-s=
erif; font-size: 14px; line-height: 22px; margin: 15px 0">--<br />
MK</p><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Uni=
code', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; lin=
e-height: 22px; margin: 15px 0">Your Friends @Travis CI<br /><br />
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
gin-top: 0; padding: 0; color:#bbbbbb;" dir=3D"ltr">              Jan 11, 2=
021, 10:56 PST            </p>                                    <div clas=
s=3D"zd-comment" dir=3D"auto" style=3D"color: #2b2e2f; font-family: 'Lucida=
 Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: =
14px; line-height: 22px; margin: 15px 0"><p dir=3D"ltr" style=3D"color: #2b=
2e2f; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdan=
a, sans-serif; font-size: 14px; line-height: 22px; margin: 15px 0">Hi Erica=
,<br />We probably don't meet the requirement "Project must not be sponsore=
d<br />by a commercial company or organization (monetary or with employees<=
br />paid to work on the project)." I'm a paid contributor to this<br />pro=
ject. I find this list of requirements to be curious; it's not<br />listed =
publicly AFAICT and not from<br /><a href=3D"https://blog.travis-ci.com/oss=
-announcement" target=3D"_blank" rel=3D"nofollow noreferrer">https://blog.t=
ravis-ci.com/oss-announcement</a> which says "Open source<br />accounts, as=
 always, will be completely free under travis-ci.com."<br />Having paid con=
tributors doesn't change the fact that the project is<br />open source, tho=
ugh perhaps "open source accounts" has a different<br />definition?</p><p d=
ir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans Unicode', 'Lu=
cida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px; line-height: =
22px; margin: 15px 0">Is there a way to get a quote then for more credits? =
Or are<br /><a href=3D"https://travis-ci.com/organizations/ClangBuiltLinux/=
plan" target=3D"_blank" rel=3D"nofollow noreferrer">https://travis-ci.com/o=
rganizations/ClangBuiltLinux/plan</a> the only<br />options? We'd prefer fa=
ster builds over additional concurrency, if<br />available?</p></div>      =
                            </td>        </tr>      </tbody></table>    </t=
d>  </tr></tbody></table><p dir=3D"ltr"></p><table width=3D"100%" cellpaddi=
ng=3D"0" cellspacing=3D"0" border=3D"0" role=3D"presentation">  <tbody><tr>=
    <td width=3D"100%" style=3D"padding: 15px 0; border-top: 1px dotted #c5=
c5c5;">      <table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" bord=
er=3D"0" style=3D"table-layout:fixed;" role=3D"presentation">        <tbody=
><tr>                      <td valign=3D"top" style=3D"padding: 0 15px 0 15=
px; width: 40px;">              <img width=3D"40" height=3D"40" alt=3D"" st=
yle=3D"height: auto; line-height: 100%; outline: none; text-decoration: non=
e; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;=
" src=3D"https://travisci.zendesk.com/system/photos/360118046359/image0__1_=
.jpeg" />            </td>                    <td width=3D"100%" style=3D"p=
adding: 0; margin: 0;" valign=3D"top">            <p style=3D"font-family:'=
Lucida Grande','Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-seri=
f; font-size: 15px; line-height: 18px; margin-bottom: 0; margin-top: 0; pad=
ding: 0; color:#1b1d1e;" dir=3D"ltr">                                      =
                              <strong>Erika Kuntar</strong> (Travis CI)    =
                                                        </p>            <p =
style=3D"font-family:'Lucida Grande','Lucida Sans Unicode','Lucida Sans',Ve=
rdana,Tahoma,sans-serif; font-size: 13px; line-height: 25px; margin-bottom:=
 15px; margin-top: 0; padding: 0; color:#bbbbbb;" dir=3D"ltr">             =
 Dec 15, 2020, 11:05 PST            </p>                                   =
 <div class=3D"zd-comment" dir=3D"auto" style=3D"color: #2b2e2f; font-famil=
y: 'Lucida Sans Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; f=
ont-size: 14px; line-height: 22px; margin: 15px 0">Hello Nick=E2=80=8B ,<br=
 /><br />Thanks for contacting Travis-CI Support! We would love to help. <b=
r /><br />We offer an Open Source Subscription for free to non-commercial o=
pen-source projects. To qualify for an Open Source subscription, the projec=
t must meet the following requirements:<br /><br /><ul dir=3D"auto" style=
=3D"list-style-type: disc; margin: 10px 0 15px 30px; padding-left: 15px"><l=
i style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'tahoma', V=
erdana, sans-serif; font-size: 14px; line-height: 22px; margin: 10px 0">You=
 are a project lead or regular committer (latest commit in the last month)<=
br /></li><li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande',=
 'tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin:=
 10px 0">Project must be at least 3 months old and is in active development=
 (with regular commits and activity)<br /></li><li style=3D"font-family: 'L=
ucida Sans Unicode', 'Lucida Grande', 'tahoma', Verdana, sans-serif; font-s=
ize: 14px; line-height: 22px; margin: 10px 0">Project meets the <a href=3D"=
https://opensource.org/docs/osd" rel=3D"noreferrer">OSD</a> specification<b=
r /></li><li style=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande', =
'tahoma', Verdana, sans-serif; font-size: 14px; line-height: 22px; margin: =
10px 0">Project must not be sponsored by a commercial company or organizati=
on (monetary or with employees paid to work on the project)<br /></li><li s=
tyle=3D"font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'tahoma', Verd=
ana, sans-serif; font-size: 14px; line-height: 22px; margin: 10px 0">Projec=
t can not provide commercial services or distribute paid versions of the so=
ftware<br /></li></ul><br />Does this sound like you and your project? We'd=
 be very happy to support you! <br /><br />However, if your project does no=
t match these requirements or you have further questions [1], please feel f=
ree to ask!<br /><br />We look forward to your response if you meet these r=
equirements to proceed with the next steps.<br /><br />Thank you<br /><br /=
>[1] <a href=3D"https://docs.travis-ci.com/user/billing-faq/" rel=3D"norefe=
rrer">https://docs.travis-ci.com/user/billing-faq/</a><br /><div class=3D"s=
ignature"><p dir=3D"ltr" style=3D"color: #2b2e2f; font-family: 'Lucida Sans=
 Unicode', 'Lucida Grande', 'Tahoma', Verdana, sans-serif; font-size: 14px;=
 line-height: 22px; margin: 15px 0">--<br />
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
20, 10:43 PST            </p>                                    <div class=
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
om/d/msgid/clang-built-linux/L7VKGOM25K_607614d686a15_312acea2d65970740ef_s=
prut%40zendesk.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/clang-built-linux/L7VKGOM25K_607614d686a15_312acea2d65970=
740ef_sprut%40zendesk.com</a>.<br />

----==_mimepart_607614d725f04_312acea2d659707412c--
