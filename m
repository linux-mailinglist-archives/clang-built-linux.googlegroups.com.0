Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOHR57VAKGQEALL2SPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 948F396091
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 15:42:17 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id w12sf1958182vsl.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 06:42:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566308536; cv=pass;
        d=google.com; s=arc-20160816;
        b=mF5ZEIH7zjxoD5VS9Gg+H6y7SCvkNTwaBfHf26871swMBdFJvrgYq9n7dZPXD9CXWe
         SXT9kh5i2hWzMCvK3REc37xU+jxHYjjR/LocZ+2dtsHZxQ8zQInpSrbAlgWgtgI5asnV
         pb5RUVS7LpHuYUCADUxXRofepXC9CIHg7Xoq69M/AOVNcGu8Tm8u5OygZuuIkjrTrMmw
         QBX4uWq5slFz8Taoc036A/yuFLevI9O/BWvlXlED2HGS8UOpzIBlcKqQxcMoQ3wdLtvh
         j6z+GbwRD1ZARjVTEEFgpxP0kvk0xBg0ZZGEcKU1sYcC1P9RflujKrXhfSyw3vMFkDtF
         MfVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GjeB7FGGasaTRQBbYgKLoD8Sn8JAumxulZqjWDDJkd4=;
        b=wKYPQ1KU7TgrxnOGuQlWXsIbeVx76KMnZ2hb8RDOBaNSv+joowK1fzUGw2LZI6T2TD
         zoJ4e+DzoJLI9fo04rvV+0cPgfKT/V0S9TSIA7+edgUZkINA3ZxhOBaQbj81bx+SJ9Ns
         tjpD5/dCzB+AtcnPFg8Ujfvdcr48qnvDAepToy0m/TFQkE8VyLdU9EkFXIh1G6HIq0iy
         ZAoEjqHvFo5XK4H+Lj3E88HLng22GkhOra8rAVi55JpDtaAwIgrINFgYDE1uAL9dogzS
         fCqiQcOhtuK1M3iH/xOlWFx5Qnty/gYPGKeU6DO1Cq68xz7TZwUqzF7LX7iqOR6EMdcQ
         oLbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D88kYfj7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GjeB7FGGasaTRQBbYgKLoD8Sn8JAumxulZqjWDDJkd4=;
        b=OJIOWpbkh0Zd49LzSqaeG5fKXAFGi6WM48Qv1M0uoLM1Bpn03vUGYeJ6ApNmIC/8qj
         G6W/vUh6iYSDeKMArQFsIZoqHos10aGXlkUFEkv1y2WrERAvS997MdL97HjclyE7TlBH
         qWYSXUjmwuh+2sOIYi8pLTW4foN8mdrcpvY4v/o8JIucC7I56rwYqrRFufl4bUtnxiBh
         UCrLZLw+6kDEPDR6KUPU/pzSmM6ee9JNFRQPmi9VSI/AwfIFy0xEK8ebalIpgwdk4gFs
         zVg+5ZTjb+xB3IpkDi/yz6dCKDfr2Z+9n4cTR3kfWQVaE8gQgG4G3wxsqvCtPvBIoxHb
         TrmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GjeB7FGGasaTRQBbYgKLoD8Sn8JAumxulZqjWDDJkd4=;
        b=hNiANXm3oO8HAzi8qPLtemgNvgDvv0bUvqrNq/gPKCUUzSOzZW1hWv2uhzxQ2dKZmK
         yGGyOBsOIo1A/Wr9ZZBdpYEhe6CoxmjwdOZF8qdxr/NjVTHdTV0UxxWAT09Sdxmwp6zR
         3IoP09CNTOpy7TLetdgw4KJyaK82KK5hwifqsv+E0IZbJHEGSAPMq4uUUGxWqT9BcBzd
         ASZcE1RyMuI6bJ8zMw5qcIiYXsTB6ko1ltk1iKCxTtEs1WKs3cktOxHMVrKl74gAr5E6
         ODJtyVmnRtst6Tja/dl/Z6PCCGwa3o1DIHjajoOFpJfXf+rLzkiWU0etwE1dK0JNGp6Z
         RAyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU5XHnYK4rPRYJeq60LamrpfB3DL9EL9Lh/sqJSuV5q8zjxeRp
	Y0/W2vpXFHY4TRwWLkkN7Pg=
