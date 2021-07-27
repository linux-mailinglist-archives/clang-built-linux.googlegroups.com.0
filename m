Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHHHQGEAMGQEBW3XZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D453D7FA7
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:09 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id a6-20020a25ae060000b0290551bbd99700sf175210ybj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419548; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sbUwQXPu+TzTWGEjGoPf3PCKr0chB3Z82OiRs7h/k2+Cc4Qyeju5pVjsQ9d4Qaai4
         VQdM0C57CEgpp0VsptlKSxiQH6OcyyoFbb5GNAThW5W6q9Bm3nFvZtmEOlrBBaN6You+
         FGotMuowN8OcoATxlf5AJkaZyKEyCzi+n5ZKKMddP+bZ0c1VSVylUkwRbXR1jgws4slA
         SekpG2JOau26z5wcxsv8aCToKtRPK+va4vZnyCjEf6cFqpr4OL/ok4FjU3+H6kYdqvST
         uTOBYLnw7XZsZv+p+Ug04Pd1ANacxUWS/dM17NxI7jmz5ij8PouoxkKJdN3lil/wYTmc
         QLYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=r76ssoT8ognE1eG+a5HDrnhdro0ByHV/Wu4fCX4Mc8o=;
        b=EAlX7yu5AdV3ygbNTb5Pp8kVE24x/j7EugGeYt4PxWpYBn/5lopoZyMG39YoYfQg0D
         4wFD0QbZd7On4wc0whxbmF12vhcAIXfmUCbW5+nY9DKv+Q3fYKBCJRqCLaM6nncGtY7m
         3mAfwXS/buN4Qqc4Vl4SsZ2TKfb9wnsydOdpZDQsnVs5Zi7XUKEN8q44E16pLxFIU3b9
         +Y4VATXuJb1ITUomgGbPBMlPDkIyzXvR91Cv8Xk1b6SYgIkKj0Z2mW7M/rva6L72DJXY
         72rgh6HyIO0y6h4RXqk07GFguG3q1S5epRB9Ygb7G9XkbA6BdnKG8sKVfEoQtUKMl+G1
         aXfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oFZ38ngC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r76ssoT8ognE1eG+a5HDrnhdro0ByHV/Wu4fCX4Mc8o=;
        b=XIDc3wsEMt978PrenEiHGiTglTj+nD0JcadpZk1WYwYKfOmCVJDkJnQ3hyQOg4dI9g
         K1iqunZnPc4QCz00XhO9P5K7UoYEod/GaN3PjPcTTK7KWrRkqVSWz6hkrkfTDmqna8Bp
         RUE4dk+BPvgTM0A4bPBdpnpm/aYAMn23gUIQCRbcLyjUL9WCJZNggmdPLl2mT6Un9UAX
         /GetoRBjRjL0PoQ2U6kuNNcHtl5nIOPPg85zUxmOqsm0BY+ISBfQXLuPjngQXf8K2QX4
         J4xyXT1FwUg4gWfmJk1TS8/ylGGWNvuthXaTmoJqte9Qq8i5wLOLwIzsvmKGkJTdswLP
         S4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r76ssoT8ognE1eG+a5HDrnhdro0ByHV/Wu4fCX4Mc8o=;
        b=c0dz+75QiXazYDfjodjII6pvj/rXVHNqsdjBMDeO13yZL/jXuoKirYsRezi/hl0/mg
         MFt01g/Lj0QGG2m+/vk6XOp9oTsCGVhIhUv9NXDcmIb1+FReW2CQFhtF3UAdm+MVcWnA
         8eGtSi+nwI6146g5BFUhf4xtk+pQvY2Oy5TYw0O1PB8mcA0+qMGy8SJBJaiH5cK5T1MV
         R/tzcnzOY9OH+5dHhv1F+SIgZnk6rKWkALBew34zCRKzrVjcooN/LtGhtLaKM67oX4ck
         vAoi56SpAM97HVDRxnsLPrVBVas33QgwHP8O7zUuHL9e1bh0K66eUjz/Nv9ob5m7PvAp
         sWZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dMqnJ3Ex6gu0DmTNiXPcMEr2AXpnehiTT7iKt4MaqaWCTIiXj
	KVT6bz2HB5ABY4VWadWgT5Y=
