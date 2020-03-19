Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRFEZ3ZQKGQEELLET4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EB518BB47
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 16:39:50 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id b10sf2228448pgi.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:39:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584632389; cv=pass;
        d=google.com; s=arc-20160816;
        b=zgFPejvGBiuVWan/dT6MJCMyIu6RCEBiJxNC7kctgk9Qd8pJsjbvl0y29aCkMe2J4L
         1iTc+7+66hj4ZMD1W2T2s/cPnbOOVf2oj35ywdL7hncIqi4V2I7YJ07uPlknlVQLK0jh
         pYFkSTcrDuynDbvfXzEgFWCr9byez/t0hR5cZDoEyP5f814KVPEmWy1Gz2Z/zSlQG0HH
         fl19UWlvMb4X4g/XMwr3ADRrGjVXSGVwTI2n1nksyMnEi6OxJaxvz8MXZ3lkUX5cMs5C
         RDkatDibZzQdU1EzMeaSdi0mBTevMb5RIh1Nk4EGhVT2Hx1Ungw24lrxKHCdX/ItRGfN
         Lx0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Rp8HZ3WkocrrpCUXxFP3Nb1JGZ7ICRSvXwlqyHSv5DM=;
        b=PyZbZJqHq7BmUCzcnQYn7M3Nd6RRr3k6/S6NzkatHjRv2+dv8G00a19KuLCnXVJiYD
         jVi3q/F/nx+TPPaUeTXPsqyVU4w+HZll/aWKs/DwLpn7GByczHZpLYsSkZ0I3T068K0G
         K7ZeGGTfiyYk3T5fjQ297Oo53Xw0K7HkGvT7puRm1uE8EL7bbYdBnkaij6IZIkoC09kK
         QUK9EfXKWyB6RYPprBdU/tCNHCzlLpTl/4gvvSYD5dsFU6wysPtCUMaPOCmEWsaLQZbM
         IQQvyJDbgUX4N2OeQ51nj8k2moLGHndclNOwyAaw8ApawgWEn9OuL+Pl7CRrxrNC9nWz
         mGjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JCHznEO1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rp8HZ3WkocrrpCUXxFP3Nb1JGZ7ICRSvXwlqyHSv5DM=;
        b=dzFCov+G7H/n7BR8E0QW01ncEzPJsUl80sIdMD/NpIBaNYgxwOdhm6TB/M/3vRJhCc
         B9SxcaIE5Y6efKw438UCUEvgzCKUUhWB0MM5piN15zGywQSuM5sgZJ5yR+BRdiK57zNx
         sAtjLDdfi5MPvtVwehqLryAnJIO0gqRohNP/VO65JMA4/ZO4cEHv8J9eetLHXy9LrJvd
         I3eknsmtLPxlIDcwcxQyLdjdTOJ46tlu/P+k2KDlEQKxlW5riQrTYzhWNDJauO2CTMjY
         TGu9pYhYfMzMmwtU8qgia12jAJuQ0eDivwJRPmWZOIkTPAZzezQzWPe0noorW8zaMhzb
         YGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rp8HZ3WkocrrpCUXxFP3Nb1JGZ7ICRSvXwlqyHSv5DM=;
        b=FUvRXl8blASgeZLW+XxXrdoKwzN8q54qoMXy46ADB7f9yS+4NIhCaZK8mGR0i4SSX2
         ncJctkKufhTX8NryTjcH1SomVFDKfRfWmbPAAroTGRKC6BuBQrXNRV5AofjXcbeuI8vi
         Shi4quNJlpq16bJRZi0XbfDI1Z74WVZe/QFVbH6JD8oCRUXs8o4xsGy0J7Au5LoHr0Xp
         A4CJMrfZyDFUbu+IJJAuZBsE448NGGgDZdbOjnIrjQNkmi9PoByKgbYX4ww0nR9yCQFt
         UDpyjvl6lRJmPx4JMWeHEX6f74OvoyAjMBlqz1OCTbl4ipnkVy/449eRvytn+vUpXi12
         SplQ==
X-Gm-Message-State: ANhLgQ0enmrvu9NcK9kAOZ8vvF2C3hOJMQ1GAK6LiamjERVGq/2foy46
	YlZe5xB5Gqqpi4kAcdOSam0=
