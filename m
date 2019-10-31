Return-Path: <clang-built-linux+bncBC2ORX645YPRB6U75TWQKGQEHJDVQEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A726AEB519
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:46:51 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id e203sf3976870oif.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:46:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540410; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/o5UnaZg0RZZWvO3RKsMd0qtI/KYidxvwhF98e1ER0FakVIOcXQ+a+cPh5BTOoHgs
         0hEZU+E/RaT7TEeHpe59tf6WjjMn3d11oVDbtEY/x9CM90L+JtkPD3mvJRJz/U1hON2H
         ysWE+pZpRf4sYxMIhC1X5lx0fgcUD+yxgX5XgEmtM/vlSxEnscqR8AVwAg9y1VLUzCZc
         qUDl0k/KLIpXDKuCZJmmelC6tbzOk4BdNfE+To7fZBTqKkImvzPjbbI1m0+ie4CDGoFH
         er3z8Xilb2OccL5eT8MGuQeF1Jq2VyG9oxLxlCyZsPGWpo+D7CxN+rwZuNWIpMK1pREn
         DAjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0Dh5A2gFy9OmJszMY2VLgpJQv6KUE3IXbiHAu9S5+VE=;
        b=l/vJiVTP0vrFTLayq42f6vNYIuLiEPY7kjyPJV4kIguDVi9XXezr7KKpznNNrYX4Kv
         sMuQVNC9CMz3wqY6CCPtZ9dQ7Z+0NpC+UGKGmdFEIRo2CpoQXz6vGPH40fxi/bp93nyg
         S+IjkPvv2c9e6mUMdBUEwAix57+LHJuVWjYKFWe01KlqGaUf4x7T8i5X90BVMCkoALkb
         gqoFIk4pqg1jB8VBBC7dmV1o2/3/AWMJJkWJm2N+9yS+BOd3H3RGlROueSVfCOSdFnYy
         lTMEsNg/KCxTsRRT1nmLegFIjEF7A7d338YPALkBhkOKvu5fLe4PC9aGGEFWv1Ruitqk
         ILqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ru92iBuu;
       spf=pass (google.com: domain of 3-a-7xqwkapcrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3-A-7XQwKAPcrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Dh5A2gFy9OmJszMY2VLgpJQv6KUE3IXbiHAu9S5+VE=;
        b=LIujmQYPFwoJbWhcLqqo/vu421LFRBFgUfL7DyKS0wt3JrsFpkTXShKPmviRNOMmWN
         JGy1DQJprhdWeIijZjq9G/7bV41Te730MDT3qASONMphUluy13iYi5UO6pHvoLbHlbbA
         6kiKeJp0J9Ra71C7yn7tlxpsJBuvjUf80skWrvc5WmeOR2eBO06LDTAYmtJW72UtAAgM
         2IjDlIjsnm1Laax73ct4eP0R5O6pS6MncMb27aGNT9HmSSH2c6y0kBLEr8iuNMoo55Y0
         LVwKEi3+TgucSisXHrium27Qz7QFz1+8MDRIRNI8e5e5DcWYr5s23jgLEMkvBfnn7x7W
         UjWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Dh5A2gFy9OmJszMY2VLgpJQv6KUE3IXbiHAu9S5+VE=;
        b=RCWNuRo4rb3YPTDQClTD8ZgEGtFcxazy5wxynGatSlaAIDpqzReK+Cj4f0UabOtwQV
         ODPbsO0E0CtHk8j3wnf02IuYxo8awmurT7PFNNfTrY1BvFNDik6BCJJW7vlw0KQJIaci
         ICUOB+TDd3E0qJHLlke7jE/mJNx01PQZteb3r1aLCEI7QerGT4BdmBUBD6vfyulgAKZ1
         RikbiuTdXEF6HNwQqp7lKb7qhh9QWg1yKY9jjAyF2aVHfJuGRgEVyNY5aQCrDe9++O5E
         QHSjtvIrhAJjqVRlPaPKg9O3gIj06ptZQSJ3ImvGKgRv5Ze5aIclxZ9tLJNQEwO7bgSD
         f9ig==
X-Gm-Message-State: APjAAAVp39ldl/8dwvUxAUff6fAOr+1qZUMjysJZxXFsx9UX2e8J682D
	oYI9oUHXc5wAUHW/Nfup2Wg=
X-Google-Smtp-Source: APXvYqxXTfBLQlJMasAnRg/VLl0xNpwKJC2L9hdD5M24zgzHJmHP5oh7Nk7F16t0lDXVK2WKt4v4mA==
X-Received: by 2002:aca:d4c6:: with SMTP id l189mr323151oig.68.1572540410275;
        Thu, 31 Oct 2019 09:46:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:97:: with SMTP id s23ls765052oic.11.gmail; Thu, 31
 Oct 2019 09:46:49 -0700 (PDT)
X-Received: by 2002:aca:b154:: with SMTP id a81mr1350538oif.142.1572540409829;
        Thu, 31 Oct 2019 09:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540409; cv=none;
        d=google.com; s=arc-20160816;
        b=rdtN+xxQJ0fCn10XcFimMWAT0WKHhpAhAPoz4DJio+4SrmQjqqMduLRC7T9SF8HnCH
         8+ue6dcOdb2Rj2XcnST385LMnEh3dvmwpz4CnfAp2jqo3yOIDmTe1CriJW2MJb26V+dg
         p5/N94IJyZwgLqRwZ4ORBavSmMU8q6ORK0WGtbSRaE9qCDGUiGkB00FJLWR4fbEwhX4j
         L+Qdu7Xik5ZxAxEcrJHQ/Esj50L2qnZc5i1Ou7ekFeU4wFUvIau4sLSTwtjiXxWU7yXB
         kDraR4TVXFwoI7tF+apUOf4Ywd6knidUpiSOY3uhIhXuDC6nVO2D6PpdM+CTO+v0s0wX
         8f3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=NvkEBCuGDFGmxutij1zSuSKxlsUUBaj5IQr0NLQJ5So=;
        b=iHRZw23HPqa90tv+OLLmYWvkLzZEzynZKosdqEhHVqmqnm7VokO256edokCIwqDODs
         9YwSFjV2Rl4yIrlYTvWyD40LFIednmxfKZOKChyfihhhmGybBbIXt6x47ZVmj7MKrH80
         ips4uQmUvor9/R4fsTOCqU3bTCGHROzbnwXyY0dbVAA8mDK/Dw+GuTeOr3QzOYjC2lOs
         i4f3SDq61YSjZNFKl9wqspCmgqNYZa+cKF/mddXyn1IrZljdDJsT3uO01xXLxRfDzjOy
         5ipp3odi8+hRrkeZzVtZVTq42zMOrimYTQi/7fuoQDBe81a4LUWZyQOmEEzaSKiqzuPv
         IF8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ru92iBuu;
       spf=pass (google.com: domain of 3-a-7xqwkapcrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3-A-7XQwKAPcrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id e3si241909oti.0.2019.10.31.09.46.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3-a-7xqwkapcrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id d126so5011658pfd.5
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:46:49 -0700 (PDT)
X-Received: by 2002:a63:d809:: with SMTP id b9mr7733622pgh.143.1572540408812;
 Thu, 31 Oct 2019 09:46:48 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:22 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ru92iBuu;       spf=pass
 (google.com: domain of 3-a-7xqwkapcrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3-A-7XQwKAPcrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Co-developed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[ changed the offset and bias to be explicit ]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..290dd3c5266c 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -34,45 +34,45 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x1, #96]
 	ldp	x16, x17, [x1, #112]
 
-	mov	x18, #(PAGE_SIZE - 128)
+	add	x0, x0, #256
 	add	x1, x1, #128
 1:
-	subs	x18, x18, #128
+	tst	x0, #(PAGE_SIZE - 1)
 
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	prfm	pldl1strm, [x1, #384]
 alternative_else_nop_endif
 
-	stnp	x2, x3, [x0]
+	stnp	x2, x3, [x0, #-256]
 	ldp	x2, x3, [x1]
-	stnp	x4, x5, [x0, #16]
+	stnp	x4, x5, [x0, #16 - 256]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #32 - 256]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #48 - 256]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #64 - 256]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #80 - 256]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #96 - 256]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #112 - 256]
 	ldp	x16, x17, [x1, #112]
 
 	add	x0, x0, #128
 	add	x1, x1, #128
 
-	b.gt	1b
+	b.ne	1b
 
-	stnp	x2, x3, [x0]
-	stnp	x4, x5, [x0, #16]
-	stnp	x6, x7, [x0, #32]
-	stnp	x8, x9, [x0, #48]
-	stnp	x10, x11, [x0, #64]
-	stnp	x12, x13, [x0, #80]
-	stnp	x14, x15, [x0, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x2, x3, [x0, #-256]
+	stnp	x4, x5, [x0, #16 - 256]
+	stnp	x6, x7, [x0, #32 - 256]
+	stnp	x8, x9, [x0, #48 - 256]
+	stnp	x10, x11, [x0, #64 - 256]
+	stnp	x12, x13, [x0, #80 - 256]
+	stnp	x14, x15, [x0, #96 - 256]
+	stnp	x16, x17, [x0, #112 - 256]
 
 	ret
 ENDPROC(copy_page)
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-3-samitolvanen%40google.com.
