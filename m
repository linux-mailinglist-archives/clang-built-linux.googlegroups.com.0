Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR7D5KEAMGQE6GM6UUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E24783EDD44
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:43:19 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id l12-20020a2e834c0000b02901b3aafdf5eesf6285944ljh.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:43:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629139399; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLNThUhGnJ0H3IShKkkl2MY7APCblb4CgV8L0+a0eQ+bFKvw3yJ48erQLYNgxLaY9h
         GPa0a7zj3z4ochrzCcPnuG5w6pKSOh1mCtkBZ0JK0N0yniHg1sre43FQWEGIcUdH8b2S
         2/Bg0tRH7shtmR+MDc07SmA6EPYxTrDpPxndVS2OwxWhO+gq0zHhAdwWcR/fzVIXz9Ai
         NKQ/vudK8iBS867T6GgBd3wWYX/tSlV/Mq7qsSC0hIdbX1eBWNb+dr0RpyIiT/vx4wju
         w+0J9w3VdvbT3a042aRwG9N+FSArwJEvdp53+R16JzLzGbhF0n8lgyM46QM7Jzv+BvqX
         Nyeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V/YOGNR46xnnRp/R0BwY7DUhP/Qc0Mum8vjoZMfnY+4=;
        b=IX3Ms7SL7oX+H5WXRkRBzzFCHCn0nRquOWSHFVoVLXjFbh+oSdDaydB2GnMolwnKz4
         f0/hoMbQUiwBpHjIG/gkZVgvrUJ1TSnhYy/6N2RdCOyl/HLWVf3m7IFjXCkm/BZvhQXO
         sOaitPEuWSIzS7E6B6EGZbiCceBuuGSmpf5aHjCiF4yDZIsSS3u7bK117n9yy7CM2P+W
         50rfj7/Pzfy38lRCEkba4FOQBOqNWLi+d29zVPQyXWdXkJAMAO9YhOSuygrHAXdelzRy
         2PMvtDYWNUZsy8Y8FSdeyZiBchjHwOZkIUpJ30iYk3dkdGD2IqMC5Zuxp7pIYhc1IVRL
         xFcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQi8JqbQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/YOGNR46xnnRp/R0BwY7DUhP/Qc0Mum8vjoZMfnY+4=;
        b=fwY0aKdp+nfVUgqbgQmdcRB4GtYjexBrnOkdwjvXYf5T0NeC48GdNQTYrwCqjlF3Yg
         cgkk2uJBR0VPVNkKqupUyLSahjz92d8VZncXsXgsYB8NcN4LVn/Ad/ff4FKuV6yWNyOG
         xjRBFwXXvPfHLzzh/e//WEbVt1JqFGK/zdPy0o8UR/0vPueGd1Ib5pHrcIRNiFfEFBKy
         fv94Usi2DqE8sBzMKPCIFNIMNenddUj5LhgMmXFt7xAh8RN3hjPOBQE/JQQNLKO+fzgK
         KPi/bvSDEAT8MY5vJDm7W9H+XvFPKoRp4RhRuP88vw0r4DObzHYZ2434g0SVfNMCEJjC
         db4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/YOGNR46xnnRp/R0BwY7DUhP/Qc0Mum8vjoZMfnY+4=;
        b=FL6nyPs9Rd4r2f9OGg9VYKwocwW9daBVwxSTUnQeDeurQOuduEjLYRLU8b/zwlPk4R
         e8qQIWLxenuGCIlaiLy3of+Mmp76Ng+qn1SwoLyTXSXfMQesgtoJM+ZEYIhaFrSzQIEm
         FsMNF2lnIz4V+wgo6y5UZdb+UZbUG1d1R57CX2aRo12T6XxQzPbZ58ojexsssSCDerpl
         Oje6lCaGvUt4fMf9xKPnrS4HmWymgOYxPmOHxWsyge2VCCGq6WnCr0a2k81kvaZSIDvi
         cu/bWH8fD/nZRqadj+xzTlcF64KG+K7s9ck77VtdsetA6KpxrPnDWogPD3y1wP4EgHg/
         lcOA==
X-Gm-Message-State: AOAM5338tpUlPqDfeEoOrqHLaf+ZG8D8Ne/IuURF0EFfxQLkH8VSOyKi
	jq0WxbK+16iK2Q833VERW3E=
