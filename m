Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH7HQGEAMGQEYSLUDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DB01F3D7FAD
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:12 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id a16-20020a92d3500000b02902087dbca2b6sf276838ilh.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419552; cv=pass;
        d=google.com; s=arc-20160816;
        b=YfgI0G12HmAV9i2VYmMTbn03v5058iNgszqvnuYdyXVhsd07QBFylUO50JqJADodn4
         n0znYN0z02wEAj7ZYjduu5WA9d8UsYBvCqlmGpAKPj5PvFvmv1FtvwsnctKURysmE4ir
         kZVY+q0cg14CgOJ0tQH9/keZVvVap4zjW0xEc7GnKcMymYqVscml1zsi3YT6iu6qkV13
         sYl5SP++FeJ5p6/L8aA5iv4TlP8aWLhjHKqoEmEzGxX3MAuVum7KdqT+WFC8WZy3av1g
         ob9gOohISo1rXzsG7IZtUg00fpm8wsUUg8QaWUT0yG9NsZf7OkpjiBJtF6en9/8cTeXX
         L+Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=A4ESzbuAPtGeGtrrh+vo9NPVjzcPmeEP7DW2AQxZXFs=;
        b=waRxtBLFK9im2b54F6mD+7CBsH3E19Ue3tOwZX814ZJ5G8hk2XYkgvkfbyBuvUZtop
         B04j7WU68vmcRNHM2+68KRpV0tqdX6hAC2dkgFfWIXt4I5AwAWN3puIWFcB4lYSuB4nT
         Bn+s4w25k3KypwniRQabddSPU6Ww2/NlFJAVZaG686MaYrUzmxox10LItg5YsK0d99A0
         1j/DlgUdsGT4yrB9Gzp1fHIJ47lo9e3aOKCi/uR4kq7PR2CxTniPt4IzChVJi6qzwY5z
         isyTSjfOGwc9tEbAF8j6Qh3kBUkCZb5Em9Ek/g3II32/RrGtEM++st6DpvkrM/Jn7198
         qIQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a+dkLFxy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4ESzbuAPtGeGtrrh+vo9NPVjzcPmeEP7DW2AQxZXFs=;
        b=c8gqWkGvCs6luN6WkFVF4fMk9JLA4O7VnfGPkzuFGhEOOnlEOE/CO5V6S7G5gl8pg/
         vgDzTb8VzEuehlXIVKKL9cJ/wGYRMcdTRGUfgcm95JgH/yTK06BCfq5eZYqi+HFZEJpT
         A8vSDnQYJSlBH2wiXcRWv3RYTfMX0tI5OumIkGV3JqxGonUPLXLu3khZ8FesSHNLfSbu
         oe6cRK5DIbM9piVNInrPloQwJ8Z30LL9X/ueK3ZL4s4vhw0vi8vhKK2khI2/DbScX/Gp
         E7EFm3gwgyMpHBle0VvnYTUiU1N3NyrOek1cwNHRyboF5DOfQHyr3kT0LPjEB3FCWWK/
         MZiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4ESzbuAPtGeGtrrh+vo9NPVjzcPmeEP7DW2AQxZXFs=;
        b=ZTlvchPXTnOj9oIYkqooNV6Lmvh7aRtQmisQ4AUe8yBNlKPeTyT3botR1sz8Dk5toO
         FdK+Mrma5Z1Cjlh5FZMN5GBS3Q5FLkaYlyO5WtsiiG/uK0sODD8p+jfjImms12OqWAeI
         c326NPgbHwn0koQz+WAHnnzQzEDHJk0nfA9KifzkTB/lzqaoAF1OSRRfcKvXEJ/Z5R/g
         dZL83DN62PvMx9A4S2IHOXYttSnoqyq7FF9zE7636sGmoN6nwKG2gHPYYTVFuDUrHnF3
         LIUrgVT0WM6W15obRjQNAVf3+89DpJbQXxJcZDtSm7zyn3oM22jAVS0CksH1OC7K7v61
         vaSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IZb0EX0xfarHoIj4wg37Ndi1ueg1DDPtQ+jGj+uYSfnecYhG7
	0vRpTHxWNge5RR+kihWi9cI=
