Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHOO5H5AKGQEZ5R4YNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F515264BC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 19:49:18 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id cp13sf1378451plb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 10:49:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599760157; cv=pass;
        d=google.com; s=arc-20160816;
        b=GwKvHBHKlIL4wpFYzRz4C6yNSH/+ZIOFfKr202GaW7cLsFs9pJeuFIU57IN2Lo5Kmg
         QLTNYc1xrU/uIdNM9vN4Q7RoZjpCl/BvZ5UOaOtUdoHaOrgaAFoBzKkljIFP+9E1Y4Ih
         dqPinRr7XW4e4jeJ3T+fWmN81FoJBzXExOFDDHp9s+ltimISvA7JQ0w6qEGStznjT15P
         PM3g0iw/khCJnsV1LktqXXOgMrPLVMEFxjxaXCLYRchHIVew1qdNTQVAbgTKRylGVnBR
         dunoNw6qi3oSIa74Opi3zeEkGIcIQJdMmCntXbA74SO/UjP73AXV3d8C0HAEPvibGvA0
         qPhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=qys3o1H+CnuEM6ju3xJUyb67colbFepUBMCZcYOjI2I=;
        b=FagIU+XaY/eX7i4g9CB9U+qk1eJzVTKEmC5kgFlXMtYvSUdVHWqMMX85Ffj8XMSks5
         6frpGu6XMtkcf3r8QykIO4K90fmvIfwKRwFGvIfTymdGjrLlx+SelJv1sKNjaYqGJYql
         n2F7whGUEHd2n9Qv68vqkrImFTpsEHlgMnMYOUj5zE3y/q3F0HuU0L4UgtgzOCZBpfDz
         uvm7SWEdNfi5mnBVoD6LskCm5poq70Olpob6bxYrZtlTKBOYnt9ZtH2WT0TKUJE9hHC8
         rawU4zBjzOtUrVhpi/Xble94FJVpWlcu3iSyPeb+scoV0G9pT3lRJmPlsv1/OHkiMe64
         9A+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNK6sGRS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qys3o1H+CnuEM6ju3xJUyb67colbFepUBMCZcYOjI2I=;
        b=d+Ohrd/51f/36cLuM+yNqaYp9yU3maJEDjFppriFeHcUDe8j9diE8FVlZUwWSAB9u/
         M/QekQhE6KxRT1lNMWSBVyJ2loUq/I7dRIUV5pqWJjlQzFXfv6flLx1ol2GoXFPis5Rg
         GNb2T7GYX5GtPzj7FT1hnFkZNSTDdh93HQogsSyEG2dOxXv5muAVfmTH2ibrytuLwWbm
         GFdf3R90gu+xZ0eu8cOzVthdw4yElj6U5M/mesn8JVQV898RdxsOY1/vPeshw+cdLNKB
         CiZW+a16tZ7dDuLgAOsuO42u7eDjS2Q/ADv1YukZfYC1v+n3kEr7I8ZqXxL4lKGOa/Ou
         rb7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qys3o1H+CnuEM6ju3xJUyb67colbFepUBMCZcYOjI2I=;
        b=UWIL5ddC18qAttYN/YsyeklWoEyfP4T3tDyJkE6YB8oI1w2Sf4hLAO1z8f+TrLRnKU
         h5HXD3ZM0wnoP4seIvKbIA+COZaYUCWdEG2s0ZFiBVhDpe2Ust6MXuMEaT1dUSSMI8dX
         XLSH39c+O6/T5w2qWYeUoeNqBIKNSf41sbPC08caMMKZIDG+HjiswkNO9KXsMM2G4ujF
         ERIm6hFePD769mhmiSaWPkkYvqSB1+yRw7oqRz3MQyGqUJ3lTLDN8zaiea3pee37khFq
         RF3iy49JnQa+Y/qFl0rNSKa3tS/2V9/ZflomktT5NSyD5RQcaH5eJEZ5EnPzH1mP/vOF
         EVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qys3o1H+CnuEM6ju3xJUyb67colbFepUBMCZcYOjI2I=;
        b=PPvZ6U1SLHiqo1htuSXloc/D82uUHeADFU0g3i9w91Qdvr6topnC//Lf/uAcfBKjeh
         RvMlz1IXRusFWKwNuv7+FkDQOMQTzeW7pEKR3xm/BPN+95oe6PQ32iVIXgyRBG+lPkKK
         9mdCs8PxeQt0S5HI0HQ64LI0Xjo7vjYDNxAS5QJoSmvinRles0+mGErIGcZyy2Gy+Pfp
         TH589K0PfCTyb+pZI73VDKwjnZiUHI511wd3730EcbdFPYP66YCg+cvsm4RgWmMf/byg
         IsgOkLE9p9xY7t2KEEYfNHCY9oMNpzQKjc4OXqZRkGzWl30eInYlaqFo0f+7LRyyib1K
         FSBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eeCpmNXIidrMYzyiYKBTxIrP5AT3FNkIDw+tyQ0zdT2lWMoa3
	DvBmMOn0gKzFv75GAFMBbRQ=
