Return-Path: <clang-built-linux+bncBD763O5S5UARBAOF6SEAMGQELG65NYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 899703F0787
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:08:49 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id p4-20020a5d59a4000000b00156992180dbsf689114wrr.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629299329; cv=pass;
        d=google.com; s=arc-20160816;
        b=qYBOBwqce9PGai2Kp1Rj7iPClotY8HnluB7xBYkqqBve+7IhRwuNGgSXj6LHzFBhXI
         9w325g4dwYGeYsfdOUbwYkLfg65ZLnMvktnR8s9cd7U/Xhj1jz3sn0pNZ5lZ8W0Io4nD
         gK8BAU7vZscb1FXMNMDS2GcK9e1MyuNag5gw32p11li9QKI/+zM2lhCpHI76sPt9hnSK
         eJf/hfazfHvuGGsXdWhYpOHSGOmOlnQbimDcvofzX9Bi8tp2PuP9hhtEEjH4XhMQToIB
         /mXymPqM9NXW6+cimOTa72jROMefeR8i52dCmHuHhFc28yGNyXrOTnllBUnyicGOF6Gz
         kWgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=lhEQUN9mgM9Lgvdb/DXlsHh7KfFvEjfQTqauAHXSoSo=;
        b=yFw2NaD+0TwwcF0wLaP7w7OX/b1ZEAd2DUrydZbsEGSTrvmDqHwcgI854TlIlq+nK7
         bZR5RWvMG8D7UACAjQrX9nTNoPuvNzdx27UJlHlxlOyknHuvuweLtSszXiB0ZiL+YQjN
         Kl10aWZxyHX8u1iOhWJEWQ89XlPSrQEvM05wB8sMgA+YV6DkwB9gztHNFwLWju4aGwtD
         lGF12VZqDU9+KLyc00yg2rZtI+F5cvGRnsuSWYtXbIY6F48me1b4+pnCX6tu7zOlpTpg
         H+1DP7eKgyWO947EgEhazTF4/LanVZ+D8eTxPWTkvoA+380RvMEJdoO2+KU1RWGaCRU1
         CHqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=mBZoSz8G;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=rvVYonya;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lhEQUN9mgM9Lgvdb/DXlsHh7KfFvEjfQTqauAHXSoSo=;
        b=CRg0oJxR06etCNVtwB1qg0Bx0rEAk+Tp7rxcZau2TRfIWQuILUFbqKAo1T3JR8h6m2
         f7DPahmpKCBZzbT5T1aFTwk01Fj66u3/L20suw4mpLausBTYhttARotrlaubxxGKUhRh
         uScYCS+ZAiAPIaFvXusxqZb2nXjiv3j8fdcKrJKFlGq34h/po4ZHP+ywRYEvgDWxCnEf
         wFdTnERWp4XOfyVAeJsNwB37uPK2/cTPbdr2tB7AOg09Zn7vzOUtaHmhW1boaNL0Go3P
         s/Zxjqau//P4GOPomh4d/cTIm9wV9O4uFNLJez8DynPYmAxRM39J7tneaMBF/Pndf7d2
         uBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lhEQUN9mgM9Lgvdb/DXlsHh7KfFvEjfQTqauAHXSoSo=;
        b=AlfwZYFWNqHYVhQP/vINfwRFMnv8mkm0z+aQMeend24Ifn9/W+g6rKR221YrNhbsma
         IiAg1n4oUlwMojS36R2exk3jNt3ZZYjSkjkZ1toX61F88t3BOuoafieDv+G+zY76sTQd
         JsBuPTryBRhRQsVcnOyaX6NLRC04NwNcU9HvXSnfkWjOED5e8iblc+IwKvR+qdfQkgEK
         6sMlTeXucu4J20/zcPMiAaAzrFcSDU3vSe+K1HzERPqRQR5sV19TjobeOHOB/1yI/2Z5
         v+F8EhCcBr9bya1dp1XLex861tpyymcy2KMYbJyJjc4x6ODY/Kxk2tpU48Ldeq2Nq/73
         b/Cg==
X-Gm-Message-State: AOAM532Y8hEW5pp9guCKnDzT65SRTY9/sNSit074X91rgG1V/5eQFEH6
	Kaic4fpd/7GA42aZm5gXNos=
X-Google-Smtp-Source: ABdhPJwPWzJA4PsTKZNx/PWaDY25bTFk9LR9oMI7UOGxcO+TkjZFvxRV6TaLTHxJLBkdQpABOlsgmA==
X-Received: by 2002:a5d:510b:: with SMTP id s11mr11714794wrt.63.1629299329275;
        Wed, 18 Aug 2021 08:08:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1994:: with SMTP id t20ls2728050wmq.2.canary-gmail;
 Wed, 18 Aug 2021 08:08:48 -0700 (PDT)
