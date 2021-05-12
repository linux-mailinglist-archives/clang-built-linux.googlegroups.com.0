Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBD6656CAMGQELU5QU6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6D537C238
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 17:06:56 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id n1-20020a628f010000b02902a0e02b2be8sf11932601pfd.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 08:06:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620832015; cv=pass;
        d=google.com; s=arc-20160816;
        b=N94NZ/UxlAFPzstBXjXyKuS1As3xHe4+uacIc/QtOYhBzwvK5qRorznG/41PKLIRFc
         nmNd5vgsrRnBYt/kgpxKZl3+xh7FjvgHUsdLznYjYrqoxQrY+hKuIrvhDcXeSojw4zEi
         Euk+ZBEpt+Pcuz32v2qJzoCeTD0Jrqzw8NG0hGbCIdceAp1YxkunfN4bENOiuNAc/SFm
         ba3cd6JhHWQG3UFhQGaga8rjb3oIt1KWFbAXCxO90yA7sDdqxfSTjyhtX3OCcVoiP0iT
         9290X0x2QOfammErpzFiL2vxkgp//VbodwmF672tf9myKf+s/u4KawDLj0CCBQzUyTos
         5gSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=PDYi2DOiVLM+utZbxoBxA37UhJ/XzXnb9N5PyPoXNfQ=;
        b=R4lE2ye+8KRXoGmHkrfTazuqudSlajmOz6fy9JQsESgntWUwA1V5BZNBNJb4ZQBnej
         yeJUP2faza2pydXGm+bSXA6tBZXNrgFt/1mHjDnmqFCtngnZUkX7TofDC6lriKAZXuYl
         ZF5j66a0eTqNNkSQNXVDqKTzhFqn1Ac+QColH44sRElbBSWwcwuf9hOoFnW6UHPZRuco
         Zut4KWfIwCdZoBIadqFMyIBsvZjm0kf9xlxUhaonoFpOWIc6bv8MNTj9PDuSwdpIA7BU
         T8yVJWsyoIwirBBlN5TbumZcygO5MdLgFn2tI6Cbb3kfF8Po9fNFcJtcfH41aVfhyaT6
         YUZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DF3OTSiM;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PDYi2DOiVLM+utZbxoBxA37UhJ/XzXnb9N5PyPoXNfQ=;
        b=WqIYZBmlJPU1GM+uolY2UvVOfIXoTlp22rQcs22OGHTfLxvDtKiQRxNLJPkulZZYZm
         vE/u0Sg6cyWO64cWmkXWPbnocwqHYlPv0BqjCLqdWW2uaQO07kJEwxKfhXdCRJ2L5V0B
         zAt3RzknIMF2yYAEQO8JCWQ2PjArZUYUHuyTEqL4F41y+kG3763vWLa5CfbgLIVmNI66
         kzi+48dexEvEjt2HU+NmTdek9WnAt0vUIrzjaXqM/MZYl87YpUP9NrbpmXdE1tbdKSa3
         B3ja+PRGW61vLmgtZl4KWm9vnB8P8YWWEFJg5BI4sU5JCZ5ugR5CEaDgjdFqjpeEz+gy
         BEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PDYi2DOiVLM+utZbxoBxA37UhJ/XzXnb9N5PyPoXNfQ=;
        b=lx68LkCe8ZKOdWNs2DTAv8i55OXLNfbD8/4zw8TOVEVFeSgUl4SiQ1CvW5bVGpBl5H
         BKPAlP9Bct9OIplqPCRhrLhLI0eRGjDITYDwMFGIhApvKm4t+HA7iYzXFQNMuHecqN0N
         wwbD68cxWHgPmSBIu+OyHed1dXLsCw5jKUjEvp7gIvjcEWFLdcfS+wcsCyTFlicNmkax
         h81y6r2D8hzkR9Hr/S7SHbb7Z9EwRPKF/4ZLIOml5YJ7is3Ue0Kz09GeUkKejfbX74i2
         0LCPU5oClu8hWA3YeYI2ccw4g9W1PcUL5LS6cn2amcrJDjPP7xbGHH4PPpTRYGxec6wJ
         G+2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o8+QzxB4vWtnB0m5xS3fmolLUG9hi1kRTqQq3dHjb/0ivTKI7
	MsUZ0Z/ZelI7I0TpKRgU3/I=
