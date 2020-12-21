Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTM6QT7QKGQED4ZLAOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8712E01CF
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 22:10:39 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id o19sf97899pjr.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 13:10:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608585037; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwjDMvM5hCowpvrLTT8TeCGvkHU3QXPTXxIDClspVFDpFvK/hqjqVCGySnDzzz5X3K
         MdOG0nmpauUqOpTYX6/f+xa/Etlj2vjrkhIfiTGPAi4XYan6Y/5lE+s9QurdxSS3ZGLY
         1OgxhbA0PndTT6yPFGrimjJr+XaNEFwG6ya/A+WcG7ZvfCmC2M5rHplALHxJNbwXRVR4
         OdaaeuOi40rFkNp5quoQQa8Ov6fn4zZSUI5bBzHRhcvoA9LcOTIF++1182uArpcSDg/X
         VuLDa1MmhGXMwb7591jPoh6ENxUxRMabmb/Us1f6iHSDPfQtdjsePWLlXJtbSa2Ytd9X
         tZNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tMYvjeKA68ooNtYjgP1xqUumadXC8CyLTB8jDvr5vFk=;
        b=1B0rJVpgfdNbp5Ymz6/FfKQiB4DCSmOLpB5LgmDhge5NblwLaBjw6RxaC7vPoKQ708
         Ns79Hi5Yruq06hGlUOUYxHg5+YMTn3dCS2iVawpT/Wx0925YB6uA9V5/xvA0IyfdcciZ
         GcpSKJDQyC8H+qWGzMnaGEOMzTBwAjE4ydyDsrqFL9FZSNsDVF7GigF+WykuV5A+9956
         H4QB4h34CLTwYGnyTRH3l09ZsipaAAOg8ZCA5ZSKjqVLnpmgK/9qC2xyuU6sBrtcevAA
         zqzdpGfmpy7rqKNwo8uvvc0bt11DIeu9/pRjiFHWd9+M4eIBJcb6wcAtXchwH41IegHI
         VRRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QKHHLsG1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMYvjeKA68ooNtYjgP1xqUumadXC8CyLTB8jDvr5vFk=;
        b=OTSu6aEWcNMYOMtVMJsEcPrtLI9NSl93QZg2muPN6wQGW+sSzQkx+zFUJpoJgIcbtP
         nHmmW9NyuKqwQPNyfzYoShtp8GGxScx7ZEETgazWG9CXTulZG/CalVU3BvxsKXFMdn59
         IQZl0z1boJvz83S4dRl2Xit1TaqyqwV3xavxli6jKZzNaszHWKTDr8i0N3XRStGxZB7m
         dsbfU98LuyCT8V1UJzji0/MSFoMRLZUrLiS3fUENNxD+vGDojuDjj9p6J+z5Tswj6ZyN
         7mdpZjZmDBIw4CWQqE6YWWlPqcGFIUTZvP932qurnew+OLTkCVGSxMKn/tkdisMV12zA
         lKUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMYvjeKA68ooNtYjgP1xqUumadXC8CyLTB8jDvr5vFk=;
        b=ERGeEuBPXOjt1uv7wgPUVMn+Blqoc/81igZi3W5saCiRlqXnpxSGqM3z01ihKw46iV
         0glmdymsOh2b1pkUp2byJygYuBCCPal85ihMTpXr6kNadJ7A7+SCcwvLWExY/yeBJ/eQ
         XlOGVqo06oTFrXoHyf5aeFU1N88HwqbiPDSN2mw+10TddC87KHouGO9ZxmSviqQdPgDW
         VgRtnEDjKe0Aby9HGN8QB5CdfODFqAfGi836df9RDmEwpSErpk1EJxhmqFjqD2WrvjRY
         RwjmMZrtWeZHttFBSv/JvCh97jE/PEXIlwR7/8nVAE34RdlKrZRrqvwbou2Qu6VtxuvV
         wCsQ==
X-Gm-Message-State: AOAM530AfhjMHLRGUhMqzJmlT/3Em71KqQY0s9zW9AupkrNfmdnFI8ox
	ZwU7g0j7sJw14RHG64yZJrA=
