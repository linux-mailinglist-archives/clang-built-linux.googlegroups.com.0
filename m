Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBDMPUT3QKGQEYXZFC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C11491FBD5F
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 19:55:26 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id ge4sf2782988pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 10:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592330125; cv=pass;
        d=google.com; s=arc-20160816;
        b=mR84fXgdJCPleR8BQeU33Zq3tb5EL1w8JDktA7A+E7g/+/Diu/TRjmWoXgcIihru/i
         M5rdRuZPiIBxl4wsxr+WQ1CEo9cA2gn2yo8GtrOHPz5rwVI3WY/7oi6E1YxBtLIFG/ah
         50dzjKjgnkmhjNgFjyPRWmS3RjtxGCuIaIT2HpMslO8dvCQOjJ0CNKbB9VbAi9zpFvqC
         xdHf9WcQuW/vY8eN2gGgX4EIlo4/krZWfypWgfmEhR8vcoPJfpodbK9Le4t0aK4UQYmF
         bZQhTyX2cEBoRaQx/1w40wpR6eK5dHwCLqGBLlqaZLINbT+yqh4T+T5MFyVhj4pd2zwD
         SNfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bFIE5oRLw7CB2WEPe4RSzSb5cHTY4BdLE8SUJ87eu/c=;
        b=x2GFLpH2Gf+UcfiBb9fEkOTwG5yvjf69hCAz42OmNtDxeycTBX+iNZa4aNUwM0ROfs
         e6GU/P6wnmLnIGlLn7GsEN7p2gDYOrr66xoMQdALqRlQ9qrUwCkotjr1Y/lBzX0/0r0V
         pc0Ialx7XXWnHF9TryhMD4XeC1Ic+FlDw/J9AYUhs2B+S2W6cpmIeiyqg5Wux5intJSj
         ie25lD51yyDo19s92FQ4K7XQEwRMF295GwqcpF2zJDVWfd4bvRqfLHkU6E1bkqzq4cwD
         KOBVO25ZIaw1ycifw9wR8x1uhdGSa+qfvm4+DW5/KSDMYj+yvdD1spttX2ZOJHUjGuHr
         iAEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qx46rYZ3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bFIE5oRLw7CB2WEPe4RSzSb5cHTY4BdLE8SUJ87eu/c=;
        b=nH8IhyUSm314ZAJCAasoEFF7b3AvpVy5DQiB9cR5Rw2nAwQSX2QDdlIdcpqPUmxr3u
         zHgGOVGXVlcHwPx+7hBR9iWsfCmyRafJ8tv9u7FWDArnwsJdY/OujKgs0dQof5tKC9rt
         l16YynHA6gnuqxQUIvwSnVRg8DlqS5o09eGYdQLIrLkg/uRXmkKt6I/p88YF3fP2VDKD
         4i/SSzvfZgeBiYfWjQhgMAB9Es/uxIk9jlTMqjIbbiNwdGk7SLGHgg//a/PHCS5g57uV
         Z3pEQvcyVGmUD2zCgNh3hjHtGHvsCWPW3NHw6Ab4EfpcTdAUfX2HkAA09Zsgmi3BScqA
         TQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bFIE5oRLw7CB2WEPe4RSzSb5cHTY4BdLE8SUJ87eu/c=;
        b=CfgUWSYQWEuMf7/rcb2wpi6QIqunZ13j61kDRC+D8GFJnoVxbLN66hUnZYCe2ChQAl
         7HzG4peY8WzePtki/JDrRIJaWm7UraLs0bItIh1dxCFsaHaLTKGop7nKhivtap2dVf/C
         4UkCMsL1HhW57hA38qRjXDEAC/ZUBPg0SqkNCpomRimEgQOLcqzyhtJfzIT8MsGR1SEZ
         q2PChvToQsOV4Wx85Rg3fN7OnAQ3hSendSMyuibMTeOng6TDnjIbxeGVTiudwMB4qHl/
         zNAuCMm9JIlU8cmcHAOhRk+pq0CirxfPlbgx/TjW+Oy+y3q+BlvT19GdFohJcF9yEmGG
         PgeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aJzfMKV0drSZ2mEwHn1f6gf77Pa3TTG4dbNvhDaLcoWogD6w4
	zwlkuxPSP1P4NTIR2pTYgJ8=
