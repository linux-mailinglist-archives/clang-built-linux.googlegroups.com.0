Return-Path: <clang-built-linux+bncBDEKVCPN4YGRBVNV6WEAMGQE56QBI3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2913F0B98
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 21:09:10 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id l12-20020a2ea80c0000b02900f5b2b52da7sf1437164ljq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 12:09:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629313750; cv=pass;
        d=google.com; s=arc-20160816;
        b=JxaelFcOBGaBvX5bLSlQP0Q6uQ+gdgWmL4G+o6ToZocr2/6chqs3DCdWM/D86aJfVV
         QcyoaUr+YEOCNkbusedWl29xDJMGPMYk5LzTfltuQPlq2406QhuYAFs28tuZKqb2ZWP1
         PbaL65tkFx0UEnP2m4mAhWyrTRpvyjyfVT3Tv3/EFKmNfxPghtwCFoAznBSia7pxsLHL
         lfC2EpdpYuqu76IA//01hD/QxHN4Tt37XhSn8/hntg1QCs/yFC0q9CKupblCz23Lxd6E
         GwdaHeV7kOOdJhgrA7OcAlAlEhMIAL1VgrJz2fSKgqs1tzwL7/SgZ0D/Kf08UuN0Prdd
         MepA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=syzVY+Z6+iMp4XFLxQ9JUxYOSSNxm6IIVISksFCUBLY=;
        b=0Z2/YSojy2nRma+Yt/3hD7wSFnI3lhehx0IKh2Whayj2ouHr6CeDJYZk04K1qlJUTD
         L9decfaS8gjbjmkZvgLTxKvL19cLae2bEjjb370XAnlHU5GGsXD74j0sHLnV7RCjqSzi
         J1d+mb3HswyF9c7UORVb++SHsvCSsXBejxpA6hzrdrSVgs4aE6heEMv8rGxkTkxSiQub
         OJHX4WIz4y7DyyY7uMKpJbZY0QHpvFQdrJiGiqqOkz8CDweNG2jyrcD/zSBEUWJGXsv/
         QjQ9KtJrk56P8u3Tbdqu/rlmmGrnMq8zoYuogbGGTB252pmr6Y/+QITlWuOdlCjk/s6S
         kR4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@privacyrequired.com header.s=stigmate header.b=XuNyCGrF;
       spf=pass (google.com: domain of laniel_francis@privacyrequired.com designates 2a00:c38:11e:ffff::a020 as permitted sender) smtp.mailfrom=laniel_francis@privacyrequired.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=syzVY+Z6+iMp4XFLxQ9JUxYOSSNxm6IIVISksFCUBLY=;
        b=VFlwR+6BqhnVJ+qjICBy+t+G7PcA4ANqj/L24qh1Ln4ZfovQAq/BvNKdiRBmA5p5ol
         Jzy5zRoZ2Mr/MAmgeY0/srcTKy4a7lK7MowDhMjVw6zQaht4mc4E9bD/C2yXDydIaUpH
         NJiTzV0XLYb/Jd8rKlEASnQSBP4q3b8EiHXkaUp7++a0K541oIA2WO5MD7PtqVYbyH39
         CnAuRNVfJpnbOdSZjLXDvebpBBxWwYREHUHpMaGw1o+DpnMfmD5TSUboqR4AoMp241tC
         nWlUMpzl0Z2k/nPU5UmoDvCxZ6jAhNb0hc16uyyFbnuHrH1PmMs2poDXd7z07AjD6hLh
         hIIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=syzVY+Z6+iMp4XFLxQ9JUxYOSSNxm6IIVISksFCUBLY=;
        b=cAhaNtG4DSttTznf1Phq85ETZEqA3vz/7DDANkeEKB8cWnUG1nuE0d1eW8L6UXnMnJ
         ZhhkSamJRtQKKQFt2Lo0viIM+Wh1G+hz8x/hjMkqnNCn1QiyZl0+9QZFvHaVX9PO4Nd9
         pcFNamFaGziVzVya3UZ4UqQ+B/5LQKwCJrPShF27LQlS/MoLXsRwZN07KqA19g5t2ZmS
         LUYpR28/IIrGvqIdMBKOHZ++mb+T5O9wAZ5MsSWu+qDjFgG/dbDckP7n5JJk3usofFxQ
         NJk6kCShFLaxyiLSHEoCHKyV97Lzudod8BT2hdckpF/axUvHbr93YgDxHQfnKzOdc3vp
         TPmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R94t3XdyPOLnPvzNexVAraqYFCvnZJX73R/dJB+5YDJkgxrJY
	P6tdcbBZrI6LqY5l/Y5NJ0U=
