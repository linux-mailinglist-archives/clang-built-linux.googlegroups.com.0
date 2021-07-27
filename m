Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ7PQGEAMGQEWWTHA4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C012B3D8113
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:52 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id p13-20020a67a60d0000b02902a88e22a5e8sf37772vse.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420612; cv=pass;
        d=google.com; s=arc-20160816;
        b=maPK8fAOTLKWLrXSwQHUQJ6j+FiXlK9U4/C0eAdjVl52k48ibXTPOkPA0Y7b0heZmY
         iSh7atSLRaufdOFOp+CZADDuTWdgESuM/7QuOqYjUQ6Loe6vLoV651Wn92OYBbf6uJ/c
         AWFREPqASPbp91Dgt9fUBznfEe8OlRD+VLRnR/TPC+7oqH2aDY4D/zEKnuq75M9pzHoJ
         X+Vpz9HJKZAGmG/z7MP7GqOSJObFAq+wbBLd634m1yv67LHGU93pgFD7epniB4E+WDS/
         szajhpu62Bwv3KIFQ8jcZVdH9zzk8T+axcNHJM4JIcWdrYbPM7NZJNoZRGMp6HREKLCP
         hCAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hO50VbO5QhFN0U16qxI3vrALvR7uEARD02/IRaRF8Xc=;
        b=Xgbi8BvDi17VgMQE0+4Lz3qexLrP163CVCiFt93YQET1c6xl5PM7YM45xUZju4YNx6
         N74pwKbA8gEFmstVuADjpx8jaiDj2H1UjDj+6rnlKlJvH6tpa0+jHNnsw2o8ANcEEBuM
         VztZ0kBthhqkSEIYdeQwqu+Gfl53N4gjHgkegWISTLVMUflEEH3c/BYFnOcpteLg4ITv
         UNwx4glp2dn3sqPQ1XUZutZhpUTKsjUoY7wVL1U4olhk3+qfLRNGpNAcug2tzBVpI8dG
         6TfwZW3rricKn6qtpVeDY/85/f0Bqf+z9XTSc1Uwo2sg3wYM9QY/fnPk28juye4PBzvu
         9y6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="A77Hsrv/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hO50VbO5QhFN0U16qxI3vrALvR7uEARD02/IRaRF8Xc=;
        b=KnOdtaRuANenz8IMLRKv23ETXmH/gTj/qKDepUPqtqBEj3BSNZNwN5EtI097xEXj8o
         TdX/VVL1HtB5KgvVIbzEcLCrth84YuukKcexj18Asu2nuwDgb1LLkw7buvg7JKn7znk0
         hDmRvV8bRkqGls1XyxRVMiqfjrNWkx50l5JLGRSniQMIgnDco2zhxwz2vcegC5EJX3Jc
         hqyIcTJsQo/4fsxGm0UNvD5gCpwDur9rhF0wHQloSlrGbq5gTddWSPbptgs0F8fsGSjf
         KfZbHX6Je8ctCJ4KcsaPk2nN0L8fR4SFbi79UoRodoRpVmkM5VOAm6cUJsD74P26bKW0
         ZR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hO50VbO5QhFN0U16qxI3vrALvR7uEARD02/IRaRF8Xc=;
        b=Eho5kMxMCKGZGV52WrUqEtOx/OsqLKnXke9L9oB0D4vrYy85/zlTvUqFsOORD4jYzt
         NVzUuHkgG/4d8O5yBqLJAf2Leults01aKGzbhZXGnsKQyVwYgpbZameg10+srf+yYESc
         H/VXdEexdj3OBKE6QI1buxKQ35APY/BhMAp7Ri40w/MXB8Jj4JZ3oSlDCRaHMf5Rfymf
         2zmm6aVL90/4moO25Uzb9b6XzgsUBKa+HZ5RRkqbXWSlHUDTryMbB7DfCeSzr6X0X4HO
         xLqcyR7Ul99q589bv/K1G7WT/2vD6O7knx6pjR/vkkzSP7GecLP2UxFkmfPviPrNrzEE
         7g5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Kgv95ypSKI60+6DHFDGqaLv6hyg3407DVBd6fdhix04PjBsa/
	0+8/YOZGSae7daSWmuDFT0k=
