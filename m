Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWH46WEAMGQEU3KXSII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 722D03F0D83
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:41 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id f13-20020a056e02168d00b002244a6aa233sf2048520ila.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322840; cv=pass;
        d=google.com; s=arc-20160816;
        b=D3h/kq4eiBHJ79sn1V6riERd0qAm0uEzTbZPtU99zpOgZ7fqbuNbFWLum06S7Wy0rV
         YRuYpQ38/iy5zkumJ4GuBwkAdAeeNduTsG2Kzt5vLH9zZqOLafFDUU2fFO1isLWWLEvv
         42iM8SJyI0dyurJDGHh/m4ar5QciCae+YDuefDzR1lf7GzGMFTGbz/WK+CtgLVNdqGbT
         tCFCLt5Z7nvAG1X2vlS+57sZ0MGz8IobON0XAkppFMQ3O2ZhbLPQbzY9kSlW2WXGd/lP
         z+YnR6BC5UZzvFuYAb1RbvJzdLeD8W19dggq87K4uHdiH4wAZT6RvjqCwvPneSS3lJEC
         EAzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IUDhQNk4u96oA0BG6CzQn+8TVK5sqe2hIUbyasx255Q=;
        b=MbEYhM23IaDzhJsK+EGbg6szRKJfAQha7GUZ9XX1X0Yqw2fkeSNI8mFe9HZDKSqYof
         lPLV2rMt9nGKY3poa2mfHwY1FVsVc0zP8GHLpwB9CCauC+kezxzLvyDUONfbRJWhyDV0
         YY96YEs1w+ABqyPIEqVS0eb3UOBwzbNZ13bzF9A24tKDMcCt7xQlplr2x/HbUzDVsxXa
         SYCSKuAgnwv3B1iG5RyCCr3S2R7hOxMgZ2MW0x3Um9sjSZeKMEDTRag5V74TbAoi/jId
         ijEKJtyh6iPtAJPtQjknN49sLKGrtwiDCOBwDdF9bU4n+CojfBbKmrbLCvnqsabNkwvX
         uFyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lJaSXy0l;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IUDhQNk4u96oA0BG6CzQn+8TVK5sqe2hIUbyasx255Q=;
        b=YBJ8wfe6OblE/mGRnXa7S79ZZKq0jly6QBYMeUT5lrYoKJIvHT5qGUBecnBiGSpMZy
         6eiMWawV6a9PC/a7QzE2pS4Tki5SNpgXKAVVYkG+3q4etvRvlSknlSymBiMuUrHcJIdy
         zRH0wKEbktcTKj7uIA0oS2v5S0c5NRw7Fh1F+oKdmxloOUppiwDcuyFi7I4AgIQRG/9P
         txXn7qMJcaRhLVtgh9tiQlENmG4T6wG/hCmJ/XbO9l3M5aojTMSgfEc8afNWz3vmcK1T
         DUbZYGNylj/2Puk6E4VqEuEG1xXD8MIrKU2Qukrf4xsIfss1N9MImGYSQ0v2otRsT/cV
         yv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IUDhQNk4u96oA0BG6CzQn+8TVK5sqe2hIUbyasx255Q=;
        b=knO4c0ydE40SAB/01kHvdMwPMgxHUMGRodtGcKVoPUHli4xspdeWJYNcK1XNPRTFN6
         FMLxkBxxWsPlWXYMvovlTzi80ip127pBuwawKFKAXYHXubfjS9yzIbAiam6ShYOQNZP7
         7UHtkTgrNXW/sHTBBx6VtR2JXNW/TmUWTNgCk6u10lS0Ia02+j8qHHtezl4FG7lxdc/K
         NJMa9Qa26brjFqdxf5bhVbo2xO0K0cdSDHNw27dpdB34U4sNzsfg9/YXbxGRnP8N5aEb
         Gg7ouwJmmyMk8812aBKxs5L0qnS/VyCdFYub/vxaHZ39j+vBPNNrXOjMVU7TXgRK2kyY
         E0Nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qkowqIetya+uZXA3qSK8H2qqBD6XIziaIwHOl9zJAGE0R8pYK
	/oOPOJnThBLDmM4+q06e3AQ=
X-Google-Smtp-Source: ABdhPJxKBfvXLob/OKDmdkhvmOtH8lG+d6keI8hLB3ZCF5JURS+jhFnuuKuKNFcLKh7yBjV0S5OFPg==
X-Received: by 2002:a92:d5d1:: with SMTP id d17mr7443090ilq.106.1629322840501;
        Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca8c:: with SMTP id t12ls521141ilo.7.gmail; Wed, 18 Aug
 2021 14:40:40 -0700 (PDT)
