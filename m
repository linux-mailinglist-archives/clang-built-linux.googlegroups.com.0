Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7P6RCDQMGQEY4FAZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B1F3BB074
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:08:46 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id i3-20020a056e021b03b02901f9cee02769sf4690413ilv.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440125; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1UK5nesgtcFcsz37cMHewmbnblWWCcGklSod1V6lvj2IAVbLtMvOJABK9uh1btnwt
         Ls0NLUpJhAKWalAAFb+KCZHOYlHO+F5GmRMWRCpF4F/d2RB5gZvlNR2pCP2v0CSWXzJR
         22idU0Htw47dw9EjCnxlxhbltgcr/eRevo1eYAsVqWuN9HIOQ233YMgPpKrUeHT2xtfn
         CwPHqmcZD7fxzTqIFCLoS8QxfME1hY4Yryd/xN1rhFE4DmoIG9fGZE2qeqWuu5MXfMxt
         wqkLLDjJjGRx/67TZsudzfeHtNyUoPzqyByg7HxJkSetAY0QnJonCPVaBJpjKRh/ZKRe
         72pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nvptVFrXJiCIzyn37HTGM4jgDexvfQA+bzcPi2FTovI=;
        b=0JU/5eCuKrCrPQPt3WNTyFzrAGWCOapRGtXfsCcP/9lcujwDWfTSKzxyfA1PlTC/Zu
         vQDzd4ig+as+HYfEYq5wB2SBrIlSa/cG50lJYzchlanIA9aMk3T9NwuHUtVukH2qL6a0
         cdPmUep6IZXqI0s/OOhOm72XjjU6A0c0wNoljlpiIqBeNxv0/VHnRO9SJ2oaKO5VQxxB
         vHQRRwkpdMXSo3eyEguuoDdtFhzTzWjUeF+8ffsrmoSD7KULwC8yqj6V/NySzqoWgMiQ
         6U+QnLW9c0UUIVjAEgfq+oeuEQ/xgWSPRuVvNXM2MClhfcjK2BHTVMBDjwPgsr0S+9JP
         3X3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pMUuuCuW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvptVFrXJiCIzyn37HTGM4jgDexvfQA+bzcPi2FTovI=;
        b=AvPWJ3o8gKrciPgnRdxa2ZO9FJSsohn2mZX69E0BXBtVVnzKjrcnUuQm+sr7TXvZAc
         LPhrPsS242/AfeEu4ZrK8Cpst1K7mxaopQE6r2b1/bKUYdw77HznCLwIMqCUqHGUecm9
         P+B2iC7ogQtq4qVhiVI+nlDq+p62E6Oc9rI8ph6+vfBsTNkQ8+XQ0bHNhIOBRkpr/2xW
         i+Vf0jIa3YDtU5/YAEyDgNBIKuEBpttLbkzaiuTZTxMwtrIFcsfQEHyIiZa3mtf3yJMM
         kzdScLgsOnu6xJdM0VGhUpVq3bbRTOJ19u4QjE8C8YLAsQCQcOy4LkEU3FSacpF+kQAC
         O+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvptVFrXJiCIzyn37HTGM4jgDexvfQA+bzcPi2FTovI=;
        b=g1w/R+iYv0Sr0GNIJsVVaNawV5zKEyVuBosgMR9TD95bLrsGLHi+YHxI6KRyblax+K
         HKUO5sIW6XmobdpjspfVKsqMUUcj23KTH/KtgYNTNB/sORQtGASUWJ/lp9rAo3qCRHIL
         bFn8b9FWQUX/1OqaDpG18WmMLkoNSE7u0+X8/s7/ryKormOjVrZiQ7hhTvso1OIU75Sg
         fu7AAi0tqQ9IKjFLSioD0G+c8eYGKF9p9L7xrkVz1lG4pP2MYM/ogoFvcbMRsje0DpGk
         HRraJIt/+meRMK8MHJNmFypfJLM4mL5THIJZmvVMFhAF+3Qeum10nvU/XzU4XwM+t6K1
         KOEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mRA/HCQIq5ef8W4wLhe0bgZSFGhdT9pZsAQ1jW/q8agCN5IIh
	MNQcHzDcRFdU2Jr8Itch5nw=
X-Google-Smtp-Source: ABdhPJzAZQ79x2RWuz6W1nVMVrFuz7gUjLW7cJwLVTQypbbiuNQOTuiM4QlTBQjyxLxKjHa9eJh2zw==
X-Received: by 2002:a5d:960b:: with SMTP id w11mr9558274iol.138.1625440125741;
        Sun, 04 Jul 2021 16:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d02:: with SMTP id p2ls3104739ioj.6.gmail; Sun, 04 Jul
 2021 16:08:45 -0700 (PDT)
X-Received: by 2002:a5d:914a:: with SMTP id y10mr9685214ioq.140.1625440125428;
        Sun, 04 Jul 2021 16:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440125; cv=none;
        d=google.com; s=arc-20160816;
        b=xgacrYBzrV9jBdRf4TR3isU5nNDZ3nH3qJFYL4EdcnUZ7rR65k2c2vVV0ylr0spFPX
         gN4etOqQw0IPbccw1uE88IQvzSsbaFihzG+Sz1Uz9yFnzEsA/hSYRTjbomjrnEoJQJxK
         OhowWv9YRZGDBPhpUGpyKbKAfTPFJTL0149fAyG9TpdVW2hJnQuixbFBSu0kVmV82C7x
         ToqkU9JmBxo651P/5YywfcqHbTC+O73vg1fOnmpViTHlIkWWQ2nvKhrcVF/YQFjYb9Rj
         QyiXtZHpuvpHy/5e7fKYIVmcih4SgiKQz2EES76MES4yAoQQkGMUMCcQTdK7bZDni8kY
         kePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=09H0UbDKRs6bq4u7t4Sa94sWyKPTGTgEwR8YYANIBrs=;
        b=lsc88koB6cgOBdl/WSbxcB+qgv4vlUGLz8AYUvSEIi1AwgunkBo7YFtAOqjA4ysvGO
         2bRKQhHljG8EdJtYjW7sJYpLuL61gP2Rj+OURd8wSCoUu81QMn3GKiLc98tvGdR49Q1Q
         cjQ++3iFZPUOUKXCS+tpNew0fcag46x7T/hGq2k9wy+ze62lj88lhcVIiZgOjb76ldN5
         ZFxIhiJ47/FzfTaVcxNeshrJa4YR5xaffBpOkPmCQMyhQtbDj12QHYdIBfXA0rvgFgwe
         /cq9cHxIBvWW2WjlDZh6/3NuhZmGQMGv7qftXx/LXPaEAtYzCTXTARoQsmF8s2UPFdP4
         IHrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pMUuuCuW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j13si625978ila.0.2021.07.04.16.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C3CCA613F7;
	Sun,  4 Jul 2021 23:08:43 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 29/70] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:07:22 -0400
Message-Id: <20210704230804.1490078-29-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230804.1490078-1-sashal@kernel.org>
References: <20210704230804.1490078-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pMUuuCuW;       spf=pass
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
index 52ef80efeddc..b40e81e0088f 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1213,7 +1213,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230804.1490078-29-sashal%40kernel.org.
