Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNUL5WHQMGQE7CVTUJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B494A7E2F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Feb 2022 04:02:15 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id c7-20020a25a2c7000000b00613e4dbaf97sf3163875ybn.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 19:02:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643857334; cv=pass;
        d=google.com; s=arc-20160816;
        b=YxU93ovK3wVRG6TwFbKy34Uj8cc2kbbqFkvxEFvbzE2HHpO4OjiVqBpD5uGTL8KuK6
         1i3UynHVYBqof0a+XUgeBKJs0WyuxPtht/1m+Us62gmGcAdSble20eMCr1Dh5UnPKFKz
         QNVs5TV2n7+WvaJE5+K2mJE1w55Rl0rC2hJi7F/c520/LBvHtH5sKzbJ/uVaX7mIgz7S
         smgdGNBK7X+VJv3cOqbM8T0SvIuJ/H8diWncCBrtSrkz7lOKQ607xib+LkV5Xm0CMQ3V
         sNrq37AuiDNZhqz94Zm1tkW5ovo5VZ8a3lWA7i/SGOIVkT5PFvtonb/zr3O/o1BYSZwq
         o/Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JOAMp68g1PbIatBFvnF15M7WrnayVNdXLkHmfIqwn6Q=;
        b=keZeoCGYggokp48j/SWN9sxUsGrIy1XDNclx0S8reNwPUvAJ8OdYX7tZUXVz72dfpr
         LV9I4YVrSFsbQYJmPvCZLYjqLneSJYOMC2k9xizE/4beNgj3ZPRjyKhtkMeJlGovOcv3
         oOPSyWhYpCf2thyseTRP/3EU7aQ2q8yOP16LFW+vmUXLSuTy8LdShKpFrdQ/7873o7wj
         ssmC8+u5zWLvQy+xbujwCAP6Ur99r00bf+oczgeYGVesGXSExDdXLQYfPvKVWTnctEYZ
         /uFeayCuCayx7qzcNFjKsAKSmh73BCFZWKLlnts+37C6c8m2exq9B8fh49a3fuwSEC8x
         mMtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gldBUpRs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JOAMp68g1PbIatBFvnF15M7WrnayVNdXLkHmfIqwn6Q=;
        b=gofX3Qs/hFH0odXGquvnuOkKFE0pqokp2FeqYUi5Tw+TO259KMlRdJqyk01K8UP1f1
         q1SBAOZMlsfL4ZHxXsrI9x9RYO3wU79g791lnI91UjE59f8kOIIAwDGZ9AaUdMQQNLu7
         e53pfKk7PnH2fUylGNmdBy8B1gqrqzDHVDTYbd7R2dm6NVOIJR28I33klRkmpXz0c2wz
         WKkPNV6EvRlQrR+ARbginD3QBDqrTptP/BiyQ/WxjGXpbPgG361u5ujXFZtbWBYyWu8K
         k16Pv3LnJ/wAySOvQr5HXtROM82yHlGXChPR8OKTVmgcwVMZ5iBPT+qkF15Z50PZ93Gv
         HOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JOAMp68g1PbIatBFvnF15M7WrnayVNdXLkHmfIqwn6Q=;
        b=b8PQI24tCreSnVb98xNoQ3lWO5bAFbw8ieoVghkh7h6S5Xqll3ra5VLMBpJ8r9lQXJ
         l/pv5Yklj9lhjZke+2gucOHqEuOzXZ+kjXiho/q7baEVHkhLoP1e9eqBE6PNf2MbS3at
         vRxcRYaQBnaNvDaYj87DNZVrxO0Je071D6NbOKcyHsvL/PXufODV7n1Qaaok7luiwL0W
         823Ha89Jz2GKiwTEQ4F9Am/6t3zGByb2FMz59RaW6Bi5lTANNchU29KfqBIcx2zThzh4
         Q8rl+p9iWDbRSIukWB/i3Ua/j9xu+DEgeg7Ie4sdTcHzoQrkIgy4hj/f/inQNHnwzxSA
         zx3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CFGUPC0pensV5Q/Yct5zZBox/Vk0ifzvH8PVE3SO+A/HXb9o/
	Cw2sElwtb5kEYU1D1jqcIw0=
X-Google-Smtp-Source: ABdhPJwJDky7b/I+fJrwb6vFKvpqvrKukl6pvYvMVmJ8IBiyLukMu2qDJ9p1oYTFcHyKOTJnGkZkXw==
X-Received: by 2002:a81:ac09:: with SMTP id k9mr960308ywh.115.1643857334210;
        Wed, 02 Feb 2022 19:02:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:684c:: with SMTP id d73ls17151380ybc.10.gmail; Wed, 02
 Feb 2022 19:02:13 -0800 (PST)
