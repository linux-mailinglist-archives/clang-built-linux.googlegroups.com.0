Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6U3RCAAMGQER57BOTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F002F87DF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:49:47 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id u70sf1738866uau.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:49:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610747386; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4VDWurOrJesh4+idCGLZjjPtZymy9ldJsJndCmrEnz8XJT4RvINldB+dlWoMKJzTN
         wwirzmBTpnCLBEMzNV4bFOwcX0ipNIQGB9l08VnzLWiTdNpkr72o0mR82kDO8+j1jFDH
         RT/hmq/Nx/u255VxTLrwmPcvHJ749XvimVnAfdB0PLC24yRDTHhCpcxbaUFVcZ2TRius
         ScZyRZ6Q2wnpQG27jYhYsac/jJvIKS6f8Y43r3+dQxzvNRYeZnA3XA6qm8hYeKEa4zwK
         1wq91lNn7eYn/jAGgdlmBzv7fng7aqGfYuExb6Xlvs9af/gzbOup7fbmWa21NWMsFZKA
         EsLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wvTSAc2eFDNWIcp2UdiFDKEqkH3MD3btGztvPRw8EBg=;
        b=EzmJwyor9RyMyp+zcXRlHBidntklPttSetQT5t/s9gZ8oS6IePdVuAMuohn9e5JxBf
         McFITrn5/+FFlpjQ47i81bVanMbpzQ39HU4bZpjMT25WoMUR9KeYthxgm5Zb0cvg2w1A
         OeM3jtwoQX+y4aYSuG/8Kz5Iy7bDDNSKaJrWEjwpAFJTbSch4UPMl204lOgHtPbMpH0N
         /t5f/q76U7DIXoErBH25OEs2rsX5HWWAgqDUR8YewRDeMurqp1EQ4Zu193EQYkGYso1r
         0wU0g2VkLQ7IKdPlv3nsWFM13h8KdYAefzCQLbIkGZP9WTdOZ8EcNiuK4wOX8tnOwfdQ
         Vn9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="QA5h/3gP";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wvTSAc2eFDNWIcp2UdiFDKEqkH3MD3btGztvPRw8EBg=;
        b=V+23g6xCIikEPiaWNS2MDlBirMsg0o1QTczq7B+hZTBEwL3vIOLusi9ZrkCPPLfaTF
         dD4hAuGxGqzDBEEtfLE4Y5BHiRzbz/h1Mk2+2bbcp8XxUcUNIgP4pzAZvdP9XO37QDQm
         3ahrPBApMC9M5EtirGgTboBkIWte6NV0i6VMdbbL3irtj7BTAHel4/Kv31ONIVvlbB6F
         bg//D4nOvZahpQ5VgKLJBHKznQ9iJayLyOaiFi8uSWJw3U8PBn+4Pf22VTCosHzILVDv
         4CsfVPTVh7r8L0Wy2ydpMScMFGf/+t9LUmSp3iEr3xFKzcxjssKFnofv/8a/Ws29Zk8j
         jdJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wvTSAc2eFDNWIcp2UdiFDKEqkH3MD3btGztvPRw8EBg=;
        b=K3xqat0LJZx+fbM3YubDKlIeAYyE8a+CTf0fspH1SN3pWU5wZwiPQTdEYL0oAMurml
         c1XX0rcmeI4R5u468qS1SNFvoiXyI+S1CCideAnCNu8u9h8K8ToctPLYksFAcvefSCYh
         NKjZK4KEBMMcD9A14Xf7tsCLRu6L24oU7mIM2xWL910DsF4lzAz16vD3zTbLatSHE+9r
         cXjQ6vsQwICvEIsANK5x5JorCRjjsnjLb+1H09t2l+2FW36fE4I8ppbLStDvVezhfBJU
         2gTC+IYjdsIntD9zekkpS3u1f1V4vo15SkQM8NTUM3L1a6T9hB7g/6gWqMRsMA8gqctv
         PFMg==
X-Gm-Message-State: AOAM530kFX1sr8SGDqUa+1vSGCRBzszrIIDh0Loi4ZTV3Mip+ncQuKk9
	KXuQP38q+7okcgoTwDSAdRI=
X-Google-Smtp-Source: ABdhPJw7DfPPCLmd81Wt2Vf+MbVWoztlensOD6t9ogR3ol1KHV3hvcTFPUZQA6ouCM0foexldTX8MQ==
X-Received: by 2002:a05:6102:31a3:: with SMTP id d3mr11622384vsh.20.1610747386526;
        Fri, 15 Jan 2021 13:49:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1463646vsf.6.gmail; Fri, 15 Jan
 2021 13:49:46 -0800 (PST)
