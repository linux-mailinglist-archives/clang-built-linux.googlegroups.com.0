Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNWK6KEAMGQE5TYEJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E80AB3EFB86
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:15 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id o3-20020a625a030000b02903c9ba4d8a70sf708540pfb.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267254; cv=pass;
        d=google.com; s=arc-20160816;
        b=BScRt2pckSGhO/jlB6FFwIpmTpuOuSvdxCwVvRv1xRAIuMb+r31QacEh1cupMgIQp3
         NYUM3hiVxXcjUYb0GqaTzmq5fub++neTqAq13VH4elGEhGEOSKuwV9HME4oPSbtNe9CB
         bDChwsuAXK2RUkR8is6Z5HN1vXcEKbf7bMvx2Agxfw1W9dVq6teKpNlQ55nmILTa4B3b
         Ek0zUPiaW8EmDRxzCiOfrcvY/6NL+C3zh6V2u0B5lZqOj5WtGb7fS23poxZ77UUTWQtF
         f3bX4AZhuGegbwwlRfUG1H81e4uvEAfY0QJUwbpPQvHeHS/crzbUkmBQRgw6rGd21lvl
         BsHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Yiv+TJNL6nB3iUXMIUAaQBbj1su1aMJ4geMXWW2Il0E=;
        b=KwURmp3nF4d9TkeD/LkaJ+oTIWChyfXTiwqFBu4wjBEXbG+VqGgxfBfPjfMblIixKC
         S9xJEZBZibGb3ufLWp1ptyvGdw8V5zhNty4t+xVRzj2PoMwMldmBF33PX/dc+I0eelh7
         4B4VE6FkhYZLKlCJo1c0L7tkUUNEXlUBWeSS6icS92g+EgU5k3cAcb0UU9R7IzByRHB7
         xAaMRJD3RK1pYOPU9mfVHSIwiixxh0mwe4Az6/HLZ0yMkK/glJZiXKzcPUdC2gxFvyxi
         OlXVnve6f/5DetQnkJHQmLT3va2ELbmOjo+8gGlbQoNuUF8y4fsxe6qhztrsJjsJUvZd
         04jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=N1IWhHeI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yiv+TJNL6nB3iUXMIUAaQBbj1su1aMJ4geMXWW2Il0E=;
        b=lgwCiPP1XjN2d2529RGy3d8FZRB7SW073Mp1w2Cudn+jU6LiM8LVh42kQddabKGRb4
         5leFOErVC1BSvWTTrYljxilXnTB6xP7xSm397hnnIJVnWqX81NuDGV6Ux+li9z+EabJ9
         sJ8e/33+XkfVe822c5qHnYk4RWpSun8qOGTnouSRGDWsFu5FayRObv1lFwCjO08pVyA+
         GMKpxNdO3HCX//kbompZ7aHIEQfoo4GOpUmtvqtk0Iwa3bsRnHLJAq7Fwvl/ScRT/Ft7
         666O/5qrae0w5vJ7TkBuI72xbj65Aelbq+gZXa9NGnGvi2er6ixdzUO8iSOPLMh+CnLv
         m+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yiv+TJNL6nB3iUXMIUAaQBbj1su1aMJ4geMXWW2Il0E=;
        b=lUDGdS68zpetQr4jMmr6mry5il6SRoQH5pXCAUa6YgtpWEJDC+vmHIHxvABV4xS/YF
         LlrdvReWTSHGmgcYxWjkK/UMWBwOi1ctzlUQcsDwMyj7cthrxE6Pu8H2gl4r8Flj2Ik0
         K0kyvRDMvyTRaZUSVwKkpzZ+yJRq8iyBi3hgRLYlP6DXKLJV6UB4G4gw4p5gRZnipc3Z
         3OgD7+XlkmiD6yld09AVH7tPLXGEB/QWHU+N4jBqAUDZYc93QH+K4A69uBqk+X1M/5bM
         XnwhMkeOqJk0j1pjuUFkGjcmlDeA3OY9qUXe0GjcyHvBEbjB2sUsY6Y60JMPUynL+94O
         mqlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DJyfvZmGf6WUx300Fk8GIJNwGVVw2kYIKl0fH2RodmhKnpRNg
	QD0vYHZlLEuvfETNLsY+RYQ=
