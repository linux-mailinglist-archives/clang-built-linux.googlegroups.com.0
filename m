Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBFH6RCDQMGQEFJ2ARDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D403BAFCC
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:07:01 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id u12-20020a17090abb0cb029016ee12ec9a1sf5783917pjr.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:07:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440020; cv=pass;
        d=google.com; s=arc-20160816;
        b=iGE2Xr79wSPg9kcuz+O6rkJjXuPzN6dufGUAlYEKItyrbq5MOkG/ibUDPrUdwOqSvp
         fhhXZHU0M0XNvoMrBBFlfWZ0gLUF0eTiz9bCIwuyK4ia1U0DQfIzGZVSTzeeVT27zqGo
         Zlup/raqEiSc4yxzSm8vL2wIeJOt3OrDc14VGXRv/SSgzF2BEwEPUEtKdH9p4TgjAd/0
         dFAFt39/rB+LmgZ5JoEpGpqR4HEQXybUOGoZRq7HHfWIWYX64TJwBLJEnn99+we0AJFE
         urXzF0GYwqa0xbE1LYaTjPznHCAv7XtFdP4klgoxrvoiKlNXHsdtFPdsH+/t5FsoA7Z7
         mM7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VJ6eYXoLYwKmn0NlyT29kEqbWhEfjH0cU+SzXTpc23k=;
        b=i63pgK7qrsQjXOz5NzmlX0Hz6hf5f+vx8ixuJHxU1BZfmRqh2vJYBSWZDiUngJGpaG
         rxuv5epK1z1CwJJUojMlxrZYLQJKcMptSXLvMHHYr59CR39e/tTFtB1WokNIK4Is6Pv1
         xr9ftRqCWfv2Q3bwTG1gRNbOQGX4gLV7lRp+1RYGl7V+TmD6oeGkneE3xzA8c/8weOQH
         2asl4mXkcVl0T8kzkHQ0r4scPt1XvA5iVulzHLXPXet23PvzAavzaWIbVljxF09j/GYz
         5ahYIdqSzcdXWkehHLsNLS48QmhrrX476h8AuM5HfX2mMnvsehCLJr/SxTL/5WpWZcRw
         df7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="TiJ7YI/o";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJ6eYXoLYwKmn0NlyT29kEqbWhEfjH0cU+SzXTpc23k=;
        b=Yo73J8l+GQJhaAH9G1PwLP2puSQF382e7GIDeIVkZfBxNJYWCMR5XtYL490JNxqTBa
         5wmjV/TXNK8MlRzgDX5pBmq0jntPtuUI7bEZiKbjz/a4zT9Dh5UHERtPEjA4rlVogi+P
         ntFnlk4X2pkvKKY48ppyaROXHaS6f/rqEVhrrs2oHgUA0KxLAe+V4o4ofj2/dL3g1aVa
         +0f7+MuIhUeJKfvWill2r8IqoTuomqvir6h0yjfvXuoR8GESmJ//sIRzdmjpovTMYshk
         jSYVtoUwK/FT/HDmnrtF+890wrCKysbYe5d/FsUY874yUVU3h4nSltsorum3IpP1rfBR
         hMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJ6eYXoLYwKmn0NlyT29kEqbWhEfjH0cU+SzXTpc23k=;
        b=XmHR60M/OScn2/Nli2Xf66sRSIhKJLDwipttL9d3l1lXQD+lKQ/L9Ep+qks6FBQ9hH
         QeQXm5+GeQRtpkiSDFItdunWHWPBGoR+dqqO578tgROAF+ZO5EKZJtwgNPjS+EqjAqta
         zX/lM3WZZy1ZrMPzSvmvwNnNkhcoHH2GZsTssONkaa7nSptkKS6L6fD5JSyrYRQz9GPm
         TO47zV6l3MVC519RWlA5OdWKshU9+DSNwKfQK21pdwdwt/jv1+79PpuD0PmYzdAL0cUv
         ePddKjJI9mdGk2dY8YaM0m7pD6LyszzT73xkISI4HImD3J158ak32zrxi/jQ5NdvvcDy
         ERHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jQFmhDyV+1Y2Vhfd40x1dyfqZCO41+1tm99By2LwzY2YMxJDr
	dmwpVCbIgAJuUh5mB2Uupr8=
