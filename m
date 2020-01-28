Return-Path: <clang-built-linux+bncBCP7VQF36ABBBJFSX3YQKGQEJOA2KZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D41C114ADFB
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 03:15:01 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id i67sf9282083ilf.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 18:15:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580177701; cv=pass;
        d=google.com; s=arc-20160816;
        b=SfsElUt/SgcJ9VoPxvSHDZqgLWLr56G2nw8CPLE1PvBLDMKac3zJnJaYWvooZkYVHC
         Rl/Vg5jNnaWhhcpNgLXX3Wu+E0aa6fIsqsgV552Ekm6OrngjnuQHYvHHOzHqqVZtCMsu
         w5ZefDxqDVnUw83F4lnEV57xpkFE0AeskwBUP/P11gNnoDKQt8NHt6T7o8rVz67CnYAb
         SLP/1PqUFZEGHrSevS3UHFwNMLQMQwe/z8vnzDdY0jRs9+6h4aEmxuOwdQFvf3IWTJeW
         T8g3Kkkqv3jB2HWjrKnyjIbQYwKUgkHD/q8eVbT5FxcFzeeA5sZG5dCB38lZrtyO2oLT
         PctQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to:to
         :from:cc:mime-version:message-id:date:subject:dkim-signature;
        bh=oqPAJbQGNqjETZby5JAumRkmfnctuu/WAlxGlCWviZg=;
        b=IGcGKuQ13Xrpinlu3rtlu2d7mogjrVrNQoTK5c/zU/hUeT99XNQQuqNTiBB7da64Oh
         2LrJkwCAnuiLvl3vtpEj4Mfo8vX35uW56+/7unzy1ktYnvC/RNtK4ebd0OcEWS60q47M
         UKBwQzh8ftfmacN/JIuCOi/z04ZfYSh9DOe6ZibtX0zfzfxk5xspI/gvE7w/bYIHiRDN
         PTWr+9CuVTFBaN7fyCFySP7JL/BxOfOu0v/k1QaLkvXv1t8on6bR2Pzu5vPMrKc/xa0T
         SrsrC1/+w0ji6AmFDCLuU8d9r8zwxBalNgBM3yc94vPXiqmQuTn6Vz4KE57iByb37G4o
         9MkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u2lemWY+;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqPAJbQGNqjETZby5JAumRkmfnctuu/WAlxGlCWviZg=;
        b=GS5dsCI5EzE/n5mUUhaIaao2OulvVC2g/Zfpp8QLc7hUeOZ+vNdlhcH6VBCfNFPkXN
         gquA4d2cvk3FCFIaqCCRpuTeUI52yXu+i2XOW8Wqp9wfImazCGvMMJo9CwLPRbvr47Hf
         pRSRCuo+KInG5YxXPbPNVc49f3yrQVvhAMTm3gSpIj/wfoKGZyvR8TtHe5Dr6PgQKpDw
         YHdiRE49s9S8OFJ6LjD6rVP5odT8hId0Hujy3RakgSIeOxcWyFwoslCERhSJz2Q7mcpj
         dEv3kWM4PbkE1NDxv3thYRaoKXL8ao/cAywzWxxsbM2qIXkOBjx/0I61OeBOVSH2OGk1
         dLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oqPAJbQGNqjETZby5JAumRkmfnctuu/WAlxGlCWviZg=;
        b=lLx5n4YmRl/nwetknhsQuP8b6NSkxDjXJpuCRPxDTGUwhPBEhRQFFG7wrSxdmhmAY0
         8LPVz0vO6lsZlUECInzc6WbmuN8UkMkG2AygeXU3q2zqIR755OkkF28BF7FNwIuU/9oX
         XxTHfmE0nvLXJZ5CSOpTr1YJTe4Vs8LnJNW+lS/F+AqJaN1mEq4HiO/3QRpV+Ubqvhp9
         W2FBdAoxTG9libwTua0hU3nvJcrW4hakXDqSENGyXSmKjMIwcn8EeGPqw530kjDzCVJX
         /r6FsXo6I+V6OfHTHivcIxbdkqJv/nPiiEs5SEAWz/mq6jhF6w6Ki7C87jquMwAkgbze
         SZZA==
X-Gm-Message-State: APjAAAXhduBHozZOlQ8cvfP2hYtyfEIXo2LG1DnNkHICQS8A7wQiMpjC
	zisKS73pBTqNS75MuOy3MUw=
