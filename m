Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4MWWOTAMGQEEOICADY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 185EF76FDE3
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:57:07 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id 6a1803df08f44-63cec409447sf20881826d6.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:57:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143026; cv=pass;
        d=google.com; s=arc-20160816;
        b=rTFa/ODZWE6Q2QIco+cmZ+GuVKLWJre1sZfw2N5pbmnSzKYahixknyX5HR9YYhQ9kY
         B+TdAmmsWzDVDJniuhBiWpzDXOvLyYrZXIYKXQDlpSLn+dsN/4fS0SwbzMXAh6HRF4xh
         vjnslM7eOCYKB6JYwxRLUIfYTGG04STgNEDQJf0jNVHWrlIMzr4UyxlVHWyD+gK1/MUw
         yfFVFdimzWkIvxyHB3zdIMpvq5GDj2sOm9c1TBF5V+up3c2eglLj/LxVaPQQw3lV9aXV
         9tkpOOOSCjaQETN5oC7D0DMRqSpTUe34dcp3qkvuiPcPw//OynKwhObmSd/i+8U9yNTs
         UauA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=BW8+K/Hgb1DskikUMD3H8erYoKK8Pn3FhcNdvmYzqWo=;
        fh=0SHZ61c4sUjfrkNrn6hbmUxEI76n9bW7gJR727OM/pE=;
        b=P7GjYCe2lPnbvh577TWhVmYP6e/j5/9WiXl+V6fPVV18Od/9waeLC/kko2SmaFGq/N
         CIlm650QJz6oa4sE3QEqTh0LIO1g5X04EkU2/V9fB5ftIED3A4BS7YOgI7xEvlqcKsuU
         WD7UcnMQZ3AaTFKU33DS3AnK9RTyhZTuLZ7H+vlnM3YtwFPY6sQFP0iAUUdbKwIfISeQ
         1mClffgtBw98Gm7l5hLLczf+FOcTm8UQiGWL5GWoohTeKsopuTxHIk7c2tsks4i2HS36
         ZynRsfnVco6F8xfIKSmyOQ0FTRqxShAJ8wvBUlrVXxVgBP7ZSVdheNZdVXUaf6t8Lso5
         zHMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nEUopSAV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143026; x=1691747826;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BW8+K/Hgb1DskikUMD3H8erYoKK8Pn3FhcNdvmYzqWo=;
        b=Bz9fACHU8kPqAdT6eZlHkp4yGJbNkCkJBT/R6n7W9kfUeu7mywDOqUQtonocuVZ44V
         VUeGs4FFTZkzvOJrJlJmYOyi7A/CDPZp/nd0wErTwcH6FbMO2tLI+xAQ7Ve2PO7Hsui6
         AVwWGMbvVUmBWbR/q+Uvgv6o3+u8/WPC2lLeBbEzH9quJHQupzt+Uy1p+lv6HRFE4ejZ
         BqpHA4xssQBPKI10aGwViUBFhBTF7vpdyZljfPop4fTpCtZSiqTZDXSmS3Hfy2qXI+v2
         IvCHrJMCsXrFWOlqpxuwAL60LhVDfw0xIwtJ4gD5ihzsgCaxxvgLVTegXLDaFbCh1t6a
         YADg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143026; x=1691747826;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BW8+K/Hgb1DskikUMD3H8erYoKK8Pn3FhcNdvmYzqWo=;
        b=MqQWkxV2SxcmSx9QG72lz9gBfrprEoukrnIOOfTtZvcpfyTC81FVHG8RsAI4ykYRFO
         IWEOPAxpbkCiTn3txAiI7s9sjr+hic3iuVWn83A/yv54u6u6IUMdP8dV+05tq20TU2cq
         3Ag3hpkxRjtUJ1bjkbygfifi+PlIsOpM//x4Qc454x/FfzyLJRPnacZGipGVFO0++KtE
         4JWaS6db6ngOwVkqPLK9V8FDWzsw6RtZEvwUqdxzHmRqTaOBOOTMm3X+I5h+9feAHT2D
         VpMiZfiAhP5ZpRbVNB/kPASbOwHMCqQ4nOMmvQevL4SSvOEt8Szh9icYkBSPQ3h+9PbB
         7JZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YxjKEigpwPSuOk8Bhbu714X1E6sWSCLjfyyhu+6dGnf6/J4UM7Q
	7p4C+n/nyIQzHb8rBZfyTVw=
