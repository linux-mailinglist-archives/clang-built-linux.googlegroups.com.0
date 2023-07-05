Return-Path: <clang-built-linux+bncBAABBEVESSSQMGQEZBAH5EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4AF747D46
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:47 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id d75a77b69052e-40351198686sf39632181cf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539666; cv=pass;
        d=google.com; s=arc-20160816;
        b=gBPkm46VbvvbDGPEuc1F0RCPrhrIkF+WmwaY8U5BnLB0UqqCDWpOxtZUlPW2JCnJcx
         ZpW7C/h0oHyqAE1OYEV/KjG1H+AZ4Sw/4lnBwoDG3LurL21wtT0D137OvEQtSnmJnFDy
         eBBaXzNGpUeYN+7tVZys7Fz3llj9LkRFnojYjHj1ppOXRmJmorm9WRHHx19Qm11b/kmu
         GMGEcEZXsmL7Yldjb85LsHpJpFei/SJ4YxRC7IeiLgL0UsLWR4AESBtTyKxbpplNK26T
         b0wf1dT62EAkAXUoUHoAGy4mWAtnK7F/qYy34SpNwGODfYPH8IoAxn/TCS0HMTIBR6x6
         RTVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=yep3gNOHdC/IEIO0RTGnFZAhYzVI/IvD3JvcwBbBigY=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=wlA8FhrUrbFsvs5DKzN/IibgTP3p6QWRrlpodFRRitq0aPyP6r5LV3mlQJrfkXqhBg
         oJX8KmOsg9aJBRvJAy3Sw0+Mgl7fVe6uD+cKg+VK843nChbS9Vo1Lu+St5G3LwMW4xlZ
         Trt5Q4CZ9Yllm6bxnnQBOqNdZO6vB8sJ2FemUpjmuJIxqYktOFjcxNxNHSEDpyzsRE3R
         Q02afFTGl1ZZ/dbHv5YS04VzU4rCtCouaIoi2Urdr5odamZxyCa/Ni77cNHtoHaBX5DR
         tqkl9VE2n3syThi/EC4Ds+lM4IQSpAcDjalt3tw8pfi7X4xxG4z/wzpFsKlkpPmUHcSj
         tbIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539666; x=1691131666;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yep3gNOHdC/IEIO0RTGnFZAhYzVI/IvD3JvcwBbBigY=;
        b=U1gfSHXJKFslLLSIZHjg+VWUOszeevscwF4nhSu9DpGVNhcCDGqymeiEKcgswCn6zg
         KUJLq9wTBRZuC3LUzheAbULUwuHapYp9CdUnrFmQsELLzwCCuHPGC+BzOQU8sUq0XxXN
         +TCST9lA68z0mPuM3VmUO8yzGbhqRrgk97IS4qblQEwgO6jD0MT5bfgEjZsioyiWLEPs
         tTvY6KOolwWMhp+yAsy+WYSqEb+h8Ru0CW70YA4hE6NUh36rOj3YERgiud4iD4oIrh5+
         wBzIAkQS7cnN4gg3GdFIcJG5Mt+fm2wXRJ7tgigwcvFLdIrYFFOP4frNqcRIAwDe2KIz
         24fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539666; x=1691131666;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yep3gNOHdC/IEIO0RTGnFZAhYzVI/IvD3JvcwBbBigY=;
        b=PPATWLfiRSWpWriEegRiivaWBg3DlWBy/CW2T5CegCzrmLvQQtgBQxv4ChPVgTIU8X
         s4PQqS6HxY/SyyYSwYe9sHKmVF15Fwl2oalEe0fVjHws7kO7IBsyOKBwJSGQw/omRjkB
         2VZ6ed9qfyEX3yBYI69fPMZ5ulGoqwjn8Vp+yjxCMx2haw/TAlWbGmrrISa1SzWqF33P
         vm5LtRzs1e4ohi45E+E0wi222Q60dsGSxtIqvvUu4D48ctPmwGZUIx3saov2PxHYsXy8
         O/ogxiNQJIpAnclLVnyyeH9HQyfsFGtHPfezbB1WIPgZAVn3l+k9ZyFRj/20rn+CWzRE
         93fQ==
X-Gm-Message-State: AC+VfDztA/vlA8sFY8tU/6qnnWCqBYzt8aru2pNblrJSqxgiVAfIVt1/
	R19vCTCFXSWE/4vr6TzijeM=