X-Google-Smtp-Source: ABdhPJwNMuLo+eHH6mUwJRX6+bRnKoRj0XwAnVwzpDfPXW0Y1CPJaVpuVL5qsp0wWVMvBASDa7SvYg==
X-Received: by 2002:a62:1c93:0:b029:315:e5da:5418 with SMTP id c141-20020a621c930000b0290315e5da5418mr11806579pfc.8.1625440020735;
        Sun, 04 Jul 2021 16:07:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2353:: with SMTP id ms19ls11789298pjb.1.canary-gmail;
 Sun, 04 Jul 2021 16:07:00 -0700 (PDT)
X-Received: by 2002:a17:90a:9ce:: with SMTP id 72mr8563218pjo.112.1625440020190;
        Sun, 04 Jul 2021 16:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440020; cv=none;
        d=google.com; s=arc-20160816;
        b=DCNB0EV3mvp/lt5yxV9MMYfFYRuoN2RZkFj7KSG9WW4hneF8eeXFk1/DE0ZV5X/IPE
         06lL8275QosGrrU2q4mNsZU9d+Th3WdftxZPjuYoKFx/faCrBUQ7TRhNl0dmTHIZPrwA
         wKkqyKtZH/oOTUJIQ03RvGgiDd8L0AiMNvaW8SRqj2+C6tpIMlYZ1hke4/uRrpD1xAlb
         NgGxlRPvcynSBfPfAFUEn2jhgJBLx/LWAZozQnCOLhehrE8cFRFj5G9JstUuK5vzdaHM
         itERnx7eTp4WawBslzmSNv9nWIt+s8yKEWwQkpNDYVtKZIjst59tBwFBpUV/haiOufzM
         Q4vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h483NoDh+hMd3XaPQij6flNVF+NulgLMy1sWy0+wBGc=;
        b=ZpSr9tvt1DyIeuU1lt0UEYHjUBnZc8G6yb68CYGkDNd3M6kknLCRyxYSoHrvv2uE5J
         8+BikTSnobTZfzXDi5mPWBsiKqXLGABeNBJsdZgY/G7a8k3/+ZHt12yWb3UTM5RybuvY
         85bdIahRoYTU2/kxWw4msdLzxJNtU7eFze6NI+tTyWQeZSCemcDAAEsVUC4pOddi9iGC
         RPB9QrZH316rjjUNNXsEMtR+5f8QjcY25wtojSKoGLoK2JESXCv6dGZz0S2RcwXVlZad
         w6e8KTwv4snX9Nd2zKTnept8oxh5VKEWFOD0jjZhC7agZif3kpzWzI9O2ZoteIcS2o9Q
         4UUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="TiJ7YI/o";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u25si1039474pgk.5.2021.07.04.16.07.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBF5061946;
	Sun,  4 Jul 2021 23:06:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jack Xu <jack.xu@intel.com>,
	Zhehui Xiang <zhehui.xiang@intel.com>,
	Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	qat-linux@intel.com,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 31/80] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:05:27 -0400
Message-Id: <20210704230616.1489200-31-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230616.1489200-1-sashal@kernel.org>
References: <20210704230616.1489200-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="TiJ7YI/o";       spf=pass
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

From: Jack Xu <jack.xu@intel.com>

[ Upstream commit 96b57229209490c8bca4335b01a426a96173dc56 ]

Check the return code of the function qat_hal_rd_rel_reg() and return it
to the caller.

This is to fix the following warning when compiling the driver with
clang scan-build:

    drivers/crypto/qat/qat_common/qat_hal.c:1436:2: warning: 6th function call argument is an uninitialized value

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_hal.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_hal.c b/drivers/crypto/qat/qat_common/qat_hal.c
index bd3028126cbe..069f51621f0e 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1417,7 +1417,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
 		pr_err("QAT: bad xfrAddr=0x%x\n", xfr_addr);
 		return -EINVAL;
 	}
-	qat_hal_rd_rel_reg(handle, ae, ctx, ICP_GPB_REL, gprnum, &gprval);
+	status = qat_hal_rd_rel_reg(handle, ae, ctx, ICP_GPB_REL, gprnum, &gprval);
+	if (status) {
+		pr_err("QAT: failed to read register");
+		return status;
+	}
 	gpr_addr = qat_hal_get_reg_addr(ICP_GPB_REL, gprnum);
 	data16low = 0xffff & data;
 	data16hi = 0xffff & (data >> 0x10);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230616.1489200-31-sashal%40kernel.org.