X-Google-Smtp-Source: ABdhPJwfJSPfVwzgjgHYFccXzFUtqy9YmgUmp+d64tIrgcYaAThyLPyBoqpCPTLFbbFDuH7M3Kd05A==
X-Received: by 2002:a05:6a00:26ca:b0:3e1:acd9:bb96 with SMTP id p10-20020a056a0026ca00b003e1acd9bb96mr7464104pfw.35.1629267254677;
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls674969plj.2.gmail; Tue, 17
 Aug 2021 23:14:14 -0700 (PDT)
X-Received: by 2002:a17:90a:f195:: with SMTP id bv21mr7692450pjb.218.1629267254083;
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267254; cv=none;
        d=google.com; s=arc-20160816;
        b=GjrVTBA7mCWGMZQIozoW3f92azHAMy1HGs84DpvOw9ao0dD0COG6BM6CTH8fa5IHnN
         XWotIYMBkA9ZVBXLzxlYRqS+qcUxp5d0ZwM7LA3DgHdDYrBy2D8V1ZLrioW3e262dRd+
         82tutZZknNJWzJ9guF93lv9UiepFg65OXMRi+cMOM2HB28iFfsJmwdubyLG4nL5O50I7
         5x6GCcUutJOSV8/JbvX+KaozqEirSH5GNGiGAs59lsbFP+aC05q3GEM4FRENXPP5JO+I
         /T6FoB6eSTLSe1YQseCASw4xL7Nlzcjw/ziTkVsZ7MezV06tOvgTZsNPn5lJe3zF6870
         0Z0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2xy8/Tts2Q0pCjtb48qnJm2SajC5SEAfbYkA07Au0YI=;
        b=niElX48JHA1BniFq3ZRTdLyUJG9mSCzFi41MZEFl1i7IADS/eETREbIxnFE38KoAcL
         c0805tIvM0hDeO1OMnvsnduO3BYpdDHjTongmsUT4335L8EJer36lEBkR96sTNeRiMZb
         6nQ20nEgbTrY3gm6jGLbWKg6tkxppkDVqI6L28G7bjPZCbNK0MbO+cq+sPty2Fb3aqDB
         4faYddb2hwqxIrRgUz+E7VZJi7M2JccSUdHxjc10GxmTAzwY3vH6441C9KpF0DvX14nP
         JEJTq3wB7rNlenCKi7JQ2AwW4MPH1YgB3suxJOEG3MkeAPZApcuYT3Wj+i4Wu8dURmGb
         FOBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=N1IWhHeI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id r7si305734pjp.0.2021.08.17.23.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so8184483pjn.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
X-Received: by 2002:a17:903:41c2:b0:12d:a7aa:40a8 with SMTP id u2-20020a17090341c200b0012da7aa40a8mr6069996ple.61.1629267253835;
        Tue, 17 Aug 2021 23:14:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p29sm4918970pfw.141.2021.08.17.23.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Ariel Elior <aelior@marvell.com>,
	Sudarsana Kalluru <skalluru@marvell.com>,
	GR-everest-linux-l2@marvell.com,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 17/63] bnx2x: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:47 -0700
Message-Id: <20210818060533.3569517-18-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3830; h=from:subject; bh=GkN0LVVLNQH/53cAo4VYkKN66rn+11NBIFFE2ztC6YM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMhRw9LfaYvUc+sf+L0uY8MlzrAk1ef7MCxvB9t k6OtDqOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIQAKCRCJcvTf3G3AJifDD/ 9c0n+kvuNRhg8rqC3IlmdQj3GSvDZWsG+FKvThaAwsrcm5zgUTbPwQ6iL1wr4Jk3ViFO6PKwpuQs+W kYs8Ff8+E5QKNzTFYv9f3U+QrUgXZuliPkgx2C9OIEVvt2UEnDYPUhUqHBMLx0BXSCvr7kVoiYR8b2 iu457PTEfCQPJdDfKt78EEPnPsrqkubZweDgt/Gq/PsCcnEku9oGBRvz1KKVnO8QWy9TYdunjBP41s 792+Xj9Zh+GH4ISZfO3dP/vihbtHZcRxlUtqy2yT76MawS9BzD6PInHIpTeYQxnPOICMfQPusrHTT7 ndnKvr9GSg7peInc8FmZqYcs6y4mjJE/eklW07D6UJI9TtDjmKiqTTBOdNU43zM6qWjHal537hZmIe 9zFtdGwmUuRUgeltJDGJ4yXIugnOVn6G6DSwMAlT/S3hVGlxpguq6rEv6/0IWLa23jWt9JpGwJ1Jjj o+t/SbwzCJ0ClfKocBAik/2Za+ZKR9dJgOeM/G8xa98QQfHOvYYuIP//mv1JYcM1fvVbNymKySQfVs 8/HAgbbCc54arSAMkCFxkUT/fPiS/v1RbgtjVl9VmyC/p3ATw++a51ydTf5AAZxt2GMj+TS/xSz84B SiFL9TGxlTtdNqLwvPbVXHgt96CGuJjKFxAMufc9C7Zx6iAgBZyMu4MpCY0w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=N1IWhHeI;       spf=pass
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct nig_stats around members egress_mac_pkt0_lo,
egress_mac_pkt0_hi, egress_mac_pkt1_lo, and egress_mac_pkt1_hi (and the
respective members in struct bnx2x_eth_stats), so they can be referenced
together. This will allow memcpy() and sizeof() to more easily reason
about sizes, improve readability, and avoid future warnings about writing
beyond the end of struct bnx2x_eth_stats's rx_stat_ifhcinbadoctets_hi.