X-Google-Smtp-Source: ABdhPJxz6kzueBUqG2RVaz8/c2W/aOcusPnU6Lz+TUptPzP1LM6l5S8rCs4fJ9n/ItZwieOmr/yeHg==
X-Received: by 2002:a25:4042:: with SMTP id n63mr17968531yba.254.1627419548777;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:add4:: with SMTP id d20ls108908ybe.5.gmail; Tue, 27 Jul
 2021 13:59:08 -0700 (PDT)
X-Received: by 2002:a05:6902:1209:: with SMTP id s9mr33715673ybu.43.1627419548304;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419548; cv=none;
        d=google.com; s=arc-20160816;
        b=K2/GZliQp5bFcZeouWsaQnY+okDLuT9vmewGsWiYxs1mMAUy3gTjmjnLqHgKRd/yaA
         XWqALy+xrwfH+hnOGwKZXztzLtUcCpcvjPc7wdUptw3gPilEJRGWPY6/5ehGDreB4oLb
         D2KKERYgxEmdHOcbxie9f1LnV6Qbj/xBVo+LKFPTrEAZvaVaiZWzbslyp2XLoHN8kLa0
         K4/gW+Y1Hzmp7R9PAWen6X8FwKrkTZ8zd2ftDd2PnXfZjcYq5DlBGLZNROaz8XNpG9k5
         WQB1/Yn33rYB89hP64Sa/tyhFcg+ijaQsFhmrbwiWa+SmbXbV8EiwHoAIbgEk8z1UoYj
         2UVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ce1JaJ2iLqZ1ByPIR9vq7JUGIWw9MUEqupb8ASz/48w=;
        b=DbItyTShBNOIOclxojtnOaFTqtOOs5UctK8E6OJkMkyblgcgsD7QqAdJYuoR+4wEvV
         96mE7bSfw7lIjvyWtSnlzDn0ADRaawdb+oboRGwrCqllr54sz7aWHDKsnQDjZQslrJYb
         l/pwf1yGd/koW4Pv5AvK5dCSERkn74q4+0KUkQvU8qKm+acmdW2h5V13u3oYiWDhXm5P
         gyRICmkm8nQ1FWDu3800oE2mYbZqkKbpwOBSs8D6tjqOpgyJZ9qvJLEQ/AD0GmVaPOGb
         mlpq3LDNvDxZcyiGFffW8FDaQO5XdL53kympqDwigGGvsJKnXEeQcbWopQWoRozWJJpc
         mGeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oFZ38ngC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id r3si520106ybc.1.2021.07.27.13.59.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id l19so1888012pjz.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
X-Received: by 2002:a65:5684:: with SMTP id v4mr25470763pgs.388.1627419548007;
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f4sm5114783pgi.68.2021.07.27.13.59.03
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
Subject: [PATCH 07/64] staging: rtl8192e: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:57:58 -0700
Message-Id: <20210727205855.411487-8-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4368; h=from:subject; bh=whsZXL1+VyeGGVCEni/WVzZTdGJot/iTzZPaNe8UUr4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOBTnFFuq2+zkjlQr57HB6KOpEDyaB2ijAbcALO MKTd4mmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgQAKCRCJcvTf3G3AJqgfEA CpVSQGeMGU5eUl64arg0mbKqIDJKPLDrfc3TEtQwzpULtWAtStxgtXWkqjgD3gLSOMuwG3ih74xg0+ hTraIVtKZb1lrnvbvn3GZRfBp0n2qpK2QBFNx2/+F5nXotHQOKPORNJRAJydSL2viaQ7OEoyIpM2Me D8nL5yC8ZGHK0A4lVP55GAkIj7LrR+BeEpWkybNkHdiFl+rs+n4d4Y5K5W5VNlMcjt7QuPReCHC+Qv WWBBoNfTHJEW2CoFe5zCDER42ROLFDvt+sDPfKsVQI9Z1vlUsnpX5iYDzQzaEdNq+qiG5STf7DfJpl 7boSirsHUslj5fLDMwcf6eJddWbh6fTv3G3t/wGWDeNMTPM9I87kUfIxdOVlVxwZJTtQzRkVKiO6cj QPIENJ4Jr0y7lIw5VC2PrLb1k1OrOLVMITkShgU/vOEYCHwsAbSV5+hZl++Mr/JP53hPfwiDGK6fkO h4jnthinSH7U1p3zBAyyW/U4j8y0rc+SLpCnVJzA8pK+h/cwKcNF3miP5pu2wcEnonqvq0pO27EukH en9phkwP2ZomfnVI6QII0zHonJUw0qciBinwVIIvS0xAoNPj7fCpwMkcIuj4N/wj+xN3kwpZ7ix0Dv AmxT/glSjzUIz5WJPhvBRwvRJLLJLoIbc44SjjMc/R2fFjtCYNoSHk1KJRtw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oFZ38ngC;       spf=pass
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
rtllib_hdr_4addr, and members qui, qui_type, qui_subtype, version,
and ac_info in struct rtllib_qos_information_element, so they can be
referenced together. This will allow memcpy() and sizeof() to more easily
reason about sizes, improve readability, and avoid future warnings about
writing beyond the end of addr1 and qui.

