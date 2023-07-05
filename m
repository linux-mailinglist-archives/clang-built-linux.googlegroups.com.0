Return-Path: <clang-built-linux+bncBAABBEFESSSQMGQEOBIY4DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDBD747D44
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:46 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id ca18e2360f4ac-77e3eaa1343sf260771639f.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539665; cv=pass;
        d=google.com; s=arc-20160816;
        b=tp8NfG/rjyIU4izV1vBTp3Vz/rsZY9Ehf8Zodz+WzS9BD4uEL2ji84S+rK11R9Moh1
         Zyl0y/vTNnl7UrhNuHtPEUAuvJtno8KJfFX4ydQKiwTzea3V0h0avxU6b3z98dOf+NC+
         YFd1yXmjZGTlB+46IQlaffVJYbPPj1bn0rcui3aqSMe/ITaCPtGbBjqUjsCmvB545LN3
         Rxo7JYuqcQ59iPqB1m4tb6rovtecygCw5HZOyMxLuCcm+GU8UOmVg8N5VsN9XBizvx5C
         4rZHWsbCQbooUC0L1ND1qGo938M5h8I2JRsAFh5Blg8HYvboBdMFBlMKcmWxGh9MFTpL
         rjbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=st5uIglPoD+2sI4lixteOsVFZT4bHTo9XN3EXDbR89I=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=GXGd8MJO3QMDpy82OPCqmSNfDYGbGtSoYq/osks6KSpXh+8jDYyq22R+muRFkeUf/1
         dSBEGNmrItX12/5j8Dc43RfSI4zJ4Iy5zON54PIt243vfS1ScMql1YaUxcQRwYfuMgdv
         i/f9bgeWQyb2ZwIFlfjDmBoK2tTjuajZ4+J+dPze2NFXBRGXc7EoGD+ibcPtGMjEN4Lh
         WyK2wISn7txWMSR5OEeua1wR5ptBaJ0dzX9iBeiLBHdBakC5iIsQwYjDl4v3s6R1NO0b
         O1971FkuHaXgTdWu94v4H88tLO4GccZr/J11b7u9PA/cuwAalnPN47NaV4xvRN3YhtCD
         jkPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539665; x=1691131665;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=st5uIglPoD+2sI4lixteOsVFZT4bHTo9XN3EXDbR89I=;
        b=tfbJXWG6Td88gED5P1nP/EfC7CuBjLmzhr6nGg9NtCgeBEqvdxSz/J8NgzFiJgsAbp
         Mc6YtIM6ubs24SAskeHsPpp+7dUPUfWGncj5p9Cj4p6nSBt0htexFxoGzAZkPUsHBQfw
         hmWo/1MJKr/ymFbzD10DrWuER/6xpdlbuLjD8905q07fBA0boTHVnkEJBMHTYNVkCTT3
         +qa2uTEGQfEUXAwZ+jvPqog3yQK8dfvebVuLU4z4NdgC2oiDFHrFZHHQrGbnOPxu7r6E
         aluGjZyvh0FF+0NZsJtYP+r4PVGs91gn25qb/RfI+7iI1ahfEldEzeC/c1/+jkLGQQs3
         OMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539665; x=1691131665;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=st5uIglPoD+2sI4lixteOsVFZT4bHTo9XN3EXDbR89I=;
        b=Yz07yk2W9xWjRaG/P3o4Vsr2PsgCPR2wxdIPGVnU8+8hjH+DVs/dAN2YYGW9Q+BYg5
         lkcpIxFc2s7NBwyEtiparIx/O1sz3cfDP2A1zFQyeDKYIYWcY8ar1qHHUpplNe+WBQmB
         HcCM2cA/Mhuf0NFc4069zf7crO3gweWirk4uQs5p4pg4SaM31trMquVzEWERORNUPgg/
         sf7CMGJgCMfd7Dh1qm82lbD6W/VEyexYLTNBYIYLoOO05AVu8wEhKU4kxjCWEgCqaYf7
         OiJUVAJA3EErPDf7StQ8cdWwjd2nWEWkF94bBNWDkwT0GuZiYrOZG4Kab7Cyv8r5zS1p
         mVwA==
X-Gm-Message-State: ABy/qLaTxDi/ck6vXYe/dqaiXW+I4nNx8iovK9IQ5Y+Op5ESgXXGoPnq
	hn+KcYUboE84J2W9JV7sSEM=
