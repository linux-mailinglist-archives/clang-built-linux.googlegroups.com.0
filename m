Return-Path: <clang-built-linux+bncBD4LX4523YGBBQG2W7VAKGQERMTCOOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A738856E
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:01:37 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id z2sf6403344qkf.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 15:01:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565388096; cv=pass;
        d=google.com; s=arc-20160816;
        b=bZ9vqDxHv8qWRq6IUgBENzYm9V82XzKlZHJkTO9DAFSLGkExIPbgEsoE6Y2M/g0tIU
         Hbh5P+ex/UCAu1/QM1e+2oB5ScDq/cciB3Jix1gRRyb6bA/VS5DqmrKaSK1p1I+4VDEd
         yaoEwdZYC00K7D5tvOwTKdia8OLZcy00JcfBRRGcqqHTZ0t+Fv5o5UqjUbB8rlt2qv+2
         QUIpimSAljDlNaDBl5nAhQy/4rnDs+R9J7L/nE5SM0USWaWib4dLd7ncgR8Ejs81Ve/F
         t8nEdbGfheztYQG6MdsVS158vr/lCAd9cU88B6HJC6crjVh0UUkA1gBmxoMDz5jcUE3Z
         ERpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0rim2bBQCSKhTYDfn25evYtznfxK+GPdPyezL5e/Y6w=;
        b=VKu8B8VjYQj4kVqH0xP31gaCHqv5jOLxp+K8dyRSMALpnJRWGjxXAHaU2EWIF3wwCi
         /NG3XHOU81Rab2yYsP0TooF9oTP71wLMUgZiewfy8pAugbuWx01D/YnJI5SOKJ9JK0eh
         B6868HAuKMbIM6NLtC87nR+l5f8Vq3u09uiH+BA4+zJIHW0p3gg/HGpTR5UXbTj0z2p+
         0r11Hjvg9iWETCMKo+p9A+fzTWdNjtzbkZF86rxWMwCjVUEnK65FNIF66fkBvacUHV+j
         tlw/keboU3twF67BC250hFJUc0AtiBRJ7YpF9kGD7UFf3epv6RIDwV19HxtJy8Tyax2u
         q75Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0rim2bBQCSKhTYDfn25evYtznfxK+GPdPyezL5e/Y6w=;
        b=kqpOY8kIFC3c2/fJV1l7k/SOVVDlNmh4FvuBbXireXX7PTdgbc9GK+Q2sfXwvr8ITi
         6Wkz83hfO5Gp4qW041HgYVLYL+Lns5JJ9/d2CQoo8xQlm1DnzznFXoEryUqt7JX/cCvc
         kLyzMgOLQFHia82ylngSACNTkf8d3TeP+hC0CtWI+S3Ver3Rp5P5o2Z2toZOzma1StKS
         TFwTCbqk7suAqEyw4hVNbBHVcMk84Y5kgH7XrZ7KX7ks9LSIQZi3dODWN5gT4ovGIMf5
         3keBPI5R0BQu705dDNf3vPo+TLhCgPA8Pe7Kp8UuBP7WzNXiJYv/EF9UAEHK4nOLQE7c
         0WLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0rim2bBQCSKhTYDfn25evYtznfxK+GPdPyezL5e/Y6w=;
        b=K1/fyDQBXqdDj32lhroLLh5uwo2Cm75ywoz3hr+Lgyco7mCwe3x7JodS8rIHRlsh8p
         jUvpCOkD3E92HsYxJHznlDYfVmFAuEk3WpbGSK4jZEG5hnhqMwJ2RbUdTNemGf75p33j
         oFg8klvKkcxP4i3r7ZXOYZ2SmF4EKCXOEvqqQsI9MNvAGYxVBY75W7C4+Jsgc34DnzwN
         +6Tf6ZQWj/78d7Q3fjj6e3BuPNbJeiAmHTvMvwGjLKQeJNqF0Gj/MP7jCNncjW2/gVJ8
         WNblnEErA/25YEzfy+PikzHY+65KOCn79AA5n3dA6UnohGo0ywnFkgME1LFXvcZd59tj
         AZHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTtqsq7cKvn62gOgaLfQDGXxjNmMbPD9FH7DXD+CGwFOisPEkf
	RGcaof+9+/GbrJt/MilKFzk=
X-Google-Smtp-Source: APXvYqyUQSeFVclkEVNTKykx06sS5ULF4LZYEBjXZSlYN92UxTxHWbrTDKrhcHqecZDv056m1LNdcw==
X-Received: by 2002:a37:4a49:: with SMTP id x70mr20173634qka.375.1565388096351;
        Fri, 09 Aug 2019 15:01:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bf42:: with SMTP id p63ls4068023qkf.14.gmail; Fri, 09
 Aug 2019 15:01:36 -0700 (PDT)
