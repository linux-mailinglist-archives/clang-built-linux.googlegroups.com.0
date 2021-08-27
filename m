Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIFGUSEQMGQEPASYF5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E81A83F9C72
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:30:25 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id 11-20020aca090b0000b02902684dd1d9a5sf602141oij.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:30:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081825; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9YiEdPShPzZ1maBASNBnf7SmUF+HI3a5n1QO+r9HR5zb1mlOz2IoGSuhrd1kbaSRk
         pQ3+fn7Z1xLrgdcemU3xCjceD67zk4YJ7SSrk7rl4Sr2HTKm55vKtfZfTQNYvPMPDoz5
         O6a/CCkQ0tZS8MtYuih36PSH3njGB6w5mvP3FoCjmPo5Todkpqtii8RdveZLZ3ex6+XQ
         zPdJCz43FqoTnanxYPrsMxCSnB/8eYYmn+L/2LqOzySTsPzNFaLCOf0G1qNETKUWb5WP
         wuYup9kSLjrAJS71oskktNLXImtZWChu3OxzSeL9iWXGprmrucaOrZJDZhyvA9Y8SGWZ
         QeEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FYJ1acD1s++gB9xQNJywNCtdasL1zQ3lp3FaHinsfnI=;
        b=HTMvOmQA08Stm+Nc/gJDLQLt2WMaRWnNO6g+Mf/KgCkNZoGEInHPScZotLUipvvr/7
         E+JwHTBUg8yxdmfTWucdesUmDaAZVrrf+1Qaj3KLZIpEQ1bDCGABsKm7G9VlHAFENrI/
         MYSHBT/JP9neUEQXkBHkS4R9nyYMjJzbq9HiEJ/oLw025J6HvkxuE8T4MfQErHmYjZx5
         SHSWXYAvMrIGmgmIvrWpCjOQaLtayEoWFMQFAI9YX0i3L9v5Rv97kfnQnYJuKspa0DOZ
         YlydQHZmdPNZP2C/b8LioXACzLOi5nK5kujc6ZRWIEiYOJXomqYcLpdQkq+GCR660zws
         S/9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OmnqFAP7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYJ1acD1s++gB9xQNJywNCtdasL1zQ3lp3FaHinsfnI=;
        b=hV845arknY4KyKBkcFW4fwh/X1TMVHdlshuJE1ij3mq4S5EY4xRlwB9w35ZWlX+MyB
         De2OhqzXe1WyWMNzHaNQSr7ysPXQ+OBUO8IkB7DKaGfFj21O0zAN6FGeG4a73EU7Vvfr
         yJm08W9GuS5CXKblajZ5tzV7dh210uIU5lNzmccCbBnPkab736oSTclkXMoZ5CXB8wVA
         ZqcgAMsE8UDBSKM3dQsYtWBkjhpE/kqiv0fP52H5buENLYsiT8DkRtiL311HZl8yapTF
         22cJQh/r1laLWLDEwwBgCWjoPKln4GOfVfifMXXu8VZwZZq6XeVndGUelDD85I+qziv+
         VN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYJ1acD1s++gB9xQNJywNCtdasL1zQ3lp3FaHinsfnI=;
        b=cU3H+sheWf9T6orChFATbDO8ACzMSRUIPRM+rNq5aLCRox1xtBVLQ6b2XWFnvSTn9A
         y7qBV9AxLumyuiue2VJ5kqCnMEHTeDLNHu+PHIpFaptWSuBtMZf9qL0eDIq0AQdmAbYe
         i+WmEAqj2SjsGvGtKmqgn9qUKF85Osqn49WkQDE381a2WjSdz0TFm8TJTKZFkdvaNflq
         kDaqRGEHWumimuGxJPyRST0hmhXHi+gApBnBgJ0yTwxsflN/w/z7WtejodjCpVPoavAB
         EbtipuhkLlmhlF20Wy9eURvNIGJZkIP1yxbla17Wrx2ERJ4tgRPP+rClnz6Lxo56gtVp
         SNRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hi+Gnnu2fSv84xp1SUBW9GmsieRQwBZN91a80EBKIYxxGmIBK
	3VmeVyyqoHpQDUCzeQCnsgI=
X-Google-Smtp-Source: ABdhPJxGzeFEac5KM3NPykMYjdU45MJwURtmVlldIrRY9mfrWy836+Zlms7M68/aNoqNcrc9GZ/Gkw==
X-Received: by 2002:a05:6830:214c:: with SMTP id r12mr9199757otd.200.1630081824906;
        Fri, 27 Aug 2021 09:30:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e87:: with SMTP id n7ls2677234otr.4.gmail; Fri, 27
 Aug 2021 09:30:24 -0700 (PDT)
