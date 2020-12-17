Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN735L7AKGQEBFELKIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3A82DCAD4
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 03:08:56 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id hg11sf3365830pjb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 18:08:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608170935; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/AywHh4BYlrkSQ8km+Wdp/AaRCyj07QHFms4PloLVdpA6tBlVvS2yYnZ7rGWcVhHA
         zUOpFXBonxGrjE9yAdGeIsbhE0exzZG1NCmZPHT4XH4FwaCZ5OroXhSdxGW9gKv56CVV
         fFltIOyL2MGkTjUPXdU8ZFoIMtZhEHBRdZSuAS8DHfYxMwSPoubgRWy8Q5dvRosBQi++
         XBUsz59rVkC/Ah0JyThmwqKvRA5PUT+QI2YmBlxB9FOEPA1AorD2BlMADkzc/83m3F4R
         /4vpJpUvUfqubHwJs+rQ3WXIyiBX+mh4Xt0yulPy/WeeZLAMzIpNjG4hlO9lX3dXZ+8w
         35Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZcbjVXl1C6OLEROMJVU1as4R9ZxlubpvZcLLQh/WM1c=;
        b=XnqrnFW8a92co+hAmM+exOOIXAQSjt52PUUfip1C3Jme3eGIO7Ky1/lht3WJpRHZWV
         CjPY5iQQ/piRoc0JRMOpXthwnG6LAZqVTWl5/wyl2I1agfnW9dNCtI+dooupYzQ1p1zH
         sjf5bZS9D2sm7WoFOCNFx0jcwjZcPXacGC3oxAm47D2lQLGw328LtxzrMCh+bgSRhUnL
         tW6710xqpqCqwFeBZqEfgVWWDyfGuiFtZNAZ/Upm63ebZTqumPC4EH1VnF1hJjIPd+/z
         vtlLVMUipyPTxVBZp4UW3hZaN5YdEp/LBEii6gJ2rmHxiIQXChBuhtcuDQ+i5+fTAPwS
         2m7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=frhvB+Us;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZcbjVXl1C6OLEROMJVU1as4R9ZxlubpvZcLLQh/WM1c=;
        b=IHwSbEA+RQE+3SKuK3G7WoX3EyteQ2t5sCga2enXDtDvy+MT7diE3mQwCKRuDn4iVc
         RfEo8JAl/4XpTtPdLl5Tdz1XJJz106shGYUjQR7OnDdBKpBbqIwJdh2zkGq00ZyJyjm3
         ccIilYm/XrJ14wH80xS590hB4M5r6MJEbrZAY6TlDg6fNBaE2elcyHUTE4MYSA/lEjWx
         SwFTzHhw8bFbkOet+TakDJIGBuEuKyAcy0Xj0PWVrQi3E+L00ERGKuISKaaIADO1EoJX
         fAOeLfI14KlKBW0TI/aVbPO+zGHxHDa51MawCIGPqTzQOSv9jqJAsmhCn5VvRNbt5+pZ
         l+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZcbjVXl1C6OLEROMJVU1as4R9ZxlubpvZcLLQh/WM1c=;
        b=c5KufXNWdAUaudWhWTUWKghoEU8fF6sco3bokLE97axUA2wVBPNmxEeYmJ9vo2a7+V
         ne2qYJSkKDmPuV1w9lf/UuB3i8V3Z/+NZJ51in5Ax32kNblL7vN2JYdflpjQwvFH7KDm
         AWmeUq5A4BFDtptsdyz3mlm+EWQs7d37bDrsdogEinVF5loiiMB95q4mGurB/Y3dbn+H
         xptrDhDV5BR875QYqXXzPhMCeOKj/XmWyVxDVhxozauKTk/1GjmuoY+kHEFmC9wnHxwv
         mezWFoaXbvv7WVWH1mbWuZIvurhn1Ogg8dqR0aGQhvJKffrACh/fkWqqRKin7Ga4KItu
         14ew==
X-Gm-Message-State: AOAM531JCkX9JoOhGhx8AXmEdKxX0JCmmgLrx7LyDEiUwN/XAp6CPv0/
	Qg1HPD4TVUCoC4aV6LYHdb0=
X-Google-Smtp-Source: ABdhPJwrDTQQ9kZC+SRutyPkBIQORo3JcdYaUku7upAvzkUFpf60oyd3JXoyD3TnEn19IgI8U8gtHw==
X-Received: by 2002:a17:90a:67ce:: with SMTP id g14mr5725774pjm.33.1608170935399;
        Wed, 16 Dec 2020 18:08:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a47:: with SMTP id x7ls12155231plv.1.gmail; Wed, 16
 Dec 2020 18:08:54 -0800 (PST)
