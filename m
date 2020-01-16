Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBA57QLYQKGQEHW2D3KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BC113E967
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:38:12 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id a4sf12647237pgq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:38:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196291; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWGS8bBHkxnwq8BFVtBV8+dU6ixWYNcf4ZgHHQ935Er9DzeqX4s/JpwmVZBEc2NwUD
         HZblc3m8mS+W6G74T/7OWGaEG2poKR2jmsgDRannyeGn13C2bKbLvyEHcNAsTYoirUBh
         nS7ZquPbnPCwVLLP2aHMK1WCjL/oUnMDXwqB16U3zzF3N0Sl0qrV79hNG8eSNuE+dENn
         /ggC6q7FV+/+34OGFKRW5dqc7J52uoajEFXaRzJTkQKpA0yROe0yfjfuX4s5vo+XuBk1
         JqmfyMTKWkacvguqAeGmMhNtVlHyJC0X6U3mXpgJ/PEb+fthv2iCR4uvTcUgfCOs+YrB
         xQyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PzDTF/DgQPOElncspIngaOKkNsLzkPwxDWBrQ0YeIPU=;
        b=MQxf1pqC5JoQwMuyoLUHLTMsbgyOE2iu+cJcOMpNSuNK34ww2H1zZ2MoXdRxCvyNaE
         pzgUmCAWFrBwEQfc2zjxCtIh/Ag/TgNo/6hYIJIoaMualZkvhU7PfQyxKBA5UvC92INZ
         y/SPwvKW0ksEqm8aFLWhS9S0mpIV6JpJjl+Xls3pRT8w5fdBLQ6BdczHUJylwjT6hguw
         zMHSC0kkq0yGvwtwmfklMbMSWubAr1WuN4GvaTuD+ndBofLqioWr72Ylwcwd+4AIi6Aq
         ooaMxUW3y9EJFzwtTy8IGygJ3IAH5hfyJq+UTaBceKZWEPsGtNoSV+OE1DoXn7OVcZgO
         Bdmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QK1imqXp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzDTF/DgQPOElncspIngaOKkNsLzkPwxDWBrQ0YeIPU=;
        b=cnfYb2KlO1jPdmpSykqr+EIpwmQDa+qfJDPy98EPZQ6TPMyCKlg+2v5q2xdGLwzzu7
         0BTrwwn4i7GMC4b2Ujc2qVH/kkTnCx3WOAyV3LNSFWWodBcYNrzsXPeoX6qeKuwbrXOl
         rFmTS4Cm9m87hfcUwjqXR0GVOy0bZdGduBSZZpIG80Ch7PCtUdrd6mubQ8twuh9al78O
         DzwjVJEGhGPGt+TgkN6m9bpp8jSvIIGX0qI1NyKzr067N2uH/7xzBebA02dlJeGbjGn+
         fPEsoty3O3AUQ6zbKWn/ctAPykCBzRArbqSPJ8Rr3JRbaYl6riPLhtM52WM7PQPQTOfe
         0Y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzDTF/DgQPOElncspIngaOKkNsLzkPwxDWBrQ0YeIPU=;
        b=QCiQEu5TIQ9NANjrXRYzM4yMUl30WrC05IrHexiJiojaxw33Tcm2ntb2cJkstoWM/i
         4CgiKoVmWmDX4sZ3MQtu8iLwURKn0/aD0k7oIfrscBN0GVl4V1LNT1QBXk+GwseSPAwH
         fLBYN+5pxs0QTOKZozYIJZjLBtoDe2XyZG+nLf4eAfP8QsIw4ifYyQBi6X9mNFhdYV67
         kQQoix0pnbPqyHtSFdocfYvA2mBaw/qfKEOkCY3L37JWqLSx3zVare+h07shSMA23+jZ
         62VYr5Xw+Od79mzw8YPZ3bXLH1mIqM9oxOoQBI47vAvSwOCZNkYmzi5xvk+6ppPM5+f8
         ImyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVlBJn0FdL4EiY+kd9OKeTeum33P9pVlqhhA8EZn8/KCdYTyoq+
	q4e4227jIzq8CSiQDrrZrGE=
X-Google-Smtp-Source: APXvYqwFoGz1ZbU5hto5seAA0zYuBAXZpyYwVEu0e4dPViYEM2PQQk4M9BPG5O6WfDBj+YUkQgWDkw==
X-Received: by 2002:a62:f247:: with SMTP id y7mr38186905pfl.5.1579196291280;
        Thu, 16 Jan 2020 09:38:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:93cc:: with SMTP id y12ls6812549pff.7.gmail; Thu, 16 Jan
 2020 09:38:10 -0800 (PST)
