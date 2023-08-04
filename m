Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB24WWOTAMGQE3S2DLKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CA73376FDE1
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:57:00 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id 6a1803df08f44-63d10c323c3sf20834266d6.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143020; cv=pass;
        d=google.com; s=arc-20160816;
        b=d8EMxeQioeHJoZDx3lFNeHvELXXM7JAv22WUzleNgK3ASL5cohXrwXcGlpd32BmMRQ
         bI757VfR9wXIzV2FnpTpdTLAYHOOeAg+ak7ZmF0aWn+tYpN3UTwVKq+2fINSPCWrXq4H
         xGi4/C8iYx/jhMcI2DyO8nf2OJA3nXZ/8H2YAuq9IuIGULqkUMnV0XHv2u7GcPmDKli8
         hi9Ms9lbMdvv/2jFH67GIPXKiyG4QMSNY5eSXml7IUpyXq3WI60xvY5b5T3zcXVY8f+n
         uM3Gt3V3JYcSRJNh9nYRSG9yTuIoSIgq1OhVNZDQlJ+yFFk33Fpv7HRBJm/hVehLJU8W
         +Z3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=3lI6G6rZK1DaBOo7yzYOg2MDaLgVsaFjo/ea5tG8dvw=;
        fh=M+RCfsu39+TOU/tatfWuYpVYu9gEJhXsVZVrt5KCSJ0=;
        b=V8M6baxWoTsDZIZjZZWNRQkPs9q39DYkH154eByMQxD3yK1UKWZn74NQqa1HvSIWmX
         rdm8niZUUwaZ3oeBG6zuFVMEoinIKgGtvYbqN2ZDf3ilys0ePXduWGW1ZWzAZYLNDLQp
         HIOcdKhfSFgTYC6bYQbWNBka0SAgoo/pp0x9SaBUJiW3F3nIXdc34HTrMm+7a+B+i7Gz
         tz9YJhAsZU/NDia94EKtZiZl866lA7ryfuat2nrqvUTqbDS1mZuVGU9uvr/MUMAgdjDd
         YIkNO7La2/qySfqrQrB7KCS2Ra3QmoSsK0tVPdCzbhFF0laevEAysrbQAAXcuIK7hPCm
         c2GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vNNvRhKA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143019; x=1691747819;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3lI6G6rZK1DaBOo7yzYOg2MDaLgVsaFjo/ea5tG8dvw=;
        b=fx/epDOsJvRu/xKxICOW7qk5hslmHQcVSDX6wY5lOdRq0dkHxO3zT4ayWdKtH+4tua
         +8+xT1dF8lMTfhb37hjr32H8H5Z+1CLE4m6ZPx7zodGtLLR6gpd32FZGY3YSSTEATr5j
         KlFNLo6kLiVDSrqUHywKo4afHfebSgJeg9zmJo0y5/u9xs9jGGXnA4y9h0k53n9FMzBX
         7xK1Xo2yZh54q91crCsdOv2NfoI+97JRglkmfBEpvC0h5QRP5Hkzlbrt9EPDqF+3i5ZL
         qWtKUy7VVR6igIUW661HwnlZRC0FPdJcbZBxQyqx93zknAmd3DBo9Zl2O4xAkmcVUlhY
         3pPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143019; x=1691747819;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3lI6G6rZK1DaBOo7yzYOg2MDaLgVsaFjo/ea5tG8dvw=;
        b=dhp7wvArrwsKgwaOrbL7WXBHuGRgmTTj7FNR4nxbdiAjdstBTRC7A+A3/NiTPGoA/K
         TH0X3LEkGwVMPlt4g8Lbut/P6GN+pZx2Nr4cfAZR3QWuc6UDy4trIfKkPcm4DWXhYwT9
         WgEKjeenp9Mqg8Qe5I6Q52m9NAzh5kksIBAMy5qDR7pybnuFnOv0tlLfJL1Kx3BG06al
         mAapL2bQW12iPw85jOCegRpS64/uBjIXxkotoZWRpKSuwPAlrqHvRmG/5tGlnteJEtgD
         qGEiDz0NnKdV+5FV3XeDV9mYD376btW0h3MQIf36UbwHcLbXZjgPdc/H3wOXQaVh81FI
         XrsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YyzSn2MEyXw/XuSTIhH3VrIFz6CSjZykBbW/a69vEH7QZosvxgW
	pVHoYM6rdbNPNm8csritvew=
X-Google-Smtp-Source: AGHT+IEQcGuqBHiJUv6ay+/FP741E4G5hCsfTIsCew0G7dveCmUq1jV1XDaReEXs+HV0cr/ezdz98A==
X-Received: by 2002:a0c:b310:0:b0:63d:318c:7dfb with SMTP id s16-20020a0cb310000000b0063d318c7dfbmr1012196qve.13.1691143019719;
        Fri, 04 Aug 2023 02:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e3ca:0:b0:634:7d98:d337 with SMTP id e10-20020a0ce3ca000000b006347d98d337ls440542qvl.0.-pod-prod-04-us;
 Fri, 04 Aug 2023 02:56:59 -0700 (PDT)
