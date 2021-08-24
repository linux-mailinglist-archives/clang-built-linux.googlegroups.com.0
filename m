Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSFXSWEQMGQETDIX4LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5FA3F6AA7
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 22:51:21 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id y9-20020a655b09000000b0025259fdb7e7sf12813844pgq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 13:51:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629838280; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4SQ+yEShxuJgyLT8IXqMIU0096NS2kHEKh7ydxSRE5mtM1s39zLW7qvfRgCW1dLX7
         J7AqFjYYS7Ntxs1UqYFRrjDWw4OxRHIToQOELsWSBfSWVYB5t4V+MTwo1jd7Wf2O+5Lf
         AA/M9dkbu/+pTQ93ypqUhBgiiFvRvK6VxOBp+4YDl4A0Pu01NT3f+mn8PMrOERlK7Q0G
         OLrqxzLPXKpXXpb5Zv/HRImMyAGISEwYEitiiCDDeP8Wf1PIbGfmKAivZPBW9JqPGmg3
         afJ6a4gx3LFAc2ZfdFXDzqpjKcKdYkyGS8ZVF4gZJ+zmI1obaipcb8K+5JSEhd0eZj39
         LQxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GXNTUvRVkyxLhgs05kU4xTojiTpDRNJ/wrQzvclhtLk=;
        b=z9vem1Vp4kNemoBqmx+UbbKo8T/YG3RGEqYe46CZ1uQoF9Yhp7kP12bKJPzVminv97
         9q7yXBRDejtRwFGXhVQohXTM3A01dXHWQWpbouiQo5Q/tcjzfDSCC5+u0C4UIBEMJIHI
         5Sn6OKPr5LzWaH5Xj4Q1tcPQ37si+CFeTBPAnYqtbaLSeyQ/AT1QdfvQ27lgl4IVfjjl
         ofv5tmC5u+uxmjHDvETEmTqoiQwrPUOEOuNIoBCmAeR+dw0O6K+rTt+tRHqgRMrR643B
         K30nNvbjtKQu9bIkEIgYS3GfsdwJJk2noRuEv6VJgyZHAoRfDgtN6y6gRsPw8Du6Su19
         0Seg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CB5fwzQA;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GXNTUvRVkyxLhgs05kU4xTojiTpDRNJ/wrQzvclhtLk=;
        b=KqBlKy13LQOoEXj8W821jPgdkCQbuIqimQqPY9pQFGdEkh3T59QkKB7ogklvnlHeNX
         ZX6p8UYATOb1GqAqx/XKh+OncGYey6siwpTAwltK/MinlBMqxASZoHkxEnB+UymEff55
         8gnb5bgjTdAy4z3j9n5F95CfIZ6BJ+liPF/Wnpp16FhwMxx5VMP2UTCtQe7FCZAM1f/5
         oxFsVuWmiAgrZAqJO1bS8QZjFkWTtG86EyzLBoRtTARfSJVAHw9aY5ggwI8xnb/RT6U8
         Fe9siKL8AykAi7LgUJjH1U5FohgRDdzApULeCx/Q4WUpIDyI89qpDKTMMyrbpoOhcPry
         Xw1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GXNTUvRVkyxLhgs05kU4xTojiTpDRNJ/wrQzvclhtLk=;
        b=cwqY6u84OX8f+N5g1P7Lfd6tDCWBXleh4GipRUaaBjKhH0mxFzvM5O7RVimdpXs5T9
         usOz+3IvHGUFjsbVdr13aZtmqfDM/cQdPRjAMlqWXVVgw7dGBi1QtWwoyRMDUApO3D2a
         9kXJs1ctJMuCZ0ZQQv8XCu7RBVefO6+O4B8uOtQEqK5VWoTmyS+OYIBFH1/llQXWF/5Z
         uYHFUkYc0V9XrueKD+ZWL1JjKo+U52vhGiJ5ygtitmcnsab8QbHgiWK1C6Yic75VBdwX
         Kn7qINIf+uCr/eGtH9qu4ZG9wbGlpRn2mm2uuJw1UisP9D1NJMI/e4nGkN9XvEn0/P9/
         lWuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TPudaLRbYUB8v7tGf9wpUqEJ33Ml2TRPocpNRM4BlIqRaXW2y
	ZeGvrUFSshMB/AyCUyAa4Lc=
X-Google-Smtp-Source: ABdhPJyIKTaHdZlh6GAr2K+w3g1qNqbtUu17OWTb8Ubgx1fPt2SUoRgY+e78ekakVV9Cszxj1K+FMQ==
X-Received: by 2002:a17:902:8694:b0:12d:c7de:591a with SMTP id g20-20020a170902869400b0012dc7de591amr34851882plo.20.1629838280191;
        Tue, 24 Aug 2021 13:51:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls1937012pjh.1.gmail; Tue, 24
 Aug 2021 13:51:19 -0700 (PDT)
