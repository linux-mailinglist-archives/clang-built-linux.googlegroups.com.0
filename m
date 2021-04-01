Return-Path: <clang-built-linux+bncBC2ORX645YPRBKVQTGBQMGQEKSUYFVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8B53523B1
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:59 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id f65sf4240088pfa.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319978; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/ZIdxTH+VijZn7kRpiSWuVMOYisVKpxAgElcjm/s8tcyMc7ldU2PRf1AOLjrzVPlM
         1CK6citQSfI8pOawOu085A60gKenmUBNyTTFHJQjLOddXXG8oPwU7ZD63BtFg8FpP3OU
         NwR0lSLhJmKlFnF5IS+/SNbOpTj6fYLhsxz1brQOa3H3b4KN/ZCXYPqEVlq3OHOXCapc
         Uvy7MYPs0PK2bhNdHq/3oscdC1tjxlgBtD4mH4HxyeHkE+DhJUiXeGA+KWjfuoc+aodI
         8q8GUQVMXeRO9UjegH2eNqm0K4n8GUBRD5cBsth67kIys3T5KZs32gvRNujQ5u70bSwW
         3c5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=lc6QMjfUcqlyW/RyHqVqvM9lfKXDJ41nyxsaHRUflNE=;
        b=bOwMhRD70n6qJVUlunvmAB3IKkZOoD7/u864niQPeLrs8mTiws0rP1HdTsZw7F4C1r
         WCKeiwSa/mliw1PGgBnwFwrj4Q1AmiDLZixM7CV8t2y8HYVf2chZtw8AezoBlBboKQSh
         Wp6ADYRFD4F4EcN2ev5Y19WZuIKRVCtCB7h7+8RqdvACYf+k4fqOhCKIWHt3JT023hJX
         aPQ5Sydpn35cma4xARqPebqKJSB8DVWhsNqb1JiofUhvIoxIKCx014jD0LSBvvXPRTE0
         7x6rlVLEL1F8FjWzQg5sjKZ553+SKqV/oTyEOGkjIYv0uZ5bRj/eM9xNZjDVhJfiAvjT
         Q4Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sWQZYrny;
       spf=pass (google.com: domain of 3kvhmyawkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KVhmYAwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc6QMjfUcqlyW/RyHqVqvM9lfKXDJ41nyxsaHRUflNE=;
        b=Dq1IvS6N7K4jXh+FbtBMwJZ1w9rtjTcncbCiDa2ZbaOym80nMNHruMRfTjDW9ebJiG
         Oa+AXNkTU4ZdpqQkXGXbKmlCfo1SnJRwdO2J4myllZgwOoQcAbadhp8383QRpn4P9cNJ
         AZXS9nHpDlYvtv0s/2ha87WWAlnAaiHVFyVEBdgaJAbFNzfeP69OTEV/2q22115atI0U
         EUIxlCrcb1rA4BdoeeB0mv/ILcACC52L/E5S6JQbJqddBEzFJxQTMUhmmm2RNagWBrUi
         mMBHwNpfur4s+P/KUt+YgDNv1qIyFhXZnO3ortdiOO2xqvldKiGiyIy11yWHLST3LoVa
         Nmjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc6QMjfUcqlyW/RyHqVqvM9lfKXDJ41nyxsaHRUflNE=;
        b=OA0RIrY9ikd8xKEX7Cjjp2cVCsh86DKagZ2AolaLctlqxMLJTKbn7+NufpLYCklqAw
         heaJ6eYKYJCrZbGNWnSzOwQyP6XwLcRYDlsXIQZiNRaib59/H/vQj3NBWj+3SUPqhGqC
         s35EBNZNY4kE9y7hXsTwHbozLEEIF19f1kOCCWiu/6EJP9nFOWmoc15/nfI7AKCEX4wc
         jfkfM402D91GSuJ70Yb1PIW0pAAAn3W8KjCFIg3ldHtOYoTe8o/gOr4jgxs7ZH45Jk3P
         w/L/wXx363cqWOQjmhPZLfr3emYJfW719quSAYWsRgJjEDC7g2mjbTh6Iwd3atBjwUUW
         RG5A==
X-Gm-Message-State: AOAM531N/29nBoHfR7c1NVsWqZCEorMbYm6rIIgAkSfBEwRZLS3lbrV8
	De/vFuq1nBfWUxL91g33t9g=
X-Google-Smtp-Source: ABdhPJxSprLUWqsZfg4v0I67XMTImtRkZkCU4uFcod43vdiSEIUJm5fJPnjkKzFU8TtOVRwKtp6nsQ==
X-Received: by 2002:aa7:8145:0:b029:20f:58e6:9c17 with SMTP id d5-20020aa781450000b029020f58e69c17mr9666111pfn.52.1617319978208;
        Thu, 01 Apr 2021 16:32:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls4402276pjq.3.gmail; Thu, 01
 Apr 2021 16:32:57 -0700 (PDT)
X-Received: by 2002:a17:902:c407:b029:e7:3568:9604 with SMTP id k7-20020a170902c407b02900e735689604mr9940873plk.31.1617319977604;
        Thu, 01 Apr 2021 16:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319977; cv=none;
        d=google.com; s=arc-20160816;
        b=s6ngQ9GGT1lC8NL2tFoE0EIIo3f4CLAFXSLete5erk8GwbUNPDeN9Xysx5dvxpinY6
         eXbPFqGLRPQcrg0FbffDvznGS7XlG4PNZy5AiQY2mLMvpNjPE6ElX9xKoOOEPId3INXv
         mjZ5rlK34qDmZGA2jaNS+y8UqmOX4up+0xHNdbnrkOTc7uZJE557NahA78pYpYnlkECi
         8s5xNxtvgmi6WE8NueAba5IzOHBqF1VXRYcw3h0vhkPM+x6d4mHjX+DJ3GfM/Wb33Tag
         JCpRWUPfGWRAbMgpSn3nPy9ozmVkgrXsjMDRH+mPQTNcAVQOFvkp+ggO21YRLhjQ0jvS
         YeOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Z8NWn4jVbToJav0h5JmVWRAqRYl6h2XMv8WXZ63o+ic=;
        b=NcNCGSSZHB9XC5Zl/Bs9OUUre7rOUHonDr5UHzXjRkKr3D1gFF1k2iSekIXhy5PSYN
         c3ySBznBe0SU2uqdMt3R9sYVGPehhnEWjhK4pgsoaDi98Ktasfbf7B5uDAWQLBURJBE6
         FkqP0gtzJJZcBt40Zs+hjcBHuU/YiqAoqiyMRRGyKJ28AcAzTKQncvvPqmF54jnzbEdQ
         UNBpx1pTqNBLlNUGyW7B9CzL+f0fXVmP0MO2ZPxuUW2GEm6z25kpBnQG8EjfPAtaflZz
         wtZJWGNvFNHm0+JX3bBfKmxVRo6AkgeY3oAcpc+v+pGMMXe1Pk56y+pp8pWaZcDhEony
         +e/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sWQZYrny;
       spf=pass (google.com: domain of 3kvhmyawkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KVhmYAwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id s16si266057pfu.4.2021.04.01.16.32.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kvhmyawkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id o1so4071525pgl.0
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:57 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:c711:b029:e7:3d4e:8149 with
 SMTP id p17-20020a170902c711b02900e73d4e8149mr10140878plp.38.1617319977301;
 Thu, 01 Apr 2021 16:32:57 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:16 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 18/18] arm64: allow CONFIG_CFI_CLANG to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sWQZYrny;       spf=pass
 (google.com: domain of 3kvhmyawkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KVhmYAwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Select ARCH_SUPPORTS_CFI_CLANG to allow CFI to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e4e1b6550115..d7395772b6b8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -75,6 +75,7 @@ config ARM64
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
+	select ARCH_SUPPORTS_CFI_CLANG
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-19-samitolvanen%40google.com.