X-Received: by 2002:a17:902:8e86:b029:d9:e12a:8888 with SMTP id bg6-20020a1709028e86b02900d9e12a8888mr34351848plb.51.1608170934699;
        Wed, 16 Dec 2020 18:08:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608170934; cv=none;
        d=google.com; s=arc-20160816;
        b=M/mfaVnQhQooSX3H6pTeJSmQ2DnBS0lbc4t+CbX5J/cb6lbIpGpOV5kDNYIyJAKWYu
         l3bi1APxSlHPZzMMyJlUYD4oklXW+oCH67I0hYdOiXQ2mnTY2TanXCZdNgswUiG0izv8
         yHy8gLJECmVPcgacxntv64dT6Z7C1NjfJuLEGabLpGF0WCeZaYqpMTznvEtyMdfhiFtU
         dOJHQGV8bobLq7weL3TEnPRmQJmV2w5fn0VnbvUrd6TxUZ/T/vAb1j/l2QLHt8uGE0OH
         pABXItCyF2Eg2fF+GvUQsQwUAYOW8f+DnINMLqxITDnkZVd8JxNXhWsEeda3fEdEmdZx
         Uqtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8eLKwGSpN1CIyR4Kd4zybrisCdZPTB+phRfHVeIVRLo=;
        b=Va27MvDORSZWBSaQoSzhdeHRspDjJ0g21KFsEBWbFfL5y7mDs96HZlx/1aBiHLwFLR
         2YfLZm0lXVl26eUnXUHZ1u7pHoHj8XVZ7c07w+k2E4Adt8i0t50v8XI7Qr2iR1l8nACm
         yP6GX8F8+XS6KcmncNMI3o9E6p9LTaULn5KvV7XORU9wvAsCC8zud4cK5v+FQXQuADRk
         2cINRwFRxdXhY1lESVLtlYtIaQlhwomgd1XHaGdpUVVAUYWvJn10VV+LCWnmOYLpINtU
         V79UTsjmeyOljmc/2o68knEjF7lo1peSiWhtj85wZyrtNEtg/ppqHR4Jr58gKgFGHQ4F
         nIyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=frhvB+Us;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id w6si301964pjr.2.2020.12.16.18.08.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Dec 2020 18:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id 4so14245526plk.5
        for <clang-built-linux@googlegroups.com>; Wed, 16 Dec 2020 18:08:54 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr33856567pld.29.1608170934177; Wed, 16
 Dec 2020 18:08:54 -0800 (PST)
MIME-Version: 1.0
References: <20201216233956.280068-1-paul@crapouillou.net>
In-Reply-To: <20201216233956.280068-1-paul@crapouillou.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Dec 2020 18:08:42 -0800
Message-ID: <CAKwvOdnmt7v=+QdZbVYw9fDTeAhhHn0X++aLBa3uQVp7Gp=New@mail.gmail.com>
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access with CONFIG_MIPS_RAW_APPENDED_DTB
To: Paul Cercueil <paul@crapouillou.net>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <natechancellor@gmail.com>, od@zcrc.me, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=frhvB+Us;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
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

On Wed, Dec 16, 2020 at 3:40 PM Paul Cercueil <paul@crapouillou.net> wrote:
>
> The compressed payload is not necesarily 4-byte aligned, at least when
> compiling with Clang. In that case, the 4-byte value appended to the
> compressed payload that corresponds to the uncompressed kernel image
> size must be read using get_unaligned_le().

Should it be get_unaligned_le32()?

>
> This fixes Clang-built kernels not booting on MIPS (tested on a Ingenic
> JZ4770 board).
>
> Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of the kernel")
> Cc: <stable@vger.kernel.org> # v4.7
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>

Hi Paul, thanks for the patch (and for testing with Clang)!
Alternatively, we could re-align __image_end to the next 4B multiple
via:

diff --git a/arch/mips/boot/compressed/ld.script
b/arch/mips/boot/compressed/ld.script
index 0ebb667274d6..349919eff5fb 100644
--- a/arch/mips/boot/compressed/ld.script
+++ b/arch/mips/boot/compressed/ld.script
@@ -27,6 +27,7 @@ SECTIONS
                /* Put the compressed image here */
                __image_begin = .;
                *(.image)
+               . = ALIGN(4);
                __image_end = .;
                CONSTRUCTORS
                . = ALIGN(16);

The tradeoff being up to 3 wasted bytes of padding in the compressed
image, vs fetching one value slower (assuming unaligned loads are
slower than aligned loads MIPS, IDK).  I doubt decompress_kernel is
called repeatedly, so let's take the byte saving approach of yours by
using unaligned loads!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/mips/boot/compressed/decompress.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/mips/boot/compressed/decompress.c b/arch/mips/boot/compressed/decompress.c
> index c61c641674e6..47c07990432b 100644
> --- a/arch/mips/boot/compressed/decompress.c
> +++ b/arch/mips/boot/compressed/decompress.c
> @@ -117,7 +117,7 @@ void decompress_kernel(unsigned long boot_heap_start)
>                 dtb_size = fdt_totalsize((void *)&__appended_dtb);
>
>                 /* last four bytes is always image size in little endian */
> -               image_size = le32_to_cpup((void *)&__image_end - 4);
> +               image_size = get_unaligned_le32((void *)&__image_end - 4);
>
>                 /* copy dtb to where the booted kernel will expect it */
>                 memcpy((void *)VMLINUX_LOAD_ADDRESS_ULL + image_size,
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnmt7v%3D%2BQdZbVYw9fDTeAhhHn0X%2B%2BaLBa3uQVp7Gp%3DNew%40mail.gmail.com.