X-Received: by 2002:a17:90a:5d16:: with SMTP id s22mr6582149pji.69.1629838279659;
        Tue, 24 Aug 2021 13:51:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629838279; cv=none;
        d=google.com; s=arc-20160816;
        b=ZIHZWRWcGGu2NBZ/SZ4nhoXkol7tvja56nmMtSf4kCcJ0pqsC3VWnKvBYEFcCa9io5
         Ojrf2pLlNS49FKtHI7BKZOV+Vp6UhoHkwsqatsw4j4o/kA1ZvNuvkhqcf8+8iJw6ydu+
         JofRs1q7DocEkHNGfdIO3f7wCzQZsw92GYE4EZth0+PwOsvql5tpbKz5ie/htmCbLEcg
         wI1nRMqvcKN2Ci5B36J7ealY26gKEJxXZvmzKvzdEpqFYo82/YbgTzvckVaq8a+ZG+d2
         TFY5ESf0hX7esIl3/UImdPEwoLbKA47zmwvrx5qjeVUAtuTZewID6gvlH2tCNtrf8hDz
         9WCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gmIPIb4WOv+W6ONgVA5Ahb9AFhdKDtVFddEFSKH8Oik=;
        b=RR7EIE5Bw4/QGNnB4lxn8hWUasJ7RWGDTfttfSlADDHPp41ybsCUriMPwDTWBPUElB
         wtY5zr7nSsUCe1MNCNW/ziLlXzyLpFeMO+h7wbsq9u4ALfo1Tq/aDBbJIqTVL/mfKoHj
         JX/z/j66GbdedzUftvS8oDxbB7a/hUI70ZwS6Pu5V/59qjlXl5vjdNi1jrYsJ+AlVo0o
         7ZzHy+E2D8rYXTqdIamrgpJluNW/HSrYQ+rSxKiPE64+F8pMhAMuZEYhJEgcVvN56QK8
         DZqg2LA6HMHxhqJWxQqUnwdB9i+umjFfDk4ji49/7yRAgSi+iPcAy+ZfLNry1T8f7ZbK
         vftA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CB5fwzQA;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si347467pji.0.2021.08.24.13.51.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 13:51:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C5AB0611C9;
	Tue, 24 Aug 2021 20:51:17 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Raju Rangoju <rajur@chelsio.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] cxgb4: Properly revert VPD changes
Date: Tue, 24 Aug 2021 13:51:04 -0700
Message-Id: <20210824205104.2778110-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CB5fwzQA;       spf=pass
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

Clang warns:

drivers/net/ethernet/chelsio/cxgb4/t4_hw.c:2785:2: error: variable 'kw_offset' is uninitialized when used here [-Werror,-Wuninitialized]
        FIND_VPD_KW(i, "RV");
        ^~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/t4_hw.c:2776:39: note: expanded from macro 'FIND_VPD_KW'
        var = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, name); \
                                             ^~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/t4_hw.c:2748:34: note: initialize the variable 'kw_offset' to silence this warning
        unsigned int vpdr_len, kw_offset, id_len;
                                        ^
                                         = 0
drivers/net/ethernet/chelsio/cxgb4/t4_hw.c:2785:2: error: variable 'vpdr_len' is uninitialized when used here [-Werror,-Wuninitialized]
        FIND_VPD_KW(i, "RV");
        ^~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/t4_hw.c:2776:50: note: expanded from macro 'FIND_VPD_KW'
        var = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, name); \
                                                        ^~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/t4_hw.c:2748:23: note: initialize the variable 'vpdr_len' to silence this warning
        unsigned int vpdr_len, kw_offset, id_len;
                             ^
                              = 0
2 errors generated.

The series "PCI/VPD: Convert more users to the new VPD API functions"
was applied to net-next when it should have been applied to the PCI tree
because of build errors. However, commit 82e34c8a9bdf ("Revert "Revert
"cxgb4: Search VPD with pci_vpd_find_ro_info_keyword()""") reapplied a
change, resulting in the warning above.

