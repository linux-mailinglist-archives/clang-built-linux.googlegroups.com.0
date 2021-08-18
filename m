Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEWP6KEAMGQEFC3YSPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 506E73EFC50
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:20 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id m3-20020a17090b0683b0290178cb50bc1asf1044518pjz.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267859; cv=pass;
        d=google.com; s=arc-20160816;
        b=et1ZQAgyKQrF1B/4z4ZOh72eqsFCsM5T2RX5et6vb+PjBCEH7x+TfrLC2IsKc86vD3
         Di4yqtRABtl2tk6GWhkJldP6nSr3ywqLDLp15CuHs8IJ5/aWtrPmu2HTBNz7oowhFoBe
         1Jgz+RDvfxmCS9P3MfQdXJbzF8jV3ssivyRU4P5vR4ij1zkLKlytodSqZ61VZ+MlUdQH
         ktXV6Abaletz826XJlN+eVk+eUDhesPchNNEYHF+9QekWrWX99OzpGBWFp85oN8CB/z8
         KTfWntyxXhWrwPxrsRFNbnp//cbo0xjROJo6ZrjgnDtf1qbFL8/65xLkAVeEZ53+D2Bs
         YhqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z+fMYR73zw8WCRltcA4nMCbVBFZxTQiF7/ollrrV3Yw=;
        b=RdNVsw8++400XYX5UxUG9OpuzBGDFq0UgFdQGhntMRy/hnrRQNIREE/boBoy6rkl7k
         aOICosZzK0I3ZrpbT47Ijm+YipGZXqnTOF8oK4E/WO+Tibk8Lt6YA3/1Cv443f8xG4eI
         mDlCzFBUxBhzHjZtNiRuRRzVky1B1JjLw732TbRFu+RFUhCWdXLCMcFy/jRVWnLK1GKg
         ps49jyeNsHoT7btXZ4TB5eB+JRRhe2zFPBFz2v4LnIkcT52tngP5tN6JaZ5r/bnXJ04J
         mdwzTL0rOGLoyBx4+a5qzmDb3iaZxcBH1Zo2l602PTISQDH89dBlplqy/JV1p/6uwEze
         9wKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kDXEIEit;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+fMYR73zw8WCRltcA4nMCbVBFZxTQiF7/ollrrV3Yw=;
        b=YDngk0xJ13C7hNBzKeBQ2l3VYIOkrYorJZ82nlYJ7AVIR2FlXAk1C3zHwOvGNTr10K
         8g1ipiq4/lJvkBxF60Dm60LNDZ0JwynDBqxO3TkOVE+0iPxMLgyO7+dZm+s3nnbOI+8G
         BJQvHtJI59626lq8cZ4vGNUJYBsliJO3i4LSRcQH19KYgHdINvsjY+yidVNlbGCEiEv1
         gEax+qiTeJ4akJsXsZkq4/Ev71kxDiq6pEQNYIzxVzRTt1TJMYYF/+CamzGTR7B7hul/
         24+0G23vWaILRrjYts2H8pAGlQGOVcQydTQNNTDQgb/+X43CHPYHdJg+VkgGYLcYNeru
         OEVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+fMYR73zw8WCRltcA4nMCbVBFZxTQiF7/ollrrV3Yw=;
        b=BWkJ/RnIoCM5fzzUbods5rfT0KSLhPBh83BpqdVIGF7Q3ubCDGElZGacA5QG3y9NB4
         rLUr57LHxXveFJM3f5vnYxwszfdi4/wtzmj08GF0t1s30Pr7+9gzEcqybuphHS7xBKoe
         p1ZILuvzvydbD19h7AMpLr+7eWOHkmrhol6TQrS+GXSvKDIdwMppxFqRUzKarLUrOpvz
         JGACUfc1pTwVMlE7Gzbt9CBQJALZ3q3ou9AKk5n2pY9VmWIspcFcbH0C2zgQRoaKqcpR
         T4tLstTqR+ZOcv1tiuS2tG1+10i/lm/K5ImrD4cB0W94njmTgbpNzl5DkbYte2fO7Db1
         Rd0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ncuJ/WpS4bc+rQDmc/T33d0S9/G8zZvNDDsLZEuW8uLyQ4VgJ
	ea4hRTCTq5ud8whzoHckAuc=
X-Google-Smtp-Source: ABdhPJyd9q66ZdqaW0h8bIz+m1pwcgMkKBcmzglEFTTsFwq91lm+lOtXfEOoBz2zRq+WQXP3G3qF6g==
X-Received: by 2002:a17:90b:3144:: with SMTP id ip4mr7609265pjb.42.1629267859075;
        Tue, 17 Aug 2021 23:24:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls677886plh.8.gmail; Tue, 17
 Aug 2021 23:24:18 -0700 (PDT)