X-Received: by 2002:a37:6085:: with SMTP id u127mr20437015qkb.25.1565388096034;
        Fri, 09 Aug 2019 15:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565388096; cv=none;
        d=google.com; s=arc-20160816;
        b=gu2ZZ1czBUJpIRRvnJgJsJRViHBX6RRfRwpzQ2d4AIQNsYn6Zz11Lidy2Dbzcz0K+H
         lolXcdYQXbnZDhVKnyTZRmaw36jloVceD7gQ4AVKaCRmwdpeANsV3K94IVGTwqAjccRb
         MbDIUzkp9Z1YFbeM91Q46Dt4ciX10VCapIfpfOY6hZ4MctlfjDSvUiNT7Y4lY3qAVckf
         jvFFDxbSaxR4jia2/mcjl5hmgYXTMUhuHvbkv2u/I5raJOs4WJQUXuRKwTDq/2DD3Lbr
         7yVTIPHR2yrP2TU81UIJgUWq/oPuv7eAqqg6bb3QISniChBHgt+EPRtRIsO/hvGkbFSC
         qcfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=eoD+bOpw3+JGZDnZC0/b6xtRtmXnyftAFdMJwcKUM9o=;
        b=AMUD83X//P8zGIWHSv06cEGP/rD06cMoxV1BIY6zavqXst9rqF6aC1Clykt1keCeFm
         NMs4s6l5z0jbsmEXjE4scSrf8zPqvqFRcVkZYpfx+zMOCqPR1iScNurmvkS8KErPILhl
         umaTcUh1ozryU6/sA8DIs56B6IuOvmrJx0QCQtbW43v7ai3lwAORfa+YnFQpiV/M4k8I
         Ibms7EG8o6K05vx+M4uR85VP0WrPw7tfjLPnJ7tFe9GzCpK6WJfuxVrLNVM3R791onaZ
         bW5F1Bft6eZa9ahCVPd/Q9MNk+j6bKniwGP1AMRVy8GsIu0Zh/Y6PgCcAGDwNpeWfGTR
         Iv6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id u47si448123qte.3.2019.08.09.15.01.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 09 Aug 2019 15:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x79M0hxV029775;
	Fri, 9 Aug 2019 17:00:43 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x79M0gEs029774;
	Fri, 9 Aug 2019 17:00:42 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 9 Aug 2019 17:00:41 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        kbuild test robot <lkp@intel.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
Message-ID: <20190809220041.GO31406@gate.crashing.org>
References: <87h873zs88.fsf@concordia.ellerman.id.au> <20190809182106.62130-1-ndesaulniers@google.com> <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com> <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Aug 09, 2019 at 10:03:01PM +0200, Christophe Leroy wrote:
> Arnd Bergmann <arnd@arndb.de> a =C3=A9crit=C2=A0:
>=20
> >On Fri, Aug 9, 2019 at 8:21 PM 'Nick Desaulniers' via Clang Built
> >Linux <clang-built-linux@googlegroups.com> wrote:
> >
> >> static inline void dcbz(void *addr)
> >> {
> >>-       __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory=
");
> >>+       __asm__ __volatile__ ("dcbz %y0" : "=3DZ"(*(u8 *)addr) :: "memo=
ry");
> >> }
> >>
> >> static inline void dcbi(void *addr)
> >> {
> >>-       __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory=
");
> >>+       __asm__ __volatile__ ("dcbi %y0" : "=3DZ"(*(u8 *)addr) :: "memo=
ry");
> >> }
> >
> >I think the result of the discussion was that an output argument only=20
> >kind-of
> >makes sense for dcbz, but for the others it's really an input, and clang=
 is
> >wrong in the way it handles the "Z" constraint by making a copy, which i=
t
> >doesn't do for "m".
> >
> >I'm not sure whether it's correct to use "m" instead of "Z" here, which
> >would be a better workaround if that works. More importantly though,
> >clang really needs to be fixed to handle "Z" correctly.
>=20
> As the benefit is null, I think the best is probably to reverse my =20
> original commit until at least CLang is fixed, as initialy suggested =20
> by mpe

And what about the other uses of "Z"?


Also, if you use C routines (instead of assembler code) for the basic
"clear a block" and the like routines, as there have been patches for
recently, the benefit is not zero.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190809220041.GO31406%40gate.crashing.org.
