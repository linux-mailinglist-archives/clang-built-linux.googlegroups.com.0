Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQGG6KEAMGQEYWK2RWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id C16183EFA90
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:53 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id m10-20020a056214158ab029035a6c1e5f3esf1506218qvw.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266753; cv=pass;
        d=google.com; s=arc-20160816;
        b=kv+U59lQAoPzQl32vMh9VHPvqiU72nu6EkpfL6ltFmPpAg2VDO4TFSTju0Q1PgZn4+
         lOGGwKvrmQ7xm/V5pHS8JS2Y43CvMWxX8Pq/8CIxARLF7HsDGZmzHXi/wNnIEU7dUhZW
         sv8KQ8AqyotXym1k3atA+//fvEkl7ju4bvbaopEjvpe91K3Plg8PaEDY43QWiyE7IQk2
         BKpk+q27gpt1qJRGn72v1a7+LDc43Zj4D4cvtuRfiTpVjhEBxSIJYb4guKbkdsKbie/0
         lwZWMcEaw7D8Gg8CiOvN4oFSn3GSA8KYd/GQHT1l/sZvwYeJTUxVTuygBPNMz8ziVXWr
         bUlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V+5aJ4tMvxT5zvwaZ1m1hP8ZhQ+yvuUCwzTj2T8+waw=;
        b=lYGMyHL1Pgo3zlPhk+DATgJxdxQb7d+vomB00g4SjmCFSaJlXhI14pht2WgQJtk93l
         cUkuvidJs/sMQWPPXo9OpnWJaL1dkgrMX0tDdpMlDDG18/0cllHcecj70sU+g2TJufw8
         R5huY7rqMU0E1//fda6eRpefNalpRGb5mv67gyj61tz7xXChTSPV/ZeB0R6i4p8uWp9r
         4W5ttcAOblcaM7/ttFHdqpmamVPPLDQvo8Ns7pCz9fNZ3W/pYP2nA8/cMuiEW12Q966d
         44n7nklhb6zXp4KClE/D1kTfyuB0NKybhVSzGp5jZ4OEL+gQw5qSnBbPNOqv3XG5kTFB
         w0sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UbvCFEyR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+5aJ4tMvxT5zvwaZ1m1hP8ZhQ+yvuUCwzTj2T8+waw=;
        b=j9F554AMSC4Ym41xJ1PQerOI7ZM/aLDQbe5HL5Ern6OZbA2NjFsjsdi+6o1c441n08
         MgF5YL/LWM5S5Dd6Q3dZU35EdbiU/0p01ggBO+Wh8adTsQLY9ImIlpJAA5mrrFiebQGJ
         W6FZUeIUScxE60CEvfTKcnM0Fnw92H8aVdID591YiaHXWBINK9NULI0OlhPiHRun2Lls
         aF3pPXgbQGswb8dN+17GT/haDISWdEQEx2SLIaRqUZ2LmynNV1VtvQStcfWV0nucG/uH
         dMQ7Vt2p0KZw7FoI3bGMNsS4MlpSulYt6zTdqxX4msgFZZ8M5SE7lrnvabZtIkYZpMto
         TeiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+5aJ4tMvxT5zvwaZ1m1hP8ZhQ+yvuUCwzTj2T8+waw=;
        b=GlIU0XygZ7Y8LObZEC6wQIcuvGDnn6iKWzh54EhGOmKnA5cprrvdtWyYprMhzIpb1F
         F/ZYd19cl8ovO+gYjhpUbNUiQ0rW/rTn2pyMKx0yY3DYVAVIa+eXMBk+RzmkWXkh7JEv
         rIKkMado8gD3Nr32cb0Mx3x3VDRWMdWUh8+xea/m58xelqv32rf3/g/4oAPv/KFPbMfW
         06aNDh8zoRMkbgpOLyABZjDM8Dd7MKSsajWPn1HXtAKou3EUeAQ7zHG1sqMHGsM2LWYc
         JBxvfnvfAP9JvnDyzXPvrwRIO46WdNcRV75h59YsCre1qGtDIVVQvLgFNxHqlr5KEL/b
         +maA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rNS0uZDMCFOPopuRIBDEaW0vA35M569tjnolLS7PTJrknMPzu
	ZB1LL1yW46bgCrLQnVY3fhE=
X-Google-Smtp-Source: ABdhPJzjgz5iFdtCUG7IGbUz9bwQJLhizg7doQNSQkmsNNsuB6qjiXZGH90F9WdTLhmqQZNb0oPmNQ==
X-Received: by 2002:a37:5dc2:: with SMTP id r185mr7867227qkb.186.1629266752921;
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:611b:: with SMTP id a27ls507933qtm.10.gmail; Tue, 17 Aug
 2021 23:05:52 -0700 (PDT)
