Return-Path: <clang-built-linux+bncBAABBJ6MUX7AKGQEIGAJJDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF93F2CE190
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:26:48 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id j30sf2253624pgj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:26:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607034407; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYeoOAjyPvGwy6z4Ti63Qz59g5gec2WkgrgbzZyWRglykr6NcRScZH01WP2FQkqEHv
         pDsHqI5cbXg554e6ogsXVDGjhYJ6QcAjkC4fEFkop2Fy3uR1Kzh/gn4FPvwODQ98A4Hd
         uT8/gF290aDHFgi4QTk9/vjDaDvuRyGOVEGXBhv28x5HGNtuzZf0iTjLEAG/12n63ICg
         wk+VrGZzGdfsR19EwsELb+UMYlLmx1+xpANZdfRVHa/HFiIfoRwG/y2B/B0/1BmfZNh1
         EF1oE2qa8tXgEunFkaKMOF+qrWJGBP5CYY6ES95faaxlqLOPJlmzbNAGLVI38Crv2X9J
         qJsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0hgDPIMM8svXvhwdBYJI698KJfLtnR65lp5UtT73j9E=;
        b=u2jEWL5OqMC6iwNgS7323SZdo1pxA2XY864oeJto7S7PFwdBmistMpX7UwVkvqkJOh
         SOp6FT5v4p+zJbUJUCjJf41r+cz+tMlb2wf8xR+64d0p759v5foHod2akk3YDafxeMeN
         VQbp6RPrr8I3/GfTOLTVK7S3Nqw4AldWkyBY9jbQ9PpZbtCaw/ToF0oL2CsfesOEjAsr
         eHgC+JDhvnWTLYlL1SYhHTvzKI+GGyNCX5SzRmzLORvzo0mGZYGkUwl/g0HL1P6aifAM
         EFfhfzp7TSPIz11bM/PwDnXRKbs83b02vFOOdxTu1ViHEoXeOiJOCrgkTokwVGPAK8jf
         8cbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hgDPIMM8svXvhwdBYJI698KJfLtnR65lp5UtT73j9E=;
        b=lTUtkNDA5jFo8jUSoyLdIWZvTT6CCLa9zkmScxP9c7i6KE/o/ODFBO7X/qtJyw8bqS
         8Poiu3TxvJBl2ve0DJsE0Meg7FC8OM3b2/ditGubfCAs3vraGJR2of0HAvfNm0Th2+um
         /76qM9tpzv6rqfJuItOodqWTEv5QrHwdEYjw185wkorTGP8w+X5w+9TJdYN/re1IXnHR
         Mskg3HZdTi8Gg/KCA72sKJEgdOCPdtRI+QQ9DdvOuSWI+QC2OdYlIpWgbxQMoFIGHHV5
         yxtavZXHBZlMCg02E5GicDQlRmrHJw7kZXxVH62d2Da8R7hTbVQkeVyea9DujWUrirS/
         V1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0hgDPIMM8svXvhwdBYJI698KJfLtnR65lp5UtT73j9E=;
        b=ps/0ZRdzvNnVCPYY7kg/iHDn2Or8JlMY7BDge4+6SAP895ZUvAaKHpFAVZh2bg4EE7
         Ejb48Zd9FsSip6MJ5MOAdxRNyrjQdO4TNPP7PpaNMMKZD/m/+k1aSuM2sdsXBfExYd87
         OZ6/vPyuRwaL9dwZvcCkPkP6KUeADv7coDLaP4oOpWVi4VTPwYHEigqScGyFx7MRrP6b
         I0JFYmoPYDQtMXqzEv3IDXxYC58/WMc2ql+zEwNSCulvKTtK3acwz3BNZmHwXXcplddc
         kVf8f2u+H8DHAF/wmrgx27lqMPBoWB7In+XaH2a2LAWzQypP+LkMJhPERZbMYDYDE/It
         vYIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nK6DdOfTmU0P+qXCZZUx4L6jecYZxhbHf3asf/88bo4bdfHFc
	uc/xa1p9mLtElqkApytOyhQ=
X-Google-Smtp-Source: ABdhPJwrcUB/WAGi1CJyWG2rpFF6C96z8yy89DylQlYnm9vuvuOJlOIYfzqsDyc52AaT5FxwReELUA==
X-Received: by 2002:a17:90a:c588:: with SMTP id l8mr1126393pjt.147.1607034407406;
        Thu, 03 Dec 2020 14:26:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ec06:: with SMTP id l6ls3257456pld.8.gmail; Thu, 03
 Dec 2020 14:26:46 -0800 (PST)
