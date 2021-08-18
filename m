Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQWK6KEAMGQEAGJC36A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 938C23EFB9E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:27 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id u5-20020a63d3450000b029023a5f6e6f9bsf821192pgi.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267266; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZzAU8hLsN7VHJH9RSP+z/Mg9pCGlhpv2kTa99ElxCahmg7trxyltb6KOgoTNnC0G9s
         fF4kl8uV0m6FlJ4AvPN9v2qi9EVCJF0d6apFF0FaQYsJopjt3mlOX9CkZ3c8zWeN/zR+
         DeDCMS2daFsMHx708GAJlxfUqtpY93QGPGrDxPl7oomXx/GqmayFAjV5VAo3hAnEGZR6
         xz3Pju7CnguRI5SeSE1mjKgNx977XObo8gxxxP0NrRusypYkVvNuRaQCM3Q1L1hBkjcQ
         rnJKEYWvNKW8oitiLBbks1YSmcC7eme9B5sN1VESV4fxjTiQxfyha4Cw/aEJbyHzq5Jq
         HHjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hIW7dgmxSOKNL6F4mHhwV2gTCCtwsizAnNZxVaGvIe0=;
        b=ntEh5zYrIr/YZwVDmRMp6ZkhclytwEVSJoHebq1aezVlJGi7GrEdFBj9hpDzIK9Vs9
         +dXtbSzKk4Kmaa+ljPwPA5NbCwn+rcawcoHVIID2NccOATapx7q1wIHE934oG9ODk0It
         IzxgBywFjS1g2kX/wXCmFwaOGMKy5Dm3FyjDamjdL958PgehHt2ZqxJ4C4eoGgs239QR
         /iAK5DsXVE644Nu6mAvj9/oUfPvZDGDP8gef3x5giV81ufhUW9MEdrNsDJbML6ZU0ZWB
         qcpcVFCcSgbDFcnhwQSh16HWsk8wE8mmmDe0n5Pu6tVeMmpjoDIqplRRT8ifq5LBTPZe
         +mRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="X+6d81/M";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIW7dgmxSOKNL6F4mHhwV2gTCCtwsizAnNZxVaGvIe0=;
        b=UWOY0q8MwGD+6vfxbL5obGz67CWvotBd7cg25gSHmG/vlevwwZCvJni9Zjvb/HDlNa
         aaloOEm6Ll/xNhm8vGVgkeTJZnkIpSjUCT+d5uph49gyJtt5vq+gxf91sVM+0JZ5gex3
         W3NAeMGiccpTelfC61GzBDiTe3TME8hthD88LhG6sDdz5rfY3bd8JNIgwmEIYQmD/kus
         HBLtiUcdZq3yIrf+ypGY2dSv2MaZMgCGmrX9DHAsEQx2j7r/CI1/iwU5fhR+u8n1mlak
         GY4lY0MUF3+DWKEfYLgQAFBZy2/ohp7isDDxarmafm0CSK2kPh4Lj2rIbsxjvt6WW4ST
         9Qgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIW7dgmxSOKNL6F4mHhwV2gTCCtwsizAnNZxVaGvIe0=;
        b=jptZ8VlVBckgPYWi7CzygK6WJ7bbA5dLSl4t16YBQW5FlQBr9AAwS/PP0plMCpYl9q
         rzFlpgMOs+jePbXYOW7xLQD2VYfI7UtIcbJjeNjE+nsnGIC/BV4rJI4Gmk8YMyuhCBwN
         3vVQo2kVpvM/+MVl4GH845QgCsFqs29ONkrmJh/3A5cSs1pyG8n/n/xhdARvQEnsJUaD
         HiisOpbKQM5rSHUh08tik+cXyOLPaf+yFVW9RYruc3iDQLG9StW5LumuMC+29HLRSD+X
         Tr01SzMfJLVtJskviBp+fSUtVurpMrGprmdQlf7Ev36nQFTWyHIdugiiA9UhmK8wEZtN
         Lf5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lDOg99gzQHKW1Lnc5Jy/MafknJav8bO+1Vd4Lz1SZn+wXJtu6
	Afi9tRMx+qrH2D4fjldlLfI=
X-Google-Smtp-Source: ABdhPJzuhHj9+RjBdXvMIQ8fWDI4QtsOLBXa7gHq5DKb/3tujyeUoW4Kt3LGGRD98NgcFxI7dEoTzQ==
X-Received: by 2002:a63:1056:: with SMTP id 22mr7315402pgq.178.1629267266248;
        Tue, 17 Aug 2021 23:14:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b12:: with SMTP id lx18ls766262pjb.3.gmail; Tue, 17
 Aug 2021 23:14:25 -0700 (PDT)
