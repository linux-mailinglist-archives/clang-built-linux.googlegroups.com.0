Return-Path: <clang-built-linux+bncBCP35GGZRMDRB3FD52CQMGQEZIT5YNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEAA39C949
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 17:02:04 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id df3-20020a05640230a3b029039179c0f290sf5131283edb.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 08:02:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622905324; cv=pass;
        d=google.com; s=arc-20160816;
        b=DrGAZWP8H4MEciJf/EEpsCsB4+UN5p84oaTdwDmXapsy+Yjl+/8hDM0irQcAG3/Wgl
         PZrPbj291HOw8VKXvMtKluBiH4j+vX9lkUOxXNgcOamrirkJhsiV0uZX9d22KxUyCR2Y
         Lr21tlYmTP6LLy5V7xU2lmRoZBYNtaI29rRDrhyvrCj6keernQGAoyOpXHkO+9Tp+T7R
         zRRfadnCRDZ8drt8r7AF+ARHDG57ycNN/R20kYXS7rwyKmt+VVWTJB41iyjpT+Luky5i
         qL6vlTKbDrshEVcHGxCda9w/kXh4Q3DOFkDr1HXgF5JI7znLFuyw6wj570pVsKP5L6LX
         CrGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=0T/zL3I7NWIgL9amtzQ5qSl5L7LKXh4seQR/1zzYdKE=;
        b=mFVQhhWioUyqY9JiG+R25FU9DDTaIdksCwrhzisHIRnu1UcJXmiIOeX3OYzpqTgCnQ
         JHSnIqunvLOv4iEV7aIBmpcVFMNnm61TDBdgbJXW8hFtvcTntfH6HkAGUfW5VRHpL8Cx
         3OhELzDzoCq8l1ljnbLyQE7c4Uco5aFpPn2cRSM3ZBWG6M4Z/15AWhYvcHe7my0JezeT
         jTddbV6aD0ujVZPN/OH6oLbRvgcHT6+nZBIId9pquhn7qc+C4yvmcZ/pXbx/Z4mgK3aR
         ZgtVmf/vbpuUa58UyB1aDwOsPyObTAQDsXahyCY8ej9r5yh0suAlVqXvhhocxn3Vcqw6
         wmeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ry54s2oA;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0T/zL3I7NWIgL9amtzQ5qSl5L7LKXh4seQR/1zzYdKE=;
        b=ZryhFYjKiOIfrqxqeymXt0ScIHyFGynv4jLd8lBG1HUUurCBdiSGFdWcRGz4GAvoOl
         aKZA5Z/LKZv5W5UWPb71sTbrbC82F+08pN/mDUcKW4ueUjyRdBZnd/buzBlrVw0EoMYx
         r641vtBEJdHE9oMw0lefuROx+wGKViGfPygkqWcgf9RU1fJrMjLiwfxd2vUx1kIcnKsB
         hLPKJTK3R5uJgoNswvhNhmNXTKCKbF6yhAXPp9M0xnkyncDFuPoGDck4v2gFYCTYFg4V
         nSQXq2tkEiAl3TI4s/jUI973GtTmCJejJn4oUAsmta0y2TvFZtiaBrvV0dsrMVuFE5xJ
         y9nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0T/zL3I7NWIgL9amtzQ5qSl5L7LKXh4seQR/1zzYdKE=;
        b=oqGR6DF6fCM2gC8miJt92pQ4jRL9idjQwqPuu7IJ3YzpsDgW3ZNPFcOkY6sjTLV/Ph
         PpB3tGL2zoeX1jDGyNQbz5nBbtca5ON5DXwFc5nDzv9iU3M1K9Deld2AjmLvLfVhRyWd
         t2MiDKustrBjaH3+pxzsFq7QBdvhMzYs3l//k2HPlw6405eySEOCCSeiJnmydI1Lwkfu
         q9EFuOpMC9qppL4csbxIRjR4b4PMfBhJIreBGd6irUN51GoyBSW5uVGsfWTuQG/Ofdsr
         5RtTMaymie8VmvPee6Wp1rp6YspyTs6jTV2t5v1gFtpsu9mYQ4aUKrRrwCpt9JhRANpF
         GsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0T/zL3I7NWIgL9amtzQ5qSl5L7LKXh4seQR/1zzYdKE=;
        b=RGAbOnER3gxboSs5eFnKQx7XUFxKU3JNTPId3ugLNNGaUsDeGYMPQ6OJSnf1zGC4fG
         aNj33G0w7WwYtdncDusODrtRuRdobIJdiwykaXpge+PDrNcb/rLRR71hYLwyZ/wg99SF
         ghXj7bJAcyjHrpamud0FjuBM6PTmBKvcUJFuJ+lv69u0/7NbxUoqIFtrggCTVVkkzzQj
         dnF5HQpKdSnFAx0BdiBrharr4G/asvyzpbv7YpHQMMLs/rl38WGmj6y/+RvgXLt8mWL0
         g0MQXVKNQKuS2D4vJINPoBv1dDlkk0k/RIYQQmaj4uDj7BAwSTB+7AZMqNTzXA4/X3CW
         T+tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bZZVWZj8LI3lgif3cnjFnheGY7sYJf8pAcIxMRJquHygq/TEj
	eCt2++0IyeENvPZNyV5Sacs=
