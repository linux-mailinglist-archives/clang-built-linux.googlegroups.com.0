Return-Path: <clang-built-linux+bncBCS7XUWOUULBBW7X26AAMGQEYHG753A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE24030996C
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 01:37:48 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id g80sf7063728qke.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 16:37:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612053467; cv=pass;
        d=google.com; s=arc-20160816;
        b=XXc7OGThevfBpsNjvBYTItGc/KQF3VLevXOmo0N4Qh//pI6BoCOtjgtNAdyGc5JiW/
         HEV8PLbb6yr0kxhnaHPRUx8rKiRQs5xCAqVqhvYPglIcaS2luebSkgr+ywrcODKGW3N5
         8RVF8WVIW9XWGHfhWUthI55B5alfJwzBtFovCrrI8UrE3aaH9/5NdbvFgM0O8QCbzTNS
         24Xzii66x4lOu9UKmsDRmqugVe5R7BAs5g60xRMbWx+blVDNCKGgFtJDvlqG2l0AGLML
         NtRxjRRz4z4SwU9qHF5FB3ED5NAs1CwqyFY9+4LEMlK7dTC5R7rdPHhBvugmyrPQb747
         ORIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ghyi4f8uSuHk4omJ3mkXD3fLag4tObiaJiQRmj9+U+Q=;
        b=Y/YK7l0sh6HKVC2XkBHR41kr8ManQAdx3sVC6TRwFkXgG3ogQXgqfYJzEtUSHf02lr
         cdzLQt3Q7QgaHKLqcJbijeR8aFOWPdFBCkkitb3MCpRDM/o65hs/7YWxeZLO2jW61Uv6
         SCitJHjpx7/5d1i5KtQvbSalO0+pWhodUWRGelBY0zdfdVZcjz1NL8J2adUHLmP6vb5b
         z8HgyWtJmV9tlGRByA9pwjrPBcbes7aYAygEYfr7OWjfHS2rbwUEXllQAr1oUOhqltLP
         ixnrL+t2WQ2d5Dh9KKcThXTQtDdvgwYhnCiZjEskTKwCkQIAcWfK0duqSHLQNWIpMSzr
         NIkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=du3xDk4M;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ghyi4f8uSuHk4omJ3mkXD3fLag4tObiaJiQRmj9+U+Q=;
        b=dtZyU+fjqvqLbs3hdgs8/9uLYIfeZw2BDTI/Zh1Oe214MaMrM7AFkJGf7zi7aMNzl1
         JlIRfBjhqdnicIRtMv1BdalPxw7Zig1xdmmwNhXvBv25/qMDNOGSf6DWPAnsTKZJRmTt
         1nxdTb8flO3Vvda335uPLkrWq5Fia82WTn1bchJyyayke/3+N9l5wQkBTRSxcvBAsM9e
         437AAYbd9V8LUvRPgdx3sHWTCshp5ytQR36oHHsoTDkzEPQB7yR3KS/WAi8zS/otWnzz
         mCSPkL4Ct8YnkPreVdzbGXhfP42u3mx6nIo9LxROWawVIsIRGTJ5+udcPvFzRhvXz4o9
         BFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ghyi4f8uSuHk4omJ3mkXD3fLag4tObiaJiQRmj9+U+Q=;
        b=gS7DifJYGDe5b74g/2cRuazaU08MDaP5LadMxZZAILQiDZ512NEuJLCrX8cpHLVjBA
         FdaNuTFM46M+C50I3q4Q1I45W5hlJBUmKXhXY19oO8I+Fe13INdKXMwB5EGXuExQZVPS
         60n/MXo703GeVhvLt133YVY/lXb64Q6UW8L+aSMCs4j6HkCjnW+QTipOneleFy8ae67n
         597hSkVircLiv/K4dMQuhDCyHi6T3hUxpUYx9cWXoGZ3sVHGmO0Zz3FCMiVpP/ZdVKX3
         Jy4IVECiiQF8Nu8QV1LTzlIQvO/UaMCPbYb3FQrCfjFkpcd9yblNKikA2+btn7jr5TnV
         uLXQ==
