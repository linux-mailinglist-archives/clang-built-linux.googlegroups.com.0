Return-Path: <clang-built-linux+bncBAABBFNESSSQMGQEHS2MMDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B8A747D4F
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:50 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 3f1490d57ef6-c5a17bfb38bsf1875422276.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539669; cv=pass;
        d=google.com; s=arc-20160816;
        b=C7yy+tAL9jUS6VMUr4Fi3HdwLDkoCQ0zCs2a2GTmEaJfo26o79qd0zwWVNXt2s9U1q
         MtasdgnvX2tTCr6RUK7Xdgbg+lvfzAT6FYTNk/+lsYP9QJ4i7ZD2b0bbkYA4JNRYc9Bb
         /bR8lzBaWJxSolDNmsBhA4IZCjqHC+k2L3qOb2R0iFHCG8Vc+DQbspIxvte4swMRgGP/
         1MCSfkOLk4QnDlWPi6/vBfZpzxIqpUDxLaqiZmHwVKvHUFKPTPdnqhgJxG3FU6pJc1Ku
         965ADkdspq95UpbD+X6VeEF6Kk3GnvIZJCiuLLkR7bOVIsKIKsULu8X9pY6NQSFPuWOD
         8V7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=vbjJP9WBQGofF5sYuVK1GJ4xWah49DIBYWsLBY2S8EA=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=0rdLc+xMmqX1LXHEbGXX4b3g8/ejgS1JSxcZznXMWJ5hPvoBsBiLS9HMC+0iM8/MnH
         +3oFp2ewAhjMyEq7LZmM711HLfP7CmXyjOK3kmFjQvsncxNt/7j9el1EvvoiO9/rmJK+
         sgQkbEu4hWRef947GAfpA4FouN3zolkFPch/c9EFTNwsK/gnykd/GTDcU2pbbcyLHfSk
         4XoBPDEPEFlZdhHb3uwr0lpYSe2vXk0hntzCpn+AwJAUj2YOoMQZy3fcfIMpMSEyRwDu
         VI9R6k0S7k5uLLdGZfa9+0Qk8O2XTOtZQQWqFJFCwBHKsFEDpYkdX/toy0PhpR+9Nflp
         TlzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539669; x=1691131669;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbjJP9WBQGofF5sYuVK1GJ4xWah49DIBYWsLBY2S8EA=;
        b=q+EMaFouvcLR17B6xAZ1DDTaFWFakM93u4oCr88TNOVTbQ5CzAuy0L4BGrp+bQWxTl
         uXghvapHFRw5Mg/JTi9IDwDL6y0DB81tCg9F8DXdIPQtHaMWt6wqCvAMFeTlPCLUQqyf
         NaSj7SVWTBVWvCfbJII3FZmzQAkF9aN9zhtYz+EVS3bXs8HgXdApDlEfME6LzVksFc/T
         pIJkk6QB6OGOqcpNBfH7XHvTteerOTpqfPN2NlZXhk0gTf394WnJ3biJUwNGMUxUInyv
         TOHkGoIn42erO4c7bZQPQ5B3Vv+DsNlc8joKLsZt40prW5FXNIE9OEbtBLQZUqaQCHI2
         ki8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539669; x=1691131669;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vbjJP9WBQGofF5sYuVK1GJ4xWah49DIBYWsLBY2S8EA=;
        b=MHe8NszKQsb7dySBtZ6GBeBS/JHzxVtG+yfLrFq/qF9yPl0KEel3sDuANi7wS8LiSK
         hL8cOelGzGvHUADKYPC5jSDSbfqoCQd42LKq/hzcpGdgwk4oGp+wZxsrT0tkp+ZubkRQ
         IZ/rK7Iehb3lYV4KYYF2chiI+I4hotvxvIiam3/FAUc+zCjT9O7Qfu+e2dMPU/+wuR6I
         29XeSZzEcmIPzT0exoG9jAosb17YLeZRyQ9YkPgGTUJd19H2v9rDqo98Qq5/UtPXOrHQ
         TrR/1cLikVyvnlyp8GzVMzpGGlzE2tU+E2OWMY6GaRTb8+nWmjGO+Ef34xpCJBHzyF5C
         Ji0A==
X-Gm-Message-State: ABy/qLYZxk6zg0KFezvtTPe5hE7B97Y2a01QbS7dNlVxZbAL3xfUF8GB
	fF4h9iMLTl+AJ/XFtpUIbN8=
X-Google-Smtp-Source: APBJJlEQNmEhxZ1o5q6/7A+vLMpvDLZ6LfO1MpdRiknsni+P4mwrfvp+Cdc/XL5OYPqw7ErqI1jTug==
X-Received: by 2002:a25:f89:0:b0:c20:da9b:e6b3 with SMTP id 131-20020a250f89000000b00c20da9be6b3mr11439475ybp.63.1688539669128;
        Tue, 04 Jul 2023 23:47:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3087:0:b0:c59:399a:d1b3 with SMTP id w129-20020a253087000000b00c59399ad1b3ls1881507ybw.2.-pod-prod-08-us;
 Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
