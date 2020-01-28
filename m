Return-Path: <clang-built-linux+bncBCP7VQF36ABBBKNSX3YQKGQEUSS3RZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5F114ADFC
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 03:15:07 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id h6sf489755pju.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 18:15:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580177705; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWqv2ig5pc8O7ROa6uE8A/iB2WHuICBrpe77tP2NtbkeildqOvdf6D4CPsECevOzEi
         Xtae+ybD8LMvxQg064BNUfUqZpiX3I8hjwX+xIrXqICJX/0Vvu5WjRCWNpZodqxdhol9
         2S9s4KH4OlVR0VjLfn6oGsfqJkhzYpWGlc7yF+cBsEo+CiWw0r62QYfr4nY3D+LFEPAO
         iB0cKI05vRDHF8lbQnfxSs0QF7xb+fBWFPxxdGuUuVh1iSsmGQFU2ltID0CM8l5ztQXX
         Sib4QwRm7mcux4WkOxS85sfRe0Wxeha82VsXUTfMZLHVCrAaoBs70vtIdbC76uj5cWLw
         JYXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to:to
         :from:cc:mime-version:message-id:date:subject:dkim-signature;
        bh=ki2VSvg22w5E72dxHYgjbzDeIx+TRjKv7lyqw8o89yE=;
        b=ES2f/5reEU+XYWtpaEflEMGkvaLD5LwtQO9Z7FO+9UXTIotSh5Na0nYtYVFSm+Rpnb
         bfEQGBnVymUBapeqQCH1pbLM0JQdUus4c6cZ3v87+8IMFdjpLK/158Z/GQ/7NnyeJUH8
         ItIlogzUhYXdCdNgI/5BOEBSjsGI+irp1mYDiKTAXkcMofufIxFgGZycc2oz8zdDfT6l
         TRcxx93QNfxvWxbxJ2l7ZNuXIr2yzolBpV3U+Niv36hAJHMa+On+Qe+H/SROSOet6Ez4
         Q4v+Mvj4Y8L2CnhvKdpxKHO8VVzYPpbl+B9KWHBtsALU26Och7sT5iuFk/s3YDtzLoHr
         napw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t6Fkbs2B;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ki2VSvg22w5E72dxHYgjbzDeIx+TRjKv7lyqw8o89yE=;
        b=M1RgRYjXkqO7BXPPP68sTCrIkhXcbVdnPKVa/6osaYlS1ZficzVHdjS1g4oF5P6iq7
         S8OD2SOl8R34ZJ+hswjXcFBSRBVn2WXKwqzIny/9CRwUobwdicYdKxJ+uKxSnlB+l396
         s1SksCQOxalJoDOM4SfMPGbdry6xqYiXhk/wvfkauRNybB8fEwluTsAi+17y6yZiakVT
         ZZSK5Dx9mPYkAx8oE20ACYPTiawm0kyQMZVbT1s3DFhfF/EFhSv4cXy5Z4RXelsRaTJz
         B/DjJZnBKNWU9h4PkxlkYVM6wOj+OKod4pxdildLhTNHBnVTfuNuJmk/4o+tCLsWJp8u
         o4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ki2VSvg22w5E72dxHYgjbzDeIx+TRjKv7lyqw8o89yE=;
        b=FCbJDRRvrpRRXRfEIqFkt2XvLFxIUYgaIn14QJvZCTmVh/HvJ2m6b/plyLtCCqJcUz
         iM5OAWz5cOBPEtTyTiH0mDRyLAhyZlDNSrwTcqulJMPGizglIsrC/qRpfOwORnPXLmFY
         hfbflaKOSPLV+pTRB3VPBZRgY5M0DW9kakQbc7iss28gx66RkQLqd0+WWwj5QhiqcLxS
         DbIdlXZZPcoqXY96hpKE+TvkDXRyocKP61xm1WaPDKSSCMIjIlKMA8KkzZHdTZm5o16P
         uFpY2dH5ZqmloF8aA6yDKJyG08k7bVAdgJ+uyq0r3qGke2jwK4Ct7tjpVN5suMPEur9S
         qfhg==
X-Gm-Message-State: APjAAAU2iWjuonPAfj8HdqSfJZ/YnFvXPR6WilJBZaXyC6w+jfhtIRP7
	tiY/muX+ainB4eeyFlnN7wU=
