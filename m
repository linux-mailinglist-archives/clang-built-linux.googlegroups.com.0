Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB44727UQKGQEFNWTDXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FD9702F4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 17:02:11 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id p16sf8675981wmi.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 08:02:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563807731; cv=pass;
        d=google.com; s=arc-20160816;
        b=S+Zw5BLxUPVfMNgQUaYOuQvNjankECv/9s2ooJM8Npyn3uDSJAEyMafdJX3Z3nuC+j
         TGs0bf9Lo7BalRAjw2AWSMqeO9n5S0Zjve2eHWiBJd1vjfven7CiGE4puk9AfG3miI8z
         xjrIjb1v9miU9xKCko3s0dIUbF0LqM4rEkKrai/rduRRiZZwyDyNGa4ms5uddaFwjmpS
         KofKns+dZXO/xWeN9lk9ft957GnbrfuN+NC6DpgFreroO59oC1tyWy2kCd2MaSwhhhND
         kyX8XLg8IofZVTuwc/DRblImR/IRSebsUw8Lucvh9KQXgxDbvath+cKRZMlBJ3xewNxM
         ZQfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=F+OECeIu46S86NpZYi0rGCNJ/Hba+r/djNzMTEPL1pw=;
        b=ymWKZmAGNwrtnZ23d3ET0/r/8oonVFyr7ki/MkFJyjPVxngnfsWL5Nb7sFfd0aRreG
         gwOk7Uq8G/XOn0wA3jHS+R0Ry/QLVNWVd8C61y+XZGrAY9VRwwvbE33oQbgxWdZwyQB0
         Gkf/8SPtKQ8dxa3ldPE0/fFixrjDNRvfKpbZkM7nUSYzBE7oUeMouSoyPNUDi9lWPNAH
         pI5mvvRxGuK3kp2iWmxV3HytpBaQ77iUWWaxyMzqwIeFxhLyIitWC0JHiunCZ5i6qUg2
         upYeDOrzGCwr2gmvJ+nh95+jCAlNOc1omp2oWK0ENA2ZCP1d/ldflzyqG2Kv++9Dbf8t
         wi8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F+OECeIu46S86NpZYi0rGCNJ/Hba+r/djNzMTEPL1pw=;
        b=QEtgoUcXdeANj3O8FyKFqzTYl+XEuLrgoJ9DmiKLBGXOBzd/pBbNKPc9EyYHTgolD8
         pnwueBsaaU8JF2LXQ1TqfBrWe/mHmvIS21cEDn0AXUo9wHKJwnzee4ZFwAJNWNVHu3yI
         09Y+hyPgH2liXlxM09+HiB3J1FLrK5CtJaXz8Y6oyEGtO6fSJ2NnSSGg5+TvU72uMgX3
         HrFgFfGOO2UR6ZNqEpQqYOkUesl9Egc/f0ePI6wmkcA9tB+5E4BJn1jQPXFOGeJnbUG0
         iPMFIyjmMp5GFzI0h7eCxz14XT3jVHmBtxTguHKAGyGl+7grMCduCCRMZOh0beoXxY1D
         TG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F+OECeIu46S86NpZYi0rGCNJ/Hba+r/djNzMTEPL1pw=;
        b=IcWzgrWq0jDzWLn2AO3j/ldlkGjO6+J7a3q3vF6eOw8vKAOujJ83nAvN7YlfRPiIbW
         VIBji3Zr/a5IV8qCg3vmk6KoH8WnonpeB0a7NlSdib9Ugy3L9W8Cl59em7a5L799tOD6
         1pR1DvMs3UHDAYfjbk/L/uCiGrjwRAe+tzb/wu14LtH+DUHRWPqu/AZetKjaDF7u4GcB
         EBFxMJtulPjtnSMEIWe1V4JM/vLbA4XsT+gW46PouR9KSHQCF6UAFKXXYqgRQ0tWx40T
         7jQFVB8sh5PxgVC6V6kxumA5elCgb/PPSo2xDn/qFIqbGumFFslYTWuim4Hv7BfJjxFG
         E+uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYwd/dlYZpW3QF8nEofxqdMA+5LvD5ljvuhilrI3a7deYuv9/v
	jLBpZ3/cBhCuwm9D64bvqsQ=
