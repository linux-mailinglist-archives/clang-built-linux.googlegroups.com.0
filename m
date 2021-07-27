Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGPHQGEAMGQE5MEUHQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4C53D7F9D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:06 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id k2-20020ac847820000b029024ea3acef5bsf7097428qtq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419545; cv=pass;
        d=google.com; s=arc-20160816;
        b=LZY0zM93jrT1uIBzmsaFSk5wB7ByPWs9oOiuuLcmQVQeF5eGj1CLW96vO7sZZ+cEoB
         EzrcV0qxXb9icmyxD/5vTCXVZyyAb6DxSpC9qWRcP49c62yTRUK8qU14REEgmoU9HPqw
         bvRfJquF2BPA6p2jChmlNIaggXlntLwKIGCIG1QCjFM1wDFoTmOS4rDBFT7mNXw+2Reo
         JTqc3EXNysjSnY91TNdgS+7sDvR9GptQfmM26VHbq5lrVZRGDlZlkhqv6jqgIkSYZK1q
         YdtF7DkNNM8r29gIJFv+w0e55EKL8BBNL1h7+wvn3U7UTDbF6rSB+wev4fTkfER0Np5c
         JzJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=k9BW+de/smYzwgDRZxEHLhroorMQJt/Bnqmwfmv9vQQ=;
        b=Q+PzvGQHGOVtk/H7mE06bHkaeppAqIN4L0daKImx3FCHDOZ/qV8Oy9/5D67zwSnPxR
         5HryvmIbv6CX63PTGGhn6gamPr3SRR5/vvaQfPBVkyFWK9C4xuQm2ZStgWTUFtOMjpHJ
         0zKKk7MuHy9jwde/cglda+AyTfcs2CCeX0T63aqEAzk4vplp3Dt6OtSXtSZ1leUbctG/
         bhGTt4AVQSLgPM33FCs9Zr2CwrJ8RN5nwgtpHJrdFOPDUvuR++av7MhrVhbWzDmdRe90
         9KSvzBhniHtjfJRjYBrKVv3Qh773F3PHoqZhOa2R5QfVYaNNXm4nHPvhDmb8iWuqoHm4
         ixPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b9n3PLWe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9BW+de/smYzwgDRZxEHLhroorMQJt/Bnqmwfmv9vQQ=;
        b=Ab7BD6r/mXAmYAE+sH2dIsdPckAdQFAUd0iEtCuYCt3Xj+/kUiGQ0G0LR5jXcqBhZM
         Lt+dWuTsqam7NmjSNTWaAe9/0Acb4q3nsKhzTjoP1jufIavksDaF1oIJW0FDwnQl9yc4
         yVdN50YkkwnXmkW8wYtTDC3lRO8unht6LrBLFFBhxLRKrJKMeNLczwqBDq+tA8G91n7f
         nELQx4cjtXEnYCG3eVNCI3PtCVuZTUEc2ER6H/zfKyyHbYf+ZAQ6igqnNc/xcemsOBIv
         H6AOgKqxwJE3hjuhYMkuz7dfvfuDMQhjeETiatp1w24xFfWHnmX3rTU3HUDhTHgAUBCm
         igxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9BW+de/smYzwgDRZxEHLhroorMQJt/Bnqmwfmv9vQQ=;
        b=g59znM9DD+SiCFNSuwS6twCoukqGp6UxvSvlpV7zuF6VjkT4P/NO39xhPU7FDpzQmM
         QevtHKQZHw5RHcJMJhZQ62/ntXxqmMhLC+450fz2a/jPUcq0OmDGFOrZUhCAkZ1ixAOI
         GS9+qXfHvPYszV1S0v5/lmRYe/LdLUG0/lv8nIfalpiRRhUG0iTEL6OYV5e1ZlAnnWpm
         8nTJGPgm4SZZOdBF2i9YnVnsa7yllRUppPayx3O/eJ1fpJvkbEM+sKMMX4LdX6EOYDnz
         lifGVuARKBOAgp6bOOng2W8BZo0Mu98Fz04G2mvrCwIm3KX2yG0T/dd6vCp7ZIdfi8HX
         jg8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322jBsz0ZjU3O+GBQ2pOffRBKB07BEELMCBKaCU7Lhi5mnY4umw
	+ga6DEUoHx7mPBNr+7xfep4=
