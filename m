Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBJEKQ77QKGQECBOMBII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 513822E087F
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 11:06:30 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id b10sf8266856pgq.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 02:06:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608631589; cv=pass;
        d=google.com; s=arc-20160816;
        b=vC/OtjUXYDOIf6c3G52S0TUEGBXM+jDn7TEANXjJ5v1fegNQ0AELtyot7HQNvYOj2b
         rIemWfYvOwJtRqPKaI/chM0GEwfp/abOVtTxqHCsvjnjlHaxlNuOugAkDP/MuG65HRwi
         2YIABShxY6RB7jy5To5j0GnUDuIztV6WRONuBHXe1JiBaxqrXSmtIDLQZnBMz3aw//MP
         hlJWyyWnEDfMQLtEAWOPv5ku56KYYZSGlRRMrsYKPR3GOL+Tod8yva++GDmEWI3b6PgC
         vgNfIv+U6hVL3GhobQ/mbbLByDB/m7Q34dEgUOlUN9gvOvmEgZlCUyJhSsLkRHsu4Oen
         4qGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LjRkrqHvDFzenL/TiTWFTZ56NOocN1Z4QcUq8EoFEYs=;
        b=UDwQq2pQCm/U/Jz2SFJMhiN6Mrd9YDF+KNIUnWAplhWLk7gHPhxqzLuJUNLwuk98mo
         J8JVyXZ6Il1Pj1BwnagiAhCSbKtCMx8hCp/5LShxdCUWUMwlmw5puc82VxbY1K1Lk7mg
         +tkb/UgL5ZSq+udipd76iexKC1pu1gKRH9msSPae2W7kp/XAYaYENOIYst9seRd4cOs8
         lVriIZE/mUBcV6ZdJepJPfeSWCHx7rYsmZBQLg8nXtH4CDIiCiFJ5JB+NXAOeJA9Yii2
         7gF7vPN6t+S0m7w58CChTptOlqZ7dSHxonphpoqkvOqD0RAwvD5p/R/Ho8yjHreViiaS
         14dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s7H3UZz7;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LjRkrqHvDFzenL/TiTWFTZ56NOocN1Z4QcUq8EoFEYs=;
        b=T2cGx4HzWswdlOMu2vAPpg+y7MycfKlMWNNuvvwR5zsL62RHI9LOPJapyuwRM0cSc1
         ecA1sn4EULDpKDYGorIw0B2iWNaMrmq5w+yFxRvq8iji9bjI2rtk7OBl1lDPqIl/tPSI
         blY53yjsuxe/an3PZmb2W7D/FtWGamZYM+kcQDxRO5J8qNQ+AHKnf/EC6fJc0W+vrosB
         WuIZO5nUgcVTBOzeuta3xodErdWD140oWRz3OsIHhXQVKgepBrVpBCsTVVcJORSNJONS
         5xeKpp+VwqwtRCnp/uysO7gXAJorpttMoQy9nvqzN24FLKQL5x0TudLGh7L4KZJp2Lxj
         XFWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LjRkrqHvDFzenL/TiTWFTZ56NOocN1Z4QcUq8EoFEYs=;
        b=s1wLendmWjignQN100GVgAw2c9MdWGsaPo5dn3GlZC5MviiER+5sohp8WFiLpwa6CL
         HMTZ2x5eyX4t7DSz9HBy39zCpxmbis4xKoGbjy4pks45Y1N/upw/w09rzOEYO1fursw/
         zQpsG2qvMngfpQF9aXPUpSeOfnnfRCXX4lzWfZIOAW6F+kDAM7yPjEUeZue/bS6l6RRj
         nVLfmgs4wsOF0YrItKUhFw5+VkorLdDFxiAklu8bHUhjUj0FkKCpZNcCLfVhOiDFjFqq
         xbC82XNoE3HX8VCMErjRrf9H/kPklTY65ZZ+fLqF0K+lFUt/eZi8iWIPQ5e481yiCNAa
         LSXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LjRkrqHvDFzenL/TiTWFTZ56NOocN1Z4QcUq8EoFEYs=;
        b=J0hevdUkBHgvsuvF8yy/cCBVqDe3CO3N/ONYbg/Ht+1T0s4kXiKVPseSVXWvdbfifd
         2KKL0Sw3brOPilibyPToNorSh9JANIgE7uBYVY98aammT1N6cqZHHVPEgsJ9sIiHkr/g
         SMAOgcVRck4DobaV1P+H6TXnLy3a2vM7RHvcshiSZePEG7wugaxbqYCTRhaWeFSM41u1
         Qb+57djooVp93ShS22m8ulqkMQCzin+wNc07a2O1lubWcYglXrp0goC1YLjuiNtGRmeI
         8t8qeQcSXzD18bqeZ4bo5NmXxus68jAivHiWeJE8/9SejmHZx1Vu9vritNCMbK1eiDpf
         ZLkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j1FfzSWMWdI/7AoSJUHDmiCLCgRTghp0cncopMlBtZLrIEQFl
	S8tSuH/fZXXuJgm8Es8TTkk=
