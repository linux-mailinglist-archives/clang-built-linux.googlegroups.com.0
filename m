Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBA5OQLYQKGQEPEB32EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8473113E367
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:01:56 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id e66sf23007413ywf.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:01:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194115; cv=pass;
        d=google.com; s=arc-20160816;
        b=T1TRkJ7UGOAVWtzUgpKCcR4i0oX+5M+mmF7NN9GpKOwhbToarpE0ER44sBwvQWIdy/
         3OGemKKZejLxe1OIVBa4lbvQtLQ9k/cS92lvpK1ULAh1x0tkD7De+HNYIxXICcvUqJJy
         xOd8kVBoGiMyOWvv8aB6Qp4Qci/97RRnnjp5oVuYdIT3EB0cE/xevSkmk9L5esgLVEfh
         wVKBZL4Dk+jZzwffulId4qHafAgkuF2vCXaKkicbcGdOD9ML43SfRUKB8v06fYKFD1Yi
         eNsoU7x7Osju4RPseliGAzr9yUylEyuG2Ykz5D+2b5dPpL9H6je3H/TMKqcWFRZKgZSU
         6WUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xM5bZthmv88lt3YGzNTIHjtjYfV9B3pl/Tu6dhQoLqQ=;
        b=UP/0jq/ht1TWLDuUQYLi1ezRBO6DRIJ0iSMR6l/CHMJqkuCDcw70srkdTgQ+rDJChm
         CbMPhQC70JnSX+Jf+aK2juKo+T2ArWDzUlgx84XAeVsaaDPIO3IiGI32ypx1HSJBP+qu
         0J9NcPitVGkOFv5dyIKRzXiwdV6lyQObloEyjipytHwlhKNgJSYhlfx4WiSlA2CC0l+3
         bvmNrrrG8CMa7iXFeHFAwqJK15+dBX9fIBaaZZA08teUSS7g1Qs+KNXNY5yKRdzra3dV
         ww5aTH7vuiOGRl77YMMYIn6Q5bDENvVELZwmOfEmTGjLy444twjg3+XoAbVhosYsLTzl
         cZRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Fe7OK/c5";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xM5bZthmv88lt3YGzNTIHjtjYfV9B3pl/Tu6dhQoLqQ=;
        b=YSN/LHg74RqBqoQwKoJKIUZqPTrYNqyjUcbrnWQ7c+XB+UqLr7V+88f7ZUs/3ooE2y
         dbA/WqltY7fQgadzd3qagMgFkCbPsPEqSgQ+u/aXCG/izTXJzB8on+QrsZUMSUIAEv2v
         8eUFE/sRvas5rmk681FBirFaAg4+LsYu8N0skC7CNWZ9TqQj5sU9rW9M5NaN+tNe3WQ6
         68JpWKxC0ZcpclD/u4AERs/tUV2LPWpnJ1QSJUgJQvsVAmmeihzfns710Ih4kvvb11a/
         cigU7Jh999JBAjjZss69dH1xr7iXC6RSNFR2hj9qSJtXcSyqj6072Wj4nnGw+eMd2Wa6
         8Fig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xM5bZthmv88lt3YGzNTIHjtjYfV9B3pl/Tu6dhQoLqQ=;
        b=cU693TY/ouCxeuNEaoHIxidFBjkMrihwTnDY7zW582vIaybIWsBpx7UXaZIcucly+J
         AXb4xaySeFWR1s4jxuOFhUkggLoIezu8e84IfmfgJ+8jMqr/X5XSIFF4Tigslh7W/2AK
         pqOn3Ou/m4CrJxX5iXamqyvl1fzJYkkgAu2TouUBOu2IZxCzkmAvDvC1Z9coDXOQjODM
         g82G5KLPTO+HHeCqcFcvk2WZWCfAtJqpTCKfJ2CRjZsyjnf/4A6uyMmEdpeHO2hQ4g8z
         chwt4hseLbTdp8bvHJUQ0TeoPCXCFs9/IIxpYrMh+u0D87X1rIwZlDojSUTufyGqJFUT
         1eIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8+IbYGAJwnM0ClUzP3pTVqHIr+2rbBoTkSU46avdsqKoLyBBx
	DfJmJDCKc7Klc2wO8XOUvAY=
