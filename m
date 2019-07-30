Return-Path: <clang-built-linux+bncBDTI55WH24IRB6HIQHVAKGQEIBBPEVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id A63597AE51
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 18:46:49 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 8sf35586324pgl.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 09:46:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564505208; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/58Pe7Kh54CWGfSVbpk608B2kIuYOciBLRjQDewPjhcfaA1njVGtqshObZP36Ejig
         ajvcU6OyQ0eftvj9fqDQHzwvBfIMtrWhP63jx8GA9tBfkWHEvI0SzD9XJEZEfBxKQBgI
         TNOYK+QAl2LJ4gXduL/AotlVpGQW5Xtc1QqbYd5NlIxV5pvR9k5GG77JQC9b9SgM8ya4
         BPPkIZ9E/hXpNjtPEi4VxAtryCZsNSOWd78Q+DwZw/fy7aOwpsF2qEA+CTK9mu8CrE6/
         O+viP3asfaT9/muG6QA9VPNfgmUIMCbtzO8+dKnoAdzBFhb+TLcHrCOe+8QRzfxR6RSz
         75RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=SYzgnlIBSmFgHC0fwM6fjhksRHC9xtOxzxrAH8RwOOI=;
        b=BuVqjqy2oQ1aKCj5W290G17h4gnk8fjMenWXM1BdGNfd6XbodkEW8oi42lI1ly7JBM
         12C0LFQEgDqmn9/xY761GF6GQvR433HMJ1cIPZWW8AsAR2bwHGdzsDOB4UP3SQcyHzwK
         XTss9wGjq3tGRqJWxD8dtClQl7TTHex6cO9EKs33mLvSzKBH1FzAAGWekJ7GDSk/8Wx3
         QbR1QrWRLaPi5sAQUcTARL5599kZz+mdppEaqJ6wnEvsk31unKw+VXHh1ADNj9jDVdCJ
         R8cP0egabSOGd/xKbn2MwiUTMK2zvIem3SDtITpMl/eAXohQ9nHylDIqvwIbScDy9hzu
         HujQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jJkn+qz4;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SYzgnlIBSmFgHC0fwM6fjhksRHC9xtOxzxrAH8RwOOI=;
        b=pAwtaesrKJ34k4rHMmh0Kaa6KZ0N8vPsjgu4m0Ed1V/J2rpF3QcuZSNKfSxPERIx8b
         bkDS1lJwyJ8sv7RuST1q8gwF3mNdY6lPQA4t/Mp1geruxR5tZltbjJ0YO86MZjtklwP7
         FQ7Crv83aUylN9PkFZUdX2OaaPz5aL+FTCJinUGzDQRPv8IUcQwqfg8X7miKy59fhQLx
         434vKwvNhN9SqcSGpugwsd+TIrnAlPaOqX2qaCqx+VGvko2+sHmytgrPx0GP/9wsDn88
         pDSmERIsm0JqXRKU02ohsdumQJciNIZCgBeQhO2yvKu0J7n9J863yD+hrDMQZV0BwIcj
         YxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SYzgnlIBSmFgHC0fwM6fjhksRHC9xtOxzxrAH8RwOOI=;
        b=ekX6LBJoXSU6zz94fmHKkFUQFFLcxUQwKG0GiNKnIGCLwtIYpb8n3PyS0FbHVPlS6/
         NwhCuany7xfLeTlEXAxRw/j+tj9Fn2KZlx8kUKowt4CnfeveKQ2rqNZVPoxVwU7kaqqw
         4AK+j14ERBVHxbgQrpJZAnQNCFngSnADojBC23xhtfeMUeY2kbiKsusiQHraaj0cjcUz
         fmOyDSU9vd99+kP1dcrwY+NHnSxiQU95JxQUOjg4h3fJg2GxL9QeokdFGz0Q9OhZ3Rrk
         k3M/jBcTPVZrE9z+JwHeRz84+GCYqwLbHUUgkg4z5ww7ZDXb23Giq7A8kLjpnFguOvUn
         eiRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgHnuGFXayoSsWfPlGoN7tSzQg6BpI76LOot265/y/KhL1LfLL
	GABcBVf+VIjJ82nQppsRTJ4=
X-Google-Smtp-Source: APXvYqxCnrb5ti3ED8DB96G+KGIlnV94E7aqpkGGUnuWwyc1mMpXQXpJoUJVkyTFDLlQu0QgaKD3Dg==
X-Received: by 2002:a17:902:6a87:: with SMTP id n7mr114170889plk.336.1564505208363;
        Tue, 30 Jul 2019 09:46:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a60b:: with SMTP id u11ls18192703plq.8.gmail; Tue,
 30 Jul 2019 09:46:48 -0700 (PDT)
