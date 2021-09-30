Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXT3CFAMGQETBD3Z5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C6F41E3D9
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:11 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id j27-20020a4ad2db000000b0029ac522e7d5sf5770792oos.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040830; cv=pass;
        d=google.com; s=arc-20160816;
        b=REcPkyS18rjNCO72q8EH5+lFwWPKxA1F3b3wNb6Fl9Sc6CpXecL485OMpSzF58nyPH
         Y+siOszIeu+CdtThwvbUHemGammjilvJ2ndXRs3dTcrK+fHDTqXDicB6oD5Th6tRVDHu
         RVXtRsqrKOz3sBlb+5eYxBVJ2CwYujnZbWV0PzjkIgUYZPgwKJ5Iz13coluy+6M0dVNF
         LGMmvtTcAw68N6pt9Z6V3l7AGFgL1YTf/6ZOooaR83f1ti1JLvoAIoChTTTDo/Gvkf9n
         2IYRUGJ+8fgGBWvyUInMlAigCdsi6HbYrOd3hgSvJKeTDk6NOoDqfosbYrZLjB1LBhIP
         QotA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s7YMWiMLDOV5J1jfQxBWT2+L9gamaQ9CL06z8NIfLhI=;
        b=z5TeFmR3mo/YwH3vWhRh0zmRgKgzxsmYzvu+q1xGbbXmH/Pgu6rrChn0L0Vr0ON8F9
         yUIgSSzv79b+Yac+LXYGa8jXrAjgr6bRiKTBXKVxDm6/XRwgDceuqYhPibreRL43/W6c
         kFkimPio7tM895EDzhhmN9bnUIjk/VgyUEC4+dNA0T7rdgSNjITEL1CEpcj2LRmn+5bH
         AJ3YBNIe2kRHw2UWfyp0eL5a8KPwef/NVEdm9e1XPSIJcqMP28pcpPLB80gJby/rmIFw
         nLmXI6P8TaX53vMzKwIUr30Hx7Yjl9X85jWCw5RHz6sReqQGZzx/+4vs2vYFGJIU5+Gj
         B7+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YGS0FrT8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7YMWiMLDOV5J1jfQxBWT2+L9gamaQ9CL06z8NIfLhI=;
        b=HxdIIqClHWDkcRigt/cWqqZG3/GStU+tXXAq/YO2X8aNUTPVvDc557prP0YMIiM5TV
         TBI+RPJV3vsfc887SD0Ju+KhmhlGwEQBL7HGciaeo3K7cIEKVgiO/xyp4F9g4nplnzBq
         R03O3eLtVtjOZR7dEi4Wks/9YrwKPRY0y6Hp/dtve4OphWwPQwto9VjKrCMUSD9SSkmM
         3Mh45vkGcrzwizKyElTg3A3EmLz8Loa7G33PX0rp9d8dsPiFL9ybyTANPtlib9kQg8Ow
         laKt+iYPNhdjRs2fU/7dfvLwQMwxv5CF6FE3pKByzrw4c/B3IhksKFaai6ivyaRN9suP
         Nl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7YMWiMLDOV5J1jfQxBWT2+L9gamaQ9CL06z8NIfLhI=;
        b=WlU7LbTx/QYCzcC6wuyPUIy65c5GOJ2hEBF6oB67he6MrIcKsNL+Kgdzfhltvv5VOw
         x2ATXkbs2kaTJf4QR4ahmYWo7/4MiWWyMTj3GkVDQmNbo0UOwcfBbdt9bR4fpWwzbUbf
         tLLj40SxkbzM2r5O/tVJz2QQx+BO6oSOHwnqDy/VtZQfLsSMDof59sh10I9vnwhxPRMh
         /9Zzp792OD3OFDbsq2gOsd1auv81AGuvEJdtOAe0W9C0Rz1lMmD0oJE6OS/haYIl/Tl9
         Z2uTq3bs/sL2AHqsag/VH7bCz3tYhaKZdM9IQJ8C0caO9Wzoy25kaHIGVvM/imCRyQiw
         NUTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ukiiIFe6JFlDfc65chgu0CfStGiYyg7q64vIYub7IEBVBb3rQ
	laibWHhDoHpaHun8HMKDBBU=
