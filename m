Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBTV5ZX2QKGQEEPUCEHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD9A1C7F99
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 03:05:21 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id a10sf1463039vki.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 18:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588813520; cv=pass;
        d=google.com; s=arc-20160816;
        b=XN4n736XWmRyNq0IfrKm83ozu0LlHGRFz04LXjpAU014PXATwAvuQgq+zm0z5I3Yd1
         Rt8mmsbK8liRYFdxlNgPu/0/IEIecpB3J6C3EIcE3HOXGwjDfJU0sda6ZE6m8mzqFZut
         hLmY4ypiDyeme5XGH6XKIXR/rwSv1UzESnrIwS8MljB0fACPEJxCfT9uz4PYtxfZdigq
         JhvugM2ApSek3j5kqL211GLoEOOYRvxJ0eMmFyYIfqQnSCfjgo57++bvcPtYBob/ys8K
         5TZSxnMad+8NLs1MBjLgpEBwL8E0IGcJKlNgkcyxKWMcTu3f9N5N21xNJCvFavVrHmPl
         7tyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=/IMb5vZsjeIogNy2XWUviHzinw3inKGsSd1o5Us007A=;
        b=l8BJTrHDmDLJB5d97uwD4N9e4w/Kzd6rBSncfjgpVgrWW4whRURcc8urznVgTW3DAr
         hJO+IyMN0kiDltSWyz7KPtBoBPuPxStgRmRwSOcYfuBCIgy5A9u81XqgHVE7Va/ZH8V/
         PLtwZpQSxalxh/ZCzdJ9wtrB41zlBerDjWPzcwpxDEcbRLTEFqRaepAAX+X774AucKpZ
         W6DC+29IRSbtmILMVJEpy6UTRNWp4JXvc6kNKi4svSyRd0BZU6e0mx70KTTHWHtrNqtF
         o9e8HIUmpMxzaZ5aGHvYH7h6qjjGz935sC3DEs9cpYwTK7QZAAJij/iK/jzLrCTEq9bb
         xl4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b="R/LDR7DF";
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/IMb5vZsjeIogNy2XWUviHzinw3inKGsSd1o5Us007A=;
        b=FnrhUDpkZVw0ztUWBYBZ1DSVn9us0Hozjz6UGydn9xh4RyB/NcfV2qVSpw+zrHTPay
         Iq/aY4RkDxZQHLLsV4K2KTQ8mPCXNNpVbq28Mh78bK/kzIbV6afPBlCqZmu2t2f0EK7/
         SwsAaTsjGIfTdH+dfwTOwT1fWa7z0419v5I+rCVvj8qW6NEQ2vQQYSqRhqVI0FOF3vEF
         fyD7VsGtk2j0W8WX7zsV7hdH0owZcj5K0HjHxyKckjGHt6zK5cjbc/8nHAy2BQHT82cM
         dRofUdF8npsbIbltIXKu1v/LaTT7egudCs1IqBcL1NtS+zPg+D1hbwp79iCfbi5RKu+6
         2igQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/IMb5vZsjeIogNy2XWUviHzinw3inKGsSd1o5Us007A=;
        b=LKVsN07bhcHJYPWNWhdzJ1XIorF1s/NvstcqJ64sCfiXCDlxWN9CUoPu+4TAapW7ZP
         H0hR0TbpxkUykXxXyz2yuboX4OvH3hhdS5+XAS8PH1VV1facFmUfTUFCP3q0WeuzrMag
         iDigM7DBOX3/wOkNZX5nC/Sz0PzRo3Y4LNqliWoxzGNd6zZY4fgKfekCSSFWshNzLJhX
         ExNH4N52zXWLFPdocxt3U8nUZo85wMsg9TF/gUDfvtNUeaFLrE45MZqQtcb9HE+h0OzR
         5mCoA8H+7+S8tf6YGRv6g3kZ/mfZzGCTA0U4BYtaBARErHbtqsURql/iaenlLu4I5Lh6
         O4KQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYojE80Kq+l8T5G71u6GziOiIdv8g6UrzOVYtONEuHE/sPBCTS1
	TRj9xUAoIPD0h7OdVWSu8Yw=
