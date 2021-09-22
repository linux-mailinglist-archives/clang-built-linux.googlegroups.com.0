Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEXCV2FAMGQEH6GA6FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DF941538C
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 00:41:23 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id k30-20020a9d4b9e000000b005472033f04csf1983826otf.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 15:41:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632350482; cv=pass;
        d=google.com; s=arc-20160816;
        b=woe8d4Dpwgp2T/a0FSeoACHjDWWOuspLeDBR0VKiJiLkCj5WPQsBKPUCQxwNrNc0tJ
         y6hMCx6C6vWRBEh+FnE1rE8CaOW5dOMtJ1s7+gvdQNhQdff1DsYe2++GW/UoI3lppN62
         6R8LYpU4Wi+0yRQ/C5P032WQ/L3g91mlXhRZh4AOipij1YT6j9mK1FIPVqck5eh/n6ec
         R41hZLWMe8TBiYG/5AG75vBfFDvfA+lEYmeOlLKKsKIc8qvrlG3ORpnksunPeZ8cevgw
         yvdUDgH644Rx6ho7+k4JDTpOFsPuX+FKDNl8OlfoRUh2PKE8I4IOh8uFxR8kQqJvu8qN
         EVQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VmhkwMMi6XwOc0XmIQpD3idPn9C3UnAXMKkimvQHBm4=;
        b=LZV5fJF8o72Ve6e54P3tPzkhVNGNFHerEMWAxjB1UumyB3j2/2F7Yq6+CPW9ou6aHk
         9WNk3iM2sakgNBNmsHeF4ijwDv9U9xCS8XbRio5kJKdLmNMUlFeuJacQ14DQ/ft/4EZq
         qmWxV/UGJZMoRH5Cv7L5tuzYOlTBi35VW4g9QqsTdg/h42gMYSp0H6okYU4XKpU8QIz0
         1UOal16s1ucWRuxyLBr46+LhiX921sr+EKnbpun/Ke7lvnz18DtP6O1hOoEJucnhcBts
         ZXId+qUNLsBFJGqbu/Y5suV1OkaF2MFh8UDGdfqLvkvrJRZGhbCOhkPex1SIDFerG3rq
         s3cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hH+Rj6Hl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VmhkwMMi6XwOc0XmIQpD3idPn9C3UnAXMKkimvQHBm4=;
        b=stLdaeWtY7XoPmdYvNmM+V5FYVqw2m3MZr4wc2+TofjFVmwjF4LspR/cAbSU3MN4LW
         ojoiXrltKtTAyK4S8qn7VeNicNujuiqH8QrMgfuJ+hQoXzEJhEOxD4cbqf9HiQYg0Y4G
         AchexXidSKr2zVCA8f6p49Xe9LexY+o19JRCgTnXPflP/G9Weoee1gqca+5zf+3QjOM2
         ILLSS8TS4LfoVMughEorMid+5diKd/iYmw1ZKBDJ5wa1lTO22m4+Fy2H2aP+NzpXrAUG
         bvdBKM6zJlGhOjwdF96hsaI1t2SgLnrBYlrZBUGuH7LpzT3uQFEhVozLjOF8dPOd0m8+
         ky7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VmhkwMMi6XwOc0XmIQpD3idPn9C3UnAXMKkimvQHBm4=;
        b=CRJt91BseLR2b3wRwI06tQqBv0K57Z0XN7+IaUl2PrzynQFoVcqQsXl3vonppm7DVl
         5XpoueijoX1BMSpm8yO92NsbkWU+sw/bzM+jAfUzwDA96Xyv4ZTb8ZQCV7wmYmiSdCkT
         5eMuqCawYvbDVFfftkjmztOq3UpRkILZi64riFCchZX6zv2CKVVXmq8e+Tq5SUV4s21p
         Gpfk6dg2Ccaqu1HPT0ws5lLXODwdpkKooECx58PDRk0zUdr+WENDPA2AGwd4nkdg/xsY
         j6Yp+Q5k9i2Mx85/ibL/rCR3g9HMDwfdOUSo9pD4mOlCJglb2Z0ps1ymDVRm063nL6bm
         1QWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dFczH3KTMxlnC9NN9B2AWXRNpqvUKE3WUJRS1PF0LjYPum1lk
	zd869y7IdOMUK1zNV8AtqM8=
X-Google-Smtp-Source: ABdhPJwcqEHvIsIFB6yBitwmZe/BYEFI9za8AP7Aqy3tID3Hs0CFPPioQK//+tEDY6jo0WAZC76dxA==
X-Received: by 2002:a05:6808:f0c:: with SMTP id m12mr1243023oiw.149.1632350482307;
        Wed, 22 Sep 2021 15:41:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls1087165oiw.4.gmail; Wed,
 22 Sep 2021 15:41:21 -0700 (PDT)
