Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBX4ARGDQMGQEZ4YVYDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF1D3BB1EB
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:12:32 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id a16-20020a17090a6d90b0290172c6293174sf1663965pjk.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:12:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440351; cv=pass;
        d=google.com; s=arc-20160816;
        b=xN9GEbFYz1vSiq66WXpxTwdC6Z7VWiHlUQPJkLXwwGpqRVymbUFWxC+gakfBpZxQEo
         A57Bma0G9fD0VevSwOnIz7V1KF22zRHc9IYX/rZFdTIS8GqsnFw4Umi/o6CTZf4xW9Yh
         J/hTdAAMkQ6bKN2n1INhOsS+FfERPSdvfIUX/SOUUSItjeCSIgVc5JRkfRQTKyBXMHK6
         qymY0AXCjJxLVBaYPYH6bMOm+qDRrdpXUCxK33XR9UJ44PEKEHVoZ0fDUfKoS5Ufen40
         QWtAWxi4mXSrTRB4qzjzUCLGFTX60dU/bwFfIHbXb+Y7AMYMckvXOpCzmzzuHkHS3Rm+
         W6lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rlfg2cEpxnhUCLbm49CMrULXiv6e8JC4KFuhWM3Z61E=;
        b=ODiWy/Rg6BFvV8I9t2VFx0Rtv8mp3bcAcb9nFm1oygIOyQJM+48qDCen55MPpYkG3C
         8VTdb4qUI9p9XaIY5P1pl7HUhYA36pL6DwsHSOfWJ3o0VPk1KcONcZvrpIlutgwDfoj6
         hObcVoncnKw2m1TCAXM+Y6czvp4A8BvFJmhVnn8Pq3QzyL2lFqkeG+LD14fEiAdV1Bbg
         z4vjeciSy9UpqsHF7L9CDmPXQKv7G4RQR1Fd8EGfVK5OIV6/mwksE/W/itwteWPFAnGg
         Yeu0yh2JYoIoWlZac5wJZ+IF4CfIecOy/cTVgOOi7IFVbzVjAQdjxTH7mTdDig2JYqIK
         dvsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dc0ahz1s;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rlfg2cEpxnhUCLbm49CMrULXiv6e8JC4KFuhWM3Z61E=;
        b=mC2bYhSdRZlxuud9jzGWkIQB+6JZm+Pmw69EOxo8xPu4/CJed8k75llN3XCwPgy1mL
         4E4PtsyOYuOWfBvpUWaqoiBbLv32aQyOCy1L+QgK2gqf/6quWgMRfpIVtJk0+kli4qA5
         xIAIsgD3YNqS3Zho2AWmWQlDIkO+YzsUuQYmGpkZIPvTLQb9/qI4A2pI32yCTngztTzK
         N1jsz9ao+2nA/D9XrAOc2obKQyDKk3z698ngqYPtVqqc+PNafZ4iK5sOMYB+WbSF1+tr
         YhY/26dABviu2iPeij2xFZVMOlpxIyxoIezDMLHz13S+JAEdD30RY9564NMWo91MjCrY
         0akA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rlfg2cEpxnhUCLbm49CMrULXiv6e8JC4KFuhWM3Z61E=;
        b=S7V7oealGQlEzxicQfre58PpoGUVagoA9w8i3e38pgxyIlFxFYKp1vtDUDganiDkU8
         /acTcxzVxuae0ZBnHgml0rB9oZLVkNDde3l18I4cTrYwcS66QbhXvPC+cUMeYmRqP0Md
         63PJOQJvCrWQlKEjzfoDLzO5gyX+J/gfMkMDVsIDq7cGdUAVaqbFRwHdx5HV14zersLg
         G6m1Ma6SJgd4+mmehwJwtZE61wVyKOqEF2rF2GzebZkAx8zecj7z8tm4dBwZML2LgLU3
         6BxkvCc6ok88sURz3UXqVxyO2Qq3mvqbgaUddTNeYq3MPHnDYVYLlRz2r9KTz/ivW/sZ
         aTKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UZecGMNhgISIB5HOa2TWKHu68+wMTD5DMrYg2V8DLEzuBdnzk
	KIhxKUicfNV8qLVVbkf3svE=
X-Google-Smtp-Source: ABdhPJwnTmek+gucuuqQipdy4Xn1YWEiSlrr//xZhIPmgB50sj1nsAUcOgR9BfOmg4KCksHydH/dZw==
X-Received: by 2002:a17:90a:10c8:: with SMTP id b8mr11738787pje.147.1625440351649;
        Sun, 04 Jul 2021 16:12:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8994:: with SMTP id v20ls8824699pjn.3.canary-gmail;
 Sun, 04 Jul 2021 16:12:31 -0700 (PDT)
X-Received: by 2002:a17:902:8601:b029:11c:4b4:e967 with SMTP id f1-20020a1709028601b029011c04b4e967mr9923701plo.75.1625440351084;
        Sun, 04 Jul 2021 16:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440351; cv=none;
        d=google.com; s=arc-20160816;
        b=A3WZZeeAnE4ZMaVe7mTZQ4RsHS+Y2oYCfSIatQb4F1lDybSsHouRVtDKXUUQpwahy8
         R45sMysfTjxjTe58Bnc0/lMg3QdmmkwmglOfUTTsFREPwR+3LmTdLQi9y5EutZyAnBem
         dIE6NtpG7deqqY5GFVEz4IlULn3gW6scIFbDiE3zRppTG0u+S9dmD75wEKx5Qjf80Wom
         LjdRYyZCb9iDtVxH1e5gkmSDSMUKVnh8yh6cbaVkpHVxkrA5u+s8XBIhmhkeSXyr+05L
         VcZ4nszl6X4aAGSceZl+r5pGjPc13AIhRhEnRSkp+qrFmTLU9aA5l4tBFK9/nsvBgAxf
         tjYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z32ierCziXnd66DWqfrU369n/4hBgaSYHMWRNhx3Qr0=;
        b=FgQUaRW0jlOJfb72v9Zff6Rq4i+/Spe64XBxBkZbVZKZubvKZjepsHI+9whW6NFEWg
         f7ULCXTs6Mg33Yz12BMIRY31x0PXzJSNPSLqBUkIRcoPuOs4UvANHpm5ahfSg6b5BD8j
         lUqfPMdiJPJDezaP7B4kwsUNHst+7xJq386M2Vm3N326WME6KaYjWzAOOtnSU7RKUjTB
         q/0jxHgiv2HZ79QTKFQ5SbV2ZmDrRr5c+UAf+sgLVktIft5CQfsP63aqhzxjVdFgriPn
         HJvKrPEhgG7DBPCXMExRFXfc8iC8zj18ZPI9iaQs64q8AL5s7dq2vjFRC7ZJNQ09m2ZM
         3wHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dc0ahz1s;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si1507591pjh.1.2021.07.04.16.12.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D260A6135A;
	Sun,  4 Jul 2021 23:12:29 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 06/15] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:12:12 -0400
Message-Id: <20210704231222.1492037-6-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231222.1492037-1-sashal@kernel.org>
References: <20210704231222.1492037-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dc0ahz1s;       spf=pass
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
index 380e761801a7..5e5003379281 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1210,7 +1210,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231222.1492037-6-sashal%40kernel.org.