X-Received: by 2002:a65:55cc:: with SMTP id k12mr41495897pgs.184.1579196290876;
        Thu, 16 Jan 2020 09:38:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196290; cv=none;
        d=google.com; s=arc-20160816;
        b=bCLU9TgWMx5MYUyFPbhBv0AmleA5uSyRnwA1f9CwZQTg6NLX8LsyWY96bWfzbIG9VB
         Dj/wvFD1vdQ6Fsz070hGM8lJvj8xqW1Km/g4njaeXJojLVjOgeSHQ1zYbKeRQSgIhj++
         YJbckcwQIqL2sE0QQSlNu3yCRuJ33yJrg389ZTWRd/W9rwm5PFh2CfcnaaEZuXnCSmSx
         J5N0at1fRqrx72czyIeQSuR1FoQSihvPoH030B4nqUGoaoaWrgQaTihQf0CdsE6fb91r
         REuAfx/o4WI1mk2XLwxjDNRo2LnfS4z3FYruL83EMKOWcGksUvW3PNvvA4MyvY08FFGc
         dKWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RjzLeAgibMTsaMa4dYwRNJF7IgeaCKCa6hcLWyiT1xI=;
        b=POmKFCnGi8wYmgLupTIsu784T0m++OdR4Fe1YGD2e+JTGUu4VpBQE+OUhYmWaKPw9+
         uIi7uW+/qgwrb76IEl+h2TEJY2bAbKI4TI1ZuFOLW/vxohxHTesAhfx8Wy2H47kp6jGV
         45RDYIckgbdvYx1YVG5yhW+O5J5hI7Ghl3U/QBG8AsdglLK4CiiAxMjHQeueM0Q7VzLH
         em55NvyCf4wEHHXOODWe8M0gmJAJ4VRV/oJNalr/eEznaE9BJ5eCc8TPdZUUalWR5FAa
         vaH1YUGEX1tLVbBP3AIqNkmQf/GSEhnGfDaZfiOoWz/+/1pkh2OOzPdo+LfS1BgsQG/K
         acpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QK1imqXp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cx5si107123pjb.1.2020.01.16.09.38.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:38:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E05A246C3;
	Thu, 16 Jan 2020 17:38:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Lad Prabhakar <prabhakar.csengg@gmail.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 105/251] media: davinci-isif: avoid uninitialized variable use
Date: Thu, 16 Jan 2020 12:34:14 -0500
Message-Id: <20200116173641.22137-65-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QK1imqXp;       spf=pass
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

[ Upstream commit 0e633f97162c1c74c68e2eb20bbd9259dce87cd9 ]

clang warns about a possible variable use that gcc never
complained about:

drivers/media/platform/davinci/isif.c:982:32: error: variable 'frame_size' is uninitialized when used here
      [-Werror,-Wuninitialized]
                dm365_vpss_set_pg_frame_size(frame_size);
                                             ^~~~~~~~~~
drivers/media/platform/davinci/isif.c:887:2: note: variable 'frame_size' is declared here
        struct vpss_pg_frame_size frame_size;
        ^
1 error generated.

There is no initialization for this variable at all, and there
has never been one in the mainline kernel, so we really should
not put that stack data into an mmio register.

On the other hand, I suspect that gcc checks the condition
more closely and notices that the global
isif_cfg.bayer.config_params.test_pat_gen flag is initialized
to zero and never written to from any code path, so anything
depending on it can be eliminated.

To shut up the clang warning, just remove the dead code manually,
it has probably never been used because any attempt to do so
would have resulted in undefined behavior.

Fixes: 63e3ab142fa3 ("V4L/DVB: V4L - vpfe capture - source for ISIF driver on DM365")

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Lad Prabhakar <prabhakar.csengg@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/davinci/isif.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/media/platform/davinci/isif.c b/drivers/media/platform/davinci/isif.c
index 78e37cf3470f..b51b875c5a61 100644
--- a/drivers/media/platform/davinci/isif.c
+++ b/drivers/media/platform/davinci/isif.c
@@ -890,9 +890,7 @@ static int isif_set_hw_if_params(struct vpfe_hw_if_param *params)
 static int isif_config_ycbcr(void)
 {
 	struct isif_ycbcr_config *params = &isif_cfg.ycbcr;
-	struct vpss_pg_frame_size frame_size;
 	u32 modeset = 0, ccdcfg = 0;
-	struct vpss_sync_pol sync;
 
 	dev_dbg(isif_cfg.dev, "\nStarting isif_config_ycbcr...");
 
@@ -980,13 +978,6 @@ static int isif_config_ycbcr(void)
 		/* two fields are interleaved in memory */
 		regw(0x00000249, SDOFST);
 
-	/* Setup test pattern if enabled */
-	if (isif_cfg.bayer.config_params.test_pat_gen) {
-		sync.ccdpg_hdpol = params->hd_pol;
-		sync.ccdpg_vdpol = params->vd_pol;
-		dm365_vpss_set_sync_pol(sync);
-		dm365_vpss_set_pg_frame_size(frame_size);
-	}
 	return 0;
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-65-sashal%40kernel.org.
