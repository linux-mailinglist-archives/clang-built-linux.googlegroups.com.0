Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBI5CWX3AKGQEXWB6CMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id B99201E28B8
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 19:25:56 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id i12sf148201pjv.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 10:25:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590513955; cv=pass;
        d=google.com; s=arc-20160816;
        b=V8TprY8A43X1RbXzg9mo7DbN3kXb2wXHfmFTxeUncTiX9CsLmqae1blrJj5DwFWJru
         AW/yVVPR8Q0sP64sBMOdfzkjNRKXNJCHK7cA7Yxp3PQNC/roaaeIakw9Uc8Z8Q7Xx+nA
         j/qFdeOcRne0aU+FWmAhlsZFO9Zj5FiEy7Yr1CSiIi3wNPYkgSlh2SLGTxm1I8BV0skU
         r4yzT61E/tr2s3i+UgcJK1bSk8POh02PaGuHrCMla6Q/om4w7HeGD9LgWVZARBV85tX9
         v9JNmWMz8dby4XrkT5YumWs/ZEmyAtZaE9h85t+4XTs1tJPGFC7ldEB78pe8u3qETtWb
         +00Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7bMOycvOPm7lAYQa9/fWbvLSU0NdJGd9kutASaNd3wc=;
        b=wjuUQMB0N3g9jh4WAxvyZkNa/NwkTaEved7M/Gd0SMY9mDnAGEiHcIarv+XPwph8jy
         GV6CWfJMESbZB22SEiTojhbSUdfLYFDmzNiGtzj/XnuwND7hs+P1GJ9BVjg0udfrjPSn
         Sxr2hRsCvwiA7GnuyR7kXYwFauVarZWHtXk+sMp03Q7qstUvBCe/9OmcGAB6ChJHv0tr
         sSqAuKs4rskcHu+lKOMmbhNdahLdZACS4J8hf75P5+CH30GtZlN9EQqAJhiLch3QQIXL
         9H7c0jYj4gs57Vt/reJ1e7bRlPrPqr0pqKutvHMf+icsig5VUnG5KgIZUPhlr1aab58B
         Sx7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwWjt1rc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7bMOycvOPm7lAYQa9/fWbvLSU0NdJGd9kutASaNd3wc=;
        b=E6MpOI2Epu01oI7jncl+3aCzN4IN5Bi+mVEVgY8QmzoRLBTEysij1SvXeDm5By4m3Y
         dQv3ypK9MEN69aiWQ13Qqsf0HseBsAQxxWLyJrnkCfGpCuixGCZ4D2i52Dtefn8uU0ol
         iKnp5Mea8c0KOJmRPHR1FPXBlbgj1ahjnYtFra87ITx7B3YLROzB9zrRmVuM1HzXAGHm
         gwqujfISknV75XCOsKNIyckqCMgDkwBp+UJiycbjucSJCrt5sPSAJpZz8ai0ttoqNCyD
         gvLFXItHE3hEGbpjchllnK73iLlZN2XdgOvlqED+McK6ARD66B6uN9Di+dpNXXf06NL0
         jq7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7bMOycvOPm7lAYQa9/fWbvLSU0NdJGd9kutASaNd3wc=;
        b=YWXtL+RmgwZeEbMIERPwNVClGN1fOOn6zqwSPTXIsUjOel8Jvey4b4cxAh70BBqLDl
         KFjpVbRWY8waZnuCqUgQRqrzCt6znXQoyDGbsDftwyx2TZt+HHA88uh1gTN7VShFPFVV
         sPPbhBWdgEoXQ2qoLOnvY9dA4IWX7wQkSpSNdxl10MTCa2s8Aypt6OLbxUyWHEBIwMLu
         t+nDyFnBo7AF1pdLYgEC+RWGRgn3XlWjMVLa587K6k4QG0N+wa9eN8j2xyz2ii+NlMok
         IUgWWO5EYDWJeK5hBQifyMns2t5z74zBBTAtIWh1Br5SUzLgpRwQeqelwI36ILPD/h7M
         oqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7bMOycvOPm7lAYQa9/fWbvLSU0NdJGd9kutASaNd3wc=;
        b=ddu4jrlqsAznP7MtIe2WR5xwHPZngAEHGP/0BO4yLO66aDKDm84q/QtICoiYXkGNYq
         4UgNhiAL8248B2qYKeRx5KTjysR6zOBOVps+/R74R62PDmkUeiHyGjbJQtSAmVh7XxSe
         sQAROemvi5cvBHIM7RVPL5DjqD1K5XiF2zxv5yk//gz4/BdQSRddnp5LRixc9cbrJS1Y
         dDqR+9fNggeNIbg5XYnT6m/Sg2myXdSJdaIGrwET8Tj4Z/Pfq+tSPinpJs4qPnOkjhrk
         7UjVLHUQPFlvQYaBKNDdDN5BLjpJ16WOep4norfrt8Z77ZeDpC0m6NZ3Xd8VjG4sC20j
         Q/kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OSM7ts35n0aUwMV1lBabokdvY3VWMs6ews988aV/WH6hLo2CO
	xMmT+9jIjVnHfI+JPN2EheQ=
