Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBK6426AAMGQE6V4J6FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4493098D3
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 00:39:25 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id w9sf7945383pjh.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 15:39:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612049964; cv=pass;
        d=google.com; s=arc-20160816;
        b=MXOaAS2//5/25QKYwk0Qc7fGQBAPbQBptAAzfRQg3RVnXnr+rPwwG3pbBz6PrFXotB
         8KXmqjJmA8+6iFAhX47KoGaLPuoo1Kx8TrXZTVKIW4kD+G9nrGW9vbj+PZh/8SuT02pt
         OZo0RiGnkkQTReBAwNh414fhGkR3MntplFtZ794Q7ONhz5r375Vzby43kUdr2P46isqt
         oIDm6CAjckJEK01Awa103hp6BVSMrGpVdrBLZ+KSnaXlzRT4xeUYNZ/BbsX2w270/0ox
         ym/yEmRlXdT4N3aM2najW+5SGLrXgrcIkiBZ/jvte/JORruRjws5fuzarmERXA+75NPt
         ogkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Z12ihAndTxZSaZs+rWKh87A93uenItJdGfc/TksmfUw=;
        b=LMwudl6sKuyXowyfe/ggR4Dkrl6J9HGLNr6b97AaE29+ThqTxhg0SUDqzbM2mkOfuM
         9i0UIGLCGh2emPE9H8tdrszkyrdGkBGkVebSHlpSooFEshxr5Rm3VJFBLjxUCMKtKxqw
         +muO32JViefU2CUmGTzZRsmmDeOGfal8NKQ1Mjz+MDKBm8fAmhrecQnOQojCMe4rBkU1
         6x6BOQx+lxShcXMSnRXzbkmKRNrM9VlTplufZF6m9410rtvk3jXz4/qi+v2ncYPvklt+
         VoaH5spXKEue0dfdAhlhEAXd8ur+Hk4rc61WM/MLGTaFjO9D6e416kEF0d0NZHwzTOHM
         zl2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMQ32M6p;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z12ihAndTxZSaZs+rWKh87A93uenItJdGfc/TksmfUw=;
        b=HKJK19MLUquKxELk8mKhC+YA9X/SRFbelwMNcuUQeQXRRtSK5IQU2/Ge+6JynG7TPf
         5lh+zDyu8luT71WwNeOSLnTUcwsTQhAHVJk194cchQEubdZj0V5my9nfJ5+RKPEp5ztS
         FW22iqN1Yrljmvq9zFfgIvZXUb2oOLHO4dHzrM2yX6QvaSduGBghh8HfRyrRzo3gHKdr
         5/s7cPJhZ+VumHVPckeS7/BLSmlhR329th3UdHvZdgKTSNwx8d25sk3y0goVVKFXwXK3
         erASI0jX3O7hz7SovbFqD4Vlr4/IuNEu5RMiDYTFtGbsk4mEp6a0yhNUdt2o41OywyNV
         ToGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z12ihAndTxZSaZs+rWKh87A93uenItJdGfc/TksmfUw=;
        b=fBYD0Ru4HZnTdvxRHAwRcTbq3lEYDYzc75JZx816Mb+CizmSW1L6n/YiAKarzBTKhQ
         NqL9wR4S+blsAbql8UyhBNsTBQjk0QjnPORT9Uu0WhqBFCSg1w7cNvem3HoQtcxkcwZM
         cgfPGV7Zf1ATzRGIEsMzk8mxnKKDqv4BUVwSBMShhhkxkUMqh+ooohne6g+cYNwhyEPd
         dPHwsmjU0O9Pz+2L4V8QxkNogqsOf18wnaGlgx/O8E4IPI0aiCmRhops6bwVVEhMgkLy
         vsMJaa6NhAKW4Gz0BnPHWWE4Wgs6bcelHA16jmFxLyY3UgRBvU2p92iIYMZkNjdEDNnP
         SvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z12ihAndTxZSaZs+rWKh87A93uenItJdGfc/TksmfUw=;
        b=WC57TJ27DrBux6LyGQDYAZ4Hoygax3Z2XGTvcF9wIJEecMmunMcvwxBzo14ZjgABNr
         GajDCqPFivniUO83gsMhi7yH68DVE+s6AWiPT0ZLaPowWrV0et3nDNy2VuDx3ZbeG1o6
         p62mW6X7FtV5zpbKTC6fTFTpY9I/VFZkSIrh8wdc2sinBjkVv5RfR7W/oUh6gkB4WJpE
         T1znSvXR6ijRLGlISShWseZuOXgHBPqBh/GAnURWQpcBGhDEM2xnABwi4bgKC+Tp9ut8
         W66fkVjTNn+Nb5GGxcMM323YgwTfzYYG28IcyNEBIfpp1qA5lIsg0p8rhymDujA8i35O
         Ymbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Xtl2UMjU4WaKqP7QYk2ACq5OQCuqBVT07J5t19kRTvFMN7P/F
	GBzNOdGP2ksyZoUx+mjI5tc=
