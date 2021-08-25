Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7NTKEQMGQEZ2VEGCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ABE3F7DBD
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:31:48 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id d21-20020a05651233d500b003cd423f70efsf213598lfg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:31:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629927107; cv=pass;
        d=google.com; s=arc-20160816;
        b=urYAxIOEIqcpCQzvciUgsouUebWs+FV1qv1dHi/4MIhjC5HmmKXbEL9lUFp4/7EqaG
         dT6KTOLKdEtXy2mAoY7GjoNTDFCigkR7tNv/o13pYSIlazvIR+vvNO19Odhi85+W6OMY
         oxouWYSk5UMANU7X/H3/q1skj1rhaokmrNUGzvkxfFR/om8OWDD4e+i396h2SjmWPjFg
         BTcC58WnoRUjWcY3Edds5rekKNfPTIRZK29sIbn507yf6aUkjluTuUwjuusbecinDEju
         HR/25PC0wsqcHQj0JNk9HUdJu471RiACWz3YHyyQqAqP4MFubVypcpOTVJeHnZcABkBY
         Voiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tkT9p/6xXJ1gGeFOqAjr9JJudWnPMNEiDKPRoLAj/pg=;
        b=bw3/tHoiNAhz/Z0ZQy5pMlK0PdDm1OyOzdGjtcScLTFliheL2r6WC+3/yDcwXtOmga
         eOW7VNdWqsNlAZaVvc0fFeOIQ/LhTfq8wYIVfGfQU1P1JFokKI+EPkcusycs+0ZYSaVf
         HJdguksp8FoiHy867jK4UTl8SMp0XUN+6QKI3C1NdJi2T1l4Kuu8GiMymYLm5T3Xd0z7
         JRTT+c2XKIGVPJKFXOg9HRCIe0F6bz2SLlmaCk/8fnfEhDFZojQ/57iTQdh5Nln7s0HX
         esX+0WIn9RVbNmO4aB3Qql4Gq6OaNTpdZ+RdZxSfADhv9wR54yNpCBLPPMB6RA43YNG7
         mtYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M9bx0SOn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkT9p/6xXJ1gGeFOqAjr9JJudWnPMNEiDKPRoLAj/pg=;
        b=iyNTzt2cSioyeHwn3pUvyLEfIg3OBfysHOnCQxlyVDPYCDXJQbZJGsWV1Ouz+OkAR3
         V6jXGiCJ0dKq+SM84TB9LiHNVF8y9fMjgwRHTaUXq/ggHaF4J8cTCmKxzIBd9SLXtgKe
         jCBjm3pRJliTnIP+5k74Xl1/mGzi/NuYf4lyBYVNRwfGibOr9vbI2VRUKd8IkptgK7ZY
         bXf6DAo0hy1NS9xz1N6kCgMD5d650MjH6QQv4mVSazTFfAi+eV9fASs3qz8WQ3jBk5tW
         oYAud/Z6w4ZKvkkO9A5mW8mfdNVplar2ZHzj+tQ2uXZ43sybNmUnc0OU9mGyhKI8UDLs
         LOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkT9p/6xXJ1gGeFOqAjr9JJudWnPMNEiDKPRoLAj/pg=;
        b=Meh/7xqIRNER17orZCJNSjFx8M7+649WjErOXlXxts3Zdy18vlmwx17cbOQnJSbLnY
         ry/khG4Pj2RJNmFbZJKJd+7b6+fkYxy+0sVdCLnlON3F9YOXJn3d7uZKv2IcXxxuq0E8
         ZkIHITJodT5MlPS1NILEeeYdYvlJHWG1U6ZyzjngjOfrfKC8BMQTRKQvYu1kOMinoXiU
         SafzEranC17/MPHYhCXOinaN4HG5s5xbA831azTKWLnwJm7WrZUuWWLVIHUVdudvqDHm
         AEQSTwDWN5SG0ftk/cvHqC6ymnCA1NXRoRXnrdSjyhwvu9pFtmUXprMRzw+gVQg8yoyz
         Ua6Q==
X-Gm-Message-State: AOAM533OKi4IbDFiZjv7VbCxumuuH1FzVstZ8eDiTXBSMEgRDrTVvah+
	WR+IBdRGdYteBMW+5RPV4uc=
X-Google-Smtp-Source: ABdhPJxXAAWX5OD9dicZTVvieuLTT+5hVrPECG9LjpoqFvDCiL047rUJc95y2Qcnr6g47KvZnku6cg==
X-Received: by 2002:a2e:9b0a:: with SMTP id u10mr246825lji.280.1629927107703;
        Wed, 25 Aug 2021 14:31:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:c13:: with SMTP id z19ls2523191lfu.0.gmail; Wed, 25
 Aug 2021 14:31:46 -0700 (PDT)