X-Google-Smtp-Source: AGHT+IGOXPnfzwYRvQ8BvU/XwBsE4j03g51xwp1eZ7M/DNmZJKMO/HGT0EQbp4d03eG2rW054I0Bsw==
X-Received: by 2002:ad4:4310:0:b0:637:2235:4a29 with SMTP id c16-20020ad44310000000b0063722354a29mr1172322qvs.30.1691143026067;
        Fri, 04 Aug 2023 02:57:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f44f:0:b0:63c:fabe:6ea1 with SMTP id h15-20020a0cf44f000000b0063cfabe6ea1ls2826391qvm.1.-pod-prod-01-us;
 Fri, 04 Aug 2023 02:57:05 -0700 (PDT)
X-Received: by 2002:ad4:504f:0:b0:63c:f5ee:438 with SMTP id m15-20020ad4504f000000b0063cf5ee0438mr1010871qvq.18.1691143025113;
        Fri, 04 Aug 2023 02:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143025; cv=none;
        d=google.com; s=arc-20160816;
        b=Bts8mOqRD5Y1sUQcRf7IueJ9opx4HYqj1IOhY/Ic0xb8+7/0aTDpsXsdCbfskpo2L6
         xSvyzQ4WElOueg9k8IXCuACL6YXOPZcuN96TAp2XUbeWjyJl7f5erUFsdXtYDMLi5PW7
         u8QGQZWeyoSwCBzlsFx8WAuvCvSIkRvif06g/jazvSl7bBO4JnVDYvG4/+dUGuFILzRl
         oWnqryMMBKPFMeRMzySB0Sc9JUCRbm5YJk/3Fb0IsbCn28llOvRoqCaFpVPBZixWDZ+x
         91JG4zvgPOCK6edEdCXK3ua97yX2iVFUodCGvYNTgcg7+UWTmXfZGLJINFGZC7AcuSVj
         lB8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=fW1SYl6v5n4NnlHNc7jXB4tsCsl37/mQOHsdpl8vJ3w=;
        fh=0SHZ61c4sUjfrkNrn6hbmUxEI76n9bW7gJR727OM/pE=;
        b=nOM/dNTzw2N1DOurpJSInFw+YD8yVmvKMfDrNJfKimj5M161hjfe5/CZlm0SrJv68K
         IBXtrJs6KlMGzq8DbsHMFd0HolfeAyPQD+zw6r5LaNgZsabFqtv7FRVTkMRKoGCX/Z2F
         v99RQiCao/FaDpMpx98MLZ2MP4LS2c33xMxM3p/gwy2pnmwJy/t44YKooL9kY2iBHwka
         v8Z7kvdfQC/QLEinugKgRTjc61LzAPSo+r6alQjQqj8AuhXBTqu9Am/eluaTb1egXWnU
         zUp/i2btQDaCkhdcrqGNvRGXmEi2PZ87W2ViZYf2tIzlj0emYx433aGyQwEeFcAAOtWn
         UVOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nEUopSAV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id m12-20020a0cbf0c000000b006261d48d4c2si165267qvi.0.2023.08.04.02.57.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A74D661F74;
	Fri,  4 Aug 2023 09:57:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55CB0C433C7;
	Fri,  4 Aug 2023 09:57:03 +0000 (UTC)
Subject: Patch "x86/kprobes: Use int3 instead of debug trap for single-step" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,luto@kernel.org,mhiramat@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:45 +0200
In-Reply-To: <20230705064653.226811-6-lihuafei1@huawei.com>
Message-ID: <2023080445-september-impulse-a3d1@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=nEUopSAV;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    x86/kprobes: Use int3 instead of debug trap for single-step

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-use-int3-instead-of-debug-trap-for-single-step.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:48:03 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:49 +0800
Subject: x86/kprobes: Use int3 instead of debug trap for single-step
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-6-lihuafei1@huawei.com>

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
Link: https://lkml.kernel.org/r/161469874601.49483.11985325887166921076.stg=
it@devnote2
[Huafei: Fix trivial conflict in arch/x86/kernel/kprobes/core.c due to
the previously backported commit 6dd3b8c9f5881]
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/include/asm/kprobes.h |   21 +
 arch/x86/kernel/kprobes/core.c |  517 ++++++++++++++++++++++++++----------=