X-Google-Smtp-Source: ABdhPJydzLgx6VyWyrZ8DJyvEJaVR0XJ0rSZwfFKG+NN0zCFGSxEZCDeNNVVuSHY9Q1jO3ykYcgjzw==
X-Received: by 2002:a17:902:864a:b029:de:fe25:3e08 with SMTP id y10-20020a170902864ab02900defe253e08mr11580771plt.75.1612049963717;
        Sat, 30 Jan 2021 15:39:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls6389413plq.7.gmail; Sat, 30
 Jan 2021 15:39:23 -0800 (PST)
X-Received: by 2002:a17:90a:470b:: with SMTP id h11mr10599873pjg.186.1612049962899;
        Sat, 30 Jan 2021 15:39:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612049962; cv=none;
        d=google.com; s=arc-20160816;
        b=jPTAZlZvqSUH8wX67hsuU7Ca7p3ywEp5112yJjurdhGhjHkdOOvFUutsSnrjWLs6Ns
         5hgkYlkzcxgTwDZpvthCAVvgO8+fPSeRJeZuhhvf2msdq2SZ+uiX9/NAg4P14QmXa9eB
         caN3wYF+gKb6boU6GKdS/Q4ZBBNHlnfWgOD6JYT+fY1Yufb9yS3M4nU/gR/U0Ooeqm7E
         zx+DKmwYGrzh020rH4re2JChtmIGx2oW6k5qZ5PbSxDw8tupgGapOVrLx9HycLl5g2AA
         TWKHaZnqrL5mbDD138SSmZYbN2q/Bbc9Cwo2xxmvBkq4noNeGC2DD6VFkUmJqxmn3Dxe
         jHYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=CA+t1dL75EerdwPHdKGgU/V0NlU+y75OmzU0/LZVlt8=;
        b=QA4I0tyh0OZjf5jWIztQJVW6ej6pY6SYnnFeZYpxKV1z6Vw3cEc3lRlyVmSH2iDrJ2
         eif+fo1LBdaADQdNUwgz5uBCh6BvOe9Me/9PKn+I1XiLI8Ndb6l1XpTMmKuwlRGZAvcC
         WQOaOXaQTJY11k1LNnDbdo9vKuNTvIjxymcuCtaGJAQ9qo7kGANeZcGChnthWgT/YTdG
         C4/sweazGvnZxdk1/N6Zm0tPfWO29mUAhtqopnk27OoOSBVmbHFu783NbNK31s50YsrG
         IrdQlKyFbELh7B/tTpH0nARmatDsWGQ7EjTXVEj3JQDvxmLtBdZLZk1Pmv+wOgKipWxn
         Fibw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMQ32M6p;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id b189si606566pfg.5.2021.01.30.15.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jan 2021 15:39:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Received: by mail-il1-x12b.google.com with SMTP id y17so12111617ili.12
        for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 15:39:22 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr7786122ilq.112.1612049962550;
 Sat, 30 Jan 2021 15:39:22 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com> <CA+icZUW8N8La=HX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA@mail.gmail.com>
In-Reply-To: <CA+icZUW8N8La=HX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 31 Jan 2021 00:39:11 +0100
Message-ID: <CA+icZUX9pii=vJq-jmp=WyC_b=cAJ+0skSssU0mgm_b-HteRBw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OMQ32M6p;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b
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

On Sun, Jan 31, 2021 at 12:10 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Jan 30, 2021 at 1:44 AM Nick Desaulniers
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
> > $ readelf --debug-dump=3Dinfo vmlinux 2>/dev/null | grep Version
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
> > Version check GCC so that we don't need to worry about the difference i=
n
> > command line args between GNU readelf and llvm-readelf/llvm-dwarfdump t=
o
> > validate the DWARF Version in the assembler feature detection script.
> >
> > GNU `as` only recently gained support for specifying -gdwarf-5, so when
> > compiling with Clang but without Clang's integrated assembler
> > (LLVM_IAS=3D1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS=
.
> >
> > Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> > recognize the new additions to the DWARF debug info. Thanks to Sedat fo=
r
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
> >  Makefile                          |  1 +
> >  include/asm-generic/vmlinux.lds.h |  7 ++++++-
> >  lib/Kconfig.debug                 | 18 ++++++++++++++++++
> >  scripts/test_dwarf5_support.sh    |  8 ++++++++
> >  4 files changed, 33 insertions(+), 1 deletion(-)
> >  create mode 100755 scripts/test_dwarf5_support.sh
> >
> > diff --git a/Makefile b/Makefile
> > index d2b4980807e0..5387a6f2f62d 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -831,6 +831,7 @@ KBUILD_AFLAGS       +=3D -Wa,-gdwarf-2
> >  endif
> >
> >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) :=3D 5
> >  DEBUG_CFLAGS   +=3D -gdwarf-$(dwarf-version-y)
> >
> >  ifdef CONFIG_DEBUG_INFO_REDUCED
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vm=
linux.lds.h
> > index 34b7e0d2346c..1e7cde4bd3f9 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -842,8 +842,13 @@
> >                 /* DWARF 4 */                                          =
 \
