Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGMZWX3AKGQEUQEOCOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 663D01E27E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 19:06:34 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id bt19sf5632392qvb.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 10:06:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590512793; cv=pass;
        d=google.com; s=arc-20160816;
        b=h64M60q3FQgUhKdKjVNQlRMIDlSeE8Js/tySBs86kp382PftbcA7EyOWjxW/vT+NrM
         gwdOhJzJSz18Lz+ezwwTq5LcKyGHZxUnK4yPXJNBJmxyWBDiw4OSFXml/X1MSelNM/Am
         XGimzowXM53Oqmb9LGsZWu+1gsviKdLrBW37XEBJRRZ0//sAfOlKpGfsqJbRZ7bddWZY
         E6vT4Ewi6/sVmJ7pJP5T3r6mlhaYddcMAdgGk+s6wEgA/XD1n+b9fihsEU/0ANhITUTq
         Se6q576yU7oCkz91DxaS4S9raWzU8fJl1qbfMrd2qcGrFpFQ1JpNn402EGRUJbC3959E
         EF1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5YqmICPuO3oM/sZiDIvO8Q389iVhlEJ/Z+5W2FMwP6M=;
        b=o9KAKKrCSP5pb1+laDHbZH1pHYYm69pFvnkLpfDpWC6O8mz/deLR0nonGoLWNIABTg
         kVFTdBxUE8my/Efv9JPUg6p+gynPqwNgowC1obtpmYMXAewe1PCbRg0npmV5LTdl6h+5
         A92igEqrFhN+MnSL+wCeHRgtoj04qMtGD5OUMg/Qgz4cYgfqIZpr032qmXvRu5A0n2pi
         rtvysWbEXe+JVuLqV5Qgwn6duyxv1seisudgn3D0fWin7OF3Qegs8Fj0AJajHWrm2MMQ
         9XsjQdZIbGOh9BQIyciRk8Jev8cMvW4qkdfSuoH9len3HNtpBJe21uvNU7fKW2I7GZ57
         iO6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UdZGabkJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5YqmICPuO3oM/sZiDIvO8Q389iVhlEJ/Z+5W2FMwP6M=;
        b=MOSMIxxZNNp6ZwhZY2Tgiumb5UwBp5QLxvDbz3JgF8UQNeSnZw3BniArQH2Pqcptol
         rbwbk6znJLEJhwrbmFJM1SsnLFx5qEmMzLRS4DpZl1T8iwiHMBBFxJ9IucvSGmRDWut9
         79eZ7/j/g6xQvKaShcX2mQ3VCKcbd/2rmqRBGvSGMiVdhY5lFj4+AJYx60UPzK6P3cbP
         4aU2ivtCmkbcTsWhfknowIyFoBq4YWi8m39j83g0z5alDsXbe1y1BXfoO+y5qP+bn1cq
         0Nfq6UEGdwdx517/nA07Jr4561o/bIErvdlQsNl5fUK6sB/HBJoZoVaKAO1dEHVoFLLV
         53Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5YqmICPuO3oM/sZiDIvO8Q389iVhlEJ/Z+5W2FMwP6M=;
        b=Mf/IhcgeOhSGFe1sOs6buO6UKCvblWyLQ9tST7cifOOPqX+EaG7Q50lB4owheHoRCZ
         lArltRs3dBEfhh3hD3nqyphpl9naKTwN3VZwsOriWKlKcFvw1oeDAr2BfyTaVDiGvxKz
         IX1jUL20ojndoctf5WPh1tmc6Wa3VcWvsm/PjlFNgs5u+FG0me3m2gRMegl5oCSMqzY8
         NPNfeyciSz/eZrSHmifwWml/lK2qEuNkh7jlAiDndBQ4njrnlxGuKsy+izvteqF0Oikj
         dl2AhH/G+NvDZ7+r37bpb+c65lUeIWcFQ40lwo7YcpB8Nyao/nzIEZUpGoxHAfslczGP
         y80g==
X-Gm-Message-State: AOAM530WYm/It6T+wBKnGGphcg4uyF+mA9wobDwDYBdO69H0GyPOsu9e
	LzpOeQGtagjaBmfGRlDsLJw=
X-Google-Smtp-Source: ABdhPJysXPd8FRbwFTi1GHhuOLXYwe9A9MctO44peLFn2y9WWejWXR+AbfhqXBL/j8/Q4X5lFiMU9w==
X-Received: by 2002:a37:ac0c:: with SMTP id e12mr2456715qkm.281.1590512793288;
        Tue, 26 May 2020 10:06:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:488a:: with SMTP id i10ls1626757qtq.2.gmail; Tue, 26 May
 2020 10:06:33 -0700 (PDT)