X-Google-Smtp-Source: APXvYqzknmK61lWq2iRs7v0BBJQ2Xu+IsPV08DpbO7iAEC4HO0gjeqQc3B6gp6z7y9wa6adrnJM5RA==
X-Received: by 2002:adf:8364:: with SMTP id 91mr74944582wrd.13.1563807731147;
        Mon, 22 Jul 2019 08:02:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:bac4:: with SMTP id w4ls11852330wrg.13.gmail; Mon, 22
 Jul 2019 08:02:10 -0700 (PDT)
X-Received: by 2002:adf:f046:: with SMTP id t6mr79808353wro.307.1563807730550;
        Mon, 22 Jul 2019 08:02:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563807730; cv=none;
        d=google.com; s=arc-20160816;
        b=pxeZeF92RRgYRI2aIKISlRUvQHgDTiMiI6XY+fST3580WwvupQlvoVESsRJpGmGEmd
         b14UNdfIcTs3NW3Z3n9ENGzYLJsje4+lxf19OVxLH7T/TruHwxV12Z/jeQMYb2vajFZo
         QV7NBzkFXY3amWWjvSir5tX9JyS2qBws3WVrtwfJlpQSs4idE7O55B20A13gGz3gxWDx
         JxERm6ZfCNIJCa+1N0KfU0vhWOV336fbg0cHckbcSOwb/2aVYwTIUssFvGbsTOhmGc7o
         K+SEJ3MiEDDYSTBfoMVuaDA2Y5aMOYDUhRfCB/dRh3JWkcyObvZ3nPCd1gES8S8e9lql
         57Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=hXKqFaSVsAX7LAASe2aDwlWtu24Eu/mJX1ec4JEW48E=;
        b=ynK1ZwpIzGrqXA1e2UPzNsOQH0FcsxHicHltEE0j2YlJTDaYMNE5PsBkzaglEyiCOC
         9v61ktj7VEL2sVtLGt1NfHTf/L6t7+/ZLQ9IQqnF7Xo5lkSksY8tsxqsa6sLmSR07oZj
         HqIDaBD0YNKr59TpAMU0SLU8+d5sf39vsJZwST0Tr1rw6xIdnmrAZDBG6Z7g/vQgatv+
         R5g6etbDg1ZvEjmWm7HIh7mSO5nJ0RfgHBoemrsliN/yQZ53avSbyqyd491oYyYn232D
         CHBwHt5Z5Z2sJdRFDFxasUWduZqPi9OKGTnr7W4RLk6RIl4N0wrMpoZdVThFVsSEVS52
         x8vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id b15si1327909wmg.1.2019.07.22.08.02.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 08:02:10 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N62mG-1iVD5437Oa-016OS8; Mon, 22 Jul 2019 17:02:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tariq Toukan <tariqt@mellanox.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Erez Alfasi <ereza@mellanox.com>,
	Jack Morgenstein <jackm@dev.mellanox.co.il>,
	Eli Cohen <eli@mellanox.co.il>,
	Moshe Shemesh <moshe@mellanox.com>,
	Jiri Pirko <jiri@mellanox.com>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next] [net-next] mlx4: avoid large stack usage in mlx4_init_hca()
Date: Mon, 22 Jul 2019 17:01:55 +0200
Message-Id: <20190722150204.1157315-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:6RlucjjmypJnt310jjgPEHPw68PZk7JE9z3FBrybaR+ep+3Cv2d
 TBKM7TP/YWkndjanU7YKLhR2TifdwV0foLbZ5UlTUO+hGYkMRh+C93ObXysjdI7QxSFPI2F
 pBJrTNZ7/Gm0SQFN5C4zfqhGJPUwg3M/RMwcAzAxb+UmuOcoA/EYDqk03djOZqCCEVHSmpX
 GFmCeJX+SdJ6/lH09y44g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QNMfdsxYVMU=:W+Eq/wKucjnDuLN9OlFSmC
 Cr6G9LVL6ma0mHIDCeKMSLOmtyhEJvZ0TLZ5vNuRgB/KwlCwWcxqNqEIGD1qgUSEv5xwWBD7Q
 kHRZmP3nZ/1zHDI2rHudA88kOuwoIJ6oGMsvhQf2mNZV4kimzFVvhGYhWyNVLL6hVGlduO/0b
 CFBl3ptJbN1h1ya5W3sLhi5O4Hhss0c5KUg/tETZRsET9SOCb54epamEHnIQT+Z7O2OdcN/Lb
 vbXZwqMLV7z8Z01+9Y17FSHs5fVr28upA4miQF+m7ccD+SQ3nIoX5DHusi1KyHsYL3Rvyk8ic
 gJSOppGWRwYjA96l3myhSAmRLhoUCjTY+vMzlA1yPtnYXwFJNiRmZxs0JXf8CmtVtM6vl0OjE
 g7vHpW/rfGWiayZXD9/YWIPgsr2Wtl72OrAtHrAGqeTctQIGYVlVSo/VB4hmzqjpPqoA/zyD+
 W4GdznEkaIYju5TeydC+hoDMzE277BoGkBZhKv08N3P/FN7VgfQFRQL8IX8fMQlRh92pC/C24
 QHhOx2uJFSvNLaLT1qBUlPs8xA3J9PideNF9lVbtCqqx+VAfzetGgirzxuEVcF+IQ6E3x2k5/
 C3AbsZT3jHSdFWLITSwbUO93WZbMtWhjUxKO4tPMtNqi1U2nbruv9l2azJDUA80xwGVMMqZ20
 mzfJDMvJd8UBG22Wp/htbIEzdtML913YzLPaOQVYk1F+A93zmLU1d/E35GI9xgZpriP1Tcfd6
 tQPwnb95MmkRSje2xZwCoujHY5E8Zem2gNcKOw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
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

