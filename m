Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO4NZDWQKGQEQY32BPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F587E3D0A
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 22:17:00 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id k13sf3450281uap.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 13:17:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571948219; cv=pass;
        d=google.com; s=arc-20160816;
        b=DDD8+WMu6apYntCMkY/8msyRIId3TXAIysq79dwyNaUKwR1Z/AriD119foy2r9gcrV
         NXTaaIGy1jMZhvSBjB/yfC3mOezxgRPHO8tTPL0YRisfcfe0nwVCqsSlDuZ1hVJmS3hb
         Rvm4tuIPaOCIDaiHqn+8rAEvt8xqyppcC0pL6pe4a2TD9e6HcXd7keVmi2cmcV1JP9Uc
         gF2xnN0s8SPalTtEdGSNx9sugD9yrA8yIHQdziFofw/JoplwqUaDVpB7YAlrErteh2Ux
         PNPcRVp0mfXMwNINMKb20Qd3m2tMQJ38mHu47qkN/bK2PzN9cfMLOAhl4Yc596RqRym8
         7fCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=eON4Uo0lfVSIdDRg32DD+9BGqsk+qCF85z0oWLa05vQ=;
        b=DfzympUALo9o5LFJmsinGSKdOt1EOBEqF+VqHySA1c1Io5L0LCwXy2P6qojAU73CNk
         0Qe1L4C3dTvhcySCo0vYbgN0Id9vz6M7Xn0watYLtd6pZ4Hs4Wm7qnzbK3BSH9w3C7KJ
         XKseSxiwDmEmJwAazV+W10biEBySxLWcDvKsHJUghJnfcRFvSAh0ECPLjpG0lcB9SKnG
         ELoLFqHknHIEw+i+cmMp+7hLVmezTAg6GGZsGLc63yyvZm+S+xyTIJhCTMU9SqbF45Mq
         OgzviFDu1uGXfM1y6te35IJDsCY0+u19LVmyHgFLfCsH5KeBNVpdiVq07KIi/NP1Ttjg
         h4wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TknIaVe1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eON4Uo0lfVSIdDRg32DD+9BGqsk+qCF85z0oWLa05vQ=;
        b=ArfJ9bLtxFC11RyIhTxMyVB6XamdQ/raWur4hUbnSnA2y+mnQvf66KXmIXxYM4QSkm
         wUT7+kUt71FtusvXWiORmeasQK43UqzmHQMcF2RjhE0H+ywQZWINH41O7PRHzCuX7jGV
         WSazrwRb0Ig71M6MD8grRCwxV4eZ803vF5iKyOF/xucP4fo4WHpltQB39bXXnfHblc46
         EX+qrNftLKudAombmKncoY3+7XFB/oUQNW6C7zS28IF4bQY8WjFHiey/TZCiK304X1Pw
         Io2B8A2oOzNVvbCeVvQmtUZ8kKerMoAyJJ8gTxK6sdPu58u4aGN5LgfI8tLYIQfIDzav
         Z1qA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eON4Uo0lfVSIdDRg32DD+9BGqsk+qCF85z0oWLa05vQ=;
        b=q45jofn1n+rpRMwjyBfadNnOjIonSMCfTP+yiOScLqj/nXz9F5VJ+rHT6fv7hOwCuo
         iAJvPfKCcBPfP3wI34l1uW3C2wyvN1rAr7Hys6Y0YpaPj26ozHdt1EjujqSWuzQIihLB
         AhPy66EnI7dnDrRBYE5B2Rcu3R7RAU16jgh27vI94xIv4+/+vZluq+9zXA7poZEuqwka
         Td98KpIFi4wA5s0A66OkvDOtJ8vwc/mYmr0fZsObvFtOMOf5mtXh7T3qbhZfeLpEBcfg
         /tzKLui5mdhakuR4JO7HdPsOvdtLlD7GmDz3lVugcuc3rFAPUXf2af+RuFxkiu6uP6A4
         WmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eON4Uo0lfVSIdDRg32DD+9BGqsk+qCF85z0oWLa05vQ=;
        b=VsLuYINbl1G5qV9tBb5VtPodg/Ez6ejmpTymJG3d9KchCknKsePXqM0/d7uNelOKuz
         gNF6M/pA/PqoZhhdlAyj3mPb/os4A22hjEW4Dze+XlFl9+XhULvPqHEyBYVns9ljG4bU
         0j7d1PdQSRppOS2crwiRIIxtEGmsgYmgR9eEx4SHVXW+8CEPGaPft2/nrd27Zik5X25j
         FDxgkB+hksjXvhhsaUj/Ctt/1sx4Jpp35NpnfDNm8TmAIGVJ8r+CRNw9KJLG4y884P1u
         jPwmEs7wM9644dhmT563VRud16ZFAQKZUzrcoT7YDavjeDNHlI23mSuTC9KqGtYwA99X
         Gf4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVZIAQrfMivY/5yadtxzr7l6d2lSpy53E27yz55k9dyV3qHMcD
	FkoWb0D836Z8hoFCfvfDVPU=