X-Google-Smtp-Source: ABdhPJx/OPtg8re3dqOFxxYxQG6spDL5bT1z/gaDgTkslTrec9ANjLyv6WuH/d001tFN0/b98x3ung==
X-Received: by 2002:ac2:57cf:: with SMTP id k15mr7601481lfo.320.1629313750235;
        Wed, 18 Aug 2021 12:09:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls620134ljr.5.gmail; Wed, 18 Aug
 2021 12:09:09 -0700 (PDT)
X-Received: by 2002:a2e:920b:: with SMTP id k11mr8831963ljg.439.1629313749157;
        Wed, 18 Aug 2021 12:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629313749; cv=none;
        d=google.com; s=arc-20160816;
        b=hS3bnCKitYN4WCfyjPhDn+2ZiMDmy2dJYt36jnkaMI6uDSdab7eQaUTiroRdDZgu5T
         wz8RsOX41V7+wco8mtum2ur0RrfgQrw2Tl9iXOBXP5pWXeZ36G05gV4a77ZKtkk2AwuH
         vn3qQzZnYakHr70yekpYVTijM6DcmjB6E/YXyUmtja6slieBqcmWubA1CcIFzAz5Snn5
         K0WQ0wjf9Bsl+GyevlyPrl9IHJllVWtvn+2DBmoQmLKgsdvYYw/pHAUaPlsYte8xBi2v
         Zx84+BM17KoUgOpAV4QZT/pUYGICb1RA3M+k8GABcngKWT1tnfrJ3Li99jA9bJUpw7Gz
         OaDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zZRv+nXoCrBil3F5oNtg2nOIZFdUyNScEfpQhHkWs20=;
        b=AX4nZg3A3MTOJKGeb/hdTEYRGASdahQf2cTpHUzQ8+X7VePBjzS0/qvpYdNIhzPUPs
         JaMt9HZHn36ejGBdhAuCYh8OaBpvFmRPA9XDAcxiI8sAsG4O5U5SQSu7kAsel3FsOnEP
         3X4wgEbSkQvwixCsx9Hx3M6Gp5PTkDpOXO7S/UOx6R6tsQxhEYHaLjOhdHpy35Qna13r
         GyOc1IAI+7KnhUuFGxrNF7Lm7xEXON+Oamqqbv9WFtc5rXTUdn3ZIKsM2ze/l99fYRb5
         ik2HIoOI6+ltnaNKs3W7uNwKUv8al0bxtEFhx7/av0posjYiG+RNBNZvkWVff30nrDMt
         2K5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@privacyrequired.com header.s=stigmate header.b=XuNyCGrF;
       spf=pass (google.com: domain of laniel_francis@privacyrequired.com designates 2a00:c38:11e:ffff::a020 as permitted sender) smtp.mailfrom=laniel_francis@privacyrequired.com
Received: from confino.investici.org (confino.investici.org. [2a00:c38:11e:ffff::a020])
        by gmr-mx.google.com with ESMTPS id b14si41582lfb.13.2021.08.18.12.09.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 12:09:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of laniel_francis@privacyrequired.com designates 2a00:c38:11e:ffff::a020 as permitted sender) client-ip=2a00:c38:11e:ffff::a020;
Received: from mx1.investici.org (unknown [127.0.0.1])
	by confino.investici.org (Postfix) with ESMTP id 4Gqcrh08nxz10yG;
	Wed, 18 Aug 2021 19:09:08 +0000 (UTC)
Received: from [212.103.72.250] (mx1.investici.org [212.103.72.250]) (Authenticated sender: laniel_francis@privacyrequired.com) by localhost (Postfix) with ESMTPSA id 4Gqcrf3wsYz10y6;
	Wed, 18 Aug 2021 19:09:06 +0000 (UTC)
