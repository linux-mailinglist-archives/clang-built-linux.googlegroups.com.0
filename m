Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCUNY75AKGQEF5JJ7HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FAB25D0AB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 06:46:04 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id j12sf1659917ooi.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 21:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599194763; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0nydIoP1bBIEFbHSIdsA6ci/JdcX8aAaGOm4t1u3TQ270gkiAtYTwytYskJnS4Nqg
         jcWTGa16DRwFl1zNOnIjyqSBi5df9kn48ZmdZ69WcA0JmngDfCgf+kR2aVWCKXF1Xgot
         QjfVC2eE5peXqA6AQvrdB01CfstKkOIEDUUfMPKKim2U2XC82pQJEteFHOQzsQqAUEJQ
         Rf7KCweK4DDO2ZFKH/2QSzelf7BJFDut6yWJkhx0r44xpkaoel83bgeX90mM5n4PIXnU
         /yPdob8RwhqBK6wFGQdJCk/gaMS7+e322iCQMInROLSt5DHWdpGJR+YabS4jLwKZMW2v
         CUTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature:dkim-signature;
        bh=cCRS5WsuwKXI2tIl3R2cM0NbvZABb4ZR8+4XsSC0KKg=;
        b=BNK8UJiomvgxFrHDhr3IYYS5WK8vt87KIu1hRSHTQWUF23Gjkc7Jx89VwXRW9g0F3N
         myVjbFMLjPcZSkOHIXUrs3TdWXxBUxB2wJVcOHhV12ZO52I5shD+oo1iOpbPU4WwmaoO
         kcE8ywW6vrfHSGZB7F4Rxq8y0XgBMl8AfXYU/+AgPimLBfwTHnAOZiNCPpFCSKQKUY7i
         Gf5bznqFnnysfmWqEifu5M5T00jndInuklc3Ynh8XDSs3Gh4dCVAaclaBOskPVcl0h3+
         3ZP8LOz7CQfzmxtfncfiKca0fLIQel4HEvpH55MGl8BNELh7F8kNULgEp9XESpXBQrZx
         SuOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=imcxwRTM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCRS5WsuwKXI2tIl3R2cM0NbvZABb4ZR8+4XsSC0KKg=;
        b=sh7Ot9eoSCIUff+kcb8atCEXHyqGexcc0/8j5uqzvvP15tTCWAx5sI8L64QXx50h+6
         DwgR9h1I6m0Q9WlHEi9VA8RIyjnJ2SngHkFwr0UmGFnKCvgxElqHlJ06QalaDehzZ76y
         pc02kmb7+/LI4G61VCRkOoPktbk5KVT01O1C/KERR1rIVr7XVlm2gW84qOBd1zdZbKH4
         tn/v8Mw4iQLJvHG6nz6LeeRNzSK37hEBiAsHzIxhnimaMP1h2fbLAUK74Njy0oBnt5Kp
         8pTIMaYox5bXKu0HML8D4jXDtegt+b3Hm5e9+M/bwIEdi/MiXd3oHsK9Vl1p40N1Ek/D
         SJ2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCRS5WsuwKXI2tIl3R2cM0NbvZABb4ZR8+4XsSC0KKg=;
        b=EosWy4yFNAqnp0cTGbfRGjw2LjT5Spm6oTjdy7W34kpQw982tuL/ZUKRqmEdAt9kUc
         egKfYGIfXUFxxm1aO28LDo3EPZxTGcdi2tDF304rTPs8l3UqXSLyS00mwbQ8Wju+i8eD
         XEVHwVfama4yVRRwagtDYxQLrTmJnuiMbIvM+3cmP4pwMF9EbHtX1zQstkx4Aqp6IREa
         D/Bc2Ha/hoSouR6f77qUaabGnqAZ6utL848rmmI9qWwHxbfNyuYZ+oUf5/jmfEMNxTEU
         iWYznpbylod+KBc9Cu35pDNgZsNHwn4CIiSehPWFpRjTXf4RwqofdCIEJ4tjPuFE6FjN
         Vx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCRS5WsuwKXI2tIl3R2cM0NbvZABb4ZR8+4XsSC0KKg=;
        b=eAMIq46gBoAxTuhU8s8u07/iqfOuGotw9J9diSz/jy/kZFTOYTWTBvq+jSllQKj4CW
         Txp9tktzKnmnkJ8k7rDh21c1TUWGpOO1Wa1VwM4p7ESB4DrxeTYSfeQlxwlwa/zieY6Y
         wGbBYNkV9k2u07d0ikKWNNaEbDGKCO6eloIzPgNqGfvI4sfasA5kdMSxd4l2lo3L8b6M
         I6x8diqlU01MdPm3hxtCQsDhzx5JFViwp0VuzJ6I9Qh3RR09VprZIQzDdLFaKYEyJfg9
         ImBYh6mDlHk1LIIJ6vgk0aO+YTubasr3AQ5iCIws1MXa32MNfINamwyOP1RepX9ztl+b
         lMqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AyvNGv7RRbY9gSGeMpDGpt6FmgrMNHDqYynx+UNWZUbrPwDRn
	HgcyQE8iP7zQeaiVrnTYABs=
