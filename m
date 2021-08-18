Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWH46WEAMGQEU3KXSII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6C63F0D84
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:41 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id r24-20020a0568302378b02904f21fcab643sf1626612oth.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322840; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNqAcT0vcM20F0p9tK5KLvwo5GxcihVOvUWVQlb4b3TpN9EK3kfGJSpeWgZh1jmyQZ
         jermy3W4hkBgQ7vbTn7ejrOTeM5hfCSrgS2vU0bihsRK1cIcFW3DoOblRb4B+kWWQ6P9
         FN6RRW3KpVZSQnMFyUjNYfMnXHoEb8kqQf13W8GZLknkoa5TSnzLMU2AoL0KEIhx/B0m
         Jtg3y0jISzZfXSCAuWd5IuvWWs750wLTBSeIwoC/fMSx9RxXREGeSht6gLOTuelQh4Pa
         kWqek3gHCqPOkSmd8tEkfDQuQo2WASjtHuUJY+3kVKhY9hKzO/RlR1BE9+GE3XAkNMpR
         SkZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sabH7HyImFZcwO3K/yKpfdSgwYbYlipTKg/tsF8d72Q=;
        b=MLM+4cFFLTRnSKUWMYEuKpPeZMkq/iE6wgyXAZOWICaNyCym5hGe/OVdiKc31f5/UM
         T4ek74rZcvu1BnHT41PqkO5+mBAPjlSECf4z5o8Thl9u+P3w1tSbEgBLKRy7pBSrESfF
         BWrdYn3JCdNjrQ+dI9FOty9s0AGHNYk6x6vA0C/1lv1Y+5bAyXSP8ffjLhtrTkDmIK61
         kEDIA2hATC+eDR8zK5yqzl9GC48uhvL+iGDfLtFJgZeDGMGzeGQAe8JmQFg64/dnyCdz
         LUWMMfXvKszuVJdKURd9IK14vNk1mLebOyQqHd3+wDEXR9OOd+GNOpXOlz7gsAF9NgGr
         FXRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="nMy7A/nP";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sabH7HyImFZcwO3K/yKpfdSgwYbYlipTKg/tsF8d72Q=;
        b=cPGeSTyYpMYid6ZutYaAQ2rkRPEZyuV1QZM4ZgxAALVSr2Sx/wv28aUNlqSbCyoRD6
         CnqWnIDByfgwJVBcx3D5VO0kCUeb32IeL7zUaNbb7U7loWuKi+aHRUP8Ds2UPtdkkdPi
         Zd1BRc4+dWNx30xmL0l/ypvGBKm6IprlGIxp4bWqRX82mhf1xg411k3/IJDOC+ehr2Lw
         DFBqcrDQ5MAnVsmLNd73gznqemAplORbVfBDnv5JZCYc3QNTY3YsEgyZGx1kdwbZqC83
         Y+QzD1oo3crgpL94T4mKHoidzPrH6C+6Cqu4cl+GmhroQcZ4OoL5Kx388EK35oA0mqTf
         r/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sabH7HyImFZcwO3K/yKpfdSgwYbYlipTKg/tsF8d72Q=;
        b=elZnozIVkcExKTB0icwP5OeYDGJTtxp8F007ZcTO8W+65HGLulDZo5WNOgpZjRYq7g
         KaL6LyzkRQvLbbbyM/rnxG3avQdH2VaHaeveLJkqw/8iFJztNDyLJWrag1f8ruen4zCP
         DR8AUKkz+dkW93IoBJ929UB1RV3sMrbwM04ebwsD65anKq19ixoLq7t7sitBHng4LIdA
         DSYmVnY6+uohCV1dLPvW1O3f4qDAPDRsZfYWHaqirj2KaJ4XrLYOHI3Lz4Z99tnElXpe
         0sqyPWcm9MPlEGNQ4oSFKW/CoxoDhsxG5dZj3Aj6mv3tlLkDEeYR6QLNlynyGE1w1Y20
         /30Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ynfVOZlwRxCVN5r2Tg69z6Qn0lu8YvNYe1vdKjeDLya2f4BAs
	CpLiQftKinQBZwLPIUQxanc=
