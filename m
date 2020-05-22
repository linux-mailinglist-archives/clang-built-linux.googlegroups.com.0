Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGH4T33AKGQEHMEOSEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A4A1DE5F3
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 13:57:13 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id p21sf7984794pfn.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 04:57:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590148632; cv=pass;
        d=google.com; s=arc-20160816;
        b=T54sffvy3QNqPo70Js4oj/VdWDuEqR6ubVOYG+e3y6IWN3R5wqD468AjI6gBcCvyiV
         qtDJ+6dUmaNphIuqLpJAGV/cnfSNbHeOTJPMY0wYAEIHb18zDF7qaq/K45ooUcLFEFet
         SmhLO0+jd/niUO5rMgQ+VUstQCmp20MkXjiHZchBqPaCfU9lVTHvxoZO9SXcobjtVtes
         ++vPNadUb2d4LuNFxPjOcL9r5wi3am2bVhxE46U+d95xHo44j4o4GTYHbQDU3RPDJdYU
         njOkTNX9639uRrV6tozaZanJkxGd019d2oyu668gmZZyctuO7DJy4VRHWYdeA2JLpbYH
         aUcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cM4DvjskBk3OD+y28N83RpMQe6hzACLY0kSMO7FifrI=;
        b=mkkAjPA6N6QgDsvXt5y1KgM0FhyI3HYZzJlUOQ5sCCJNW3pUbj6MWTVemHEtHM40QN
         +0gPTNsrX+e4/ee3pabEcftg0Bh6FoD8LxiJYOdG3gxH4k1CaYYz+AEn7B42Trloak8O
         wP1KGdTqo3WK4ov21Q1Q9OxqKPBgMLacG8DzTFScs7LchM40g7jn9bhf/xUIvMLTIFFg
         mUEYRcX4Cb2LWgdhNgo1FQI+BEprl+W9k0cs3SE59RT2GRpL9nAcEkDc5WDtJkJd0jfV
         EOU2VwGD2kwRTT0XUcsTZls9qnTMoIcWxkU+2l2y17jN63jIvlqR+n+cHpC3kRyWsbSw
         LNXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kT0kNKEy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cM4DvjskBk3OD+y28N83RpMQe6hzACLY0kSMO7FifrI=;
        b=BS9rHHECc/+9QLN5Hi3krmrYfnosh7iYr4a0hh9fQ8k2FhD5SbxPDOLSuZS11aIC0j
         z8gJpLw7HE5g+UGJ7UPOYzmUpcNBjyOzjjOSBwOjxPDeF3/v12dR/XpwnGpJs9o9FJgT
         zS5yEZKqHYSlEcMNI3gxzZfTe9vIZja8aInrL/2jrostHIjggbZCzkntK4RZvMEzZ7x4
         FXOyeRDkX+zV28ClzXr5dWWG6pQnuTlgmgb+4DVEB4RazBS5y4ZDgpHBNaYv498tvkZ8
         ffptRmULWRIkes1R3oYJzd0EnUYV5eKqJbtH4wNLv4ZsQihNb4VN2DBjc5xeJiphckKN
         8IRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cM4DvjskBk3OD+y28N83RpMQe6hzACLY0kSMO7FifrI=;
        b=Z7ux/BmHtL4uuB029sSgkTZ1uFArGFwxQTZs+B/sddcIGUEH+4Xsd5wQW1gVbuw9fb
         pY0MQAq0Ml6SNtZ288kX5QhfLgCtF6zLGSRyPHQtG/prxrzTZ6vxiEmMcUoL2MxZWn5G
         KMOt96dERiBYi203Y2ny9T6VEjtROG2pHV31+xAVif7b+9jNkk5t6+KuYGu2w8oicS9V
         ECHFLM79Fxv+rI2x31sDJn+bGFWMLbaaIc8fFf9LzqEs52Pg1aqpfjQD119b94Z93Jmh
         QVPoVC8KhBwxWHDKJzalFT+Ul298NAmHUKZX0BLy2HhZpqsXTNHdsB4A8LY0nZ9kvySL
         bs+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cM4DvjskBk3OD+y28N83RpMQe6hzACLY0kSMO7FifrI=;
        b=fH6tt8wbsFaYO5yg56Dm0baBZi95wY01EnESh9SEziPxAdqJiBAg/sPYyDLHWCnspo
         W4UY2b6W6v4Tz0UwseIgPUU3ZkoTtJGK0u0KTEnGweGcNT/cf2uTaqaBWcPXB3zs41jN
         8sxFiMJBZXJZ0HwUPKixGySdV8o8dq2MlE881xrdqMhp0u6ggU1WlV+bZ76AbfcuYP0x
         GGPdWNX0+dlAfKcQrmZlrsN6WjOtbH9sF16M9frVcS5BASXD3Llhd7PwUpYfHOK4kmEI
         RbFA0kSy32Uf896MUAC/aga1TEKxQncQJw57VkW5AsVrVUzURiTKHeyFkSUJ8BHmF/XL
         MPjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RoYefgbIbA3va4b/oHSShLayv69x+vp7dLjvLJBXQSEKe/nli
	Osx32wwYH7yiIoLA+RjJBh4=
