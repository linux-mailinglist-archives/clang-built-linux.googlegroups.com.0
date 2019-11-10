Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLHWTXXAKGQEDUKRGGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FD6F634C
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:51:25 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id s7sf9069787ybc.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:51:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354284; cv=pass;
        d=google.com; s=arc-20160816;
        b=AaPTwYPYv2CUkSGEZN3HuDzS49jjLpB2v5ipASeum+l8HQZv5xDGcXKBVg/ofPdAET
         iC1hwmt9AVKLY80mnWgX6O6f3CFzRmqpQvMfq8ECyACDJr4j7zGzEps/r2JCWHVYJ4Fh
         uyjtA7LRtTkZJpwQQkOv4iBE5c8/86ZxbscjiV/w1EMYWCCAUc1RIKZcenqbDCi8gZey
         cJOu4cQv87Cg+wCVHkIb2QUiKoL1MTagUvsfnjdydshcQQFm1G3MtHZiW8nHyih/WM3m
         0sloZOjHJXj27CeeAYeSAPkyQCi86I1WgfYsKdbbrgbwR+oEY4Wwy7G80kPgh9xzueqq
         gKFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lYZIR493+rn/zU+XCwQvvLpT8+TH3QOVg/YWUA5DqxY=;
        b=EBUMugw4PA94/3aJZMLokRq2nZ3pJdiPQcoKW9yNUnsFxm/LrOvbr+k63b/hgGCSy7
         AfhHd54MJvwZqbkUGZhzH05yZTzHJkEJdFXhqvaGKhp88zIhhEtL+Ch1knnTSECOC09q
         NBT0Rrfhm6ZVvh62KSTmIBHZF4+69YyCMP7JoKyzSUgsWkOJmcpQ1jjh58O86a/stfhV
         +wl9KoUfMDoCgAND3vv09rAYhtuxJrd4reyPZErJAYX0k2t8l/DNEKLvV55YdLurOTFx
         QBX0mItvG6tqFjaj8mQqayekKoAgOCYB7/59p+KfQSNxXTySTe9Ftumc/nBUbC/QaobT
         c+yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GrR6MvKv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lYZIR493+rn/zU+XCwQvvLpT8+TH3QOVg/YWUA5DqxY=;
        b=WfXyf0OIygR6/dWJqfdvCiDfSF08Isb8HJP8qOi1LBMsprdZAXMltoijyyzzJvelh4
         Hj3fH2MqIjS2cKrwDXq2v7dEWv7/6Us9MDrdRfvnwMVQ+B/oC0NlzWvfpNs+gWoofK3+
         1FUJn/UO+AtwzEWTQgqcEKbnLGawRViVe/z29DPKahdEkcqe8jH92eJFR//z04SKl6Gp
         YNnGABICazPQtmb3X0IVWzd6ehv/lgSkO8euW65TKa+x9zq4nwMC3IGhCB9VCK3JtGp3
         aZpXZcoFddTFU6whHqraBGxTNtOfPQwNRSVMmll1GPE6AOKPL29jN2F6gUg3EejTSx8I
         JyCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lYZIR493+rn/zU+XCwQvvLpT8+TH3QOVg/YWUA5DqxY=;
        b=GXpEJu/AkUushgfEa85+BEq7F93qRJLqAO94HGFJXdBmFk2wxIP/23kwgIMKhe2att
         bweGfb/bfn2kUz3d0ijSEojdcUQM/9iIC5AURco9P+kDKHLBl44bPyCN/dZPBini8Bba
         gc8JkSJ1Q5yZnstMAZ/o6XYajfw7H2NQWwBUg3aqJk371qlXvaU/opc8VnI5M2YjORU+
         BSf48RLrMdGXJPGk5Ys3eIqfdFMKx6PKMmSeduSNJuW9wmNMUzeQsUDV0IcPl2sWDjf8
         SPycz5N0Opll6i1UvI9r2zTYcysrNIMgwdjeF//S3j2Ty9lJxoGE4D0/PhVShdxbvjPV
         GmpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSObTzJeFIz1z7duSeEplPDN1ZdN01C4oYy1Mu+5tVOgh5C/1n
	rzK+pT3zkNsBj7pD5LDfIOk=