X-Google-Smtp-Source: ABdhPJyW57yJLq4o2oMvVcMlsm/o1P+vUUoR7f4OHStFjjq5G9O/TF7YxoyCs5dVRcJhOb3hDD1qvg==
X-Received: by 2002:a05:6808:14d6:: with SMTP id f22mr192728oiw.57.1629322840661;
        Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:180d:: with SMTP id bh13ls1015655oib.5.gmail; Wed,
 18 Aug 2021 14:40:40 -0700 (PDT)
X-Received: by 2002:aca:34c4:: with SMTP id b187mr187085oia.139.1629322840238;
        Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322840; cv=none;
        d=google.com; s=arc-20160816;
        b=z/RVVHMxQ/eVepkPhriVvghGYiQO+HUr77/SAYPbJVk/KnyCQojRiasHyXBGCo45o6
         zKXFnsi5G/cF0OEVZSuflSeG9CoDzZt5k2EabcDZUGscdabChS0/KZB4tAYZkpwgtKra
         UaOCLmqjJtBlw8G8Jf8vrebvPVdRRexXq5MbKVdl9UXBggF/MqbhBp+QaaAFzRGPHqiC
         6DUgG7Bprgp7Cfz0U0NkzB7NgyEQCiBd6bEgYhp+Xwbi2qaJKDQXg9LI3348BmdqCv5f
         6mz89bjGFaOTeUN3exmmo2Vv+x2H71ugZO8VE/ltEWUcw9eC1Fuq1xy4YlSwvqeOSwbZ
         WHXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O8qjYY2cJtsRmGm/zdMlQTzE6OnnaKrP94K9BZF3rSA=;
        b=V+fatIy9gdDzyDdYhl2NUrymX7p8/NIY44Sffob/tI8utBXumCIOhwMM2gZkO6bBEj
         HKN8ugjl3SIXfpMC3p8GDh/Ko6OtAsTbQK/60y9bOJdBHG+2Gl58B6L+TgclPROKETCy
         x3OX4sMphHEvJgXpPV/nhMywRbPs3s2dctJErIW8rQcOK05c/81RZHf8iouFdh8A+Ajk
         e9XyBLPJlVFAwrnq+DMlQBQPwPyYxisleLLjI5PWHul5tGwBn+LWzAfaXprWESYaq1u8
         ZKNxJQNhO3X9CMlC8K9gpBdaLbeKUQTf2xcL6aclLkQRm8yRNFdUKgljQwqJ6IqrqJw+
         Ut1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="nMy7A/nP";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id o7si81862oik.2.2021.08.18.14.40.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id o10so2743666plg.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
X-Received: by 2002:a17:902:9a47:b0:12f:6a05:caaf with SMTP id x7-20020a1709029a4700b0012f6a05caafmr2040047plv.55.1629322839915;
        Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x13sm713276pjh.30.2021.08.18.14.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Joe Perches <joe@perches.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	linux-mm@kvack.org,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 3/7] slab: Clean up function declarations
