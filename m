Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVH6Z33QKGQENVTLOKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA40207E05
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:02:13 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id f63sf1529397vsc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:02:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593032532; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tg+wkRCbBVPunCQBhbZCwgqNiUiU2vaCR6xjlbWsWgv1Y9R6tknGvlejavxJgPhTb2
         YZ0X7dUWhgWkzMcsN29m6tndabDipvh9QYIOH0wOhQFlOgssi9tYvCtJIjNDzjar6nG5
         pLBN/kYnwAccXsg1LhptGnFc5HCpsnDGncgYqVZW154NaKhzH0fgcHGHePAGn+zeHw2g
         00PxCMsfl1EX1oBCg/zTzqLadZZ4+O9or6iUeMTyDIKo7MbSgQNszWt2pcDux7GHlyh0
         byguFscJl629YGeejXIr1ZmtBvPPv+zJrnCqD4HW5V6HEeJExXi94ap6eWd1TJn15xg6
         SDLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xKvuDkisXuCLTLh8MZpQhHcvi5BzxdJ99dDdW8rTaHQ=;
        b=rArp85PeEU6K0ewOt++I8JzdlLdkzj0yfOklwBVaH+OYlNWYJ+IKlmbzERVgBv+5cw
         KXcEA1NBPypRkecixkbpGfVUupzCJrneRL9GY0nyl1sxZcipD915SsjCYub2rHP1AaF9
         B4Bl0lE1Tsy8UGm+uzHHHqbbjfjbzvX/wu/9NVtwuDXL19KoUYo1Osm1AkP9P+MmzzGL
         IkqO6akwDBcdsebqxOJnTzCB/sj+3QLHZXehutnlc1GLvDodNwkWTLSdsLVUH7kycZBp
         ddNFaKcaKc5LmLyGAkcKb29J2tCnsg0pc6s6TDCldGsy03dB0CYlqH11a+EwL1JfpqZT
         0oSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ERVcY1k3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xKvuDkisXuCLTLh8MZpQhHcvi5BzxdJ99dDdW8rTaHQ=;
        b=s2VcH9mkC20w/xNn17iRy9W3CxLwyPTq6Ay+kUDJJHmW0s6nRfaXZfX8Yp4SG/lBoL
         X7dnv5ex/z0Ip2HKPdPiGR+4i81OXPvsZD4C1Zf8VnMzOt5Z7EeAhtrl2hV6xbejwDyj
         /qDCivqmhXftirxOCvVDm8eGAYXoyAyKO4zd4B5LqFWOI7f+NKChK2Hqzo8lcIroj7eK
         oxuLq2xiXpWodEBUcUMAOg0UPvXys78607ZK7LWAInngf5naKFvzxNjnzgNrDGjAPSZo
         TQKlOIBsEgIvMYTTtDirXO3iDyZOXKJ/2kxLEEp7WCudv/+aWKm+ZWWqiFcK1J24BSh2
         eDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xKvuDkisXuCLTLh8MZpQhHcvi5BzxdJ99dDdW8rTaHQ=;
        b=VAjT6H4ojivl11qDkID3cOPHaNqBTNC12TW1/nAgq6/Qz/D9I/KlJYAtUx8t0PTrVB
         ImbcMu16aSOWYm6OnC/h4UcsAofdOgsZ+O34GEAVUVIBMYr8jYBtrC5wnR7dKJW8oskN
         zcfc1TUS6BiBkJYIxePZwi8Ws5Ck45RCEMg0ybRAjM+S9tuFjF+r3/V5tbv9ucu3Sb0R
         VKql4MJb26G2WGZK1WW23rKyeZm1CmRROPsjaN9g7yoPOJbwHU1+Rbv1atEFQGWWyjyB
         pywuAcXG4O8OHp83yclJpzk3giuYhib7CnVGeyS5BKaQ6FNxn4ZP60Jy3vEXN7jXY2sz
         o1MA==
X-Gm-Message-State: AOAM533Mtat1z7Q3/ciPWjkcuP9kTMzlYvzLgqCwn24jZ7CpW7+Vo9kz
	ddm2CLOdun8awx6V52u2GZU=
X-Google-Smtp-Source: ABdhPJwWYpRvq5BRwg4p+Sy9QypexngxQ6W/j+bcvl9wxrWEb2qfWGoaoqzOEIWXc8Sf/2Qx1v2QUw==
X-Received: by 2002:a9f:2ac6:: with SMTP id d6mr20015825uaj.59.1593032532624;
        Wed, 24 Jun 2020 14:02:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1a81:: with SMTP id a123ls31057vka.4.gmail; Wed, 24 Jun
 2020 14:02:12 -0700 (PDT)
