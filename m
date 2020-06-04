Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7FB4H3AKGQE7NX54XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 513BE1EDA80
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 03:40:13 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id l198sf2488538oib.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 18:40:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591234812; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPiXyBWJT+J9mAvTFxLS13iQbUHkoZQTaSuHz8G35m1aIb9aL+7H4vuDGFhdZVZoTl
         8KZ7IMzJHTQiBg0TjoatYhfzBGAQ66azEppqPosmz2mLd8EQODQWaVzvcqGJUqOmbYWD
         SMz06Ppo/UVfGgDubwj59/69YGxDKLf5rqRn7Xfa5N5HrvkChA5qZz46dvaq/7Pg4dq8
         I3uf41XvzZw8SkdNRKqBorpxe9cXPFpPXxMBHTakXtjE/e6pM8J66JxihUd5eRMnvHBE
         bfTFVrGXUttWNxuXn32nvIky67viJhB8gdxMcpPZkZZa4oTCPrrhSKms+ttH8y6/LR7Q
         Pf+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+R6zS4ZXPATuhTnZt8Ztv3lU1w5Unj7Sdac09t9rFKs=;
        b=Ora4mzLOeroEakXlegm0/OvLbEDPC10+UZkEFmzKfFfPjt30fgoSEXmEjz9aaJFxiS
         Fq8Md0X3/uIyQBuVkdMBgBuhi8LhM5jlHM4Qvykq+04Oqzi/GuanqX71gZ2T5FWB5sT0
         uCKce1jgFa68kVuZTVRqpJIht3ZRAJh6x8DChnrNVFj/QTYdfo9//2/CytcCWwbxXjVT
         MXsaTVkzK4WQtNvJ9XD2ODyXCp2fNjZwfmirAFD89sY7BqgnlnFi50GqBOb/hrwAmWIg
         Fv6k2eDykIlvDHsaAbl+cl0IEN79avcScmrVLZrmcNgrCmIYue4zIqDV7gRswnSlVc4J
         ESAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D25kXdKh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+R6zS4ZXPATuhTnZt8Ztv3lU1w5Unj7Sdac09t9rFKs=;
        b=NgmUXbNagiHTrlRImuIsZc6EjgV6CasP22XkUVGtB8TeAFWzJaQx7Hx80+t8i0VsO3
         +72NZv/dYTwaWIGM17tPCVxa4tJyewaD/z8Z9MPs3LEo0aOTXXuIJxBOUcL13yquumRY
         S0gAalweZLnQo7loDPyjT8DfaVTxNM5k1NbbXScYXKUx+ij6Eux9+bPrgeuaCyPWtPTt
         Ih2tSIQZp0O/g/70vEoC3oZiBN/AHvaD98TfWmJiTzYaPrIbBOqsuRsKjsuhleN0J6WT
         JcWEq87dxOPQd3l3TJ0kSy9TQChwPZxtuUIFD5n34HaNsTpUXi7XblntdYg/EL8t7gpz
         3qEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+R6zS4ZXPATuhTnZt8Ztv3lU1w5Unj7Sdac09t9rFKs=;
        b=mtEHCQGrM7gLsHyhLFbO9JrYjhPH8+Rltocx+Nnb+7RsBc4VnPCYU0E/UfPVP1Sf/R
         g56n9PC6jWS271xnWQlMm7c7MEWikDUigsIQOy1EXeEnYAjbaTfhYYQNBq//mmWFGNut
         QLDFdgUDuhYGme/JAs5UDNHc1ogJ6Va12KImOvvd/Z0DJDdfFBPIt5zrCyBzZXhZjalY
         spbjwZF8R1mQqRH9CEcNFg2JqCqt5DvT0Gu3ZwbrQBbHJmgSDz67ukcQQP+uuxxVVY8p
         0WqkHyqe6H70QRe+YRcPNPv/yR7sImrjgHdz+XRf/Hy2mOcTA7DIWmT1/q0MiH9oxocA
         C1/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306dgiIaOlTZcV+ZIOOf0V5O4H68yqZ7rO1vHD9r2BKwE8kOR5n
	wEryJ1Z6aoi66UcrvPrg7Lo=
