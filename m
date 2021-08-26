Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAGCTSEQMGQEEO4YMUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE183F81D9
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:05:05 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id t2-20020a9d7742000000b0051dd85217a3sf642247otl.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:05:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629954304; cv=pass;
        d=google.com; s=arc-20160816;
        b=UV5LVTYGN1FxIXXOeVW6n+ZwvRBwh6/XZLNqFbANvp11PHCp1zN57Z62p+dmaiRbPT
         8H8JrEEspxYmT5UW7P2DktGmL2kpGJq9pd4jydbOA3XPPBto1uSeOOsdzZdpbQAqjUvH
         0Oyr4AjSVgOLR87a1gssEqOgsOnFUpaRgWmZVJzhBh14pKLKWZFAsgLRWJfYX/ZBYaa2
         VNGfZRlfqYiip/hI/mishQXFiNWEyYy/Bjfa9cG0aHNSwk8aI2FoB7KeN2uSXeaR7fUC
         Jxc/VLOdcYcPfBLxKw3vyf7BpOV+pPBzUkZXg9T3biwkYQtrb3Kw6u2wbuepGYpIdQj/
         qY+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5bQHwpCitK//Bm/8VzEU3J5yEdz6Ch33hPYK/HS1m7o=;
        b=0nRXAPbqN/5IAcsMDBeoDwNfuFJtLQury1VLLvZEV03o/npG1qlQUt5Nr5nSs0UEL8
         wnywThjJnZR30IpPyyA+DW5jWGcwCyUOLp3H30S1yPzWk3l2f1nSCbbklL4uqtsSuy+g
         4gssjei/KZSaB1MSxLid0Qp8WmMfhDOaPSNBO87h8ZwM9m3ZUOIhfQ4+SaHtzWi8ci1O
         ddnm/7E9QoQicIrnc2Dh0RpPEtmnn3WEf2iGFCDE9cz3m87GQFgdhnozDaqy3z6ABpeB
         SwNjwo/b+Ra5pwblONx3Uvg868yTLUCew8wDcy5wMY8uxEqT2CHqK9t7AkEwekuZBbSV
         lXHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mBIJf6cF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5bQHwpCitK//Bm/8VzEU3J5yEdz6Ch33hPYK/HS1m7o=;
        b=ZmVEB2pf89nfkED46A4NQEZpk52l8RyPEmQ/ZwJEirdAqLliHI0ChAAWUJsmz40Dw3
         UjbICziWouUSTW63jVcz5R8yBBzFFN9kl5mAOn2EmkLWf7kagIxmBNbSSUZf/pyr/oVS
         sLopWZgqpTKHcQJIBOasI65Tx1p7RcSQDmpt+8w7bxu5B7fnT4zklIVl7s4MR8AxJ4JQ
         voF54MxnT73iN8/cJZRHgde3nNLCwS6JEOjantKFSSJM+Ha44WUIb7Z79DZVBi4K1A+i
         5ysoX94THceuX+npl6Wb8CDvR5ehcRS/c9RfJaF/2d6/27BPRQNFoxw6atddmEF/k+O3
         tcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5bQHwpCitK//Bm/8VzEU3J5yEdz6Ch33hPYK/HS1m7o=;
        b=jRuJqZmjXWrcP0qCu6aa4cUzb8lJ8sXb6MfrJwEVSnFWLh8i+kRBcUlm0a26g49F7S
         2F+cbFl5kabXhZ/kaThZ0EdEPHZ2OLrKI0owCdmiaplkcMfgwqk3W+jzhuxnM0cqqeXX
         d9pj+Of3oJOD+U+/db1xnPAlL5bjKreNbR0KSC/IE2KuP7vdEfeNl+JQq5iHNTtXTT3v
         7poRm3FRHnjJZ2m/OBrtqfadi5V9LnlPHwU43DUDT6xxCiZyWMoasOjnyqgbbV3zvwHF
         /MlBnlH43I6pqipMY32CX5o9kmQO10VAXstqU4mjsr3xLcHuxymjKy5aH5FFroeBagMF
         EkHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nDctGiwDoaCl1QY6n7lmMEdRgw9cvyLjLHcFJWZ6a30vpl2ZL
	jr3/x4VCFqED2YoEPXJ0UqI=
