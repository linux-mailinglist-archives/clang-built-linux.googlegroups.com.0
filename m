Return-Path: <clang-built-linux+bncBC2ORX645YPRBWWSSOBQMGQEOUGYN4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D88350925
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:56 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id f13sf1764840plj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226075; cv=pass;
        d=google.com; s=arc-20160816;
        b=GM8tyY3ERfm6zoGsGghjhw7wZEqCRemPaWJsrVAWiLSX7Er8ZZAvQ9MAm6tIvjtrnb
         i76kCw0zhaQ5k6Ja8aNObP5P11dliyc4bl/D3FzY1/SMIhc9Dk3JnS2RMxM5C++3gbrH
         jjmJU4pSvkPFV7YTTxMsyi3Pr3zx7sD+2+5OkDioxbBgQ/mYD3U72PSyEI0EQsJ4ZlcH
         HcReuMTRWH/KC5g66KXsHUJDUIIpFkH7OiysGPF57YOMr7Ke/rwlx3IatmwDUtYZ2VcY
         a13mu0U4197CsyyOFWtWHERtWtRTqHoOYypGF8Np71i1H8VvKxdypJEN3Dy4IU4VQ/ET
         dlog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=d9I4rBcYmwqbXGhhRJ7BF+MMzd0/5xceeD71TnGTxM4=;
        b=sGuecWS/brhKnQQjusV6HNiS2ExhRJJkS1GgTEeiUJxq/oLZx1rJou2ZjNsziQUj4h
         CVYqz/ZT6KFnc+lohFBqi6HGxOt1G1/SgHBKGyl39fPaQ29sFSUPNb824rqqUvWcMQSF
         PpV0QN/xltZcEcEN1w7/gn7tVO74SS+kGdYXFP6TrSGlVYxg8lD38xvhY+8SWsffrEDx
         WrZUaxmrlsLs2NuB6Z00okgtQSdxYV/vlXglQ7/h6TyloQ1BgFjkt4j3M7yT05A0wIPL
         Ttll2zpUsU5fE0HMPZsQcdoB6lvbT7C63DEQIKqPqPXV+0QX0vwNO0Om1Vf4JfzA8baf
         6/PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BIwBbz27;
       spf=pass (google.com: domain of 3wulkyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3WulkYAwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d9I4rBcYmwqbXGhhRJ7BF+MMzd0/5xceeD71TnGTxM4=;
        b=rMeLE111ly4TBzVkuBSCKw9CdN0j74gGQwUalU8lYr5oHpyOIW0J+oAJ10vZauWTeP
         un8JANr+cbJ15gJdX7eHM/KXy8bSdlbdaMRngQcJI6cCKndSjQRuq4TF4rQk5bsRoef6
         EXtEUVGCtHM5WNqrHSmzb8xV+cq7ie+mi2/WFrObqXLlExn1Tkd1KOGyL6awGMNo5KFk
         bEsIbgjt3AW5XT5eEO0JraAAEv0u2ibxx/yKDeXncVj2Gi4cg+F9WtIPLBgYmy7ZKcvp
         rKpYyBEjOe4xHEmMhawGWoZxPUh5xoE9VK3tTv47lHLKIg4NzGSOapa+h4QBIPT1Qdee
         TKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d9I4rBcYmwqbXGhhRJ7BF+MMzd0/5xceeD71TnGTxM4=;
        b=P8G1727mPslVkhcwngkfUcAgFIDjBubt6/zQqI7LlvIgBxvB+dpzKCMtCVN55zGLsR
         RRivRPWUGl4rWdcqd4i0A7W4lnykL0aCdLOOj8o1Y9yXTM9KB1uDYrG1mdff/SlKosV6
         Oj1QRpFamO0Zxzgbpc5BLitD08WeaCLOcD01shR21Wi91EXuWubJsdVGwsi1tkN7+txx
         94NiPdMZ49seyh0tqsXlp9sTekYEdhscHVz4bdHMTWUSISwtu1ezFcCKmNJq2E9MG8vx
         5HOEq7PfeLXaTjGz8FDd39wpe7ATWFwLKVFoeI3670R5HUgCZVABIRkGHfbAh1mhQTSh
         WBjw==
X-Gm-Message-State: AOAM531RtwgNIHPBFfroqswXCqSsKBmnaZ8XvbpJ2cDPYSCkVle/Ic1j
	jjKDZdi4YhTvObTmGyKhVUY=
X-Google-Smtp-Source: ABdhPJyMAxo+aeMLhLtQ1ILXst0NVgf/sINIclHMUr2/9mXc+rBtXSvUW/4tnTh+/Sg1knlynAgtpQ==
X-Received: by 2002:a17:903:4106:b029:e7:49bd:4266 with SMTP id r6-20020a1709034106b02900e749bd4266mr5020950pld.56.1617226074999;
        Wed, 31 Mar 2021 14:27:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1382:: with SMTP id i2ls2067018pja.1.canary-gmail;
 Wed, 31 Mar 2021 14:27:54 -0700 (PDT)
X-Received: by 2002:a17:902:ac89:b029:e6:d199:29ac with SMTP id h9-20020a170902ac89b02900e6d19929acmr4953263plr.46.1617226074429;
        Wed, 31 Mar 2021 14:27:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226074; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNO/JY93dDOdEcxq2xpPV2HTZwXPVLCrYW8pZVOmdnLC5NwNXMUAEIcXTv1ClqlG+y
         W5OZVjW/uCcncJPfdCNNAueXnXHbr3EuaAwPrTKSOh19KzhxEUy2BVW2YFKoqZfJWMBQ
         Vma8TTe+ckRqamxenkvYrlI4kjCAXUw6/d9qsrxrW+5p5Nwxi1whldR1/KdCzLjyYGmo
         1SPkZhhYEXKER/PGB/EeJPr5026x3qFDgGVanZPzl0dS6NUbG9tHkEXM/+FSl7CgoZ8h
         fHG6zvQN6fGbxU1/CbvP6gfq1XUvZhOgWpi7E62kSS0yQD4MNEzvDk09DvKRak8qwtPO
         5zaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qAbADIQAzXUoq/ElYpa9rjjQHxphEP8wPywcql//gEU=;
        b=C7PCigBsJs5NsVKPbwb9b6RmSdxgPOizCklR+Uzd98RXu+d5jzU/CPye4EeB7ZIm8J
         KRIwdFixuwDaAqWRgCzrFGGYCytsA/lytoJwLvooWzVqsbnWAOOCfilVixnDmtd6qqCm
         dfD8UTdsvdgzPkHUuryaPN3cW+ej0aLTYZesaq6rnFLlf4xf5kl/S0Eqp1GYxvf1OT98
         0KlWgNPhm9RRKNBKXEMpjG1walz8ofcMAjDN+xBDG3e3UjV392BdNCMoG5NE3U38Kx4O
         xXiKRhpdwjIDOiJnwpFoAI8jXG21tjuO5JaRcPpal6nA1nQTOydRStsoA/8Obc/dgnFI
         TqVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BIwBbz27;
       spf=pass (google.com: domain of 3wulkyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3WulkYAwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id z16si228220pju.0.2021.03.31.14.27.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wulkyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id b78so2361319qkg.13
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:54 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5614:: with SMTP id
 ca20mr4929242qvb.37.1617226074055; Wed, 31 Mar 2021 14:27:54 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:19 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 15/17] arm64: add __nocfi to __apply_alternatives
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BIwBbz27;       spf=pass
 (google.com: domain of 3wulkyawkamk7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3WulkYAwKAMk7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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

__apply_alternatives makes indirect calls to functions whose address
is taken in assembly code using the alternative_cb macro. With
non-canonical CFI, the compiler won't replace these function
references with the jump table addresses, which trips CFI. Disable CFI
checking in the function to work around the issue.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/alternative.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/alternative.c b/arch/arm64/kernel/alternative.c
index 1184c44ea2c7..abc84636af07 100644
--- a/arch/arm64/kernel/alternative.c
+++ b/arch/arm64/kernel/alternative.c
@@ -133,8 +133,8 @@ static void clean_dcache_range_nopatch(u64 start, u64 end)
 	} while (cur += d_size, cur < end);
 }
 
-static void __apply_alternatives(void *alt_region,  bool is_module,
-				 unsigned long *feature_mask)
+static void __nocfi __apply_alternatives(void *alt_region,  bool is_module,
+					 unsigned long *feature_mask)
 {
 	struct alt_instr *alt;
 	struct alt_region *region = alt_region;
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-16-samitolvanen%40google.com.
