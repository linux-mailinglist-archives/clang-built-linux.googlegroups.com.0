Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2OEQKEAMGQEDSAZ5EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6192A3D8494
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:18:50 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id a2-20020a0562141302b02903303839b843sf892268qvv.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:18:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627431529; cv=pass;
        d=google.com; s=arc-20160816;
        b=tw09CQ8VHY4WCzwDSd49nX6Ch9P+5NTpF09d4m3fsSnIl1m9uaZEBjiN7TPq3Pwr7j
         9zQpXnYJ8KyVGrY/AdenQssx7Ufke4xdKujv6707dv7FgTCup7CB5LqPdnevhVRch/Nz
         Cz1IRS+9z50V1A1/m59kML2YxW6LeW5aJDmQ3LXQELA8mbcJsIpqv8Kfb3pdcUpT5e6t
         SYNM1YSfBuEUQDUl9LUXcOUW5fYdG3o22BZQG4bq+5Ot49aRh4FlYP+ZJ4IqqF/1whZX
         aCXRvZYj4drRLRwmnAgQ/nUhFZCLsysX4UKqXHgp64Zuj7HqQSrRPkuFPWiE03pNx4Sm
         uW4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LcFo19QCqB408DrKH283YZ0ZVyZruUYj9H52mLGY6IY=;
        b=AUUF7RxF+1G8+KsFqd1RbaiGGmzd6rVWUp5fspT8FPf1ruryBZBxbsW/DeNaZxqccY
         4NzZuAclJa7lnQdlITr1eV2ewoWHCfJ2i5B068SatWgAF5GcPMU3oQmtjLTBZ6H+Fu3Z
         mv+6PMYPALbuZJ+I5tJrVXKtR2Wwa4Qz8gXgIuvHgU/ClDL5eAYj0JuFiWgFE6IpzENn
         9xslDFrZQD5as3JhhvH6MRdVxHnS475vXf1/sA+72W2LX9HNAkYSCuKdNbMRrKPQZQn2
         aRNYB3Mq6OZT/rUt8ME2MgkGi5siHZmBH8NqhuKKtWYECFl9kgjQpTgdAd/vY+EXeT83
         G8JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OiLLOwBj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LcFo19QCqB408DrKH283YZ0ZVyZruUYj9H52mLGY6IY=;
        b=dUUnQIs3pJQm61brz/h58Jx9ve6ONu6L5aD4RZNxpeGMZvUIsDbBvCb22givQVIzrx
         37zW4CjmNSktpG+8rePsqrID656M/xJEsY3ZNGFTI8dSJ6RvwYpQr704VvJniziCe7Vm
         MYxkCAFZUSdXrl4GSlOqC54oC5+tE6efPZ2gkAtLHnTK3rhWWKXd3HoTC087OBJcdCs0
         v0X4AG5MiEgPUYLZV8cBtHz9vnUb8wzvGNFRjeVGcZmuLfMPZ0L+z+xcDlolkg7fVWeG
         uwsvwBd+exdFen8iZkdB+K15174t6JB6+psvmmbJIUEg1A0jA1sYBvuny28jsRq3IPA3
         rmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LcFo19QCqB408DrKH283YZ0ZVyZruUYj9H52mLGY6IY=;
        b=s1aAiLNm2YzWJ6F0hOtsUzYSTI7iIF0ihSbkrTN9k6F0cd7tfBLu6y34kDYohkfpND
         nehiaPgEvVEh2MEirTyJDRWuy8f8mJJsw/JDLmooUCDxcFvi3YCyQ3aleh6AaD8yBfBI
         eyk6s5WQkc7+yi+m11ACGCu9OTOLH8IC3HFVjCT/PjDZS5QKRIhQcfGxJVWsdQ+xAE8+
         Ps4jvcSuqWzzgPLu2XfFQvG0Re0G7vBnK7y2ZsMCkexRN9KabtTC1NLwPprUeIAHp9PS
         NPN6F6E1GdZfnWDNOpTabw1rbRxh0UnznWSs+TZV/mSLz+5u/30TMZnvfpwLu1Y1TcSo
         YrpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316Ct7IRfvtS5dHoQEB7Ebl+RHKVKDFLZwjFnAYwcgxPZLMOwr3
	gLO1Fk1P3NU36hl3EFuyuJs=
X-Google-Smtp-Source: ABdhPJxE1zSjGZBH4yAhAlqF9cEVzB79Nm9BZLjTeYb0D7s3ZAhFmFh6YknPfiR/ywiH0BJJlx6TJA==
X-Received: by 2002:a0c:fbd1:: with SMTP id n17mr25730933qvp.19.1627431529554;
        Tue, 27 Jul 2021 17:18:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f70d:: with SMTP id s13ls268269qkg.7.gmail; Tue, 27 Jul
 2021 17:18:49 -0700 (PDT)