X-Google-Smtp-Source: ABdhPJyC/B9+5m4d9iRR7FJaObw9wOoCkQriG+XGd+1LP0YBEHfCLSSJj7eiTiB1tDjcGDu8k0YkTw==
X-Received: by 2002:a17:90a:3690:: with SMTP id t16mr298708pjb.202.1590513955471;
        Tue, 26 May 2020 10:25:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b219:: with SMTP id x25ls3849951pge.8.gmail; Tue, 26 May
 2020 10:25:55 -0700 (PDT)
X-Received: by 2002:aa7:99cc:: with SMTP id v12mr23470622pfi.279.1590513954890;
        Tue, 26 May 2020 10:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590513954; cv=none;
        d=google.com; s=arc-20160816;
        b=uNzeEMIc4XHjs+7pk+d3DCnjNHpHKnMkFUpHjcuy+feYc+F78EaWO4ZTtGRgdLo6Pv
         X25lpfWDjz0P+qKJP/uBrbSSzxuw/34qaRPqzY4GWS7W8KPum53fPoRFfNQrXqGjWfZg
         FfT0BnZVogwrvaC3vHMNGbtDcgxXTi4GEiJqZhwjubeDral/FuZ5KNSd74ney3N6rg7F
         T46Ga8ANutgGERwAGuI0ooU/olxKmxp768b3RFUBS+VA/PBU5GTYCdt/i+XG4Z/hB9Qr
         NRc31f/M447mgZrZgiCNymy9ThsZeAnh8Gq7ZE9U7oNdWwFevtY1VtHN3iCX2gmClKad
         FjQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=giGztXD6Vt+Yh2xqMurK+HZ8CczPysjInAQscx/0SfE=;
        b=EO/dAjDnskL4+CTQrQla70IsWUPgVQr+cIrzivsnfSzSkuACM1jSUZVQkDofj1dJOU
         e/rMyhxyQ2JWv9tOL8Bykvi8JXEJkFLWkiTljBVvO2jsCh2Wn0+hrwTKzTSSZyxxN02Y
         ChoZ713NzpLSfK8j2rjYi2HQgj2dD50i6y0wFHAGnKraT3oeN1H7fkEqbMrG8f03WDKI
         e2kF5el+dERHbKuTmQgQ/CyS+Qr8EqorFg8JucpO0tpEfU9CCdJdtAHSGXSEyL8GUG1H
         2pjaIf/8K3mbyNlhT8wo5Ow7ZXxDa2nPdQtZxHbrBxEUmY1LakAmpj7RSJmKdw6lBk1a
         HS2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwWjt1rc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id i4si35545pgl.0.2020.05.26.10.25.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 10:25:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id 9so2803041ilg.12
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 10:25:54 -0700 (PDT)
X-Received: by 2002:a92:de0a:: with SMTP id x10mr2217436ilm.226.1590513954271;
 Tue, 26 May 2020 10:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
 <20200526171830.151966-1-ndesaulniers@google.com>
In-Reply-To: <20200526171830.151966-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 19:25:41 +0200
Message-ID: <CA+icZUXOnUiVAqZrc_DXr1bNRifCcG0wk4WRzkDvwM4qFHeUZQ@mail.gmail.com>
Subject: Re: [PATCH v5] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blaikie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004136dc05a69063da"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YwWjt1rc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141
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

--0000000000004136dc05a69063da
Content-Type: text/plain; charset="UTF-8"

Nick Desaulniers <ndesaulniers@google.com> schrieb am Di., 26. Mai 2020,
19:18:

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

s/Dilet/Dilek

- Sedat -