X-Received: by 2002:a1f:a0c2:: with SMTP id j185mr10680063vke.95.1593032532253;
        Wed, 24 Jun 2020 14:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593032532; cv=none;
        d=google.com; s=arc-20160816;
        b=A3PNo3+DG2q5pdMfS8kq5NHOwGOEfJDm2DAXXKLMLcav7anhOFzCyDamyBcAOiVUqN
         sesMAXUUxDuedpI7gYzdY5P9u4kpfsv4oMU1nvZpjXokkXECBs6H9G69+xOi0pU4E/TU
         ZHRftiNyQH0UHx7EsXc2Y3zqVHIPy5wCzooFE14dzrxnIskz2W+wsXyBRsFtbsFRvHow
         EArI4fiQ4JZcjZPovJfDecXV6r8kellVqkkIowjEi1q8Tm7KJVCB5TYA4VMJTLUyYgWf
         aFkf4OlYQOufdCY0xtoG2Xip2+LsWDqdYXSXVWgPQM1gJDZsGWwG+idDakqww8cDXmmK
         1rPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F0CH5zhnz6ayOh3mQsnUEqy/k37rjt1CS3Xrl+QPqsk=;
        b=HH45eOJXUkLjpgP8G8PllNtoQDfQvOIi9DHP1r86Mp9E1kPt83Rc5RAUFjFRjYQjkh
         YAYGIDEhrpxK/1DMolPJw5gEreTdotkrAV3wGhjPR7WP6zv33GFIWdQkvxeSWZTmFxEW
         oDYCCkXN9sz+mwMpuqwzDHL+s1vrOuvWqAE8pnTzO5UYBhSDIBqn6crTYFT4w/rS1SfX
         sxyjOIZQaUqffPzV11cxQessNyvTbqhonDV8HzJQ1sFPRusmbz0XHZguvw4KRyXoE3hD
         iDJ87CeWkTCDPaLiwWFetoVtGt1NJWNRUjqyqhPH+UuAhW00+Uld6rpeHZkk9R0ZCev7
         MmyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ERVcY1k3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y7si52630vko.5.2020.06.24.14.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id j12so1776013pfn.10
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:02:12 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr31723451pfu.169.1593032530992;
 Wed, 24 Jun 2020 14:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624203200.78870-8-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-8-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 14:01:59 -0700
Message-ID: <CAKwvOdkY2M9+BgA5FELK+7bjv1sZYMuTmVOztCYijas_OHfVDQ@mail.gmail.com>
Subject: Re: [PATCH 07/22] kbuild: lto: merge module sections
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ERVcY1k3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> LLD always splits sections with LTO, which increases module sizes. This
> change adds a linker script that merges the split sections in the final
> module and discards the .eh_frame section that LLD may generate.

For discarding .eh_frame, Kees is currently fighting with a series
that I would really like to see land that enables warnings on orphan
section placement.  I don't see any new flags to inhibit .eh_frame
generation, or discard it in the linker script, so I'd expect it to be
treated as an orphan section and kept.  Was that missed, or should
that be removed from the commit message?

>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile               |  2 ++
>  scripts/module-lto.lds | 26 ++++++++++++++++++++++++++
>  2 files changed, 28 insertions(+)
>  create mode 100644 scripts/module-lto.lds
>
> diff --git a/Makefile b/Makefile
> index ee66513a5b66..9ffec5fe1737 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -898,6 +898,8 @@ CC_FLAGS_LTO_CLANG += -fvisibility=default
>  # Limit inlining across translation units to reduce binary size
>  LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
>  KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
> +
> +KBUILD_LDS_MODULE += $(srctree)/scripts/module-lto.lds
>  endif
>
>  ifdef CONFIG_LTO
> diff --git a/scripts/module-lto.lds b/scripts/module-lto.lds
> new file mode 100644
> index 000000000000..65884c652bf2
> --- /dev/null
> +++ b/scripts/module-lto.lds
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
> + * -ffunction-sections, which increases the size of the final module.
> + * Merge the split sections in the final binary.
> + */
> +SECTIONS {
> +       __patchable_function_entries : { *(__patchable_function_entries) }
> +
> +       .bss : {
> +               *(.bss .bss.[0-9a-zA-Z_]*)
> +               *(.bss..L* .bss..compoundliteral*)
> +       }
> +
> +       .data : {
> +               *(.data .data.[0-9a-zA-Z_]*)
> +               *(.data..L* .data..compoundliteral*)
> +       }
> +
> +       .rodata : {
> +               *(.rodata .rodata.[0-9a-zA-Z_]*)
> +               *(.rodata..L* .rodata..compoundliteral*)
> +       }
> +
> +       .text : { *(.text .text.[0-9a-zA-Z_]*) }
> +}
> --
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkY2M9%2BBgA5FELK%2B7bjv1sZYMuTmVOztCYijas_OHfVDQ%40mail.gmail.com.
