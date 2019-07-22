Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBT4627UQKGQE6UN3QSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9A4702D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 16:59:27 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id s18sf19268307wru.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 07:59:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563807567; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZMtxqkMSjL0+njhEHixX9GK5en2deg9AjgeEyvecLFDgJv/VhqmCvfp1bNHwVMwD84
         2M1jmcdm2KDUT5UaHf+c1s+pcJuf6N+zYAE8ZQyHB9gE0K7mBtLd4khzRkRP01ExcyVG
         MGr8r0MOrGK2q7w6MgVBTXhk1uZGdX4FgmiyPvUyqZJZLs9DyOXqkDRqnaMMAXucejjP
         R1raRGNnkj0fZPANTAXatj3HNUhTVlUbMMsxZQR4NU1LFNT9u9mRB3EzIniRhHJlD9q7
         PeiHrK649w/IRDhsun6vSs5bpg4iGngTiImnqLnLQ/Vzts8Ef6VcdPdd8alNxtLAojGG
         0VGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=alloV6qfyzrvcL36SVeidzs02xiVwL/iTpYAIpy6mms=;
        b=bMw8GMTH34ZtqFkQMoMfaKXXlfbvwleUpzkWVLXiZURjGCjWXmb8gASjQaSknYUP+l
         2I+FZOp5paDYNisKyqDHG35JurD4+t60r7O+yVFKLGomBXqeOUnszHXiqD4m8Na0OQ4m
         bn1VMXhKDm1a/nhAzC35lntNGa4BdSUvB/RN8vAveShsKoueIO+ZfpQe0r8fb8OL6G82
         s4J9mCZM6i/fD0drywWcY9nogAwS0u+DssT1PL2QX9r3qDJ6ptjSlzOiv+ZL48wAkw57
         8fG8/lmLGuyxJqTtCqnxqqpJYJc62EmWW4KHBXYNSzo1qW34LXyZPKVOfis9m6bfDjV4
         L2Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=alloV6qfyzrvcL36SVeidzs02xiVwL/iTpYAIpy6mms=;
        b=Q64MGg8l3j18eBvTTDIDlUOdFNdS5zWmOm3eOfsWUs05P+WkVQL94kcIIFHq3yK+OR
         0BxoGIvm/9HGoePEJ93kmrfTkqrHBXJ3nGtUedXkX0b4t73heybQFPiGPV5438R7gUMq
         XWgUzajmh7OjauHhQ54HVgaGrLhUdp+SHLJ7lp3z09VYPT6KucdsKgyTwJ+/wwQLAvAa
         eoA//91fAOgzvRfj42Ke+pSWN/H5ZgynSBJt05T30LDcKudbW8h9AMA2yLXBI7BP0tvM
         375bAkxtzlv4tRFZ+l/eXh2Q0EgMhD5yWGKvkvZ3PxQkK0XFK9Soy8v88zRuZ3ntxl/6
         YeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=alloV6qfyzrvcL36SVeidzs02xiVwL/iTpYAIpy6mms=;
        b=LEfTkGmC2DVuFEkZKh42R6MEJirIo53IQlvTNmganeUuaSMy5oic3+5zoJKuMmfEli
         AvUzUCylbABX7WR6vVi/851d79g+G/QsWLlzKvbru7IP0bxaEss6owiXJOUtuy/SWFQ0
         NNjkifVtUH2VNYA0zTChYePMmq1FaHTAtnEq1YNB0zb6HR0NPeF8sMxHdH9JmK4OAPQ5
         CYh3Iob+EKrIfZJQOGKfJfTcGMIOiKHumkUzGI/4vlh3TDVSII/kLW8M60/L+RtYRpWS
         xOf0pdD58wYu7c2kE3NMhoet2doaYI3FuzVpi41etdMMffCpwGGdqo8wgP+xdQ5VEckr
         CpiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVzgPXNIgCGSLiIT7JYDeps76ppxfWY8HNI+b1sz8zTr2OGgabs
	GYK8C/EYyF3sdbioqo1ZMUA=
