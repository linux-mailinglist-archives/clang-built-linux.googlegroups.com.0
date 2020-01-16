Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGNSQLYQKGQEMKGATOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C9513E4C6
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:10:51 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id g16sf9035225plo.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:10:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194649; cv=pass;
        d=google.com; s=arc-20160816;
        b=jU9dA8CW4hhjbqSbIb4uOCpUKlEJT58cmjWsbabxYxPqY2qYjR8WrQ3LgWCF/nNdX8
         LAf3rpx13zoM37Dn2HyFsWAYJiixoO7Qtml98oNsNFWLpZHWDEO/EFfD7xnIyp4aVebz
         XRR1XqYdsKIsaZmW8mOgkL4xxkM/ueHX9WHwleC+XR0eu+/kcuu49nKcTnto7S4jCG3P
         tPuWEz/I2V8JC8AGNIogOAvRJ3cKqwo2hSVQsOMChsum0CSmSDm7gq++XDStxn3uIQPe
         MyzHloaF/faMNCu9HOLpbf+xDMp/33qhKWpNS9VU4VcE5g9fruvsS5SVDuWHJUhNFuT6
         y9EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=niaNqp8j0R5ZbOm50BDas/SjES2D0oVornjZeYg2Xzg=;
        b=jyyPG2ZwXBRoMPYN5n6wdiOjd0ZWCiQZVyBQO+ubkWC2oNkZO+kzw4dzrWxd3xYGJP
         ARkus01G5PFNElRp7xj1MAJuLnJH5SLxX/Qowomn2z46smoRYobVQV2n8DJSofcrSqww
         Hx+Gg9IBeyoR85zeu+oUxsQb+qRujgrArafSrqPG61gJcf9PgNde/FPvwXlcSErYVUQ4
         okDhX1vhXBqt07yexL2wK0nEZ+ybWimdXoFNcOidtIi7Iqyl7O4WCfHWbFtnr11gWaXz
         oAM8Ydu9vHPy6Qp6D72TqKCzyu0xLGDTYZNCALmWjhCmbphiJr21tOz+WEeqyOGrsZ8C
         QXBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BZl+O7vX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=niaNqp8j0R5ZbOm50BDas/SjES2D0oVornjZeYg2Xzg=;
        b=m0rtAwAVEv5vuKNUtc8zLE49qzdXxZ/iwHhljSRc8OiE3CNWCunQq0Uieyyqw9bb9V
         o/MoQlxAFNLu2apFnlLrQpQ6JeEzKXhrH6qhe1309Lxf5z3DyeWhWBFkGLj/gLi5Z8FW
         viC6nY5XAxdecuuqNgjPz38ahwklJLWQZ1n5rID+IXg/Vu+PPbnKRlF7tY7wB7PWuZ1k
         +FPwg6TAXwWoq2vfJRq/K9RZ8c2cQf7cccqfK82Nj74aiMyILSJZXzagQOh1NNFIZIhM
         auvtuyvy+y4cOyS7Jng87fTTsAHUkTvkX8NvEvFym3vCe7r3W/4ZvrTrzVJWdow2piDh
         e1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=niaNqp8j0R5ZbOm50BDas/SjES2D0oVornjZeYg2Xzg=;
        b=oe5wPqtlhKuCKyimmjcsLfn5kAjMnkxQoOV8vM8MxtF9IJOSL9GJJwlmkLbU2ob6cN
         g9rcphn85pbOh8/5A1bKrNdd6Aj4dMWmMA6B9BgPsICVDC/517Lih7GhTFlyn7BfO7L/
         ho/d97a0HENe6pSSjHfIFDmZJhF54y+k1/vzC4Zn7jqey9xXkNyyEmnuF+QHNjF+BkG9
         BJBp7+DYl8wskXaTSfLa9D5XkEtBZNB5Nck4/D6tdfCo4L7/TibKXsZ40fKQQXZ9gqYs
         txoedN73LOr8s1FZTlOP4CdQZHSSPuMDezxsoA8YXq8ahmBz4yEBxwOjzUNbuo37I7wc
         GxWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwg9E2Nq/AAhihZArZyoEKMziU4Iq3SsOWMiFNQHOgfHPu5Lsr
	6u158utGtTpyP+xdVA2nXHs=