X-Google-Smtp-Source: ABdhPJxMmAlIHAKv8XKIKcaLW3XSZ63eOywGtQk/Xb5IeFyJkTLlqHcfKtr0OGnf+fphcEFBy0nb9w==
X-Received: by 2002:a63:4a03:: with SMTP id x3mr16569800pga.270.1608585037719;
        Mon, 21 Dec 2020 13:10:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96b7:: with SMTP id g23ls15504375pfk.9.gmail; Mon, 21
 Dec 2020 13:10:37 -0800 (PST)
X-Received: by 2002:a63:1a1d:: with SMTP id a29mr16921664pga.19.1608585037062;
        Mon, 21 Dec 2020 13:10:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608585037; cv=none;
        d=google.com; s=arc-20160816;
        b=Ri/PsQc2oj60GedZ9k9qS2hoQ2E6T8n5Y8aVHhkEnuHR8LBlAhbvPFnQag2T/Nadim
         ZJ9NAdPcDWPaH6y6p9yxvl0PIxUW/4xuEGHQAAI56h2Z3bI7voi/3mC224IqV1lcV+Z0
         JzcithDyT2TEDJukRDcf8808MDFvfRdbFF5+IB7X8FOckYjzbZopa8bPxSjOYKYLyOOs
         uiote+e84yzfBiwJkXyl8IjJkhCaEyCNKNhKOqasIKdGqhMV+7O+0qJ6a8JIJovX5kdu
         usNzQwdb4XwF/c7n4+CTtXWIiG7yjd2pSBcPcXQufvuB6wDKezfAq/uB+yZ9AZQpfQ51
         thPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QfF2b096DS+XaeJSsVCbtspLF5mD/+Ru5cvi4dDUqOE=;
        b=y+c7O4XZSzU6l8+KHVR1W93iR4wxkeCguZlXcTW6qJgijyxV9NiKFXKreWUKbCTB4j
         6WbB9HmTEDBfidNkDrxXBgmCzEruAPeqaSv5nB/njwAhAozkNQeLpeGmgbbvjnCku7Tj
         Hu0NS1aWzVXP2ViVp0nStb3ya4BOM1gjluVSAQTRIgo8Xmvn3B7Vf9fcsIO8nQMDduRC
         yMC+NeVrwGDfQ6jTH+bWq8vKl6T0ECmtcYWb/yhpicaOAtIvPM5zNkq1JjO1oY+kP/s9
         UU+zbx+9koPYjWPZfLFIbE0TYNZGs+V6Jpu7coNvxe35Di+olJerj5vSUEyWuaKlwoSy
         y7mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QKHHLsG1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id d22si1386852pgb.1.2020.12.21.13.10.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 13:10:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id q4so6251531plr.7
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 13:10:37 -0800 (PST)
X-Received: by 2002:a17:90b:4a50:: with SMTP id lb16mr18500468pjb.25.1608585036093;
 Mon, 21 Dec 2020 13:10:36 -0800 (PST)
MIME-Version: 1.0
References: <L7VKGOM25K@zendesk.com> <CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx=DLuwg@mail.gmail.com>
 <L7VKGOM25K_5fc7e0596c390_5db245d0310849_sprut@zendesk.com> <L7VKGOM25K_5fd908fd52382_52d765b81249e4_sprut@zendesk.com>
In-Reply-To: <L7VKGOM25K_5fd908fd52382_52d765b81249e4_sprut@zendesk.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Dec 2020 13:10:23 -0800
Message-ID: <CAKwvOdmYk33Bk_sK8FzitgiRuejBepBw9u5A=frE8ed=-aZ0nA@mail.gmail.com>
Subject: Fwd: Travis CI: [23735] - Request for OSS only credits
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Dan Rue <dan.rue@linaro.org>
Content-Type: multipart/alternative; boundary="000000000000aba29005b6ffe36c"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QKHHLsG1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--000000000000aba29005b6ffe36c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"Project must not be sponsored by a commercial company or organization
(monetary or with employees paid to work on the project)" looks like a
problem.

---------- Forwarded message ---------
From: Erika Kuntar (Support) <support@travis-ci.com>
Date: Tue, Dec 15, 2020 at 11:05 AM
Subject: Travis CI: [23735] - Request for OSS only credits
To: Nick Desaulniers <ndesaulniers@google.com>


##- Please type your reply above this line -##

from Travis CI has an update for your ticket, #23735
<https://support.travis-ci.com/hc/requests/23735>. If you'd like to add
additional comments, please reply to this email:

*Erika Kuntar* (Travis CI)

Dec 15, 2020, 14:05 EST
Hello Nick ,

Thanks for contacting Travis-CI Support! We would love to help.

We offer an Open Source Subscription for free to non-commercial open-source
projects. To qualify for an Open Source subscription, the project must meet
the following requirements:


   - You are a project lead or regular committer (latest commit in the last
   month)
   - Project must be at least 3 months old and is in active development
   (with regular commits and activity)
   - Project meets the OSD <https://opensource.org/docs/osd> specification
   - Project must not be sponsored by a commercial company or organization
   (monetary or with employees paid to work on the project)
   - Project can not provide commercial services or distribute paid
   versions of the software


Does this sound like you and your project? We'd be very happy to support
you!

However, if your project does not match these requirements or you have
further questions [1], please feel free to ask!

We look forward to your response if you meet these requirements to proceed
with the next steps.

Thank you

[1] https://docs.travis-ci.com/user/billing-faq/

--
Erika

Your Friends @Travis CI

Test and Deploy with Confidence.
www.travis-ci.com

=E2=80=94
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops
| Contact: contact@travis-ci.org | Amtsgericht Charlottenburg, Berlin, HRB
140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: D=
E282002648

*Nick Desaulniers*

Dec 2, 2020, 13:43 EST

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
This email is a service from Travis CI. Delivered by Zendesk
<https://www.zendesk.com/support/?utm_campaign=3Dtext&utm_content=3DTravis+=
CI&utm_medium=3Dpoweredbyzendesk&utm_source=3Demail-notification>
[L7VKGO-M25K]


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmYk33Bk_sK8FzitgiRuejBepBw9u5A%3DfrE8ed%3D-aZ0nA%4=
0mail.gmail.com.

--000000000000aba29005b6ffe36c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;Project must not be sponsored by a commercial compan=
y or organization (monetary or with employees paid to work on the project)&=
quot; looks like a problem.<br><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">---------- Forwarded message ---------<br>From: <s=
trong class=3D"gmail_sendername" dir=3D"auto">Erika Kuntar (Support)</stron=
g> <span dir=3D"auto">&lt;<a href=3D"mailto:support@travis-ci.com">support@=
travis-ci.com</a>&gt;</span><br>Date: Tue, Dec 15, 2020 at 11:05 AM<br>Subj=
ect: Travis CI: [23735] - Request for OSS only credits<br>To: Nick Desaulni=
ers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com<=
/a>&gt;<br></div><br><br><u></u>

 =20
 =20

<div lang=3D"en-us" style=3D"width:100%!important;margin:0;padding:0">
  <div style=3D"padding:10px;line-height:18px;font-family:&#39;Lucida Grand=
e&#39;,Verdana,Arial,sans-serif;font-size:12px;color:#444444">
    <div style=3D"color:#b5b5b5">##- Please type your reply above this line=
 -##</div>
    <p dir=3D"ltr"> from Travis CI has an update for your ticket, <a href=
=3D"https://support.travis-ci.com/hc/requests/23735" target=3D"_blank">#237=
35</a>. If you&#39;d like to add additional comments, please reply to this =
email: </p><p dir=3D"ltr"></p><div style=3D"margin-top:25px"><table width=
=3D"100%" cellpadding=3D"0" cellspacing=3D"0" border=3D"0">  <tbody><tr>   =
 <td width=3D"100%" style=3D"padding:15px 0;border-top:1px dotted #c5c5c5">=
      <table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" border=3D"0=
" style=3D"table-layout:fixed">        <tbody><tr>                      <td=
 valign=3D"top" style=3D"padding:0 15px 0 15px;width:40px">              <i=
mg width=3D"40" height=3D"40" alt=3D"" style=3D"height:auto;line-height:100=
%;outline:none;text-decoration:none;border-radius:5px" src=3D"https://travi=
sci.zendesk.com/system/photos/3601/1804/6359/image0__1_.jpeg">            <=
/td>                    <td width=3D"100%" style=3D"padding:0;margin:0" val=
ign=3D"top">            <p style=3D"font-family:&#39;Lucida Grande&#39;,&#3=
9;Lucida Sans Unicode&#39;,&#39;Lucida Sans&#39;,Verdana,Tahoma,sans-serif;=
font-size:15px;line-height:18px;margin-bottom:0;margin-top:0;padding:0;colo=
r:#1b1d1e" dir=3D"ltr">                                                    =
                <strong>Erika Kuntar</strong> (Travis CI)                  =
                                          </p>            <p style=3D"font-=