X-Google-Smtp-Source: APXvYqzNAVlP8k+tI/ETq5BOvEH5C9bCX9qxi4ISxtO/PLHgebXC9p0nRqNscmQ8Lnq0O1E1vXiayQ==
X-Received: by 2002:a81:51c4:: with SMTP id f187mr12861562ywb.409.1573354284575;
        Sat, 09 Nov 2019 18:51:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bb06:: with SMTP id z6ls1999482ybg.8.gmail; Sat, 09 Nov
 2019 18:51:24 -0800 (PST)
X-Received: by 2002:a25:75d7:: with SMTP id q206mr3077527ybc.177.1573354284235;
        Sat, 09 Nov 2019 18:51:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354284; cv=none;
        d=google.com; s=arc-20160816;
        b=yZlnCeXW0RUj44riDpN8FBBRyOEUJk6EdAQaCAYx/Gu7OgabAr9AZYjJJR3TgZNVW4
         /7YxDgaxOqwj3RZvCzN4vfMlcjfs6IjhYEcJBCoDfglmrfWV4QKkK0DaqVo9iCMe9cGj
         b1iQi1xUUEw1tJXfSxUnQQI+TDjgetFIXs/nXvHZOSrgq6YEebvxYhFknZVqa3bbEWL7
         RHwGBH5dgvX1vLucToxz/GUhLZQzGMfhJaDCd9oyG550mibBjIXV01nCK4Hjecxla6nZ
         UIIQreotF9MzxTxg6O+UI6f8XxWSq0mfbgUUomEXENvJUNUO6R74SYJtENJev2b3XzuF
         sxeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rAt7k/U3qQxqVFF3ShxSchISGgGuvolXvtOgobrQpwE=;
        b=m8DL08MfyT6Jjxv7jl34HvjZnziDPy7WH8XVileRcD2xUY1DaFjXXvX76d8ePMSA5R
         ZtQAbrrXj5dlKA1s+zkBZo0G13E46Sy5XBjb19I65BgMnI5oOinRM5AJPjyzs7yljrge
         HzdOCtq/WC7vTUvElpgnOpJqZjsGpO2Mnlep/pgdZzpbkSvmQ2zGTbEN6v/AoBdxApgH
         FLm0A/pXMO+2PymcpT1DW/9a6koxyIpVMgy8xZrWNO1Paz+4y6ERy67UwggadYbwcUFi
         QzynNAE8hNf3BD0z0iBnkYipFT/ItvNejH7Ff34r+lw/yhRo7XjEnviANJW1XAU+kUDT
         78fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GrR6MvKv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f184si804444ybg.3.2019.11.09.18.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:51:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 52585227C3;
	Sun, 10 Nov 2019 02:51:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 25/40] media: davinci: Fix implicit enum conversion warning
Date: Sat,  9 Nov 2019 21:50:17 -0500
Message-Id: <20191110025032.827-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110025032.827-1-sashal@kernel.org>
References: <20191110025032.827-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GrR6MvKv;       spf=pass
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

[ Upstream commit 4158757395b300b6eb308fc20b96d1d231484413 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/media/platform/davinci/vpbe_display.c:524:24: warning: implicit
conversion from enumeration type 'enum osd_v_exp_ratio' to different
enumeration type 'enum osd_h_exp_ratio' [-Wenum-conversion]
                        layer_info->h_exp = V_EXP_6_OVER_5;
                                          ~ ^~~~~~~~~~~~~~
1 warning generated.

This appears to be a copy and paste error judging from the couple of
lines directly above this statement and the way that height is handled
in the if block above this one.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/davinci/vpbe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
index 6d91422c4e4c7..a9cd8c7a7b347 100644
--- a/drivers/media/platform/davinci/vpbe_display.c
+++ b/drivers/media/platform/davinci/vpbe_display.c
@@ -520,7 +520,7 @@ vpbe_disp_calculate_scale_factor(struct vpbe_display *disp_dev,
 		else if (v_scale == 4)
 			layer_info->v_zoom = ZOOM_X4;
 		if (v_exp)
-			layer_info->h_exp = V_EXP_6_OVER_5;
+			layer_info->v_exp = V_EXP_6_OVER_5;
 	} else {
 		/* no scaling, only cropping. Set display area to crop area */
 		cfg->ysize = expected_ysize;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110025032.827-25-sashal%40kernel.org.
