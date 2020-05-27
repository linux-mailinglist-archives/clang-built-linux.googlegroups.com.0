Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUVFXD3AKGQE52PUJQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 890021E39F0
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:19 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 14sf18746747pgm.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563538; cv=pass;
        d=google.com; s=arc-20160816;
        b=WFwrKXRkjl5RhiWoQe3z/AE0xeoGGaY3oZYA9aFGJSQSh8djimhxS6xRq1QPAC+gTR
         35V4OUamhPXJeklhdJVl/qBg9ORLlntzK+JbSJ2RrUoI6l7oGj3RrDTbZLeX9+OgPvEb
         +LD+nEUT83zqhLPdJcRbKiJdelCHzXGwCNEzCchWjbMUZ7y4PcyAHb/TvT61B6xQ+mxU
         UJvJyl17IKZ1LQvk+xyDNHuQLutxsDxTfgMxXCtNCTZ/oAI15mRDKLK5lcl3pWt2RefW
         UzyV3F8etGKNPDuz4Sd8gzdla8WzBN2Age0ljtafhaenfVW3iNB6yMfpy663Tf7uDJoU
         YDeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Ktz6zSJcJwEdNgmKlhc3Vhp7Ke5rtgQdnulnA9QvwTY=;
        b=TOMVOjbk4IaiZbdVBbv9+plVC0RkoticJYrNnMEJIpF8ZzpYwnrt7+Vu4JGSo50Ay/
         mwaBE2qQas2zp6LWiM1eFoaJmRKexoVk7u5qZQtskQb5zWHXA/rjnEGQdjtQadvo9uf4
         UrySduP67A9l3BcSM8+xoGMS+0iiafN6Co+NRntxEuINnlb5tw21OQ3Lw6r7KS7e5oBa
         WbSXEij+m+rwMV8EqIgE4N5iMvEvT0AotBTahDENcDoTVDpzTpsgTzsm15xD+/wP/SYY
         1PT8nRCONoiwrHlVIDi0s5YylmOU/r0gP8zf2CJyQT9mxbt2skkEpU8xkfye/hoBF0E6
         ZPYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cJB55FZz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ktz6zSJcJwEdNgmKlhc3Vhp7Ke5rtgQdnulnA9QvwTY=;
        b=eDp8WoXiBXzyu4f/hPUbyv2EAlEPgUJqbNbWLV679RwrnUDUNz27w5ArSDQmltWDSg
         5cM18xeJRHI7AYz2Dnt/Gnogra6f3X8A55rQJ4Kl3I3w+Zgrke2mBesN6UxVvVI5Yg9H
         7o06q+5kafcikGfnR9ceuSJYNLnkjQ54zCs4aavzXEdXSBDfMPGhzXyMeVKd3ZKCagab
         Y0b1rwqd3P3aIers8rJlMn53qmrOBzDEWBzlWq+khrG6Yu92Ycj8yXX85/PkJRVwbxmh
         o1NF7Or6dpYZxnBv4dHMWKQu1C98uKUvvFr9Zy0Zt5s409aGo0L/ch1eUTTnsNmvjogL
         4ebA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ktz6zSJcJwEdNgmKlhc3Vhp7Ke5rtgQdnulnA9QvwTY=;
        b=qDfFw2x4fMWkl6/mB6Fdkcos2fO1M0lAT7sNvnjYNegALECswi0PX+CEaqT42YO2dD
         SvSkRqbiivkLVmsu1lVJMLbSqF/CLtSmQpqZVhiq8lsvi8iZevORwnytMdzqmSGbScps
         2DGTbicqC753jfDx6L2yWLslFyQCQAK0DnTj9tGvybzVpWAKEa0AE1BnCJZ2hHRAYNLp
         As1UaNPdXempoAB/7u0Hi9ltPRVj8nrc9fCfzuxnzHXPFK6roqnlx69worIwNbypmEPL
         rpsJzKJpYKD1dJBqbPl024g9YAORCugEVX1KKTEPfAnV7ZjZGVu9+AV0wP+TmvUf+5mK
         AE+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ktz6zSJcJwEdNgmKlhc3Vhp7Ke5rtgQdnulnA9QvwTY=;
        b=hSgZuwk+vCck06Si9kRUeBrVu1KlhAb9YRGAvBODiUbzc7MH2LNhA6i5qoMB405Sb9
         bTPkRA1rBZqKxvh27dTFG9J3G0D+Mfy+CICce0yA/76mPImoqdpye5Xy0sonHz5KlxUg
         wROePIAMYAywlAN0qk7BP+kXmUAyFEmAcHjWttb3+JxXqUayN4+8yw/4HCelMhoCUHN5
         38qswWANSYzcHixmIK6NsIzaiwLntc3VhHoEtSfkR1xUoOGXMDm+aYue74pPb/6Z7VP6
         8D0ogvScXrfTLmqhOILD1/Ae5J+deCVP6hiIZ8ZMP+cKr1uGxxQoy+l8CZHcS/5xdZaJ
         0sBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gStm0Zkhy0k0LznqZCHpTJBv647p/BqttfXTwxg3zkYr4fexq
	PMuhEvN3YHNbDqfiDA+SFD4=
