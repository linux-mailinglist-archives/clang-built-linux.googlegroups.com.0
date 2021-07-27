Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHHHQGEAMGQEBW3XZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED8E3D7FA6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:09 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id g14-20020a17090a4b0eb029017395ea5199sf380338pjh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419548; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVg9CpoMBUB9jztCcXuafh6wrWQ1qVv62+Hu0khqUPLjm5Bryd3IOUGkQJc+fx1FIY
         9NpUAdSc6u+uxqqBxIWvcEh2UGIngacV7Z5Ndfg1Q37IIaaUCvxDgut5WbfHJbo+m2US
         AEWN1dDSUqj3CruUCcLTAj4PR3jFSnt6DBvtpaZ4dTNONr3Yte21ly53aXFS323zZ4m7
         Vd2yL4qDLywdJv93OIqT5/GAKF1HVL+ISe9LecOybeULFMI06Z+3TMNkzq5o+ZuCYBHs
         plRAP4rO1MUKtQCNRATEmYoa/VBHSayoukLfFgTEW30Hs/h/8dXBDoy7oHZolHhf5Ddj
         mJrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/mc07UMXUXULpD0Sib9XVT0ZfY+2q8YOkKihjN6TwhM=;
        b=Bu7euxtrtLh2ZXaAQgfGEirVfM7Eo/8gNCuFEGlNSkyweCoBkyg84I1HuE/OrYLVd9
         CFjZXkYyhVZfzkTDBf0mebzUCA43SX5WImcpbPsJTvGheQV9ElnhGzR5GlF6CLPdR+bE
         z4K2W0NOPwNbRwdTRV9fYs7Wddvt/v4Nkon5yZw/oUp48tCoaLGatYY8/0f71faqYErq
         xiW2lNJDc11WTK2mERyLsEqadN1evD7Dg7C9tMT7/NVZ7cS6GJV+Bi2r9cyecks1mtd9
         Rq+H8SucFiJK3ijj2iXD4mOv1chU4xxCV35CbZ/MmO85jc8ZZ/klT6G3s9MG37/GD20H
         Pjqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IYhfsWGl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/mc07UMXUXULpD0Sib9XVT0ZfY+2q8YOkKihjN6TwhM=;
        b=Kwn55xK7MqK+NLg5rciH77aeBEDSPDivF1cgkMyoKDi6eBkJ/2LLAXDTR2rjYDcgRn
         FaqA0DKoGW1MYwlLe77y2S8C5m7csCjaW0IUhVVu/N2F6PyNcMrdFAeYMFWOAtmHWCmX
         P7f7fe0JhtD44bjJG9jnJef/rXUKW9+zx5gBGIQ6ZfVsFK6/okuRiVyNYXJgC+R5dv1h
         /0mLX70FlNi+GT4f/ORNCPi+T8nTjsZF169lNyVehAOMCPkSH/mILJcFJ737wjdOfjjW
         iSRHE5RwbSMVPzZVLIDDSp0Fzd59zYBo62IcFEeAPpT7iVskGU6XKBTnHi25sEo7+55v
         N68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/mc07UMXUXULpD0Sib9XVT0ZfY+2q8YOkKihjN6TwhM=;
        b=M4Vd/eo5N9Iux9X8v/4KyfsU4NUScXhoY8gBvI5YUfiCo45lzyYw2Ujy/o6OLUqdND
         FiG5Bd22YLODE1GYvWv9M6ndv1ylyOR14jz7FN+KoaRSngIn577w8iBQk9ZDa1CLU+lR
         v4JyRSg6l7kXKBl7Zw3gW/5aU94+xLYsW+ifPOfKF2N8Djs6JrXp/i8hAZ90XXI6kMc6
         7iZMAhucunVGMjs9+PGP8OPAdr+HfsDa7fqKHSXQfDOcuysIL8Afx/G0yaIm+WIjf/M9
         ET+bDxJ2NthpeNhEsuOWmZf8sNkzE1OCmDVdaTnLg4+c2g9soZy0SRxLZ67SnVj7nSGJ
         3umQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531da7wq/Si9Du1i1Bj33uAj0vS6WgaUcfopCNC19HZYIWmW2nH3
	CGjJ+2V7DJVfq0C340I0toE=
X-Google-Smtp-Source: ABdhPJyHJa3vpzoB0jcR3qN96cSBG0/3XNMtZKv8KNYgxtf3vjKcij14VVqaiMZOFLNeZ61eVCrujA==
X-Received: by 2002:a63:4543:: with SMTP id u3mr14921972pgk.423.1627419548373;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f96:: with SMTP id z22ls6028184plo.1.gmail; Tue, 27
 Jul 2021 13:59:07 -0700 (PDT)
