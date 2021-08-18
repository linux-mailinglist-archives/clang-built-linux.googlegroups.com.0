Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKUB6OEAMGQEIYEWT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7D93EFECD
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:11:23 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id p123-20020a378d810000b02903ad5730c883sf1215027qkd.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274283; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFpLMZ1ZELvAz7lD5nQlaCqIqT8Hez50w53edB+xTLfxDj1NBZ4i0sfAf8lUjhkrJu
         Te6HFzA3MH1Zdm4dz37TAWip+dLXyG0injqhjrQeaW1gcaPoAoSlDNVKMFAk96i/GX74
         4c8e0w0DlyO2q8h9xNOlUD/+F1m2735p0sHDPT0O+fRFAtECJ1waz2eIGEcgp8yilgV2
         KX24ug8nHQxVIJaNABkIKGwj5gWk5awnMOzVzpbclllB1HVuZi85Einyc0SXlSzHGeR1
         YcPH90tq7vDQaHTmHfWaFKcqxRHCZAj1khDCSSCea65EL1lD8b7LM3Y/TjtquY626RMR
         BrNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RWQylmkbP7OLNTCJPFhs4AkPxT93Ouf3XrEw/xzt5n8=;
        b=lkcC1KH/VE6uZTz+QbnCEydS7fbI7QzSOXR1+tbq6TXyXdk6Hwe6PhOB5dgmOING5/
         arjLOzkBbeEKl0uqChZ3B/YlE4hdel/oO289l+A8HKxBMRmK1WLN+U7zlPuPQ2gAlfN8
         GUIuwjgLieaQpFyihKcXbTzP3z/F0HESQWEwBXhFeuyQKnJz6mEar32PTAd97tAPOqq1
         zjSCdxR9Mgy32p57laNIhUwMk7+DghSwILjzfr7P/AfLy/YuL8tAOq9UMw4Bva95D7b0
         wWicQFU0k2BbKF49bPzQMc7f1sNA6LCDl42lI7UMSiW4aCPSAjYQY1fzbnoT9IFfmfsJ
         I+Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ud6o0IAP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RWQylmkbP7OLNTCJPFhs4AkPxT93Ouf3XrEw/xzt5n8=;
        b=qvIWJQaheWZANjVks+o8eHE++z9+7gEr6942+V5NwxH0XNM0pYzRRe+CDZJdXGHXoL
         tqB7suDkVRfqJGdp5WQ3rvsi/lGwCJU56DazSJc5XiLtsA2jV2aG19HZSOGgo29dDWF1
         2AyMpjnOm/H/H2sM3NyZCHTQzmndpdmlkrJZO4A4kayFkwEX06Hn3iXU4VY0XVQd6s7u
         uW4r7yGjsQKkL0ID76WrXrweLqykAtwDABRSaWc1J6Weh9kJvGgxZILqFhJ52Q+vuPT+
         5omoRYUH5muDrp+ODknj1cHJ49+fj0W+yu9QQv465WiEJYK5ZIpH0+UtJzYdCsZgnf6j
         zctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RWQylmkbP7OLNTCJPFhs4AkPxT93Ouf3XrEw/xzt5n8=;
        b=opJzjK1m2baXG0P6kzjY7t6Ieq4KCZf3xqCQQpMXZc0Rd+92QL7HmgQp49q/EMA5De
         coNdvPLFroQ0Zkzapawp5dmRulZudJv/MyWs35/Fa1NoCLOpXvfXLyUK3mR0ZH6iizCi
         u4Bwsux7ezmu+r+rSEJNogVa0r4Poh/B4R/sP6BwndxnpyKnOcRcvNGpb5R9OTwgxscw
         vlCnfk5cv3fWl8BMc9TO916wXt8MseuXaAaO4PC1W2IUdxbDlUbZ4MakMyi11CWNtCAG
         Ot8EspBOYqXlASHMr2KhYGSkrJIIgBHrT9bIjWZDQXNuar7Du2FvMyhaAUfeTui66Uwd
         +bfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KuzEXeOblbX/uNSzbbWLMkfSEi6dZIeQJpg0IyexppqCrVaqF
	K9UjvdNyiz9Qz1Q7WXyH5Ao=