X-Google-Smtp-Source: APXvYqy4fYGBGX8nfo8VLKpcmyhmnp3hySSO7m8Hi0jz1FZeeSnUWTMKh1H33XrgEjCQJDnSd1HdTA==
X-Received: by 2002:a63:e956:: with SMTP id q22mr21698159pgj.433.1580177705675;
        Mon, 27 Jan 2020 18:15:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8547:: with SMTP id y7ls1384217pfn.10.gmail; Mon, 27 Jan
 2020 18:15:05 -0800 (PST)
X-Received: by 2002:a63:8f55:: with SMTP id r21mr787283pgn.422.1580177705241;
        Mon, 27 Jan 2020 18:15:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580177705; cv=none;
        d=google.com; s=arc-20160816;
        b=KAK/1JJQ3kj2713pErTfLqUD0QHsq+Eg7rrlwDkSVX+XE9He6WjjE6pEMwBHj1xpim
         AkGh9FoI/lS9fxh8osI2u7R7Hkv3El1TOqgEdp6SZJbHz+eZbmy/I2b/JFWghXiS4nPu
         De/TtRZOcH2ymEljEoocxgyCPe7ApX9cPKWj31WbOWaYK0hpr5BCPBn6Fdo9moqWa195
         DA9V7EjifVr14SWyxVs5tV0a+mJOKH9VWYzDjW8WO54DbplIGX0NiHthMlkWaBZLM3di
         t0BWq5hRuyfw6dUg5PcND8LYSKJ3bRJw7mY6TBmj135lO0CrIpIXjHdfGkNM1r6vrt3i
         P2ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:to:from:cc:content-transfer-encoding
         :mime-version:message-id:date:subject:dkim-signature;
        bh=LUiKWI3Cf+9+n0Mf0T0uSDtpI14DkFl6R/zPz6oE4kA=;
        b=SnOy1gnOQNRmEcooUnzkzprnWfGqh/vVs5GvyhlGsrQlIK691a5e+kXopbnFXDOig2
         ZUzrOHtlOgK41kjHsH6QytpVMe0wA9DRwvWummCBCHr0CjA0fETy19gUWfZmKMb5R+Zn
         rktRKfRYRi0MfKEf7vmW4ESRc9vCp8e3FsBDZnrX+2wViiUoEBnq4AgfFoBeFLRdOo/M
         jhKuj0g2gKv0wupWU7lpkicijOuWqDt6MFtIcN8J6Kx2byl9uLbj6OFv52m1MITG/qn0
         OTqEaiPPMXiPqagopfMuDR6WKkfVQMoJq+X3KVEeidkKrYim8jQVwAl9DNDN/r/nuxHZ
         TMTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t6Fkbs2B;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d14si929912pfo.4.2020.01.27.18.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 18:15:05 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id r67so322053pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 18:15:05 -0800 (PST)
X-Received: by 2002:a17:902:9a09:: with SMTP id v9mr19976280plp.341.1580177704696;
        Mon, 27 Jan 2020 18:15:04 -0800 (PST)
Received: from localhost ([216.9.110.11])
        by smtp.gmail.com with ESMTPSA id o17sm393828pjq.1.2020.01.27.18.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 18:15:04 -0800 (PST)
Subject: [PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls
Date: Mon, 27 Jan 2020 18:11:45 -0800
Message-Id: <20200128021145.36774-5-palmerdabbelt@google.com>
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
 header.i=@google.com header.s=20161025 header.b=t6Fkbs2B;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
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

On arm64, the BPF function ABI doesn't match the C function ABI.  Specifically,
arm64 encodes calls as `a0 = f(a0, a1, ...)` while BPF encodes calls as
`BPF_REG_0 = f(BPF_REG_1, BPF_REG_2, ...)`.  This discrepancy results in
function calls being encoded as a two operations sequence that first does a C
ABI calls and then moves the return register into the right place.  This
results in one extra instruction for every function call.

This patch adds an optimization to the arm64 BPF JIT backend that aims to avoid
some of these moves.

I've done no benchmarking to determine if this is correct.  I ran the BPF
selftests before and after the change on arm64 in QEMU and found that I had a
single failure both before and after.  I'm not at all confident this code
actually works as it's my first time doing anything with both ARM64 and BPF and
I didn't even open the documentation for either of these.  I was particularly
surprised that the code didn't fail any tests -- I was kind of assuming this
would fail the tests, get put on the backburner, sit long enough for me to stop
caring, and then get deleted.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/arm64/net/bpf_jit_comp.c | 71 +++++++++++++++++++++++++++++++++--
 1 file changed, 68 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index fba5b1b00cd7..48d900cc7258 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -58,10 +58,14 @@ struct jit_ctx {
 	int *offset;
 	__le32 *image;
 	u32 stack_size;
+	int reg0_in_reg1;
 };
 
 static inline int bpf2a64(struct jit_ctx *ctx, int bpf_reg)
 {
+	if (ctx->reg0_in_reg1 && bpf_reg == BPF_REG_0)
+		bpf_reg = BPF_REG_1;
+
 	return bpf2a64_default[bpf_reg];
 }
 
@@ -338,6 +342,47 @@ static void build_epilogue(struct jit_ctx *ctx)
 	emit(A64_RET(A64_LR), ctx);
 }
 