X-Received: by 2002:a17:90a:c286:: with SMTP id f6mr443635pjt.121.1627419547878;
        Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419547; cv=none;
        d=google.com; s=arc-20160816;
        b=yU1xz5QuK3zeRU0qOr78pkMNEZpnFsueTpLr5Th4o74XusIzRn0BKn+KlN+pmPbyGK
         N2HnVRGs1GQqyIXvm1tSym9bstcbD5o+guKxpqZRWCF1ioXo42yPpInQFSDp1fSYSvKO
         VNnmOaPOOXtpsKBq40Fa1Dayc5XPGhKQh13iGjsmCNfK8/iQEDbA+lOEthYctf7YlMBj
         0CavvS9QUBeeNwdsIqSyyONDjKZsNULOUCrJy0PN2GVnKOV68cNpqyS0hGYtP0QsoWpU
         0Pqff6SRZKDX7LrYPEnfthxisIUAzwWSSwVIxiER+BV1k3AZXy4B8zwW5eo992umCEW2
         dv6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A3PAzWLU246y1XAJJGWj+zmXxgq3vu+t3uT7F7ts2iM=;
        b=hEBpO7BvgA9/lzBu6O1/6SK8VVF4XaxOhzERNCecPJ7hhKiDOB8Mgc49JQNN3wv3Rr
         nuix1rtOk7iip5aMGzrpMpEqGOLe/c7nRSk02XXCOhBwiNJlYfDATl9Qdlxfc6kiPoJf
         dxVAyiUXAXMMqKqDFVA86DikvnkuNYnhz8mA6PK9AOG/Tz0TM9YL6CBqNs5S3cTD3Urk
         IWFIGgTaAzFtKzLt17rMC5LpUt1mPb+eKinND6SOKVXdxDaWQQedMF2DZrgXt4E7Oniw
         BI3wiiJwrs/ye9OVcInRw/IYX5F39zY6J42Cu9xr9v4BiU914+0HuTLgiW4UDqXAxMbG
         uFYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IYhfsWGl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id o20si355563pgv.1.2021.07.27.13.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id mt6so1831111pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
X-Received: by 2002:a63:4206:: with SMTP id p6mr25847081pga.285.1627419547538;
        Tue, 27 Jul 2021 13:59:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id nm19sm3750853pjb.27.2021.07.27.13.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
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
Subject: [PATCH 08/64] staging: rtl8192u: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:57:59 -0700
Message-Id: <20210727205855.411487-9-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4950; h=from:subject; bh=Auxw1wcSuXLG5PZpqLVm+ToYm1BZgRegEEtY4+3pHw8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOBQir91mVsM70reKpFOtfagOnSNOBMkJbr7LeF cLNYV1eJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgQAKCRCJcvTf3G3AJo2aD/ 4h/gem/XLyVOoZV8fQb32viUj7rAyg4aQwHNkuWJUlBL82B2X54xsC7DFKlCa8N29O8H+qPnwHWT4K 6ICv9SY/cbNJmcNDaVRxa1zStMzYOl04p6xD9WCnFFjK4B+q9LeGI2YR5rnKXwMRVRN62lGGb2tbDG n+B7S4A3Lzj7gnCvw8H/Jh9jykK5MtMYCK3XaA8cM136SS6m+/Mz2jQkeWtGxivZP3JfUY99slNEkG 0LZ6JrK7U2HhCqW+GBrJFottbbgKHmwow4xCoIvuKHVrRe+pSDHtQkB9J3CO3kRk/B4+UUgR29S3N1 WGzHQkQOdCogIIKKhl+dGtRJkzv1E6H3AfsfHn9mRX+rlRVMuWdY7OOtWt09v9kOhJi9TJuYsCUhXd bb2iFWqiDbfnzl1cMyIJwIcRmKPa8iWe3+q44A9MO1491pridbSlGKpf8eOQJKQrrofq4o2cm2VKmy VObV/m/b4dpWYSDq+ecjCOAwd9Q2lNy5lWiCgPg/UTP9q/ZJuT+DhU92dfstVyX0UZsLQY2XjsDTcY +kcirjK4bujmk/nhABsxK1FigYwqICkmpUKU2Nw2NqvaMQuz7GFb/MwXE0F6PrttZzKLnIcWQt2RMg S0RnPStAbsoJy+Iytt3EPyIdRveCUUfgivtpUg6QthiMPmFTasWv4patQHMQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IYhfsWGl;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

