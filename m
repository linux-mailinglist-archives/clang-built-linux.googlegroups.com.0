Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB65ZDUQKGQEC5KXMRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 588F46EBC8
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 22:56:41 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id 8sf14036534pgl.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 13:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563569799; cv=pass;
        d=google.com; s=arc-20160816;
        b=s+Tq4riGCBg/+ZgAoY29LQAHWZoQxgw5i5CQAB+59udbMN0+j4YxwR20ErBsq9XVto
         aWH5JfJQCDoXMkSRy404WA9k6kAHLgRhXSF1n7QOio0tQd/GDN64ryOA0VpXYeJO1Mpm
         +Xv8LCKN4BdzjXBzL+5z1+sVDcOoQCw/tTban6k7/t2B7Z/ok4/2MSgLpWWF0jSo+XnH
         nyfpp+C/UIDzcm6VrgZVsfudlCamv0DyF7XaTCoTAZL5HHaKXNoZblf0bzZ6qtgyMdRJ
         vGq3WDHWFTfxVUUkuGULtq+euPbeVrJtWHMKs1pYsFrQR5CrDF8Tu89i2r8dA4zXYXNV
         iagQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9sSW2Dmzo6lvQnb6Kut1gc5lQpgQ7CRZhIJyz7tgXag=;
        b=tk7XVa+po9RsO59A+HhBkOsSXy2IRkKv/BE0zL/TuCdtCJsAuztxhYBGSKxV77MLPJ
         2AGj9QefV7YjzE9YbcW4HiBquya/HSD/jqXkNp298M+LWDaBfmhNqriPLGj1l9GYQlVx
         KTg9VwY2hqYbysCOvlnGvrnAMOMMuVLge9j0LoC4AITqm8lBsDgmhcl1uIRMieQLoh+y
         NKRHw/RHF0mKSqCiGLi8/4VskUoNf7DDBvXC/XGKbCyP4RfyzkFOquva//Q9h1rHPCCp
         01A6bzKRueKTIW5gIvBJBzDVLeZg5nu1aRxjYkY32LyYxoau55S/yOIVJ73zBAMboKLl
         G9Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wTxXBCRS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sSW2Dmzo6lvQnb6Kut1gc5lQpgQ7CRZhIJyz7tgXag=;
        b=XIxNyB+U6y4t3v/hM4twXAJWQXlfyv+cgYF9i+1RAtkVj6oAIzccW6c/62rzi4+8AE
         Msg8C7DuPXucDW7rygGsJAgmoKvA77JJCQx1FJXEb2ZxbkYH4e6II8wt3LDYCBZ4gGk+
         k7+QKc84jSWH4OdQSbuHPtBL2BMCA6dkJMSWJ+AJrTtzm1O351/NonDydQuvn/ZbCI9V
         vguguNhz8WeAyT9MnlcVyRdGLmtELLIh3d5KyjlUWLQqOnj4HlHd9wGISUjqOeu0tYXn
         /3Ajxodee8U0lYudKIeWM/M8W/JxAsmrj2ooru7fMfUId6SuaBrIsURWIa9mLsi1wF2F
         VqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sSW2Dmzo6lvQnb6Kut1gc5lQpgQ7CRZhIJyz7tgXag=;
        b=WVGsuNz/NRF8yk4tESD8UjL5wBRDwgU802zJYnb4CMrN2Sum5w1uKqIjUlDZIUpGiB
         +wpLjgIEdVQtwji03WIm1wDQ4Hc8SEfwRPkKFmDcPzx+Fb7DlerwAO5zyGQXA+mEU1ck
         9kvnaaHD3UdPfUGHtfMyUOY+x6DbepD5IeXe6EqIvRnApbcwO6s4awzB97j6jKFauiFC
         BPaGTVYiviYA47dMyTybrs+N2SmE7IpoqDpaddxohvk4xbKcZC+uxu3Baf/mpgLHaEGh
         hskSU9zMKP/6bhZZP1pSLjZaxauldhkFsUeMNSvUBCzg/kqPj8uvzlt4TTJ3NbUxA9c1
         RtDQ==
X-Gm-Message-State: APjAAAUy1vkHZ6Uvi2h6kdVqlNTQiOdTG3Q3NfgQPeSXIRVGppI2knQv
	hEr+xoC8Ss4vflOLNFZYwUI=
X-Google-Smtp-Source: APXvYqxqzbgaN7l0Um3gXC2eDCAgvj7tzaP5p2V7THvJEOzt8WDY533kY8ngCoU8tTERMD9KRaDP9A==
X-Received: by 2002:a17:902:42a5:: with SMTP id h34mr60959084pld.16.1563569799636;
        Fri, 19 Jul 2019 13:56:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e2c1:: with SMTP id fr1ls414118pjb.0.experimental-gmail;
 Fri, 19 Jul 2019 13:56:39 -0700 (PDT)