X-Received: by 2002:a17:903:228a:b0:12d:a82c:c4 with SMTP id b10-20020a170903228a00b0012da82c00c4mr6105572plh.75.1629267858539;
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267858; cv=none;
        d=google.com; s=arc-20160816;
        b=WBfkb/0wTd9tu+suFcRxix9WBPcLEgjFKOTMslV5Bc6aArNNyvfP31NlpqsEhhh/qE
         5B+5ZYdoxeCXyPrbZlW5XxjgOCCTU6hxL9OGBJdB702ZaqPP+6lkJ6tJJdnFu2kD3pv6
         n+/xj+i8wS/VzVfzJ31gBA3bSeNuvdJcMjS62HZFEXNGayB8NMLY1T91r0zKG7ct49Kh
         iDzfI9aLQfq7pMWu9SD4uO+LSxI7NBFhtFF79WNGkWS5Bdetn7n5c+UNTqK91ZjZB338
         Gib1ZAcb7/0BcpZt+xxVww6pQfG0V7JLjDN7LgF22ez7VP2MAIsgOaMpISKBfKrwoXkk
         iVmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vvaO3IOaijbnIA6KqFSDgFo2qxgHnLpT3XyLd7qDOYY=;
        b=wIWY8MeuOANLmRPwoUnk3DRMYcz8dJxiJ7kd6kFxgefT1H0j+vncz4Czlhp9FUKnwc
         dtFjLIUr+5DiOVvmBL+pwAeQBcKZCRpMXFIVa7Ewg0/DSV8mlldI28DwJRMfj0Td7vDE
         Qd5Urq46aKIj6QwFQBdq0yUHrJRiQZJKKV7QZf4++HXMv0hohjD8G8tNZYERRhOF3hj1
         sLd+604400/WnPCNcMexYaksNSSIgDZVXg1yzYiP+eSDNcoB9GahlxAskJ3CECOc7swg
         ognHrwnzRV6/+WVjAvOuHDu/1pKXZO35nTlh32K0zUumB9UOVTyVJ0UZvuFK9u4cb2zV
         /idg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kDXEIEit;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id o2si340192pjj.1.2021.08.17.23.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id y11so1102508pfl.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
X-Received: by 2002:aa7:87d1:0:b029:3e0:e44b:6429 with SMTP id i17-20020aa787d10000b02903e0e44b6429mr7687468pfo.81.1629267857946;
        Tue, 17 Aug 2021 23:24:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l12sm4445453pff.182.2021.08.17.23.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	ath11k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 45/63] ath11k: Use memset_startat() for clearing queue descriptors
Date: Tue, 17 Aug 2021 23:05:15 -0700
Message-Id: <20210818060533.3569517-46-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3372; h=from:subject; bh=NQT3fqVVXi8ODh6WoJGB8sg9K5wYYHx+7JpT5FAL4cU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMopXDUfrKda33TUBFxN6HBO6TlnPSMDcCCdRDS 0aeVcWmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKAAKCRCJcvTf3G3AJhzGEA CY8p5TOKzJnk1TIbV+Hzc40bIrnKi3XB25slGqFlL9PC0EefG0LRY7a/kfnqj/FIFz17UsuycljRiL cACD/vfRToJ7yzKKAmxJEdfFC9iw7Xzoq9md8jDhbHG+5rEQLDA2Y8/KjGoyRoAVQUeCsHcJe+UAXU /C5fU4ck0d6s6EiIVlN7DyLPX1dt3uBgOwRyBODvNuiyvNXvhGO3XJv0FCDFCT5z75xj1tU14JGWyN PD0hj1XmCBY1e9AxpCMIlhi+/X5qb5jGTLXX/Md1KsTZvmbxvau9ABz55gWYFUQGS3X+k1Rlmv5T+v lQWqSK/nXQAlXtMjB9ywh5KsA5aVqsKNBUXndQA68SKCaNf/TyoXdI1m4yYbWg/BcAGWta/La0zhv8 6uPbEVUb8Vg2ZE5Iqlcs/ld7qL4G/K1NRERjZr+0R73esdLiYb9TgQFqKMWrJPe98lypwjAdWColpN I8cEBcItkU3uu4rF/5fh/NmOKClsPYi08PLRs5e03i6wu9s1aoaETYlf1CnhWQasVpVUQKL19q5EaQ 6mL+ds0GvKbFFnRg94o4s2GHh5vlbNIY8AZQMoUGgZ+Kclor6FXedzWgb33JBTE6JU4bg97H5xgdcx ZY2UZxJPJIziE2+vb6CbU1ZYgZ27bDV0FLUmziQd/krKAdEaAHnqHTqhCInw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kDXEIEit;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

