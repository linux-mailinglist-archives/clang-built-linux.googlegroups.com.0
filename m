Return-Path: <clang-built-linux+bncBC2ORX645YPRBLXPTL7AKGQEECPHZZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B6A2CAE9A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:51 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id t1sf1981251qtr.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858670; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ax5btSR7Nmybh5jNOeH5dY/qyFpgyrCJ3JRrOHkoaAks8NT5BBSKSolvAlImqmQC6r
         n+gVYqsmL1PUBF6D13QehA9NN/+QV0A5wpVvz81sLR4G4JXXt2DzXaYYtdsuytsQB9N7
         19Ty6H16BJ1BJB7lkBX/VGFbtutNgxyxfAnIbgCnE6ghsPzkBpFqUKLeEHymfwrbVRd7
         S86ZzLMIapJJmSnNNmGfvJx23B8DsXTn931cR6uyEGElDsNG9luylxjO8tBH2GESv3PZ
         26kRYGCi43Km0FgcsCHB2a85qvJcCTHI5N2VA+fKeSz8Hlc/df3tJlo5nSXwDLMU8Tjs
         3ieQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=k3u6SxWxTQhjdLIPWrQfVraKrkz72B8aIdObVZfXwl8=;
        b=HDiQ+vbIevBYWfsjSc/7dGFgBbTwDWNGG6C7LOBI1y3RrTL4G4XJBFemuYbMN2eqAp
         Vsa5uEvbNQQ198/GujhD0CMU0LsH81OdsrZx1fgT4AI6IZjOcl+Xo7Zc9cicGyr/W+hO
         vxEvtNTzBGVcVFnpoPYUnZqEbF+3qjEk+Nq7V7huhAtvNUkCHRJIIPc+aUjEnZJVG6IW
         c+ppVo0B6n9s8RXe6GtpCv0ApP10fZmlLEdshhql2lOM1r6IbRAYZV8heTySV/A8ds9r
         Ekca9DcShbmHj3mNhzkXbkzaif1dKriUHQ1rpcxbSJGq7lpu86XWoa7yKSTuN1ul+2ZS
         lkfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhIES9mZ;
       spf=pass (google.com: domain of 3rbfgxwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3rbfGXwwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k3u6SxWxTQhjdLIPWrQfVraKrkz72B8aIdObVZfXwl8=;
        b=NvjvvWptx48qm34tDAchEspXjR7BZvng9KaZmtSJWXIeICIhfIkRLnLB9Bv4Ny09QE
         oq9rBi3nP0qfHODAu7BJ/eFEMx5P9ypJ4Y8/uNYwYuKnXd6mXi+0eEoHmN0sFO02zMIj
         HvWKfdzqtBMKdnT69pTC5zuF1MJKWNN8jN/bsO1/3xnsBBS+BhjiJx0bl4xX5i1myrbQ
         TG+eNYLUKJMqjzlJK0IDxEOXnVyLuzoWjMCKV/x6//JiKZio/a2ZdfVZEXS8YIfJHVLl
         FnaF2OOMtr/GIaeJlMh91gSeFPSCodciqmxmHxTPcQmFl4LRIdGISV7bIKHrjS1oQR7x
         Calg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3u6SxWxTQhjdLIPWrQfVraKrkz72B8aIdObVZfXwl8=;
        b=XnB8J3pH7kz6O5gV9ImQfFPxkna7LarXSYOAdQHeZ2Ofp528+tmG+GvuofTQg+u8nz
         d5woEjEq54bEuMB0CJV657mOyNO0DiNaaKr46ogZ5tfsAod4XIbXPl+Loq16SNWvzYXD
         d7Y9XZuM+2rvLc5xB+SBGWvByjGD/h29lSsnFoJ1clwkGhR/JTsck7k6DUXlI0gR6U2U
         x42DCg/JpTrVo/5u0O+J5VdbmhVhbdmnmQ564v6lY/DeAsIp90DaGdz4s/5nf0bqQPDZ
         KL7zXRVC3Y4XfLPpz5/UpOeTrQ1oBtvc+tZjuVYoxZXzvGoBWd0Hxxh1Lnumbbz1ChSX
         VwhA==
X-Gm-Message-State: AOAM531vpAuvzHgavwVTolwewesQISrpkrcjSd5al1Q2VzLmXWoubHAS
	GdbjHwECSMLPox+D+il8LIo=
X-Google-Smtp-Source: ABdhPJyReZS00rPmAKLsCxe5eDl4OQMXlJIFgGpaK1qboYSZacBJQfpYN3j8Lx5HgA8MXyTjKqEhmg==
X-Received: by 2002:ac8:7a7b:: with SMTP id w27mr5035117qtt.76.1606858670380;
        Tue, 01 Dec 2020 13:37:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7196:: with SMTP id w22ls3484qto.6.gmail; Tue, 01 Dec
 2020 13:37:50 -0800 (PST)
X-Received: by 2002:ac8:58d1:: with SMTP id u17mr5021642qta.158.1606858669986;
        Tue, 01 Dec 2020 13:37:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858669; cv=none;
        d=google.com; s=arc-20160816;
        b=lzO0UeSjxZB23+NXQRJsVs4Ch3W+q7TRrtwA2rME9AyUknAdrg1zKkCustBJbaqW24
         rKdn8wGP0TnJ8crI866v8uUkdkOSuykHqqS4CD+nAupjG5LjfDXUhG2oaCYXt63ou6at
         NF5+P5NJr3QLhpo8ojLQ/Lg8krC+t7LY60hROpCi8b54Vvu2g85fLrhSg8UrmBO0Yz7Y
         nFxEP/twvEyM2qmI2gWc/2MCaJBGqAyVhj9IHFg1n4jupwh8kVDjvunSepTkh0y6ljFg
         GvAtm6NFPrxiKTfQIN0Aa4jLdhohVvxxpqaRl1e9i7CurTbHmNDfDOBP27vZLXSuU5dS
         6IIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=e77AaMfAoOs/rzHffqgIcODt2AF3tTsGcr7ctg09Fiw=;
        b=zlqoBgT8KZQAyHkhMmQ5iwMABMwNsddBuJePB5TlejGVmsR2YoyNvM6dnYTQz6KdKu
         s8dXYxvZQqk/tQlKy1nhj+nxpwOcuc6YkLQSP3a1mxXuCnPPRpgak1IQEErdlCWiyBIj
         +A8VZpDTERmTL6ZonOX6pBbo5S+8Lr5WePB5hNxvEUc2Wlo6Cubya79eUGqHJ5+qGgAu
         Iib+DZZcdDpxPtjnBNbQvvxGNIt6cvKd2zZ5HVcVAliB06P8M2bMlFYN/qUo7I4qaxTb
         6pJk/PoAEQOqyC/XumROyzoWSeWcLlHY/ZK/T8gYq8zSbq2so4cieDMmV1+V+hPPPogI
         B6hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhIES9mZ;
       spf=pass (google.com: domain of 3rbfgxwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3rbfGXwwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id a8si68438qto.0.2020.12.01.13.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:49 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rbfgxwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id 141so2452327qkh.18
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:49 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:a9d0:: with SMTP id
 c16mr5348289qvb.5.1606858669593; Tue, 01 Dec 2020 13:37:49 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:07 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 16/16] arm64: allow LTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PhIES9mZ;       spf=pass
 (google.com: domain of 3rbfgxwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3rbfGXwwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index c7f07978f5b6..9d29c48ecd4f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -73,6 +73,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-17-samitolvanen%40google.com.