X-Google-Smtp-Source: ABdhPJxbPodn3Sq6288n/mqKh57U1yGbTcUGhxOkxoS/RW2merSf8oMLeOScJt0HzeG2XGg/aIvm8A==
X-Received: by 2002:a63:e442:: with SMTP id i2mr7986089pgk.12.1608631588814;
        Tue, 22 Dec 2020 02:06:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b893:: with SMTP id o19ls10703726pjr.2.canary-gmail;
 Tue, 22 Dec 2020 02:06:28 -0800 (PST)
X-Received: by 2002:a17:90a:b284:: with SMTP id c4mr21358085pjr.183.1608631587903;
        Tue, 22 Dec 2020 02:06:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608631587; cv=none;
        d=google.com; s=arc-20160816;
        b=UVPYYhgz19I9AF6+YY+DI7bci+Xsrw5FhODzS+rpZxf7lnE+xzT5bXMxcfafYmek01
         00kRBxsZgUiK50jkrCz13xN8tgDMnlkWb/aLSQpracG1bEw6oACru7gOaUwCVaMJJrFT
         AtLBhE/HoqQ3gY+bO6rup90M8t4tbdlFvg2mLCtwWcUUmDkcjcaI97P8oGPMyqlHrxqB
         s2QKao2WSWNNRYis6WpJr1pQrI/DiLuk9NLJKTPS94wqxHWyZnxRuyDwUQrhTmn4E6ni
         PRnPWY8xzaf8GAzpgSAYaUWhYmYr2L54O2W5c1zCMLF05Cm7foUsk6jzjWBM4Z6NjXne
         XQ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N//EpqLMOId+RA94/jyryuOrHsmzrwjv6+zNXqPpgdM=;
        b=Ai0j3N5NA1Z+EKQaX7YfsBTecqH5NsDJbRTx4+Ien6c0z6iTpdqj4cQQK/mPZsGKNp
         zCrxtTHJ2nP37HyTo0M2KuajOWa56LmwQ4J4g4NESfJ9tt3fOb/DQmdiN17YwI4xsb31
         4fi4yBzFIZSU0Gb4ghtHSXyL1feihOlnEcl1I749wY6Q6Ws3h3vHx6cpcTNO532MOGst
         eQqyCeUxtToa9RpGEvvfq69Ux8lyKusfxMt28qIacjtsIWg/lgAQSjsyECQJGkRtxnZ6
         pWYPHKxEUWIrlXRu31ZIbt8Czca8E4rc1q6H0vaoIszKe1qKvTHvqgnysvO2mVC+ICuT
         25iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s7H3UZz7;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id j22si309652pgn.5.2020.12.22.02.06.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 02:06:27 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id w12so11485832ilm.12
        for <clang-built-linux@googlegroups.com>; Tue, 22 Dec 2020 02:06:27 -0800 (PST)