X-Received: by 2002:ac8:3f88:: with SMTP id d8mr2331289qtk.164.1590512792780;
        Tue, 26 May 2020 10:06:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590512792; cv=none;
        d=google.com; s=arc-20160816;
        b=ZX3eM+Gi0Ba+7AtGue97JIKEHVrMDjrrruSCWjzNNGjg3/jEe3gpxscfmIp7soaaBI
         2ibdS3flkeqcACd/+ZVw6HSKiXDB3dZ/fygvZBgHqCfQDtWUD0hcBj1b55qhWRCSJWlh
         mwBwf9Ejudoh3MSE/lORr7XFzhSLUmKWG0Pq7Zb+oNW+BWOd5dUREvpFiCupSnxv9e97
         jk2J4S6uHnNC0ilYdd7Ra/ZW1BOk/1eCaZmC9hmpH7QEzqFquEBelMxpvtFjzkZoffuN
         urIf8jPj8sfuNzHoAztmmxcwfsLPlEZ6I7yb4y5mayE6phjUwq8grGid1dgE+uks5xKN
         ifyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yb9QT1BIGxbozBy7yF1mKLzqcCaPwhboIB/ytOSzJpQ=;
        b=GxgtUQ+iq/A6C4rPK9KogSsmpd1VMjlHKb/Lwx7mKP/OjrCHoP+pvUXtUC1BTJ1ii/
         CCqmJeVa2dyk/B4i2xb1fyKdGDTE9dDhwETHPPfV78IdiJ4kHBi50Le+tOhH1TvfsTUX
         Y0dcLScwa9iZUV5cN/bfckWLUbqujtWasQTRzwtNDeE7UuTqpQhK0SUzk2thYocdeX1P
         grdDUdDidjOIa0bbVTv6h4xJT3d33mE+DWhQR4zrvG5g/HQnIVEQ1xS9IpMhdDfnVN3z
         +TgDU41VoRYYrNgJxa2KrxkrwJlsQITkvARHOeqpY/b4pSusxmCfNa6D7CGsXplqqOi/
         DIPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UdZGabkJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id w66si37896qka.6.2020.05.26.10.06.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 10:06:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id x10so8920378plr.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 10:06:32 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr1859397pld.119.1590512792072;
 Tue, 26 May 2020 10:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
 <20200526170321.137238-1-ndesaulniers@google.com>
In-Reply-To: <20200526170321.137238-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 10:06:20 -0700
Message-ID: <CAKwvOdng2mUJv=tdjwu8XUTckM0EZaSBpcZ_eTL-T0sTTzd_+A@mail.gmail.com>
Subject: Re: [PATCH v4] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blaikie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Naohiro Aota <naohiro.aota@wdc.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UdZGabkJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, May 26, 2020 at 10:03 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> As debug information gets larger and larger, it helps significantly save
> the size of vmlinux images to compress the information in the debug
> information sections. Note: this debug info is typically split off from
> the final compressed kernel image, which is why vmlinux is what's used
> in conjunction with GDB. Minimizing the debug info size should have no
> impact on boot times, or final compressed kernel image size.
>
> All of the debug sections will have a `C` flag set.
> $ readelf -S <object file>
>
> $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
>     vmlinux.gcc75.uncompressed.dwarf4
>
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +18  [ = ]       0    [Unmapped]
>  -73.3%  -114Ki  [ = ]       0    .debug_aranges
>  -76.2% -2.01Mi  [ = ]       0    .debug_frame
>  -73.6% -2.89Mi  [ = ]       0    .debug_str
>  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
>  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
>  -70.5% -9.04Mi  [ = ]       0    .debug_line
>  -79.3% -10.9Mi  [ = ]       0    .debug_loc
>  -39.5% -88.6Mi  [ = ]       0    .debug_info
>  -18.2%  -123Mi  [ = ]       0    TOTAL
>
> $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
>     vmlinux.clang11.uncompressed.dwarf4
>
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +23  [ = ]       0    [Unmapped]
>  -65.6%    -871  [ = ]       0    .debug_aranges
>  -77.4% -1.84Mi  [ = ]       0    .debug_frame
>  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
>  -73.1% -2.43Mi  [ = ]       0    .debug_str
>  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
>  -65.9% -8.62Mi  [ = ]       0    .debug_line
>  -86.2% -40.0Mi  [ = ]       0    .debug_loc
>  -42.0% -64.1Mi  [ = ]       0    .debug_info
>  -22.1%  -122Mi  [ = ]       0    TOTAL
>
> For x86_64 defconfig + LLVM=1 (before):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03
> Maximum resident set size (kbytes): 43856
>
> For x86_64 defconfig + LLVM=1 (after):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52
> Maximum resident set size (kbytes): 1566776
>
> Thanks to:
> Nick Clifton helped us to provide the minimal binutils version.
> Sedat Dilet found an increase in size of debug .deb package.
>
> Cc: Nick Clifton <nickc@redhat.com>
> Cc: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: David Blaikie <blaikie@google.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V3 -> V4:
> * Add thanks line to commit message as per Masahiro.
> * Swap Sugguested-by to Cc for two lines in commit message, as per
>   Masahiro.
>
> Changes V2 -> V3:
> * Fix blaikie@'s email addr.
> * Fix Fangrui's Reviewed-by tag as per Masahiro.
> * Fix help text as per Masahiro.
> * Fix -Wa$(comma)foo as per Masahiro.
>
> Changes V1 -> V2:
> * rebase on linux-next.
> * Add assembler flags as per Fangrui.
> * Add note about KDEB_COMPRESS+scripts/package/builddeb
>   as per Sedat and Masahiro.
> * Add note about bintutils version requirements as per Nick C.
> * Add note about measured increased build time and max RSS.
>
>  Makefile                          |  6 ++++++
>  arch/arm64/kernel/vdso32/Makefile |  2 +-

