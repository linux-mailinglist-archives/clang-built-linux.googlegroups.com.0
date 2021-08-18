Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOOK6KEAMGQEGF4NQ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id A55823EFB8B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:18 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id 21-20020a370815000000b003d5a81a4d12sf1104480qki.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267257; cv=pass;
        d=google.com; s=arc-20160816;
        b=i2qIGcYzygwC8r/yxS9alaEoNNKIV2V2v9LgBSWI7dSa5Y5MEZCJw+7jP5l20gNQz0
         AMz4O8lgHvJlcZZIbggYzlw5rmpIAwxq24wvPwBqPjlwvfyFB+3t8UnKL2tNRZ2FNaJm
         YCwqOpvVoIB8rlBI3zIk14wxu/8XNflkDfrDiZrRRfuq4YB8OIvDT04+5JDVqGZ+Vs1E
         DWYRtI+5VjOsOpObcTmNSMVMD99amzXoVssay3P9O+zQt6j1GIGdjzH2J+3M0sWbkHGP
         +WW3jwYnyydsrSBA+xiXvmAmk2vlWoV56W1Fiv+728WkBZSE7H9Hbz4QB6SkRn9C3nkM
         X9ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j1h+Ak6+Z+2P9dwf8AI5NuinqScnfiKB5cuWv8jkDjw=;
        b=alx304+CKtYlWvyT1D+75kptyTbArS5hLCZ01PEGvVa/5lZvY7sX1pJMOCdpaZPEad
         kcnC6hBr6B4sxx/lpqROTWmwaFwFcdYFncLyiLNGzPhNl2r4gvrrIQV+E5Ds2fZ5Y+LX
         VvzSXTdEWTraJO9Z+mvJbbs9d47jbzWQqXYl4HOvh6yD5LLCDMJbVoOImLCjzDRW5hRJ
         3V8XiML01TZ/LUUKSHqm/1ueDB3MJ3aThhdmktVY5lAj/iFyEoFV50JJea/om4wRUGy5
         8New+uMVD2f9YBgGdrXiYLDu2zY7imOXNNN3KV0S2WQerCqrR+BdxX9XZibhI9XSITOX
         wEsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Oe49+j/0";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1h+Ak6+Z+2P9dwf8AI5NuinqScnfiKB5cuWv8jkDjw=;
        b=kk68VD5LCDBkeRAmBdG0LTw5+VqfR2nLcHtnN36po2VLY8oMbnAAiii7w+M6ACMoPO
         jjAG/ddVsSSg3pwGVNH+NnnUNrwZo6zVaAz11K3qmQ5FnoNCeqC+2ctnK9NkIYo8l4il
         CWlP6vB/PoLOZcUw9amzWJrS6i9/OX1qcStACnVl8yUwGIqb/zdqUEjYPvS/Lghsyp5c
         wVjZtxfrhHNnk2KzVqjpBlJT7Xqxch8CQs9v5hg2UxQhUkwNrovMCadxdWWNs8Gj/ID+
         guRG2NN2qfjttco9k9VqBNSw1+EYOJ1cD1WCF8ZhZXhEC9W2uyAOkj/OTozk3pKeLU6e
         hh2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1h+Ak6+Z+2P9dwf8AI5NuinqScnfiKB5cuWv8jkDjw=;
        b=tWbxGXa9scjj7ehMvPy9XzyZYB/A7kbc911qs5swqHbAfLRrr7Bq/uwQGDyav7FzGa
         Wd5YkReG2VLV/XLOlJ0DfbRdLxDt8EZW14WQCfsC7seZRCH+OYFbNxZrkLd6LNR1GAVD
         a7Duzrk1haeyJGMGl0VddTW3aRML+mXlNP2Fdes5l8XbaTLEP2rDtUF8Cb3H2ydjRMg+
         gTdijnTlFMYklqcINRo5gTnnc3zHcYt34JwZpfV87Oz/z4sfIqeGnOQpBH+AAhvS43vW
         7pKFJ2W8kFtf31nS+jmMX08oGMTgnO5vEObZADHwhCE1rI4W2MDC6Coaj8wUdFlSP+AL
         hGxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jsZPBjFdOcHyeEgZrtyt5+8PhIhxpogF6T5vNA/tE3j7/UK10
	rgGnTTzrx2qkPkoackMYnwc=
X-Google-Smtp-Source: ABdhPJzQgkVkJWEnn+13Iv38b3K4l6T9pkqApOyn0320PuSu12/QgvAiotWX7T7cWY/hixxVVeU4yg==
X-Received: by 2002:a37:9401:: with SMTP id w1mr7858955qkd.166.1629267257804;
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:298b:: with SMTP id r11ls772115qkp.5.gmail; Tue, 17
 Aug 2021 23:14:17 -0700 (PDT)
