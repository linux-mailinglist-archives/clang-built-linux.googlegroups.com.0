Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBIX5RCDQMGQE3PR3FZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8B23BAFBD
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:05:08 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id x1-20020a17090ab001b02901726198443csf7370070pjq.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:05:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625439906; cv=pass;
        d=google.com; s=arc-20160816;
        b=ac4kr/brRuiA+w1EcyYkAyESoda6CKlYniuM3S0LG4dpz9S87u0XgxV0eWl4tTyW4z
         nDI+mOUKs2he3DmX6LICN/d7zEPLUG54dW8qcReK6V3dxrXU4PsdirCPWIf69W/lNUF8
         cZEmh7e5dzVqKBpaM6wCYt8fnqDGn2tuDAOYtGNw6M2ZHeTbtIP0xyihWpXM3/LUVhzV
         z4ZgpkZJwvWwL7La1So8+jrg/by2E9CIiz8CRCvP2f1EbOUJ2HzMyKfGBuOaE3lRvaem
         6qE33QNIB87kzeGhByvlaVgC3uZwrzzz6TouqxMO7Ov4zISClUAoRtLUG564PRUYnxDW
         cUTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yms3p5eWViMIibvGSUQZPCHAhNfI2xFeWYOjENNXn14=;
        b=djirUozV5xAWQBz3O3VxndkvVq3d/y8SrpztrV8ylS0OtRSdlUXZqSqXJM/3QMPiB1
         6GLGgtk/S3QipUnMUuoGxTGECBhYNrN0Omjup081uHKPeIuzKnPfvsm0QKHgAUB1KKK9
         +mtUkxi7oiJiLX9/gguc/I0X+VubB1SHJgA79y32X/89Al/AaG1CkW0CxxNGpZvtToae
         XOq/dR1SLCczgGT7csFdMNNZlulbjmCU/0IX7H0Qb0xmxcE394z7Y2JtqZzX7jHmdtpc
         +Q7WJSeXRgsb+YFfyvZZwt2aTKAwchhaqDRZvsORICb6sA7QV2GKkY4DeYqmKryUwaWK
         BfdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XcY+jHCT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yms3p5eWViMIibvGSUQZPCHAhNfI2xFeWYOjENNXn14=;
        b=FuQVM2RnhEWY2UvM/dBvv3DuodF8wJP61n1/B55DqWiqmAUHb5jGe1jylfrv+Zymbw
         3H5yaec6DTbWqMMObvk6Kwvcurw++upHYI2SJWpAjDXsR10Bc8INKMYX0npvRKLiZ86H
         jjX7KdAlQce1ed7raa5p0OzR3xQf6x4v3MYSUyUK3YVySj7HeU4Y6mUd46LWg6Z3/oOV
         fIwoq0x6OQHtYwBV3f061WbLtUolKwurkJYe11cw+jBlVXvJ4Sd5QE5Z0USZApjqRxnZ
         pcQWBqvbkHMnHM+26L6+gUMvH3nJbg8ct7VY+RR7TOQhukSxiHFrmZHE9qRFTDKLMDFr
         iKew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yms3p5eWViMIibvGSUQZPCHAhNfI2xFeWYOjENNXn14=;
        b=gdZdwyn4Dyc2HH1UlORBeWphD5wfPOUt14iA/IEpEmhbs9aCN2VfOQtahEbfNAFoPT
         DVThQ2mH134VGSoZO27yVESRxugPdvzXexDlY4iSdepXmQrBu4ZYvQQrVcRagw1oJcQ6
         bQoSBxuAjL2c/QfYavrAf5eSYwGGJTimgdiylI1R6I7oPvxtU/uJ4xCzKXNFEBQt4R0G
         mWEkeLPceHZxUPbtPxDuNiUwY3rpRJbvI2n1jGjBUYROViR9CvyKTUw0oMN46SYJX0Um
         RXwqtFsqHlsIsZQupuNA3Tgs/GS9lzOc1pAuc2n0g7ZfsrBWQIX4hW5H/WTaBJ/bx/D7
         XbXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300BTLjtQJMTSp2riEBDZwamC+k9pAJLcmAfdl45w9hkRdzbhPA
	qKdXeeVc/bd2YIWAdadn1Qo=