X-Google-Smtp-Source: ABdhPJy2qzGKLDOUgu2VehU74dJlzaJupJGnhJVNJOqWQThkRigCqNDM3CYCSeGiHsj/fdaYXPxU3g==
X-Received: by 2002:a37:803:: with SMTP id 3mr8339085qki.127.1629274283051;
        Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:710:: with SMTP id 16ls933839qkc.1.gmail; Wed, 18
 Aug 2021 01:11:22 -0700 (PDT)
X-Received: by 2002:a05:620a:2488:: with SMTP id i8mr8236206qkn.58.1629274282634;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274282; cv=none;
        d=google.com; s=arc-20160816;
        b=ulmEMe8BmzwiU2r8gZptNa6QhekvOR3iXfByOdqQw6hO+IMCs25HyDiZE/wi6vm0mU
         EF643tiCw19aIIqXAwAg73yioBT14B0aotMGVhVlmv4OroCDGmvSstgOFx9syqjqEN6+
         LPtwnvXLC65zJqpnnrii7X/QGJLPKQE674Ow6ISBD3MLCu++vI8oQirZskC6PynET3bS
         NTVODxxQOBd/tdK4SV54q7YHGUIdVSAHSYh5fCqVVePZL7653G+g061aU7BcEO3Ypaii
         b1eOesaf1y845XMIMZ2WsLc8oSdzdFrlS9o+Rb0yb4JRKsMDPWm6lDjoZpFpzIh1snck
         dsDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uKeBKUwE3LB2nCKXyKZoeLxITXnz1RP0s5Q/fll2nTo=;
        b=eXA9JP0ASNUflHFv+CQV2hJwR8hBE2byACIroTD1hnBVSwTHQVKT9hPagP/u8HmbnO
         K3b1wXK6zxCbVv52LE8oUmGJsA/wIFaL1fPE2EpysmhXBBQNw5eeGjbMVMqljLX/zeYi
         DdIiTJU7RUf7l15PQpGVcwNMWnQh95+7sOR3oaHzaGd38Wbvs6EZqo41LpVE7UaNoeqK
         ozCf+TLzffyQD9xg06aX6xrt1ZluHZDtdy05zHt5SGTtHtM9jYPnwvCpRGNGEhSKtuF5
         bgT0i+ysS7HY2oj2t65QcK92MUF7FgYlo0Q39AkOH0jC/471nyalJaNVGn3Xj84XuUjR
         /b2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ud6o0IAP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id s128si316042qkh.6.2021.08.18.01.11.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id qe12-20020a17090b4f8c00b00179321cbae7so1822183pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
X-Received: by 2002:a17:90b:4504:: with SMTP id iu4mr8271766pjb.209.1629274282283;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 136sm6743988pge.77.2021.08.18.01.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
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
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH 3/5] treewide: Replace 0-element memcpy() destinations with flexible arrays
Date: Wed, 18 Aug 2021 01:11:16 -0700
Message-Id: <20210818081118.1667663-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818081118.1667663-1-keescook@chromium.org>
References: <20210818081118.1667663-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9667; h=from:subject; bh=pWyGi50I3DoGigMPxMXfi4rXyJiQ6nw3FErUCMEg720=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHMClyDZBWRqepCcCaaLFSu6A+jHJa/aMEBC9Xr26 EKKR8y2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRzApQAKCRCJcvTf3G3AJgFwD/ sFEBeEkAmPeaI817B7jt5/HbQSKJ9EuH/1R/X46YYmKKK2PDo76+cRm5w0hKBD8aQ+KxtqszuQy//2 tSbnMXP/DOnwelANH5FB4/toadqqQGw5socCzFtbQ/KEMOcwnfV7N/VKJMkwk0XsYHAJSFtS/CehL0 9xlNgi+L7QFaiWFtgWw57FWO2cJT877pYQrzp60hL6jS52Bl4hbsAnQuzMl56e1qY5cwCYufqeoky2 nXpo9Zl+FeMUKfJA/6tr5dKitWgFl46DIAiC8kjnStRSaTJwmdPOE+pqvf1ENr7o2gYUOsKU1CMSvI uPGUn7yyFh9CfgeqNWCIH1AuBBCYB8LDMsoGVBIy1fGVCKtwmuIvnrB5yIj98IL7dOCT2pty+319T5 Bns5x91HX+ruQKp0ZC9QzDCG+nA99CgAJMwa2pO69f8AFt1pfEilhpFItoBs1tsQVsU1PXQoOEPrLk /vPh0ZItZgXPNbd/eoe/jlVS1fKnjKJuLs3HFlh1SXDkauYUcnpo6+/mOKQP1JoSMGez07paP7RIWq TwlHslAUB5qHzHBATyyzbRcTN/IniFnAzxWTAgwhlYnvmnDFuTp58Sq2g9zHvmrezQgKtCetFnxBKj RbJbt8WLOaQZ4IbzgLYtTVO9Dw55Q3NhutRjAn+nrmJdyHLI6yEigrwwS8NQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ud6o0IAP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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
 drivers/net/wireless/ath/ath10k/bmi.h         | 12 +++----
 drivers/scsi/qla4xxx/ql4_def.h                |  4 +--
 drivers/staging/r8188eu/include/ieee80211.h   |  6 ++--
 drivers/staging/rtl8712/ieee80211.h           |  4 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |  6 ++--
 include/linux/ieee80211.h                     | 34 +++++++++----------
 include/uapi/linux/dlm_device.h               |  4 +--
 7 files changed, 33 insertions(+), 37 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/bmi.h b/drivers/net/wireless/ath/ath10k/bmi.h