-----
 arch/x86/kernel/traps.c        |    3=20
 3 files changed, 353 insertions(+), 188 deletions(-)

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
@@ -107,7 +119,6 @@ extern int kprobe_fault_handler(struct p
 extern int kprobe_exceptions_notify(struct notifier_block *self,
 				    unsigned long val, void *data);
 extern int kprobe_int3_handler(struct pt_regs *regs);
-extern int kprobe_debug_handler(struct pt_regs *regs);
=20
 #else
=20
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -185,6 +185,9 @@ int can_boost(struct insn *insn, void *a
 	case 0xf0:
 		/* clear and set flags are boostable */
 		return (opcode =3D=3D 0xf5 || (0xf7 < opcode && opcode < 0xfe));
+	case 0xff:
+		/* indirect jmp is boostable */
+		return X86_MODRM_REG(insn->modrm.bytes[0]) =3D=3D 4;
 	default:
 		/* call is not boostable */
 		return opcode !=3D 0x9a;
@@ -373,13 +376,14 @@ int __copy_instruction(u8 *dest, u8 *src
 	return insn->length;
 }
=20
-/* Prepare reljump right after instruction to boost */
-static int prepare_boost(kprobe_opcode_t *buf, struct kprobe *p,
-			  struct insn *insn)
+/* Prepare reljump or int3 right after instruction */
+static int prepare_singlestep(kprobe_opcode_t *buf, struct kprobe *p,
+			      struct insn *insn)
 {
 	int len =3D insn->length;
=20
-	if (can_boost(insn, p->addr) &&
+	if (!IS_ENABLED(CONFIG_PREEMPTION) &&
+	    !p->post_handler && can_boost(insn, p->addr) &&
 	    MAX_INSN_SIZE - len >=3D JMP32_INSN_SIZE) {
 		/*
 		 * These instructions can be executed directly if it
@@ -390,7 +394,12 @@ static int prepare_boost(kprobe_opcode_t
 		len +=3D JMP32_INSN_SIZE;
 		p->ainsn.boostable =3D 1;
 	} else {
-		p->ainsn.boostable =3D 0;
+		/* Otherwise, put an int3 for trapping singlestep */
+		if (MAX_INSN_SIZE - len < INT3_INSN_SIZE)
+			return -ENOSPC;
+
+		buf[len] =3D INT3_INSN_OPCODE;
+		len +=3D INT3_INSN_SIZE;
 	}
=20
 	return len;
@@ -427,42 +436,232 @@ void free_insn_page(void *page)
 	module_memfree(page);
 }
=20
-static void set_resume_flags(struct kprobe *p, struct insn *insn)
+/* Kprobe x86 instruction emulation - only regs->ip or IF flag modifiers *=
/
+
+static void kprobe_emulate_ifmodifiers(struct kprobe *p, struct pt_regs *r=
egs)
+{
+	switch (p->ainsn.opcode) {
+	case 0xfa:	/* cli */
+		regs->flags &=3D ~(X86_EFLAGS_IF);
+		break;
+	case 0xfb:	/* sti */
+		regs->flags |=3D X86_EFLAGS_IF;
+		break;
+	case 0x9c:	/* pushf */
+		int3_emulate_push(regs, regs->flags);
+		break;
+	case 0x9d:	/* popf */
+		regs->flags =3D int3_emulate_pop(regs);
+		break;
+	}
+	regs->ip =3D regs->ip - INT3_INSN_SIZE + p->ainsn.size;
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
+	unsigned long func =3D regs->ip - INT3_INSN_SIZE + p->ainsn.size;
+
+	func +=3D p->ainsn.rel32;
+	int3_emulate_call(regs, func);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_call);
+
+static nokprobe_inline
+void __kprobe_emulate_jmp(struct kprobe *p, struct pt_regs *regs, bool con=
d)
+{
+	unsigned long ip =3D regs->ip - INT3_INSN_SIZE + p->ainsn.size;
+
+	if (cond)
+		ip +=3D p->ainsn.rel32;
+	int3_emulate_jmp(regs, ip);
+}
+
+static void kprobe_emulate_jmp(struct kprobe *p, struct pt_regs *regs)
+{
+	__kprobe_emulate_jmp(p, regs, true);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_jmp);
+
+static const unsigned long jcc_mask[6] =3D {
+	[0] =3D X86_EFLAGS_OF,
+	[1] =3D X86_EFLAGS_CF,
+	[2] =3D X86_EFLAGS_ZF,
+	[3] =3D X86_EFLAGS_CF | X86_EFLAGS_ZF,
+	[4] =3D X86_EFLAGS_SF,
+	[5] =3D X86_EFLAGS_PF,
+};
+
+static void kprobe_emulate_jcc(struct kprobe *p, struct pt_regs *regs)
+{
+	bool invert =3D p->ainsn.jcc.type & 1;
+	bool match;
+
+	if (p->ainsn.jcc.type < 0xc) {
+		match =3D regs->flags & jcc_mask[p->ainsn.jcc.type >> 1];
+	} else {
+		match =3D ((regs->flags & X86_EFLAGS_SF) >> X86_EFLAGS_SF_BIT) ^
+			((regs->flags & X86_EFLAGS_OF) >> X86_EFLAGS_OF_BIT);
+		if (p->ainsn.jcc.type >=3D 0xe)
+			match =3D match && (regs->flags & X86_EFLAGS_ZF);
+	}
+	__kprobe_emulate_jmp(p, regs, (match && !invert) || (!match && invert));
+}
+NOKPROBE_SYMBOL(kprobe_emulate_jcc);
+
+static void kprobe_emulate_loop(struct kprobe *p, struct pt_regs *regs)
+{
+	bool match;
+
+	if (p->ainsn.loop.type !=3D 3) {	/* LOOP* */
+		if (p->ainsn.loop.asize =3D=3D 32)
+			match =3D ((*(u32 *)&regs->cx)--) !=3D 0;
+#ifdef CONFIG_X86_64
+		else if (p->ainsn.loop.asize =3D=3D 64)
+			match =3D ((*(u64 *)&regs->cx)--) !=3D 0;
+#endif
+		else
+			match =3D ((*(u16 *)&regs->cx)--) !=3D 0;
+	} else {			/* JCXZ */
+		if (p->ainsn.loop.asize =3D=3D 32)
+			match =3D *(u32 *)(&regs->cx) =3D=3D 0;
+#ifdef CONFIG_X86_64
+		else if (p->ainsn.loop.asize =3D=3D 64)
+			match =3D *(u64 *)(&regs->cx) =3D=3D 0;
+#endif
+		else
+			match =3D *(u16 *)(&regs->cx) =3D=3D 0;
+	}
+
+	if (p->ainsn.loop.type =3D=3D 0)	/* LOOPNE */
+		match =3D match && !(regs->flags & X86_EFLAGS_ZF);
+	else if (p->ainsn.loop.type =3D=3D 1)	/* LOOPE */
+		match =3D match && (regs->flags & X86_EFLAGS_ZF);
+
+	__kprobe_emulate_jmp(p, regs, match);
+}
+NOKPROBE_SYMBOL(kprobe_emulate_loop);
+
+static const int addrmode_regoffs[] =3D {
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
+static void kprobe_emulate_call_indirect(struct kprobe *p, struct pt_regs =
*regs)
+{
+	unsigned long offs =3D addrmode_regoffs[p->ainsn.indirect.reg];
+
+	int3_emulate_call(regs, regs_get_register(regs, offs));
+}
+NOKPROBE_SYMBOL(kprobe_emulate_call_indirect);
+
+static void kprobe_emulate_jmp_indirect(struct kprobe *p, struct pt_regs *=
regs)
+{
+	unsigned long offs =3D addrmode_regoffs[p->ainsn.indirect.reg];
+
+	int3_emulate_jmp(regs, regs_get_register(regs, offs));
+}
+NOKPROBE_SYMBOL(kprobe_emulate_jmp_indirect);
+
+static int prepare_emulation(struct kprobe *p, struct insn *insn)
 {
 	insn_byte_t opcode =3D insn->opcode.bytes[0];
=20
 	switch (opcode) {
 	case 0xfa:		/* cli */
 	case 0xfb:		/* sti */
+	case 0x9c:		/* pushfl */
 	case 0x9d:		/* popf/popfd */
-		/* Check whether the instruction modifies Interrupt Flag or not */
-		p->ainsn.if_modifier =3D 1;
-		break;
-	case 0x9c:	/* pushfl */
-		p->ainsn.is_pushf =3D 1;
+		/*
+		 * IF modifiers must be emulated since it will enable interrupt while
+		 * int3 single stepping.
+		 */
+		p->ainsn.emulate_op =3D kprobe_emulate_ifmodifiers;
+		p->ainsn.opcode =3D opcode;
 		break;
-	case 0xcf:	/* iret */
-		p->ainsn.if_modifier =3D 1;
-		fallthrough;
 	case 0xc2:	/* ret/lret */
 	case 0xc3:
 	case 0xca:
 	case 0xcb:
-	case 0xea:	/* jmp absolute -- ip is correct */
-		/* ip is already adjusted, no more changes required */
-		p->ainsn.is_abs_ip =3D 1;
-		/* Without resume jump, this is boostable */
-		p->ainsn.boostable =3D 1;
+		p->ainsn.emulate_op =3D kprobe_emulate_ret;
 		break;
-	case 0xe8:	/* call relative - Fix return addr */
-		p->ainsn.is_call =3D 1;
+	case 0x9a:	/* far call absolute -- segment is not supported */
+	case 0xea:	/* far jmp absolute -- segment is not supported */
+	case 0xcc:	/* int3 */
+	case 0xcf:	/* iret -- in-kernel IRET is not supported */
+		return -EOPNOTSUPP;
 		break;
-#ifdef CONFIG_X86_32
-	case 0x9a:	/* call absolute -- same as call absolute, indirect */
-		p->ainsn.is_call =3D 1;
-		p->ainsn.is_abs_ip =3D 1;
+	case 0xe8:	/* near call relative */
+		p->ainsn.emulate_op =3D kprobe_emulate_call;
+		if (insn->immediate.nbytes =3D=3D 2)
+			p->ainsn.rel32 =3D *(s16 *)&insn->immediate.value;
+		else
+			p->ainsn.rel32 =3D *(s32 *)&insn->immediate.value;
+		break;
+	case 0xeb:	/* short jump relative */
+	case 0xe9:	/* near jump relative */
+		p->ainsn.emulate_op =3D kprobe_emulate_jmp;
+		if (insn->immediate.nbytes =3D=3D 1)
+			p->ainsn.rel32 =3D *(s8 *)&insn->immediate.value;
+		else if (insn->immediate.nbytes =3D=3D 2)
+			p->ainsn.rel32 =3D *(s16 *)&insn->immediate.value;
+		else
+			p->ainsn.rel32 =3D *(s32 *)&insn->immediate.value;
+		break;
+	case 0x70 ... 0x7f:
+		/* 1 byte conditional jump */
+		p->ainsn.emulate_op =3D kprobe_emulate_jcc;
+		p->ainsn.jcc.type =3D opcode & 0xf;
+		p->ainsn.rel32 =3D *(char *)insn->immediate.bytes;
+		break;
+	case 0x0f:
+		opcode =3D insn->opcode.bytes[1];
+		if ((opcode & 0xf0) =3D=3D 0x80) {
+			/* 2 bytes Conditional Jump */
+			p->ainsn.emulate_op =3D kprobe_emulate_jcc;
+			p->ainsn.jcc.type =3D opcode & 0xf;
+			if (insn->immediate.nbytes =3D=3D 2)
+				p->ainsn.rel32 =3D *(s16 *)&insn->immediate.value;
+			else
+				p->ainsn.rel32 =3D *(s32 *)&insn->immediate.value;
+		} else if (opcode =3D=3D 0x01 &&
+			   X86_MODRM_REG(insn->modrm.bytes[0]) =3D=3D 0 &&
+			   X86_MODRM_MOD(insn->modrm.bytes[0]) =3D=3D 3) {
+			/* VM extensions - not supported */
+			return -EOPNOTSUPP;
+		}
+		break;
+	case 0xe0:	/* Loop NZ */
+	case 0xe1:	/* Loop */
+	case 0xe2:	/* Loop */
+	case 0xe3:	/* J*CXZ */
+		p->ainsn.emulate_op =3D kprobe_emulate_loop;
+		p->ainsn.loop.type =3D opcode & 0x3;
+		p->ainsn.loop.asize =3D insn->addr_bytes * 8;
+		p->ainsn.rel32 =3D *(s8 *)&insn->immediate.value;
 		break;
-#endif
 	case 0xff:
 		/*
 		 * Since the 0xff is an extended group opcode, the instruction
@@ -470,46 +669,57 @@ static void set_resume_flags(struct kpro
 		 */
 		opcode =3D insn->modrm.bytes[0];
 		if ((opcode & 0x30) =3D=3D 0x10) {
-			/*
-			 * call absolute, indirect
-			 * Fix return addr; ip is correct.
-			 * But this is not boostable
-			 */
-			p->ainsn.is_call =3D 1;
-			p->ainsn.is_abs_ip =3D 1;
-			break;
+			if ((opcode & 0x8) =3D=3D 0x8)
+				return -EOPNOTSUPP;	/* far call */
+			/* call absolute, indirect */
+			p->ainsn.emulate_op =3D kprobe_emulate_call_indirect;
 		} else if ((opcode & 0x30) =3D=3D 0x20) {
-			/*
-			 * jmp near and far, absolute indirect
-			 * ip is correct.
-			 */
-			p->ainsn.is_abs_ip =3D 1;
-			/* Without resume jump, this is boostable */
-			p->ainsn.boostable =3D 1;
-		}
+			if ((opcode & 0x8) =3D=3D 0x8)
+				return -EOPNOTSUPP;	/* far jmp */
+			/* jmp near absolute indirect */
+			p->ainsn.emulate_op =3D kprobe_emulate_jmp_indirect;
+		} else
+			break;
+
+		if (insn->addr_bytes !=3D sizeof(unsigned long))
+			return -EOPNOTSUPP;	/* Don't support differnt size */
+		if (X86_MODRM_MOD(opcode) !=3D 3)
+			return -EOPNOTSUPP;	/* TODO: support memory addressing */
+
+		p->ainsn.indirect.reg =3D X86_MODRM_RM(opcode);
+#ifdef CONFIG_X86_64
+		if (X86_REX_B(insn->rex_prefix.value))
+			p->ainsn.indirect.reg +=3D 8;
+#endif
+		break;
+	default:
 		break;
 	}
+	p->ainsn.size =3D insn->length;
+
+	return 0;
 }
=20
 static int arch_copy_kprobe(struct kprobe *p)
 {
 	struct insn insn;
 	kprobe_opcode_t buf[MAX_INSN_SIZE];
-	int len;
+	int ret, len;
=20
 	/* Copy an instruction with recovering if other optprobe modifies it.*/
 	len =3D __copy_instruction(buf, p->addr, p->ainsn.insn, &insn);
 	if (!len)
 		return -EINVAL;
=20
-	/*
-	 * __copy_instruction can modify the displacement of the instruction,
-	 * but it doesn't affect boostable check.
-	 */
-	len =3D prepare_boost(buf, p, &insn);
+	/* Analyze the opcode and setup emulate functions */
+	ret =3D prepare_emulation(p, &insn);
+	if (ret < 0)
+		return ret;
=20
-	/* Analyze the opcode and set resume flags */
-	set_resume_flags(p, &insn);
+	/* Add int3 for single-step or booster jmp */
+	len =3D prepare_singlestep(buf, p, &insn);
+	if (len < 0)
+		return len;
=20
 	/* Also, displacement change doesn't affect the first byte */
 	p->opcode =3D buf[0];
@@ -602,29 +812,7 @@ set_current_kprobe(struct kprobe *p, str
 {
 	__this_cpu_write(current_kprobe, p);
 	kcb->kprobe_saved_flags =3D kcb->kprobe_old_flags
-		=3D (regs->flags & (X86_EFLAGS_TF | X86_EFLAGS_IF));
-	if (p->ainsn.if_modifier)
-		kcb->kprobe_saved_flags &=3D ~X86_EFLAGS_IF;
-}
-
-static nokprobe_inline void clear_btf(void)
-{
-	if (test_thread_flag(TIF_BLOCKSTEP)) {
-		unsigned long debugctl =3D get_debugctlmsr();
-
-		debugctl &=3D ~DEBUGCTLMSR_BTF;
-		update_debugctlmsr(debugctl);
-	}
-}
-
-static nokprobe_inline void restore_btf(void)
-{
-	if (test_thread_flag(TIF_BLOCKSTEP)) {
-		unsigned long debugctl =3D get_debugctlmsr();
-
-		debugctl |=3D DEBUGCTLMSR_BTF;
-		update_debugctlmsr(debugctl);
-	}
+		=3D (regs->flags & X86_EFLAGS_IF);
 }
=20
 void arch_prepare_kretprobe(struct kretprobe_instance *ri, struct pt_regs =
*regs)
@@ -639,6 +827,22 @@ void arch_prepare_kretprobe(struct kretp
 }
 NOKPROBE_SYMBOL(arch_prepare_kretprobe);
=20
+static void kprobe_post_process(struct kprobe *cur, struct pt_regs *regs,
+			       struct kprobe_ctlblk *kcb)
+{
+	if ((kcb->kprobe_status !=3D KPROBE_REENTER) && cur->post_handler) {
+		kcb->kprobe_status =3D KPROBE_HIT_SSDONE;
+		cur->post_handler(cur, regs, 0);
+	}
+
+	/* Restore back the original saved kprobes variables and continue. */
+	if (kcb->kprobe_status =3D=3D KPROBE_REENTER)
+		restore_previous_kprobe(kcb);
+	else
+		reset_current_kprobe();
+}
+NOKPROBE_SYMBOL(kprobe_post_process);
+
 static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
 			     struct kprobe_ctlblk *kcb, int reenter)
 {
@@ -646,7 +850,7 @@ static void setup_singlestep(struct kpro
 		return;
=20
 #if !defined(CONFIG_PREEMPTION)
-	if (p->ainsn.boostable && !p->post_handler) {
+	if (p->ainsn.boostable) {
 		/* Boost up -- we can execute copied instructions directly */
 		if (!reenter)
 			reset_current_kprobe();
@@ -665,19 +869,51 @@ static void setup_singlestep(struct kpro
 		kcb->kprobe_status =3D KPROBE_REENTER;
 	} else
 		kcb->kprobe_status =3D KPROBE_HIT_SS;
-	/* Prepare real single stepping */
-	clear_btf();
-	regs->flags |=3D X86_EFLAGS_TF;
+
+	if (p->ainsn.emulate_op) {
+		p->ainsn.emulate_op(p, regs);
+		kprobe_post_process(p, regs, kcb);
+		return;
+	}
+
+	/* Disable interrupt, and set ip register on trampoline */
 	regs->flags &=3D ~X86_EFLAGS_IF;
-	/* single step inline if the instruction is an int3 */
-	if (p->opcode =3D=3D INT3_INSN_OPCODE)
-		regs->ip =3D (unsigned long)p->addr;
-	else
-		regs->ip =3D (unsigned long)p->ainsn.insn;
+	regs->ip =3D (unsigned long)p->ainsn.insn;
 }
 NOKPROBE_SYMBOL(setup_singlestep);
=20
 /*
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
+	unsigned long copy_ip =3D (unsigned long)p->ainsn.insn;
+	unsigned long orig_ip =3D (unsigned long)p->addr;
+
+	/* Restore saved interrupt flag and ip register */
+	regs->flags |=3D kcb->kprobe_saved_flags;
+	/* Note that regs->ip is executed int3 so must be a step back */
+	regs->ip +=3D (orig_ip - copy_ip) - INT3_INSN_SIZE;
+}
+NOKPROBE_SYMBOL(resume_singlestep);
+
+/*
  * We have reentered the kprobe_handler(), since another probe was hit whi=
le
  * within the handler. We save the original kprobes variables and just sin=
gle
  * step on the instruction of the new probe without calling any user handl=
ers.
@@ -712,6 +948,12 @@ static int reenter_kprobe(struct kprobe
 }
 NOKPROBE_SYMBOL(reenter_kprobe);
=20
+static int nokprobe_inline kprobe_is_ss(struct kprobe_ctlblk *kcb)
+{
+	return (kcb->kprobe_status =3D=3D KPROBE_HIT_SS ||
+		kcb->kprobe_status =3D=3D KPROBE_REENTER);
+}
+
 /*
  * Interrupts are disabled on entry as trap3 is an interrupt gate and they
  * remain disabled throughout this function.
@@ -756,7 +998,18 @@ int kprobe_int3_handler(struct pt_regs *
 				reset_current_kprobe();
 			return 1;
 		}
-	} else if (*addr !=3D INT3_INSN_OPCODE) {
+	} else if (kprobe_is_ss(kcb)) {
+		p =3D kprobe_running();
+		if ((unsigned long)p->ainsn.insn < regs->ip &&
+		    (unsigned long)p->ainsn.insn + MAX_INSN_SIZE > regs->ip) {
+			/* Most provably this is the second int3 for singlestep */
+			resume_singlestep(p, regs, kcb);
+			kprobe_post_process(p, regs, kcb);
+			return 1;
+		}
+	}
+
+	if (*addr !=3D INT3_INSN_OPCODE) {
 		/*
 		 * The breakpoint instruction was removed right
 		 * after we hit it.  Another cpu has removed
@@ -829,91 +1082,6 @@ __used __visible void *trampoline_handle
 }
 NOKPROBE_SYMBOL(trampoline_handler);
=20
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
- * 0) Except in the case of absolute or indirect jump or call instructions=
,
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
-	unsigned long *tos =3D stack_addr(regs);
-	unsigned long copy_ip =3D (unsigned long)p->ainsn.insn;
-	unsigned long orig_ip =3D (unsigned long)p->addr;
-
-	regs->flags &=3D ~X86_EFLAGS_TF;
-
-	/* Fixup the contents of top of stack */
-	if (p->ainsn.is_pushf) {
-		*tos &=3D ~(X86_EFLAGS_TF | X86_EFLAGS_IF);
-		*tos |=3D kcb->kprobe_old_flags;
-	} else if (p->ainsn.is_call) {
-		*tos =3D orig_ip + (*tos - copy_ip);
-	}
-
-	if (!p->ainsn.is_abs_ip)
-		regs->ip +=3D orig_ip - copy_ip;
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
-	struct kprobe *cur =3D kprobe_running();
-	struct kprobe_ctlblk *kcb =3D get_kprobe_ctlblk();
-
-	if (!cur)
-		return 0;
-
-	resume_execution(cur, regs, kcb);
-	regs->flags |=3D kcb->kprobe_saved_flags;
-
-	if ((kcb->kprobe_status !=3D KPROBE_REENTER) && cur->post_handler) {
-		kcb->kprobe_status =3D KPROBE_HIT_SSDONE;
-		cur->post_handler(cur, regs, 0);
-	}
-
-	/* Restore back the original saved kprobes variables and continue. */
-	if (kcb->kprobe_status =3D=3D KPROBE_REENTER) {
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
 	struct kprobe *cur =3D kprobe_running();
@@ -931,20 +1099,9 @@ int kprobe_fault_handler(struct pt_regs
 		 * normal page fault.
 		 */
 		regs->ip =3D (unsigned long)cur->addr;
-		/*
-		 * Trap flag (TF) has been set here because this fault
-		 * happened where the single stepping will be done.
-		 * So clear it by resetting the current kprobe:
-		 */
-		regs->flags &=3D ~X86_EFLAGS_TF;
-		/*
-		 * Since the single step (trap) has been cancelled,
-		 * we need to restore BTF here.
-		 */
-		restore_btf();
=20
 		/*
-		 * If the TF flag was set before the kprobe hit,
+		 * If the IF flag was set before the kprobe hit,
 		 * don't touch it:
 		 */
 		regs->flags |=3D kcb->kprobe_old_flags;
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -917,9 +917,6 @@ static __always_inline void exc_debug_ke
 	if ((dr6 & DR_STEP) && is_sysenter_singlestep(regs))
 		dr6 &=3D ~DR_STEP;
=20
-	if (kprobe_debug_handler(regs))
-		goto out;
-
 	/*
 	 * The kernel doesn't use INT1
 	 */


Patches currently in stable-queue which might be from stable-owner@vger.ker=
nel.org are

queue-5.10/x86-kprobes-update-kcb-status-flag-after-singlestepping.patch
queue-5.10/x86-kprobes-fix-to-identify-indirect-jmp-and-others-using-range-=
case.patch
queue-5.10/x86-kprobes-fix-jng-jnle-emulation.patch
queue-5.10/x86-kprobes-retrieve-correct-opcode-for-group-instruction.patch
queue-5.10/x86-kprobes-use-int3-instead-of-debug-trap-for-single-step.patch
queue-5.10/x86-kprobes-do-not-decode-opcode-in-resume_execution.patch
queue-5.10/x86-kprobes-identify-far-indirect-jmp-correctly.patch
queue-5.10/kprobes-x86-fix-fall-through-warnings-for-clang.patch
queue-5.10/x86-kprobes-move-inline-to-the-beginning-of-the-kprobe_is_ss-dec=
laration.patch

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2023080445-september-impulse-a3d1%40gregkh.
