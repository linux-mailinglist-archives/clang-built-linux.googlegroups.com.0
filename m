Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDGIVXXAKGQEVPU4JXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 12694FA202
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:01:49 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id y127sf664925yba.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:01:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610508; cv=pass;
        d=google.com; s=arc-20160816;
        b=n5hXq8VSR7K79pmvuZn+c4zPhZytLmFtXgausaWtowvu08pFa3PwAIaZesDXQ4YqTf
         Gk6v0Fc8cMsxZjGqzRUmF0UAQlqJuB5itslDYhEHrgEAndGFTTiKn8891kdHfGe3aPmk
         gdzpPFIqBe9QnhIh9X2cUSj2GIF3EwBCIMufN8gLRrtnbvuAJHKVEpcRHH+mvTWN7byr
         9SsRr41pwrKA2lYi6K+BIhEPwcZpZeSZfNQZV1y0AkrWB/mBzp7jj2TJVzDwonpakO9V
         Ce+87ivxohaJfMouokmMjicBfyLUZHW9KYHZqOBG57fpXrt5P0bgA2lOlSGvzqq96SZ3
         NumQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VpfbAahXPrkiBXT9bk9fof/qmbXwOsZ3aXDMK9TbB/0=;
        b=INTYVScKTsrDo6c2pVwRUWKWwIWHyVJmqCEzLF2yk5Bjs94Ahp2aRaYM8US3M8CInk
         zVz/d0+PL6MYjZ25m4qFebm7k9Sb6lM76TWdFTuWcDM/CQMlnGAbzUicDUyeR5wIAyNn
         l/fZ6wVZ5U1P5dMWWFA2+C0ISv2dkXPu0nko/nF6vsThaWWco9mMg5yWaRLR/jkoD5ss
         Uu4IhE6GIFoe20HPdl1iU9zXKfxhkSzdrWkxkvTYoTVfOEfiHvnhl2r6p2ek6Q+AcCiE
         n9kjaShOuSW11WElB4TLnCF/AA4DSxJEth+Cfx/VjYRkRrgBsdYsCuoGQMCB21rPhIdI
         5ijg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ailNMAsz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VpfbAahXPrkiBXT9bk9fof/qmbXwOsZ3aXDMK9TbB/0=;
        b=or/bd4x7iWKkZDwCKTMQc/gTDa9iPaPjopMh54Qejr7EZb+YiiGhE2/+311SqmaOiC
         sNAqvPl514WSv4HgyDN/H7x1Y5a3l1xRwqx5jjOihKRee1ibmkIL4Iv2oYo1T/HTrgwB
         VGy+fiYZRYBucyVV2owtlT276QA9YX1NN3fFelFA3d5g5Ee+mqa3YoPucVbiTZdpL07B
         E9YWt9UyVVMDHZdFla5WA2okL7nojtaJDThjQMm/dR1ewUNDZfKIeCdesTP9MLk41s18
         45kV01prwVN2oaaV8ESwtTyqtpIWZr2yv0MtV8r8Nlo8HUGBLb/d4w+/wve9qrberd6v
         Y/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VpfbAahXPrkiBXT9bk9fof/qmbXwOsZ3aXDMK9TbB/0=;
        b=YQ1A4A6if2Cz5KIMMLBuZk7bloikk2ixKILKjLjVVlSH1IsfImb2DYMSsfLJj/JRka
         WXZZgoK6e+/yq39XMUMF6gCsjBYOhChnnKr+NVn7vmZmJiyBYq6AD36DhKwgSz06wf4H
         1wOeM9iJFEggXJ1txaE5i/maO1dx4nwAsehmTPODgi0EKaPsG9/QaVnVWo6u3nfJuehO
         ZPgdDXPDGi64ilONE4Wp/HH6+TmTWEkhOFrTwjfm6TEobzO0ZO7Wr6Iu9gnhYpN6AYZb
         shmf4dQYZN3Y1lbdtXnJDwN3lUZmhK6KUvp1jfbS7p+F1JR+JjaepRF8M9W/KtBkdOBv
         Q6cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsqd/cNYSMt58SDYSg2BySyL7NtdvxuAKlEXB2zNWZD0VhTXH1
	er0jyzfkhgGCrHggtUX+q4c=