X-Received: by 2002:a05:6808:13c8:: with SMTP id d8mr1267720oiw.104.1632350481914;
        Wed, 22 Sep 2021 15:41:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632350481; cv=none;
        d=google.com; s=arc-20160816;
        b=RAfUzdUO6m1/5jno+UU5IDeawtXktmhMcEQLlpyNYAyaknOm1F36CGnmnxitgfq6V8
         1SIiXodJsyQZnFPGoMvmb55UMTK8tWfognUsWb7wrxZh4hF3sF7eIeH8pGCh/1F7LLf7
         S50sLo106VqRyNqom8u8iQ9ELhJ/q6BtaVGl1CHempWQcDyPY0cTHTThbT3oa7UFHTWy
         M59o/yeE1bSGyaERkwuX3cJVdvCqlKwW0oyBJQgSht86LcHvdGS1/5OUeJMQwz2fjgpS
         szkLgf0/TMReegoIIZHxowjSp9IYqczEvcNiVuHbMtKoytsELdtKWI9SNoMOoDf4+6/8
         9YQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Clu/CMqYqn57kn46zv2wUM8gp0cFgkCwKnhfOw8qQMI=;
        b=HmWO1eWZI9kMn/PiQlJJiXZihVRTb6d6TfJGDF27YGT0pOgEG7aqvd0ZPRwx6Zf47a
         5lUv9yCqWik4PRa8QlOi+XsNTmw/KhiJCbPYVECy76fxi3y2BPFpZhx7/MeGlS9USYyk
         a49u/iOxothBQMtx5sJwTqMhUrJ7cuAJGcRMDKqRXrKix0cn4TWQUIl4yEREu5QO/Tl7
         wB8QuTacwmUvm3jM2V/5ptAXoP1o2SRbo9c3xGvOVRbTfsz/ZyQFOVmUDgbciNU6E2g/
         wLruXq1hlJX5oY+as1izIxgIc9A7WOLQZavQ7qyjcpywH6RuE+MZM8UkAXRTa0COVu3I
         oyew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hH+Rj6Hl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id s20si319792ois.4.2021.09.22.15.41.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 15:41:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id e7so4357950pgk.2
        for <clang-built-linux@googlegroups.com>; Wed, 22 Sep 2021 15:41:21 -0700 (PDT)
X-Received: by 2002:a63:b04c:: with SMTP id z12mr1164353pgo.371.1632350481421;
        Wed, 22 Sep 2021 15:41:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z62sm6856436pjj.53.2021.09.22.15.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 15:41:20 -0700 (PDT)
Date: Wed, 22 Sep 2021 15:41:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org,
	Joe Perches <joe@perches.com>, Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 4/7] slab: Add __alloc_size attributes for better
 bounds checking
Message-ID: <202109211608.B9B6DEE@keescook>
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-5-keescook@chromium.org>
 <CAKwvOdmxRMcwKtWt+FogVY8iXn=vQ+0AZ36maJP2LbSdo_NNjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmxRMcwKtWt+FogVY8iXn=vQ+0AZ36maJP2LbSdo_NNjg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hH+Rj6Hl;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 25, 2021 at 02:31:34PM -0700, Nick Desaulniers wrote:
> On Wed, Aug 18, 2021 at 2:40 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > As already done in GrapheneOS, add the __alloc_size attribute for
> > regular kmalloc interfaces, to provide additional hinting for better
> > bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > optimizations.
> >
> > Co-developed-by: Daniel Micay <danielmicay@gmail.com>
> > Signed-off-by: Daniel Micay <danielmicay@gmail.com>
> > Cc: Christoph Lameter <cl@linux.com>
> > Cc: Pekka Enberg <penberg@kernel.org>
> > Cc: David Rientjes <rientjes@google.com>
> > Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Vlastimil Babka <vbabka@suse.cz>
> > Cc: linux-mm@kvack.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> This is a good start, so
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks!

> Do we also want to attribute:
> * __kmalloc_index

This is just the bucketizer (it returns "int" for the kmalloc bucket).

> * kmem_cache_free_bulk

Not an allocator.

> * kmem_cache_alloc_bulk

This allocates a list of pointers, where "size" is the length of the
list.

> * kmalloc_order
> * kmalloc_order_trace
> * kmalloc_large

Yes, these should be marked, good point.

> * kmalloc_node

This was already marked.

> * kmem_cache_alloc_trace
> * __kmalloc_track_caller
> * __kmalloc_node_track_caller

Yeah, these might get passed through in LTO situations. I'll add them.

> * kmalloc_array_node

I'll add this -- I thought it was already here but it got missed.

Thanks!

-Kees

