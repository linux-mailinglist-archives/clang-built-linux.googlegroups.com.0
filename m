Return-Path: <clang-built-linux+bncBDYJTTHEVUNBBLNI4KAAMGQEL2FZ5KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6DD30B3B3
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 00:52:14 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id t9sf8781755edd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 15:52:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612223533; cv=pass;
        d=google.com; s=arc-20160816;
        b=EFHNsG04OaQ5PqlNjAqU02m90/CuRiEeCfIs6xfa+z9X+VDRUuT8XrEmX+jIt80/JE
         RY6moUqsxRgq4PPwR79Nf/y+glRXvguYiuSyH4YA4YTg0QBsNIb++gGPTPxP+D8aTNs9
         3hjoQHSp88wlSNNtDL1seS8SZP7djwEsgyK8cqkdWu1255YAIlnGX0dTRFYBHD/3ZW+J
         +9BvdS+gtEvLPIhmR9UbkkE6wBpXdc0hFYG9zStUDNbb+QQ3cvkT1SUQmDsd1zpLoLNn
         mDQEjFpgBSfe67G1OxA8bY8gSpYitgDB6dhGN5H7ZhmSNZLrvqqr8HkMmPRIBS6JLeKn
         3W+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=U76WUAGmddYNyKE3sJ/yiNQSW/7I+e63rbuec0U68e4=;
        b=fzO1dUR3gS+hmcNRaIPK92uG/+ssDZT+TXQr9LodarV/T7Bz4b6SQsmLcQMxb52Vu+
         ixNXCf9xSwCb4F0IoJxbAmwZsiRFb13IwYNz0/Yd2FDf6jgUl8L80NPIdFA5aZ3MVcvn
         2r5tyKe3z9vsV1mD0ZCqBAtP0jf8xnvmtiQSU4F5BeHX6IoHvevIFVVhZvT26WA0wqpm
         +K/0ZzT+oGX5uPyr2ddO5Kh43xPDZsLN3OLdN1tZIlPtQKx98XlRQ0oUfeSYzYvkAaPf
         sHQaPMilViUmRDqtVw8lLq4WHtI3cprKbBKb/4Q+j62n1yurFC6hk/RwdUN5MbGqlD3y
         wYxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U76WUAGmddYNyKE3sJ/yiNQSW/7I+e63rbuec0U68e4=;
        b=HF3Xcb/KR26PV0PZL9QisI3Vjs9+ZeB+ZIkfrNfgY6hsEz8x76oy5NoiBZTyhKXgJZ
         3yOltOQh77eGHfPUQLgN88fMj96Cc7T0es6/lq53+M6qanJ2why6dAWOfDr2E2LnrXRV
         ja3M38QEqMhxFf5U3c/SDL3EC8i2MF59fJTqQUSVcBJTosBiLFH5lTmARN1ZVgPLRnsf
         Bun4F+0nHz/8DlLa6InC6XkmjGjJ9y5TBX6+26cGrpBunOvhn3H2zHsJsGHwA7Wm4Ruc
         EEkp5pVeoN7ay9Xfsuumy9wrk6pA+Cwd0jG1HYEGSD4jlGfHrPvq1Spn/T78Wp1lEsMW
         njZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U76WUAGmddYNyKE3sJ/yiNQSW/7I+e63rbuec0U68e4=;
        b=Q5ZbCvVejZpuHddU/ucBVgx128/2iQFX3zUJXlbnKJpUxFQJ7CJSw7FsdQ0UIiGcN9
         8kumeR32xsBlWYFaRC+Ya7cbJj11uemT45l5WpRH67IaJ/9OiGHow4fYDvUhHX3YiAJg
         QsXKGH7PBS50M/z4yANU2MIvyH5nLEswOB2gYx6TAm4Q2R0zMK28K5ZTu5WIINA6jc7Y
         jtsNrTuEV38YsGGyQcGJVUUG2VKZoDF7sVu0T3XkulvsNfWklF+Ks9bcu+wauzo0dSVN
         KUzyTCizFp7VDK8rcrUizzpvMRpcpnCvWmMUY3wJSoZqSM0NL3nhd5OcJZhWhwkViftn
         fcJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533m8CHbKYX6te8+Fg6DZBGlTrhtL2HK15Db/iTwa5lJE33bdYUc
	ISaVor6/+5+DZQoioHsjby4=
