Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGWWZ6AQMGQEBCJ4LUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D66321E2B
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:34:18 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id i2sf2820112wru.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 09:34:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614015258; cv=pass;
        d=google.com; s=arc-20160816;
        b=RGeBZVTNnznRXXETnQjhb9HQ6lvXHNql/vTKzITsUW+oN7ZWwaMBlY6MBHFzKJ3ray
         rUT8iuANXKl8Ed0PpghVy+UX2Gxsh2mzpKDZd2RhIz+K4kBMbrF7rhzjhH1PTMVMHzJV
         DUZ5Km0gbFn/s5VkIWedulUuSJtQ4l1HoXx96p/TO4DtXDOD+xtwUF4Q5ZgHiDDo7g9y
         ih4Y9Xd1rBq4uotJwRFbR2biEFK+UqF8AZJ6s+pw7BJEd4gzqEkuVqrLs9sqodWn4k8e
         IEbyuO+e0j5AVY/nBX71fU5pjf2D1pEOrAe3uIkDvGlnN/r1QcTreJfOvIbB7KcSvakz
         EEWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wlO//lyiIj5O+HkM+pqKH7wYfIpI4GpVFAMrWLj+pQg=;
        b=PSwI2n1xqzid/EXUOvoD2t+88m8ud+WuxMWiNF+kjnIn7sotp/NFSzyWqASIOczdxI
         YUF8fvDTglH4u4xQ9DjxVAT8hPOhTk640QL6RIkEHnLcO5tnByLtlp9kyz9pjgBAvA0/
         RStuMvxP21Dh5THsnlNtyoo+LKRNetfhbW4ndMTEW4dLY5xPXdYpjQdJOzfHnplBNeCk
         qmONZz+4ImMvYdufDYEK0bxi3lapmpzIfmi7NJzFwJUYY4aasf39VzYXLOzt+1U50e/R
         l/cw7TjNcaC3lxEdGXYlEKEWC6M2J4lJwuY1ImZTJaUU7chrcVC462lUzvL3CEf5+Ymw
         9kXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d+bBgIea;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlO//lyiIj5O+HkM+pqKH7wYfIpI4GpVFAMrWLj+pQg=;
        b=JMvW8RhqkSB/I6goozTnzCBWVpQ+1ZxBCOfAI4/RCvWOQghF71GH8MkNTsVqhUZn3N
         080AIFVYhdOP8H4vlz6fO2beaWBGntc2amZSNGLrHVGZRFRiDJcJMwBCl4p0OWiXTESc
         noarE/tR9XfWFOud0FV1jYXBVcaRS5dW00GVh8uy7wZOCJCvobr7N3p+omix/d12U0x+
         S9lgRTY4rYApLGoYCQ5U3AWXE3NdPkd4UFyWbMyIcCO8DGMiDf++/KTRuck1PltN5gfi
         Jjqzp8M90pRsyPvxmfysW3nzm+NNGUB6ZsiZbXNIqKMz+uVe/jCjfQ71/jTh7t6EHXhm
         CXMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlO//lyiIj5O+HkM+pqKH7wYfIpI4GpVFAMrWLj+pQg=;
        b=JiiFwrgT9K+jrXfv7EkaGrwhTNlqjZkSt9hvKQu0jCyP78Avm3bKdUOr1UYxaXwTB4
         O8lPRSV5megUtGhgSij9nqOukLyM2dZThvXOzLnb1BubApEA6yWUg8q1f5JjU23JGPrD
         LVjqRUGFkwxGdjImfx5SqmLmIC4KS/55LaoxRtdU5LbSOmYJ3tFnmxHNYnWz23o/8IFD
         JXiVpoAvZdEWCIDvqM7+QV3ifskO3QjEpMnrRsKRI0cFbdU8Ti8SRl5c0sdCY608hWZr
         VWl+GX7BR/x7lIfvvDyapSNSgMyeE1SgK2khBC2M2N/IUByYQwKqnKdBYGK1s98Rc2Xt
         Yvag==
X-Gm-Message-State: AOAM532IdZBrGVrVvUhkmrWQ0BWjm658dw42Ojy4cx3aljOE2gU50iv0
	dzeeE0qaeLAc1edxPh+MUWw=