X-Received: by 2002:a17:90a:4803:: with SMTP id a3mr61249559pjh.58.1563569799010;
        Fri, 19 Jul 2019 13:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563569799; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6PgZbRg8hCaWbXgJXhNoavgrFJEIAI6fp2daEnu1TbYPXpS8xuqhq8fBNvqq90cCR
         zKiPOG0w1000eLUGcufjYagWGpS9B7pP+TeMMJP14pcyPIFmsubZC8H3JfJJSF1HqzpV
         3sv6g/W0ShKtX4Gr1uEXSobJLI20EShoPVJzE1XnQb66RnpQ+CXD/YInGSewXuE6ZN5/
         V3oXwCeklmqTI9H9y0VPeH6+KVcNswXhtYTZXoC1diheeP6iJl4NDQy6aqE40reZHLQ+
         sVzIT4dO0TsnhuD7DkmRgIhkGxkFDO1gKw7G2388KQNXbbFj+QNr2VvJTTay827xfkVy
         qKeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3NYv6TCWtb7tkR1P/MbWMgyIgT3S1PINtDcy9WMCXyk=;
        b=FZo8KXHvksQvx8pC8ykaLjlgLSrN3Rq/fU9oQZqWjKJfrO84hjV7/b0VxWbYL8BEdO
         tf2eBocfyb1/oaxATxPGW14HVrFIsdjoRk0Hge97nEuEg/oqQYaZ5OtBVkio+XL8LncE
         NnrX4625/TUyKXxb7F/MBsfQxoT0IKadFMnRxmm7+qvsG0tpg3RFHbrP3YVwGh0+CrpT
         ZRj3kXNqA8v7vT6WEvC+d6K67M5UQ0BRcg0v8p84BC6sa0hH5urxnXGtkncO4XWfw3NU
         /InW/XjpKQ1LImrYrPkLjpoeMv96u8EPedTz7hdYdwNJY9/4HvA44FlbuFTByXKU7ocq
         cgVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wTxXBCRS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id m93si1424098pje.2.2019.07.19.13.56.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 13:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id i8so14948937pgm.13
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 13:56:38 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr25172182pgg.381.1563569798307;
 Fri, 19 Jul 2019 13:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190719200347.2596375-1-arnd@arndb.de>
In-Reply-To: <20190719200347.2596375-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Jul 2019 13:56:27 -0700
Message-ID: <CAKwvOdkv9DebPrB1BLriY+SY5a8EX5VsDVLRS-2-cbORMdTcTQ@mail.gmail.com>
Subject: Re: [PATCH] [v2] kasan: remove clang version check for KASAN_STACK
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>, Qian Cai <cai@lca.pw>, 
	Mark Brown <broonie@kernel.org>, Andrey Konovalov <andreyknvl@google.com>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kostya Serebryany <kcc@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wTxXBCRS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

On Fri, Jul 19, 2019 at 1:03 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> asan-stack mode still uses dangerously large kernel stacks of
> tens of kilobytes in some drivers, and it does not seem that anyone
> is working on the clang bug.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Turn it off for all clang versions to prevent users from
> accidentally enabling it once they update to clang-9, and
> to help automated build testing with clang-9.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=38809
> Fixes: 6baec880d7a5 ("kasan: turn off asan-stack for clang-8 and earlier")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: disable the feature for all clang versions, not just 9 and below.
> ---
>  lib/Kconfig.kasan | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 4fafba1a923b..7fa97a8b5717 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -106,7 +106,6 @@ endchoice
>
>  config KASAN_STACK_ENABLE
>         bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
> -       default !(CLANG_VERSION < 90000)
>         depends on KASAN
>         help
>           The LLVM stack address sanitizer has a know problem that
> @@ -115,11 +114,11 @@ config KASAN_STACK_ENABLE
>           Disabling asan-stack makes it safe to run kernels build
>           with clang-8 with KASAN enabled, though it loses some of
>           the functionality.
> -         This feature is always disabled when compile-testing with clang-8
> -         or earlier to avoid cluttering the output in stack overflow
> -         warnings, but clang-8 users can still enable it for builds without
> -         CONFIG_COMPILE_TEST.  On gcc and later clang versions it is
> -         assumed to always be safe to use and enabled by default.
> +         This feature is always disabled when compile-testing with clang
> +         to avoid cluttering the output in stack overflow warnings,
> +         but clang users can still enable it for builds without
> +         CONFIG_COMPILE_TEST.  On gcc it is assumed to always be safe
> +         to use and enabled by default.
>
>  config KASAN_STACK
>         int
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719200347.2596375-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkv9DebPrB1BLriY%2BSY5a8EX5VsDVLRS-2-cbORMdTcTQ%40mail.gmail.com.
