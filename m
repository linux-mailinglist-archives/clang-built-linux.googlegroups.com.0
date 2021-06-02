Return-Path: <clang-built-linux+bncBCP35GGZRMDRBOHQ36CQMGQEEHT6QHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6A239956C
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 23:29:29 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id l4-20020a05600c4f04b029019eea160053sf419053wmq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 14:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622669369; cv=pass;
        d=google.com; s=arc-20160816;
        b=gdE8IWt/rEOmwRIJsbFAPlyQPHhksMA3kZ4T26q2J8ifL3I8mM1waJn0M8TUAUboyy
         0XysX1a0Sf1j1+3ZbnQ3UAC4oaseWMy6pZWkCVBBTZx0tbm8h7abpLtRwEBuGNIuzrSg
         NZ4xpy4QeX+6YPAvfh80/FhE4SXDCB/3hvJ4f+rHQLUnAbrZY3QbxPdkKjqb83NvqyTS
         Cx4Crt9LaUjAgWTmWASBnG2McphhY9/FKMiVniFXgYJ1ajeRA2bbqCyeY8ZHUNjlFN25
         Rgm/Af5nlbuH4OM6OUvpyPOFKmuOWouUIwzv4VPgki/LjBPY5ga1hZia2TREwNINCBBW
         TWzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=5ClwmY5k65xHEIyG9fSw/qam3h4VKksTmzVTjpB+8EU=;
        b=WFvBzq6w5M4q7fwlaoUjPw6HZx3zUYoJwTUl4mWZ67y0yX3oF3Fk/xC5BRdMUXvVNr
         9pvUdD1qC/YJAZW3GqvxwS7BZ4X/kbVsdfBdPi2zlNaqWd1cyF7rKBEf8IL8mInX7n9R
         1iA8GtHE0d5Mkgj6Fo7uwrHzI8j4ugrCYjoM/E5PG2UfAB/yvw0TFpgrcCMEyRwkBTCN
         RlCLKWM+qE7Ao6aEeHd35U9VAO2XQNT6k12VNUB+8CZu1rEL+LO6FLJFglzNpnhFENUt
         /XocOBcc4j/xJOr0othLHIo3zr4Ucse7gbcc9ikyMPJzPSVgMDxpFDpjMCf/yCwIynsx
         qzMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOENaWmX;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ClwmY5k65xHEIyG9fSw/qam3h4VKksTmzVTjpB+8EU=;
        b=I3QSMGt536IoSwFRo+g8/TqSEdJ0Nv8lvlwIs2Pz6DUZwIScuiEUN0nwZ0AC23wwnD
         BN41LBsyqCaQ4mLwR/31guKfdo66PaqwOKULRqX59XeZgeRzxrTd0eRvbJmKg87UPbPa
         YmkNUxOgHNfZX7FpljvshKXkBtc1R61dqgp35g7h1u5ZE7qrmDhzqtwa1bV4NxFtXMwZ
         jET9zImQtfD8z78pCePKks4im6MrS4+P2m5O7xwyQv13szFnk0OnKCe3S5KiJcWPbfqg
         TfDk5eJorQ2ttsi5m5HgibHMV3yt9cgs10T0ujAXnRDLuBSumMorsKAENDnYQdGZEm6M
         RiUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ClwmY5k65xHEIyG9fSw/qam3h4VKksTmzVTjpB+8EU=;
        b=MJtgtx2DaGbmSDSNzvQGjB18kEylSv+bwNDru4dMyjku0mKJlzzAhqZbP7nCNkRKXe
         +4uwsPWvnD58IEpFT8ATX7uqqecdok414z/XIvsAXrA24zTbpd5UhzpssP2nupIhgQFa
         Ye3j60CTJ03u7ShrVMaBl5WXUYMCTVnNm3P6UnmUi+IM9+yuO6EgC/AOo47kUNNXe5zj
         6hgvGPK/+B9PFSKQFBuxhxE3seMMOWA2vvku7kCYm9zycENesalbXLm8egAeknNiq2c1
         V+MvD2LTM6ikVGI7qBZCoAcbwpZEgX1w1fQnNR3tbIk9zoIq7IUVeMHc0hux1n+dMFPL
         v8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ClwmY5k65xHEIyG9fSw/qam3h4VKksTmzVTjpB+8EU=;
        b=N9opjTAIY9idq0cbVVrFZB+p+nKLEL11sS+FvP4UnGQ2tESjQm15+olLCPBBWJ3Um9
         rJVQBOBdeZgjF+x5MJ97PlFV77i53lfLHnWo4/a9WnrAp49dd7wYQROSWbR75pV/dQYk
         YTSt3rXoMaVh9bFUBNO7K9td8AHtUf/FXKoPW1/GVw8eZVLba/bP7yl/zE5FPGKcmyIB
         7r757IVTujSi6UHgdYdA3oZr9V2WeklXgxxqyAZ+yXcp3D8EmUeRWZY2td6Al+f4OMKS
         WTt77oV783eDSyEKWnXm5nLv7MPWSfx1PiN7Xq46kvuMdF79AIPTE4FapFWqbIq3G+vD
         uHBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HiLu149zIAR5f7odSvA+8ouWfHaUqeWGzaRIVEPgoL98clNOY
	GdU2JFuZemElBVeaV0QGD4w=
X-Google-Smtp-Source: ABdhPJzxkr7MLdXda9ULIy3W9Uo9xtgUtyPwYIqn9/+DcjkszZzP1iJV2HMgbKGTdB3UrgrOMxKGjw==
X-Received: by 2002:a05:6000:151:: with SMTP id r17mr15096804wrx.151.1622669368842;
        Wed, 02 Jun 2021 14:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f52:: with SMTP id m18ls3980107wmq.0.canary-gmail;
 Wed, 02 Jun 2021 14:29:28 -0700 (PDT)
