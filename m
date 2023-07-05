Return-Path: <clang-built-linux+bncBAABBE5ESSSQMGQE6BU5JYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD6A747D49
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:48 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id e9e14a558f8ab-345a75b1624sf26091355ab.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539667; cv=pass;
        d=google.com; s=arc-20160816;
        b=e30C8tmu74GEehFTqOea9P3s/+D0/6OSye53zgbfbUwjhX6rEZlcam9sgiZmWcDhok
         bLCNGinTGsLhMO+mLBdkGcveCjPaTM3RaPeoGV2AjXLKDQStwCE44uDvbT34Xg1jFP5U
         PhBrb3mF57AA/hWaB2cwwzXhJeesokrDHwcEkJKseuph6DsO4n0Egz7h1jG+N6xItrDO
         zua6wDiurXoCi1slLYvwy8poKJAJVFrnVbk6W9bawKSFE1haSyOpxqIWkCiJ2fCoHZfS
         uUK9BisZkikx96u0GZefZvPsAaWqAG+d/8PPkPR6L0PDDFYFXWd0JIYWMX9jepYaC+2E
         p5wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=4EEljstKh9UwTjnrnav7KRAANQmj8oiVqdKmAneMzsU=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=X6lZsR6Isnr7j32N7sha0csJru3gC0vjHJUJAVZyk0ti2MIcaG9nt2JuryRdyRlhug
         glJzkdJTU9eMnLTGMlsl3B3VlIEk+mW3SKPFtHk+Hd+wS87+A87R0uObTA/TdIsCqZYb
         q+f2zpW/7l1N13cpEA+3dxWfP4ZhvuBjdhpEkBWEnOjXibmM6yXBc5nbwfgIPbSLGxf3
         6V1m/iTfDAAk/ak/tJNSNPFobDE/BftNz9j03O0YN/XJC9HEbNQO3PQ4dgxUZQktO20S
         GjXt2qfWDqMXN9lLolOqFqUJDH4DZcPADNdIY8z8UxpMiqmkQV9Pnk3uXQ1of8DAeiGx
         XEbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539667; x=1691131667;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4EEljstKh9UwTjnrnav7KRAANQmj8oiVqdKmAneMzsU=;
        b=Ab+Hi8ZrYUa4lSUlYE3ndaKdIzvaJ4LEKW7DaNkJxvdE2zNb/+bNwIH4y12dxe7Y1c
         oiWI3mVIdRryY4+boXgJ/GGJJCHHJ0ajDBpLsV7qQDv+VKI7qlr4+XeQ4z+xuAEeLyJK
         qsyzjblL0DMLAPY5/iIZXy4kcMBdA70FqQKg6gQDvDJ7NiCQsMmHANoSA+HSSkcTxVq8
         jwOfsy0Jm6f8i17/KG9dU6bMVToO5cmsthZzWWpxFxg6cUI1zEJz+HrW/ooyLMmo2AOu
         tzznEk8p8v4LqLwk68kzA7EgcgeW1TWakwrCpMayQ9KrqLtBvIhuALjkgmHRs8eamfNi
         tSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539667; x=1691131667;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4EEljstKh9UwTjnrnav7KRAANQmj8oiVqdKmAneMzsU=;
        b=irgXRffn4oSHWoKF/xur8sIeQW06gagXiLZkkfVnk4U4/6FPslR51uNKW2u7nu7/uJ
         88zWkZQ3HRShxc+020NrEBLnVi19d6kT1/oowEoU2xwCtxUavEw3ji6lnSv2cC76MFnu
         KHA2h+/crMFiww8NrZxQGl3NfUoAtodyiCBxplGdHBE1y1lErKEuN0PzVwWpUNibhDqL
         GxuOjB/a3d/XExnNBN+A78BWWW72WaKYURnE063NNQlFCGEpB1JVlIInX5aFe1CZHYF9
         MqNIweJ1daP23GDe2V1sIdptlq7aDRisagYim541jU+P+QYe7MktI7bqdUhW4OEu09iF
         N4pQ==
X-Gm-Message-State: ABy/qLZkfxPyBqykbpYXKJ48Lmk/Ie1wcCS0DrTGgqfgj+n9Vrh81cs2
	BT4LTWCqPPxQ5Cw2CCwXC30=
X-Google-Smtp-Source: APBJJlGt7amZgZqmem+HkZhu6P1XhyPDMqfW6QRFvNC933mnvSP5XhNPOi/VCXzUxku97SHe0WmpEQ==
X-Received: by 2002:a92:c608:0:b0:32c:9c5e:900c with SMTP id p8-20020a92c608000000b0032c9c5e900cmr15537361ilm.8.1688539667287;
        Tue, 04 Jul 2023 23:47:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:15c3:b0:33b:24da:44d1 with SMTP id
 q3-20020a056e0215c300b0033b24da44d1ls24168ilu.1.-pod-prod-06-us; Tue, 04 Jul
 2023 23:47:46 -0700 (PDT)
