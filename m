Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMWXXL3AKGQEEKC4JKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA91E4CAB
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:04:36 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id u26sf8030108qtj.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:04:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590602675; cv=pass;
        d=google.com; s=arc-20160816;
        b=ClNELiTZIsKnf/CYDG4xR3+nASADcB50UmkXC/oPNTMAi0MT30SixGjiAnOrxcEl77
         iAatUkaZGVn9yPZEyAtqlYr6t4WxUGoAbG/vWUeA7nBYrzkqafWZnSHh5/DdeN+fxGfL
         QyeHD6qkvItoFkdNEZjOtmBbqoORwz/ZL/20BSaOF80ZSXLRR7pAlDx4GLxBai3CM1dK
         ukPKDbLrZEIoBsvJh78sLnj57JEN92HqWH5va1x7rHJzCZSNRpaKK9K9fiyPjHtQBynD
         VcwgRNKmWyD+l8K26bhnmqCDiXqVN2Wym02UTNdqcmjB1CRMN57G51tfKIBDirP47HSN
         TQWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hFE8i7A8paZFaoeuDj0yoU4zp5ApflSxWe2Oqek2V58=;
        b=ieTPCrEy7WkE96DN4/QyQl6UB859wm/2z8wcweYMUKB6IfoUKwqHQja2VYoJI/mXc/
         MXSaIx3Nk6az9QCDkOBPTS5OCnisRUconovfroovVn6nVU+hNNSN6Vv3BLSvNp3qetb3
         tEf1PpqaBjoeLPim9VqTW463wBh/Hv37pYeB90yYKeQ604MQWfYw5XMH2Gf/k/LJpT4d
         FstSIBsIXhNl2mR9IeU8HTsmZKjb3s+S07J+5FvvAIXnVxe1YCUPKXrvtGnBkNoRdfzN
         S4pksGBDGF1qUh/RhuRaSTSNwqpDvKXf1Ej1jV3i5MdVFHeZ/24QrzPzotZasmsePkq5
         sEJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jq4iDuXH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFE8i7A8paZFaoeuDj0yoU4zp5ApflSxWe2Oqek2V58=;
        b=ikE5yusk+pQkMqHiqbvgAJVrom/UEpyty5BoXMZRXYyT6mrNoOdwYVltQuTUefw7Q3
         OEXGDEnbCwC9ko+yrTQ86P7mA3fIOeNey9chT53D4GmNGZpHvlZWxygbmcPsOfzE5QhH
         cF78dJynv9c7yUNNN0zZvWUu4Z3i3NgFnN6Xwz+rc6LWnYoKDesA0G5KS4vMd1gU0JOO
         EPeaEDP+ITSg9KkYepwDRHyYT23itI5JC/bew03KAkWPrj+8PVXBrZj6gkR8fDoL6KVE
         1m2HVXafRW4mqk/cMttWEAmMMciHumVTXBojNWtjvn9KdVstRD+Y23MH8QuF36vhRgFT
         uqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFE8i7A8paZFaoeuDj0yoU4zp5ApflSxWe2Oqek2V58=;
        b=AD0me6NSQZ9L0ijYFGqcUJOBXgJs//TJeNhjKebuZnFWnIrbcnmGuheLgr7H8zlTs3
         ANGTTK738XWWcPHgsuvOaH/EW92SOjZt2iQoIqZTJCTDWgH46lyb5OAbgyLEb3GO5GBY
         /c2qNBkwg32PAfphZW6DH7bM+cm6oohQnI2kShqPB6UcsKcoKRrJknmRlyDPxWpI/uNj
         YBiaqZhidXH9PpyO5OrkPxr+++rA324FSa/iJn3c8YEC3Pvm7sg62VJpGYEHsM4ZMHbU
         OlUWznv4HbrRMfZfshwqzopA8fDSLtDeIPtt98y2rGE55epcUFbOYu7urarLYW1T/7j5
         /F3Q==
X-Gm-Message-State: AOAM533w1aaUhr3pa/3GJbGaYRFURk8FRpr4jp6OOdjKGoj2S15wIlb4
	goXnKrXgiVeS2Tkr4rtba30=
X-Google-Smtp-Source: ABdhPJw52nu/DGz2l1jnTwuVpVSrcieS2DBK9ve88GSJXejSQBUnqMOWplONd7uX6GHRxTyO2Wlugg==
X-Received: by 2002:a05:620a:108e:: with SMTP id g14mr5288472qkk.337.1590602674952;
        Wed, 27 May 2020 11:04:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:13ab:: with SMTP id h11ls3598599qvz.0.gmail; Wed,
 27 May 2020 11:04:34 -0700 (PDT)
