Return-Path: <clang-built-linux+bncBCU77JVZ7MCBB64EQCAAMGQE7BX4RDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA082F5C82
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:36:11 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id i7sf1745761lfi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 00:36:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610613371; cv=pass;
        d=google.com; s=arc-20160816;
        b=k+Oa6rAWFMDAdPDX0drxMOWQipv3yLm3IlvVqX1WuJ0O/4k6ol1Pv1nCN3evUMpKre
         VVYEkBHvi1Sh9mFDcY4l4f303GO4OMn5a03Z/9oxRuTa8YufBn34AerOUVLIeJkmex8M
         85i3E/Edyh06gH71xOaewlqeNbXuRFiqaxMD4meGeqZYNRzgpJPX9UdnmbAn3V8en5OV
         mB6UBkdKqY4WsAnyjgy5QmooODWtfXCddYf4im+NXk1Ig2b/jl4lucjEFLcJWK4tOroC
         582DKp0gWMgnLNrF9U8ivCg39gcmGWz/N1igxacb9C28Zj5sKT/91IPaS0L68wn6nN6K
         vqww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=caO5zMkOFCz7Ksjq8mKKBAx2+QX8828J5SHJXA21nHQ=;
        b=bXP+RpcOrMJ/WG2WPde6V9VdV4CbxZ0RXv1XEvnzWxOcx0lTtCW3ogGHMaDE+ADPTa
         fJbXprP+by5Xv2uNWRVnpqMhvkPiPNVyg4GAyqvPTBvv+jktT483Lj96PfM9yBpPbRsm
         XiaHdDB5uwzP98ISMnRqGvUUX9omVn+TB5Os1+K/f/NETXdftVFnizFg9xPDI1bHMa6h
         vbqR5neptDDbOCYS1d/8+XKI/C3SDPu6EELW/SiYoBodwGkNPFpAMFvzhdYafJEPG8Sd
         fzdNP12v7qfNUb+bzc9TznvavjLU12Knhn3Y7MTvjHreBfnZaFhe8UDiuvDgTqh5r3gJ
         S0yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J7mq5d8o;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=caO5zMkOFCz7Ksjq8mKKBAx2+QX8828J5SHJXA21nHQ=;
        b=aWcGQFHKTrhTTjTtbmoHJqkxlk3iL9dXurz2KvsVFPbYHEv+GXP3Mqh5mrk8wEg+3b
         wPBkZ6tyZua+XI98zp04gJKhl3lBKdJM90E+7pSgk8C+ZUe01wMz53874cUUVWBuK8o0
         8yfEQ6GI8amuDv8FMeX5IN7IoPu9d01hapYQRkSmX29FVw674179+QGQhqTQerikut+e
         /vRQPZtv86DleZYpoyWLuZO+YrSid/MywyO6wnmfyCQNnNY0syX1wUx7dfby5kZn4GYg
         nnFg/N2QxATwclussY4NI2MmfT3kU/amL2Foc7OsXaGfbrsmSrZKYmZ9vLNAMQnKxOtF
         P40g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=caO5zMkOFCz7Ksjq8mKKBAx2+QX8828J5SHJXA21nHQ=;
        b=CCalOpc8MdogLd13kmnNln1viSGX9FEazNnU1j2crURrc3rmiDEj8av9YUsF2OYzTX
         tELfYlh4aGa4vYmOyxopfU0Lca1/Nj4hLgDsEXLtIBRB5bNrL9Mg5h5sKNWcL2enTNdh
         olJuKZG46kCJyyG7zc7v0i5W+bwGJfFU++H+clPFhP8WtRarNjbKi/AqeumFXiD13LdH
         gXWyBUMO39Ox7ulS7GaO4TbTZmin4zU84WCqRtaLtjC0hR8Azed+VitJ8jg4oTDCTTDS
         JdAhLD2BWfVkCOub1UxVPZ/EjV3VMzxHIXcWgx9HpcxHgrWKL3GXSCq3Cjmd6Curh/pE
         7FYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=caO5zMkOFCz7Ksjq8mKKBAx2+QX8828J5SHJXA21nHQ=;
        b=DPkUpviR4UwglEQIp4VhXskJD04JcJaUi+Gvqzey+NNpUDYDKYiostchysfRtppNOw
         07q4i7uG31yFCTjEqlIoocw4ejBjxUz15CFontWF9UK2Kf6xfNaNsAuwfVaXP7NTEJ2n
         GekWAWKH5EFef8zGFjlBKlZ/KaFpGVNst//PaDUITf/vLXHrQmmnnq/poJ6eEtZF2lS1
         zwWPfnt08lX/HttxIJbLEYX+Pk6Z6z9Bdsmy33eiXG3FAvLUSOzZAfVXEz3K2cX6qnV/
         JMOG0XECmeLkdux1k/DzRdpCEMra01le/ylxPKlG1wePuz+p1OdVR2u8AMBNUi6DY64n
         C/Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gSDCCqkcXCYfmcX6lCTG8zef/lPn4Svfj6gWISVy1okg3mvKs
	KJnqS5UNnPyeke5DIB2NY24=