Properly revert commit 8d63ee602da3 ("cxgb4: Search VPD with
pci_vpd_find_ro_info_keyword()") to fix the warning and restore proper
functionality. This also reverts commit 3a93bedea050 ("cxgb4: Remove
unused vpd_param member ec") to avoid future merge conflicts, as that
change has been applied to the PCI tree.

Link: https://lore.kernel.org/r/20210823120929.7c6f7a4f@canb.auug.org.au/
Link: https://lore.kernel.org/r/1ca29408-7bc7-4da5-59c7-87893c9e0442@gmail.com/
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4.h |  2 +
 drivers/net/ethernet/chelsio/cxgb4/t4_hw.c | 44 +++++++++++++++++++---
 2 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4.h b/drivers/net/ethernet/chelsio/cxgb4/cxgb4.h
index ecea3cdd30b3..9058f09f921e 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4.h
@@ -84,6 +84,7 @@ extern struct mutex uld_mutex;
 enum {
 	MAX_NPORTS	= 4,     /* max # of ports */
 	SERNUM_LEN	= 24,    /* Serial # length */
+	EC_LEN		= 16,    /* E/C length */
 	ID_LEN		= 16,    /* ID length */
 	PN_LEN		= 16,    /* Part Number length */
 	MACADDR_LEN	= 12,    /* MAC Address length */
@@ -390,6 +391,7 @@ struct tp_params {
 
 struct vpd_params {
 	unsigned int cclk;
+	u8 ec[EC_LEN + 1];
 	u8 sn[SERNUM_LEN + 1];
 	u8 id[ID_LEN + 1];
 	u8 pn[PN_LEN + 1];
diff --git a/drivers/net/ethernet/chelsio/cxgb4/t4_hw.c b/drivers/net/ethernet/chelsio/cxgb4/t4_hw.c
index 70bb057320e4..6606fb8b3e42 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/t4_hw.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/t4_hw.c
@@ -2744,6 +2744,7 @@ int t4_seeprom_wp(struct adapter *adapter, bool enable)
 int t4_get_raw_vpd_params(struct adapter *adapter, struct vpd_params *p)
 {
 	int i, ret = 0, addr;
+	int ec, sn, pn, na;
 	u8 *vpd, csum, base_val = 0;
 	unsigned int vpdr_len, kw_offset, id_len;
 
@@ -2771,6 +2772,23 @@ int t4_get_raw_vpd_params(struct adapter *adapter, struct vpd_params *p)
 	}
 
 	id_len = pci_vpd_lrdt_size(vpd);
+	if (id_len > ID_LEN)
+		id_len = ID_LEN;
+
+	i = pci_vpd_find_tag(vpd, VPD_LEN, PCI_VPD_LRDT_RO_DATA);
+	if (i < 0) {
+		dev_err(adapter->pdev_dev, "missing VPD-R section\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	vpdr_len = pci_vpd_lrdt_size(&vpd[i]);
+	kw_offset = i + PCI_VPD_LRDT_TAG_SIZE;
+	if (vpdr_len + kw_offset > VPD_LEN) {
+		dev_err(adapter->pdev_dev, "bad VPD-R length %u\n", vpdr_len);
+		ret = -EINVAL;
+		goto out;
+	}
 
 #define FIND_VPD_KW(var, name) do { \
 	var = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, name); \
@@ -2793,14 +2811,28 @@ int t4_get_raw_vpd_params(struct adapter *adapter, struct vpd_params *p)
 		goto out;
 	}
 
+	FIND_VPD_KW(ec, "EC");
+	FIND_VPD_KW(sn, "SN");
+	FIND_VPD_KW(pn, "PN");
+	FIND_VPD_KW(na, "NA");
+#undef FIND_VPD_KW
+
+	memcpy(p->id, vpd + PCI_VPD_LRDT_TAG_SIZE, id_len);
+	strim(p->id);
+	memcpy(p->ec, vpd + ec, EC_LEN);
+	strim(p->ec);
+	i = pci_vpd_info_field_size(vpd + sn - PCI_VPD_INFO_FLD_HDR_SIZE);
+	memcpy(p->sn, vpd + sn, min(i, SERNUM_LEN));
+	strim(p->sn);
+	i = pci_vpd_info_field_size(vpd + pn - PCI_VPD_INFO_FLD_HDR_SIZE);
+	memcpy(p->pn, vpd + pn, min(i, PN_LEN));
+	strim(p->pn);
+	memcpy(p->na, vpd + na, min(i, MACADDR_LEN));
+	strim((char *)p->na);
+
 out:
 	vfree(vpd);
-	if (ret < 0) {
-		dev_err(adapter->pdev_dev, "error reading VPD\n");
-		return ret;
-	}
-
-	return 0;
+	return ret < 0 ? ret : 0;
 }
 
 /**

base-commit: 3a62c333497b164868fdcd241842a1dd4e331825
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824205104.2778110-1-nathan%40kernel.org.