X-Google-Smtp-Source: ABdhPJyLhDKng6dOYfXBZn/mWlKi40rCbg3dAkP2ZyeWY1PoBKYJ/FoP56YAlbkVukLeQQB6K9imFg==
X-Received: by 2002:a05:6830:60c:: with SMTP id w12mr7376446oti.370.1633040830374;
        Thu, 30 Sep 2021 15:27:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19e7:: with SMTP id k94ls2460174otk.7.gmail; Thu, 30 Sep
 2021 15:27:10 -0700 (PDT)
X-Received: by 2002:a9d:4e04:: with SMTP id p4mr7331664otf.375.1633040829993;
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040829; cv=none;
        d=google.com; s=arc-20160816;
        b=MQwuQYFZTiboQH2xvC2oQYmGmOc+5Q7kqclYtZzLeC0dUgqafyZv3cB+bETiqqJNYT
         GrSo8IdbiQ+8YyQ1hKRLyiZuObBLlUN6q4Lgxq/UIKbpM6EnwiYYyku0dyWwQTUcy9tF
         okTao/7AI+ih7gmkVWhJc/uAq+LiQYw7FMtajENZol+0JVdx/lhojSgaSLIJeFCO8+Pp
         ZOzbX1vU26EUbrr7QE9yZqSZi+ewBCOeIZB8L6EsjcSJyzvq8EusBpEpuih2QYzvwdbJ
         EppZFZPszpVh99iKjIk03DJZtAjtLds5cDISPuzPyjqx0l/Wlp7ojIQrVA91RYb0Xxg7
         habg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zygAiLSQoNsoIY1uvxoA1hwJtuo0y1KIlpyKLcao1qw=;
        b=OsfVbOutyR8FtEnzw7M6bFRWWOwiT7yhk5y6pYuCR3e0w0saSctFmtCtZ12uNwRH4o
         stpiq6/YOJoeGaQg1AE6wij+5QDFfFrWEbj75X8r9kw/IESVfw7HqHdC3pGpuZbdrAiw
         luu3xMuDPhQAa2XhcM+lHXoVNz9f21J7hrBpuU5agBHVjd665ysG5vxZv/P9STr7K5I4
         aqQVz1/glf3p4ImRWh8V6Y11LJle8mXq2/D6TmFwZ6QROjDkrf4cUxncl5ZcN/zcI0Xn
         LMzOdv5659CYclaQjtZs/Dk4pXzHiOnvtP2HzifA4PFAUA+Mvmrq5Cl4v1OBQgRZ4Xph
         TK1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YGS0FrT8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id u18si203610oiw.3.2021.09.30.15.27.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id me3-20020a17090b17c300b0019f44d2e401so3779033pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
X-Received: by 2002:a17:90b:4d07:: with SMTP id mw7mr15084160pjb.66.1633040829698;
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 127sm4084858pfw.10.2021.09.30.15.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:07 -0700 (PDT)
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
Subject: [PATCH v3 4/8] slab: Add __alloc_size attributes for better bounds checking
Date: Thu, 30 Sep 2021 15:27:00 -0700
Message-Id: <20210930222704.2631604-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9514; h=from:subject; bh=jz2EabWJ4V7UBTDnXqnj7V0rrqkbx+8deuoqLgEzAyQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm312aTAJy2rK6CUEO/3iGG5lrIgRt8I0BPxLQA ws2ETQaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5twAKCRCJcvTf3G3AJoJsEA C0rp8pQeMkm2vohx8uuRwQGOg6XG6s9CbtQeM4TyD50PjHE/lRZdMz9+1gs0isac2J/MXzvuqkuUrH 33hBSKyFFTWa7OsdpupncwDiNBrgYjdmG5ZDm4KnGt5fmFjoyHsSkoM2m/q9nvk9HNMYCRj28rIsxw thd+1X5Zp4lfCeZcuQ/Rwf89CFtQTYq4tUN0942g3ii5+uVMMVC//dHySTHaSoSsJQgaYF1cD6BtqC O8xOT4G85XQc77P3POwRAKIc25jmPB7KRDuvnA4W2QDZm7bZOd1bosuM1PIUqm2OLm3yDVJHrNqSTL K/RcyNzkD3XM8gCcXCzzquG85b0e6uLU0gtnToglQo8DrMyVMgEjgCBuYIDZsAubJrfRsUDHrG9Q6M yye6Cz/CBZPzzQp0EXnWrBYQiJcHnuaawTJy4zNUVmlQ4R+raTrwRJYUEoL0lavFq0DXTnTwrjy/yT n5jWoUBS+gIqkOrp/BR8PYnrQjmT5sziW4d5YB4BhuNWhj2KXYyy4DEIhAHk7WDdo28MeVg8xlsUZU 6ipMnWY/3LzGFN6RoJ2fdothXH0DrptbevsKo/R0owUDLmZ+DHaWygKTwv1hSBm6k7oGU3CQmxwwbP Ju2UNQEXJS77ak+emdTaVAlpSNgikS3plbXgSD9VtpE3izBIu05Jhfhs+tDg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YGS0FrT8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
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
kmalloc interfaces, to provide additional hinting for better bounds
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
 include/linux/slab.h | 61 ++++++++++++++++++++++++--------------------
 1 file changed, 33 insertions(+), 28 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index d9f14125d7a2..844b776deecf 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
 /*
  * Common kmalloc functions provided by all allocators
  */