X-Received: by 2002:a17:902:b48b:b029:12c:59b:dc44 with SMTP id y11-20020a170902b48bb029012c059bdc44mr5910077plr.47.1629267265731;
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267265; cv=none;
        d=google.com; s=arc-20160816;
        b=GeMFRYk/hz61qcFWBVRHoqkFl+KkwL6aoaO3qkLZosU1JernOGJ5ihaL+0tqE5N0Dx
         kIGIs2aHNwSnPfk/5TkzFAIFTDMwOG3EE70IKLTMj4nNziRSIkfyvxVU91q9nOLFcmxx
         jqNLVyGMoMx0aBXzbMjjCAU0FednPSbC3Gaa7Osj0rPxF0mMcAT6C7nk2qRxQb4x3efO
         oGmFzOf3wbfPuBdKNXdqcoEE8KdxqHWNOOi5990MlnC6BvbXSfQMJ2hSDhtFGJHA7ILV
         RKPH8ZOPttkZZSIsN/bYBbJozseBtJlWdBD0jaKTHZ1Tz6oZvrdVPnKTHGXeZEajdtPP
         Mpsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Hcl1ccbFJs4ud/H3xoT9ZSR2o1n+o5k4Vuh9ApRTkZE=;
        b=bI4nMafQM4XAuyqSGPT5gL16FPHcYzcPO2/CGGVO2s34TbdByYaBRGvgvqtIOJiR2L
         GHMssvbJUYBFAdMiQt5YGGewgrQcgsb51/6wS8jZKIuITn1XR2hvMQVCu7jCLhi7KUpy
         qQGDJBdram0qG4xAlDtpelPNvgkVmk5HqD54eZXXtmtnxY829upOKnkUjIhyyg9vMmpx
         IwUGonTT3Igyz4+GZinS/SkYYYqhPx9Z31cedL7h267pyiIs5wEisJXFEbwagcnFEGrV
         Vf9nVN3/0jdIMPLUc4MzvD+vCRw4LtyJFXMHEw1sKpTwChV2ijFtRsWNMNIeFXVhmOTI
         wYuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="X+6d81/M";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id r7si305734pjp.0.2021.08.17.23.14.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so8184483pjn.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
X-Received: by 2002:a17:90b:2313:: with SMTP id mt19mr7827471pjb.230.1629267265564;
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j23sm3858038pjn.12.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Leon Romanovsky <leon@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	linux-rdma@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 56/63] RDMA/mlx5: Use struct_group() to zero struct mlx5_ib_mr
Date: Tue, 17 Aug 2021 23:05:26 -0700
Message-Id: <20210818060533.3569517-57-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1421; h=from:subject; bh=VDjxwOfX2cjaEibL8dkCGTlxM9AleppD3q/+715fBPc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMq8O5UKAKpb/rvp5Y2SurRHZONXPPy2R7JrBHQ 07WmcZaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKgAKCRCJcvTf3G3AJqH3D/ 4gNGySY8SCnjrDzEUM7CyrdchqF//a5m2rqxinozby7V9IS5+ycLOFfGvEx1AbtsgpvkKu6IjRZUA5 U67OxhqHOeDoB2W0JrzMD4ZiEf7aeNYRL/FcCw1nfsLjyJUn/7TFORuKQzen2TzINw05zF7xASgg/i xaqv+EuCKtewRoiXcWah1s7jrT1+hp4WtAkQzn/+YaIOVXblb9eHzxMGHhaGDiVNUWryg50fZiOvzo syChMqPaE84IoJx1X3nrdGMbSgJMU0FmsGXcNzY1ouOxqnAlCdt78oxn0N/v+Iddyi/oJlPfrrkCFW zTE3FtjwfhE243hFenyrDn/NEq85myRaQoC3GPPw9uiO1gSwK5OxTciBWBWEY9hT8f55X/K1hRf7Dx z/+mVftkYQIBCPASioBF7UrH+t8vHnUbHcJrYUXmmKNFE8Ki+9oeB0OLJaSo/Yw6PdoabOW4EplCRJ oGAyyzxgxgNTQUYlJOMczrc1z9W3IFlWitdqcPrmsHApkLxRvze0yN1bBp2+BP8kp5Sul0WwUPwAOF gCblqx3UOeJuqqaMUUha9/HfetNzO8oyaLg80znWlEWSXZcMWHgubHnQLVPMv7nqUCEbhdDoN09B46 k0l6F+LB0Ns/6YfKNGhM3NCkF2iuaqgxu0NW66r4tv309D5se4J8ucLMUhmQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="X+6d81/M";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct mlx5_ib_mr that should be
initialized to zero.

Cc: Leon Romanovsky <leon@kernel.org>
Cc: Doug Ledford <dledford@redhat.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-rdma@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/infiniband/hw/mlx5/mlx5_ib.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
index bf20a388eabe..f63bf204a7a1 100644
--- a/drivers/infiniband/hw/mlx5/mlx5_ib.h
+++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
@@ -644,6 +644,7 @@ struct mlx5_ib_mr {
 	struct ib_umem *umem;
 
 	/* This is zero'd when the MR is allocated */
+	struct_group(cleared,
 	union {
 		/* Used only while the MR is in the cache */
 		struct {
@@ -691,12 +692,13 @@ struct mlx5_ib_mr {
 			bool is_odp_implicit;
 		};
 	};
+	);
 };
 
 /* Zero the fields in the mr that are variant depending on usage */
 static inline void mlx5_clear_mr(struct mlx5_ib_mr *mr)
 {
-	memset(mr->out, 0, sizeof(*mr) - offsetof(struct mlx5_ib_mr, out));
+	memset(&mr->cleared, 0, sizeof(mr->cleared));
 }
 
 static inline bool is_odp_mr(struct mlx5_ib_mr *mr)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-57-keescook%40chromium.org.