X-Received: by 2002:a17:90a:ac14:: with SMTP id o20mr119416285pjq.114.1564505208111;
        Tue, 30 Jul 2019 09:46:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564505208; cv=none;
        d=google.com; s=arc-20160816;
        b=WDMzTtgkYVu8rmlxtiaqylnbXKK4tbhD/rbjUdWPD1dt8BrfPvPweDT1QjTLa3DMBp
         u80pAy2+x8pRxc0YSiWcMir3NRJOgGTbdUM/61vQDTUEZelQ0BrY3SzOLIxi0JmpE3R4
         Aes8s/3C+3fljQlrWGw6kOF6pYRmZhs0e2bSnV5uLrxQqSfc1Xkn5QKPI5gmuK8nbnHo
         R4PAadeykobYm35I8CTYGUxVWqeKvWokyUlWboNTEn6WLRe0ZtAedOSYXFESYYcaB6h3
         GzDg3YU26D2pMlnebmA3lR9QYFWu7eXh9u4xHgvF3wUFifn6IcSolN2hkRpFZ5ai84zB
         v2nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Ok/KGDQSrCYrPibwFAYS5ZsFlsGiUOUaXlIYe533dXI=;
        b=kd0i+hOv6MwgdVhpwBcigGcCv+I8HynlIkmRg/MXJV5eThwO3Nfkve53MTyc0nSIek
         EQfKsPRw9plbsIDs/YP0wbVd+zaAqEa1k7vBz9JxtjOui7grmsKu0+euIrRnKl0IUtWH
         ZIla723aI1iPkPTLaNpWqeC4Ka5EYvB0oCs61kI+62xRku4Pt3rfdImsBti7A61Pwukr
         xJE2MLylPeZKYjdfClr3mus+vpcXznhCm0goMJoumAeVlvUYzlpGVNHLao6h0h6CzHk9
         1NodK9rwBRinrooLRm0qeurQTHD+hYNPKA4udqj3W043/OX4ItzdkK3ygKrw0X2exIJ7
         X6Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jJkn+qz4;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id ck6si2109270plb.4.2019.07.30.09.46.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 09:46:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x6UGkXAo027798
	for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 01:46:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x6UGkXAo027798
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id o19so12937967vkb.6
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 09:46:33 -0700 (PDT)
X-Received: by 2002:a1f:ac1:: with SMTP id 184mr45919137vkk.0.1564505192554;
 Tue, 30 Jul 2019 09:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190729091517.5334-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190729091517.5334-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 31 Jul 2019 01:45:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNASyjUbM1ij8E1tO3uD3Rpi_qC6-X4=LKR+ZKh5g6vvBnQ@mail.gmail.com>
Message-ID: <CAK7LNASyjUbM1ij8E1tO3uD3Rpi_qC6-X4=LKR+ZKh5g6vvBnQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: initialize CLANG_FLAGS correctly in the top Makefile
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        stable <stable@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=jJkn+qz4;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Mon, Jul 29, 2019 at 6:16 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> CLANG_FLAGS is initialized by the following line:
>
>   CLANG_FLAGS     := --target=$(notdir $(CROSS_COMPILE:%-=%))
>
> ..., which is run only when CROSS_COMPILE is set.
>
> Some build targets (bindeb-pkg etc.) recurse to the top Makefile.
>
> When you build the kernel with Clang but without CROSS_COMPILE,
> the same compiler flags such as -no-integrated-as are accumulated
> into CLANG_FLAGS.
>
> If you run 'make CC=clang' and then 'make CC=clang bindeb-pkg',
> Kbuild will recompile everything needlessly due to the build command
> change.
>
> Fix this by correctly initializing CLANG_FLAGS.
>
> Fixes: 238bcbc4e07f ("kbuild: consolidate Clang compiler flags")
> Cc: <stable@vger.kernel.org> # v4.20+
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied to linux-kbuild.



>
>  Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index fa0fbe7851ea..5ee6f6889869 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -472,6 +472,7 @@ KBUILD_CFLAGS_MODULE  := -DMODULE
>  KBUILD_LDFLAGS_MODULE := -T $(srctree)/scripts/module-common.lds
>  KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
> +CLANG_FLAGS :=
>
>  export ARCH SRCARCH CONFIG_SHELL HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP PAHOLE KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS
> @@ -519,7 +520,7 @@ endif
>
>  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
> -CLANG_FLAGS    := --target=$(notdir $(CROSS_COMPILE:%-=%))
> +CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
>  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASyjUbM1ij8E1tO3uD3Rpi_qC6-X4%3DLKR%2BZKh5g6vvBnQ%40mail.gmail.com.