X-Google-Smtp-Source: APBJJlFJZ1KMLAIFNE92kl46vGaL/8zfmlgld+CWOvjI6Dg7o5vIkW3joks1QsxZwIWcohijForPuQ==
X-Received: by 2002:a92:d48e:0:b0:345:6ffa:63c5 with SMTP id p14-20020a92d48e000000b003456ffa63c5mr13428756ilg.32.1688539664636;
        Tue, 04 Jul 2023 23:47:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1baf:b0:345:993c:d726 with SMTP id
 n15-20020a056e021baf00b00345993cd726ls3073652ili.2.-pod-prod-07-us; Tue, 04
 Jul 2023 23:47:44 -0700 (PDT)
X-Received: by 2002:a05:6602:21cc:b0:783:5c26:db82 with SMTP id c12-20020a05660221cc00b007835c26db82mr16742771ioc.5.1688539664232;
        Tue, 04 Jul 2023 23:47:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539664; cv=none;
        d=google.com; s=arc-20160816;
        b=Ag/afgVB4rCDsr9sRa5MBZhyMr3qUCTEbPnQ4TatLvTuJ1nQEr7+rBAgf9b03bxN/o
         q8r+paSyJp9PjLTx3rFDZ3LRRTS16r2eZv971xGULz/m5KowWy3FB/NuEpoeNVM43Oab
         DydH9BVflJbhhyORsnFbpuegtR0AuEbSssYGL3hon99YlopoEo6TFstmfejOKWTPwHFn
         OaPBOH0cSgHW263ZF5rht6jBVfhWDS7jAVYqD9JTtiSp218gU1IOpNdiGRfq3xYIoJUL
         qcLOrWp6JLIFZ1AGQ4wcS/+JfmHtAkCxKm7DbpwfkIZuj11/rZ+DBsW/kIHuxyR3P4Wi
         e8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=IcOLRf/bXdy3to+fjjOL/AJlRzRR7ij7FBYY+xv+95g=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=IXPLZfs5yUi3QMZEX7jov3fix7ZjB/mnuBDN1xavMiH5Pn2uMo1GxP49iUWpZlFA8G
         Gm07aYb3ZGyvabCHBwbnXFlci5ccNW3H+HmBsl3mwMJc57diE4Ma16FYybAOQLg/MtSr
         qvdQfg6dbN5MoWa5Ugw8bLmsrN3tawSEmwp4ZUSS2iBNf4F1yiZppAeKjxJ1ZZYqRzQO
         MqvW3KRVig6rOPNpbI+X5GCsFUaahPHvUxgOmKqWHQwcdUcI8ZhKmnxhGaU6hkvLLZDB
         rFOh12S6BfpwtfO/LVEgjZUeCs+zpj3JpatBD3SK7ZCVIKD9BzAohwKfhg4nwx6uMnKt
         SAmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id bm10-20020a05663842ca00b0042af5dea7cbsi1004205jab.3.2023.07.04.23.47.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Qwqrq3KpGzMq9t;
	Wed,  5 Jul 2023 14:44:27 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:40 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 2/9] x86/kprobes: Do not decode opcode in resume_execution()
Date: Wed, 5 Jul 2023 14:46:46 +0800
Message-ID: <20230705064653.226811-3-lihuafei1@huawei.com>
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
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as
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

[ Upstream commit abd82e533d88df1521e3da6799b83ce88852ab88 ]

Currently, kprobes decodes the opcode right after single-stepping in
resume_execution(). But the opcode was already decoded while preparing
arch_specific_insn in arch_copy_kprobe().

Decode the opcode in arch_copy_kprobe() instead of in resume_execution()
and set some flags which classify the opcode for the resuming process.

 [ bp: Massage commit message. ]

Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Link: https://lkml.kernel.org/r/160830072561.349576.3014979564448023213.stgit@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/include/asm/kprobes.h |  11 ++-
 arch/x86/kernel/kprobes/core.c | 168 +++++++++++++++------------------
 2 files changed, 81 insertions(+), 98 deletions(-)

diff --git a/arch/x86/include/asm/kprobes.h b/arch/x86/include/asm/kprobes.h
index 991a7ad540c7..d20a3d6be36e 100644
--- a/arch/x86/include/asm/kprobes.h
+++ b/arch/x86/include/asm/kprobes.h
@@ -58,14 +58,17 @@ struct arch_specific_insn {
 	/* copy of the original instruction */
 	kprobe_opcode_t *insn;
 	/*
-	 * boostable = false: This instruction type is not boostable.
-	 * boostable = true: This instruction has been boosted: we have
+	 * boostable = 0: This instruction type is not boostable.
+	 * boostable = 1: This instruction has been boosted: we have
 	 * added a relative jump after the instruction copy in insn,
 	 * so no single-step and fixup are needed (unless there's
 	 * a post_handler).
 	 */
-	bool boostable;
-	bool if_modifier;
+	unsigned boostable:1;
+	unsigned if_modifier:1;
+	unsigned is_call:1;
+	unsigned is_pushf:1;
+	unsigned is_abs_ip:1;
 	/* Number of bytes of text poked */
 	int tp_len;
 };
diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index ed9a4fb87168..19ca5164be4d 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -133,26 +133,6 @@ void synthesize_relcall(void *dest, void *from, void *to)
 }
 NOKPROBE_SYMBOL(synthesize_relcall);
 
-/*
- * Skip the prefixes of the instruction.
- */
-static kprobe_opcode_t *skip_prefixes(kprobe_opcode_t *insn)
-{
-	insn_attr_t attr;
-
-	attr = inat_get_opcode_attribute((insn_byte_t)*insn);
-	while (inat_is_legacy_prefix(attr)) {
-		insn++;
-		attr = inat_get_opcode_attribute((insn_byte_t)*insn);
-	}
-#ifdef CONFIG_X86_64
-	if (inat_is_rex_prefix(attr))
-		insn++;
-#endif
-	return insn;
-}
-NOKPROBE_SYMBOL(skip_prefixes);
-
 /*
  * Returns non-zero if INSN is boostable.
  * RIP relative instructions are adjusted at copying time in 64 bits mode
@@ -326,25 +306,6 @@ static int can_probe(unsigned long paddr)
 	return (addr == paddr);
 }
 
-/*
- * Returns non-zero if opcode modifies the interrupt flag.
- */
-static int is_IF_modifier(kprobe_opcode_t *insn)
-{
-	/* Skip prefixes */
-	insn = skip_prefixes(insn);
-
-	switch (*insn) {
-	case 0xfa:		/* cli */
-	case 0xfb:		/* sti */
-	case 0xcf:		/* iret/iretd */
-	case 0x9d:		/* popf/popfd */
-		return 1;
-	}
-
-	return 0;
-}
-
 /*
  * Copy an instruction with recovering modified instruction by kprobes
  * and adjust the displacement if the instruction uses the %rip-relative
@@ -427,9 +388,9 @@ static int prepare_boost(kprobe_opcode_t *buf, struct kprobe *p,
 		synthesize_reljump(buf + len, p->ainsn.insn + len,
 				   p->addr + insn->length);
 		len += JMP32_INSN_SIZE;
-		p->ainsn.boostable = true;
+		p->ainsn.boostable = 1;
 	} else {
-		p->ainsn.boostable = false;
+		p->ainsn.boostable = 0;
 	}
 
 	return len;
@@ -466,6 +427,67 @@ void free_insn_page(void *page)
 	module_memfree(page);
 }
 
+static void set_resume_flags(struct kprobe *p, struct insn *insn)
+{
+	insn_byte_t opcode = insn->opcode.bytes[0];
+
+	switch (opcode) {
+	case 0xfa:		/* cli */
+	case 0xfb:		/* sti */
+	case 0x9d:		/* popf/popfd */
+		/* Check whether the instruction modifies Interrupt Flag or not */
+		p->ainsn.if_modifier = 1;
+		break;
+	case 0x9c:	/* pushfl */
+		p->ainsn.is_pushf = 1;
+		break;
+	case 0xcf:	/* iret */
+		p->ainsn.if_modifier = 1;
+		fallthrough;
+	case 0xc2:	/* ret/lret */
+	case 0xc3:
+	case 0xca:
+	case 0xcb:
+	case 0xea:	/* jmp absolute -- ip is correct */
+		/* ip is already adjusted, no more changes required */
+		p->ainsn.is_abs_ip = 1;
+		/* Without resume jump, this is boostable */
+		p->ainsn.boostable = 1;
+		break;
+	case 0xe8:	/* call relative - Fix return addr */
+		p->ainsn.is_call = 1;
+		break;
+#ifdef CONFIG_X86_32
+	case 0x9a:	/* call absolute -- same as call absolute, indirect */
+		p->ainsn.is_call = 1;
+		p->ainsn.is_abs_ip = 1;
+		break;
+#endif
+	case 0xff:
+		opcode = insn->opcode.bytes[1];
+		if ((opcode & 0x30) == 0x10) {
+			/*
+			 * call absolute, indirect
+			 * Fix return addr; ip is correct.
+			 * But this is not boostable
+			 */
+			p->ainsn.is_call = 1;
+			p->ainsn.is_abs_ip = 1;
+			break;
+		} else if (((opcode & 0x31) == 0x20) ||
+			   ((opcode & 0x31) == 0x21)) {
+			/*
+			 * jmp near and far, absolute indirect
+			 * ip is correct.
+			 */
+			p->ainsn.is_abs_ip = 1;
+			/* Without resume jump, this is boostable */
+			p->ainsn.boostable = 1;
+		}
+		break;
+	}
+}
+
 static int arch_copy_kprobe(struct kprobe *p)
 {
 	struct insn insn;
@@ -483,8 +505,8 @@ static int arch_copy_kprobe(struct kprobe *p)
 	 */
 	len = prepare_boost(buf, p, &insn);
 
-	/* Check whether the instruction modifies Interrupt Flag or not */
-	p->ainsn.if_modifier = is_IF_modifier(buf);
+	/* Analyze the opcode and set resume flags */
+	set_resume_flags(p, &insn);
 
 	/* Also, displacement change doesn't affect the first byte */
 	p->opcode = buf[0];
@@ -507,6 +529,9 @@ int arch_prepare_kprobe(struct kprobe *p)
 
 	if (!can_probe((unsigned long)p->addr))
 		return -EILSEQ;
+
+	memset(&p->ainsn, 0, sizeof(p->ainsn));
+
 	/* insn: must be on special executable page on x86. */
 	p->ainsn.insn = get_insn_slot();
 	if (!p->ainsn.insn)
@@ -822,11 +847,6 @@ NOKPROBE_SYMBOL(trampoline_handler);
  * 2) If the single-stepped instruction was a call, the return address
  * that is atop the stack is the address following the copied instruction.
  * We need to make it the address following the original instruction.
