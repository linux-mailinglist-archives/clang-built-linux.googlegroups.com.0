Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBODVXXAKGQE65AZKLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3EDFA08D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:51:03 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id k23sf647719pgl.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:51:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609861; cv=pass;
        d=google.com; s=arc-20160816;
        b=QEk76UwL3yTT0hKtJP7ZMbHHbUUNQWCMwjKWRTDNFTF+EGCxBoOLLNthXUyOJ45cZe
         TPcJWY/PUd+Gd4V+X+M3AIsN+8pi68MjwT7xH8OfJlBS0BAd488lxmS+madFcaIqjAMT
         hvPlwb9iGMKoTcNgHK8Q+VUrrUPQPsPf2uv2RgFvHbzSoejTNKQ4yza8ojLKkg9yqGZO
         gN0+stqhZRbTsZHRCswwYU84uRBTaYsN8Fa5ORuU/h1AAkn+KlNRTd556WOQrUJcQosD
         V/ENQ/IjTNVK7CChgP0BRajMbI63a/nssacjoEHraK14Pl/vQK5WONqNIt7QOR6tTs6Q
         17LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+/J+4EDQ6ApkBkhteG3e9vmxlzfMfVWZj2rIfMzElWg=;
        b=LJDjsLTFenRBX3oidRgqJWkBA/kUvve3ojBhdK4dxIfXOqYKqBxa1Dd+GSRq4fRunF
         WRMbVNdQV+3nI5gWTKO2LQMfTfH9xUQmogqwALlqpQaSEAPLr3ETOQlyQK/hGKJjpe+E
         8zNSQzZQ6UWi61PVrZZAZxcbFwRPl8BXSNRFgp0Qaz+kVQfEg7ZiAGleaM0HsksFF6iQ
         L5e1ljNZBTtfXJKaL0k9O4cOKyFsnIk2Iin8/cAi92WQUmelJ5WcZ+5IjCs/d7D54dyL
         Y+dNTqjk+RGf8NKPI1oOde/dPkdXibGznE0gEZjyH49JBf+z2JgfFp0azHum0+JC6N+M
         sHXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hzXlZLa4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/J+4EDQ6ApkBkhteG3e9vmxlzfMfVWZj2rIfMzElWg=;
        b=U8+bLqLyjdILXIM3D1REkAduMEMdhL9h++Ro+mSvOHz8uLcXatSeu7QpKLBkH6zFPo
         DhYol3uuGOmgFJknOje6wU3dKNBB+Pd+S8gxxO2Z4FqdMN3iQjs7DhA8PvVkzIbY6v8E
         0VtWmmqpbWvSpWatLmnwSuON6yBjWMyO/n6Ldf7qnvls56hv+MF1VOH7YfsQgH40eWgg
         PQDnHfXHXkSXyW4T4D/J4pAdVmchw2acgSP+fMoQ+DU5A1oKgOdc6LQ2oAEdScEmlzDa
         MFLm/yZQWJhXw3rNOc50flCfulG9tTeBjhvIGYjSedkkqhj4LjFYGoJML61DhDpNO3aX
         xmzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/J+4EDQ6ApkBkhteG3e9vmxlzfMfVWZj2rIfMzElWg=;
        b=N24gSQOEuCZenz9MWkarYivKUALNX0P6XWKfu+4Ive0v3fjleO3US+OzVfOobHwqQR
         0868ECtnZwupahAi3FOJPUTF4yYNAe7lxL+sGfseJtDSTMhqXAjKFI8M6fisp19CRIoM
         +qFEMFwyZw6KEPlUOG8MKY6CV1QYU65VZT3aJfs6qvhjCy6YKPcI/GSxoC56q6pXhyyL
         MJoUEbG8YrzX7sx8vWZqncxCg4loep3X4NsYgf/4qbyt3yvwXiaiFhKJWJr84kJcEQK1
         tfRSyA1jWuTfQBuZdNZZWERv+51jjYdPfVK5JzIG5/s1G20z8R8m9H6spVvb4IUhFyKd
         ofGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXc6eKqBxOLZzhPJhoUR9gLiPzE8wC1hqnJd3qJnKhGEHCFRWp9
	iP+VrH6w8HjtIYX2Dye8B2g=
X-Google-Smtp-Source: APXvYqy89PWZ1W8CQdd3OiO9RpfC3Jfi+1K088Swp6YnAhRpfV51oh6XDi5KasVZG3st63d/VWVUVA==
X-Received: by 2002:a17:90a:22a6:: with SMTP id s35mr1186542pjc.3.1573609861118;
        Tue, 12 Nov 2019 17:51:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4342:: with SMTP id k2ls122965pgq.6.gmail; Tue, 12 Nov
 2019 17:51:00 -0800 (PST)
