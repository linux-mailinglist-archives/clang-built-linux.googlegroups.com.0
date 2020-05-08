Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBZWD232QKGQERY46UMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C95C1CB6D8
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:16:08 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id c3sf2242569plz.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:16:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961766; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5Tnyv0xUiWpoFs3hLhOnHA3hf9R/Bk4LaryGNQcp+Pyp+B43pvRBHMXXdJX0TM5pq
         lKaZ3kTGxkP3TSewzbMZPv/OyyEbvSrVa7rFIT9FqkmERjHS6Dc9aMJSWP6m31AM4b9Y
         GmqggIiRppNIJHiNuuu/Lo1mRM+jqQQWXFjGYeP93wMr11JzGcijqGJmAL9jvzrjSsaB
         +HiBEwRzq6EhYeE3YSzhcpnGZ63sbJ0KlCNbflG6UUe5RMqIVBbFPhTihceTf4Fu47Wg
         ixIVqq8ZxMf4sbcQO/eZ+1IeIC4LDdUuQ2TLbwNSEDAJFpU4tNUprVDpUJ8SmfuEKf6j
         5uTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=99UE3NZkbyhIvvmQx5fIQR4SLqWRPjdPCAk3c3Bw5kc=;
        b=gV9TY0vAttrguacM3x06eLdWq9VNrHqb7Hq00l8NDm8mp/6DQQZHVIqBIdZTEwg+8t
         DZBVLZE2v3eya6Ucptev65uVC0lgbbutHMS4qebXyD9XiKB20DVga0oxTZljf1fiNP49
         ODj+WCe8OXGDiseXT81rDaT7UElKcS8iwjWUrt1PvAzJHovICB2hz7gsOsSmrm7C1URU
         llsOjR5+WOhfvnSR9ICNDQGC9sX1cif70YTyb0K3jLEbhhXPTKshGEDMMF3BfxVnGi7m
         3fHNTyOuZSrCbqheL4cgrWR311q2/r4UYMiLWdhuvpqsASaxl6iczhiLB7tU2/S3tl1a
         0krA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=CCWu0Lup;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99UE3NZkbyhIvvmQx5fIQR4SLqWRPjdPCAk3c3Bw5kc=;
        b=i04gZTmKZjnNCO/K3kslpMyS8JH50PsiddviidaFmVZr8UTZIzcyqG+hzj7NVvFMcC
         6bh3zkUaxGbWBgKHwcRGpjjZhmWb+kJhlZ3G90ctLrWe3q8B++bH1E7yiBL1lyZa+ZBR
         gK+HQdopxeshO/FOOicT5oCNtYPTX68bREWm0SUEdMPZd2X3vWuW3N5xXIa4CYnp/Cyb
         BYfKUpzvd9t0tgJZTRqoXPnVyTaVAhW152c1GoXcsTe3nxzS5eJzQ6bp6Qd6o52/mUJM
         AQyAAd+Ic0gOTZDA6VnrA55WcIwYOjV38lNBeK50AlGAv87qer0Qr+G2jQPs/C1kOYoR
         C6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99UE3NZkbyhIvvmQx5fIQR4SLqWRPjdPCAk3c3Bw5kc=;
        b=Q1ttYN9nqzpnKctDiyhraJGKbYd9Djwehk7jSpu3P+SumShd5DlNpqs0NVaQFLCI2Y
         hdiNI32S72fUSt/pXV/b0DzJQ966l8Gi01JZnKwdnqy419RZdGpFJvi74CYr9QwiWJWp
         Sgk5aq7mXrMb1PkVPU1ley+8nv4SnsLbY2T5UGAkQEKFfw2JpdGePTYbT16E48VCA/zc
         6L9LgH2PZm7HiDihckGIy2u7oUthp+E10HxPqQtCDpVLdQS9C0GKezv7iZkKkk00jaL9
         TBZPwdhMYIL5ePMPJ8kA1rSQdL3DBKL6tG2YDzVf8ciqWQjekPISMaah96ejvRsTV7uM
         we9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZzUSyIYuNNR2M+dvz/TOLo2hNVt3BwU9bk58Wm70b3MxX1qVUX
	b5LUMGJj8sbot6KA9J7Gq5s=
X-Google-Smtp-Source: APiQypKedqUm1jIQLLPlgkScatIulASGMU9+SG2raz/gsWaps+m9c75hJZfeDvKEXnDBlv4yN2nn7Q==
X-Received: by 2002:a65:62d6:: with SMTP id m22mr3294093pgv.314.1588961766576;
        Fri, 08 May 2020 11:16:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5d:: with SMTP id i29ls1446307pgn.2.gmail; Fri, 08 May
 2020 11:16:06 -0700 (PDT)
X-Received: by 2002:a63:4503:: with SMTP id s3mr3266565pga.85.1588961766114;
        Fri, 08 May 2020 11:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961766; cv=none;
        d=google.com; s=arc-20160816;
        b=FrUnDoPNdNdXorcAMBoTwVeM7JJx9iI7HL4TxXQjNH1CvtTM7sfUkJnw7Ft6xqYUgQ
         Vzi3aBTauXxyUMPQMCQsmlUD5GEvW5Br9Z6t3DV1YUcmUvyT4C1OnJZsWoE3VgyZFb6A
         usB8+zxXd9FF+sRoBRjNofx3sIMoEMvpwMrJl70AtV88QJcE87MQOSMM7ETRc3BGyOIA
         Q6o6hgZj8WBI4Y8etT/ioG2k4D0+2KBWd2D4wVxsrE6FiHBf/U08oweKUTSQA0Dl7CBD
         oEExepJRfTp+FHVqxLd9F765dpeHgH1tHdvt9OQnEwPsRvz3vrZaI05j3Qhb08jBcGRX
         T1Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=1RkJFS+t50tivJwSHzxWQpizFYGiyRAPi5B/W8OYM90=;
        b=e9e5kqnP/3v6CYQvbaaWvIf//pcXKH/zoQmu2PWyV/HAjQ6EuYjPSZ7CRQ8LZGtqW9
         +0vXZEkU1Q75mIAS+BTRMWnY5gtbJDddRSHNtSF5E60yM/cCna9EeItgYurYGoXkxjZb
         Q/fiZX3ZmyeDkYTdLTtTJqQIHIZ197FROK0JzsT0Pli/TihENUXKHVufxPGQTaH0ILaV
         db2la25pdnPmZpw/OJEblItch3MHF4r/fZvvbW54emrJHaeWAZ5wZ4fEASuloIi2tQUp
         BOgpP4n4O/fidnoqjI4RXQCAfZfa4flD2dGw+vRCljk1HPwzgUcNkBMsOFcjBky/57wU
         asyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=CCWu0Lup;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z5si132723pgu.0.2020.05.08.11.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l12so1215819pgr.10
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:16:06 -0700 (PDT)
X-Received: by 2002:aa7:951b:: with SMTP id b27mr4228455pfp.2.1588961765560;
        Fri, 08 May 2020 11:16:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 11:16:05 -0700 (PDT)
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
	Alexios Zavras <alexios.zavras@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Allison Randal <allison@lohutok.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH bpf-next v2 3/3] bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates
Date: Fri,  8 May 2020 11:15:46 -0700
Message-Id: <20200508181547.24783-4-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b=CCWu0Lup;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
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
Acked-by: Daniel Borkmann <daniel@iogearbox.net>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508181547.24783-4-luke.r.nels%40gmail.com.