X-Received: by 2002:a05:6102:310d:: with SMTP id e13mr12336353vsh.13.1610747386019;
        Fri, 15 Jan 2021 13:49:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610747386; cv=none;
        d=google.com; s=arc-20160816;
        b=mTRQTRLO7T87lFu+ls4a/0jADgE02CJ68d+vKuA1Evg8pfrWYn/KP0WD3RDyDPEyQr
         dHlmEKPg1zhQtDptcS6JJK0BRatVrnfkA11o6mNOtfXkLtqg/CiF9tpfRGHMk9FfRn2d
         iJpQ3D0cwfCqA6vpguEojpi94LFLI5G0nOnZbZlXekKBssBt7Xnz9jt2q0zi5238a/EN
         lIeuexl06DTX3UGRB/5qVcIPHgBHNVyHNGUZdGb7esbFXXqg0F7uV3MQoLPtbtjyuzhT
         gypbYCJsFvA5VtBf/HIAIHnr2kPMCZZ97ff/kHMxemgHKY4sMaLQADMC56ztmqr0q9+u
         k0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lGVH2uCGPuPlwMOlNT3CDJKyEfM+KsF79H4rZzySSdQ=;
        b=RWAs+DD40ce76X5MvMHM0u4xwEZl6uAA1lQQig4wQ4oL9bgrfWGcrtj8zPCZXXCVLe
         23+jMdGGL6D43KicoJC4XSTaf+PqwVQu4FQ/iiWm3zIMkIulB8hYqj7dbSx+d+YPLLTP
         PbZ5XcwKaR5S15OVY0DEQndESgA0fa1y2bGhmyp+QNFf+OE5AXSNEvEuesMub/lnbfb+
         xxIZllqpEifUBKCyO4obuXg/7DK3tkuQhMuzbAbjxJ+weh5py95SSmNIKUepT/qWi9Oy
         Hi3mfNrBO2CMIel8dw5t5old5864vVJusv4BKu69xUHUwy9YKJqQ4uW1cu5jobZaB2q1
         +3Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="QA5h/3gP";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id e11si605274vkp.4.2021.01.15.13.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:49:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id 30so6860921pgr.6
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:49:45 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr14724049pgm.10.1610747384869;
 Fri, 15 Jan 2021 13:49:44 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-4-ndesaulniers@google.com> <CA+icZUVWPgbMQAgHaRa7emxyzN+SMc6hZ1UNtkkO80-RH6-yNg@mail.gmail.com>
