Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBN4656CAMGQEZMGYV2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4C537BCD9
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 14:51:04 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id x10-20020a54400a0000b02901e9af7e39cbsf8661986oie.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 05:51:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620823864; cv=pass;
        d=google.com; s=arc-20160816;
        b=pELQPzLp4CzpKZ8o7aBdFB7WRIxruAUeMGvH55BQ9ukWP6Xfj+BMUTgYp4G9Rn/1PD
         Uwu0XjK5/1GQ1+6s0og5Wxjsv4lS+PmrKsrOJS/iBm/4boPRmnYqXMzRBNEJ5riLxH7z
         LFH6m+qbHyhDdv+ChUlLcKze0fqtTu1KD/MT6ph+bj2FypSe8BeVGysgb1OBR2aHQE+X
         Vvmm+mArih/gKGDSvuep1VF28YECXZMmlIEKxXs/w9xEEkWldVO17Rfr2OcWOBsLBk59
         a2hihwCtRa0NlMQuW/SUMaW+gPj5sLT2zL2cn+KkvKjltmAGE31L5/J5NQvWZiSezozQ
         seOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=0HCgj4W0N2BvjWszBHQzi/YFKP6nEIAROwdBc+4yKhI=;
        b=ta19ZxRcSLQLrg0emvdjRmgK29LZimnCIb3Q0Oc4FuXcUZ6vTURDHoV257GJ68hsIC
         yiyoFz+DbaDBfAgh7+GgOk90Z00mAVXZqlJVO34f0Xdgz8u11tM3agwRLNv39xSUBF8O
         HoQczxwxLYuy1EA6ZX0DEPKlKwr8c9UQyZn5eR1dgcXfRRLvkkwSmywWGB8Zq9WM/KI9
         wlnVLkhOOYVqXZjDytdw3OxP8Yu7VAr3jFXb+tTLRkGovuoTxl4c7KYuthpBIjJSyU5s
         RYb7uDk3uHQBgugsiNuQCBhHjHSKYtLxTT5bShR2aYt8K45qfrFWbXf//ePaXjcVLFYU
         EGUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=osjVDqbE;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HCgj4W0N2BvjWszBHQzi/YFKP6nEIAROwdBc+4yKhI=;
        b=MKNXwN0LgZeFZD3smNQB6XuIv5es0jE8JSSjU7oEBXDqHNfahrxjhvtwjU0E95QG8y
         DP8XS1Tpj3rbSOiPseV3yIrnH5JAJR3K+ftP7DbXx7AAGRz3LVyFI5g2IA+zukHFkAgj
         nbDmC5J3qe4F43+yaJDB28x1CYX5WDLHxhrW+MGJYRTDm+TDaIo/NulH0ChMobxtpVbt
         qJWTiVqhizGjvt9tvJwgE5t3Tm/5bXnmZ4rbvEYTg9iInntrrPej9f7EYTtPSxa8bac/
         PxJlwJJQcl+6KEc9M7uUMb4rupU9KCfjvAXUeJWvtKxYTB6/P6l1P9cRg/eWLNqzM3cy
         GnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0HCgj4W0N2BvjWszBHQzi/YFKP6nEIAROwdBc+4yKhI=;
        b=R1Wq8eFAz9ivjVsFByH8+ubIKDHzdxdsxViyw9jX/C9AZcMuQrgEVfqYCmVufaYABz
         CdEj23fqmB8YvMZR3OV1Ne2PRXAhJdyNcYPAYY5nuqM7NyH2UDjG1xPYuZi8ecyjPyby
         ff0QdVVC4FA1CZ3PGecNHPBX8dESQ7VEp+ax2rhHXbKRK1lFOClc+flielv7ZXBfkm11
         Ue6ZnbckQPKJjRFf0RbKw8VV4KFp4rFNY39crvTusj67185+cVDjAyWhK5Yld7HWi2aC
         ILFL9IT+HdIUSSUiLUt8FRI1BsHlaBABd1oKu0kNV3OeZybOQAmxwe3lWBbO46T9U+Zi
         F8oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331uIzhAz08P1Y+HEuV6UEbCajaNpCHh091r3AjBTNOwc5hFwLw
	dKJhM5lcL+60ZAqhAN0163Q=
X-Google-Smtp-Source: ABdhPJyx3urSQJybPy5m/EzSR5HHzaIRrkru9B14Zwys/l4LZA4UlNvy9CI4KRRUfuwtflYy/IlGnQ==
X-Received: by 2002:a05:6808:10d:: with SMTP id b13mr23039478oie.116.1620823863893;
        Wed, 12 May 2021 05:51:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:103:: with SMTP id 3ls690615otu.1.gmail; Wed, 12 May
 2021 05:51:03 -0700 (PDT)