X-Google-Smtp-Source: ABdhPJysSGFUaFJCQuiivn1Gzdeq48UwWe1w/GUEZE31XrSCBACQyZnZ/yO6bs2EIPXu9AEQoTdGwA==
X-Received: by 2002:a54:4619:: with SMTP id p25mr1086339oip.5.1629954304129;
        Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:15d9:: with SMTP id j25ls1209603otr.6.gmail; Wed,
 25 Aug 2021 22:05:03 -0700 (PDT)
X-Received: by 2002:a05:6830:913:: with SMTP id v19mr1615832ott.131.1629954303792;
        Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629954303; cv=none;
        d=google.com; s=arc-20160816;
        b=EdVuWKrelOGouqsxEeRMVILtnIeSVB7+jrKbg1d9Dp0Vm7k72ig9qORqLxelHDeTqg
         lHfiPqvXIznaWYOluJzRPJVKAFitt+g+gE/fW5Mc2avJ1TyaqFBDtQSKQ0iUwfmI2Mlp
         XRODENz9i0XdjVFNInGq8QHMvFPzfHuCjdbv9y9ieiYHlizrcrKyktak5zwL4Tiakg0R
         qdnGPiEGXDnOAH98+tNU7ygu6OfkeCQZuE0Ob06p4V2kxFOo2NYB/cF/rTckKP952Sfv
         Y7ZOQh+iwkHn+fzWUsPm8gtC8aRU8QXE4oFfU8fi/rusf76OvBj3gK04D9LTqJSbcps9
         j3Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fQOw84Q+0nXTS439fkG942FAnjDvqnWfwdQqvALTohQ=;
        b=0DTD+C5fD7er9pslK2w1i9U2xhCF9PshPd3ccIyouJatYXUyRSStOjI02bOfsyRLXZ
         +8unXgMLFKAVRuBWE8TaAwFY1Y9T/chfaBLvJaEudwyHQs0FgtJ9l7VKT0C3SlPMo5gb
         5XaAz1uPNXW21Dp8nd8XBRi0zdHO0Y9FnHXbXW/Sx0rVpqSp+gabvBTQVCwOV/9PDAVx
         Lti/wTTj37WwbZQaVKVjJm2nJd4cLL/XuOTjuVvc/IpOHfhru2ZhiH3aN3EpJUUnWkOH
         ZTMe2bk4AZ+HYMVvzhsYJ9nQeWGgYHU2lW6gzjQ5V/UQVYL73YUAsXYwDxFuwr9xbqWq
         +eQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mBIJf6cF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id m6si42772otk.4.2021.08.25.22.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id j10-20020a17090a94ca00b00181f17b7ef7so5747495pjw.2
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
X-Received: by 2002:a17:90b:4d91:: with SMTP id oj17mr14662366pjb.209.1629954303060;
        Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t13sm1119130pjg.25.2021.08.25.22.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:05:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nilesh Javali <njavali@marvell.com>,
	Manish Rangankar <mrangankar@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Phillip Potter <phil@philpotter.co.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Johannes Berg <johannes@sipsolutions.net>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>,
	Ross Schmidt <ross.schm.dev@gmail.com>,
	Marco Cesati <marcocesati@gmail.com>,
	ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 3/5] treewide: Replace 0-element memcpy() destinations with flexible arrays