X-Received: by 2002:a05:6512:2626:: with SMTP id bt38mr127100lfb.181.1629927106651;
        Wed, 25 Aug 2021 14:31:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629927106; cv=none;
        d=google.com; s=arc-20160816;
        b=NXZU45oVa/QKghEWKffFr9lI97ykd70OqA5LUYnlbEcHJw162D0Mf/FQcmZskKLv7y
         MjZ6BdnCfByDQLuqsXUSAhakJ2LjoU0oC6gBHzgdHM8/RLtNxMB0S4qFdLRBOFykbIZ+
         36Gy3BnIm0b4jyNLCUY9OK22i4HbTFQQEdLLLWIbNtsSLNjNWYMTwdoax/W7BiB/GJwQ
         cVuvW+VDA2PIrfMofRpkKpGmB4UctmiNCNdYl+QJlej3q1EKn9kzWb6P6YWNm3ax11F6
         46hiGJitEV3DX7svcQgWLswSMcTBEnR40x6WfiDCFmtDpuaQjQ9VeOk1PwVp4SkEBZHN
         xaZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CY0qbvVPjAOFzT8qiDPpTkDYSNAZtyk57huJIJzryLM=;
        b=eRUjeb+qHc47s1QFEgguhL9x5Jk82V6Y2Tf0OuXWzDVEk7lo+J6U7z7e6RqNiCG6MK
         DgjnaqC0s41BXANLWfjplkHKowDUb+t7kD0zwkrjuoMiWKCO4m654dj6nh2UIVbxkVpa
         uXeyA5TEdg20VGK0J8xMQmnPN5MYWmqovMuhvR0bKjnkA/45OrQ5Ol+KAvgu8bdlJaVC
         RVfECc94dmY1gZaflOtMCAzuYSgUQKd1ozj6eya54Zeh6DRGlptSoGi9eiQ6XgwL9YM0
         f5bhzQIMrCZAWFJVlVlhlgQsb5GMrqeLaYM4tXgI/2A2U2nGe5hDsJvTeE+l4KB17m74
         yftg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M9bx0SOn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id i12si59475lfc.10.2021.08.25.14.31.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id o10so1792562lfr.11
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 14:31:46 -0700 (PDT)
X-Received: by 2002:a19:7117:: with SMTP id m23mr134039lfc.73.1629927106160;
 Wed, 25 Aug 2021 14:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210818214021.2476230-1-keescook@chromium.org> <20210818214021.2476230-5-keescook@chromium.org>
In-Reply-To: <20210818214021.2476230-5-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 14:31:34 -0700
Message-ID: <CAKwvOdmxRMcwKtWt+FogVY8iXn=vQ+0AZ36maJP2LbSdo_NNjg@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] slab: Add __alloc_size attributes for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>, 
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org, Joe Perches <joe@perches.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Andy Whitcroft <apw@canonical.com>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M9bx0SOn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Aug 18, 2021 at 2:40 PM Kees Cook <keescook@chromium.org> wrote:
>
> As already done in GrapheneOS, add the __alloc_size attribute for
> regular kmalloc interfaces, to provide additional hinting for better
> bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> optimizations.
>
> Co-developed-by: Daniel Micay <danielmicay@gmail.com>
> Signed-off-by: Daniel Micay <danielmicay@gmail.com>
> Cc: Christoph Lameter <cl@linux.com>
> Cc: Pekka Enberg <penberg@kernel.org>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

This is a good start, so
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Do we also want to attribute:
* __kmalloc_index
* kmem_cache_free_bulk
* kmem_cache_alloc_bulk
* kmem_cache_alloc_trace
* kmalloc_order
* kmalloc_order_trace
* kmalloc_large
* kmalloc_node
* __kmalloc_track_caller
* kmalloc_array_node
* __kmalloc_node_track_caller

