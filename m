Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDEHW74AKGQECWJ2KTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E93921F43D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:39:09 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id a8sf9449728plm.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737548; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lrg4U15S4gIF/0VosO81wD/Zo3XGJ5/R0XeQhxXeJfAVydy2p7wC/8cWwNPov+jeca
         f1bV94oj0RsSgJTbeG6FBREvIZ1XkbnUNgWNQecH2N02Uaqj045zwCCoeNeJO93jG2ee
         Jsvu1kbxyB2gqMTIrTe4HzFy8xcqtClKxvuMxxRmvaPWo1H9xBkAy7OIEoVoUoZSQGrd
         CUT3z1oTi2q0NNqD5yf0LpAm4b2Wc+KQxxhD0AcRhPFSD4aUpziwJbYpL9o9jwY765Lo
         6vbSLSlmQDRfk9RzUJdUHCAx0TTIR+fELEuqR1Ac+IFBdK5cDPtJPI12Qr25Z3oNA6UU
         dqAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CNfAWUoh/V3esC15JR5vOLMez7O8RstD3fK/omGGOIw=;
        b=jeXshc43VX5nskO094/zPCtFvmk45a9Nnl6Wu3/Sm+dXmenollXX/gib1WecPudNef
         8epwpmiceb+pwa/Go5RApreh89r3hzf//ty7bwGT/7TLCjUQwcVwDK5c+kvvju+urpxi
         U/w77s+sL1wQIsIW71p1OeFizY/zBhew9XkxuR3N5f8TyxR0tQkR0T9aBHJ/JNTU096A
         OgH2tUdHdSGPPIlwkpRRUmsHYVFEB9G5ImJxc/7cjihPA52lGADV+HB/osNz1dZA7A05
         HyQwgbrd33gjEZtqz4ZqZKWLTJAoZhrHaS1tkAU5wSoQ5fGJv/F8dbZ5xV4VE6cj7hbx
         21Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=teipX5FN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNfAWUoh/V3esC15JR5vOLMez7O8RstD3fK/omGGOIw=;
        b=orBKy3w4R8eXaWTSRwXei6bsezISvSl+eJO4Z4SYsnbbB0fOzjArG57TWNA/u6HmXF
         DEgra7LOTt3RJBF984ilJrG7uUUWH0X5ralilvR8D5WzjyzXVAOap/KTJcWZJ9vZPDQC
         T3x2b6nrsyL1X7q6/Q5OMKx6/eyrkZSkzFuJ6757ft4W0dZfFueN6gIDRjMCOJ2Q9cEH
         DnlWmm5s1NX8jIC5f7W5SzL0ZqpJGtzNNeHXL313wBraDrueyAjdO686NRWcuCuHNaQv
         XVyOimPlUe1NKh5Ttt8UrJWz0dkr5DIKDH56ApkfNK8LVryeKN/IgPSGQ6p9/5Yu8HVJ
         e5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNfAWUoh/V3esC15JR5vOLMez7O8RstD3fK/omGGOIw=;
        b=Ykrtj5Nng1uqeqjDECI1oXLVFbV2553OHeR1QpCCh56qwuwrUuKPO+xN5Z9ssesguA
         vc/qtMlTQxvkp1qw+OY0zS8HPniwe6lp7YaSYktDzpVoFeJA4JDFjYZPp4eqDd81je2o
         +itcbifBotfnwkxWT1Zo0j6y84S/m0YC8kQ4eyKD32JHKbCnryxw907tL3PCjhcOfxju
         j9dAkF85rCZa37ryCkqo3n6dIEmlZ727XLZGAOjoSupWJW2ElcFS1m/ngGfhovEBrnps
         lpICuYxuGEF7za32yOJx0/lyg0ZSPlRT/+xuezyfwczmc2EWgxvglPQbQwqeIkbKaArE
         KfmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OxyOYzuHW/zRmJYiTSsos1nvmsDeX2TpyemIn9hNaRoLYi5hr
	3rNEuRHbiubFWkBIQpg0qnA=