Date: Wed, 25 Aug 2021 22:04:56 -0700
Message-Id: <20210826050458.1540622-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826050458.1540622-1-keescook@chromium.org>
References: <20210826050458.1540622-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9605; h=from:subject; bh=tuToPGIO1fwcT/OaQE7CJFyWXS25t8uKJXExyhn0DhY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhJyD5WMohc3p5GetuWgfUYA3hlc3eWWWJdl37Tmzk tsRDR+6JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYScg+QAKCRCJcvTf3G3AJjLxD/ 0WbSS7m0+jhuZ0yEDDmx1f3f3Fd4ylc4n8eEvJqyWQTOEBeC52HalM7Wv0GoqDZsr409+b70Kj9En7 2n3jS2Nmosga/L9RN7YC9u8qi0OdqGXVUmPmOeeAy6vMY3nf32TfdIzBf0OFgzOF693Uri3lQdQkGt X1n7jN2/ma2qJETdJEoWZeFuLUJzQFnFmLtffWGvJelOhGoZJVCtEqyChndE2RRsiGw9sxkJrtip/M wVQhx9fXljN7jgmfAnkuyY8cPPfzM8tFAZk5QNk1DwKxkTY6kSjPMt3wQIP2PWVeJxve8cxG6tBEBy 9QcRSQin4AKCk5e1K9dRUpr2rBZ2pxTpu9+h1fQLeq9crY4tlIWA1N9IE+CYenSB5QS/ElgexfKNWg QRC7FAybRvx09RpC7bmtInRliESEbFkmAyXw51g8m6wzhInC4+FQEU3btvs3iAdymFag/3LI+VDOqN 5i89pzAUXDMY+BMrDEHQd5bsBN4FxGIZeLO0x4J0nF3WZCfnqplq/MCuM8U9cVBQWVBkao42uT4M03 Yy3Q3ELveBean30nqem7NAzic3v+h/HJEV+FbLPiM77rxRQPDLqVPu8NjkMJdVAcDTZpjIfLbI/bt/ ZPL1usCDRxrpqI9YR6ZS/0XI6opvoGU0RxLd5AQLk0ekgfIvkKpQ5pCyGAaQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mBIJf6cF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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

The 0-element arrays that are used as memcpy() destinations are actually
flexible arrays. Adjust their structures accordingly so that memcpy()
can better reason able their destination size (i.e. they need to be seen
as "unknown" length rather than "zero").

In some cases, use of the flex_array() helper is needed when a flexible
array is part of a union.

Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Nilesh Javali <njavali@marvell.com>
Cc: Manish Rangankar <mrangankar@marvell.com>
Cc: GR-QLogic-Storage-Upstream@marvell.com
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Phillip Potter <phil@philpotter.co.uk>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: Ross Schmidt <ross.schm.dev@gmail.com>
Cc: Marco Cesati <marcocesati@gmail.com>
Cc: ath10k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: linux-scsi@vger.kernel.org
Cc: linux-staging@lists.linux.dev
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/ath/ath10k/bmi.h         | 10 +++----
 drivers/scsi/qla4xxx/ql4_def.h                |  4 +--
 drivers/staging/rtl8188eu/include/ieee80211.h |  6 ++--
 drivers/staging/rtl8712/ieee80211.h           |  4 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |  6 ++--
 include/linux/ieee80211.h                     | 30 +++++++++----------
 include/uapi/linux/dlm_device.h               |  4 +--
 7 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/bmi.h b/drivers/net/wireless/ath/ath10k/bmi.h
