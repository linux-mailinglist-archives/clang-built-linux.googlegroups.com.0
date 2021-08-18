Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXVL6KEAMGQERCQ4J7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C50103EF9C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:08:47 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id n64-20020acabd430000b029025a4350857esf905752oif.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:08:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629263326; cv=pass;
        d=google.com; s=arc-20160816;
        b=dwaVDkdJ1RDcbKRFczTW8CqxEGS6qoxgGMw6Clx9jmLkUWFuEAa0c7rcnan3jpZ815
         mBIujo7DGeYhBxn6NPVeBUoQzIMU/ZCNGugsYuSlwL8eBJPFpxRGjhemg95tom20cvE6
         orqjmlVahXhLkVIg9x5c9Ziv4PtvhrU3artBpn4Gn9QanDLbKUk2Blr8coAuvQnjSwOL
         o5U8iiPN2SeTsuIwijQTDJtdfeDf+/3AgyUbR3WFQJ/327FGw0ax/5aIkcxr3Vnc+jhE
         UdL0Al0fSl783R5rMcI2q773cfUwcYzqBN1tlOrEpZIiPex+r1mcQ5c9edZLvV2FAcxJ
         Ne3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vsl9s/jsmyuRx++TbIaw4YqnkPqBTNuIb2Zr3FAgrc8=;
        b=hy+nWJZdfWyqv/oH5cX3zEQGaAxRepT5Vk40fhyZ3KT/g0nEnFgDy8wceOc39eTM1u
         gx8+I1b3fxCg8r0uvzK7KKJrWuEopNZDS/5s872i6GdY8jfqUYl771yLb0oCIPv20pUn
         f3YY1zVCHuSwqETyG3jkIfMpPESVvO0tQ107A1usjrwL1CU+BgOmqavY6s6TQY76sy/z
         8elJ/gz/ItwNAts8np/VcoxsHmdr7LO0aYLwP6pZDbtjGTKMaPzuC0W5oDmkuFD1VLc0
         YSCMw64AllWIPxV+G9eljHqZcUysCGnRVer+UE9HkMpuUGLniOu5k8WnCvqStywljtQy
         fjnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XoqR3saV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vsl9s/jsmyuRx++TbIaw4YqnkPqBTNuIb2Zr3FAgrc8=;
        b=pWsmh9tx5UNWejB52AW0DcSjzOjkyk5ehg+S8fWzEBzLEqNXCsJ6SseoiIpKaqa5If
         8+QpCVFdZwFw/f4vS0qwcD4zQx5pIetKan7zlECEoWzWxizLptpOGotgDM2kkrPE6p9F
         wIG57O2pid1Ncfcxl8W8hHJ3nhSeFYtPk6BQoy7k7/8+mCtX7hAQQZY+wbAYW9PSA8Rd
         VKdzFXzJjP8c3EDxeruUJCVCIjdwZCeTum1hl/iKPUDOxcr0yHL0MYJEuf0ACoOwxT9w
         Iq5DckvwDtLZ1oZonWKSWT+1fEOEeA1NwCKonTqUX3agABZQjFXyji2p1ZcU9fZq9E7u
         W/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vsl9s/jsmyuRx++TbIaw4YqnkPqBTNuIb2Zr3FAgrc8=;
        b=bxVlyCWny45vTavmapR8YcUy6CsmSkmNKV/VtAK4CxMPLoXzqDsiljRflhjdxq1bwZ
         ub5bMIWb0gcPLQ+6iPt0aHTc8h4VoVizttHgHKK8JwOcXmAOARHoSAX/rl17+BD5jXtc
         daPDvbqdJzF7V79i/144MLl8xCGVPf00fMg5g7Ts1D7zE/joTOreyPwqGC9fy1etWI3H
         oaG/h8nkWaKvPJeCDDvqfAEDCMewtXYzAiD4R9SEQJdaRIQ6Gw2Tcw4qJ+Gm3SiygK6W
         86RRcScAskIgXscOH9DaSDhgu/w+ldJ2EY1V1Zl/RXMIvNwrtPd6hNk86LAdDpfMymU3
         Cw3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KLxVcXcoE/FUezn1HjNj1NPAEtqIqgsciRKaapT0g+WkADVIe
	79TAZh0EG0zUC0VMoEqDx8o=
