Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFHGWHUQKGQE5MY2AGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B2595688F0
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 14:35:32 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id g8sf8837231wrw.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 05:35:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563194132; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlRFWtVaeZn1kwkPbrhjPgtv7xVLP2fBc7bVHPjF4F1GNBlRgQE6GajR1PFi1KiA6/
         BOUYKUwLrHXjdFKQxdtryCpv5F73BvOng/GvUeKffjC2teDzJP9FfkNXcRFTVb82b2pM
         2QDMiPJDEgnMzOSWJZJ8/cKK011NiMPQ6eDLcFM/N3SQjp1Fg3tH4EczwtJDhMz6xUve
         Gdv84Hu+325Lymt1Gv5D2iqEAyY5aXDDKtffLH6Ub0dtHRyZd8THzxqhJ0eB80T3NKWe
         jH+DMkM0uwRKB8u9aX3O4qf//OjDCv4tuGrOHmFXPLA26ctZ1cN+7CIoROkC9yPSL98q
         Qy8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8u+k7Z6juBgxHXDaaYA4q87dpxpO3hoO8U7pc7yMkPQ=;
        b=09SloEoVUH2ndhuF5je6nVaMcvDbdQjV6PxUg6OKEHO/h50WdOUMa+6G9jDU0sfwbA
         d0g0m6qvZWns9Gok7NrggxltFA++0gXk2cQbRwo0Uy9Ule6ME0HY16QwxfuVRJaoAzPS
         tJxxAyLMOqQsy+hJq907Zez+7yGEsH5xJ0K/ls2aixNeWnY2vbQQ7sNLsr5HATWaeG6n
         ZSKOmNenS63KmKC1AlnFRtgAB+Oh+3m6weJOx2vQ2bfc+FY0K0FX/8IO6pObSTFaBxI+
         QKze6CuaLmtHRH1rUXIqOtRC2LETeZaD09xtHVQae/2VhuDadHui6EkcvzCqMamXJBUN
         rUEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8u+k7Z6juBgxHXDaaYA4q87dpxpO3hoO8U7pc7yMkPQ=;
        b=TykU0Ti5bpbEAIsW8BZhDGJ6Ir+d3CMeqPpIv4F6OBsOlylwlVPHF8j7sIgtnwb+Cj
         UefLZCPUFh90mks2KPdAcvOTzSc5tXuWMMWd4t7SII4q76FiryuJWa4mlVx0LBAeRHZu
         gu3I2IZIbj7RV9IdVSMOluLDLzppbHvftbyf3payeD9YQeAmI6toeGjPjjlfc2egaQKl
         MNUqWscPWOGuX+FvyzlqzpJ37P5N0d1lVorl74hHRpsvEGQ/HQyba4bu4KRxi9R4j6Zq
         /4TsM0SjwdvUKc2wSM1kgOvbXDQW9k1wplY9Ds5v7mN2sMJY7+UWm3xJL1bRVPHMdayp
         5sbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8u+k7Z6juBgxHXDaaYA4q87dpxpO3hoO8U7pc7yMkPQ=;
        b=TTVMe+KDRgLJdB1ucBGAscEr4J1wQPRXSZMCyQcQCh850vVIGAD4RuED8UP8j8Lctt
         c2vQzV6DfulF5L7KI/E6lkdieSXTPc+WVkvxMPYQ7Hc4eKyuqjuCdO1WhlLrf0F5oNjP
         XSvIsKM1WUQg/fO/viFqF9x0sbe5WqnUEozsgR/3M4gxtEQX/bjnsG6B/UiprgU7djlp
         mjzMQl3mmiAiF6FOKpBdLL1r9RvNXdy4bmomS9WG92dcRrBfjVL8EEBw/pFl2r+mp52n
         VIfv1Sn2BcwK/775Z6l2pcf6Ovr+kkSqy3rViGpbbx66F4m3rJow6IHcjx5pvie8w3RL
         HqfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgO80OihvxywfFly9AQ5oyvWac71u/cKzBPnIl0ABUcsZ5ow/f
	Mig8xe1mHhz7Iubw8Yof7to=