>
> Cc: Nick Clifton <nickc@redhat.com>
> Cc: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: David Blaikie <blaikie@google.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V4 -> V5:
> * Drop unrelated hunk from a dirty tree.
>
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
>  Makefile          |  6 ++++++
>  lib/Kconfig.debug | 17 +++++++++++++++++
>  2 files changed, 23 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index 71687bfe1cd9..be8835296754 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -822,6 +822,12 @@ DEBUG_CFLAGS       += $(call cc-option,
> -femit-struct-debug-baseonly) \
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
> +         Compress the debug information using zlib.  Requires GCC 5.0+ or
> Clang
> +         5.0+, binutils 2.26+, and zlib.
> +
> +         Users of dpkg-deb via scripts/package/builddeb may find an
> increase in
> +         size of their debug .deb packages with this config set, due to
> the
> +         debug info being compressed with zlib, then the object files
> being
> +         recompressed with a different compression scheme. But this is
> still
> +         preferable to setting $KDEB_COMPRESS to "none" which would be
> even
> +         larger.
> +
>  config DEBUG_INFO_SPLIT
>         bool "Produce split debuginfo in .dwo files"
>         depends on DEBUG_INFO
> --
> 2.27.0.rc0.183.gde8f92d652-goog
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXOnUiVAqZrc_DXr1bNRifCcG0wk4WRzkDvwM4qFHeUZQ%40mail.gmail.com.

--0000000000004136dc05a69063da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@go=
ogle.com">ndesaulniers@google.com</a>&gt; schrieb am Di., 26. Mai 2020, 19:=
18:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">As debug information gets large=
r and larger, it helps significantly save<br>
the size of vmlinux images to compress the information in the debug<br>
information sections. Note: this debug info is typically split off from<br>
the final compressed kernel image, which is why vmlinux is what&#39;s used<=
br>
in conjunction with GDB. Minimizing the debug info size should have no<br>
impact on boot times, or final compressed kernel image size.<br>
<br>
All of the debug sections will have a `C` flag set.<br>
$ readelf -S &lt;object file&gt;<br>
<br>
$ bloaty vmlinux.gcc75.compressed.dwarf4 -- \<br>
=C2=A0 =C2=A0 vmlinux.gcc75.uncompressed.dwarf4<br>
<br>
=C2=A0 =C2=A0 FILE SIZE=C2=A0 =C2=A0 =C2=A0 =C2=A0 VM SIZE<br>
=C2=A0--------------=C2=A0 --------------<br>
=C2=A0 +0.0%=C2=A0 =C2=A0 =C2=A0+18=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 [Unmapped]<br>
=C2=A0-73.3%=C2=A0 -114Ki=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 .debug_aranges<br>
=C2=A0-76.2% -2.01Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_frame<br>
=C2=A0-73.6% -2.89Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_str<br>
=C2=A0-80.7% -4.66Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_abbrev<br>
=C2=A0-82.9% -4.88Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_ranges<br>
=C2=A0-70.5% -9.04Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_line<br>
=C2=A0-79.3% -10.9Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_loc<br>
=C2=A0-39.5% -88.6Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_info<br>
=C2=A0-18.2%=C2=A0 -123Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 TOTAL<br>
<br>
$ bloaty vmlinux.clang11.compressed.dwarf4 -- \<br>
=C2=A0 =C2=A0 vmlinux.clang11.uncompressed.dwarf4<br>
<br>
=C2=A0 =C2=A0 FILE SIZE=C2=A0 =C2=A0 =C2=A0 =C2=A0 VM SIZE<br>
=C2=A0--------------=C2=A0 --------------<br>
=C2=A0 +0.0%=C2=A0 =C2=A0 =C2=A0+23=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 [Unmapped]<br>
=C2=A0-65.6%=C2=A0 =C2=A0 -871=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=
=A0 =C2=A0 .debug_aranges<br>
=C2=A0-77.4% -1.84Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_frame<br>
=C2=A0-82.9% -2.33Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_abbrev<br>
=C2=A0-73.1% -2.43Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_str<br>
=C2=A0-84.8% -3.07Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_ranges<br>
=C2=A0-65.9% -8.62Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_line<br>
=C2=A0-86.2% -40.0Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_loc<br>
=C2=A0-42.0% -64.1Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0=
 .debug_info<br>