X-Google-Smtp-Source: APXvYqwF/fpepPG7xD25IcI2PNpP8fZD4tHb2yWwgZYjGJrY6QkuxeqW3BHNo/twB77b1p3WB2s2RQ==
X-Received: by 2002:a02:9469:: with SMTP id a96mr16177219jai.52.1580177700785;
        Mon, 27 Jan 2020 18:15:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls1554191ilj.0.gmail; Mon, 27
 Jan 2020 18:15:00 -0800 (PST)
X-Received: by 2002:a92:5845:: with SMTP id m66mr17998033ilb.257.1580177700377;
        Mon, 27 Jan 2020 18:15:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580177700; cv=none;
        d=google.com; s=arc-20160816;
        b=pKBn8BARo4KDXWURGgHQeqRnP1zMNfG+Tg0/ATDzwXc5ny/7OzV0xOQUYAxaGSKo/+
         KryWTk28c7+L4FxPJEJQEm+ra8u6EHldmn1q38QDoBCa76AkSK1ggrOiPx/pqAYqkybI
         ybpboEHkEnI+DSEcjxTBtPlhV0L/RcRRx4USdtEWrqme3T1e3rIHC3a2QCEA0W4tieqg
         QNUgx5PmzbcN1i0xQr5EpGUBot8j/jPgD1n413qrUTOxHwgIcu5buuaS3iUocfMg34XL
         rHN2thaU2C582rdEd+1Xo2rWukab8m27yCbK/Dwt8zfKHEVE77+mzeDWTh6cANAcEyWt
         YNDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:to:from:cc:content-transfer-encoding
         :mime-version:message-id:date:subject:dkim-signature;
        bh=jKrDfwDIxQNTXTrn+zwyb0TImugf3AGUmYGjhKrNRfc=;
        b=AG6n7SvlvxgYHmJs9fuqGlYjZs+25x5LXtgZ4VgWjjHz9MFdnriEF6HtHwdnvQ6i9A
         KV4qC9I5EtuEKOPCC8Se/eEeZvxOOqXMVVxxSJvxrDkvFeD0BASobYjy+3nhwDkCQT49
         6WxUAqxKS/rgJdValAbaiLSPpq/SY9aOTGolcNziblctjKuijsHUjkX9Hx/HEo2kVxkB
         QMCYd8g32P4iJV1dgtS6zagI9iVRzJLOIDg3EONXbAlot/NSH4p4d4yHA3NwDLVvdDaV
         EBpyPklNHOkgcftKmdC/1PLPJxGpVX3XYueOE4ozDuoMxFkeZJJmrX+8JyE1i7Ea/w9o
         /nRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u2lemWY+;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z6si721180iof.2.2020.01.27.18.15.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 18:15:00 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id i23so5834108pfo.2
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 18:15:00 -0800 (PST)
X-Received: by 2002:a63:6d8d:: with SMTP id i135mr22565833pgc.90.1580177699348;
        Mon, 27 Jan 2020 18:14:59 -0800 (PST)
Received: from localhost ([216.9.110.7])
        by smtp.gmail.com with ESMTPSA id k1sm10222394pfg.66.2020.01.27.18.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 18:14:58 -0800 (PST)
Subject: [PATCH 3/4] arm64: bpf: Split the read and write halves of dst
Date: Mon, 27 Jan 2020 18:11:44 -0800
Message-Id: <20200128021145.36774-4-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
Cc: daniel@iogearbox.net, ast@kernel.org, zlim.lnx@gmail.com,
  catalin.marinas@arm.com, will@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
  andriin@fb.com, shuah@kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>,
  netdev@vger.kernel.org, bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
  kernel-team@android.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u2lemWY+;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