X-Received: by 2002:a92:a804:: with SMTP id o4mr20461841ilh.125.1608631587591;
 Tue, 22 Dec 2020 02:06:27 -0800 (PST)
MIME-Version: 1.0
References: <L7VKGOM25K@zendesk.com> <CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx=DLuwg@mail.gmail.com>
 <L7VKGOM25K_5fc7e0596c390_5db245d0310849_sprut@zendesk.com>
 <L7VKGOM25K_5fd908fd52382_52d765b81249e4_sprut@zendesk.com> <CAKwvOdmYk33Bk_sK8FzitgiRuejBepBw9u5A=frE8ed=-aZ0nA@mail.gmail.com>
In-Reply-To: <CAKwvOdmYk33Bk_sK8FzitgiRuejBepBw9u5A=frE8ed=-aZ0nA@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Tue, 22 Dec 2020 11:06:21 +0100
Message-ID: <CAKXUXMxMiN2ZamxD4HC=jwmrVYx8q3XOExUAQLwiew2pFFQG+A@mail.gmail.com>
Subject: Re: Travis CI: [23735] - Request for OSS only credits
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Dan Rue <dan.rue@linaro.org>
Content-Type: multipart/alternative; boundary="0000000000005a5a6005b70aba16"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s7H3UZz7;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::12e
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000005a5a6005b70aba16
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nick,

I was wondering about that feedback as well.

"Project must not be sponsored by a commercial company or organization
(monetary or with employees paid to work on the project) "