X-Received: by 2002:a25:38c1:: with SMTP id f184mr34889368yba.447.1643857333722;
        Wed, 02 Feb 2022 19:02:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643857333; cv=none;
        d=google.com; s=arc-20160816;
        b=cDHFM2djT+oQ60jJPWLVZuTMTr310n3QuRQdRkkpnlKwriCOu32H7DExEvaYt9Z+27
         yxfkFnk/k7BpZDLN6w8Pzr6rE0prY02l4olD0tthnQD7X86TPMXiA+DYHBjgjJhI8MrF
         Z8x7EcgdtGpSpTJ32p2YzrWq7TlehYJ48yV//6Hv/gOst5r/WaTDynkkVT6sIYJM7bvk
         Y3VlWApjoNvV2AWAeFn2CJxzp6oPP/wfyup1eWrEUru8GEyaxNaQRvx9sVVznTaetvNV
         u+HAkNUIt6hGdd9aPSf/IY9rlOMe6MM94crkWjNXF7CCp5JL6NjkZzEKHcVz3/dn8QPF
         EgMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fi4i69yyHlW9dNLZasSOsCzYr8hNca983K/7O4yLzcY=;
        b=o71WalNA3BmDyHR7sWGus3u6IuahjA/0OIzbvrMIv1ecs/hRW0uBZV9pRykxmhcrwe
         oR8aRRFGJDGCRZq3zEEQNSTuNK17+Jfb9yo/Kd4UUViYroFhQ+EWAXqsUG9AXbiNkSBW
         q8bI9UFZXihM+h9tFRKiAhVDBKFTWdGLPFuIAXyePbfYIf9hldh/AoWxcTpKrpxDmFvN
         7wRmiepZsAR1m4HFEmyqsv6ZzevGwvEYZIQjI3XSLqoqmzf4ESvBu9RJpFl4AVY1tycu
         MxPprz/MdJizo4ibAqfaZtTiAjU5ZeQUHVMRfLxb+/XVWoMtEPGmRoMSCqyutz2eQo38
         zcSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gldBUpRs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id 188si3363903ybc.4.2022.02.02.19.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 19:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id z14-20020a17090ab10e00b001b6175d4040so8755076pjq.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 19:02:13 -0800 (PST)
X-Received: by 2002:a17:90a:e2ca:: with SMTP id fr10mr11469589pjb.51.1643857332940;
        Wed, 02 Feb 2022 19:02:12 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n22sm27145613pfu.77.2022.02.02.19.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 19:02:12 -0800 (PST)
Date: Wed, 2 Feb 2022 19:02:11 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202202021901.ED81570F@keescook>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
 <20220202160903.GA2337834@roeck-us.net>
 <202202021409.2AA6A4246@keescook>
 <5ce016f8-fb4b-ef50-c543-886b4cfda225@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5ce016f8-fb4b-ef50-c543-886b4cfda225@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gldBUpRs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

On Wed, Feb 02, 2022 at 03:21:49PM -0800, Guenter Roeck wrote:
> On 2/2/22 14:11, Kees Cook wrote:
> > On Wed, Feb 02, 2022 at 08:09:03AM -0800, Guenter Roeck wrote:
> > > On Wed, Aug 18, 2021 at 01:11:17AM -0700, Kees Cook wrote:
> > > > With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
> > > > coverage, it is now possible to enable -Warray-bounds. Since both
> > > > GCC and Clang include -Warray-bounds in -Wall, we just need to stop
> > > > disabling it.
> > > > 
> > > > Cc: Arnd Bergmann <arnd@arndb.de>
> > > > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > > > Cc: linux-kbuild@vger.kernel.org
> > > > Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > > > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > >   Makefile | 1 -
> > > >   1 file changed, 1 deletion(-)
> > > > 
> > > > diff --git a/Makefile b/Makefile
> > > > index a4aca01a4835..af22b83cede7 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -1072,7 +1072,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
> > > >   # We'll want to enable this eventually, but it's not going away for 5.7 at least
> > > >   KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> > > > -KBUILD_CFLAGS += -Wno-array-bounds
> > > >   KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
> > > >   # Another good warning that we'll want to enable eventually
> > > 
> > > alpha:defconfig:
> > > 
> > > In function '__memset',
> > >      inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
> > > ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
> > >     37 |                         return __builtin_memset(s, c, n);
> > >        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> > > In function '__memset',
> > >      inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
> > > ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
> > >     37 |                         return __builtin_memset(s, c, n);
> > >        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> > > In function '__memset',
> > >      inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
> > > ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
> > >     37 |                         return __builtin_memset(s, c, n);
> > 
> > Ah! With Arnd and Nathan's help, I saw:
> > https://lore.kernel.org/all/20210912160149.2227137-3-linux@roeck-us.net/
> 
> Guilty as charged. Sorry, I didn't try to analyze the problem,
> or I might have noticed (and saved you some work).

No worries! It manifests as a completely different warning. It just
happens to come from the same internal diagnostics info, I think. :)

I was just delighted to see it already had a solution!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202202021901.ED81570F%40keescook.
