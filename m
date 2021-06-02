Return-Path: <clang-built-linux+bncBD2INDP3VMPBBTVR3OCQMGQEM2BNCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DED53397DDC
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 03:03:11 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id v27-20020a67c89b0000b02902227f70aa8fsf207849vsk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 18:03:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622595791; cv=pass;
        d=google.com; s=arc-20160816;
        b=OHmZ2a9L1Ew/6oknOuQE+QtshIWoembt8w24D3zuvX4X1sKWR0s8YJPshNSncUOSE1
         5JGaEV5uPDmSsZTZBOoc4GFUHCAT45Ux8kXdyZtuPSo/XmnkO4fbubWvY3emZk2FSFu/
         ppIwmIryPMMBVW+LZenH/zXggYO1vgr62eCRDmsdRdwy4ih56uw2QRmTS8+A8hjAn0qg
         zXjuRAxoJbvCSjGIHXcoMtlKyNoFZjtClji7OVJ5pw43pqYzYAdSR5lXuf/tPgl6Yw7T
         eQ6G6Fpb+B9bne73vR9ky5DKvuXXTsmkcm83HgUvZal3NVmMnZg2M6P/555+AY3d812B
         zRzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date
         :user-agent:from:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=jh6LG9BVMnbnHPlNI03BdDKXppTUUj/fgwLhez2HAaM=;
        b=fRZMHgm87AC70TSksVng4VA1mKZ0TLdkBgMnn4lYXJ1g3NAC8LcAvYdgCukCHyAlcQ
         j58WGkGUIVVjigsBf23lmdRV4jdT++KEWnVxHqmHr5Q90eVM6d+V9LrxblI7sUc69GZr
         Ev1zuO449zYvOIbFbR+uzbyngCFA6wLKe6WteT5fkZN0uaZTM75KwXsePnSFP85X5JnJ
         vXNOfq3Soy0iiVvkaDZ3aAqMmSR/7F8Mk3JNaxAENPxnGZZvvwvZZFKNGmgMVG3apSdb
         38As6b/J6R1xCF2QSSVXe1mn/eCX+e5aPZAzcXQuD2rpfveGerFBuzlRJJuFkrxfLfsM
         39gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LtN3231N;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:user-agent:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jh6LG9BVMnbnHPlNI03BdDKXppTUUj/fgwLhez2HAaM=;
        b=DHr5ogHj60vu+/uc+75emBoEwfqDYkJzfTir/WuuKfXJkRG7JknpvFUtTROc4Xi9c1
         Eoqbw/Y1gnPf3HPDeSZ884p48CqgMJg8rTyirvfxUUOx9veb/u8+OlExYP/zX3St0OX1
         yJYqIHB7dmlyrc1TYKtDoMIcGP+Z/qMfKUtVT3ymPL1DXjoVE8L5ABnbEuxsV475sPNL
         qwUjJi/DznX1aLNUBE8cURm3PXXE4YOfeJI6hOOPXN69NjUDPT9L3MCAWFE6jJ9JYSdf
         9U7+tDdVcLfr++rCrhHs+O1xRhB0qqYGpsG/Cn07tuwzIJIwxSpONE+5iZaO0CN8FF0Y
         ASWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jh6LG9BVMnbnHPlNI03BdDKXppTUUj/fgwLhez2HAaM=;
        b=ueWlTyRt77+sUDm6d52500jr9j+yI7a3vHuRUYuMyaOcvB+BX+hSSUs2FwZunm1xo/
         4Og8SuC6MMsxZ1vXcYdhxAB9noY3uOMlnsX34j8k7dtuaGzCj+opvVRwa7b0nGbB6Wbu
         1pjKgeOcxuP973wpr8QNR2f5EGotrHUON6PwjgG75CHcN16l5iiKTY9Hes6ibJTgAHxT
         u2bZXDMFlfHBEx/FPRc+TJYnWZuLJzwiJ2YaN24jewcP/jqut5CBs0uURH08gaDI5M6z
         S0cmrFODHRdKr4BT201VvdLTPlt/c9vxwsw6pEEqL0Tq6g9iR8G4/Ya9xYVYE2r7ZbpM
         7SNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RezipPe2kASFWxD7AOy10hGCqCtzB88uc1oaz1R1w6O31u5gn
	PZt+x1Dpd5n7Id3PMT4QZ+A=
X-Google-Smtp-Source: ABdhPJwOrfksseyuN+OsLE5jbOpvOtaGqTg3oAQ4ZsHigDYPmIpNMEhKn9SuHDhK8Sr4YOa1XrTe2A==
X-Received: by 2002:a67:2d4b:: with SMTP id t72mr22782226vst.8.1622595790937;
        Tue, 01 Jun 2021 18:03:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:200f:: with SMTP id g15ls39982vkg.9.gmail; Tue, 01 Jun
 2021 18:03:10 -0700 (PDT)
