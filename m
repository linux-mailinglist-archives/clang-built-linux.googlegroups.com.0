Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHUTVHWAKGQEQLQ6CQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD55BCDD3
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:51:43 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id 132sf1882984ywo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:51:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343902; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMMIfWCJ4jEYgOQVhSFNH2+tTqe0K3l4QeL6lNkuwqNhehRE9W6Bbq4HHjSM8yBUc5
         IBIbjD50as4FoH8NR9QjCYal3N8bJKf/8qVe0nFxxkK32ExaBgk0NidKhcZmx/iHqTti
         qTRDY9cEL7Ze3ZUt3DjsDYOqDGaZlQHti4XAS9W5majJby7WcKDCowTu+nfG97Huupsu
         /dMXoVsnTr1LWFAypjmRn9jAucD/KtxgdqNBvIHcwVQBMqHwYlhEBwQWcZaCngTYcG3A
         dYuP3ymRAQiZtZ85v4VK8HHIoaPEWbNppXrSLVapl3CeJxkAtbhs5sRykbCNJrDTmdtV
         zW/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pSopZCHg6FkB4tCRRY+eoB1FFHBbu0AvPsWiPXbmCyE=;
        b=awXANfo7jC6iJcFuzf60CtYi8tLx3Z8X6x1w5wxNrvZW55UVMRVC1Uz0zFh+p7ITr/
         HIBGZRXvc/j8BsrYWuEs0BwCPsK/LuaT1Pqeyf6dXnHWD30tZ24VY6Se8xvHkvw49rfd
         pHiMjJr9BcGQ09b5l9wMjW3xPXxDbcPTgqKiFSzoGEKJGOWB2es0s8yCEKX8SoWFQktm
         1AIFfvKu4orUOrV5CNbbqaToNeSbj4xPQkNZiSfsR6N4n4/H2WL3XN88UxZfI1J9OniN
         t8ENw7X6y7J1MQ9cMX0vss+BfdSiwBkD8/O+TaEfQGe171Gu0WamMUq5/pG6PpzBGvwd
         EO2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=W1MP71Yx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pSopZCHg6FkB4tCRRY+eoB1FFHBbu0AvPsWiPXbmCyE=;
        b=W+uk3UlNpjrO3cDH63IRNCEO0L37eJK9LBAvQUpMvoiKKix7dAtSIMd9W8UlZb+bTw
         5qQBDDN4tsA1lBkkVZfbhUjxI3Sn4Wl/CfLveBTw0+gPe6/sPuy7tQLluZFBneA02Wza
         yJtPmF1glK1HrDGdG5urGEsd/GL9oWU6Sv1rfzm4AHH+t/LQX2WRKCB6RBvY0pX/dHf1
         etNnVmbSzWj1+uH8Rpw+ZdzQJwpy9pAnmCEAUIIKuF2DR/FZmWH5P4tXqKneWfcEQHNm
         t3E39imxoQKqaqr6UVhpANDzZaiIdvh49VEetSkyk6WXndmpAFakhIVqqD9+RS2MVVUx
         0QCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pSopZCHg6FkB4tCRRY+eoB1FFHBbu0AvPsWiPXbmCyE=;
        b=OJ9/HxWfxYfyZ6Ts1CgFM4YxEPlbOE1I2oB8DlekqLJt6jsozp4OBrCXIlKM7DhT3l
         2LmQiYOhupDUix/8+xaC6NbP/w7ox3W2djgok/wWcNHnsAIh5ff78D5w3rXOcQ0Tqlod
         hYVrTmCqw1UKNjdWc/I6e5LL7FajpoK3n7kk9AJiJSnjU+ns47QmtNag4WmluW47t7jz
         Vke9pym9Nr46vbq15QnNAxWG0cnouEt2HTD0gtl6bwdqpe9oxE7oi3Me0fQMkrAjNVQM
         Y6ffcHtX6qj1REkdLf0PNESTMCuVnClG+/D4oMeqBawbrnWM/NKD3SDBbiLoMdxc3HJw
         1E6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMyHXCZfv0X25tGjrRr5EfBwwrLcrW/OtBCq3k48hTFJuNK35J
	CBnBIeItjswEtAZxPc/1fYs=