X-Received: by 2002:a6b:7504:0:b0:783:63d6:4c4 with SMTP id l4-20020a6b7504000000b0078363d604c4mr14823122ioh.8.1688539666699;
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539666; cv=none;
        d=google.com; s=arc-20160816;
        b=Ymbh9LhGX+t2oLjJIQHpF0CqGBxDWdoHPv92pVenPi2uYHoVBH/Os472tUnJdmicNj
         f/UTdl8p8swZu+DeKzaXzFSkK6Wc58o52ZZq2AJuncsNNPwr+LeagZKl9lyRHvSFnYst
         WsST/qtdUata5wwKiyJaFZAa6tkX4COjgxYX0/wQqsRpcCHtX5qR3nV3Er+l7e0UlBOz
         9VN6i7N6esJ+ZW58w5NM3zkDMQ7pIb+cvX9XvMl92VshyUR5bj66daFhKhnlO+2doRKY
         CexbfaR+OCicu7M8bueRyUzMctGLDiIRxNEkp4iQnp7ld/ezvVJL2ltBJmZ/C0WUj3jw
         IeVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=+L2yUhezknWitFt9S6eMhMSb4uWI3teERcZ35h1l3ls=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=dT0YXnsQ8aYqZbEIaHqEkZAo7vf0JyjnsMWhL4mA+8215siBTEjiE++buCvW/E6AUD
         UQ9Ub7Ahi+M5zxqJ/AAAmymIgHwTv7lSE1+kqAmSRhzdyxApHw99qwsad6Te+Dw223Wq
         vP0oQXJ0Bz4r98ObGLOPGoHEmOg4PxF2P6pa6IHCaCVI4z3rUPgL/qvMIv1viL5U9EQa
         GoT+iogqb9iU+GBNg/wcYjpamzE/MofSjeIjaZxhTiibTKzZYOcfkwB/UWWIQ8uUF1fN
         eMqo/O6EYdiLGzhuEHxrBub5Exc6Uxy9VloDauv7S1IxsBD/z8lOuBoV3gpiZ5eChnv0
         gQlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id cp15-20020a056638480f00b0042ad70be839si1868191jab.0.2023.07.04.23.47.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Qwqw52RqrzqVnL;
	Wed,  5 Jul 2023 14:47:17 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:42 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 5/9] x86/kprobes: Use int3 instead of debug trap for single-step
Date: Wed, 5 Jul 2023 14:46:49 +0800
Message-ID: <20230705064653.226811-6-lihuafei1@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230705064653.226811-1-lihuafei1@huawei.com>
References: <20230705064653.226811-1-lihuafei1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.174.174]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500019.china.huawei.com (7.221.188.117)
X-CFilter-Loop: Reflected
X-Original-Sender: lihuafei1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=lihuafei1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Li Huafei <lihuafei1@huawei.com>
Reply-To: Li Huafei <lihuafei1@huawei.com>
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

From: Masami Hiramatsu <mhiramat@kernel.org>

[ Upstream commit 6256e668b7af9d81472e03c6a171630c08f8858a ]

Use int3 instead of debug trap exception for single-stepping the
probed instructions. Some instructions which change the ip
registers or modify IF flags are emulated because those are not
able to be single-stepped by int3 or may allow the interrupt
while single-stepping.

This actually changes the kprobes behavior.

- kprobes can not probe following instructions; int3, iret,
  far jmp/call which get absolute address as immediate,
  indirect far jmp/call, indirect near jmp/call with addressing
  by memory (register-based indirect jmp/call are OK), and
  vmcall/vmlaunch/vmresume/vmxoff.

- If the kprobe post_handler doesn't set before registering,
  it may not be called in some case even if you set it afterwards.
  (IOW, kprobe booster is enabled at registration, user can not
   change it)