-void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags);
+void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __alloc_size(2);
 void kfree(const void *objp);
 void kfree_sensitive(const void *objp);
 size_t __ksize(const void *objp);
@@ -425,7 +425,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 #define kmalloc_index(s) __kmalloc_index(s, true)
 #endif /* !CONFIG_SLOB */
 
-void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
+void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __alloc_size(1);
 void *kmem_cache_alloc(struct kmem_cache *s, gfp_t flags) __assume_slab_alignment __malloc;
 void kmem_cache_free(struct kmem_cache *s, void *objp);
 
@@ -449,11 +449,12 @@ static __always_inline void kfree_bulk(size_t size, void **p)
 }
 
 #ifdef CONFIG_NUMA
-void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_kmalloc_alignment __malloc;
+void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_kmalloc_alignment
+							 __alloc_size(1);
 void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t flags, int node) __assume_slab_alignment
 									 __malloc;
 #else
-static __always_inline void *__kmalloc_node(size_t size, gfp_t flags, int node)
+static __always_inline __alloc_size(1) void *__kmalloc_node(size_t size, gfp_t flags, int node)
 {
 	return __kmalloc(size, flags);
 }
@@ -466,23 +467,23 @@ static __always_inline void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t f
 
 #ifdef CONFIG_TRACING
 extern void *kmem_cache_alloc_trace(struct kmem_cache *s, gfp_t flags, size_t size)
-				   __assume_slab_alignment __malloc;
+				   __assume_slab_alignment __alloc_size(3);
 
 #ifdef CONFIG_NUMA
 extern void *kmem_cache_alloc_node_trace(struct kmem_cache *s, gfp_t gfpflags,
-					 int node, size_t size) __assume_slab_alignment __malloc;
+					 int node, size_t size) __assume_slab_alignment
+								__alloc_size(4);
 #else
-static __always_inline void *kmem_cache_alloc_node_trace(struct kmem_cache *s,
-							 gfp_t gfpflags, int node,
-							 size_t size)
+static __always_inline __alloc_size(4) void *kmem_cache_alloc_node_trace(struct kmem_cache *s,
+						 gfp_t gfpflags, int node, size_t size)
 {
 	return kmem_cache_alloc_trace(s, gfpflags, size);
 }
 #endif /* CONFIG_NUMA */
 
 #else /* CONFIG_TRACING */