X-Google-Smtp-Source: ABdhPJxyxJF/yWeW6khdZniwQqNi5SLoXweC5vpKl2TsyN4pXoXvBxpgYXM+nhCrxIZR9T3gmdWhZw==
X-Received: by 2002:a92:de0a:: with SMTP id x10mr18170845ilm.215.1627419551934;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:17cb:: with SMTP id z11ls27093iox.0.gmail; Tue, 27
 Jul 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a05:6602:1647:: with SMTP id y7mr20674157iow.30.1627419551634;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419551; cv=none;
        d=google.com; s=arc-20160816;
        b=rgoq8KRtkjzxjDh/J5Pn0vCsLI92POhwNtSrvwatd6w+AdJ+536feBKGGCJQhbR1R3
         KWUq6qeI+U/gWCNWe41iCjWFaik79ic7FIiyaM5BDE4dUScw/KR1QarODT2J9BLDcnYT
         cbR1u/I5sqKYkNzTU8j2oWZw9vPe+rMM7FYsa3rgnzIE4xeOLsPajRZma31W464ofDTL
         Tr+jmN7Z9o5ZZgUj/4QsYVXnoNInJzE8j3k/WAIsmKHXYmbVGrV8sC0iodD2Iy4a2iqB
         fMjnFww4rMS/SzQK3ChngYu3Z5eWSm5QwldqE4+aAMGDLFhIUX44CuAfuE/6VcSmCnUm
         HoUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=niMj9CXz4ejnw+kzGNZe1+bUFXSbgDhe9sFS3VQ9miI=;
        b=gflmmRtLhM1+og5pLqH1OOOSBeIHgKGZI6BfW88tvTSBWzpcupuHJ+QVOKRor5z9X9
         oriuCw/HYH6lPbkLFwjbVXsmokEolS72pFtdzT19U5jNOtlFVnY3E3z0kl/Ovif/hVP7
         HvEn+Cvx8sAbea61ToNgR0OoAdY07AfxDZu892ZDlYaf9Wt9ykslEJT4IxMJhCFonluW
         dUMCqjENLxD7gl82iZwhy4xhJae0VvcBb7g0c5Q8LUyS4N+3JupRgCS9g719Q37/syZ5
         Vko8FvJiTxjxltSRQr9V60h8KFeIDX6/LRxiw8L38+IXVrtDJYhkRRsUMrIqoVGevDtO
         lUdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a+dkLFxy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id b11si269188iln.5.2021.07.27.13.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so997047pji.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a63:2586:: with SMTP id l128mr26012275pgl.68.1627419551372;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j13sm5025493pgp.29.2021.07.27.13.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
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
Subject: [PATCH 15/64] ipw2x00: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:06 -0700
Message-Id: <20210727205855.411487-16-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3321; h=from:subject; bh=0Nhl+lV3cEcT5lOU4zXDLwJTWM/l7DZ+/5ez9PThfHU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHODmdLOpeLBo/X7lz0zzh+JJDwEkaDN00Z8kMzv sILJmNmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgwAKCRCJcvTf3G3AJqu3EA CgffJsGtT8m9lsKheu7s+yA1eAMukcAQ13t72QJcc8A2IdLK2lwV9x8QVh9uUd3041NW91qDNI+Czs 3k2PBePcLrqYo+rdGa4Fs/X3zYzBDuEQKSmIYIkoJBe2xr+niqqh7xhFf/5ghdEYzaVZ0zGolFf8it 26bmcWDMOOoHxklGwf6NXQYQfYTg0hdDkG2BM1l7UXEbXz2oREhTB+LtbTnn0Hj4OfW7ZiO0CPrkhI lKRNotmC8/XbWEzRldEuybAi7+tknghi8uuLE+9GIz7AC4Fe6UXopDTqzxyP6j+beO0cI5K8QQPYQl 42woosmLzvhziq8Gj3/SzeQTJF9WacNXul30sJfOMm0mwZMl3y9Z2UvHeW2Q1tzzCZvtSChEQJMlJv VPnGbrapT0zmmokAsquizS99ri3WqvRQ4aa/1HPQLQxPLdEV0mfXlCZyBdS9Di0az/9jo4GTt6+4dk xw6s52TxDhSNMdH0X/j3Rd4x2bK4G+3/LG6bbP73GrzRSX/7cr5SQeJiichuQ2tAPPZLG3xktu+SBj GylM+395+DNTumAg5AwAJownhHXWSpyplcyTrQ9IxdGJW3YqhHop4Auz1mygoryurP3HSPSQoF2pzP k0+9FvuNGVyc4wPzxm3gvya7bZvJas+dThlg4d+oB8lbja/QIUDEBiG3BoIw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=a+dkLFxy;       spf=pass
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field array bounds checking for memcpy(), memmove(), and memset(),
avoid intentionally writing across neighboring fields.