But both are rare issue, unsupported instructions will not be
used in the kernel (or rarely used), and post_handlers are
rarely used (I don't see it except for the test code).

Suggested-by: Andy Lutomirski <luto@kernel.org>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/161469874601.49483.11985325887166921076.stgit@devnote2
[Huafei: Fix trivial conflict in arch/x86/kernel/kprobes/core.c due to
the previously backported commit 6dd3b8c9f5881]
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/include/asm/kprobes.h |  21 +-
 arch/x86/kernel/kprobes/core.c | 517 +++++++++++++++++++++------------
 arch/x86/kernel/traps.c        |   3 -
 3 files changed, 353 insertions(+), 188 deletions(-)

diff --git a/arch/x86/include/asm/kprobes.h b/arch/x86/include/asm/kprobes.h
index d20a3d6be36e..bd7f5886a789 100644
--- a/arch/x86/include/asm/kprobes.h
+++ b/arch/x86/include/asm/kprobes.h
@@ -65,10 +65,22 @@ struct arch_specific_insn {
 	 * a post_handler).
 	 */
 	unsigned boostable:1;
-	unsigned if_modifier:1;
-	unsigned is_call:1;
-	unsigned is_pushf:1;
-	unsigned is_abs_ip:1;
+	unsigned char size;	/* The size of insn */
+	union {
+		unsigned char opcode;
+		struct {
+			unsigned char type;
+		} jcc;
+		struct {
+			unsigned char type;
+			unsigned char asize;
+		} loop;
+		struct {
+			unsigned char reg;
+		} indirect;
+	};
+	s32 rel32;	/* relative offset must be s32, s16, or s8 */
+	void (*emulate_op)(struct kprobe *p, struct pt_regs *regs);
 	/* Number of bytes of text poked */
 	int tp_len;
 };
@@ -107,7 +119,6 @@ extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
 extern int kprobe_exceptions_notify(struct notifier_block *self,
 				    unsigned long val, void *data);
 extern int kprobe_int3_handler(struct pt_regs *regs);
-extern int kprobe_debug_handler(struct pt_regs *regs);
 
 #else
 
diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index d03baf1f4024..7778b3791bee 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -185,6 +185,9 @@ int can_boost(struct insn *insn, void *addr)
 	case 0xf0:
 		/* clear and set flags are boostable */
 		return (opcode == 0xf5 || (0xf7 < opcode && opcode < 0xfe));
+	case 0xff:
+		/* indirect jmp is boostable */
+		return X86_MODRM_REG(insn->modrm.bytes[0]) == 4;
 	default:
 		/* call is not boostable */
 		return opcode != 0x9a;
@@ -373,13 +376,14 @@ int __copy_instruction(u8 *dest, u8 *src, u8 *real, struct insn *insn)
 	return insn->length;
 }
 
