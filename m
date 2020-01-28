Return-Path: <clang-built-linux+bncBCP7VQF36ABBBH5SX3YQKGQE62JXDCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C55D14ADF3
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 03:14:56 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id x75sf2727974oix.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 18:14:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580177695; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3hBzftxMZvMvc7YVVqCtYSK0ztJNtW6OeTa9L1UNiEEutP+OaFJ2mewkn+n0t5gpu
         ORV4Iab2rWMT9TMY4myhO9ju85OujIJAhY/oL5gV+TXPZJD+z+Ee3e3PXxVO5t0hC7QD
         3iFLktN+aq8UHoBfGSxC1qxmayY9RVMQ70nWvZvjQ0HNCYg+DAXwrQy3yO6LiPLpBtuc
         9jmkG0XMrcp+cXz/T87l08yCJnO9nZMmtCIS9zKuSkM3gOSd+6CiK84U+2TmqLYpJbHy
         9D99hHbpZtnj7If+GEJbPO5NT+5j7/45VbfHZveyw1WfGA1n1eJ0m+V2uCg4sCRa+441
         ttRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to:to
         :from:cc:mime-version:message-id:date:subject:dkim-signature;
        bh=ZTlAFp/rb6kRkZwEqUC1RHu1MC+/B6XbG9ltX6ah/GA=;
        b=lI/85ZMwl4szZ1XAnqBGuM5/WByF+sA7M+YV9SQBnJgcY+1NN2aaDb+QnuZYmDC6on
         /JrkMy8W26iPc5feITsbhCKu9GrG6QpTqW7P7trR1FeZvbxvd5Kkz0ZlhUc+u/tQt9Vx
         gJfe0wMiAfxinhBZQJiUxK6eYQ22r5Pyh/e7UTg+WFT0+z2pzZROi2lyY83FfY5CGG7E
         ZCHSCQ/YUPltblUv91Y9E3HmbHWLiNh1tsqXRAGNadZvGFJHvjSY+r2JPB2apdsjtg0t
         OA1CwVRay70x2X3WhyicDvopHuz8FuxLlnRYMMCgvCIcdRgr/33MoryJgeuQBOE7JBwb
         bb5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wIVx5InN;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZTlAFp/rb6kRkZwEqUC1RHu1MC+/B6XbG9ltX6ah/GA=;
        b=CA1FTqwBPMd7m5MslTevHBRk7xL3jb6eZcr8WLb/e8GgPAWxKvJuFrInnag8c/VrgM
         x423LWl+06AOujCVi1ZXt2ntNShPQEQF8y8Mr5na3RvQDNoqE0Ys46iY9KhLF45xZDiN
         vTvX6PqQJ13IVfnq8sz0pIOtayNpRIoELsQGfi9Xk3gaU8gAfG86GbfPK48uYM4Dv+8z
         q2Z8HOOt9QBCA/53g5MccQfrfeMMuWPgv18dK6/rKmnxHASH9gkE80Yc2O/t1dDImlEH
         bXaRHpUdE9vkaufOh5omO5l8UmfNyb8lyQLxToF/mqg90A6UUqVcMPi/VkAS0FWCdnWi
         tvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZTlAFp/rb6kRkZwEqUC1RHu1MC+/B6XbG9ltX6ah/GA=;
        b=r5HT54zGIe8EHFkUTkQ9pFQ5yAfsFFj8E05vCwPvLCvrqKlAaXuKu3Lp3MDxdjOfc6
         ZIOqgcc6KKs5SrfHaCBKPmbR2JZtTZy9C19TnzcgVYxSB64PXFwFBzooeaMdE6w1Otm0
         T1bIQeqczSbEz/DQgEiIyhdOQIhhmxJVBUBJNppPbPtM5kjW+2AKjQ6QX6wB1s5SkeFT
         DUyVPv7GoO1PuPrk/8/zo02d9fipDTtj24L9+/+Kg+RIqjGon2TrK1V68W8JxqfMVTRN
         sKC9mUdGAf3AJo7KsyN6g6M/JsEPauXqmXnQP5M9XNOnYzBdZhTSANXPTvyjbs7xe1V3
         kTTA==
X-Gm-Message-State: APjAAAU1+frE4kyQEwMnbxvos73aDAvMmzv0SWKRIKoE5QM86qIWRm1Z
	w9dUGCPP4luVs6soSCe+JOU=
