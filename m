Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBTE7RCAAMGQEV25FKCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDAC2F8801
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:57:34 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id p80sf6047011ybg.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:57:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610747853; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z5w6mpJbqGVYQKnrRSHXIVIxrfR9/fEW80tMFG1h7ScTnioWpU+ZDgKSC1Rv0urq7R
         ByM0/di8Kkdg+IQZ++ePcADmdu3fJlTbfNFdDQxFoverP1o3sQUv2u0h40VH1t1M6hWQ
         JFn9Qkk/9TxfibXQixEZVnCV9NTvghmgwotAVP8ulFGKmdZg8lB/VDlqFFLQZXsDa0MS
         Hv/WI2sV6vju0gM5sWcDEB4PWCqC0Lgir/Pjw0alBXBt0LjOeAval791g788FUGUVfJ2
         m/8cjKxD26eMgIosSfdzFbnSHMF2n20d93XFyITArBkIv0y7aDiyU8NQp5h4et1Gk6uo
         u+mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XqBZGLIQRai/kzYhkzcy7mzFKs8r+Q7bjb1xqAWO7DM=;
        b=vP4/JOzuwy01klW6CcMwrsziBq9cEbhanJvweRtLrakOaUbpZlic6RZOepVkddE4KN
         iL9b5HERmqj7BfKQcI1O/SuYmN0LqsXpfPefqz+K7DFXZ6qdvNqYgYIhCJt2hNHOi9N7
         U7mP0211Lw4aUUDb0iVfm2tNleHeXqx4aqF5e/b28eSaRxTHQhClOkJY6fS+iidt4Stb
         LPaugxyt+k/8KPD24BcBbE3/vipqnOS7+BnKhdyJu+NadneWadOgUdegWjFNvx1DHBsw
         acR+py0jE0lZ1QYSs+ALNh08kr0fdjlnbjp9aOJ7+mAhkLKlowce/+gR5B5aNx8l4iNQ
         twrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=You9Bm0l;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XqBZGLIQRai/kzYhkzcy7mzFKs8r+Q7bjb1xqAWO7DM=;
        b=eKmvYrg/wAKvJ3+fEBATL7IfSXtw3YyxZKeEsy7L62wh40aOfp2kGYUnnXB6Fvzptf
         sKBolxtESUNJvpRFx9T2FggzCU4cmSuL5K02LiXmWYdao37utqdqqozTyv5eUnBMm4Tj
         amofixuv4fVtjemm/jDT6vWZod/I6ldmqN/D3pzfRHmso6crecRnHw+qsi5aqdvdGiLr
         +KJSb4upnvL3qmyCey/PswXaFj1vljGm4kgCxawjWf6zSamE+AW0eJJLem37kJld3hca
         YqICTvm5M/VFwACgbUGruxuMxnyhoN5sxzRRjX5VOrFfEabOiuPpwPKTL2g7hrIwHPZ3
         ZKbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XqBZGLIQRai/kzYhkzcy7mzFKs8r+Q7bjb1xqAWO7DM=;
        b=SN2g5lw7F1YY7NJB9x35RzOh/818snE4sjjyqGO4EAQdWaCv4rVh2YyZeeohtqCdqD
         wF/cDeRPZemPs03aASXNdKmDiFVb9catoMbmepsclMlOcIrk7H2u6mIqGlnzq7Z86Zqv
         1+R/gZdJErOrzelWUyJ+rjTglA0d/elffXvaWrQGPMLculgaO452O4X91JKyH9zQU1/C
         RXsYJ3bcmTy5UDHPpzuisIkGstE8LOFVInlw1EYluns0dicXyJsGg7/onMpS7kF1YACL
         y9fBcPlCf1sO0aaODr5aw2c8mW+EDCxOdz/Ai7N4S5gy90TyALy9gmtDube4/dZMTXWH
         KYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XqBZGLIQRai/kzYhkzcy7mzFKs8r+Q7bjb1xqAWO7DM=;
        b=bYC8y3Av2zeOkE79XOShSFVhgzkFIZsz9+9toBQqThRFvhW5dEv04wZTIVsbqkbL8j
         YawKyjOl7Z8FlPEPH3hvY+HWXJV9vt+QJexcLTwuE3oQRarJYs2J8BXTwdFVXASyx6Ty
         t8vdaFd1gj2jL7+VVSIT26flGD4i4E8VfefJWI+hs8iV4m+b50Sq1wNUG7MXup1ObK7o
         ahvcSXSURlpQvFRNGn+loFvcjz21QUFOYFnSBcaJXuhUkzLDEluN74xTEaISmgPeOP0b
         Jzfe9BODl1eOGF8jIujkn9AvwvZOyAmsWhRMo5HaOqIgM30TbCHYAEqjBG2detfSzs4J
         FzEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S8RYjCMCMvBG62I+3XrqnPJECyrcIjWqsbuoTMy6FHQnB0aqm
	8pzQFbhSs9HNXjNzHnulVyo=