X-Google-Smtp-Source: ABdhPJxELzix9IjdlHkhJIEHTChOmyY/z5yRk2CPdf5BAp259FjhZfFO56Im+KDVdIHqSWojcJNLNw==
X-Received: by 2002:a1c:1bcc:: with SMTP id b195mr21621974wmb.64.1614015258146;
        Mon, 22 Feb 2021 09:34:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c344:: with SMTP id l4ls50375wmj.1.canary-gmail; Mon, 22
 Feb 2021 09:34:17 -0800 (PST)
X-Received: by 2002:a1c:1f4d:: with SMTP id f74mr21582372wmf.133.1614015257403;
        Mon, 22 Feb 2021 09:34:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614015257; cv=none;
        d=google.com; s=arc-20160816;
        b=FfZKVVNnBteKCQCM7IP/istD1YfV0F3Yvc8WXo+9yMkLHSNHYHbc+aeCiUGld6HZsH
         XnJZpmS5TsLZd8cJwbLFeaEEYw8cBbI4kol9yvZ6ja0yxOzgf39Fi4UwqUHxm52+Dvkz
         jwGYDjyO7N4zRyC+Xh6jyqznre29ceJJ8+AeT7pGsEn9QXZmpgYalW1GsSM/P66tzWyL
         qRSJG/D/b1Te3pVyC8q24bM+J3QnXJSMogRH1VSg9NYjD/Nqw2VU3f1MsUXp1OosV6Qe
         wjzi4HEJ+0kwINkpzy8xD7PAIZ373OJJj++AlWMveiAm4XVc8F4pB1ALAPoarnTHofsv
         vzOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HRPslUjgTzHdyNF/hgll8FGK6RMnp9iPzJaiYmj3FsU=;
        b=0PpwRSveWnHuucz0O+pCv6TTo/sG8V09QGlDZSb6Hhb8rlRym9KU/J3Vm5fPOLRdOm
         tPeQaqjfnLQ04COv90lI7KBIw5fyALOI0jLmG230ihqVBRE+iRkbl7Tl3vkoFmOWOWS0
         Y27PXbn/AwGvw88+oh4ZN8SpAp157B5JPaAhtezzGZSYG/gKSNdiCn0ojb+0MlmGvDLl
         OBv+iy9rEHLVSRMrEk26iFxAPu/kTL3CUwLdWkzReK9e8pkHkcnnfM61ai2Fj47ZFqbg
         7q1r+ifomX8oNbYOUKvEQG9olYOKr463hf+OVIitjDimes7qcGAIPFIge9MY6hg52Yil
         GOjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d+bBgIea;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id z6si816wmk.1.2021.02.22.09.34.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 09:34:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id h26so7081202lfm.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 09:34:17 -0800 (PST)
X-Received: by 2002:a19:f11d:: with SMTP id p29mr9957736lfh.547.1614015256935;
 Mon, 22 Feb 2021 09:34:16 -0800 (PST)
MIME-Version: 1.0
References: <20210215204909.3824509-1-willy@infradead.org> <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org> <CAKwvOdkV91grirj+1+OHongQriLYgL9v8m4V8PsguHecVyBwuQ@mail.gmail.com>
 <20210222171643.GJ2858050@casper.infradead.org>
In-Reply-To: <20210222171643.GJ2858050@casper.infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Feb 2021 09:34:05 -0800
Message-ID: <CAKwvOdmbx+rLv+z-POUq+DPedhrWFEFVHhWW9j5vWpzH0J53Kg@mail.gmail.com>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
To: Matthew Wilcox <willy@infradead.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d+bBgIea;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Mon, Feb 22, 2021 at 9:16 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Mon, Feb 22, 2021 at 09:04:40AM -0800, Nick Desaulniers wrote:
> > #if 0 /* For kernel-doc purposes only. */
>
> Yeah, I did that already over the weekend.  Not sure if akpm has published
> a new mmotm that includes it yet.

ah, sorry I missed it then. Appreciated!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmbx%2BrLv%2Bz-POUq%2BDPedhrWFEFVHhWW9j5vWpzH0J53Kg%40mail.gmail.com.