+static int dead_register(const struct jit_ctx *ctx, int offset, int bpf_reg)
+{
+	const struct bpf_prog *prog = ctx->prog;
+	int i;
+
+	for (i = offset; i < prog->len; ++i) {
+		const struct bpf_insn *insn = &prog->insnsi[i];
+		const u8 code = insn->code;
+		const u8 bpf_dst = insn->dst_reg;
+		const u8 bpf_src = insn->src_reg;
+		const int writes_dst = !((code & BPF_ST) || (code & BPF_STX)
+					 || (code & BPF_JMP32) || (code & BPF_JMP));
+		const int reads_dst  = !((code & BPF_LD));
+		const int reads_src  = true;
+
+		/* Calls are a bit special in that they clobber a bunch of regisers. */
+		if ((code & (BPF_JMP | BPF_CALL)) || (code & (BPF_JMP | BPF_TAIL_CALL)))
+			if ((bpf_reg >= BPF_REG_0) && (bpf_reg <= BPF_REG_5))
+				return false;
+
+		/* Registers that are read before they're written are alive.
+		 * Most opcodes are of the form DST = DEST op SRC, but there
+		 * are some exceptions.*/
+		if (bpf_src == bpf_reg && reads_src)
+			return false;
+
+		if (bpf_dst == bpf_reg && reads_dst)
+			return false;
+		
+		if (bpf_dst == bpf_reg && writes_dst)
+			return true;
+
+		/* Most BPF instructions are 8 bits long, but some ar 16 bits
+		 * long. */
+		if (code & (BPF_LD | BPF_IMM | BPF_DW))
+			++i;
+	}
+
+	return true;
+}
+
 /* JITs an eBPF instruction.
  * Returns:
  * 0  - successfully JITed an 8-byte eBPF instruction.
@@ -348,7 +393,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		      bool extra_pass)
 {
 	const u8 code = insn->code;
-	const u8 dstw = bpf2a64(ctx, insn->dst_reg);
+	u8 dstw;
 	const u8 dstr = bpf2a64(ctx, insn->dst_reg);
 	const u8 src = bpf2a64(ctx, insn->src_reg);
 	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
@@ -374,6 +419,27 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 #define check_imm19(imm) check_imm(19, imm)
 #define check_imm26(imm) check_imm(26, imm)
 
+	/* Handle BPF_REG_0, which may be in the wrong place because the ARM64
+	 * ABI doesn't match the BPF ABI for function calls. */
+	if (ctx->reg0_in_reg1) {
+		/* If we're writing BPF_REG_0 then we don't need to do any
+		 * extra work to get the registers back in their correct
+		 * locations. */
+		if (insn->dst_reg == BPF_REG_0)
+			ctx->reg0_in_reg1 = false;
+
+		/* If we're writing to BPF_REG_1 then we need to save BPF_REG_0
+		 * into the correct location if it's still alive, as otherwise
+		 * it will be clobbered. */
+		if (insn->dst_reg == BPF_REG_1) {
+			if (!dead_register(ctx, off + 1, BPF_REG_0))
+				emit(A64_MOV(1, A64_R(7), A64_R(0)), ctx);
+			ctx->reg0_in_reg1 = false;
+		}
+	}
+
+	dstw = bpf2a64(ctx, insn->dst_reg);
+
 	switch (code) {
 	/* dst = src */
 	case BPF_ALU | BPF_MOV | BPF_X:
@@ -640,7 +706,6 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* function call */
 	case BPF_JMP | BPF_CALL:
 	{
-		const u8 r0 = bpf2a64(ctx, BPF_REG_0);
 		bool func_addr_fixed;
 		u64 func_addr;
 		int ret;
@@ -651,7 +716,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 			return ret;
 		emit_addr_mov_i64(tmp, func_addr, ctx);
 		emit(A64_BLR(tmp), ctx);
-		emit(A64_MOV(1, r0, A64_R(0)), ctx);
+		ctx->reg0_in_reg1 = true;
 		break;
 	}
 	/* tail call */
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-5-palmerdabbelt%40google.com.