=C2=A0-22.1%=C2=A0 -122Mi=C2=A0 [ =3D ]=C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 TOTAL<br>
<br>
For x86_64 defconfig + LLVM=3D1 (before):<br>
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03<br>
Maximum resident set size (kbytes): 43856<br>
<br>
For x86_64 defconfig + LLVM=3D1 (after):<br>
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52<br>
Maximum resident set size (kbytes): 1566776<br>
<br>
Thanks to:<br>
Nick Clifton helped us to provide the minimal binutils version.<br>
Sedat Dilet found an increase in size of debug .deb package.<br></blockquot=
e></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">s/Dilet/Dilek</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">- Sedat -</div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Cc: Nick Clifton &lt;<a href=3D"mailto:nickc@redhat.com" target=3D"_blank" =
rel=3D"noreferrer">nickc@redhat.com</a>&gt;<br>
Cc: Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">sedat.dilek@gmail.com</a>&gt;<br>
Suggested-by: David Blaikie &lt;<a href=3D"mailto:blaikie@google.com" targe=
t=3D"_blank" rel=3D"noreferrer">blaikie@google.com</a>&gt;<br>
Reviewed-by: Fangrui Song &lt;<a href=3D"mailto:maskray@google.com" target=
=3D"_blank" rel=3D"noreferrer">maskray@google.com</a>&gt;<br>
Tested-by: Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">sedat.dilek@gmail.com</a>&gt;<br>
Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.c=
om" target=3D"_blank" rel=3D"noreferrer">ndesaulniers@google.com</a>&gt;<br=
>
---<br>
Changes V4 -&gt; V5:<br>
* Drop unrelated hunk from a dirty tree.<br>
<br>
Changes V3 -&gt; V4:<br>
* Add thanks line to commit message as per Masahiro.<br>
* Swap Sugguested-by to Cc for two lines in commit message, as per<br>
=C2=A0 Masahiro.<br>
<br>
Changes V2 -&gt; V3:<br>
* Fix blaikie@&#39;s email addr.<br>
* Fix Fangrui&#39;s Reviewed-by tag as per Masahiro.<br>
* Fix help text as per Masahiro.<br>
* Fix -Wa$(comma)foo as per Masahiro.<br>
<br>
Changes V1 -&gt; V2:<br>
* rebase on linux-next.<br>
* Add assembler flags as per Fangrui.<br>
* Add note about KDEB_COMPRESS+scripts/package/builddeb<br>
=C2=A0 as per Sedat and Masahiro.<br>
* Add note about bintutils version requirements as per Nick C.<br>
* Add note about measured increased build time and max RSS.<br>
=C2=A0Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 ++++++<br>
=C2=A0lib/Kconfig.debug | 17 +++++++++++++++++<br>
=C2=A02 files changed, 23 insertions(+)<br>
<br>
diff --git a/Makefile b/Makefile<br>
index 71687bfe1cd9..be8835296754 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -822,6 +822,12 @@ DEBUG_CFLAGS=C2=A0 =C2=A0 =C2=A0 =C2=A0+=3D $(call cc-=
option, -femit-struct-debug-baseonly) \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$(call=
 cc-option,-fno-var-tracking)<br>
=C2=A0endif<br>
<br>
+ifdef CONFIG_DEBUG_INFO_COMPRESSED<br>
+DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -gz=3Dzlib<br>
+KBUILD_AFLAGS=C2=A0 +=3D -Wa,--compress-debug-sections=3Dzlib<br>
+KBUILD_LDFLAGS +=3D --compress-debug-sections=3Dzlib<br>
+endif<br>
+<br>
=C2=A0KBUILD_CFLAGS +=3D $(DEBUG_CFLAGS)<br>
=C2=A0export DEBUG_CFLAGS<br>
<br>
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug<br>
index b8f023e054b9..7fc82dcf814b 100644<br>
--- a/lib/Kconfig.debug<br>
+++ b/lib/Kconfig.debug<br>
@@ -225,6 +225,23 @@ config DEBUG_INFO_REDUCED<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DEBUG_INFO build and compile times are r=
educed too.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Only works with newer gcc versions.<br>
<br>
+config DEBUG_INFO_COMPRESSED<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bool &quot;Compressed debugging information&quo=
t;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on DEBUG_INFO<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on $(cc-option,-gz=3Dzlib)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on $(as-option,-Wa$(comma)--compress-de=
bug-sections=3Dzlib)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on $(ld-option,--compress-debug-section=
s=3Dzlib)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0help<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Compress the debug information using zli=
b.=C2=A0 Requires GCC 5.0+ or Clang<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05.0+, binutils 2.26+, and zlib.<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Users of dpkg-deb via scripts/package/bu=
ilddeb may find an increase in<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size of their debug .deb packages with t=
his config set, due to the<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debug info being compressed with zlib, t=
hen the object files being<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recompressed with a different compressio=
n scheme. But this is still<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0preferable to setting $KDEB_COMPRESS to =
&quot;none&quot; which would be even<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0larger.<br>
+<br>
=C2=A0config DEBUG_INFO_SPLIT<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;Produce split debuginfo in .dwo file=
s&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on DEBUG_INFO<br>
-- <br>
2.27.0.rc0.183.gde8f92d652-goog<br>
<br>
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUXOnUiVAqZrc_DXr1bNRifCcG0wk4WRzkDvwM4=
qFHeUZQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CA%2BicZUXOnUiVAqZrc_DXr1bNRifCcG=
0wk4WRzkDvwM4qFHeUZQ%40mail.gmail.com</a>.<br />

--0000000000004136dc05a69063da--
