Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBC7H6SEAMGQEFWJPIVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EBE3F08F1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 18:21:33 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id s8-20020a17090a0748b0290177ecd83711sf1701762pje.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:21:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629303692; cv=pass;
        d=google.com; s=arc-20160816;
        b=yIpsurBj+r+F/Q+0lo1RzdBYfrVNKCSxfFj/DVMVXVCQOTqrA+pGgdRFVtQDgCp1pr
         kptwe8iv9RtLdc/GaB9iy99kWEPpeRdB1/346uAkh7sBCOxc/KU0Qzki2qVn8a728aKU
         rWXTU2tk+lFKQGAMJOUrXSquUDzQjR5m9tbhjThtoAfau2uJbouyXYL9zMu8E9AyGN4W
         rtFnfahf+8RHk3PSkWE0vBBuC/XQphM5FS+EjCf7b7K8E+FRBaHAp4K34gStEbErHYv7
         0ErTyHOKg33LEElmN16wRFH3GrGaKUJn43zdNTwfgJM+abIf/Xfji0lWoCj/IYOOHtm9
         diKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3Afgrt54UL8Wmo9hEh2Oo3djLzM0Qy+ds8u3GHhSaKg=;
        b=jUw5JJJwc1JG/PnKz6JoD2U80m5Vzi1wgnJTQJw+pLwJLN4mAdOwSL1MgYodcn6CcW
         vMuJhAinXovWQYWROVo9K3hQKZjQrpeRXHrk1mqgU4mk1YY1YPe5sc+tBt+mo278JEcU
         cJLUnKWwBVemZqmEgcp0TVlW2l4k7Fx/rwBrBwZ5D1f7SDttDA6Jin7IyDce+8tJ5/w1
         VwSdmqbXeIjOuCSWIVEOecaL5zBnkKzVTHyVbKsg2OYpThNvn4XDd4+HbHDvfnJAgncH
         4Ch/W9wyBLsB1G+A/UalcYd338Vuv5RGRptiXLorMk8Htv1wINFbFtYH/xIjt08ycRZ0
         I+lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=goFTNk2p;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Afgrt54UL8Wmo9hEh2Oo3djLzM0Qy+ds8u3GHhSaKg=;
        b=jIBmGSb9HHhFiD7J0g4u/TLnvmpnZtpj7ACo1tjBjrLe9n4+gsZp4Pdut+69fZ3xFR
         d4eWu8w2c6f/+3uEPeftvQAt3Sad8YUO18Fscz8sBYo1dKTrZf144wDhDKc97m2vmUms
         F8SF6TXLY/J37pBs4fJ/QRqpC4YZBzKnNy3pXYYYWhHnsaMSUTeSnybpAKS+X0o+5dZA
         nS+LrQxVvyV+I5mIzj7D8GMab1CMEGmuzNIrWW4YEzW+2irgzWsbyRMa/2wjgqIY8W4V
         dXPKpGmpQPkecz5Oh5SDfncKIWrQRKX5W2rQw7eTIz8eUCV0dZek7UQ2BgEIMF6OCra0
         EsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3Afgrt54UL8Wmo9hEh2Oo3djLzM0Qy+ds8u3GHhSaKg=;
        b=bQ8eeySD28l8LeXBXMe0laf2ikFkISeq4Fx64seGbMfFvZB4v+wBZpNjjJ1q7W7eU7
         cqohDIte0dxq2RJ6cOOFF+2JVERO0FcpWt/fhA0/WmHOWp6CxNlbLe6lY/9Txl4HMtLp
         5U4jUgRY7JTPXtEk1D80aLfQUuoF/cR2AJYpBEL2OQcOJifi89nnEq/0WuXqF5nAxxug
         M0vFRxm1TNwnpqdTtCXBLWhejuebt0iMrYqNhBFZk5HZg63dmyTSL3wvS+myyNyHFe+5
         dUwwAmjXxhBB3V9kFBoR5oJxgpxzk19rAAOhxpDfHAM8FMNd4bGQVpfW09F7xCUvDlk2
         QMyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QCL0hdYuxOnh1miKWnJIKDMM+P5nP9DAirV7+g2xD+dnqG4pE
	sEylt630xA7c50SpnmBHcuc=
X-Google-Smtp-Source: ABdhPJwSqKryOqJGs7UsnJ3kKt0roG/wW/KpAeJ41SHPO426yoI3Mj9nTpylmCUebNHoyx5m4saGZw==
X-Received: by 2002:a17:90b:4d0e:: with SMTP id mw14mr8207331pjb.37.1629303691861;
        Wed, 18 Aug 2021 09:21:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4094:: with SMTP id z20ls1389946plc.7.gmail; Wed, 18
 Aug 2021 09:21:31 -0700 (PDT)
