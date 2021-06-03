Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5MU4SCQMGQEH2ZO2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 4237239A67C
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 18:59:35 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id v2-20020a17090a9602b029015b0bb8b2b9sf4106158pjo.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 09:59:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622739573; cv=pass;
        d=google.com; s=arc-20160816;
        b=kfJv0UOvMikKl+XbOXjM3LyiSXRqw7btiQ9MnVA6Wjb1DU1iQR4sG+DnFvPW1wM2p6
         HMMmMTLgkPwmEh7xVuBUp1rIBOyFtiAzEq7kV0MUZbTvBohMX3cGR2pbtcausceMCwpY
         XA3CEJXnvcZ+yYP9NnYIR4KfaDkhvn46nOHAUuqkJ09U+zxsNOdORuCWVAklBziFMdPc
         du1g+GpvP4FlWSTZ6tvrDF9PZfbO3HFH8Z0yQb9IphPXKVohPpBGI4Ajpb/PiEmZajHC
         0gEqPwlXXGagTK58eXgntCkWmSuy+hlffsdTkCEJhKT5fNOREr63FiDPr0iF1t6qG5+u
         M96Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=imcmiBEkjPSGteIiRFUIrQEnS1+Zc53liZK+99ynpRQ=;
        b=GyT412qLQQV+0fzep5CZXzo3IVSZCApr3mPPW15ZafB0KA7jfjn9CQmp2gtYm0Q5qv
         OVrSDpCTYl8yaL6oxOj9fVVE5wPEKCIgI9jEhGWtLWOEXz05xNsQrfB8Y1vuDx9L0Lnv
         bQqcZzOE8odTpaAmljlqXZ+R47j28HT2JHu/YAIRpAaaaxkom4qKLpFMZcj2jPZM2khh
         ZVwDJjeYXjNghAL6V6EkdmZxYgs0cRHiUPJCPQpVXKAl2vcu8IcjUSqzI1v9GBD6nzGo
         AcIehBStAmh+HU647CFcaZuBb1gr86jer6GV1TKTVLagoqLoroGvroBTfrf2OYzTSb9M
         +pBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fV5pSS4u;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imcmiBEkjPSGteIiRFUIrQEnS1+Zc53liZK+99ynpRQ=;
        b=jYpYYMmjsMnEeliZdtiQBDhFVNy8bjBVVCQTgLqHOEX5TuozmVhWq9Je1MEDxlZ17e
         adWwvxjgJrB9k/6pEM+nYTw3ZC+16GvKA9ER4PV5gpiyHDM0rfoul2ntIJJVHilJkO46
         /4UPSVW7tpk4Ye9euzAhAGguY3KjVYAYnGn3fqJwgLilUZ47GqWSO2/JWplSxWZ5TcAP
         FC6K1ZnR1ng30o5bRGvH5aw3JvmDlyzK6av1XYoyN006altnhoePSwLqGq8XPRTTls9D
         9k+q0Jqcp8iA7MrRvgVC4sik+LMR/ma5IJw9UqskzD+4UGEV1OISb+j7crXy4MzgGiiH
         f5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=imcmiBEkjPSGteIiRFUIrQEnS1+Zc53liZK+99ynpRQ=;
        b=VdP837AiT1iu6hdNwJfvMf2xLuc2h9tpgJhyXR08pCsMvX71MzXpPyLZs2dTIqGvNy
         30I5Rs3K9VHZ0QXN1F815nghaAe+Dm+0c/MYw9FiCZcKiwayOkN3rNEc6hVb8V0uSdFd
         mV0y6hHDs0YeuBF8hRmly346CKh6eCK8+FfBUTnUi3/ANwCeg9P5T+x8ji32pKKWPOKW
         ErqXv0d3L3tEmT6xstzELs39N9mxcp+7FHsLYe/AmAHsBVjrJtUXXcwcF0M0VCL5srkR
         QizTjzCRJ4cRzv7rPwYT4yb2ZOR8kYjM22EUT3BrmREkdm1BGlTWKRYXfWvDJA5XGDQm
         WfJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YWxZStTuawpovOeCbDSZLE1zgWEVIT0T5BPIfgQnnWR6Q38bg
	jt0PWgWIZ0S5SPsm+Z6jNUE=
X-Google-Smtp-Source: ABdhPJx/G241z2kwkKYFiyjfvzBtu7JZn9V5VBMr9lphDxUmYQsTP90KXfc9Ts2k072asiwcNsErdA==
X-Received: by 2002:a17:90a:8c97:: with SMTP id b23mr200073pjo.74.1622739573651;
        Thu, 03 Jun 2021 09:59:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6788:: with SMTP id o8ls2156653pjj.1.gmail; Thu, 03
 Jun 2021 09:59:33 -0700 (PDT)
