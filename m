Return-Path: <clang-built-linux+bncBAABBTO5V34QKGQEGVACQ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5141723D738
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 09:18:39 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id c125sf1605761pfc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 00:18:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596698318; cv=pass;
        d=google.com; s=arc-20160816;
        b=hEZcPV/OZy2M1N1BTp8iv74kPzWZU4lGhMFX6Uir0Zi63qLLBdCvjI9e/ToOyP50en
         etKUgTi6DZQchwDQ1wux2bLNiDl2P+Hb7lvGi+ra1e7YbbF1kitBrMKjwUHTAfTM2gKd
         0U+Klq0Ocr5Ee7H9/DOBZmz9lFGKBH4h38jxFKNNvJoZZQO5KrRzGFVMPzueIL+bv3ee
         RrLK7jdFhvQLBMb1L5hXM8vFjbJwm1VqEHgQzZOF6sHH+fB6tF/dA6/XGXOtfWKDI3md
         RgcuTMXAZhhf0xmoUuhfBz/J8rzvzAz2q2Rh5miw540ytbdvsBDBpe5ohtUPAzr2F5go
         oD8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=6zi4AxVjDHva1YfGXnJ+2q/wQBrIM32o/DUSRavNJII=;
        b=cMD9gMt4t9oy5dhtKbKB+8HAHhDOlLUNou2Xrx+d/GFuqa4DxMzW5FuSg/Ycs8/gnZ
         KXcWs8NGabxvbu0T0oC3G4F1qqPzWNgyU5NgTInJj0ycLzfd9c8xY5crstRCJTMlO4Nn
         9Sv6Z6k9mmQq5hBFDv+sifEbfPD3HZ4ilRLMXWE8bPyGb1hXnvY0OMfx7GbP48W7otHg
         p1rd7kq0v9xx9U7pHvpPO6Tkuh4VOdPGHQLtp2E87gxXAnSwwBu7DFC12KS4ht94BDNv
         k2x8P9hTJx3db29DyEDib2DhHvqiKljfDxKgfKlJucBSnZn1SsyZqACG8rAmoexM3Xi6
         Fwuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yezhenyu2@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yezhenyu2@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6zi4AxVjDHva1YfGXnJ+2q/wQBrIM32o/DUSRavNJII=;
        b=p7BL/PQlAllR8qIw737sLAqzeRkj0echl0B3hmkuSZeYjmNV215OeWk2R47E0GpOlo
         qrW9vDpg4cjcwQf1VtuCF/1yUhyh/TfEJiDY+c0x2WkPCXpTIm6FU+k1ELBBSzfGH0VX
         fkGhKJfrYRK+r7Q5FGuHHv4uzfDDJDxB/uJXMeItM17s3QiWHBCXUYTSfwhCFb7ghDR6
         CXxgH2Q/tzeiuRGL+OiWQNceMwviHOJxmHFY1uUbNlrsiL7yoDScVfYQVwrQLgt21DjD
         Gq9s6UDAGz9vU5Y+xbCmI/PcxvnKCtk8NW6bXzKqgqDs04xf4ym6NP//ZBsGzomInWeE
         GBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zi4AxVjDHva1YfGXnJ+2q/wQBrIM32o/DUSRavNJII=;
        b=m4k+LJmbuemiE71nL/ou4TulpeSMOw7SqrZUH6k54DYdnodS1yLOC162RjIQG8TW31
         c92pA7tbsixlSJsj2Bk5l7nsHJhhT2wYEj2FAp+qVbovoSKZ8bcSXBeOkzyi3xHV0oMY
         VIs8CEiAlxMVEoPPfTX63SGXn03mDUZ2U/xqZO2KYEWegAbOwjwDE4m/cCrCE57N35R1
         C4mMTu/jqGVeMcOSl4wwhU1rN/LyQbMvgybHcnnuWxE5XXS7nRt+WjDvAvf2PbqeUxlX
         nXdN1XbwoxftHhQPgNVww/ncwvhEPBouepM1YlgaLlrLwW/ssV4RVjUN4anF1RfBZlhb
         3I6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v0lXlPG5xleBpHfFmU72Kibg9+T/y2T0DK6lLmRd8PU87vD17
	eZHWtAWvMM7aj8VmgQhMj/g=
X-Google-Smtp-Source: ABdhPJzeujoRdXGLb1b9AkUeqZAskkeQwjM+nevjFAwBiT0YE77WZH21teR6qlr7BnjiVxsglpAKXw==
X-Received: by 2002:a17:90b:4ac9:: with SMTP id mh9mr6832275pjb.40.1596698317832;
        Thu, 06 Aug 2020 00:18:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls2166388pls.11.gmail; Thu, 06
 Aug 2020 00:18:37 -0700 (PDT)
