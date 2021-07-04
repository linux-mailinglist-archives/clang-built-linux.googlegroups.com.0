Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBTX7RCDQMGQEAKEOMLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 793463BB128
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:10:08 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id d29-20020aa797bd0000b02903147a50038asf6204543pfq.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:10:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440207; cv=pass;
        d=google.com; s=arc-20160816;
        b=bLZH4JOa1Q8Zp1KdE5h8yHjxRggo1Ac+O8ZBXqtaAm9UbI0dZlBU47EIz9MpLei0fG
         r3ex+nfZ2pkjJjZGHCqUBgXGE1gbQOHL3PnsIKJlW9joJEzb4BS3Y/eT1uL7tJr/Jm3e
         +6nCYZkTaGONZaqw9QlGO9/GXebimces/cXs12chcU+hdU/S/keE2/pjAAdn/dfmHVYo
         8eYTv9cEEaSkFpptHwe5i1fICIEL7wUJ8KllliyJg4ri02uB3G5z2nj85BrZTVB0BC4W
         J9hwIEKuk4XJqPxIXPN87ZxKDJUAaXNvvtuxratHI2osVPo4iEL54d1GpUrv8pPuOeqJ
         zPQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=T/YQHRROLhhZHkozz1J0EwowOGA5rQTL8MhD16pqgyU=;
        b=t3Lie7MM2h7eMGKma5aVJdGjjOci1EY8gpSxSzWkCHZglyOJCeAhERYi73Jj2icCIT
         B6tiiFXdxRMFV/DEKR2gNGxggShLGnPpLEyaF2EZ4BLV4escg6Z9U2YXhkPLv6uEI2Nf
         E7vza/Pr/UJmMj3nRj5cfncHU/8YdcEz6B9C0GoWZ5AsfjKZceVd/P4PVu0s0CjXLXIj
         orEKDuCHapUGqZAQ2OFe4C3mN1J7ZxitSnjZmjFfs8hT+NDun0LgFNQEQSagdC/eTGs1
         u+JCaUAAsHkhYWaXf4re2etmQj+3yFJXyFIG1PNJITYhVNo4NDBiXt/AK+U/11+bE5T0
         Wkfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nmi6SjBk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T/YQHRROLhhZHkozz1J0EwowOGA5rQTL8MhD16pqgyU=;
        b=qSzCZLbsvYBbNmi3pXBhDyQEfT8tvsqwlLaLxIIzewWx/AwR5XQqYPrW5pPq4hSYoN
         lpfo0e/cwSkJiuNSQ3FL/y/xALC9ijsgQo2DzfuP2BI7JF6VF4dNa20Kp4rg0hZXMAv9
         KJYf2LweCXEgsIuVDFFh8TeeKPUPxTnd1xotqllYASDZvLhJQ2fvXfB3Xvj4+9VA3nLH
         t0v9HYnVJ2D/NJp9ImTQ0NCYKofOySo/kpWqeh2TJadpq+pOeC/9vcM/vmRI8vnAQXYi
         YdsEUwiuUugWgSX/tnRyR2akZrSiWWDVpphrCMTxmkZEGWQwe9csaUg6O9ZWCWCDqyna
         Z8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T/YQHRROLhhZHkozz1J0EwowOGA5rQTL8MhD16pqgyU=;
        b=kduu+xI6QFkP/mNPeI6mAImC8DmNI+FojrEACxcv4Gs2c3aRCR5Lp/frus3dWIwXQV
         zogO0705F9O08S5HluYWkWsnhDwU/RW/vpN6aTTmKDGIAJsbEeaTWxVlr5snXmg7rxz4
         WW/o4ahg8S5Ib/v1gEqAo7oTOeMW7nbyxD+YJxefaVBLV+EDAPKT9AGjTaonCYM/GXvB
         Ht204RIRjVABg9Jnn/mWuE5OXVabj6Uq6efwSZrJHU/+kNkddTKAsEfGt09fbcmaceqf
         h7umx9JVzPt/yTib1Q25Rdkrc36YivEKlwNqCs9jICl6PxmAZPZWapryMqugZsyoifSB
         id+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lLFveVRG9qGzqUWPUWiFFcel9LnjHkSOPk37XQo3c6B0ZPTCZ
	1G43kNgUBk+dub4JSYmJcUQ=
X-Google-Smtp-Source: ABdhPJy103U45SmEijHNdaFdragzdjPzCWydBqX92M/zCXaMow+czUXZS6Y4KzuKzv1gfCgv/5ozfw==
X-Received: by 2002:a17:90a:9511:: with SMTP id t17mr12041318pjo.108.1625440207127;
        Sun, 04 Jul 2021 16:10:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2406:: with SMTP id k6ls7007893pgk.9.gmail; Sun, 04 Jul
 2021 16:10:06 -0700 (PDT)
X-Received: by 2002:a62:1708:0:b029:31b:113f:174a with SMTP id 8-20020a6217080000b029031b113f174amr7937886pfx.68.1625440206499;
        Sun, 04 Jul 2021 16:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440206; cv=none;
        d=google.com; s=arc-20160816;
        b=jaMIFXvBGU0mPz/qwYvMPkFCjdzQDVi8d9zsgKSFeR63lh9rIZTNIlOZKZxlS9jKaR
         kAiHf4hVlDBhN0X9h8xTYAs3UAryU+Lxpvrr/fD6ZNK0KtHP9q0tFMUFr2FbXJmpHDos
         jVzuGGLRKeSl4X2c05/q2+jquVO620TOzVvPcNCsARRRrL/PJcvxBi+06Mmz203xzZBD
         WSuPip4HVo7yQqaQi2etPUul3j8SrSmfXRDulg0J7/xN8LMdS/AT3j32AtuTWU4pTiLJ
         ecjBjV+AQZzBgvW5G6h+DmI7FMJr4COEbHJC1KxudEvrF51KLUQ850ito1jnqjCCkS7q
         Xa/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bpXgtI/wLS5eCTWW/418z1P77EycsSy/0SrNajOKv80=;
        b=Rw87GqYz6QmLcrTRTBwPXRm5h4B3aJH+EXadYwgZY7Y7+kM/d0MYeuCOelR9BmMSPo
         np8eXVoQFLJnlgBJ99fHwUNyU2dfCwDqOmNJaDMKa78rZ78M9NER+/HOGW8trBqjZ8kZ
         KzSByX7+dRvflXiN8sf9I33zNzHJ7eMjBhI2s/sN0yNbqeY/ypifdz4b6SnpsvjhPNd6
         diz5aqV5QqB4sPlwsKoNPtP4PCoKUFfbZaz66g69b7u6v+HM2oL8GRq9hRwzRvgyepBS
         IEU3RIrSALf/X5RMHC4JOvpfk0Hmzci/rntYu99Epy9NwdMywamJ7lCyqKwEzBLN5upk
         kBmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nmi6SjBk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cq18si1475434pjb.1.2021.07.04.16.10.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42D3A6197E;
	Sun,  4 Jul 2021 23:10:05 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 21/50] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:09:09 -0400
Message-Id: <20210704230938.1490742-21-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230938.1490742-1-sashal@kernel.org>
References: <20210704230938.1490742-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nmi6SjBk;       spf=pass
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
index aeb03081415c..9542423bb7ca 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -385,7 +385,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230938.1490742-21-sashal%40kernel.org.