Date: Wed, 18 Aug 2021 14:40:17 -0700
Message-Id: <20210818214021.2476230-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7386; h=from:subject; bh=twU3C8Odrnjtt0fLQV1v3kpwGFqUFkkEJcF/jNvyyhw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5DwWG8Hbuzv1t4kr4ppi1TMFFQ+1095F1DCS+E ugeeNVeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+QwAKCRCJcvTf3G3AJrrJEA CiuNoKbuv3vd4OKjhaJsh/uzJaVSeJtUBbZd3/9tG9s4xBEiQv2TlQu0xZaF6WmgcCcuqQIstsDoAa QSaY4YKqRiBrUSqEXm6RtvXyFALNQIcRO64dkTw/k6NlY1vnQ+cznAbzY7uUemCoMXMRFWGTrFAjNL h4nYkrsKvd7bJS8rKfhkqhQDjQFHxtxAjYRFEYi018DHon/MmNrWxLSRHwwVfg61CpTHknF6VL5ekk PqE6RbO3HAI94bkmZXP2e09oyfgedXdMHdydBH6m0rXYJXls3R3e3IdGGnG8Lln/FcUMtKuQ+AQYUb uRrqf12S29q1WuPsb9oiBrvP1Faqo5PlB2gFK0Z2pF1ZVWDRFqTkX0hcEJacHbxHTcOfEFoBQDwZYR pECQpkqKGrR4Jft3sMcMHYl9fqRBMIrHg3FR66qExZGsErEYgsDkY8HvzCz7fCjkJZfTW1ZQ7XBdn8 spXz/cTL1OnWA9T+8AFCne8QCjrrGsnCQwaxCStrQc3Oh8sBJ9mwDGXxV+kiqyHyy1LShFc99t2Zz4 vljcX0jpG1gk9KBTw5xPUTxLm++BeNjFJfbKP3k4tUYpXT/A4047+XLEXjnmAWCKUX6p/6sqd8C6F7 kTLOE8Mk9+/O7V/BXO4FZiCjuMmSNstND0eEUVgfzhfaFiAqjYhAtf8HI0dw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="nMy7A/nP";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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

In order to have more readable and regular declarations, move __must_check
to the line above the main function declaration and add all the missing
parameter names.

Suggested-by: Joe Perches <joe@perches.com>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 68 +++++++++++++++++++++++---------------------
 1 file changed, 35 insertions(+), 33 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index c0d46b6fa12a..10fd0a8c816a 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -152,8 +152,8 @@ struct kmem_cache *kmem_cache_create_usercopy(const char *name,
 			slab_flags_t flags,
 			unsigned int useroffset, unsigned int usersize,
 			void (*ctor)(void *));
-void kmem_cache_destroy(struct kmem_cache *);
-int kmem_cache_shrink(struct kmem_cache *);
+void kmem_cache_destroy(struct kmem_cache *s);
+int kmem_cache_shrink(struct kmem_cache *s);
 
 /*
  * Please use this macro to create slab caches. Simply specify the
@@ -181,11 +181,12 @@ int kmem_cache_shrink(struct kmem_cache *);
 /*
  * Common kmalloc functions provided by all allocators
  */
-void * __must_check krealloc(const void *, size_t, gfp_t);
-void kfree(const void *);
-void kfree_sensitive(const void *);
-size_t __ksize(const void *);
-size_t ksize(const void *);
+__must_check
+void *krealloc(const void *objp, size_t new_size, gfp_t flags);
+void kfree(const void *objp);
+void kfree_sensitive(const void *objp);
+size_t __ksize(const void *objp);
+size_t ksize(const void *objp);
 #ifdef CONFIG_PRINTK
 bool kmem_valid_obj(void *object);
 void kmem_dump_obj(void *object);
@@ -426,8 +427,8 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 #endif /* !CONFIG_SLOB */
 
 void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
-void *kmem_cache_alloc(struct kmem_cache *, gfp_t flags) __assume_slab_alignment __malloc;
-void kmem_cache_free(struct kmem_cache *, void *);
+void *kmem_cache_alloc(struct kmem_cache *s, gfp_t flags) __assume_kmalloc_alignment __malloc;
+void kmem_cache_free(struct kmem_cache *s, void *objp);
 
 /*
  * Bulk allocation and freeing operations. These are accelerated in an
@@ -436,8 +437,8 @@ void kmem_cache_free(struct kmem_cache *, void *);
  *
  * Note that interrupts must be enabled when calling these functions.
  */