X-Google-Smtp-Source: ABdhPJwtB8CE848p0X+M0W3dKeMn8xJvgRx9g4+NYqLz37FSFl4jdbGFjYJIpAanvoXrPSYkDpcYhw==
X-Received: by 2002:a17:90a:5d93:: with SMTP id t19mr39402774pji.116.1620832015582;
        Wed, 12 May 2021 08:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3014:: with SMTP id hg20ls3916764pjb.3.canary-gmail;
 Wed, 12 May 2021 08:06:54 -0700 (PDT)
X-Received: by 2002:a17:90a:3ba1:: with SMTP id e30mr40098809pjc.99.1620832014814;
        Wed, 12 May 2021 08:06:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620832014; cv=none;
        d=google.com; s=arc-20160816;
        b=E/SbYvFHWOr33x6PvbLaen+pk5BqaaHNQJTcFEE22xA0pitB41OhJx739/39NvzUHC
         xVTZ4EoizDAQekcs+c02cvqKjyv03JtYEs+UqFvMjQq7OvObbpExBJ2qJP1zi+W3HMb7
         ljdyrnwnzP1W2ieUKCQ8DxwZgZ3XA21ScgEi05aoHqOYOhF2ung58tzCL1tZAXYyoGE/
         E6fEMtLM7ecWksgmLE8xGygEhMTTkiJ8j6v+9MmbYvK3dQhqDVmVaNtMDtQu33WVX3By
         5tYVhQXQONLxQ98TNKxCOBZCq4C3a2p7wrafi36ED6LoJPG056v8Jgfd/Re1wNW1sRVK
         vzXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PtNhR5k4X89FGISTf9XJO0H0pRBeS4wCI8efZhfdxUk=;
        b=mRwBbTOZD2/4KNeuoMtZdMyo3uWkYWvupAGwVZxY34xadFIVonz7TgTsHcBQTeY0Ww
         hXrz7nWFxh7nY9UWIZzRAf7jevPNFS/z7In0n24FYZJdub/0NShVoZpqZuSRjD4LbQ7E
         YUqp8uGCnOwI/HwyfXjifSsM2x4X95O1XZNMdwLggRptJUrcIxWxbB7Ew+KpGxfjYgJl
         a/uBgqjyvamgXvUQGlgmz0gEa+FjItAkP0DnrTz1A/lnmklUoP60oaDWOXaP7SfcjQNc
         HKhdSFL2WULxXkiPeJ+OvHFoBHtNAGJ7dacxL4IWyz4VLpa0hY2+c+qP9PFkRkbSdaiE
         aQ5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DF3OTSiM;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n35si42029pfv.6.2021.05.12.08.06.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 08:06:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D1B6A61988;
	Wed, 12 May 2021 15:06:51 +0000 (UTC)
Date: Thu, 13 May 2021 00:06:49 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, Nathan Chancellor
 <nathan@kernel.org>, kernel test robot <lkp@intel.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
Message-Id: <20210513000649.23ac7bc69e30d8b9421a6ff6@kernel.org>
In-Reply-To: <20210512215057.6875aeaf67fb31495ab29987@kernel.org>
References: <202105120059.uTLH58Lm-lkp@intel.com>
	<48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
	<208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
	<0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
	<520bd3e7-ddee-bbee-0735-6aad29acb5bb@csgroup.eu>
	<20210512215057.6875aeaf67fb31495ab29987@kernel.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DF3OTSiM;       spf=pass
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

On Wed, 12 May 2021 21:50:57 +0900
Masami Hiramatsu <mhiramat@kernel.org> wrote:

> On Wed, 12 May 2021 11:52:30 +0200
> Christophe Leroy <christophe.leroy@csgroup.eu> wrote:

> >=20
> > Le 12/05/2021 =C3=A0 11:36, Christophe Leroy a =C3=A9crit=C2=A0:
> > >=20
> > >=20
> > > Le 11/05/2021 =C3=A0 20:46, Nathan Chancellor a =C3=A9crit=C2=A0:
> > >> On 5/11/2021 9:47 AM, Christophe Leroy wrote:
> > >>> Hi All,
> > >>>
> > >>> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
> > >>>> Hi Christophe,
> > >>>>
> > >>>> First bad commit (maybe !=3D root cause):
> > >>>>
> > >>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git master
> > >>>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
> > >>>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable O=
PTPROBES on PPC32
> > >=20
> > > Ok, the problem appears on PPC32 with that patch, but it must have be=
en there on PPC64 since the=20
> > > implementation of optprobes with commit 51c9c0843993 ("powerpc/kprobe=
s: Implement Optprobes")
> > >=20
> > >=20
> > >>>> date:=C2=A0=C2=A0 3 weeks ago
> > >>>> config: powerpc-randconfig-r033-20210511 (attached as .config)
> > >>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-proje=
ct=20
> > >>>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
> > >>>
> > >>> A clang issue ?
> > >>>
> > >>>
> > >>>> reproduce (this is a W=3D1 build):
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.=
githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O=20
> > >>>> ~/bin/make.cross
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/ma=
ke.cross
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc=
 cross compiling tool for clang build
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install=
 binutils-powerpc-linux-gnu
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
> > >>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8=20
> > >>>>
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add li=
nus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-ta=
gs linus master
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout eacf=
4c0202654adfa94bbb17b5c5c77c0be14af8
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attach=
ed .config to linux build tree
> > >>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_=
PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D1 ARCH=3Dpowerpc
> > >>>>
> > >>>> If you fix the issue, kindly add following tag as appropriate
> > >>>> Reported-by: kernel test robot <lkp@intel.com>
> > >>>>
> > >>>> All errors (new ones prefixed by >>):
> > >>>>
> > >>>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'is=
_kprobe_ppc_optinsn_slot'=20
> > >>>>>> [-Werror,-Wunused-function]
> > >>>> =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
> > >>>> =C2=A0=C2=A0=C2=A0 ^
> > >>>> =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expanded =
from macro 'DEFINE_INSN_CACHE_OPS'
> > >>>> =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(un=
signed long addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
> > >>>
> > >>> That's a 'static inline', shouldn't generate an 'unused function' w=
arning.
> > >> This is a W=3D1 build, which means that "inline" does not silence un=
used function warnings with=20
> > >> clang because of commit 6863f5643dd7 ("kbuild: allow Clang to find u=
nused static inline functions=20
> > >> for W=3D1 build").
> > >=20
> > > Ok, I didn't know that.
> >=20
> > After looking at it in more details, I don't really know what should be=
 done to avoid that.
>=20
> Ah, thanks for reporting!
>=20
> >=20
> > This unused function is defined as part of DEFINE_INSN_CACHE_OPS(ppc_op=
tinsn).
> >=20
> > The code uses other items defined by macro DEFINE_INSN_CACHE_OPS, so it=
 cannot be removed.
> >=20
> > Solution could be to hide that in a .h, but is that worth it ?
>=20
> The best solution is to remove ppc_optinsn, but that is defined in kernel=
/kprobes.c
> just because page allocation is different.
> I think the easiest fix is to add weak alloc_optinsn_page() and override =
it
> in arch/powerpc/kernel/optprobe.c.

Please try this patch.

Thank you,

From 7782fa154349923ed52baa8843cc1d5eed26e82d Mon Sep 17 00:00:00 2001
From: Masami Hiramatsu <mhiramat@kernel.org>
Date: Wed, 12 May 2021 23:33:10 +0900
Subject: [PATCH] powerpc/kprobes: Define arch specific optinsn memory
 allocation

Define arch specific optinsn memory allocate functions
instead of using arch specific ppc_optinsn_slot.

This fixes the unused function warning on is_kprobe_ppc_optinsn_slot()
when building with W=3D1 and also this makes kernel_text_address()
works correctly on optinsn page.

Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/powerpc/kernel/optprobes.c | 24 +++++++-----------------
 kernel/kprobes.c                | 15 +++++++++++++--
 2 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/arch/powerpc/kernel/optprobes.c b/arch/powerpc/kernel/optprobe=
s.c
index cdf87086fa33..aa017ccbd66e 100644
--- a/arch/powerpc/kernel/optprobes.c
+++ b/arch/powerpc/kernel/optprobes.c
@@ -31,11 +31,10 @@
 #define TMPL_END_IDX		\
 	(optprobe_template_end - optprobe_template_entry)
=20
-DEFINE_INSN_CACHE_OPS(ppc_optinsn);
-
 static bool insn_page_in_use;
=20
-static void *__ppc_alloc_insn_page(void)
+/* Override optinsn page allocation */
+void *alloc_optinsn_page(void)
 {
 	if (insn_page_in_use)
 		return NULL;
@@ -43,20 +42,11 @@ static void *__ppc_alloc_insn_page(void)
 	return &optinsn_slot;
 }
=20
-static void __ppc_free_insn_page(void *page __maybe_unused)
+void free_optinsn_page(void *page __maybe_unused)
 {
 	insn_page_in_use =3D false;
 }
=20
-struct kprobe_insn_cache kprobe_ppc_optinsn_slots =3D {
-	.mutex =3D __MUTEX_INITIALIZER(kprobe_ppc_optinsn_slots.mutex),
-	.pages =3D LIST_HEAD_INIT(kprobe_ppc_optinsn_slots.pages),
-	/* insn_size initialized later */
-	.alloc =3D __ppc_alloc_insn_page,
-	.free =3D __ppc_free_insn_page,
-	.nr_garbage =3D 0,
-};
-
 /*
  * Check if we can optimize this probe. Returns NIP post-emulation if this=
 can
  * be optimized and 0 otherwise.
@@ -136,7 +126,7 @@ NOKPROBE_SYMBOL(optimized_callback);
 void arch_remove_optimized_kprobe(struct optimized_kprobe *op)
 {
 	if (op->optinsn.insn) {
-		free_ppc_optinsn_slot(op->optinsn.insn, 1);
+		free_optinsn_slot(op->optinsn.insn, 1);
 		op->optinsn.insn =3D NULL;
 	}
 }
@@ -203,14 +193,14 @@ int arch_prepare_optimized_kprobe(struct optimized_kp=
robe *op, struct kprobe *p)
 	unsigned long nip, size;
 	int rc, i;
=20
-	kprobe_ppc_optinsn_slots.insn_size =3D MAX_OPTINSN_SIZE;
+	kprobe_optinsn_slots.insn_size =3D MAX_OPTINSN_SIZE;
=20
 	nip =3D can_optimize(p);
 	if (!nip)
 		return -EILSEQ;
=20
 	/* Allocate instruction slot for detour buffer */
-	buff =3D get_ppc_optinsn_slot();
+	buff =3D get_optinsn_slot();
 	if (!buff)
 		return -ENOMEM;
=20
@@ -297,7 +287,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kpro=
be *op, struct kprobe *p)
 	return 0;
=20
 error:
-	free_ppc_optinsn_slot(buff, 0);
+	free_optinsn_slot(buff, 0);
 	return -ERANGE;
=20
 }
diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 745f08fdd7a6..251fcb9d6c4c 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -321,11 +321,22 @@ int kprobe_cache_get_kallsym(struct kprobe_insn_cache=
 *c, unsigned int *symnum,
 }
=20
 #ifdef CONFIG_OPTPROBES
+
+void * __weak alloc_optinsn_page(void)
+{
+	return alloc_insn_page();
+}
+
+void __weak free_optinsn_page(void *page)
+{
+	free_insn_page(page);
+}
+
 /* For optimized_kprobe buffer */
 struct kprobe_insn_cache kprobe_optinsn_slots =3D {
 	.mutex =3D __MUTEX_INITIALIZER(kprobe_optinsn_slots.mutex),
-	.alloc =3D alloc_insn_page,
-	.free =3D free_insn_page,
+	.alloc =3D alloc_optinsn_page,
+	.free =3D free_optinsn_page,
 	.sym =3D KPROBE_OPTINSN_PAGE_SYM,
 	.pages =3D LIST_HEAD_INIT(kprobe_optinsn_slots.pages),
 	/* .insn_size is initialized later */
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210513000649.23ac7bc69e30d8b9421a6ff6%40kernel.org.
