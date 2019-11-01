Return-Path: <clang-built-linux+bncBC2ORX645YPRBUO36LWQKGQEO7WBUOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CBAECB04
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:34 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id u202sf8324368ywe.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646353; cv=pass;
        d=google.com; s=arc-20160816;
        b=K87yZoq+mK5W9SwQ2ARmaQgipceLYkqLwUYe3Le0PzN1flgSBca2qQ6RxHSsxjOrCc
         LNMiZbRcF1pYpbLH2Cn+c7QZ9bBWvh1k9P7jJ3FPtFVLqmHGv+LPv9uwlFqjGRXH6Ug7
         mlBXJ6mJ3pn2b8RJ91wMKdnTazmmQBH1tT6P0mwGzpbJ26S4/gLRh63jSJqao0tVh01V
         gHm0kL15Oe+YJyP4EHgB7xSeZwA3HFUtzL3exOMT8jWrHYBTNM/pR2GQw7dU2ljksgjI
         R0+rQZO19WMiSjMxGRqC70m26+sFeUpHSiiC1kcikXIqCNcMcxAofQqv8O6jlw7S6hbV
         MdIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=X7R4es0sYbN0pUqNSnXWA9Ve0SGFgfGsZ/+jgxzlZFI=;
        b=ddG4O1XMzYrSrBUZcSKjak3fqKMWxm8Ear2dBEo6gZsXKublZgZLVbg/VpyHx54KxO
         8cA0I0Zx+LSs9Gmch+OndFZ3uRvtj161c+c5l5zGYZbU1wn1oK0Vv2Cw2tWEckGShI60
         MHRv7fYWJURUCUwn07arXbjrTXtWa3Fl6oibvNXAm4RZg0JCF4F/+2Fwwon5V7IRnoDk
         IIYqrAOk+5a9lVzmlPpRcOu3LPPkkTnj3he5hd7Ydfda4KW9vG3h+OkAFNpo1BfEhLmU
         c75qo63BTydC729FOrzgWEtDQsOwdEWMOjZGcNmkXxUFUz89O20jf+Y+g5ODn+ZAMm6y
         NZeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=odv3zPa4;
       spf=pass (google.com: domain of 3z628xqwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3z628XQwKABIAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X7R4es0sYbN0pUqNSnXWA9Ve0SGFgfGsZ/+jgxzlZFI=;
        b=EW4tSJmBrhtuSsgyewbcotzLXwYsDFHHAkF3OngbgJ2LcY3FHEh0l67CiH2CnMFq5g
         44AokbaPJRfmS60fVaVrQSy3TmJFxU2S0tw+ESwi0BqLHYcFFb0kzyl69Ytapz0l/Vms
         9VUstd2kv7EuKFaDd35WtB1p5sodvQGS3hyhzsdAMc0vP+HKIO2I2/6qNxQa1aedXRSS
         vm5b4ZcFZ6EIl2au0MJxIPfaW8d1R7v1hAA7hQsG0ytktExDBG8W3OAOMxfLtvh5gvGg
         bRmu+B+OKZsFRvqKp9WVVmF3zymbfKyv2CUEURAiK/iMfmIR+ToRokTcVkRLOdyeZmew
         cajQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X7R4es0sYbN0pUqNSnXWA9Ve0SGFgfGsZ/+jgxzlZFI=;
        b=L9tTXkLA1oNnERF9LkyprqjPDzyKUK/4NHeMwFpoMEyL2ehHngLmZG4lTpdEckLeqs
         dJ45Io/sNUdMc8YjNbAMvU2acwrRlEGYCiaqpDbkAcWCd8NiGK4ymLMgzoUNpwztyW97
         tfA44WzsKXzvQRqkjVBUkbKc04Zi/XzgsjMNORf7WYxuykDSfzDXsYW7jErg3iM0JtTZ
         FONphNnd/FsszmQlLIkaJQ4FO8hoA3CxbD5R1ng7kJNCOrAS2nQpdnRAHCh5kBFcwmxh
         t9DajiOLXLhuLVNCs/3bVcpAXLzOanyKvIyzQavOF9Btd47pXTZpPHuJ/gTb/xGZnsYe
         mPGQ==
X-Gm-Message-State: APjAAAWaYz29wF3Vi7TIvBoDYG0YNnuuSkT5ti0h4p7euWEpWP2dND9u
	N0oz9LaRC/VNrHrxMw24WQE=
X-Google-Smtp-Source: APXvYqylv2Ml8TG5kCupAsB/pA0yivHESGkCTdJNuUDY11oqgjR8KAHGiREbQpY70WYFE2kqu3CB4w==
X-Received: by 2002:a81:75c6:: with SMTP id q189mr10399369ywc.66.1572646353512;
        Fri, 01 Nov 2019 15:12:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:3b81:: with SMTP id i123ls1156915ywa.8.gmail; Fri, 01
 Nov 2019 15:12:33 -0700 (PDT)
X-Received: by 2002:a81:b208:: with SMTP id q8mr10802594ywh.74.1572646353197;
        Fri, 01 Nov 2019 15:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646353; cv=none;
        d=google.com; s=arc-20160816;
        b=yO13GmlwMcxlGqgEKQHBaGburPSNMN57RbLeju/Wb6DcsbJk2PdsHR/DwekVbIz8ub
         c4CCRF5+JxkDGDA9zcURYKuoidp4fYhFThFsM0Rjte3NcLRI2PUqA6H6Zv/xVDE+2gaO
         qlZ/NW8wZ1fvRT2jke3a+1OL9kDVq1dFKS3cpbF7fpKcXiMJa3Y4yzOhK8qYTN238kly
         10i6gJCyK4UaLqLY9pR+9wdOX28LrGv/T79RFwI+sVIFUbrUDtpuByjj0omAvL1k8Bjg
         05SqQNjM5E2FoSoyOoKr+FbWXC4tIZ4DHouGqWkED+ysZCI4R3WEG8HcLpJ7sigEWLEJ
         WprA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=uZ/kQt4EYM2LvpfCusnWoxftHyD2DxgcHTICv7X7dqw=;
        b=UFJ5u0WdCmQwq/ctdU4Gmc8EhauPpdKcikKuRoB/Y8lxzPws7WbeKZ52V/tf/5vT0v
         B/wUb/NVL/uwFaF253isKpbI66NJLtc2Y+YrPoFUhPYvaTPmNLZC9NTwPlo0+SD0zWzX
         QrbgaKu+OnuMZI13KVcQfcMvfwCaG1spenRLimTOls9HMUrwXyk8JikS0cABHQJHqDO1
         iCCdJbpbZhOyhc4maNOlMTfFpirN6eNNvBHgvJtYIcnnlV8xuaBDshVe3xai+C7idV9+
         +H0VykgfP46KfiFugsNgHi6PjdEkKsK8JieMH4riqe3Rfza/IMTgWUwsXe0b7FfS08ll
         fvzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=odv3zPa4;
       spf=pass (google.com: domain of 3z628xqwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3z628XQwKABIAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id 5si504684ybl.1.2019.11.01.15.12.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z628xqwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id m185so8436526pfb.11
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:33 -0700 (PDT)
X-Received: by 2002:a63:3203:: with SMTP id y3mr15810585pgy.437.1572646351983;
 Fri, 01 Nov 2019 15:12:31 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:47 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 14/17] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=odv3zPa4;       spf=pass
 (google.com: domain of 3z628xqwkabias40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3z628XQwKABIAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code. This is safe, because the
wrapper is called with preemption disabled and a separate shadow stack
is used for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-15-samitolvanen%40google.com.