That seems to contradict almost any open-source project nowadays, except
for maybe the lone-star student project. (It is always some gray zone; when
an employee has a company-accepted side open-source activity, but the
majority of the work is elsewhere. I believe the employee is still paid
(even if the employee selected to work on the specific project).

One way to interpret that would be to read "a commercial company or
organization" as "a single commercial company"; so, we could argue that the
project is driven by "multiple companies and organizations" and each
contributor has a different commercial goal.

We have been lately looking into using compute services from OSUOSL; maybe
that is an alternative. Although, it is probably clear that if travis.ci
stops its service due to those terms, OSUOSL will be overwhelmed with
requests.

Just my five cents.

Lukas

On Mon, Dec 21, 2020 at 10:10 PM 'Nick Desaulniers' via Clang Built Linux <
clang-built-linux@googlegroups.com> wrote:

> "Project must not be sponsored by a commercial company or organization
> (monetary or with employees paid to work on the project)" looks like a
> problem.
>
> ---------- Forwarded message ---------
> From: Erika Kuntar (Support) <support@travis-ci.com>
> Date: Tue, Dec 15, 2020 at 11:05 AM
> Subject: Travis CI: [23735] - Request for OSS only credits
> To: Nick Desaulniers <ndesaulniers@google.com>
>
>
> ##- Please type your reply above this line -##
>
> from Travis CI has an update for your ticket, #23735
> <https://support.travis-ci.com/hc/requests/23735>. If you'd like to add
> additional comments, please reply to this email:
>
> *Erika Kuntar* (Travis CI)
>
> Dec 15, 2020, 14:05 EST
> Hello Nick ,
>
> Thanks for contacting Travis-CI Support! We would love to help.
>
> We offer an Open Source Subscription for free to non-commercial
> open-source projects. To qualify for an Open Source subscription, the
> project must meet the following requirements:
>
>
>    - You are a project lead or regular committer (latest commit in the
>    last month)
>    - Project must be at least 3 months old and is in active development
>    (with regular commits and activity)
>    - Project meets the OSD <https://opensource.org/docs/osd> specificatio=
n
>    - Project must not be sponsored by a commercial company or
>    organization (monetary or with employees paid to work on the project)
>    - Project can not provide commercial services or distribute paid
>    versions of the software
>
>
> Does this sound like you and your project? We'd be very happy to support
> you!
>
> However, if your project does not match these requirements or you have
> further questions [1], please feel free to ask!
>
> We look forward to your response if you meet these requirements to procee=
d
> with the next steps.
>
> Thank you
>
> [1] https://docs.travis-ci.com/user/billing-faq/
>
> --
> Erika
>
> Your Friends @Travis CI
>
> Test and Deploy with Confidence.
> www.travis-ci.com
>
> =E2=80=94
> Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacop=
s
> | Contact: contact@travis-ci.org | Amtsgericht Charlottenburg, Berlin,
> HRB 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuerges=
etz: DE282002648
>
> *Nick Desaulniers*
>
> Dec 2, 2020, 13:43 EST
>
> To Whom it May Concern,
> Regarding our TravisCI project
> (https://travis-ci.com/github/ClangBuiltLinux/continuous-integration),
> I noticed that our last build stopped on Nov 20, 2020 with a banner
> that reads:
>
> "Builds have been temporarily disabled for public repositories due to
> a negative credit balance. Please go to the Plan page to replenish
> your credit balance or alter your Consume paid credits for OSS
> setting."
>
> I suspect this is in regards to the blog post:
> https://blog.travis-ci.com/oss-announcement
>
> On https://travis-ci.com/organizations/ClangBuiltLinux/plan, I can see
> "You have used 16090 of 10000 credits; -6090 credits available." The
> toggle for "Consume paid credits for OSS" looks enabled. When I click
> on the "OSS only credits" I see we have 0 credits.
>
> If I understand the note on
>
> https://docs.travis-ci.com/user/billing-overview/#credits-vs-oss-only-cre=
dits
> correctly, which reads:
>
> "On occassion, an allotment of OSS Only credits may be granted by
> Travis CI. These credits may be used only for builds over public
> repositories and are meant for open source support. The OSS credits
> may be assigned as one time pool or renewable pool, subject to case by
> case assesment of Travis CI staff."
>
> Then it sounds like we need to make a formal request for Travis CI
> staff to review our case?
>
> For more information on our project, it's performing build+boot tests
> of the open source Linux kernel via the open source compiler toolchain
> LLVM, then boot testing the resulting image via the open source
> machine emulator QEMU using the open source Buildroot utility to
> create minimal userspace images.
>
> I am actively working with Linaro to offload the relatively expensive
> builds to their tuxbuild service; I would still like to use Travis CI
> for the github integration and ability to share hyperlinks to build
> reports when Travis CI spots regressions (based on the number of
> branches we're testing, Travis CI helps us spot regressions in the
> Linux kernel daily).
> --
> Thanks,
> ~Nick Desaulniers
> This email is a service from Travis CI. Delivered by Zendesk
> <https://www.zendesk.com/support/?utm_campaign=3Dtext&utm_content=3DTravi=
s+CI&utm_medium=3Dpoweredbyzendesk&utm_source=3Demail-notification>
> [L7VKGO-M25K]
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYk33Bk_sK8Fzi=
tgiRuejBepBw9u5A%3DfrE8ed%3D-aZ0nA%40mail.gmail.com
> <https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYk33Bk_sK8Fz=
itgiRuejBepBw9u5A%3DfrE8ed%3D-aZ0nA%40mail.gmail.com?utm_medium=3Demail&utm=
_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKXUXMxMiN2ZamxD4HC%3DjwmrVYx8q3XOExUAQLwiew2pFFQG%2BA%4=
0mail.gmail.com.

--0000000000005a5a6005b70aba16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nick,</div><div><br></div><div>I was wondering about =
that feedback as well.</div><div dir=3D"ltr"><br></div><div><span style=3D"=
color:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucid=
a Grande&quot;,tahoma,Verdana,sans-serif;font-size:14px">&quot;Project must=
 not be sponsored by a commercial company or organization (monetary or with=
 employees paid to work on the project)</span>=C2=A0&quot;<br></div><div><b=
r></div><div>That seems to contradict almost any open-source project nowada=
ys, except for maybe the lone-star student project. (It is always some gray=
 zone; when an employee has a company-accepted side open-source activity, b=
ut the majority of the work is elsewhere. I believe the employee is still p=
aid (even if the employee selected to work on the specific project).</div><=
div><br></div><div>One way to interpret that would be to read &quot;a comme=
rcial company or organization&quot; as &quot;a single commercial company&qu=
ot;; so, we could argue that the project is driven by &quot;multiple compan=
ies and organizations&quot; and each contributor has a different commercial=
 goal.</div><div><br></div><div>We have been lately looking into using comp=
ute services from OSUOSL; maybe that is an alternative. Although, it is pro=
bably clear that if <a href=3D"http://travis.ci">travis.ci</a> stops its se=
rvice due to those terms, OSUOSL will be overwhelmed with requests.</div><d=
iv><br></div><div>Just my five cents.</div><div><br></div><div>Lukas</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Dec 21, 2020 at 10:10 PM &#39;Nick Desaulniers&#39; via Clang Built Linux =
&lt;<a href=3D"mailto:clang-built-linux@googlegroups.com">clang-built-linux=
@googlegroups.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">&quot;Project must not be sponsored by a =
commercial company or organization (monetary or with employees paid to work=
 on the project)&quot; looks like a problem.<br><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ----=
-----<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">Erika Kuntar=
 (Support)</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:support@travis=
-ci.com" target=3D"_blank">support@travis-ci.com</a>&gt;</span><br>Date: Tu=
e, Dec 15, 2020 at 11:05 AM<br>Subject: Travis CI: [23735] - Request for OS=
S only credits<br>To: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@g=
oogle.com" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br></div><br><=
br><u></u>

 =20
 =20

<div lang=3D"en-us" style=3D"margin:0px;padding:0px;width:100%">
  <div style=3D"padding:10px;line-height:18px;font-family:&quot;Lucida Gran=
de&quot;,Verdana,Arial,sans-serif;font-size:12px;color:rgb(68,68,68)">
    <div style=3D"color:rgb(181,181,181)">##- Please type your reply above =
this line -##</div>
    <p dir=3D"ltr"> from Travis CI has an update for your ticket, <a href=
=3D"https://support.travis-ci.com/hc/requests/23735" target=3D"_blank">#237=
35</a>. If you&#39;d like to add additional comments, please reply to this =
email: </p><p dir=3D"ltr"></p><div style=3D"margin-top:25px"><table width=
=3D"100%" cellpadding=3D"0" cellspacing=3D"0" border=3D"0">  <tbody><tr>   =
 <td width=3D"100%" style=3D"padding:15px 0px;border-top:1px dotted rgb(197=
,197,197)">      <table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" style=3D"table-layout:fixed">        <tbody><tr>              =
        <td valign=3D"top" style=3D"padding:0px 15px;width:40px">          =
    <img width=3D"40" height=3D"40" alt=3D"" style=3D"height: auto; line-he=
ight: 100%; outline: none; text-decoration: none; border-radius: 5px;" src=
=3D"https://travisci.zendesk.com/system/photos/3601/1804/6359/image0__1_.jp=
eg">            </td>                    <td width=3D"100%" style=3D"paddin=
g:0px;margin:0px" valign=3D"top">            <p style=3D"font-family:&quot;=
Lucida Grande&quot;,&quot;Lucida Sans Unicode&quot;,&quot;Lucida Sans&quot;=
,Verdana,Tahoma,sans-serif;font-size:15px;line-height:18px;margin-bottom:0p=
x;margin-top:0px;padding:0px;color:rgb(27,29,30)" dir=3D"ltr">             =
                                                       <strong>Erika Kuntar=
</strong> (Travis CI)                                                      =
      </p>            <p style=3D"font-family:&quot;Lucida Grande&quot;,&qu=
ot;Lucida Sans Unicode&quot;,&quot;Lucida Sans&quot;,Verdana,Tahoma,sans-se=
rif;font-size:13px;line-height:25px;margin-bottom:15px;margin-top:0px;paddi=
ng:0px;color:rgb(187,187,187)" dir=3D"ltr">              Dec 15, 2020, 14:0=
5 EST            </p>                                    <div dir=3D"auto" =
style=3D"color:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&q=
uot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;font-size:14px;line-heigh=
t:22px;margin:15px 0px">Hello Nick ,<br><br>Thanks for contacting Travis-CI=
 Support! We would love to help. <br><br>We offer an Open Source Subscripti=
on for free to non-commercial open-source projects. To qualify for an Open =
Source subscription, the project must meet the following requirements:<br><=
br><ul dir=3D"auto" style=3D"list-style-type:disc;margin:10px 0px 15px 30px=
;padding-left:15px"><li style=3D"font-family:&quot;Lucida Sans Unicode&quot=
;,&quot;Lucida Grande&quot;,tahoma,Verdana,sans-serif;font-size:14px;line-h=
eight:22px;margin:10px 0px">You are a project lead or regular committer (la=
test commit in the last month)<br></li><li style=3D"font-family:&quot;Lucid=
a Sans Unicode&quot;,&quot;Lucida Grande&quot;,tahoma,Verdana,sans-serif;fo=
nt-size:14px;line-height:22px;margin:10px 0px">Project must be at least 3 m=
onths old and is in active development (with regular commits and activity)<=
br></li><li style=3D"font-family:&quot;Lucida Sans Unicode&quot;,&quot;Luci=
da Grande&quot;,tahoma,Verdana,sans-serif;font-size:14px;line-height:22px;m=
argin:10px 0px">Project meets the <a href=3D"https://opensource.org/docs/os=
d" rel=3D"noreferrer" target=3D"_blank">OSD</a> specification<br></li><li s=
tyle=3D"font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quo=
t;,tahoma,Verdana,sans-serif;font-size:14px;line-height:22px;margin:10px 0p=
x">Project must not be sponsored by a commercial company or organization (m=
onetary or with employees paid to work on the project)<br></li><li style=3D=
"font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,taho=
ma,Verdana,sans-serif;font-size:14px;line-height:22px;margin:10px 0px">Proj=
ect can not provide commercial services or distribute paid versions of the =
software<br></li></ul><br>Does this sound like you and your project? We&#39=
;d be very happy to support you! <br><br>However, if your project does not =
match these requirements or you have further questions [1], please feel fre=
e to ask!<br><br>We look forward to your response if you meet these require=
ments to proceed with the next steps.<br><br>Thank you<br><br>[1] <a href=
=3D"https://docs.travis-ci.com/user/billing-faq/" rel=3D"noreferrer" target=
=3D"_blank">https://docs.travis-ci.com/user/billing-faq/</a><br><div><p dir=
=3D"ltr" style=3D"color:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode=
&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;font-size:14px;l=
ine-height:22px;margin:15px 0px">--<br>
Erika</p><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-family:&quot;Luci=
da Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;f=
ont-size:14px;line-height:22px;margin:15px 0px">Your Friends @Travis CI<br>=
<br>
Test and Deploy with Confidence.<br><a href=3D"http://www.travis-ci.com" re=
l=3D"noreferrer" target=3D"_blank">www.travis-ci.com</a></p><p dir=3D"ltr" =
style=3D"color:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&q=
uot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;font-size:14px;line-heigh=
t:22px;margin:15px 0px">=E2=80=94<br>
Travis CI GmbH, Rigaer Str.8, 10247 Berlin, Germany | GF/CEO: Randy Jacops =
| Contact: <a href=3D"mailto:contact@travis-ci.org" rel=3D"noreferrer" targ=
et=3D"_blank">contact@travis-ci.org</a> | Amtsgericht Charlottenburg, Berli=
n, HRB 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuerge=
setz: DE282002648</p></div></div><p dir=3D"ltr">                           =
       </p></td>        </tr>      </tbody></table>    </td>  </tr></tbody>=
