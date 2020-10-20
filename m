Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRXQXD6AKGQENI73RTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B707293299
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 03:07:19 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id x74sf266143ooa.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 18:07:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603156038; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+gss0/W7jyrWh3Ik0CwDfnBxatMsrPZWT0ZRG/fq43THdzgZSzqJUKb/AzHb8qz0L
         9CQ2l3TJjg744vyo1zY80LV1AUfJlc35GBeAxfCE6oZG8Ha0NCKueAG/pdCrkV7XPz0o
         qDU99e1zIcA2+JwUYESL1MswIq6sgEHRyfwuv5dYm0BslxREMUVK+QRpP5K+0UB+/CUQ
         Q1Avg0n/csGgLazUUtoYdN/dTKQbSzRS8UMdxteZPQshqE6ldM9/Ni1ZBeaMRh8dh5ij
         bybWcEQbLodjQrOGXZxqghHgSsi8ECSBA5xAlSEHWspptY79FgXXD+OldpRz6gCAAl8u
         6z0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ojPkJ8CiOGHDfXq8UWpH+64lUlLt1lorA6NFLL5qf/s=;
        b=iy8oQQMUWh4OXx3rTbB1Q22bGs9Q1x5wUx2DudQP5iPikGIQ4Jji60/Nli9DCaxkKp
         3EN7Ua7ZjuXojp4Yr6hQcEOjp84YwWQSdMfmJAc2faPi2a6taasYBR7tP3ABS73E8K5d
         JEr282PBVVl/XjBfkQLYjYlWIjiUyyUbjkJlqnJXuaMPSvn43hmBLvrVP6FnlcgOIXNq
         7Ca7HVASGXf5RRZrp+Lvpu4oAosTjxomVnwwAOpmXuBcHGTCtTMCKdzPn8Menz3c7iKK
         zrs6n7t+8zCw/q6JasHK9nqatfBuEtFml0Hcj5mby/XIsdfeF5BJSxE6zFsqOD0J3A6x
         wpWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I8jXoFBf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ojPkJ8CiOGHDfXq8UWpH+64lUlLt1lorA6NFLL5qf/s=;
        b=YSda14nTDnlVoQYXdRV9tiErlGkdXefeiSpGI1f/df11UuUf2paiKSR5rz8c6pAaiy
         u3hY1n9uEHAlhRChN8vZyDcoHLxCIoR1ZeqiTUVKsSrYJzLUenadui1Jjq3rvfP3pw3G
         cGzROem7z/6WWmO1HPsJk2asYiHu+7ausNllS8W1JO7geO6EcQS9Q6v5MlfaaXyHRLWT
         6y1KoWf6Hj3GB1CObDidufD1PJwIIZa3nB6edmLbGGPAot78DWZ+ToVRlSEXk5TgWqaO
         mloGhMuzz+l99iGHvrM4LQtDroasRZDGzImRV/FrzLHlugezctS0mLVRHmOebGVx6QeA
         S9Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ojPkJ8CiOGHDfXq8UWpH+64lUlLt1lorA6NFLL5qf/s=;
        b=lMb54UY5ixG0JrJb2wIlj9M8KUIqWaMCEab8rC4tx4++U4zuIIVwmVhL2g2M996h5W
         2KL3lG5UVE236Zlf6bd9RIfphpMP43eabe/XqdTEzySNEg1mDGYU9O++u5MMzsdy1yMG
         +lM5YzR/qh2ocKocRrgQxE7R6LDveSkEvxWPy062czrvDOzZLZjQHDkFEjQ2A3lMznW3
         /hRYIVHNHvrpIug4txjR87DogIQjODOFrdX/v7yFfzEdcJ6tT6HN46Nhd5pvGZP7nPNU
         sBaQZKIQV1KC2oZWQA57Ui6Pa4NkCi3BlhXzu9m63ci4RVdyFaZFkPWcqojb7j/Xje7A
         /dTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ojPkJ8CiOGHDfXq8UWpH+64lUlLt1lorA6NFLL5qf/s=;
        b=RanoDEpbykEEUG+Saw5vy9qDFhiQgOw+UrwuqNUznFyNHgY1yuFId4Cb0DqjxP79ZU
         eEVfvIC+6soku5jMX2gK3E9yBeuz4NfqAiJsT+TdPPNLPv/VSDJgmoZHowmRlxLY/+v9
         t3xpTIHwZC462aF90zkO6mar0/IRnIS03DWNhXMu3Tb1Xy1DzEgoE6LWCHcdNXC9ksuZ
         yvCRWlfRTP7q1qQBk0QBI/qkZukfosb5POdGKqgVRW5ePukDknjs6pl85WCa4jmLSKgM
         eMmRjk4ilBhYb+Afa8lZXzlb4QHWkCDEm9qm5y1qPVyhur9U6O/td8lewWACZ/7Vsv3T
         71ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wPVkaJ4h51JSi9IE/p1ebnOrnQBsat7DzQ7N5U5ARnhzHT3Q3
	zoJrzOXfABBxmtxfk4RJpHA=