Use memset_startat() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct. Additionally split up a later
field-spanning memset() so that memset() can reason about the size.

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: ath11k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/ath/ath11k/hal_rx.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/hal_rx.c b/drivers/net/wireless/ath/ath11k/hal_rx.c
index 325055ca41ab..0bab425f5dc9 100644
--- a/drivers/net/wireless/ath/ath11k/hal_rx.c
+++ b/drivers/net/wireless/ath/ath11k/hal_rx.c
@@ -29,8 +29,7 @@ static int ath11k_hal_reo_cmd_queue_stats(struct hal_tlv_hdr *tlv,
 		  FIELD_PREP(HAL_TLV_HDR_LEN, sizeof(*desc));
 
 	desc = (struct hal_reo_get_queue_stats *)tlv->value;
-	memset(&desc->queue_addr_lo, 0,
-	       (sizeof(*desc) - sizeof(struct hal_reo_cmd_hdr)));
+	memset_startat(desc, 0, queue_addr_lo);
 
 	desc->cmd.info0 &= ~HAL_REO_CMD_HDR_INFO0_STATUS_REQUIRED;
 	if (cmd->flag & HAL_REO_CMD_FLG_NEED_STATUS)
@@ -62,8 +61,7 @@ static int ath11k_hal_reo_cmd_flush_cache(struct ath11k_hal *hal, struct hal_tlv
 		  FIELD_PREP(HAL_TLV_HDR_LEN, sizeof(*desc));
 
 	desc = (struct hal_reo_flush_cache *)tlv->value;
-	memset(&desc->cache_addr_lo, 0,
-	       (sizeof(*desc) - sizeof(struct hal_reo_cmd_hdr)));
+	memset_startat(desc, 0, cache_addr_lo);
 
 	desc->cmd.info0 &= ~HAL_REO_CMD_HDR_INFO0_STATUS_REQUIRED;
 	if (cmd->flag & HAL_REO_CMD_FLG_NEED_STATUS)
@@ -101,8 +99,7 @@ static int ath11k_hal_reo_cmd_update_rx_queue(struct hal_tlv_hdr *tlv,
 		  FIELD_PREP(HAL_TLV_HDR_LEN, sizeof(*desc));
 
 	desc = (struct hal_reo_update_rx_queue *)tlv->value;
-	memset(&desc->queue_addr_lo, 0,
-	       (sizeof(*desc) - sizeof(struct hal_reo_cmd_hdr)));
+	memset_startat(desc, 0, queue_addr_lo);
 
 	desc->cmd.info0 &= ~HAL_REO_CMD_HDR_INFO0_STATUS_REQUIRED;
 	if (cmd->flag & HAL_REO_CMD_FLG_NEED_STATUS)
@@ -762,15 +759,17 @@ void ath11k_hal_reo_qdesc_setup(void *vaddr, int tid, u32 ba_window_size,
 	 * size changes and also send WMI message to FW to change the REO
 	 * queue descriptor in Rx peer entry as part of dp_rx_tid_update.
 	 */
-	memset(ext_desc, 0, 3 * sizeof(*ext_desc));
+	memset(ext_desc, 0, sizeof(*ext_desc));
 	ath11k_hal_reo_set_desc_hdr(&ext_desc->desc_hdr, HAL_DESC_REO_OWNED,
 				    HAL_DESC_REO_QUEUE_EXT_DESC,
 				    REO_QUEUE_DESC_MAGIC_DEBUG_PATTERN_1);
 	ext_desc++;
+	memset(ext_desc, 0, sizeof(*ext_desc));
 	ath11k_hal_reo_set_desc_hdr(&ext_desc->desc_hdr, HAL_DESC_REO_OWNED,
 				    HAL_DESC_REO_QUEUE_EXT_DESC,
 				    REO_QUEUE_DESC_MAGIC_DEBUG_PATTERN_2);
 	ext_desc++;
+	memset(ext_desc, 0, sizeof(*ext_desc));
 	ath11k_hal_reo_set_desc_hdr(&ext_desc->desc_hdr, HAL_DESC_REO_OWNED,
 				    HAL_DESC_REO_QUEUE_EXT_DESC,
 				    REO_QUEUE_DESC_MAGIC_DEBUG_PATTERN_3);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-46-keescook%40chromium.org.
