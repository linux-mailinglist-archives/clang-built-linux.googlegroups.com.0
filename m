Return-Path: <clang-built-linux+bncBC7ZLSUWVAHRBAXQYH6AKGQERGLWU4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD4C2951F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 20:03:47 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id w23sf1825233wmi.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603303427; cv=pass;
        d=google.com; s=arc-20160816;
        b=OLR3J7PoMSJQ4M29LPQpDCb/g1HBjZTpJG/FEehnSy3HnMMkd6L6EoawjPQVtZneOD
         hEOkgF5XmGlrPuH/iG45b9Gvsn2MQs6lPcY1NB8rNaU8VRXg0YRkHBilEsFsEs2f79Wd
         rkHwOUOLsxTLSmKRJn98Z4lLF42y6qeUQt3ToR1FhcCFGZLcNe07yjpLFDTFDTR+fwaJ
         KOAjcJrFDQ71Ik2smdY9vjVQ+gZwGh1OYsCIEFAH6wmImfOyXjN+NJd1WqCyDatX1n6H
         LUexCXZ2huaXhmqcaNoGAv6Y9HHlVzMEIajwrNp4YN4eE+4+CC0j7YnNLvLqEUMQeIAA
         aJAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=UVqMWjBoQ8NJu8sfhulSvWs6Rop4iMxVC9gOFlICDvU=;
        b=pGiwmMXkG0RK4O0bD5pRDvtJRZXdkHL4mpOp/mEoVdumDolFjDXB6y5MYDATX3NO+o
         6vvOq41mZNlTm7Hg6lAKf067mVOryC4LVHPQzPXe5Jad6VJrhilrTc4sTBis/tiRnX8s
         VZPoP2LsmH39P9ZJQaK9GCkGHEP0gteP02SoyebNLHTnueer6SVoOBEAJMXgLlqd137Z
         2pVfTTMlsuywoGBZ/O4gmWR/pEhUJyLK4WAf8Jl4Tbt0WPODty+epAInnK3q5Z97AuP5
         5rLnOl5i9RPGdpZBhYLva4i3obzl9ZZG2RwUtWaEduSVI+N/puraquQne/UXFpnB8+ud
         KYxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b=gLKJ1JWQ;
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UVqMWjBoQ8NJu8sfhulSvWs6Rop4iMxVC9gOFlICDvU=;
        b=Y4IzBJ/1f4KFidSp295rpipqOGYRNg8jW+wgxkI3xgKMYWrFR9abVTeL7uWWmLbHDB
         Y4nXx8i8JTKemOKdLhNeexOsFkER3/bMwBevtmkxtIA3n+TxHI+vhGspT+NbWJX4u0pi
         8sygIy/HzR5tz5sn3/Vw9XJEmMX7fM4YyON04bOjpelURqCU2u8xdTHnQAZapZ/nIkl0
         3aXK5v3oqYJFdTr/FaGSEN+2fw4LYmZJMHMyNaRzSKwEyCJ7w1SdF76k1O/xw7/ZwDhc
         /PbY6MIw5qHG9TrjBSDqeXdaFFArCWgLtTnUa6OZFzx0z/G8J1wQqng49irk2YAfKwOH
         Td9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UVqMWjBoQ8NJu8sfhulSvWs6Rop4iMxVC9gOFlICDvU=;
        b=OYuYg5NUr37IJ19p+0G/kt2v7Pa5mGttJdQr2beyM1QAoXBnQ8p///LJptj7OOx3RE
         zRH89P0hQ/XxdCk89d/BZFhRQEFGXTBa2mvFvuE36pEbZzCTUhtQn2SGMZnYXSlnaNZr
         8PftTMstW4UTgicsil+QeelvKwTjn16DN1eZm8+ud78mNKvUAD+R2jLEueZUqivt1b/R
         MXeEJUDcL3g3EEDAVZa0xAlh4WEj23E1aqpZG+deikmE3nvMUPgsJlK+nv3njKdmESwk
         PofB83sYelzdNauXFSlQHPgRIxb1Gf9dKaKyKYWHMEKuxuDggoY1OQeb7cJgfccZQxcX
         7Hcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XOjjjYdXSNhrPXek6GzgntPqIqQ/TTupFxzu21TsTKCv0mCQr
	Tn/gRzwOLc8LqvzLWbk0Ryo=
X-Google-Smtp-Source: ABdhPJyDnoBbQd3zVnyLApxNwFDwhzQD90PNlT1Z99crfRSyST0Vwh20HxKhaJvPIGl62ng0yAtpcg==
X-Received: by 2002:adf:a345:: with SMTP id d5mr6497447wrb.55.1603303427183;
        Wed, 21 Oct 2020 11:03:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4ac3:: with SMTP id y3ls732230wrs.2.gmail; Wed, 21 Oct
 2020 11:03:46 -0700 (PDT)
