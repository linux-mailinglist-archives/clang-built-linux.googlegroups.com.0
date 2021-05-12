Return-Path: <clang-built-linux+bncBDGIXFWLTIHBB46P6GCAMGQEK656ARI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E7837EFED
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 01:42:45 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id v6-20020a6261060000b029028e72db2cfdsf16000311pfb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:42:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620862964; cv=pass;
        d=google.com; s=arc-20160816;
        b=JKphFN6/Oe2UCyr9LVn5FEyY5cco8d0ZrUWhUw7u5s4nTfU6YYLbjQSd55noFImXOo
         53gys+NZQtAFI0uRQB6HmnHCtc2zdgB2fv99wLbW7ZaqXyLnWun+T77ohB0n9KyicEQ6
         DEMmkCQFSy5zd1BDEalwwCm9QDzg4Id4y82MzApMSQJZmi+sV1Jsq+vf6y0Rv/UFnIZP
         rND/ndRGWZCF1ONYQjepquyx6L/plGttXObK6hFbDJ2YEKW/RoWWAYDRLd8D3/NyQs6O
         pEbJd+zb4+NN0ssQNhAyVPVS9XAL3VSG/2KdFKZcU0m3L41hf9zVTpsRQnUU3iVShDCJ
         edXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=vJZU9Pp3oi2g0lY1iW3oqQ01gbSgHsQ9c+akL+Ulb4Q=;
        b=OSErF+vWn29rVtVxhWjr2R6dKjLYrQMhq/khWTL9bk43R01xPED9iOeuiHBP1NH8y7
         4U8K+YJaWyoVUgoRC3nCCYhLrnvSDI02+oaMUrAFKouTJVJ1WrxJT39l8Yq6mY///wJG
         Vixq+4VIZ9Z/Cz+4TJBqfz8YKkr9VMGC8uinQIo9hQxttvHwpAkzBHxIfPtzox1DxZ3D
         0h5Z7BVMoazNexTEA/JgiywNw6Mj358G6WWv3jRoLMIVuGLFEQJGPe+pRqJJGdJ32r26
         ZUIrxQGJZkFtJ+mP8gC1Yt2ScPTvVB9w70wFRSAZij/kQr51/Xu8Ea7gTiDD21Sbrlrn
         Sz8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=k6cWidD1;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vJZU9Pp3oi2g0lY1iW3oqQ01gbSgHsQ9c+akL+Ulb4Q=;
        b=UnUeLT8MgrTpXG4IuM/XhkSBHBq7T1VQaxr1747mhd3A4XU0RVAZxzAk5VzbD1WSzr
         HvYC1UP7BpRI4AX4t+VMrdcRCuG+vXAlHvdtCsDzowMn6iiuQhxiMWnLkOf27N2+yCI0
         8WSdoOuOpTxS5ZjFLv6qWQGVokY0TPyCCW6L9rrTtBw/0/+pQXXJJDSIed1QpjRu0IvS
         e/ynJFb0SFvpzoV2g0aNRTDwHcE1CHsNPErsboy5FCJ9z8X/bP8OGk/++/vlUWiYw8Bi
         lsyg3tRpKekcRzLJisRafiDAcC/HfwkHwFDWPox0md9jqQxLlF33mKIAd8bEbDI+S3Gd
         nxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vJZU9Pp3oi2g0lY1iW3oqQ01gbSgHsQ9c+akL+Ulb4Q=;
        b=Wx3FR24fqCf0u9xVzzeS6qkDnTp96FpN8FUQF6BRK3nzQkdkKmCS0O/o7nw/HmNZTl
         cCUis+dAgh0/5lq5z4k6joic+IJKMJUWSWTs9gmAmx83rCL6k599KsUmVj02zZHuGT5L
         skcglsKTDZ6899I24Zi12Sv0Kn/PmqGfp3hkzyTBB353NGhopF+ir0AxPWiaERym56sc
         bnWxKR4UbH+zes88mYDNoRtDo5MaNX2XcnL8KX1EEninzD6nV39pznCNFNRCszqrkni3
         ZZuTPvvPHYIyTNLaYs5AjSJl4Rhs6joAwnnFMsVUKn0HZHDxntL3Mu53oR7Ir5BfXKxz
         CGBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MeObLamroJVBzjsoRvpR4TIOlJ/vO0rCCNL/jsUrdTVC32E76
	cKFbGkVm7nlSaf/T22b1deY=
X-Google-Smtp-Source: ABdhPJwHRrow2yX/WXDlUGS4xb9LYPeQEdhpQ3FxQ8y8b4GZotXkNKizdZiVqhMjE5nvVdnyu2hAQQ==
X-Received: by 2002:aa7:8b4f:0:b029:2bd:ea13:c4b4 with SMTP id i15-20020aa78b4f0000b02902bdea13c4b4mr18518444pfd.48.1620862964102;
        Wed, 12 May 2021 16:42:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79d4:: with SMTP id u203ls1636496pfc.8.gmail; Wed, 12
 May 2021 16:42:43 -0700 (PDT)