X-Google-Smtp-Source: ABdhPJzkl4UJYQYlRuPwNj60mRNL7ZiQWjaMbli3G6rdL/PXmdB/BjYDW1ENaUH+YUZjZO4rFXrHNw==
X-Received: by 2002:a63:4462:: with SMTP id t34mr13069200pgk.332.1590148632350;
        Fri, 22 May 2020 04:57:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls531393ply.9.gmail; Fri, 22
 May 2020 04:57:11 -0700 (PDT)
X-Received: by 2002:a17:90a:db0f:: with SMTP id g15mr4278403pjv.8.1590148631836;
        Fri, 22 May 2020 04:57:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590148631; cv=none;
        d=google.com; s=arc-20160816;
        b=iG5/BSqSW0CzjlT/QmVBbQDiy7h9LMEG76wN+0N8jAm0Y63HAxsIZMVmJM6K70JYZ9
         UaNd1zRn3DYYPnJPjsYhla9DfeufP/cC29H+I5XYWzg91pyoeRlCHZM4MVrgEaubj4Xf
         L7TYIRh+AF6NuhIKm/DyzJ4qmD4B9J4diHJkutL7z8jO6dNDPO4jjGAsViIsLWqn0j3e
         YymR9TCcKfH2JfQszqx1BaB2P8ZJzkAILJPBkZSqpequVeNG45xtEfoBS6+6IhkHCsk+
         Xb142bsVQZxgnnLhPiCMvNRasHzEEKc9IxDBsaIv2ypRwbxC0XQ3BGYFheF+65IlXpap
         FgNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vVgEQoaZGULeKq6mOVsxabUK+ok8IXX8M0Wjc4JGWnw=;
        b=kpzTJufzumDdZSj1f0qEQ9PLRkcNUNQjzibU7UlQrntGZ/iiiUP2dA/ZzmBERzpS7m
         SWqrEHL1G5BLQf6hCfg3Ee3vtJaEa4o1rGfz9C/fWsXB2JiwWILjSk4KBmxoVcEafxeJ
         0woQ7u6hXD7RBUUHfrNFWRdf6Mkm5+tyrhj0TcsD4rTu7v7Ms9FHNQFWKh8NnG0qejB+
         b00OjxRDEUQIdB5rtl7LG1OYN3/gh3GLpql9LvfE4IMgWpoXsIZM6fQo2zbPy0+lF95E
         6rj0oIY7z0D4TRGpur3yxrJN+BfBdZ5oyG/gmLvyMR75Nf4hiwMIyKSacDI8lRl0yY4x
         U4yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kT0kNKEy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id lt18si755797pjb.0.2020.05.22.04.57.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 04:57:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id r2so719927ioo.4
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 04:57:11 -0700 (PDT)
X-Received: by 2002:a05:6602:2c45:: with SMTP id x5mr2690450iov.80.1590148631440;
 Fri, 22 May 2020 04:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
 <20200521220041.87368-1-ndesaulniers@google.com>
In-Reply-To: <20200521220041.87368-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 May 2020 13:56:59 +0200
Message-ID: <CA+icZUWGB8bp1UZHQpB_W8YL7SeN23h5V9NTq-p3jeUqO4MK+w@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blaikie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kT0kNKEy;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Fri, May 22, 2020 at 12:00 AM Nick Desaulniers
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
> Suggested-by: David Blaikie <blaikie@google.com>
> Suggested-by: Nick Clifton <nickc@redhat.com>
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Re-tested V3 on top of Linux v5.7-rc6+ with Clang/LLD v10.0.1-rc1.

- Sedat -

> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWGB8bp1UZHQpB_W8YL7SeN23h5V9NTq-p3jeUqO4MK%2Bw%40mail.gmail.com.
