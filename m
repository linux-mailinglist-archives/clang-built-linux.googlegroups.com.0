Return-Path: <clang-built-linux+bncBC27X66SWQMBBP647D5AKGQEKILIZCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3D4267FCC
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 16:35:45 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id i3sf2181139pjs.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 07:35:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600007744; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sy10qE1pAGIEJtErfpvpbKbwzIrABoIJcVhkar6MeL95kNggxVsQ7IJY1+v6rkl5ny
         clibZVa/Wjs/NAHZVeILtp7mnf0JRiI1WqupkpdoHSQ51ND2kYlBzeOIL9SiIz0mw5AT
         3iGhY6BnFl6cHYqPKmkMmdcG3QFAjq1Z2C+HW20EFNU9gl2dRCrGLq9E6Gm/cEyaze95
         rqR7U29iQT7zDWwOn/hRIDRBzvsZysGnrL+O5mdRAA9pQQFSXwsIKFm4EcZ3SVNZ2INw
         Xz4kX+6wjChndk68Cx60AHc2505Rb+Dma3Dy9dpui35UNsoS4HofspPO2xNwVkhLAN25
         uRVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=hZiitIfb6rsJ4T9nANaYpnC+1gtK3tSZIeyrt39viJ0=;
        b=kuq/bxkRwrB5R6djvTWRgIOYcNN2UHK1+aRTz8Ckx4NxoshjUWLLKTWE+sRfI5zYV1
         5il/TbRP2G2XBLkXzAdcsHsISRDZmh6jEgcSGw0roQrQaA9S2XG7vAJAo2CRjNLSuL9q
         lFd5hzbswZglKxLUpRWaOvZWvEPxgd3ACIsg6aLACtGf73kc5LP6DsK/awM+ZDJO/j2T
         HugCWOCAM9+BDmWN2olYfHLl7uYynQkLfFC1iV0VKUAGSQkEkvmNyGksq9xJOu4Ae094
         Dni1iMwBt5l+gPkTuwhQHWD1Tg8vo3V91b9SO0hQnVxQBDKcNPkPO49lyt3TCNCGqtJR
         IjLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=f58toasE;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZiitIfb6rsJ4T9nANaYpnC+1gtK3tSZIeyrt39viJ0=;
        b=pCQDRSqEo41nD9Be1pdEsk07kAoPrpjJIp6PMndc8TsvdfZWy/EL0fx090vTXXUvdI
         bCE6+162lrzNBfOPu0ougbwroyJxzxOt/gA2ZhziIQUjpXK7VIXnPdyUo0D68gVSrEZx
         kEqqFU6AmDPN3Eq7tbZe+LMK5lr38xVOpzF1Eu2wTDH7GRZYMPo5utqffXdv0Kdiq+M1
         TVmxp9SedOLmihI9Ur4IEL48iQhOBidqyLJt1iX1r6wjCa8Hg9HF8mamQfPkAwhowRck
         pFRL/XX3XwcSw2ZTp5oH2IAso7n+XHMmhRZDbfDl3CoSScgDIr7jNCcZDqyKSTIp4LGs
         KRMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hZiitIfb6rsJ4T9nANaYpnC+1gtK3tSZIeyrt39viJ0=;
        b=uAqbGPc9wObRdWjw1e2dlOy4UuhBXVuiDU0OFm+miZKW5y4vHvAa232UDxRbh0tSdg
         fFdJ7t+UUJkgw3JH69YZJTI9QXalgR/bKN43IKwrliCSg1G6ScD+HWGM+IcEHuiw+gK+
         wrZfiYOMDA7DY5KdgTWt0ft1p9xnVG7s+RcjVkgeaoYdr0onlCdXFjNgfxVz3bN5CkIR
         3gCDIiIWTPkck3oTgCYSUhMLQKytmZDS2YwLigsmPH9V7V+irpmbBmapoScQbHMpSqfK
         JkzWrS6jl/xfjcEKQ9YvETmCskldNJ8Wn27N1WwFU0KIbLjQARMsbbPCgkGosYjGOasx
         /pqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SUBljr0CdyZh/u31pOKN5apeyA4x2rHlSGKZafusqxwntvclE
	Hd/ITnJiNNl/Hdo01MyCbNE=
X-Google-Smtp-Source: ABdhPJxlmnK1mtC3ZtLVJ+UnTJnvcK4MB0c6w/by5w7vgeKf9r5aLQUQdGEJhDdIHDNEEkDmdSjcoQ==
X-Received: by 2002:a62:7cd0:: with SMTP id x199mr10272629pfc.114.1600007743856;
        Sun, 13 Sep 2020 07:35:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls3266897pjb.1.gmail; Sun,
 13 Sep 2020 07:35:43 -0700 (PDT)