X-Received: by 2002:a17:90a:19c6:: with SMTP id 6mr158515pjj.125.1622739573067;
        Thu, 03 Jun 2021 09:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622739573; cv=none;
        d=google.com; s=arc-20160816;
        b=Ea8XTEyxKBMVtyPVeES6mIxQRFJk/AvcpWPq5DUQ8yr8eDphFrRbF7suDfj3bNfx3p
         JBAn2Ow8ZXAnMAEvApHNfNeYBhaZedL2UHO+y0riG1XgJzTtl1OjOQT1DKO0T6GQLBJr
         Wh6D/VEmtUzivANhl50n/P/ce9gcTzZ+tq5hf3Nunoq8VRtyjWMAAHPsfOUpFozJsNBN
         BYsXAfAoLtCTpPm9rt+ffdbEoFXdIZzomk3plKb+sAQgO3/j9bmyIeYE9qKkcQJbKX3A
         iy9FLt6XvClYnwPNW5L9muF4xqS9zmHlae4b++BMUvcxtPK6njSf1N8Twc6roiUj2lQM
         D6xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=68OGOqCVta7u2JgklG0rkKIqSrW+EMioWHiggHWxag8=;
        b=TtXC2iNz7cMg6Y/J0RMV2dJ69cpz5+dEQXHGb5j0CrRaxTKXQN0YUc+KZMg5mSRsDK
         2xyWPzTmxE63yur7g7pVHq8FmYDpYvptCKGWWjSAzjRzwyQhlrDzRk3aENtXunqkhJA3
         unrCFlcGThPCLPswivt3GwWSQFAWktBdJ+cQD4/IrnT1b5MI+pn5a4LbVFfvIRIWS2jf
         4Kn/vrxog9d//7gxh3ZdBR/fDlDhAEFmI13CX2OBMyBn5RY4h7G0xqvZm3cdQMxYJGc+
         c4liwf+xGFiYSLa/tDHuIhisFulGkkupIZQDaSnrhdAXNpzkqSk1/x26UaQA/WmdUXXv
         Bouw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fV5pSS4u;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b24si333317pfd.3.2021.06.03.09.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 09:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 44AA461159;
	Thu,  3 Jun 2021 16:59:31 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH net-next] net: ks8851: Make ks8851_read_selftest() return void
Date: Thu,  3 Jun 2021 09:56:13 -0700
Message-Id: <20210603165612.2088040-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fV5pSS4u;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

clang points out that ret in ks8851_read_selftest() is set but unused:

drivers/net/ethernet/micrel/ks8851_common.c:1028:6: warning: variable
'ret' set but not used [-Wunused-but-set-variable]
        int ret = 0;
            ^
1 warning generated.

The return code of this function has never been checked so just remove
ret and make the function return void.

Fixes: 3ba81f3ece3c ("net: Micrel KS8851 SPI network driver")
Suggested-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/ethernet/micrel/ks8851_common.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/micrel/ks8851_common.c b/drivers/net/ethernet/micrel/ks8851_common.c
index 13eef6e9bd2d..831518466de2 100644
--- a/drivers/net/ethernet/micrel/ks8851_common.c
+++ b/drivers/net/ethernet/micrel/ks8851_common.c
@@ -1022,30 +1022,23 @@ static int ks8851_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
  *
  * Read and check the TX/RX memory selftest information.
  */
-static int ks8851_read_selftest(struct ks8851_net *ks)
+static void ks8851_read_selftest(struct ks8851_net *ks)
 {
 	unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
-	int ret = 0;
 	unsigned rd;
 
 	rd = ks8851_rdreg16(ks, KS_MBIR);
 
 	if ((rd & both_done) != both_done) {
 		netdev_warn(ks->netdev, "Memory selftest not finished\n");
-		return 0;
+		return;
 	}
 
-	if (rd & MBIR_TXMBFA) {
+	if (rd & MBIR_TXMBFA)
 		netdev_err(ks->netdev, "TX memory selftest fail\n");
-		ret |= 1;
-	}
 
-	if (rd & MBIR_RXMBFA) {
+	if (rd & MBIR_RXMBFA)
 		netdev_err(ks->netdev, "RX memory selftest fail\n");
-		ret |= 2;
-	}
-
-	return 0;
 }
 
 /* driver bus management functions */

base-commit: 270d47dc1fc4756a0158778084a236bc83c156d2
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603165612.2088040-1-nathan%40kernel.org.