X-Google-Smtp-Source: ABdhPJySf1Biiq1Uesv9S3XLzZ67/uuGffUGdsOXHt/q+nQtxMTim4eTuchdTLd4TLFlIsri93WiVQ==
X-Received: by 2002:a05:6830:1ae3:: with SMTP id c3mr181813otd.230.1603156038111;
        Mon, 19 Oct 2020 18:07:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:390b:: with SMTP id g11ls30977oia.1.gmail; Mon, 19 Oct
 2020 18:07:17 -0700 (PDT)
X-Received: by 2002:aca:d5c1:: with SMTP id m184mr228318oig.19.1603156037734;
        Mon, 19 Oct 2020 18:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603156037; cv=none;
        d=google.com; s=arc-20160816;
        b=xFCgWIV6nXjns4cXCaKYPsXyKKDUzk46Jif05tAG5leGBMRBO393vdRRlYxz0Gc0dU
         4t+2msoVzz/cKcFOt+MnJXWUtCl/8LQU+Qk4B4uZPRJlsA8TNauiCFGDJygbEXuDLQA8
         7sm7DPswe9PZYbbIpkxSOOLaRNQWV1US55GWanquHpwNZV0luA62XeVT05KHN4bsmUBp
         KWslzG4SLdZOiSLVT3nmpEXevWmiF5lSHbSUGyFOV06q73VDBPUoyRaAjM7caVU//HOh
         gBuPbnyJRubRjXOKZ6bi6NymmSrjoVc6lFkLDGFXx0vdNzmoTvts57Q/LVGwEf8O6zd3
         hmHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D/Mefsj+3OKX02UJFagduiRTFW1Pif4p9TwZBeovz3o=;
        b=P2ex/MI9RrA0v6kjwhUFqj486rnmJAH4s9u3QK1KE2BRJjLdQJBw+tOJBUVL1Z4KnO
         zdaTCNMRz+BwN9J1L+tmJqC4nb5L1fKB2vgYgOvsKguD+hiQR3Uv+JQnGpL/KQjhQnOu
         GpkzEVSgDPed6m0a/WRmE0kIrxEEJKgqZXUo243Yr7RKMsP/ttJM/Kc2+OXqT69nGHoR
         +H+tqMeUa3VwMUK0Bs1mnknm0tUt3YRGe0PpXCGcPyfIXVckh8b5yXH3ard+3eo6egCC
         BtPdzNzI+Y/D9u2AEmVLL6cXumsXU4xW0VrxwteJY8UkU0L+jpZgFMUiZkYG1X8D2mUV
         y3GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I8jXoFBf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id i23si30117otk.5.2020.10.19.18.07.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 18:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id k21so439503ioa.9
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 18:07:17 -0700 (PDT)
X-Received: by 2002:a02:7:: with SMTP id 7mr365606jaa.112.1603156037226;
        Mon, 19 Oct 2020 18:07:17 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id v90sm290746ili.75.2020.10.19.18.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 18:07:15 -0700 (PDT)
Date: Mon, 19 Oct 2020 18:07:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: vdso32: Allow ld.lld to properly link the VDSO
Message-ID: <20201020010714.GA1817488@ubuntu-m3-large-x86>
References: <20201013033947.2257501-1-natechancellor@gmail.com>
 <53b74ed0-f143-6870-1227-3d9663166068@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <53b74ed0-f143-6870-1227-3d9663166068@arm.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I8jXoFBf;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 19, 2020 at 10:59:47AM +0100, Vincenzo Frascino wrote:
> 
> Hi Nathan,
> 
> On 10/13/20 4:39 AM, Nathan Chancellor wrote:
> > As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
> > using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
> > Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
> > 8384/1: VDSO: force use of BFD linker").
> > 
> > Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
> > link VDSO") changed that Makefile to use $(LD) directly instead of
> > through $(CC), which matches how the rest of the kernel operates. Since
> > then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
> > which has shown no problems so far.
> > 
> > Allow ld.lld to link this vDSO as we do the regular arm vDSO. To do
> > this, we need to do a few things:
> > 
> > * Add a LD_COMPAT variable, which defaults to $(CROSS_COMPILE_COMPAT)ld
> >   with gcc and $(LD) if LLVM is 1, which will be ld.lld, or
> >   $(CROSS_COMPILE_COMPAT)ld if not, which matches the logic of the main
> >   Makefile. It is overrideable for further customization and avoiding
> >   breakage.
> > 
> > * Eliminate cc32-ldoption, which matches commit 055efab3120b ("kbuild:
> >   drop support for cc-ldoption").
> > 
> > With those, we can use $(LD_COMPAT) in cmd_ldvdso and change the flags
> > from compiler linker flags to linker flags directly. We eliminate
> > -mfloat-abi=soft because it is not handled by the linker.
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1033
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Just a small nit on my side (see below) and as you already stated it requires
> rebasing if we want to merge it in mainline. Otherwise:
> 
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Thank you for the review! I do not have any personal preference on how
fast this goes in. If we want it fast tracked, it can probably wait
until after -rc1 anyways so I am going to keep it rebased on -next since
presumably the kbuild tree will be merged into mainline by that point.
If anyone else feels differently, let me know.

> > ---
> > 
> > NOTE: This patch is currently based on the kbuild tree due to the
> > --build-id -> --build-id=sha1 change that Bill did. If the arm64
> > maintainers would prefer to take this patch, I can rebase it (althought
> > presumably this won't hit mainline until at least 5.11 so it can
> > probably just stay as is for now).
> > 
> >  arch/arm64/kernel/vdso32/Makefile | 23 ++++++++++++-----------
> >  1 file changed, 12 insertions(+), 11 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> > index 7f96a1a9f68c..1cf00c58805d 100644
> > --- a/arch/arm64/kernel/vdso32/Makefile
> > +++ b/arch/arm64/kernel/vdso32/Makefile
> > @@ -22,16 +22,21 @@ endif
> >  
> >  CC_COMPAT ?= $(CC)
> >  CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
> > +
> > +ifeq ($(LLVM),1)
> 
> Nit: Here can we check 'ifneq ($(LLVM),)' for consistency with what the main
> Makefile does?

Sure, I will fix that up.

> > +LD_COMPAT ?= $(LD)
> > +else
> > +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
> > +endif
> >  else
> >  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> > +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
> >  endif
> >  
> >  cc32-option = $(call try-run,\
> >          $(CC_COMPAT) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
> >  cc32-disable-warning = $(call try-run,\
> >  	$(CC_COMPAT) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
> > -cc32-ldoption = $(call try-run,\
> > -        $(CC_COMPAT) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
> >  cc32-as-instr = $(call try-run,\
> >  	printf "%b\n" "$(1)" | $(CC_COMPAT) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
> >  
> > @@ -122,14 +127,10 @@ dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
> >  VDSO_CFLAGS += $(dmbinstr)
> >  VDSO_AFLAGS += $(dmbinstr)
> >  
> > -VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
> >  # From arm vDSO Makefile
> > -VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
> > -VDSO_LDFLAGS += -Wl,-z,max-page-size=4096 -Wl,-z,common-page-size=4096
> > -VDSO_LDFLAGS += -nostdlib -shared -mfloat-abi=soft
> > -VDSO_LDFLAGS += -Wl,--hash-style=sysv
> > -VDSO_LDFLAGS += -Wl,--build-id=sha1
> > -VDSO_LDFLAGS += $(call cc32-ldoption,-fuse-ld=bfd)
> > +VDSO_LDFLAGS += -Bsymbolic --no-undefined -soname=linux-vdso.so.1
> > +VDSO_LDFLAGS += -z max-page-size=4096 -z common-page-size=4096
> > +VDSO_LDFLAGS += -nostdlib -shared --hash-style=sysv --build-id=sha1
> >  
> >  
> >  # Borrow vdsomunge.c from the arm vDSO
> > @@ -189,8 +190,8 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
> >        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
> >  
> >  quiet_cmd_vdsold = LD32    $@
> > -      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
> > -                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
> > +      cmd_vdsold = $(LD_COMPAT) $(VDSO_LDFLAGS) \
> > +                   -T $(filter %.lds,$^) $(filter %.o,$^) -o $@
> >  quiet_cmd_vdsocc = CC32    $@
> >        cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
> >  quiet_cmd_vdsocc_gettimeofday = CC32    $@
> > 
> > base-commit: 172aad81a882443eefe1bd860c4eddc81b14dd5b
> > 
> 
> -- 
> Regards,
> Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201020010714.GA1817488%40ubuntu-m3-large-x86.