Use struct_group() around members addr1, addr2, and addr3 in struct
rtl_80211_hdr_4addr, and members qui, qui_type, qui_subtype, version,
and ac_info in struct ieee80211_qos_information_element, so they can be
referenced together. This will allow memcpy() and sizeof() to more easily
reason about sizes, improve readability, and avoid future warnings about
writing beyond the end of addr1 and qui. Additionally replace zero sized
arrays with flexible arrays in struct ieee_param.

"pahole" shows no size nor member offset changes to struct
rtl_80211_hdr_4addr nor struct ieee80211_qos_information_element. "objdump
-d" shows no meaningful object code changes (i.e. only source line number
induced differences and optimizations).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 .../staging/rtl8192u/ieee80211/ieee80211.h    | 24 +++++++++++--------
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |  3 ++-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c |  8 +++----
 3 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 7903c777a417..6ae8d7504558 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -303,7 +303,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 		struct{
 			int command;
@@ -316,7 +316,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 	} u;
 };
@@ -917,9 +917,11 @@ struct rtl_80211_hdr_3addr {
 struct rtl_80211_hdr_4addr {
 	__le16 frame_ctl;
 	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN];
-	u8 addr3[ETH_ALEN];
+	struct_group(addrs,
+		u8 addr1[ETH_ALEN];
+		u8 addr2[ETH_ALEN];
+		u8 addr3[ETH_ALEN];
+	);
 	__le16 seq_ctl;
 	u8 addr4[ETH_ALEN];
 	u8 payload[];
@@ -1100,11 +1102,13 @@ typedef union _frameqos {
 struct ieee80211_qos_information_element {
 	u8 elementID;
 	u8 length;
-	u8 qui[QOS_OUI_LEN];
-	u8 qui_type;
-	u8 qui_subtype;
-	u8 version;
-	u8 ac_info;
+	struct_group(data,
+		u8 qui[QOS_OUI_LEN];
+		u8 qui_type;
+		u8 qui_subtype;
+		u8 version;
+		u8 ac_info;
+	);
 } __packed;
 
 struct ieee80211_qos_ac_parameter {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index c241cf484023..61f9a189c90c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -141,7 +141,8 @@ static int ccmp_init_iv_and_aad(struct rtl_80211_hdr_4addr *hdr,
 	pos = (u8 *)hdr;
 	aad[0] = pos[0] & 0x8f;
 	aad[1] = pos[1] & 0xc7;
-	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
+	BUILD_BUG_ON(sizeof(hdr->addrs) != 3 * ETH_ALEN);
+	memcpy(aad + 2, &hdr->addrs, 3 * ETH_ALEN);
 	pos = (u8 *)&hdr->seq_ctl;
 	aad[20] = pos[0] & 0x0f;
 	aad[21] = 0; /* all bits masked */
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index b0e01ee65f7f..d5557ee0a3b7 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1332,13 +1332,13 @@ static int ieee80211_read_qos_param_element(struct ieee80211_qos_parameter_info
 					    *info_element)
 {
 	int ret = 0;
-	u16 size = sizeof(struct ieee80211_qos_parameter_info) - 2;
+	u16 size = sizeof(element_param->info_element.data);
 
 	if (!info_element || !element_param)
 		return -1;
 
 	if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
-		memcpy(element_param->info_element.qui, info_element->data,
+		memcpy(&element_param->info_element.data, info_element->data,
 		       info_element->len);
 		element_param->info_element.elementID = info_element->id;
 		element_param->info_element.length = info_element->len;
@@ -1358,7 +1358,7 @@ static int ieee80211_read_qos_info_element(
 		struct ieee80211_info_element *info_element)
 {
 	int ret = 0;
-	u16 size = sizeof(struct ieee80211_qos_information_element) - 2;
+	u16 size = sizeof(element_info->data);
 
 	if (!element_info)
 		return -1;
@@ -1366,7 +1366,7 @@ static int ieee80211_read_qos_info_element(
 		return -1;
 
 	if ((info_element->id == QOS_ELEMENT_ID) && (info_element->len == size)) {
-		memcpy(element_info->qui, info_element->data,
+		memcpy(&element_info->data, info_element->data,
 		       info_element->len);
 		element_info->elementID = info_element->id;
 		element_info->length = info_element->len;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-9-keescook%40chromium.org.