</table><p dir=3D"ltr"></p><table width=3D"100%" cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0">  <tbody><tr>    <td width=3D"100%" style=3D"padding=
:15px 0px;border-top:1px dotted rgb(197,197,197)">      <table width=3D"100=
%" cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"table-layout:f=
ixed">        <tbody><tr>                      <td valign=3D"top" style=3D"=
padding:0px 15px;width:40px">              <img width=3D"40" height=3D"40" =
alt=3D"" style=3D"height: auto; line-height: 100%; outline: none; text-deco=
ration: none; border-radius: 5px;" src=3D"https://secure.gravatar.com/avata=
r/5fc870b8c20eabbd093381ac52df9726?size=3D40&amp;default=3Dhttps%3A%2F%2Fas=
sets.zendesk.com%2Fimages%2F2016%2Fdefault-avatar-80.png&amp;r=3Dg">       =
     </td>                    <td width=3D"100%" style=3D"padding:0px;margi=
n:0px" valign=3D"top">            <p style=3D"font-family:&quot;Lucida Gran=
de&quot;,&quot;Lucida Sans Unicode&quot;,&quot;Lucida Sans&quot;,Verdana,Ta=
homa,sans-serif;font-size:15px;line-height:18px;margin-bottom:0px;margin-to=
p:0px;padding:0px;color:rgb(27,29,30)" dir=3D"ltr">                        =
      <strong>Nick Desaulniers</strong>                          </p>      =
      <p style=3D"font-family:&quot;Lucida Grande&quot;,&quot;Lucida Sans U=
