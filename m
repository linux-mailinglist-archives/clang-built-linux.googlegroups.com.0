Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4PKQGEAMGQE7F6JYUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F200F3D8085
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:58 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id hf7-20020a0562140e87b02902dc988b8675sf519650qvb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420018; cv=pass;
        d=google.com; s=arc-20160816;
        b=i87Chbrsv33UKffDnB+D2QCQrgqPc6GsH0Lmt1Scnic+hsRy6e+aJAqmyyJqLKiKK7
         tZuIRGV8bON0IKgJ1r/ooDAPOofVSNNPDz0+mqMmRVqWwS9olJ18ikXy4ti0CfSVBLE5
         Qz1J5X9q9yCbJV9iamkrOZWzBNs5mHUHBLVte5AXVFLMnTiqIM1e8UkKCjl3u0CEddWw
         vXtVLD1bQHZ0tz8Aum6vZcw6quNgBQXYk4Fkewqpnto3nRD4hsmNAQ1Tstvk77PIH34C
         YU7VDkxkzdLAVK705NtrPZG4WFlIPfF7oUFp+imrRM4uMfdOYaTJkYfZMbultLyH/Px4
         FImQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WvV1djicipxUrCvZL0Swhk3MyivLUuPx8PSLUEyqiTA=;
        b=RAC5VTDa2H9SYFV0LriserMzTi/2RCIMFm+SOjb1vUsyRNZW7noyYnEYzJ4CpVuuBK
         tPHB5In2uYe4UimzZNip1VHe4tdTdCb2PzWH3+VbrfKFyC3f7qz4gFRvKbSvYlP5nBfW
         3GOYiHvColcTBACQWBatmJZHV6SDC1ACn+FSHUG2DRdL0ISgEzxc3l61BuDffFPYDTBB
         YpFCZz1ISstbYUvF1+hIpPQfZ1IixGF/QNiJSlaCm69pGYHfK08uXLbo2x8S7fKl4aFR
         W5Z/6d3gf0seMwVZT4a1qFt2lu/l8q6tFJFyH8u3FrRGXVdgyL2hwDU17GB9nin6TKYF
         yPzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nmClRthM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WvV1djicipxUrCvZL0Swhk3MyivLUuPx8PSLUEyqiTA=;
        b=caftYtHi4JDJYe67uam37Qg0J633VZi9hWJj+XjLmCugOKdan6QPnBhUC4E56QzYQj
         +KiNZrQom1Zx2SUz79wKSF1afYTz6n2sighj9UM+ql3FxnrrITeBMfYlFF78D8kLgRQr
         bz2FdKuFwDqoSkoZ/BtTrh7VuJljpy2+BU/PLs/lXtyqACBQbT2yZ/WPjQ6rMl0/xo4J
         NyEfbN5U55/mKCpETWau99Q/OuV4+oKGE7YIrfNQGB2P62bz0Fg31scOj+GvChTVVQdD
         T74HaG2cqKBfyOxOkdx9mKKNIBNmKcqpiJPdbRW/zeg8+o8Tj+JWj2ZS8fJtn+YctnKR
         zcUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WvV1djicipxUrCvZL0Swhk3MyivLUuPx8PSLUEyqiTA=;
        b=qhStLP7XaqJRJTaKgn42BlS80PKEanusAuwGq0iCQsFn8ZZdDD9B+GGkOtxno5wEbX
         VteQrQJVpqCCpi+SgzKikgNb87FUlFAYpjNrW38B2eQSIBu/Mfs2pIAxwKOjNVEHTT3l
         nRG2Rwu1xZLoE5FBv3dvv0xE/Kzztj2BmzQerTt7prEiRuv5/8fc71sC6y8WXgHaYgtI
         6wi57tFNoyCflHBZFs/Na1gacnLtPk7UGf7Kymd6UXN6AdYAtDm1TJ95AyVhDhq7o6gU
         /MUHRsxqI4ES7RSckqjV4zWb+DFw+7J2i7qrQpCyDhNzikPnuv2bFfGfWfo8gncdRHD9
         xrNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304U0j8XsDJiD/drXcBS7IZSTQd6cQwcjQ9K1o2VnCu+4ThnmHi
	8H6wUEztZ/dTYEAV0YWxDu8=