- *
- * If this is the first time we've single-stepped the instruction at
- * this probepoint, and the instruction is boostable, boost it: add a
- * jump instruction after the copied instruction, that jumps to the next
- * instruction after the probepoint.
  */
 static void resume_execution(struct kprobe *p, struct pt_regs *regs,
 			     struct kprobe_ctlblk *kcb)
@@ -834,60 +854,20 @@ static void resume_execution(struct kprobe *p, struct pt_regs *regs,
 	unsigned long *tos = stack_addr(regs);
 	unsigned long copy_ip = (unsigned long)p->ainsn.insn;
 	unsigned long orig_ip = (unsigned long)p->addr;
-	kprobe_opcode_t *insn = p->ainsn.insn;
-
-	/* Skip prefixes */
-	insn = skip_prefixes(insn);
 
 	regs->flags &= ~X86_EFLAGS_TF;
-	switch (*insn) {
-	case 0x9c:	/* pushfl */
+
+	/* Fixup the contents of top of stack */
+	if (p->ainsn.is_pushf) {
 		*tos &= ~(X86_EFLAGS_TF | X86_EFLAGS_IF);
 		*tos |= kcb->kprobe_old_flags;
-		break;
-	case 0xc2:	/* iret/ret/lret */
-	case 0xc3:
-	case 0xca:
-	case 0xcb:
-	case 0xcf:
-	case 0xea:	/* jmp absolute -- ip is correct */
-		/* ip is already adjusted, no more changes required */
-		p->ainsn.boostable = true;
-		goto no_change;
-	case 0xe8:	/* call relative - Fix return addr */
+	} else if (p->ainsn.is_call) {
 		*tos = orig_ip + (*tos - copy_ip);
-		break;
-#ifdef CONFIG_X86_32
-	case 0x9a:	/* call absolute -- same as call absolute, indirect */
-		*tos = orig_ip + (*tos - copy_ip);
-		goto no_change;
-#endif
-	case 0xff:
-		if ((insn[1] & 0x30) == 0x10) {
-			/*
-			 * call absolute, indirect
-			 * Fix return addr; ip is correct.
-			 * But this is not boostable
-			 */
-			*tos = orig_ip + (*tos - copy_ip);
-			goto no_change;
-		} else if (((insn[1] & 0x31) == 0x20) ||
-			   ((insn[1] & 0x31) == 0x21)) {
-			/*
-			 * jmp near and far, absolute indirect
-			 * ip is correct. And this is boostable
-			 */
-			p->ainsn.boostable = true;
-			goto no_change;
-		}
-		break;
-	default:
-		break;
 	}
 
-	regs->ip += orig_ip - copy_ip;
+	if (!p->ainsn.is_abs_ip)
+		regs->ip += orig_ip - copy_ip;
 
-no_change:
 	restore_btf();
 }
 NOKPROBE_SYMBOL(resume_execution);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-3-lihuafei1%40huawei.com.
