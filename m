Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV5OX74AKGQECNFHFJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6211B221B66
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 06:28:09 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id b72sf713251vsd.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 21:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594873688; cv=pass;
        d=google.com; s=arc-20160816;
        b=MpHw3kOwUdIseia0Y6Kw7T8wZw91C71FvCgvkNA70uwtgOkzOm1nXdbKSq+KZqQLc6
         DxfdiECmvJJrtkkXYq+vRRRFoELVxVqEwlTbZ9knmzE7IGM7R3lynmQwz12limVabnAK
         4ROceEgdQqYnUxBTMK+tKnxuSzuOv94UoMpt+K1RMeN/rlMZqw4tNmMfxKmVqp2VNiPn
         yL0PnUcFcyVD8vetCPm/iYhb8JJe8FfooeEQtv5WtNCqdKnTJD7vCP7OsSkmodsA6FWR
         9jrwzkHjEtMaCK8bWWviruC0d/682kSmJ0tdAVrSuQcj+4F9AXprs4qidL58BtU0xcyn
         MEkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=MvtjgTnulWV9MYojP7Vv7fW2rVMZ2KeEqQBeMrJvSWs=;
        b=rBKOt+uDEJqa4LpbTC8E0pWTvG0nSBmVZieDUCgCJ0iCK3LemMcQ6Ym7viyT+SUzMl
         rl0JjeX0DlIb5/8ylv5vuE7ywrfuPD8V5OwCyvcLVLMl/HNvRzLPwlKA3KGNughSyO9T
         4kBq7isc2aiUhzYmcfH+XlsjUhbXhL1dJNu/5mnI6Io8gt0IcAZ+/POCbwHPoaL1D+0i
         FMzlEoSfDtXS/cDUTb6q0JFoWZTTHaDrTohlTNtAFFkNEYUAalJ64Nd6AJt7Cc2QjC7m
         Vtn2UQK1x+jhPPIk+jKg6M7LR7y0yF8gRMvsPAm8kmX8PaR4NJXalGkIVYW68WSFpb5V
         P7kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MttvtiJA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MvtjgTnulWV9MYojP7Vv7fW2rVMZ2KeEqQBeMrJvSWs=;
        b=lc4GOX3xES28uTAuHnHbeQDGiO+2fxVjIRI7QAbEs+t4PzflFm5QUVHcJsvFumshtz
         fE/ozp2hcmKgqA8Ym+vRuM7rBTKFJxMMcVPH9xPaXUpP4lJYiI5vhXPyV0tksvPLw2/5
         kKeZusNF/UAPfnJd4y5/3rdjmnWizHjj8P6Ix7YQTSd5ZPro09Tc7HoIKwLCOqetv0UO
         +ku5mP/CDXEXiF3sqA/gyLrMVIdY+SOTo18THxP2TyQcTWg2n7BoQL0hu/wXzuV47UCg
         33K15RMqKl1qek1wUVdqdrBgyBcN/JrqQw90LoxtETm+67K3o2t60A/ayLuyL37EHGRU
         QuFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MvtjgTnulWV9MYojP7Vv7fW2rVMZ2KeEqQBeMrJvSWs=;
        b=BO+CTPDv9nXp7VVy4xwbYBwRE+MaQ8YCZhg1ECA5wAhHTs9/Mj5G3jj8vcohAQdlzN
         RHc2EncV9lwFG4MBoyl6oqLP8E8xhoIL4v+tfpS8SLF8UhFHztSV3nV0dK5qAUW5a2ki
         Xd/JPLiVwVyVJs0dafPjW6SvZpTzRFF9e7rHz5O0Jg2DyfeMfpSb+A6AXsUM8uT8HTNp
         HYzvN3IjMxy94+t1QJzW5LeIMiNeywENlftqHgkA3VFYY01J0EfFAgEpccRS9zhqRQPr
         1hx6vGLTjSP3r+W3GeUzQSJkVdzld38pEGJywgJRB9A3YQJmf1wZ7JLsM7wjazl+XqYz
         1//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MvtjgTnulWV9MYojP7Vv7fW2rVMZ2KeEqQBeMrJvSWs=;
        b=jQ07hh/tMNqPGGDXf5vW02w6m5OK70VP1piww2cK0klk8SXP8i/ZvqdAcp3JruGRaM
         Cpkk1lXZo6Sje4ScCzH8CAjxMHCVUuv1dTSIqTzhSGBwmAnqzvFLuj6uHZv0QcCPeYHm
         zF3h6DSS1MUI4ji4ExzsJPyyvLjdWbNsy6BOi7Uk/BXBFeqtSWgL0h0vXLBoZNXYg+mT
         n7ntCVfqSp6EZ0yKbJFw2tSDRjsfbU4972inTBLMEpSqXIr6CwLh6GoPKkVVVO6geQ45
         +jhIuGHUlKS/3ryCN9FJBIVhshuyAPR6MAfLDZSbm6iwZ79YrHABQ3XM3oaA2xOoCmnO
         8tUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YEt3ilxaaH6/n06Kq62t/Fo419sjZBtmUYxuqHQ+lrQGUf18g
	139Ya37sFohO7N12c8fofYs=
