Return-Path: <clang-built-linux+bncBDY3NC743AGBBNPD3T4QKGQERQVOHXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C55224504D
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 02:52:07 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id a73sf7200614pfa.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 17:52:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597452725; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmzGpYdsGsfKLxwXMvWGFlJwhDxZaC8kA4usEw8ioJ1nVxa9/THfUmP8voI5+Ns6jG
         Wg3RRNfkHByX+8F7ZCB7/Rm0+ztbo+CUAebjNxifoXed0DY3/pmY4NrmMLGT/257nMun
         ETiMxRSCcHrWrLAJ1digmh02FV0J8rDVvfdur/tYdztRmPjOEmL8SSdXEF3Okn7Fr1Vh
         l/KlaNXspGCbiQ5CmSsEGb2G21K1Q637Tj59wmbyuTGtFiXMpM2OSyMx2fqD2Frl9/yD
         pOtQrI5x5WDfgxPDZtIjTFLhSMEhEoPxH+0pxdlRe4TWMki8cOxqrswDawVtn720JoMC
         kxXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=IyJwDtLxS2iR/48Fbu87gMLsmXo+ePdLzTl4LSr3XBY=;
        b=Puz8YI1DvoULM9MQ/AWHGLMTUmMZbmHqwqhenCwOES0HSAQbz7KO4wNFVI/X9sL3W/
         lAShv5O1PIMzJzcJSVGW6xsolOMlnhkLpQS+N8MwmLe7+MB/7SvyZPdl5c1wZHGkUfJy
         ShanEC1VkNFqPmen4/i69ALsPdQO3fPRdk7ohsV/T9M702RdjFK6j5EAi11grb5sG6xX
         G50kvUaCwOz2ivQvwwkITgmZTgUvPVsdAd1YYwLnMxSixW1Dwar8MDkHC5Z4hpRgKPWw
         n+XpcDhqqk7ixIa2yiXAWNn/lg3FUWkMN1LUxlhEhffNK8r0T4g45PFtFE3gL+PeNkFH
         xRKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IyJwDtLxS2iR/48Fbu87gMLsmXo+ePdLzTl4LSr3XBY=;
        b=RKLqmeys74ia9JQpEBXqrb0gBrAsSY+3kG0lfWbc2xT6Sf6cmVYSyXj1cOJE9LkWbB
         DemCCdVEsLzWwPJGBWhLUCcdk2LVr1/lrSUDLR9hcbbhq+RD/MKNbla6HFNzQkG7kYSA
         Eax7siJv6VPBIC/92oI+Lw/mNk2bFoAtrnpAmK1KPORkYdbLHBnuqdCvpYtfrhuJiimp
         NE0pS9UyF1C6VoXrKK5yOFrL223yQxj8NQtlyNcl8L0BCcKv6s507hVEO6InSJH5g7gf
         fVJlSq3x4/LhwZDDSD4m7gviu7Mv3iNyg3zWUAxSpfhr57Q/y6YcQf30yhVWg6MGBRDz
         +1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IyJwDtLxS2iR/48Fbu87gMLsmXo+ePdLzTl4LSr3XBY=;
        b=BZ7YgrNw4HPuox/+9RLUIlflkNklr0Kfn8TAnHjfPoxKdWuNdyoJsUq7htiqhqO2KD
         Q/vyREQggx2JJq4zWFQhDr2JxQWw0NWlMUgdjZLCiTHwygaSuBPM4MD45QHfTl1hItkp
         1RefFw90At2TLtjnRSyOge9P5EWGWXs57agmbooRiZk9wMWBpvvZUY/VOTMmKmEayPyQ
         BQfdBbcvkqifvABFPmLcB6jI1f0RM3PeVcPJ6gmucSAg0eBxU0OGyo7+fdq3T51FJfSF
         6D+VYz/zl4OmRLefEHuJ5O2Iqbd9SIy8/II2iIiCpD6ibZFdbOveyMS9Fvhc76JJTMf/
         +Y+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CtN5FQ6pRrEdtjs4givprtjoIYalFIDdeVhiAMfmFqEy+36Mc
	rWdXJefLYkir6izdhY+VW8c=
X-Google-Smtp-Source: ABdhPJzzcgj2gPLkGyWSYcVr1i4t0cVe7b5DV1kzdteoFvUsQMlYT87wZGR7JZMOwfjwJ9VeBDjfVA==
X-Received: by 2002:a17:90a:4709:: with SMTP id h9mr4097460pjg.235.1597452725570;
        Fri, 14 Aug 2020 17:52:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b12:: with SMTP id b18ls1492448pfb.8.gmail; Fri, 14 Aug
 2020 17:52:05 -0700 (PDT)
