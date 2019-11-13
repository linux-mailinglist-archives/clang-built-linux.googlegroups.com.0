Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4WFVXXAKGQE22Z3SGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F90FA167
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:08 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id c10sf651600pgm.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610226; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmbjGAfdgP2UkeBXeDojgSti+/6FF7kH09SxCMShW5cNs7XLc3MgOfuQr87JixqpbR
         AMhr0z1B9yGCpgK77O0hdd67aXOwlYtcgHm2gMHVgY6YT916CNQWaXSG/hv6+E3566pz
         7bv3xE8ew4wg3IhXC/LdeNPJYlnkKflL3O3811pGzK+Av4HXRhJVP+doSRnfP7YAZ4J9
         FAhEHRo7DioVJ1ge8RmDTOL2pwizTCPm05Xqo2S3RMl+iah/ybAvVFUQYK4lKW/hpPCX
         GgScVkARzfdG9/duV/gCxdupMcjbruwiWgwdPlgSdCMxCcOnLy5H9WjCb0MQt/vh6IyP
         O2YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nqa+So8VY5aRSquT+WLVMeGVnRYZIpbI88e+4aYbZLs=;
        b=HufZuxh2gytWNjSI7cdg/1gEptmM5NB6WPfWBD6ixWU9mnu1Jecj+MPlFVRSzgW92c
         qH9bSsBh+aK5yHYmzrAcb9pzm6C+oyhkhsV4wvejcRM4cRTchVgDJC/8USV9WzV2gBGb
         /4cQdBdSA+XrH2TN6EhGebbRjkajr3vnNkmxKmBcvo9F/kgU0xtDTkekut3xK9KHr6fM
         bivx52jnMcG/AjZOHDLpkJGHlU4f8R7pVAxVr7+XO+NKUP8OV6I5v6fB07Cgkdo8w+W8
         vauJiTYToeFlYge8cgVkwx33EpcRToAZnLP8AXhdssi9y04gBfKIogHOfTrwpUKKDk51
         SP4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L0y6fM/J";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nqa+So8VY5aRSquT+WLVMeGVnRYZIpbI88e+4aYbZLs=;
        b=mWU5x180G7FkdNdusWqLH6uNT8cf3YS3zY23IIFh603TjLkWRe4V7+63+Sa/fD/F67
         cfmxRyVi8rLFYzFJikvdDEFPWHHTphTa9lDIfs8y4RCH6YvFnY2Qwn+FHWS7w1WUIayM
         E8zHBjkpRG3Oz078vbGXcgWP53TIkNCEYIMwGHAHXHXP7gi+FuV6qeM+EdOs+BpNkty7
         EGrnI3t29+rYKpx5+9J6lRIbcxwG2h06R3jvCsscLE3MvowyedbltMIrzAyXx9pHn6Gn
         AlL8nccBe52lElhZllxmQ11NEBfiKo7dYjOyA42Dzj7HtVTNn9aqy/o2RJe+nGFkB/MO
         y/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nqa+So8VY5aRSquT+WLVMeGVnRYZIpbI88e+4aYbZLs=;
        b=k2kmZO0OmS/IqXN3jer8zvffwHSRy0KdLzNp3SJiqNbvMEfh+y9DIJUJQTWaCYmz8n
         yioy8CJh7sR6PfeW6v0bUfTbjWlejBeRRtfg5d7ZDIH2MPO/AwxZ3ORlqsR8ub/L3VA0
         d3oXkj/wyVg2JTF3PhVrArUHk7wswFFjDxvFGiUs92g/hadACqBFaWSn7dFg1ns2cG30
         mG13L0bHL3BgdMGVYRMTVRN9ssOgna/sxVmfeUnyemPKKXKdOKvlhAmbA5o3PYb3z4U4
         fBYJjXSzLxgSTaN6bre/EaFu5yB4f89p/iJuh2M2Zf0AiMHF3yZJAmdAfKn9TRkKWkLU
         OECg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX7VkN9R94oxpJLbSAEJ4sFn1NAi0j7TLwqvA6k5nAL1kGHBsVJ
	GdgB/0LyhR9oe8cdKxqcgCM=