X-Google-Smtp-Source: ABdhPJwBdZn7ztCVG30u1sdoPsRsQzgyslICvpgHus/Iix31Olok5iohYRlONwPWPbExiqeNhe/vrw==
X-Received: by 2002:a63:f546:: with SMTP id e6mr5287081pgk.7.1599760157195;
        Thu, 10 Sep 2020 10:49:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls3474218plb.9.gmail; Thu, 10
 Sep 2020 10:49:16 -0700 (PDT)
X-Received: by 2002:a17:90a:46c2:: with SMTP id x2mr1050740pjg.60.1599760156575;
        Thu, 10 Sep 2020 10:49:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599760156; cv=none;
        d=google.com; s=arc-20160816;
        b=b4Sn/N0FQJumQeGy5L49wbKiV+pfE0Qc4vUh929ff4s8h3YOCJCohc7P4xWZUOJN4h
         UJaxVt5a21UFZR24v4ceVmOX/Gs6NSSd56zdlNlvNdVHOPnur5NGrlPhHVWqzCTYTNqM
         AamZrRKrQoYJwp0pWiOOZGsV6Zn4LgWKHZfzg0FWkdqYYqQWx8qHpc1jjzTIYMduTFIz
         ThNMy7Vfmy3tAdeoZbGEERFBDVjrFn25lZW9sBdoapcZx37FxQuISCQcZ3sGCMYQPyNz
         yHB4Vf+eyF64hjAYyMduWMPM+okEJZpDYdD260NnX3sG4qih4mpDexSinYO60MWG8Zcv
         oqoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=466BP3gTqbYzho2Xtm74KeHTUl+MUpLWLJk7QtAP2ns=;
        b=w+Qci+zj8RvwZeS9kAIifaHPj6MjleNA5bDwl7s8nN9QB3iPndqnd+P4oms78DlAP8
         qlhFf9OFrGWrLbd55MiwYTO11WWLU3pl1LdfcGAUN2X1noHlHAZssDHVvZVUEnKwRJ7g
         r2hOim7rrPlLrDhb5o5oYqK3dbUCcdvBkLmvEnFmq9q8eAiBao78lEqlL8UlDtwyY4GS
         L1ThSV4KWFBDUP3w0cISLaNFXp26/5UO0mIm9ZZ/QGQeSkHZegpLU9CGraOmIwAH4pKj
         5bmYYNPLCngdW5Zkh61A9NxFcvf5jXDW7Zt6NZb3acol3TfLoDiZEjCkjG+PrB91iSmJ
         AAWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNK6sGRS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id l2si615339pfd.0.2020.09.10.10.49.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 10:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id r8so5496450qtp.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 10:49:16 -0700 (PDT)
X-Received: by 2002:ac8:ecb:: with SMTP id w11mr8828228qti.373.1599760155606;
        Thu, 10 Sep 2020 10:49:15 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id r48sm7927350qtb.26.2020.09.10.10.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 10:49:14 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH net-next] net: mvpp2: Initialize link in mvpp2_isr_handle_{xlg,gmac_internal}
Date: Thu, 10 Sep 2020 10:48:27 -0700
Message-Id: <20200910174826.511423-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RNK6sGRS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns (trimmed for brevity):

drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3073:7: warning:
variable 'link' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
                if (val & MVPP22_XLG_STATUS_LINK_UP)
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3075:31: note:
uninitialized use occurs here
                mvpp2_isr_handle_link(port, link);
                                            ^~~~
...
drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3090:8: warning:
variable 'link' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
                        if (val & MVPP2_GMAC_STATUS0_LINK_UP)
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3092:32: note:
uninitialized use occurs here
                        mvpp2_isr_handle_link(port, link);
                                                    ^~~~

Initialize link to false like it was before the refactoring that
happened around link status so that a valid valid is always passed into
mvpp2_isr_handle_link.

Fixes: 36cfd3a6e52b ("net: mvpp2: restructure "link status" interrupt handling")
Link: https://github.com/ClangBuiltLinux/linux/issues/1151
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 7d86940747d1..0d5ee96f89b4 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -3064,7 +3064,7 @@ static void mvpp2_isr_handle_link(struct mvpp2_port *port, bool link)
 
 static void mvpp2_isr_handle_xlg(struct mvpp2_port *port)
 {
-	bool link;
+	bool link = false;
 	u32 val;
 
 	val = readl(port->base + MVPP22_XLG_INT_STAT);
@@ -3078,7 +3078,7 @@ static void mvpp2_isr_handle_xlg(struct mvpp2_port *port)
 
 static void mvpp2_isr_handle_gmac_internal(struct mvpp2_port *port)
 {
-	bool link;
+	bool link = false;
 	u32 val;
 
 	if (phy_interface_mode_is_rgmii(port->phy_interface) ||

base-commit: 4f6a5caf187ff5807cd5b4ea5678982c249bd964
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910174826.511423-1-natechancellor%40gmail.com.