X-Google-Smtp-Source: ABdhPJyrJiUFQdZl0buidHqelQjIDrQn02+hmRSAcie4iXFN4LiJal5zImT7u28pT1uZyt/Gr+Nr2g==
X-Received: by 2002:a17:906:cce9:: with SMTP id ot41mr20076982ejb.61.1612223533748;
        Mon, 01 Feb 2021 15:52:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1192:: with SMTP id n18ls9600656eja.5.gmail; Mon, 01
 Feb 2021 15:52:12 -0800 (PST)
X-Received: by 2002:a17:906:15c7:: with SMTP id l7mr20393637ejd.226.1612223532779;
        Mon, 01 Feb 2021 15:52:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612223532; cv=none;
        d=google.com; s=arc-20160816;
        b=ln5vEhO9YlVAw99tx3BV41upXsX72viJTYtTjJGeqoHvgHsxGc83QMmpX+2MRehOzp
         q1BgdoKYz93IKWbtQdSBNuwzydAexfhXw78fl1CSXyUC/nWIDvmf5qrZQiggiPoQa/Gf
         akzR6SxSvzMOWzpG69fPlP0eQX08rED/mkzIyqwYC6YalJYMnMF+NQGfxTG8Jj4k0OB3
         vCVxRNrtSU8yLSbqL2xWRwAIzPfCj41es2qyUrhh6sv7caubqNmtb16RdqIJ2IejWFCN
         YciwC7gfRcUd6oWM4aikWJB8iWmxRu4P/m/+LOXm7eTU8uxua3cdVlSnmm0aJVDszf9a
         CZKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=TGPY9RBXOE+BdGpIKcbspr+kUtQk+hBrtbVw4cckqlo=;
        b=d87jybMm0pMxoI6WfYnZJMWaKfyuzKssb0xJiR4VkoTaqMQCwZOkhDXxh33lxazOPV
         IZD5hmE/XCj/kMtjx25bwYB89Lr7snZpwUpVwIkGhKTiM9UDRkYkt3w/6L+W8LGbxhi0
         rJPTCFXOucDzHR5UVWr/MRSDkk3aH9IBtZnOMX9r6HAkq0NLSlisj7umdztjthFj8/QC
         vr8sG8sDJ6YvVLoMWR7XBkvlCvmNWtOiEPNMx1mjTqaPxCiPV9swjrbaq2wmQzGLrP1s
         6U3/lxrSuVTEcPEiKs/vUN+ELPLL5G1rQJaE7puIad5y4QfX8qFMryveovzrfeVOOGfU
         j1HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v6si371044ejr.1.2021.02.01.15.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 15:52:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
X-IronPort-AV: E=Sophos;i="5.79,393,1602540000"; 
   d="scan'208";a="490271991"
X-MGA-submission: =?us-ascii?q?MDELG5jhWw5GWuurPnO2f0AR4oJ9dxhSy1w3fm?=
 =?us-ascii?q?SWBS5+rcI3HjvAqcXIgJBmNCncjMzGspw+mvMybfIZjhjAOsgeE/ksnF?=
 =?us-ascii?q?p1AaPz8WomcwIKTNbtvpFIMztK8lBnq0gYendY4Cek/MXsalPv8qey3F?=
 =?us-ascii?q?BU6IX97ZFudOeqPP40wwPctQ=3D=3D?=
Received: from zcs-store7.inria.fr ([128.93.142.34])
  by mail2-relais-roc.national.inria.fr with ESMTP; 02 Feb 2021 00:52:12 +0100
Date: Tue, 2 Feb 2021 00:52:12 +0100 (CET)
From: Mathieu Acher <mathieu.acher@irisa.fr>
To: kernelci <kernelci@groups.io>, groeck@google.com
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	Ilie Halip <ilie.halip@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Message-ID: <1665674197.5891394.1612223532194.JavaMail.zimbra@irisa.fr>
In-Reply-To: <CABXOdTeQQv1kVF9uvU2DPf8ddWd6tzunVmjoGz77eOgbiQgOvA@mail.gmail.com>
References: <20210129212009.GA2659554@localhost> <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com> <CAKwvOdm3sFE=hpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ@mail.gmail.com> <CABXOdTeQQv1kVF9uvU2DPf8ddWd6tzunVmjoGz77eOgbiQgOvA@mail.gmail.com>
Subject: Re: Minimum supported version of LLVM
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [88.127.73.30]
X-Mailer: Zimbra 8.8.15_GA_3991 (ZimbraWebClient - GC79 (Linux)/8.8.15_GA_3980)
Thread-Topic: Minimum supported version of LLVM
Thread-Index: hYffkk01SRhNuppCJqUGnBRG3+34cA==
X-Original-Sender: mathieu.acher@irisa.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as
 permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
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

