Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBYMWWOTAMGQE7R47TEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F2576FDDD
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:56:51 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id 6a1803df08f44-63cfe46bbb6sf21430046d6.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:56:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143010; cv=pass;
        d=google.com; s=arc-20160816;
        b=z6NJZu4Wrd209FTvPCdvOOTcarVGQ7cqJih1kHjhFjibCtTKUOkxiwtVADWLq5/uq+
         bjesOfvUXHRGSBHYuIIqrhWfQGTLmFRpcCxI5bEIDQ699PN3z8O6QZqmaTCLSrcTEYqQ
         QT/PllgYnoqt0ZhQ1GkIkhAYkxDbUwjl65mcnD9wPMaLl7gh3aHhFTp15d3Ddg2TQk5W
         a+ZYMWs1ieUS+Egf4A1q5MVEJXBkpw6AZ9I29LRO1TKyKmnCrFPenjlrG5Jkge6lehSG
         /vkDYSl2qBu1Q81OGu8TIrYGabFaucYrAXu3Xj95LMUj+Pq8THQ0rjXLBLtC1Z1fMc81
         vBLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=HWNojDvPR7dfaulwGLVDQcliyxvcxubB7QE2xolEIS8=;
        fh=il5FavjoHxuT2NEYpJfWeCkKuAVRtCePZPz00EO2fIs=;
        b=g0/+lv5fJTw5JrIqEJO8keOss2L13K6F9LBOh7QjTjuMZHwDOKYAu5/FDoweZrlZ4X
         KRWoi1XqbMIaIxzQWLN9zczURnsjln4no4gXW11JO4qLEcnirSYs+cMWlG2vOwShOvYY
         kBicU69Fwanh94LJz/51f+xPUfVmPn6GldSTh5KfmscezMPqgENJkpVI8pXlIu/+fQnJ
         +MPCB5PdCGxvh++C975/i39zUg64vKFimBAUGXK9cdRhydHH5HYY0XpDaBAv3YeOa2jt
         Mzh0rdZVXUffy261cT3tODDvebBBbLwdRjKnkW7O/rQK/XcYMWLnW3YnQrZBUHH2SnMy
         m2tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=d7r9wFqw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143010; x=1691747810;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWNojDvPR7dfaulwGLVDQcliyxvcxubB7QE2xolEIS8=;
        b=Hj/nlWvQbvI9AdoUoNufgX9rwLvo6QMRvL7bfP2tPipGdd0X0023fTZPnZr1WRdniQ
         2JgWYlfUf7m9aZUykdfeLwH3CxxVvXKUQJpxpjUAz17bFat3oJuZIgIj5iplDP9Yf9Ob
         QhW8S5ftOpQVksl+STr7JQ4FBmuUgnxqi63bvoyNc0EqrTHXZ+g9JTTfs9yklx7oC1p3
         J6S/d7b0+BGKH5v867npWj0k/OzkIWjiVHg+HcMxy9LDPZjjBsmd2hc/R5MBOxNG26cJ
         flkvVqKxjVH+l6i0PRKlOoBf6srb2Hdqor/RJaOTg8+YlmiN1w27lbmrzfvwm2ORaRCx
         78oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143010; x=1691747810;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HWNojDvPR7dfaulwGLVDQcliyxvcxubB7QE2xolEIS8=;
        b=lS+bDgrvmwAg7shSneztlYq4ZnKTZBQWi6AshgyqC3jvWZ1kuSkL9HagDg0+3xiHCR
         kxPlH3uYQb3xmpOOYaRcYt5iAEYWs5uX2H92nvRwulU9GJHdwfRB2y8/W24INo+TP1XO
         l09Q5tQrbT1Go3C2NAzDx43kUk8nfr8MYRti+F7rN/qLPr4d46SBRP2TNh/OLLGLywM4
         22uXj/wtW05StkRDDMy/DAOgDFazwGchano3lHHU+Cs705FvcPHXOlZh+zkuCL5tpesh
         vXOnqqcg7v697yWSSmVfMmA9mVu3nv1KJqcyPOZacznk+NgwKP/muWYqD+uSEGVE5pLn
         3McQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YxdN1Zqv/b23Q1ztRYdTmTbqsNud2EPXDGK8YU2k8FoKQSdOj6y
	Frvfhu6nRtLJSZZslVQisOs=
X-Google-Smtp-Source: AGHT+IHq0vQR5nYSmf+0bGJykG/5eg2ZYr2Z7q9rXYaid0XnCx5WbgJrrzzEMzxwuCkJen3F5whQQw==
X-Received: by 2002:a0c:e950:0:b0:63d:42a1:4898 with SMTP id n16-20020a0ce950000000b0063d42a14898mr998386qvo.50.1691143009866;
        Fri, 04 Aug 2023 02:56:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:cb08:0:b0:635:c4b2:5800 with SMTP id o8-20020a0ccb08000000b00635c4b25800ls871647qvk.0.-pod-prod-02-us;
 Fri, 04 Aug 2023 02:56:49 -0700 (PDT)