X-Received: by 2002:a37:634e:: with SMTP id x75mr8243611qkb.35.1627431529181;
        Tue, 27 Jul 2021 17:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627431529; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9FjtC1QcsxzYPdwYYOv9PdQlcuXwPxc5Xw4S0wySccfMDt/eNtWXWJHzKHfwxvOHp
         mNUA4ZsMoep5HozfZfWikxQYH3rSRB0+LIwP4oy3OjMiFzvd9ip3tcJJcjbt96elMjKd
         aJWE9v+teXE6NE6UmA7Bgpn5Gc6UsazyTzNCR0/URVW2bXlr+DP3/3t+4K6vGlMTLCS2
         G4MmS28HeoI7XplMaxjJodjF65Mjx7DfPYdf7XoFL6zSjyhKECt77b/OfodMv4OCwIEq
         fbRawaNldMsgbZ51am9z/yuHGPFauJi/XBJBtck7IXSpeEoqMvBRoegQYWLu1EtK0b0m
         71gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AFmnDy1I/Pl3N6YrVbCNCdxLPKzcfDWF+dCkA87Wez0=;
        b=RWyOn3AHLekI5guH84gkPIntrOyhldqntGoJwXSccJdSObDXttD6v1FppHh740/8jH
         flVTRmw8WopFo9NehZF/bJxDvhqZVcFpSMCM3fiGvTytiCCtvEtIR0dQMlBmTEfid5TK
         gSxLDCcqs0ZGSRfR1JWQooh/isAHx1SMiw0LSzQ0s+sPbqVwFR2IOcgoXsJMV85jltnc
         /WU7ivW76ePju2lUg2/islc2TgCIx3uTRx5aPnhgJ6+7S+nttb2yi+rq/+sxVP3FCaS6
         /flHdDKIFccMUnEiMRdk/5lvHFzHFRpMzEbexzt0XbMpMUzXY15PYDqOyOHXnHEQr+Yr
         rl9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OiLLOwBj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si314941qkm.4.2021.07.27.17.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 17:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AE1E860F6B;
	Wed, 28 Jul 2021 00:18:47 +0000 (UTC)
Date: Tue, 27 Jul 2021 17:18:45 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Hexagon: Export raw I/O routines for modules
Message-ID: <YQCiZSj1gfnF5x/d@Ryzen-9-3900X.localdomain>
References: <20210708233849.3140194-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210708233849.3140194-1-nathan@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=OiLLOwBj;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 08, 2021 at 04:38:50PM -0700, Nathan Chancellor wrote:
> When building ARCH=hexagon allmodconfig, the following errors occur:
> 
> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/svc-i3c-master.ko] undefined!
> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/dw-i3c-master.ko] undefined!
> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/dw-i3c-master.ko] undefined!
> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> 
> Export these symbols so that modules can use them without any errors.
> 
> Fixes: 013bf24c3829 ("Hexagon: Provide basic implementation and/or stubs for I/O routines.")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> It would be nice if this could get into 5.14 at some point so that we
> can build ARCH=hexagon allmodconfig in our CI.
> 
>  arch/hexagon/lib/io.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/hexagon/lib/io.c b/arch/hexagon/lib/io.c
> index d35d69d6588c..55f75392857b 100644
> --- a/arch/hexagon/lib/io.c
> +++ b/arch/hexagon/lib/io.c
> @@ -27,6 +27,7 @@ void __raw_readsw(const void __iomem *addr, void *data, int len)
>  		*dst++ = *src;
>  
>  }
> +EXPORT_SYMBOL(__raw_readsw);
>  
>  /*
>   * __raw_writesw - read words a short at a time
> @@ -47,6 +48,7 @@ void __raw_writesw(void __iomem *addr, const void *data, int len)
>  
>  
>  }
> +EXPORT_SYMBOL(__raw_writesw);
>  
>  /*  Pretty sure len is pre-adjusted for the length of the access already */
>  void __raw_readsl(const void __iomem *addr, void *data, int len)
> @@ -62,6 +64,7 @@ void __raw_readsl(const void __iomem *addr, void *data, int len)
>  
>  
>  }
> +EXPORT_SYMBOL(__raw_readsl);
>  
>  void __raw_writesl(void __iomem *addr, const void *data, int len)
>  {
> @@ -76,3 +79,4 @@ void __raw_writesl(void __iomem *addr, const void *data, int len)
>  
>  
>  }
> +EXPORT_SYMBOL(__raw_writesl);
> 
> base-commit: f55966571d5eb2876a11e48e798b4592fa1ffbb7
> -- 
> 2.32.0.93.g670b81a890

Ping? Brian, if you do not want to carry this, can you give an ack so
that Andrew can?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQCiZSj1gfnF5x/d%40Ryzen-9-3900X.localdomain.