X-Google-Smtp-Source: ABdhPJy/XaO3IlpfqowdKjghGiliPKNqhjON4LgV0l2vMJ1HWlueEWrET/9/ShobT8g0Nl8HXt3Giw==
X-Received: by 2002:a05:651c:211c:: with SMTP id a28mr67053ljq.8.1629139399475;
        Mon, 16 Aug 2021 11:43:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls1943020lfa.3.gmail; Mon, 16
 Aug 2021 11:43:17 -0700 (PDT)
X-Received: by 2002:a05:6512:23a6:: with SMTP id c38mr2975lfv.268.1629139397300;
        Mon, 16 Aug 2021 11:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629139397; cv=none;
        d=google.com; s=arc-20160816;
        b=IpscUjmdnHuiuuL09iMGBIbRdCpZ+24zgtQvyof3ey/0GuxQ2VNkqu/yZy3mdL2YJA
         7S3jsAmDDt2dQ9hHLIt/5LxRVEvusq7kwWzChMXTvdYa3CwujIrWC3VEFwZpc3dU6/Ml
         6UZVTULz2KQzgO0toVUGA8xxkqGaOV1V8rZehfVpw2lOAgrIqYmtCS1cn2OiksNfjKwS
         1oUNIvFg8JvigvHsE9lNibM/ssMaZukcIKV+L4aYij8+BRo43C5CdqZwPxllgJ6IbIVG
         JPCgrS721D0mhon8gL0vZ/qQBBdXubRr8xzCyWPFZ8KSQzqwECR/IIVk+ZaJ8npY3vKq
         25vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tc8LvEjKB125fMvaYu4lvIYEHsbzSNtJpdQim2oDD+w=;
        b=XG44imtUnbmKQKHNTS2aZt4hFieSrDji0D6Y8bQPDTJnibDu21nhwmPtT92Su0WPnH
         Z2NyKK9OTbD5u1nynN7lbFrO/ZLFnYKmRTUlW8ME4EO68cFYJ64ZxilAU1Pg6SJJD9BP
         ZnzUU8v5KZCI3kOaaXfzM5hnBci1HawaZh4NURfRjv0TfIdJwYit/AvjGho4mdg4uYjj
         ql0dn7moGUGpF+8S6ZvqcUUufVxg4OfOAjEmxlpGSQ3wiQNq1greF/JXkM+Mm+Gz7IEQ
         BXaYpFRZaf2orIXLE03uctVVpXI93fTuxmci6jDBY7SB8V95Ct9vxgflDaS8GTmEpP2e
         U4vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQi8JqbQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id g5si3517lfj.3.2021.08.16.11.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id n7so28817306ljq.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:43:17 -0700 (PDT)
X-Received: by 2002:a2e:94cb:: with SMTP id r11mr61720ljh.116.1629139396718;
 Mon, 16 Aug 2021 11:43:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210815191852.52271-1-nathan@kernel.org>
In-Reply-To: <20210815191852.52271-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:43:05 -0700
Message-ID: <CAKwvOdknYUxe1dHW-muGr=ZJc=hCKBrfhZCNQR9tEJTwr0fK=Q@mail.gmail.com>
Subject: Re: [PATCH] bus: ti-sysc: Add break in switch statement in sysc_init_soc()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Tony Lindgren <tony@atomide.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Kees Cook <keescook@chromium.org>, linux-omap@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iQi8JqbQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
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

On Sun, Aug 15, 2021 at 12:19 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> After commit a6d90e9f2232 ("bus: ti-sysc: AM3: RNG is GP only"), clang
> with -Wimplicit-fallthrough enabled warns:
>
> drivers/bus/ti-sysc.c:2958:3: warning: unannotated fall-through between
> switch labels [-Wimplicit-fallthrough]
>                 default:
>                 ^
> drivers/bus/ti-sysc.c:2958:3: note: insert 'break;' to avoid
> fall-through
>                 default:
>                 ^
>                 break;
> 1 warning generated.
>
> Clang's version of this warning is a little bit more pedantic than
> GCC's. Add the missing break to satisfy it to match what has been done
> all over the kernel tree.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/bus/ti-sysc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> index 0ef98e3ba341..afe8222db7cd 100644
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -2955,6 +2955,7 @@ static int sysc_init_soc(struct sysc *ddata)
>                         break;
>                 case SOC_AM3:
>                         sysc_add_disabled(0x48310000);  /* rng */
> +                       break;
>                 default:
>                         break;
>                 }
>
> base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
> --
> 2.33.0.rc2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210815191852.52271-1-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdknYUxe1dHW-muGr%3DZJc%3DhCKBrfhZCNQR9tEJTwr0fK%3DQ%40mail.gmail.com.