X-Google-Smtp-Source: ABdhPJz1yw2KB7u+8dSu80ercHlwgv0bh4qu19mznXUWrhIf6AMiKaqYm2KR3V5XPjaRD2J0xn/e5A==
X-Received: by 2002:a05:622a:118a:: with SMTP id m10mr21356884qtk.263.1627419545385;
        Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c207:: with SMTP id l7ls66883qvh.6.gmail; Tue, 27 Jul
 2021 13:59:05 -0700 (PDT)
X-Received: by 2002:a0c:c2d3:: with SMTP id c19mr24851557qvi.62.1627419544979;
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419544; cv=none;
        d=google.com; s=arc-20160816;
        b=e+QvsstEZ1x8KMm/heUZ8AVweAP9OOY8X5KjVogxtEQtdF88PfxLjnc8qmeAtmJx1w
         VVTHtrtFCTYZ/Cai0gAXc3LMyVYolxUZM6wOhbC1HJpd2cX4lLcV1A9d+wjFXn8nqJhu
         CKAjPpus7XnAwl/3s6xjHmp82lVrr7zfm9CBpwMGG4vCfxQJDRQKSKJ19Zke1+AsNJKO
         MxYec8E73x+xDtINwCdET+bpg1+mMnz0aLVICotNkIPjwKAk2gvEascggN4FvEAqXh10
         uq9b2JPxF4SLzTER+Y1osAiiEQCQVQpHBag4u7GOXbkC8TYoNL2xlJ8sqDkzo3Whqc1S
         N2Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HpqGAKzdyVBA/Xfwi2YIWzNMC8MxbuJr9wu4OHi5PCI=;
        b=1Du2ukud7b2jdePYyzmzsSCMH8T1TYsYC1kEQm0k+SHOcv37IRj0+9fp28GdwWWjkZ
         n4LgLF2q0yeC5l/zpr3mYnsFdAd6MNTe4+ov0zlipUtAKQIksDo5hDm30/Nk26hyhhoE
         wOaVbW561rZaUNJZ6DJQkAf6pFkg7n47yGqQvWHdLViwA/dNZX/G7miKHEeVo5NvfO1L
         LNSgDpwRefP2Vco3ysisXm9BeB1UNvn1sBX5A5nbI1Jw7IH7OS7cYlZdjX5HfRpUAGGM
         eQS4yG53rGjG1KVZsoK8jc437Z2lKhO8ke8FHJ2uiGpUIACPTvyyYO3XLMkI/RANyjCr
         jM6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b9n3PLWe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id x10si290433qkm.4.2021.07.27.13.59.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so6656831pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:1391:b029:347:168f:1be7 with SMTP id t17-20020a056a001391b0290347168f1be7mr25305700pfg.70.1627419544638;
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z11sm547955pjq.13.2021.07.27.13.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:02 -0700 (PDT)
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
Subject: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Date: Tue, 27 Jul 2021 13:57:53 -0700
Message-Id: <20210727205855.411487-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3134; h=from:subject; bh=5kQsK42FaWrxRPo6tG17S0vU5dwTXkF5YJ2Hl+bjQYs=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOASZA2wSHJdmV0oArAVWb1HVe/NAsbCB3ibAr6 bxRmCeCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgAAKCRCJcvTf3G3AJucAD/ 9WI40Y8DsttY+40HaEXLlcd6Xryj8yJoVYK9d3gFpDvBSXYBI3VB3m525SOa2sCJC28jHTFRiHhMP6 huqw/nIdms4tjuS8pOZ+DGwzggPQcPgixq4hWdvWbXbeWvQ8mzb3g3NqUh7MCUUYaHd0XZHxeZEa68 KBhKJTR1IzAMdGAY+67PouIo4YzyBaBznnCQb+NLdIUlfT6t8W4CZN8+AQx4EbaO/u03il9VH+AfXK zdL7aZ+v+6RlA8EstG3CnlY/VnSeo0q9XrTH0Q56zymAeoXPIKieJGMZFa6iM2gjIrRUcDFGpVhu7C FZJrEnBqWU+ZIq8c+Zv+XxxBR1dgFsXNeW0wYvt3oXMHiOFT6xXQ9AnpctZU8KlMtct/hdjCaZw4oR 6asBqobuZZVyim88vDBe4PCm0P2lmf5t8CRqSL58iOkzZjRIH+nNwtC8icwiMHZbEOgdBWJYI4n844 m7nJHNp9t3NKdyBYEy6/4q2ExNfaSeCS36fcueGEcPaVGU6/xc4bbPtOCUCt/ocW7/1gVWfDLaGod7 erVQcNz7hMISnSKfJsI54OZh2ah7BqVzDbpCwCewNsGxodKlGatSWB6nfpU2DxvtQKgn0q2ExYIS5K sH5r2wLmmPf369ln2Cl1YKvhBYGnsOEMQkCSbYctGbRwD2e8tiHtSiSMTzJw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b9n3PLWe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

