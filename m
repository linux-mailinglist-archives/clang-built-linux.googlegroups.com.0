Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBTX7RCDQMGQEAKEOMLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 575163BB124
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:10:07 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id k65-20020ab043470000b029027cb996995fsf5476297uak.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440206; cv=pass;
        d=google.com; s=arc-20160816;
        b=KYGNSYUxpwMOHS7Vv/6jMgr+enA6kA4T+o027uCbH5jGmnUysXoojbE5wDPR9WzdT1
         /K8DYyD/M78K7g06yZILl7G5fMdBwFbyrGGmhpcpSf6wijKkhSOI9/cFZ27iTIZpLHEp
         Alg7pSvfjbKd4XCub42cfCTT0Cc5ElCXm/juvD31dJ1FeSy80bwDk1qS2/FiiqsVBPw/
         TyYVhY8PjxX6uvAIw0QgheNwTcKI4zxCGnG0nOuczGgy6tAE+oH4rybsNJJ920EbesaJ
         oc0HaU3dA6KXSzNlyzWcTHc+o0bw9yKFB2wv6Fkwwq4r6l1voAGgQcWhUXrUeB69MIrp
         89kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FCLA8VWJPqgzdklcU0MmH147rq8AeRogr9mJF1sAEVw=;
        b=qA+9qRtVz7cw0LgdTyJqZfHwf7bACDY9U33opYYTr86cT9ih2s5OgJCWPWvGShJURi
         +97vrI19r24U6SAXPgUZbuhrSRMBb6xPpYlc7yX2HzbSaBqpZQypn3rXvYXOKBBphhev
         XhyLQlh66cpWWIakHCrHUzgxHGQ3Xxcmtg0A323IHVlNkOHV0E8D/8Tp/jlJDwei70oA
         feP4y7kZ3c4yb2+QyW3nf+J0ZfYKXnGX9lVnW/1zvFviCgt2PUwitSqd2oJm9kNxRGlE
         A58LdmMj/s4VhdDnyC6pRD5jIr/E6eutrwkNxejB3bnGmkLlKpGVBLA/nncptrBAZgyZ
         8VBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rhwrrFfl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FCLA8VWJPqgzdklcU0MmH147rq8AeRogr9mJF1sAEVw=;
        b=CL+tvJT0Z17OjgqRFhw8VV4CgIvVrXi9F0JgKw+UClTVS6PWGPltJixcrVem1bQUUs
         XF68LjL1Ns17L6AVzNoxCA5k1PrI+yENv4AM6CK7gYUJL+4b/tkHxleDSNXVzJUEwyEQ
         zfrWEyiW9AKMHj6h4GqjY53FYb6L7mXUeTpEJQVqv8HJUDPF+wrDy2VNQKz9AJLX53dp
         1rHCBQA7PQdwe/pcM/u/nz1L8qxTRfcbA9QFLn0C3hRouhhqrJRZZY5e+HQwtyAeuZB5
         /k/uXXLC8qbsLoc/2/p5Q4k/UxsYL7rtbtU5Ww8SU3t9w/6JsZARWFf7O7IF8qUhFK0x
         CMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FCLA8VWJPqgzdklcU0MmH147rq8AeRogr9mJF1sAEVw=;
        b=V+ZMeYdXYJpU/5aFVPiKUSxH9yIV4jL8HCCS2+jFY3z3bAJvxI3JHvOWVkbpcZAawA
         fMnnOUQxGADvV/6IlGfTLYroT3oTuU8/+3JZThaDjV3HrsSH5zcPW4l9uKWYQE6yimUL
         D95EGnwIgtd5RqfI8iOELgqxYBwq6jJfiKfLmKaNOKurQZUi5PPKThpDDkfGrHaY+kt1
         9C0KNtJ2Qc0/CAJVeki4y8nwPhW2u+Fc2AE4fEjWm9n3ORh4BMuxgkf7LOpc/nX+ERGz
         diPq+7dZQpyXoLhcjwEIPf5w3ux1cbMZIH7a/L3KIUarCuZvRuB7a7qtgQlWeQsK2VdA
         OPnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DIoTNdJ7irN8H4vOOb+N9lXsQCCtvTv2DL/AdwB1Uku/yJh5+
	7RXD9T7LnxGiisxQXq14iew=
X-Google-Smtp-Source: ABdhPJzIEUEjYJ2bmXVk5YoAdgWbo9QZ/KFD5odl/s/kYSTIm3XHhllUU46c7Pv5D5QTO/nkyCXM5Q==
X-Received: by 2002:a67:fd78:: with SMTP id h24mr7497137vsa.20.1625440206457;
        Sun, 04 Jul 2021 16:10:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f70e:: with SMTP id m14ls383164vso.8.gmail; Sun, 04 Jul
 2021 16:10:05 -0700 (PDT)
X-Received: by 2002:a05:6102:753:: with SMTP id v19mr7478230vsg.44.1625440205897;
        Sun, 04 Jul 2021 16:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440205; cv=none;
        d=google.com; s=arc-20160816;
        b=T09LkFU94HYRssRGQbevLU0O3zce6KwC+Oge/zg++YANMLPQ2IVyGxO5pi/ZnYOEGv
         eAeItrPYTFlwkGjJHgARFSo8Zc0FFr5f+RPbto3DrQrTvFEQo0yqXSv7wqPWhbByI4PU
         FdKxZNLJDt16umG33OeyrrHls7TSa1hq0I5tA1HUNHJAf8GUcJpaoUOvxqJrFCdPxbuw
         P2jGoKCkE7VQ+2UJ4KyVCaGI7/oK0YuEnk8U7ytl85k/mcQHdmgTQU3rPKxlNPN9cUJ+
         EICbEhcpuFGcJgPOCVjxmzTg/IMaJph7TZCpBlFd68EW77Zbej0NgZI3MYl886T+kteC
         Reyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sjczYipd2i0O1iecT52os4MnfBMKm/vdZkUNBnXVEig=;
        b=jEXNg0eoqfc/UVhlrdx/kKSwAhZUmCmlOAu2srPAvYlduZ9y4yHPce+v/y17mC4Rpj
         V+/gNYB7nLFgIYNXovuTPq3cwUGS/lAEtCD8WBi3lvZj/PSKNUUpw86d2Uqk7pyu5dWH
         jR5UFnxwXWo9nGfdEj2nd8OoYuMK0ewnLAVUVTy+KKJQttJuHbGxGP/qMIxXcSBhO6Ho
         AcE38Qdq7r8IVd6K290c+J06MKm6ZBpas3c48vjzZIu50u2jhRYryFdYl0QXV3WGOjh6
         MWshUPKHuiPWz72e4blXDtN1YD0NQl7EXn0AG6L6kkQCqEjfWcbMQleOzlZtzhGbG5Ve
         mB6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rhwrrFfl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y18si615749ual.1.2021.07.04.16.10.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:10:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C05586199F;
	Sun,  4 Jul 2021 23:10:03 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 20/50] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:09:08 -0400
Message-Id: <20210704230938.1490742-20-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230938.1490742-1-sashal@kernel.org>
References: <20210704230938.1490742-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rhwrrFfl;       spf=pass
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
index dac130bb807a..eda692271f0c 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1256,7 +1256,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230938.1490742-20-sashal%40kernel.org.
