Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZPY26AAMGQEAZIVVFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 47128309971
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 01:40:07 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id f16sf8704108pgh.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 16:40:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612053605; cv=pass;
        d=google.com; s=arc-20160816;
        b=rcxoEQ7Hzoo8EEV7fJz7qI9WfUCMUFgLlfU7bvRs8yel1Xt75YwhrumGzl761Mc4Bu
         HTmdgU9n+5VU5zo2jaQo1A6kZBMhe2j+/sOAvP8iEPYPZaZhQmr4hMnFzYY76H936+88
         IwHvqs0NE1gS0rLoyTL3gUejy9n6Wgt8k6VqCcGmVMCCv7nCmgnOWRsDDOEroz88SnBV
         jXByWB+Kg770D9REkcn27dXpCKgYrwk7PJlk1nwPfw08xF/ZkBC8DbGydM8Q2mw51K4j
         ZNYYZab0PMFClZFm2sgx3VWuTwrV602vM2TJHg/9mJbgSaT1aFoiZ5Dvwb92pLg+sMcG
         j/XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=GxYevjNRh3ndSlxsgVlTW+3qhgnTn3n/fpt/QiTDN3g=;
        b=klVe0VW+DzjOj2prxZZyI54REAL66p3RbniIJr0wdsqMoeOhcA5yoceyT1xWa9KI+g
         iVS5P4nAZD90BoUoignPjLB+zemyYINcaoGuvZAt+Yxd0Qjx4AXs3u3KhFn39gc98Imt
         2UTKQ3ZSNEOzpnDrY6eqrmbA9BoZro9WeuRQjdRehw7tV+hztkVs4kicGDwD0Iaac4QK
         IoNBsO9MA8f/77cr9ZCGSaV9po+A0Z0bFmHRXljRgjVVgj4Lj85s2xPt1Tx19S0yjGtR
         nuOce9rCT6vbVXzbqFLuHklK8O8tH8XLz3lt4NsPCgj17kRvWubjKVNj4PppAEQE+Mz1
         MOOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hdRG+niL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GxYevjNRh3ndSlxsgVlTW+3qhgnTn3n/fpt/QiTDN3g=;
        b=PctJja0TCo/rwDllDKkyf2xV16cqNdZFZoRzXXkg2BLtKeSL1f3hbT/Kkb3VEjfMR5
         njN6uLxXjw/9FIrkCP0o/ljnNBTjoRARzR9H9n3o4bM31SH1AE0F/xNwaCHG48MgvGcz
         B8jqfXqB5BNtjhWwZnhh+YueK+N6i4qw2BXOMYFarutErbYzmMVVfYgMmw3DrldpPKtK
         fFJhYhSp6HBiOeigl0ydlpFvZn6EYleclkKUVItMoMBxOoUFku7btbvoVUd3otQPcVRX
         zA+ffgOMuls3+SsgRF//iHt4haKltH3zc4+RFsLz3bSebKIOuQA6FQccG6EkT7voGd3f
         skOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GxYevjNRh3ndSlxsgVlTW+3qhgnTn3n/fpt/QiTDN3g=;
        b=Gej7gfUnrV71zTbqsdMVP81Cnez9VltZiec1L5br01ORK3RQtyBpHENZHqGjN4fdut
         OnDnW5D9fh8OPga6vJzj1+6cDXis3mz9o7AkRpXVN1bhSXtcR9RKQLnKevtt/k40YDpZ
         ypFwgGRK235OXH9ZYntFWs1QcEhYEC00/2X9GRIno8za34ojxfm3zvJc61qDtxaSHukF
         kZVZ1WVxKdbDA2h7JkeWi9RSahIp0nJfq9PP7iG6uvrfcP6TPTMzzJHK2nWzlXCsDjBa
         F9MxjBTi/1qlKAGxH/Q4+L0IZnzIX3dJFSmZe+ZfrxLFlKZtFUuPQggvZWtqgbq3uZ/Y
         IhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GxYevjNRh3ndSlxsgVlTW+3qhgnTn3n/fpt/QiTDN3g=;
        b=NfqrxH7bhehX8xFPbuIZncM5++XoHDAuoTIegNjoXSpnmopjedQ+UXc6ysyGGrzpr5
         I6aXkO8+eJ3z/PEcHHKHFbLZfXxxfa/Gx8KPTRdi28KHVgqERPfVMGX303Yusl/9QDUK
         3NkaBciyUihMH68BhMniOB3pkbk4j3CIuu5CPi9TRtBP0T+8S83Cx4X0FJ9ngmgVSr32
         5U/ZuynruRD8B1DKwNd/Cc3FOjTCGKpZrLarVzbGl3nfJ3NJJs9/4kQ67k2w90A7Xakc
         5ej476g9V0hPMgtSJI1SPIukIN9in9R38X039nMHWvmhgkUAxK1Llef7nsWnM9epyBl7
         ogJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zwNIcUpnS16+/N9szNUk6y2nqxC5rrOgBGeplfO/WGTR+NwLa
	Ua8Z5wENJTh/XRY4PGQvYaw=
