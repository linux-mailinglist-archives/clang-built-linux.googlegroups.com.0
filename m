Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBUPN3T7QKGQELBRK3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E65BE2ED449
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 17:29:05 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id q2sf2861065wrp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 08:29:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610036945; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0UZpG8OoiCW/bajO4BiNUUwDlwYXgH9y2KaKknorwvQzRQe0ZX8qeO+2ClJQY1ZPY
         MWENhooFeQPJyizqvUurVu6qOBao0ZLp4s/iavGQlpVPT1YGD2dj/i2eTXzGZVJUicLh
         erO7Dm+ZMlEPRDLdFeaPWHixAR1rb9+0g4+DdXzrbLs//wqwHKXCHDTEHG4poH1pxcYB
         PJC/qGG5Kl9BpBFT/Xf5Ro0BuyDXnXnv7czz2l9tgSB6pLGFx5Xn4ZKqsnyEBLxvk3nC
         tJXgAporTIyF4l8QQTN3aBtSk6yKgSLV/07ns5d+CfMxQZbF4GHdOU7kkPLcwGrCSvEg
         9mpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oiWIkN7IvgJx2EzuR7cO+NCS5ZXZHBKNHI37XjTOoME=;
        b=GzTSDXe7BGjC9YNHErUulAcGinaSgJ6CiWq1AL5C+aBPL+sYWc2iLW94oSwMhjY7Ts
         WnvABLDiJ3h6UAiaGeUAZO3oWFxwsLW7YgeE7VdlSF7xAI2fvBVYv1L2K1WdmrFw/rmY
         vZvZoRGnr2grtjwgHzt6kYMM4QMxgV1C+OfhNyqWqvLFGecRnKVOefJsWT55s9oE2kT+
         lnEk+dYmHpYZ8fsNeTDYdvHjT1phdrLOqwNGhh50qhYF2MEhdoyqORuoaIeTIZdhTvWD
         CmYGIKXxc0rG3mBIq6V+egswXF4VahA57JS3UiiGcrOuEkIM7N+t3/v8cVTMa3qzucDm
         8e2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiWIkN7IvgJx2EzuR7cO+NCS5ZXZHBKNHI37XjTOoME=;
        b=mpfoIP2nWe9Tn0AVLB5PkZTTozLp0eoUK18wJZLlhgwGSZolU9kGgkNUQIRUOUw3fx
         L+7/fnY69hWuOu6fnomtv0fPD5pe5q/pAfeuBQkzXLQAyRrr+sfYcJH50UWCloYbZSt3
         KfkPZoVjIrV6UIPdNDc3VAJZPxbY0kDpWLQTNAQ7uSk5ZAmeBNfTXM6apfEraiWP1mdo
         PeJFSY410JijbM9YpaPRxG7DxCzwZpAbI8oNWu1xV1qdyEHw50lBL2RkI1k8UfLDJRvy
         eCaV0jGALaTaFtU8MPigdwGceV5b6wgGJW4yzHDZjIN22sJ6WsEFRS/z+cCsPylbzHNA
         fNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oiWIkN7IvgJx2EzuR7cO+NCS5ZXZHBKNHI37XjTOoME=;
        b=JuSWLd8nYkEjC/jATpzGDb3sQC/bsH9ELB4aGJQXvKmFtA76QHO7WbExt5Hf5saiKJ
         ObN2cEPQfnKGFs5mD4nn7ZN4AuK0j9DAW3wpcz3ewKoUrtVXdyjoh5bXGfNJACF7LJOv
         ZNav57alj9QfIWDt0lLnlHbpgQsWRjOkR0PHRKH+ZLBH08Ws4eEYCM6hcsbSD2Bn5iTs
         QTQpgBaH37h7USvCq2l66NB2u7mNbHlCY9IUccG6VHAXIPnC3FOcCAxSAhQn6/eJ9XOx
         PxDxE/lrTAU3asXuvHcC2uaCcXrPiWxmTuhm/5SmwmmHA5vkWvNoCGmgoR9c1VO5GMjB
         zOXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lGqpaMbAjubGxEAuuMhbb+fktJHocz/DpMuyD5J13/eqp3Jhn
	sfY1T+YcQJvt51laulV0X6k=