X-Google-Smtp-Source: ACHHUZ79L7Yl/inKBWy4mPLsmZ8hTWscnR36r5fHa7uxLxvMlmaHGbIkgWXYH3801RT70ojqgkkunw==
X-Received: by 2002:ac8:5f85:0:b0:3ff:22d5:abca with SMTP id j5-20020ac85f85000000b003ff22d5abcamr18050521qta.61.1688539666485;
        Tue, 04 Jul 2023 23:47:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4646:0:b0:403:4ee6:4de9 with SMTP id f6-20020ac84646000000b004034ee64de9ls3523816qto.0.-pod-prod-02-us;
 Tue, 04 Jul 2023 23:47:45 -0700 (PDT)
X-Received: by 2002:a05:622a:1aa0:b0:403:397c:9071 with SMTP id s32-20020a05622a1aa000b00403397c9071mr20750544qtc.63.1688539665855;
        Tue, 04 Jul 2023 23:47:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539665; cv=none;
        d=google.com; s=arc-20160816;
        b=GbfPM9FeBp+O8Zj+yNH03OTUeprQxelWS3nUTG9sRZ5DtJpZj2ikdcMAlFxSwP3gNN
         FtLFQ2MOz3v6HwKmRYhEgiHqAGRJlq/n77X5OWVrhAH47iz3WeXOKoBo9V7MqsNZih04
         L+mqHIuG3X9sN7I1hKnvrdfuYssZ+tMuvDwJpr1P/qli9sMw1OZM6ra21wXXsjTZvnoY
         mjiAsw9Tb94IJ01kwVR/F+TkWltJYRdAfoREM1UCIoY1wttviGT3C1XrtiSsZZXfa+KU
         29WzYL9mYXnXKD5sGmugobrXBypSFGUJneBWDgnYZbp79Vl586HDqhmVbRQ9WFnuykKy
         tPcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=plOr4ODqe5Xz3DL6Uh+cbTujIFbmD5PXzjQ29XXfu5o=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=llAr6r1cwchD3yyHSIvsQMZGrLEKZ+BtwRb6kKInPggsb8jfHciCozlZCYHFE5vPQF
         Rc7jE22V153+l6T8jpWTfxPC3HHtDa6SIm1zAuTC575Lrj4tEcrWDkKcgzEBkCUVJ+IK
         ajaFcCtE1dFn7QawvAbF0sQet6oJeTc+aEz3tG3g35Wdu7KgGZYr9JgelGaB/W3MOfGM
         3kCMhFBOxM6qafleyXMnuct9G9xTta+NzVRUwvT+X+sO59b2TJ8sjti4SGQl+kp5VTbd
         mvoRQKzQapQ0ChZjVeHDisxcYYstS04saoTp/JgTfWDoYfDAjszdpmknsAymaWkjPSnw
         5FHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id b4-20020ac85bc4000000b004035c106301si505061qtb.1.2023.07.04.23.47.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Qwqrr5468zMqB8;
	Wed,  5 Jul 2023 14:44:28 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:41 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 4/9] x86/kprobes: Identify far indirect JMP correctly
Date: Wed, 5 Jul 2023 14:46:48 +0800
Message-ID: <20230705064653.226811-5-lihuafei1@huawei.com>
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

[ Upstream commit a194acd316f93f3435a64de3b37dca2b5a77b338 ]

Since Grp5 far indirect JMP is FF "mod 101 r/m", it should be
(modrm & 0x38) == 0x28, and near indirect JMP is also 0x38 == 0x20.
So we can mask modrm with 0x30 and check 0x20.
This is actually what the original code does, it also doesn't care
the last bit. So the result code is same.

Thus, I think this is just a cosmetic cleanup.

Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/161469873475.49483.13257083019966335137.stgit@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index 40d5c603ce8e..d03baf1f4024 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -478,8 +478,7 @@ static void set_resume_flags(struct kprobe *p, struct insn *insn)
 			p->ainsn.is_call = 1;
 			p->ainsn.is_abs_ip = 1;
 			break;
-		} else if (((opcode & 0x31) == 0x20) ||
-			   ((opcode & 0x31) == 0x21)) {
+		} else if ((opcode & 0x30) == 0x20) {
 			/*
 			 * jmp near and far, absolute indirect
 			 * ip is correct.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-5-lihuafei1%40huawei.com.
