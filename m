Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2EFTSEQMGQE4PH335Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F963F80CB
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 04:56:41 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id h2-20020ab03842000000b002ad2b4e783bsf419575uaw.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 19:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629946600; cv=pass;
        d=google.com; s=arc-20160816;
        b=isOLthzvrjcSlI8Tn1POhQSM5vLUIN2psjoPBVJA1w6wNRBCOSnVEk/YibfvTSwZAf
         HIt6R84h1b5Su1b1rq2dKYfQsJnRQNQReF+OpsD22NC+e9EvtJzChszIn8TYisCSBkpR
         M8YEvCVJuAK7nXAQSsrRPY5lxuA49vcAPFqW8TQoHiGBxFmabGWbk4P4041XbVTbtCtL
         UEXtfi4Icmv33dN9mDUJrxdrQ/fTNXp9rPttjBV37I1ZA9GwsrXwpU9/VwCtdxnj3UnP
         9z3KldbDmIG2EFQLHk8tqQATT0UmKYx5wyk4BOeQ3tDUUb3cLVFx+hykSWzkUuS4B6fX
         nSDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ORpSGXTZyPuU7klcOK3rp7j2pU14tfcIAGEN7uqlOOY=;
        b=k6L96yQ7GgvRJ8b4vdVk7iJ53VRRO0jyu8MG0sA/FFQYvv1wyLeV2rL+hO4hCzGqvg
         JodcXMWN88+8DHcFr58r4FRchYK/FxvCQHSnGfNgD9LTWmiPw0paz76MCwra2sHVPisG
         fLemznn3bSsONUm6J1v3mJ6v6ekI5lj9oaAVbkW2jIHYnzLCqE2WcQehygRK15eBga+r
         KdpA2VUrro5fn4IghZyQNY9dKbVMEa4nOGR9Cm2p8rposzQfWNilFawAnF4xdvafFB6f
         8K5OfP6r7SRoD3P8cWj8SDo7XWM1lpLdKRc32EmL0UfAajsBH3/s/Clla8lpmJbnaIer
         pDfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="ZjLf16/F";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ORpSGXTZyPuU7klcOK3rp7j2pU14tfcIAGEN7uqlOOY=;
        b=USikUIbxv/NMK8taPLYog0WcWFtBey8enR+wKNwWmqilo2CR3703fE6nb4MymAiyIT
         1YxiKQgrc+v68JlJlYN+Rkkcq+pEauOLK33XmQymULlhnNUVman19uM1AAMWEjp01ogU
         IxcaCvdaMEl/loNWcOYgvI7zsLbukWzfrNd7reWRQzH0WGBm53La7wayj+baB/KGRP8b
         t4COCdgOQYWVe3ZAXg+1v2Y15jgdIO53Htu5eGNd56GKMW7XpCXQs4HfFoehsWC66NIB
         +QEZO/QCpWAhDgakxyzJCvUVJcHQbrbVX+Uu9/3x7gASdTaYjATJzO2mboLxAGUXTtTm
         MXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ORpSGXTZyPuU7klcOK3rp7j2pU14tfcIAGEN7uqlOOY=;
        b=BGWEH4XKAG2MJ6OhB3gWkmTXBm9COaBwo/6RV9BDMx4mkiiB81fpYkiLTVpQogeJr1
         dZzry1GCZPz93Ak5LIFuidpYSYNU9f2UeLZ32vKEsKw2xL22RLi4nfCVSrHqzind7GDJ
         Lh+lWrgEd/YbVwVwSKFuIiPl3Y/AF4CK5n4/399o+IoiSLCTiB7O5+cNjWoapLtyA9Mn
         xb0SHsKGC40axRhaX9ihTB/PSYfVN0Lt/2SM2zsdD9zIXQRwwCkHTCeETg+crWdoM22H
         XMJOAzBnT9QXMJrc/RRUz+BndrBdqJzKxv2OeyMe/jQ8cphKlSOzeGEVO84Ld9CAydSB
         SscQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pTkHWzAfpLE1vkYjikGP4jUCNM2azbIuLvbvMjqUbjS0CkJQV
	nzaEWD1MTT2yjuBgOazivU8=
