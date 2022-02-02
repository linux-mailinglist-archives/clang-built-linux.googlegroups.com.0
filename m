Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDH75OHQMGQEKGHOQPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 370584A7AB7
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Feb 2022 23:02:53 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id h22-20020ac85696000000b002d258f68e98sf399079qta.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 14:02:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643839372; cv=pass;
        d=google.com; s=arc-20160816;
        b=MeiOCk1KPq87fmoEWADTE/HZbqVTOPKTFMzgZc4orR/sRUqIKNr8e4iaLHvSUPsRGE
         BzmkMOWBANptE3ZOk133mIp9t5AlZwkhzfgI/THEtvoslXk5LKBrOm/We3gMgJyz8b5z
         IJNpbxZAu6bAYWcNk+SZGET/ZqaE2GbS2WZK/XVk1ptll+45mUEgcQpeMK0PTnVp+OGb
         Arht0IcANY1/jZs9JFfdU7mzpXgFbZkvQBrTdf2/WuJsDY07UaVXs9sfIeHSNoBeg2bd
         X+a77sYJNN+Pg27XZXKDFMlGK2IPyxDGZTB28MXcWwxnZ1Kpxpn1vks+9+00kbB0ZuVr
         KCpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4bGjgVoNeumorYpBLeYSZEdmzzCaMYDRpVm9JHqRnEM=;
        b=mS6I2iY7dZpWHCVCugkh7LaHfVDkDcf79QyZkpDNl7Qod+/8BQ/uFV6CxLLPeSlUMb
         1KM8jZqmp14ESrI6pLQvi4ytJxmgHY+a/qai/FavWT6k8ZejkNmigDs4lStnZfRrnlic
         Fblas9c6MKDyNuNBuDf1LLVLsC/W+pMCyhIaBkDDCTbAdmhDQyIj3iEod+7437YsCeqy
         f2zN5yjH2xRc0H3G+x3wsYyaq3ME6KzFdQqRP5dUMTdtcaG8/xDWdeVY63eJz8X1Q/4t
         164jaRiG2RAH3ZB/I7Kch0GyGHAu8FEbsGWVAENNp2UXj9pwg5R0nPHpjFGhxuFqQb7N
         ks8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OEMBwPrv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4bGjgVoNeumorYpBLeYSZEdmzzCaMYDRpVm9JHqRnEM=;
        b=JaidKYG7Ya8ulhqmh7E4Y+b6RR9AZiToyp6Sml5ArZoDHvkunkIvXPKaDvkdZNbJMB
         Sx5RWMiAloAag9fUGpnACtx8gNINqNdeAK4uUJaelohKzSBSkmCYFgU3ik99cU1xZcXp
         Ma32Rf5U6MHOP/Rhkf4qvwSRtZCL4f56T+6imLLVBCYVeYNEaqbW4h45lJXXy66A/yXW
         4d6WcxMFXvv6wubIv00kdELqRSgoTXFtAJb8A6Bv8rQA1fbm5KC04NRY+7UpQegktNVH
         JYM6GSaLokOG/AGFpUvW6lYg6gN+HTGybyrIAx1M1aJiyIeLO+dzVS6dY2sSCJtIIgCd
         zzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4bGjgVoNeumorYpBLeYSZEdmzzCaMYDRpVm9JHqRnEM=;
        b=woBSnkPg6Wqimp6TVKzeYWWwbJBoijAwNvDRseFK9JtDNrTzTte50on24uVZ/0UPOe
         S7V+H3OafT+s6dKlgCh/n8K1KdT5rTfnCcxnofCLtfT9fIieFLYxlDSU6HGB0XV4+Ab2
         LqGmPW3RYhyMQwHzfc6DdRMLLvhw0sSP779rWYjrcPWEP7kf5vIBQjY90yeiqLfVm0cM
         KOIetkp79tsOrvpgtLpMVM8HHjCdNN9wEjHG896bz0KwkI4jh7uoFwgF4fO1gPpK5xxR
         CG8rRczXuBfrtdoKfsJa4X1MeO/t6gDsRbYogYV4AGFi8dQM6oL30D0xUxX6DHY3MoXT
         moQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hNSobItyu5DlAstZpviZaTJyXzESKAd1LBGjdTk3x1rsNeiQe
	RwjBIonT1ySVW4/K1VfCiDc=