X-Google-Smtp-Source: ABdhPJx77vaDlfH6yNF9y+3gzWBItH4wD+uq9cT/2nEv8loN15XzGfR/F1d/o0OyQAcGR298zNJcIQ==
X-Received: by 2002:a05:6402:40d6:: with SMTP id z22mr10717657edb.125.1622905324407;
        Sat, 05 Jun 2021 08:02:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls523974edb.0.gmail; Sat,
 05 Jun 2021 08:02:03 -0700 (PDT)
X-Received: by 2002:a05:6402:343:: with SMTP id r3mr10486614edw.22.1622905323504;
        Sat, 05 Jun 2021 08:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622905323; cv=none;
        d=google.com; s=arc-20160816;
        b=GV6IjFH6hrEmr7Xuh71DAr3gJL26dHI0UY4arm2wGRvmv2DZTKe/4adM/4Ip2QYHnD
         lYCSli4PqJ14m9Vbn5IWvwyxDIkE02zqV7ZCOIPKUxKn8uS85N/CCCtR8bQh0V7sZLA4
         jUWeSlJjBSKHdwQueQguNMv7otOba2vbI3NJ+DSwRhgVvoUc7F0vqWCbUy4b4IkGM2SK
         5tMlqlFmn+W3xMT4lT0GZdo5Mr/tPyi+pFuDpB9fnlNsxxmE/12B/cun/Fbrw+REatMI
         hbtlpvoOx0+eOhUJvxAOhnmQrlDBZUg6NBn6PZ/92FZkHa5sjRVHTYbnNmhZ1asmrmgv
         OTiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kfu2ptD2ITo1yADGY8rjCJADPHQPd4t7J8UfxydCp7M=;
        b=y/+VcdvBENZQq7kF2L7l6rTMwih9Af8V7cAek1b1vi75Zx9xy46CVRWcsvYC1f3r7u
         17V6PcOeorwHcADmLdUIoKhQnKmrveB/6LraatzOpedwaaOOD3zXR3pPPCVad7SAl2eC
         dznXV/B8xSFhgNGIooy5u6nrWX0eXd36GiahOAIO1beo+hxEuX66SW+y3PljZC31/vM4
         s7y528ccunGa2FAmX8SEp9tVxsUrHvWJrlLKQW4vp4YQ0DYTunaZjhqQJ4WI7QYxixys
         Frdu9PTte3TRsa0IcT9A9bJv2NRHevi65sPOEk7sneWX/DzEqUTw/vA8HyvZ/bVmGOI9
         2yRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ry54s2oA;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id h19si119498edb.3.2021.06.05.08.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 08:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id b145-20020a1c80970000b029019c8c824054so9610951wmd.5;
        Sat, 05 Jun 2021 08:02:03 -0700 (PDT)