family:&#39;Lucida Grande&#39;,&#39;Lucida Sans Unicode&#39;,&#39;Lucida Sa=
ns&#39;,Verdana,Tahoma,sans-serif;font-size:13px;line-height:25px;margin-bo=
ttom:15px;margin-top:0;padding:0;color:#bbbbbb" dir=3D"ltr">              D=
ec 15, 2020, 14:05 EST            </p>                                    <=
div dir=3D"auto" style=3D"color:#2b2e2f;font-family:&#39;Lucida Sans Unicod=
e&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verdana,sans-serif;font-siz=
e:14px;line-height:22px;margin:15px 0">Hello Nick ,<br><br>Thanks for conta=
cting Travis-CI Support! We would love to help. <br><br>We offer an Open So=
urce Subscription for free to non-commercial open-source projects. To quali=
fy for an Open Source subscription, the project must meet the following req=
uirements:<br><br><ul dir=3D"auto" style=3D"list-style-type:disc;margin:10p=
x 0 15px 30px;padding-left:15px"><li style=3D"font-family:&#39;Lucida Sans =
Unicode&#39;,&#39;Lucida Grande&#39;,&#39;tahoma&#39;,Verdana,sans-serif;fo=
nt-size:14px;line-height:22px;margin:10px 0">You are a project lead or regu=
lar committer (latest commit in the last month)<br></li><li style=3D"font-f=
amily:&#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;tahoma&#39=
;,Verdana,sans-serif;font-size:14px;line-height:22px;margin:10px 0">Project=
 must be at least 3 months old and is in active development (with regular c=
ommits and activity)<br></li><li style=3D"font-family:&#39;Lucida Sans Unic=
ode&#39;,&#39;Lucida Grande&#39;,&#39;tahoma&#39;,Verdana,sans-serif;font-s=
ize:14px;line-height:22px;margin:10px 0">Project meets the <a href=3D"https=
://opensource.org/docs/osd" rel=3D"noreferrer" target=3D"_blank">OSD</a> sp=
ecification<br></li><li style=3D"font-family:&#39;Lucida Sans Unicode&#39;,=
&#39;Lucida Grande&#39;,&#39;tahoma&#39;,Verdana,sans-serif;font-size:14px;=
line-height:22px;margin:10px 0">Project must not be sponsored by a commerci=
al company or organization (monetary or with employees paid to work on the =
project)<br></li><li style=3D"font-family:&#39;Lucida Sans Unicode&#39;,&#3=
9;Lucida Grande&#39;,&#39;tahoma&#39;,Verdana,sans-serif;font-size:14px;lin=
e-height:22px;margin:10px 0">Project can not provide commercial services or=
 distribute paid versions of the software<br></li></ul><br>Does this sound =
like you and your project? We&#39;d be very happy to support you! <br><br>H=
owever, if your project does not match these requirements or you have furth=
er questions [1], please feel free to ask!<br><br>We look forward to your r=
esponse if you meet these requirements to proceed with the next steps.<br><=
br>Thank you<br><br>[1] <a href=3D"https://docs.travis-ci.com/user/billing-=
faq/" rel=3D"noreferrer" target=3D"_blank">https://docs.travis-ci.com/user/=
billing-faq/</a><br><div><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:=
&#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verd=
ana,sans-serif;font-size:14px;line-height:22px;margin:15px 0">--<br>
Erika</p><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:&#39;Lucida Sans=
 Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verdana,sans-serif;f=
ont-size:14px;line-height:22px;margin:15px 0">Your Friends @Travis CI<br><b=
r>
Test and Deploy with Confidence.<br><a href=3D"http://www.travis-ci.com" re=
l=3D"noreferrer" target=3D"_blank">www.travis-ci.com</a></p><p dir=3D"ltr" =
style=3D"color:#2b2e2f;font-family:&#39;Lucida Sans Unicode&#39;,&#39;Lucid=
a Grande&#39;,&#39;Tahoma&#39;,Verdana,sans-serif;font-size:14px;line-heigh=
t:22px;margin:15px 0">=E2=80=94<br>
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: <a href=3D"mailto:contact@travis-ci.org" rel=3D"noreferrer" targ=
et=3D"_blank">contact@travis-ci.org</a> | Amtsgericht Charlottenburg, Berli=
n, HRB 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuerge=
setz: DE282002648</p></div></div><p dir=3D"ltr">                           =
       </p></td>        </tr>      </tbody></table>    </td>  </tr></tbody>=