index f6fadcbdd86e..0685c0d2d4ea 100644
--- a/drivers/net/wireless/ath/ath10k/bmi.h
+++ b/drivers/net/wireless/ath/ath10k/bmi.h
@@ -109,7 +109,7 @@ struct bmi_cmd {
 		struct {
 			__le32 addr;
 			__le32 len;
-			u8 payload[0];
+			u8 payload[];
 		} write_mem;
 		struct {
 			__le32 addr;
@@ -138,18 +138,18 @@ struct bmi_cmd {
 		} rompatch_uninstall;
 		struct {
 			__le32 count;
-			__le32 patch_ids[0]; /* length of @count */
+			__le32 patch_ids[]; /* length of @count */
 		} rompatch_activate;
 		struct {
 			__le32 count;
-			__le32 patch_ids[0]; /* length of @count */
+			__le32 patch_ids[]; /* length of @count */
 		} rompatch_deactivate;
 		struct {
 			__le32 addr;
 		} lz_start;
 		struct {
 			__le32 len; /* max BMI_MAX_DATA_SIZE */
-			u8 payload[0]; /* length of @len */
+			u8 payload[]; /* length of @len */
 		} lz_data;
 		struct {
 			u8 name[BMI_NVRAM_SEG_NAME_SZ];
@@ -160,7 +160,7 @@ struct bmi_cmd {
 
 union bmi_resp {
 	struct {
-		u8 payload[0];
+		DECLARE_FLEX_ARRAY(u8, payload);
 	} read_mem;
 	struct {
 		__le32 result;
diff --git a/drivers/scsi/qla4xxx/ql4_def.h b/drivers/scsi/qla4xxx/ql4_def.h
index 031569c496e5..69a590546bf9 100644
--- a/drivers/scsi/qla4xxx/ql4_def.h
+++ b/drivers/scsi/qla4xxx/ql4_def.h
@@ -366,13 +366,13 @@ struct qla4_work_evt {
 		struct {
 			enum iscsi_host_event_code code;
 			uint32_t data_size;
-			uint8_t data[0];
+			uint8_t data[];
 		} aen;
 		struct {
 			uint32_t status;
 			uint32_t pid;
 			uint32_t data_size;
-			uint8_t data[0];
+			uint8_t data[];
 		} ping;
 	} u;
 };
diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index da6245a77d5d..aa5c1a513495 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -199,7 +199,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 		struct {
 			int command;
@@ -212,7 +212,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 #ifdef CONFIG_88EU_AP_MODE
 		struct {
@@ -224,7 +224,7 @@ struct ieee_param {
 		} add_sta;
 		struct {
 			u8	reserved[2];/* for set max_num_sta */
-			u8	buf[0];
+			u8	buf[];
 		} bcn_ie;
 #endif
 
diff --git a/drivers/staging/rtl8712/ieee80211.h b/drivers/staging/rtl8712/ieee80211.h
index 61eff7c5746b..65ceaca9b51e 100644
--- a/drivers/staging/rtl8712/ieee80211.h
+++ b/drivers/staging/rtl8712/ieee80211.h
@@ -78,7 +78,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 		struct {
 			int command;
@@ -91,7 +91,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 	} u;
 };
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 378c21595e05..89c311cd20a6 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -180,7 +180,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 	        struct{
 			int command;
@@ -193,7 +193,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 		struct {
 			u16 aid;
@@ -204,7 +204,7 @@ struct ieee_param {
 		} add_sta;
 		struct {
 			u8 reserved[2];/* for set max_num_sta */
-			u8 buf[0];
+			u8 buf[];
 		} bcn_ie;
 	} u;
 };
diff --git a/include/linux/ieee80211.h b/include/linux/ieee80211.h
index a6730072d13a..445597c03cd1 100644
--- a/include/linux/ieee80211.h
+++ b/include/linux/ieee80211.h
@@ -1101,7 +1101,7 @@ struct ieee80211_mgmt {
 			__le16 auth_transaction;
 			__le16 status_code;
 			/* possibly followed by Challenge text */
-			u8 variable[0];
+			u8 variable[];
 		} __packed auth;
 		struct {
 			__le16 reason_code;
@@ -1110,26 +1110,26 @@ struct ieee80211_mgmt {
 			__le16 capab_info;
 			__le16 listen_interval;
 			/* followed by SSID and Supported rates */
-			u8 variable[0];
+			u8 variable[];
 		} __packed assoc_req;
 		struct {
 			__le16 capab_info;
 			__le16 status_code;
 			__le16 aid;
 			/* followed by Supported rates */
-			u8 variable[0];
+			u8 variable[];
 		} __packed assoc_resp, reassoc_resp;
 		struct {
 			__le16 capab_info;
 			__le16 status_code;
-			u8 variable[0];
+			u8 variable[];
 		} __packed s1g_assoc_resp, s1g_reassoc_resp;
 		struct {
 			__le16 capab_info;
 			__le16 listen_interval;
 			u8 current_ap[ETH_ALEN];
 			/* followed by SSID and Supported rates */
-			u8 variable[0];
+			u8 variable[];
 		} __packed reassoc_req;
 		struct {
 			__le16 reason_code;
@@ -1140,11 +1140,11 @@ struct ieee80211_mgmt {
 			__le16 capab_info;
 			/* followed by some of SSID, Supported rates,
 			 * FH Params, DS Params, CF Params, IBSS Params, TIM */
-			u8 variable[0];
+			u8 variable[];
 		} __packed beacon;
 		struct {
 			/* only variable items: SSID, Supported rates */
-			u8 variable[0];
+			DECLARE_FLEX_ARRAY(u8, variable);
 		} __packed probe_req;
 		struct {
 			__le64 timestamp;
@@ -1152,7 +1152,7 @@ struct ieee80211_mgmt {
 			__le16 capab_info;
 			/* followed by some of SSID, Supported rates,
 			 * FH Params, DS Params, CF Params, IBSS Params */
-			u8 variable[0];
+			u8 variable[];
 		} __packed probe_resp;
 		struct {
 			u8 category;
@@ -1161,16 +1161,16 @@ struct ieee80211_mgmt {
 					u8 action_code;
 					u8 dialog_token;
 					u8 status_code;
-					u8 variable[0];
+					u8 variable[];
 				} __packed wme_action;
 				struct{
 					u8 action_code;
-					u8 variable[0];
+					u8 variable[];
 				} __packed chan_switch;
 				struct{
 					u8 action_code;
 					struct ieee80211_ext_chansw_ie data;
-					u8 variable[0];
+					u8 variable[];
 				} __packed ext_chan_switch;
 				struct{
 					u8 action_code;
@@ -1186,7 +1186,7 @@ struct ieee80211_mgmt {
 					__le16 timeout;
 					__le16 start_seq_num;
 					/* followed by BA Extension */
-					u8 variable[0];
+					u8 variable[];
 				} __packed addba_req;
 				struct{
 					u8 action_code;
@@ -1202,11 +1202,11 @@ struct ieee80211_mgmt {
 				} __packed delba;
 				struct {
 					u8 action_code;
-					u8 variable[0];
+					u8 variable[];
 				} __packed self_prot;
 				struct{
 					u8 action_code;
-					u8 variable[0];
+					u8 variable[];
 				} __packed mesh_action;
 				struct {
 					u8 action;
@@ -1250,7 +1250,7 @@ struct ieee80211_mgmt {
 					u8 toa[6];
 					__le16 tod_error;
 					__le16 toa_error;
-					u8 variable[0];
+					u8 variable[];
 				} __packed ftm;
 			} u;
 		} __packed action;
diff --git a/include/uapi/linux/dlm_device.h b/include/uapi/linux/dlm_device.h
index f880d2831160..e83954c69fff 100644
--- a/include/uapi/linux/dlm_device.h
+++ b/include/uapi/linux/dlm_device.h
@@ -45,13 +45,13 @@ struct dlm_lock_params {
 	void __user *bastaddr;
 	struct dlm_lksb __user *lksb;
 	char lvb[DLM_USER_LVB_LEN];
-	char name[0];
+	char name[];
 };
 
 struct dlm_lspace_params {
 	__u32 flags;
 	__u32 minor;
-	char name[0];
+	char name[];
 };
 
 struct dlm_purge_params {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826050458.1540622-4-keescook%40chromium.org.