The mlx4_dev_cap and mlx4_init_hca_param are really too large
to be put on the kernel stack, as shown by this clang warning:

drivers/net/ethernet/mellanox/mlx4/main.c:3304:12: error: stack frame size of 1088 bytes in function 'mlx4_load_one' [-Werror,-Wframe-larger-than=]

With gcc, the problem is the same, but it does not warn because
it does not inline this function, and therefore stays just below
the warning limit, while clang is just above it.

Use kzalloc for dynamic allocation instead of putting them
on stack. This gets the combined stack frame down to 424 bytes.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/mellanox/mlx4/main.c | 66 +++++++++++++----------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
index 1f6e16d5ea6b..07c204bd3fc4 100644
--- a/drivers/net/ethernet/mellanox/mlx4/main.c
+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
@@ -2292,23 +2292,31 @@ static int mlx4_init_fw(struct mlx4_dev *dev)
 static int mlx4_init_hca(struct mlx4_dev *dev)
 {
 	struct mlx4_priv	  *priv = mlx4_priv(dev);
+	struct mlx4_init_hca_param *init_hca = NULL;
+	struct mlx4_dev_cap	  *dev_cap = NULL;
 	struct mlx4_adapter	   adapter;
-	struct mlx4_dev_cap	   dev_cap;
 	struct mlx4_profile	   profile;
-	struct mlx4_init_hca_param init_hca;
 	u64 icm_size;
 	struct mlx4_config_dev_params params;
 	int err;
 
 	if (!mlx4_is_slave(dev)) {
-		err = mlx4_dev_cap(dev, &dev_cap);
+		dev_cap = kzalloc(sizeof(*dev_cap), GFP_KERNEL);
+		init_hca = kzalloc(sizeof(*init_hca), GFP_KERNEL);
+
+		if (!dev_cap || !init_hca) {
+			err = -ENOMEM;
+			goto out_free;
+		}
+
+		err = mlx4_dev_cap(dev, dev_cap);
 		if (err) {
 			mlx4_err(dev, "QUERY_DEV_CAP command failed, aborting\n");
-			return err;
+			goto out_free;
 		}
 
-		choose_steering_mode(dev, &dev_cap);
-		choose_tunnel_offload_mode(dev, &dev_cap);
+		choose_steering_mode(dev, dev_cap);
+		choose_tunnel_offload_mode(dev, dev_cap);
 
 		if (dev->caps.dmfs_high_steer_mode == MLX4_STEERING_DMFS_A0_STATIC &&
 		    mlx4_is_master(dev))
@@ -2331,48 +2339,48 @@ static int mlx4_init_hca(struct mlx4_dev *dev)
 		    MLX4_STEERING_MODE_DEVICE_MANAGED)
 			profile.num_mcg = MLX4_FS_NUM_MCG;
 
-		icm_size = mlx4_make_profile(dev, &profile, &dev_cap,
-					     &init_hca);
+		icm_size = mlx4_make_profile(dev, &profile, dev_cap,
+					     init_hca);
 		if ((long long) icm_size < 0) {
 			err = icm_size;
-			return err;
+			goto out_free;
 		}
 
 		dev->caps.max_fmr_maps = (1 << (32 - ilog2(dev->caps.num_mpts))) - 1;
 
 		if (enable_4k_uar || !dev->persist->num_vfs) {
-			init_hca.log_uar_sz = ilog2(dev->caps.num_uars) +
+			init_hca->log_uar_sz = ilog2(dev->caps.num_uars) +
 						    PAGE_SHIFT - DEFAULT_UAR_PAGE_SHIFT;
-			init_hca.uar_page_sz = DEFAULT_UAR_PAGE_SHIFT - 12;
+			init_hca->uar_page_sz = DEFAULT_UAR_PAGE_SHIFT - 12;
 		} else {
-			init_hca.log_uar_sz = ilog2(dev->caps.num_uars);
-			init_hca.uar_page_sz = PAGE_SHIFT - 12;
+			init_hca->log_uar_sz = ilog2(dev->caps.num_uars);
+			init_hca->uar_page_sz = PAGE_SHIFT - 12;
 		}
 
-		init_hca.mw_enabled = 0;
+		init_hca->mw_enabled = 0;
 		if (dev->caps.flags & MLX4_DEV_CAP_FLAG_MEM_WINDOW ||
 		    dev->caps.bmme_flags & MLX4_BMME_FLAG_TYPE_2_WIN)
-			init_hca.mw_enabled = INIT_HCA_TPT_MW_ENABLE;
+			init_hca->mw_enabled = INIT_HCA_TPT_MW_ENABLE;
 
-		err = mlx4_init_icm(dev, &dev_cap, &init_hca, icm_size);
+		err = mlx4_init_icm(dev, dev_cap, init_hca, icm_size);
 		if (err)
-			return err;
+			goto out_free;
 
-		err = mlx4_INIT_HCA(dev, &init_hca);
+		err = mlx4_INIT_HCA(dev, init_hca);
 		if (err) {
 			mlx4_err(dev, "INIT_HCA command failed, aborting\n");
 			goto err_free_icm;
 		}
 
-		if (dev_cap.flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) {
-			err = mlx4_query_func(dev, &dev_cap);
+		if (dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) {
+			err = mlx4_query_func(dev, dev_cap);
 			if (err < 0) {
 				mlx4_err(dev, "QUERY_FUNC command failed, aborting.\n");
 				goto err_close;
 			} else if (err & MLX4_QUERY_FUNC_NUM_SYS_EQS) {
-				dev->caps.num_eqs = dev_cap.max_eqs;
-				dev->caps.reserved_eqs = dev_cap.reserved_eqs;
-				dev->caps.reserved_uars = dev_cap.reserved_uars;
+				dev->caps.num_eqs = dev_cap->max_eqs;
+				dev->caps.reserved_eqs = dev_cap->reserved_eqs;
+				dev->caps.reserved_uars = dev_cap->reserved_uars;
 			}
 		}
 
@@ -2381,14 +2389,13 @@ static int mlx4_init_hca(struct mlx4_dev *dev)
 		 * read HCA frequency by QUERY_HCA command
 		 */
 		if (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS) {
-			memset(&init_hca, 0, sizeof(init_hca));
-			err = mlx4_QUERY_HCA(dev, &init_hca);
+			err = mlx4_QUERY_HCA(dev, init_hca);
 			if (err) {
 				mlx4_err(dev, "QUERY_HCA command failed, disable timestamp\n");
 				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
 			} else {
 				dev->caps.hca_core_clock =
-					init_hca.hca_core_clock;
+					init_hca->hca_core_clock;
 			}
 
 			/* In case we got HCA frequency 0 - disable timestamping
@@ -2464,7 +2471,8 @@ static int mlx4_init_hca(struct mlx4_dev *dev)
 	priv->eq_table.inta_pin = adapter.inta_pin;
 	memcpy(dev->board_id, adapter.board_id, sizeof(dev->board_id));
 
-	return 0;
+	err = 0;
+	goto out_free;
 
 unmap_bf:
 	unmap_internal_clock(dev);
@@ -2483,6 +2491,10 @@ static int mlx4_init_hca(struct mlx4_dev *dev)
 	if (!mlx4_is_slave(dev))
 		mlx4_free_icms(dev);
 
+out_free:
+	kfree(dev_cap);
+	kfree(init_hca);
+
 	return err;
 }
 
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722150204.1157315-1-arnd%40arndb.de.
