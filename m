Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXEWWOTAMGQEVXOAFNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 619A676FDDB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:56:46 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id d2e1a72fcca58-686daaa5f3bsf1328814b3a.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143005; cv=pass;
        d=google.com; s=arc-20160816;
        b=1LPJDChI+FLLKEvT5kSZcFHvBatOHw1Ys7HXTfvrqBdYRXUub2VWy1EWnPMF/oGVdo
         NJS0Fkib0ipta7RGrGrXMZdZ2qlZgJXgUM2IoDp+FQAapIqw4QpthBQa1VI+ZtMe68yP
         frux+0mxWcG/uBZq+gcqQLOuNqzefI7IewgVqAhYSg/MM0pR5Z+B9KyoVzuQOUabTwkB
         VtWXmFa8J9wABn+HT3QmZtOJUFPUZECGF407YQaqOUrDv/MatMhq+9yXt7fCc9Cmh+SH
         VXhIyVZPk057FsV5RIvMnkWPoPWeE+SndFqhuwEfWEmbU7tyftrZAZlUCIv8dCdDe8R+
         fauA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=+4vya2X+6+SqgEQBiBwLDht+l0qR2Rjj/trJDO3qGp4=;
        fh=50JgJBOPtH6RJR7HEp77o1iYjG56mRnaon8his/FULM=;
        b=WrnIB0ypBgoFAjIcx5c1zKVQvxQ8rLqQZxme9gJSBY+kZxtNjdzXunIb6q6eREvn1T
         Uj8K8r7pmnD/5NWSDggc25kS251840DaE/svHaf7yKstod+Af7kd1EPT7vNYDNbigW0V
         cuwXIfr0nthFGgpA9KNBUrzNoawWgJBc4jxv9ak2DNWAm3E2A9qD/2bLW1VnFZ+5/6kQ
         d3BkhyF//HTvFTSHJ470ggyUPmjd+5E9PtsCW9OUHHmZM9RqiB4wpk4HFuG/WJ95R/vN
         pnxJ0TTQp6erQfKrR2rciuSRcG1+6EZjZapoVOgQ+wJvBuMJSiBhIoL3GbVYwSvj/gd/
         InGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i03WLSEs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143005; x=1691747805;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+4vya2X+6+SqgEQBiBwLDht+l0qR2Rjj/trJDO3qGp4=;
        b=a6YCUflehS1i2oaNIPCbTv5TApoxB4AVp6uXq1Kz+OLaPEn70NECUVEGOA7HJg6wCV
         nbKLUlNUKMjxao7fG6LY9GUoRck/cERf3bwrnrcm0VgGmwxqrl5LbIiEhX6fKW3kjRJe
         jZwk/KhFqwxxtVJREZuJebibUkhCHrucaioHn2RXJHSrZHyUy8MTS8KQEtLqC7BuyoiG
         OTU6tyk+6KmvPB2cls4+ECLhjEuyqq/9/q9sZoOEZ7Il2cfzZWO59q8i2RRaAOJpXgCL
         EWXMxtBeqLTz/7h6OURfA4aeztO/GAaPJxkzPS+G9zgItrY+b0LPIv8lI67zWwJX77A/
         zA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143005; x=1691747805;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+4vya2X+6+SqgEQBiBwLDht+l0qR2Rjj/trJDO3qGp4=;
        b=Lv7DLjVrdeVQoHBPBY7H2Ilf9y21ZwfwfA8Gt31HzxZ1hUKothwiuDjvbyGsws505K
         KMoPRZ25vKwi80nn7DFzOLURdpIG2UCCoLoNPxpyajP7/XSc7A06LF47HKzi1D/dMQ0X
         8rEpJMU3rHscTJB5MIZyyHnkoPTORCoiJHcLmA7qppjY8ON9NdWCrRDs030tepqk4rql
         ZIbe3VgAAEYlxE0tbhHYb21cTrH/7FOK95KS8Tksgv8s/lBfs/UHlSCvIQpccJ3fPkn0
         De6XSETEWeaahMIQVHlJhCIoqsgKHk+n8gLaetxRQI1uPISXQ5IPY4tPT8RVQt08SxDw
         BhvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0Yxk75R9D/GsW3LPdKlMoznxiBW0b4KLCrBtGUJ0T2uF0Fejy1qT
	WflLQEXRKIe0dqwOs+f7iBY=