> ---
>  include/linux/slab.h | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 10fd0a8c816a..6ce826d8194d 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
>  /*
>   * Common kmalloc functions provided by all allocators
>   */
> -__must_check
> +__must_check __alloc_size(2)
>  void *krealloc(const void *objp, size_t new_size, gfp_t flags);
>  void kfree(const void *objp);
>  void kfree_sensitive(const void *objp);
> @@ -426,6 +426,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
>  #define kmalloc_index(s) __kmalloc_index(s, true)
>  #endif /* !CONFIG_SLOB */
>
> +__alloc_size(1)
>  void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
>  void *kmem_cache_alloc(struct kmem_cache *s, gfp_t flags) __assume_kmalloc_alignment __malloc;
>  void kmem_cache_free(struct kmem_cache *s, void *objp);
> @@ -450,6 +451,7 @@ static __always_inline void kfree_bulk(size_t size, void **p)
>  }
>
>  #ifdef CONFIG_NUMA
> +__alloc_size(1)
>  void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_slab_alignment __malloc;
>  void *kmem_cache_alloc_node(struct kmem_cache *s, gfp_t flags, int node)
>                             __assume_slab_alignment __malloc;
> @@ -574,6 +576,7 @@ static __always_inline void *kmalloc_large(size_t size, gfp_t flags)
>   *     Try really hard to succeed the allocation but fail
>   *     eventually.
>   */
> +__alloc_size(1)
>  static __always_inline void *kmalloc(size_t size, gfp_t flags)
>  {
>         if (__builtin_constant_p(size)) {
> @@ -596,6 +599,7 @@ static __always_inline void *kmalloc(size_t size, gfp_t flags)
>         return __kmalloc(size, flags);
>  }
>
> +__alloc_size(1)
>  static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
>  {
>  #ifndef CONFIG_SLOB
> @@ -620,6 +624,7 @@ static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
>   * @size: element size.
>   * @flags: the type of memory to allocate (see kmalloc).
>   */
> +__alloc_size(1, 2)
>  static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
>  {
>         size_t bytes;
> @@ -638,7 +643,7 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
>   * @new_size: new size of a single member of the array
>   * @flags: the type of memory to allocate (see kmalloc)
>   */
> -__must_check
> +__must_check __alloc_size(2, 3)
>  static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
>                                    gfp_t flags)
>  {
> @@ -656,6 +661,7 @@ static inline void *krealloc_array(void *p, size_t new_n, size_t new_size,
>   * @size: element size.
>   * @flags: the type of memory to allocate (see kmalloc).
>   */
> +__alloc_size(1, 2)
>  static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
>  {
>         return kmalloc_array(n, size, flags | __GFP_ZERO);
> @@ -685,6 +691,7 @@ static inline void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
>         return __kmalloc_node(bytes, flags, node);
>  }
>
> +__alloc_size(1, 2)
>  static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
>  {
>         return kmalloc_array_node(n, size, flags | __GFP_ZERO, node);
> @@ -718,6 +725,7 @@ static inline void *kmem_cache_zalloc(struct kmem_cache *k, gfp_t flags)
>   * @size: how many bytes of memory are required.
>   * @flags: the type of memory to allocate (see kmalloc).
>   */
> +__alloc_size(1)
>  static inline void *kzalloc(size_t size, gfp_t flags)
>  {
>         return kmalloc(size, flags | __GFP_ZERO);
> @@ -729,25 +737,31 @@ static inline void *kzalloc(size_t size, gfp_t flags)
>   * @flags: the type of memory to allocate (see kmalloc).
>   * @node: memory node from which to allocate
>   */
> +__alloc_size(1)
>  static inline void *kzalloc_node(size_t size, gfp_t flags, int node)
>  {
>         return kmalloc_node(size, flags | __GFP_ZERO, node);
>  }
>
> +__alloc_size(1)
>  extern void *kvmalloc_node(size_t size, gfp_t flags, int node);
> +__alloc_size(1)
>  static inline void *kvmalloc(size_t size, gfp_t flags)
>  {
>         return kvmalloc_node(size, flags, NUMA_NO_NODE);
>  }
> +__alloc_size(1)
>  static inline void *kvzalloc_node(size_t size, gfp_t flags, int node)
>  {
>         return kvmalloc_node(size, flags | __GFP_ZERO, node);
>  }
> +__alloc_size(1)
>  static inline void *kvzalloc(size_t size, gfp_t flags)
>  {
>         return kvmalloc(size, flags | __GFP_ZERO);
>  }
>
> +__alloc_size(1, 2)
>  static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
>  {
>         size_t bytes;
> @@ -758,11 +772,13 @@ static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
>         return kvmalloc(bytes, flags);
>  }
>
> +__alloc_size(1, 2)
>  static inline void *kvcalloc(size_t n, size_t size, gfp_t flags)
>  {
>         return kvmalloc_array(n, size, flags | __GFP_ZERO);
>  }
>
> +__alloc_size(3)
>  extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize,
>                 gfp_t flags);
>  extern void kvfree(const void *addr);
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmxRMcwKtWt%2BFogVY8iXn%3DvQ%2B0AZ36maJP2LbSdo_NNjg%40mail.gmail.com.