X-Received: by 2002:ac8:5fcf:: with SMTP id k15mr4425806qta.137.1629266752389;
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266752; cv=none;
        d=google.com; s=arc-20160816;
        b=VgldvEIMThKERuFEn+IZY4/Xkqy3J+1OnEYqZwB8RxJzTkZLUO0ilUKxfl0L/tns1t
         sM28mD9e0shJ2Wm2S4OVDw/y6FmWvpKKiylNtzuWln3t5aFJcw9p9ay2BQA705J1VH0I
         fLPA6b+BzCHKvAb593Kn2EfLBt1brsjhA3h9BNSaHCBqVci8v5byish5J6IYlG6hdt00
         Uk7Rtbk4qLj/qDEqOBUUZKFCG0ShLHi/uNYIitIB4k/xm3iVc/5PPUgTvNB+dwR5CRcb
         kXm+6JnRHjovxckmTlJ76ZUTsloxl9gH3LWAZJMzifgMrdV0K5a0ZohgW8p6o6HEu/Ze
         OTRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=23NqigPoreurbrTRI3DzstnCrCz1u9qo8AUicrCllIQ=;
        b=dyW42xIjPRRGWsxkR3bvut3U0g6oFX0+MW0/zNUh0COtJ55ylu2kx2iY5zMcyFP3G3
         bzDHq+BNW/bHStd45FcnqTCPdC4V9YsXzaZAvtpD/VX+0cFD1fPxGY+vgL4qeQ6d14dh
         3e+zM7W28jA9mifHuALilReSIHfcvEAFcQQFADD1DJPsDEtXRKSmmqInwRY0QVydHSkV
         aUIP8upo4v6ffesF+UWjKpmElMjocyiQMGsY6mJ7xpvQelo7N45KaeaXz88Bi+nE4+2O
         a5IjnNJzfz6B5/RT4tV7VwFSUGES4HvMPT3+He2qTd3Saknn8XqNDlAiNIBEc4bs9KVn
         oxgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UbvCFEyR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id f13si206343qko.2.2021.08.17.23.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id q2so1140816pgt.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:16d2:b029:300:200b:6572 with SMTP id l18-20020a056a0016d2b0290300200b6572mr7570097pfc.62.1629266751598;
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l6sm4585677pff.74.2021.08.17.23.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Stanislav Yakovlev <stas.yakovlev@gmail.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
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
Subject: [PATCH v2 01/63] ipw2x00: Avoid field-overflowing memcpy()
Date: Tue, 17 Aug 2021 23:04:31 -0700
Message-Id: <20210818060533.3569517-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4716; h=from:subject; bh=3b5t4fLR/wEetR2E8Hwk2j3VzU8yz2BgAEsleqg3XAU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMd3RE3VXLm1V4wHPPpY4uHLTNlH2i9cpT7/zcX 6bMNqjOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHQAKCRCJcvTf3G3AJhpED/ 9b4pyd/DG5mv5Tblws3aMWZNDSeCRn3/s9TjbgOMXM4o11x/1+ZleM6Vk2EDLRI/StjZkH7suUShf9 pz8qPCLJYcMOnhXplowR65ecymaR26AWdAh+maUgxLzeDfaqIYCYeE1R/AQ0WwLm+5Exoa4ZI5WS0f rqmhbs0ehQFD4CZMRmfHfUrVstRDcMCvaGy4vJOILTRKBHVmbSZT9t4ZS26+G0Gn3/MfEpQl02c5VG giy+jakP/HC0SaKYh6fz0PynTwGctBrg0Jtrm+P5sBZ5LrYnPR4gQcC+zRGDLNvr9SJfvI3/F80g1h nBOlSrzvmz1/1UBqHvztStqbaaBG+fsJReRuAfOS4pPpyfoSreYc0FSty2WowsZKIQG4KRrFpPJq8y oyVcu4SpPwu0e+hpIT5XJ/ZlUJ3z+GSZyrMGUWADhlMLpd7MuTx1T01Z2DheK2fn7PAfCsewxY48vA klRgq5EmEm78Ws6wLDcon05s0EfYr4KarT1JdG+fV2JuY2Ks6lWjaiGXCMr3QOUuFt3P5lmt4vhwnj EdC/X6leqQSQ89oEFJBzrtCAV0vFOs8DxlHiDaWhg8+sGBq2zvBRy+rxcDyNI36k1pUC1aChW0369A Gf5WfOMa8Bm/SsspWmkkegUh+h5Z0fYmtTzn/GA0ekK/0u14dQxgyN2mEtFg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UbvCFEyR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
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