This patch is intended to change no functionality, it just allows me to do
register renaming later.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/arm64/net/bpf_jit_comp.c | 107 +++++++++++++++++-----------------
 1 file changed, 54 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index 8eee68705056..fba5b1b00cd7 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -348,7 +348,8 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		      bool extra_pass)
 {
 	const u8 code = insn->code;
-	const u8 dst = bpf2a64(ctx, insn->dst_reg);
+	const u8 dstw = bpf2a64(ctx, insn->dst_reg);
+	const u8 dstr = bpf2a64(ctx, insn->dst_reg);
 	const u8 src = bpf2a64(ctx, insn->src_reg);
 	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
 	const u8 tmp2 = bpf2a64(ctx, TMP_REG_2);
@@ -377,32 +378,32 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* dst = src */
 	case BPF_ALU | BPF_MOV | BPF_X:
 	case BPF_ALU64 | BPF_MOV | BPF_X:
-		emit(A64_MOV(is64, dst, src), ctx);
+		emit(A64_MOV(is64, dstw, src), ctx);
 		break;
 	/* dst = dst OP src */
 	case BPF_ALU | BPF_ADD | BPF_X:
 	case BPF_ALU64 | BPF_ADD | BPF_X:
-		emit(A64_ADD(is64, dst, dst, src), ctx);
+		emit(A64_ADD(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_SUB | BPF_X:
 	case BPF_ALU64 | BPF_SUB | BPF_X:
-		emit(A64_SUB(is64, dst, dst, src), ctx);
+		emit(A64_SUB(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_AND | BPF_X:
 	case BPF_ALU64 | BPF_AND | BPF_X:
-		emit(A64_AND(is64, dst, dst, src), ctx);
+		emit(A64_AND(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_OR | BPF_X:
 	case BPF_ALU64 | BPF_OR | BPF_X:
-		emit(A64_ORR(is64, dst, dst, src), ctx);
+		emit(A64_ORR(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_XOR | BPF_X:
 	case BPF_ALU64 | BPF_XOR | BPF_X:
-		emit(A64_EOR(is64, dst, dst, src), ctx);
+		emit(A64_EOR(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_MUL | BPF_X:
 	case BPF_ALU64 | BPF_MUL | BPF_X:
-		emit(A64_MUL(is64, dst, dst, src), ctx);
+		emit(A64_MUL(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_DIV | BPF_X:
 	case BPF_ALU64 | BPF_DIV | BPF_X:
@@ -410,30 +411,30 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_ALU64 | BPF_MOD | BPF_X:
 		switch (BPF_OP(code)) {
 		case BPF_DIV:
-			emit(A64_UDIV(is64, dst, dst, src), ctx);
+			emit(A64_UDIV(is64, dstw, dstr, src), ctx);
 			break;
 		case BPF_MOD:
-			emit(A64_UDIV(is64, tmp, dst, src), ctx);
-			emit(A64_MSUB(is64, dst, dst, tmp, src), ctx);
+			emit(A64_UDIV(is64, tmp, dstr, src), ctx);
+			emit(A64_MSUB(is64, dstw, dstr, tmp, src), ctx);
 			break;
 		}
 		break;
 	case BPF_ALU | BPF_LSH | BPF_X:
 	case BPF_ALU64 | BPF_LSH | BPF_X:
-		emit(A64_LSLV(is64, dst, dst, src), ctx);
+		emit(A64_LSLV(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_X:
 	case BPF_ALU64 | BPF_RSH | BPF_X:
-		emit(A64_LSRV(is64, dst, dst, src), ctx);
+		emit(A64_LSRV(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_X:
 	case BPF_ALU64 | BPF_ARSH | BPF_X:
-		emit(A64_ASRV(is64, dst, dst, src), ctx);
+		emit(A64_ASRV(is64, dstw, dstr, src), ctx);
 		break;
 	/* dst = -dst */
 	case BPF_ALU | BPF_NEG:
 	case BPF_ALU64 | BPF_NEG:
-		emit(A64_NEG(is64, dst, dst), ctx);
+		emit(A64_NEG(is64, dstw, dstr), ctx);
 		break;
 	/* dst = BSWAP##imm(dst) */
 	case BPF_ALU | BPF_END | BPF_FROM_LE:
@@ -447,16 +448,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 #endif
 		switch (imm) {
 		case 16:
-			emit(A64_REV16(is64, dst, dst), ctx);
+			emit(A64_REV16(is64, dstw, dstr), ctx);
 			/* zero-extend 16 bits into 64 bits */
-			emit(A64_UXTH(is64, dst, dst), ctx);
+			emit(A64_UXTH(is64, dstw, dstr), ctx);
 			break;
 		case 32:
-			emit(A64_REV32(is64, dst, dst), ctx);
+			emit(A64_REV32(is64, dstw, dstr), ctx);
 			/* upper 32 bits already cleared */
 			break;
 		case 64:
-			emit(A64_REV64(dst, dst), ctx);
+			emit(A64_REV64(dstw, dstr), ctx);
 			break;
 		}
 		break;
@@ -464,11 +465,11 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		switch (imm) {
 		case 16:
 			/* zero-extend 16 bits into 64 bits */
-			emit(A64_UXTH(is64, dst, dst), ctx);
+			emit(A64_UXTH(is64, dstw, dstr), ctx);
 			break;
 		case 32:
 			/* zero-extend 32 bits into 64 bits */
-			emit(A64_UXTW(is64, dst, dst), ctx);
+			emit(A64_UXTW(is64, dstw, dstr), ctx);
 			break;
 		case 64:
 			/* nop */
@@ -478,61 +479,61 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* dst = imm */
 	case BPF_ALU | BPF_MOV | BPF_K:
 	case BPF_ALU64 | BPF_MOV | BPF_K:
-		emit_a64_mov_i(is64, dst, imm, ctx);
+		emit_a64_mov_i(is64, dstw, imm, ctx);
 		break;
 	/* dst = dst OP imm */
 	case BPF_ALU | BPF_ADD | BPF_K:
 	case BPF_ALU64 | BPF_ADD | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ADD(is64, dst, dst, tmp), ctx);
+		emit(A64_ADD(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_SUB | BPF_K:
 	case BPF_ALU64 | BPF_SUB | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_SUB(is64, dst, dst, tmp), ctx);
+		emit(A64_SUB(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_AND | BPF_K:
 	case BPF_ALU64 | BPF_AND | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_AND(is64, dst, dst, tmp), ctx);
+		emit(A64_AND(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_OR | BPF_K:
 	case BPF_ALU64 | BPF_OR | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ORR(is64, dst, dst, tmp), ctx);
+		emit(A64_ORR(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_XOR | BPF_K:
 	case BPF_ALU64 | BPF_XOR | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_EOR(is64, dst, dst, tmp), ctx);
+		emit(A64_EOR(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_MUL | BPF_K:
 	case BPF_ALU64 | BPF_MUL | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_MUL(is64, dst, dst, tmp), ctx);
+		emit(A64_MUL(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_DIV | BPF_K:
 	case BPF_ALU64 | BPF_DIV | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_UDIV(is64, dst, dst, tmp), ctx);
+		emit(A64_UDIV(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_MOD | BPF_K:
 	case BPF_ALU64 | BPF_MOD | BPF_K:
 		emit_a64_mov_i(is64, tmp2, imm, ctx);
-		emit(A64_UDIV(is64, tmp, dst, tmp2), ctx);
-		emit(A64_MSUB(is64, dst, dst, tmp, tmp2), ctx);
+		emit(A64_UDIV(is64, tmp, dstr, tmp2), ctx);
+		emit(A64_MSUB(is64, dstw, dstr, tmp, tmp2), ctx);
 		break;
 	case BPF_ALU | BPF_LSH | BPF_K:
 	case BPF_ALU64 | BPF_LSH | BPF_K:
-		emit(A64_LSL(is64, dst, dst, imm), ctx);
+		emit(A64_LSL(is64, dstw, dstr, imm), ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_K:
 	case BPF_ALU64 | BPF_RSH | BPF_K:
-		emit(A64_LSR(is64, dst, dst, imm), ctx);
+		emit(A64_LSR(is64, dstw, dstr, imm), ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_K:
 	case BPF_ALU64 | BPF_ARSH | BPF_K:
-		emit(A64_ASR(is64, dst, dst, imm), ctx);
+		emit(A64_ASR(is64, dstw, dstr, imm), ctx);
 		break;
 
 	/* JUMP off */
@@ -562,7 +563,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_JMP32 | BPF_JSLT | BPF_X:
 	case BPF_JMP32 | BPF_JSGE | BPF_X:
 	case BPF_JMP32 | BPF_JSLE | BPF_X:
-		emit(A64_CMP(is64, dst, src), ctx);
+		emit(A64_CMP(is64, dstr, src), ctx);
 emit_cond_jmp:
 		jmp_offset = bpf2a64_offset(i + off, i, ctx);
 		check_imm19(jmp_offset);
@@ -605,7 +606,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		break;
 	case BPF_JMP | BPF_JSET | BPF_X:
 	case BPF_JMP32 | BPF_JSET | BPF_X:
-		emit(A64_TST(is64, dst, src), ctx);
+		emit(A64_TST(is64, dstr, src), ctx);
 		goto emit_cond_jmp;
 	/* IF (dst COND imm) JUMP off */
 	case BPF_JMP | BPF_JEQ | BPF_K:
@@ -629,12 +630,12 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_JMP32 | BPF_JSGE | BPF_K:
 	case BPF_JMP32 | BPF_JSLE | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_CMP(is64, dst, tmp), ctx);
+		emit(A64_CMP(is64, dstr, tmp), ctx);
 		goto emit_cond_jmp;
 	case BPF_JMP | BPF_JSET | BPF_K:
 	case BPF_JMP32 | BPF_JSET | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_TST(is64, dst, tmp), ctx);
+		emit(A64_TST(is64, dstr, tmp), ctx);
 		goto emit_cond_jmp;
 	/* function call */
 	case BPF_JMP | BPF_CALL:
@@ -676,7 +677,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		u64 imm64;
 
 		imm64 = (u64)insn1.imm << 32 | (u32)imm;
-		emit_a64_mov_i64(dst, imm64, ctx);
+		emit_a64_mov_i64(dstw, imm64, ctx);
 
 		return 1;
 	}
@@ -689,16 +690,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		emit_a64_mov_i(1, tmp, off, ctx);
 		switch (BPF_SIZE(code)) {
 		case BPF_W:
-			emit(A64_LDR32(dst, src, tmp), ctx);
+			emit(A64_LDR32(dstw, src, tmp), ctx);
 			break;
 		case BPF_H:
-			emit(A64_LDRH(dst, src, tmp), ctx);
+			emit(A64_LDRH(dstw, src, tmp), ctx);
 			break;
 		case BPF_B:
-			emit(A64_LDRB(dst, src, tmp), ctx);
+			emit(A64_LDRB(dstw, src, tmp), ctx);
 			break;
 		case BPF_DW:
-			emit(A64_LDR64(dst, src, tmp), ctx);
+			emit(A64_LDR64(dstw, src, tmp), ctx);
 			break;
 		}
 		break;
@@ -713,16 +714,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		emit_a64_mov_i(1, tmp, imm, ctx);
 		switch (BPF_SIZE(code)) {
 		case BPF_W:
-			emit(A64_STR32(tmp, dst, tmp2), ctx);
+			emit(A64_STR32(tmp, dstr, tmp2), ctx);
 			break;
 		case BPF_H:
-			emit(A64_STRH(tmp, dst, tmp2), ctx);
+			emit(A64_STRH(tmp, dstr, tmp2), ctx);
 			break;
 		case BPF_B:
-			emit(A64_STRB(tmp, dst, tmp2), ctx);
+			emit(A64_STRB(tmp, dstr, tmp2), ctx);
 			break;
 		case BPF_DW:
-			emit(A64_STR64(tmp, dst, tmp2), ctx);
+			emit(A64_STR64(tmp, dstr, tmp2), ctx);
 			break;
 		}
 		break;
@@ -735,16 +736,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		emit_a64_mov_i(1, tmp, off, ctx);
 		switch (BPF_SIZE(code)) {
 		case BPF_W:
-			emit(A64_STR32(src, dst, tmp), ctx);
+			emit(A64_STR32(src, dstr, tmp), ctx);
 			break;
 		case BPF_H:
-			emit(A64_STRH(src, dst, tmp), ctx);
+			emit(A64_STRH(src, dstr, tmp), ctx);
 			break;
 		case BPF_B:
-			emit(A64_STRB(src, dst, tmp), ctx);
+			emit(A64_STRB(src, dstr, tmp), ctx);
 			break;
 		case BPF_DW:
-			emit(A64_STR64(src, dst, tmp), ctx);
+			emit(A64_STR64(src, dstr, tmp), ctx);
 			break;
 		}
 		break;
@@ -754,10 +755,10 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* STX XADD: lock *(u64 *)(dst + off) += src */
 	case BPF_STX | BPF_XADD | BPF_DW:
 		if (!off) {
-			reg = dst;
+			reg = dstr;
 		} else {
 			emit_a64_mov_i(1, tmp, off, ctx);
-			emit(A64_ADD(1, tmp, tmp, dst), ctx);
+			emit(A64_ADD(1, tmp, tmp, dstr), ctx);
 			reg = tmp;
 		}
 		if (cpus_have_cap(ARM64_HAS_LSE_ATOMICS)) {
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-4-palmerdabbelt%40google.com.