X-Received: by 2002:a17:902:9307:b029:d9:d097:fd6c with SMTP id bc7-20020a1709029307b02900d9d097fd6cmr1282556plb.10.1607034406848;
        Thu, 03 Dec 2020 14:26:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607034406; cv=none;
        d=google.com; s=arc-20160816;
        b=uRraVd86y2WWXxneuuIuAnJZKKbomPsFZsw2UhSskXGq0e6c4C0bVbavxfoXD1BOeF
         crSaU9Q4gX2oNeOnVVU++LsHJabTQGZi733yV9u+2Bj3/tir4XkU+E2eo92Z+rrw8SeY
         cH2tce6Ks2zzzX8CM5L0d3q21zs96u5qjrwfNslXMqeoVws0TMQWpKepniSVUwwZyyM4
         xden+6R72nhsSVN+2YnoHLRn2u9TWICOUVfuDhu4qnDSr7312ZzKd659lq2NtC+95S3F
         5RSZGOg89llzWBA+BWZJQGxqIMTys+V+WTq6yMlj/LuAEZJHipxFQMx09/RD3mRv1Gzo
         yjeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=BT5uX2dtcBynslKEM6J0+40qpRnQceZd2wNxFfAiEEE=;
        b=Oc7EXb3ujdwgwwKB8K+PrFygjlMh2fnejNNRcX8OqBRqMyV8oD73+sIHPiXWIW31wk
         0NPGy1E3hVozN5tTR8Hnagdlhvkb/1aoLjMnLJz8RBlj3DdkoCzpoRlNV6bdyThNCryq
         HzZ3XGG9aau8LyBd6/2rIfxmImvCxHHNhuxqJpVZa6y9cz3uDUunhfMK4obWZ7pw3MDZ
         ngclPBu/mAthrT5SLB0aMjCGuK/M2TmuQByVpdDsYKK45QE8OZP8PlSziTAblzocbB3E
         22Yb26U3LLZkYpLn7jSvazPIT3rEAzaWm3WNunIP0nauvWX5eMXiVkthqvhg8hHee1Ew
         rURg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si343321pfr.4.2020.12.03.14.26.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:26:46 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Ayush Sawal <ayush.sawal@chelsio.com>,
	Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	YueHaibing <yuehaibing@huawei.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ch_ktls: fix build warning for ipv4-only config
Date: Thu,  3 Dec 2020 23:26:16 +0100
Message-Id: <20201203222641.964234-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

When CONFIG_IPV6 is disabled, clang complains that a variable
is uninitialized for non-IPv4 data:

drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1046:6: error: variable 'cntrl1' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
        if (tx_info->ip_family == AF_INET) {
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1059:2: note: uninitialized use occurs here
        cntrl1 |= T6_TXPKT_ETHHDR_LEN_V(maclen - ETH_HLEN) |
        ^~~~~~

Replace the preprocessor conditional with the corresponding C version,
and make the ipv4 case unconditional in this configuration to improve
readability and avoid the warning.

Fixes: 86716b51d14f ("ch_ktls: Update cheksum information")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c  | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c b/drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c
index 7f90b828d159..1b7e8c91b541 100644
--- a/drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c
+++ b/drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c
@@ -987,9 +987,7 @@ chcr_ktls_write_tcp_options(struct chcr_ktls_info *tx_info, struct sk_buff *skb,
 	struct fw_eth_tx_pkt_wr *wr;
 	struct cpl_tx_pkt_core *cpl;
 	u32 ctrl, iplen, maclen;
-#if IS_ENABLED(CONFIG_IPV6)
 	struct ipv6hdr *ip6;
-#endif
 	unsigned int ndesc;
 	struct tcphdr *tcp;
 	int len16, pktlen;
@@ -1043,17 +1041,15 @@ chcr_ktls_write_tcp_options(struct chcr_ktls_info *tx_info, struct sk_buff *skb,
 	cpl->len = htons(pktlen);
 
 	memcpy(buf, skb->data, pktlen);
-	if (tx_info->ip_family == AF_INET) {
+	if (!IS_ENABLED(CONFIG_IPV6) || tx_info->ip_family == AF_INET) {
 		/* we need to correct ip header len */
 		ip = (struct iphdr *)(buf + maclen);
 		ip->tot_len = htons(pktlen - maclen);
 		cntrl1 = TXPKT_CSUM_TYPE_V(TX_CSUM_TCPIP);
-#if IS_ENABLED(CONFIG_IPV6)
 	} else {
 		ip6 = (struct ipv6hdr *)(buf + maclen);
 		ip6->payload_len = htons(pktlen - maclen - iplen);
 		cntrl1 = TXPKT_CSUM_TYPE_V(TX_CSUM_TCPIP6);
-#endif
 	}
 
 	cntrl1 |= T6_TXPKT_ETHHDR_LEN_V(maclen - ETH_HLEN) |
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203222641.964234-1-arnd%40kernel.org.