X-Google-Smtp-Source: APXvYqzo2JrNnmz8PKhL2FlYwpdV1TVwUgYSPJ4NbF0GCCvnw11eBg/8Vxy1KSZEg7vW4dTTwnqw/g==
X-Received: by 2002:a25:b787:: with SMTP id n7mr16624389ybh.423.1579194115239;
        Thu, 16 Jan 2020 09:01:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:845:: with SMTP id v5ls2461217ybq.13.gmail; Thu, 16 Jan
 2020 09:01:54 -0800 (PST)
X-Received: by 2002:a25:3481:: with SMTP id b123mr27913573yba.16.1579194114382;
        Thu, 16 Jan 2020 09:01:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194114; cv=none;
        d=google.com; s=arc-20160816;
        b=QWUOnwfNHAORtgJa0yLmUk8tgimmuTkszYX/GGHEJrreUQevI7H+nkS8+Nq7uHHezl
         y7nqPvJWibs4egYG+relE21tcsrOw16IfIA1aKJb5UXLiZdyJIxHf09KdZ80lIt+mNmj
         vdSeA/odM8ZgLwf/mt04W4YapyUkGcIrIg+WeYGnf4ORjPhYozJn0+ogFlMRhKW2mgnI
         +tfgiLIagjGLUi9Fd5G5xftryRfROpAs1kPQ8hSWOwrXsnbg2lMCJCp7TpCCx7kFBDGf
         1LRLn6lo2POtp6QwNdUtkMH9GyXfPrqnWxwPtQptGvpjbbxpVQpUyvNwSf7LJ/FbyoO8
         aKWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fZlkItx1HrYKKc0DYZwDTE/D1nsjrdKBcsHz2kxa/eE=;
        b=yGW8m7e5YJWR9N/0Jkjg1O6+AqvP6mpB2rqjgROSM/FLymK7w8f26AmdOLGDbTqi27
         +GeeU4c45UdT/hpHk4oF3KMfUAJPPwQQFBaRIvTlV0eap5wiknegoGTS5sps7P32y9w6
         Jb9LL4hd8l933QKZt+EegGlSKeDhOEsZxWSMXBZCurse7rWNyQgZliC3dNaNXPuganRq
         4sG/6qOfKadpiEeatjyUWjuFlJVJjxcxxujR0tc1/OznYKL1QtDXYzdFA8q/8iKl2vZl
         SrHuSdnBIJZJRqKimpbE/Q3j0Fea8b6S8cT9LAZOSjgtFU0zcQdwSDU1Ed/x9/ng3BKI
         sJcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Fe7OK/c5";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p15si979028ybl.5.2020.01.16.09.01.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:01:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5A736207FF;
	Thu, 16 Jan 2020 17:01:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nicholas Mc Guire <hofrat@osadl.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	devel@driverdev.osuosl.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 209/671] staging: rtlwifi: Use proper enum for return in halmac_parse_psd_data_88xx
Date: Thu, 16 Jan 2020 11:51:58 -0500
Message-Id: <20200116165940.10720-92-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Fe7OK/c5";       spf=pass
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

[ Upstream commit e8edc32d70a4e09160835792eb5d1af71a0eec14 ]

Clang warns:

drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c:2472:11:
warning: implicit conversion from enumeration type 'enum
halmac_cmd_process_status' to different enumeration type 'enum
halmac_ret_status' [-Wenum-conversion]
                        return HALMAC_CMD_PROCESS_ERROR;
                        ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~
1 warning generated.

Fix this by using the proper enum for allocation failures,
HALMAC_RET_MALLOC_FAIL, which is used in the rest of this file.

Fixes: e4b08e16b7d9 ("staging: r8822be: check kzalloc return or bail")
Link: https://github.com/ClangBuiltLinux/linux/issues/375
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
index ec742da030db..ddbeff8224ab 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -2469,7 +2469,7 @@ halmac_parse_psd_data_88xx(struct halmac_adapter *halmac_adapter, u8 *c2h_buf,
 	if (!psd_set->data) {
 		psd_set->data = kzalloc(psd_set->data_size, GFP_KERNEL);
 		if (!psd_set->data)
-			return HALMAC_CMD_PROCESS_ERROR;
+			return HALMAC_RET_MALLOC_FAIL;
 	}
 
 	if (segment_id == 0)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116165940.10720-92-sashal%40kernel.org.