X-Google-Smtp-Source: APXvYqw5+DSE3QFi5o5oaa7FPeKf5VbJnBgsVelA5bGtRSI1ph5UVWTFfrf2cHAFnuvHeMLvt9OE0w==
X-Received: by 2002:adf:e705:: with SMTP id c5mr29919733wrm.270.1563194132410;
        Mon, 15 Jul 2019 05:35:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5144:: with SMTP id u4ls5568273wrt.4.gmail; Mon, 15 Jul
 2019 05:35:32 -0700 (PDT)
X-Received: by 2002:adf:f646:: with SMTP id x6mr30893568wrp.18.1563194131994;
        Mon, 15 Jul 2019 05:35:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563194131; cv=none;
        d=google.com; s=arc-20160816;
        b=O0jEzwktv/6vAJ/rslJjR9+PzxBO4K4CAYrZy5fNVmn2Libr8DXkokUhqcWaKdnvUp
         FQPVZpX7bfpZ5IeEhWYJWgNsfMf44xIhsxFG0NFyVALPHGoNl7tBbI0Y4wS/rgyB9LKS
         meZ1VkAKO9zrh+6dCHBvileki//AsoL1oQ3H0QMc2N/0TO2TBXzcEpiIzea77ZML7siX
         EoOlcM+8xxlraCJMVLqI2RUm1cltG5FdD6IDvQNUEVDQmEAnIvT3jEZ0wJPJkf6oZgjH
         c4kOXUO+3iFeI8blpHxoKDqm9tB1Tg5gUaFfcy+nb66kIExtasalWxmkjF8dSR+H6vZg
         fMTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Dm3w+YWzbJ3o5FACcsM9u6PjPNhcnoqMdG5UCV30RJw=;
        b=MaRW3PWSvxUc6W7f4VEanDAeuI62F2w98+L0EOK8ovoCwroz9t6ybZGdLR8h/cUIjM
         bID6iHl8nbLXkO2x0tP+/PrYZ2YnophGZJj7rYMzTaGU0cKIQwFzZL9kc0cLRBu6rn3j
         YoaHm69v64yOUSLzQWN7iNpF4B2KokXMuqJDkuhDZVpcoBzEuaB3tf9MnfvJkqYFCQEG
         ouug/sL2lFEo77CjvqZ2SezQ42eaIXr3Ki10NKgrlpQRfpnF3Mbo3dYVJZNPcDcT/dh4
         g/D7IIfC4oLSJgzAESdNp8g7ggFRiVVNxttvKhMFbAMVki5JY21rSnrg4GwKsvqKi0T5
         u4QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id f13si1139723wmc.3.2019.07.15.05.35.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 05:35:31 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mw8gc-1iclyK33WG-00s2DM; Mon, 15 Jul 2019 14:35:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Catherine Sullivan <catherine.sullivan@intel.com>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Doug Dziggel <douglas.a.dziggel@intel.com>,
	=?UTF-8?q?Patryk=20Ma=C5=82ek?= <patryk.malek@intel.com>,
	Piotr Azarewicz <piotr.azarewicz@intel.com>,
	Piotr Marczak <piotr.marczak@intel.com>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] i40e: reduce stack usage in i40e_set_fc
