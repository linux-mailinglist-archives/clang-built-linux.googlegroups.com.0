Return-Path: <clang-built-linux+bncBAABBEVESSSQMGQEZBAH5EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B1573747D4A
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:48 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id d2e1a72fcca58-66a634b2cf5sf542137b3a.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539667; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZKvRlL0IGq4N1sl0015qcDZvpM6gyXD/tck6N/4dQiswhiq0t+aMCFnFYA7eDFNOJK
         08AX8EZVofW8uMqa4BArgZ/GxJfvHIbB1wTfw0qzmAhCExk4h22OleZxLQ07Bv7jOZfC
         gxlcHbGCRL/kAlfsQRoTZRtkosrbBZOCp/J1Cc4cC09//t09AyLGmmldJeWdi8CI2An+
         CxwtBZQ3qQo+3o5UoFjUlG8pa/sdKzK4lPDBj9KLgcvSFAJYCAVIu86Q48uYIlAavBIH
         aUIOA2BM8Y2Gia53HiQaJ2T5Yt7q5Jt7dzTx/bvfENI7rRzpaVh5H48zPktqP4WM0k7d
         I7zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=0N4iw0hBAXLL9t3I9Pd9H8nXJEsulZFOnRq4/Q3eNrA=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=yzOTxG4kW3DW5qbHMUxh8l6w8AKjy8OMUFvMUvgW3l7SJ67d2YS/2RGqRpWlX4wr7M
         KohKkca7N/f2LRTZ0f2satc2oCy52SU7IUIVyHX4guQstOOMGyM2GPzkMCmt78ISmvz5
         bqKg4fNhJbTVpuz6fd/z2GgoOAophTXsvlZeBXiKd27k6yDnQF9RNlkkFPzVb50ED2bB
         RozG7OvNSUbbuqtIm+oLvxLnOfGvSt0XXdMWz86lNHMNxss6GiOvjyrbQnFy90b7/J6O
         SY6mG00s+Djf6Y5OsulArCdhx1cNj5w2pPcoBXhZN1mhwzinV5K/4RIgzU1b+40Gc1rS
         +iCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539667; x=1691131667;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0N4iw0hBAXLL9t3I9Pd9H8nXJEsulZFOnRq4/Q3eNrA=;
        b=KjIie98PEMgXpRX5rUicFNHUZT0dOMMEFYgv9HEoDGTMFeeWWcLlSDBQRu3o9kwXeo
         kWgm+AnQpLCBMLuMvPTlZzFv1S6Qxsv/aiH6hhJtAG8SKfjvEIs3LKnIqmdIElZqx9aT
         OXg4Tzj/Hrn3gqUaSTyY+0MhJFv2x0zPW43aaANXLtaOzV4zy//bJZER4M/UpmMt1N4z
         U6VRLdznoGGNzpdKrOddKVs698iqO/Q0en5/J3XvZiB/mUvRL1oVn0+R6FSBMutCKLty
         OxShS6qxdaPAZfJFYRJkFM/uC5awHgqArFtJ7MvE4Ebl0h9gccntwM+qi3CWEhtUldgG
         nUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539667; x=1691131667;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0N4iw0hBAXLL9t3I9Pd9H8nXJEsulZFOnRq4/Q3eNrA=;
        b=VK57y7yrLFtgTKPaNoouckte4Qgc42hhu9thhnv82gJhkmohvIU7mwcpbsYAfL5eJ0
         h50oB5Q4pK2jKQg6vYH/2w/nCH/WQxpUAaT7Q8U9kGknQgf1k/7B9AduiiKPdy6Q0Ogh
         4u/F5dRUW5jCNWQzTtYbCH01WY2XnMAoPdssOgJVbYCJbecV7/Z6OHIvNoGP1BaR0ygl
         ioAv7dgiGMQdJzUvtZN6QuvtCk8ck82ayZZr4O+eiV+ybR6s21bLep1aaBM/LxLqPwhN
         /UQIwiue7srMFpO8FCvq4p+ulX61Wb8Gg8yUUqxgWZM7Idwy9xLVXncunDe+yJLTTdna
         noFw==
X-Gm-Message-State: ABy/qLbjOFeeMBxVSFSJ4dL9nbwrupOh/zbcRJR/UFoZcxEWoCUUIG5B
	tNb9mb/XzKSPQV6ApTRmuYc=