X-Google-Smtp-Source: APiQypKksMBL5uXThdX1WublgWcJ4vbYuzQEtRkcIvRJpkomqhge+av6Bcnuw/TcLtY3e1MsTML5RQ==
X-Received: by 2002:a1f:a844:: with SMTP id r65mr9553443vke.56.1588813519099;
        Wed, 06 May 2020 18:05:19 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b211:: with SMTP id b17ls147618vkf.3.gmail; Wed, 06 May
 2020 18:05:18 -0700 (PDT)
X-Received: by 2002:a1f:e6c1:: with SMTP id d184mr9690252vkh.10.1588813518560;
        Wed, 06 May 2020 18:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588813518; cv=none;
        d=google.com; s=arc-20160816;
        b=K3bK+mHvwZq0k8xX8bg8lP04XwlzzfTKF9BlQJo/U15umGnsSaXL47zIYOFZu4KcmY
         OVnk+kw+frtIh94VwVOY5rLwMOYvNeP7ynSyeUajT8jWYRsq0e/ecHdXE5Facpej9vil
         yG143SKZMH5jMWzC4XGzSuJ1/5U0FaZ+DeID9pSpfpwf1/TbpXrnuuo46Cf/yl4nwxwq
         zLBKoxVDDUgMCfk2pdeyLZHBp68CYQJb0feKsTVg9S+2sb0obv0xKJ8Wb6El4feyFRUS
         CUUGP8KNQh6rS/HTFP+kwm0GheP6ybsc+4hwDZMmOBZ8+CTKDUx/H6OA2p7Z/Nx6NOL9
         Z4UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=35i1uOH32weCZseOrM7fgg14K7q1B6kLHtPYbgszlOo=;
        b=ihbPztAlX8LfLVY1duLa/Z48l/gLuYohXicFAvp8Eh6Q0DaH/F9EEOnrZzuvueYb6p
         LhgpGJptom43EA65m02gmM5kahHCOBxWji+7yxclXel+WWTMKEhMyR7pwxkFrI12TG+l
         jDBGpxzqOavJ3iFMdIaXdpNxGKFvUIEXeP06/KF3JDTLfOipZsmn4RWdQ9zWNZQMFSh/
         N0ucT8iB9SmBfZT5Do/yYJ0gZuODkpbmmxJBltZkT7fa5dgqneQ8ry4ga2Y0bgbIcWZ2
         ZkBIUfzHeGGc7AQdRQCEgCxp1BKWw3+HLGeIFf3aZzU+9ONOFUnhqyasont3N3/X/Oi+
         oAFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b="R/LDR7DF";
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id a205si274163vsd.2.2020.05.06.18.05.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 18:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id f15so1371643plr.3
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 18:05:18 -0700 (PDT)
X-Received: by 2002:a17:902:694b:: with SMTP id k11mr8267407plt.59.1588813517313;
        Wed, 06 May 2020 18:05:17 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 18:05:16 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
To: bpf@vger.kernel.org
Cc: Luke Nelson <luke.r.nels@gmail.com>,
	Xi Wang <xi.wang@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Zi Shen Lim <zlim.lnx@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Enrico Weigelt <info@metux.net>,
	Torsten Duwe <duwe@suse.de>,
	Allison Randal <allison@lohutok.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [RFC PATCH bpf-next 3/3] bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates
Date: Wed,  6 May 2020 18:05:03 -0700
Message-Id: <20200507010504.26352-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507010504.26352-1-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b="R/LDR7DF";
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Content-Type: text/plain; charset="UTF-8"
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

The current code for BPF_{ADD,SUB} BPF_K loads the BPF immediate to a
temporary register before performing the addition/subtraction. Similarly,
BPF_JMP BPF_K cases load the immediate to a temporary register before
comparison.

This patch introduces optimizations that use arm64 immediate add, sub,
cmn, or cmp instructions when the BPF immediate fits. If the immediate
does not fit, it falls back to using a temporary register.

Example of generated code for BPF_ALU64_IMM(BPF_ADD, R0, 2):

without optimization:

  24: mov x10, #0x2
  28: add x7, x7, x10

with optimization:

  24: add x7, x7, #0x2

