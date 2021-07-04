Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBB4ARGDQMGQEJPOOJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 787F53BB1AB
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:11:04 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id e76-20020a67694f0000b0290289e94dfcdcsf416351vsc.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440263; cv=pass;
        d=google.com; s=arc-20160816;
        b=QZwJXZ4j258eIOCmHV3a/ecaSKbbeSTH0nOZx+uiLZvfWO4g8DFB1IHBo9zwAHr7dS
         4ZH1mlq8f8JI9rDHKrmbC/tPXKjq+MYTkRZON3/AVRUVZ/7wU0/CsE9eAYekXHNtPF+l
         a4SJjl/DEtCETV16tUIHlGVuJaLUJsQvDTBXeraZT/g0HVgN3uIA/jaanaWMWiObAPoz
         xFy/WReU84BOuWIN/HBg6czOy7gxVC0wbTKOJn91XOtem4ZRaga8vKvt3YGjvUWEJY22
         FJDT33xhVMscn5qxi8cOgKk248n0eUCktxxAfkl3oOBd83UVAcBCmsUyOZ2kY07Wgt+x
         3acg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UMOals7aVRDWrn5niRemFuNRXjC8Ap2ZaDmdycp0T7U=;
        b=OaS1ePRgg/HoHEUaFf3LTymb6RW0nnIpbkppOzcOJQ7rWAo7H50gbbzbyLe2ToE1fQ
         AeoJWzYx4MUeNSXYTvexfQuokJZNrM8sRBOQy+pFFlny71HDx/DBNvoud9AHVrf7QXPJ
         gCMlaYh7MUySCuRIOz0Dh1eVcWR8WZsD194Y6igm6xx30uJ6p1OpF05Dnsy41edWFD5g
         RehsFPJ3x2O6ayVGGlGuTmdnKaVQi0kkqoicqBGceYRYRyTaDSlnNEECQq/v/QuaUmKI
         N63kC0U4GI3dPhYhKvgmZ4LtWUybfH8Yqr//TSOyelHEVyB5M+VdO4X0QxoolYSYkGJo
         N+jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qLEtH0zN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UMOals7aVRDWrn5niRemFuNRXjC8Ap2ZaDmdycp0T7U=;
        b=C1qyCfp+0YBdV894eDAS88rKAYBs9iF+F+EvPNeeWwvgcdLMMXd5t0SJPxh+X94eHL
         tGL/g30qIUkjjGdNx3W+9ubHQ1TrJSP5HQk71yV5HB9OIYUHYtd6ogAi4QSRX4qLT6ZP
         kMY0TxVngvounaq6ERf4y3qnTDUDBbLhVnwTA6JPT7t9eJ4Uj5flchj4TPDdbt8F+PEI
         daqHsIqOpYvAXmDqJ+jrT3DoL58jpl/98g9Sxj6zFwq1sItHOU1xB24Z4xSkrWJVXPt/
         H0hkJ326B9vZh+8bSgfe094MyRSOSp9tADvmZ7c+XzCvjawn6a1Q0/oDpwU4DdE903ZB
         fKQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UMOals7aVRDWrn5niRemFuNRXjC8Ap2ZaDmdycp0T7U=;
        b=pGvzafCfsxKik1Ax1IwF3se54f8x7b9CU8hw86K8CfTRaFHIrhtuFkrMqUDV+PG769
         zPMfME0qFj8/9DMiroVTdY7MAspnHx4tk+3kw16dC/xBWzbm2/vFw7o6lhQsO2pBQrFh
         dn0WVM+TVQBWMptZ6aqDiBG+82CaPMmWOZ6Tg0QTkCXQWxE4G8AczheYg5jD1k7WdDjK
         u9eYSJLc/83HfGJkalueV/OvGslUqmEEKui+Za+Ivdr9P0lctKBCWg6z3ysNYGksjn2U
         zbkudhIz4yEYRu8M0Vv/de4FZnt6TETnOtNVq6U9nzYthvRezOM/+U/WyG6XAhV89WZv
         wcJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kkXIORRd30XBKJ6OUI2pKmzmKsgozU2v465eOXVrHkMuXpvHD
	FTSmIvByfnRSMRgy/OwQU+A=
X-Google-Smtp-Source: ABdhPJxaxBXQs4olJK+ZWJ7x+oRz//VCm0fZ07ibiGYwJFBcY3djJFMKq7e5lLSw/4z4QWUyV0qCww==
X-Received: by 2002:a67:fd85:: with SMTP id k5mr7519280vsq.41.1625440263616;
        Sun, 04 Jul 2021 16:11:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:237c:: with SMTP id o28ls203119vsa.11.gmail; Sun,
 04 Jul 2021 16:11:03 -0700 (PDT)
X-Received: by 2002:a05:6102:212a:: with SMTP id f10mr7382459vsg.56.1625440263131;
        Sun, 04 Jul 2021 16:11:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440263; cv=none;
        d=google.com; s=arc-20160816;
        b=yOWNgzrsjpthkd8fnV679obV+VCHw/DHkkxTRpF7ShrOS8Z4wMo8B/KY8lP2fGRUkl
         qH4hjkr/6EAZOxIgA6WOQz5xngtW4pt0JlsiRH2NYVaxQlRnK3jPmRZQ5+fC7jar/AOo
         JbR5cZEFB1hHHy4v1BAgcN/Nip6j2P3ORcn7YjlNnig3Up+ALTHcmMGHBm1/wN3YR+bk
         aOqL7tcnN8TAvRi6AMPqkrDkWjpzakL5zqqgR6Woc4GR4pNEXQf23qIY+V5i0ANUfRG3
         dJIMh7/8U+oGhoq7zat1CwmOzr/WrdHJtcF60DmfzGGNS4C4BeqV5qi+ihqMvF+B0EWB
         rXEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bpXgtI/wLS5eCTWW/418z1P77EycsSy/0SrNajOKv80=;
        b=PMNEAVCRDChko/BzH1bPNSTHYhJg4nk9kF8otbTpIeYQLCcGhGIqQdhOmRJEwdH3Wp
         52tRCiJiZuHVXR+c66JQuD00GYdnNR6kQPJQDOdMS9QrWPMhfrUJjmaQF0IwLvT5EBlL
         3qJNaOTdCxA6FD3kIpfG2xzChC0gcR0d/28Z8YuO15yvTTAcRhyIOo+6Jwwccw5Mrdfz
         IP6uCbuIDfbaJDvffzlG4vv+8iuIYMIAhlRkFFEXJVBQ+SiJe47dNusClynf+8uNTBXw
         Eve7/maCNifbzntn3VJcnRWwUJ7Mycooo1XbEdu1iUfBTeDv63Qx5AU2C+thFpC2DzgF
         j5ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qLEtH0zN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l6si1326295vkg.0.2021.07.04.16.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3020261964;
	Sun,  4 Jul 2021 23:11:01 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 14/31] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:10:26 -0400
Message-Id: <20210704231043.1491209-14-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231043.1491209-1-sashal@kernel.org>
References: <20210704231043.1491209-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qLEtH0zN;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231043.1491209-14-sashal%40kernel.org.
