Return-Path: <clang-built-linux+bncBDV37XP3XYDRBF7R6X7QKGQEIQZNRTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 318D22F2C96
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:23:20 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id x64sf1946893yba.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 02:23:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610446999; cv=pass;
        d=google.com; s=arc-20160816;
        b=HD5wzUka6NLBKalSrDQlGGj0vWEx6YzdWIlc9qPQ/hnc6iL+r1Bb45iVZp86mKrZnU
         MSKq2/BqxERAlDdaFqn3tsa4yl6c9BZQubOMs3X1ec/mT9MrC35QKpY9peMdoGQWWJj4
         FEbmh0ZBrb91zNYKpuSf08vjBulmVoHmOzgRGX0zlmgt+fvzkSVWLlLmPfbpsCI61JN6
         cPWbWWzrEp5u9+zJEpGXtaw/5dyXieOPxj2RfeBqde94mOOeJdmfGZU84jqHM+81rXjp
         WNzfkPu6bHr48OasE1b1k3ChhOkv8EFr1iFEHRUfnkl1pdwpr2D3kycMuPBXvdYz/ZAP
         slGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D/R6srnp1ap2AhrJPmctyWkv5kIDZaKtbCnwG6ec4KA=;
        b=TUUIrlVSuYBlzdqsR5qJbsUPqbp4NupS7mv7BFc0tG0XtOqYMUCHg/2FKbBpnmIl9f
         7P9od+mwCJP3Rdjtz0Yg+QAU6w0XBPPHzuV1kc9X16VWHp5yZTIKhrwGBas75eG2ezra
         bDoRqgxzrvh7tqndp58gcEpXXK8STob+WSG0AwX3QcTdZLzx+irzRn53rOEINulTdGK7
         kTkBdfjmItkBz4VCh+fVMcSZY2/5VYFjs89JpIfHK4MEaYOXxW0kh/vjQ/m3Us10amZ2
         ThlqCQG2cg8886P+eLkSJd6mMBUvNBzpQBX3iJqBqtbiSfBP0+FXCgaDdyNCIgiY22WY
         dfHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D/R6srnp1ap2AhrJPmctyWkv5kIDZaKtbCnwG6ec4KA=;
        b=XgQDAWN0ZZ6q8Qxl5NFknnXWyC/LeqzjBDxGFoOmcmrxEv/k2TdFJsPY14drBCe0UB
         N1YneJ8tfpupLk2mtGb+MNq4r9owmkJ9HgknIqufQiWM1mXMvP5EqbTXIy68y8b3vy2A
         R353/0aSxzEDJRHNTvBOPAuUW2PTVoS7Fg5VtPNhb3O0Bd188JnhhzWkOX0jYvHqkXON
         C8SrjxO/SMbNC79WIaQ/K6BW8Tt8WxgFbsXYo6LNxZCVJNGm8g+Ha7zHpm51ZdqkaKdX
         WpnErhRR+2/K4YoOTbxPzlocSqYGsfr73JrRvWGXQ4KQduqIT8gBcQWkU2PO9fzogNnK
         m3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D/R6srnp1ap2AhrJPmctyWkv5kIDZaKtbCnwG6ec4KA=;
        b=KOnaluQOFtn7+PimikNeJ1TUV6B8hS+RxjF1qD94F0FgAFsXDORGxDH2aJvuNmtMJw
         tChcTSmBS16fi9KtoNk2U+aYpLEqfnVWuBWG2s4MomzfV/nUKSbYms02I40BdYjVcuFD
         Bpn4y1PMY5qFwssBDyDiS+aune5OCuQYzkW2Liz0aHLgpq/GJif7Ci7PB4mtETALHbxN
         HjJhEBCfVxvcBqpE2BmwltD+7YQ6iLzmIrrJBA/tUDYsJlvzz/Zu7B5toe2s2Z6wLSBa
         85m6qSWii3aCSAOQbxcJBkAYgZee7uqMhOWwlIPpd472gs+/lKv0DdphAaoGcm/zBUmb
         5sZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wwEK/X0205ZDc7zz7EyZcLPyzQAP6FTAxcQSlMbFkrYd8HJw1
	k9HLVSX5bN/rrvRJPxbI0q8=