X-Google-Smtp-Source: APXvYqz1htv2K/xpSfskRqfMlHN2g16IkLgwHNmtgWvWfZL4KWA0vYQsf16ZHXfLxaOwackJnQ/NDQ==
X-Received: by 2002:adf:dc51:: with SMTP id m17mr51251635wrj.256.1563807567137;
        Mon, 22 Jul 2019 07:59:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c8d0:: with SMTP id f16ls14266311wml.3.canary-gmail;
 Mon, 22 Jul 2019 07:59:26 -0700 (PDT)
X-Received: by 2002:a7b:cc09:: with SMTP id f9mr66282975wmh.68.1563807566675;
        Mon, 22 Jul 2019 07:59:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563807566; cv=none;
        d=google.com; s=arc-20160816;
        b=nKm69+oqk0q/qLFUIiq+b+QLdJZQPF4L6HytEyXBwyDaBe/osdc7yfeiOAXEdCMgKG
         4q/UI2DbftfvldLt0D6ab+aCN/0+Vpux8PM89AvIEDBtg0vdT3fEGCLxUzav43UT3its
         fjdOOMYz2t2VMoJdGBi6Lk5xEcJ21EgoMGYpnkk6cxwS/XmHAwa76dfi4Ik/kOG5LjwN
         3pPSahQlW0td5SbHc9SHeKE4HMVtAb5OU7qsD891n2o7A6UxcUa5/JfPcJRwMnJe2HN/
         QeYL04XAOdgHs13Ffqn/7u6u+V/ZkjRuVa1EyDW8fdgd7X3bi2m22DDdoSRxbbLlmoVc
         5q0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=KllOfO09afyrxD0hIvRAUDehoUUKBIpK+DHyLh5hvb0=;
        b=hlVElLMHhXlrKf4NRK+QSNiJb4wR5V/VMpRnqhabF878B4CjRguIIdVCxxYy4kHh+o
         XP2Nnqf9OIZTfjaFVaF6E2bzXefeGi41kZaYmIcDFec/iioMQ4VUO778zEBfuRl3UqLl
         vieDMgTPXUyU2a540zayIINP950K93yf32YthUGGS3HIDR/wiRdYgB/lSLxTzQL92BZS
         uaVtiI8K4o/KnP2TAALSVvGWCttzPpNMeQ4Clu/HrtcprJPytrgBGsW11Hi5fIb0SXU2
         SDysFRS46Uu58tu763N5K0gEsrLwKBsIVz+eks/7voqgMHNm9ulKYdTpkpxm+Pp3NB7P
         hVrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id 60si1059040wra.2.2019.07.22.07.59.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 07:59:26 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Ml72g-1iGxWU0w3A-00lT6M; Mon, 22 Jul 2019 16:59:18 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Eugene Krasnikov <k.eugene.e@gmail.com>,
	"John W. Linville" <linville@tuxdriver.com>,
	"David S. Miller" <davem@davemloft.net>,
	YueHaibing <yuehaibing@huawei.com>,
	wcn36xx@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] wcn36xx: use dynamic allocation for large variables