Hi,=20

My 2 cents here. I've experimented a bit with older versions of the kernel =
(4.13, 4.15, 4.16) and gcc 8 over tinyconfig/defconfig.=20
It leads to some issues:=20
https://github.com/TuxML/tuxml/issues/30
https://github.com/TuxML/tuxml/issues/31
https://github.com/TuxML/tuxml/issues/32

There is also an interesting bug report by Nathan specifically about 4.14:
https://lkml.org/lkml/2019/4/22/794

My conclusion is that gcc 8 has difficulties for kernel version <=3D 4.16.=
=20
There are some patches here and there.

It seems working on 4.17 though.=20
Incidentally or not: Linux 4.17 has been released on 3 June 2018, gcc 8.1 o=
n May 2018 ;)=20

> Can you think of a case where an old compiler must be
> used for older versions of kernel sources?

Yes (see above) and I've not tested on randconfig, which may lead to furthe=
r bugs/incompatibilities.=20

I'm also wondering: is it worth testing 4.14 (LTS) with versions of gcc >=
=3D 8?=20
As it is a LTS, it seems useful/needed, but it's a bit technical I would sa=
y (patch integration, comprehension of older gcc incompatibilities/bugs, et=
c.)

Best,=20


--
Dr. Mathieu ACHER, Associate Professor
Univ Rennes, Inria, CNRS, IRISA, France (DiverSE team)
http://www.mathieuacher.com/

----- Mail original -----
> De: "Guenter Roeck via groups.io" <groeck=3Dgoogle.com@groups.io>
> =C3=80: "kernelci" <kernelci@groups.io>, "Nick Desaulniers" <ndesaulniers=
@google.com>
> Cc: "Arnd Bergmann" <arnd@kernel.org>, "Nathan Chancellor" <nathan@kernel=
.org>, "Sedat Dilek" <sedat.dilek@gmail.com>,
> "Miguel Ojeda" <ojeda@kernel.org>, "Lukas Bulwahn" <lukas.bulwahn@gmail.c=
om>, "Kees Cook" <keescook@chromium.org>,
> "Marco Elver" <elver@google.com>, "Dmitry Vyukov" <dvyukov@google.com>, "=
Arvind Sankar" <nivedita@alum.mit.edu>, "Ilie
> Halip" <ilie.halip@gmail.com>, "clang-built-linux" <clang-built-linux@goo=
glegroups.com>
> Envoy=C3=A9: Mardi 2 F=C3=A9vrier 2021 00:30:33
> Objet: Re: Minimum supported version of LLVM

> On Mon, Feb 1, 2021 at 1:19 PM Nick Desaulniers via groups.io <ndesaulnie=
rs=3D
> google.com@groups.io> wrote:
>=20
>> On Fri, Jan 29, 2021 at 3:36 PM Arnd Bergmann <arnd@kernel.org> wrote:
>> >
>> > I'm actually more worried about the reverse: as there is six year
>> > long-term support for kernels, do we expect to be able to build
>> > the oldest kernel with the latest version of llvm at the end of that?
>> >
>> > E.g. would a linux-5.4 that today can be built with clang-8 through
>> > clang-12 allow being built with clang-8 through clang-21 at the
>> > end of its life in 2025, or do we assume that LTS kernel users also
>> > have to use old compilers?
>>
>> I would think so.  The newer compiler should always be better or an
>> improvement.  Can you think of a case where an old compiler must be
>> used for older versions of kernel sources?  Stable has said they will
>> always accept patches for newer toolchain support.
>>
>=20
> v4.4.y, v4.9.y, and v4.14.y require old versions of gcc for some
> architectures.
> New versions of gcc don't work for all architectures either, even
> in the latest kernel, thanks to a variety of gcc bugs. See
> https://github.com/groeck/linux-build-test/blob/master/bin/stable-build-a=
rch.sh
> for details.
>=20
> Maybe clang/llvm is going to be better, but I would not bet on it. Maybe =
we
> should archive this exchange and, 10 years from now, dig it out and have
> a good laugh (sorry, my sarcasm is strong today).
>=20
> Guenter
>=20
>=20
>> --
>> Thanks,
>> ~Nick Desaulniers
>>
>>
>>=20
>>
>>
>>
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#1075): https://groups.io/g/kernelci/message/1075
> Mute This Topic: https://groups.io/mt/80221965/2531766
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub [mathieu.acher@irisa.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1665674197.5891394.1612223532194.JavaMail.zimbra%40irisa.=
fr.