X-Received: by 2002:a9d:12d2:: with SMTP id g76mr31674532otg.216.1620823863523;
        Wed, 12 May 2021 05:51:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620823863; cv=none;
        d=google.com; s=arc-20160816;
        b=BU7i7V+3NCrS8xw24TrPjR34S0C4MppZkm4aJ7mDwNKu44ZjRiW3Q9aS2z/zPhCvT+
         bD2vDSphA837UOu2inqHgrjbEgzwxgqvgu59+nxdE+qPEiBNd5Su8hAwBHURNNi2Xuam
         2+EKOIjri+NlglGgXJI7zAVhxVijNoMUD42SnDtk4duqY6kp0npk9HD9pF+r8vuEtBbh
         XAI/tnxpg6baUUcCKuNu6iFJEW3eiwMjZs5eHxeO/k+s8p4idpBwRaGgad5LAyrDgYi4
         YYyxpc2MMx37iz4k9bVi1+YTgy9SiS2u1YswtZzkdEp74ZXCUEDIzFScmJzOMT/sP6m8
         FMpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RtmcSWfNOR9QKWrlhFmN1xy+R//S0GxyFSS+HqV1EmQ=;
        b=tNPHuCQrXVDEId6o7QywEaU9H4D1qC6QCIuurLkjGgYsL4NJeivv0EQ2EOO7WHoj8r
         f+1zVLq31W9m1yUreY6veAFWXUiGaMBGiX8q0yP7zvLMk47SjxXl3+y98Y4rszGyqnq3
         J55pEwdjnSeJo6m7+y6p58EwpNd216VNZZxzUCCtiAfeZpmJiZHSEn8ZRozdJg/iPlyY
         50qDXe/lq+7MXzbrh+goIlQPWyzzkDZFn3kbl31BOksZHpV9zwgmOyyJs5U/2ql5cbks
         kCK2GtSWy3S8OlkkXX22US09TaNSglsS2PL6Ksf1mUrDNFopAsGT7c35cQKj1tXUxiNq
         DUKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=osjVDqbE;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si1931254oot.1.2021.05.12.05.51.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 05:51:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B2F4613CD;
	Wed, 12 May 2021 12:50:59 +0000 (UTC)
Date: Wed, 12 May 2021 21:50:57 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nathan Chancellor <nathan@kernel.org>, kernel test robot
 <lkp@intel.com>, Nick Desaulniers <ndesaulniers@google.com>, Masahiro
 Yamada <masahiroy@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Michael
 Ellerman <mpe@ellerman.id.au>
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
Message-Id: <20210512215057.6875aeaf67fb31495ab29987@kernel.org>
In-Reply-To: <520bd3e7-ddee-bbee-0735-6aad29acb5bb@csgroup.eu>
References: <202105120059.uTLH58Lm-lkp@intel.com>
	<48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
	<208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
	<0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
	<520bd3e7-ddee-bbee-0735-6aad29acb5bb@csgroup.eu>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=osjVDqbE;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, 12 May 2021 11:52:30 +0200
Christophe Leroy <christophe.leroy@csgroup.eu> wrote:

>=20
>=20
> Le 12/05/2021 =C3=A0 11:36, Christophe Leroy a =C3=A9crit=C2=A0:
> >=20
> >=20
> > Le 11/05/2021 =C3=A0 20:46, Nathan Chancellor a =C3=A9crit=C2=A0:
> >> On 5/11/2021 9:47 AM, Christophe Leroy wrote:
> >>> Hi All,
> >>>
> >>> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
> >>>> Hi Christophe,
> >>>>
> >>>> First bad commit (maybe !=3D root cause):
> >>>>
> >>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git master
> >>>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
> >>>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable OPT=
PROBES on PPC32
> >=20
> > Ok, the problem appears on PPC32 with that patch, but it must have been=
 there on PPC64 since the=20
> > implementation of optprobes with commit 51c9c0843993 ("powerpc/kprobes:=
 Implement Optprobes")
> >=20
> >=20
> >>>> date:=C2=A0=C2=A0 3 weeks ago
> >>>> config: powerpc-randconfig-r033-20210511 (attached as .config)
> >>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=
=20
> >>>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
> >>>
> >>> A clang issue ?
> >>>
> >>>
> >>>> reproduce (this is a W=3D1 build):
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.gi=
thubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O=20
> >>>> ~/bin/make.cross
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make=
.cross
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc c=
ross compiling tool for clang build
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install b=
inutils-powerpc-linux-gnu
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
> >>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8=20
> >>>>
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linu=
s https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags=
 linus master
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout eacf4c=
0202654adfa94bbb17b5c5c77c0be14af8
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached=
 .config to linux build tree
> >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PA=
TH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D1 ARCH=3Dpowerpc
> >>>>
> >>>> If you fix the issue, kindly add following tag as appropriate
> >>>> Reported-by: kernel test robot <lkp@intel.com>
> >>>>
> >>>> All errors (new ones prefixed by >>):
> >>>>
> >>>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'is_k=
probe_ppc_optinsn_slot'=20
> >>>>>> [-Werror,-Wunused-function]
> >>>> =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
> >>>> =C2=A0=C2=A0=C2=A0 ^
> >>>> =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expanded fr=
om macro 'DEFINE_INSN_CACHE_OPS'
> >>>> =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(unsi=
gned long addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
> >>>
> >>> That's a 'static inline', shouldn't generate an 'unused function' war=
ning.
> >> This is a W=3D1 build, which means that "inline" does not silence unus=
ed function warnings with=20
> >> clang because of commit 6863f5643dd7 ("kbuild: allow Clang to find unu=
sed static inline functions=20
> >> for W=3D1 build").
> >=20
> > Ok, I didn't know that.
>=20
> After looking at it in more details, I don't really know what should be d=
one to avoid that.

Ah, thanks for reporting!

>=20
> This unused function is defined as part of DEFINE_INSN_CACHE_OPS(ppc_opti=
nsn).
>=20
> The code uses other items defined by macro DEFINE_INSN_CACHE_OPS, so it c=
annot be removed.
>=20
> Solution could be to hide that in a .h, but is that worth it ?

The best solution is to remove ppc_optinsn, but that is defined in kernel/k=
probes.c
just because page allocation is different.
I think the easiest fix is to add weak alloc_optinsn_page() and override it
in arch/powerpc/kernel/optprobe.c.

Thank you,

--=20
Masami Hiramatsu <mhiramat@kernel.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210512215057.6875aeaf67fb31495ab29987%40kernel.org.