X-Google-Smtp-Source: ABdhPJwoxsltBtreLZraoa6yiYwyINSG+XQSwFeFdLOJpTOs5lszwJ5N/Ziv/alVMyO0zDxGe9jqcA==
X-Received: by 2002:a63:5c55:: with SMTP id n21mr10073544pgm.166.1625439906577;
        Sun, 04 Jul 2021 16:05:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4186:: with SMTP id a6ls8008753pgq.6.gmail; Sun, 04 Jul
 2021 16:05:06 -0700 (PDT)
X-Received: by 2002:aa7:8e88:0:b029:310:c85b:fc05 with SMTP id a8-20020aa78e880000b0290310c85bfc05mr12054008pfr.19.1625439906000;
        Sun, 04 Jul 2021 16:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625439905; cv=none;
        d=google.com; s=arc-20160816;
        b=soYhiX16wgMk932By5ENnZjPqtYiur4jrStdNUvm9ftW0lr+F4XSiA3DQyzWl41DB3
         zKOgDYQ3kUL0mgiuyIXxsmEG/nM24zQwMJdJh+lW+Fx8ToFJyG5X4gZimTa7MXvT3x+Z
         kAK4b1C/QJP0vK3hTASZgwbP+7CeJmvohmZwfR5hOxHCLVEAlQLEYh796ba0zk0MxTcK
         2RWnRoBrAzl1rR/Q8OFB+DVpMS5m4mX3nD4qqEDMdI2K+VfbBkpgBdVxKip64z7disj7
         MgVFGj/vU84zNAN1NUQulvG/OdvndUUZtj5IiyMuY6yAhSflFEV6d532cxRRUu2mH+dy
         JLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zBqesZ+h9Rl5pwUVDJyV5a5MyQQBkitxWE8dQdqOl98=;
        b=N6yfhBGIf7wIMZPwJr26b7/DTo2ODsnwfeRGpBUUxQ3TudCSiSvbMjCkF/3d/TmBoS
         yT6m+eS5Qsa72OeN8kC1Ls97u1MTkc9rnfab3wzemiADMqzPf/ARljR3P7X340XmCcG6
         cSYj5KbSAp8rsqq+v3WOCc0ETPkwXK7DvKbx1k2pmZh9JVILDwBVeX5Z4Kt5FQ6/NNlX
         MVJtbwEZSogW7jOm93+6iVMiRuTilUN00QmKr82eAwsIVekPHWLe4H4qMvHPkApJVz8s
         MAnET8dWq91q8sRiFUHX0aRNeZcY7BYmgz4V5ktfyq5vBBvcmOzT0PlfRMVK8UyqmjNI
         k0WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XcY+jHCT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si1968405pjp.2.2021.07.04.16.05.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:05:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BCC26611ED;
	Sun,  4 Jul 2021 23:05:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.13 32/85] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:03:27 -0400
Message-Id: <20210704230420.1488358-32-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230420.1488358-1-sashal@kernel.org>
References: <20210704230420.1488358-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XcY+jHCT;       spf=pass
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

[ Upstream commit 9afe77cf25d9670e61b489fd52cc6f75fd7f6803 ]

Remove the unused macro ICP_DH895XCC_PESRAM_BAR_SIZE in the firmware
loader.

This is to fix the following warning when compiling the driver using the
clang compiler with CC=clang W=2:

    drivers/crypto/qat/qat_common/qat_uclo.c:345:9: warning: macro is not used [-Wunused-macros]

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_uclo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_uclo.c b/drivers/crypto/qat/qat_common/qat_uclo.c
index 1fb5fc852f6b..6d95160e451e 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -342,7 +342,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
 	return 0;
 }
 
-#define ICP_DH895XCC_PESRAM_BAR_SIZE 0x80000
 static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle,
 				   struct icp_qat_uof_initmem *init_mem)
 {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230420.1488358-32-sashal%40kernel.org.