X-Received: by 2002:a62:4c7:: with SMTP id 190mr3645944pfe.103.1597452725118;
        Fri, 14 Aug 2020 17:52:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597452725; cv=none;
        d=google.com; s=arc-20160816;
        b=zfkS4JIUMgtfFtuF1DL1DhAtHf+2VlIQS8fC3bLuuZT9r11jRMq0KY1ewTQfsUEqBl
         UGWPMpWITO1/ENFjwn1FDzf/55OYu5D/Y9AFuoL/nCRse0+zwGU7DcIAx8QfvYlylI9T
         /p9x6WtVOt59Nq+wxu04Dky7/JE3N/dAvpEdLx8SgOlBfbaA8ETO8jTYH4dIiFkJYg6L
         XZbHKxZkZfPB7pu/Gau2B6sbORrbCpxtFeNryreT8J/8xms77MTVVI35NnItlZL5iuRS
         /HsO/ByPb4K2WJkgwph4Mu/4ouVxMShkpi9X2El1THRDdgl25OUwAb0mSKUYqWKHneGj
         TPgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=plvWGv6nd9zcUlBySh/yFb002eDP0QZEJuCCBvvxP2A=;
        b=NHIGS76z2jnOyu2abkwaNGMGSNX6yx/2mRs+rwsXmWNwbcdkqW1GxBO1eYCYskK95w
         lsqIjWdS61A1k4bVJrhWOmqDyQMnFXuuaZ3iRdbcupbnytjmUsDW7HusMHS7wDxf+maA
         k3KFxw43E5SQVHKd5g9vT0iIj9PgRMCie/jyePUovfVvemdKyBVsEC1lqQ54bVQj6ZNH
         6reXj3/1BXm5VzIODE1ZBqLWsnZ4cT2M8DyM+az1k9y0bn5a53Lwo8hV8N5q6bkmGeqh
         UIPYuEqRx2TjSX7AQuwWK7rYFq1/nSJwpMzP1Rbq6XsEMZuvGK/mxPpNyRiaNY9tEI8S
         LG7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com. [216.40.44.94])
        by gmr-mx.google.com with ESMTPS id v5si551804plo.4.2020.08.14.17.52.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2020 17:52:04 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.94;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 2CF8C18026226;
	Sat, 15 Aug 2020 00:52:04 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:3874:4321:5007:6117:6119:6742:7875:10004:10400:10848:11026:11232:11473:11658:11914:12297:12346:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21627:21990:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: feast89_3216ee827001
X-Filterd-Recvd-Size: 2404
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sat, 15 Aug 2020 00:52:01 +0000 (UTC)
Message-ID: <562003af51ca0b08f2108147b8d6e75cec18f3fd.camel@perches.com>
Subject: Re: [PATCH] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton
	 <akpm@linux-foundation.org>
Cc: =?ISO-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>, Eli
 Friedman <efriedma@quicinc.com>, stable@vger.kernel.org, Sami Tolvanen
 <samitolvanen@google.com>,  Tony Luck <tony.luck@intel.com>, Yury Norov
 <yury.norov@gmail.com>, Daniel Axtens <dja@axtens.net>,  Arvind Sankar
 <nivedita@alum.mit.edu>, Dan Williams <dan.j.williams@intel.com>, "Joel
 Fernandes (Google)" <joel@joelfernandes.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>,  Kees Cook <keescook@chromium.org>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, 
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Fri, 14 Aug 2020 17:52:00 -0700
In-Reply-To: <20200815002417.1512973-1-ndesaulniers@google.com>
References: <20200815002417.1512973-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.94 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-08-14 at 17:24 -0700, Nick Desaulniers wrote:
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.
[]
> diff --git a/include/linux/string.h b/include/linux/string.h
[]
> @@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
>  #ifndef __HAVE_ARCH_STRSCPY
>  ssize_t strscpy(char *, const char *, size_t);
>  #endif
> +#ifndef __HAVE_ARCH_STPCPY
> +extern char *stpcpy(char *__restrict, const char *__restrict__);

Why use two different forms for __restrict and __restrict__?
Any real reason to use __restrict__ at all?

It's used nowhere else in the kernel.

$ git grep -w -P '__restrict_{0,2}'
scripts/genksyms/keywords.c:    // According to rth, c99 defines "_Bool", __restrict", __restrict__", "restrict".  KAO
scripts/genksyms/keywords.c:    { "__restrict__", RESTRICT_KEYW },


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/562003af51ca0b08f2108147b8d6e75cec18f3fd.camel%40perches.com.