X-Received: by 2002:a37:4053:: with SMTP id n80mr7708226qka.336.1629267257392;
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267257; cv=none;
        d=google.com; s=arc-20160816;
        b=RxrmRMpnVv6/Z5aRzlLGZMvr9VaLMhm5hRNLPD/GjezTgg7Mp7YrAmhJxy/64Ur1UG
         QnWdTL2Wj/3Cqs72RK27TX/0rcUTFU1j5E68qqjqMr3wVb+0sYwSsvHBOfriKMUWlN9K
         vytXybVZLWBlKPo6bXwifh4p3uIE3l+Sx9ZTOVfkKXJe0rirPxrKvmloWx09eseBiRxQ
         vyemKJJMsUW3UOXz/RqBeWzYVKlD3Eb0ZN/khdk+bA9JxrYFL73THUmJCCkPICu4bI6n
         fE1YNwyK/tduoXghqow7RVtWp1aox1VVHCXbl8dV1D6rNaYLAm52kHAmNDLxIlNmxIDe
         FJDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0i1or1K/1dFEzNVxMTz6RhSxVOT4OJeaz+0eeqAwhFA=;
        b=PXCpjTuRVyS7UxRHikJ1ctg7qmehLyhDeuJntBpsxB2+nM2a9JhWMJ98QkTfaJ974U
         GL04L3m4magw19iPPdBCEFGPF6UUlJ+5wmsSHfZCpf8ohpQ+OTCBYZs6KyJ2G7Gxu8Gk
         Y51NokL5VWecrY/7FCjzgyrVWrLwR47Ug5ECrpwu2ERRZ0OkihOi/7x2hOSkf3rIZfqn
         k2G5nnMF+aIsfr0OZBj7RVAMdmsntrdGUVrPQawpx5djBbz5jbY24g3/KNnH8472YeKV
         eVXWthExORUpTLmxQZ5+tmAcWagj7jjCSa4gc3Ry5oSIE32B3RbN5XrxHU2bYmSQXbc3
         iA+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Oe49+j/0";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id j8si235622qkk.0.2021.08.17.23.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id e19so1121676pla.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
X-Received: by 2002:a17:90a:17cc:: with SMTP id q70mr7609797pja.1.1629267256623;
        Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h17sm4603571pfh.192.2021.08.17.23.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jes Sorensen <jes@trained-monkey.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-hippi@sunsite.dk,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 41/63] net: 802: Use memset_startat() to clear struct fields
Date: Tue, 17 Aug 2021 23:05:11 -0700
Message-Id: <20210818060533.3569517-42-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1181; h=from:subject; bh=C+6KD7t/6fG5hDgRQb4fosYJ4WHPortotbK235WcI2o=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMn5oDen6ROCRtoOkoprqxOZyis1cM1QgeAkzRs Z+Yu9WKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJwAKCRCJcvTf3G3AJoehD/ 9r6K6SUsL5lVEdFegLY8K/qjemzJ8Qx2dDCwnIGOnbcI770wVd2gUkq+8bMIiGTpuHm8KLfXED/VPo XEYrAiSzdYDynkSQ5uT93DAcDJecWMvkl5cUZenRJ9e335MwzPk46WbpMY5lsvDG4LBrEYQUe3GB15 fZ8nYwjw5Q+FqdH31kVwt/2NSANrGxWmVtnNghwDYLKm0CqhmEc4kK70cmiOpl45EDBUWHjcVcHhtk +PEcSI8yUja1AxKpyhVTXYsFHlVN/kEk65BL8+8npbvCk63MR9WStzKhTbrb23jLFEg5yu8WATqERe o8xICyKNkMqYX8hCFs5pnjdeEKWUc2/FYepf6KI7RGfKkvKyE2n/BKKsZFKeZ181uCBiO/JcP0Pipn OHApybTpw2p4YCgPfp4IRYVXIyQaygaAotgvJzqZQbLI8E7vsFhH+rcgXzUijzLTAFpUblDhEwLI6b cBzYe+DkWVZ6Glc4eJvXZCjr/W7SxC+nlNR+56QP4XtDM7sC1Yi5QeYqjWqQLKsSmiJ1twc3nx9dtJ qai0woqnGDGFUMcP9v95DEMFbrsh44dGCjOIVocZ3STFgPzYzmTzvVvmCwlMPH+NaZaZZI/NgHQYpw aSEEIjABnuJlCZR3/gTlppRk49XP0ANcu3hytZpYQh0SZTdqnExuxHJTAJ6g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Oe49+j/0";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630
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
of zeroing through the end of the struct.

Cc: Jes Sorensen <jes@trained-monkey.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-hippi@sunsite.dk
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/802/hippi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/802/hippi.c b/net/802/hippi.c
index f80b33a8f7e0..6f71ffc8bdd1 100644
--- a/net/802/hippi.c
+++ b/net/802/hippi.c
@@ -65,7 +65,7 @@ static int hippi_header(struct sk_buff *skb, struct net_device *dev,
 	hip->le.src_addr_type	= 2;	/* 12 bit SC address */
 
 	memcpy(hip->le.src_switch_addr, dev->dev_addr + 3, 3);
-	memset(&hip->le.reserved, 0, 16);
+	memset_startat(&hip->le, 0, reserved);
 
 	hip->snap.dsap		= HIPPI_EXTENDED_SAP;
 	hip->snap.ssap		= HIPPI_EXTENDED_SAP;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-42-keescook%40chromium.org.