"pahole" shows no size nor member offset changes to either struct.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Additionally adds BUILD_BUG_ON() to compare the separate struct group
sizes.

Cc: Ariel Elior <aelior@marvell.com>
Cc: Sudarsana Kalluru <skalluru@marvell.com>
Cc: GR-everest-linux-l2@marvell.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c |  7 ++++---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h | 14 ++++++++++----
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c
index 0b193edb73b8..2bb133ae61c3 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c
@@ -849,7 +849,8 @@ static int bnx2x_hw_stats_update(struct bnx2x *bp)
 
 	memcpy(old, new, sizeof(struct nig_stats));
 
-	memcpy(&(estats->rx_stat_ifhcinbadoctets_hi), &(pstats->mac_stx[1]),
+	BUILD_BUG_ON(sizeof(estats->shared) != sizeof(pstats->mac_stx[1]));
+	memcpy(&(estats->shared), &(pstats->mac_stx[1]),
 	       sizeof(struct mac_stx));
 	estats->brb_drop_hi = pstats->brb_drop_hi;
 	estats->brb_drop_lo = pstats->brb_drop_lo;
@@ -1634,9 +1635,9 @@ void bnx2x_stats_init(struct bnx2x *bp)
 			REG_RD(bp, NIG_REG_STAT0_BRB_TRUNCATE + port*0x38);
 	if (!CHIP_IS_E3(bp)) {
 		REG_RD_DMAE(bp, NIG_REG_STAT0_EGRESS_MAC_PKT0 + port*0x50,
-			    &(bp->port.old_nig_stats.egress_mac_pkt0_lo), 2);
+			    &(bp->port.old_nig_stats.egress_mac_pkt0), 2);
 		REG_RD_DMAE(bp, NIG_REG_STAT0_EGRESS_MAC_PKT1 + port*0x50,
-			    &(bp->port.old_nig_stats.egress_mac_pkt1_lo), 2);
+			    &(bp->port.old_nig_stats.egress_mac_pkt1), 2);
 	}
 
 	/* Prepare statistics ramrod data */
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h
index d55e63692cf3..ae93c078707b 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h
@@ -36,10 +36,14 @@ struct nig_stats {
 	u32 pbf_octets;
 	u32 pbf_packet;
 	u32 safc_inp;
-	u32 egress_mac_pkt0_lo;
-	u32 egress_mac_pkt0_hi;
-	u32 egress_mac_pkt1_lo;
-	u32 egress_mac_pkt1_hi;
+	struct_group(egress_mac_pkt0,
+		u32 egress_mac_pkt0_lo;
+		u32 egress_mac_pkt0_hi;
+	);
+	struct_group(egress_mac_pkt1,
+		u32 egress_mac_pkt1_lo;
+		u32 egress_mac_pkt1_hi;
+	);
 };
 
 enum bnx2x_stats_event {
@@ -83,6 +87,7 @@ struct bnx2x_eth_stats {
 	u32 no_buff_discard_hi;
 	u32 no_buff_discard_lo;
 
+	struct_group(shared,
 	u32 rx_stat_ifhcinbadoctets_hi;
 	u32 rx_stat_ifhcinbadoctets_lo;
 	u32 tx_stat_ifhcoutbadoctets_hi;
@@ -159,6 +164,7 @@ struct bnx2x_eth_stats {
 	u32 tx_stat_dot3statsinternalmactransmiterrors_lo;
 	u32 tx_stat_bmac_ufl_hi;
 	u32 tx_stat_bmac_ufl_lo;
+	);
 
 	u32 pause_frames_received_hi;
 	u32 pause_frames_received_lo;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-18-keescook%40chromium.org.