X-Google-Smtp-Source: APXvYqz35ABKI8axLxz/9ss1mhvGru3ALZfWrbvTqpMpk73LKODAIhk7PvVJZp7DBWJGfHFwyfNg3Q==
X-Received: by 2002:a25:76d6:: with SMTP id r205mr2982154ybc.26.1569343902294;
        Tue, 24 Sep 2019 09:51:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8109:: with SMTP id o9ls447168ybk.3.gmail; Tue, 24 Sep
 2019 09:51:41 -0700 (PDT)
X-Received: by 2002:a25:5b41:: with SMTP id p62mr2824209ybb.266.1569343901945;
        Tue, 24 Sep 2019 09:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343901; cv=none;
        d=google.com; s=arc-20160816;
        b=UFmr71gZblJDlOQ/lTHNZE7TdIWBWq6jh/vgSsL5u4Cehxp6yknM1U+DfsrWqu6Xk5
         Jv1o+P9bEUkSly9EkVYP9d4s3oJCkvy2oKargilL4nSswFv4QudLVpc7PMkuU1k0ESZv
         4bMBDbHpWe2AyiU0BxMoc0xhuKnGTAu8HKrtpHS+tw3qRyEtx9T0SeNvfCZTMq2Uk6Ws
         9hDl+/hk+E8zX5q/0Ecb9WOhn+1vFGtTSfLcCvUr7J9ASrFqn5j//aMjSZZCnHAgmuni
         oxHCeCRxw+jHCUdlkSdHzlWnYuU4SqfOvRgegNhvRZ5nBct7l6pphAf4lr+QlDsEkf6X
         LzwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZXoYLiPlbxfcZ5prFZi+TAzPSUPpNYSfag5rgQghQgU=;
        b=gd6DcUuMbYsF/oTgbw9LhdRWlNcDiRy36C3gwn4XGuE1IxKO8PTj+yck7wLXiiXd0T
         pODmMe3TyD9fnVlbLbhY+1WnVnVVJ5H6UXL2Qgew/G9mNJDGGTm4GL6oPt71we7l23ke
         qYoKJJZGkLdVflwxRtNY5XBigQ/c8dHDLw0ODnj12RvE7NllqThTh8y+Zv5iSEd/g1LX
         Ht7oaWsXOhvQFLGykhstLhcdk0EudkbC3RKvLeeC0w4omp54/I+g+6YYGjp6xfuKPqHb
         D60yr2d0mnTEFg1FuZnOgXRUeN13gD9IHGklMcrtw4gM4pcpOwt/PMIDrLDU9x0WBOmK
         Bthg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=W1MP71Yx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p140si83137ywg.4.2019.09.24.09.51.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:51:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6898A21D7A;
	Tue, 24 Sep 2019 16:51:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Scott Wood <oss@buserror.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-clk@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 06/19] clk: qoriq: Fix -Wunused-const-variable
Date: Tue, 24 Sep 2019 12:51:17 -0400
Message-Id: <20190924165130.28625-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924165130.28625-1-sashal@kernel.org>
References: <20190924165130.28625-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=W1MP71Yx;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit a95fb581b144b5e73da382eaedb2e32027610597 ]

drivers/clk/clk-qoriq.c:138:38: warning: unused variable
'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp1

drivers/clk/clk-qoriq.c:146:38: warning: unused variable
'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp2

In the definition of the p5020 chip, the p2041 chip's info was used
instead.  The p5020 and p2041 chips have different info. This is most
likely a typo.

Link: https://github.com/ClangBuiltLinux/linux/issues/525
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Link: https://lkml.kernel.org/r/20190627220642.78575-1-nhuck@google.com
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Scott Wood <oss@buserror.net>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/clk-qoriq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index 80ae2a51452d7..cdce49f6476aa 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -540,7 +540,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
 		.guts_compat = "fsl,qoriq-device-config-1.0",
 		.init_periph = p5020_init_periph,
 		.cmux_groups = {
-			&p2041_cmux_grp1, &p2041_cmux_grp2
+			&p5020_cmux_grp1, &p5020_cmux_grp2
 		},
 		.cmux_to_group = {
 			0, 1, -1
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924165130.28625-6-sashal%40kernel.org.