From: Francis Laniel <laniel_francis@privacyrequired.com>
To: linux-kernel@vger.kernel.org, Kees Cook <keescook@chromium.org>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, Daniel Axtens <dja@axtens.net>, Vincenzo Frascino <vincenzo.frascino@arm.com>, Andrey Konovalov <andreyknvl@google.com>, Dan Williams <dan.j.williams@intel.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev, linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 27/63] fortify: Move remaining fortify helpers into fortify-string.h
Date: Wed, 18 Aug 2021 21:05:58 +0200
Message-ID: <77588349.MC4sUV1sfq@machine>
In-Reply-To: <20210818060533.3569517-28-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-28-keescook@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: laniel_francis@privacyrequired.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@privacyrequired.com header.s=stigmate header.b=XuNyCGrF;
       spf=pass (google.com: domain of laniel_francis@privacyrequired.com
 designates 2a00:c38:11e:ffff::a020 as permitted sender) smtp.mailfrom=laniel_francis@privacyrequired.com
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

Hi.


Le mercredi 18 ao=C3=BBt 2021, 08:04:57 CEST Kees Cook a =C3=A9crit :
> When commit a28a6e860c6c ("string.h: move fortified functions definitions
> in a dedicated header.") moved the fortify-specific code, some helpers
> were left behind. Moves the remaining fortify-specific helpers into
> fortify-string.h so they're together where they're used. This requires
> that any FORTIFY helper function prototypes be conditionally built to
> avoid "no prototype" warnings. Additionally removes unused helpers.
>=20
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Francis Laniel <laniel_francis@privacyrequired.com>
> Cc: Daniel Axtens <dja@axtens.net>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/fortify-string.h | 7 +++++++
>  include/linux/string.h         | 9 ---------
>  lib/string_helpers.c           | 2 ++
>  3 files changed, 9 insertions(+), 9 deletions(-)
>=20
> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-strin=
g.h
> index c1be37437e77..7e67d02764db 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -2,6 +2,13 @@
>  #ifndef _LINUX_FORTIFY_STRING_H_
>  #define _LINUX_FORTIFY_STRING_H_
>=20
> +#define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inlin=
e))
> +#define __RENAME(x) __asm__(#x)
> +
> +void fortify_panic(const char *name) __noreturn __cold;
> +void __read_overflow(void) __compiletime_error("detected read beyond siz=
e
> of object (1st parameter)"); +void __read_overflow2(void)
> __compiletime_error("detected read beyond size of object (2nd parameter)"=
);
> +void __write_overflow(void) __compiletime_error("detected write beyond
> size of object (1st parameter)");
>=20
>  #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
>  extern void *__underlying_memchr(const void *p, int c, __kernel_size_t
> size) __RENAME(memchr); diff --git a/include/linux/string.h
> b/include/linux/string.h
> index b48d2d28e0b1..9473f81b9db2 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -249,15 +249,6 @@ static inline const char *kbasename(const char *path=
)
>  	return tail ? tail + 1 : path;
>  }
>=20
> -#define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inlin=
e))
> -#define __RENAME(x) __asm__(#x)
> -
> -void fortify_panic(const char *name) __noreturn __cold;
> -void __read_overflow(void) __compiletime_error("detected read beyond siz=
e
> of object passed as 1st parameter"); -void __read_overflow2(void)
> __compiletime_error("detected read beyond size of object passed as 2nd
> parameter"); -void __read_overflow3(void) __compiletime_error("detected
> read beyond size of object passed as 3rd parameter"); -void
> __write_overflow(void) __compiletime_error("detected write beyond size of
> object passed as 1st parameter"); -
>  #if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) &&
> defined(CONFIG_FORTIFY_SOURCE) #include <linux/fortify-string.h>
>  #endif
> diff --git a/lib/string_helpers.c b/lib/string_helpers.c
> index bde13612c25d..faa9d8e4e2c5 100644
> --- a/lib/string_helpers.c
> +++ b/lib/string_helpers.c
> @@ -883,9 +883,11 @@ char *strreplace(char *s, char old, char new)
>  }
>  EXPORT_SYMBOL(strreplace);
>=20
> +#ifdef CONFIG_FORTIFY_SOURCE
>  void fortify_panic(const char *name)
>  {
>  	pr_emerg("detected buffer overflow in %s\n", name);
>  	BUG();
>  }
>  EXPORT_SYMBOL(fortify_panic);
> +#endif /* CONFIG_FORTIFY_SOURCE */

If I remember correctly, I let these helpers in string.h because I thought=
=20
they could be used by code not related to fortify-string.h.

But you are right and I think it is better to have all the code related to =
one=20
feature in the same place.
I am happy to see the kernel is fortifying, and this contribution is good, =
so=20
here is what I can give:
Acked-by: Francis Laniel <laniel_francis@privacyrequired.com>


Best regards.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/77588349.MC4sUV1sfq%40machine.