X-Google-Smtp-Source: ABdhPJy2hWtKFCMWPk3t9sIF0ttsflCzSjiifkELjdxNll2lo2mgM7ax5QEoWOlQxMg6bNZ5wZyq1Q==
X-Received: by 2002:a05:6830:1507:: with SMTP id k7mr5221363otp.317.1629263326763;
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c4:: with SMTP id t4ls263407otm.5.gmail; Tue, 17 Aug
 2021 22:08:46 -0700 (PDT)
X-Received: by 2002:a9d:65c1:: with SMTP id z1mr5558539oth.292.1629263326397;
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629263326; cv=none;
        d=google.com; s=arc-20160816;
        b=v05l+YfYUUETAYLaic3RJgoc6NtGMrSjCTCVvcnGLlPhaBgLsuQ+OmbkAaQ5vrmL7x
         8v3U6oPwb7uaIptL+XsJ7tAU2PH5YArJ7hwgu3xSCXdFl6I9p0RcB+oQroDY0JbQ8mkP
         fQ1vVtm4FEbDw3rjXqOZ5lW8mPs4Iu/uQkyDBfPV7T3gkfhQauoPsvLzstsqr4PSV0sM
         lrW94hGoHYsljhafK5vqQdWIkYw4QVhVtOupKukwTaFPvawfsrRXvUni7QZfZTqrrHmP
         kERoLY7z+TmyvZg+feMGdurJdhOCXW5K9pEazlJq0fb1e0t5tYmvoyA/kZvBQ1Tw6mle
         OJAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PJoa4iKvyV5ZjcOKo8KLgCpzhWd1dLdAE7oHmS24kmI=;
        b=NI5bswBgVhLYaDaSgdAso4F9C0L2vEIOew5IivLu6TWIr8EC5XnnPk13kq3njABOMI
         YbOpc9vXH5lx2Aepy65d9+ols4fvNi5CsOv9y5MrNZB6uu5C99nneI5Yt5KeXG4RI7Po
         B7fJgilD4bpY1O6Vh4JSAPNuXGILcFn95TA8xh7AWAIjpYOU6G397tejWPkTI6hwSoFM
         uOjlWd4qYqfWzFwinhFQnj3ceN/Bo9luCxrrzb9iuII5hDhhZa++8UA7MI6Ei+S8M0yf
         mkYforW3iKP4M++NXILbSKfM10L1wFnm0CkbzLWa1fFSdCTpk77TM0TReFTBa+DWD9B/
         QyQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XoqR3saV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id m17si362995otk.1.2021.08.17.22.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id w8so1014851pgf.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