The it_present member of struct ieee80211_radiotap_header is treated as a
flexible array (multiple u32s can be conditionally present). In order for
memcpy() to reason (or really, not reason) about the size of operations
against this struct, use of bytes beyond it_present need to be treated
as part of the flexible array. Add a union/struct to contain the new
"bitmap" member, for use with trailing presence bitmaps and arguments.

Additionally improve readability in the iterator code which walks
through the bitmaps and arguments.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/net/ieee80211_radiotap.h | 24 ++++++++++++++++++++----
 net/mac80211/rx.c                |  2 +-
 net/wireless/radiotap.c          |  5 ++---
 3 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
index c0854933e24f..101c1e961032 100644
--- a/include/net/ieee80211_radiotap.h
+++ b/include/net/ieee80211_radiotap.h
@@ -39,10 +39,26 @@ struct ieee80211_radiotap_header {
 	 */
 	__le16 it_len;
 
-	/**
-	 * @it_present: (first) present word
-	 */
-	__le32 it_present;
+	union {
+		/**
+		 * @it_present: (first) present word
+		 */
+		__le32 it_present;
+
+		struct {
+			/* The compiler makes it difficult to overlap
+			 * a flex-array with an existing singleton,
+			 * so we're forced to add an empty named
+			 * variable here.
+			 */
+			struct { } __unused;
+
+			/**
+			 * @bitmap: all presence bitmaps
+			 */
+			__le32 bitmap[];
+		};
+	};
 } __packed;
 
 /* version is always 0 */
diff --git a/net/mac80211/rx.c b/net/mac80211/rx.c
index 2563473b5cf1..0d959a98e908 100644
--- a/net/mac80211/rx.c
+++ b/net/mac80211/rx.c
@@ -328,7 +328,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 
 	rthdr = skb_push(skb, rtap_len);
 	memset(rthdr, 0, rtap_len - rtap.len - rtap.pad);
-	it_present = &rthdr->it_present;
+	it_present = rthdr->bitmap;
 
 	/* radiotap header, set always present flags */
 	rthdr->it_len = cpu_to_le16(rtap_len);
diff --git a/net/wireless/radiotap.c b/net/wireless/radiotap.c
index 36f1b59a78bf..9f4f1a772964 100644
--- a/net/wireless/radiotap.c
+++ b/net/wireless/radiotap.c
@@ -115,10 +115,9 @@ int ieee80211_radiotap_iterator_init(
 	iterator->_max_length = get_unaligned_le16(&radiotap_header->it_len);
 	iterator->_arg_index = 0;
 	iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->it_present);
-	iterator->_arg = (uint8_t *)radiotap_header + sizeof(*radiotap_header);
+	iterator->_arg = (uint8_t *)&radiotap_header->bitmap[1];
 	iterator->_reset_on_ext = 0;
-	iterator->_next_bitmap = &radiotap_header->it_present;
-	iterator->_next_bitmap++;
+	iterator->_next_bitmap = &radiotap_header->bitmap[1];
 	iterator->_vns = vns;
 	iterator->current_namespace = &radiotap_ns;
 	iterator->is_radiotap_ns = 1;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-3-keescook%40chromium.org.