X-Received: by 2002:a63:5322:: with SMTP id h34mr39219858pgb.182.1620862963559;
        Wed, 12 May 2021 16:42:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620862963; cv=none;
        d=google.com; s=arc-20160816;
        b=HMlBQNIxpVYelOiQoV4I3q4dEb/eC4A6G3ZobGeZOZe4QidKDnXgdVZFZSdNgV4EJz
         5uSAeijoT+lUGolx3gu1QwV1OacizF3YRolxrRSwpKGF3l4ClueG49HKyFviKkLOH8lC
         396M9OPiZu/iUQ/+fJTIBOnWHHWbOsxj/aD7ATS3Pze8T/9s1EalOSuYq9bDoibHh/OG
         uMrgjH0CuZmQ/JVhl5tMzV1Ogm/fjkBMjAIveLEfVXliiGuNsrDyIScd4hh/mCZMIrn3
         GFyUkvptKYUjXN88GgtvxKrT6qH71Kgk4jWRxnXRJfc+KHI4xkj1i1uj7eoFRzZSsjsE
         8sag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=J6FvKmxmXmWPdu/ueBBZv/4NVozTyq4S50V8xccbE54=;
        b=RJ1ec2IZE9s8Yh+P6HZXTDRhHY7tV1WLuuoWIXz4qYiEaPGPxN7BtDEvQ9Kw+7NlLf
         jSuJb6vGJ5L+VybfR18fYs+/6EgHbudXoAxX09XNNjqceAiCxdNH4gGTujaDhfUapQB+
         19Wia0WZwii+PNmczLORyYN7d61EK2Ob0ANsg+n7qjuTvPUYjBqEW4prG/U/tjo+CQpX
         KJ1cBmsucnZsj9TNJKl09h6IAwNF1/Faa3yak+gzddtZ1Mo9dLqrfVDy0GeB0wRKbWsh
         vDcDL5t/F0XPST9QsrQmL8ZBucb9fKCyHpvflpsrPToYM6GudlT+/fbCAsnSXPvQ4l38
         ZOiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=k6cWidD1;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si110248pgv.3.2021.05.12.16.42.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 16:42:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1CF4361405;
	Wed, 12 May 2021 23:42:40 +0000 (UTC)
Date: Thu, 13 May 2021 08:42:39 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nathan Chancellor <nathan@kernel.org>, kernel test robot
 <lkp@intel.com>, Nick Desaulniers <ndesaulniers@google.com>, Masahiro
 Yamada <masahiroy@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Michael
 Ellerman <mpe@ellerman.id.au>
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
Message-Id: <20210513084239.3af8c2498263e7f0b233b72e@kernel.org>
In-Reply-To: <8d12be5a-d700-c0aa-86ee-ebb97927c34c@csgroup.eu>
References: <202105120059.uTLH58Lm-lkp@intel.com>
	<48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
	<208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
	<0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
	<520bd3e7-ddee-bbee-0735-6aad29acb5bb@csgroup.eu>
	<20210512215057.6875aeaf67fb31495ab29987@kernel.org>
	<20210513000649.23ac7bc69e30d8b9421a6ff6@kernel.org>
	<8d12be5a-d700-c0aa-86ee-ebb97927c34c@csgroup.eu>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=k6cWidD1;       spf=pass
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

On Wed, 12 May 2021 17:12:32 +0200
Christophe Leroy <christophe.leroy@csgroup.eu> wrote:

>=20
>=20
> Le 12/05/2021 =C3=A0 17:06, Masami Hiramatsu a =C3=A9crit=C2=A0:
> > On Wed, 12 May 2021 21:50:57 +0900
> > Masami Hiramatsu <mhiramat@kernel.org> wrote:
> >=20
> >> On Wed, 12 May 2021 11:52:30 +0200
> >> Christophe Leroy <christophe.leroy@csgroup.eu> wrote:
> >=20
> >>>
> >>> Le 12/05/2021 =C3=A0 11:36, Christophe Leroy a =C3=A9crit=C2=A0:
> >>>>
> >>>>
> >>>> Le 11/05/2021 =C3=A0 20:46, Nathan Chancellor a =C3=A9crit=C2=A0:
> >>>>> On 5/11/2021 9:47 AM, Christophe Leroy wrote:
> >>>>>> Hi All,
> >>>>>>
> >>>>>> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
> >>>>>>> Hi Christophe,
> >>>>>>>
> >>>>>>> First bad commit (maybe !=3D root cause):
> >>>>>>>
> >>>>>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git master
> >>>>>>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
> >>>>>>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable =
OPTPROBES on PPC32
> >>>>
> >>>> Ok, the problem appears on PPC32 with that patch, but it must have b=
een there on PPC64 since the
> >>>> implementation of optprobes with commit 51c9c0843993 ("powerpc/kprob=
es: Implement Optprobes")
> >>>>
> >>>>
> >>>>>>> date:=C2=A0=C2=A0 3 weeks ago
> >>>>>>> config: powerpc-randconfig-r033-20210511 (attached as .config)
> >>>>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-proj=
ect
> >>>>>>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
> >>>>>>
> >>>>>> A clang issue ?
> >>>>>>
> >>>>>>
> >>>>>>> reproduce (this is a W=3D1 build):
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://ra=
w.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O
> >>>>>>> ~/bin/make.cross
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/=
make.cross
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install power=
pc cross compiling tool for clang build
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get insta=
ll binutils-powerpc-linux-gnu
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #
> >>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8
> >>>>>>>
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add =
linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-=
tags linus master
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout ea=
cf4c0202654adfa94bbb17b5c5c77c0be14af8
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the atta=
ched .config to linux build tree
> >>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTAL=
L_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D1 ARCH=3Dpowerpc
> >>>>>>>
> >>>>>>> If you fix the issue, kindly add following tag as appropriate
> >>>>>>> Reported-by: kernel test robot <lkp@intel.com>
> >>>>>>>
> >>>>>>> All errors (new ones prefixed by >>):
> >>>>>>>
> >>>>>>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'i=
s_kprobe_ppc_optinsn_slot'
> >>>>>>>>> [-Werror,-Wunused-function]
> >>>>>>>  =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
> >>>>>>>  =C2=A0=C2=A0=C2=A0 ^
> >>>>>>>  =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expande=
d from macro 'DEFINE_INSN_CACHE_OPS'
> >>>>>>>  =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(=
unsigned long addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
> >>>>>>
> >>>>>> That's a 'static inline', shouldn't generate an 'unused function' =
warning.
> >>>>> This is a W=3D1 build, which means that "inline" does not silence u=
nused function warnings with
> >>>>> clang because of commit 6863f5643dd7 ("kbuild: allow Clang to find =
unused static inline functions
> >>>>> for W=3D1 build").
> >>>>
> >>>> Ok, I didn't know that.
> >>>
> >>> After looking at it in more details, I don't really know what should =
be done to avoid that.
> >>
> >> Ah, thanks for reporting!
> >>
> >>>
> >>> This unused function is defined as part of DEFINE_INSN_CACHE_OPS(ppc_=
optinsn).
> >>>
> >>> The code uses other items defined by macro DEFINE_INSN_CACHE_OPS, so =
it cannot be removed.
> >>>
> >>> Solution could be to hide that in a .h, but is that worth it ?
> >>
> >> The best solution is to remove ppc_optinsn, but that is defined in ker=
nel/kprobes.c
> >> just because page allocation is different.
> >> I think the easiest fix is to add weak alloc_optinsn_page() and overri=
de it
> >> in arch/powerpc/kernel/optprobe.c.
> >=20
> > Please try this patch.
> >=20
> > Thank you,
>=20
>=20
> Yeah, look pretty similar to the two patches I sent 30 minutes ago.

Ah, I missed it.
OK, let me check.


>=20
>=20
>=20
> >=20
> >  From 7782fa154349923ed52baa8843cc1d5eed26e82d Mon Sep 17 00:00:00 2001
> > From: Masami Hiramatsu <mhiramat@kernel.org>
> > Date: Wed, 12 May 2021 23:33:10 +0900
> > Subject: [PATCH] powerpc/kprobes: Define arch specific optinsn memory
> >   allocation
> >=20
>=20
> > @@ -203,14 +193,14 @@ int arch_prepare_optimized_kprobe(struct optimize=
d_kprobe *op, struct kprobe *p)
> >   	unsigned long nip, size;
> >   	int rc, i;
> >  =20
> > -	kprobe_ppc_optinsn_slots.insn_size =3D MAX_OPTINSN_SIZE;
> > +	kprobe_optinsn_slots.insn_size =3D MAX_OPTINSN_SIZE;
>=20
> Is this still needed ? It looks like it is already done by init_kprobes()=
 in kernel/kprobes.c

No, not needed anymore.

Thanks!

>=20
> >  =20
> >   	nip =3D can_optimize(p);
> >   	if (!nip)
> >   		return -EILSEQ;
> >  =20
> >   	/* Allocate instruction slot for detour buffer */
> > -	buff =3D get_ppc_optinsn_slot();
> > +	buff =3D get_optinsn_slot();
> >   	if (!buff)
> >   		return -ENOMEM;
> >  =20
>=20
> Christophe


--=20
Masami Hiramatsu <mhiramat@kernel.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210513084239.3af8c2498263e7f0b233b72e%40kernel.org.