X-Google-Smtp-Source: AGHT+IFPYE+PyVZbHRGqmkGoFM05NiDZtNo9p9+pKMrtOV1vb6vGgnc6GzU4vlXvg+Hg+0FkjidZgg==
X-Received: by 2002:a05:6a20:549f:b0:133:fd64:8d48 with SMTP id i31-20020a056a20549f00b00133fd648d48mr1189696pzk.4.1691143004530;
        Fri, 04 Aug 2023 02:56:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79c3:0:b0:668:732c:5466 with SMTP id u186-20020a6279c3000000b00668732c5466ls5398234pfc.0.-pod-prod-07-us;
 Fri, 04 Aug 2023 02:56:43 -0700 (PDT)
X-Received: by 2002:a05:6a00:1acb:b0:687:82a4:49f8 with SMTP id f11-20020a056a001acb00b0068782a449f8mr1139979pfv.30.1691143003192;
        Fri, 04 Aug 2023 02:56:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143003; cv=none;
        d=google.com; s=arc-20160816;
        b=j7t3pUG+fDW3RTy4XQxuGluOQNipW6N4mdiJF+3es0k4WTdg6rNc/LDkAZcX61kLhQ
         NY//cWUL0yNp140DG2C9uv66CnUi+idRdk5YSPmiWACxVRRgqhb32k8awiszNKMBXdYs
         HVSUPBQv15dBhPwB4qKE5GAP+tFF8I5ED8Ez+knJRVUBHx3Oqcws3D2tBOB2QpDFkWM4
         p8ciqJojeMmKCDABScbAVrRQRDN8E5mj9ZzFwC5Awt0hDhih7dsFiq/UnFU+nXy2SvN/
         UznoQpwDafuWMsiSVGVHqAcjzZjXMYjfTnejaDAzORKfyN9BL/HVUb/flxUtYK51WW0t
         Z+Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=7QawD8lriyfMFYrHxxKpREUJ2nna4mSVGv4GEK8ZUXQ=;
        fh=50JgJBOPtH6RJR7HEp77o1iYjG56mRnaon8his/FULM=;
        b=CE87ic6y3loHTHaGLi09KR4SZuDqtlbV1DBAJTLT8A7Ai8J25kGMBAlFf7S3Q9+wJ/
         eOuahEIH3NJ6GW7ZNvZ24nxzR3eD9D4idXiz2pi+s7tlaAgXyuuwioVRCgNfkIfmMqCd
         BB9ppygbSaGPzK7WUbWpPUIfkHtPF3nVpK2/3XPG0KF0EB+Kc36WnbSvYL4SJSq1bHXL
         jBuOuuHYxIHq/XYIB1nlSdlr4VVWR51oUhop4j0+mpEeckywJFHZQLUnD827q9I5ra9P
         UKbqDq7I+WDA1BqmIfhDLlSY83RXuAch4x2MbTSzPUd2IY1tjZfXlDBnqi8wMn/mR2DE
         RfMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i03WLSEs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id dw20-20020a056a00369400b006866e984764si100657pfb.6.2023.08.04.02.56.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 750ED61F82;
	Fri,  4 Aug 2023 09:56:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 536A3C433C9;
	Fri,  4 Aug 2023 09:56:41 +0000 (UTC)
Subject: Patch "x86/kprobes: Do not decode opcode in resume_execution()" has been added to the 5.10-stable tree
To: bp@alien8.de,bp@suse.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:36 +0200
In-Reply-To: <20230705064653.226811-3-lihuafei1@huawei.com>
Message-ID: <2023080435-trustable-comply-eb32@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=i03WLSEs;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

    x86/kprobes: Do not decode opcode in resume_execution()

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-do-not-decode-opcode-in-resume_execution.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:47:51 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:46 +0800
Subject: x86/kprobes: Do not decode opcode in resume_execution()
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-3-lihuafei1@huawei.com>

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
Link: https://lkml.kernel.org/r/160830072561.349576.3014979564448023213.stg=
it@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/include/asm/kprobes.h |   11 +-
 arch/x86/kernel/kprobes/core.c |  168 ++++++++++++++++++------------------=
-----
 2 files changed, 81 insertions(+), 98 deletions(-)

