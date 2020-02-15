Return-Path: <clang-built-linux+bncBCIO53XE7YHBB2PLTTZAKGQEWW3X62A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E7915FB4F
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 01:06:02 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id c185sf6999461pfb.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:06:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581725161; cv=pass;
        d=google.com; s=arc-20160816;
        b=yQLHqhzw/o4D7SUPOqMFQNPjQ76z62cLNxYKldyvvnwtndLlrQSWvD1nl8QwcQEjTn
         /3KCQpzqRfm5NttdtSoieVvBqQk51COsOn/UzDaRfVEw34VV6bLXzZ/BHFQytxTd3ZbI
         ZLKC2x+RrGnGVvQCyfI6/lgtTFaKxb6BEqIijbwvwtGtcOzzWrrb6uWDkPS/UzZe97LV
         HG+fzng3U4QEPm6AzCT5SOGtF8scK7ZQ6AXzr49hGn3asu4JZWZvEoCr3YGtyPUGUt2n
         RVfqdmUwoKV9zt2y6qdmGMURyLTetid+Myut5DrJpnx3hL9ll/vn3xcK4icznCc2NKyS
         Ji9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=+H7ILkIfH5vFDfD7RlnVpVqCPFtkMdAabNXsYDlzsB0=;
        b=U1CNxfRGoN08Teg2EoeQ3sPbM0Oiek5WP6HXEzpDSR3R7nvgtj/dI9/PzWdqT3GLSr
         +WrzBt0pVOOr8qYWXhjGHw+8OFWwTgna5Sw7qNuHKm7+mBHlnc9M7ZIPd8GIrQkWpZuG
         y3+cK8/TNWf5eicP6FRUJ5YBPumaZInGU5pPTAcf+gtEMLz/AKt4qLxxjR8bqvh2eT7f
         poQJm2EV7DbgaQk/GD5kVVn9hkzlx7KBsZQu/p9dU+63qhGi495kU3Lx6d7PpFvRbl13
         /zeUdxUnhbGk7UHaDvYTZF+PFhD6VVFhxJX+oGBSkLiUzTRsFhgUh7RBkd8W2XIprShg
         W5TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsN5lIG1;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+H7ILkIfH5vFDfD7RlnVpVqCPFtkMdAabNXsYDlzsB0=;
        b=Z0WJnvs0w+3B30pHZN6TgKKIYTRe7hk0/RO/6NPCt1sj/cPaILiZ3ESL8l6/4VOOci
         wVr16jv/kgZAM1zqKt6svg+u460BuXEo6eI22CaEc6fboQoUDIGg0B2KC1Sg2FxPFqYq
         dPsZBfi5gk1BNSEh2kO9qaJsWX6h2daeZn++4YKmF5Dalnh4HTQfpdJk3sbQB0u/u9oW
         Ly72S4U0nDaF0lnR3L57fd1tQ2pLIqJu4THYsd3FBOjkCpng9lC0W+TG15HTzRBxgAVD
         vVVYcfV+iMzs5z5hY5B4l6ZG7CgH1PYY9+OgaQg47i6eQj6HSAi63Lssa5VKNrQKQ+eC
         esbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+H7ILkIfH5vFDfD7RlnVpVqCPFtkMdAabNXsYDlzsB0=;
        b=cTIWyghCry5pP9o/LnUcKdJdXv2VTT9VNISfdqwt4vMf3ET+Q6XQCyOc0nl/iXYxZu
         Wvw17LoyNimzGp6oImGx3KjQyUQbYvF7IU+tktoxGiP7rK4vU2J0+6jpr30GPUpGrGcL
         PbayXZNpprORapfgLDum0h2Tuxv9hVCeY5iHiqQHdvMmtyW/6VJAHJKmChMKpYLYbCB0
         0bmtgHf8IRMEDB1rhsUDimt9JvklUjNSWHYhPTGyjrUuWuSJkIHWQBUxaY/3pXb/1Gxe
         LbU8/KJ9APrIcAdaC/VKblxXDQgU4hJpsrCMtg+VOr74A4jIoI1cGB95J4jc+uMJb/YR
         SXJQ==
X-Gm-Message-State: APjAAAUJVbAWqwpAoeRIFMNNPtwMZyxJNViv50H+f/a2giKF9PUiVvBF
	TZrp/aAKNUMW7nprQMBdA+k=
X-Google-Smtp-Source: APXvYqxQ+H00YMh5YMbTiZxhaWFZhuT6bix6Qwr82xhIp2OqAoRPWKtKgF4+7NlNZUIXHBtIyLcYKA==
X-Received: by 2002:a65:4bc7:: with SMTP id p7mr3423206pgr.204.1581725161294;
        Fri, 14 Feb 2020 16:06:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:253:: with SMTP id fz19ls2738881pjb.0.gmail; Fri, 14
 Feb 2020 16:06:00 -0800 (PST)