X-Google-Smtp-Source: ABdhPJyZ28ml/MrG2rFx2iFIqJIruw/sg5zM4ZwtUicNBGg5HJRxhrcka+4prvxP2x+ubCL/sZqMdg==
X-Received: by 2002:aa7:8298:: with SMTP id s24mr2684991pfm.122.1590563538269;
        Wed, 27 May 2020 00:12:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7298:: with SMTP id d24ls5838273pll.5.gmail; Wed, 27
 May 2020 00:12:17 -0700 (PDT)
X-Received: by 2002:a17:902:bd46:: with SMTP id b6mr4783516plx.42.1590563537899;
        Wed, 27 May 2020 00:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563537; cv=none;
        d=google.com; s=arc-20160816;
        b=n2sY2oEkD8rp7Ei37mKLYmuDebMwGeBYWsV/I4xo8ZDQ1FVUnRl/BPoUzlayziN30I
         hlh4qJHePlJXeduBXxvuKJHI5JEGbMGygoG+jOBwiw29FUrgYpReEDWjrp/8bGY+aABw
         YFAV8lV6NJykt+bwH3+CcdfZn7bL15/tPOteYSSXn0x/VUnWq9P+GVg2n5y0k1dy3/88
         g5MrUyh6EqwhSA78YyZxg5pKEeeNEomlhMjL24HprD+CDh1c3fq7L96/xSkJHWXeeQZv
         XyH4yYO1NWSgtR/Ccj8t5UPUzDJKJyLCSLfxpsAZaGxDb9FQlYTpyqVlX3FXNcYgHlfT
         bssA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=o9MqodWCLjikP8AmTG/rqhpi4jiJNC1PbUROm6v1d2Y=;
        b=q/HDj7V6plIA0LUtblXlrVBAfurvSf1q0x+DIiqXCihkqYBKlOM/EAL4eAFQMgb9iI
         zt8G9pDmOxCBUWRZ4TAL9agDzpz2ymALu3VZoTNFtZ6ZAtajfNHASB9YyWpYB4p09rXJ
         XPF8npj9wihMvV3IeTv1k4i8QIhQbQhAgSqj3MbmPBTrRlUxt7FdBHXhcUgRwEwxdJt3
         u22mbRJ3Ruhm6/kTi835AKRHiotnVmg9w43CedYiE3v2t/dqKTiibmhgwSQ7+PLuatrf
         pPx3kyXekUQZ7jVdZMa0NU2xfs4jcCvRLYQFKTlUze36l2gwKLn13Rv4yM2iX7bEQbva
         A2dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cJB55FZz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q12si209618pfu.4.2020.05.27.00.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id m7so9814883plt.5
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:17 -0700 (PDT)
X-Received: by 2002:a17:902:8d8d:: with SMTP id v13mr4730527plo.67.1590563537552;
        Wed, 27 May 2020 00:12:17 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:16 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 4/7] media: atomisp: Remove unnecessary NULL checks in ia_css_pipe_load_extension
Date: Wed, 27 May 2020 00:11:47 -0700
Message-Id: <20200527071150.3381228-5-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cJB55FZz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/staging/media/atomisp/pci/sh_css.c:8537:14: warning: address
of 'pipe->output_stage' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&pipe->output_stage)
                ~~   ~~~~~~^~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/sh_css.c:8545:14: warning: address
of 'pipe->vf_stage' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&pipe->vf_stage)
                ~~   ~~~~~~^~~~~~~~

output_stage and vf_stage are pointers in the middle of a struct, their
addresses cannot be NULL if pipe is not NULL and pipe is already checked
for NULL in this function. Simplify this if block.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index d77432254a2c..b8626cdb2436 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -8533,22 +8533,9 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 	}
 
 	if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
-	{
-		if (&pipe->output_stage)
-			append_firmware(&pipe->output_stage, firmware);
-		else {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		}
-	} else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
-	{
-		if (&pipe->vf_stage)
-			append_firmware(&pipe->vf_stage, firmware);
-		else {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		}
-	}
+		append_firmware(&pipe->output_stage, firmware);
+	else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
+		append_firmware(&pipe->vf_stage, firmware);
 	err = acc_load_extension(firmware);
 
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-5-natechancellor%40gmail.com.