X-Received: by 2002:a92:9505:: with SMTP id y5mr3328275ilh.168.1629322840131;
        Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322840; cv=none;
        d=google.com; s=arc-20160816;
        b=dIW4bdz9ABQUSEcIqGu9hgqO8FWVJYmF430v9LJdvFQVKohaqOhOic5Hkrh17NTl8W
         OcSKDpULaM/pqOaJ90LiSDqY8yf++rE6dDvdJ/lOhD6G1Yuoqp12nl/KEaWn+b9Olvlk
         g9obSmz9XLj5y62Y96vvo128BKTgGidRGYx0S2H8uw71ClT2gxp5MHUltSF/cmofYMK9
         +gOy29Elakfiw2rfA+Y708cYir57JysGmv82z0UA+ugvFqpJ2ZJ9PeCAh5OAnKg8rRxg
         W9mq/VSbV57e5hbqvjxGVa2CerukDKSQYS3VPDZCZDYNbcxAtx8IB62cvOgxJYv7qQ7w
         jCfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MwqyUyVBfuGOdnrF3tl+l2Mzk/6qR2NKBKGCWMmBzR4=;
        b=ofKpmr+UlOsWtDxNT9vMyTcrzXt+2hrMFFYiGaVal+ii2Mg5obreWLYvr/hnnTo4Im
         mJT5rpCv/KwUnHixpnzPAYJQIMHRoEAuo5UM1iHQPE900n90JuR82+Vqb++uwNWUh5yp
         XSck95V027YX0qkSASZY4EWwVvNUDwhGyf5yQBDoyrxVLAIjWky7L97DUAm12tPAILi3
         ymfb0XmEjx4V8YKnr0ROXr540UBOQOX0bSGEKAPKsB8lCt+MeIVemnBumr89Z3NAQ4DD
         GvqxvZCLO67aZ3jz8F4u1pTh3p2MNejhr2QKyVlnNJrcGN3D9CxqSMU53hT4afTJfsbh
         Iddw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lJaSXy0l;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id e12si102882ile.4.2021.08.18.14.40.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id w6so2664464plg.9
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
X-Received: by 2002:a17:902:d343:b029:12d:3624:d997 with SMTP id l3-20020a170902d343b029012d3624d997mr9013434plk.79.1629322839521;
        Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n5sm784454pfj.49.2021.08.18.14.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	linux-mm@kvack.org,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 4/7] slab: Add __alloc_size attributes for better bounds checking
Date: Wed, 18 Aug 2021 14:40:18 -0700
Message-Id: <20210818214021.2476230-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5608; h=from:subject; bh=AW2v9G59SMc9b2TjyulXwopISZ5N5UugKCOULL9fb0g=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5DF+L11JdRBLUW37gUf3S/QgZ9yRAYxPnw6Q5k rK1KJQ+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+QwAKCRCJcvTf3G3AJoW8EA CDq9Jkfm5K3l1TaVzOEW/WA0AfLKl/mG8AZKQHZbrk3EUW1tUrvcARr4YvCurHpfayCK2mdIFt0GIw Hh0y0T8Q06jg9bE5y6an/1XGvQXzFzowT0kvZLIIo/TyvZWmc2AbFXw621OA7tmldlP9x4hbhLkgMi nWYvZmMF32QWod+5iOwwPT3J01bnmGlJ/5IceWnCUrWslK88vS277HFMVAmEO85i/lLXi3oT0I/k2V jhg89zp3n2ozHJWEJ5DJ/o8akLgkaN9rsn159jGQKOcMoChQel2R6Jz+740W6pbfbhNyKamS26+Ocb 58aXqfzxYjoym/TNuU7FKENR+835OudmiWZoQqrfMDdyFVisNqSktorQ/mzluQc10gC4GC2sBhsLI0 s28g1QorO89zcfaK7hh4GEeTleyChCevyhWuG1voD4/Nu+cUAbw5sgZprunMbuc2vC9xTACQbkVNO/ k6LEMglwD89MLoVJ9850MJ+QU1qpFwCQAsqJ4Wx8zuRK79tdqgsfIlgq/eh4pvMCk/ERvXQ3/Y0nhO i9OkcUWaiKVjP29BjemVqIBtgDriJWQPrwn7i6uOwE9PjGWjvTy8VvX73yxIvtBgj76E94gVrZTdEy D3CzpNDxiSxMMvDJT9F5MUzEACKmTVOHzk6cg+20nic6/oMh3FGFaRMesCIQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lJaSXy0l;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

