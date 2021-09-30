Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPHT3CFAMGQECCFP7WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AE041E3D4
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:09 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id f2-20020a4a2202000000b0028c8a8074desf5736440ooa.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040828; cv=pass;
        d=google.com; s=arc-20160816;
        b=yqH3JIpcFAmSUvO9O5SuXU1KqO9JXvEOzHnxC9D8G2RxZcjFbHz4HaAuJVVpLhoSTO
         8INDf46/TdTGniIwpQsIBZ0eS960Gu9iSgGSEPKzoIyjJ5EllQotHZX+ufy65KSqsqHa
         6Hz7AkSigPMjWqMYaI3dVArVr3u6Wdba7O3E9iCEQzYP5WHxlo4G7W3wDaPbkqiAUcUz
         wEDXYQAZ9IdhXBskBNOmlVur7gVJi6rjBiEt/lZwmTS8WHkOTd2IXo5Yqzv8sqYJckap
         7jPPDOdEICkvHIRS2ardtSf27IGe+7Frl0cAvFCR099bqlJLNQFJxCPvbt75IATu1d5H
         CQWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xYlJaqvwWU6qAbGy25/e69DtH24N+5aMAtQG5v71T4I=;
        b=n1Utwz3e6GN+qIazapFuSqu0WrvTSyChciDav9R3OnlJUQpHVYyKuvCnFI2CSGEBkq
         WuWqVW/r4a+dmX/yS/+xXgCPLbtYVIpLfuXPH+LCaLUm+XL1x2vVk5tE0CYfO0yN/+/1
         ART/rGpQHHnHNedmL5aASpeSj688QtyO3c1ux/Kiq59oJWKof2l9llKrh7yCJQ7tQPKy
         bm7PSWARTCEAsn3bXrHjRHEtOlq/B+32QCDgROmx4IBS3ufbwXU5YBivMtcbjNhd/CEi
         FsqqDRKHr+zEXbSM7d7DO2eihpM9Kajd38Ath0qCY01yBWh61m2jdng2A+a4a3gHH2pw
         3Vlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RC1OHFyj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xYlJaqvwWU6qAbGy25/e69DtH24N+5aMAtQG5v71T4I=;
        b=rdPVO8WAv5WEg0XxjWoHIb0HYl7zApDYsLu+jKrj4Qt1cea7crR7OD7sCK4SYCgFSb
         xAe0js/QHgqOGQ5ebBT99A03V+D6ysGXy3ySPiqh6BI+56HFCO2kLrW1peR4c56lyib8
         B5hwOXcKPtZgj8+1NLJLBaEvS/pzTUVQEVkUzEYk8rFUuy6fcS8eiuRQops7FDPHDuvl
         kSqF43ZSfmDOkIP16tA7aIvqik1+LZkXl43nbfoJi/bfcIirQOdlXPLwC0/nMnLfzPaN
         dKu/D/2qwqKcxmKodD7uOT1/vraSsjfaSoN6D/yZQhOeaaZBkoLIzlmmm0fkuPnf0cEv
         p9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xYlJaqvwWU6qAbGy25/e69DtH24N+5aMAtQG5v71T4I=;
        b=PcjSn7b6DHJ8fgONcLeTEqZzY8xfVA4xWA5uENXjAWd2kGPC0ElruQiFkxIeVHwUvL
         zD7iWCcnqs64Ya3YQh65HcescVo80njCzxdv3k8k7h008iePX1lFMfGIjBbMCZbne6ds
         fSePsC3O+TJ1h98kH9BYj3qss90L8Mj4/d4aOxs/DBdY6wXdnMqDbmJu38XnXQshdKYA
         6LQkZ9b4y/F+qCDK/9HOnbYBLwJIYTrS7A5uv875QC3Rqv9CMp16X8blQHAcmUThFRhj
         iFuxX8Yq4Ro2omYAV7u69Jx9I5Q57Yjug3/r6P07zmEK/hXbJR37UKJtHgLPz4s1/v3p
         C9+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532olp8tfi41i5K6q5V2GbsKKIr0oKX3PtoXhl3+ZJzyrjamdSXl
	bDgPMcnFL7am30RCnLTTRM4=
X-Google-Smtp-Source: ABdhPJzU9MBk8S9haoqcmUdxahaNMYmGzu9Kx6jYjbusCW+yJFoj/ObNH8bHZmuuXvUqkF/kStK24Q==
X-Received: by 2002:a05:6808:1641:: with SMTP id az1mr1363570oib.67.1633040828829;
        Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1e02:: with SMTP id m2ls2506808oic.2.gmail; Thu, 30 Sep
 2021 15:27:08 -0700 (PDT)