X-Received: by 2002:adf:e650:: with SMTP id b16mr6302616wrn.350.1603303426321;
        Wed, 21 Oct 2020 11:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603303426; cv=none;
        d=google.com; s=arc-20160816;
        b=zudUN3xqzWyUueiMPDtN/kTRI6tlyUwa9YT6UsizC5iuavP75oJisgdeRY45rjRzuJ
         iVSGhki3OcReDl8ah37GuzGSBi4dBi2Isce59XPMjkRsMmh+IhbqnoVZjUguODdTk05m
         etz9AMrQxx2wOvuCQlX+qANCLbf92z6cjClxcE+XXAb0+jvwNio+Prj0kjcVTMH3XePK
         PXHeuLkF2o/33++FcUMZH+AcoW/DKMYkdvrg191jhlnt0WelimbHqkXuE+wUPnkril3k
         s2BRrcUPk0IJtDg8YiV5GrqkVerluK5bRwOdhGgVekajopdQYMCzGAPaGEejXn8VUqLT
         KF9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UHiMQC0Js0pQRZBNhkjkcPijdU5i9feRU4LoLQMPuzE=;
        b=PluODJ645ee8PGKzW+jE/10wjPg/WG6/prMtKvIeiMHVgoHjIYq8MPA02bzo05GIAT
         5lk4IsDqqxRQBCHZO5Tk+W8iI9IWpWboRavdFqKupupgQ73PWomdGW6PJVpOEluuTarW
         FxKpjP4t+uS7Zppc94tgtDY6LV6ZH/xEGi6prAdP3WX40Amc+Ev4AF5e2IYW0h1K/Pxk
         sPlCeiMGCMYrsog0oNl5r8+x0zCXQWK6MyD0t4fxtUjid/ll75EhEszwwdidQbx3/snt
         dJ1Z6KLf/wAklLhxzBUbEv1eA3v83Dom+B0twy+nLLUC8FTWGvJZ2H+a360Ss97FxVNt
         KRtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b=gLKJ1JWQ;
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k3si91577wrl.5.2020.10.21.11.03.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 11:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id s9so4080302wro.8
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 11:03:46 -0700 (PDT)
X-Received: by 2002:adf:e64e:: with SMTP id b14mr6113102wrn.68.1603303425922;
        Wed, 21 Oct 2020 11:03:45 -0700 (PDT)
Received: from [192.168.10.10] ([88.126.111.87])
        by smtp.gmail.com with UTF8SMTPSA id a15sm5402141wrp.90.2020.10.21.11.03.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 11:03:45 -0700 (PDT)
Subject: Re: Userspace coordination on ClangBuiltLinux GitHub space
To: Behan Webster <behanw@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Tom Stellard <tstellar@redhat.com>,
 Clang Built Linux <clang-built-linux@googlegroups.com>,
 Bernhard Rosenkraenzer <bero@lindev.ch>, =?UTF-8?Q?Tomasz_Pawe=c5=82_Gajc?=
 <tpgxyz@gmail.com>
References: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
 <CAKwvOd=d=OnY=SH7jowx-79J=ows4D1VDr=YX69fZxnK02nQAA@mail.gmail.com>
 <E066D685-782B-4266-B334-9F71D4981916@gmail.com>
From: Sylvestre Ledru <sylvestre@mozilla.com>
Message-ID: <44b5c961-8a09-0048-3557-a54da0964d4f@mozilla.com>
Date: Wed, 21 Oct 2020 20:03:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:82.0) Gecko/20100101
 Thunderbird/82.0
MIME-Version: 1.0
In-Reply-To: <E066D685-782B-4266-B334-9F71D4981916@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sylvestre@mozilla.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mozilla.com header.s=google header.b=gLKJ1JWQ;       spf=pass
 (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
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

Hello,

Thanks Behan!

Le 21/10/2020 =C3=A0 19:27, Behan Webster a =C3=A9crit=C2=A0:
> It=E2=80=99s worth talking to Sylvestre Ledru as he=E2=80=99s been buildi=
ng the Debian archive with clang and finding and fixing issues there for a =
very long time.
>=20
> https://clang.debian.net/ <https://clang.debian.net/>
>=20
> Behan
>=20
>> On Oct 21, 2020, at 12:44 AM, 'Nick Desaulniers' via Clang Built Linux <=
clang-built-linux@googlegroups.com <mailto:clang-built-linux@googlegroups.c=
om>> wrote:
>>
>> On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard <tstellar@redhat.com <mailt=
o:tstellar@redhat.com>> wrote:
>>>
>>> Hi,
>>>
>>> I'm working on doing builds of =C2=A0Fedora packages using clang, and I=
'm trying to find a way to coordinate this work with other distributions so=
 that we aren't all fixing the same bugs. =C2=A0I would like to create a Gi=
tHub repo for storing build-fix patches and also tracking issues for usersp=
ace projects.
>>>
>>> I could create a new GitHub organization for this, but I wanted to see =
if this community would be interested in hosting something like this in the=
 ClangBuiltLinux organization.
>>>
>>> I don't have a strong preference either way, but it seems like there co=
uld be some benefits of sharing a space for this with the ongoing linux ker=
nel work.

Thanks!

We fixed a bunch of packages over the years [1] [2] and I have been keeping=
 track of them. Example: https://clang.debian.net/status.php?version=3D10&k=
ey=3DEXPECTED_DECLARATION
However, as there isn't a strong incentive to switch to clang (Debian and U=
buntu, in general, are happy with gcc),
it is hard to get traction.

So, I am more than happy to see that it is interesting more folks :)

In general, I found that the best course of action is:
* Implement missing features in clang when possible (or push for it)

* Report bugs on gcc to get some new features. So that packages get fixed u=
pstream when the new version gcc
is released.
Example: https://clang.debian.net/status.php?version=3D10&key=3DSPACE_LITER=
AL

* Fix bugs in the build blocs libraries or workaround them.
Example: https://bugreports.qt.io/browse/QTBUG-68139 (I had to workaround i=
t)
https://gitlab.freedesktop.org/xorg/util/imake/-/issues/1

* Fix some differences between gcc/clang like https://bugs.llvm.org/show_bu=
g.cgi?id=3D45322

Distro specific:
* Make it available in the CI close to the packagers.

* As much as possible, merging patches upstream (I know I am stating the ob=
vious)

Anyway, happy to see this initiative and a github repo works for me (we wil=
l have to take in account
different naming of packages but I think we have precedent for this).

Happy to help on this!


Cheers,
Sylvestre
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D756336
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D740019

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/44b5c961-8a09-0048-3557-a54da0964d4f%40mozilla.com.