X-Google-Smtp-Source: APXvYqxOzPzcJtf52lofWsZn9/doiHZdBmuNIFBjN7MpybaRBSsJQSBhBDeK5yIssEqsEubeQc0daA==
X-Received: by 2002:a67:5cc7:: with SMTP id q190mr17967254vsb.174.1566308536446;
        Tue, 20 Aug 2019 06:42:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:1247:: with SMTP id 68ls2021019vss.8.gmail; Tue, 20 Aug
 2019 06:42:16 -0700 (PDT)
X-Received: by 2002:a05:6102:100f:: with SMTP id q15mr13980678vsp.100.1566308536133;
        Tue, 20 Aug 2019 06:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566308536; cv=none;
        d=google.com; s=arc-20160816;
        b=DXYP7sekYLkvz+gThYoULtf0m9vMP8HVCkOxMQWv7E/cdmrMgGd4e/g+XtQ9GfDFq3
         Rc5lj0YOsd+Yd1UfJ39BqKmcrMatE/kfr/SZnNlSvaUDF8EYyEO8eocYlWc60Gjh+vlg
         ZfoLPW6uY54HmQbuOyudMI7Jyg68Oh52dauqOLyYyvObhbV+tOf2kzSVHFWvhxKExnw7
         aXR6vftPmrM30W/bL4Szpexy1gnMamDSXPWtiegFY0R4s2//R/DDBX8503yKAmYMr9NS
         Eo12Ejrgrk5b/jO9xpqqMXKucFJq+ON+YyqdBQ7kReojl2F5vSc7XwtWKhZqrFR8pJj2
         WlJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3u3GYm5P1WhGLiy3AVo3m3tXpZ8f54+KDDQ6gWECyiI=;
        b=nog3CjaKSFxVJrrDdaaexN9MwQq1vX6TUkC0wypSO4XTI54dPnBNbU40GN2eknkM8K
         PUaT/Bpze32mxXNWp+0wwLQrnfpvGXrSelD9mwyqn6Um4NipLNS5Jl9m0wYehWIZh9M4
         QmehIjM0Wqo/AQMYJZUyJTNOV8b8skRbeiiHPUwMY3mZcGb85cQrium6osUGb/OwXXKp
         DmYj8kMbARExeSUfNfSkXXUA1RoTVULzrBZcMQouzTk/C+0E6F4Dg8jSWCq2SAN6Z//p
         NsVMtkt0GtWAEyMegj821bTpIoMbiSt2kq1BlVUOeR4hoOiBuPEZ+7fTtPeQVtyG5OU4
         SltQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D88kYfj7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z67si1106775vsb.1.2019.08.20.06.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 06:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3F43822DD6;
	Tue, 20 Aug 2019 13:42:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 01/27] dmaengine: ste_dma40: fix unneeded variable warning
Date: Tue, 20 Aug 2019 09:41:47 -0400
Message-Id: <20190820134213.11279-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=D88kYfj7;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5d6fb560729a5d5554e23db8d00eb57cd0021083 ]

clang-9 points out that there are two variables that depending on the
configuration may only be used in an ARRAY_SIZE() expression but not
referenced:

drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs[] = {
           ^
drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs_chan[] = {

Mark these __maybe_unused to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Link: https://lore.kernel.org/r/20190712091357.744515-1-arnd@arndb.de
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index f4edfc56f34ef..3d55405c49cac 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -142,7 +142,7 @@ enum d40_events {
  * when the DMA hw is powered off.
  * TODO: Add save/restore of D40_DREG_GCC on dma40 v3 or later, if that works.
  */
-static u32 d40_backup_regs[] = {
+static __maybe_unused u32 d40_backup_regs[] = {
 	D40_DREG_LCPA,
 	D40_DREG_LCLA,
 	D40_DREG_PRMSE,
@@ -211,7 +211,7 @@ static u32 d40_backup_regs_v4b[] = {
 
 #define BACKUP_REGS_SZ_V4B ARRAY_SIZE(d40_backup_regs_v4b)
 
-static u32 d40_backup_regs_chan[] = {
+static __maybe_unused u32 d40_backup_regs_chan[] = {
 	D40_CHAN_REG_SSCFG,
 	D40_CHAN_REG_SSELT,
 	D40_CHAN_REG_SSPTR,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820134213.11279-1-sashal%40kernel.org.