X-Google-Smtp-Source: ABdhPJxVhszKNRDG5vHe9INISCfHrPuXuro58a10YPlCEMM85smSvdaOP7izy5VL1IQDO2ePcyg3Aw==
X-Received: by 2002:ac5:cde3:: with SMTP id v3mr15741549vkn.23.1627420611613;
        Tue, 27 Jul 2021 14:16:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls5053398vsg.8.gmail; Tue, 27
 Jul 2021 14:16:51 -0700 (PDT)
X-Received: by 2002:a67:2687:: with SMTP id m129mr18384886vsm.52.1627420611059;
        Tue, 27 Jul 2021 14:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420611; cv=none;
        d=google.com; s=arc-20160816;
        b=DLuDX+oLB38ZkzLmxhXLjLsd2XQE2NBu9FyM5eLuNuqhZN6HkYcN0M5U8H5AezcOE7
         cDPtBJeySASxHBfUc4h5ruptHBdrdPfX1Qx5HB/nUQMH7c7NYI5z4kBHdIiXIsZLVrJO
         xLyhtls6zchhLyuUakThXYmyahi/sX9Muz2nZ5iSMOiJ/zMQUJveDIoodhQAyTJlkz/G
         ZuY6xi2a4QmSSh5L31pieQePbXt7y3wSIIzwXe+2hJwqeAk1CX7um8Rbo9FmFwV6O6hR
         /Sb60/1/Tm27NdBd9EcUvR9GqkYyyttFNdLxU9+5uXFPthauwWoaDMmpSeR4mFAuUwWF
         kxdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SpZy1pS0Gg8JkmXUmGaVpmtafp37Y0lKYW1g3lNxRk4=;
        b=OzW3lUbd4MVGSLH84NSonwZH89E/HdAQWN7zCuYc2IfTigVEeYD2znR83wZQcWSWN3
         ecyajrhE2Jb6stjxvvaBnd5ctzo3ViOXMpPcDveHpZuQYtBMA5ndQmTl7pb9jC8o/XIv
         ElkcOffRcoRr+9EeLD+QZpC5f8h1Wq8LPrIW7FnZYI/bEZmOi/x3zavEJhZEqqCibpYF
         oCo48n4ME+ElPG4WJSqYasngLkvcVG3Z1hDFpedvUDp1UDC6XAiPFmiO3Npeokz6rzx/
         YPWL13TTUFPt0g9JmilZtLMnDxHkWc1mHRgpruTnScXy2Gqs6mdCucrCqUA2LfAYMJlk
         z3uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="A77Hsrv/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id m22si330457vkf.3.2021.07.27.14.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id m1so1901603pjv.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