X-Google-Smtp-Source: ABdhPJwSwKwH9J9q4mfZO2DGXMGAsVBQoFTcey2O7E+HPfwT1D527xfdwdbSokU+YNLJ0r46NL66Mg==
X-Received: by 2002:a25:2a56:: with SMTP id q83mr14431567ybq.144.1610747853095;
        Fri, 15 Jan 2021 13:57:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls5067635ybd.4.gmail; Fri, 15 Jan
 2021 13:57:32 -0800 (PST)
X-Received: by 2002:a25:4d44:: with SMTP id a65mr19808444ybb.222.1610747852686;
        Fri, 15 Jan 2021 13:57:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610747852; cv=none;
        d=google.com; s=arc-20160816;
        b=he20UywuKZuM73nSHlzzMLl0TkV4pi3Wd0qjtFtoofFKNozTCT5WWdf7ZEL+AZ20nb
         38ue/9D06I7YqJ5CWZB3hhG0sz0vHn98okdzt8aMb3JYg4fS8AA6Ad0hCeqhh6bzp1DP
         iUl3Vso9bnNtAZw6x/PdWkP+8ZjVsYtQxVibKYf8F2ygRuO+d2yyMfCcgWj4Ac2M/QHM
         /FNpuNmfaR23Z7yizHoUWKkRjH80mW0bhR/iVX1AbA8y2iU9HdduOvwk1KmdDu/AeRiJ
         vmnMSQ7cipysICDajtzCpaWqbylfp+gZlNEVdYY61Mx+9t1UYAhdkL04eV6Y2Y2Eq6Nn
         6rzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FBVMRQdBC9ScDW4bAdh6zPVr4kliTneT+ezPPvG5nok=;
        b=N7JFHJDAkd13NMSo0ooUdWMbIH8dmWNThzwhUZKV6Qsyv3wH7PkPIsGOz4QUVJz9W/
         8xusSPhWVltN6Y6aWOHejIiFiCZQQD9kbGvENt/F0OrRhZ4J0/qd0Y3NYexecy96K3Ns
         8VJO3Bhlpidv9oQzgH+S9PLh5JMbmhdz4rNHSfz6IO9UqjGxQe6p4+owKTZ9LpV+j7L8
         kMwkmeCxo6UTUA9k6dgtKLGMv9+YhgFRCfqvhL08beL+7yxmY28V8WozZ8+siEY0D6oO
         4y5AGZWqn72hCPR4Sl7kAWXrGdeIa6DPSrMKKgqaJEtmqdTpqDwhRKcdd+12lyWG0XnO
         2d6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=You9Bm0l;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id x18si546026ybe.0.2021.01.15.13.57.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:57:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id x21so2817498iog.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:57:32 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr10090198iok.171.1610747852337;
 Fri, 15 Jan 2021 13:57:32 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-4-ndesaulniers@google.com> <CA+icZUVWPgbMQAgHaRa7emxyzN+SMc6hZ1UNtkkO80-RH6-yNg@mail.gmail.com>
 <CAKwvOdmR_g7R3wEngsTReAmTZTP9s5PBPg-QC5339FMUVeLfJw@mail.gmail.com>
