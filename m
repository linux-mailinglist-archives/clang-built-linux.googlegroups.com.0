Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB24QVHWAKGQEEP5JWLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B89BCD52
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:46:36 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id 11sf2664174qkh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343595; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfmN8cS5ctca+NoKHkN1p4St3bv8psM5//TLbrIeWZLFwgwfIOrs2B+GxSYtQpPIee
         745YAObxFB4Z6vJyGBhNU0bvIGMtqxwnAncKSd+UWJEPg5k9Q5z7FO5xmYn+qy60zaDM
         5WnZNwSqMXOAu41zeNXqKQFEtuxiJ8zl4LgcOd2NKmOtSB+iO8hmycuPWwIxEYTfgLHM
         27CZHTqkpIDoCYhN4GPKXxwWAxL1tBw9B+QVoxJxnyh+Rk2+YmmrsVCulP6PfsxuJPIF
         V6mrltsSr2fYs4Pgboa4Cq5a1z2SGUZmhIMc50zF9NPrE8oN5xg8Debfw982f4l0aaDS
         h+Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CwBwrXE/0NCltn5MyvMXdVHHK/PSXGdpVJOOQ+C4rbA=;
        b=XiceRNzyXEU5b24jbC4WKplkAAJw4ctnNEoz8Yp/szmcpiV3XcjWuy8OcSC6DaGv1F
         iUYFRIjiyInLDUGfBH9naMYBZGGqzMMv8bbLd/NnUNcqLw9j9mtv7UTNchrNEE50GSZK
         Oc0c8HI9poXDcvR04QABZJlaNqYLCr0GlLPmeQsZsWLis8eiSqz3NM5hyPLw7IhBXjXb
         n6q6PXh6pvy7Aju7saoo0Oa/zIVi1i1kikJ2yq2X0KF8etkiBfpFsNkJk/Pd8fDWF9fm
         fz6mIUlMX5HxRr0SvFv+lkT2zrW9Bi7pbYU06jUEq9yfpg43Ww4rNl5CoXsTI9InX8ji
         Q4kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RzLozAj1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwBwrXE/0NCltn5MyvMXdVHHK/PSXGdpVJOOQ+C4rbA=;
        b=gu30NafdieBaaVve9IQv741nGSg8j5SmqkQ50+Hw0k4Z8aLUgaTQOZilDtRvdfB2y0
         aPH+A+VWiGnk/sQAWAa00NGSbDYpi1jiPBUL9bqoSSgrprSI2QFbKy4wwk0yEGPn1rCr
         9tjWL1sLjmRTQmcVxQE+0AgXDF8tnxx/JjrbsUn2Oi4+lycisk2TJVR8xEWvK2SAqcte
         lWWYRGxz8FDQ9iflJ38VUxy7tOJKv2DFOFnZusMb16y8wG0sd1ggVl48Sg4h+T5sjX2A
         p155Exz8qRD/FH0dYFjUqcJace/qo/xWdmb/P+2C0RL52K5lzFPi/Vog/1kwfC13gbwS
         PfHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwBwrXE/0NCltn5MyvMXdVHHK/PSXGdpVJOOQ+C4rbA=;
        b=NZhZ+y+IXKsUG6vPkWCVXBIhGbikDC6fAOMJRISjdkqmFZP7T3QnjP2WM5S3faT939
         y6H7s2puuQrQIVTa6KhTkQrlhiISGJOoa2uAtRBkMLu6PX1E6DZYeOr5K1y3ChDJGsCR
         C++eQgos1yNBK0tY/HMM52s6uEFHXvFcfl7HFiyHVjLhc3AzDHoX08ta3i3gFSJJWRf7
         HvtSO+D9nza4pQnrXrDNc1eZue25aHlh0MzTDTiaGmYBdd1QV2SGvLAsReRnar/ewucX
         7etpg7nr2h6Iq7CKVEY4xz1IFKFldJ2UzkE4HWrQayvKb79gxqY9kVaj8WhG7SCAZSL9
         j3/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXuUvRCcxX6U0tEvERVEu/ro8GFPBIH6I4XRxJEyCu+qcf/fvm
	43DWZsweyirsvlHLEstLTGQ=
X-Google-Smtp-Source: APXvYqy+zV7URzysytqe/Ew2HBJ64X+UC5SddREiKgA1qTXbWVcKqMg5NVJqa2V6yOGew6pHwViAKw==
X-Received: by 2002:a37:624a:: with SMTP id w71mr3404385qkb.456.1569343595202;
        Tue, 24 Sep 2019 09:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3341:: with SMTP id u59ls836292qtd.12.gmail; Tue, 24 Sep
 2019 09:46:34 -0700 (PDT)
X-Received: by 2002:ac8:4251:: with SMTP id r17mr3868661qtm.260.1569343594920;
        Tue, 24 Sep 2019 09:46:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343594; cv=none;
        d=google.com; s=arc-20160816;
        b=rlwO3JOUE3fMRJf+5IeY5BCnkhyCd05FyqwBTBLWfFXT74XfY3GT2z5SF8Maaf8JP8
         fFctfQJIGU0ytRIHVb503I4rRYoQ6bG6eCAPxE6BbotcMJ6thzREeU3TrnGQK8GvCWvt
         AG/A88h/ZRXXReM4TWB2NeHPWZb5gzcTNQWEvvki8dNX9sDc+F4VJN+ShnO92ZctSemB
         fCz3zrnEd4aDvAY1IwH5X5/GnCs2I15l0DdatE2cqoitEnjyyWETcHvgzXHUv+N5XJkF
         UdO+QgmZ0AOWPwib0FzhMfkaVzKDOIfEvFrdgsoUyUO7KJI3vR0LvhZ65dehM9S5Qn2b
         XjEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=F6SiaRmqdaPuGrqdvs5XMlPH2oKyB3LPZWnS+UYWAfM=;
        b=HA7GqfjuK+Xtv5N7A8z/XERpXWRcVEAGun/Q4z4u/P6/h5b4YrCDXmW56Jihb+JdYp
         QR1pQJLxJGXZoT0I+d7h0ZM2E97XXmnFWA2p/OZkHrs3FqfIAg4MaT0HaSsJZ0MQFDRR
         rlwoIAiNptzPzuWe10z5HtUNBCLwZvgL/KCyhcI+xnLMwQ3EyUsq2nS+2yb9flBv8Y51
         rqvw7SoDYUlGWEY5v25/JKH242E/oQ8BomXiJU+prTFe7BOMIQTqgUEJzDs9XYNP5rlp
         t7y02BFW/sox2d4u2UYsxYlw+DpjBxNas3MRCnUtXXiOctVLICw9GRUY49bavcYp5XFt
         QeqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RzLozAj1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u44si201416qtb.5.2019.09.24.09.46.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:46:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C778D222C0;
	Tue, 24 Sep 2019 16:46:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 20/70] clk: qoriq: Fix -Wunused-const-variable
Date: Tue, 24 Sep 2019 12:44:59 -0400
Message-Id: <20190924164549.27058-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164549.27058-1-sashal@kernel.org>
References: <20190924164549.27058-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RzLozAj1;       spf=pass
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
index dd93d3acc67d8..8724ef6c469ab 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -675,7 +675,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164549.27058-20-sashal%40kernel.org.