nicode&quot;,&quot;Lucida Sans&quot;,Verdana,Tahoma,sans-serif;font-size:13=
px;line-height:25px;margin-bottom:15px;margin-top:0px;padding:0px;color:rgb=
(187,187,187)" dir=3D"ltr">              Dec 2, 2020, 13:43 EST            =
</p>                                    <div dir=3D"auto" style=3D"color:rg=
b(43,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande=
&quot;,Tahoma,Verdana,sans-serif;font-size:14px;line-height:22px;margin:15p=
x 0px"><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-family:&quot;Lucida=
 Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;fon=
t-size:14px;line-height:22px;margin:15px 0px">To Whom it May Concern,<br>Re=
garding our TravisCI project<br>(<a href=3D"https://travis-ci.com/github/Cl=
angBuiltLinux/continuous-integration" rel=3D"nofollow noreferrer" target=3D=
"_blank">https://travis-ci.com/github/ClangBuiltLinux/continuous-integratio=
n</a>),<br>I noticed that our last build stopped on Nov 20, 2020 with a ban=
ner<br>that reads:</p><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-fami=
ly:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana=
,sans-serif;font-size:14px;line-height:22px;margin:15px 0px">&quot;Builds h=
ave been temporarily disabled for public repositories due to<br>a negative =
credit balance. Please go to the Plan page to replenish<br>your credit bala=
nce or alter your Consume paid credits for OSS<br>setting.&quot;</p><p dir=
=3D"ltr" style=3D"color:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode=
&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;font-size:14px;l=
ine-height:22px;margin:15px 0px">I suspect this is in regards to the blog p=
ost:<br><a href=3D"https://blog.travis-ci.com/oss-announcement" rel=3D"nofo=
llow noreferrer" target=3D"_blank">https://blog.travis-ci.com/oss-announcem=
ent</a></p><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-family:&quot;Lu=
cida Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif=
;font-size:14px;line-height:22px;margin:15px 0px">On <a href=3D"https://tra=
vis-ci.com/organizations/ClangBuiltLinux/plan" rel=3D"nofollow noreferrer" =
target=3D"_blank">https://travis-ci.com/organizations/ClangBuiltLinux/plan<=
/a>, I can see<br>&quot;You have used 16090 of 10000 credits; -6090 credits=
 available.&quot; The<br>toggle for &quot;Consume paid credits for OSS&quot=
; looks enabled. When I click<br>on the &quot;OSS only credits&quot; I see =
we have 0 credits.</p><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-fami=
ly:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana=
,sans-serif;font-size:14px;line-height:22px;margin:15px 0px">If I understan=
d the note on<br><a href=3D"https://docs.travis-ci.com/user/billing-overvie=
w/#credits-vs-oss-only-credits" rel=3D"nofollow noreferrer" target=3D"_blan=
k">https://docs.travis-ci.com/user/billing-overview/#credits-vs-oss-only-cr=
edits</a><br>correctly, which reads:</p><p dir=3D"ltr" style=3D"color:rgb(4=
3,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&qu=
ot;,Tahoma,Verdana,sans-serif;font-size:14px;line-height:22px;margin:15px 0=
px">&quot;On occassion, an allotment of OSS Only credits may be granted by<=
br>Travis CI. These credits may be used only for builds over public<br>repo=
sitories and are meant for open source support. The OSS credits<br>may be a=
ssigned as one time pool or renewable pool, subject to case by<br>case asse=
sment of Travis CI staff.&quot;</p><p dir=3D"ltr" style=3D"color:rgb(43,46,=
47);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,T=
ahoma,Verdana,sans-serif;font-size:14px;line-height:22px;margin:15px 0px">T=
hen it sounds like we need to make a formal request for Travis CI<br>staff =
to review our case?</p><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-fam=
ily:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdan=
a,sans-serif;font-size:14px;line-height:22px;margin:15px 0px">For more info=
rmation on our project, it&#39;s performing build+boot tests<br>of the open=
 source Linux kernel via the open source compiler toolchain<br>LLVM, then b=
