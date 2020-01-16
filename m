Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBONSQLYQKGQEFPTNMZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC5913E4DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:11:23 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id h2sf2291048pji.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:11:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194682; cv=pass;
        d=google.com; s=arc-20160816;
        b=wcTmHlTMwr1jcZ1msisuhn5Oqfj7WixeIKqVaZjM2rkHzl8RGwV4lSyY9m+HgGCEau
         CLYojnt1kEQdVJa3LmhASPJ7/PLsRd3/RILqsbaKpnT/KxXgjVUhGYmzoyZfxSEtLypt
         5mc/ucxO5o7Q/1OU2a7j7VYbtAQ5y8qC6D27CBEPIYrs1LjFerQ1RMDD+aSUbSQ/rhqR
         m4d3IvCz7SH9lp9zIaVkRgGj/ZdGBc9LLM3Pa+W4hXcv+hEJ0GyFdXrobbPyKsHX2vDu
         A4XnUgf98Veiqv8wxROxSGjsSFXMbfhqnQWxwVcV44Gpv2NYMDclYNAdCmg0nU+vNEao
         iBXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gEynFTdRxucJxUbvMxlNhFLa30QeAG67mKyuS15Sw50=;
        b=JMENApIDwANI34br1tTqVssXfkx2J8Gv9C7Zcur327EMsEo/2TwJpzy6lotv6DwhAG
         yjNdqwrGsuG1c0ACWyvuce9Si+DqYTd05afi1p1krl0hge35HrW3H8zaU60tA6kdbKpy
         8E+0yClALwyC3AWcSeitTmlsOVTqMZ56OmciOKtsp/kMnxFXEmH1rLRFvJNpqINrSQvq
         8DFJJy5EjpRHFvkZzU0UZEuTgPxH8/J6NmlJisZKpMaW0xRfwp3GWXSnlASeiD9rBAvG
         hlhLym7KjvfG9euvqXD4YkChaSwRmObxKS342Zs2GQWXwvz5tEY0gmRuyHsRf0+zHa8Y
         fRdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dj1A0PeX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gEynFTdRxucJxUbvMxlNhFLa30QeAG67mKyuS15Sw50=;
        b=iYWcc/l0a1yU/TqzSlzCnCSfYBr786g6ecTqlW1n7wNqpiIrfU1S5as1E2V6Iiyj4K
         EcEnbNlzVpGBlICheyOeKIblzfBoIY0U1np36MZ8DPLO6jHSUNk/YOI2HeldXiO9EIIE
         hr9uQ87//OBQ3DjmcS/HxZ8yjAkzpX66YY5Fn7tXwryvcQ42vtHdiwKOlCpU5lQcNpRg
         djkZ6OHEoZWJ7OfbIeG7JjIlMRWiJtAljZDl/bh+UIBieM5bERCTV53ypu9+CV93vl4S
         RTfavYLUAlaj8mCCw6/j4XCiB72zcyRGkCdZu9mscCNY2ZCFBwQlwC3cQApKq2YHMdHG
         aKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gEynFTdRxucJxUbvMxlNhFLa30QeAG67mKyuS15Sw50=;
        b=XB1ws0tTWY6+0G0j9vYc7XxF/sSu+3diDxLdsSGVj7pgpVGhKQ4nGMYs5WmOkEIxig
         JBAd2XTLiQNWq7jI1RO+n5s0wGPPL8Xu5zYyUw40bdkEzWQzBrEc2qX0ADPbzEyUPNq/
         beq70ZFzyiigsm2YbqljHicpYZX0gT4aCBscMvgxIRK5aU9EFfLdnP7n8LxEb8ElEfyf
         x6z5dax5FZa9PclXOWy2wi/zqFKHF31agjkvXwfe8plA8uugxwTcm8lTjjzsWI1d4059
         Vkwx7GiZmowemmryOy61ckoLuI1jDjFVMu7Lt3fNXooyd4ek93RNzCUYnFDXVajRnPEi
         Mnwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJw5Rxc6g35IfimY3vHqznuOtHWO+1L46aytlJ26btprK8Kpsj
	/49sJJ9wLAWnZ+PGM+Azt4g=
X-Google-Smtp-Source: APXvYqxSWO6PL++UQauHEFeeAVDYsX0CpnQHunYlRekOY9W/gO3Q/C3frvnY7L5/U5MXOVpwTdr62Q==
X-Received: by 2002:a17:902:aa0b:: with SMTP id be11mr24304543plb.181.1579194681851;
        Thu, 16 Jan 2020 09:11:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6389:: with SMTP id h9ls6113009pgv.10.gmail; Thu, 16 Jan
 2020 09:11:21 -0800 (PST)
X-Received: by 2002:a65:56c6:: with SMTP id w6mr41457804pgs.167.1579194681363;
        Thu, 16 Jan 2020 09:11:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194681; cv=none;
        d=google.com; s=arc-20160816;
        b=gqwvigktMEfFzzl9Q7mRC5gBspxZLIZcgkqy3Bxk31EjHI3BPv9rYd96nRxSHjLtAQ
         8AsAWnxeBRYg37zhi9eKkDAGBUxH+hvVUhjfhalwM1WrQJLNIDrZ02ts4ns0SihhqGPO
         Wn25fcq4FmyKDcG6CwfDzySYXjSIaThnzNCz6pMmxB5/Bf7MwNnTJfCglAs+zKyONmSS
         3errlkjqqNJv3v65NB0myWHWv4pf+b3FbG+rxmf4ZGt/cKsi7KtsqM86I0pNO65ULI96
         EUxN4LrOQt9WIbVDswrB7mwYU07CMkm/Es4nZe1+ZbQab7eowYpi9f0czXKkfJkTDsSE
         rcww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+QgjAW0LNA02QfnyuFgnE/NJ1Ws0VsezSKlsPB2eigo=;
        b=eojUUSkJnAOyGMSw0e1E7Qkd19qfq1in4+3Nbo5Xyu4Cw7CoQVMJkNiTSYEiSl3f36
         FrfI8P6uZw49bvF9g5BqsZo77hUQKp0aTq98zsdBkkggMhm83BFT5AW1/XHuEMkXpNWL
         fjhX8Nt1zmlySCjCJvFfztNUzC2FZMZ1sv9D03VeusWjxs6TkwpB2v3STvEcai7EPJcj
         YX8+kIFfoP325rNiB4qQ+7nLqQiflW6MuzlRUUjyDL/zqhK+vXlvrPxwmPiBQCRY9JMN
         9AExKIjF/+ZM91e/rCkcaxNbOBK5WZOyCTmCcegZU5J90skP3KIyV78nxzL8RZ/9AlG2
         VQTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dj1A0PeX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 36si896383plf.2.2020.01.16.09.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:11:21 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DDC4C24690;
	Thu, 16 Jan 2020 17:11:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	wcn36xx@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 526/671] wcn36xx: use dynamic allocation for large variables
Date: Thu, 16 Jan 2020 12:02:44 -0500
Message-Id: <20200116170509.12787-263-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Dj1A0PeX;       spf=pass
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

[ Upstream commit 355cf31912014e6ff1bb1019ae4858cad12c68cf ]

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
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/ath/wcn36xx/smd.c | 186 ++++++++++++++-----------
 1 file changed, 105 insertions(+), 81 deletions(-)

diff --git a/drivers/net/wireless/ath/wcn36xx/smd.c b/drivers/net/wireless/ath/wcn36xx/smd.c
index 00098f24116d..6cd113b3b3e4 100644
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-263-sashal%40kernel.org.