X-Received: by 2002:a17:902:9309:: with SMTP id bc9mr5949221plb.88.1581725160729;
        Fri, 14 Feb 2020 16:06:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581725160; cv=none;
        d=google.com; s=arc-20160816;
        b=e9Oog+43uUaDKONzl2KDb6ZFuAuZnDTqmAYcyrr1OWidSHhmBDk0CFz/l/6tq2GKE6
         P5oleZeRJGhciRAPN8XP/lYUqjxG+XniIN48h8nWewrM9NZJ/pZD4chDDAann+2EtNra
         68pf9QrAk6qJFP/EcEW8LUAJHoAI8Ppl866wp/Rz/oAH2ANkTcVa4rKB1eRBb5X/+3wP
         3QV8NCGFpy7oAn0leUNLonav2/tEPHftm2yCmM8bVvnroH/hCHOhb/q1V9MLqxJbR9sc
         2yUZWkavSdYoterVt6ZJltSKzmDrfjDhP/4/oAbVhCsx8SlOvlKMGSe8fQkPjXazNmKh
         NvnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=BPOdHtMy10jXLLqWHQ04CL+6fzbfR9FVbgkT55IQYqA=;
        b=MUjZdejywqOshGAoOftPysY7UN4MWYfaCphp09ftVQtLsiJ4QJ576bBObBml7HlZcU
         Q7JCkTDEglTsBImeLy+PLA3kKgC5/QAzInkqzK+uJS5ede7RgQ+IjY/Fn6hZsz3O23L8
         F7TJrhT7nKEygCJGHZDgzmMJHHCdGVgwmwcJ6dVvX7cVsatoMv+iqmSsxNXxIk1VnsEb
         4Ki2adi+ppVqVPmac1SzrUvIdeBCx41WNaVsUYz9dnAMCGEAaCFjn/DtF6Y5q+jVUEi/
         RZO40qqhN6ao7/e3FEvDOs1so4yi/39eAgQ3rH1+21i9piWrOGAVCKPsvS2FE9GuM/B1
         Dh1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsN5lIG1;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id d12si171171pjv.0.2020.02.14.16.06.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 16:06:00 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id h4so10989106qkm.0
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 16:06:00 -0800 (PST)
X-Received: by 2002:ae9:c014:: with SMTP id u20mr4967709qkk.53.1581725159728;
        Fri, 14 Feb 2020 16:05:59 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t3sm4312931qtc.8.2020.02.14.16.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 16:05:59 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Feb 2020 19:05:57 -0500
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200215000556.GA3876732@rani.riverdale.lan>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213192055.23kn5pp3s6gwxamq@google.com>
 <20200214061654.GA3136404@rani.riverdale.lan>
 <20200214180527.z44b4bmzn336mff2@google.com>
 <20200214204249.GA3624438@rani.riverdale.lan>
 <20200214222046.bkafub6dbtapgter@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200214222046.bkafub6dbtapgter@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hsN5lIG1;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Feb 14, 2020 at 02:20:46PM -0800, Fangrui Song wrote:
> On 2020-02-14, Arvind Sankar wrote:
> >
> >I was testing with hidden/protected visibility, I see you want this for
> >the no-semantic-interposition case. Actually a bit more testing shows
> >some peculiarities even with hidden visibility. With the below, the call
> >and lea create relocations in the object file, but the jmp doesn't. ld
> >does avoid creating a plt for this though.
> >
> >	.text
> >	.globl foo, bar
> >	.hidden foo
> >	bar:
> >		call	foo
> >		leaq	foo(%rip), %rax
> >		jmp	foo
> >
> >	foo:	ret
> 
> Yes, GNU as is inconsistent here.  While fixing
> https://sourceware.org/ml/binutils/2020-02/msg00243.html , I noticed
> that the rule is quite complex. There are definitely lots of places to
> improve.  clang 10 emits relocations consistently.
> 
>    call	foo              # R_X86_64_PLT32
>    leaq	foo(%rip), %rax  # R_X86_64_PC32
>    jmp	foo              # R_X86_64_PLT32
> 

I guess the reason why is that jmp instructions can be optimized to use
8-bit signed offset if the destination is close enough, so the assembler
wants to go through them anyway to check, while such optimization is not
possible for the call and lea.

clang 9 emits no relocations for me, unless @PLT/@GOTPCREL is explicitly
used. Has that changed? (Just using clang -o test.o test.s on that
assembler, not too familiar with invokation syntax)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200215000556.GA3876732%40rani.riverdale.lan.
