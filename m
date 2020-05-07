Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBTF5ZX2QKGQETGT2GFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0621C7F98
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 03:05:17 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id g187sf2770615oif.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 18:05:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588813516; cv=pass;
        d=google.com; s=arc-20160816;
        b=rFWRdCBTGtipQjliFPzg73Ifvk9srCQbtSLgTi41qUtXOawlFrUu10XA/rBlKjRn6a
         xmC1HvpNYoSjguGb1HQpcIfkti9NEkS8gtHemSJDssv3k45asBu4KUqehPrQ1kGVgg+y
         jswKffx1JLo+aD2Qt9ozzv+ApcpkbbQHx3yHS9rQZ2o9KpBejGk2tzFWoJv/S5NVd98Y
         b6PeBTcWAO/4CNK19f8mdldrH96viHMr27GaU2Jxso/Iy/amKk+dpZ8dSMgYh6FWe5+8
         uOCvT4cHuSuFxFXF+cFaTQN0qW/wCvLgdOl2AbPcAaK6TsskaX+q/uyv6flfYTjqyjgE
         /+Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=hf/fF8EfRKW9c+FidwGvVPIQ4EdYLd9JFmAbI6y0JlY=;
        b=nSdBomvbggJNVWtrJbbmsirs07mG6FikydLskns8Xz3ExeL2FfhApN0lfpAA9/BEMz
         /iu21AjTmCebANwezESnxfc6VXJElbn0KVG1/mIH7olWVyFAVQecNQT0zG/Dydbj2EDK
         Ptsqts/890+O7G2QBLq7vKj4bT7Rrp8NYZK5Nxl8DZVd7ZLgiJP5mTBLeaH3KVOpPQVx
         tXAO14QxU+i1JgX1RDCGxNQvCWcfr4nfTf8DitdO1cRKI6/X7mykOfOj82/CuS5i7ww8
         LbcllvvOpy0YegF84yUjMFirUnRpnZNFDMWJbRvMPF0JOLzjNNc1BAopnWqlm9ep1pGy
         +bew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=MzUALuxS;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hf/fF8EfRKW9c+FidwGvVPIQ4EdYLd9JFmAbI6y0JlY=;
        b=Zp8wGaQQTmuoM781mlz4Dln2h1oc2kIet0Afi0zOn2qj5SwQbE8WoV2UW9XQ5IEBuG
         K1XC3vf47AS22AhSUdFIn94wyX94APH5stzkXCV8p0+rlhJRxPbRhgcS0rr1kFRlJVBF
         qpTEi/jawSY65GwjwBZty9AVofRhGtZeg6uwjO3KL7u0f/4uDVmRbshf6Bevuib7T6rT
         NJVdWK1dEmWz7XaJU0a88t2VLgMh4dhRhgolOyAheuvd2QJFj7ic7fA8CiJqeb+9ZWXD
         2F1NNmsOYpR/28/bfez7M4iPZStLs956rI1ssdJ7cwSeWNTcDlqmaxU1lOcf00MckfkE
         oFgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hf/fF8EfRKW9c+FidwGvVPIQ4EdYLd9JFmAbI6y0JlY=;
        b=IwQOHqHiMefVlqUeg8g2WQySThdHtkZTYKlKTFJmVw+iuNcTac8qNRsTs5JHnN4or4
         6O4OLj09IuBVDxW97Ocfn/UqN4cwKfhPQgAHxcJUcBpIGvnJI0K+H90FE/9sNwtlTYI1
         fAxQ+/X9b+uO5TQQvT21YwBHZKAd5N3hs0WHUEcgA5zu1FuHTnvNZwVjCpQTzTcbOHYb
         rM1rIrhLjQKBhwJrS190WXxznYyPX1GexC+b8EIGHjSmrFRJmGT5c4xwl0X1X9Y8cug+
         I0lj5rCY0PdTAc7i1Z+fhMip1nPRBV5QlP+w+D4TcuLqf/k5HLHVJrlbemFJVZ0ziFLh
         b9eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZEC5gEty2vz9M6TwuHDt37mVtGeqMpcXojVQoOyV8a1BGYnp1b
	NW6EjT4jMvL0YDHgmZbm1lY=
X-Google-Smtp-Source: APiQypKUIt604y6fC3DdlnrHih8t4sPSNREpWE6a66QbUF1WZtlMLmjdLR8eK4j3APBq4hP8zOPo4A==
X-Received: by 2002:aca:518c:: with SMTP id f134mr4745737oib.33.1588813516369;
        Wed, 06 May 2020 18:05:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:30bc:: with SMTP id g28ls986800ots.4.gmail; Wed, 06
 May 2020 18:05:16 -0700 (PDT)
