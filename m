Return-Path: <clang-built-linux+bncBDTI55WH24IRBS5OVDXAKGQE6OHN2AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEB5F86DF
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:22:04 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id e17sf13756364ioc.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 18:22:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573525323; cv=pass;
        d=google.com; s=arc-20160816;
        b=QSt6gRZzV4kWbH2s8z5N8dFtKEsRa/JSyCYy4U6/Vv00FSJfEcan+32aWdmVUfYDvg
         oOBJnmyX1TgM6XsJPnqBHnq7c2HPELrH6rEU9pDKI9CGze2yEbiDJdUj1pRfHyu7mTWm
         fgijAN0vgJYzjdahQ8evQu5Pn5WNLJcmhSsbwt98bHW/lfOgj+Nfb+WtDjrfg4clO41Z
         uMbAdNwwrTbzedsKkOfbGekWj0QojCwkh6WBYHJPYPvf05eqPh5cmziIQx2YyOWHmRih
         2I9U8aMNBOW6YGVkFoMQcUX/I0phXJn82p/eNx67zxIa3N7iKwAlI95E4qW6ZpWo+m/4
         jYuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=p3QtfbVR5AtHhvkXZxwXszc0sr9G4zquJZTBjkc28Gc=;
        b=fVBRX75q7/6rG6kVkDN2fi+rwLmNS0Dj1c1tZrvBCKHJDcf0xyH4zukI8rSds3YqN6
         is54fAeVOmUK5Pgshi+WciUapePd0kyCMjIPEJZMjtIimT06jx+pAWe6yABHqC8sfKzx
         Ut6InpXj6lMmviZXEbYr4lL9XE7Dpvn1oZBJ0JqOzNCRLXmxkBqw1O/1KecHnAxwwVyU
         XDXgZ0SD6l4l7upftNYHzHPglic2BiLODbc99zh8fpPZsDOta1aifGN2I0cOqYvwIvX+
         Q8q1d/3dNI0LKZUDPbB10tir9ze7+5rbQdlAPUhkNK0GaG35R3Hzjy/RDac8xYFtxcfn
         +dYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=C1aJehxV;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p3QtfbVR5AtHhvkXZxwXszc0sr9G4zquJZTBjkc28Gc=;
        b=FIMjWEMBnco0+6I9zCuW2j7FqG5o/7luVhscwPtGfO7Bnn8/LnpSazhOHjXb7i7lb9
         wxbA27jDcVBHdmxoU+5RmpKFz6KpeA5SPSpYsZU/eRtSaRfBxQ7y5LhTYBDymEHrWY/1
         yN3UtwnfLgpdWKZRKdUB/PWLcslpPyjyvKfOHgBQV4mqWeIgvk2mj6mX2HaSXdtULihm
         fncNmQ1HFaeoT8X+nsNQLDibW+ZzOvvZOU/pl9WG4n2qSBuL6HId30hwhBGmoxCbB03K
         hBY+9H0KLXezhbkv8fx5cnwnB6C+JXlPOfaTFBDBVYdLabsOxflh5yiT/efRAT49FZqI
         E1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3QtfbVR5AtHhvkXZxwXszc0sr9G4zquJZTBjkc28Gc=;
        b=qUADu+WgCW3bUDfz7Yi3QCs0PhwLcTC4Q1h3RrWBRNtbjqVprlyUe1TZ2JDJ3E9wxD
         PXG8sTCfoiY7nrT48cyvbH8nyrfemYVQPDRluiaj3A/UkWuMRFLcg2ggB/O/yI2QzBI1
         Y/oOar9LQS77P6UrVyVkoG0MNVUzqWI7lyfoTpMIInGAUI1HU8m0rnyT3jncT3nb90vW
         Rxitv1yMp5RWlFwhO5dKNT38Wv9L/1QlteyUcuNY7QWuTAH2YqsQWESdfm30PTmwHEYD
         toSoJ0KUfb3XMtncWPQqCKiXm+3bUiORU7ULWARyO75Um0zsqhKaKa3Vl9E0o2ZnELWV
         Rf5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlgTL0y1M7UVZYYNzJvfHfpd8ldeiRUk6vehjdGHURlM63hDTZ
	pOApC53W/9xl9A/skWEan+s=
X-Google-Smtp-Source: APXvYqxhTG8G01jMN+SiAEYwwhEVoVuskPSaIoRJUasfC49LnG3Aes+XqT2Wbt6QZnYSM3IV30FycQ==
X-Received: by 2002:a5e:9706:: with SMTP id w6mr5204977ioj.252.1573525323369;
        Mon, 11 Nov 2019 18:22:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c209:: with SMTP id v9ls1361466iop.0.gmail; Mon, 11 Nov
 2019 18:22:02 -0800 (PST)