X-Google-Smtp-Source: ADFU+vs6DgbTqFbvCnWbWqFG+AAwKODR9hAk9NJpmIvVyyKqFLRk3J0th109LQbeN5BFNwpV5xLNeA==
X-Received: by 2002:a17:90a:d081:: with SMTP id k1mr4691723pju.57.1584632389052;
        Thu, 19 Mar 2020 08:39:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls1464057pfw.1.gmail; Thu, 19
 Mar 2020 08:39:48 -0700 (PDT)
X-Received: by 2002:a63:a746:: with SMTP id w6mr4001432pgo.76.1584632388545;
        Thu, 19 Mar 2020 08:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584632388; cv=none;
        d=google.com; s=arc-20160816;
        b=eFrY5jQcKq/WtM6OBCdhgwCHSivAxzZpFVeJQJWQVYD0aB5dIz+IifAXOJAY0/Y6Xg
         ksQPLTE2431oS/zrB4D+TDk5nJCBHZ3qvG3IA13V41z8Z+o/Dw5FGcZyJTTdI+OAYAR3
         ezFhQE+bLN0TnXO+NEGpd7o7I1ee1fmDydGO3FfsN8/Os9jCu4PjzOh3gr/+KxQ5TMCT
         MWDPzdCbZh28+F0+PlbZl6JRfM6F3B2mwV47nQb7RGI93VA9g9jDhReCdfoQSyRxMdb6
         vVTeoVYw5UVoRkjR0F4XwKZSxdHkFExVtKgeNBkeMTWDX9E9czDtd1IIF62Jw93qBHo1
         k3Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OJgQNwFa53gC09TOaQbw283OU+sAvTexYYepz9mHTvk=;
        b=d36uLpbYrxGp92gn0rhJdfu3QdMxanVDu37ZfnSdZt6cCiaCEzOyeJav1OdQ3pKTNO
         HlZ2DghfCOLvclufhpUAFzxw9tByOp7bpapyc14JQv9YPmPAqri8WIpFYEpfcGoV68EJ
         ZPn99iAoLOg4/E8qu4oy9XsqG0V5tJYzdeCsam3qtMZX8bXqaYbCCHWilgKHByMn/WOC
         PzN2bcMq6sMIN3ZLlCxLdw9ILF/G87ykHQRIivv9bvegNNHPVocFHMeti5KsjnfdOux1
         YmS1mkafOJi63aNaj4DLhy6SW2XlStI5Fenp6Ph7MGOmEF9bhyqLkCRIWGzaYvUJ1weV
         9L5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JCHznEO1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 83si104370pge.4.2020.03.19.08.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id c19so1605615pfo.13
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 08:39:48 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr4577798pfd.39.1584632387767;
 Thu, 19 Mar 2020 08:39:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
In-Reply-To: <20200319141138.19343-1-vincenzo.frascino@arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 08:39:36 -0700
Message-ID: <CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JCHznEO1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Mar 19, 2020 at 7:11 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> The syscall number of compat_clock_getres was erroneously set to 247
> instead of 264. This causes the vDSO fallback of clock_getres to land
> on the wrong syscall.
>
> Address the issue fixing the syscall number of compat_clock_getres.
>
> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/unistd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
> index 1dd22da1c3a9..803039d504de 100644
> --- a/arch/arm64/include/asm/unistd.h
> +++ b/arch/arm64/include/asm/unistd.h
> @@ -25,8 +25,8 @@
>  #define __NR_compat_gettimeofday       78
>  #define __NR_compat_sigreturn          119
>  #define __NR_compat_rt_sigreturn       173
> -#define __NR_compat_clock_getres       247
>  #define __NR_compat_clock_gettime      263
> +#define __NR_compat_clock_getres       264

This seems to match up with the glibc sources:
https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/arm/arch-syscall.h;h=c6554a8a6a6e7fe3359f1272f619c3da7c90629b;hb=HEAD#l27
Here's bionic's headers for good measure:
https://android.googlesource.com/platform/bionic/+/refs/heads/master/libc/kernel/uapi/asm-arm/asm/unistd-common.h#240

I assume the _compat_ prefixes are the aarch32 syscall numbers?
Otherwise here's the list for aarch64:
https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/aarch64/arch-syscall.h;h=c8471947b9c209be6add1e528f892f1a6c54f966;hb=HEAD

Looks like 247 was __NR_io_cancel; that's a subtle bug I'm glad was noticed!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  #define __NR_compat_clock_gettime64    403
>  #define __NR_compat_clock_getres_time64        406
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319141138.19343-1-vincenzo.frascino%40arm.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ%40mail.gmail.com.
