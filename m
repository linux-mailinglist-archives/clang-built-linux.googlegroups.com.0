Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIGDVXXAKGQEEG3AWPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF79FA0A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:51:29 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id y16sf342483ior.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:51:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609888; cv=pass;
        d=google.com; s=arc-20160816;
        b=WnNK9Pm0wGVo43YrCQmf4x+BJUMrDj9w4puQTUXz91bldRSyfDiqdmLcebkJlY8ilo
         9RKn/Y3danbv2sRezmZQ0e+JpnDr9f0+/1phxbmRA0DfLlDpVUy76hOeT4LUwB/5p+z+
         XlHWYqUCdMI/m5dKrgLGE+tctKEvnu/NSiIpPvpihAEunhXjt0vteYSo/r4JytQGfAny
         iLqmR9Gu5bVPrq/NW72Y0JI+G2Wos96FQB2FxR1oMCajqyb2om1tH/K2kDrf36H9uxJn
         WwglFHZt2C9hwhq7cxy+QJ3+H1FS3sVfLltC/GasuLsNVn2V8U2PXIk5XhbwHO8A0O7m
         ollQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qhgvJVao2vG88XhonTK2SJU/kb7rDPxof25ZiIY7vrk=;
        b=Ds5J+MXUBUZv5DHf148qXoF5XF8zB8NmpsYJctKMXcZcUnYw1jL3EaFhRuDcwHcN1Q
         /L7BpDOn+TSu508r9qw7m0VhuMhVIvSA9OKIQKCWzJ7D01qDjKBK/iQapHEJxw3XO+a5
         fp4z2t4w2S3hhpLx/P4Lh0M5B8xSf8uBXvvtwEgJnOcQ141AfvJNPtVV8QS3L2Jj4D5+
         OujqfLRULfzvlaJgahcaFTW6vmTM0VL51Rf6gK0h/PCV9GVhDNIkDBT9jBtNfnFwAA9o
         Ba3IuV0gPQdK57e54Hadkppze7yV/Vdz77ffizMC88ns3+fd5p+lWVDyAUTu9WGVmvAG
         K9Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PGPJLckZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhgvJVao2vG88XhonTK2SJU/kb7rDPxof25ZiIY7vrk=;
        b=rvr2zie0UIqGgIoyEWIEkXgouwJ8R5ofWLkxCask6LUx6QCXRwzzgdSZ2crnavlXXU
         Hx/V1s7QlSfuLS/6C46Ve5y81T5Sy2dpbvl9mRc7TX99fszMxRBIYoP4PlDY5jerNVT3
         txEke0q6GcwrMum0SmYjSet73ce4Uc3A1bn02fpbALFqHohXMsf5IH7v7FPOqS/ar+eo
         lwviZyLtPRxZ5u76r1+8A65AOsZyN+SpXVzjE3W9XlXljrPOZFUk6W5KNpeOTxP9hfZq
         GG7/Y9pyKFA7LOuiNwzOk/Ow4n2JGlLwjadkc1zqyYxe2VGD+U7URo3+ajDBJmuAjMPk
         76sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhgvJVao2vG88XhonTK2SJU/kb7rDPxof25ZiIY7vrk=;
        b=Ba7vagRd8GKuBirp3TgIlpG9GcaU7QqLbqNYilI+02YpoQs5DegoC400/iSOxBYt6Y
         S8NFJYNJntJthxZ2LwVfQoNW+Bu5PcHqyNKGZ/5IdH4Vv6i5XqUjfFMwAwg8FOXW9/+u
         AdKFwD+D9c/EdVAXOhZ0GazvakK9617Wyquzl/5koYijbMubs7XK1d0T4ibPP+K+KWb9
         pCqZdZXJdHXNlw3lG/Eo6nuOPNuDhFa1rUFQNfQcweNug+AD13KKyXAiMqKD7G2OoFhO
         Z+VK5OAj9plyqgO4TYDHv7eDbmPMwLVn05iEp2956x4A9usgysNr0NbRGUtO67+NT/N3
         mNXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXWco9CVSwK2HhUnuid/EBJqgGhWRyPkaao+PahdaMHavjCUhq
	pO8PUtZNa7Nca/POVAHrQMo=
X-Google-Smtp-Source: APXvYqzSXzDGAb4fUCOCbbh3iwuREWijlJYDNB5r/UWlNn+PcKynJxFxHx2TQ4dzpP2lXKrylPB38Q==
X-Received: by 2002:a92:8897:: with SMTP id m23mr1080880ilh.36.1573609888210;
        Tue, 12 Nov 2019 17:51:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ca52:: with SMTP id i18ls61182jal.5.gmail; Tue, 12 Nov
 2019 17:51:27 -0800 (PST)
X-Received: by 2002:a02:55ca:: with SMTP id e193mr686710jab.17.1573609887832;
        Tue, 12 Nov 2019 17:51:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609887; cv=none;
        d=google.com; s=arc-20160816;
        b=RWvcmqYWy6xaNh4RtAyre2vQYsQkQatKWJpxwRQYU/UxEtEEJuhTm+vCulSOzVjLOc
         p3SQywiNc4VoMUGBgPAZ2EY9g9jvp8zbQ0pHL2Xfyn7TsWRnibU9fGsiyxigpvjZ90w7
         iuR1t7M8FFe/U16qtBsGWuBHrZJgBZzPmwZnQfk7Vy6hIDKIwq6n//MAxV5myUBAEDay
         UOrzHP2YuRUxMfguEz6Y9hluBzBmsdgRuzP9xEwDU/nv5z+hDHo55LIXv3BArh29Z6XS
         4AnLP+26UOd7hSxTfW/0mccvYAsHO72HlctoO4ku/jjR4QuqQDvxonpJFFKJ0og1P3Z5
         DzUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ca/v0Go2XHSAJnWwWEopNUnQlR4L+pX+u35IezQSx00=;
        b=HYe80DOvjKtU5Hdz/RagMypxk+yWZb2YoUPECZIoNjN5hsqaPbQp9TL9tYF4Wa7G+x
         rCl36o3vrVPGblyoLT/FNpvF0RnFMKhIqMcRH8Gl0ZZTPze9I9CxKEKy18wMl5wEuV4A
         lU/vCRpNv2a4uL+MAOBlHXogmkYYIsHwystfnu5SgyIHUocVfyd5l6ppBnWmu65ej4yf
         8Vvhck/y3JsrAVOrDXRlJ5qynm8lCVux/WPvlJ4Y/SNUBVcwBw6B+7d+AkRFcOPXr0/V
         SUEko2ZjjQLfQUpnWGa4VpDMQil8+jcNFthTY9PUNhwT8a2knPpMmhjQVVQjzLhSW6Vn
         MoMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PGPJLckZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z78si27645ilj.5.2019.11.12.17.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:51:27 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5467A2246D;
	Wed, 13 Nov 2019 01:51:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 046/209] dmaengine: timb_dma: Use proper enum in td_prep_slave_sg
Date: Tue, 12 Nov 2019 20:47:42 -0500
Message-Id: <20191113015025.9685-46-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PGPJLckZ;       spf=pass
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
index 395c698edb4d7..fc0f9c8766a87 100644
--- a/drivers/dma/timb_dma.c
+++ b/drivers/dma/timb_dma.c
@@ -545,7 +545,7 @@ static struct dma_async_tx_descriptor *td_prep_slave_sg(struct dma_chan *chan,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-46-sashal%40kernel.org.