X-Google-Smtp-Source: APXvYqyaFpHIW5pAOGEe8Xxy7JV16Mqf7th5dFqOguLkImFZujEPFJKc+9jq0x4hJiw+hm2DrC0GzQ==
X-Received: by 2002:a0d:f305:: with SMTP id c5mr697095ywf.31.1573610508074;
        Tue, 12 Nov 2019 18:01:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7910:: with SMTP id u16ls127760ywc.9.gmail; Tue, 12 Nov
 2019 18:01:47 -0800 (PST)
X-Received: by 2002:a81:49c1:: with SMTP id w184mr735724ywa.264.1573610507728;
        Tue, 12 Nov 2019 18:01:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610507; cv=none;
        d=google.com; s=arc-20160816;
        b=CeLrYQ8MnHPuBLLnowZnpBJ8/MzwOTArsCks9F2CUUomi5lrWhkNUgbrtCYR/EMRhq
         gKjfW6O/gdw0DZbhANVaYZzQTm1UzqYFeOHDPbL8enRjr31ZlKmAx2oxbDSo/2PUi5ek
         5AxYqN03k5tnMf4Ykal22mEujRwCAECAwsSMamC3UtiDOPOiXgBKnTN4aIjmBT4KIAcS
         VRt+3018/SozLJ/42yN5IlNS1EczS52WnMKEJwpCY4NaDoc0450eMzUmITi7mpPVx3ua
         S27Bm+7ShK4UWK9ODawhh8NSWHkBmDI67SHsCl5dsDZ6SpQeodqfGjSoh7XMVpisAZxC
         FrNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9wyx7bTO5g7fglyfHRppYu/yfMI7sz3lUpGe3KfJfOs=;
        b=nTgorj8KUX6H43uBeWIpOWNwTebTXFpTKkRPHmdaLzAdpQ6dsjC87sG+/Dh3HqWYev
         g3pXnoLg80ML/0pRwBR3BIy02Uoo58M+ZDj9BRpG4vprjnzfGpWBUYtTwZDNQF1MIbpZ
         yn86Cw+pT2eIzKUNaxNeJXPfi0WYHmy4gKeNhvcQCxKSE+oP15XtQCt97l4NTBk2VrUu
         kMK346YwpnryP5DAVitU7OHUS1htiX+LRnLPN0r9rmaSdXQ/+amQbgNV3Jw3QSIi89V9
         jR2wtwiFDBtbbsUVNHVss+3+vJeFja0v8O+emDNKXKgh9+70t0D1JjQ3g9NYBD8V/9lT
         /vvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ailNMAsz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f184si56456ybg.3.2019.11.12.18.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:01:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08F382247F;
	Wed, 13 Nov 2019 02:01:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 10/48] dmaengine: timb_dma: Use proper enum in td_prep_slave_sg
Date: Tue, 12 Nov 2019 21:00:53 -0500
Message-Id: <20191113020131.13356-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ailNMAsz;       spf=pass
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

[ Upstream commit 5e621f5d538985f010035c6f3e28c22829d36db1 ]

Clang warns when implicitly converting from one enumerated type to
another. Avoid this by using the equivalent value from the expected
type.

drivers/dma/timb_dma.c:548:27: warning: implicit conversion from
enumeration type 'enum dma_transfer_direction' to different enumeration
type 'enum dma_data_direction' [-Wenum-conversion]
                td_desc->desc_list_len, DMA_MEM_TO_DEV);
                                        ^~~~~~~~~~~~~~
1 warning generated.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/timb_dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/timb_dma.c b/drivers/dma/timb_dma.c
index 559cd4073698c..cf741187c9bb6 100644
--- a/drivers/dma/timb_dma.c
+++ b/drivers/dma/timb_dma.c
@@ -552,7 +552,7 @@ static struct dma_async_tx_descriptor *td_prep_slave_sg(struct dma_chan *chan,
 	}
 
 	dma_sync_single_for_device(chan2dmadev(chan), td_desc->txd.phys,
-		td_desc->desc_list_len, DMA_MEM_TO_DEV);
+		td_desc->desc_list_len, DMA_TO_DEVICE);
 
 	return &td_desc->txd;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-10-sashal%40kernel.org.