X-Received: by 2002:a63:cd4b:: with SMTP id a11mr25635035pgj.273.1627420610673;
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q5sm3971112pjo.7.2021.07.27.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
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
Subject: [PATCH 57/64] netfilter: conntrack: Use struct_group() to zero struct nf_conn
Date: Tue, 27 Jul 2021 13:58:48 -0700
Message-Id: <20210727205855.411487-58-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2310; h=from:subject; bh=s7DyCBPDaCq4d9JSsWLJ8+EongifST6biZFyx2UX6q8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHONWBiPiNzo/t8OW3Ns6kZ2l8riv+DL/V9XSJtK Xd5HzDuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjQAKCRCJcvTf3G3AJsz7D/ 42pKBLJYcyHNJwO4YohbAAmhcoXAY8bmybN4HQPzp0zeFLNZqc2Mjb4rl3swZnOVaOVIL3tdvOiDgh i8NP+ht5TIItplmx8kwQTDPnNvvzlkJ82eWDHbvlZo9L/KkG3tB6q0ZoB5wyDwJ/WtKkX+tNlUGMRP OkokNS0HmTNz9ICaj7b7j9osXWGi57NUaXBtDDH/qH8MsT0lOJRU2Z4gVtlmQ4R2LKaBHTKEt6BHyM 60WMlTbzjKwmlSHB2aAoSUxJeN+xflQRuXnp9Z6gejpjykNWv/FHyosJTO5fvOqyY7fnbG5IP18fDs 13RH/EqMrXXtaC08nbTDiHc7xZZd07xjYusHaAykXGZ1M93N5Yyv4Ki7pupKpuLMhmBe3mMJ6R9V/9 uGqhRuL79KG+FrjRZBGe6WhgC/PPRmNIQiKGNNqoLP4kHNzZGslITSZJ/dhW1VxfIJC4CSyVjW5cgL prwEVJwtrbEMjXtHxTTF6YTc9ktMv2sS2o53nA9MrdPsxA9UV/yGCIxScUw8rTkzsu8Mk49on1WZf9 QEGh/Zy6T4S+lmbbiyXk3M1IAIDUYvs9WGAIYNlGzCMyk8XCDW9FUvuYcOQEU7XduJJ/wAhIG6MGew +7Dpxb4bbGybSLftmpNT3cPqKZ0HD+6F3Nbr82t0S06MwdOE0b2kHOrmjCYg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="A77Hsrv/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

Replace the empty __nfct_init_offset member with a struct_group() to
mark the region of struct nf_conn that should be initialized to zero,
allowing memset() to correctly reason about the size of the write.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/net/netfilter/nf_conntrack.h | 20 ++++++++++----------
 net/netfilter/nf_conntrack_core.c    |  4 +---
 2 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/include/net/netfilter/nf_conntrack.h b/include/net/netfilter/nf_conntrack.h
index cc663c68ddc4..51004fce2937 100644
--- a/include/net/netfilter/nf_conntrack.h
+++ b/include/net/netfilter/nf_conntrack.h
@@ -101,24 +101,24 @@ struct nf_conn {
 	struct hlist_node	nat_bysource;
 #endif
 	/* all members below initialized via memset */
-	struct { } __nfct_init_offset;
-
-	/* If we were expected by an expectation, this will be it */
-	struct nf_conn *master;
+	struct_group(init,
+		/* If we were expected by an expectation, this will be it */
+		struct nf_conn *master;
 
 #if defined(CONFIG_NF_CONNTRACK_MARK)
-	u_int32_t mark;
+		u_int32_t mark;
 #endif
 
 #ifdef CONFIG_NF_CONNTRACK_SECMARK
-	u_int32_t secmark;
+		u_int32_t secmark;
 #endif
 
-	/* Extensions */
-	struct nf_ct_ext *ext;
+		/* Extensions */
+		struct nf_ct_ext *ext;
 
-	/* Storage reserved for other modules, must be the last member */
-	union nf_conntrack_proto proto;
+		/* Storage reserved for other modules, must be the last member */
+		union nf_conntrack_proto proto;
+	);
 };
 
 static inline struct nf_conn *
diff --git a/net/netfilter/nf_conntrack_core.c b/net/netfilter/nf_conntrack_core.c
index 5c03e5106751..b05eb64ec788 100644
--- a/net/netfilter/nf_conntrack_core.c
+++ b/net/netfilter/nf_conntrack_core.c
@@ -1527,9 +1527,7 @@ __nf_conntrack_alloc(struct net *net,
 	ct->status = 0;
 	ct->timeout = 0;
 	write_pnet(&ct->ct_net, net);
-	memset(&ct->__nfct_init_offset, 0,
-	       offsetof(struct nf_conn, proto) -
-	       offsetof(struct nf_conn, __nfct_init_offset));
+	memset(&ct->init, 0, sizeof(ct->init));
 
 	nf_ct_zone_add(ct, zone);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-58-keescook%40chromium.org.
