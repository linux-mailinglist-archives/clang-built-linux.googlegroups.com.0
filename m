Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNF4SCQMGQES5N7UNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D4C39A947
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:34:35 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id j206-20020a6280d70000b02902e9e02e1654sf3886593pfd.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:34:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622741673; cv=pass;
        d=google.com; s=arc-20160816;
        b=d70bj2KsooCDgo7qlhME/AZ6ZaZwTagoDOSDbk3iqrYYv0UqLJ0Y8FrYUM7e2Yz1cm
         De6YzatdsrzdLCm/YhS1s6I6ySD5refNrOXKPnfqbygLp9D8IYxc688wWcFgJOTY4o8O
         NhTuK8yWqcpjmXALXSd2w3tPX1RJdK9OWfrYTMiq1dl2VEL3xLva3gvsZ6X6VSAv5cV3
         zHAf9y+WL2YzlGyaC3ACCtv1oSvnpR6IP2s+Io1QYTGdHXy0NMgbjekXli18rWj5cr2y
         J+Qrv83mCkOGJ6c/zcV86v3D9vYKWiA75nuYUxAnpHWBl+CXAU1kLhlhhXyOGAElAi2C
         Y9ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=oAt95uGTwKtluqwO+pdwQggEGeNGaEyk/vAxCU7d0qs=;
        b=otlM/iIajM7MaJ9UcxM8F5SaNAjE7lU9wAkpsJmP1fQErs1G1wm/qb+z4sUmKFY66S
         C6r2ru13HcDh5Q7/5PsHD6gaAs50P9qSINci6AfKAVmr9NBRuwrJ7iBUOJ6GX1MKkZPg
         sbzH58I26cdtWRoEYUAhmiu9+uNPO/eNYbHyIHQeKfkeeP4eMS8DoWbIin94P9tR1Sd3
         GfHiGne00igtnfyflJxs42+hfidsjYATkwvLYfny1Q2RTre+AkgO5MROJeEZ9nBGc9S4
         C3EDtLJa6IQ8gaBLkSqxFKMl/04I2WaSRwZT+1hQlzKp2BZ4KVkeCHrQDKY8z+Vpuetl
         hitg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O0zvkdiE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oAt95uGTwKtluqwO+pdwQggEGeNGaEyk/vAxCU7d0qs=;
        b=fnrJzMAO4Z1wscTamrk2ZeOegAC6FDtHSUeyE+W38izTEq0oEf3b+4ycQ16J8KXu9a
         tOtKrXciOyR7XAV0reV9HRUOrEdp7sN60V8NcImcaYV0GTCsbHTmqwmlODuOrIdz1T8V
         AhTLdU6RSpuptIFSEvnYdR+hh3U3hPLAj2cv0WBiMCj035kmY2spM9aW4wGgNIDMJ2z+
         rfICl3Zh+AqhpHAbsGb0pHmsY3PpIsWKkKhavfw1lY6/54Tr2VJVgz/nfJw40wziHGjU
         OYmaw1nADb4FXMh0fL6iGo98gFeGe+ppJIXMcf6VXjjyQWiw6SVqva11ySVQMUyWb0pr
         577w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oAt95uGTwKtluqwO+pdwQggEGeNGaEyk/vAxCU7d0qs=;
        b=XO+fhkJ4mgOvHoqZmz/P12x9qXz8rz8ogM7nsnWVN5anfgm4pontYeNBSkeHr+NeCn
         oCI/yvPWyDl7AiK25iJD/fI5UyOrX9fCCdmeTt4S0YoOipIVy0bBKpkJ13fuReTXYbtI
         mhHo9xN1A47CKrJkdE6h21Yv63sStioSYhCefTfCoT3j4QjCYJgMPCPbmCPTiBaVbhUW
         UPU1Tq2jTasQD/4Pe5k3C2FP+LGLPH+CzRfDCux7tTwn9rH/ke2VNLAshzOWmIKT9RDP
         BqkMNbP9qRYgCY6AIl9KVgkuzMEVdwjR+JBh1f81pOiI53tGkx7kB6Q57WJYZbOjUWcZ
         zyYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZjepLsN5AaSTjg9noJ4CbnHQiAtW1y0zBtPzklqZ/NsKUNiIm
	QzKyrl7FLHeLgCuMVp7Phl8=
X-Google-Smtp-Source: ABdhPJwvMlQKlxOT0EUfeKYLC3k+914RRCiBvNEJlh/FzsTkG7z/mgaW2joaDQGsFa/W/EHxnKnmNw==
X-Received: by 2002:a62:7915:0:b029:2e9:c33e:e6be with SMTP id u21-20020a6279150000b02902e9c33ee6bemr188104pfc.18.1622741673243;
        Thu, 03 Jun 2021 10:34:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2848:: with SMTP id p8ls3777666pjf.0.canary-gmail;
 Thu, 03 Jun 2021 10:34:32 -0700 (PDT)