X-Google-Smtp-Source: ABdhPJx9wzGvxBREIhoR32yWpqITkPw4cAj16XFuJZeq9VgveqtzHpqnHpON96a1sM8BjyN2WXfw/A==
X-Received: by 2002:a05:600c:224b:: with SMTP id a11mr8617590wmm.97.1610036945664;
        Thu, 07 Jan 2021 08:29:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls8051957wru.1.gmail; Thu, 07 Jan
 2021 08:29:04 -0800 (PST)
X-Received: by 2002:adf:fd42:: with SMTP id h2mr9643453wrs.142.1610036944807;
        Thu, 07 Jan 2021 08:29:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610036944; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3iOQrdodWKjaJWEBmGTZ01In03if0iPZT258F0+2bgGfW6GSRniKOwWRxB1nvEacB
         jy2Dq1LlasgZWeSpmrMGebpDya4ThoknTl0scWZdLhbJa5eIq3GBpOuo5Ljh+PEVwhvW
         GC3L9cZycNbz+ZfYa3j8TR4snSDWT6Qi3KGLn8S5OUeEPWLtgOk25knVYFQmA4VIgyIt
         G7pm7rnHfni5KE6nGLpK9FQuVSxQfT452fO1CBmQef750IMkWEr7N+De8hfdKQRV6iEB
         e8CGp3yV3y56+1vLgkunhzK1UZE+uLRmmdw3elXcLrf7kDh8lPGt4MEPNBWovNOLRFiQ
         JcUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=2fC4lOzzvQCOcHmQp2MtzLeH+T+RsFB4v94uKTDWbMI=;
        b=PBmcf5ZJAPoEUT6YTUobX3hcgZJa8ErdKq/MFjoI29APpkGG035w5H+rHJ3qcZaMU1
         OvI/KDYpDoKERTsqaXi+7DJGgyK5b+YYPrCcrSHNnQDbV39+No1scyc0RbfZ050T9pfT
         SWxwV2TSPocZZIViob5FvEesM+xxwEJ1pyn4uBU3EffBE7b4BMMTpaUUGjowrOCsOC+/
         MuoIkl4q48j2SdwuwJq729nU+tf5NZfi0ivsGCyF+6uIUkkK2ZJCfo8tXFOf5naGl3qE
         yrwaCtqnfeLOAoNmMh3xWBIIQ9BM+nWg1bNJ+o4IGxXRYgAAp++AD/uPzLrCztxrq0DF
         sClg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id w4si309091wrc.5.2021.01.07.08.29.04
        for <clang-built-linux@googlegroups.com>;
        Thu, 07 Jan 2021 08:29:04 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kxY9o-0000Mi-03; Thu, 07 Jan 2021 17:29:04 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 87160C080E; Thu,  7 Jan 2021 17:27:18 +0100 (CET)
Date: Thu, 7 Jan 2021 17:27:18 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] MIPS: c-r4k: Fix section mismatch for loongson2_sc_init
Message-ID: <20210107162718.GD11882@alpha.franken.de>
References: <20210105203456.98148-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210105203456.98148-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, Jan 05, 2021 at 01:34:56PM -0700, Nathan Chancellor wrote:
> When building with clang, the following section mismatch warning occurs:
> 
> WARNING: modpost: vmlinux.o(.text+0x24490): Section mismatch in
> reference from the function r4k_cache_init() to the function
> .init.text:loongson2_sc_init()
> 
> This should have been fixed with commit ad4fddef5f23 ("mips: fix Section
> mismatch in reference") but it was missed. Remove the improper __init
> annotation like that commit did.
> 
> Fixes: 078a55fc824c ("MIPS: Delete __cpuinit/__CPUINIT usage from MIPS code")
> Link: https://github.com/ClangBuiltLinux/linux/issues/787
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/mm/c-r4k.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107162718.GD11882%40alpha.franken.de.