X-Received: by 2002:a17:902:aa47:b029:12d:693f:14a0 with SMTP id c7-20020a170902aa47b029012d693f14a0mr7909127plr.68.1629303691281;
        Wed, 18 Aug 2021 09:21:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629303691; cv=none;
        d=google.com; s=arc-20160816;
        b=rsSQyCrtJ2EE3y40rYlYOo+q7asH9MDhLI7OslwbMyXgp7HHSgwEnDQKy8GCGEHtm/
         8hxDdAR96B9Q0++4mVcDfyTWiywkkQX23pjfElqc4lm29sdqARxTqpVM/EW9F5qb3hKU
         ZMcahTKuyOkzgjfzVM+TqcTEI7aIMKHdNOVuP9+fobxAdzrgfCYMd0ephrL+wSjqYOp1
         6Mn73AooZm60OundOdrXTgXSPcHlMlQJCCawKAizb2bLvVr8TQgG74q+Tb28V36gJbt2
         FnD3tLACYgtmE4tXizsvEFLcgApy8E25FtmfgW50cfXJ9nQAYwnfrFuLE0aW+drrmn8d
         xfgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OH0HDKV+n0nyhzkCexO3gFPelNIO9Yru8xPdeMKzgNE=;
        b=zL8Uv/vP8eJjf28Qs2D4jbhOEzUuuGdHWK2B1ptlvJq47nJPhRa220wMDvNA5MAcyC
         davv05py4I2hZVByPFaCP9ny/ZQcWD9ZNUQ7G8QUsy6NXQ2KhEyVpGlKpe/ifl0IxG7c
         PlY7rBu1XEkNe7e3UjSfZ+Mx6Em4h9k9wBxi4HzDk2PWAbW+Kt+0MZTEaszGMbIKQwEb
         kno1MnSR7x8gFNGvA3r9TWfjOXtYWj3gpzrPOK+g1cmbVcr5q6G8kUhMVdOpU15OlycC
         D6bWNJs0pMRGwxCSsWL9g5j+i+fBsaA9UzIMtvTPZLgGgIjgUAwAwHQaJieiAFMIt5zP
         1QVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=goFTNk2p;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id i123si48850pfb.1.2021.08.18.09.21.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 09:21:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id k14so2777281pga.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 09:21:31 -0700 (PDT)
X-Received: by 2002:a05:6a00:10cf:b0:3e2:139b:6d6c with SMTP id d15-20020a056a0010cf00b003e2139b6d6cmr10295546pfu.3.1629303691009;
        Wed, 18 Aug 2021 09:21:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q29sm220062pfl.142.2021.08.18.09.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 09:21:30 -0700 (PDT)
Date: Wed, 18 Aug 2021 09:21:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 50/63] tracing: Use memset_startat() to zero struct
 trace_iterator
Message-ID: <202108180918.E239CE0@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-51-keescook@chromium.org>
 <20210818093349.3144276b@oasis.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818093349.3144276b@oasis.local.home>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=goFTNk2p;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
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

On Wed, Aug 18, 2021 at 09:33:49AM -0400, Steven Rostedt wrote:
> On Tue, 17 Aug 2021 23:05:20 -0700
> Kees Cook <keescook@chromium.org> wrote:
> 
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> > 
> > Use memset_startat() to avoid confusing memset() about writing beyond
> > the target struct member.
> > 
> > Cc: Steven Rostedt <rostedt@goodmis.org>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  kernel/trace/trace.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> > index 13587e771567..9ff8c31975cd 100644
> > --- a/kernel/trace/trace.c
> > +++ b/kernel/trace/trace.c
> > @@ -6691,9 +6691,7 @@ tracing_read_pipe(struct file *filp, char __user *ubuf,
> >  		cnt = PAGE_SIZE - 1;
> >  
> >  	/* reset all but tr, trace, and overruns */
> > -	memset(&iter->seq, 0,
> > -	       sizeof(struct trace_iterator) -
> > -	       offsetof(struct trace_iterator, seq));
> > +	memset_startat(iter, 0, seq);
> 
> I can't find memset_startat() in mainline nor linux-next. I don't see it
> in this thread either, but since this has 63 patches, I could have
> easily missed it.

Sorry, it isn't called out in the Subject, but it's part of this patch:
https://lore.kernel.org/lkml/20210818060533.3569517-38-keescook@chromium.org/

> This change really should belong to a patch set that just introduces
> memset_startat() (and perhaps memset_after()) and then updates all the
> places that should use it. That way I can give it a proper review. In
> other words, you should break this patch set up into smaller, more
> digestible portions for the reviewers.

I will split memset_after() and memset_startat() introduction patches. I
already split up each use into individual cases, so that those changes
could be checked one step at a time for differences in pahole struct
layout and object code.

Thanks for taking a look!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108180918.E239CE0%40keescook.