X-Google-Smtp-Source: APXvYqz8Om7q1NprEHkjrCifrIrKIaODQ2TgIxcu1gE3cqMyLzRrJd8FNinb9HoTkGrBd4pCn5/rHw==
X-Received: by 2002:a9d:d06:: with SMTP id 6mr15098065oti.176.1580177695179;
        Mon, 27 Jan 2020 18:14:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7047:: with SMTP id x7ls1816101otj.0.gmail; Mon, 27 Jan
 2020 18:14:54 -0800 (PST)
X-Received: by 2002:a05:6830:1e64:: with SMTP id m4mr7150770otr.244.1580177694812;
        Mon, 27 Jan 2020 18:14:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580177694; cv=none;
        d=google.com; s=arc-20160816;
        b=mcojLHxg1+kleLRhpJWf5RYbyWSRlSLdG+luU0RSTcqvbIolgBPuWses59RS7njHxm
         qRRq2SMBmepB/lQakn12PRe4a3sAq8wi9p8ETYqXwB1UkVgTXvDCAD2Q3zY1YhMgyq9d
         WEu3LRisYjmjUbyh5ag73iYFE5/fTfCjBUCBeb+CmJx2K2HyfF6yU/qrq/HF+JewGs1i
         i7eCFosFrjgnG0DZdB0U6FOb68EuG7Ylbn/F6z1arzr8c+ocgpXT3xhAeBZwhwrDlSUv
         nz8Wpkf7eDcg+5J9HnIk0QGh6nFCXbiIwsRNh91G/RzfjH5xIyihTdhRdPg/ByJKYhHH
         fqVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:to:from:cc:content-transfer-encoding
         :mime-version:message-id:date:subject:dkim-signature;
        bh=vlorJcvaP10UZfjLamGOOlyDMylrB7iiHsA2qcGcn2c=;
        b=YiFUI+4V1YIX6EcmiByuVZwMzXT9msJTfa51oadW1df3QetEZnwT28gkA3YiMpQEtT
         7Fjai1p9b5EGPP03miZQMboJtykkZJdA7Q5sOuwmavryAiBlYSPXKqUSGfRDm/kINtAd
         mBK/mrCwSdvK5GThrNbUjEdngnZe/d3e35+2+NFZxAdeXfYS5K6sIGIMa5Gz7780OwW0
         a/HCQ3v5wgg4lmn+3xzHvv+S4ABdCs7HzjWVyScVjHYUGKAX5pPqnCDAqRnRFz6p4SIt
         a1PNRWtlkmst5yUFG+h+ynp1Br9XMk50SuGYj/z7I6NxcjM0BldAtVgOfHicjX3Ex67f
         iFgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wIVx5InN;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w63si466292oif.2.2020.01.27.18.14.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 18:14:54 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id p14so5834447pfn.4
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 18:14:54 -0800 (PST)
X-Received: by 2002:a62:52d0:: with SMTP id g199mr1553020pfb.241.1580177693903;
        Mon, 27 Jan 2020 18:14:53 -0800 (PST)
Received: from localhost ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id b12sm17391719pfi.157.2020.01.27.18.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 18:14:53 -0800 (PST)
Subject: [PATCH 2/4] arm64: bpf: Convert bpf2a64 to a function
Date: Mon, 27 Jan 2020 18:11:43 -0800
Message-Id: <20200128021145.36774-3-palmerdabbelt@google.com>
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
 header.i=@google.com header.s=20161025 header.b=wIVx5InN;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
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

This patch is intended to change no functionality, it just allows me to more
cleanly add dynamic register mapping later.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/arm64/net/bpf_jit_comp.c | 53 +++++++++++++++++++----------------
 1 file changed, 29 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index cdc79de0c794..8eee68705056 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -25,7 +25,7 @@
 #define TMP_REG_3 (MAX_BPF_JIT_REG + 3)
 
 /* Map BPF registers to A64 registers */