X-Google-Smtp-Source: ABdhPJwX+Pi6j4lVCtAu5ez6CKbTVnfkzGU5Sgz42cEDWMY73J5LUE2W5iud6ELmE8QuluuSZB7E6Q==
X-Received: by 2002:a17:902:b694:: with SMTP id c20mr4328178pls.123.1594737548081;
        Tue, 14 Jul 2020 07:39:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9798:: with SMTP id o24ls6633934pfp.0.gmail; Tue, 14 Jul
 2020 07:39:07 -0700 (PDT)
X-Received: by 2002:aa7:97b6:: with SMTP id d22mr4724900pfq.202.1594737547649;
        Tue, 14 Jul 2020 07:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737547; cv=none;
        d=google.com; s=arc-20160816;
        b=BWDYwQ2m6iiWbmcf+df1KbR8AldEqdqcLpXi3OX44jr2YpmmkjQ1bya+v6zSejTElJ
         DgTOBkJBpJzFQTuzQXYkRecNMDKEy0ari/ACtIexopVspIazIyl619Z1ogPWX0VEEwCO
         xkF05CPMVelLbEx5SW77PTpA1AqdbVYb0rpnpeBk7DEX9TMIyUZ8yywTb6RnejFbR398
         D7A3pkblv/V5tOuEcNmlsr7iiYPvFxFNJEu8j1DI3lTK5aVALKUI7mYdcmNVNScZ5cKU
         ZAifg1wg1YxqokSoOvWGeyiIxaZ6Su/GGLqoAEGEtTeVsuWHpHD9LQWBvVCrYOPpesNV
         KD/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sAQ2rXERMKIEs8Zrx0fZAmxgH8ld4+8mb+9UuZloFyY=;
        b=RcOODWH01LzamiExBTTJ9/xEkQMzTKvmGbNmuW1+XYLXosM8g1y1SGJfFgd7TI/WMw
         xrraq7sjxk0lWoKsAuhfP2Kvr8H4jHw1+nU3gURnIwWzCI9e9u3/BKbPoImZyskG0v+f
         BlgCGWZ7bbsXaXBmwr/IG55voKpEWCA6hGKGB66pWPlWDeiJ3PTevIp6C2koJL/UAqRp
         JffxCBSmUDmAfZeldAalyw4RQ3aF04DFFEhIgLQvBDOyN54+TimawI8gnTIBxGyzw25s
         DdakHts8vV7F9geutQJTO+T+RFBGcmcOQyZ/0rWx/tEl95zdDK6SECy80/a1cf2s3rb8
         ZLtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=teipX5FN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ob1si84723pjb.1.2020.07.14.07.39.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8160A2067D;
	Tue, 14 Jul 2020 14:39:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 14/19] net: sky2: initialize return of gm_phy_read
Date: Tue, 14 Jul 2020 10:38:44 -0400
Message-Id: <20200714143849.4035283-14-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143849.4035283-1-sashal@kernel.org>
References: <20200714143849.4035283-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=teipX5FN;       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 28b18e4eb515af7c6661c3995c6e3c34412c2874 ]

clang static analysis flags this garbage return

drivers/net/ethernet/marvell/sky2.c:208:2: warning: Undefined or garbage value returned to caller [core.uninitialized.UndefReturn]
        return v;
        ^~~~~~~~

static inline u16 gm_phy_read( ...
{
	u16 v;
	__gm_phy_read(hw, port, reg, &v);
	return v;
}

__gm_phy_read can return without setting v.

So handle similar to skge.c's gm_phy_read, initialize v.

Signed-off-by: Tom Rix <trix@redhat.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/marvell/sky2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/sky2.c b/drivers/net/ethernet/marvell/sky2.c
index 241f007169797..fe54764caea9c 100644
--- a/drivers/net/ethernet/marvell/sky2.c
+++ b/drivers/net/ethernet/marvell/sky2.c
@@ -203,7 +203,7 @@ static int __gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg, u16 *val)
 
 static inline u16 gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg)
 {
-	u16 v;
+	u16 v = 0;
 	__gm_phy_read(hw, port, reg, &v);
 	return v;
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143849.4035283-14-sashal%40kernel.org.