X-Received: by 2002:a0c:f286:: with SMTP id k6mr26124687qvl.72.1590602674564;
        Wed, 27 May 2020 11:04:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590602674; cv=none;
        d=google.com; s=arc-20160816;
        b=R/XgBAvAO6CuczPWU4ffjS3vmreB0WqthqFMkmX2+qrS81PATjmJojXWDLH0zJFS1z
         YWsQggmMYMfUq6HD2RDS10FYrHofA7XKm0wI5Vs9MS4L5SSSzaEgok3bMrbiJpoyANsT
         JnLzrJjPP47LxYnuRJYd/9zpSjm5IU667jGnkmJSe1E8VaEyX2C8Nhcs+fEWySOGJm5z
         2RGSxHBaO4o8jOEsr6X9v/wM+IrUDLSL5kg2TmpbPFjr0pFF5jgyZLhovjQ4vp2fkDm+
         tQ6Y6h5vuigCZxVL1UE86jc18B3v0dnRgexiksQgN3E+3l5BRXeq1V0juh3r5dfDe19P
         1l0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=30RU4BWAzl0wOn2l0ox/7i0ctRamwhqcNLFYWQjdHwU=;
        b=arSlpJ0tSOtNluICoo4tVJ2UiX7F+NVsqV7PRh96YrLA1zIuQG6Lwgg9wEKum/EgCv
         fgss1Jg9IuL57Lef8pEJI7ShNDrgL8lceSiZGPowsvvzp0hQR9spdVou19bZQaeHtkxi
         DaQR5L4707gpUyf1sIvYYLu9PiBnW9CKww96unoRVxF8aUI1nAoTe0hsJbnfATn0yIHH
         SIKzT/PozfP4RKIyW/jplxbt00fup/47MhZ3mSOjl7m8hCa0zXdcV/SuV3OZQLwAcElO
         L5BZaKKK9xb3if1xQCKimHMeFP9wLmGgv/BkuCWCGKkEXac8vtVJQgDuXmGuUliFy6Zd
         opng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jq4iDuXH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v73si244199qka.5.2020.05.27.11.04.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 11:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y198so12169521pfb.4
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:04:34 -0700 (PDT)
X-Received: by 2002:aa7:87d6:: with SMTP id i22mr5122213pfo.39.1590602673866;
 Wed, 27 May 2020 11:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141553.1768675-1-arnd@arndb.de>
In-Reply-To: <20200527141553.1768675-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 11:04:22 -0700
Message-ID: <CAKwvOdk8PToaHMWVKV-6Uhhx6CNz15OWLOp_5RCERvdOisLrpA@mail.gmail.com>
Subject: Re: [PATCH] x86: fix clang integrated assembler build
To: Arnd Bergmann <arnd@arndb.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Slaby <jslaby@suse.cz>, Juergen Gross <jgross@suse.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Tony Luck <tony.luck@intel.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Bill Wendling <morbo@google.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jq4iDuXH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, May 27, 2020 at 7:16 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> clang and gas seem to interpret the symbols in memmove_64.S and
> memset_64.S differently, such that clang does not make them
> 'weak' as expected, which leads to a linker error, with both
> ld.bfd and ld.lld:
>
> ld.lld: error: duplicate symbol: memmove
> >>> defined at common.c
> >>>            kasan/common.o:(memmove) in archive mm/built-in.a
> >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
>
> ld.lld: error: duplicate symbol: memset
> >>> defined at common.c
> >>>            kasan/common.o:(memset) in archive mm/built-in.a
> >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
>
> Copy the exact way these are written in memcpy_64.S, which does
> not have the same problem.
>
> I don't know why this makes a difference, and it would be good
> to have someone with a better understanding of assembler internals
> review it.
>
> It might be either a bug in the kernel or a bug in the assembler,
> no idea which one. My patch makes it work with all versions of
> clang and gcc, which is probably helpful even if it's a workaround
> for a clang bug.
>
> Cc: stable@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

+ Bill, Fangrui, Jian
I think we saw this bug or a very similar bug internally around the
ordering of .weak to .global.

> ---
>  arch/x86/lib/memmove_64.S | 4 ++--
>  arch/x86/lib/memset_64.S  | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> index 7ff00ea64e4f..dcca01434be8 100644
> --- a/arch/x86/lib/memmove_64.S
> +++ b/arch/x86/lib/memmove_64.S
> @@ -26,8 +26,8 @@
>   */
>  .weak memmove
>
> -SYM_FUNC_START_ALIAS(memmove)
> -SYM_FUNC_START(__memmove)
> +SYM_FUNC_START_ALIAS(__memmove)
> +SYM_FUNC_START_LOCAL(memmove)
>
>         mov %rdi, %rax
>
> diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> index 9ff15ee404a4..a97f2ea4e0b2 100644
> --- a/arch/x86/lib/memset_64.S
> +++ b/arch/x86/lib/memset_64.S
> @@ -19,8 +19,8 @@
>   *
>   * rax   original destination
>   */
> -SYM_FUNC_START_ALIAS(memset)
> -SYM_FUNC_START(__memset)
> +SYM_FUNC_START_ALIAS(__memset)
> +SYM_FUNC_START_LOCAL(memset)
>         /*
>          * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
>          * to use it when possible. If not available, use fast string instructions.
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527141553.1768675-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk8PToaHMWVKV-6Uhhx6CNz15OWLOp_5RCERvdOisLrpA%40mail.gmail.com.