In-Reply-To: <CA+icZUVWPgbMQAgHaRa7emxyzN+SMc6hZ1UNtkkO80-RH6-yNg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 13:49:33 -0800
Message-ID: <CAKwvOdmR_g7R3wEngsTReAmTZTP9s5PBPg-QC5339FMUVeLfJw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] Kbuild: implement support for DWARF v5
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="QA5h/3gP";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jan 15, 2021 at 1:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > DWARF v5 is the latest standard of the DWARF debug info format.
> >
> > Feature detection of DWARF5 is onerous, especially given that we've
> > removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> > support.
> >
> > The DWARF version of a binary can be validated with:
> > $ llvm-dwarfdump vmlinux | head -n 4 | grep version
> > or
> > $ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
> >
> > DWARF5 wins significantly in terms of size when mixed with compression
> > (CONFIG_DEBUG_INFO_COMPRESSED).
> >
> > 363M    vmlinux.clang12.dwarf5.compressed
> > 434M    vmlinux.clang12.dwarf4.compressed
> > 439M    vmlinux.clang12.dwarf2.compressed
> > 457M    vmlinux.clang12.dwarf5
> > 536M    vmlinux.clang12.dwarf4
> > 548M    vmlinux.clang12.dwarf2
> >
> > 515M    vmlinux.gcc10.2.dwarf5.compressed
> > 599M    vmlinux.gcc10.2.dwarf4.compressed
> > 624M    vmlinux.gcc10.2.dwarf2.compressed
> > 630M    vmlinux.gcc10.2.dwarf5
> > 765M    vmlinux.gcc10.2.dwarf4
> > 809M    vmlinux.gcc10.2.dwarf2
> >
> > Though the quality of debug info is harder to quantify; size is not a
> > proxy for quality.
> >
> > Jakub notes:
> >   All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
> >   option that enabled some small DWARF subset (initially only a few
> >   DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
> >   after DWARF 5 has been finalized) started emitting DWARF5 section
> >   headers and got most of the DWARF5 changes in...
> >
> > Version check GCC so that we don't need to worry about the difference in
> > command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
> > validate the DWARF Version in the assembler feature detection script.
> >
> > GNU `as` only recently gained support for specifying -gdwarf-5, so when
> > compiling with Clang but without Clang's integrated assembler
> > (LLVM_IAS=1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.
> >
> > Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> > recognize the new additions to the DWARF debug info. Thanks to Sedat for
> > the report.
> >
> > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Suggested-by: Caroline Tice <cmtice@google.com>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Jakub Jelinek <jakub@redhat.com>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile                          |  6 ++++++
> >  include/asm-generic/vmlinux.lds.h |  6 +++++-
> >  lib/Kconfig.debug                 | 18 ++++++++++++++++++
> >  scripts/test_dwarf5_support.sh    |  8 ++++++++
> >  4 files changed, 37 insertions(+), 1 deletion(-)
> >  create mode 100755 scripts/test_dwarf5_support.sh
> >
> > diff --git a/Makefile b/Makefile
> > index 4eb3bf7ee974..1dcea03861ef 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -828,10 +828,16 @@ endif
> >
> >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> >  # Binutils 2.35+ required for -gdwarf-4+ support.
> >  dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> >  KBUILD_AFLAGS  += $(dwarf-aflag)
> > +ifdef CONFIG_CC_IS_CLANG
> > +ifneq ($(LLVM_IAS),1)
> > +DEBUG_CFLAGS   += $(dwarf-aflag)
> > +endif
> > +endif
> >
> >  ifdef CONFIG_DEBUG_INFO_REDUCED
> >  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index 49944f00d2b3..37dc4110875e 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -843,7 +843,11 @@
> >                 .debug_types    0 : { *(.debug_types) }                 \
> >                 /* DWARF 5 */                                           \
> >                 .debug_macro    0 : { *(.debug_macro) }                 \
> > -               .debug_addr     0 : { *(.debug_addr) }
> > +               .debug_addr     0 : { *(.debug_addr) }                  \
> > +               .debug_line_str 0 : { *(.debug_line_str) }              \
> > +               .debug_loclists 0 : { *(.debug_loclists) }              \
> > +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> > +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
> >
> >  /* Stabs debugging sections. */
> >  #define STABS_DEBUG                                                    \
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index e80770fac4f0..658f32ec0c05 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -273,6 +273,24 @@ config DEBUG_INFO_DWARF4
> >           It makes the debug information larger, but it significantly
> >           improves the success of resolving variables in gdb on optimized code.
> >
> > +config DEBUG_INFO_DWARF5
> > +       bool "Generate DWARF Version 5 debuginfo"
> > +       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> > +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
>
> Better keep GCC depends in one line:
>
> +       depends on CC_IS_GCC && GCC_VERSION >= 50000 || CC_IS_CLANG
> +       depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh
> $(CC) $(CLANG_FLAGS))

It's intentional, if a bit obtuse:
We don't want to check the assembler support for -Wa,-gdwarf-5 via
compiler driver when CC=gcc; instead, we'll rely on how GCC was
configured as per Arvind.

>
> As said in the other patch:
>
> Use consistently: s/DWARF Version/DWARF version/g

Ah right, and I forget your point about kbuild/Kbuild.  Will wait for
more feedback then send a v6 next week.  Thanks as always for the
feedback.

>
> - Sedat -
>
> > +       depends on !DEBUG_INFO_BTF
> > +       help
> > +         Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
> > +         5.0+ accepts the -gdwarf-5 flag but only had partial support for some
> > +         draft features until 7.0), and gdb 8.0+.
> > +
> > +         Changes to the structure of debug info in Version 5 allow for around
> > +         15-18% savings in resulting image and debug info section sizes as
> > +         compared to DWARF Version 4. DWARF Version 5 standardizes previous
> > +         extensions such as accelerators for symbol indexing and the format
> > +         for fission (.dwo/.dwp) files. Users may not want to select this
> > +         config if they rely on tooling that has not yet been updated to
> > +         support DWARF Version 5.
> > +
> >  endchoice # "DWARF version"
> >
> >  config DEBUG_INFO_BTF
> > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> > new file mode 100755
> > index 000000000000..1a00484d0b2e
> > --- /dev/null
> > +++ b/scripts/test_dwarf5_support.sh
> > @@ -0,0 +1,8 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> > +# in binutils < 2.35.
> > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> > +echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> > --
> > 2.30.0.284.gd98b1dd5eaa7-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmR_g7R3wEngsTReAmTZTP9s5PBPg-QC5339FMUVeLfJw%40mail.gmail.com.