The code could use A64_{ADD,SUB}_I directly and check if it returns
AARCH64_BREAK_FAULT, similar to how logical immediates are handled.
However, aarch64_insn_gen_add_sub_imm from insn.c prints error messages
when the immediate does not fit, and it's simpler to check if the
immediate fits ahead of time.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm64/net/bpf_jit.h      |  8 ++++++++
 arch/arm64/net/bpf_jit_comp.c | 36 +++++++++++++++++++++++++++++------
 2 files changed, 38 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/net/bpf_jit.h b/arch/arm64/net/bpf_jit.h
index f36a779949e6..923ae7ff68c8 100644
--- a/arch/arm64/net/bpf_jit.h
+++ b/arch/arm64/net/bpf_jit.h
@@ -100,6 +100,14 @@
 /* Rd = Rn OP imm12 */
 #define A64_ADD_I(sf, Rd, Rn, imm12) A64_ADDSUB_IMM(sf, Rd, Rn, imm12, ADD)
 #define A64_SUB_I(sf, Rd, Rn, imm12) A64_ADDSUB_IMM(sf, Rd, Rn, imm12, SUB)
+#define A64_ADDS_I(sf, Rd, Rn, imm12) \
+	A64_ADDSUB_IMM(sf, Rd, Rn, imm12, ADD_SETFLAGS)
+#define A64_SUBS_I(sf, Rd, Rn, imm12) \
+	A64_ADDSUB_IMM(sf, Rd, Rn, imm12, SUB_SETFLAGS)
+/* Rn + imm12; set condition flags */
+#define A64_CMN_I(sf, Rn, imm12) A64_ADDS_I(sf, A64_ZR, Rn, imm12)
+/* Rn - imm12; set condition flags */
+#define A64_CMP_I(sf, Rn, imm12) A64_SUBS_I(sf, A64_ZR, Rn, imm12)
 /* Rd = Rn */
 #define A64_MOV(sf, Rd, Rn) A64_ADD_I(sf, Rd, Rn, 0)
 
diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index 083e5d8a5e2c..561a2fea9cdd 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -167,6 +167,12 @@ static inline int epilogue_offset(const struct jit_ctx *ctx)
 	return to - from;
 }
 
+static bool is_addsub_imm(u32 imm)
+{
+	/* Either imm12 or shifted imm12. */
+	return !(imm & ~0xfff) || !(imm & ~0xfff000);
+}
+
 /* Stack must be multiples of 16B */
 #define STACK_ALIGN(sz) (((sz) + 15) & ~15)
 
@@ -479,13 +485,25 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* dst = dst OP imm */
 	case BPF_ALU | BPF_ADD | BPF_K:
 	case BPF_ALU64 | BPF_ADD | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ADD(is64, dst, dst, tmp), ctx);
+		if (is_addsub_imm(imm)) {
+			emit(A64_ADD_I(is64, dst, dst, imm), ctx);
+		} else if (is_addsub_imm(-imm)) {
+			emit(A64_SUB_I(is64, dst, dst, -imm), ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_ADD(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_SUB | BPF_K:
 	case BPF_ALU64 | BPF_SUB | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_SUB(is64, dst, dst, tmp), ctx);
+		if (is_addsub_imm(imm)) {
+			emit(A64_SUB_I(is64, dst, dst, imm), ctx);
+		} else if (is_addsub_imm(-imm)) {
+			emit(A64_ADD_I(is64, dst, dst, -imm), ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_SUB(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_AND | BPF_K:
 	case BPF_ALU64 | BPF_AND | BPF_K:
@@ -639,8 +657,14 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_JMP32 | BPF_JSLT | BPF_K:
 	case BPF_JMP32 | BPF_JSGE | BPF_K:
 	case BPF_JMP32 | BPF_JSLE | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_CMP(is64, dst, tmp), ctx);
+		if (is_addsub_imm(imm)) {
+			emit(A64_CMP_I(is64, dst, imm), ctx);
+		} else if (is_addsub_imm(-imm)) {
+			emit(A64_CMN_I(is64, dst, -imm), ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_CMP(is64, dst, tmp), ctx);
+		}
 		goto emit_cond_jmp;
 	case BPF_JMP | BPF_JSET | BPF_K:
 	case BPF_JMP32 | BPF_JSET | BPF_K:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507010504.26352-4-luke.r.nels%40gmail.com.