X-Received: by 2002:a9d:17c2:: with SMTP id j60mr9092350otj.128.1630081824512;
        Fri, 27 Aug 2021 09:30:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081824; cv=none;
        d=google.com; s=arc-20160816;
        b=sBluvNkbC+4DBeXm9mkuCJgJ9FwdrL3Cn5lG7jITA/8HKGaOlfQwu6wVVVECPJkFZ3
         UrgQ+NdIi1KSRPe2wAycdqo7+ZBEMDQikOtwwsv8S85OguR7LrzuykT5wQeyb+gmg3sw
         XNjQa7UGJCayswApHraK8j9nVqVXfirfZZdgd+cavH45CUY2xqM/tcXob/eMk7v0cnux
         y2SE5wQqoaFrzayIE4+WEQgxdgtATKCPhkBIheISvHnnw+KGjN8d/F2uc58sFebUHZx8
         gXqAaTjwux7IBoObcr8XSZpeWJRp+vBBgeL9iUmiJRiu04X5QSkGo4I84kBTWSrSb52U
         penw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1psCo0hHdSsvpvZi1i10TA+ZorhOo3SQLpKqrNnbpKQ=;
        b=nHomLm/VSMYupOKrlPUibql4bIQpW2boJySOaF27Mvw5qKR9UGCj1gLHT9SoMJIGm7
         vpYzi3LFkfqJaJzdGkJjugYKcwbKakvRHTcJgpmDSCUxDm7mvW+SCkIOKMp4CDCc5im8
         ycNhdAYIItpEQ8syAV/LNPUsqf5BJCCQ/NAomyBuSZOPRZbphVUv9qNrYHrIdGfyxY5A
         TuqkixYA1DhcDsiiVQx9cPg0ij4/wDouJRKx/8/jA8n0L7UuzGhzlqS2x4tlBr1DpaR+
         h23sRqF+PXbl9dgwMjbYnVpR1bzjthjOkiRagAUWaByo5HIoxVBCpn6v5Nzmhh8oJWmv
         sEvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OmnqFAP7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id c9si601247ook.2.2021.08.27.09.30.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:30:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id 7so6111948pfl.10
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:30:24 -0700 (PDT)
X-Received: by 2002:a63:68a:: with SMTP id 132mr8698863pgg.154.1630081823959;
        Fri, 27 Aug 2021 09:30:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x16sm7444590pgc.49.2021.08.27.09.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:30:18 -0700 (PDT)
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
Subject: [PATCH v3 3/5] treewide: Replace 0-element memcpy() destinations with flexible arrays
Date: Fri, 27 Aug 2021 09:30:13 -0700
Message-Id: <20210827163015.3141722-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210827163015.3141722-1-keescook@chromium.org>
References: <20210827163015.3141722-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9615; h=from:subject; bh=DQFK9rz+vbtwSe8m1jRGSzDk89AmiraaMvJ3vzaHm8Y=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhKRMWNfZsDewA0npSo8PMQq7ndkNGBWcmzgJmKRrJ 1BkWyaKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSkTFgAKCRCJcvTf3G3AJr0uD/ 4mAYPTqz/QSFVNhxAMqLvTQS1+RgNFauOCioQYwm1AMJdQ8XhUGVPZ5u7bpT77mQ4ShRsILG1SKcRq X2v0DzW0lK/aU0unUk0NzIIVHn5L2izCW1x66txy02zy1EMGvgy7A4k25ef19jKZn5W0nYlHFokzsB OmUn/u9jfMVp0lQlJZYc5u+oLNwFHerFEME+eQuB2GPR2MXgGmItzHkhlJ3rg5zOITlORtNZxpTuQE cJa6WU27FaSI4SzOoLDXs2bJ8/uNKRq6Rm1fLN0IFrV6TxBUExu2x9TDuCPrLsayDjtWDSed96v4k3 wf7j2rtoN4ra8X84L3mtuBv0ye7UDIiMJrBxwqqmJLPsiNLECTfh/s8YcmypPEMFyIrQx5lHhQEFgU yIcdbY5hY/Ok2A2Jh9vgkjghochXbxfy1R7sboEoh9ZipKOWdIQEIt+Ihat2UsOcNi7XQRsoVM/UhF 4zRfIi3vicfpkpZGiU/orZN69+ouZyzFrNKcsK6TgjJVBU0cZR148+Pi0cb3phPtxrczreV4TbQTIw 2raMJPQBueGoeiduPt9tuBXiwVseZeVNQHRSk9A33Vkod3D6cjAVs/jPrlFG64umQd1zgHY7FFYjpJ rj9R4U+O5+aKEKzGT+UWyv+E+X7NizZ0dcfT+jBtMTEqj6BRx8G/j32rnqLQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OmnqFAP7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436
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

In some cases, use of the DECLARE_FLEX_ARRAY() helper is needed when a
flexible array is alone in a struct.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827163015.3141722-4-keescook%40chromium.org.