X-Google-Smtp-Source: ABdhPJziVTzdkgt84nY0g7XN/e98YeOph2KM+FBt/tQUR+8bdV9rT2IH6bpABnRVDA0suh9pUiDWcw==
X-Received: by 2002:aca:728f:: with SMTP id p137mr1735753oic.8.1591234812211;
        Wed, 03 Jun 2020 18:40:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:590c:: with SMTP id t12ls1013062oth.1.gmail; Wed, 03 Jun
 2020 18:40:11 -0700 (PDT)
X-Received: by 2002:a9d:7f12:: with SMTP id j18mr2060433otq.340.1591234811898;
        Wed, 03 Jun 2020 18:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591234811; cv=none;
        d=google.com; s=arc-20160816;
        b=A0i6LAyVXXQlxnB0RI8RKd++3QrWp5kHjzZaSh1MuzTOTa6DnIc3P2okRhM8ZmmS6K
         X1peNbtXjkFZPeysVEaj0zlKlSkpHGGwpooyuxPi/R31qaMbY529c9BM0uPA7yF1hNxS
         Ly+n0b9qHDx2pSbiFX0sK6+q9yvQZJI/h5yqIleTzqP/6NklTglF7xgNyWb50fJQO5I4
         spAStwYYVuz5EO1/gzzEflG7eNe03c3vBOLX5ypiCRDXU3e1iu9Q36mTemuXDHGgi59U
         /HxxALkZ+GoMy/pFmWdiJLPeKQOfulC54+tdN/A43r2vKI9pLkGIi9CAzzQ1VJ+iwLXH
         AxkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RZTkgHwXnV/Mmq7iR84jWoY6DwZ1rOj4qUQ+qrZYDwc=;
        b=Pfi8DhZJxZ77kYS4vad62jUcBJuhiOB9Vn9dQ/3ltRfWsQSPeytPJWycJzgf2pwMTN
         qaflMsJczcJBcXi1UmY+ts7Wed9NG6XZ+zE1hmFRQCk+dpAZ6Ar6vjJYELeg2AV4Xnjn
         42yNWfMKvilfqiQR2Uw2Gc1VN1YIR+RTB2pmY2bsS452a6J2IQBnYxJNHwOd3eJ1CcDH
         Tvjl4mCfOyJn72oZBFeH6hN1c5vtS2sxFlAfkYb5LO1s5avW80sQTyZJGShVhcxpsl2E
         05FskWDWk1cH0KesPkRiEvnjZ3XqA9/LLrUpZi9rjU/detQsn1jomsWOxiiHjkVpSV7P
         4MJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D25kXdKh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e23si362676oti.4.2020.06.03.18.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 18:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id v24so1485173plo.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 18:40:11 -0700 (PDT)
X-Received: by 2002:a17:90a:dd44:: with SMTP id u4mr2890350pjv.132.1591234811278;
        Wed, 03 Jun 2020 18:40:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o13sm2589124pgs.82.2020.06.03.18.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 18:40:10 -0700 (PDT)
Date: Wed, 3 Jun 2020 18:40:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org, netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
Message-ID: <202006031838.55722640DC@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=D25kXdKh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> > 
> > In preparation for removing[2] the[3] macro[4], effectively revert
> > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > and remove all remaining mentions of uninitialized_var().
> > 
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> nack.  see below.
> 
> I'd prefer a simple revert, but it shouldn't
> be done here.

What do you mean? (I can't understand this and "fine by me" below?)

> 
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> []
> > @@ -4075,7 +4074,7 @@ sub process {
> >  		}
> >  
> >  # check for function declarations without arguments like "int foo()"
> > -		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > +		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> 
> This isn't right because $Type includes a possible trailing *
> where there isn't a space between $Type and $Ident

Ah, hm, that was changed in the mentioned commit:

-               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
+               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {

> 
> e.g.:	int *bar(void);
> 
> Other than that, fine by me...

Thanks for looking it over! I'll adjust it however you'd like. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006031838.55722640DC%40keescook.