X-Received: by 2002:a63:6782:: with SMTP id b124mr746848pgc.220.1573609860682;
        Tue, 12 Nov 2019 17:51:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609860; cv=none;
        d=google.com; s=arc-20160816;
        b=rQSi/GukaSmrbWWMsJwtdulU4m6ps065OE8gOMCuR6WZUM7uuqFfrskfpBX1LOUQrI
         RwdpwmbEtDBF1l4TBhu6qjOf0vwCNyiiMgHz1WKmyUKih+5yXsdWJ/9fyfbpwsZ+JAld
         eF1aC5VE42jJYJp2QQYcgFLuTgFqzyfSCYMto4ipu1d0of23QrbUK5wd+ct7A1urHWzM
         4WRT7ZadhsscQ19qYEJ9Dv0pPZof5mqg9KoE3nflNFpuXBOGGhenLdZv4qYGurnGOadr
         1n1fTQWEO2ng6D+Hg49Zn+by415+E0Bh1hj2qMmEgTA6SugxlolIaAA+VfMuwTFQI7D6
         CLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kvmi7RhE7JIojJDUSEakO5GiE5JHhGvHpnYGe+9afgA=;
        b=sjaq/jQfL5VF7luG4v9bkSLYPQ4jT4tMFpGJKRoDjJMzQbYNg022jjKTOf2nHjxua4
         mWQG7WhnXuFhtDdXBKkBsrDFrG38+wulch/+mGsYRaJ+50Z/90VgMh54yKXtcT6xGkPH
         UYZliDfSMsvfWvrnqUHlXLsWAuIwDlhcdInBsgDHGFa3zeWqb0RofHXCcpqbX5nnizUQ
         rgnP1TpfOncmg4atfVeS78LK6T7RpXUjK2rOzwgj3TfQauj75DNLSkgEdOiMYD1opysS
         0fmpM/daImORaG61d1HUSPgLy1bbIZzQryY9JkLpIrgV9uUktKYUPL9gfUxsPoAVSMwF
         H8LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hzXlZLa4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si24065pjp.0.2019.11.12.17.51.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:51:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 78F85222D3;
	Wed, 13 Nov 2019 01:50:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 026/209] rtlwifi: btcoex: Use proper enumerated types for Wi-Fi only interface
Date: Tue, 12 Nov 2019 20:47:22 -0500
Message-Id: <20191113015025.9685-26-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hzXlZLa4;       spf=pass
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

[ Upstream commit 31138a827d1b3d6e4855bddb5a1e44e7b32309c0 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c:1327:34:
warning: implicit conversion from enumeration type 'enum
btc_chip_interface' to different enumeration type 'enum
wifionly_chip_interface' [-Wenum-conversion]
                wifionly_cfg->chip_interface = BTC_INTF_PCI;
                                             ~ ^~~~~~~~~~~~
drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c:1330:34:
warning: implicit conversion from enumeration type 'enum
btc_chip_interface' to different enumeration type 'enum
wifionly_chip_interface' [-Wenum-conversion]
                wifionly_cfg->chip_interface = BTC_INTF_USB;
                                             ~ ^~~~~~~~~~~~
drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c:1333:34:
warning: implicit conversion from enumeration type 'enum
btc_chip_interface' to different enumeration type 'enum
wifionly_chip_interface' [-Wenum-conversion]
                wifionly_cfg->chip_interface = BTC_INTF_UNKNOWN;
                                             ~ ^~~~~~~~~~~~~~~~
3 warnings generated.

Use the values from the correct enumerated type, wifionly_chip_interface.

BTC_INTF_UNKNOWN = WIFIONLY_INTF_UNKNOWN = 0
BTC_INTF_PCI = WIFIONLY_INTF_PCI = 1
BTC_INTF_USB = WIFIONLY_INTF_USB = 2

Link: https://github.com/ClangBuiltLinux/linux/issues/135
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Ping-Ke Shih <pkshih@realtek.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c   | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c
index b026e80940a4d..6fbf8845a2ab6 100644
--- a/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -1324,13 +1324,13 @@ bool exhalbtc_initlize_variables_wifi_only(struct rtl_priv *rtlpriv)
 
 	switch (rtlpriv->rtlhal.interface) {
 	case INTF_PCI:
-		wifionly_cfg->chip_interface = BTC_INTF_PCI;
+		wifionly_cfg->chip_interface = WIFIONLY_INTF_PCI;
 		break;
 	case INTF_USB:
-		wifionly_cfg->chip_interface = BTC_INTF_USB;
+		wifionly_cfg->chip_interface = WIFIONLY_INTF_USB;
 		break;
 	default:
-		wifionly_cfg->chip_interface = BTC_INTF_UNKNOWN;
+		wifionly_cfg->chip_interface = WIFIONLY_INTF_UNKNOWN;
 		break;
 	}
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-26-sashal%40kernel.org.