Date: Mon, 15 Jul 2019 14:35:07 +0200
Message-Id: <20190715123518.3510791-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:51h6XA6Bl7Ot/Uvt6DUGZkDIrFXg806s4a58fRPDph6XbOA1o/L
 WbrLnPSeHtrhEkUKGOVrm5zUllrmDXlbf9sY1i7UrNwWXggoPcaEA5UD4UGKnUoTTFo4dpm
 0TRgYhqp7cK6Ie2JTDQgnYJaHFmkPGATyMsIU6zlwwf+XYBlKpTln4rDUhPPfmMznJ5h5ld
 c4g9OyyEza1nG+nfJfpDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:w3445uxjZ9Q=:IVjWnMlU8v6q1ppXkoEDOr
 TcwYXO5MhadeyYS0gcqKDbQzsIE7gvrpPKyLCD/n7BdFt1BF/1gJJeX55JuLAZFzqLCx14P4S
 KyME68RN9pQFkXfD20FJ8UdFfcd4BHXwAXpoqEsBuZlVOzCFLmy+Vp842jwKVKFYvjBrOg/Xa
 sMlCPyZBlMEgVVO6egSgygkv1fwdKXOJARUAT8Ry1ejRBzPQbvpjuev73yHSzESmEjlYT9mwU
 qCmmawfcrTGFGKUuCrDxDe37+9KJmClLRO1TOeh8L5wsUkmid/ot2n3hArbTuyk914HUJvwbf
 +ealJyZMF57ToycZtuxBwt+KlDoEFM/i9M2yXInOiBbx5qHnUeuu9A7V9kb3SfiO2ogD83C0y
 vo+GXtQxGzVXRRRxF0+89+goT5Vl2oaMVygnBZAhr4JH5q2N40Fxn9XBNymFt3lwdP0vHVVXn
 DndWovInEB2xr7t9Pt1qu4pu/pNli0KVkzRQWIJUjuxYIuMNdTU9Su1kkmpast8RPUbQOh+75
 sXpvevqf7VFXOQX9z2cE1sJVoS8i3RMCAxTGV2Z27eoI9bVIarF8KciTm+ugaZWHCaot8JjAI
 Gdwo6uf0ZUOe6tLfIK1dQ74gjtNywzvLW2Py1tmx6TrgazEA3ZxxfPGClKihSv9qgbgODVY8J
 wfg+piibOONRRTt1OqC4aVuj/lGoUZYBWPucGB+kB06SgwL+HQDShpWn6p6BsiRxisRHw8He+
 UH2n4lg37ZTxT7uNUIe7hFtppe2/G7B+q8lCjw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
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

The functions i40e_aq_get_phy_abilities_resp() and i40e_set_fc() both
have giant structure on the stack, which makes each one use stack frames
larger than 500 bytes.

As clang decides one function into the other, we get a warning for
exceeding the frame size limit on 32-bit architectures:

drivers/net/ethernet/intel/i40e/i40e_common.c:1654:23: error: stack frame size of 1116 bytes in function 'i40e_set_fc' [-Werror,-Wframe-larger-than=]

When building with gcc, the inlining does not happen, but i40e_set_fc()
calls i40e_aq_get_phy_abilities_resp() anyway, so they add up on the
kernel stack just as much.

The parts that actually use large stacks don't overlap, so make sure
each one is a separate function, and mark them as noinline_for_stack to
prevent the compilers from combining them again.

Fixes: 0a862b43acc6 ("i40e/i40evf: Add module_types and update_link_info")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 91 +++++++++++--------
 1 file changed, 51 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 906cf68d3453..7af1b7477140 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1643,25 +1643,15 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
 	return status;
 }
 
