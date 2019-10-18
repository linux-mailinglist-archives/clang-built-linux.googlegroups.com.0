Return-Path: <clang-built-linux+bncBC2ORX645YPRBD6IU7WQKGQEWXG57CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id EA748DCA68
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:10:56 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id l2sf1554760vsj.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:10:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415055; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fs+vca88zi7X8CVGJOnCK4/R/HrrFrWKFzBfDOITVJZTDCVydGSS5rMxsTxg+qMKmg
         wkErDhGTw0KZdVPbqLenEc+ezuCxAAwm/eloXCXACMWA2nCdYuUfJby7KvyoTmtA2sbU
         NGyCWOfWw+6tGFhSf9MW8jWANUd+QfeR4o+xdCn55Ndw7wK/knhwPUvbuXlmJIoC4dn4
         1BZEAjoUplu2uEZz55M+65iZCCmF1CgiyGG/ZaLUXNJg8ST7It2oa2CjAJxqQX7vsXjr
         CEXioIkbuqz+ptwHU9MiGE5hRrQjKAG07QOoXEKU3+zMTsclYiKW69c47ydj8V9l5kps
         42Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=K9nghdgh0BU0NIuWUhKtL2XiGA9wZwW1aON11HhHank=;
        b=QK/FUik759cDhbDwNWs/oHjhHLALRoQrt5zVnfsUw5JqtoF8feJgILPYbt9fV83v15
         drzLIj+CXadrVHbE0T/nsZEQs7qp4Lrd1EIZk44y4rdseQi0QwBsoTEUF4oQCMZKRICg
         bswDPty72JWbDXL0gmflXq+a1/TuAQXKfGSIv0NZkDTGnS6Wr2Y2/jGjt7QGPcv5de8m
         Fl1WJrwusK/JSRIh+Ddycc3qR8go8Si+SorYgAfqq5zkCG93nZB3JM4dasDasNx8pIVO
         0DqMM4ZGlAmUKqNAoIz9eeq/y/o2D1AYSAqRmA2IGoY/ngmX+3xhiZiMewyhCi/CQyfs
         iwcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZvzQdFSz;
       spf=pass (google.com: domain of 3duspxqwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3DuSpXQwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K9nghdgh0BU0NIuWUhKtL2XiGA9wZwW1aON11HhHank=;
        b=ctA0Hm1S7B96RnpAqK4w1/tWR8RQYwz5idxAev2p9brAu5CJO0dBvmGKSYwV/UX+Ni
         M8Gb0ZWZt3pig0QCnYooLeyQ+Wkzy0Qa9I+M5Ks8S93roS1HmAwEaH61rz3QYJKZvUMr
         NtBvRhQEn0spLs1a4LkX8BlmeUljRZaV5UWJkP4QasfooPP7roqIrwmvth2rmTPgoTeD
         UPxG9qJdudcRt9DKmqrabE65ZKjdX4xLpRWHuPSv1L7e1yGZZISOiH2rgj3DD32PUabA
         SzctZarMlWOjYAI+9iz7YqA8YmQXId0a+iLibm+is5IVZSgveT62b0+5zVnb2lWPCF7G
         Jdpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K9nghdgh0BU0NIuWUhKtL2XiGA9wZwW1aON11HhHank=;
        b=p/pMso1c6/5tcK4c67ZSYOIGQH1JDPvcGPP5aGwYgE7OFA8YyjkgclQEFy1ofJfL0g
         hHlW5qdq3Dskc3LmFvvRm6F3g5m8TtgDTjINDfW79q3hYqOMsKUcC2syG0qh6IOWYDRp
         avXz5ct7OqAegByqThaT00K32oX6WN4gbmzf+0Nyjc0tpO9AP5ZaQNTNyqFrDzwhCNyb
         lJVecui1+lCC9pfauSq/Ad7c6MLjPTDGwV1UW02SHgBZ1VDvSIpoJoq/hHedvVp0g5mf
         7jKK+ZBRarS5rdU6u6GmvdZ3Sfqwy4ANZuR4akLtqG3b77W4ODpSDc+o/Y7I8pgwFu56
         2KbQ==
X-Gm-Message-State: APjAAAXu5OWQt+CN8pWjlX6tPjOjGF7Qx9nLoNDkdKRoJi70cFA08pVH
	F9V/ofZjpTYXzmRyJj7xhYc=
X-Google-Smtp-Source: APXvYqwFRJhBsd7mva9mjxUkFFXbt5nCHRSayJfdK/U4Fc1+yTeg5BLfWJetsCZiRS7oIqYB3Znl2Q==
X-Received: by 2002:a9f:31c5:: with SMTP id w5mr5975615uad.40.1571415055493;
        Fri, 18 Oct 2019 09:10:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:27ea:: with SMTP id b97ls345334uab.14.gmail; Fri, 18 Oct
 2019 09:10:55 -0700 (PDT)
X-Received: by 2002:ab0:7087:: with SMTP id m7mr5915125ual.75.1571415055085;
        Fri, 18 Oct 2019 09:10:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415055; cv=none;
        d=google.com; s=arc-20160816;
        b=0CTmN+oLaZ9GNl7FLddttftB2SM14VfhQlqCroc17dYAnoJbEGdD6dPYQSP/KpqYNx
         rw068PK/FdDK8Ku+yxy9pLTElfoYTi5/Z/sAuPD83lPTAMv7j79XJ24cniq8GpR/SndJ
         LwgkCeuT3OXGuxF+CbIXfqU8dqD4yg3a8zUOOrtR+4XUt3uJvfhAHQcXicakxhSoK1vy
         lKxjt2XWsAqs2hGlFToj6qJY3ifh4+bm81x08MZVga+/lbguAyGvJON0bD9JYVYhMUCD
         4nzSjhMtAQv3kGpfQTzge8G4uJkwQRyVkEVvNou2gzsyVQ140FYpwpI5b35uPV+lQAB3
         izUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=72rGRuWFiviz942NA6zVkn9gcWlAdBMK2y71uV80e5M=;
        b=zqC1mrtjTZyUZGdnmlTSH55WN58VO6w9MMPSmX8ij/lGPeLDXf0zCg54zPhuagR/SV
         fFPAco5SxzT3j+EnWJAaaimhP3lNOJmvEEy0kohgKiCQvlyOTzP755dstWFPDGfnVH+d
         I6QnZx4rFF3QdX3UwzrdqPF84WOabWfhadMeR8PL2qu32i3ZJWJ02wADkrW9WhXpCODg
         HVlGwHC7p5NlkqVomyZDK3E2LNTBIJVtT/Wz7UYMidEtn7NDEyRx47XeKrV4fXAD4Wvs
         IABqPpx1BMvYJfDqR/mPKw3e2BzP2Uya7Ph34ghUVVcyGGu/P/hnEOuk3SY7eOvUfDph
         6q6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZvzQdFSz;
       spf=pass (google.com: domain of 3duspxqwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3DuSpXQwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i13si341856uan.1.2019.10.18.09.10.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:10:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3duspxqwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id o141so4812868yba.15
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:10:55 -0700 (PDT)
X-Received: by 2002:a0d:d804:: with SMTP id a4mr7899178ywe.454.1571415054615;
 Fri, 18 Oct 2019 09:10:54 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:18 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller save
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZvzQdFSz;       spf=pass
 (google.com: domain of 3duspxqwkahehpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3DuSpXQwKAHEhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

In preparation of using x18 as a task struct pointer register when
running in the kernel, stop treating it as caller save in the KVM
guest entry/exit code. Currently, the code assumes there is no need
to preserve it for the host, given that it would have been assumed
clobbered anyway by the function call to __guest_enter(). Instead,
preserve its value and restore it upon return.

Link: https://patchwork.kernel.org/patch/9836891/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/entry.S | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..20bd9a20ea27 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -23,6 +23,7 @@
 	.pushsection	.hyp.text, "ax"
 
 .macro save_callee_saved_regs ctxt
+	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -38,6 +39,7 @@
 	ldp	x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
 	ldp	x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
 	ldp	x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
+	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 .endm
 
 /*
@@ -87,12 +89,9 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
 	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
 
-	// Restore guest regs x19-x29, lr
+	// Restore guest regs x18-x29, lr
 	restore_callee_saved_regs x18
 
-	// Restore guest reg x18
-	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
-
 	// Do not touch any register after this!
 	eret
 	sb
@@ -114,7 +113,7 @@ ENTRY(__guest_exit)
 	// Retrieve the guest regs x0-x1 from the stack
 	ldp	x2, x3, [sp], #16	// x0, x1
 
-	// Store the guest regs x0-x1 and x4-x18
+	// Store the guest regs x0-x1 and x4-x17
 	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
 	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
 	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
@@ -123,9 +122,8 @@ ENTRY(__guest_exit)
 	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
 	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
 	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
-	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
 
-	// Store the guest regs x19-x29, lr
+	// Store the guest regs x18-x29, lr
 	save_callee_saved_regs x1
 
 	get_host_ctxt	x2, x3
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-4-samitolvanen%40google.com.