--- a/arch/x86/include/asm/kprobes.h
+++ b/arch/x86/include/asm/kprobes.h
@@ -58,14 +58,17 @@ struct arch_specific_insn {
 	/* copy of the original instruction */
 	kprobe_opcode_t *insn;
 	/*
-	 * boostable =3D false: This instruction type is not boostable.
-	 * boostable =3D true: This instruction has been boosted: we have
+	 * boostable =3D 0: This instruction type is not boostable.
+	 * boostable =3D 1: This instruction has been boosted: we have
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
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -134,26 +134,6 @@ void synthesize_relcall(void *dest, void
 NOKPROBE_SYMBOL(synthesize_relcall);
=20
 /*
- * Skip the prefixes of the instruction.
- */
-static kprobe_opcode_t *skip_prefixes(kprobe_opcode_t *insn)
-{
-	insn_attr_t attr;
-
-	attr =3D inat_get_opcode_attribute((insn_byte_t)*insn);
-	while (inat_is_legacy_prefix(attr)) {
-		insn++;
-		attr =3D inat_get_opcode_attribute((insn_byte_t)*insn);
-	}
-#ifdef CONFIG_X86_64
-	if (inat_is_rex_prefix(attr))
-		insn++;
-#endif
-	return insn;
-}
-NOKPROBE_SYMBOL(skip_prefixes);
-
-/*
  * Returns non-zero if INSN is boostable.
  * RIP relative instructions are adjusted at copying time in 64 bits mode
  */
@@ -327,25 +307,6 @@ static int can_probe(unsigned long paddr
 }
=20
 /*
- * Returns non-zero if opcode modifies the interrupt flag.
- */
-static int is_IF_modifier(kprobe_opcode_t *insn)
-{
-	/* Skip prefixes */
-	insn =3D skip_prefixes(insn);
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
-/*
  * Copy an instruction with recovering modified instruction by kprobes
  * and adjust the displacement if the instruction uses the %rip-relative
  * addressing mode. Note that since @real will be the final place of copie=
d
@@ -427,9 +388,9 @@ static int prepare_boost(kprobe_opcode_t
 		synthesize_reljump(buf + len, p->ainsn.insn + len,
 				   p->addr + insn->length);
 		len +=3D JMP32_INSN_SIZE;
-		p->ainsn.boostable =3D true;
+		p->ainsn.boostable =3D 1;
 	} else {
-		p->ainsn.boostable =3D false;
+		p->ainsn.boostable =3D 0;
 	}
=20
 	return len;
@@ -466,6 +427,67 @@ void free_insn_page(void *page)
 	module_memfree(page);
 }
=20
+static void set_resume_flags(struct kprobe *p, struct insn *insn)
+{
+	insn_byte_t opcode =3D insn->opcode.bytes[0];
+
+	switch (opcode) {
+	case 0xfa:		/* cli */
+	case 0xfb:		/* sti */
+	case 0x9d:		/* popf/popfd */
+		/* Check whether the instruction modifies Interrupt Flag or not */
+		p->ainsn.if_modifier =3D 1;
+		break;
+	case 0x9c:	/* pushfl */
+		p->ainsn.is_pushf =3D 1;
+		break;
+	case 0xcf:	/* iret */
+		p->ainsn.if_modifier =3D 1;
+		fallthrough;
+	case 0xc2:	/* ret/lret */
+	case 0xc3:
+	case 0xca:
+	case 0xcb:
+	case 0xea:	/* jmp absolute -- ip is correct */
+		/* ip is already adjusted, no more changes required */
+		p->ainsn.is_abs_ip =3D 1;
+		/* Without resume jump, this is boostable */
+		p->ainsn.boostable =3D 1;
+		break;
+	case 0xe8:	/* call relative - Fix return addr */
+		p->ainsn.is_call =3D 1;
+		break;
+#ifdef CONFIG_X86_32
+	case 0x9a:	/* call absolute -- same as call absolute, indirect */
+		p->ainsn.is_call =3D 1;
+		p->ainsn.is_abs_ip =3D 1;
+		break;
+#endif
+	case 0xff:
+		opcode =3D insn->opcode.bytes[1];
+		if ((opcode & 0x30) =3D=3D 0x10) {
+			/*
+			 * call absolute, indirect
+			 * Fix return addr; ip is correct.
+			 * But this is not boostable
+			 */
+			p->ainsn.is_call =3D 1;
+			p->ainsn.is_abs_ip =3D 1;
+			break;
+		} else if (((opcode & 0x31) =3D=3D 0x20) ||
+			   ((opcode & 0x31) =3D=3D 0x21)) {
+			/*
+			 * jmp near and far, absolute indirect
+			 * ip is correct.
+			 */
+			p->ainsn.is_abs_ip =3D 1;
+			/* Without resume jump, this is boostable */
+			p->ainsn.boostable =3D 1;
+		}
+		break;
+	}
+}
+
 static int arch_copy_kprobe(struct kprobe *p)
 {
 	struct insn insn;
@@ -483,8 +505,8 @@ static int arch_copy_kprobe(struct kprob
 	 */
 	len =3D prepare_boost(buf, p, &insn);
=20
-	/* Check whether the instruction modifies Interrupt Flag or not */
-	p->ainsn.if_modifier =3D is_IF_modifier(buf);
+	/* Analyze the opcode and set resume flags */
+	set_resume_flags(p, &insn);
=20
 	/* Also, displacement change doesn't affect the first byte */
 	p->opcode =3D buf[0];
@@ -507,6 +529,9 @@ int arch_prepare_kprobe(struct kprobe *p
=20
 	if (!can_probe((unsigned long)p->addr))
 		return -EILSEQ;
+
+	memset(&p->ainsn, 0, sizeof(p->ainsn));
+
 	/* insn: must be on special executable page on x86. */
 	p->ainsn.insn =3D get_insn_slot();
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
@@ -834,60 +854,20 @@ static void resume_execution(struct kpro
 	unsigned long *tos =3D stack_addr(regs);
 	unsigned long copy_ip =3D (unsigned long)p->ainsn.insn;
 	unsigned long orig_ip =3D (unsigned long)p->addr;
-	kprobe_opcode_t *insn =3D p->ainsn.insn;
-
-	/* Skip prefixes */
-	insn =3D skip_prefixes(insn);
=20
 	regs->flags &=3D ~X86_EFLAGS_TF;
-	switch (*insn) {
-	case 0x9c:	/* pushfl */
+
+	/* Fixup the contents of top of stack */
+	if (p->ainsn.is_pushf) {
 		*tos &=3D ~(X86_EFLAGS_TF | X86_EFLAGS_IF);
 		*tos |=3D kcb->kprobe_old_flags;
-		break;
-	case 0xc2:	/* iret/ret/lret */
-	case 0xc3:
-	case 0xca:
-	case 0xcb:
-	case 0xcf:
-	case 0xea:	/* jmp absolute -- ip is correct */
-		/* ip is already adjusted, no more changes required */
-		p->ainsn.boostable =3D true;
-		goto no_change;
-	case 0xe8:	/* call relative - Fix return addr */
+	} else if (p->ainsn.is_call) {
 		*tos =3D orig_ip + (*tos - copy_ip);
-		break;
-#ifdef CONFIG_X86_32
-	case 0x9a:	/* call absolute -- same as call absolute, indirect */
-		*tos =3D orig_ip + (*tos - copy_ip);
-		goto no_change;
-#endif
-	case 0xff:
-		if ((insn[1] & 0x30) =3D=3D 0x10) {
-			/*
-			 * call absolute, indirect
-			 * Fix return addr; ip is correct.
-			 * But this is not boostable
-			 */
-			*tos =3D orig_ip + (*tos - copy_ip);
-			goto no_change;
-		} else if (((insn[1] & 0x31) =3D=3D 0x20) ||
-			   ((insn[1] & 0x31) =3D=3D 0x21)) {
-			/*
-			 * jmp near and far, absolute indirect
-			 * ip is correct. And this is boostable
-			 */
-			p->ainsn.boostable =3D true;
-			goto no_change;
-		}
-		break;
-	default:
-		break;
 	}
=20
-	regs->ip +=3D orig_ip - copy_ip;
+	if (!p->ainsn.is_abs_ip)
+		regs->ip +=3D orig_ip - copy_ip;
=20
-no_change:
 	restore_btf();
 }
 NOKPROBE_SYMBOL(resume_execution);


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
clang-built-linux/2023080435-trustable-comply-eb32%40gregkh.
