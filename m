Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBY675OHQMGQEUJRBJGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E83034A79D1
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Feb 2022 21:56:04 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id s127-20020aca5e85000000b002c807e9c48asf195894oib.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 12:56:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643835363; cv=pass;
        d=google.com; s=arc-20160816;
        b=jRad4j9qukiK2/1F7qwCCTfT/Q24T97B/zuDYj08wI159PkSVDmXyfyG3J1mTshNxW
         ut1nvB/MrgBdr6FPGJtT+aGR0+XpxuAVI6C3TsmQC+hF8mkEsvEExQmv02B9pT64kTPt
         jSb1cq2JypnhjFCasJu3VoT2bdipHPs6GayOpyOeqRm2lTO8/pOCPXnHWp2moH4f/V84
         P/tMVPToJpm6eZIw6IUb6Rkf4PGN9Okm74ySgqyieejqNEa/9GL9dLJVHdz3yGXvYZ+Z
         r8mQum8qWhf+JcUnE50Ybi31P7VCMwhv+JI30zEe5EaajH34Ke/g5vvzko/thv1DuWlt
         kOFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wSTfFgXnCvtg7xqzv/xWTyZiEELq7uLrgbvKEqs1xt0=;
        b=OwGQ9tC5QoFECA1u/fQ697IapzKHSibsYjVWitv75OfJ143ltnZprLhPUR62LUbdot
         z26fr0E98YdxAMkNpGpaPPa5DzNOUG77750QK8qp3fRRG6LBisTdyWvRzNWluK2TUINV
         SDwEHNm1IzyA5EMAKIiPqJtUzG9WHMeZ/FVJMmsVZnl9O9AZATLXiiUkIpee2u9tzWog
         5hPd4K6SgXyzNPTucFTIP2W8ctLUMvGeGtSwzrkLVHQy+URbD9Pfdrde8d83Himp89OF
         1MpdnsRWJ8KzYitPCwty22IX9TDRZPQHCEEdptqnri9iXbWQ9AMW3T6hFTY++ja4r36T
         BP/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Mb5OwFKv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wSTfFgXnCvtg7xqzv/xWTyZiEELq7uLrgbvKEqs1xt0=;
        b=sXV75dmafRPCOMaHsAIOh3jLoepFwVYu6PMcM+fpJYklwAP5je1xyxf4UDt8/o3sXW
         K7iKRXkw5qjBbtmTTuc//KRrzKVQK0HV5o31frvBgSMODUkitcVUJfA/dwSix7mvH1DW
         Q9USHdgEk70iP90PgwYtqJ/24qVvr2vm5aXw3EAL3kYvYa7toa2SIQqVD4BUNq8C32w5
         uWgjUt+GM9t+wvA9vBQ3ULmaZhGC3uwjbmcS9yRJhKBj9Fbuq2yfyP983q6rIVsTWRjH
         Vc7f6b8oRjHEyJTLNJ88G8/irjK9867VtiBuIXBW0bVettTDtcG3uwg7ZGyGCKhSya/t
         dWzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wSTfFgXnCvtg7xqzv/xWTyZiEELq7uLrgbvKEqs1xt0=;
        b=N6fgEPi+wJzGhdSF10Nh8bmdiepWxCRfu+P5HGomdPfIGAnZxSE3m0uPc0kJRdqkht
         5ucNgkfqfNDBLbd7R2uOIVudtXFCMvRHycRI9OwmUDNt+SXenqHPCKe7vEuTf3bz0rZZ
         ro4yE4wRFijMlfVJfhXtfjUjQLMt8L34I00ncXtoUK1snVbrgn3J9pUk+Ea2R84tg8LR
         K0+dWvMnA8kNAKp3XtKIKUAZY8bHasxExFwqvmLepM+D7u4Qk+ldE/bBQmF16hBMmEdE
         Sl9k8gu8+z9N9fHrp+jMgwIm43Xz62vzLg2lYnFRD7Bl/N32BvmXh101/TRjsGPdzYRc
         hkHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330ttdoJBW0a22xBSwWENUQne/vIOPmyl9bIbwhn9eNYlplFDY5
	PToqie/krvcq6FU/O3S8ge8=
X-Google-Smtp-Source: ABdhPJxiHHFLD6/cadSOQuLh7vEl8oHarWvg9HsjYA15B9pRsMB2I3aiJI4XQg+rKfrnWBaPrd6wzw==
X-Received: by 2002:a05:6808:615:: with SMTP id y21mr5727694oih.149.1643835363679;
        Wed, 02 Feb 2022 12:56:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:128b:: with SMTP id a11ls9971499oiw.0.gmail; Wed,
 02 Feb 2022 12:56:03 -0800 (PST)