X-Google-Smtp-Source: ABdhPJzdjArTZMju78Nl953IMrLA+2mbdcJR3qq2J7SrmemE/4Xd7TO05kMMaIn4UlrlNL9pYCsseg==
X-Received: by 2002:aca:ea54:: with SMTP id i81mr4301574oih.133.1599194762976;
        Thu, 03 Sep 2020 21:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4d2:: with SMTP id s18ls915163otd.0.gmail; Thu, 03
 Sep 2020 21:46:02 -0700 (PDT)
X-Received: by 2002:a9d:ae8:: with SMTP id 95mr4364804otq.260.1599194762572;
        Thu, 03 Sep 2020 21:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599194762; cv=none;
        d=google.com; s=arc-20160816;
        b=d5Dk/KPuD82b1cbWO/Qi0X6d21l43IkeRPmdPFyjGiG1BgXDq8COjMCZ8f8E73IbGw
         q1B9Mk/EKlobIS7vrLVHSNLOxpgl8yYg4Kbdohi8PB+GaLWnRv1zKjqiGWqXGkgkBKSF
         bUPafogP2Vhc8i5rIbhW9Wvne/QdPU8U84z/rGwjwRpUYhxt81au4Qo0vAwECjOJy+Ct
         gNSMn/xMtZ5PUtkiRzDP8DN525jEmu/bQX/T4he3esfAvUnocBeWScM/A36insxzmdPx
         fH7hFNctKTHoOOXVNkxT4po5DuJvbmku1hNJJr46/XzoWlxR2C8QtvQa2jwG2M7JeHv0
         QqjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fIdJ8K/Aacee+RqsVt362vFjI3E8b1TV5wIaem+g4eE=;
        b=RE/VYFu1qiNGaGnFuH2SXCMGkgKNRbPE1O4LORnDsS4A9hQgXUivTPr/d3NNUMvN3d
         XofEoFz7hzg7TLTGOVzJ6pL4J+L8ctfFYgAGuA6gtJe1v/dIvuL+2No2ChsTzhM9aze0
         Y+rElORy8zUBmHaMSp36Na3r5UNredVtKLPGnaaWwWJKaF/mc0u1xiQM+UQoiA/bSob4
         g2NxK7lR0l+ON29cyMqnTLMsL/v2LUMWHyVg0V88IXfcbUSXsZVMsM6FgYRkFreC/2MW
         KDrCmrAf9+AZY+MJjlju49n3tdq5FYze4DE2Sr8THYqtbLDV21iOmW5r0moBO0d2ZhP2
         go4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=imcxwRTM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id d11si329534oti.2.2020.09.03.21.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 21:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id n133so5254431qkn.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 21:46:02 -0700 (PDT)
X-Received: by 2002:ae9:e70b:: with SMTP id m11mr4069627qka.210.1599194761810;
        Thu, 03 Sep 2020 21:46:01 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id w3sm3780735qkc.10.2020.09.03.21.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 21:46:01 -0700 (PDT)
Date: Thu, 3 Sep 2020 21:45:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <20200904044559.GA507165@ubuntu-n2-xlarge-x86>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <202009031557.4A233A17F1@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031557.4A233A17F1@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=imcxwRTM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Thu, Sep 03, 2020 at 04:34:09PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:25PM -0700, Sami Tolvanen wrote:
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
>=20
> Tested-by: Kees Cook <keescook@chromium.org>

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

I have been continuously running this series on virtualized x86_64 (WSL2
on my home workstation) and bare metal arm64 (Raspberry Pi 4) with no
major issues or regressions noticed.