X-Google-Smtp-Source: ABdhPJw5y1uw8kHD3b/p7SagS110TAXeFeITi+zXfH5BYLy3EOFDyA0i9F0VL9Qn1847HibpM2mjSg==
X-Received: by 2002:a9f:366e:: with SMTP id s43mr841265uad.115.1629946600227;
        Wed, 25 Aug 2021 19:56:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:338e:: with SMTP id z136ls798581vsz.2.gmail; Wed, 25 Aug
 2021 19:56:39 -0700 (PDT)
X-Received: by 2002:a05:6102:21b3:: with SMTP id i19mr1180047vsb.9.1629946599712;
        Wed, 25 Aug 2021 19:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629946599; cv=none;
        d=google.com; s=arc-20160816;
        b=oVU9Zo17gANeNc8YkRcuxzrCE4tGLjpLneCSqhzaX5taavCb43T8g0vBinw7YAayKa
         qjpQHx96kaxN9Y+QuGCvMIWfu8yk4dxooSc1X4yltVuD/VQrOKrgc6TR55VC2Ruz0QfI
         WPOsHrZPWJq5RvB3DZcDcuNLA0rAf6l/QyiqK/VKGuswsGNowh981glKel3Z8mBLI+JM
         8+M0tcKIHoICyZt1/iplj4LjwzaRDBis7A8K1QSAMXQ4SfgdzZQ3AN/gSkqFii3VX1Z3
         Fgo7dBTCErGxB2wIr2UDpkt4fWCpci4e1qSZ04ZVS1EzvofcLaaRsNeUqIVf3h6y7UIP
         HoZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vjFyaPLJq7d41xsQ0Ub2Dz36OvdKw1xIWIuZp7vFybM=;
        b=No5kgF2XiKKnoIVNPgMa7AD4Q9dGahryH1SjtepI9QlbYydc8s/xqUgXHkcYDchDfQ
         ZMsfAWyog04pq0eNIc3o7ucQO4x3JaD8rD/38u+eq8BgFYsmGL3/RQrBGRySv8jXV65G
         hEkoM9E0IIopKXnGcuNmuQ2/jVUwV/S2xQNNGcEEeXhQuQDAuaOx3K8PtzoYzgzDfaA2
         0hAF4l1aZmfmHTPm1WZSMqMlK3LPmmuL/bw8eQmsI+DLf3vKXhiSA9c/raIjgilDonzd
         TbFUaA7mRXRKvHCiZ81FVCGvlUVTME/w5oR0BXFme79MSMnsLcWCTFdOHshJ8NdUsYoF
         bjUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="ZjLf16/F";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id c5si81812vkg.4.2021.08.25.19.56.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 19:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id m26so1459629pff.3
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 19:56:39 -0700 (PDT)
X-Received: by 2002:a62:8287:0:b0:3ec:f6dc:9672 with SMTP id w129-20020a628287000000b003ecf6dc9672mr1314917pfd.65.1629946599192;
        Wed, 25 Aug 2021 19:56:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a2sm1383840pgb.19.2021.08.25.19.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 19:56:38 -0700 (PDT)
Date: Wed, 25 Aug 2021 19:56:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kernel@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH for-next 19/25] fortify: Allow strlen() and strnlen() to
 pass compile-time known lengths
Message-ID: <202108251950.61F7A4CD@keescook>
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-20-keescook@chromium.org>
 <CAKwvOdnrO+oagJEiBMmoHrhTJKSRwzb0DK=R_QdVjhiNzb34dg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnrO+oagJEiBMmoHrhTJKSRwzb0DK=R_QdVjhiNzb34dg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="ZjLf16/F";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433
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