X-Received: by 2002:a1f:4806:0:b0:487:1926:5aab with SMTP id v6-20020a1f4806000000b0048719265aabmr583322vka.15.1691143018951;
        Fri, 04 Aug 2023 02:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143018; cv=none;
        d=google.com; s=arc-20160816;
        b=d22RGzCr2S9baND1dZ9nlLwzNZIXKrRJeQFvCeRx00DJ/dQhrt7wOkvwAc7a0zk+KQ
         WHqIFx09a8FXD5GdsAuU9fxFD7kh00aigmFcrT82RQnA05JjTi6tIdMihCiJ6JBTaJn5
         uY2G2aB52tAzrQz4HlpMQ+b8HGP7pb/2YsD4WMsmXgS672XZrytkfCNFt1z99Va9dFx1
         fTXVPd4GYmip1/mXd2gLfSOJ57/APTxopoZW/WgYO+DD28Ty2/HQ8yrX39awyvBWYeHP
         TAmVLDobPeqC10IB5NHbI36oxqQNrXH2gNq8NNBGmPRcG1sO8RowrUnaJTdgFKnGtvz+
         zytw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=xMmegpCgPXTjtK66Zdyyp3AV7/pyola93ivMdodDtoM=;
        fh=M+RCfsu39+TOU/tatfWuYpVYu9gEJhXsVZVrt5KCSJ0=;
        b=PE5HdX4u3iD8aOM1TNeSxsfu7XIu/AE3biMpqp0IoVbjYF1zvsGes/lsUCeELdAPck
         z5Nby+bIKRFMpgvg97PLRwNj3E/H5NIbU4OWPfcQlV/9flno86G3lndEU6mdrglwqw4n
         yCtwvgKCZCAOg9HAOjs84dbKUcxpEKT9hnuEWqlyq9XIr4gT1MXkvfFomsx+Zy5ZU0zx
         KaL2t46qIt6qb7FCASDYMf1aUKEIcjTUjzNgH2GMUIv61/Cloi2ZesC436P9jpHf5nHy
         MbPkP98UW1sg3l+RabBrNu/ehK42XpJYc+gReAA6JanUAeNV1fEeFTrovrdmpMXPjvFZ
         Xg5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vNNvRhKA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id n10-20020a1fbd0a000000b00485e5a835adsi318724vkf.4.2023.08.04.02.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8A84961F81;
	Fri,  4 Aug 2023 09:56:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9545BC433C7;
	Fri,  4 Aug 2023 09:56:57 +0000 (UTC)
Subject: Patch "x86/kprobes: Retrieve correct opcode for group instruction" has been added to the 5.10-stable tree
To: bp@alien8.de,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,gustavoars@kernel.org,hpa@zytor.com,laijs@linux.alibaba.com,lihuafei1@huawei.com,mhiramat@kernel.org,mingo@redhat.com,namit@vmware.com,natechancellor@gmail.com,ndesaulniers@google.com,peterz@infradead.org,rostedt@goodmis.org,sashal@kernel.org,tglx@linutronix.de,weiyongjun1@huawei.com,x86@kernel.org,xukuohai@huawei.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Fri, 04 Aug 2023 11:56:42 +0200
In-Reply-To: <20230705064653.226811-4-lihuafei1@huawei.com>
Message-ID: <2023080442-penny-exclusive-aeb6@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=vNNvRhKA;       spf=pass
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

    x86/kprobes: Retrieve correct opcode for group instruction

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     x86-kprobes-retrieve-correct-opcode-for-group-instruction.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable-owner@vger.kernel.org Wed Jul  5 08:48:03 2023
From: Li Huafei <lihuafei1@huawei.com>
Date: Wed, 5 Jul 2023 14:46:47 +0800
Subject: x86/kprobes: Retrieve correct opcode for group instruction
To: <stable@vger.kernel.org>
Cc: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.d=
e>, <mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>, =
<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>=
, <xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.c=
om>, <rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.or=
g>, <namit@vmware.com>, <laijs@linux.alibaba.com>, <clang-built-linux@googl=
egroups.com>, <lihuafei1@huawei.com>
Message-ID: <20230705064653.226811-4-lihuafei1@huawei.com>

From: Masami Hiramatsu <mhiramat@kernel.org>

[ Upstream commit d60ad3d46f1d04a282c56159f1deb675c12733fd ]

Since the opcodes start from 0xff are group5 instruction group which is
not 2 bytes opcode but the extended opcode determined by the MOD/RM byte.

The commit abd82e533d88 ("x86/kprobes: Do not decode opcode in resume_execu=
tion()")
used insn->opcode.bytes[1], but that is not correct. We have to refer
the insn->modrm.bytes[1] instead.

Fixes: abd82e533d88 ("x86/kprobes: Do not decode opcode in resume_execution=
()")
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/161469872400.49483.18214724458034233166.stg=
it@devnote2
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/x86/kernel/kprobes/core.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -464,7 +464,11 @@ static void set_resume_flags(struct kpro
 		break;
 #endif
 	case 0xff:
-		opcode =3D insn->opcode.bytes[1];
+		/*
+		 * Since the 0xff is an extended group opcode, the instruction
+		 * is determined by the MOD/RM byte.
+		 */
+		opcode =3D insn->modrm.bytes[0];
 		if ((opcode & 0x30) =3D=3D 0x10) {
 			/*
 			 * call absolute, indirect


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
clang-built-linux/2023080442-penny-exclusive-aeb6%40gregkh.