X-Google-Smtp-Source: APXvYqyK0zEfQVYg1gjwD7zSSvcrnRhfws8XhijFHfIdyTT3deIRataaNST1lJkeQnlDISF2t1XABA==
X-Received: by 2002:aa7:8d8b:: with SMTP id i11mr1237730pfr.45.1573610226620;
        Tue, 12 Nov 2019 17:57:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7785:: with SMTP id s127ls147617pfc.4.gmail; Tue, 12 Nov
 2019 17:57:06 -0800 (PST)
X-Received: by 2002:a63:6e82:: with SMTP id j124mr717997pgc.115.1573610226140;
        Tue, 12 Nov 2019 17:57:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610226; cv=none;
        d=google.com; s=arc-20160816;
        b=t50jrt22TQZmO6eETls4MVYnxfC734m+67fTKmK7Ii7RjcNu/KCz4q3lgnUnMUm0bW
         IlnQTOxfN8xItm75cJ+ne7drOILLK4TrC7O8i+8HTn1tOUxbchChl2Q/xEjkDrngvW5A
         4dgqqmI6m7tI6+VOMwarfPgkw7VxtEmK456tSL4lEFeiOg8wDuDlCDnQrt+dJ43C8YWg
         NhAGEV2jyzvDX4iDo+w+tFnMJ6X2vLVYyejUlMuv/caEsbC0BHsW/hhhKExzJ5i+6IWH
         CDNxH8DHARiE6JCcpEor2H3kMUrjKest9jnDC1kPd7P9J7+P3DZDrKtwTWbv3TBny7c/
         9gzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SHswYgakd4cmvmhrHJU76B0qFxA1jD05+R70Da1SU40=;
        b=Tz28MUij1ibWyk8sdCqQ05r8dSnA9LBDaRCw9hI1nx/GDy0XIOEg48c125QHOvd9gE
         osTnPoWVe5WXCGWJL0IDIK9gbi1Egy2iFQeIerrhifDbnTO/ducQtm4RxDp6VEHwB+eo
         tD4kVI2Ak4rU7tIfo6xnamBq0zt+7FR7mx5bKYD0FufbeFdNpVskAm6DUPrY6/6m1i5U
         p5AK5EvWp3PfnvWfF/bIm5DCMgz2M7ZxfBw9k0pj8bCyK3882ULYkqZz8oqRPkiED/4x
         V5eto9E1+bgAEHjfB6QpLBcSYHCKpRQV1ccAusr/CiRwVklENfW7hUlkbgJWNGhTvlfU
         upUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L0y6fM/J";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u10si19482pge.4.2019.11.12.17.57.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0F14522474;
	Wed, 13 Nov 2019 01:57:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 030/115] cxgb4: Use proper enum in IEEE_FAUX_SYNC
Date: Tue, 12 Nov 2019 20:54:57 -0500
Message-Id: <20191113015622.11592-30-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="L0y6fM/J";       spf=pass
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

[ Upstream commit 258b6d141878530ba1f8fc44db683822389de914 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:390:4: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                        IEEE_FAUX_SYNC(dev, dcb);
                        ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h:70:10: note: expanded
from macro 'IEEE_FAUX_SYNC'
                                            CXGB4_DCB_STATE_FW_ALLSYNCED);
                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use the equivalent value of the expected type to silence Clang while
resulting in no functional change.

CXGB4_DCB_STATE_FW_ALLSYNCED = CXGB4_DCB_INPUT_FW_ALLSYNCED = 3

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
index ccf24d3dc9824..2c418c405c508 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
@@ -67,7 +67,7 @@
 	do { \
 		if ((__dcb)->dcb_version == FW_PORT_DCB_VER_IEEE) \
 			cxgb4_dcb_state_fsm((__dev), \
-					    CXGB4_DCB_STATE_FW_ALLSYNCED); \
+					    CXGB4_DCB_INPUT_FW_ALLSYNCED); \
 	} while (0)
 
 /* States we can be in for a port's Data Center Bridging.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-30-sashal%40kernel.org.