> FWIW, this gives me a happy booting x86 kernel:
>=20
> # cat /proc/version=20
> Linux version 5.9.0-rc3+ (kees@amarok) (clang version 12.0.0 (https://git=
hub.com/llvm/llvm-project.git db1ec04963cce70f2593e58cecac55f2e6accf52), LL=
D 12.0.0 (https://github.com/llvm/llvm-project.git db1ec04963cce70f2593e58c=
ecac55f2e6accf52)) #1 SMP Thu Sep 3 15:54:14 PDT 2020
> # zgrep 'LTO[_=3D]' /proc/config.gz
> CONFIG_LTO=3Dy
> CONFIG_ARCH_SUPPORTS_LTO_CLANG=3Dy
> CONFIG_ARCH_SUPPORTS_THINLTO=3Dy
> CONFIG_THINLTO=3Dy
> # CONFIG_LTO_NONE is not set
> CONFIG_LTO_CLANG=3Dy
>=20
> I'd like to find a way to get this series landing sanely. It has
> dependencies on fixes/features in a few trees, and it looks like
> it's been difficult to keep forward momentum on LTO while trying to
> simultaneously chase changes in those trees, especially since it means
> no one care carry LTO in -next without shared branches. To that end,
> I'd like to find a way forward where Sami doesn't have to keep carrying
> a couple dozen patches. :)
>=20
> The fixes/features outside of, or partially overlapping, Masahiro's
> kbuild tree appear to be:
>=20
> [PATCH v2 01/28] x86/boot/compressed: Disable relocation relaxation
> [PATCH v2 02/28] x86/asm: Replace __force_order with memory clobber
> [PATCH v2 03/28] lib/string.c: implement stpcpy
> [PATCH v2 04/28] RAS/CEC: Fix cec_init() prototype
> [PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
> [PATCH v2 06/28] objtool: Don't autodetect vmlinux.o
> [PATCH v2 07/28] kbuild: add support for objtool mcount
> [PATCH v2 08/28] x86, build: use objtool mcount
> [PATCH v2 17/28] PCI: Fix PREL32 relocations for LTO
> [PATCH v2 20/28] efi/libstub: disable LTO
> [PATCH v2 21/28] drivers/misc/lkdtm: disable LTO for rodata.o
> [PATCH v2 22/28] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
> [PATCH v2 23/28] arm64: vdso: disable LTO=20
> [PATCH v2 24/28] KVM: arm64: disable LTO for the nVHE directory
> [PATCH v2 25/28] arm64: allow LTO_CLANG and THINLTO to be selected
> [PATCH v2 26/28] x86, vdso: disable LTO only for vDSO
> [PATCH v2 27/28] x86, relocs: Ignore L4_PAGE_OFFSET relocations
> [PATCH v2 28/28] x86, build: allow LTO_CLANG and THINLTO to be selected
>=20
> The distinctly kbuild patches are:
>=20
> [PATCH v2 09/28] kbuild: add support for Clang LTO
> [PATCH v2 10/28] kbuild: lto: fix module versioning
> [PATCH v2 11/28] kbuild: lto: postpone objtool
> [PATCH v2 12/28] kbuild: lto: limit inlining
> [PATCH v2 13/28] kbuild: lto: merge module sections
> [PATCH v2 14/28] kbuild: lto: remove duplicate dependencies from .mod fil=
es
> [PATCH v2 15/28] init: lto: ensure initcall ordering
> [PATCH v2 16/28] init: lto: fix PREL32 relocations
> [PATCH v2 18/28] modpost: lto: strip .lto from module names
> [PATCH v2 19/28] scripts/mod: disable LTO for empty.c
>=20
> Patch 3 is in -mm and I expect it will land in the next rc (I hope,
> since it's needed universally for Clang builds).
>=20
> Patch 4 is living in -tip, to appear shortly in -next, AFAICT?
>=20
> I would expect 1 and 2 to appear in -tip soon, but I'm not sure?
>=20
> For patches 5, 6, 7, and 8 I would expect them to normally go via -tip's
> objtool tree, but getting an Ack would let them land elsewhere.
>=20
> Patch 17 I'd expect to normally go via Bjorn's tree, but he's given an
> Ack so it can live elsewhere without surprises. :)
>=20
> Patches 19, 20, 21, 23, 24, 26 are all simple "just disable LTO"
> patches.
>=20
> This leaves 9-16 and 18. Patches 10, 12, 14, 16, and 18 seem mostly
> "mechanical" in nature, leaving the bulk of the review on patches 9,
> 11, 13, and 15.
>=20
> Masahiro, given the spread of dependent patches between 2 (or more?) -tip
> branches and -mm, how do you want to proceed? I wonder if it might
> be possible to create a shared branch to avoid merge headaches, and I
> (or -tip folks, or you) could carry patches 1-8 there so patches 9 and
> later could have a common base?
>=20
> Thanks!
>=20
> --=20
> Kees Cook
>=20

For what it's worth, the static call series that is in -tip and about to
land in -next conflicts relatively heavy with this. There are fairly
innocuous conflicts in some objtool files but two contextual changes
are needed to keep things building. It probably makes sense for most if
not all of this to live in -tip with acks. Ideally, if the stpcpy patch
gets merged into an -rc, this can just be based on that.

check.c:556:80: error: too few arguments to function call, expected 5, have=
 4
        sec =3D elf_create_section(file->elf, "__mcount_loc", sizeof(unsign=
ed long), idx);
              ~~~~~~~~~~~~~~~~~~                                           =
           ^
./elf.h:124:17: note: 'elf_create_section' declared here
struct section *elf_create_section(struct elf *elf, const char *name, unsig=
ned int sh_flags, size_t entsize, int nr);
                ^
1 error generated.

kernel/static_call.c:438:16: error: returning 'void' from a function with i=
ncompatible result type 'int'
early_initcall(static_call_init);
~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
include/linux/init.h:268:47: note: expanded from macro 'early_initcall'
#define early_initcall(fn)              __define_initcall(fn, early)
                                        ~~~~~~~~~~~~~~~~~~^~~~~~~~~~
include/linux/init.h:261:54: note: expanded from macro '__define_initcall'
#define __define_initcall(fn, id) ___define_initcall(fn, id, .initcall##id)
                                  ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
include/linux/init.h:259:20: note: expanded from macro '___define_initcall'
        __unique_initcall(fn, id, __sec, __initcall_id(fn))
        ~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/init.h:253:22: note: expanded from macro '__unique_initcall'
        ____define_initcall(fn,                                 \
        ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/init.h:241:33: note: expanded from macro '____define_initcall=
'
        __define_initcall_stub(__stub, fn)                      \
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
include/linux/init.h:226:10: note: expanded from macro '__define_initcall_s=
tub'
                return fn();                                    \
                       ^~~~
1 error generated.

Below is what I ended up with for fixes.

Cheers,
Nathan

diff --git a/include/linux/static_call.h b/include/linux/static_call.h
index bfa2ba39be57..61034e9798d6 100644
--- a/include/linux/static_call.h
+++ b/include/linux/static_call.h
@@ -136,7 +136,7 @@ extern void arch_static_call_transform(void *site, void=
 *tramp, void *func, bool
=20
 #ifdef CONFIG_HAVE_STATIC_CALL_INLINE
=20
-extern void __init static_call_init(void);
+extern int __init static_call_init(void);
=20
 struct static_call_mod {
 	struct static_call_mod *next;
diff --git a/kernel/static_call.c b/kernel/static_call.c
index f8362b3f8fd5..84565c2a41b8 100644
--- a/kernel/static_call.c
+++ b/kernel/static_call.c
@@ -410,12 +410,12 @@ int static_call_text_reserved(void *start, void *end)
 	return __static_call_mod_text_reserved(start, end);
 }
=20
-void __init static_call_init(void)
+int __init static_call_init(void)
 {
 	int ret;
=20
 	if (static_call_initialized)
-		return;
+		return 0;
=20
 	cpus_read_lock();
 	static_call_lock();
@@ -434,6 +434,7 @@ void __init static_call_init(void)
 #ifdef CONFIG_MODULES
 	register_module_notifier(&static_call_module_nb);
 #endif
+	return 0;
 }
 early_initcall(static_call_init);
=20
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index d31554adcf4e..34db58110f3d 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -553,7 +553,7 @@ static int create_mcount_loc_sections(struct objtool_fi=
le *file)
 	list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node)
 		idx++;
=20
-	sec =3D elf_create_section(file->elf, "__mcount_loc", sizeof(unsigned lon=
g), idx);
+	sec =3D elf_create_section(file->elf, "__mcount_loc", 0, sizeof(unsigned =
long), idx);
 	if (!sec)
 		return -1;
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200904044559.GA507165%40ubuntu-n2-xlarge-x86.