</table><p dir=3D"ltr"></p><table width=3D"100%" cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0">  <tbody><tr>    <td width=3D"100%" style=3D"padding=
:15px 0;border-top:1px dotted #c5c5c5">      <table width=3D"100%" cellpadd=
ing=3D"0" cellspacing=3D"0" border=3D"0" style=3D"table-layout:fixed">     =
   <tbody><tr>                      <td valign=3D"top" style=3D"padding:0 1=
5px 0 15px;width:40px">              <img width=3D"40" height=3D"40" alt=3D=
"" style=3D"height:auto;line-height:100%;outline:none;text-decoration:none;=
border-radius:5px" src=3D"https://secure.gravatar.com/avatar/5fc870b8c20eab=
bd093381ac52df9726?size=3D40&amp;default=3Dhttps%3A%2F%2Fassets.zendesk.com=
%2Fimages%2F2016%2Fdefault-avatar-80.png&amp;r=3Dg">            </td>      =
              <td width=3D"100%" style=3D"padding:0;margin:0" valign=3D"top=
">            <p style=3D"font-family:&#39;Lucida Grande&#39;,&#39;Lucida S=
ans Unicode&#39;,&#39;Lucida Sans&#39;,Verdana,Tahoma,sans-serif;font-size:=
15px;line-height:18px;margin-bottom:0;margin-top:0;padding:0;color:#1b1d1e"=
 dir=3D"ltr">                              <strong>Nick Desaulniers</strong=
>                          </p>            <p style=3D"font-family:&#39;Luc=
ida Grande&#39;,&#39;Lucida Sans Unicode&#39;,&#39;Lucida Sans&#39;,Verdana=
,Tahoma,sans-serif;font-size:13px;line-height:25px;margin-bottom:15px;margi=
n-top:0;padding:0;color:#bbbbbb" dir=3D"ltr">              Dec 2, 2020, 13:=
43 EST            </p>                                    <div dir=3D"auto"=
 style=3D"color:#2b2e2f;font-family:&#39;Lucida Sans Unicode&#39;,&#39;Luci=
da Grande&#39;,&#39;Tahoma&#39;,Verdana,sans-serif;font-size:14px;line-heig=
ht:22px;margin:15px 0"><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:&#=
39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verdan=
a,sans-serif;font-size:14px;line-height:22px;margin:15px 0">To Whom it May =
Concern,<br>Regarding our TravisCI project<br>(<a href=3D"https://travis-ci=
.com/github/ClangBuiltLinux/continuous-integration" rel=3D"nofollow norefer=
rer" target=3D"_blank">https://travis-ci.com/github/ClangBuiltLinux/continu=
ous-integration</a>),<br>I noticed that our last build stopped on Nov 20, 2=
020 with a banner<br>that reads:</p><p dir=3D"ltr" style=3D"color:#2b2e2f;f=
ont-family:&#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahom=
a&#39;,Verdana,sans-serif;font-size:14px;line-height:22px;margin:15px 0">&q=
uot;Builds have been temporarily disabled for public repositories due to<br=
>a negative credit balance. Please go to the Plan page to replenish<br>your=
 credit balance or alter your Consume paid credits for OSS<br>setting.&quot=
;</p><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:&#39;Lucida Sans Uni=
code&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verdana,sans-serif;font-=
size:14px;line-height:22px;margin:15px 0">I suspect this is in regards to t=
he blog post:<br><a href=3D"https://blog.travis-ci.com/oss-announcement" re=
l=3D"nofollow noreferrer" target=3D"_blank">https://blog.travis-ci.com/oss-=
announcement</a></p><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:&#39;=
Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verdana,s=
ans-serif;font-size:14px;line-height:22px;margin:15px 0">On <a href=3D"http=
s://travis-ci.com/organizations/ClangBuiltLinux/plan" rel=3D"nofollow noref=
errer" target=3D"_blank">https://travis-ci.com/organizations/ClangBuiltLinu=
x/plan</a>, I can see<br>&quot;You have used 16090 of 10000 credits; -6090 =
credits available.&quot; The<br>toggle for &quot;Consume paid credits for O=
SS&quot; looks enabled. When I click<br>on the &quot;OSS only credits&quot;=
 I see we have 0 credits.</p><p dir=3D"ltr" style=3D"color:#2b2e2f;font-fam=