-void kmem_cache_free_bulk(struct kmem_cache *, size_t, void **);
-int kmem_cache_alloc_bulk(struct kmem_cache *, gfp_t, size_t, void **);
+void kmem_cache_free_bulk(struct kmem_cache *orig_s, size_t size, void **p);
+int kmem_cache_alloc_bulk(struct kmem_cache *s, gfp_t flags, size_t size, void **p);
 
 /*
  * Caller must not use kfree_bulk() on memory not originally allocated
@@ -449,8 +450,9 @@ static __always_inline void kfree_bulk(size_t size, void **p)
 }
 
 #ifdef CONFIG_NUMA
-void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_kmalloc_alignment __malloc;
-void *kmem_cache_alloc_node(struct kmem_cache *, gfp_t flags, int node) __assume_slab_alignment __malloc;
+void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_slab_alignment __malloc;
+void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t flags, int node)
+			    __assume_slab_alignment __malloc;
 #else
 static __always_inline void *__kmalloc_node(size_t size, gfp_t flags, int node)
 {
@@ -464,17 +466,15 @@ static __always_inline void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t f
 #endif
 
 #ifdef CONFIG_TRACING
-extern void *kmem_cache_alloc_trace(struct kmem_cache *, gfp_t, size_t) __assume_slab_alignment __malloc;
+extern void *kmem_cache_alloc_trace(struct kmem_cache *s, gfp_t flags, size_t size)
+				    __assume_slab_alignment __malloc;
 
 #ifdef CONFIG_NUMA
-extern void *kmem_cache_alloc_node_trace(struct kmem_cache *s,
-					   gfp_t gfpflags,
-					   int node, size_t size) __assume_slab_alignment __malloc;
+extern void *kmem_cache_alloc_node_trace(struct kmem_cache *s, gfp_t gfpflags,
+					 int node, size_t size) __assume_slab_alignment __malloc;
 #else
-static __always_inline void *
-kmem_cache_alloc_node_trace(struct kmem_cache *s,
-			      gfp_t gfpflags,
-			      int node, size_t size)
+static __always_inline void *kmem_cache_alloc_node_trace(struct kmem_cache *s,
+					gfp_t gfpflags, int node, size_t size)
 {
 	return kmem_cache_alloc_trace(s, gfpflags, size);
 }
@@ -490,10 +490,8 @@ static __always_inline void *kmem_cache_alloc_trace(struct kmem_cache *s,
 	return ret;
 }
 
-static __always_inline void *
-kmem_cache_alloc_node_trace(struct kmem_cache *s,
-			      gfp_t gfpflags,
-			      int node, size_t size)
+static __always_inline void *kmem_cache_alloc_node_trace(struct kmem_cache *s,
+					gfp_t gfpflags, int node, size_t size)
 {
 	void *ret = kmem_cache_alloc_node(s, gfpflags, node);
 
@@ -502,13 +500,15 @@ kmem_cache_alloc_node_trace(struct kmem_cache *s,
 }
 #endif /* CONFIG_TRACING */
 
-extern void *kmalloc_order(size_t size, gfp_t flags, unsigned int order) __assume_page_alignment __malloc;
+extern void *kmalloc_order(size_t size, gfp_t flags, unsigned int order)
+			   __assume_page_alignment __malloc;
 
 #ifdef CONFIG_TRACING
-extern void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order) __assume_page_alignment __malloc;
+extern void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
+				 __assume_page_alignment __malloc;
 #else
-static __always_inline void *
-kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
+static __always_inline void *kmalloc_order_trace(size_t size, gfp_t flags,
+						 unsigned int order)
 {
 	return kmalloc_order(size, flags, order);
 }
@@ -638,8 +638,9 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-static __must_check inline void *
-krealloc_array(void *p, size_t new_n, size_t new_size, gfp_t flags)
+__must_check
+static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
+				   gfp_t flags)
 {
 	size_t bytes;
 
@@ -668,7 +669,7 @@ static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
  * allocator where we care about the real place the memory allocation
  * request comes from.
  */
-extern void *__kmalloc_track_caller(size_t, gfp_t, unsigned long);
+extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller);
 #define kmalloc_track_caller(size, flags) \
 	__kmalloc_track_caller(size, flags, _RET_IP_)
 
@@ -691,7 +692,8 @@ static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
 
 
 #ifdef CONFIG_NUMA
-extern void *__kmalloc_node_track_caller(size_t, gfp_t, int, unsigned long);
+extern void *__kmalloc_node_track_caller(size_t size, gfp_t flags, int node,
+					 unsigned long caller);
 #define kmalloc_node_track_caller(size, flags, node) \
 	__kmalloc_node_track_caller(size, flags, node, \
 			_RET_IP_)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-4-keescook%40chromium.org.