Use struct_group() in struct libipw_qos_information_element around
members qui, qui_type, qui_subtype, version, and ac_info, so they can be
referenced together. This will allow memcpy() and sizeof() to more easily
reason about sizes, improve readability, and avoid future warnings about
writing beyond the end of qui.

"pahole" shows no size nor member offset changes to struct
libipw_qos_information_element.

Additionally corrects the size in libipw_read_qos_param_element() as
it was testing the wrong structure size (it should have been struct
libipw_qos_information_element, not struct libipw_qos_parameter_info).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/intel/ipw2x00/libipw.h    | 12 +++++++-----
 drivers/net/wireless/intel/ipw2x00/libipw_rx.c |  8 ++++----
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/intel/ipw2x00/libipw.h b/drivers/net/wireless/intel/ipw2x00/libipw.h
index 7964ef7d15f0..4006a0db2eea 100644
--- a/drivers/net/wireless/intel/ipw2x00/libipw.h
+++ b/drivers/net/wireless/intel/ipw2x00/libipw.h
@@ -537,11 +537,13 @@ struct libipw_txb {
 struct libipw_qos_information_element {
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
 
 struct libipw_qos_ac_parameter {
diff --git a/drivers/net/wireless/intel/ipw2x00/libipw_rx.c b/drivers/net/wireless/intel/ipw2x00/libipw_rx.c
index 5a2a723e480b..75cc3cab4992 100644
--- a/drivers/net/wireless/intel/ipw2x00/libipw_rx.c
+++ b/drivers/net/wireless/intel/ipw2x00/libipw_rx.c
@@ -948,13 +948,13 @@ static int libipw_read_qos_param_element(struct libipw_qos_parameter_info
 					    *info_element)
 {
 	int ret = 0;
-	u16 size = sizeof(struct libipw_qos_parameter_info) - 2;
+	u16 size = sizeof(element_param->info_element.data);
 
 	if ((info_element == NULL) || (element_param == NULL))
 		return -1;
 
 	if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
-		memcpy(element_param->info_element.qui, info_element->data,
+		memcpy(&element_param->info_element.data, info_element->data,
 		       info_element->len);
 		element_param->info_element.elementID = info_element->id;
 		element_param->info_element.length = info_element->len;
@@ -975,7 +975,7 @@ static int libipw_read_qos_info_element(struct
 					   *info_element)
 {
 	int ret = 0;
-	u16 size = sizeof(struct libipw_qos_information_element) - 2;
+	u16 size = sizeof(element_info->data);
 
 	if (element_info == NULL)
 		return -1;
@@ -983,7 +983,7 @@ static int libipw_read_qos_info_element(struct
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-16-keescook%40chromium.org.
