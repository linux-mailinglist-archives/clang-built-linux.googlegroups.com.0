Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQHT3CFAMGQETW6QMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9A641E3DF
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:13 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id 124-20020a251182000000b005a027223ed9sf10624870ybr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040832; cv=pass;
        d=google.com; s=arc-20160816;
        b=qs063b85zCXSq+5dYKqkHfItAlbf0m2U0HlVedRkfl8d+oThd0n9jtFhVTcgfK9yLd
         zObk2jj0HAhZNowThAVe2lX2L/61qEBgpHaSHm8x2wa1xrEemqCQQx8Q/I39qIy0Bvwb
         svfPyQdvf0vZshv5wKYMpeOKFbs7PIYThneNoaEvjdIppMRJ0XvK1qZ3j7hCYdbyoH8j
         Y/0aGCN0MRKwSv+Chgg1MO8f0XpoiJusopPCjuiy+G0ZSSPwI7lIvmF/jvkUfci1WPqC
         v1+WIesEos37ORdpA8Hoq4Y7FAm4ZJzGHsrmp3lPPVeArsf7xe/qKGXEqbMpxjUggcro
         8yrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tF1UwBei4ACox0mS9TxB5gfqT6w06mdhJPKvJ/AGTDY=;
        b=Lq+eBVw5QhNPry60w60IKKIPpYpNGtyTFLXe+xd82OIxVv7QnMHMZy5FS5Rhx98QJw
         EDLYR0BxUu1tH0NbYW+4IMrChtZLkH6HR5qNLGFFaNOvfRTvyCtmEcuDOj0P57VPGgE8
         HlAuB/dqXqV50c3dwuodTTMwEPiP2INWbN95MS8AL1gmpok+YqE7jikqC51yk+iy0NAv
         +ODhBKVFdcMQlcHaRZ3QqHTGlKwT6EPSzWF5mxLYhdGKUUKDJJjl0kaL8ofaN/2Dah43
         oDB4zmDU6AzKi7LXmKvYUK5wSmRQRNB8kmPGXSkNNUrr6z/1Er7PHsaSFPylFBlOkhUR
         X/Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bMZ24ZC9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tF1UwBei4ACox0mS9TxB5gfqT6w06mdhJPKvJ/AGTDY=;
        b=QEiGyfS2rQfNF3SuZFEbIMRcJrR0BifdnTbkFMKG4zDzYzykPMQ9BZtt1Uw3XAzsBB
         z8rUoAoftHTantcJBXjL55Vp+cSKfS12BGcusof6ISg5Rqb1Td/1W9dfc4JWJksDNSlm
         XiWuqvd1rwXN4yJI7P3ZZmp5DQKE8xS7VJGDw5zFdQP2MUunMxDb3u7YHcJAFvwGFdmN
         Iz5lf8XKQ08PWpHiPVkMbuNPdET8ZH2Nkwul3QzlcPd4IhfLJfX+N6sYlnwgpbLpzJlk
         hYwwOWs6ji8GbaT9nKDuvWLqzhVu4ELCyvyj9A3zGVyK9AZl8/vPKEGWCtp4NgJj5VOM
         4r8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tF1UwBei4ACox0mS9TxB5gfqT6w06mdhJPKvJ/AGTDY=;
        b=Ugk6Y2cnyXaa+RnP3dpGddPgWto+Jj2ISdZvosV4KtO4hswKeeRkGFhelqG+5romio
         078srOS5ShLPUA09DjkLoaYxrnxgqTTPrfY8+6ZA8Hfr3Q6J1Zwb8fz+uyofxW1hbFo2
         sL01t+XBjLfzSDlDfwMLsJOmu7Q52rGKCFJ0dn8vxa8IDhMHYML9fNH3221BlD5qATlE
         bjR62iiB5apIoHcfYUioIT0S1IcOSQIKh7n2iJn4FlGXprJzM74PlUc+lL926V1vfRWL
         Cq+ahCacuJwv2q8WABp+Alm3n6xnwBURPL8iYG3swoDN5QVImN2vBh7mbfyy7D7QyhE1
         78Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OQ3IR9tmWKP7MfCYiY9qSPEAAg59zpEMn2kwAKfE6VZQRoher
	WLm74/fwnL7AW83oGsfKkUA=
X-Google-Smtp-Source: ABdhPJzh8IMZt7F2yA4Yq3iE3J84ocjZM9DaacZs5ft3uGJZIwJSKdY+RwnmdsU/14i9nHQA1RrhfQ==
X-Received: by 2002:a25:42c9:: with SMTP id p192mr1849813yba.399.1633040832515;
        Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5283:: with SMTP id g125ls1144440ybb.9.gmail; Thu, 30
 Sep 2021 15:27:12 -0700 (PDT)