libipw_read_qos_param_element() copies a struct libipw_info_element
into a struct libipw_qos_information_element, but is actually wanting to
copy into the larger struct libipw_qos_parameter_info (the contents of
ac_params_record[] is later examined). Refactor the routine to perform
centralized checks, and copy the entire contents directly (since the id
and len members match the elementID and length members):

struct libipw_info_element {
        u8 id;
        u8 len;
        u8 data[];
} __packed;

struct libipw_qos_information_element {
        u8 elementID;
        u8 length;
        u8 qui[QOS_OUI_LEN];
        u8 qui_type;
        u8 qui_subtype;
        u8 version;
        u8 ac_info;
} __packed;

struct libipw_qos_parameter_info {
        struct libipw_qos_information_element info_element;
        u8 reserved;
        struct libipw_qos_ac_parameter ac_params_record[QOS_QUEUE_NUM];
} __packed;

Cc: Stanislav Yakovlev <stas.yakovlev@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 .../net/wireless/intel/ipw2x00/libipw_rx.c    | 56 ++++++-------------
 1 file changed, 17 insertions(+), 39 deletions(-)

diff --git a/drivers/net/wireless/intel/ipw2x00/libipw_rx.c b/drivers/net/wireless/intel/ipw2x00/libipw_rx.c
index 5a2a723e480b..7a684b76f39b 100644
--- a/drivers/net/wireless/intel/ipw2x00/libipw_rx.c
+++ b/drivers/net/wireless/intel/ipw2x00/libipw_rx.c
@@ -927,7 +927,8 @@ static u8 qos_oui[QOS_OUI_LEN] = { 0x00, 0x50, 0xF2 };
 static int libipw_verify_qos_info(struct libipw_qos_information_element
 				     *info_element, int sub_type)
 {
-
+	if (info_element->elementID != QOS_ELEMENT_ID)
+		return -1;
 	if (info_element->qui_subtype != sub_type)
 		return -1;
 	if (memcmp(info_element->qui, qos_oui, QOS_OUI_LEN))
@@ -943,57 +944,34 @@ static int libipw_verify_qos_info(struct libipw_qos_information_element
 /*
  * Parse a QoS parameter element
  */
-static int libipw_read_qos_param_element(struct libipw_qos_parameter_info
-					    *element_param, struct libipw_info_element
-					    *info_element)
+static int libipw_read_qos_param_element(
+			struct libipw_qos_parameter_info *element_param,
+			struct libipw_info_element *info_element)
 {
-	int ret = 0;
-	u16 size = sizeof(struct libipw_qos_parameter_info) - 2;
+	size_t size = sizeof(*element_param);
 
-	if ((info_element == NULL) || (element_param == NULL))
+	if (!element_param || !info_element || info_element->len != size - 2)
 		return -1;
 
-	if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
-		memcpy(element_param->info_element.qui, info_element->data,
-		       info_element->len);
-		element_param->info_element.elementID = info_element->id;
-		element_param->info_element.length = info_element->len;
-	} else
-		ret = -1;
-	if (ret == 0)
-		ret = libipw_verify_qos_info(&element_param->info_element,
-						QOS_OUI_PARAM_SUB_TYPE);
-	return ret;
+	memcpy(element_param, info_element, size);
+	return libipw_verify_qos_info(&element_param->info_element,
+				      QOS_OUI_PARAM_SUB_TYPE);
 }
 
 /*
  * Parse a QoS information element
  */
-static int libipw_read_qos_info_element(struct
-					   libipw_qos_information_element
-					   *element_info, struct libipw_info_element
-					   *info_element)
+static int libipw_read_qos_info_element(
+			struct libipw_qos_information_element *element_info,
+			struct libipw_info_element *info_element)
 {
-	int ret = 0;
-	u16 size = sizeof(struct libipw_qos_information_element) - 2;
+	size_t size = sizeof(struct libipw_qos_information_element) - 2;
 
-	if (element_info == NULL)
+	if (!element_info || !info_element || info_element->len != size - 2)
 		return -1;
-	if (info_element == NULL)
-		return -1;
-
-	if ((info_element->id == QOS_ELEMENT_ID) && (info_element->len == size)) {
-		memcpy(element_info->qui, info_element->data,
-		       info_element->len);
-		element_info->elementID = info_element->id;
-		element_info->length = info_element->len;
-	} else
-		ret = -1;
 
-	if (ret == 0)
-		ret = libipw_verify_qos_info(element_info,
-						QOS_OUI_INFO_SUB_TYPE);
-	return ret;
+	memcpy(element_info, info_element, size);
+	return libipw_verify_qos_info(element_info, QOS_OUI_INFO_SUB_TYPE);
 }
 
 /*
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-2-keescook%40chromium.org.
