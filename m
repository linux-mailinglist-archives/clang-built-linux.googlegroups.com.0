Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBYF2TWCQMGQEEZ7OZHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C1838C079
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 09:12:33 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id x26-20020a2e9c9a0000b02900eaf62d380esf8498153lji.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 00:12:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621581152; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ga/YXPYzHZVAIcgA9yK1CQMwgRgONKZulyJTBsUysIsDRcdFuEHuR/9+D8wLPxagy8
         3DiZTaxWdaYadHMUXJf3Cs440J+APB7qEtorUI0AAApNot4ghfi0ezgkWQzAPPV32DO6
         xYnGf1Jrq5ukkNkKiiuU0AeDZwxa53I2/InjPi46ntStwTlcabgb3NhUQwwmH7plo0Dt
         M+tgRUZreh8p6ubbODwaX3fe4dDC6h7FWl8i4oCwgxuhBgEAP/wWr792KImvpD2ey2U2
         KzzVgps8fcgMkmfdrnM2SlP2Y+lrHjIM7gImDIoe9I+U9j6Y6lx0MEzwIfWUTzM54tQH
         3MvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hAr3VIa1ppolrObtAb8LLBhkcz4fJjgye3ofE7r3cBs=;
        b=LSHwVypWEf+2tSE4j62qc4lFlVuSY3W1JI0zwD0l0mSb1E+DYKCuD5SyjeOxTgmLiG
         O0M+rZc3fkXdgNCcH5nOGpwF8k8VTx0d7AL3zm64NfE3OTB4dUxr0q4HbGxrUJLEcF1W
         ZgBpyCXA+0hJaKXhgiPqvAfgoknt7h9cUFxgHQeAgoqgI/byoCtnaXtYslLji0R2pZ+f
         dgwsyXGy8WJJVbmrIZw68A1rSj7YkLrwrUXYnlKY7SD9tXvK3oUcnFwZQXVOMyX+HWUK
         SpZ21Il1l82IffhhivYsHBs1ATAP/afYYddQAJJCbINzfoHFThGNb/0oIAhjEAuU5kGc
         T4aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=tUDSC0ac;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hAr3VIa1ppolrObtAb8LLBhkcz4fJjgye3ofE7r3cBs=;
        b=eMaW0upIO/w5BYEYj4NSkTlje5lWAmipe8P+cI8AeBn4JmImfyglxgTQ9yJn546EgZ
         l0G0h3WSqZHaJpUPLQ1tritd+mDTHMBocIxocQ1dqu9AB2HaMjUi+oNu+/qESkRDUdUy
         YzaAhi2zN1o7jI9Wa6B21+49TZ9Gj7LBH+K1+JKClrFi1K3QQZDLyogANtSiRW5fBv+4
         NqxOu2yESXlPvKFMI2ZpowiiiQ9rfrAN86mR59ufI2xHlKsyWFs7dFv3fp1rIxpvHs+X
         t3Vi/PyzNZBZAKC9H5RJbGT+qazjxX20x+iLdG9yknuSZbvicjbZfK2Kdk7t0DNouAbb
         J0+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hAr3VIa1ppolrObtAb8LLBhkcz4fJjgye3ofE7r3cBs=;
        b=ZUlCHIeM61nQvogw6jOaVQ/ysLMSkzbrNi/qJq8C1qQYhOp3sl6JaGxp2pY2Edimsl
         eVSAwksvAmS6WSdOAdlEJNLv3qbO3MlMjlhPuMg2ktXdL29lSKs7cJMtO9aXh8Az4ieK
         /+ud+ibw2kUzbc6BPoYHpkpiIj7jWegRLMT2uwSLbY8djoG+i7yxsk5dh2rSoxk/6v/e
         vSOx9FXsg3TVzRMY+nvxCcCpF9t8IshMOloBAOnr2H4j+EiXePpWlrAB1OQpAW9TVlHo
         9mmf42/y7psr5SZeQaorimJbgotGrTTMm0+MR1QAzn0PjuNQNabUA5v+HL2oIN2DJXMt
         W2bw==