X-Gm-Message-State: AOAM533wVDUCS+Amf8kXgrzm8S4TI/aNz9vwTtQavOxiEFxhprpNCo2y
	XZn63q2NWUUqxndx8FQ0cZE=
X-Google-Smtp-Source: ABdhPJzIsEunh86vDVqpyOeFsKI+71oSjxdv2Fk6UdnpQrEb7W6ClEBQ6dwGNCiQCtW/pp2xeg2cZQ==
X-Received: by 2002:ac8:4e34:: with SMTP id d20mr9807593qtw.379.1612053467379;
        Sat, 30 Jan 2021 16:37:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:d2:: with SMTP id p18ls4923128qtw.3.gmail; Sat, 30
 Jan 2021 16:37:47 -0800 (PST)
X-Received: by 2002:ac8:a0e:: with SMTP id b14mr10133641qti.84.1612053466923;
        Sat, 30 Jan 2021 16:37:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612053466; cv=none;
        d=google.com; s=arc-20160816;
        b=wANrlh1DAavOmYGMUY554RdMUMzLzfqH0l0FjorLFeXH6ZGLnmaLYQzA+Kvo5iJq+a
         EL6qlzP6MsioowCdKkaidsqGbV69eoWw30zcFUyAmcrnu8p8KUJb6egEuE1Nqib2DdcZ
         z+5VjA5e2wfXXi7stStKNJd1eDD9At07VRFt2s35C0hnz0rIRGrPhpzArHEOujd17aNt
         uv9i2z+B629C9XvB1QmiElcQJYrJIx1is22+B24Jp1QBJUHeUuXH6Bz9KLPvfD7JU3df
         E2KgiCV1ziuIe2xo6O7ia+xeRxdmODgKdKmkqarXAO4ts5AKrOP5L8+67iq5t3vMhadP
         UT/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4Z8qk2uk0aVoBXztWy6EPsG2bISv9aVNWd9thy8ze+I=;
        b=hn1ev/esdZwIgQy4nePyRyWzvM1E22i598fXwD/PfNli7JFmKT3G4BxV4Uv2a9/KDE
         +IIAmsFUULdCvDaZpC3LGP+oqBRuXeaDQ7Tos/0XGeHRPQlCxjWeECmN9ZOe3hBu8WRw
         2RKnymhQkKPw+yP9abnK82C06Xpe/F9G28mwCYJY1l5KQSCEGBYIVzxC5S/UBL/7+iN8
         wBcVRYpHe9cfDj5Oc7fq3cDt5CdRCwOjrWOH2b87WIf9mPMN0mqpdpj+Lka+a4dljeu1
         egUNl/zuTvSq94CMf+ovmnS8RaYkTYSGriohSAmHW/xI4ufSBpmCTTQHXN5khqM5etLw
         BhYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=du3xDk4M;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id m8si113199qkh.4.2021.01.30.16.37.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jan 2021 16:37:46 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id o16so9455285pgg.5
        for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 16:37:46 -0800 (PST)
X-Received: by 2002:a65:628a:: with SMTP id f10mr10489763pgv.380.1612053465893;
 Sat, 30 Jan 2021 16:37:45 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com> <CA+icZUW8N8La=HX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA@mail.gmail.com>
In-Reply-To: <CA+icZUW8N8La=HX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sat, 30 Jan 2021 16:37:34 -0800
Message-ID: <CAFP8O3LaWwa5_Y49fr+PDn6y7NefUDRt=KuVuuo0Gf+kZNkLzA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=du3xDk4M;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52b
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Sat, Jan 30, 2021 at 3:10 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
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
> - Sedat -

No compiler produces .debug_sup section. It could be from some
post-processing tool which is unrelated to the linker.
Omitting it is fine.

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
clang-built-linux/CAFP8O3LaWwa5_Y49fr%2BPDn6y7NefUDRt%3DKuVuuo0Gf%2BkZNkLzA=
%40mail.gmail.com.
