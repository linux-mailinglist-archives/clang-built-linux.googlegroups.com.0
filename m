Return-Path: <clang-built-linux+bncBDHYNCXPZ4CBBC67YH6AKGQEYKRXIWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 364B129517D
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 19:27:40 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id b72sf1343725oii.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 10:27:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603301259; cv=pass;
        d=google.com; s=arc-20160816;
        b=unh9IaAZaw9wUW8v64/H/QTkP6InsJeVi7+aeXenE+j0kCrflleLh5FWS3UGFCXATb
         K73DvLNUdBvuuXYXTjKzrbu0Iu14V9jRfMrnBfiqxm5oWfXE6sWPURLZ4p4+SOzD6B6G
         L5H+XdS8uWFqnDniNU+unO2jUexGn/yO1m/5t3OmtmaZc+CNbcFnyfov0LC+KC9zFPDV
         E3BP8aD/9gVy7VNX1PK8ELlOFIor7FgqFugwygF4QbdsCySqPBtrTjXRYLBcebWnwRfj
         D5NOcArdVlPeMF2llQ2KTD/NPDc8/ppKk+K3QQNrYGuDqrGogKnfaq5NL6E3z57kDFA7
         TNjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature
         :dkim-signature;
        bh=MBdGAx6oREzFTSlDNebyhXD2laoeX+cI2Y2R7YmDSEo=;
        b=voZ5IiIyIPy8QsAkaNWwVor03wWzEghierjvp2SZ6K0d4ge1N+XCKhVJDDbIi0k6Md
         zglUpOQzTxzW3CA2yUMVbSkyjHoXBWpfckG03XXx5OD/fYtW5YtFGOZBBHVh0CV/Xyb/
         2HUnVlyk+PckiNrZk/KbzNlihtaJ5Y2xdcgQIIuZQr74o8v/EVYVo2JdxH0617xjzb6/
         4CZF6FOTqrRt0yAtEoagmG1KltYF2CZM6nbMF2w4V+eIZ4I+Qh6NjiCvHLZm8MOKgiub
         NgPaaY5RCY8SQAIFVAg6slLQRiiCnS9gyg0KvfJ+oVQQoviW14q6lSmzeikNKEwRvhrV
         qKsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDSD4al8;
       spf=pass (google.com: domain of behanw@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=behanw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MBdGAx6oREzFTSlDNebyhXD2laoeX+cI2Y2R7YmDSEo=;
        b=XdKOa1r4r2KnD9/2JYj2zcLh6qps3Jn5zN9bBthVDzAcfqGCjZILAmYII3eD7Yo1wr
         R9Tc9uWTEtaiUYcuo/uEjx65VPgRveJ3EUVnb3zP/vtF8lXqvJGJlyn5h2YLxPflQDui
         CrfoWR8DquNF+GdhssZOlpFcxRET8zgUJanEPM6MzPShcig13ed48gchH2O8rDc4gOsv
         UueOaqvMBs8HWCvanlZpenops695Cy5ZNQBHCPMTQvaq1Z+gK+qw83Fc7Q9LuFq4KEjR
         ONPE2+/Z1BjePW/CjmgkslVb8jnkpLBTj+6L86JDEl1Q/BDU/yFq5kHwiw9WldeGJ6+e
         OKRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MBdGAx6oREzFTSlDNebyhXD2laoeX+cI2Y2R7YmDSEo=;
        b=fLgd/8GkFCqgKD76Cp16FJiwnWmrJtJO4QTtrtoY72y9lbHV4/ci8zC4EOmlihPWAT
         9BMgOyjlXzASuL89v5wsh9OjkL+Mpc68hFVyvA+GLhYkesZuZX9qoBKLFQ3vu3IkTMLg
         fS+h4WpbdQLyjhpcsKiyKuO5MuE7xBbigjzoXS+kpUXldgjw1R2pZNEJ+TbPsdcryuHY
         JzIeCAP+YIDFYV4LXSMx3A79hlW7zGbPaF/VaCMHrQNZ3TW4L/oxQmM9zV4yh4Tk+ZaW
         cEh1T1x/yKomPdgOuxd22xMsnSWkeLUpDV7JfkucaU0krcGhYBQdPy8eSirhUGST/w7C
         B96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MBdGAx6oREzFTSlDNebyhXD2laoeX+cI2Y2R7YmDSEo=;
        b=EnyZC9i16ABLYYzcUfLMxQEEY5YeoYlOAY8u9l6Sj3b75UYIN2KoIBjKQIY03tgQdY
         ctZgNpsrZzHPSJ6G1gdP4EkuC0SUU599xK5GlfIkEkcQ7EGGLShuT0twb2DJmKuN7rEx
         xysU2AJAeSGshgSkeM3Cc2tN87ZbLUH23F2Lh8AkfKwWPneKNnFYlyY6G2wQo/1tOYYy
         eTWLaTgH3QF8GDySx8Txct8vGnPMvKnVEvTEtVRV+UlxCRuRJDQS6lf6/StSDM9OPiX9
         O8aoWc5255QIVKaNpNRb1ojzgOzKAG+fCkC87LA6kM2bqRkKRbDaz6wVP9yBrTOeisAF
         n5/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hNX2v5ILDKFwRqtjPikxxPQhxrPqYnR/nirdKQyFZaaHa37zq
	88kx47y86EtE6XmbBNasWfY=
X-Google-Smtp-Source: ABdhPJwbZ+wQYhyM6tKIwqM15cDZ+ds6gtHUjYGsQsPjJJrNwwkVYspXhMtPhKh2ZKow1VI32G566Q==
X-Received: by 2002:a9d:21f7:: with SMTP id s110mr3474826otb.296.1603301259103;
        Wed, 21 Oct 2020 10:27:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4792:: with SMTP id u140ls104509oia.0.gmail; Wed, 21 Oct
 2020 10:27:38 -0700 (PDT)
X-Received: by 2002:aca:cd0a:: with SMTP id d10mr3156269oig.52.1603301258749;
        Wed, 21 Oct 2020 10:27:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603301258; cv=none;
        d=google.com; s=arc-20160816;
        b=fnxfHugk/R4PSUYycG+sEKwOKQn4cuXqXmz6jLw6ta9Uw3g9Wd4XQnDJUVaJiTAa8W
         mhNoEPN9DN8Xp2AFFducKKDeHdP20enrV42BsZ3bdyjQ931SBru7lbAYVHu/ZYEb3IpG
         EZPKQ27701zl0PoP+6axYw0zta2dfGSZlBx+UJAxTvCbhDcyyKctnreFIoVmTFVXVzPB
         R/wGSXTE4ACnB/oQCR8xoZClzNBUUHAG1T+uxsZdvLGbhBCcDq4IdVLf7IkWR5jpaOvR
         yQ2Sf31ccDR4+x8UXNBbseXsDr127vqb0FjxiEe2MSqr6MGKND+TrtxxUY2rY+C/+5bF
         Rlyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=a4nqXdXuCI1eh1nBv+ETBVisfAuLh7CMLq6aDOXSNqQ=;
        b=Ye7+VqAE+GuYDyj+DLTQDyZ+L8EKfaylA5S37qYb65/fNVq/I5NEHIL//Izgc+RT5D
         kpT6GW0DHjXl6JHNHkoXdch/m0EE5LNpSMmDfBERrR8JcYiXLq8LwtXjDY4SqBMUcCck
         TH5NooNwW5UDyeU7fTfbBoaXVCzfuKLboVsupbVD6xQ+B77CMKar4YGWyUIcveIsdT1P
         eJKSEslzzzSunk+8qcTfLw95bEAHycmtNfHLgI1XTwsPeZjdTpOdQlPgYwiwGFONL5Lo
         F7OQwSKqby+t/XpTdFkv8aXBiNKzeitjA4jinEKOAtLWHnURe56lBYNHNGQ3W8wEuerN
         N9+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDSD4al8;
       spf=pass (google.com: domain of behanw@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=behanw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id w26si173866oih.1.2020.10.21.10.27.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 10:27:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of behanw@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id b6so2334550pju.1
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 10:27:38 -0700 (PDT)
X-Received: by 2002:a17:902:b942:b029:d5:d1b3:fb62 with SMTP id h2-20020a170902b942b02900d5d1b3fb62mr4136040pls.53.1603301258198;
        Wed, 21 Oct 2020 10:27:38 -0700 (PDT)
Received: from nienor-eth.websterwood.com (s216-232-132-129.bc.hsia.telus.net. [216.232.132.129])
        by smtp.gmail.com with ESMTPSA id j23sm2996663pgh.31.2020.10.21.10.27.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 10:27:37 -0700 (PDT)
From: Behan Webster <behanw@gmail.com>
Message-Id: <E066D685-782B-4266-B334-9F71D4981916@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_015AEF4F-C25F-4F7E-8D31-0D44FD5FBE2F"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: Userspace coordination on ClangBuiltLinux GitHub space
Date: Wed, 21 Oct 2020 10:27:37 -0700
In-Reply-To: <CAKwvOd=d=OnY=SH7jowx-79J=ows4D1VDr=YX69fZxnK02nQAA@mail.gmail.com>
Cc: Tom Stellard <tstellar@redhat.com>,
 Clang Built Linux <clang-built-linux@googlegroups.com>,
 Bernhard Rosenkraenzer <bero@lindev.ch>,
 =?utf-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>,
 Sylvestre Ledru <sylvestre@debian.org>
To: Nick Desaulniers <ndesaulniers@google.com>
References: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
 <CAKwvOd=d=OnY=SH7jowx-79J=ows4D1VDr=YX69fZxnK02nQAA@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Original-Sender: behanw@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TDSD4al8;       spf=pass
 (google.com: domain of behanw@gmail.com designates 2607:f8b0:4864:20::102a as
 permitted sender) smtp.mailfrom=behanw@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail=_015AEF4F-C25F-4F7E-8D31-0D44FD5FBE2F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

It=E2=80=99s worth talking to Sylvestre Ledru as he=E2=80=99s been building=
 the Debian archive with clang and finding and fixing issues there for a ve=
ry long time.

https://clang.debian.net/ <https://clang.debian.net/>

Behan

> On Oct 21, 2020, at 12:44 AM, 'Nick Desaulniers' via Clang Built Linux <c=
lang-built-linux@googlegroups.com> wrote:
>=20
> On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard <tstellar@redhat.com> wrote:
>>=20
>> Hi,
>>=20
>> I'm working on doing builds of  Fedora packages using clang, and I'm try=
ing to find a way to coordinate this work with other distributions so that =
we aren't all fixing the same bugs.  I would like to create a GitHub repo f=
or storing build-fix patches and also tracking issues for userspace project=
s.
>>=20
>> I could create a new GitHub organization for this, but I wanted to see i=
f this community would be interested in hosting something like this in the =
ClangBuiltLinux organization.
>>=20
>> I don't have a strong preference either way, but it seems like there cou=
ld be some benefits of sharing a space for this with the ongoing linux kern=
el work.
>=20
> Tom,
> It's a great idea, go for it!
>=20
> Some things I'd like to see:
> 1. encouragement of newbies to participate. tagging good beginner
> bugs. example: https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Ai=
ssue+is%3Aopen+label%3A%22good+first+issue%22
> 2. involve OpenMandriva folks and encourage other distros to
> participate.  I'll try to bring more Android and CrOS folks to the
> table.
> 3. Let's consider use of "teams" in github to split folks with access
> to userspace vs kernel?  I probably should stop granting folks owner
> rights at some point...also the default of "watching" each new repo in
> an org in GH is a PITA...
>=20
> You have the keys (access rights); go for it!
> --=20
> Thanks,
> ~Nick Desaulniers
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAKwvOd%3Dd%3DOnY%3DSH7jowx-79J%3Dows4D1VDr%3DYX69fZxnK=
02nQAA%40mail.gmail.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/E066D685-782B-4266-B334-9F71D4981916%40gmail.com.

--Apple-Mail=_015AEF4F-C25F-4F7E-8D31-0D44FD5FBE2F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">It=E2=80=99s worth talking=
 to Sylvestre Ledru as he=E2=80=99s been building the Debian archive with c=
lang and finding and fixing issues there for a very long time.<div class=3D=
""><br class=3D""></div><div class=3D""><a href=3D"https://clang.debian.net=
/" class=3D"">https://clang.debian.net/</a></div><div class=3D""><br class=
=3D""></div><div class=3D"">Behan<br class=3D""><div><br class=3D""><blockq=
uote type=3D"cite" class=3D""><div class=3D"">On Oct 21, 2020, at 12:44 AM,=
 'Nick Desaulniers' via Clang Built Linux &lt;<a href=3D"mailto:clang-built=
-linux@googlegroups.com" class=3D"">clang-built-linux@googlegroups.com</a>&=
gt; wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><di=
v class=3D"">On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard &lt;<a href=3D"ma=
ilto:tstellar@redhat.com" class=3D"">tstellar@redhat.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Hi,<br class=
=3D""><br class=3D"">I'm working on doing builds of &nbsp;Fedora packages u=
sing clang, and I'm trying to find a way to coordinate this work with other=
 distributions so that we aren't all fixing the same bugs. &nbsp;I would li=
ke to create a GitHub repo for storing build-fix patches and also tracking =
issues for userspace projects.<br class=3D""><br class=3D"">I could create =
a new GitHub organization for this, but I wanted to see if this community w=
ould be interested in hosting something like this in the ClangBuiltLinux or=
ganization.<br class=3D""><br class=3D"">I don't have a strong preference e=
ither way, but it seems like there could be some benefits of sharing a spac=
e for this with the ongoing linux kernel work.<br class=3D""></blockquote><=
br class=3D"">Tom,<br class=3D"">It's a great idea, go for it!<br class=3D"=
"><br class=3D"">Some things I'd like to see:<br class=3D"">1. encouragemen=
t of newbies to participate. tagging good beginner<br class=3D"">bugs. exam=
ple: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Ais=
sue+is%3Aopen+label%3A%22good+first+issue%22" class=3D"">https://github.com=
/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is%3Aopen+label%3A%22good+firs=
t+issue%22</a><br class=3D"">2. involve OpenMandriva folks and encourage ot=
her distros to<br class=3D"">participate. &nbsp;I'll try to bring more Andr=
oid and CrOS folks to the<br class=3D"">table.<br class=3D"">3. Let's consi=
der use of "teams" in github to split folks with access<br class=3D"">to us=
erspace vs kernel? &nbsp;I probably should stop granting folks owner<br cla=
ss=3D"">rights at some point...also the default of "watching" each new repo=
 in<br class=3D"">an org in GH is a PITA...<br class=3D""><br class=3D"">Yo=
u have the keys (access rights); go for it!<br class=3D"">-- <br class=3D""=
>Thanks,<br class=3D"">~Nick Desaulniers<br class=3D""><br class=3D"">-- <b=
r class=3D"">You received this message because you are subscribed to the Go=
ogle Groups "Clang Built Linux" group.<br class=3D"">To unsubscribe from th=
is group and stop receiving emails from it, send an email to <a href=3D"mai=
lto:clang-built-linux+unsubscribe@googlegroups.com" class=3D"">clang-built-=
linux+unsubscribe@googlegroups.com</a>.<br class=3D"">To view this discussi=
on on the web visit <a href=3D"https://groups.google.com/d/msgid/clang-buil=
t-linux/CAKwvOd%3Dd%3DOnY%3DSH7jowx-79J%3Dows4D1VDr%3DYX69fZxnK02nQAA%40mai=
l.gmail.com" class=3D"">https://groups.google.com/d/msgid/clang-built-linux=
/CAKwvOd%3Dd%3DOnY%3DSH7jowx-79J%3Dows4D1VDr%3DYX69fZxnK02nQAA%40mail.gmail=
.com</a>.<br class=3D""></div></div></blockquote></div><br class=3D""></div=
></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/E066D685-782B-4266-B334-9F71D4981916%40gmail.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/clang-built-linux/E066D685-782B-4266-B334-9F71D4981916%40gmail.com</a>.<b=
r />

--Apple-Mail=_015AEF4F-C25F-4F7E-8D31-0D44FD5FBE2F--
