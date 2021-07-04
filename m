Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBKUARGDQMGQEGFMWXBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 611A13BB1E5
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:11:39 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id w24-20020a67d1980000b029026e9898131esf3778286vsi.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:11:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440298; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ea2ugLX0ZsOl8H2fC7hL2HwrEShQ/hpBkBDQwtL5USKJvkW9dEp7y1KUL9k/lTHZH4
         r/tlu+xzAGE/SofncOVAAF6YfHdoFGRDX32Tti+RY2odTi2GqjEJjaAwRcxbljXy9w3p
         uhDScHX36X9w5ugHc5auz5WKdsTRNc0IV+mVkgWQkBZrubvfGboPHfbP47piZFzLVfK+
         UWVlP1g9MWH75bAPqZ0DA6W2IMPQmaWyhxCkDQgE9leH23QS7is4NFcf5BH8POGjsd1m
         IlL/6LpOypfFFDuLejKniHBdg+ox7yqHK2QLjDXy8qKIDRWutsFehEhqlsj5XBaR4a3Q
         MVFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/5ZBnIIsmaRkEC9O+i/UYIYq/0bRn6QXIErhGYOK4+o=;
        b=onG0q+pafa+rOB/9JXA3Ol7/Z8ETnsHR5a7B4WcgNksEoJm5UrQjC3MQkBlOxgUsqU
         8u4DzXwWQFmcCW3oQ1u6r3ckk03zsLcIggOkx+ex52IYgtCrDcbRSYVvLay8T27zvObm
         BlKXmyEo6J01IOG80i66SkBHwOLzCq2cQjDZUMWT8dIHSEcHMO/RncNOdPonj8UhE3Vr
         w5Vz0339HSmt0zM0WsULp1hdbGOn6ifFPmG4ugXj9JA8O1OHzp9qKUVDaC/vtgkRHYij
         ddrX+7R2o+EZfpnmgPy/eUziiOpdHsB6IOwPWKQuO7lkGDKq+3gpaZQd7Bu4ehivAhAt
         Ae8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Kasf3JE6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/5ZBnIIsmaRkEC9O+i/UYIYq/0bRn6QXIErhGYOK4+o=;
        b=QTOkBh1oDKLH8PnLdAit5YmNhjBmQOvaHI6vGhsm5QTONMvrB74lWuHMjV48HzP9YS
         Zp4S3ES1s5UzS4PvaKIfsDNTgy8hPpwn43LJd+r6JdYTLLeJP5Y79+lJQl3/PAUwQM2w
         4ijEb/Q77LqRFky5GPxLQTiM0yIFeacKVsR+cDkDsh3lYbRzJTfBzRDhI0kN5m6OrbSS
         i54wgQbviqG3wXvPnjeGGxlCZsImNOauK40qudQpYCgWGLsAqBX9oUbo8h2X6onIsipY
         UvgM4h3FlasuiWYxEzYUyej8h/mVDHZsgdWTFe34iIxbVV4U53uUexzVYpocRTSae259
         0APA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/5ZBnIIsmaRkEC9O+i/UYIYq/0bRn6QXIErhGYOK4+o=;
        b=cHKX0aYUPdroqvs9bsKsBTLVPMancoXdBjMssE1PVyjb7/cnWcQ4TGppwPF2Uvdlzt
         EV3dZCp3OWSAom+tWAL/pPQ0WbhuY7ILFKYm4rjpkfMNv+9jD55CKYsDoxcXbt0qBm4A
         XvHanJLabbO4zCpwtsGdO9HYBvRq2FtcY2PLy/8vxlEdAigr3hf0w4Ibc8sQUcdZ0ORS
         Ex7Wnfcnh8uA7ycz9zGxXGpmc9uOhhHVfMhdJi9ekM5eY63KEGodiDNPAZm/juulQ6HR
         HmqdU2vj5u2Dyrmq2kGY18o6egQpH/mnFHrqAB5XA4VYqwUdV7g3PR3rVMs9TULDV4cY
         a94w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vqqeuQjsoSkpps0FDGH4GQI2Q08sf3gbcbplMz568NHOfFHFV
	UkHZurg050rr7y5iFoHL9hk=
X-Google-Smtp-Source: ABdhPJxWSsnl6VxMF0hgKJ6/L6M005hixn8uYXGOF2SDjNE32rcEjlkeb7ukBBtJzCqQHToWUw/+Qg==
X-Received: by 2002:a1f:2bc3:: with SMTP id r186mr7353957vkr.4.1625440298453;
        Sun, 04 Jul 2021 16:11:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f8d7:: with SMTP id c23ls3771721vsp.5.gmail; Sun, 04 Jul
 2021 16:11:37 -0700 (PDT)
X-Received: by 2002:a67:eb5a:: with SMTP id x26mr7838750vso.48.1625440297835;
        Sun, 04 Jul 2021 16:11:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440297; cv=none;
        d=google.com; s=arc-20160816;
        b=De8Je9iZRHM+JYbAfNwB/cFRlCMp+D5wET680QPv8ejcvDoZPQ0X3W0b3RqCC3ZSTq
         YhlxwhpNcHr4dOwWT2+QVOe6hdIjCR+ly0mMoIP9eO9PlBcNyPKYpOQLe1qZnhZqNWpR
         MOFpBdOBClW+f12Mpx5FsiG13WYK515zVAe2FrE3r0nwEj/4scVHHb0fCP/W4+LWouYv
         Fr6NyFtNaDquEqcu0mYwYSvq3ei/zj9nyUwj+OYanNeLBP1+824u6elHv2CrsIjBD49X
         cvoACAx6EiRoGlyhL5cGeYayAfV2iw3I1Dcm2peDm8bGDDGzJauFv7AWUECMwyyCjEiD
         HRrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S8YuLQr81yP8/kep1Du8WpHCIotA43CSbe7EY/Jid8s=;
        b=anQcmjwm1r8B3+KaEvJ0a5jrB2aLmyXjzjXLa/+0lrPaucvt1d2/Nhy36Xi5jazfQ1
         +t+T7AihCSGoSjxkpOFDa0D5i76nIF9VBtDDOGF6iv4VXNeNogsI/OvkdRJahkcFJ5pe
         1q6L/532Xkk6Mx7YCREhOJZYH5i4fUJb+PuPNvOlPpAQxOL3fBbLy/yGSpWdyhwx2r2n
         ZsfWzKBS5ItiZCXexF+cZkV77HKtBDF9BRkULyCP4a7xN2mQ5lvy+tQDbQSub6ZKizBy
         t7mqTBxeKjQ6voPsUtCAl3V4U1d9eWobyOTQnZTQH0cbx76QAjyiyWW7Dv5zssnbuM2L
         znow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Kasf3JE6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f7si529854vsr.2.2021.07.04.16.11.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:11:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DFBF3613F9;
	Sun,  4 Jul 2021 23:11:35 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 10/25] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:11:08 -0400
Message-Id: <20210704231123.1491517-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231123.1491517-1-sashal@kernel.org>
References: <20210704231123.1491517-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Kasf3JE6;       spf=pass
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
index 8c4fd255a601..cdf80c16a033 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1255,7 +1255,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231123.1491517-10-sashal%40kernel.org.