X-Received: by 2002:a17:90a:fc1:: with SMTP id 59mr10875655pjz.156.1600007743262;
        Sun, 13 Sep 2020 07:35:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600007743; cv=none;
        d=google.com; s=arc-20160816;
        b=o3GHt7wdUd0falaWh/10y+x20OdRi9ble384nYxvDh9peqcXMtL4n8ouA5a8mQJYxM
         1USRxLfO8lL0C8ZMb9J3PSlJS62hq9VG7fEFpE+Wif2t3WtLgxKmXmbrFjVrmwfxq/Pj
         r5HLrK9BSh7xqvTxkfGP1VlSU6Vm3NAK5xQ0ieudQc1LISdxpHLWh46f/UOozdmTpZ8P
         bKy5wOHMDsJnJhC1ViI+J2d3/v2NbgF+qXxnlsTGaGiGZ9of786fiY5Tp8fM4LqayO5o
         fxfObhB2J/XAN+dv4XJOvTmnru0xmCg/DkFUnTlVwJRq+2BpOl3TcdM7aXlMbCfuVZp8
         rY3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WRuscXYWCpfZvPAJ7zPpDPsF4gN4h/ULkWzJ4TuL7iU=;
        b=kOcsm6NJ3wjlHa3YY3q9pCrV8TQyusWTAufQcvZXbXCz4zriJKSXSbhKHLdxOqv7E3
         81tANYJqfRyBwDrucQMw3HOpf8zZyKU5jAiix12v9u2wYZDdVk1fUg0w8ker9vhkGeG3
         LLNP2c2w67ImaLJIXMzbah+fKvk6BnWOugfcSyTc/2S5Z6mAJ4cXM9wImtNVf2r5vL/b
         M19pV6AEouZV849tw/CGZ07sYG07VUP4EbIwjoqXl9+gNS6r/a1yQNIh5pnaUTO/g82F
         F80fa/7ZbBBq/OmL0DdMA/uYvqgA/CDvZmLP2mS5ty6ir7od6HHJNZzWnScpjWQ6sUny
         obDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=f58toasE;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id b9si428394plx.0.2020.09.13.07.35.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 07:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-xx_5-wNiMdqIlEKHv76Vwg-1; Sun, 13 Sep 2020 10:35:40 -0400
X-MC-Unique: xx_5-wNiMdqIlEKHv76Vwg-1
Received: by mail-qk1-f200.google.com with SMTP id a2so8900746qkg.19
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 07:35:40 -0700 (PDT)
X-Received: by 2002:aed:3bdc:: with SMTP id s28mr9897662qte.124.1600007740080;
        Sun, 13 Sep 2020 07:35:40 -0700 (PDT)
X-Received: by 2002:aed:3bdc:: with SMTP id s28mr9897624qte.124.1600007739784;
        Sun, 13 Sep 2020 07:35:39 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id q8sm11830911qkq.57.2020.09.13.07.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 07:35:39 -0700 (PDT)
From: trix@redhat.com
To: arend.vanspriel@broadcom.com,
	franky.lin@broadcom.com,
	hante.meuleman@broadcom.com,
	chi-hsien.lin@cypress.com,
	wright.feng@cypress.com,
	kvalo@codeaurora.org,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	smoch@web.de,
	dan.carpenter@oracle.com,
	double.lo@cypress.com,
	digetx@gmail.com,
	frank.kao@cypress.com,
	amsr@cypress.com,
	stanley.hsu@cypress.com,
	saravanan.shanmugham@cypress.com,
	jean-philippe@linaro.org,
	linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org,
	brcm80211-dev-list.pdl@broadcom.com,
	brcm80211-dev-list@cypress.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] brcmfmac: initialize variable
Date: Sun, 13 Sep 2020 07:35:22 -0700
Message-Id: <20200913143522.20390-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=f58toasE;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis flags this problem
sdio.c:3265:13: warning: Branch condition evaluates to
  a garbage value
        } else if (pending) {
                   ^~~~~~~

brcmf_sdio_dcmd_resp_wait() only sets pending to true.
So pending needs to be initialized to false.

Fixes: 5b435de0d786 ("net: wireless: add brcm80211 drivers")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index d4989e0cd7be..403b123710ec 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -3233,7 +3233,7 @@ brcmf_sdio_bus_rxctl(struct device *dev, unsigned char *msg, uint msglen)
 {
 	int timeleft;
 	uint rxlen = 0;
-	bool pending;
+	bool pending = false;
 	u8 *buf;
 	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200913143522.20390-1-trix%40redhat.com.