As already done in GrapheneOS, add the __alloc_size attribute for
regular kmalloc interfaces, to provide additional hinting for better
bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
optimizations.

Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 10fd0a8c816a..6ce826d8194d 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
 /*
  * Common kmalloc functions provided by all allocators
  */
-__must_check
+__must_check __alloc_size(2)
 void *krealloc(const void *objp, size_t new_size, gfp_t flags);
 void kfree(const void *objp);
 void kfree_sensitive(const void *objp);
@@ -426,6 +426,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 #define kmalloc_index(s) __kmalloc_index(s, true)
 #endif /* !CONFIG_SLOB */
 
+__alloc_size(1)
 void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
 void *kmem_cache_alloc(struct kmem_cache *s, gfp_t flags) __assume_kmalloc_alignment __malloc;
 void kmem_cache_free(struct kmem_cache *s, void *objp);
@@ -450,6 +451,7 @@ static __always_inline void kfree_bulk(size_t size, void **p)
 }
 
 #ifdef CONFIG_NUMA
+__alloc_size(1)
 void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_slab_alignment __malloc;
 void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t flags, int node)
 			    __assume_slab_alignment __malloc;
@@ -574,6 +576,7 @@ static __always_inline void *kmalloc_large(size_t size, gfp_t flags)
  *	Try really hard to succeed the allocation but fail
  *	eventually.
  */
+__alloc_size(1)
 static __always_inline void *kmalloc(size_t size, gfp_t flags)
 {
 	if (__builtin_constant_p(size)) {
@@ -596,6 +599,7 @@ static __always_inline void *kmalloc(size_t size, gfp_t flags)
 	return __kmalloc(size, flags);
 }
 
+__alloc_size(1)
 static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
 {
 #ifndef CONFIG_SLOB
@@ -620,6 +624,7 @@ static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
  * @size: element size.
  * @flags: the type of memory to allocate (see kmalloc).
  */
+__alloc_size(1, 2)
 static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
 {
 	size_t bytes;
@@ -638,7 +643,7 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-__must_check
+__must_check __alloc_size(2, 3)
 static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
 				   gfp_t flags)
 {
@@ -656,6 +661,7 @@ static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
  * @size: element size.
  * @flags: the type of memory to allocate (see kmalloc).
  */
+__alloc_size(1, 2)
 static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
 {
 	return kmalloc_array(n, size, flags | __GFP_ZERO);
@@ -685,6 +691,7 @@ static inline void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
 	return __kmalloc_node(bytes, flags, node);
 }
 
+__alloc_size(1, 2)
 static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
 {
 	return kmalloc_array_node(n, size, flags | __GFP_ZERO, node);
@@ -718,6 +725,7 @@ static inline void *kmem_cache_zalloc(struct kmem_cache *k, gfp_t flags)
  * @size: how many bytes of memory are required.
  * @flags: the type of memory to allocate (see kmalloc).
  */
+__alloc_size(1)
 static inline void *kzalloc(size_t size, gfp_t flags)
 {
 	return kmalloc(size, flags | __GFP_ZERO);
@@ -729,25 +737,31 @@ static inline void *kzalloc(size_t size, gfp_t flags)
  * @flags: the type of memory to allocate (see kmalloc).
  * @node: memory node from which to allocate
  */
+__alloc_size(1)
 static inline void *kzalloc_node(size_t size, gfp_t flags, int node)
 {
 	return kmalloc_node(size, flags | __GFP_ZERO, node);
 }
 
+__alloc_size(1)
 extern void *kvmalloc_node(size_t size, gfp_t flags, int node);
+__alloc_size(1)
 static inline void *kvmalloc(size_t size, gfp_t flags)
 {
 	return kvmalloc_node(size, flags, NUMA_NO_NODE);
 }
+__alloc_size(1)
 static inline void *kvzalloc_node(size_t size, gfp_t flags, int node)
 {
 	return kvmalloc_node(size, flags | __GFP_ZERO, node);
 }
+__alloc_size(1)
 static inline void *kvzalloc(size_t size, gfp_t flags)
 {
 	return kvmalloc(size, flags | __GFP_ZERO);
 }
 
+__alloc_size(1, 2)
 static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
 {
 	size_t bytes;
@@ -758,11 +772,13 @@ static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
 	return kvmalloc(bytes, flags);
 }
 
+__alloc_size(1, 2)
 static inline void *kvcalloc(size_t n, size_t size, gfp_t flags)
 {
 	return kvmalloc_array(n, size, flags | __GFP_ZERO);
 }
 
+__alloc_size(3)
 extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize,
 		gfp_t flags);
 extern void kvfree(const void *addr);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-5-keescook%40chromium.org.