X-Google-Smtp-Source: APXvYqwfWNblZaiaqJHdpspC55cZi6ZPI9LzrBFCOfD0KwGmHryCUQdd0hbs1JrMEoRDNdeNotkRBQ==
X-Received: by 2002:a1f:5742:: with SMTP id l63mr139368vkb.38.1571948219503;
        Thu, 24 Oct 2019 13:16:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e28c:: with SMTP id g12ls721920vsf.11.gmail; Thu, 24 Oct
 2019 13:16:59 -0700 (PDT)
X-Received: by 2002:a67:ebc2:: with SMTP id y2mr10354807vso.191.1571948219166;
        Thu, 24 Oct 2019 13:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571948219; cv=none;
        d=google.com; s=arc-20160816;
        b=WXF0rOImL9KqKW1ht5f7nkkudTdUXdl5if5mSjCrBvfRlC0r8VKidyCWJWiGGadz7d
         k2XnHByq0awG21wATMA+Lk1H3R3zHWfd5ek8NATRS7x8rVPUYxC+pF8w4pips31zP2kz
         bH+nt057iOQEElSQgVE1KOdpSNwhf4bXAjSf6Zu4WUecTEuhXKM+lqYY6EdZ2kG1QKlk
         cgl3CP35f4zVDjXdi2UPNIDLHqCx1qP9B7BIT70xyP5Bxub8c8eaJlNRumhHhRgJSmeu
         ORfyWP/i4Cei+oIet2ecoZggKjPZiRH/bRhwvrYN8sXsoJy80xB60BuzD0LrgIcOEimx
         iyzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NoDa2hDhS4AMPTGgcpEaE/wDOgHtq9oF44sew+cusWM=;
        b=CW07Ffci5xZ/IfqiutD8EhKQODdSyeLBoL1Bgo9ntv7tIp8VAZJcvqOx4PLZszxLZ8
         n2n58x8C49Ouo0Yg3aIVBMV1swbzRQLrp7iyKfYXCJll2AS/05P6PmtCWddSZiDiMRdW
         7Fms5lRQleI9Eg0CtoSxaEc9DGjAemwICqR1F+4Q5rSWK8RjfE6y7L++K24JQC1dcyEu
         hlSdPquqabSrlab9ChOxAj22UJj/9XQr0OH0pibzlC4o6bXlKkNvnStEtyd/03wRQkxh
         HnxG9UCq2kmAQh2aJrEHwXon1T3xSgvJOqnzlAofljuuB+dnBb1lPevbeEDZEKT8tY8t
         CkTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TknIaVe1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u206si1194901vke.2.2019.10.24.13.16.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:16:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id o205so21772891oib.12
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 13:16:59 -0700 (PDT)
X-Received: by 2002:aca:4584:: with SMTP id s126mr6348066oia.21.1571948218335;
        Thu, 24 Oct 2019 13:16:58 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z5sm7323655oto.77.2019.10.24.13.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 13:16:57 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] media: v4l2-device.h: Explicitly compare grpmask to zero in v4l2_device_mask_call_all
Date: Thu, 24 Oct 2019 13:12:41 -0700
Message-Id: <20191024201240.49063-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TknIaVe1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building with Clang + -Wtautological-constant-compare, several of
the ivtv drivers warn along the lines of:

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

This is because the shift operation is implicitly converted to a boolean
in v4l2_device_mask_call_all before being negated. This can be solved by
just comparing the mask result to 0 explicity so that there is no
boolean conversion.

Link: https://github.com/ClangBuiltLinux/linux/issues/752
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

I am aware that there is suddenly a style mismatch (some macros using
!(grpmask) and this one using (grpmask) == 0) but I chose to display the
minimal fix. If you want me to update all the macros to use this style,
I'd be happy to in a followup patch.

There are 19 of these warnings in the drivers/media/pci folder, which
can be seen here:

https://github.com/ClangBuiltLinux/linux/issues/488#issuecomment-545218125

This is the simplest fix but if you all prefer an alternative one, I
would be happy to see/review/test it. The ultimate goal is to get
-Wtautological-compare enabled because there are several subwarnings
that would be helpful to have and right now they are all disabled:

https://github.com/ClangBuiltLinux/linux/issues/488

 include/media/v4l2-device.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
index e0b8f2602670..8564b3227887 100644
--- a/include/media/v4l2-device.h
+++ b/include/media/v4l2-device.h
@@ -431,8 +431,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 	} while (0)
 
 /**
-- 
2.24.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024201240.49063-1-natechancellor%40gmail.com.