X-Received: by 2002:a0d:db49:0:b0:573:9747:9a0d with SMTP id d70-20020a0ddb49000000b0057397479a0dmr13319961ywe.41.1688539668609;
        Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539668; cv=none;
        d=google.com; s=arc-20160816;
        b=UyK0HPiJ+6+vHCkpPS/oGtud9bs7jUhvL/Y8Lrx3aEZOPKKAYJQwpuO5RrS21MiDg/
         x5e3LfRDDhifm3MG4aFCSwTFKcjmzLNFMEqv682vkX+6jZrtlsickji4fzlbdqcZ93Mj
         db7cTRKoesxADwGABkHGRXOcpOtChhCnOCuC1/8ihF/LlTsxax3+21CBMThkplc5f0pk
         Ogn0zmvpCnnAzat+GmtOA9JnWQdfIPKqEQEgLg0/dnVV7JoXJ9hlLc3W43YagLhBtCDi
         bbvyQ+DL+GshYTVWjgDY7VEXG5LYfMHHGeln/MZKaJBe7zluPcNOSzmsn3+7bij1Tcfj
         ueeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=BVHcRzDXkxPhImnbJfgY99TzXuvj8o2jwFjvSwANT6Y=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=a6efTY5JAn6e9UIaXgefN3PvV8kS7rGEzTqr4187S9Thl5VEfTwHTw7ZzuJ2rGqkRn
         SQdQXRc9diUa+y/8+X8z5GmZASMOzXOjcy4iq8AeyxEvV7zIqAorukztZSf2R1KLq2La
         uKuiFPjAXDe5AJIWr4pioHd4Ve03SK6HikSgzBIk4O5gy2HN6V3X7X4zm/FptH0g0jfj
         oBQCkirix2HIdh4vLbrON2yPrdvlKAEUOL55g6nv7hanDu2jxJzMW0y69+A5X95PdJqQ
         CtC9P65fXpuT4K0O2qBJVTea8kOFMrvuFFssIT9jXVlTehFyrMNcxYYXfE9tZ9teNxDE
         zimA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id eh27-20020a05690c299b00b005702be69945si1622546ywb.4.2023.07.04.23.47.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Qwqw76LV0z1HCq8;
	Wed,  5 Jul 2023 14:47:19 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:44 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 8/9] x86/kprobes: Update kcb status flag after singlestepping
Date: Wed, 5 Jul 2023 14:46:52 +0800
Message-ID: <20230705064653.226811-9-lihuafei1@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230705064653.226811-1-lihuafei1@huawei.com>
References: <20230705064653.226811-1-lihuafei1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.67.174.174]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500019.china.huawei.com (7.221.188.117)
X-CFilter-Loop: Reflected
X-Original-Sender: lihuafei1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.255 as
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

From: "Masami Hiramatsu (Google)" <mhiramat@kernel.org>

[ Upstream commit dec8784c9088b131a1523f582c2194cfc8107dc0 ]

Fix kprobes to update kcb (kprobes control block) status flag to
KPROBE_HIT_SSDONE even if the kp->post_handler is not set.

This bug may cause a kernel panic if another INT3 user runs right
after kprobes because kprobe_int3_handler() misunderstands the
INT3 is kprobe's single stepping INT3.

Fixes: 6256e668b7af ("x86/kprobes: Use int3 instead of debug trap for singl=
e-step")
Reported-by: Daniel M=C3=BCller <deso@posteo.net>
Signed-off-by: Masami Hiramatsu (Google) <mhiramat@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Daniel M=C3=BCller <deso@posteo.net>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/all/20220727210136.jjgc3lpqeq42yr3m@muellerd-=
fedora-PC2BDTX9
Link: https://lore.kernel.org/r/165942025658.342061.12452378391879093249.st=
git@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.=
c
index 07f222743811..bde43592f54a 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -826,16 +826,20 @@ NOKPROBE_SYMBOL(arch_prepare_kretprobe);
 static void kprobe_post_process(struct kprobe *cur, struct pt_regs *regs,
 			       struct kprobe_ctlblk *kcb)
 {
-	if ((kcb->kprobe_status !=3D KPROBE_REENTER) && cur->post_handler) {
-		kcb->kprobe_status =3D KPROBE_HIT_SSDONE;
-		cur->post_handler(cur, regs, 0);
-	}
-
 	/* Restore back the original saved kprobes variables and continue. */
-	if (kcb->kprobe_status =3D=3D KPROBE_REENTER)
+	if (kcb->kprobe_status =3D=3D KPROBE_REENTER) {
+		/* This will restore both kcb and current_kprobe */
 		restore_previous_kprobe(kcb);
-	else
+	} else {
+		/*
+		 * Always update the kcb status because
+		 * reset_curent_kprobe() doesn't update kcb.
+		 */
+		kcb->kprobe_status =3D KPROBE_HIT_SSDONE;
+		if (cur->post_handler)
+			cur->post_handler(cur, regs, 0);
 		reset_current_kprobe();
+	}
 }
 NOKPROBE_SYMBOL(kprobe_post_process);
=20
--=20
2.17.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20230705064653.226811-9-lihuafei1%40huawei.com.