X-Google-Smtp-Source: ABdhPJwMeEjgM1ebksCq8dBPUKGvoPgPF5O5CycvaKz0tClfGgcAjc7+2xm8NFnTP7UfnxZsAlR5Ig==
X-Received: by 2002:a1f:26c6:: with SMTP id m189mr1813569vkm.94.1594873688041;
        Wed, 15 Jul 2020 21:28:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3354:: with SMTP id h20ls324693uap.10.gmail; Wed, 15 Jul
 2020 21:28:07 -0700 (PDT)
X-Received: by 2002:ab0:498e:: with SMTP id e14mr2083703uad.38.1594873687636;
        Wed, 15 Jul 2020 21:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594873687; cv=none;
        d=google.com; s=arc-20160816;
        b=npcXp5eAMoxdn/m6BjqnhuHfbBCrf5astF0rZ5LczQvQ0jc2D4yBUYEZag2MJRA4S7
         U8RK0yAOqZSiYAnaPTBdkz7qxTR7ZjsiGA5Ab+cFD0WvyoyNCCtzxdZrQgtEvdiwqzr6
         X+mwuffOYc5IWBHi42o1U9nN9QSC+2qt9AsF/q2R9dc8jyBKE8wGK7T6NEFBNWZ2J30f
         xwTYTcI7NFtFDlRj1yjyx4NfG+xemGSxXM67vMOJ/UaHJvqloTdKRJ6bH9/n6it8UN31
         en22WBpIT8pORFVgG3+kaCcgFchsZSSkwghPD1uGtoL4yIMu3BzaMjFjPyqUrjEri0vg
         unQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=M/DmHETZOAY7H70Ux+TlQEI0fnuJDUnsXDXca6tT46g=;
        b=IBWhf/hRdI4WnmWbdAyw5naHwXCI1BJ1b+BzxBu9dH2W/tdTLPfQ2mp6gU+rKyI+52
         tQ6yJr46ypWySdpHDuoOIL4nFjKrwiKaA+rDH2qyadf+2r72riS2Y4gtU0YUzr/BoxCr
         19smO0j6WLO/aYHTGvs7baK7pnzoV2b2sBPEPR3nUGwNktaCvEXURBgHDr23ZFjciHGb
         EkgISulcyTY0pKOV/K9hnfrD8nGpVyYzKC1BifB273uA+YqjwCaoeOFOXOl+bBQxgxA8
         UXzoCFor/2D2RIoPg06f8icpLKhDfBEPHUScOIQEDQI6bjt3aY00T34gPMVyk8413Ft5
         EAkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MttvtiJA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id s7si212192vsm.0.2020.07.15.21.28.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 21:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id c30so4344656qka.10
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 21:28:07 -0700 (PDT)
X-Received: by 2002:a37:9b08:: with SMTP id d8mr2291995qke.105.1594873687122;
        Wed, 15 Jul 2020 21:28:07 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 79sm5466778qkd.134.2020.07.15.21.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 21:28:06 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
	Matt Roper <matthew.d.roper@intel.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state
Date: Wed, 15 Jul 2020 21:27:42 -0700
Message-Id: <20200716042742.123169-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MttvtiJA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

drivers/gpu/drm/i915/display/intel_combo_phy.c:268:3: warning: variable
'ret' is uninitialized when used here [-Wuninitialized]
                ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
                ^~~
drivers/gpu/drm/i915/display/intel_combo_phy.c:261:10: note: initialize
the variable 'ret' to silence this warning
        bool ret;
                ^
                 = 0
1 warning generated.

In practice, the bug this warning appears to be concerned with would not
actually matter because ret gets initialized to the return value of
cnl_verify_procmon_ref_values. However, that does appear to be a bug
since it means the first hunk of the patch this fixes won't actually do
anything (since the values of check_phy_reg won't factor into the final
ret value). Initialize ret to true then make all of the assignments a
bitwise AND with itself so that the function always does what it should
do.

Fixes: 239bef676d8e ("drm/i915/display: Implement new combo phy initialization step")
Link: https://github.com/ClangBuiltLinux/linux/issues/1094
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index eccaa79cb4a9..a4b8aa6d0a9e 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -258,7 +258,7 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
-	bool ret;
+	bool ret = true;
 	u32 expected_val = 0;
 
 	if (!icl_combo_phy_enabled(dev_priv, phy))
@@ -276,7 +276,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				     DCC_MODE_SELECT_CONTINUOSLY);
 	}
 
-	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
+	ret &= cnl_verify_procmon_ref_values(dev_priv, phy);
 
 	if (phy_is_master(dev_priv, phy)) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),

base-commit: ca0e494af5edb59002665bf12871e94b4163a257
-- 
2.28.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200716042742.123169-1-natechancellor%40gmail.com.