X-Received: by 2002:a5e:c302:: with SMTP id a2mr12744035iok.295.1573525322937;
        Mon, 11 Nov 2019 18:22:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573525322; cv=none;
        d=google.com; s=arc-20160816;
        b=YC6QpAMWcu1JjCk60gKz8BB28oBD/b51oxBsp/0s487Hg8BNyn/qc8uxK8sAxxmQj9
         N5GTvrun5Rxthy4XGx8ekU4PpR9nD4k4xHqTlXd9gKk/C06oK267RQ86ItP38rZEocIn
         n/WhZtyoXferiC+debUUoszetp6J+QkjYM2Bx+aH/HhEt6oAyCPkiY3Fj7lr3rmjPnjD
         lluNYjF4wPPQvT7OwM8n5v6FRRh2dQvnA0bNzbCdGxdH5bKof+4ELLhLTwLgmE6LwaOQ
         sNWu02pU07DjgDyP/9bTHqbb+IvEOnSgqb/3DculvR+mJhDf1Mdx/aCQl0eCHjgFsQYR
         vBKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=y7MzE4Tyl7ZA6/nakd70Ls06yxLts/TrU5ic+fxvtfo=;
        b=HG5AYIMjhPw3eZvusI13VJquPsFC+PX2/4r2j6iL1jzjszmlgvn/rwZnJ5wD7PHgwE
         OfTEsQgbWxZQHccX4o4OJC2WDK+bYmuVuNc5cavJOO+vJlaocFxWBtSuT+8F2TCm+JtT
         oLweybiwMXXRTgHBJDLkq/fdZeApldfKQ2nQImyo7M7iPvpqSA1QT2CdXNciLi75d4Q2
         ywBpDWJs1f8Gfh9HakUekOF3QXt7EjJsk5DPa/UI10fyo4fcxRtJ5rKtnfBsjD3BnScL
         faKoCVavfK8NQ0RtKBvK4DSi/hucUft5+PPK6J5qrJ34PIloFc3fV8tGqOcVvg8/p2Kt
         XM2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=C1aJehxV;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id z130si862835iof.5.2019.11.11.18.22.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Nov 2019 18:22:02 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id xAC2Lk2W023057
	for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 11:21:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com xAC2Lk2W023057
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id b184so9776422vsc.5
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 18:21:46 -0800 (PST)
X-Received: by 2002:a05:6102:726:: with SMTP id u6mr20193685vsg.179.1573525305837;
 Mon, 11 Nov 2019 18:21:45 -0800 (PST)
MIME-Version: 1.0
References: <20191110153043.111710-1-dima@golovin.in>
In-Reply-To: <20191110153043.111710-1-dima@golovin.in>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 12 Nov 2019 11:21:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQBKjJB0koyAANPb+iwGa7DYi2R+0EFiD6pJ4TihMFjHQ@mail.gmail.com>
Message-ID: <CAK7LNAQBKjJB0koyAANPb+iwGa7DYi2R+0EFiD6pJ4TihMFjHQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: kbuild: use correct nm executable
To: Dmitry Golovin <dima@golovin.in>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Matthias Maennich <maennich@google.com>,
        Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=C1aJehxV;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Mon, Nov 11, 2019 at 12:32 AM Dmitry Golovin <dima@golovin.in> wrote:
>
> Since $(NM) variable can be easily overridden for the whole build, it's
> better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
> prefixed variables where their calculated equivalents can be used is
> incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/766
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Matthias Maennich <maennich@google.com>
> ---

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>



>  arch/arm/boot/compressed/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 9219389bbe61..a1e883c5e5c4 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -121,7 +121,7 @@ ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
>
>  # Supply kernel BSS size to the decompressor via a linker symbol.
> -KBSS_SZ = $(shell echo $$(($$($(CROSS_COMPILE)nm $(obj)/../../../../vmlinux | \
> +KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
>                 sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
>                        -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
>  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
> @@ -165,7 +165,7 @@ $(obj)/bswapsdi2.S: $(srctree)/arch/$(SRCARCH)/lib/bswapsdi2.S
>  # The .data section is already discarded by the linker script so no need
>  # to bother about it here.
>  check_for_bad_syms = \
> -bad_syms=$$($(CROSS_COMPILE)nm $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
> +bad_syms=$$($(NM) $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
>  [ -z "$$bad_syms" ] || \
>    ( echo "following symbols must have non local/private scope:" >&2; \
>      echo "$$bad_syms" >&2; false )
> --
> 2.23.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQBKjJB0koyAANPb%2BiwGa7DYi2R%2B0EFiD6pJ4TihMFjHQ%40mail.gmail.com.