oot testing the resulting image via the open source<br>machine emulator QEM=
U using the open source Buildroot utility to<br>create minimal userspace im=
ages.</p><p dir=3D"ltr" style=3D"color:rgb(43,46,47);font-family:&quot;Luci=
da Sans Unicode&quot;,&quot;Lucida Grande&quot;,Tahoma,Verdana,sans-serif;f=
ont-size:14px;line-height:22px;margin:15px 0px">I am actively working with =
Linaro to offload the relatively expensive<br>builds to their tuxbuild serv=
ice; I would still like to use Travis CI<br>for the github integration and =
ability to share hyperlinks to build<br>reports when Travis CI spots regres=
sions (based on the number of<br>branches we&#39;re testing, Travis CI help=
s us spot regressions in the<br>Linux kernel daily).<br>-- <br>Thanks,<br>~=
Nick Desaulniers</p></div>                                  </td>        </=
tr>      </tbody></table>    </td>  </tr></tbody></table></div>
  </div>
  <div style=3D"padding:10px;line-height:18px;font-family:&quot;Lucida Gran=
de&quot;,Verdana,Arial,sans-serif;font-size:12px;color:rgb(170,170,170);mar=
gin:10px 0px 14px;border-top:1px solid rgb(238,238,238)">
    This email is a service from Travis CI. Delivered by <a href=3D"https:/=