X-Received: by 2002:a1f:2d10:: with SMTP id t16mr20795802vkt.20.1622595790374;
        Tue, 01 Jun 2021 18:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622595790; cv=none;
        d=google.com; s=arc-20160816;
        b=fzxkPKBdmuN1eVmM0SK1iie3UHIk6YnU3Yy8JmE0itdY1x7ORpkxCLnwfsrWKhGCgv
         ilw8GXt7nAPdedd3pIAkXl5hVMPOrHXqmY/F6nV/1yQM7ncI+ENsP4Ir1ZF8gmk023dw
         8wccqYTO49t2ZyeTPnk7/vQAhB46LBiXnryfa1vzsrQP1YgOqNwdH7F6QXjdaK7iNWcx
         OgqM1DfEFjetJtJQrafIMTvreUMgQkqQ0uDgG9UqwzSlHOjn6PtqJ8ddt0XD8wF/fGLq
         31h8RXbpmwFCyjZyE9u8BpGyqOfMDdFspz3Tf8xGBvD0XdgkyGHsicsaRbfw6QYEN6mi
         FCbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:dkim-signature;
        bh=6v4d48Zss5FUokcaaUtSt3kui+BNXg1BXI8kRVyRFLk=;
        b=J6DHv1uLgtCWos/7YGx3h+hApLO8+ujwz0+ichMTnPHuD7RzP4kS6c+27iKbW1Qm4b
         ijM3CMYTxZ6+9hyssD2IvtESbswxyvNBRZdYWcXrpEadZ1x/P/YZ6koEVnmAKmUdftTZ
         +4Lg/doxkNA7JnngFQ1+DbSKGfQ8156ywhylUeHRDfr5R3OMJWSAEv1VQZ3CL+I2JlOx
         vdn/Uw3ucMRoUtQYCLIZuAbmnL8iqrm0sWT9fMG5CE97e9cSsFzY3xdedBqT6fFKi2nW
         FewTAn8LHdce8RGmb9W4kRIENJYZ/97iPpPZelNeLykp/8nW1bYtQQ6D8A/sKmefShXP
         LNpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LtN3231N;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id 8si140098vko.4.2021.06.01.18.03.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 18:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Received: by mail-oi1-x234.google.com with SMTP id s19so1160893oic.7
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 18:03:10 -0700 (PDT)
X-Received: by 2002:a05:6808:144e:: with SMTP id x14mr2045245oiv.166.1622595789856;
 Tue, 01 Jun 2021 18:03:09 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 1 Jun 2021 18:03:09 -0700
MIME-Version: 1.0
In-Reply-To: <20210601172659.fd8c40a6548a1bd43be1bf11@linux-foundation.org>
References: <20210601182202.3011020-5-swboyd@chromium.org> <202106020644.UDFIJOUU-lkp@intel.com>
 <20210601172659.fd8c40a6548a1bd43be1bf11@linux-foundation.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Tue, 1 Jun 2021 18:03:09 -0700
Message-ID: <CAE-0n50F0E706Hzu9KyR7+7NRG39f0Rn05XT9mi8ci8csenxtQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] slub: Force on no_hash_pointers when slub_debug is enabled
To: Andrew Morton <akpm@linux-foundation.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, linux-kernel@vger.kernel.org, 
	Christoph Lameter <cl@linux-foundation.org>, Pekka Enberg <penberg@kernel.org>, 
	David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, 
	Vlastimil Babka <vbabka@suse.cz>, Petr Mladek <pmladek@suse.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LtN3231N;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::234
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Quoting Andrew Morton (2021-06-01 17:26:59)
> On Wed, 2 Jun 2021 06:45:55 +0800 kernel test robot <lkp@intel.com> wrote:
>
> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> >            if (static_branch_unlikely(&slub_debug_enabled))
> >                                        ^
> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> > >> mm/slub.c:4464:6: error: invalid argument type 'void' to unary expression
> >            if (static_branch_unlikely(&slub_debug_enabled))
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> Thanks.  Stephen, how about this?

Looks good to me. Thanks for the quick fix!

>
> --- a/mm/slub.c~slub-force-on-no_hash_pointers-when-slub_debug-is-enabled-fix
> +++ a/mm/slub.c
> @@ -117,12 +117,26 @@
>   */
>
>  #ifdef CONFIG_SLUB_DEBUG
> +
>  #ifdef CONFIG_SLUB_DEBUG_ON
>  DEFINE_STATIC_KEY_TRUE(slub_debug_enabled);
>  #else
>  DEFINE_STATIC_KEY_FALSE(slub_debug_enabled);
>  #endif
> -#endif
> +
> +static inline bool __slub_debug_enabled(void)
> +{
> +       return static_branch_unlikely(&slub_debug_enabled);

To make this even better it could be

	return static_branch_maybe(CONFIG_SLUB_DEBUG_ON, &slub_debug_enabled);

> +}
> +
> +#else          /* CONFIG_SLUB_DEBUG */
> +
> +static inline bool __slub_debug_enabled(void)
> +{
> +       return false;
> +}
> +
> +#endif         /* CONFIG_SLUB_DEBUG */
>
>  static inline bool kmem_cache_debug(struct kmem_cache *s)
>  {
> @@ -4493,7 +4507,7 @@ void __init kmem_cache_init(void)
>                 slub_max_order = 0;
>
>         /* Print slub debugging pointers without hashing */
> -       if (static_branch_unlikely(&slub_debug_enabled))
> +       if (__slub_debug_enabled())

It would be super cool if static branches could be optimized out when
they're never changed by any code, nor exported to code, just tested in
conditions. I've no idea if that is the case though.

>                 no_hash_pointers_enable(NULL);
>
>         kmem_cache_node = &boot_kmem_cache_node;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAE-0n50F0E706Hzu9KyR7%2B7NRG39f0Rn05XT9mi8ci8csenxtQ%40mail.gmail.com.