-/**
- * i40e_set_fc
- * @hw: pointer to the hw struct
- * @aq_failures: buffer to return AdminQ failure information
- * @atomic_restart: whether to enable atomic link restart
- *
- * Set the requested flow control mode using set_phy_config.
- **/
-enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
-				  bool atomic_restart)
+static noinline_for_stack enum i40e_status_code
+i40e_set_fc_status(struct i40e_hw *hw,
+		   struct i40e_aq_get_phy_abilities_resp *abilities,
+		   bool atomic_restart)
 {
-	enum i40e_fc_mode fc_mode = hw->fc.requested_mode;
-	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_aq_set_phy_config config;
-	enum i40e_status_code status;
+	enum i40e_fc_mode fc_mode = hw->fc.requested_mode;
 	u8 pause_mask = 0x0;
 
-	*aq_failures = 0x0;
-
 	switch (fc_mode) {
 	case I40E_FC_FULL:
 		pause_mask |= I40E_AQ_PHY_FLAG_PAUSE_TX;
@@ -1677,6 +1667,48 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 		break;
 	}
 
+	memset(&config, 0, sizeof(struct i40e_aq_set_phy_config));
+	/* clear the old pause settings */
+	config.abilities = abilities->abilities & ~(I40E_AQ_PHY_FLAG_PAUSE_TX) &
+			   ~(I40E_AQ_PHY_FLAG_PAUSE_RX);
+	/* set the new abilities */
+	config.abilities |= pause_mask;
+	/* If the abilities have changed, then set the new config */
+	if (config.abilities == abilities->abilities)
+		return 0;
+
+	/* Auto restart link so settings take effect */
+	if (atomic_restart)
+		config.abilities |= I40E_AQ_PHY_ENABLE_ATOMIC_LINK;
+	/* Copy over all the old settings */
+	config.phy_type = abilities->phy_type;
+	config.phy_type_ext = abilities->phy_type_ext;
+	config.link_speed = abilities->link_speed;
+	config.eee_capability = abilities->eee_capability;
+	config.eeer = abilities->eeer_val;
+	config.low_power_ctrl = abilities->d3_lpan;
+	config.fec_config = abilities->fec_cfg_curr_mod_ext_info &
+			    I40E_AQ_PHY_FEC_CONFIG_MASK;
+
+	return i40e_aq_set_phy_config(hw, &config, NULL);
+}
+
+/**
+ * i40e_set_fc
+ * @hw: pointer to the hw struct
+ * @aq_failures: buffer to return AdminQ failure information
+ * @atomic_restart: whether to enable atomic link restart
+ *
+ * Set the requested flow control mode using set_phy_config.
+ **/
+enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
+				  bool atomic_restart)
+{
+	struct i40e_aq_get_phy_abilities_resp abilities;
+	enum i40e_status_code status;
+
+	*aq_failures = 0x0;
+
 	/* Get the current phy config */
 	status = i40e_aq_get_phy_capabilities(hw, false, false, &abilities,
 					      NULL);
@@ -1685,31 +1717,10 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 		return status;
 	}
 
-	memset(&config, 0, sizeof(struct i40e_aq_set_phy_config));
-	/* clear the old pause settings */
-	config.abilities = abilities.abilities & ~(I40E_AQ_PHY_FLAG_PAUSE_TX) &
-			   ~(I40E_AQ_PHY_FLAG_PAUSE_RX);
-	/* set the new abilities */
-	config.abilities |= pause_mask;
-	/* If the abilities have changed, then set the new config */
-	if (config.abilities != abilities.abilities) {
-		/* Auto restart link so settings take effect */
-		if (atomic_restart)
-			config.abilities |= I40E_AQ_PHY_ENABLE_ATOMIC_LINK;
-		/* Copy over all the old settings */
-		config.phy_type = abilities.phy_type;
-		config.phy_type_ext = abilities.phy_type_ext;
-		config.link_speed = abilities.link_speed;
-		config.eee_capability = abilities.eee_capability;
-		config.eeer = abilities.eeer_val;
-		config.low_power_ctrl = abilities.d3_lpan;
-		config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
-				    I40E_AQ_PHY_FEC_CONFIG_MASK;
-		status = i40e_aq_set_phy_config(hw, &config, NULL);
+	status = i40e_set_fc_status(hw, &abilities, atomic_restart);
+	if (status)
+		*aq_failures |= I40E_SET_FC_AQ_FAIL_SET;
 
-		if (status)
-			*aq_failures |= I40E_SET_FC_AQ_FAIL_SET;
-	}
 	/* Update the link info */
 	status = i40e_update_link_info(hw);
 	if (status) {
@@ -2537,7 +2548,7 @@ i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
  * i40e_updatelink_status - update status of the HW network link
  * @hw: pointer to the hw struct
  **/
-i40e_status i40e_update_link_info(struct i40e_hw *hw)
+noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	i40e_status status = 0;
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715123518.3510791-1-arnd%40arndb.de.