X-Received: by 2002:a17:90b:c98:: with SMTP id o24mr7160924pjz.31.1596698317506;
        Thu, 06 Aug 2020 00:18:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596698317; cv=none;
        d=google.com; s=arc-20160816;
        b=xvwHM1pZnW8xBc2bY3Q8D3AuAlqWJ/PfomObly8Cgant9QWkyg0htNnJmiZttxQBbi
         PeDQxPCA99dP3JQx0UMLAT53dpwYTPuuIE3EqLt04Zf7uhu77faF0eua+NKR+NvFzEQK
         oWHYEAQa2sPs4BaKKlCIepTJffxUs/z2zhfTnSgg/EpjU/vRnue9f/WP5K3bv+WVZ1ml
         MmgNnwr92zFb2FxnuyNWrex7bb6Y5skeZzM6s7QUdfRRAGDeETihniLcWsl2PAMJL8Je
         RcRVX2OGn6NHzovhJXdHLp0cF1l1zRZ9btNUDCMmpuRGrb1cB52dafBBPzAoW95mBz1/
         x0jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=hQVNbyM1EWhSnFiZue72B+jShlyhrtWvm+0bywRPPVg=;
        b=AeQ4UariJqoXPd3fKbQDWae85p5WI6+pcdiNjBFCCvEneU5uzMafY3m4k5HfLQIRje
         Zw6rvSYSiELh3qGAL4uj/ayu02lvXF0p7bjAaEOD1gb7obX8LACEWeBzLBLmQJX1nUOZ
         /GLUzOGJmdRPcNDxDA/oMIAtyT+l+vLljgufryhavAojcuMNqg/V6UdzLsjV5MA27YRe
         JYifE8Ca42iYjDKcTBPbEqqX6YuwKHlTw1eUDsUld2aSOcCmanQEUhk74lRsiCw9JLZ5
         gdzQ4ivb3WwIGt3MlBmoKYifmmqKmnWTaJITgNxfDerAq2KuXNJSjc0R9bliFmGurXCY
         /esQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yezhenyu2@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yezhenyu2@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id i6si231471pgj.5.2020.08.06.00.18.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 00:18:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of yezhenyu2@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 07FD0DE76A8B34F94D7E;
	Thu,  6 Aug 2020 15:18:03 +0800 (CST)
Received: from [127.0.0.1] (10.174.186.173) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Thu, 6 Aug 2020
 15:17:59 +0800
Subject: Re: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated
 assembler
To: Sami Tolvanen <samitolvanen@google.com>, Catalin Marinas
	<catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
CC: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20200805181920.4013059-1-samitolvanen@google.com>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <95156879-d76e-65cc-1469-ae3096aa95e4@huawei.com>
Date: Thu, 6 Aug 2020 15:17:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200805181920.4013059-1-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.186.173]
X-CFilter-Loop: Reflected
X-Original-Sender: yezhenyu2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yezhenyu2@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=yezhenyu2@huawei.com
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

Hi,

On 2020/8/6 2:19, Sami Tolvanen wrote:
> Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
> LLVM's integrated assembler, because -Wa,-march is only passed to
> external assemblers and therefore, the new instructions are not enabled
> when IAS is used.
> 

I have looked through the discussion on Github issues. The best way to
solve this problem is try to pass the "-Wa,-march" parameter to clang
even when IAS is enabled, which may need the cooperation of compilation
tool chains :(

Currently, I think we can solve the problem by passing
the '-march=armv8.4-a' when using the integrated assembler, just like:

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 55bc8546d9c7..e5ce184e98c2 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -91,8 +91,12 @@ KBUILD_CFLAGS += $(branch-prot-flags-y)

 ifeq ($(CONFIG_AS_HAS_ARMV8_4), y)
 # make sure to pass the newest target architecture to -march.
+ifneq ($(LLVM),)
+KBUILD_CFLAGS  += -march=armv8.4-a
+else
 KBUILD_CFLAGS  += -Wa,-march=armv8.4-a
 endif
+endif

 ifeq ($(CONFIG_SHADOW_CALL_STACK), y)


No need to worry about that this might generate instructions that are not
supported on older hardware, because the 'TLB range' feature is only
enabled when the hardware support ARMv8.4.

> As binutils doesn't support .arch_extension tlb-rmi, this change adds
> .arch armv8.4-a to __TLBI_0 and __TLBI_1 to fix the issue with both LLVM
> IAS and binutils.
> 
> Fixes: 7c78f67e9bd9 ("arm64: enable tlbi range instructions")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1106
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks,
Zhenyu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/95156879-d76e-65cc-1469-ae3096aa95e4%40huawei.com.
