Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBZGD232QKGQENI5WNKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 742621CB6D7
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:16:06 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id a22sf573443vsl.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:16:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961765; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ymvr+Y/cuqMiEHR2XtQRlq384HDtx6kYFBWbhrJj105yVTEEUIIZhWnlBachT0+iRr
         70Cf15ToZCS4G7GkmtVb74OMYmrWS0fvEWxVcVWcZiRg73vJagGrOcx6PGI8OCA0VcH/
         qb1T4g9xHi0tPBlfbo7zvZZRMM6zJbcPw//e+RVF1i6ivww06iBl3mNKYVV1LKHXHqkX
         smrmXBQ/hxfVDcTkTg/2t1c3LBfX5f1gI/Gw07r/IZtgp1WQfxMK5ESkdVE0uFZHovkA
         ixvgPA0E1HVYbRXER6EmZtzs/26IfDSurcT4RWkCWT7rcOlKtkKb3zNzRKnB8tThhh7b
         i42A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=N7TFh8bWpJ2dK6Uw+M1YltTv2Yve7qzQv/ExycQ2aZM=;
        b=WMrHvMIpYBnBP0fOPvqm9Et9Te/f4dOoivCPtg/5qtqTQszCFu/vxbfBuuU6NaKH7c
         YgHZsmSwqlskf7Edbk7WtPAd4QVMGdXZV2a7U0+4FDiRC84YotdnFyEAKwKYghBQ9nzk
         MScOi1fWdi3igwj82TR7/jvrv/7WUEWJLYTy6uBZ0jEKeAAQSzigiqpKoSw0xblYwXM5
         vHBFiWsH6TQcnrab6ktSyuyJKJlF3TSjDD+aRtnb0dAhCA3ZkeCaD4A4XidmNWrE6pQh
         zlMtH/At1Dg6O0Fl9hCLvsskeR+9iSohGXE12nalIGHjFzZCxAGUat+R77EthRlchPGb
         O3Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b="lSt6/YnZ";
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7TFh8bWpJ2dK6Uw+M1YltTv2Yve7qzQv/ExycQ2aZM=;
        b=p5onpB3Ef90XmC4oqao5h/LRS5ZrUM5IyIhiHQQZANDugF5plvJTwTxzot4rkj6A9T
         DX/t6ywoCqaHzE7QX/0RtGWksJok6JZsZqvqnuYxTyKN3TLUfQN4aFRItlfTBk1fjU7N
         42mo54JAsdQ3DKn6jZW5JHDxZrZwtWzEnEpbbbQwH0MrrS+Wliq4KUU6stwZFtifAz5W
         ASjQ8sdcQ52HwpYjkX7uW3bjrH39dS2HKTC72OyLg02XxmNPtpSy38aM4jhXbUJIKl29
         Dga9NcPRrRrhBEqqA46SXkFwkOScz+/+gsmxd37m1NrsHxc1NknJKqRGw1+DJwt+H/bu
         BZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7TFh8bWpJ2dK6Uw+M1YltTv2Yve7qzQv/ExycQ2aZM=;
        b=CO+HIgBBE4k2HShyqJmsFoshRGnW1eG61fiDVErgM4I41H4J7UbWrKDGtxZ74S0KvD
         uiSXEKEwmkE6Mw0f+8fMr4yPIkYaC8gPSW7Gy11q0SZRVKmxa2C2AtCfax8y8mndLJN2
         5we40f2tGGYu6uMcswEH8uKUZyg3QLPwl7ViQM+sNAZZhYkoFL3x6uGFbtxWPlpkB3FQ
         Pp9XDExeKNPFi17SDsU+/t3+pbZGeaHNOD2m7Zi3pBQlISehpUF8zpMdjdn1C/a9w4Ea
         tiVY/s2oK08FaE/2QVyah6vMCH64En3WiOlA8UFUFDngyO3DRB2MYiIYbvfbogMjMUMb
         bdWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaDGOJInffk5QLGsTQfquvYJbk2PJzcBuLBrH2p+L2ZePa6BWzH
	w7LNVcXUkwk4cw7cTEc/dTA=
X-Google-Smtp-Source: APiQypLV9lb6Az86IUt4AQhzrdtoW7SeTun6a2UsbOSrz5Z1V925DdDPkw71zYteIAMHkV0JOfCTMQ==
X-Received: by 2002:a1f:dec7:: with SMTP id v190mr3399121vkg.87.1588961764769;
        Fri, 08 May 2020 11:16:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3383:: with SMTP id y3ls253534uap.2.gmail; Fri, 08 May
 2020 11:16:04 -0700 (PDT)
X-Received: by 2002:ab0:705:: with SMTP id h5mr3626828uah.74.1588961764406;
        Fri, 08 May 2020 11:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961764; cv=none;
        d=google.com; s=arc-20160816;
        b=LPproZtvDxXtVZQkeK1V9WLcaDx9WI3RTA+pFGovm22izd7ZSwnKftRAadcnCLdaiu
         h2zDIqsAai21PiWu4czzx3dqIeUWr2l9hlQLO3QpSMJHgNGVxJ+OhmFNw0/N7SpY7/Rd
         qFit8NP5At8RNFfyZ9CmV0bjRWQhHnUEJlgTY6AujNL93J5b7zGzoZ8q1tCup+Oy8WgP
         NtA3xx92IyGIq8BiG1bat6e/TRXZ0xh6zIRT7X2Eg4WlFyRGDiy8thbiuXpZLHeEk9MM
         Qg/fJxwSSMc36dMsD6Wlr8VPWOqDfn2bQcSS+WgTikYKz+3o0LzTGzV1hf6wvoMOpxz3
         7oNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=QNHfNzbVU0PwOL9SMJsHOvS8VR9Nkm49Q+JbsICKVBg=;
        b=CFU4J/F8PMOXhocPAFeSyNpimpPZ3D29EpmPeTMLkLI89h8sSHv3oNlosbArOj/LTN
         HdfSgYa+fyeSBrbWf0fMDmZZSWYXxcYRZR24xys3b9yK/C8WhKJDNe0G24AAtWlPV7uQ
         3yXSs1WCbrcWaIcubAzDYbxZD7x8Vh5jlnXE631rzjxsCbJ6qsPjHeYTVagyKD3JAovH
         bQK+zzJgFepSGjVTjBB2DEMz1tImGcVtSnm6yY7RM9mkwtn/X78GGZ44IFIOUND3oABj
         ZWhJPodSJUmHzVJ5hrg1ZhKFtk8O7u18x8zbPqR8Qp3OLul+Us1oF1M4IU6rTWXIrnll
         RXtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b="lSt6/YnZ";
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u20si137567uan.1.2020.05.08.11.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x77so1373435pfc.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:16:04 -0700 (PDT)
X-Received: by 2002:a62:3181:: with SMTP id x123mr4058797pfx.109.1588961763199;
        Fri, 08 May 2020 11:16:03 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 11:16:02 -0700 (PDT)
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
	Ard Biesheuvel <ardb@kernel.org>,
	Torsten Duwe <duwe@suse.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Enrico Weigelt <info@metux.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH bpf-next v2 2/3] bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical immediates
Date: Fri,  8 May 2020 11:15:45 -0700
Message-Id: <20200508181547.24783-3-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b="lSt6/YnZ";
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
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
Acked-by: Daniel Borkmann <daniel@iogearbox.net>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508181547.24783-3-luke.r.nels%40gmail.com.