X-Google-Smtp-Source: ABdhPJw0QejTyorP3XQzIvZ9PrUDVuaeqE6Tl7EIat5VIAyIl6i+dNR/XhrkmnkWA6ljYcn7jpfnQA==
X-Received: by 2002:a0c:fbd1:: with SMTP id n17mr24993648qvp.19.1627420018066;
        Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f70d:: with SMTP id s13ls21378qkg.7.gmail; Tue, 27 Jul
 2021 14:06:57 -0700 (PDT)
X-Received: by 2002:a05:620a:c10:: with SMTP id l16mr24523649qki.241.1627420017686;
        Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420017; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4RufS7dSqJml35HtweMBWZwpIy/s+1qZDYTFsBMuk9MokJZSSkqBEHE6sFkOn9KyP
         T4AWRvWS1wvViyro8kpBUbpCZv4db7ifbtpac41kUPd35+nuNU0/LTgVRreWUwLPDVKo
         x6Xd+vUYSRiIsqJS1oEUljuKMQV64jCLTVIxN2PRhkA/x/AmPjnlW+jGOJMqQS6dcsOX
         J489GWC8vhWLwUI4uTOx8ore2ShzPiTdU6TxW2Au2vBCxvGEeOOnt0wLAjCrJrYbgucW
         6qk/tEd8nSxDB9LG0i20YwoHOtPTfHDHzRXuq+hp6dabbi8kos5x/ECSd9l50XFlXw1x
         Hpog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eOeu4d7QLTPBu6QYYoqWVSDz/qzrHDToqQYaK/VYhSM=;
        b=uZQIgWkWFByG0xHJf1Fq5JHTW0BdqO8KoafjWcbk69GBeAEM2JVBummrSNi6xjPlmn
         PIPggj4C6gMr3ze1O7BRmpcQbO4mrJNWvKrRhTQqpprebcTn+6n0B+JvqN1mXIgzMMYa
         lhIb+rFcdxWMqAvR+TVz0lGVKuBI0kOwwu1RN/wQpaX3L62tLgB+HzhD4DLn4BKY1PIp
         nKrzJ8l88F3VY/Q2/vxNcrmX9g8JouE8+xmncUECcGqTJSYj9q4ogYYBUX983ZGQ2Ii+
         fr3D5GIh1+qMELlCss+DQ+gfpFEbadVZqNsxytLUelA+Yr1mA8Kh2N+NW5avFTsAnitc
         lDBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nmClRthM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id v31si195364qtc.4.2021.07.27.14.06.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id a20so88234plm.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
X-Received: by 2002:a17:902:7884:b029:12a:efa7:18d8 with SMTP id q4-20020a1709027884b029012aefa718d8mr20498548pll.85.1627420017391;
        Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e12sm3784712pjh.33.2021.07.27.14.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 43/64] ath11k: Use memset_after() for clearing queue descriptors