"pahole" shows no size nor member offset changes to struct
rtllib_hdr_4addr nor struct rtllib_qos_information_element. "objdump -d"
shows no meaningful object code changes (i.e. only source line number
induced differences and optimizations).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/staging/rtl8192e/rtllib.h            | 20 ++++++++++++--------
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c |  3 ++-
 drivers/staging/rtl8192e/rtllib_rx.c         |  8 ++++----
 3 files changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index c6f8b772335c..547579070a82 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -759,9 +759,11 @@ struct rtllib_hdr_3addr {
 struct rtllib_hdr_4addr {
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
@@ -921,11 +923,13 @@ union frameqos {
 struct rtllib_qos_information_element {
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
 
 struct rtllib_qos_ac_parameter {
diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index b60e2a109ce4..66b3a13fced7 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -133,7 +133,8 @@ static int ccmp_init_iv_and_aad(struct rtllib_hdr_4addr *hdr,
 	pos = (u8 *) hdr;
 	aad[0] = pos[0] & 0x8f;
 	aad[1] = pos[1] & 0xc7;
-	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
+	BUILD_BUG_ON(sizeof(hdr->addrs) != (3 * ETH_ALEN));
+	memcpy(aad + 2, &hdr->addrs, 3 * ETH_ALEN);
 	pos = (u8 *) &hdr->seq_ctl;
 	aad[20] = pos[0] & 0x0f;
 	aad[21] = 0; /* all bits masked */
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index c2209c033838..9c4b686d2756 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1576,13 +1576,13 @@ static int rtllib_read_qos_param_element(struct rtllib_qos_parameter_info
 							*info_element)
 {
 	int ret = 0;
-	u16 size = sizeof(struct rtllib_qos_parameter_info) - 2;
+	u16 size = sizeof(element_param->info_element.data);
 
 	if ((info_element == NULL) || (element_param == NULL))
 		return -1;
 
 	if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
-		memcpy(element_param->info_element.qui, info_element->data,
+		memcpy(&element_param->info_element.data, info_element->data,
 		       info_element->len);
 		element_param->info_element.elementID = info_element->id;
 		element_param->info_element.length = info_element->len;
@@ -1601,7 +1601,7 @@ static int rtllib_read_qos_info_element(struct rtllib_qos_information_element
 							*info_element)
 {
 	int ret = 0;
-	u16 size = sizeof(struct rtllib_qos_information_element) - 2;
+	u16 size = sizeof(element_info->data);
 
 	if (element_info == NULL)
 		return -1;
@@ -1610,7 +1610,7 @@ static int rtllib_read_qos_info_element(struct rtllib_qos_information_element
 
 	if ((info_element->id == QOS_ELEMENT_ID) &&
 	    (info_element->len == size)) {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-8-keescook%40chromium.org.