On Wed, Aug 25, 2021 at 03:05:56PM -0700, Nick Desaulniers wrote:
> On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Under CONFIG_FORTIFY_SOURCE, it is possible for the compiler to perform
> > strlen() and strnlen() at compile-time when the string size is known.
> > This is required to support compile-time overflow checking in strlcpy().
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/linux/fortify-string.h | 47 ++++++++++++++++++++++++++--------
> >  1 file changed, 36 insertions(+), 11 deletions(-)
> >
> > diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> > index a3cb1d9aacce..e232a63fd826 100644
> > --- a/include/linux/fortify-string.h
> > +++ b/include/linux/fortify-string.h
> > @@ -10,6 +10,18 @@ void __read_overflow(void) __compiletime_error("detected read beyond size of obj
> >  void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
> >  void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
> >
> > +#define __compiletime_strlen(p)        ({              \
> > +       size_t ret = (size_t)-1;                        \
> > +       size_t p_size = __builtin_object_size(p, 1);    \
> > +       if (p_size != (size_t)-1) {                     \
> > +               size_t p_len = p_size - 1;              \
> > +               if (__builtin_constant_p(p[p_len]) &&   \
> > +                   p[p_len] == '\0')                   \
> > +                       ret = __builtin_strlen(p);      \
> > +       }                                               \
> > +       ret;                                            \
> > +})
> 
> Can this be a `static inline` function that accepts a `const char *`
> and returns a `size_t` rather than a statement expression?

No because both __builtin_object_size() and __builtin_strlen() may not
work. See:
https://lore.kernel.org/lkml/20210818060533.3569517-64-keescook@chromium.org/

Regardless, it will always collapse to a const value of either -1 or
the length of the string.

> 
> > +
> >  #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
> >  extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
> >  extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);
> > @@ -60,21 +72,31 @@ extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(st
> >  __FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
> >  {
> >         size_t p_size = __builtin_object_size(p, 1);
> > -       __kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
> > +       size_t p_len = __compiletime_strlen(p);
> > +       size_t ret;
> > +
> > +       /* We can take compile-time actions when maxlen is const. */
> > +       if (__builtin_constant_p(maxlen) && p_len != (size_t)-1) {
> > +               /* If p is const, we can use its compile-time-known len. */
> > +               if (maxlen >= p_size)
> > +                       return p_len;
> > +       }
> >
> > +       /* Do no check characters beyond the end of p. */
> 
> s/no/not/

Thanks!

> 
> > +       ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
> >         if (p_size <= ret && maxlen != ret)
> >                 fortify_panic(__func__);
> >         return ret;
> >  }
> >
> > +/* defined after fortified strnlen to reuse it. */
> >  __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
> >  {
> >         __kernel_size_t ret;
> >         size_t p_size = __builtin_object_size(p, 1);
> >
> > -       /* Work around gcc excess stack consumption issue */
> > -       if (p_size == (size_t)-1 ||
> > -               (__builtin_constant_p(p[p_size - 1]) && p[p_size - 1] == '\0'))
> > +       /* Give up if we don't know how large p is. */
> > +       if (p_size == (size_t)-1)
> >                 return __underlying_strlen(p);
> >         ret = strnlen(p, p_size);
> >         if (p_size <= ret)
> > @@ -86,24 +108,27 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
> >  extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
> >  __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
> >  {
> > -       size_t ret;
> >         size_t p_size = __builtin_object_size(p, 1);
> >         size_t q_size = __builtin_object_size(q, 1);
> > +       size_t q_len;   /* Full count of source string length. */
> > +       size_t len;     /* Count of characters going into destination. */
> >
> >         if (p_size == (size_t)-1 && q_size == (size_t)-1)
> >                 return __real_strlcpy(p, q, size);
> > -       ret = strlen(q);
> > -       if (size) {
> > -               size_t len = (ret >= size) ? size - 1 : ret;
> > -
> > -               if (__builtin_constant_p(len) && len >= p_size)
> > +       q_len = strlen(q);
> > +       len = (q_len >= size) ? size - 1 : q_len;
> > +       if (__builtin_constant_p(size) && __builtin_constant_p(q_len) && size) {
> > +               /* Write size is always larger than destintation. */
> 
> s/destintation/destination/

I can't type. :)

Fixed now.

-Kees

> 
> > +               if (len >= p_size)
> >                         __write_overflow();
> > +       }
> > +       if (size) {
> >                 if (len >= p_size)
> >                         fortify_panic(__func__);
> >                 __underlying_memcpy(p, q, len);
> >                 p[len] = '\0';
> >         }
> > -       return ret;
> > +       return q_len;
> >  }
> >
> >  /* defined after fortified strnlen to reuse it */
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-20-keescook%40chromium.org.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108251950.61F7A4CD%40keescook.