X-Received: by 2002:aca:eb16:: with SMTP id j22mr1441445oih.158.1633040828460;
        Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040828; cv=none;
        d=google.com; s=arc-20160816;
        b=odQ9hfv5TFNmOmoQsIr0i8Ox4qo6oJXYltZuaYjsk5oOFS3d7Q1VmFJ5igchWgkhAY
         ZL71HdD6AHGsABC3EbuVveXDXC9sMroZPMApzzKKU6MsxUtrdbkOMniktURBse5dNUB8
         K85I4PP4aCP3fsw5ZucseshRHknbKYOrqdLEQtZnXCnVW8iaZnK8BHbJaIWhIurWlHRa
         Z5IIlCri9i8RuEoQ0/vuwMUZbfc0TFD6OsAZXm4alBOrAru9mPq+U0KGmictzJRabdyg
         Pg2nHFKivQB3F2N46mVucYNePjKzwp4iZ0Iy3xKaETtTAnPLAplLsdE3C4nlSa7rFE1K
         PXzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BT90LCkstOs8lo40mx0B1wAunL8tBqNcKJloICKrjPQ=;
        b=hjb/4ph4T88qVptiB/TuiV7Tv5Jz80qq7q81/wqW/XdUkz4A9cnLUtNMjbqVM/n8NN
         hhFF5+/4aiy+Y0P8+MYlROV25QbMSAc2Zi11tgFNT/e9CvQh3Rq2QnWLgy4WJ+5qT0+w
         SoDDIGL5PJw9Q6vqFZuOJ8YI3QIhB0rETY1ouOPusC+8jWC4mN3+jO1x4k3yinN+0/jR
         oDSMiEbU9DlbouVCj1SLyENHKoMjhfBNUHPw86IiGElFJksiNb+gYvLGg+Vroom56xiE
         P8CXPL++4DrJ13jR6UVB75SYRt6/kz4orqv9xyqcHSQvMH6ZGZMHb50JNhvzkLH+SF8S
         +eWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RC1OHFyj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id u18si203610oiw.3.2021.09.30.15.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id me3-20020a17090b17c300b0019f44d2e401so3779033pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
X-Received: by 2002:a17:90b:3e84:: with SMTP id rj4mr15805970pjb.208.1633040827758;
        Thu, 30 Sep 2021 15:27:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d5sm3528826pjs.53.2021.09.30.15.27.06
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
	linux-mm@kvack.org,
	Joe Perches <joe@perches.com>,
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
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 3/8] slab: Clean up function prototypes
Date: Thu, 30 Sep 2021 15:26:59 -0700
Message-Id: <20210930222704.2631604-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7538; h=from:subject; bh=4zGyVVwporv8ja7RCDSosI43pqvJgeMGlgRJrQqRrvI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm38v31ZVQqC6PbDKBvc3yzNA+GO2RmSS9QSIVZ CEBfQX6JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5twAKCRCJcvTf3G3AJmN4D/ 4vNGbbh2hscU2eFW3AiHCopH+L3OHR+xl7Sn5RTZrk1m49xZUHxkzxOJsuxYXhy1A/uknbc29G8NrP KwGpHfPdQ+AjTbaqt5hcMOP7z0ffFK6t6RCGvVu0dBpEMsBk0YDN+lG7xS5aCm9pLgXDCOT5Q/2m30 mtMjTpEVIpRFeLWSpieVomarBGwQ5q2Bv42PWTnUmL8A+iNbY426xt1VkNh67lWl8TfhUKJ6gUd5Nj pLM7NpBQH3P3/0PYamPaJzPA6ShBVCTTc3EIjA/efKRZBDx2fR+8VXRvDgKorjtlh+T6/e/dnpCA4L n1RFBxOnRqGvpOss5V00nWIeJna+DRdZaGWrrDcr7TkT8I6w0NtKlhHmKNwMrrQkJrMl6X2Ebiq4Hz tPBDAVmTdS17XVAGKPhcaBV3krF6NWj9Vtw97hrrY8zQLlDiRW2wPkug5KTrWEkYQXPBK4X8v7bDV4 M2cXzTw6K0meXie2c9UcIR4CYepC5vFj3kfaSmCwUVBb0ZkCehShHV8kqUqxfD9AA2Ahzozh2Vsqc3 P/uTWkwXaEA7ZpL0fagn4IBEdLgKf3pFvNp7yIJkm8pYQPoTcDw3aBQ1t/4nhxk3rRlRFe1IiGTDiM D7eBTHrpDKRzGi1BE3EV+JuvSOzcyI8QnotreEGoS+HGqFBBH5zSzUSD2q5w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RC1OHFyj;       spf=pass
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

Based on feedback from Joe Perches and Linus Torvalds, regularize the
slab function prototypes before making attribute changes.

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 68 ++++++++++++++++++++++----------------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 083f3ce550bc..d9f14125d7a2 100644
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
@@ -181,11 +181,11 @@ int kmem_cache_shrink(struct kmem_cache *);
 /*
  * Common kmalloc functions provided by all allocators
  */
-void * __must_check krealloc(const void *, size_t, gfp_t);
-void kfree(const void *);
-void kfree_sensitive(const void *);
-size_t __ksize(const void *);
-size_t ksize(const void *);
+void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags);
+void kfree(const void *objp);
+void kfree_sensitive(const void *objp);
+size_t __ksize(const void *objp);
+size_t ksize(const void *objp);
 #ifdef CONFIG_PRINTK
 bool kmem_valid_obj(void *object);
 void kmem_dump_obj(void *object);