X-Received: by 2002:aa7:8058:0:b029:332:9da3:102d with SMTP id y24-20020aa780580000b02903329da3102dmr7352676pfm.21.1629263325814;
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j6sm5037394pgq.0.2021.08.17.22.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:08:43 -0700 (PDT)
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
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds checking
Date: Tue, 17 Aug 2021 22:08:38 -0700
Message-Id: <20210818050841.2226600-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818050841.2226600-1-keescook@chromium.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7084; h=from:subject; bh=mOKi2doWtdNTuoRZf7uNcQVzIU50qiNF7t9u3Nn55qQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHJXYMzR6/MsdNgjHLHDWQusu9UKxXGXBcBf1OYKK Sz9e4kaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyV2AAKCRCJcvTf3G3AJmNnD/ 4yTBX9z+fMGN8gDeZBU4fNrWeR2k4e14MeZzDbYV0BUqaiphoGMO9p570IWy3da8EoE65rBJYK1awp XvcnrLv86Vuzu6rHtLI4zcs4RRxNiF87TV2dbP8s1HWO06CHw45W9hJlWRbhRpJqElGhl9g1K5MKqs XidOG9M5i7z+sAs1BC+Uli1H+df+7CqijqxN7/2kqL2/ofwnVzpdVMf3paBst2Nh5fjiPmfRsf+tL2 0L3PfcWWT4+qLXaKE8dCaf69XkaLsMS3boQ30GBGLP4aClofiPF90eOBpqp2MnPNU1NADlJo+OmQ+W 4gmdLCmRi/+Tmtj6GQQgIJmJhsVA1AOUfeQdLjzuz4LbC5xa+7EbID0zlnXBWirdmrQeU2QFARrJSA g/3MwdNzqXo44qT5eFkC3n7j8gi0PYlfoOIFBX+hX9jAPFm56giDzgXIRTYp4gv53bsq6jhcquLpbs nEvse6BvVgBmwNKbKqJElqHbeV6+AkkctfP7+GHcytUqt4Vqp7IxAsxclM+5SwNuDb2SsCuc5CoHyo D42unWsvnFRPWkvTryy08B1bgojos+XmbygssJcfd3lBEAIknNjdAbNuouIw5chZTsKPTw/MACHxJF iqpKgOBq/btkAFocY2xjN0hDO/2MXd909gs1IViC61xu9yLty70IT9IrLw3Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XoqR3saV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
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
 include/linux/slab.h | 50 +++++++++++++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 19 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index c0d46b6fa12a..b2181c176999 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *);
 /*
  * Common kmalloc functions provided by all allocators
  */
-void * __must_check krealloc(const void *, size_t, gfp_t);
+void * __must_check krealloc(const void *, size_t, gfp_t) __alloc_size(2);
 void kfree(const void *);
 void kfree_sensitive(const void *);
 size_t __ksize(const void *);
@@ -425,7 +425,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 #define kmalloc_index(s) __kmalloc_index(s, true)
 #endif /* !CONFIG_SLOB */
 
-void *__kmalloc(size_t size, gfp_t flags) __assume_kmalloc_alignment __malloc;
+void *__kmalloc(size_t size, gfp_t flags) __alloc_size(1) __assume_kmalloc_alignment __malloc;
 void *kmem_cache_alloc(struct kmem_cache *, gfp_t flags) __assume_slab_alignment __malloc;
 void kmem_cache_free(struct kmem_cache *, void *);
 
@@ -449,7 +449,8 @@ static __always_inline void kfree_bulk(size_t size, void **p)
 }
 
 #ifdef CONFIG_NUMA
-void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_kmalloc_alignment __malloc;
+void *__kmalloc_node(size_t size, gfp_t flags, int node) __alloc_size(1)
+							 __assume_kmalloc_alignment __malloc;
 void *kmem_cache_alloc_node(struct kmem_cache *, gfp_t flags, int node) __assume_slab_alignment __malloc;
 #else
 static __always_inline void *__kmalloc_node(size_t size, gfp_t flags, int node)
@@ -574,7 +575,7 @@ static __always_inline void *kmalloc_large(size_t size, gfp_t flags)
  *	Try really hard to succeed the allocation but fail
  *	eventually.
  */