X-Received: by 2002:a25:d605:: with SMTP id n5mr2072737ybg.548.1633040831961;
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040831; cv=none;
        d=google.com; s=arc-20160816;
        b=c5XyhGiSQV55dy9KFP/7OHNNb3cF10HNQE5wp/+m9Wf95c2SM8kb00Jd7C4AfIzIMw
         uZR09k/7XX/xGqrqJoerW4BE+vFAdX4dfQgB689S4/wuS+dR3UWGqxPw+mo4lYiBuxi9
         rJuI5jGC717EPGukK8JwFH7Z9EQWBzKQb084uvXBoPqhdDid/2udpyEJ4ae+PYKi5edJ
         mq9Ie+De53UwNfqHlTuE4TjO821eoBGHLt/iYHlVE3bwXRSpDaBkZoYdl7HRg1K1PFDY
         A500HE0HTQ5ih7sYuG+sbr4CMp8YcTBq/tSw2uhCYEjBhTOidjGRe0SWVY+4d9cZfUBb
         ZdMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1dXnvTeLUCigPMMnfClviJlp/0W0l8ED7JBU+sWSCTQ=;
        b=m4eZjyjqAw6ceuv02ia7njL4VFwAcAK46zT/7x/p7XKh8fUuuqRTjQJJ9TNzKypIYM
         f/SWyTEbAFKF2gqhxuL2v5CM3BYYP4wxkmzBx+/nudPOl06juTFDFh60RltG5NQaflKF
         MAPMj5x3aQWIKVF1mnuHecJGYSXAfdxkJKzEWsDIYSOUYZXFxskfb5XJ7HZrFz5QDpx3
         bMa8V7Pp5YcmUYJHMd3nR4GlhZ4SpZEWGrevJHdiNlQkTD2ZovmBPijiN7sw9uhuXEKN
         20xHeNjt2zBkkbX5yz8g0vZp1+/mOSbKCiccOa1rxOUW6YsEoPjRdhffcZ9/Qnadal5t
         pc0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bMZ24ZC9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id l8si373689ybt.4.2021.09.30.15.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id s75so7639653pgs.5
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:2355:b0:44c:86c:49f4 with SMTP id j21-20020a056a00235500b0044c086c49f4mr2934102pfj.58.1633040831209;
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z11sm4343540pff.144.2021.09.30.15.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Andy Whitcroft <apw@canonical.com>,
	Dennis Zhou <dennis@kernel.org>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 5/8] mm/kvmalloc: Add __alloc_size attributes for better bounds checking
Date: Thu, 30 Sep 2021 15:27:01 -0700
Message-Id: <20210930222704.2631604-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2910; h=from:subject; bh=SyAqtHelf0a2iaKyecEWVo/GxwzRnhHwreNN0BUqqAM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm34uKneQvmJxQTing9NsARvbB4YKVUTexQ0P2y 4HvehcGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5twAKCRCJcvTf3G3AJsMKD/ 9B9MOpTz9EJCrfrNonEyW3Gcj0s3yDYKmzoBbslhRxx5a0fa99XtVE+I2QWPrCjRokk1liutNYQLoo yLJglYmUbLAFF3WWNXOokAxVRQq8fdfavcfOtP/bRUGwY/F5T1hq2GLFPf8Pb9CYi5x6t/xmJhA67j +xXO5cmxVNE3sx3rIfq1SlyI6mmWvUthEwPSh7eresXvI8dGbuowLNZeO2RM8rj0ztdJxOZwCwojE3 3Nh0gLgYdo9dhmk/n0ZSkivI/4ngDHgEKhWqtPGPB9huz6hMX/SLF43qOm2yp0TwGrbG3z8ttQI8LP Dn7M0W254iTtwkG14RIzU6p7JuSjCfka1aYXPm37kCNv05P7qGr4W9bt89PJCHQCNa65eGirF14Ar4 lswTo3DH3SrXOZYViivXsbrYJmqlvorKH9Qi2sc6wnYb3JPmm6L157vJb3nZrJp7h9vpntHisy9ntI wELx7fONPE9NZHbruTuE6ONgalaoV7d3pxMPeGlKvFvhywPhHBW+GIxJ0ngBMLXTBE5//Ox1Yx/pJ3 VVRY6wlDwRQ/ZGk11cdhPFYF8qRhC1VU3fdZQsEEXaWXNBY//nG3Jm91tU4CTuU3FVuWHlWxyjucol zE7IVVEcgE/wXQAoREtVO7sm2dQSi9j/6da9yKArFV5nlaE7fduEFEigworA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bMZ24ZC9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e
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

As already done in GrapheneOS, add the __alloc_size attribute for regular
kvmalloc interfaces, to provide additional hinting for better bounds
checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
optimizations.

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Andy Whitcroft <apw@canonical.com>
Cc: Dennis Zhou <dennis@kernel.org>
Cc: Dwaipayan Ray <dwaipayanray1@gmail.com>
Cc: Joe Perches <joe@perches.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Tejun Heo <tj@kernel.org>
Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/mm.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 73a52aba448f..03dfb466d4f5 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -799,21 +799,21 @@ static inline int is_vmalloc_or_module_addr(const void *x)
 }
 #endif
 
-extern void *kvmalloc_node(size_t size, gfp_t flags, int node);
-static inline void *kvmalloc(size_t size, gfp_t flags)
+extern void *kvmalloc_node(size_t size, gfp_t flags, int node) __alloc_size(1);
+static inline __alloc_size(1) void *kvmalloc(size_t size, gfp_t flags)
 {
 	return kvmalloc_node(size, flags, NUMA_NO_NODE);
 }
-static inline void *kvzalloc_node(size_t size, gfp_t flags, int node)
+static inline __alloc_size(1) void *kvzalloc_node(size_t size, gfp_t flags, int node)
 {
 	return kvmalloc_node(size, flags | __GFP_ZERO, node);
 }
-static inline void *kvzalloc(size_t size, gfp_t flags)
+static inline __alloc_size(1) void *kvzalloc(size_t size, gfp_t flags)
 {
 	return kvmalloc(size, flags | __GFP_ZERO);
 }
 
-static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
 {
 	size_t bytes;
 
@@ -823,13 +823,13 @@ static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
 	return kvmalloc(bytes, flags);
 }
 
-static inline void *kvcalloc(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t flags)
 {
 	return kvmalloc_array(n, size, flags | __GFP_ZERO);
 }
 
-extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize,
-		gfp_t flags);
+extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize, gfp_t flags)
+		      __alloc_size(3);
 extern void kvfree(const void *addr);
 extern void kvfree_sensitive(const void *addr, size_t len);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-6-keescook%40chromium.org.