Date: Mon, 22 Jul 2019 16:59:01 +0200
Message-Id: <20190722145910.1156473-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:DoMutq7tq1tBnJWtXjN9npvWKRGNs0uQdWabe484QL5ngQQ6Ghi
 fDBtYS+Z7mTDDlq0ZxkICHas5lAB58v0Y62sMdJO7ezIskb3NeKdSCThVyrvh8EBkqCLorV
 Wlni3Y+WEMyKIqxn8kok7/MSElZD4589nSMk+jAsNz8rkFR4Oq442LHoMH1Y4Lo6lU6LQHf
 cs6HcqWv42MsWpHQcrU0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ogMsX3I4Nmo=:tf+T4muYtjoQzRx7q+XtpH
 FaoYQOFZMPutrRUg0Rl8EqWEp99Is/39Thi4ZCl9l3Ndx57LwL7IHLQEW7gqWSnGVF2z1o+K+
 wTo+x3H6W9FYhGa/fNFrTqEefODHj0sh3S5k7GcoPBKQRJ8X9DmIyT4/yQFitbgEXV+rynX2Q
 aEIKIQc47SWBdV40xwZ7Bflwkup5+gT8rKvWSaAq8PvtWzFlqyNA9vQc4rFVVBgpaB2ppDBlj
 Vjg3LzFZN6BEnSk9EVtYl1fqaBowSnSmOuQFW/JwNI5CLxg3FVcnd/QgiNcYvBAMQ+7E9UL3v
 RrWicl/jlnxoA5zwVq9HZsGQYBWFKcbBtVF9K/AIRGJZphdn+feBB2mxcqTrEX3nk4U+xyn+B
 +jWzyq848rQ9eRMqzJoO0BZSunnnzduhs7scq6n76lKUdNWEXEGKC3hGKhNVy60/FhmVkYNPC
 lMxTD9mmKVZs2pfldBuvT+voATVnq+DE8qZEi1h9I76xvQpx6BqEA/7JaHEb4lEhq7aPKheyc
 9VUK0FtiIQvDIzD2jEN7Tewwlr0sxinvbZPHz77etCUADExD23BcjYwnngzyRfl2d7K2U6nQy
 naw5GApmoNBBlRNKgjBgesk8NlBN9Qcy83fh3EcSBixqLH56J1jyvTeczMKVoSLn3Fw1n5AsX
 9Jykt1J6qs8QoowL0sx1W/dH+12M4rZmTUlaFotMpLkM2UPyko6h1dE9pmmy6R++lZEIVbA1L
 PMLSNqb+Uw11jmxuIt0alIT7UpTrei19b1osMw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

clang triggers a warning about oversized stack frames that gcc does not
notice because of slightly different inlining decisions:

ath/wcn36xx/smd.c:1409:5: error: stack frame size of 1040 bytes in function 'wcn36xx_smd_config_bss' [-Werror,-Wframe-larger-than=]
ath/wcn36xx/smd.c:640:5: error: stack frame size of 1032 bytes in function 'wcn36xx_smd_start_hw_scan' [-Werror,-Wframe-larger-than=]

Basically the wcn36xx_hal_start_scan_offload_req_msg,
wcn36xx_hal_config_bss_req_msg_v1, and wcn36xx_hal_config_bss_req_msg
structures are too large to be put on the kernel stack, but small
enough that gcc does not warn about them.

Use kzalloc() to allocate them all. There are similar structures in other
parts of this driver, but they are all smaller, with the next largest
stack frame at 480 bytes for wcn36xx_smd_send_beacon.

Fixes: 8e84c2582169 ("wcn36xx: mac80211 driver for Qualcomm WCN3660/WCN3680 hardware")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/ath/wcn36xx/smd.c | 186 ++++++++++++++-----------
 1 file changed, 105 insertions(+), 81 deletions(-)

