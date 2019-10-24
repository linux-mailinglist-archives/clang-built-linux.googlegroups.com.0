Return-Path: <clang-built-linux+bncBC2ORX645YPRBAWWZDWQKGQEYZGPU7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 81352E3F8D
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:51:47 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id k67sf392574qkc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:51:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957506; cv=pass;
        d=google.com; s=arc-20160816;
        b=oTqX005TacWkk3MsBxCMsYGyZkR6ncTF9tF7XCOivQNdAatek5/ZmU47AKSUkWtaHI
         8pnab4tW6Pfg2uADLgmdIsliwo8UagbSdiD8M45glrvvJ8MeFocqexwKty4GEq4yZyoR
         H3oYdz9Ci6JLR+xqvce1EeO0oMwTn6fH/bgxq2i48WPjbvnuRdFb5if15IfmSLErP8GC
         EK6a8jxRN+l9rRzvtHx1RppKXeOWynTrY1skeHFzNR1icdeVlmMjkPtybe2tZlXCurIj
         d0sO4dV1sW3RLPw6BUhXTrQDZOoKCFW8FV8MTLkvilalq9/sCUYMw/RWJTeIZjEknB2s
         Dsgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LNUA3pD2fI52CRiR3H0w/386piw+kQuMMfptnTvwDUY=;
        b=N6rDN4/V0QwuTVQSrENzNiY4LKRiJ1ZLo6shmuerHPCJWsB1wd6WK7YaInZlczSM9/
         4BZdnFjHlah2fLpsFLu9Mvfqrvax/FjwX8y0INRnHAXp2A23Fo0Dfs4pVhzorteqxbhW
         6gt/GDR0S+2AfC+uOgWJix8Xy0K9YSKqE6KwYimUBYOT3FyvW//sjJgd/VsWBEq5UvFV
         mH2Wg9++jODw5UNyP9N//Dnd14uBTH/FT6Gd0UL4FJyJN5Ua+iYX11gOOIZGlLjD2Yq2
         RhU6L7N7X9lQ9tKjPGZN6DwFxgMPQo3CXEdDpo6rZDyqk/9vGdX6YMqvt7hnXPwZy3vE
         rbsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sq2ixdxK;
       spf=pass (google.com: domain of 3asuyxqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3ASuyXQwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LNUA3pD2fI52CRiR3H0w/386piw+kQuMMfptnTvwDUY=;
        b=AVQZymA0ndI8NKS7Smbty10Kd1keRY8o4OmS0jlYiCDa/6gSFWOxkpY3Z1z1jsWK4H
         zORUTV/Nu8fYThASxCEJfERZXIwbiaSnWpzElxizVKZsWRtoU7F+G5lP8p123qERzPfH
         VwvEMFEgJpC8Uo3P5zALXK03pGGJxyt5FkK/S3VrEwY1wpU3LuDM4ciUrFakeRhkqrP/
         oFNIC1OmHcVQpWtbFkCPEzJFhlLCB4IXS8/GPYaM6gqpvdRGVfZP3xBNeqqMgzM2Nt6A
         5BJ9qNPCpW74Iq/wlfgvk1s5TPYEsffq9S8d4uaKrd5oDxnWkRhZSWeawTq6rf68MEjq
         N2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LNUA3pD2fI52CRiR3H0w/386piw+kQuMMfptnTvwDUY=;
        b=J4Ho22XdaW46VqqdpssXrRlgIz1ArwGJNINQmmqE8JSYiFBsdEPsNpt7+rbSf+9wkT
         vUmmasBmn9jjweCFV/4wBjOsiICaF7aFHMrfG1BUiXPKMvQKM+tUatppnzeMl9l3PeVV
         DkYN0ICVORgJF5vYZaF6hrS7wk8iPR0ruqbKQNT5tXNkifsqodk299EnUTPL+b3K24fs
         uTELbnco68FTfN8/XtomJFHicB3RiMlBSbZ20OudPv4wTJUQg6GbW/2cEv3R+QnV+3v+
         Iw4hYZq8ZXjM1VubBkRE9LQgnvjNarQg+Sr6gWPg7NbaI4jfszsHCHOV83v+nuDJqtJt
         Dsmw==
X-Gm-Message-State: APjAAAXFYPCcFZ8UwDMER5q1+t8ViBdNU44B0Axio5HFGynmjwys3tDv
	IJIP6zCw4j84NozCWJbv8Pc=
X-Google-Smtp-Source: APXvYqxv7WQV2zxrENI2IcIYTPonHcwLu2Vz056dydtQx+iA0U/ziVPV1SZgt+AJfvMsa2aRCMHmUQ==
X-Received: by 2002:ac8:525a:: with SMTP id y26mr156619qtn.86.1571957506326;
        Thu, 24 Oct 2019 15:51:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls2572090qkf.1.gmail; Thu, 24 Oct
 2019 15:51:46 -0700 (PDT)
X-Received: by 2002:ae9:e8c5:: with SMTP id a188mr165766qkg.17.1571957505950;
        Thu, 24 Oct 2019 15:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957505; cv=none;
        d=google.com; s=arc-20160816;
        b=cDLTX9DIqZ7ZbTtNLL5wGzFhAfYW4bN2GjRdszX6bJ8OzfSlsXCq05/Eu2cEdr4j/Z
         4ihPqODgJbs8CPD+UIhHRjxIeLHGraw3IhfD6PW01jtyX3PnYuXfTK6f3IjDx/ztaDof
         mVtPDRosvT9dyd+/yrM/uZJRiQWtrAk4sMzmjJU3msqVY2iP/k9UHf4XmeER38jTHsYD
         9TfccTIrHIq6GRTol79wooTHtgnXjeijUP2dTxlpHMNyGiPs13Pv3U+TlLyG0Iiifuql
         KM+nlimmoAoApDLkxxSDzm62Ci05gyzUO73swZ0XbBvDuNIVW78RkSirV2aHbwI/pSMn
         JQIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YGQdPM+XBZNSA56L0QR+yPtW5HkUXZWfeQswOtioB60=;
        b=gz1O3Z++NkSP2BMu+9IrvX44802Sd6E2QMimqkh53yr0AARt+qdW2FXfiCSUrcnTTF
         Om9698ybYOM9lHahBcz4IsqkzKzmmIh91Anwn23G+rVstGqpTQgVpP0m+4XehG57XXhA
         1q7jAmqcvMC2QbLA+5ekifXoW2Yy/kwjdGIWrq2l6gcWF64c6tLbCfRn6fdIGkmOkqsW
         wmWm2L6ZFVSUbh/PYUha6GJfLpfEQbzYVCe0mLCN18Z56KABD/IoKuWops523RPiiQr5
         GDjI9Mbxn+tkKAeml8BQFNpGjg1K4DB4kSbGe7pg9l1peuGASnpC5mubAr5nJFggNFCZ
         bZdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sq2ixdxK;
       spf=pass (google.com: domain of 3asuyxqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3ASuyXQwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id w8si25090qka.6.2019.10.24.15.51.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3asuyxqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id j5so135600qtn.10
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:45 -0700 (PDT)
X-Received: by 2002:ac8:22b6:: with SMTP id f51mr142245qta.210.1571957505481;
 Thu, 24 Oct 2019 15:51:45 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:18 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 03/17] arm64: kvm: stop treating register x18 as caller save
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
 header.i=@google.com header.s=20161025 header.b=sq2ixdxK;       spf=pass
 (google.com: domain of 3asuyxqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3ASuyXQwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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

In preparation of reserving x18, stop treating it as caller save in
the KVM guest entry/exit code. Currently, the code assumes there is
no need to preserve it for the host, given that it would have been
assumed clobbered anyway by the function call to __guest_enter().
Instead, preserve its value and restore it upon return.

Co-developed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Link: https://patchwork.kernel.org/patch/9836891/
[ updated commit message, switched from x18 to x29 for the guest context ]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/entry.S | 41 +++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..c3c2d842c609 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -23,6 +23,7 @@
 	.pushsection	.hyp.text, "ax"
 
 .macro save_callee_saved_regs ctxt
+	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -32,6 +33,8 @@
 .endm
 
 .macro restore_callee_saved_regs ctxt
+	// We assume \ctxt is not x18-x28
+	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	ldp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	ldp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	ldp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -48,7 +51,7 @@ ENTRY(__guest_enter)
 	// x0: vcpu
 	// x1: host context
 	// x2-x17: clobbered by macros
-	// x18: guest context
+	// x29: guest context
 
 	// Store the host regs
 	save_callee_saved_regs x1
@@ -67,31 +70,28 @@ alternative_else_nop_endif
 	ret
 
 1:
-	add	x18, x0, #VCPU_CONTEXT
+	add	x29, x0, #VCPU_CONTEXT
 
 	// Macro ptrauth_switch_to_guest format:
 	// 	ptrauth_switch_to_guest(guest cxt, tmp1, tmp2, tmp3)
 	// The below macro to restore guest keys is not implemented in C code
 	// as it may cause Pointer Authentication key signing mismatch errors
 	// when this feature is enabled for kernel code.
-	ptrauth_switch_to_guest x18, x0, x1, x2
+	ptrauth_switch_to_guest x29, x0, x1, x2
 
 	// Restore guest regs x0-x17
-	ldp	x0, x1,   [x18, #CPU_XREG_OFFSET(0)]
-	ldp	x2, x3,   [x18, #CPU_XREG_OFFSET(2)]
-	ldp	x4, x5,   [x18, #CPU_XREG_OFFSET(4)]
-	ldp	x6, x7,   [x18, #CPU_XREG_OFFSET(6)]
-	ldp	x8, x9,   [x18, #CPU_XREG_OFFSET(8)]
-	ldp	x10, x11, [x18, #CPU_XREG_OFFSET(10)]
-	ldp	x12, x13, [x18, #CPU_XREG_OFFSET(12)]
-	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
-	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
-
-	// Restore guest regs x19-x29, lr
-	restore_callee_saved_regs x18
-
-	// Restore guest reg x18
-	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
+	ldp	x0, x1,   [x29, #CPU_XREG_OFFSET(0)]
+	ldp	x2, x3,   [x29, #CPU_XREG_OFFSET(2)]
+	ldp	x4, x5,   [x29, #CPU_XREG_OFFSET(4)]
+	ldp	x6, x7,   [x29, #CPU_XREG_OFFSET(6)]
+	ldp	x8, x9,   [x29, #CPU_XREG_OFFSET(8)]
+	ldp	x10, x11, [x29, #CPU_XREG_OFFSET(10)]
+	ldp	x12, x13, [x29, #CPU_XREG_OFFSET(12)]
+	ldp	x14, x15, [x29, #CPU_XREG_OFFSET(14)]
+	ldp	x16, x17, [x29, #CPU_XREG_OFFSET(16)]
+
+	// Restore guest regs x18-x29, lr
+	restore_callee_saved_regs x29
 
 	// Do not touch any register after this!
 	eret
@@ -114,7 +114,7 @@ ENTRY(__guest_exit)
 	// Retrieve the guest regs x0-x1 from the stack
 	ldp	x2, x3, [sp], #16	// x0, x1
 
-	// Store the guest regs x0-x1 and x4-x18
+	// Store the guest regs x0-x1 and x4-x17
 	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
 	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
 	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
@@ -123,9 +123,8 @@ ENTRY(__guest_exit)
 	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
 	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
 	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
-	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
 
-	// Store the guest regs x19-x29, lr
+	// Store the guest regs x18-x29, lr
 	save_callee_saved_regs x1
 
 	get_host_ctxt	x2, x3
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-4-samitolvanen%40google.com.
