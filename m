Return-Path: <clang-built-linux+bncBC2ORX645YPRB2HL46BQMGQEOEWHCCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEDA362978
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:05 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id 13-20020a056214202db0290187c75d98a1sf4954632qvf.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605544; cv=pass;
        d=google.com; s=arc-20160816;
        b=dzoQzWPznxm1s9HNu+YRqnKAeFzJBlLP7TqzkNyACAzl1NixDmv07XhGFAaqRf6WhN
         81NKRIJejgGcmGPovwnym9m+3xPHyW1blzdKRUFD/su9ijEe59mHAdXPYvjccDpNVkbv
         RlUuvx4+3IwoPlXvaWwr92+r5IitZHgbCJXMK6toieT/72GmELzumalFQFPSuGJfq7a6
         Iqx3O5llrekhhtPs0jEHesVykY1SXHhKRhCaZGEtSQVKhOHhbKWdKoKzsopOLeC1joUh
         4owThk1w+ifx0078aa+mgR6ctNFBOeg06RfiGR6h+Fx7jFd8Bfh/DP6iyt8NvnqC+u0y
         iP8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KHWHLddVeIQVfNF/JQLEp+Fw0PSVrr8fvCoojQsfT20=;
        b=dA+BlY2DkkurctpYtVPCaAJ10QC1XNrqW4ndDMOxnsVpwo9aVc27eweTiuYXEPufxk
         u4svt8CBiZqFJb7wjl9wMNHMvV3coIGS6u90awRjbOhV0r6B0h9PVp++yInk+PL3pnjm
         P/DP3lHbgHlrgx08r6A3SVZmz6RRBvOnf3raRa2n5v+klzVEgE11yP8q+h/Xdlx9pvHI
         YIstcSycVtPBhBdq2hW96kDthfLo4yH9AZCqZjQ98XJ02+csMlj4ojmvhv2rwYEYJFVo
         ANIRYKsDnLnLEg3gF9uckhI6fBFY6qBA7ItfUvbBr6/8GXQYI8SR6RDznByeKGXdbNm1
         4dWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C1v0nYpd;
       spf=pass (google.com: domain of 36pv5yawkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36PV5YAwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KHWHLddVeIQVfNF/JQLEp+Fw0PSVrr8fvCoojQsfT20=;
        b=ib1PNuPDszcLwf7gWFItDs10rVn9uVL0HTZkMIu3JEiakQBllWGQhI35SSVGH4joSH
         eMgCC5YOlDXYKo1RX8oygEOt8002yK4lwHCh+5K2PcfCDo2QCkxkWLHGIWe1tnn77Yjc
         mzYxb+q2zFdGMhGcwIgkgCm0ECcVhER1pFhuzKs435UQKoVEG1JF2iDKZaxL2cwJz3BK
         wYSsEVHzWgytYePuG0KztgwjBiUvscP0fbXcrzHXgTcBxUThVtWXJ3GuVZaRSY8iIH3e
         W1UUWH2HvU9kESKf3sYoIY/otUbO88p9cqsFjTbT4gqZVGeCWE0k+40BGhhT7Zvy4pNj
         LEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KHWHLddVeIQVfNF/JQLEp+Fw0PSVrr8fvCoojQsfT20=;
        b=e+juujfmTkvUalwB5njLFjJEW3uUhs+cAOxSIbK0FHeHYn3w9vjLz2+mSPUFUiHHM8
         uocJDhJH8cc6cmMpW1QBwSWpju7fJjj3HnTM/T9yAaZNiVef/nsTeZqT9D6Ythg9BsIe
         6zw2widfJSUTmPEITscEFPWZwCPYHWnYrEiz3oen44QDzYw+VgZDj9vt8GrjhRnrXXfd
         HOuIc9mXX2pYedGrc7SzJEbO5V5sAlWRvFRUFnVR4Rt5PpqQQ7Yq12AxpLgtUb/Sclty
         cSJJN/eClaNF2EJtbO40HWXoOzk2clb6CXEHeh88oS+vUNATjtPbbnXcXSuMjw3bM+dw
         YQNw==
X-Gm-Message-State: AOAM532oakgKfTZjbYJU+PILfC0ScojbxreFeQR2hUcx1IRbHfej9Ndn
	nhpeCnL+UMhh9ncC4rOFQxg=
X-Google-Smtp-Source: ABdhPJy29ZFyEDHn0o0YpNvQUpYw164/ZMVdoVoVL6oCDAGlNVX8vfwz6fWd6jU7x7p54u4aZPhQfA==
X-Received: by 2002:a37:9087:: with SMTP id s129mr1100880qkd.297.1618605544871;
        Fri, 16 Apr 2021 13:39:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5351:: with SMTP id d17ls4038212qto.2.gmail; Fri, 16 Apr
 2021 13:39:04 -0700 (PDT)
X-Received: by 2002:ac8:749:: with SMTP id k9mr423781qth.8.1618605544394;
        Fri, 16 Apr 2021 13:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605544; cv=none;
        d=google.com; s=arc-20160816;
        b=ahaEDePg+UpS/EctcEO0bI8J7SO0UtMGArY878pZN2UM5EnvuYOPZ2Dq192WX9ZiWJ
         Ed3/ikZcGXq5z4jae1D5UXP0OybGL7unq/mAC+ToAVkeL3VnATQ3t/g9LnhPIcBa8FeV
         7CsGqGWktnZ3D3IqzHGU2Y4R/6gJBX7t2AL2Yux+bdJxB6kLVJP+88Be0YuRsb+cyIIN
         hoFsUoZ252XCR0F/CwOJ+dcWYO9uxx/2wMbaYs33IpXi4nOM7hPkQupbQ85cNuLjkjBn
         E84kT2gfOtVfVjtQLR7WzTDJs2ygclE/deVPI6qxZpYgFuWi46xv+9sMZcpDmT2U7Aic
         iGcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=J/3dnbJfzRIYPiLZ29JeQVmGqxNfmSrQVz3MPRfXLik=;
        b=wi53sg9qM/JYXrD7GFafYbI8TiAe1N6UImQsLetWSiAmSGOQoLkdw8fRAEsPEyFpwu
         wOsYx8NuwgsznUzC+x1s3hf8ehjvnNcaa+srKivknTsbThFf7dry3FHmXVzpADD6HTwN
         46jOWTQhHkzdkVjEPEehP78zQkvZJp8IZgzem5SExNQu/Rn1bx/QZJb1G5AGNjDMV1Ay
         bOfWhV5MzcLkpnMEcnSuC6ybA2hQvW3NqjpRNLuYqQ13l/1SHYw08LMwz4pZJ7bjzE4e
         TUy56JrkzAYM9ZqvEvH+Hc+w7a3F1hk81dj9oJ1N4BMjaMkVfCf3PbbaUqub0/9D1RnU
         Q47A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C1v0nYpd;
       spf=pass (google.com: domain of 36pv5yawkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36PV5YAwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k1si965501qtg.2.2021.04.16.13.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36pv5yawkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id f7so7507217ybp.3
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:04 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a5b:94d:: with SMTP id
 x13mr1332772ybq.368.1618605544016; Fri, 16 Apr 2021 13:39:04 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:38 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 09/15] x86/alternatives: Use C int3 selftest but disable KASAN
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C1v0nYpd;       spf=pass
 (google.com: domain of 36pv5yawkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36PV5YAwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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

From: Kees Cook <keescook@chromium.org>

Instead of using inline asm for the int3 selftest (which confuses the
Clang's ThinLTO pass), this restores the C function but disables KASAN
(and tracing for good measure) to keep the things simple and avoid
unexpected side-effects. This attempts to keep the fix from commit
ecc606103837 ("x86/alternatives: Fix int3_emulate_call() selftest stack
corruption") without using inline asm.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/alternative.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/x86/kernel/alternative.c b/arch/x86/kernel/alternative.c
index 6974b5174495..669a23454c09 100644
--- a/arch/x86/kernel/alternative.c
+++ b/arch/x86/kernel/alternative.c
@@ -496,23 +496,10 @@ extern struct paravirt_patch_site __start_parainstructions[],
  *
  * See entry_{32,64}.S for more details.
  */
-
-/*
- * We define the int3_magic() function in assembly to control the calling
- * convention such that we can 'call' it from assembly.
- */
-
-extern void int3_magic(unsigned int *ptr); /* defined in asm */
-
-asm (
-"	.pushsection	.init.text, \"ax\", @progbits\n"
-"	.type		int3_magic, @function\n"
-"int3_magic:\n"
-"	movl	$1, (%" _ASM_ARG1 ")\n"
-"	ret\n"
-"	.size		int3_magic, .-int3_magic\n"
-"	.popsection\n"
-);
+static void __init __no_sanitize_address notrace int3_magic(unsigned int *ptr)
+{
+	*ptr = 1;
+}
 
 extern __initdata unsigned long int3_selftest_ip; /* defined in asm below */
 
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-10-samitolvanen%40google.com.