X-Received: by 2002:a17:90a:a106:: with SMTP id s6mr347049pjp.170.1622741672787;
        Thu, 03 Jun 2021 10:34:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622741672; cv=none;
        d=google.com; s=arc-20160816;
        b=G5bYFmi2PU+3uO7Ec25WGFmXuFi36wxaxoZ6DEyMToSMoOWWx8iSQgaHyTEdbTrhJj
         XBNGEif8+y17Hup95ZMD7WS1Z/9BQBqM518QJJMm4jvr4xz/X0FKT40Qu+o1ZX1DoV2Q
         u6w56Fu0orAPgNYURdfnvQbngn3d4YwWNFZrd4V07Rpz/cVmOKgBnT4r7XMNe3GRM2wY
         i1futFNl+dO5HAKsDDkpQZh+LEJm9TgMnF4qKCKgHqKipsbZB1ujih0dI05Vrcg5e3Ic
         8ecM6Jflc++si1etpFQuzEfgZHA/uIZhHzUvRM0lNSFs6gfYdm4ocJEJLCRmC7MOEjnv
         dY4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9iI2u4zLx2PrgxUifpKo5pdKQYHV1Wz5V4RXAWrbCr0=;
        b=MsV85ypyozbo/PePlyj7mIXeuoQoSUBgKaXMExFRMgicGd6ebV6MP4R5pf1kxn9bqR
         69M9FmvebTKCBgmZ34FJcxWzv8fKnBncyTOO/qGiAUAsYXdf8pElclUJEtyKS5okWBgb
         Vy+5LEPVO2W4oZrMl8ZOTloXCd/ONhFRi+dPNXlUMQHEX0j0Qe4RGYbDaTGyfQQr6v5l
         yh/8kwRVA3ox7/Ve5byf23US6fdnhE97cOrpNIOslYnlysEYweLXvyOd/WHhNlikT73t
         PPNAZ69PpZi+Wf/0wQOgUhh7ZNGpTYt272m2+WbSigYVwVC+K7GbKMT3jCyIzGjj6lgH
         HUEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O0zvkdiE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f3si293221pjs.3.2021.06.03.10.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 10:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D983613D2;
	Thu,  3 Jun 2021 17:34:30 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
	Sean Tranchetti <stranche@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sharath Chandra Vurukala <sharathv@codeaurora.org>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH net-next] net: ethernet: rmnet: Restructure if checks to avoid uninitialized warning
Date: Thu,  3 Jun 2021 10:34:10 -0700
Message-Id: <20210603173410.310362-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc3
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=O0zvkdiE;       spf=pass
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

Clang warns that proto in rmnet_map_v5_checksum_uplink_packet() might be
used uninitialized:

drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:14: warning:
variable 'proto' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
                } else if (skb->protocol == htons(ETH_P_IPV6)) {
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:295:36: note:
uninitialized use occurs here
                check = rmnet_map_get_csum_field(proto, trans);
                                                 ^~~~~
drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:10: note:
remove the 'if' if its condition is always true
                } else if (skb->protocol == htons(ETH_P_IPV6)) {
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:270:11: note:
initialize the variable 'proto' to silence this warning
                u8 proto;
                        ^
                         = '\0'
1 warning generated.

This is technically a false positive because there is an if statement
above this one that checks skb->protocol for not being either
ETH_P_IP{,V6}. However, it is more obvious to sink that into the if
statement as an else branch, which makes the code clearer and fixes the
warning.

At the same time, move the "IS_ENABLED(CONFIG_IPV6)" into the else if
condition so that the else branch of the preprocessor conditional can
be shared, since there is no build failure with CONFIG_IPV6 disabled.

Fixes: b6e5d27e32ef ("net: ethernet: rmnet: Add support for MAPv5 egress packets")
Link: https://github.com/ClangBuiltLinux/linux/issues/1390
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 .../net/ethernet/qualcomm/rmnet/rmnet_map_data.c    | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
index 6492ec5bdec4..cecf72be5102 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
@@ -269,27 +269,20 @@ static void rmnet_map_v5_checksum_uplink_packet(struct sk_buff *skb,
 		void *trans;
 		u8 proto;
 
-		if (skb->protocol != htons(ETH_P_IP) &&
-		    skb->protocol != htons(ETH_P_IPV6)) {
-			priv->stats.csum_err_invalid_ip_version++;
-			goto sw_csum;
-		}
-
 		if (skb->protocol == htons(ETH_P_IP)) {
 			u16 ip_len = ((struct iphdr *)iph)->ihl * 4;
 
 			proto = ((struct iphdr *)iph)->protocol;
 			trans = iph + ip_len;
-		} else if (skb->protocol == htons(ETH_P_IPV6)) {
-#if IS_ENABLED(CONFIG_IPV6)
+		} else if (IS_ENABLED(CONFIG_IPV6) &&
+			   skb->protocol == htons(ETH_P_IPV6)) {
 			u16 ip_len = sizeof(struct ipv6hdr);
 
 			proto = ((struct ipv6hdr *)iph)->nexthdr;
 			trans = iph + ip_len;
-#else
+		} else {
 			priv->stats.csum_err_invalid_ip_version++;
 			goto sw_csum;
-#endif /* CONFIG_IPV6 */
 		}
 
 		check = rmnet_map_get_csum_field(proto, trans);

base-commit: 270d47dc1fc4756a0158778084a236bc83c156d2
-- 
2.32.0.rc3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603173410.310362-1-nathan%40kernel.org.