X-Received: by 2002:a05:6808:1152:: with SMTP id u18mr5784133oiu.11.1643835363360;
        Wed, 02 Feb 2022 12:56:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643835363; cv=none;
        d=google.com; s=arc-20160816;
        b=Iy5/vcPXjIEZ4ZlnaeUcxYrAqVsfsohFQOovjqqM+vCEiYggF5YN6G/XfmfIzj7NM9
         lYMvulV4TDaLksficmIi6m3weQELoKarmnEjult0H/rTKrpAgM8cHiUdKn5Ye9Ursg0Q
         P0tNyt4jlOOw8YnbCkNh5qiy39wlW7+AO+7bJKhXr2F623F99t7jfSXb8DEDl3ltT03h
         JzKBDZ2nlAYI8jeempmoL1MJoC6hundwdCDPc1rR9ps0VqU5zAEjeteT+fedlMy9R2Ua
         t55ugKBPmqQLbSmUi5BfugOFcQIbdRlUpjLdo2g8k5zLgc8CNMaFZp/suGA9SfAXgBtw
         3pIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+MOwEsZXX1JZ92aEsSTA+4bQ9fwXO7uqj6443Uicqb0=;
        b=fHfOvj7UfydhOfwiF2sqrr/UwzNW21tddqxbM5yfAeRjAzAQhx9f5zq/UKH3IXTnAd
         X1TEQdsgTzNC1qa3Pp6kEmKABt9nz868aj8iz5cZIUJHxjhnM6Uv2O+jSI5F/wIccVzG
         lf0Z7QG6Afrf9c2v39DcaiWnREztgokknxhLpjq0sSgLvKarauUW7MnDxzFLbhiFFAT1
         XeEy717IeaIvWXyYFS4dZWIkZlbljd2HA1gDdHN2hkK/guyOfvfTXwHgJ1TenLtF4G50
         Lx8MWh5DXW45+lxGjqIwWYfMtkM9SGcpza68eAQ6wcdtX+tWEwdpgT3HmRh136xkiqwf
         m4PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Mb5OwFKv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id r31si1969264oiw.0.2022.02.02.12.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 12:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id m7so506129pjk.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 12:56:03 -0800 (PST)
X-Received: by 2002:a17:90a:548:: with SMTP id h8mr10099210pjf.109.1643835362724;
        Wed, 02 Feb 2022 12:56:02 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a14sm28023672pfv.212.2022.02.02.12.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 12:56:02 -0800 (PST)
Date: Wed, 2 Feb 2022 12:56:01 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202202021254.5A1FD4FFBF@keescook>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
 <20220202160903.GA2337834@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220202160903.GA2337834@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Mb5OwFKv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

On Wed, Feb 02, 2022 at 08:09:03AM -0800, Guenter Roeck wrote:
> On Wed, Aug 18, 2021 at 01:11:17AM -0700, Kees Cook wrote:
> > With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
> > coverage, it is now possible to enable -Warray-bounds. Since both
> > GCC and Clang include -Warray-bounds in -Wall, we just need to stop
> > disabling it.
> > 
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Cc: linux-kbuild@vger.kernel.org
> > Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  Makefile | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index a4aca01a4835..af22b83cede7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1072,7 +1072,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
> >  
> >  # We'll want to enable this eventually, but it's not going away for 5.7 at least
> >  KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> > -KBUILD_CFLAGS += -Wno-array-bounds
> >  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
> >  
> >  # Another good warning that we'll want to enable eventually
> 
> alpha:defconfig:
> 
> In function '__memset',
>     inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
>       |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> In function '__memset',
>     inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
>       |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> In function '__memset',
>     inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);

Thanks! I'll take a look. Every instance of the "[0, 0]" bounds means
the compiler believes there's a way for the destination to be determined
at compile-time to be NULL.

> xtensa:allmodconfig:
> --------------
> Error log:
> In file included from include/linux/uaccess.h:11,
>                  from include/linux/sched/task.h:11,
>                  from arch/xtensa/kernel/process.c:21:
> arch/xtensa/kernel/process.c: In function 'copy_thread':
> arch/xtensa/kernel/process.c:262:52: error: array subscript 53 is above array bounds of 'long unsigned int[16]'

I assume this is a weird cast. I will also check this one out.

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202202021254.5A1FD4FFBF%40keescook.
