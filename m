Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBHUE5XYQKGQETNJHIKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B46B7153B02
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 23:30:54 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id l1sf2266452wrt.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 14:30:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580941854; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZf+i9muNdOPLOCB0uvvaexJW1LdFDfAHQLAGgnluEF1uyDwJg10Phukc8vXwpaAk/
         HQQQzuiLIP8qovUkPNnNOK654nP+BFRPTFhAChwoG8yHR+heqMxJ/wxu7bB1WTPhgErG
         hoRMmWMlHTVajjpgo15alJnHB3ndMlXA0/DRPacMHyIVZDMrYK4uHFfYTetSsKU9YSMd
         SiH9bNq3mRGt5XmF9TQyojuNnaDDwGQ/3E1clKFob4pPWrjTEYuFbhvegI4LmYgJ3VdJ
         OmMvF6lLWV+k7lE61fn4qRXgJbRZqMVQufVFYoknDXR97Ne0A7ceFTrThcCG+D2agVwE
         RE6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=7vFXzvW008TLwg5g/DFDUe662y3jd3dwcUFE6vxZ/xc=;
        b=SYoHaV/erR8wdmXAy7o/z75edz7goq0Iq+kR1tdATNNGrr2mVqNgS6InOXdYoKtI/F
         fL15kVPzswca12I2OvYXYvJKj1tXJfmvPho9IfjWWN1l2LWGhG79nCCb9mtxuHLKFDmb
         yLXbtwO9qPi2pO9SW9UIzbVRxn5M7whBYBl4O0qZ6HzB8In8eGvZZhggipXHGhPWAI0w
         VYIARKiX7fuQL7ZMZFNvtXt3lyxZVtNlXPJ6bgcIZxYeG99xvzezFTkr6Sja6+cBytGD
         WDCsdZ7ChaDPtHKBxEgSmuT1xd+vxBzFL+aS9iV0zUqpbTn1cbOzgqmb+cbOrvNzhLCM
         Nl5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=AWS1XuQc;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vFXzvW008TLwg5g/DFDUe662y3jd3dwcUFE6vxZ/xc=;
        b=h+zaatj9oqYo0AOuyXvDUhTMvqBcvo1dhkTXti7k4samBsSU5CN9jOQnS5zTfgZ29o
         04g6Esh85/EVG7ere1+pMmvYrEHlggiTNIkGdPgx6IOs2UBHjkZV2C4awotXL2VDHGa1
         7KeifAIe6q+hkv3a3YyM1Qhp781laHG7XM2JFkwp11RIdVGbpm4xaqPJpKW9OF/q8K7s
         ooR6I7qbXBNJDuYi1EOMHU0i0UkED0RYosCG+VhzJIi4Prj0kT/4FIXDMKhly0Yi+g5M
         7yMspfW3mz0DLwEaB5nqcskehD3yJ/Mi2f0lVPvyaiju/jJXofZYKxCJaV8p6/LJvLRf
         SORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7vFXzvW008TLwg5g/DFDUe662y3jd3dwcUFE6vxZ/xc=;
        b=toBWWoaiIAvIwcuL5Q1NOKQNlx3jJ6gSkmZM4/WBr7AV+XdVDCdoVmRXUdPnO1smjv
         ip0vB99+tBZzjQTX/DpPQ/VsYrW63z8QwLaznYXoJEUjlv3AIlF7xw4fXXXnlwKZXAPL
         HcbbzytQrazjrxTw/KOW3NLYr/sLdJYZN0k155xyQBigbQf6lWQI8etcUxzS08I2uAiy
         pYNrkLIu1VIlnD0xg7Yn6PrpjElMbt3V12fKThs2RnsMc4E220pe7AMZkWU653YHNAOu
         fiuTCTnSGzkYJdXDog3ViaxeyGFIt3s3DSGdZDWjpVVXEAZlFBs7amAXe3lv53i9EUa/
         UI3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXznyhqAV518cADRopcnzc26bLNnSdddWuxBj0gqp9VW0T4uglq
	K3VFyOfAFtBm5PQNNrGYTlI=