diff --git a/drivers/net/wireless/ath/wcn36xx/smd.c b/drivers/net/wireless/ath/wcn36xx/smd.c
index 1d2d698fb779..523550f94a3f 100644
--- a/drivers/net/wireless/ath/wcn36xx/smd.c
+++ b/drivers/net/wireless/ath/wcn36xx/smd.c
@@ -641,52 +641,58 @@ int wcn36xx_smd_start_hw_scan(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 			      struct cfg80211_scan_request *req)
 {
 	struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
-	struct wcn36xx_hal_start_scan_offload_req_msg msg_body;
+	struct wcn36xx_hal_start_scan_offload_req_msg *msg_body;
 	int ret, i;
 
 	if (req->ie_len > WCN36XX_MAX_SCAN_IE_LEN)
 		return -EINVAL;
 
 	mutex_lock(&wcn->hal_mutex);
-	INIT_HAL_MSG(msg_body, WCN36XX_HAL_START_SCAN_OFFLOAD_REQ);
+	msg_body = kzalloc(sizeof(*msg_body), GFP_KERNEL);
+	if (!msg_body) {
+		ret = -ENOMEM;
+		goto out;
+	}
 
-	msg_body.scan_type = WCN36XX_HAL_SCAN_TYPE_ACTIVE;
-	msg_body.min_ch_time = 30;
-	msg_body.max_ch_time = 100;
-	msg_body.scan_hidden = 1;
-	memcpy(msg_body.mac, vif->addr, ETH_ALEN);
-	msg_body.bss_type = vif_priv->bss_type;
-	msg_body.p2p_search = vif->p2p;
+	INIT_HAL_MSG((*msg_body), WCN36XX_HAL_START_SCAN_OFFLOAD_REQ);
 
-	msg_body.num_ssid = min_t(u8, req->n_ssids, ARRAY_SIZE(msg_body.ssids));
-	for (i = 0; i < msg_body.num_ssid; i++) {
-		msg_body.ssids[i].length = min_t(u8, req->ssids[i].ssid_len,
-						sizeof(msg_body.ssids[i].ssid));
-		memcpy(msg_body.ssids[i].ssid, req->ssids[i].ssid,
-		       msg_body.ssids[i].length);
+	msg_body->scan_type = WCN36XX_HAL_SCAN_TYPE_ACTIVE;
+	msg_body->min_ch_time = 30;
+	msg_body->max_ch_time = 100;
+	msg_body->scan_hidden = 1;
+	memcpy(msg_body->mac, vif->addr, ETH_ALEN);
+	msg_body->bss_type = vif_priv->bss_type;
+	msg_body->p2p_search = vif->p2p;
+
+	msg_body->num_ssid = min_t(u8, req->n_ssids, ARRAY_SIZE(msg_body->ssids));
+	for (i = 0; i < msg_body->num_ssid; i++) {
+		msg_body->ssids[i].length = min_t(u8, req->ssids[i].ssid_len,
+						sizeof(msg_body->ssids[i].ssid));
+		memcpy(msg_body->ssids[i].ssid, req->ssids[i].ssid,
+		       msg_body->ssids[i].length);
 	}
 
-	msg_body.num_channel = min_t(u8, req->n_channels,
-				     sizeof(msg_body.channels));
-	for (i = 0; i < msg_body.num_channel; i++)
-		msg_body.channels[i] = req->channels[i]->hw_value;
+	msg_body->num_channel = min_t(u8, req->n_channels,
+				     sizeof(msg_body->channels));
+	for (i = 0; i < msg_body->num_channel; i++)
+		msg_body->channels[i] = req->channels[i]->hw_value;
 
-	msg_body.header.len -= WCN36XX_MAX_SCAN_IE_LEN;
+	msg_body->header.len -= WCN36XX_MAX_SCAN_IE_LEN;
 
 	if (req->ie_len > 0) {
-		msg_body.ie_len = req->ie_len;
-		msg_body.header.len += req->ie_len;
-		memcpy(msg_body.ie, req->ie, req->ie_len);
+		msg_body->ie_len = req->ie_len;
+		msg_body->header.len += req->ie_len;
+		memcpy(msg_body->ie, req->ie, req->ie_len);
 	}
 
-	PREPARE_HAL_BUF(wcn->hal_buf, msg_body);
+	PREPARE_HAL_BUF(wcn->hal_buf, (*msg_body));
 
 	wcn36xx_dbg(WCN36XX_DBG_HAL,
 		    "hal start hw-scan (channels: %u; ssids: %u; p2p: %s)\n",
-		    msg_body.num_channel, msg_body.num_ssid,
-		    msg_body.p2p_search ? "yes" : "no");
+		    msg_body->num_channel, msg_body->num_ssid,
+		    msg_body->p2p_search ? "yes" : "no");
 
-	ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
+	ret = wcn36xx_smd_send_and_wait(wcn, msg_body->header.len);
 	if (ret) {
 		wcn36xx_err("Sending hal_start_scan_offload failed\n");
 		goto out;
@@ -698,6 +704,7 @@ int wcn36xx_smd_start_hw_scan(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 		goto out;
 	}
 out:
+	kfree(msg_body);
 	mutex_unlock(&wcn->hal_mutex);
 	return ret;
 }
@@ -1257,96 +1264,104 @@ int wcn36xx_smd_config_sta(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 static int wcn36xx_smd_config_bss_v1(struct wcn36xx *wcn,
 			const struct wcn36xx_hal_config_bss_req_msg *orig)
 {
-	struct wcn36xx_hal_config_bss_req_msg_v1 msg_body;
-	struct wcn36xx_hal_config_bss_params_v1 *bss = &msg_body.bss_params;
-	struct wcn36xx_hal_config_sta_params_v1 *sta = &bss->sta;
+	struct wcn36xx_hal_config_bss_req_msg_v1 *msg_body;
+	struct wcn36xx_hal_config_bss_params_v1 *bss;
+	struct wcn36xx_hal_config_sta_params_v1 *sta;
+	int ret;
+
+	msg_body = kzalloc(sizeof(*msg_body), GFP_KERNEL);
+	if (!msg_body)
+		return -ENOMEM;
+
+	INIT_HAL_MSG((*msg_body), WCN36XX_HAL_CONFIG_BSS_REQ);
 
-	INIT_HAL_MSG(msg_body, WCN36XX_HAL_CONFIG_BSS_REQ);
+	bss = &msg_body->bss_params;
+	sta = &bss->sta;
 
 	/* convert orig to v1 */
-	memcpy(&msg_body.bss_params.bssid,
+	memcpy(&msg_body->bss_params.bssid,
 	       &orig->bss_params.bssid, ETH_ALEN);
-	memcpy(&msg_body.bss_params.self_mac_addr,
+	memcpy(&msg_body->bss_params.self_mac_addr,
 	       &orig->bss_params.self_mac_addr, ETH_ALEN);
 
-	msg_body.bss_params.bss_type = orig->bss_params.bss_type;
-	msg_body.bss_params.oper_mode = orig->bss_params.oper_mode;
-	msg_body.bss_params.nw_type = orig->bss_params.nw_type;
+	msg_body->bss_params.bss_type = orig->bss_params.bss_type;
+	msg_body->bss_params.oper_mode = orig->bss_params.oper_mode;
+	msg_body->bss_params.nw_type = orig->bss_params.nw_type;
 
-	msg_body.bss_params.short_slot_time_supported =
+	msg_body->bss_params.short_slot_time_supported =
 		orig->bss_params.short_slot_time_supported;
-	msg_body.bss_params.lla_coexist = orig->bss_params.lla_coexist;
-	msg_body.bss_params.llb_coexist = orig->bss_params.llb_coexist;
-	msg_body.bss_params.llg_coexist = orig->bss_params.llg_coexist;
-	msg_body.bss_params.ht20_coexist = orig->bss_params.ht20_coexist;
-	msg_body.bss_params.lln_non_gf_coexist =
+	msg_body->bss_params.lla_coexist = orig->bss_params.lla_coexist;
+	msg_body->bss_params.llb_coexist = orig->bss_params.llb_coexist;
+	msg_body->bss_params.llg_coexist = orig->bss_params.llg_coexist;
+	msg_body->bss_params.ht20_coexist = orig->bss_params.ht20_coexist;
+	msg_body->bss_params.lln_non_gf_coexist =
 		orig->bss_params.lln_non_gf_coexist;
 
-	msg_body.bss_params.lsig_tx_op_protection_full_support =
+	msg_body->bss_params.lsig_tx_op_protection_full_support =
 		orig->bss_params.lsig_tx_op_protection_full_support;
-	msg_body.bss_params.rifs_mode = orig->bss_params.rifs_mode;
-	msg_body.bss_params.beacon_interval = orig->bss_params.beacon_interval;
-	msg_body.bss_params.dtim_period = orig->bss_params.dtim_period;
-	msg_body.bss_params.tx_channel_width_set =
+	msg_body->bss_params.rifs_mode = orig->bss_params.rifs_mode;
+	msg_body->bss_params.beacon_interval = orig->bss_params.beacon_interval;
+	msg_body->bss_params.dtim_period = orig->bss_params.dtim_period;
+	msg_body->bss_params.tx_channel_width_set =
 		orig->bss_params.tx_channel_width_set;
-	msg_body.bss_params.oper_channel = orig->bss_params.oper_channel;
-	msg_body.bss_params.ext_channel = orig->bss_params.ext_channel;
+	msg_body->bss_params.oper_channel = orig->bss_params.oper_channel;
+	msg_body->bss_params.ext_channel = orig->bss_params.ext_channel;
 
-	msg_body.bss_params.reserved = orig->bss_params.reserved;
+	msg_body->bss_params.reserved = orig->bss_params.reserved;
 
-	memcpy(&msg_body.bss_params.ssid,
+	memcpy(&msg_body->bss_params.ssid,
 	       &orig->bss_params.ssid,
 	       sizeof(orig->bss_params.ssid));
 
-	msg_body.bss_params.action = orig->bss_params.action;
-	msg_body.bss_params.rateset = orig->bss_params.rateset;
-	msg_body.bss_params.ht = orig->bss_params.ht;
-	msg_body.bss_params.obss_prot_enabled =
+	msg_body->bss_params.action = orig->bss_params.action;
+	msg_body->bss_params.rateset = orig->bss_params.rateset;
+	msg_body->bss_params.ht = orig->bss_params.ht;
+	msg_body->bss_params.obss_prot_enabled =
 		orig->bss_params.obss_prot_enabled;
-	msg_body.bss_params.rmf = orig->bss_params.rmf;
-	msg_body.bss_params.ht_oper_mode = orig->bss_params.ht_oper_mode;
-	msg_body.bss_params.dual_cts_protection =
+	msg_body->bss_params.rmf = orig->bss_params.rmf;
+	msg_body->bss_params.ht_oper_mode = orig->bss_params.ht_oper_mode;
+	msg_body->bss_params.dual_cts_protection =
 		orig->bss_params.dual_cts_protection;
 
-	msg_body.bss_params.max_probe_resp_retry_limit =
+	msg_body->bss_params.max_probe_resp_retry_limit =
 		orig->bss_params.max_probe_resp_retry_limit;
-	msg_body.bss_params.hidden_ssid = orig->bss_params.hidden_ssid;
-	msg_body.bss_params.proxy_probe_resp =
+	msg_body->bss_params.hidden_ssid = orig->bss_params.hidden_ssid;
+	msg_body->bss_params.proxy_probe_resp =
 		orig->bss_params.proxy_probe_resp;
-	msg_body.bss_params.edca_params_valid =
+	msg_body->bss_params.edca_params_valid =
 		orig->bss_params.edca_params_valid;
 
-	memcpy(&msg_body.bss_params.acbe,
+	memcpy(&msg_body->bss_params.acbe,
 	       &orig->bss_params.acbe,
 	       sizeof(orig->bss_params.acbe));
-	memcpy(&msg_body.bss_params.acbk,
+	memcpy(&msg_body->bss_params.acbk,
 	       &orig->bss_params.acbk,
 	       sizeof(orig->bss_params.acbk));
-	memcpy(&msg_body.bss_params.acvi,
+	memcpy(&msg_body->bss_params.acvi,
 	       &orig->bss_params.acvi,
 	       sizeof(orig->bss_params.acvi));
-	memcpy(&msg_body.bss_params.acvo,
+	memcpy(&msg_body->bss_params.acvo,
 	       &orig->bss_params.acvo,
 	       sizeof(orig->bss_params.acvo));
 
-	msg_body.bss_params.ext_set_sta_key_param_valid =
+	msg_body->bss_params.ext_set_sta_key_param_valid =
 		orig->bss_params.ext_set_sta_key_param_valid;
 
-	memcpy(&msg_body.bss_params.ext_set_sta_key_param,
+	memcpy(&msg_body->bss_params.ext_set_sta_key_param,
 	       &orig->bss_params.ext_set_sta_key_param,
 	       sizeof(orig->bss_params.acvo));
 
-	msg_body.bss_params.wcn36xx_hal_persona =
+	msg_body->bss_params.wcn36xx_hal_persona =
 		orig->bss_params.wcn36xx_hal_persona;
-	msg_body.bss_params.spectrum_mgt_enable =
+	msg_body->bss_params.spectrum_mgt_enable =
 		orig->bss_params.spectrum_mgt_enable;
-	msg_body.bss_params.tx_mgmt_power = orig->bss_params.tx_mgmt_power;
-	msg_body.bss_params.max_tx_power = orig->bss_params.max_tx_power;
+	msg_body->bss_params.tx_mgmt_power = orig->bss_params.tx_mgmt_power;
+	msg_body->bss_params.max_tx_power = orig->bss_params.max_tx_power;
 
 	wcn36xx_smd_convert_sta_to_v1(wcn, &orig->bss_params.sta,
-				      &msg_body.bss_params.sta);
+				      &msg_body->bss_params.sta);
 
-	PREPARE_HAL_BUF(wcn->hal_buf, msg_body);
+	PREPARE_HAL_BUF(wcn->hal_buf, (*msg_body));
 
 	wcn36xx_dbg(WCN36XX_DBG_HAL,
 		    "hal config bss v1 bssid %pM self_mac_addr %pM bss_type %d oper_mode %d nw_type %d\n",
@@ -1358,7 +1373,10 @@ static int wcn36xx_smd_config_bss_v1(struct wcn36xx *wcn,
 		    sta->bssid, sta->action, sta->sta_index,
 		    sta->bssid_index, sta->aid, sta->type, sta->mac);
 
-	return wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
+	ret = wcn36xx_smd_send_and_wait(wcn, msg_body->header.len);
+	kfree(msg_body);
+
+	return ret;
 }
 
 
@@ -1410,16 +1428,21 @@ int wcn36xx_smd_config_bss(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 			   struct ieee80211_sta *sta, const u8 *bssid,
 			   bool update)
 {
-	struct wcn36xx_hal_config_bss_req_msg msg;
+	struct wcn36xx_hal_config_bss_req_msg *msg;
 	struct wcn36xx_hal_config_bss_params *bss;
 	struct wcn36xx_hal_config_sta_params *sta_params;
 	struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 	int ret;
 
 	mutex_lock(&wcn->hal_mutex);
-	INIT_HAL_MSG(msg, WCN36XX_HAL_CONFIG_BSS_REQ);
+	msg = kzalloc(sizeof(*msg), GFP_KERNEL);
+	if (!msg) {
+		ret = -ENOMEM;
+		goto out;
+	}
+	INIT_HAL_MSG((*msg), WCN36XX_HAL_CONFIG_BSS_REQ);
 
-	bss = &msg.bss_params;
+	bss = &msg->bss_params;
 	sta_params = &bss->sta;
 
 	WARN_ON(is_zero_ether_addr(bssid));
@@ -1514,11 +1537,11 @@ int wcn36xx_smd_config_bss(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 		    sta_params->mac);
 
 	if (!wcn36xx_is_fw_version(wcn, 1, 2, 2, 24)) {
-		ret = wcn36xx_smd_config_bss_v1(wcn, &msg);
+		ret = wcn36xx_smd_config_bss_v1(wcn, msg);
 	} else {
-		PREPARE_HAL_BUF(wcn->hal_buf, msg);
+		PREPARE_HAL_BUF(wcn->hal_buf, (*msg));
 
-		ret = wcn36xx_smd_send_and_wait(wcn, msg.header.len);
+		ret = wcn36xx_smd_send_and_wait(wcn, msg->header.len);
 	}
 	if (ret) {
 		wcn36xx_err("Sending hal_config_bss failed\n");
@@ -1534,6 +1557,7 @@ int wcn36xx_smd_config_bss(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 		goto out;
 	}
 out:
+	kfree(msg);
 	mutex_unlock(&wcn->hal_mutex);
 	return ret;
 }
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722145910.1156473-1-arnd%40arndb.de.
