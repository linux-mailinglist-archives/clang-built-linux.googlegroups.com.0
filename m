Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBS4STPZAKGQEI7BCDYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A9015E22B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:22:36 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id a16sf6824703ywa.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:22:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697355; cv=pass;
        d=google.com; s=arc-20160816;
        b=x4wVeYHXdvZEo44KSrIuMqB9Z6y2eFZW5ckZa/lq2ay52gmWb2p1H6lY0RepDfDzCk
         SYPDpXNccbevPOPjHt0huISJRoX2aXYlqBAGAK3K9y7HlOt+PpxCa7CR4SQ9rnG8Fjbi
         gCLnQMRHc2LPWPzT5C1HRCKnpcQBGCN+fajVbWi4NOG7DgM+XOwS7XPE54RqEqFZ4BE6
         qQzUKUob0F8Ry4yDUjNtyULhuFsyRHSYNESpwT7yjsy3EGuju07SEDBs3MwmnUV/piCQ
         zfGC9If5CUSIeuMbdo5TlxTf+4IzyKB5+XhR/IMrs20Wou1TWMCBeyxMg0jnu+UUr1FM
         rBZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aXaLn9T1hiwO9QoqMysiYhjSnJLx2oWojcNE6fxWHSM=;
        b=MItnwV3VW+JdAcNvC7gHYW5bL1M3GT9Ki/9TN+0onNKnojhiPoGXWz+901rjtszZHk
         awpvBfnkzZAF+db4csx0c1grqwAtULOVMoPVeDeb826v9+ZB6jD+ryRwRwW46p0buLv5
         uuJHlkXJUEk/mVCvt+ED+7f4gFo2VRtNx8VQmcwdehsyWFwPXLjYmRMFHI4sm2LkJYJh
         +W/bcuDntSFTudWgGZ9tURo3gd/m1BojbrtfE7jrWMmCYjiRAnxAk9dpG+9mP6CFfmeN
         fJvTNSgemxPb2vNi56vzUxZqe8NKBOT8aBVnwCfViZjJagc+1oKSY2wrJGVtNlUOn0Ak
         PA8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bpsMnwmT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aXaLn9T1hiwO9QoqMysiYhjSnJLx2oWojcNE6fxWHSM=;
        b=XpS7odQobu9RTS38xUmIJfxFeenh8puMGsRW1ce3ydDt/L1PJDYKZ8dz+qsPXVJT6w
         KobH34VTcucOQSO2ME51uI5xV943YCK1Hvklp/UHcOpYxTeP7u4F41CsJyiTyVabu749
         nO2yE8PxXPnVGo6RT1gJtrRjyGD8UKehyoVuT/ZcX0aE/UvJlSU+VhxGISTzlrzFAXME
         4Xo0KOXFTGNuwyASp3QAD8BcZ8bJX6G61cG77DNomFD2bs64tHHi05npVS/Vef3i5z9K
         o0SuYALz9jSbE8W7lepOsJqqYM+b4irbEKXyIz+iaF9S5pruxHXvNd0iL5XdVPN6ckh3
         NZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aXaLn9T1hiwO9QoqMysiYhjSnJLx2oWojcNE6fxWHSM=;
        b=Scr8kr74J0H7HZMBm0H7cl68Et1sKnF2TdqIxhrdQAacAhWeNIMqUFdeopGe9oCIO+
         ekBx2M6wyZEUtNyXfraEt4l/lk+ay/AU56VCvP7hv/p4snMsdvTczXZlHla2HeAL2T6R
         xH8zWwgl5B2wIs110NicENA7a7kJ55NYKuNuzo/fF1MS8GQ6P1FC+jZWIfloo3eV8ue9
         Q5tDGF1wZ6/v74yg1BK1OTlTuWjKhoe3g2JDD3uzTizOdBcIOdIpuro8CmERWEzc1+7h
         LONdcN2TB0GrvRfKMuWB7Hvs98fBgLVgMjDHl+DckZqGNgN4J1doIHetTXM0FSTQwVWO
         ZEFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNeaF87z+HYphO8eNQHxOtwkCFKwIP+PM9qC7rMnnIQBRLAP0g
	CpEHAjJGoWT7H4tCbMQ0hZk=