X-Google-Smtp-Source: APBJJlH0Z+7LFdg24A3MdxMPDuGmLE4sa/ILPeP402TpqNnfmMDBxNP1/4yHthRYVsakXRM7xTr21A==
X-Received: by 2002:a05:6a00:3a04:b0:681:4274:eef0 with SMTP id fj4-20020a056a003a0400b006814274eef0mr1535018pfb.1.1688539666783;
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8648:0:b0:668:7e8a:7df6 with SMTP id x69-20020a628648000000b006687e8a7df6ls4381796pfd.1.-pod-prod-00-us;
 Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:1351:b0:67f:d5e7:4604 with SMTP id k17-20020a056a00135100b0067fd5e74604mr1888311pfu.13.1688539666064;
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539666; cv=none;
        d=google.com; s=arc-20160816;
        b=ZM40H/xWo26H3PwfX2+UubaeulJNKAZ9oKVc+1FeutpgLF6SHT25P4mYXE0jxD2f6V
         R3Kf9EC/qk5ObKNWG/iY7KSLbuzvFcx8ij9d0w43WFSbcxqgNm2HMmODD0vbd4/UIt1j
         wbmIngXPMZvywC/EbkplQITYh10D8b+f6+KbGZY9paFX1XXgHQbBlwZ07GGAyRN71wBi
         WNi3UOwrdZDlzA/BK1aa/oMNfAz3uJmRFBP/AplNKF7v52CIA/PzABUZXnXUQr8MJZnR
         xtKslO3VIfn6Za8NDrKgo5UeCx8NrwfNuzXrY0VZSh2YFcLb3YtdrNKbfi+wBjKXIx0N
         f7+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=xfXlfSFc4+wMrd8vAvPxA2lTPTA8vrizNdwStJuKwWA=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=CrnYO8ynmWhXyZLq76IumvVla8/JKov6mFMU20CN+HMyOF1eE5U90UXDjfC7OtUiOv
         6mXJzp3mh9c4nS+mbjptZU+9wjWpvrnilLt9Wg1XTdluEuR1XF8tT5cqLw/xdMCx/k5M
         2V6PzAgL6W1M0Hv2qfPTVen/F2Rjy6x+NA7Log54Z9JdXiezDYCRlcQPil899nCEAN84
         sbp8rzC3P7rpGWke1nBWdilatL7x7boNYRbiEHi4NR4T11MSba+Y5t2bCDFA+faQtG/F
         yfhCeXSZwXXdakuayuy1gX93WTPhRPnoaxyyocLhdKB0tx+lPK8Lz3tjjS4ga2kuuuvq
         B74w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id y26-20020aa793da000000b00682646da326si634971pff.6.2023.07.04.23.47.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Qwqt32qHvzLnn5;
	Wed,  5 Jul 2023 14:45:31 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:43 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 6/9] x86/kprobes: Fix to identify indirect jmp and others using range case
Date: Wed, 5 Jul 2023 14:46:50 +0800
Message-ID: <20230705064653.226811-7-lihuafei1@huawei.com>
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
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.189 as
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

[ Upstream commit 2f706e0e5e263c0d204e37ea496cbb0e98aac2d2 ]

Fix can_boost() to identify indirect jmp and others using range case
correctly.

Since the condition in switch statement is opcode & 0xf0, it can not
evaluate to 0xff case. This should be under the 0xf0 case. However,
there is no reason to use the conbinations of the bit-masked condition
and lower bit checking.

Use range case to clean up the switch statement too.

Fixes: 6256e668b7 ("x86/kprobes: Use int3 instead of debug trap for single-step")
Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Link: https://lore.kernel.org/r/161666692308.1120877.4675552834049546493.stgit@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 44 ++++++++++++++++------------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index 7778b3791bee..109221af5d49 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -165,32 +165,28 @@ int can_boost(struct insn *insn, void *addr)
 
 	opcode = insn->opcode.bytes[0];
 
-	switch (opcode & 0xf0) {
-	case 0x60:
-		/* can't boost "bound" */
-		return (opcode != 0x62);
-	case 0x70:
-		return 0; /* can't boost conditional jump */
-	case 0x90:
-		return opcode != 0x9a;	/* can't boost call far */
-	case 0xc0:
-		/* can't boost software-interruptions */
-		return (0xc1 < opcode && opcode < 0xcc) || opcode == 0xcf;
-	case 0xd0:
-		/* can boost AA* and XLAT */
-		return (opcode == 0xd4 || opcode == 0xd5 || opcode == 0xd7);
-	case 0xe0:
-		/* can boost in/out and absolute jmps */
-		return ((opcode & 0x04) || opcode == 0xea);
-	case 0xf0:
-		/* clear and set flags are boostable */
-		return (opcode == 0xf5 || (0xf7 < opcode && opcode < 0xfe));
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
 		return X86_MODRM_REG(insn->modrm.bytes[0]) == 4;
 	default:
-		/* call is not boostable */
-		return opcode != 0x9a;
+		return 1;
 	}
 }
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-7-lihuafei1%40huawei.com.