X-Received: by 2002:a7b:c417:: with SMTP id k23mr8301705wmi.71.1622905323250;
        Sat, 05 Jun 2021 08:02:03 -0700 (PDT)
Received: from localhost.localdomain ([185.199.80.151])
        by smtp.gmail.com with ESMTPSA id n13sm11202523wrg.75.2021.06.05.08.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 08:02:02 -0700 (PDT)
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
Subject: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Date: Sat,  5 Jun 2021 15:01:57 +0000
Message-Id: <87609-531187-curtm@phaethon>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <YLhd8BL3HGItbXmx@kroah.com>
References: <000000000000c2987605be907e41@google.com> <20210602212726.7-1-fuzzybritches0@gmail.com> <YLhd8BL3HGItbXmx@kroah.com>
MIME-Version: 1.0
X-Original-Sender: fuzzybritches0@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ry54s2oA;       spf=pass
 (google.com: domain of fuzzybritches0@gmail.com designates
 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
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

Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
kernel/bpf/core.c:1414:2.

I propose: In adjust_scalar_min_max_vals() move boundary check up to avoid
missing them and return with error when detected.

Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
---

https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231

Changelog:
----------
v4 - Fix shift-out-of-bounds in adjust_scalar_min_max_vals.
     Fix commit message.
v3 - Make it clearer what the fix is for.
v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
     check in check_alu_op() in verifier.c.
v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
     check in ___bpf_prog_run().

thanks

kind regards

Kurt

 kernel/bpf/verifier.c | 30 +++++++++---------------------
 1 file changed, 9 insertions(+), 21 deletions(-)

diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 94ba5163d4c5..ed0eecf20de5 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -7510,6 +7510,15 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
 	u32_min_val = src_reg.u32_min_value;
 	u32_max_val = src_reg.u32_max_value;
 
+	if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
+			umax_val >= insn_bitness) {
+		/* Shifts greater than 31 or 63 are undefined.
+		 * This includes shifts by a negative number.
+		 */
+		verbose(env, "invalid shift %lld\n", umax_val);
+		return -EINVAL;
+	}
+
 	if (alu32) {
 		src_known = tnum_subreg_is_const(src_reg.var_off);
 		if ((src_known &&
@@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
 		scalar_min_max_xor(dst_reg, &src_reg);
 		break;
 	case BPF_LSH:
-		if (umax_val >= insn_bitness) {
-			/* Shifts greater than 31 or 63 are undefined.
-			 * This includes shifts by a negative number.
-			 */
-			mark_reg_unknown(env, regs, insn->dst_reg);
-			break;
-		}
 		if (alu32)
 			scalar32_min_max_lsh(dst_reg, &src_reg);
 		else
 			scalar_min_max_lsh(dst_reg, &src_reg);
 		break;
 	case BPF_RSH:
-		if (umax_val >= insn_bitness) {
-			/* Shifts greater than 31 or 63 are undefined.
-			 * This includes shifts by a negative number.
-			 */
-			mark_reg_unknown(env, regs, insn->dst_reg);
-			break;
-		}
 		if (alu32)
 			scalar32_min_max_rsh(dst_reg, &src_reg);
 		else
 			scalar_min_max_rsh(dst_reg, &src_reg);
 		break;
 	case BPF_ARSH:
-		if (umax_val >= insn_bitness) {
-			/* Shifts greater than 31 or 63 are undefined.
-			 * This includes shifts by a negative number.
-			 */
-			mark_reg_unknown(env, regs, insn->dst_reg);
-			break;
-		}
 		if (alu32)
 			scalar32_min_max_arsh(dst_reg, &src_reg);
 		else
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87609-531187-curtm%40phaethon.