X-Google-Smtp-Source: APXvYqzJVH6M9qT1B8AMwMcqWoP7WgKmCJ1ELB8fb1huI38WjD/4MZcoDEbxShT169qqhMWUZOx8Lg==
X-Received: by 2002:aa7:91c1:: with SMTP id z1mr39737421pfa.182.1579194649729;
        Thu, 16 Jan 2020 09:10:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3421:: with SMTP id o30ls1033769pjb.1.canary-gmail;
 Thu, 16 Jan 2020 09:10:49 -0800 (PST)
X-Received: by 2002:a17:90b:8ce:: with SMTP id ds14mr51919pjb.57.1579194649338;
        Thu, 16 Jan 2020 09:10:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194649; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/FM7cErMnTSVMXcelFPysbymCKtW08eN7nV75WpULUf3T+L06idRwU82Fm5i8bKW1
         dvcnuPSCr24oxp14Ci/fflJvHTcn2J5I7X4iZfiLPE0/e8PlYdCOK0Qhafo4l1ePV7lt
         Oqr0FquxnAALrFkVKmXcgjab/1hU1Xnn78ua+vazdBUfUB3dM3ndHbjBE+ejEijCW2jm
         ebZ+Hr/XVfPX5DJ1QEexkN/fFKKtgjXj6HDIgr/Iu07f35b5PxEO5ARRVoxWZA7WnsXh
         VdS4iu8om7FZYPB9eDWI/24UlyieNZcZUqUT9wpc3hFM378+anUYNsrOuY+hD5pjF1pE
         UkpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=v5oWODXwFq0JMSODFR1UUIR1P9YFcegsaWfnl15u91s=;
        b=DT66pGPoNSPIHPOAMplCI4+OQvoEs/zeIXB5AaPgjXDTGbdO9LprbhHIsKOZLegFfY
         p9y1JWzpUsYF21h1m9LbOOYEfwHpahnf2IlR+nEHyauVFRr8cDThmEGnjzR3GuWYka2L
         9tPHONddfAjDuCchwC2uhKYjQh+i+GtK0OrjAgRvx5cAHdQ2LJrY+OsyHE7us96oloO0
         a+f5UQpgXFb5pTb26HnMe5Duu0wJakEx09gophV63tEhG50JrLqNNDKk/9kR9XfvrDeN
         /Iz2J4ut3aG5F8Mq78C4y5B8WSxe4zUeWR/czICKw/SWj2KeGCyfoDn8ik0sOBOzsMWp
         9lvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BZl+O7vX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t34si366761pjb.3.2020.01.16.09.10.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:10:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CA08124685;
	Thu, 16 Jan 2020 17:10:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Bowers <andrewx.bowers@intel.com>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 504/671] i40e: reduce stack usage in i40e_set_fc
Date: Thu, 16 Jan 2020 12:02:22 -0500
Message-Id: <20200116170509.12787-241-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BZl+O7vX;       spf=pass
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

[ Upstream commit 33b165684ab70867d4545643f550a5d48d3ddc57 ]

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
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 91 +++++++++++--------
 1 file changed, 51 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 85f75b5978fc..eb0ae6ab01e2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1668,25 +1668,15 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
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
@@ -1702,6 +1692,48 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
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
@@ -1710,31 +1742,10 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
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
@@ -2563,7 +2574,7 @@ i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
  * i40e_updatelink_status - update status of the HW network link
  * @hw: pointer to the hw struct
  **/
-i40e_status i40e_update_link_info(struct i40e_hw *hw)
+noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	i40e_status status = 0;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-241-sashal%40kernel.org.