> 
> > ---
> >  include/linux/slab.h | 20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/linux/slab.h b/include/linux/slab.h
> > index 10fd0a8c816a..6ce826d8194d 100644
> > --- a/include/linux/slab.h
> > +++ b/include/linux/slab.h
> > @@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
> >  /*
> >   * Common kmalloc functions provided by all allocators
> >   */
> > -__must_check
> > +__must_check __alloc_size(2)
> >  void *krealloc(const void *objp, size_t new_size, gfp_t flags);
> >  void kfree(const void *objp);
> >  void kfree_sensitive(const void *objp);
> > @@ -426,6 +426,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
> >  #define kmalloc_index(s) __kmalloc_index(s, true)
> >  #endif /* !CONFIG_SLOB */
> >
> > +__alloc_size(1)
> >  void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
> >  void *kmem_cache_alloc(struct kmem_cache *s, gfp_t flags) __assume_kmalloc_alignment __malloc;
> >  void kmem_cache_free(struct kmem_cache *s, void *objp);
> > @@ -450,6 +451,7 @@ static __always_inline void kfree_bulk(size_t size, void **p)
> >  }
> >
> >  #ifdef CONFIG_NUMA
> > +__alloc_size(1)
> >  void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_slab_alignment __malloc;
> >  void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t flags, int node)
> >                             __assume_slab_alignment __malloc;
> > @@ -574,6 +576,7 @@ static __always_inline void *kmalloc_large(size_t size, gfp_t flags)
> >   *     Try really hard to succeed the allocation but fail
> >   *     eventually.
> >   */
> > +__alloc_size(1)
> >  static __always_inline void *kmalloc(size_t size, gfp_t flags)
> >  {
> >         if (__builtin_constant_p(size)) {
> > @@ -596,6 +599,7 @@ static __always_inline void *kmalloc(size_t size, gfp_t flags)
> >         return __kmalloc(size, flags);
> >  }
> >
> > +__alloc_size(1)
> >  static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
> >  {
> >  #ifndef CONFIG_SLOB
> > @@ -620,6 +624,7 @@ static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
> >   * @size: element size.
> >   * @flags: the type of memory to allocate (see kmalloc).
> >   */
> > +__alloc_size(1, 2)
> >  static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
> >  {
> >         size_t bytes;
> > @@ -638,7 +643,7 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
> >   * @new_size: new size of a single member of the array
> >   * @flags: the type of memory to allocate (see kmalloc)
> >   */
> > -__must_check
> > +__must_check __alloc_size(2, 3)
> >  static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
> >                                    gfp_t flags)
> >  {
> > @@ -656,6 +661,7 @@ static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
> >   * @size: element size.
> >   * @flags: the type of memory to allocate (see kmalloc).
> >   */
> > +__alloc_size(1, 2)
> >  static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
> >  {
> >         return kmalloc_array(n, size, flags | __GFP_ZERO);
> > @@ -685,6 +691,7 @@ static inline void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
> >         return __kmalloc_node(bytes, flags, node);
> >  }
> >
> > +__alloc_size(1, 2)
> >  static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
> >  {
> >         return kmalloc_array_node(n, size, flags | __GFP_ZERO, node);
> > @@ -718,6 +725,7 @@ static inline void *kmem_cache_zalloc(struct kmem_cache *k, gfp_t flags)
> >   * @size: how many bytes of memory are required.
> >   * @flags: the type of memory to allocate (see kmalloc).
> >   */
> > +__alloc_size(1)
> >  static inline void *kzalloc(size_t size, gfp_t flags)
> >  {
> >         return kmalloc(size, flags | __GFP_ZERO);
> > @@ -729,25 +737,31 @@ static inline void *kzalloc(size_t size, gfp_t flags)
> >   * @flags: the type of memory to allocate (see kmalloc).
> >   * @node: memory node from which to allocate
> >   */
> > +__alloc_size(1)
> >  static inline void *kzalloc_node(size_t size, gfp_t flags, int node)
> >  {
> >         return kmalloc_node(size, flags | __GFP_ZERO, node);
> >  }
> >
> > +__alloc_size(1)
> >  extern void *kvmalloc_node(size_t size, gfp_t flags, int node);
> > +__alloc_size(1)
> >  static inline void *kvmalloc(size_t size, gfp_t flags)
> >  {
> >         return kvmalloc_node(size, flags, NUMA_NO_NODE);
> >  }
> > +__alloc_size(1)
> >  static inline void *kvzalloc_node(size_t size, gfp_t flags, int node)
> >  {
> >         return kvmalloc_node(size, flags | __GFP_ZERO, node);
> >  }
> > +__alloc_size(1)
> >  static inline void *kvzalloc(size_t size, gfp_t flags)
> >  {
> >         return kvmalloc(size, flags | __GFP_ZERO);
> >  }
> >
> > +__alloc_size(1, 2)
> >  static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
> >  {
> >         size_t bytes;
> > @@ -758,11 +772,13 @@ static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
> >         return kvmalloc(bytes, flags);
> >  }
> >
> > +__alloc_size(1, 2)
> >  static inline void *kvcalloc(size_t n, size_t size, gfp_t flags)
> >  {
> >         return kvmalloc_array(n, size, flags | __GFP_ZERO);
> >  }
> >
> > +__alloc_size(3)
> >  extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize,
> >                 gfp_t flags);
> >  extern void kvfree(const void *addr);
> > --
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109211608.B9B6DEE%40keescook.