Sorry, I was wondering why Will and TGLX got cc'ed. My tree was dirty
when I amended ... was carrying another patch to send, please
disregard v4, and sorry for the noise.

>  lib/Kconfig.debug                 | 17 +++++++++++++++++
>  3 files changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 71687bfe1cd9..be8835296754 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -822,6 +822,12 @@ DEBUG_CFLAGS       += $(call cc-option, -femit-struct-debug-baseonly) \
>                    $(call cc-option,-fno-var-tracking)
>  endif
>
> +ifdef CONFIG_DEBUG_INFO_COMPRESSED
> +DEBUG_CFLAGS   += -gz=zlib
> +KBUILD_AFLAGS  += -Wa,--compress-debug-sections=zlib
> +KBUILD_LDFLAGS += --compress-debug-sections=zlib
> +endif
> +
>  KBUILD_CFLAGS += $(DEBUG_CFLAGS)
>  export DEBUG_CFLAGS
>
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 3964738ebbde..5fd7792d03fc 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -135,7 +135,7 @@ c-obj-vdso-gettimeofday := vgettimeofday.o
>  asm-obj-vdso := sigreturn.o
>
>  ifneq ($(c-gettimeofday-y),)
> -VDSO_CFLAGS_gettimeofday_o += -include $(c-gettimeofday-y)
> +VDSO_CFLAGS_gettimeofday_o += -include $(c-gettimeofday-y) -marm
>  endif
>
>  VDSO_CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index b8f023e054b9..7fc82dcf814b 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -225,6 +225,23 @@ config DEBUG_INFO_REDUCED
>           DEBUG_INFO build and compile times are reduced too.
>           Only works with newer gcc versions.
>
> +config DEBUG_INFO_COMPRESSED
> +       bool "Compressed debugging information"
> +       depends on DEBUG_INFO
> +       depends on $(cc-option,-gz=zlib)
> +       depends on $(as-option,-Wa$(comma)--compress-debug-sections=zlib)
> +       depends on $(ld-option,--compress-debug-sections=zlib)
> +       help
> +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> +         5.0+, binutils 2.26+, and zlib.
> +
> +         Users of dpkg-deb via scripts/package/builddeb may find an increase in
> +         size of their debug .deb packages with this config set, due to the
> +         debug info being compressed with zlib, then the object files being
> +         recompressed with a different compression scheme. But this is still
> +         preferable to setting $KDEB_COMPRESS to "none" which would be even
> +         larger.
> +
>  config DEBUG_INFO_SPLIT
>         bool "Produce split debuginfo in .dwo files"
>         depends on DEBUG_INFO
> --
> 2.27.0.rc0.183.gde8f92d652-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdng2mUJv%3Dtdjwu8XUTckM0EZaSBpcZ_eTL-T0sTTzd_%2BA%40mail.gmail.com.