X-Google-Smtp-Source: APXvYqzzrw2xZKGNZRuPVBPapATGw3Lrazz4IrC9nucTAW6KghLmamREN/vE4GPJ7NlCeAS8mTsUWA==
X-Received: by 2002:a81:4646:: with SMTP id t67mr2880058ywa.371.1581697355090;
        Fri, 14 Feb 2020 08:22:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6849:: with SMTP id d70ls529147ybc.8.gmail; Fri, 14 Feb
 2020 08:22:34 -0800 (PST)
X-Received: by 2002:a25:d211:: with SMTP id j17mr3517927ybg.425.1581697354787;
        Fri, 14 Feb 2020 08:22:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697354; cv=none;
        d=google.com; s=arc-20160816;
        b=hPKY9HdMwCyQEnPsRopeo661TM7J/8/T7FJ+OeBGOqz6lLzLyX/9OUkQCYy0MF8gb5
         uPBoTA93S0iAPd2r78ezZyIuz1wOhPlC8TNcbsF/0elH8+BD8PbdrsoNVJrMYh1AaRWi
         xFbY+s/S2Nxu2NcYl2uJKjpvjN9cCLUzr57j5SuWPbRxkTT6CLRY9JtwIAayRe58aRjM
         sorpYCa24k62uNhpmkZHhXEafzC+U2bFy50+G1RoxD3fGyqoo7Rhxu1wQu9L5/vgosjZ
         uMW+k5/3jf8qnsR4tbUWlalOj97yotvQrPKIrH5Ka5qpItEnsYirEsBiaxf6OiL35Ixh
         dFTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nNv5CWEKhlbomAkpvyKNmuLlCwc/Mn81h836QvUw2bY=;
        b=Xed9P2HGxnABWDGfq2h11MFQ7S3pddh6XQl0ktNDQ8csi3T07/YfWQw89TDA/B+OmZ
         TpZX3ac9lpKjKjPjEDIfhZ4jM1KEEb3cWIq//2xPTjqdWvEP/iq2bu74cxv1OectmqNU
         WK314rQfWPB8/XAZqYfafOYkGli601gdBBUr5sT8FShaOict3ODDbAmCk9atTtBgvheI
         1ohyxPDHixbn/ixyOv8p8suvWigoBmRiHwJxJ3w5FJnF8iDKuQnfLZam5yT2Yjk2ni0R
         JTcYCW2K36UE8k9AadxIqees3MfCrd2AiLA0yUs/dMphEb7NyGOAZpg1RFdtcKcxNkwu
         1VcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bpsMnwmT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e81si24476ybf.5.2020.02.14.08.22.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:22:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF43F24754;
	Fri, 14 Feb 2020 16:22:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ezequiel Garcia <ezequiel@collabora.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 056/141] media: v4l2-device.h: Explicitly compare grp{id,mask} to zero in v4l2_device macros
Date: Fri, 14 Feb 2020 11:19:56 -0500
Message-Id: <20200214162122.19794-56-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bpsMnwmT;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit afb34781620274236bd9fc9246e22f6963ef5262 ]

When building with Clang + -Wtautological-constant-compare, several of
the ivtv and cx18 drivers warn along the lines of:

 drivers/media/pci/cx18/cx18-driver.c:1005:21: warning: converting the
 result of '<<' to a boolean always evaluates to true
 [-Wtautological-constant-compare]
                         cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL,
                                         ^
 drivers/media/pci/cx18/cx18-cards.h:18:37: note: expanded from macro
 'CX18_HW_GPIO_RESET_CTRL'
 #define CX18_HW_GPIO_RESET_CTRL         (1 << 6)
                                           ^
 1 warning generated.

This warning happens because the shift operation is implicitly converted
to a boolean in v4l2_device_mask_call_all before being negated. This can
be solved by just comparing the mask result to 0 explicitly so that
there is no boolean conversion. The ultimate goal is to enable
-Wtautological-compare globally because there are several subwarnings
that would be helpful to have.

For visual consistency and avoidance of these warnings in the future,
all of the implicitly boolean conversions in the v4l2_device macros
are converted to explicit ones as well.

Link: https://github.com/ClangBuiltLinux/linux/issues/752

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/media/v4l2-device.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
index 8ffa94009d1a9..76002416cead9 100644
--- a/include/media/v4l2-device.h
+++ b/include/media/v4l2-device.h
@@ -268,7 +268,7 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 	} while (0)
 
@@ -280,7 +280,7 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 })
 
@@ -294,8 +294,8 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 	} while (0)
 
 /*
@@ -308,8 +308,8 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 })
 
 /*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-56-sashal%40kernel.org.