index f6fadcbdd86e..7a9bb97d45c1 100644
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
@@ -159,9 +159,7 @@ struct bmi_cmd {
 } __packed;
 
 union bmi_resp {
-	struct {
-		u8 payload[0];
-	} read_mem;
+	flex_array(u8 payload[]) read_mem;
 	struct {
 		__le32 result;
 	} execute;
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
diff --git a/drivers/staging/r8188eu/include/ieee80211.h b/drivers/staging/r8188eu/include/ieee80211.h
index bc5b030e9c40..9204dd42f319 100644
--- a/drivers/staging/r8188eu/include/ieee80211.h
+++ b/drivers/staging/r8188eu/include/ieee80211.h
@@ -185,7 +185,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 		struct {
 			int command;
@@ -198,7 +198,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 #ifdef CONFIG_88EU_AP_MODE
 		struct {
@@ -210,7 +210,7 @@ struct ieee_param {
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
index d6236f5b069d..c11d7e2d2347 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -172,7 +172,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 	        struct{
 			int command;
@@ -185,7 +185,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 		struct {
 			u16 aid;
@@ -196,7 +196,7 @@ struct ieee_param {
 		} add_sta;
 		struct {
 			u8 reserved[2];/* for set max_num_sta */
-			u8 buf[0];
+			u8 buf[];
 		} bcn_ie;
 	} u;
 };
diff --git a/include/linux/ieee80211.h b/include/linux/ieee80211.h
index a6730072d13a..195084289078 100644
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
@@ -1140,19 +1140,17 @@ struct ieee80211_mgmt {
 			__le16 capab_info;
 			/* followed by some of SSID, Supported rates,
 			 * FH Params, DS Params, CF Params, IBSS Params, TIM */
-			u8 variable[0];
+			u8 variable[];
 		} __packed beacon;
-		struct {
-			/* only variable items: SSID, Supported rates */
-			u8 variable[0];
-		} __packed probe_req;
+		/* only variable items: SSID, Supported rates */
+		flex_array(u8 variable[]) __packed probe_req;
 		struct {
 			__le64 timestamp;
 			__le16 beacon_int;
 			__le16 capab_info;
 			/* followed by some of SSID, Supported rates,
 			 * FH Params, DS Params, CF Params, IBSS Params */
-			u8 variable[0];
+			u8 variable[];
 		} __packed probe_resp;
 		struct {
 			u8 category;
@@ -1161,16 +1159,16 @@ struct ieee80211_mgmt {
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
@@ -1186,7 +1184,7 @@ struct ieee80211_mgmt {
 					__le16 timeout;
 					__le16 start_seq_num;
 					/* followed by BA Extension */
-					u8 variable[0];
+					u8 variable[];
 				} __packed addba_req;
 				struct{
 					u8 action_code;
@@ -1202,11 +1200,11 @@ struct ieee80211_mgmt {
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
@@ -1250,7 +1248,7 @@ struct ieee80211_mgmt {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818081118.1667663-4-keescook%40chromium.org.