In-Reply-To: <CAKwvOdmR_g7R3wEngsTReAmTZTP9s5PBPg-QC5339FMUVeLfJw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 22:57:21 +0100
Message-ID: <CA+icZUVYgRZ7V6FiE2xUGAMz7_ozULdL0zqZAipo4KRAd0_Q+A@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=You9Bm0l;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Fri, Jan 15, 2021 at 10:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 15, 2021 at 1:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > DWARF v5 is the latest standard of the DWARF debug info format.
> > >
> > > Feature detection of DWARF5 is onerous, especially given that we've
> > > removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> > > support.
> > >
> > > The DWARF version of a binary can be validated with:
> > > $ llvm-dwarfdump vmlinux | head -n 4 | grep version
> > > or
> > > $ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
> > >
> > > DWARF5 wins significantly in terms of size when mixed with compression
> > > (CONFIG_DEBUG_INFO_COMPRESSED).
> > >
> > > 363M    vmlinux.clang12.dwarf5.compressed
> > > 434M    vmlinux.clang12.dwarf4.compressed
> > > 439M    vmlinux.clang12.dwarf2.compressed
> > > 457M    vmlinux.clang12.dwarf5
> > > 536M    vmlinux.clang12.dwarf4
> > > 548M    vmlinux.clang12.dwarf2
> > >
> > > 515M    vmlinux.gcc10.2.dwarf5.compressed
> > > 599M    vmlinux.gcc10.2.dwarf4.compressed
> > > 624M    vmlinux.gcc10.2.dwarf2.compressed
> > > 630M    vmlinux.gcc10.2.dwarf5
> > > 765M    vmlinux.gcc10.2.dwarf4
> > > 809M    vmlinux.gcc10.2.dwarf2
> > >
> > > Though the quality of debug info is harder to quantify; size is not a
> > > proxy for quality.
> > >
> > > Jakub notes:
> > >   All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
> > >   option that enabled some small DWARF subset (initially only a few
> > >   DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
> > >   after DWARF 5 has been finalized) started emitting DWARF5 section
> > >   headers and got most of the DWARF5 changes in...
> > >
> > > Version check GCC so that we don't need to worry about the difference in
> > > command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
> > > validate the DWARF Version in the assembler feature detection script.
> > >
> > > GNU `as` only recently gained support for specifying -gdwarf-5, so when
> > > compiling with Clang but without Clang's integrated assembler
> > > (LLVM_IAS=1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.
> > >
> > > Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> > > recognize the new additions to the DWARF debug info. Thanks to Sedat for
> > > the report.
> > >
> > > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Suggested-by: Caroline Tice <cmtice@google.com>
> > > Suggested-by: Fangrui Song <maskray@google.com>
> > > Suggested-by: Jakub Jelinek <jakub@redhat.com>
> > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  Makefile                          |  6 ++++++
> > >  include/asm-generic/vmlinux.lds.h |  6 +++++-
> > >  lib/Kconfig.debug                 | 18 ++++++++++++++++++
> > >  scripts/test_dwarf5_support.sh    |  8 ++++++++
> > >  4 files changed, 37 insertions(+), 1 deletion(-)
> > >  create mode 100755 scripts/test_dwarf5_support.sh
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 4eb3bf7ee974..1dcea03861ef 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -828,10 +828,16 @@ endif
> > >
> > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > >  # Binutils 2.35+ required for -gdwarf-4+ support.
> > >  dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > >  KBUILD_AFLAGS  += $(dwarf-aflag)
> > > +ifdef CONFIG_CC_IS_CLANG
> > > +ifneq ($(LLVM_IAS),1)
> > > +DEBUG_CFLAGS   += $(dwarf-aflag)
> > > +endif
> > > +endif
> > >
> > >  ifdef CONFIG_DEBUG_INFO_REDUCED
> > >  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
> > > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > > index 49944f00d2b3..37dc4110875e 100644
> > > --- a/include/asm-generic/vmlinux.lds.h
> > > +++ b/include/asm-generic/vmlinux.lds.h
> > > @@ -843,7 +843,11 @@
> > >                 .debug_types    0 : { *(.debug_types) }                 \
> > >                 /* DWARF 5 */                                           \
> > >                 .debug_macro    0 : { *(.debug_macro) }                 \
> > > -               .debug_addr     0 : { *(.debug_addr) }
> > > +               .debug_addr     0 : { *(.debug_addr) }                  \
> > > +               .debug_line_str 0 : { *(.debug_line_str) }              \
> > > +               .debug_loclists 0 : { *(.debug_loclists) }              \
> > > +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> > > +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
> > >
> > >  /* Stabs debugging sections. */
> > >  #define STABS_DEBUG                                                    \
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index e80770fac4f0..658f32ec0c05 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -273,6 +273,24 @@ config DEBUG_INFO_DWARF4
> > >           It makes the debug information larger, but it significantly
> > >           improves the success of resolving variables in gdb on optimized code.
> > >
> > > +config DEBUG_INFO_DWARF5
> > > +       bool "Generate DWARF Version 5 debuginfo"
> > > +       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> > > +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> >
> > Better keep GCC depends in one line:
> >
> > +       depends on CC_IS_GCC && GCC_VERSION >= 50000 || CC_IS_CLANG
> > +       depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh
> > $(CC) $(CLANG_FLAGS))
>
> It's intentional, if a bit obtuse:
> We don't want to check the assembler support for -Wa,-gdwarf-5 via
> compiler driver when CC=gcc; instead, we'll rely on how GCC was
> configured as per Arvind.
>