-/* Prepare reljump right after instruction to boost */
-static int prepare_boost(kprobe_opcode_t *buf, struct kprobe *p,
-			  struct insn *insn)
+/* Prepare reljump or int3 right after instruction */
+static int prepare_singlestep(kprobe_opcode_t *buf, struct kprobe *p,
+			      struct insn *insn)
 {
 	int len = insn->length;
 
-	if (can_boost(insn, p->addr) &&
+	if (!IS_ENABLED(CONFIG_PREEMPTION) &&
+	    !p->post_handler && can_boost(insn, p->addr) &&
 	    MAX_INSN_SIZE - len >= JMP32_INSN_SIZE) {
 		/*
 		 * These instructions can be executed directly if it
@@ -390,7 +394,12 @@ static int prepare_boost(kprobe_opcode_t *buf, struct kprobe *p,
 		len += JMP32_INSN_SIZE;
 		p->ainsn.boostable = 1;
 	} else {
-		p->ainsn.boostable = 0;
+		/* Otherwise, put an int3 for trapping singlestep */
+		if (MAX_INSN_SIZE - len < INT3_INSN_SIZE)
+			return -ENOSPC;
+
+		buf[len] = INT3_INSN_OPCODE;
+		len += INT3_INSN_SIZE;
 	}
 
 	return len;
@@ -427,42 +436,232 @@ void free_insn_page(void *page)
 	module_memfree(page);
 }
 
-static void set_resume_flags(struct kprobe *p, struct insn *insn)
+/* Kprobe x86 instruction emulation - only regs->ip or IF flag modifiers */
+
+static void kprobe_emulate_ifmodifiers(struct kprobe *p, struct pt_regs *regs)
+{
+	switch (p->ainsn.opcode) {
+	case 0xfa:	/* cli */
+		regs->flags &= ~(X86_EFLAGS_IF);
+		break;
+	case 0xfb:	/* sti */
+		regs->flags |= X86_EFLAGS_IF;
+		break;
+	case 0x9c:	/* pushf */
+		int3_emulate_push(regs, regs->flags);
+		break;
+	case 0x9d:	/* popf */
+		regs->flags = int3_emulate_pop(regs);
+		break;
+	}
+	regs->ip = regs->ip - INT3_INSN_SIZE + p->ainsn.size;
+}
+NOKPROBE_SYMBOL(kprobe_emulate_ifmodifiers);
+
+static void kprobe_emulate_ret(struct kprobe *p, struct pt_regs *regs)
+{
+	int3_emulate_ret(regs);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_ret);
+
+static void kprobe_emulate_call(struct kprobe *p, struct pt_regs *regs)
+{
+	unsigned long func = regs->ip - INT3_INSN_SIZE + p->ainsn.size;
+
+	func += p->ainsn.rel32;
+	int3_emulate_call(regs, func);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_call);
+
+static nokprobe_inline
+void __kprobe_emulate_jmp(struct kprobe *p, struct pt_regs *regs, bool cond)
+{
+	unsigned long ip = regs->ip - INT3_INSN_SIZE + p->ainsn.size;
+
+	if (cond)
+		ip += p->ainsn.rel32;
+	int3_emulate_jmp(regs, ip);
+}
+
+static void kprobe_emulate_jmp(struct kprobe *p, struct pt_regs *regs)
+{
+	__kprobe_emulate_jmp(p, regs, true);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_jmp);
+
+static const unsigned long jcc_mask[6] = {
+	[0] = X86_EFLAGS_OF,
+	[1] = X86_EFLAGS_CF,
+	[2] = X86_EFLAGS_ZF,
+	[3] = X86_EFLAGS_CF | X86_EFLAGS_ZF,
+	[4] = X86_EFLAGS_SF,
+	[5] = X86_EFLAGS_PF,
+};
+
+static void kprobe_emulate_jcc(struct kprobe *p, struct pt_regs *regs)
+{
+	bool invert = p->ainsn.jcc.type & 1;
+	bool match;
+
+	if (p->ainsn.jcc.type < 0xc) {
+		match = regs->flags & jcc_mask[p->ainsn.jcc.type >> 1];
+	} else {
+		match = ((regs->flags & X86_EFLAGS_SF) >> X86_EFLAGS_SF_BIT) ^
+			((regs->flags & X86_EFLAGS_OF) >> X86_EFLAGS_OF_BIT);
+		if (p->ainsn.jcc.type >= 0xe)
+			match = match && (regs->flags & X86_EFLAGS_ZF);
+	}
+	__kprobe_emulate_jmp(p, regs, (match && !invert) || (!match && invert));
+}
+NOKPROBE_SYMBOL(kprobe_emulate_jcc);
+
+static void kprobe_emulate_loop(struct kprobe *p, struct pt_regs *regs)
+{
+	bool match;
+
+	if (p->ainsn.loop.type != 3) {	/* LOOP* */
+		if (p->ainsn.loop.asize == 32)
+			match = ((*(u32 *)&regs->cx)--) != 0;
+#ifdef CONFIG_X86_64
+		else if (p->ainsn.loop.asize == 64)
+			match = ((*(u64 *)&regs->cx)--) != 0;
+#endif
+		else
+			match = ((*(u16 *)&regs->cx)--) != 0;
+	} else {			/* JCXZ */
+		if (p->ainsn.loop.asize == 32)
+			match = *(u32 *)(&regs->cx) == 0;
+#ifdef CONFIG_X86_64
+		else if (p->ainsn.loop.asize == 64)
+			match = *(u64 *)(&regs->cx) == 0;
+#endif
+		else
+			match = *(u16 *)(&regs->cx) == 0;
+	}
+
+	if (p->ainsn.loop.type == 0)	/* LOOPNE */
+		match = match && !(regs->flags & X86_EFLAGS_ZF);
+	else if (p->ainsn.loop.type == 1)	/* LOOPE */
+		match = match && (regs->flags & X86_EFLAGS_ZF);
+
+	__kprobe_emulate_jmp(p, regs, match);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_loop);
+
+static const int addrmode_regoffs[] = {
+	offsetof(struct pt_regs, ax),
+	offsetof(struct pt_regs, cx),
+	offsetof(struct pt_regs, dx),
+	offsetof(struct pt_regs, bx),
+	offsetof(struct pt_regs, sp),
+	offsetof(struct pt_regs, bp),
+	offsetof(struct pt_regs, si),
+	offsetof(struct pt_regs, di),
+#ifdef CONFIG_X86_64
+	offsetof(struct pt_regs, r8),
+	offsetof(struct pt_regs, r9),
+	offsetof(struct pt_regs, r10),
+	offsetof(struct pt_regs, r11),
+	offsetof(struct pt_regs, r12),
+	offsetof(struct pt_regs, r13),
+	offsetof(struct pt_regs, r14),
+	offsetof(struct pt_regs, r15),
+#endif
+};
+
+static void kprobe_emulate_call_indirect(struct kprobe *p, struct pt_regs *regs)
+{
+	unsigned long offs = addrmode_regoffs[p->ainsn.indirect.reg];
+
+	int3_emulate_call(regs, regs_get_register(regs, offs));
+}
+NOKPROBE_SYMBOL(kprobe_emulate_call_indirect);
+
+static void kprobe_emulate_jmp_indirect(struct kprobe *p, struct pt_regs *regs)
+{
+	unsigned long offs = addrmode_regoffs[p->ainsn.indirect.reg];
+
+	int3_emulate_jmp(regs, regs_get_register(regs, offs));
+}
+NOKPROBE_SYMBOL(kprobe_emulate_jmp_indirect);
+
+static int prepare_emulation(struct kprobe *p, struct insn *insn)
 {
 	insn_byte_t opcode = insn->opcode.bytes[0];
 
 	switch (opcode) {
 	case 0xfa:		/* cli */
 	case 0xfb:		/* sti */
+	case 0x9c:		/* pushfl */
 	case 0x9d:		/* popf/popfd */
-		/* Check whether the instruction modifies Interrupt Flag or not */
-		p->ainsn.if_modifier = 1;
-		break;
-	case 0x9c:	/* pushfl */
-		p->ainsn.is_pushf = 1;
+		/*
+		 * IF modifiers must be emulated since it will enable interrupt while
+		 * int3 single stepping.
+		 */
+		p->ainsn.emulate_op = kprobe_emulate_ifmodifiers;
+		p->ainsn.opcode = opcode;
 		break;
-	case 0xcf:	/* iret */
-		p->ainsn.if_modifier = 1;
-		fallthrough;
 	case 0xc2:	/* ret/lret */
 	case 0xc3:
 	case 0xca:
 	case 0xcb:
-	case 0xea:	/* jmp absolute -- ip is correct */
-		/* ip is already adjusted, no more changes required */
-		p->ainsn.is_abs_ip = 1;
-		/* Without resume jump, this is boostable */
-		p->ainsn.boostable = 1;
+		p->ainsn.emulate_op = kprobe_emulate_ret;
 		break;
-	case 0xe8:	/* call relative - Fix return addr */
-		p->ainsn.is_call = 1;
+	case 0x9a:	/* far call absolute -- segment is not supported */
+	case 0xea:	/* far jmp absolute -- segment is not supported */
+	case 0xcc:	/* int3 */
+	case 0xcf:	/* iret -- in-kernel IRET is not supported */
+		return -EOPNOTSUPP;
 		break;
-#ifdef CONFIG_X86_32
-	case 0x9a:	/* call absolute -- same as call absolute, indirect */
-		p->ainsn.is_call = 1;
-		p->ainsn.is_abs_ip = 1;
+	case 0xe8:	/* near call relative */
+		p->ainsn.emulate_op = kprobe_emulate_call;
+		if (insn->immediate.nbytes == 2)
+			p->ainsn.rel32 = *(s16 *)&insn->immediate.value;
+		else
+			p->ainsn.rel32 = *(s32 *)&insn->immediate.value;
+		break;
+	case 0xeb:	/* short jump relative */
+	case 0xe9:	/* near jump relative */
+		p->ainsn.emulate_op = kprobe_emulate_jmp;
+		if (insn->immediate.nbytes == 1)
+			p->ainsn.rel32 = *(s8 *)&insn->immediate.value;
+		else if (insn->immediate.nbytes == 2)
+			p->ainsn.rel32 = *(s16 *)&insn->immediate.value;
+		else
+			p->ainsn.rel32 = *(s32 *)&insn->immediate.value;
+		break;
+	case 0x70 ... 0x7f:
+		/* 1 byte conditional jump */
+		p->ainsn.emulate_op = kprobe_emulate_jcc;
+		p->ainsn.jcc.type = opcode & 0xf;
+		p->ainsn.rel32 = *(char *)insn->immediate.bytes;
+		break;
+	case 0x0f:
+		opcode = insn->opcode.bytes[1];
+		if ((opcode & 0xf0) == 0x80) {
+			/* 2 bytes Conditional Jump */
+			p->ainsn.emulate_op = kprobe_emulate_jcc;
+			p->ainsn.jcc.type = opcode & 0xf;
+			if (insn->immediate.nbytes == 2)
+				p->ainsn.rel32 = *(s16 *)&insn->immediate.value;
+			else
+				p->ainsn.rel32 = *(s32 *)&insn->immediate.value;
+		} else if (opcode == 0x01 &&
+			   X86_MODRM_REG(insn->modrm.bytes[0]) == 0 &&
+			   X86_MODRM_MOD(insn->modrm.bytes[0]) == 3) {
+			/* VM extensions - not supported */
+			return -EOPNOTSUPP;
+		}
+		break;
+	case 0xe0:	/* Loop NZ */
+	case 0xe1:	/* Loop */
+	case 0xe2:	/* Loop */
+	case 0xe3:	/* J*CXZ */
+		p->ainsn.emulate_op = kprobe_emulate_loop;
+		p->ainsn.loop.type = opcode & 0x3;
+		p->ainsn.loop.asize = insn->addr_bytes * 8;
+		p->ainsn.rel32 = *(s8 *)&insn->immediate.value;
 		break;
-#endif
 	case 0xff:
 		/*
 		 * Since the 0xff is an extended group opcode, the instruction
@@ -470,46 +669,57 @@ static void set_resume_flags(struct kprobe *p, struct insn *insn)
 		 */
 		opcode = insn->modrm.bytes[0];
 		if ((opcode & 0x30) == 0x10) {
-			/*
-			 * call absolute, indirect
-			 * Fix return addr; ip is correct.
-			 * But this is not boostable
-			 */
-			p->ainsn.is_call = 1;
-			p->ainsn.is_abs_ip = 1;
-			break;
+			if ((opcode & 0x8) == 0x8)
+				return -EOPNOTSUPP;	/* far call */
+			/* call absolute, indirect */
+			p->ainsn.emulate_op = kprobe_emulate_call_indirect;
 		} else if ((opcode & 0x30) == 0x20) {
-			/*
-			 * jmp near and far, absolute indirect
-			 * ip is correct.
-			 */
-			p->ainsn.is_abs_ip = 1;
-			/* Without resume jump, this is boostable */
-			p->ainsn.boostable = 1;
-		}
+			if ((opcode & 0x8) == 0x8)
+				return -EOPNOTSUPP;	/* far jmp */
+			/* jmp near absolute indirect */
+			p->ainsn.emulate_op = kprobe_emulate_jmp_indirect;
+		} else
+			break;
+
+		if (insn->addr_bytes != sizeof(unsigned long))
+			return -EOPNOTSUPP;	/* Don't support differnt size */
+		if (X86_MODRM_MOD(opcode) != 3)
+			return -EOPNOTSUPP;	/* TODO: support memory addressing */
+
+		p->ainsn.indirect.reg = X86_MODRM_RM(opcode);
+#ifdef CONFIG_X86_64
+		if (X86_REX_B(insn->rex_prefix.value))
+			p->ainsn.indirect.reg += 8;
+#endif
+		break;
+	default:
 		break;
 	}
+	p->ainsn.size = insn->length;
+
+	return 0;
 }
 
 static int arch_copy_kprobe(struct kprobe *p)
 {
 	struct insn insn;
 	kprobe_opcode_t buf[MAX_INSN_SIZE];
-	int len;
+	int ret, len;
 
 	/* Copy an instruction with recovering if other optprobe modifies it.*/
 	len = __copy_instruction(buf, p->addr, p->ainsn.insn, &insn);
 	if (!len)
 		return -EINVAL;
 
-	/*
-	 * __copy_instruction can modify the displacement of the instruction,
-	 * but it doesn't affect boostable check.
-	 */
-	len = prepare_boost(buf, p, &insn);
+	/* Analyze the opcode and setup emulate functions */
+	ret = prepare_emulation(p, &insn);
+	if (ret < 0)
+		return ret;
 
-	/* Analyze the opcode and set resume flags */
-	set_resume_flags(p, &insn);
+	/* Add int3 for single-step or booster jmp */
+	len = prepare_singlestep(buf, p, &insn);
+	if (len < 0)
+		return len;
 
 	/* Also, displacement change doesn't affect the first byte */
 	p->opcode = buf[0];
@@ -602,29 +812,7 @@ set_current_kprobe(struct kprobe *p, struct pt_regs *regs,
 {
 	__this_cpu_write(current_kprobe, p);
 	kcb->kprobe_saved_flags = kcb->kprobe_old_flags
-		= (regs->flags & (X86_EFLAGS_TF | X86_EFLAGS_IF));
-	if (p->ainsn.if_modifier)
-		kcb->kprobe_saved_flags &= ~X86_EFLAGS_IF;
-}
-
-static nokprobe_inline void clear_btf(void)
-{
-	if (test_thread_flag(TIF_BLOCKSTEP)) {
-		unsigned long debugctl = get_debugctlmsr();
-
-		debugctl &= ~DEBUGCTLMSR_BTF;
-		update_debugctlmsr(debugctl);
-	}
-}
-
-static nokprobe_inline void restore_btf(void)
-{
-	if (test_thread_flag(TIF_BLOCKSTEP)) {
-		unsigned long debugctl = get_debugctlmsr();
-
-		debugctl |= DEBUGCTLMSR_BTF;
-		update_debugctlmsr(debugctl);
-	}
+		= (regs->flags & X86_EFLAGS_IF);
 }
 
 void arch_prepare_kretprobe(struct kretprobe_instance *ri, struct pt_regs *regs)
@@ -639,6 +827,22 @@ void arch_prepare_kretprobe(struct kretprobe_instance *ri, struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(arch_prepare_kretprobe);
 
+static void kprobe_post_process(struct kprobe *cur, struct pt_regs *regs,
+			       struct kprobe_ctlblk *kcb)
+{
+	if ((kcb->kprobe_status != KPROBE_REENTER) && cur->post_handler) {
+		kcb->kprobe_status = KPROBE_HIT_SSDONE;
+		cur->post_handler(cur, regs, 0);
+	}
+
+	/* Restore back the original saved kprobes variables and continue. */
+	if (kcb->kprobe_status == KPROBE_REENTER)
+		restore_previous_kprobe(kcb);
+	else
+		reset_current_kprobe();
+}
+NOKPROBE_SYMBOL(kprobe_post_process);
+
 static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
 			     struct kprobe_ctlblk *kcb, int reenter)
 {
@@ -646,7 +850,7 @@ static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
 		return;
 
 #if !defined(CONFIG_PREEMPTION)
-	if (p->ainsn.boostable && !p->post_handler) {
+	if (p->ainsn.boostable) {
 		/* Boost up -- we can execute copied instructions directly */
 		if (!reenter)
 			reset_current_kprobe();
@@ -665,18 +869,50 @@ static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
 		kcb->kprobe_status = KPROBE_REENTER;
 	} else
 		kcb->kprobe_status = KPROBE_HIT_SS;
-	/* Prepare real single stepping */
-	clear_btf();
-	regs->flags |= X86_EFLAGS_TF;
+
+	if (p->ainsn.emulate_op) {
+		p->ainsn.emulate_op(p, regs);
+		kprobe_post_process(p, regs, kcb);
+		return;
+	}
+
+	/* Disable interrupt, and set ip register on trampoline */
 	regs->flags &= ~X86_EFLAGS_IF;
-	/* single step inline if the instruction is an int3 */
-	if (p->opcode == INT3_INSN_OPCODE)
-		regs->ip = (unsigned long)p->addr;
-	else
-		regs->ip = (unsigned long)p->ainsn.insn;
+	regs->ip = (unsigned long)p->ainsn.insn;
 }
 NOKPROBE_SYMBOL(setup_singlestep);
 
+/*
+ * Called after single-stepping.  p->addr is the address of the
+ * instruction whose first byte has been replaced by the "int3"
+ * instruction.  To avoid the SMP problems that can occur when we
+ * temporarily put back the original opcode to single-step, we
+ * single-stepped a copy of the instruction.  The address of this
+ * copy is p->ainsn.insn. We also doesn't use trap, but "int3" again
+ * right after the copied instruction.
+ * Different from the trap single-step, "int3" single-step can not
+ * handle the instruction which changes the ip register, e.g. jmp,
+ * call, conditional jmp, and the instructions which changes the IF
+ * flags because interrupt must be disabled around the single-stepping.
+ * Such instructions are software emulated, but others are single-stepped
+ * using "int3".
+ *
+ * When the 2nd "int3" handled, the regs->ip and regs->flags needs to
+ * be adjusted, so that we can resume execution on correct code.
+ */
+static void resume_singlestep(struct kprobe *p, struct pt_regs *regs,
+			      struct kprobe_ctlblk *kcb)
+{
+	unsigned long copy_ip = (unsigned long)p->ainsn.insn;
+	unsigned long orig_ip = (unsigned long)p->addr;
+
+	/* Restore saved interrupt flag and ip register */
+	regs->flags |= kcb->kprobe_saved_flags;
+	/* Note that regs->ip is executed int3 so must be a step back */
+	regs->ip += (orig_ip - copy_ip) - INT3_INSN_SIZE;
+}
+NOKPROBE_SYMBOL(resume_singlestep);
+
 /*
  * We have reentered the kprobe_handler(), since another probe was hit while
  * within the handler. We save the original kprobes variables and just single
@@ -712,6 +948,12 @@ static int reenter_kprobe(struct kprobe *p, struct pt_regs *regs,
 }
 NOKPROBE_SYMBOL(reenter_kprobe);
 
+static int nokprobe_inline kprobe_is_ss(struct kprobe_ctlblk *kcb)
+{
+	return (kcb->kprobe_status == KPROBE_HIT_SS ||
+		kcb->kprobe_status == KPROBE_REENTER);
+}
+
 /*
  * Interrupts are disabled on entry as trap3 is an interrupt gate and they
  * remain disabled throughout this function.
@@ -756,7 +998,18 @@ int kprobe_int3_handler(struct pt_regs *regs)
 				reset_current_kprobe();
 			return 1;
 		}
-	} else if (*addr != INT3_INSN_OPCODE) {
+	} else if (kprobe_is_ss(kcb)) {
+		p = kprobe_running();
+		if ((unsigned long)p->ainsn.insn < regs->ip &&
+		    (unsigned long)p->ainsn.insn + MAX_INSN_SIZE > regs->ip) {
+			/* Most provably this is the second int3 for singlestep */
+			resume_singlestep(p, regs, kcb);
+			kprobe_post_process(p, regs, kcb);
+			return 1;
+		}
+	}
+
+	if (*addr != INT3_INSN_OPCODE) {
 		/*
 		 * The breakpoint instruction was removed right
 		 * after we hit it.  Another cpu has removed
@@ -829,91 +1082,6 @@ __used __visible void *trampoline_handler(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(trampoline_handler);
 
-/*
- * Called after single-stepping.  p->addr is the address of the
- * instruction whose first byte has been replaced by the "int 3"
- * instruction.  To avoid the SMP problems that can occur when we
- * temporarily put back the original opcode to single-step, we
- * single-stepped a copy of the instruction.  The address of this
- * copy is p->ainsn.insn.
- *
- * This function prepares to return from the post-single-step
- * interrupt.  We have to fix up the stack as follows:
- *
- * 0) Except in the case of absolute or indirect jump or call instructions,
- * the new ip is relative to the copied instruction.  We need to make
- * it relative to the original instruction.
- *
- * 1) If the single-stepped instruction was pushfl, then the TF and IF
- * flags are set in the just-pushed flags, and may need to be cleared.
- *
- * 2) If the single-stepped instruction was a call, the return address
- * that is atop the stack is the address following the copied instruction.
- * We need to make it the address following the original instruction.
- */
-static void resume_execution(struct kprobe *p, struct pt_regs *regs,
-			     struct kprobe_ctlblk *kcb)
-{
-	unsigned long *tos = stack_addr(regs);
-	unsigned long copy_ip = (unsigned long)p->ainsn.insn;
-	unsigned long orig_ip = (unsigned long)p->addr;
-
-	regs->flags &= ~X86_EFLAGS_TF;
-
-	/* Fixup the contents of top of stack */
-	if (p->ainsn.is_pushf) {
-		*tos &= ~(X86_EFLAGS_TF | X86_EFLAGS_IF);
-		*tos |= kcb->kprobe_old_flags;
-	} else if (p->ainsn.is_call) {
-		*tos = orig_ip + (*tos - copy_ip);
-	}
-
-	if (!p->ainsn.is_abs_ip)
-		regs->ip += orig_ip - copy_ip;
-
-	restore_btf();
-}
-NOKPROBE_SYMBOL(resume_execution);
-
-/*
- * Interrupts are disabled on entry as trap1 is an interrupt gate and they
- * remain disabled throughout this function.
- */
-int kprobe_debug_handler(struct pt_regs *regs)
-{
-	struct kprobe *cur = kprobe_running();
-	struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();
-
-	if (!cur)
-		return 0;
-
-	resume_execution(cur, regs, kcb);
-	regs->flags |= kcb->kprobe_saved_flags;
-
-	if ((kcb->kprobe_status != KPROBE_REENTER) && cur->post_handler) {
-		kcb->kprobe_status = KPROBE_HIT_SSDONE;
-		cur->post_handler(cur, regs, 0);
-	}
-
-	/* Restore back the original saved kprobes variables and continue. */
-	if (kcb->kprobe_status == KPROBE_REENTER) {
-		restore_previous_kprobe(kcb);
-		goto out;
-	}
-	reset_current_kprobe();
-out:
-	/*
-	 * if somebody else is singlestepping across a probe point, flags
-	 * will have TF set, in which case, continue the remaining processing
-	 * of do_debug, as if this is not a probe hit.
-	 */
-	if (regs->flags & X86_EFLAGS_TF)
-		return 0;
-
-	return 1;
-}
-NOKPROBE_SYMBOL(kprobe_debug_handler);
-
 int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
 {
 	struct kprobe *cur = kprobe_running();
@@ -931,20 +1099,9 @@ int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
 		 * normal page fault.
 		 */
 		regs->ip = (unsigned long)cur->addr;
-		/*
-		 * Trap flag (TF) has been set here because this fault
-		 * happened where the single stepping will be done.
-		 * So clear it by resetting the current kprobe:
-		 */
-		regs->flags &= ~X86_EFLAGS_TF;
-		/*
-		 * Since the single step (trap) has been cancelled,
-		 * we need to restore BTF here.
-		 */
-		restore_btf();
 
 		/*
-		 * If the TF flag was set before the kprobe hit,
+		 * If the IF flag was set before the kprobe hit,
 		 * don't touch it:
 		 */
 		regs->flags |= kcb->kprobe_old_flags;
diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index 3780c728345c..98838b784524 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -917,9 +917,6 @@ static __always_inline void exc_debug_kernel(struct pt_regs *regs,
 	if ((dr6 & DR_STEP) && is_sysenter_singlestep(regs))
 		dr6 &= ~DR_STEP;
 
-	if (kprobe_debug_handler(regs))
-		goto out;
-
 	/*
 	 * The kernel doesn't use INT1
 	 */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-6-lihuafei1%40huawei.com.
