Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEP2QKCQMGQE732JNFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id B65D8381D28
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 08:34:58 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id a8-20020ab03c880000b029020f88f9250bsf1171759uax.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 23:34:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621146897; cv=pass;
        d=google.com; s=arc-20160816;
        b=gUAy1PxTP/0RMosCSclYAVYITU18xsaciDtIBnBubFFFqusjYCXoIaVWVf0NgV+0/N
         0Vhz8j4KbPCOxKX44oIZ3MibbzenaC2gFlX/NYIFOt7KKd/6SfoDaLJ8te2TT7prCQBx
         AZAa4mAkiiOfgM7kn45x5Ln0+OCMZLGcNtRDEu8J/RFgGPDXQTX9KLhSwVwu3aupZI1S
         bWUMUDzGQf3O053afiOQGq41MDsOAYIkLAtQGlqnwIvlO+BCO/JABABjNTALxEDnf761
         i8iouOWGvC5ykCn8igvMqHC57ZRgrjlmSUco8EpG7Sz5obKGFL7tEd+YTiRdSkM1wJmv
         w0Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BG0a8Lm2lVfjM3RyFE6l+q6RrB6oKKNLdYtlyorY2HY=;
        b=cNqt0PYVDq+rsOolrCIzLpoanOVdXOaZnmZwSAF7YTa+g4LekmOF+kRKyXlwkBMLqO
         ZILrwG9nII8fCv8ZZHTpv3wHKVEWAyoJ7OtsWjt0A0L2G6WbqBtk3uOdWLo0i6VWxVNx
         NEBmq34RSM6oRdEYXVe54cXWHvQPkUxyb4bP79UUmqfk0fnwKoRCSRfaYGP768Ha5hL6
         8DFrNvNPvQsChYyoLvpPy2kbgyIdMY8W5CdE7N/IJrRFkvEc945Zo/bcEZuGZSiR2d5G
         jLnAwTW81yanjGg9aCIokfJZKh6C12k3RHUVq9PCnlc7KAd0BwfnW1Vwr22ZhCKk4lng
         DMdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KhZ5MoWo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BG0a8Lm2lVfjM3RyFE6l+q6RrB6oKKNLdYtlyorY2HY=;
        b=EJeh8irZzu927S7H7pCxldjiGHEo5ree2S2ZsD4jm7+AQrCYhAyiDHbYQaLHiguzRO
         JC8U05eNpJ8luzjGrdfQ7kewO4FmRE1A0bPo5b4PXmvLGIkIpTnIVkijKrn3kV6E1QTH
         yALn1vBUpqoV+NBaWEg/lKYrH4bUtiOsGWmt1kBHdSh6eQsKhU3r2E6889OoRIQk++5d
         7V6tVF1ZjSvk8H9/jMYLKkSNDcoIKBAjybvjhL3oEfYtLjNIAllsjor3JhtHyJ5mfD5j
         1mWxAlio9Hz7IJOy+oRGtpLX4SoRcABOZwrMJ9p5rGwHE7dwobxiGGAipiJYNkfqhNo+
         dkgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BG0a8Lm2lVfjM3RyFE6l+q6RrB6oKKNLdYtlyorY2HY=;
        b=gQPDAuOSggZHctZ/HkOTTxECvMoM6h2GpAm2EF60jWlQiB3YCjmXAgXR5Tz/OALC8p
         8rsy8QY1Y38E/WF0FrQBN8fkjD3EzD2nOQV8r4ZDTGVuVm16SlI5U1H96nYxEJlcawLH
         7RwV2/5lf96+n/Ige6/+BxBou8JdyT14p7q7eTMJOSG+zXypDWgQmpnC28ofOPorH/Xb
         BmbI0Cu2tbNXLcaT5sYBCNeRTVAtgLcpP6XReq/rha0moADKffmfWbIhkovGISSYE+x5
         FbZg4Z1MdLEC33XPO5NzvLSBRelaFstwBHJULg2w5pt6xpB2CrTh6tWNT6SQxideuNca
         VqIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qpZ2zUWSGkZphE697I+T/rrp4JagRGG1uNrSE3Y3sn1ptQ5R8
	B+m3MLZ/3yVTmS0LTWlLFzY=
X-Google-Smtp-Source: ABdhPJwxwWPbQOs4msximtH2ZwEVXIFww8NumOfUmv/IBfs8Ywoyk3eItnHFO5R7BLzIhBf6nD7PMA==
X-Received: by 2002:ab0:6398:: with SMTP id y24mr50299391uao.112.1621146897298;
        Sat, 15 May 2021 23:34:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22c5:: with SMTP id z5ls1651647uam.6.gmail; Sat, 15 May
 2021 23:34:56 -0700 (PDT)