X-Received: by 2002:a05:6830:2386:: with SMTP id l6mr9075647ots.128.1588813515961;
        Wed, 06 May 2020 18:05:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588813515; cv=none;
        d=google.com; s=arc-20160816;
        b=zN36fpDpBlPJhF5ArN3jud7BqxNneV+ZC7y3V8qCMYzPOloV/DKzvgXVc24GnHXB9q
         B/jXl8Vti/3IYt2RdQeCBcSRt4BTxYBRwm9smoxzYKXpPbiZJRKGYJ0Rp4x1crA3EDXb
         EcpK8yJnlwV3AJAG4y6x/Wh8YddCrsyyGAzlx3DBKmZ5+H6D3xdgDyrQ+eYXtbKN7/QW
         3icvzkbag9Q1RqxqKMCdruF1p5MKVsWqABscK6YZ8fWkKQB7bkOKkVjkrLwC8cBJMgH1
         UaRq3sq99qre6LdZKx/z1EzEZKgYIG+4HoQr81J/X9pd2o9ooH374iVOlHKj7/i1urIB
         cM8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tkBqx/wfZEl+tIcjb11yTPyE7+YEVimiwOlUfbRN11I=;
        b=KN4JlYR0onX32P/vG5eZR1jO3cXSGAfmlthcRxVYJYu9URk4v0nvXnKPOBn87WW8X7
         OJiAHhC2HkkPxMwW/cUTmk6xZrmAHt4n/k79zsz23cwvvqXEN2qielmp3P8O9toWMFkB
         OihUfx9A9cN6GMR1gU/Pxar3C65rH9qt4WoDyRdMbAqnJLoTznBaB/tjMoptmdzWhzua
         tUEav5gXWjmPy5JM8+YNrRm34QZXmW6R0ogpMeos1LVEGuwhATHvnTnmelafHn9m4wxb
         Td+SHg+pljQbo4KSNO7C2agBcxB+xNLVlBVHnriDwxU1GTkBPfqIKIC7p60+oy59dNhO
         uazw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=MzUALuxS;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z4si281002otk.3.2020.05.06.18.05.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 18:05:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id m7so1367327plt.5
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 18:05:15 -0700 (PDT)
X-Received: by 2002:a17:90a:77c6:: with SMTP id e6mr13041525pjs.84.1588813515058;
        Wed, 06 May 2020 18:05:15 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 18:05:14 -0700 (PDT)
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
	Alexios Zavras <alexios.zavras@intel.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [RFC PATCH bpf-next 2/3] bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical immediates
Date: Wed,  6 May 2020 18:05:02 -0700
Message-Id: <20200507010504.26352-3-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507010504.26352-1-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b=MzUALuxS;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
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

The current code for BPF_{AND,OR,XOR,JSET} BPF_K loads the immediate to
a temporary register before use.

This patch changes the code to avoid using a temporary register
when the BPF immediate is encodable using an arm64 logical immediate
instruction. If the encoding fails (due to the immediate not being
encodable), it falls back to using a temporary register.

Example of generated code for BPF_ALU32_IMM(BPF_AND, R0, 0x80000001):

without optimization:

  24: mov  w10, #0x8000ffff
  28: movk w10, #0x1
  2c: and  w7, w7, w10

with optimization:

  24: and  w7, w7, #0x80000001

Since the encoding process is quite complex, the JIT reuses existing
functionality in arch/arm64/kernel/insn.c for encoding logical immediates
rather than duplicate it in the JIT.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm64/net/bpf_jit.h      | 14 +++++++++++++
 arch/arm64/net/bpf_jit_comp.c | 37 +++++++++++++++++++++++++++--------
 2 files changed, 43 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/net/bpf_jit.h b/arch/arm64/net/bpf_jit.h
index eb73f9f72c46..f36a779949e6 100644
--- a/arch/arm64/net/bpf_jit.h
+++ b/arch/arm64/net/bpf_jit.h
@@ -189,4 +189,18 @@
 /* Rn & Rm; set condition flags */
 #define A64_TST(sf, Rn, Rm) A64_ANDS(sf, A64_ZR, Rn, Rm)
 
+/* Logical (immediate) */
+#define A64_LOGIC_IMM(sf, Rd, Rn, imm, type) ({ \
+	u64 imm64 = (sf) ? (u64)imm : (u64)(u32)imm; \
+	aarch64_insn_gen_logical_immediate(AARCH64_INSN_LOGIC_##type, \
+		A64_VARIANT(sf), Rn, Rd, imm64); \
+})
+/* Rd = Rn OP imm */
+#define A64_AND_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, AND)
+#define A64_ORR_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, ORR)
+#define A64_EOR_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, EOR)
+#define A64_ANDS_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, AND_SETFLAGS)
+/* Rn & imm; set condition flags */
+#define A64_TST_I(sf, Rn, imm) A64_ANDS_I(sf, A64_ZR, Rn, imm)
+
 #endif /* _BPF_JIT_H */
diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index cdc79de0c794..083e5d8a5e2c 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -356,6 +356,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	const bool isdw = BPF_SIZE(code) == BPF_DW;
 	u8 jmp_cond, reg;
 	s32 jmp_offset;
+	u32 a64_insn;
 
 #define check_imm(bits, imm) do {				\
 	if ((((imm) > 0) && ((imm) >> (bits))) ||		\
@@ -488,18 +489,33 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		break;
 	case BPF_ALU | BPF_AND | BPF_K:
 	case BPF_ALU64 | BPF_AND | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_AND(is64, dst, dst, tmp), ctx);
+		a64_insn = A64_AND_I(is64, dst, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_AND(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_OR | BPF_K:
 	case BPF_ALU64 | BPF_OR | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ORR(is64, dst, dst, tmp), ctx);
+		a64_insn = A64_ORR_I(is64, dst, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_ORR(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_XOR | BPF_K:
 	case BPF_ALU64 | BPF_XOR | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_EOR(is64, dst, dst, tmp), ctx);
+		a64_insn = A64_EOR_I(is64, dst, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_EOR(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_MUL | BPF_K:
 	case BPF_ALU64 | BPF_MUL | BPF_K:
@@ -628,8 +644,13 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		goto emit_cond_jmp;
 	case BPF_JMP | BPF_JSET | BPF_K:
 	case BPF_JMP32 | BPF_JSET | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_TST(is64, dst, tmp), ctx);
+		a64_insn = A64_TST_I(is64, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_TST(is64, dst, tmp), ctx);
+		}
 		goto emit_cond_jmp;
 	/* function call */
 	case BPF_JMP | BPF_CALL:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507010504.26352-3-luke.r.nels%40gmail.com.