X-Gm-Message-State: AOAM530mjT7vyE65q9ci91zGCpGr+WWbkawijIGkrrWpe21c2UTEcZf8
	Vi08qQiWu84cQzits6hYMXo=
X-Google-Smtp-Source: ABdhPJyd4oicLgwKirSnmnu9SYYus5RncoltVMLpw5IWx2HjCYLbMZEm/LGidVhy7rbDSXpjoGYpsg==
X-Received: by 2002:a2e:9c93:: with SMTP id x19mr5766188lji.144.1621581152785;
        Fri, 21 May 2021 00:12:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a371:: with SMTP id i17ls1021573ljn.11.gmail; Fri, 21
 May 2021 00:12:31 -0700 (PDT)
X-Received: by 2002:a2e:9dc1:: with SMTP id x1mr5836200ljj.492.1621581151733;
        Fri, 21 May 2021 00:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621581151; cv=none;
        d=google.com; s=arc-20160816;
        b=W0BElRFtpSd/BfljO02Oo2tH+fuGiwwsd00lskItekMJSQIWL27/uhrYFMPUCxmeFz
         L4IlKtdoLG4RegpQ31PqVxqORjThoX8mNAH0KQycT5jlHKYBiUiHON1Zk/5/dldQMD3m
         1LWiup4FDysGiWYpMy64ghcbM/Th+qXNaaP+yyVipSiTP4HZuHo0PpUOtD+tywCWQnNn
         OMBMx/qQg6+MKtLYzeynDyu2YtEuhsBJYEg8Cf0GxrwZbC3MYm4fi9BcAVhUqCT99C2c
         B1N10r2MsjZ1n+yyjwm+NKDy4qr2Q2GPTd883GK6VMpNBZ4eWi6EwbnBLiYPx+nb1IbK
         GtnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Jp4zlznkpFx9tdWxRUV7M5qNhT0kZeoN0+qL2xikpYg=;
        b=Ln4ZR4bOYL20hQfV0zMfkbwuHm2EOpYbDDExro5QIfGo52s8mHjJEfkVvdDwZqFqM6
         gW7K14S0a0tjzmaTTIayiW5YNIBH5LTRhNoVKN+FIEH/9RrOCs9N07FDhuLvPPbWo7i1
         Ny7t2AitKrDUJYhndAjCK3YkJw1HXi3NdKt442qcWHUzIufJaFBSLk7YiC5IupIEp4xu
         HP38ao2OUYQ/Hm4P6FgtaaiajW64w+Bf+8tUMuez8HDP9pxXUkDvDER/aFwNOVFnFO4I
         YLF/9Wv9xpPSOLfMmz9OZ3DWzt/24tbwdhi37h9xhkF9ec13qlJotFCStsp+emwjZmr4
         K4Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=tUDSC0ac;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c17si182726lfv.9.2021.05.21.00.12.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 00:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 734F1AC1A;
	Fri, 21 May 2021 07:12:30 +0000 (UTC)
Date: Fri, 21 May 2021 09:12:30 +0200
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Martin Liu <liumartin@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>, minchan@google.com, www@google.com,
	davidchao@google.com, jenhaochen@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kthread: Fix kthread_mod_delayed_work vs
 kthread_cancel_delayed_work_sync race
Message-ID: <YKddXqLh6+Pj7wFW@alley>
References: <20210513065458.941403-1-liumartin@google.com>
 <20210520144845.52755f3af700a902e07e2ee7@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210520144845.52755f3af700a902e07e2ee7@linux-foundation.org>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=tUDSC0ac;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Thu 2021-05-20 14:48:45, Andrew Morton wrote:
> On Thu, 13 May 2021 14:54:57 +0800 Martin Liu <liumartin@google.com> wrote:
> 
> > We encountered a system hang issue while doing the tests. The callstack
> > is as following
> >
> > ...
> >
> > Fixes: 37be45d49dec2 ("kthread: allow to cancel kthread work")
> 
> Thanks.  I added a cc:stable to this and shall hold it in -mm for a
> couple of weeks to get exposure and testing before sending it to Linus
> for 5.13.

Sounds good to me. Thanks for taking care of it.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKddXqLh6%2BPj7wFW%40alley.