X-Received: by 2002:a05:620a:468c:b0:76c:a78b:e09e with SMTP id bq12-20020a05620a468c00b0076ca78be09emr1823146qkb.11.1691143009192;
        Fri, 04 Aug 2023 02:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143009; cv=none;
        d=google.com; s=arc-20160816;
        b=KMEYX8yc5oxz+pr2b9/XTjdyFkB4AsDTf0XLGsHOkLFTr0WXlGhusq/gbt/9wU4flo
         GUQJbrkXNafqI1apaZVLs6ptjg7GN71QRZK9idNllMWg7t11mTO+WS8+gbhKY8t0QNHu
         +LHEpultR3PN4yD/xsZwGBBtaxdXLNO7g77EUoPin5o1CadkdEz6bVItZ4z6Gdckyxaz
         FVHlSvToRBWhJhm/QLphWtLIXgcyjUhSAFtsDsLaBtEKRwGD4oKkmwAu1HsPp1P2hQH/
         R/aGZMPkEygZaVklA7mLWt6Zn/+J3CAJqxUUJW06feii4usQy7LXnyXZ8EzBrRKCG9tk
         ALPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=wIEnfkzwYzdTDKjLfw020U/MHh+/FmHVWWRo9UysTkM=;
        fh=il5FavjoHxuT2NEYpJfWeCkKuAVRtCePZPz00EO2fIs=;
        b=qNl8hR9NKeUCL/LGomKXBR/PFqK/9lxrj7evzMbfv+SfbSs4BlbAx5E+KMa8IpG6eS
         7L7rSpDfx9WgaifAM/5v9NX++XjoR0FpQ+vY8lShCARN8bbTzmjRf/AKagSiWnJyKH9u
         ydBHC9syh4ufQ9e/jPdWGLxtAOUKVfUKHnU5y8EI1BJX7rQkl7Ivew6eEj5egZXvmPm5
         LavpmuZO1d/y1ZuOuSUMbIJwZM3VrJJ0vbMj1ifitL8cYkw5/SpIeyM2ywxmIvEeFkaD
         vN+0hBGyEdUdnq8cO5LPPNx5ni6oDZdlaL8QosCzoUykHm4ccaaO1W7lPnK7rMq8287z
         +gsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=d7r9wFqw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id ea5-20020a05620a488500b0076709fdb678si90225qkb.4.2023.08.04.02.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A9BFA61F8A;
	Fri,  4 Aug 2023 09:56:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9439C433C7;
	Fri,  4 Aug 2023 09:56:47 +0000 (UTC)
Subject: Patch "x86/kprobes: Fix to identify indirect jmp and others using range case" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,colin.king@canonical.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:38 +0200
In-Reply-To: <20230705064653.226811-7-lihuafei1@huawei.com>
Message-ID: <2023080438-undergo-hedge-210d@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=d7r9wFqw;       spf=pass
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

    x86/kprobes: Fix to identify indirect jmp and others using range case

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-fix-to-identify-indirect-jmp-and-others-using-range-case.p=
atch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:48:03 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:50 +0800
Subject: x86/kprobes: Fix to identify indirect jmp and others using range c=
ase
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-7-lihuafei1@huawei.com>

From: Masami Hiramatsu <mhiramat@kernel.org>

[ Upstream commit 2f706e0e5e263c0d204e37ea496cbb0e98aac2d2 ]

Fix can_boost() to identify indirect jmp and others using range case
correctly.

Since the condition in switch statement is opcode & 0xf0, it can not
evaluate to 0xff case. This should be under the 0xf0 case. However,
there is no reason to use the conbinations of the bit-masked condition
and lower bit checking.

Use range case to clean up the switch statement too.

Fixes: 6256e668b7 ("x86/kprobes: Use int3 instead of debug trap for single-=
step")
Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Link: https://lore.kernel.org/r/161666692308.1120877.4675552834049546493.st=
git@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |   44 ++++++++++++++++++------------------=
-----
 1 file changed, 20 insertions(+), 24 deletions(-)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -165,32 +165,28 @@ int can_boost(struct insn *insn, void *a
=20
 	opcode =3D insn->opcode.bytes[0];
=20
-	switch (opcode & 0xf0) {
-	case 0x60:
-		/* can't boost "bound" */
-		return (opcode !=3D 0x62);
-	case 0x70:
-		return 0; /* can't boost conditional jump */
-	case 0x90:
-		return opcode !=3D 0x9a;	/* can't boost call far */
-	case 0xc0:
-		/* can't boost software-interruptions */
-		return (0xc1 < opcode && opcode < 0xcc) || opcode =3D=3D 0xcf;
-	case 0xd0:
-		/* can boost AA* and XLAT */
-		return (opcode =3D=3D 0xd4 || opcode =3D=3D 0xd5 || opcode =3D=3D 0xd7);
-	case 0xe0:
-		/* can boost in/out and absolute jmps */
-		return ((opcode & 0x04) || opcode =3D=3D 0xea);
-	case 0xf0:
-		/* clear and set flags are boostable */
-		return (opcode =3D=3D 0xf5 || (0xf7 < opcode && opcode < 0xfe));
-	case 0xff:
-		/* indirect jmp is boostable */
+	switch (opcode) {
+	case 0x62:		/* bound */
+	case 0x70 ... 0x7f:	/* Conditional jumps */
+	case 0x9a:		/* Call far */
+	case 0xc0 ... 0xc1:	/* Grp2 */
+	case 0xcc ... 0xce:	/* software exceptions */
+	case 0xd0 ... 0xd3:	/* Grp2 */
+	case 0xd6:		/* (UD) */
+	case 0xd8 ... 0xdf:	/* ESC */
+	case 0xe0 ... 0xe3:	/* LOOP*, JCXZ */
+	case 0xe8 ... 0xe9:	/* near Call, JMP */
+	case 0xeb:		/* Short JMP */
+	case 0xf0 ... 0xf4:	/* LOCK/REP, HLT */
+	case 0xf6 ... 0xf7:	/* Grp3 */
+	case 0xfe:		/* Grp4 */
+		/* ... are not boostable */
+		return 0;
+	case 0xff:		/* Grp5 */
+		/* Only indirect jmp is boostable */
 		return X86_MODRM_REG(insn->modrm.bytes[0]) =3D=3D 4;
 	default:
-		/* call is not boostable */
-		return opcode !=3D 0x9a;
+		return 1;
 	}
 }
=20


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
clang-built-linux/2023080438-undergo-hedge-210d%40gregkh.