X-Google-Smtp-Source: ABdhPJyeWLBHhhgsMlJB5TkMvTtKM2cpcHyeRGHwHIIiH0uQ3FsCaH0meWn/1d0UyOvcx2B3txgOIQ==
X-Received: by 2002:a17:90a:2e0d:: with SMTP id q13mr10703029pjd.101.1612053605689;
        Sat, 30 Jan 2021 16:40:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls4894425pgb.3.gmail; Sat, 30 Jan
 2021 16:40:05 -0800 (PST)
X-Received: by 2002:a63:ac19:: with SMTP id v25mr10690322pge.258.1612053604927;
        Sat, 30 Jan 2021 16:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612053604; cv=none;
        d=google.com; s=arc-20160816;
        b=mRx8Xt8YOSoUiCLORtxq4f3D+1Vjecvlx/NqrauxaxPEyjFRzuzDLlAMuObUWYdo3B
         P8OniNFVLjBHO/TQwXrxCWI88oLxdUIaun4HPhrTcz+PgT/vClibtZ8bSK5ZtHbBcjZI
         17igQlSjuPgSgQGPk8YkdszVKPiBltNK2tNX17tbFMwUPGsgA8cAAQSaRMcRsqPOeilB
         fCblho8+yvlv5+EYPJEzH8bWcUSjC4IK60U2AWUoCoKgk0fwlnmBVRygK6vzGLLiLfec
         Ev/dirKNJJAKtUOra6Graz5gGLfUvZLck31GWmLZCo2OfsNXXquM6VqR6qQZCD/JryZa
         isTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=+TFRVbIqY5B7UoIMdCTWTdFFbAf760FFWhjVOC/xl1w=;
        b=GnT9vFG+UnVySAaHD7vJGjkbcGJy82qSsOUuxaR0EfyR7qC+QnDxFommwWZAq1SY85
         6dr0nKXzpZgtkK1loUTkyPQCF1v7oEGlICXzJ46+oU9giAjCC+hkH1pm2TQB61+6zpaf
         kRSfESArD7CKFERsrXnea9w1ITZfoFfW+fin64KDJOCu0aIRilyEpvqVJPAzXHEoTJIf
         F6F3lnXtW55VAW38l8zdFpOS8KVsM9hJkvLHzVyMWtv133mpqcyXUvto42mvW1VJmjF8
         d0QzsBs9cwW/GHskN+7qvxH3gteJN7nltF2xSzbQfq+RPmyYO8r4mQ4mHZQXrR/QuEc2
         72Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hdRG+niL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id a21si122355pjo.2.2021.01.30.16.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jan 2021 16:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Received: by mail-il1-x132.google.com with SMTP id a1so12190390ilr.5
        for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 16:40:04 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr7776249iln.215.1612053604328;
 Sat, 30 Jan 2021 16:40:04 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com> <CA+icZUW8N8La=HX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA@mail.gmail.com>
 <CAFP8O3LaWwa5_Y49fr+PDn6y7NefUDRt=KuVuuo0Gf+kZNkLzA@mail.gmail.com>