Date: Tue, 27 Jul 2021 13:58:34 -0700
Message-Id: <20210727205855.411487-44-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3116; h=from:subject; bh=j3LfXLw0C1RpC2nAiDmR2FV9ppMLr+xX2/Byaw0lUBI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOJQjRIUTQLa3kW6JEv7dcnm26TeZbOKFOYV9Uy JUsIKlSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziQAKCRCJcvTf3G3AJv7OD/ wOv9NnzO8vnuCd1yLn28Uh20ipd4blI/H+kMp3Wx9VsXqAUniUau5o4ju7EMl4saOmJ/ltHPdb99Yn /TXqBvuvm/fcFKOY1q7nIR/AaYPJW7LhNkRTXplMqKXe+3Qnnu8FBSAw2DUq1zXDmuYemIlXptx4ne Bmu+McSU4fRhGXiPWsd07ziif5KbBqSw6Xksw8nxp+XBVcxJX8et8bdwHVvJj0saggDJ1aJ4HQ1mF9 4HllmEQZL+wN8MhR+vknVrUK52Mj7rfxI7dwb4lSH2MhOUDYqcIIacwA5QxlhlqjlKy6/FQBNGIoBY ryzx8o2IbdOCSNbzQwAASqLiVYlD6HbVddTDKOJUZ+x++HGUnv9Ns/IgQDKGBNyhoj/ri9ybH6GklO voujRz697QTfjIL/VjnyvyF+xPaJEI8Wohz7g53gpHyYojdV+zinQHZWRwFAMHSly548C+mHC2LU2f E4CcST932vQu8ftiiXm818XOydMxX00CvzoOdlcSm4NgFL87y5zloqO76ihmGAN/LUl+GulYt7gpaN 6tsAlGYd0W8yUr7UrJaRl6QTkAffrdEJCc47+DqZK4QRdgofQHTqb0FpwfJ1WH7QWGQzpFXEyUW2Se Px6rDcKN7HvstRyGsxqRWPFEVU0eQ/A1CMhA1WHwshXb3mfP/uaPnWfv3RBw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nmClRthM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

Use memset_after() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct. Additionally split up a later
field-spanning memset() so that memset() can reason about the size.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/ath/ath11k/hal_rx.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/hal_rx.c b/drivers/net/wireless/ath/ath11k/hal_rx.c
index 325055ca41ab..c72b6b45b3ba 100644
--- a/drivers/net/wireless/ath/ath11k/hal_rx.c
+++ b/drivers/net/wireless/ath/ath11k/hal_rx.c
@@ -29,8 +29,7 @@ static int ath11k_hal_reo_cmd_queue_stats(struct hal_tlv_hdr *tlv,
 		  FIELD_PREP(HAL_TLV_HDR_LEN, sizeof(*desc));
 
 	desc = (struct hal_reo_get_queue_stats *)tlv->value;
-	memset(&desc->queue_addr_lo, 0,
-	       (sizeof(*desc) - sizeof(struct hal_reo_cmd_hdr)));
+	memset_after(desc, 0, cmd);
 
 	desc->cmd.info0 &= ~HAL_REO_CMD_HDR_INFO0_STATUS_REQUIRED;
 	if (cmd->flag & HAL_REO_CMD_FLG_NEED_STATUS)
@@ -62,8 +61,7 @@ static int ath11k_hal_reo_cmd_flush_cache(struct ath11k_hal *hal, struct hal_tlv
 		  FIELD_PREP(HAL_TLV_HDR_LEN, sizeof(*desc));
 
 	desc = (struct hal_reo_flush_cache *)tlv->value;
-	memset(&desc->cache_addr_lo, 0,
-	       (sizeof(*desc) - sizeof(struct hal_reo_cmd_hdr)));
+	memset_after(desc, 0, cmd);
 
 	desc->cmd.info0 &= ~HAL_REO_CMD_HDR_INFO0_STATUS_REQUIRED;
 	if (cmd->flag & HAL_REO_CMD_FLG_NEED_STATUS)
@@ -101,8 +99,7 @@ static int ath11k_hal_reo_cmd_update_rx_queue(struct hal_tlv_hdr *tlv,
 		  FIELD_PREP(HAL_TLV_HDR_LEN, sizeof(*desc));
 
 	desc = (struct hal_reo_update_rx_queue *)tlv->value;
-	memset(&desc->queue_addr_lo, 0,
-	       (sizeof(*desc) - sizeof(struct hal_reo_cmd_hdr)));
+	memset_after(desc, 0, cmd);
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-44-keescook%40chromium.org.