X-Google-Smtp-Source: ABdhPJzLBo/wK33ezLKOk0t5AVkfVkhC6rf3pxPbn0bLtoHxek/8FAGG32jqgGj/vk3eUqz+3E3kvw==
X-Received: by 2002:a63:d04f:: with SMTP id s15mr2878087pgi.449.1592330125377;
        Tue, 16 Jun 2020 10:55:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls5343676pfh.9.gmail; Tue, 16 Jun
 2020 10:55:25 -0700 (PDT)
X-Received: by 2002:a63:2246:: with SMTP id t6mr3016246pgm.211.1592330124857;
        Tue, 16 Jun 2020 10:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592330124; cv=none;
        d=google.com; s=arc-20160816;
        b=aCXTMDvt/lbdkLTxUDK/Sk4FK6C2ISVHpEYF6XDCoj3j1URJ5Xr4aLGhDOw/cYVZEE
         G1/DpWMFbluRUWUAFRmL8efk9zK84bxEynQ0r//BmvD6QfCMbtPIViYrq6+3UD2YgM1E
         iIc89am+pL1K7cpcFYFEm1jCVy2c5yxBB8rt3NU7JlFkDypDbqOooK0+hMqjoQ5fj19v
         Ft9vjZYXx1bQPhpblRdddporxGHNwmKphnLXJwJ7H2gxe4Dky65FHdGZuK0SfjGCWesh
         0pwXebnwh1Yyg7MOW91H+w0vRIx0SAQvNvjQRl6vNsdGpTr5nMRfJgXb/oocfPxRqWN9
         Dz0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fYr5oA41DSoNUhZcZ7g4BWdiZhpAFUeGrUW/IfBUjrY=;
        b=zxZ9JJcYJttvE0SbQzlPS/xL7U9ydWoaXu0p3MKUsc1vzeviv7X5kbrGYLK+wuf5+J
         m2qWwmnBsF9M/N7y6HS/K5ioombB9TEgYKHvkacwVkUnt7DNt5kerV6JhPSBqRIjQEmk
         7VNBkSDSH1/e8Of/9ZujR+e3GhC0/TlUfRcmEb8phug+IqrUKMcQ/lz30oiPgvyEr8Ar
         u6+TYnIymfuiH1K9TJ/tPKATGqvQ7utT0YMfTRd5IkrrMtiBUcWpWh6p3BHuSi4CcFT0
         eMIVEZVUj8S2q5De4sIJxn8h9kzgI9A/CdTNB+P6pr6GlCpcsmFTl10XHAuLME0sr4UN
         fSuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qx46rYZ3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h9si493916pls.2.2020.06.16.10.55.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 10:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DA87820776;
	Tue, 16 Jun 2020 17:55:22 +0000 (UTC)
Date: Tue, 16 Jun 2020 18:55:19 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com,
	daniel.kiss@arm.com, tstellar@redhat.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200616175519.GD2129@willie-the-truck>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qx46rYZ3;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
> On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
> > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > > > reviewed so should be merged shortly.
> > > > 
> > > > Cheers, that's good to hear. Shall we have a guess at the clang release
> > > > that will get the fix, or just disable in-kernel BTI with clang for now?
> > > > 
> > > 
> > > This will be in clang 11 for sure. Tom, would it be too late to get this
> > > in to clang 10.0.1? If it is not, I can open a PR.
> > 
> > Any update on this, please? I'd like to get the kernel fixed this week.
> > 
> The AArch64 backend owner said it should be okay to add to 10.0.1:
> https://llvm.org/pr46327
> 
> Tom just needs to pick it, I see no reason to believe that won't happen
> this week.

Brill, then I'll tentatively queue the diff below...

Thanks,

Will

--->8

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..4ae2419c14a8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
        depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
        # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
        depends on !CC_IS_GCC || GCC_VERSION >= 100100
+       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
+       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
        depends on !(CC_IS_CLANG && GCOV_KERNEL)
        depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
        help

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616175519.GD2129%40willie-the-truck.