In-Reply-To: <CAFP8O3LaWwa5_Y49fr+PDn6y7NefUDRt=KuVuuo0Gf+kZNkLzA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 31 Jan 2021 01:39:52 +0100
Message-ID: <CA+icZUWQZKFy22PqMKmskPz8tRMTrAYDuevWZGVVC+9RPmMxZw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hdRG+niL;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132
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

On Sun, Jan 31, 2021 at 1:37 AM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@googl=
e.com> wrote:
>
> On Sat, Jan 30, 2021 at 3:10 PM Sedat Dilek <sedat.dilek@gmail.com> wrote=
:
> >
> > On Sat, Jan 30, 2021 at 1:44 AM Nick Desaulniers
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
> > > $ readelf --debug-dump=3Dinfo vmlinux 2>/dev/null | grep Version
> > >
> > > DWARF5 wins significantly in terms of size when mixed with compressio=
n
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
> > >   All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experiment=
al
> > >   option that enabled some small DWARF subset (initially only a few
> > >   DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (release=
d
> > >   after DWARF 5 has been finalized) started emitting DWARF5 section
> > >   headers and got most of the DWARF5 changes in...
> > >
> > > Version check GCC so that we don't need to worry about the difference=
 in
> > > command line args between GNU readelf and llvm-readelf/llvm-dwarfdump=
 to
> > > validate the DWARF Version in the assembler feature detection script.
> > >
> > > GNU `as` only recently gained support for specifying -gdwarf-5, so wh=
en
> > > compiling with Clang but without Clang's integrated assembler
> > > (LLVM_IAS=3D1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLA=
GS.
> > >
> > > Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> > > recognize the new additions to the DWARF debug info. Thanks to Sedat =
for
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
> > >  Makefile                          |  1 +
> > >  include/asm-generic/vmlinux.lds.h |  7 ++++++-
> > >  lib/Kconfig.debug                 | 18 ++++++++++++++++++
> > >  scripts/test_dwarf5_support.sh    |  8 ++++++++
> > >  4 files changed, 33 insertions(+), 1 deletion(-)
> > >  create mode 100755 scripts/test_dwarf5_support.sh
> > >
> > > diff --git a/Makefile b/Makefile
> > > index d2b4980807e0..5387a6f2f62d 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -831,6 +831,7 @@ KBUILD_AFLAGS       +=3D -Wa,-gdwarf-2
> > >  endif
> > >
> > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) :=3D 5
> > >  DEBUG_CFLAGS   +=3D -gdwarf-$(dwarf-version-y)
> > >
> > >  ifdef CONFIG_DEBUG_INFO_REDUCED
> > > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/=
vmlinux.lds.h
> > > index 34b7e0d2346c..1e7cde4bd3f9 100644
> > > --- a/include/asm-generic/vmlinux.lds.h
> > > +++ b/include/asm-generic/vmlinux.lds.h
> > > @@ -842,8 +842,13 @@
> > >                 /* DWARF 4 */                                        =
   \
> > >                 .debug_types    0 : { *(.debug_types) }              =
   \
> > >                 /* DWARF 5 */                                        =
   \
> > > +               .debug_addr     0 : { *(.debug_addr) }               =
   \
> > > +               .debug_line_str 0 : { *(.debug_line_str) }           =
   \
> > > +               .debug_loclists 0 : { *(.debug_loclists) }           =
   \
> > >                 .debug_macro    0 : { *(.debug_macro) }              =
   \
> > > -               .debug_addr     0 : { *(.debug_addr) }
> > > +               .debug_names    0 : { *(.debug_names) }              =
   \
> > > +               .debug_rnglists 0 : { *(.debug_rnglists) }           =
   \
> > > +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
> > >
> >
> > I just looked at binutils 2.36 in the Debian/experimental repositories.
> >
> > [1] says:
> >
> > + PR ld/27230
> > =EF=BF=BC+ * scripttempl/DWARF.sc: Add DWARF-5 .debug_* sections.
> >
> > ...
> >
> > -  /* DWARF Extension.  */
> > =EF=BF=BC-  .debug_macro    0 : { *(.debug_macro) }
> > +  /* DWARF 5.  */
> >    .debug_addr     0 : { *(.debug_addr) }
> > +  .debug_line_str 0 : { *(.debug_line_str) }
> > +  .debug_loclists 0 : { *(.debug_loclists) }
> > +  .debug_macro    0 : { *(.debug_macro) }
> > +  .debug_names    0 : { *(.debug_names) }
> > +  .debug_rnglists 0 : { *(.debug_rnglists) }
> > +  .debug_str_offsets 0 : { *(.debug_str_offsets) }
> > =EF=BF=BC+  .debug_sup      0 : { *(.debug_sup) }
> >
> > The list of DWARF-5 .debug_* sections is alphabetically sorted.
> > AFAICS .debug_sup section is missing?
> >
> > - Sedat -
>
> No compiler produces .debug_sup section. It could be from some
> post-processing tool which is unrelated to the linker.
> Omitting it is fine.
>

Thanks for the clarification, Fangrui.

- Sedat -

> > [1] https://salsa.debian.org/toolchain-team/binutils/-/commit/f58f33081=
035672b01a04326a9c8daadbd09a430
> >
> > >  /* Stabs debugging sections. */
> > >  #define STABS_DEBUG                                                 =
   \
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index 94c1a7ed6306..ad6f78989d4f 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
> > >           It makes the debug information larger, but it significantly
> > >           improves the success of resolving variables in gdb on optim=
ized code.
> > >
> > > +config DEBUG_INFO_DWARF5
> > > +       bool "Generate DWARF Version 5 debuginfo"
> > > +       depends on GCC_VERSION >=3D 50000 || CC_IS_CLANG
> > > +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwa=
rf5_support.sh $(CC) $(CLANG_FLAGS))
> > > +       depends on !DEBUG_INFO_BTF
> > > +       help
> > > +         Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc=
 5.0+ (gcc
> > > +         5.0+ accepts the -gdwarf-5 flag but only had partial suppor=
t for some
> > > +         draft features until 7.0), and gdb 8.0+.
> > > +
> > > +         Changes to the structure of debug info in Version 5 allow f=
or around
> > > +         15-18% savings in resulting image and debug info section si=
zes as
> > > +         compared to DWARF Version 4. DWARF Version 5 standardizes p=
revious
> > > +         extensions such as accelerators for symbol indexing and the=
 format
> > > +         for fission (.dwo/.dwp) files. Users may not want to select=
 this
> > > +         config if they rely on tooling that has not yet been update=
d to
> > > +         support DWARF Version 5.
> > > +
> > >  endchoice # "DWARF version"
> > >
> > >  config DEBUG_INFO_BTF
> > > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_sup=
port.sh
> > > new file mode 100755
> > > index 000000000000..c46e2456b47a
> > > --- /dev/null
> > > +++ b/scripts/test_dwarf5_support.sh
> > > @@ -0,0 +1,8 @@
> > > +#!/bin/sh
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +
> > > +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented =
with DWARF
> > > +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU=
 binutils
> > > +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=3D25611
> > > +echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> > > +  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o =
/dev/null -
> > > --
> > > 2.30.0.365.g02bc693789-goog
> > >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWQZKFy22PqMKmskPz8tRMTrAYDuevWZGVVC%2B9RPmMxZw%4=
0mail.gmail.com.