> >                 .debug_types    0 : { *(.debug_types) }                =
 \
> >                 /* DWARF 5 */                                          =
 \
> > +               .debug_addr     0 : { *(.debug_addr) }                 =
 \
> > +               .debug_line_str 0 : { *(.debug_line_str) }             =
 \
> > +               .debug_loclists 0 : { *(.debug_loclists) }             =
 \
> >                 .debug_macro    0 : { *(.debug_macro) }                =
 \
> > -               .debug_addr     0 : { *(.debug_addr) }
> > +               .debug_names    0 : { *(.debug_names) }                =
 \
> > +               .debug_rnglists 0 : { *(.debug_rnglists) }             =
 \
> > +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
> >
>
> I just looked at binutils 2.36 in the Debian/experimental repositories.
>
> [1] says:
>
> + PR ld/27230
> =EF=BF=BC+ * scripttempl/DWARF.sc: Add DWARF-5 .debug_* sections.
>
> ...
>
> -  /* DWARF Extension.  */
> =EF=BF=BC-  .debug_macro    0 : { *(.debug_macro) }
> +  /* DWARF 5.  */
>    .debug_addr     0 : { *(.debug_addr) }
> +  .debug_line_str 0 : { *(.debug_line_str) }
> +  .debug_loclists 0 : { *(.debug_loclists) }
> +  .debug_macro    0 : { *(.debug_macro) }
> +  .debug_names    0 : { *(.debug_names) }
> +  .debug_rnglists 0 : { *(.debug_rnglists) }
> +  .debug_str_offsets 0 : { *(.debug_str_offsets) }
> =EF=BF=BC+  .debug_sup      0 : { *(.debug_sup) }
>
> The list of DWARF-5 .debug_* sections is alphabetically sorted.
> AFAICS .debug_sup section is missing?
>

Here the link to PR ld/27230 ("[PATCH] Add DWARF v5 sections and v4
.debug_types").

- Sedat -

[1] https://sourceware.org/pipermail/binutils/2021-January/115064.html

> - Sedat -
>
> [1] https://salsa.debian.org/toolchain-team/binutils/-/commit/f58f3308103=
5672b01a04326a9c8daadbd09a430
>
> >  /* Stabs debugging sections. */
> >  #define STABS_DEBUG                                                   =
 \
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index 94c1a7ed6306..ad6f78989d4f 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
> >           It makes the debug information larger, but it significantly
> >           improves the success of resolving variables in gdb on optimiz=
ed code.
> >
> > +config DEBUG_INFO_DWARF5
> > +       bool "Generate DWARF Version 5 debuginfo"
> > +       depends on GCC_VERSION >=3D 50000 || CC_IS_CLANG
> > +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf=
5_support.sh $(CC) $(CLANG_FLAGS))
> > +       depends on !DEBUG_INFO_BTF
> > +       help
> > +         Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5=
.0+ (gcc
> > +         5.0+ accepts the -gdwarf-5 flag but only had partial support =
for some
> > +         draft features until 7.0), and gdb 8.0+.
> > +
> > +         Changes to the structure of debug info in Version 5 allow for=
 around
> > +         15-18% savings in resulting image and debug info section size=
s as
> > +         compared to DWARF Version 4. DWARF Version 5 standardizes pre=
vious
> > +         extensions such as accelerators for symbol indexing and the f=
ormat
> > +         for fission (.dwo/.dwp) files. Users may not want to select t=
his
> > +         config if they rely on tooling that has not yet been updated =
to
> > +         support DWARF Version 5.
> > +
> >  endchoice # "DWARF version"
> >
> >  config DEBUG_INFO_BTF
> > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_suppo=
rt.sh
> > new file mode 100755
> > index 000000000000..c46e2456b47a
> > --- /dev/null
> > +++ b/scripts/test_dwarf5_support.sh
> > @@ -0,0 +1,8 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented wi=
th DWARF
> > +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU b=
inutils
> > +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=3D25611
> > +echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> > +  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /d=
ev/null -
> > --
> > 2.30.0.365.g02bc693789-goog
> >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUX9pii%3DvJq-jmp%3DWyC_b%3DcAJ%2B0skSssU0mgm_b-Ht=
eRBw%40mail.gmail.com.