-static __always_inline void *kmalloc(size_t size, gfp_t flags)
+static __always_inline __alloc_size(1) void *kmalloc(size_t size, gfp_t flags)
 {
 	if (__builtin_constant_p(size)) {
 #ifndef CONFIG_SLOB
@@ -596,7 +597,8 @@ static __always_inline void *kmalloc(size_t size, gfp_t flags)
 	return __kmalloc(size, flags);
 }
 
-static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
+static __always_inline __alloc_size(1) void *
+kmalloc_node(size_t size, gfp_t flags, int node)
 {
 #ifndef CONFIG_SLOB
 	if (__builtin_constant_p(size) &&
@@ -620,7 +622,8 @@ static __always_inline void *kmalloc_node(size_t size, gfp_t flags, int node)
  * @size: element size.
  * @flags: the type of memory to allocate (see kmalloc).
  */
-static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *
+kmalloc_array(size_t n, size_t size, gfp_t flags)
 {
 	size_t bytes;
 
@@ -638,7 +641,7 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-static __must_check inline void *
+static __must_check inline __alloc_size(2, 3) void *
 krealloc_array(void *p, size_t new_n, size_t new_size, gfp_t flags)
 {
 	size_t bytes;
@@ -655,7 +658,8 @@ krealloc_array(void *p, size_t new_n, size_t new_size, gfp_t flags)
  * @size: element size.
  * @flags: the type of memory to allocate (see kmalloc).
  */
-static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *
+kcalloc(size_t n, size_t size, gfp_t flags)
 {
 	return kmalloc_array(n, size, flags | __GFP_ZERO);
 }
@@ -684,7 +688,8 @@ static inline void *kmalloc_array_node(size_t n, size_t size, gfp_t flags,
 	return __kmalloc_node(bytes, flags, node);
 }
 
-static inline void *kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
+static inline __alloc_size(1, 2) void *
+kcalloc_node(size_t n, size_t size, gfp_t flags, int node)
 {
 	return kmalloc_array_node(n, size, flags | __GFP_ZERO, node);
 }
@@ -716,7 +721,8 @@ static inline void *kmem_cache_zalloc(struct kmem_cache *k, gfp_t flags)
  * @size: how many bytes of memory are required.
  * @flags: the type of memory to allocate (see kmalloc).
  */
-static inline void *kzalloc(size_t size, gfp_t flags)
+static inline __alloc_size(1) void *
+kzalloc(size_t size, gfp_t flags)
 {
 	return kmalloc(size, flags | __GFP_ZERO);
 }
@@ -727,26 +733,31 @@ static inline void *kzalloc(size_t size, gfp_t flags)
  * @flags: the type of memory to allocate (see kmalloc).
  * @node: memory node from which to allocate
  */
-static inline void *kzalloc_node(size_t size, gfp_t flags, int node)
+static inline __alloc_size(1) void *
+kzalloc_node(size_t size, gfp_t flags, int node)
 {
 	return kmalloc_node(size, flags | __GFP_ZERO, node);
 }
 
-extern void *kvmalloc_node(size_t size, gfp_t flags, int node);
-static inline void *kvmalloc(size_t size, gfp_t flags)
+extern __alloc_size(1) void *
+kvmalloc_node(size_t size, gfp_t flags, int node);
+static inline __alloc_size(1) void *kvmalloc(size_t size, gfp_t flags)
 {
 	return kvmalloc_node(size, flags, NUMA_NO_NODE);
 }
-static inline void *kvzalloc_node(size_t size, gfp_t flags, int node)
+static inline __alloc_size(1) void *
+kvzalloc_node(size_t size, gfp_t flags, int node)
 {
 	return kvmalloc_node(size, flags | __GFP_ZERO, node);
 }
-static inline void *kvzalloc(size_t size, gfp_t flags)
+static inline __alloc_size(1) void *
+kvzalloc(size_t size, gfp_t flags)
 {
 	return kvmalloc(size, flags | __GFP_ZERO);
 }
 
-static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *
+kvmalloc_array(size_t n, size_t size, gfp_t flags)
 {
 	size_t bytes;
 
@@ -756,13 +767,14 @@ static inline void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
 	return kvmalloc(bytes, flags);
 }
 
-static inline void *kvcalloc(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *
+kvcalloc(size_t n, size_t size, gfp_t flags)
 {
 	return kvmalloc_array(n, size, flags | __GFP_ZERO);
 }
 
-extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize,
-		gfp_t flags);
+extern __alloc_size(3) void *
+kvrealloc(const void *p, size_t oldsize, size_t newsize, gfp_t flags);
 extern void kvfree(const void *addr);
 extern void kvfree_sensitive(const void *addr, size_t len);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818050841.2226600-3-keescook%40chromium.org.