X-Received: by 2002:ab0:5909:: with SMTP id n9mr48949686uad.79.1621146896815;
        Sat, 15 May 2021 23:34:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621146896; cv=none;
        d=google.com; s=arc-20160816;
        b=GEcr/cgnNY1PyqIJlMFduBdZwOcPjNzTlI9OsKkMEzmSTBU1Ic9TtYW9j0y7zRW43w
         yuOYpoZ3AStP90u1SzcnG+2fHVktymDN6usHjGYgZ+2JtZ9ch1J4PDfAHnOoZvCOmA3r
         XNaevBzLWIav0EA12juVL67ipry9k84FqxMcQ0f0mraFVUTEg5XPqP4sxPUnDqwstnIg
         6ezgQ72AWlY4JnwO5r1/GNt28euARuknNS2mrmKmwYKj1avGJ5jOLJ5fKnx75+tsoFvl
         7l3ZObHJa0T285OQs/VjfpgVQWXyTFjHJUpfFlbgha2HlPqiQPf9mdqvAIW2Pu04c9rz
         O2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Kld/T4tD7QhZRiqvKvoARJbmD47DL/ZGAeLVkkfzNJk=;
        b=DrU5XAMEX3/oOl0SSdcsLDErOuo+ePePtPcqZS8crQgdTicfC93r+VfFYOEsESEnXp
         AZ9tBRizhJoqo5D/Ec4AqoYRv2Ihd+G5eLYt1BdUrdBXYuFVU9jOndIsMas/CTq4DM6z
         Sexbd5VaQ/ccvfF4LuuStiIgXi9Vkb3UavnaVtVymyZNOrBGTMFQqmTwc6s3/H90lOhL
         sJ92/7d46MuBv/rUO7EAHk9Qq5EZNwal2wGRdYkxzoYZU4Rkd8bpmzz/K4gldCy00lqZ
         wBbVKJpSgB+Xrxjzo1q4LlHaA3Ow3DDduD3zsN9nIwxi+xRxo7p3BvdqP/h7g+evvIUE
         TAMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KhZ5MoWo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si834772vsm.2.2021.05.15.23.34.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 May 2021 23:34:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B07816100A;
	Sun, 16 May 2021 06:34:52 +0000 (UTC)
Date: Sat, 15 May 2021 23:34:49 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>, akpm@linux-foundation.org,
	iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
	cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	Marco Elver <elver@google.com>
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <YKC9CeAfw3aBmHTU@archlinux-ax161>
References: <20210511173448.GA54466@hyeyoo>
 <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KhZ5MoWo;       spf=pass
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

On Sat, May 15, 2021 at 11:24:25PM +0200, Vlastimil Babka wrote:
> On 5/15/21 11:09 PM, Hyeonggon Yoo wrote:
> > Hello Vlastimil, recently kbuild-all test bot reported compile error on
> > clang 10.0.1, with defconfig.
> 
> Hm yes, catching some compiler bug was something that was noted to be
> possible to happen.
> 
> > Nathan Chancellor wrote:
> >> I think this happens because arch_prepare_optimized_kprobe() calls kzalloc()
> >> with a size of MAX_OPTINSN_SIZE, which is
> >>
> >> #define MAX_OPTINSN_SIZE                                \
> >>       (((unsigned long)optprobe_template_end -        \
> >>          (unsigned long)optprobe_template_entry) +     \
> >>         MAX_OPTIMIZED_LENGTH + JMP32_INSN_SIZE)
> > 
> >> and the optprobe_template_{end,entry} are not evaluated as constants.
> >>
> >> I am not sure what the solution is. There seem to be a growing list of issues
> >> with LLVM 10 that were fixed in LLVM 11, which might necessitate requiring
> >> LLVM 11 and newer to build the kernel, given this affects a defconfig.
> >> Cheers,
> >> Nathan
> > 
> > 
> > I think it's because kmalloc compiles successfully when size is constant,
> > and kmalloc_index isn't. so I think compiler seems to be confused.
> > 
> > currently if size is non-constant, kmalloc calls dummy function __kmalloc,
> > which always returns NULL.
> 
> That's a misunderstanding. __kmalloc() is not a dummy function, you
> probably found only the header declaration.
> 
> > so what about changing kmalloc to do compile-time assertion too, and track
> > all callers that are calling kmalloc with non-constant argument.
> 
> kmalloc() is expected to be called with both constant and non-constant
> size. __builtin_constant_p() is used to determine which implementation
> to use. One based on kmalloc_index(), other on __kmalloc().
> 
> It appears clang 10.0.1 is mistakenly evaluating __builtin_constant_p()
> as true. Probably something to do with LTO, because MAX_OPTINSN_SIZE
> seems it could be a "link-time constant".

This happens with x86_64 defconfig so LTO is not involved.

However, the explanation makes sense, given that the LLVM change I
landed on changes the sparse conditional constant propagation pass,
which I believe can influence how LLVM handles __builtin_constant_p().

> Maybe we could extend Marco Elver's followup patch that uses
> BUILD_BUG_ON vs BUG() depending on size_is_constant parameter. It could
> use BUG() also if the compiler is LLVM < 11 or something. What would be
> the proper code for this condition?

This should work I think:

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 9d316aac0aba..1b653266f2aa 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -413,7 +413,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 	if (size <=  16 * 1024 * 1024) return 24;
 	if (size <=  32 * 1024 * 1024) return 25;
 
-	if (size_is_constant)
+	if ((IS_ENABLED(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION > 110000) && size_is_constant)
 		BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
 	else
 		BUG();

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKC9CeAfw3aBmHTU%40archlinux-ax161.