X-Received: by 2002:a1c:4384:: with SMTP id q126mr9139551wma.49.1629299328240;
        Wed, 18 Aug 2021 08:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629299328; cv=none;
        d=google.com; s=arc-20160816;
        b=L8Ktmz+V/sRsjEAMr/wJwMHC04Uhj4DAFbKfJyadSQ0o15LNGFRHqHZqvlmTbBMTq7
         IdE9oLdLlH3/mf1EgU5ni029LiuIVibkg94Frmm8tiB64H1KEa/pHARElO6ubSYy2YPP
         IQnadtI+2vRIf3/2/TVlalxAiLNfcivWYlaNDJHZOFYl2LJwJzE1VGlE66rqHcyA5A5N
         2k0SZyxOgFAFBzUzSeqltEdrnk8/3BHDsTVbHQ3UHJzYQZt7RmXonW7AB/SQ+u5C0W0w
         0teYdQFtToB63wyPL8FlgpuqM86yueNQE6yBTcrRtZcDiFyhFBojUzl1YZxREaW6j5lN
         5A3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=zDnhRncZEBK7QOE1PSqSdUR/el9JR/iDyYbLw5ADBrw=;
        b=XFqI0JE33Fz+Avl+l0ag0bXrLw5S/Z7Wj2kK81XG9Eo+IyPfvHaH0BSzS1WxMnlRT5
         bQIbgyHpECcuEBZN6AT8OxfPSSTGpFG8hki8LtI66fhocoSSBtNZE2if2L7n8wYjvAII
         41BJhjI+dvLduJhKkP0u1+L3nJR8ORkEgovMj837Nr1YzGNfGNM8ER4OhTsCboD6Ahog
         p3TVEK1Mxb4f0ePsmzD/yuHOUw3/nNL8LP5pYizrTTX63rRfdEE8JSeNd6G1zrqIdNDG
         VJBwu3GCFAEqFNN6FzmxKE1MuL0Lj5WeC7Cd1QVk0f3LmOGbmb2jQO4zB7KNwQa674wu
         ZaMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=mBZoSz8G;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=rvVYonya;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org. [2001:67c:2050::465:202])
        by gmr-mx.google.com with ESMTPS id c4si2491wmq.0.2021.08.18.08.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 08:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) client-ip=2001:67c:2050::465:202;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4GqWWM6PTXzQkcq;
	Wed, 18 Aug 2021 17:08:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
	with ESMTP id z8NIfc79jt6B; Wed, 18 Aug 2021 17:08:41 +0200 (CEST)
Date: Wed, 18 Aug 2021 17:08:40 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Borislav Petkov <bp@alien8.de>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>,
	"masahiroy@kernel.org" <masahiroy@kernel.org>,
	Christoph Hellwig <hch@infradead.org>
Message-ID: <1708009975.124311.1629299321026@office.mailbox.org>
In-Reply-To: <YRwBs89eogLJEiRn@zn.tnic>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRwBs89eogLJEiRn@zn.tnic>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: B96591838
X-Rspamd-UID: b07b87
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=mBZoSz8G;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=rvVYonya;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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


> Borislav Petkov <bp@alien8.de> hat am 17.08.2021 20:36 geschrieben:
> 
>  
> On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
> > Add new generic x86-64 CPU tunings introduced with recent versions of
> > gcc and clang, as documented in x86-64-psABI [1].
> > 
> > This is taken straight from graysky's CPU optimization patch with minor
> > modifications [2].
> > 
> > [1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
> > [2] https://github.com/graysky2/kernel_compiler_patch
> > 
> > Signed-off-by: Tor Vic <torvic9@mailbox.org>
> > ---
> >  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
> >  arch/x86/Makefile.cpu |  6 ++++++
> >  2 files changed, 31 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
> > index 814fe0d349b0..a2c872aa5a0b 100644
> > --- a/arch/x86/Kconfig.cpu
> > +++ b/arch/x86/Kconfig.cpu
> > @@ -294,6 +294,30 @@ config GENERIC_CPU
> >  	  Generic x86-64 CPU.
> >  	  Run equally well on all x86-64 CPUs.
> >  
> > +config GENERIC_CPU_V2
> > +	bool "Generic-x86-64-v2"
> > +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> > +	depends on X86_64
> > +	help
> > +	  Generic x86-64 CPU.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.
> > +
> > +config GENERIC_CPU_V3
> > +	bool "Generic-x86-64-v3"
> > +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> > +	depends on X86_64
> > +	help
> > +	  Generic x86-64-v3 CPU with v3 instructions.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> > +
> > +config GENERIC_CPU_V4
> > +	bool "Generic-x86-64-v4"
> > +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> > +	depends on X86_64
> > +	help
> > +	  Generic x86-64 CPU with v4 instructions.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.
> 
> Every once in a while, patches like that pop up without any real numbers
> advocating for the additional and perhaps unnecessary complexity.
> 
> If those -march switches don't bring any measureable improvements - and
> I highly doubt they do - you shouldn't waste time with submitting them.

Borislav,
I ran some quick checks and benchmarks, and your doubts seem to be justified.
A 5.14-rc6 kernel compiled with the default 'generic' and one built with
'x86-64-v3' even have the exact same uncompressed file size.
Benchmarks were inconclusive as well.
So I will only resubmit the first patch of this series, with the changes
suggested by Masahiro and Christoph.

> 
> Thx.
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1708009975.124311.1629299321026%40office.mailbox.org.