X-Google-Smtp-Source: ABdhPJyG6u3/u+a1kCtwMMpVJ5lYhJW5SvU5XydzxcdfHlN2hPvSTc9e90h+QLduQdlyYr+uF+ETjw==
X-Received: by 2002:ac8:5f4d:: with SMTP id y13mr6620768qta.610.1643839372206;
        Wed, 02 Feb 2022 14:02:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5fc8:: with SMTP id jq8ls11348175qvb.5.gmail; Wed, 02
 Feb 2022 14:02:51 -0800 (PST)
X-Received: by 2002:ad4:5c8f:: with SMTP id o15mr6055279qvh.111.1643839371709;
        Wed, 02 Feb 2022 14:02:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643839371; cv=none;
        d=google.com; s=arc-20160816;
        b=a9Cgi9Ar2nLfOqoMQ6+o/8twg1OyFn5nCM6GHAZzArSLl5DJ5wYdcTSG1vKd4yk4pZ
         UoGKRUnzIepq7AVMAQkJAo8hARfjci+crdCyxq8/nwfaQICS7WFaWIKxuIHY2Z7Nm85C
         sp5djLN+J9ibv0MDYR/YIKOVdF2ekpAf7ET0dYY8qj9DPX1DMaRrq4E3+5QHoQLEMLDc
         0sqk2EFpHNGg6ja/6PefSGoCMflGgrhxugNrLpPTalsNBka2eK8AMEsPishcOVFQVjVW
         mhkqAZoVQui+c3CTcPNQdcEK6wiXDLxuzr42yFZndC8yAaSNx4UOgPhJXr5hUlH4D7UU
         SOmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ECaOy1T2k4+rTCdYBSi87MWLS+gUoT2Ik7Zjco3xvDE=;
        b=YzAcD6rM8hKQbJyfU54LhcFprzQmMPqeAi1bCuDjTiYPmXzwKLO4P/JZ05kT6T9Hd/
         W0RhL1MIdGW1Gbtg+OgUZ621dkn3i4F72m2hKAO+nwS8xBoeYDz6I6v6gxp0S7och4xg
         n/MdMN00MbLtVkvofw0jxb4zj/5Wj+8rbxvHJf2Kug0MunPR52aA6n0nRA3Zytf1CpVX
         Fh3ZCe/OnQkSs2BRpvI9ylD77soggZf+bbLZW0HU1ODiY6pPWY5apyAssbBSu5pR/OCp
         TdW0QyJgxbo3sfwMqjs8O4Ue3pFlx5THLwx/Y+gAevcGAOkFi8hUyHQB3Bw+bdkza6OC
         V1uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OEMBwPrv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id bc9si1360441qtb.1.2022.02.02.14.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:02:51 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id d18so464147plg.2
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 14:02:51 -0800 (PST)
X-Received: by 2002:a17:903:183:: with SMTP id z3mr33174467plg.127.1643839370759;
        Wed, 02 Feb 2022 14:02:50 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a13sm27967620pfv.97.2022.02.02.14.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 14:02:50 -0800 (PST)
Date: Wed, 2 Feb 2022 14:02:49 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202202021320.ED0050E32@keescook>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
 <20220202160903.GA2337834@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220202160903.GA2337834@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OEMBwPrv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f
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

Ugh, these all appear to be the same "gcc thinks a literal is an offset
from NULL" problem Arnd described:

https://lore.kernel.org/linux-hardening/CAK8P3a1CT+-3J7Ufv9TQwRiV4i_+FF=-+phwSjWafyGuPfG+AA@mail.gmail.com

What's annoying is that these values, if stored in a variable, aren't
treated that way:
https://pastebin.ubuntu.com/p/ZjZR2tzRpx/

I guess having a common way to convert from an integer (or literal) into
a void * that GCC doesn't freak out about would be generally nice.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202202021320.ED0050E32%40keescook.