X-Google-Smtp-Source: APXvYqxAMR1/wBpTOWL563S5cr0w7D3/wg0hMolm+Z2VdLlMj0QasJwZcrjoVaWb5d7gQdUyGlslRQ==
X-Received: by 2002:a5d:45c4:: with SMTP id b4mr86728wrs.303.1580941854479;
        Wed, 05 Feb 2020 14:30:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ea84:: with SMTP id s4ls2308204wrm.11.gmail; Wed, 05 Feb
 2020 14:30:54 -0800 (PST)
X-Received: by 2002:adf:ffc5:: with SMTP id x5mr143397wrs.92.1580941853989;
        Wed, 05 Feb 2020 14:30:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580941853; cv=none;
        d=google.com; s=arc-20160816;
        b=Ky5Qdt4xmUbscNcZrkN61HrfprbB5J5erKTuTLsqsnFWn5lfjp16tf66mHgKqquSae
         TggvnjMnW0BWB+Ujazl/JA0KmH6fGaKolK0DwGMPQXhO2jd4+5ByeEjV7xMhmw0B1iyX
         wYzKBRo6Lu36DEYgGPWnLfeJTd2487mRTF5MMC6jdr5PFRaGzhxBQK8sxDHCpUcVN6Ec
         VGTZuKah83l0vTW5Xxs95QOt1cK0Dpv6T2eRxC6xCx4WX+p3RfrKnq/dYkrwDms0/qiS
         YAkYq8XCDIrEpHb7CpHG7GBvbfwiVs2HpszYeMO6RRekAgwYwRF33C6cHak3c1qtt5+U
         uMpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8j/wLPVNelocFC7g7KIME69AY5HWX79CB2Mc0G7rnng=;
        b=vDLXyPCDvNcDbmxBcg+ojvPg8R8OlPPyFF8ZkXGpcL7JeILL8cxS2UZTGoXuMGhKtl
         0Kv7ZWDZi4CxwfXpbKtDXmoFE6Go/ASt3J8CMWK98Z9jg5aXnx5qBTfsjZfUu5fUjJk/
         9g0WyriznmJsmvDtXXDCAxjr/K73IxsFz0s5z69i4OEVicAT+A5vCOL/9UKYX+UetGgB
         TLBH1YJ51BQYN46F8IG8v5S6gm9UCowUGHyljQHElpf6fGWuQfj8sSrlAiLl3wm/+DT2
         juQQQV5tAClch44NE/rpGGZNutTRrj9/TvM1rS64Rus8XcWqCwBcFc27Xt3d3hgBeNd1
         1RiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=AWS1XuQc;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id t131si45535wmb.1.2020.02.05.14.30.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 14:30:53 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 2D3E25C4363;
	Wed,  5 Feb 2020 23:30:53 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	sean@poorly.run,
	airlied@linux.ie,
	daniel.vetter@ffwll.ch
Cc: airlied@redhat.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] drm: Add missing newline after comment
Date: Wed,  5 Feb 2020 23:26:00 +0100
Message-Id: <586aab08af596120f48858005bb6784c83035d59.1580941448.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=AWS1XuQc;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Clang prints a warning:
drivers/gpu/drm/drm_lock.c:363:6: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
         */     mutex_lock(&dev->struct_mutex);
                ^
drivers/gpu/drm/drm_lock.c:357:2: note: previous statement is here
        if (!drm_core_check_feature(dev, DRIVER_LEGACY))
        ^

Fix this by adding a newline after the multi-line comment.

Fixes: 058ca50ce3f1 ("drm/legacy: move lock cleanup for master into lock file (v2)")
Link: https://github.com/ClangBuiltLinux/linux/issues/855
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 drivers/gpu/drm/drm_lock.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_lock.c b/drivers/gpu/drm/drm_lock.c
index 2e8ce99d0baa..2c79e8199e3c 100644
--- a/drivers/gpu/drm/drm_lock.c
+++ b/drivers/gpu/drm/drm_lock.c
@@ -360,7 +360,8 @@ void drm_legacy_lock_master_cleanup(struct drm_device *dev, struct drm_master *m
 	/*
 	 * Since the master is disappearing, so is the
 	 * possibility to lock.
-	 */	mutex_lock(&dev->struct_mutex);
+	 */
+	mutex_lock(&dev->struct_mutex);
 	if (master->lock.hw_lock) {
 		if (dev->sigdata.lock == master->lock.hw_lock)
 			dev->sigdata.lock = NULL;
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/586aab08af596120f48858005bb6784c83035d59.1580941448.git.stefan%40agner.ch.