X-Received: by 2002:a7b:c8d0:: with SMTP id f16mr7341608wml.115.1622669368037;
        Wed, 02 Jun 2021 14:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622669368; cv=none;
        d=google.com; s=arc-20160816;
        b=Mv0iTx99uwJdzGWjLPQcrMzMtRkfvpGUfAqciR8ZU6YN7pqwRt9JlTfL1vsivY11K9
         FyaEg187E2+rqvn1CMHUYaMyzxZazfxHyDWqBv/SmWPuAAN9Uk/XcvHzhyho4v4t57i2
         dnkFpwDj3lWIb4cVu/vk9PVmqXYjcUruhFPzIG/QVhbCh3dpEkAFunKpdpL/nd9WOkQG
         Fy6QBYHTQVugFIaoALKi/yohxMkEFQ1+YPeFqsqOJwSOizc8nwAQJIk17dRK72sCrqDb
         RX0eVr6Jw2sO6FBHER/gQGWFt+9MeLfj9+jxFt8Qx6pXoOvakujEr8TGCMINiFrjdQgq
         roDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4s+WtVD0z1zrvcjIi7mvIhu9JKhygKLIdbwXXCCDpJ8=;
        b=Rk5NMZQQeRphKUxXGwY+Vm1Tx4FN+tux03NEZbCUInuw72Oec1TPOEGboeVcc7nTdp
         3/+b3Z35DcYFEqN6P/unQtwAiWJrX32B0H1hsLtwYLiJHoJnc3LHbDTjamQVRcBOVVBs
         H8+ZYuPMkkZMLIVNF5uTC3uHdhyfUsJLR3kf3b6GhCaRCpk/+1h7KYNEU0wnPhMw9HRy
         LZTsrN0ShLivnedaY/dnofXF3vnzKnKOCpaVg7zEliyR63A/anK7DItuI7xTOpsqCz2R
         faRUqdJZY9Z4299duGnTz+uX2b2et3OWCAYagEiPOMVmpci3DAp2stHbZtwB2I+ACrzL
         ltiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOENaWmX;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id x8si2069wmb.2.2021.06.02.14.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 14:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id l2so3687626wrw.6;
        Wed, 02 Jun 2021 14:29:28 -0700 (PDT)
X-Received: by 2002:adf:ef06:: with SMTP id e6mr24281131wro.393.1622669367880;
        Wed, 02 Jun 2021 14:29:27 -0700 (PDT)
Received: from localhost.localdomain ([185.199.80.151])
        by smtp.gmail.com with ESMTPSA id 62sm1272616wrm.1.2021.06.02.14.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 14:29:27 -0700 (PDT)
From: Kurt Manucredo <fuzzybritches0@gmail.com>
To: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
Cc: andrii@kernel.org,
	ast@kernel.org,
	bpf@vger.kernel.org,
	daniel@iogearbox.net,
	davem@davemloft.net,
	hawk@kernel.org,
	john.fastabend@gmail.com,
	kafai@fb.com,
	kpsingh@kernel.org,
	kuba@kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	songliubraving@fb.com,
	syzkaller-bugs@googlegroups.com,
	yhs@fb.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	skhan@linuxfoundation.org,
	gregkh@linuxfoundation.org,
	Kurt Manucredo <fuzzybritches0@gmail.com>
Subject: [PATCH v3] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Date: Wed,  2 Jun 2021 21:27:26 +0000
Message-Id: <20210602212726.7-1-fuzzybritches0@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <000000000000c2987605be907e41@google.com>
References: 
MIME-Version: 1.0
X-Original-Sender: fuzzybritches0@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UOENaWmX;       spf=pass
 (google.com: domain of fuzzybritches0@gmail.com designates
 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

UBSAN: shift-out-of-bounds in kernel/bpf/core.c:1414:2
shift exponent 248 is too large for 32-bit type 'unsigned int'

Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
---

https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231

Changelog:
----------
v3 - Make it clearer what the fix is for.
v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
check in check_alu_op() in verifier.c.
v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
check in ___bpf_prog_run().

Hi everyone,

I hope this fixes it!

kind regards

 kernel/bpf/verifier.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 94ba5163d4c5..04e3bf344ecd 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -7880,13 +7880,25 @@ static int check_alu_op(struct bpf_verifier_env *env, struct bpf_insn *insn)
 			return -EINVAL;
 		}
 
-		if ((opcode == BPF_LSH || opcode == BPF_RSH ||
-		     opcode == BPF_ARSH) && BPF_SRC(insn->code) == BPF_K) {
+		if (opcode == BPF_LSH || opcode == BPF_RSH ||
+		     opcode == BPF_ARSH) {
 			int size = BPF_CLASS(insn->code) == BPF_ALU64 ? 64 : 32;
 
-			if (insn->imm < 0 || insn->imm >= size) {
-				verbose(env, "invalid shift %d\n", insn->imm);
-				return -EINVAL;
+			if (BPF_SRC(insn->code) == BPF_K) {
+				if (insn->imm < 0 || insn->imm >= size) {
+					verbose(env, "invalid shift %d\n", insn->imm);
+					return -EINVAL;
+				}
+			}
+			if (BPF_SRC(insn->code) == BPF_X) {
+				struct bpf_reg_state *src_reg;
+
+				src_reg = &regs[insn->src_reg];
+				if (src_reg->umax_value >= size) {
+					verbose(env, "invalid shift %lld\n",
+							src_reg->umax_value);
+					return -EINVAL;
+				}
 			}
 		}
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210602212726.7-1-fuzzybritches0%40gmail.com.