-static __always_inline void *kmem_cache_alloc_trace(struct kmem_cache *s, gfp_t flags,
-						    size_t size)
+static __always_inline __alloc_size(3) void *kmem_cache_alloc_trace(struct kmem_cache *s,
+								    gfp_t flags, size_t size)
 {
 	void *ret = kmem_cache_alloc(s, flags);
 
@@ -501,19 +502,20 @@ static __always_inline void *kmem_cache_alloc_node_trace(struct kmem_cache *s, g
 #endif /* CONFIG_TRACING */
 
 extern void *kmalloc_order(size_t size, gfp_t flags, unsigned int order) __assume_page_alignment
-									 __malloc;
+									 __alloc_size(1);
 
 #ifdef CONFIG_TRACING
 extern void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
-				__assume_page_alignment __malloc;
+				__assume_page_alignment __alloc_size(1);
 #else
-static __always_inline void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
+static __always_inline __alloc_size(1) void *kmalloc_order_trace(size_t size, gfp_t flags,
+								 unsigned int order)
 {
 	return kmalloc_order(size, flags, order);
 }
 #endif
 
-static __always_inline void *kmalloc_large(size_t size, gfp_t flags)
+static __always_inline __alloc_size(1) void *kmalloc_large(size_t size, gfp_t flags)
 {
 	unsigned int order = get_order(size);
 	return kmalloc_order_trace(size, flags, order);
@@ -573,7 +575,7 @@ static __always_inline void *kmalloc_large(size_t size, gfp_t flags)
  *	Try really hard to succeed the allocation but fail
  *	eventually.
  */
-static __always_inline void *kmalloc(size_t size, gfp_t flags)
+static __always_inline __alloc_size(1) void *kmalloc(size_t size, gfp_t flags)
 {
 	if (__builtin_constant_p(size)) {
 #ifndef CONFIG_SLOB
@@ -595,7 +597,7 @@ static __always_inline void *kmalloc(size_t size, gfp_t flags)
 	return __kmalloc(size, flags);
 }
 
-static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
+static __always_inline __alloc_size(1) void *kmalloc_node(size_t size, gfp_t flags, int node)
 {
 #ifndef CONFIG_SLOB
 	if (__builtin_constant_p(size) &&
@@ -619,7 +621,7 @@ static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
  * @size: element size.
  * @flags: the type of memory to allocate (see kmalloc).
  */
-static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *kmalloc_array(size_t n, size_t size, gfp_t flags)
 {
 	size_t bytes;
 
@@ -637,8 +639,10 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-static inline void * __must_check krealloc_array(void *p, size_t new_n, size_t new_size,
-						 gfp_t flags)
+static inline __alloc_size(2, 3) void * __must_check krealloc_array(void *p,
+								    size_t new_n,
+								    size_t new_size,
+								    gfp_t flags)
 {
 	size_t bytes;
 
@@ -654,7 +658,7 @@ static inline void * __must_check krealloc_array(void *p, size_t new_n, size_t n
  * @size: element size.
  * @flags: the type of memory to allocate (see kmalloc).
  */
-static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *kcalloc(size_t n, size_t size, gfp_t flags)
 {
 	return kmalloc_array(n, size, flags | __GFP_ZERO);
 }
@@ -667,12 +671,13 @@ static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
  * allocator where we care about the real place the memory allocation
  * request comes from.
  */
-extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller);
+extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller)
+				   __alloc_size(1);
 #define kmalloc_track_caller(size, flags) \
 	__kmalloc_track_caller(size, flags, _RET_IP_)
 
-static inline void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
-				       int node)
+static inline __alloc_size(1, 2) void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
+							  int node)
 {
 	size_t bytes;
 
@@ -683,7 +688,7 @@ static inline void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
 	return __kmalloc_node(bytes, flags, node);
 }
 
-static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
+static inline __alloc_size(1, 2) void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
 {
 	return kmalloc_array_node(n, size, flags | __GFP_ZERO, node);
 }
@@ -691,7 +696,7 @@ static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
 
 #ifdef CONFIG_NUMA
 extern void *__kmalloc_node_track_caller(size_t size, gfp_t flags, int node,
-					 unsigned long caller);
+					 unsigned long caller) __alloc_size(1);
 #define kmalloc_node_track_caller(size, flags, node) \
 	__kmalloc_node_track_caller(size, flags, node, \
 			_RET_IP_)
@@ -716,7 +721,7 @@ static inline void *kmem_cache_zalloc(struct kmem_cache *k, gfp_t flags)
  * @size: how many bytes of memory are required.
  * @flags: the type of memory to allocate (see kmalloc).
  */
-static inline void *kzalloc(size_t size, gfp_t flags)
+static inline __alloc_size(1) void *kzalloc(size_t size, gfp_t flags)
 {
 	return kmalloc(size, flags | __GFP_ZERO);
 }
@@ -727,7 +732,7 @@ static inline void *kzalloc(size_t size, gfp_t flags)
  * @flags: the type of memory to allocate (see kmalloc).
  * @node: memory node from which to allocate
  */
-static inline void *kzalloc_node(size_t size, gfp_t flags, int node)
+static inline __alloc_size(1) void *kzalloc_node(size_t size, gfp_t flags, int node)
 {
 	return kmalloc_node(size, flags | __GFP_ZERO, node);
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-5-keescook%40chromium.org.
