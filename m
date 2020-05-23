Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIV3UL3AKGQEDX5RD6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C271DF46C
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 05:51:00 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id s14sf6233554oij.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 20:51:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590205859; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4N88jHNE86crqa7jlo5WDjhYxvm8zRUdgLnOMCvSPbGvmpbxj1fSzC9m3aku9cw0X
         2kYGdq2Ye4pHtkjz4oNlWzs+wtmlfPHVR+YhJjNVcUxuGqGWqx7wmtOS2r/ZbPq6FjnF
         8VerZ/YCtutcTY+Hnj3WqR/mvnccrVqMGt0BE6ahfyA6x/SOgBg1o6SEQLywWsQnbozl
         3YVNj7NZTc35fH8BRexAOp7cODNsUiHtiPDWgfXBHZI4IH8qkBbs+u80RHncy4Rib1/h
         HFmvV2ANZEJVjzByOimRmYhKQQpTUVVmCb1cPXWF6rhrlQ3AvKdesnWnvlQWAkpzOpFO
         lSwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ggeGx3LztlSSL97lPKvOjlwn7Degr1dALNiuDrbdW0w=;
        b=T6VXe2yBw2pbKitsMcyvC1xggPej0iv2O/kXnJtBJeKdiCcjb6rAj2t9aevpts6jnt
         jr+Q/YzYc1QKKEZ7RWIXLlkYcY7tpXsJOLKkIhOs8PGkkMQNCMEtJXUk0xPwEGytd2bU
         BdIeAMI3aBNExjiOgGMyPqzMp3/DwWlPGNcnf2aB3xU0hoz3QL6y2BZCjiEnRo3aM4zd
         T+pfrl0B06i4sgiyzOK6Yk/weQDrLdVwvmRyEezLBatTVLCO52nXPCX+u1Sk2DF/8Voz
         3f79Zwo/rihIkOaCHNO4hTbxFNAagfyWh33guZvgoM3+DP7qs79e8TMfDsdCyZiXCPX3
         zULg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jicZvPr0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ggeGx3LztlSSL97lPKvOjlwn7Degr1dALNiuDrbdW0w=;
        b=P0g9xOTN3CyYiNUXyXviplD8raIEPYzQgYG9KQZpr1qCD+TR+W0zZVUXsVTGdPntUk
         KlFtyJiwv7071MiYrxqRxf0SaVH96234Ap/aEZCj31sv2mYD+agbe4lkZePf0R0FmlAm
         SzxqPVwAEFbThSqa6z3aNhc4qOf+zKmsT4KpqcI3XoCgw48B/XzQQg5PK4e1rl348Rm7
         XT8YF74aCV+IMx4TdB33UJ32SEXNqrKxeu5w9MvXLos77GXlyuICIUMRM72wyXY1s1QA
         zRjqt6VvGItUFmViD9T5g2odJONElW1W5PIGe/F1KbvLAWKyb7sTXdvQ+Rj+UonWW3Mo
         zBCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ggeGx3LztlSSL97lPKvOjlwn7Degr1dALNiuDrbdW0w=;
        b=O4tdQqBL3Y5WLQpL/ZcJmTzNfncB5izaTLpWsUnxB7ltILinbRCWeOYWMPIUZ1XR7R
         fkwd8zjXT444bSNZbOl0infqgvjioOFsETrYfRUoMsjAIC+NffOo1gDzwv4Z9aOeG3GQ
         sqr3Drv/q2OssYWWqsBnqQm1NuCjCQgau1crKwRt1A/RhF9dlUAxRAR6TUGZt1kC180T
         ASLGpUXjcVu4xMTmwFSLsAwWcSNlT2g/ZJAsAokoDxV9dp6384Xp2nvusi2J5NoA6AmG
         hBLppGPj84GVWd6YmwVPcG7VbR5v/APM7k1LNEPgeh9tRkzS/o+AzDmOfwOLjdYyUvBH
         eVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ggeGx3LztlSSL97lPKvOjlwn7Degr1dALNiuDrbdW0w=;
        b=rK8sNIslARo1K+MF94VaJTv9VBST/3is4RXE9R6OtDEhNGk0U0li0nqkgJFcOz8n+y
         fi+eB2N76TzP7H18pIn4UvDylypq20D0HLm1hk+kkh4NjK2sQTHOLFOA0ytd6+o1NLyf
         WvcvjwddEuq7+bI/iqNA7WAAezssMZcEhThDbeD2pMbUw6WSM3jrAPOMDbohWGsVrb1L
         z2NPzuICIz8hlYLoM9XTcEBiepaWqfuYBBoOeROFFQY9980SyoGDEDvSnN9/zS1i4ldo
         SrNKxd7uENyPr/e+i+4ubDwHlRM3FSabc3b5QFymSM/m7oBpEGEtrHkkpvtKa5rqyhgg
         8Y7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z8GWx1fjPOR0RcTTinBUUV/tpMULBoRvQgwrzmEyLAldg/qXF
	diJMLXsrxcJpWARrsFtMc9s=