-static const int bpf2a64[] = {
+static const int bpf2a64_default[] = {
 	/* return value from in-kernel function, and exit value from eBPF */
 	[BPF_REG_0] = A64_R(7),
 	/* arguments from eBPF program to in-kernel function */
@@ -60,6 +60,11 @@ struct jit_ctx {
 	u32 stack_size;
 };
 
+static inline int bpf2a64(struct jit_ctx *ctx, int bpf_reg)
+{
+	return bpf2a64_default[bpf_reg];
+}
+
 static inline void emit(const u32 insn, struct jit_ctx *ctx)
 {
 	if (ctx->image != NULL)
@@ -176,12 +181,12 @@ static inline int epilogue_offset(const struct jit_ctx *ctx)
 static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
 {
 	const struct bpf_prog *prog = ctx->prog;
-	const u8 r6 = bpf2a64[BPF_REG_6];
-	const u8 r7 = bpf2a64[BPF_REG_7];
-	const u8 r8 = bpf2a64[BPF_REG_8];
-	const u8 r9 = bpf2a64[BPF_REG_9];
-	const u8 fp = bpf2a64[BPF_REG_FP];
-	const u8 tcc = bpf2a64[TCALL_CNT];
+	const u8 r6 = bpf2a64(ctx, BPF_REG_6);
+	const u8 r7 = bpf2a64(ctx, BPF_REG_7);
+	const u8 r8 = bpf2a64(ctx, BPF_REG_8);
+	const u8 r9 = bpf2a64(ctx, BPF_REG_9);
+	const u8 fp = bpf2a64(ctx, BPF_REG_FP);
+	const u8 tcc = bpf2a64(ctx, TCALL_CNT);
 	const int idx0 = ctx->idx;
 	int cur_offset;
 
@@ -243,12 +248,12 @@ static int out_offset = -1; /* initialized on the first pass of build_body() */
 static int emit_bpf_tail_call(struct jit_ctx *ctx)
 {
 	/* bpf_tail_call(void *prog_ctx, struct bpf_array *array, u64 index) */
-	const u8 r2 = bpf2a64[BPF_REG_2];
-	const u8 r3 = bpf2a64[BPF_REG_3];
+	const u8 r2 = bpf2a64(ctx, BPF_REG_2);
+	const u8 r3 = bpf2a64(ctx, BPF_REG_3);
 
-	const u8 tmp = bpf2a64[TMP_REG_1];
-	const u8 prg = bpf2a64[TMP_REG_2];
-	const u8 tcc = bpf2a64[TCALL_CNT];
+	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
+	const u8 prg = bpf2a64(ctx, TMP_REG_2);
+	const u8 tcc = bpf2a64(ctx, TCALL_CNT);
 	const int idx0 = ctx->idx;
 #define cur_offset (ctx->idx - idx0)
 #define jmp_offset (out_offset - (cur_offset))
@@ -307,12 +312,12 @@ static int emit_bpf_tail_call(struct jit_ctx *ctx)
 
 static void build_epilogue(struct jit_ctx *ctx)
 {
-	const u8 r0 = bpf2a64[BPF_REG_0];
-	const u8 r6 = bpf2a64[BPF_REG_6];
-	const u8 r7 = bpf2a64[BPF_REG_7];
-	const u8 r8 = bpf2a64[BPF_REG_8];
-	const u8 r9 = bpf2a64[BPF_REG_9];
-	const u8 fp = bpf2a64[BPF_REG_FP];
+	const u8 r0 = bpf2a64(ctx, BPF_REG_0);
+	const u8 r6 = bpf2a64(ctx, BPF_REG_6);
+	const u8 r7 = bpf2a64(ctx, BPF_REG_7);
+	const u8 r8 = bpf2a64(ctx, BPF_REG_8);
+	const u8 r9 = bpf2a64(ctx, BPF_REG_9);
+	const u8 fp = bpf2a64(ctx, BPF_REG_FP);
 
 	/* We're done with BPF stack */
 	emit(A64_ADD_I(1, A64_SP, A64_SP, ctx->stack_size), ctx);
@@ -343,11 +348,11 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		      bool extra_pass)
 {
 	const u8 code = insn->code;
-	const u8 dst = bpf2a64[insn->dst_reg];
-	const u8 src = bpf2a64[insn->src_reg];
-	const u8 tmp = bpf2a64[TMP_REG_1];
-	const u8 tmp2 = bpf2a64[TMP_REG_2];
-	const u8 tmp3 = bpf2a64[TMP_REG_3];
+	const u8 dst = bpf2a64(ctx, insn->dst_reg);
+	const u8 src = bpf2a64(ctx, insn->src_reg);
+	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
+	const u8 tmp2 = bpf2a64(ctx, TMP_REG_2);
+	const u8 tmp3 = bpf2a64(ctx, TMP_REG_3);
 	const s16 off = insn->off;
 	const s32 imm = insn->imm;
 	const int i = insn - ctx->prog->insnsi;
@@ -634,7 +639,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* function call */
 	case BPF_JMP | BPF_CALL:
 	{
-		const u8 r0 = bpf2a64[BPF_REG_0];
+		const u8 r0 = bpf2a64(ctx, BPF_REG_0);
 		bool func_addr_fixed;
 		u64 func_addr;
 		int ret;
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-3-palmerdabbelt%40google.com.