Hmm, OK.
I have not tested my diff in diverse setup/combination of compiler and
"bin"utils.
So, I did not want to have a different behaviour.
Can you comment on this intentional setting in v6?

Thanks.

- Sedat -

> >
> > As said in the other patch:
> >
> > Use consistently: s/DWARF Version/DWARF version/g
>
> Ah right, and I forget your point about kbuild/Kbuild.  Will wait for
> more feedback then send a v6 next week.  Thanks as always for the
> feedback.
>
> >
> > - Sedat -
> >
> > > +       depends on !DEBUG_INFO_BTF
> > > +       help
> > > +         Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
> > > +         5.0+ accepts the -gdwarf-5 flag but only had partial support for some
> > > +         draft features until 7.0), and gdb 8.0+.
> > > +
> > > +         Changes to the structure of debug info in Version 5 allow for around
> > > +         15-18% savings in resulting image and debug info section sizes as
> > > +         compared to DWARF Version 4. DWARF Version 5 standardizes previous
> > > +         extensions such as accelerators for symbol indexing and the format
> > > +         for fission (.dwo/.dwp) files. Users may not want to select this
> > > +         config if they rely on tooling that has not yet been updated to
> > > +         support DWARF Version 5.
> > > +
> > >  endchoice # "DWARF version"
> > >
> > >  config DEBUG_INFO_BTF
> > > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> > > new file mode 100755
> > > index 000000000000..1a00484d0b2e
> > > --- /dev/null
> > > +++ b/scripts/test_dwarf5_support.sh
> > > @@ -0,0 +1,8 @@
> > > +#!/bin/sh
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +
> > > +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> > > +# in binutils < 2.35.
> > > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> > > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> > > +echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> > > --
> > > 2.30.0.284.gd98b1dd5eaa7-goog
> > >
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVYgRZ7V6FiE2xUGAMz7_ozULdL0zqZAipo4KRAd0_Q%2BA%40mail.gmail.com.