X-Google-Smtp-Source: ABdhPJxSsZNdg0CRX1Z4qrvYN+T45SHdJGYRONeQz3n8lhr1SA0DTjSfI2LMrLDD7LN7rMi3izX1sQ==
X-Received: by 2002:a25:7c43:: with SMTP id x64mr6135597ybc.267.1610446999209;
        Tue, 12 Jan 2021 02:23:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77cc:: with SMTP id s195ls1361042ybc.2.gmail; Tue, 12
 Jan 2021 02:23:18 -0800 (PST)
X-Received: by 2002:a25:cc92:: with SMTP id l140mr5911157ybf.252.1610446998703;
        Tue, 12 Jan 2021 02:23:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610446998; cv=none;
        d=google.com; s=arc-20160816;
        b=uquk7R0NV8scHowaJccR039GRQMTG8896zs+LhxhS4Ckmxq9XrbQVIuIkK/v3VNr2s
         CKpjIstLPW+SBP9CnWbTRPfGn6cPgk0pbaNL7p7QD8D+WUohErcT7czd9gY24VIcbXAj
         OvuKTNP56uUrksTQMARXax8YvbBz4asD/kgr8Nlm3mOxmyn6iWfovx+gUo8iHeshnbfJ
         YjgUIJQmypi62U7cDn1e33M5EOLQ1uAI131bSJCXlDEF2DwyUmEP3hy9azQAG9n44DX1
         9rHz/1jxBRy1106MI9BA17Ggw6A7aJfIRE7zfbpPv8tJe/g5kvx9YcGPJAno7OIYn3yX
         nvJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=aD7j6QI8sxUgCIhviZkTafyTsltAgdpGvKOTA0Wz3d8=;
        b=CgHIeXLUuzpwkfVxZk5U9t+/ybx0hVQ4ZRHcYGXITkrkvgMBsn30km0+d7ZcI+5GoT
         +EWTGAfzZHHYhbPBcJ7UMC/xYsbdr2Ynewg5euaPbi+VaKqPrTEoqcDQenl+LEOkc7Rv
         iio+Fow5y+amt5Yzuka9cz7uzw4ZLiFR8gdy4dXs2OktfUaU0XlE1qsxsvRws766Ul4M
         OdRBz7pGq5XiOemYfc12fySx25f8aCogW0uCwbCNQ/xRIIpT12IEaxpbfRof8PnmbGL4
         lr30Lwqdl3SIvmExg6p0IQ0pm8TAM+SemycXN0FBHbPqhp3vulKwH2ybEyZFnzrDC8ee
         ZPpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s187si295813ybc.2.2021.01.12.02.23.18
        for <clang-built-linux@googlegroups.com>;
        Tue, 12 Jan 2021 02:23:18 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28AF231B;
	Tue, 12 Jan 2021 02:23:18 -0800 (PST)
Received: from C02TD0UTHF1T.local (unknown [10.57.57.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFF373F719;
	Tue, 12 Jan 2021 02:23:14 -0800 (PST)
Date: Tue, 12 Jan 2021 10:23:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
Message-ID: <20210112102312.GC34326@C02TD0UTHF1T.local>
References: <20210108092024.4034860-1-arnd@kernel.org>
 <20210108093258.GB4031@willie-the-truck>
 <X/jDGbwDNcVrZdDJ@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X/jDGbwDNcVrZdDJ@hirez.programming.kicks-ass.net>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Fri, Jan 08, 2021 at 09:39:53PM +0100, Peter Zijlstra wrote:
> On Fri, Jan 08, 2021 at 09:32:58AM +0000, Will Deacon wrote:
> > Hi Arnd,
> > 
> > On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > With UBSAN enabled and building with clang, there are occasionally
> > > warnings like
> > > 
> > > WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> > > The function arch_atomic64_or() references
> > > the variable __initdata numa_nodes_parsed.
> > > This is often because arch_atomic64_or lacks a __initdata
> > > annotation or the annotation of numa_nodes_parsed is wrong.
> > > 
> > > for functions that end up not being inlined as intended but operating
> > > on __initdata variables. Mark these as __always_inline, along with
> > > the corresponding asm-generic wrappers.
> > 
> > Hmm, I don't fully grok this. Why does it matter if a non '__init' function
> > is called with a pointer to some '__initdata'? Or is the reference coming
> > from somewhere else? (where?).
> 
> FWIW the x86 atomics are __always_inline in part due to the noinstr
> crud, which I imagine resulted in much the same 'fun'.

FWIW, I was planning on doing the same here as part of making arm64
noinstr safe, so I reckon we should probably do this regardless of
whether it's a complete fix for the section mismatch issue.

Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112102312.GC34326%40C02TD0UTHF1T.local.
