Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBIP5RCDQMGQE3IPUQ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3093BAFBC
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:05:06 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id x3-20020a92dc430000b02901f914a0c8d1sf2325145ilq.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:05:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625439905; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6GVfBIUJOzs3+q0b/cZ7PzlxBC3mF2PhqRC+Ss/FicLJ9I/pAERZz85JUImsqYpJt
         MApCuOraMIHd8vqTzwX7gpKESHQ/+s1W+AkOV2OPlERbj8oudXhhZnyCAnhFkGswCodt
         8nB1cXbT4ttmjJMqGuE8kxE3704W5UH99VajellLH3QO1TjnMIb1BRRiOgKnUWUHtAU/
         FdYVthkuGspjynkjKELpD5FeCL+qvhGPH3loVlw7ZiKvQfx2o4StMlwfn5nNBhExRjfl
         VPO/E4/CdncVwadlC5mGtkFnC6VdA633bWfmeu9KjmwN5eKMMme+8sn7pC9O+CMW5MHj
         fc6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QSfXH2/zNGP3Ly2TUO6Gtnurzb7Y3PhZEqcTdM5QZBU=;
        b=WFrhQvkB3PhbI/8YsGRUYRPTUKtjSOCuGVQKjV6+Zvii2awPZpcjwrywmh4n3ldMtt
         vjUGbHk5FckTuMR6+23yjpvx7pUNnon4ex6gZdJ90Z9ISP1TP0Xy8djhp5rBtFRZd0jO
         EgydJhshyx6YBPXc58miF15YBXdrewACU2pIJQ9XGemnq4RktfEmzssgZ6wJeCTCDykf
         r5CK8lFueUwNJzpuwF6PBLEsGlyOtKLZdYbhtpanlphCYRLVRwWYGIBTLvm7AcnU13nl
         nFx+Mkl5jT1BQyvEKCxHzJ6oRaYmxwZ6pfheHpOBbx+c/8V1jmJDkGkYOVbX3QnaNfx2
         MZhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BzQRkW0X;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSfXH2/zNGP3Ly2TUO6Gtnurzb7Y3PhZEqcTdM5QZBU=;
        b=C7jIFdNzQlKUz5IVWqbW38wLkQQ93hoLlq1tBdpjZKhNas/9S3yZHvxA6isS30Ps/z
         k1v8otDGU6VnQWqmpG987E164lYRM/0s76nMmzCRiaEtg7WOrD4H1tNJYkT0J6fCkoGl
         LWLNTyLP4Ygp7DMtcVrDB3+PkDqyWrCAajDPSBqUy4+O6/MwAQsCZ9yBcTzUGLQ7PbNG
         EJ1oO2HEVriGGa6Ch6ND8lNL6xzBLpyh7YSoYj3XuZwc/x9t7T57RfRfWFeGAUp9KXnd
         vJv2vVEeAmL3aJnwRU6C8nFvFWLozr054XoS59dl4af6y/THBBTHpBtBpOajbpJOsfx5
         b7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSfXH2/zNGP3Ly2TUO6Gtnurzb7Y3PhZEqcTdM5QZBU=;
        b=DlRJFTWJCAfrhx+KVaXU6su+HgvVQbgtogDORlheLGjaqao9NOzO1zsQd1XKcB5mCH
         krwMbLNbGOVDCgjp+kB1AyNi3g4qFxgBiKpI0yhPoTKoQw4I5FbkImnjLG3ozzXGlT7b
         58VXpnoMTKLtiwQUd5Zic3zJgjFzulipClbj4YZAPEtLEBD4CiIOHh3pheodYN9j624c
         O/eZuNT0jvoSqqUl9wU0ucysuHWB1osL+Oty0E1nKg9gNo1fEAnuutzTU6Xma8AbC9OJ
         NvKkhHXxmFidbrGTDrlPmGxTkFcbRAF15VuU/qTYF8oc3j/OMdsWOh38KXVdgAv2vHY5
         v4kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kpGntxgmfbk5xVek8IkgXzvKdsBJQXK8i6U9Ck1mPy05vEhnb
	fobPN7FXNnzSFOB2VHTQ//g=
X-Google-Smtp-Source: ABdhPJzj6hgDWmhqTmDpUiJGVlZMcYF02RFUP0jiwEVgUVBRelv77QlDg9pcE64NQQIYAx2MQTSqfA==
X-Received: by 2002:a5d:9059:: with SMTP id v25mr9227678ioq.113.1625439905207;
        Sun, 04 Jul 2021 16:05:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:33a6:: with SMTP id h38ls2349830jav.11.gmail; Sun,
 04 Jul 2021 16:05:04 -0700 (PDT)
X-Received: by 2002:a05:6638:348c:: with SMTP id t12mr5050299jal.1.1625439904862;
        Sun, 04 Jul 2021 16:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625439904; cv=none;
        d=google.com; s=arc-20160816;
        b=XqbNprqQOQ6K3SseT5A6o0/qhEAhdUuOSq4bSvrOC72Wt2QOcVrvCWZ2Zw4KrG+9y0
         V3Hc4fHraj7OPo48mKYK3OKa/HHckHikD88ksgEHswYY8oeB1FsWb+ikh6MHbFOBSefQ
         8IDs6HvfnCVRhhUE/qi/H0X+pILs79N8/ac9eOfnt2BxPxd5ArtQaIpa9796cmQBugny
         KTR+nMU7dl8KOGmAbXDK3SJ2GNTT6rD6IGvqNI07zl21yaDASAj9OAP3n7Qo87YjHrBG
         FTvleIx+PSqX/EyHSTncQxXtAST/6IDQbyIr2Bul27VjFm3TRfwJZgevkzx1HjZhofOZ
         cscg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h483NoDh+hMd3XaPQij6flNVF+NulgLMy1sWy0+wBGc=;
        b=fDuMCzNLkVzXC+6mosy/OxFGqgfhOCauPrF9asgeuWNDstvo0vkYYsonettP/XkDIa
         xMcseVTR1viBl6zygKB3ubg2mvHynjDpa8FtIXyjM5hkf9GjEtzgvQgQ+cgR/01StyWQ
         r99oKThA1OcMiuBnUqUpOOrsGrUrHJ/s7cn9B/x1N1Ess1apN4X6qjg86CRnqVnlMUOt
         dZ9EPF2IZy1KHGPn8UGowl1kJ23MmketJW6KNcwmO5qmT2LKWiZC9GMbdg9RIh76MjdU
         mVnhD3R160ASzC7iZdE0bbhY2M9508kQjW+oiZPlntJiQtNMgN+suQoIdCM7iMLRdI+b
         iI2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BzQRkW0X;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i12si924529iog.2.2021.07.04.16.05.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4319B61452;
	Sun,  4 Jul 2021 23:05:03 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.13 31/85] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:03:26 -0400
Message-Id: <20210704230420.1488358-31-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230420.1488358-1-sashal@kernel.org>
References: <20210704230420.1488358-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BzQRkW0X;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230420.1488358-31-sashal%40kernel.org.