ily:&#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,=
Verdana,sans-serif;font-size:14px;line-height:22px;margin:15px 0">If I unde=
rstand the note on<br><a href=3D"https://docs.travis-ci.com/user/billing-ov=
erview/#credits-vs-oss-only-credits" rel=3D"nofollow noreferrer" target=3D"=
_blank">https://docs.travis-ci.com/user/billing-overview/#credits-vs-oss-on=
ly-credits</a><br>correctly, which reads:</p><p dir=3D"ltr" style=3D"color:=
#2b2e2f;font-family:&#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&=
#39;Tahoma&#39;,Verdana,sans-serif;font-size:14px;line-height:22px;margin:1=
5px 0">&quot;On occassion, an allotment of OSS Only credits may be granted =
by<br>Travis CI. These credits may be used only for builds over public<br>r=
epositories and are meant for open source support. The OSS credits<br>may b=
e assigned as one time pool or renewable pool, subject to case by<br>case a=
ssesment of Travis CI staff.&quot;</p><p dir=3D"ltr" style=3D"color:#2b2e2f=
;font-family:&#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tah=
oma&#39;,Verdana,sans-serif;font-size:14px;line-height:22px;margin:15px 0">=
Then it sounds like we need to make a formal request for Travis CI<br>staff=
 to review our case?</p><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:&=
#39;Lucida Sans Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verda=
na,sans-serif;font-size:14px;line-height:22px;margin:15px 0">For more infor=
mation on our project, it&#39;s performing build+boot tests<br>of the open =
source Linux kernel via the open source compiler toolchain<br>LLVM, then bo=
ot testing the resulting image via the open source<br>machine emulator QEMU=
 using the open source Buildroot utility to<br>create minimal userspace ima=
ges.</p><p dir=3D"ltr" style=3D"color:#2b2e2f;font-family:&#39;Lucida Sans =
Unicode&#39;,&#39;Lucida Grande&#39;,&#39;Tahoma&#39;,Verdana,sans-serif;fo=
nt-size:14px;line-height:22px;margin:15px 0">I am actively working with Lin=
aro to offload the relatively expensive<br>builds to their tuxbuild service=
; I would still like to use Travis CI<br>for the github integration and abi=
lity to share hyperlinks to build<br>reports when Travis CI spots regressio=
ns (based on the number of<br>branches we&#39;re testing, Travis CI helps u=
s spot regressions in the<br>Linux kernel daily).<br>-- <br>Thanks,<br>~Nic=
k Desaulniers</p></div>                                  </td>        </tr>=
      </tbody></table>    </td>  </tr></tbody></table></div>
  </div>
  <div style=3D"padding:10px;line-height:18px;font-family:&#39;Lucida Grand=
e&#39;,Verdana,Arial,sans-serif;font-size:12px;color:#aaaaaa;margin:10px 0 =
14px 0;padding-top:10px;border-top:1px solid #eeeeee">
    This email is a service from Travis CI. Delivered by <a href=3D"https:/=
/www.zendesk.com/support/?utm_campaign=3Dtext&amp;utm_content=3DTravis+CI&a=
mp;utm_medium=3Dpoweredbyzendesk&amp;utm_source=3Demail-notification" style=
=3D"color:black" target=3D"_blank">Zendesk</a>
  </div>
<span style=3D"color:#ffffff">[L7VKGO-M25K]</span><div style=3D"display:non=
e">  <div>          </div></div>

</div>
</div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Thanks,<d=
iv>~Nick Desaulniers</div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdmYk33Bk_sK8FzitgiRuejBepBw9u5A%3DfrE8ed=
%3D-aZ0nA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYk33Bk_sK8FzitgiRuejBep=
Bw9u5A%3DfrE8ed%3D-aZ0nA%40mail.gmail.com</a>.<br />

--000000000000aba29005b6ffe36c--