X-Google-Smtp-Source: ABdhPJzxRai8/nLIsaROrodxfBRzq9UA3Xi0wiF2S/lb+S9UpEZXWOoxCdjdvavRZssg1i1saEIiYw==
X-Received: by 2002:a19:7d2:: with SMTP id 201mr2672834lfh.518.1610613371265;
        Thu, 14 Jan 2021 00:36:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:980e:: with SMTP id a14ls797101ljj.7.gmail; Thu, 14 Jan
 2021 00:36:10 -0800 (PST)
X-Received: by 2002:a05:651c:286:: with SMTP id b6mr2624788ljo.232.1610613370370;
        Thu, 14 Jan 2021 00:36:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610613370; cv=none;
        d=google.com; s=arc-20160816;
        b=vtT3oiH1cTZwQzqgjDtTGT9YFLHwSziwlrygGP7nyy6cuKA0faQwIk0VB2KC1V5X+i
         49a2q4zkec22LxkZA8oUBD9hsXVmqT9nvw+J0n0PTeMItgicOURkUMzSuVMGCoaGkscV
         6seLOdNfW286LL2WGgeo41eHkpPXUVwdYuUAzUIPqLdPhsqbZDHo1qkBV5cQsFRlSJKl
         T3uVNKVQdEn4yCsTwo4IGSwP/900Qs5EM/g1HPwnMJS7/M+w81vZTOHdMK8kZJafPPPf
         zZgxYrZo9XcugN5X96yAmfll5pQ1jL5G5lBdXQEQgXksqRu88LqmAKksN8fb2qs9MTKJ
         sY9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Fpbkw1/mO8jMuG8za1QNFcPos1MTHSCasjJ+BTbNExk=;
        b=C96qbNwFjgx47ZJPLlXM8anZZAG56tTAOcotMo9/bRDJ9FWAZU6hgMabEjivlvVV6f
         uqSaKlacXwm6yyWTJcTJT6AfGalaRSoCNIoMRLwff9eLhvRxHPEvNx/e8HFb6xyzDA9e
         1GSCiu4J42CaMAhY8VeXeeCQAIpM0PZKUlFgEdOiaL0Kl1PI4CZEI0x3zB0mq7D+Ej9x
         ORbA/rwn3ZvEWC+dHexUXw3LoT5Xuo6FNJBDU1TSwOHTp9lDemBQ5uLfQTTz8UThoHqJ
         mE3fG69wDha/CZjYgp8UeFGxLNkktFpvbN11t3G0CoTZIFOhKHGdXpf7RHvMVSox8Lqg
         g7JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J7mq5d8o;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id c24si183833ljk.7.2021.01.14.00.36.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 00:36:10 -0800 (PST)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id hs11so4636789ejc.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 00:36:10 -0800 (PST)
X-Received: by 2002:a17:906:5618:: with SMTP id f24mr4484156ejq.517.1610613369886;
        Thu, 14 Jan 2021 00:36:09 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
        by smtp.gmail.com with ESMTPSA id m24sm1680892ejo.52.2021.01.14.00.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 00:36:09 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Kurt Kanzenbach <kurt@linutronix.de>,
	Vadym Kochan <vkochan@marvell.com>,
	Taras Chornyi <tchornyi@marvell.com>,
	Ido Schimmel <idosch@nvidia.com>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	kbuild-all@lists.01.org
Subject: [PATCH net-next] net: marvell: prestera: fix uninitialized vid in prestera_port_vlans_add
Date: Thu, 14 Jan 2021 10:35:56 +0200
Message-Id: <20210114083556.2274440-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J7mq5d8o;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::62e as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

prestera_bridge_port_vlan_add should have been called with vlan->vid,
however this was masked by the presence of the local vid variable and I
did not notice the build warning.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: b7a9e0da2d1c ("net: switchdev: remove vid_begin -> vid_end range from VLAN objects")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/marvell/prestera/prestera_switchdev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index beb6447fbe40..8c2b03151736 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -1007,7 +1007,6 @@ static int prestera_port_vlans_add(struct prestera_port *port,
 	struct prestera_bridge_port *br_port;
 	struct prestera_switch *sw = port->sw;
 	struct prestera_bridge *bridge;
-	u16 vid;
 
 	if (netif_is_bridge_master(dev))
 		return 0;
@@ -1021,7 +1020,7 @@ static int prestera_port_vlans_add(struct prestera_port *port,
 		return 0;
 
 	return prestera_bridge_port_vlan_add(port, br_port,
-					     vid, flag_untagged,
+					     vlan->vid, flag_untagged,
 					     flag_pvid, extack);
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114083556.2274440-1-olteanv%40gmail.com.