@@ -426,8 +426,8 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 #endif /* !CONFIG_SLOB */
 
 void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
-void *kmem_cache_alloc(struct kmem_cache *, gfp_t flags) __assume_slab_alignment __malloc;
-void kmem_cache_free(struct kmem_cache *, void *);
+void *kmem_cache_alloc(struct kmem_cache *s, gfp_t flags) __assume_slab_alignment __malloc;
+void kmem_cache_free(struct kmem_cache *s, void *objp);
 
 /*
  * Bulk allocation and freeing operations. These are accelerated in an
@@ -436,8 +436,8 @@ void kmem_cache_free(struct kmem_cache *, void *);
  *
  * Note that interrupts must be enabled when calling these functions.
  */
-void kmem_cache_free_bulk(struct kmem_cache *, size_t, void **);
-int kmem_cache_alloc_bulk(struct kmem_cache *, gfp_t, size_t, void **);
+void kmem_cache_free_bulk(struct kmem_cache *s, size_t size, void **p);
+int kmem_cache_alloc_bulk(struct kmem_cache *s, gfp_t flags, size_t size, void **p);
 
 /*
  * Caller must not use kfree_bulk() on memory not originally allocated
@@ -450,7 +450,8 @@ static __always_inline void kfree_bulk(size_t size, void **p)
 
 #ifdef CONFIG_NUMA
 void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_kmalloc_alignment __malloc;
-void *kmem_cache_alloc_node(struct kmem_cache *, gfp_t flags, int node) __assume_slab_alignment __malloc;
+void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t flags, int node) __assume_slab_alignment
+									 __malloc;
 #else
 static __always_inline void *__kmalloc_node(size_t size, gfp_t flags, int node)
 {
@@ -464,25 +465,24 @@ static __always_inline void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t f
 #endif
 
 #ifdef CONFIG_TRACING
-extern void *kmem_cache_alloc_trace(struct kmem_cache *, gfp_t, size_t) __assume_slab_alignment __malloc;
+extern void *kmem_cache_alloc_trace(struct kmem_cache *s, gfp_t flags, size_t size)
+				   __assume_slab_alignment __malloc;
 
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
+							 gfp_t gfpflags, int node,
+							 size_t size)
 {
 	return kmem_cache_alloc_trace(s, gfpflags, size);
 }
 #endif /* CONFIG_NUMA */
 
 #else /* CONFIG_TRACING */
-static __always_inline void *kmem_cache_alloc_trace(struct kmem_cache *s,
-		gfp_t flags, size_t size)
+static __always_inline void *kmem_cache_alloc_trace(struct kmem_cache *s, gfp_t flags,
+						    size_t size)
 {
 	void *ret = kmem_cache_alloc(s, flags);
 
@@ -490,10 +490,8 @@ static __always_inline void *kmem_cache_alloc_trace(struct kmem_cache *s,
 	return ret;
 }
 
-static __always_inline void *
-kmem_cache_alloc_node_trace(struct kmem_cache *s,
-			      gfp_t gfpflags,
-			      int node, size_t size)
+static __always_inline void *kmem_cache_alloc_node_trace(struct kmem_cache *s, gfp_t gfpflags,
+							 int node, size_t size)
 {
 	void *ret = kmem_cache_alloc_node(s, gfpflags, node);
 
@@ -502,13 +500,14 @@ kmem_cache_alloc_node_trace(struct kmem_cache *s,
 }
 #endif /* CONFIG_TRACING */
 
-extern void *kmalloc_order(size_t size, gfp_t flags, unsigned int order) __assume_page_alignment __malloc;
+extern void *kmalloc_order(size_t size, gfp_t flags, unsigned int order) __assume_page_alignment
+									 __malloc;
 
 #ifdef CONFIG_TRACING
-extern void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order) __assume_page_alignment __malloc;
+extern void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
+				__assume_page_alignment __malloc;
 #else
-static __always_inline void *
-kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
+static __always_inline void *kmalloc_order_trace(size_t size, gfp_t flags, unsigned int order)
 {
 	return kmalloc_order(size, flags, order);
 }
@@ -638,8 +637,8 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-static __must_check inline void *
-krealloc_array(void *p, size_t new_n, size_t new_size, gfp_t flags)
+static inline void * __must_check krealloc_array(void *p, size_t new_n, size_t new_size,
+						 gfp_t flags)
 {
 	size_t bytes;
 
@@ -668,7 +667,7 @@ static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
  * allocator where we care about the real place the memory allocation
  * request comes from.
  */
-extern void *__kmalloc_track_caller(size_t, gfp_t, unsigned long);
+extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller);
 #define kmalloc_track_caller(size, flags) \
 	__kmalloc_track_caller(size, flags, _RET_IP_)
 
@@ -691,7 +690,8 @@ static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
 
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-4-keescook%40chromium.org.