X-Google-Smtp-Source: ABdhPJzfaVea1Jhyt+6z3J1Qb0eKuF5FKNYBljchqVQlUhKFRmhZpCPDU9S/NuphBYs+Mig4tpW6fg==
X-Received: by 2002:a9d:62c2:: with SMTP id z2mr13182423otk.178.1590205859091;
        Fri, 22 May 2020 20:50:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3987:: with SMTP id y7ls658079otb.11.gmail; Fri, 22 May
 2020 20:50:58 -0700 (PDT)
X-Received: by 2002:a05:6830:18ec:: with SMTP id d12mr14065415otf.139.1590205858674;
        Fri, 22 May 2020 20:50:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590205858; cv=none;
        d=google.com; s=arc-20160816;
        b=Gr/4WDTYo1ibpn/NlfjdeFevXVbHj3QSfOxO/IDqUa78UY5azDzUOj6lJ0mHdrOPU8
         zYAN7WSd+oPBo2eJ1QPvz1o/ysEhzkWdxFeCtbmasRZzUETdurCRnKZxMgE8NI+RBVna
         OE5MEF2uYSBch9LR7PlAeYJyFg4foC34DqeZUaaNrBnDjR6iHIFoCjnjlID0HT4uCwNl
         xe+aw+/2x0CyDD2PnNeNjR/oSqyTbmf+v2nxtjIGBtHl2QJ3YHmKDbyC5VRP2rcC5/VP
         vqVbafPgOamGGql4vAE5FCCXevy7jEsChS6yKH5SQcZ6jb2mWShyi8JkXAodnknMoXd0
         YFEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EPafhH9pnJaTqstx2UvGSdDHFfhLmyPCCnvVrZ2DidM=;
        b=g2fqIA1vvwkfd3RjUkW6V/BAUL7qlzZKNimvnfyjyZwhMdC8nxC1uhKZcAiMpqXSuv
         EsT9tiSre9ueQaJBqNFupntyjTLGwfO62b2S3X7q2UNfu/11UCPcV+1XqtKdtu99w0R7
         QFnpBAN2hUriU30sG6NGdy5Nu3rT7VzM4gjG8dwVsZngzW38jWg2CBeR+72VGCZFJNti
         P9cIiAEGn0i4xYXtbecrsqtwKSANfJKb54gd99/Ony1tKF+dE+sBNWlpW23ozwMorO6s
         dITVDDzfYmUFPKiG+KiRWSWUWUNpAhMJnt7qDwIGPf9nj6WbutFMXjHzxbLZOcjNRu3A
         NaHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jicZvPr0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k65si975645oib.2.2020.05.22.20.50.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 20:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id v2so1005968pfv.7
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 20:50:58 -0700 (PDT)
X-Received: by 2002:a63:5a07:: with SMTP id o7mr16785320pgb.450.1590205857912;
        Fri, 22 May 2020 20:50:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e1sm7805171pjv.54.2020.05.22.20.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2020 20:50:57 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] phy: intel: Eliminate unnecessary assignment in intel_cbphy_set_mode
Date: Fri, 22 May 2020 20:50:43 -0700
Message-Id: <20200523035043.3305846-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jicZvPr0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conversion
from enumeration type 'enum intel_phy_mode' to different enumeration
type 'enum intel_combo_mode' [-Wenum-conversion]
        enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
                              ~~~~~~~   ^~~~~~~~~~~~~
1 warning generated.

The correct enum to use would be PCIE0_PCIE1_MODE. However, eliminating
this assignment is a little better because the switch statement always
assigns a new value to cb_mode, which also takes care of the warning.

Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
Link: https://github.com/ClangBuiltLinux/linux/issues/1034
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/phy/intel/phy-intel-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
index c2a35be4cdfb..4bc1276ecf23 100644
--- a/drivers/phy/intel/phy-intel-combo.c
+++ b/drivers/phy/intel/phy-intel-combo.c
@@ -199,9 +199,9 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
 
 static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
 {
-	enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
 	enum aggregated_mode aggr = cbphy->aggr_mode;
 	struct device *dev = cbphy->dev;
+	enum intel_combo_mode cb_mode;
 	enum intel_phy_mode mode;
 	int ret;
 

base-commit: c11d28ab4a691736e30b49813fb801847bd44e83
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200523035043.3305846-1-natechancellor%40gmail.com.