/www.zendesk.com/support/?utm_campaign=3Dtext&amp;utm_content=3DTravis+CI&a=
mp;utm_medium=3Dpoweredbyzendesk&amp;utm_source=3Demail-notification" style=
=3D"color:black" target=3D"_blank">Zendesk</a>
  </div>
<span style=3D"color:rgb(255,255,255)">[L7VKGO-M25K]</span><div style=3D"di=
splay:none">  <div>          </div></div>

</div>
</div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"=
ltr">Thanks,<div>~Nick Desaulniers</div></div></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com" t=
arget=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdmYk33Bk_sK8FzitgiRuejBepBw9u5A%3DfrE8ed=
%3D-aZ0nA%40mail.gmail.com?utm_medium=3Demail&amp;utm_source=3Dfooter" targ=
et=3D"_blank">https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmY=
k33Bk_sK8FzitgiRuejBepBw9u5A%3DfrE8ed%3D-aZ0nA%40mail.gmail.com</a>.<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKXUXMxMiN2ZamxD4HC%3DjwmrVYx8q3XOExUAQLwiew2=
pFFQG%2BA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKXUXMxMiN2ZamxD4HC%3DjwmrVYx8=
q3XOExUAQLwiew2pFFQG%2BA%40mail.gmail.com</a>.<br />

--0000000000005a5a6005b70aba16--
