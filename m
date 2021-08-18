Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBLMW62EAMGQEILQBVRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CF83F0E33
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:35:26 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id v3-20020a17090ac903b029017912733966sf5260119pjt.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:35:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629326125; cv=pass;
        d=google.com; s=arc-20160816;
        b=qPEazsDqW2NQ0i7E2FAilLvksxv48VwnkHAuDfid/Oh7eG7K/tKhd7bEmOc6nYCPx8
         zm2iRIbHOiQeC5BSso0EzHj6VnI5FlCByUCR/+xC59if3G5uCUAoeQlcjrGstP0LJeIB
         h79Tj/5llCklFBlm2E37z+vC/ImI7gjocsByFLrKD5IZkLwNE7dycgeKQxo/AHrlX9vq
         uywcBtikyxhixciNOiIK9Iq7P2pnA3qTIsSJQYqdgPqzkxGz07onttPUtV3flnv9qp56
         SAhJWYmDKmQd4JIwC32kyrLq6A2vHIwaUbbMhfwnP16httK7RmcWW3NMQF3l3I7e+WOW
         8jWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ipC0E68wx/QO/7FKbqBpk/RkdHKkzJGViACHZUEzgo8=;
        b=Gh5FjFpcLUSx+qDeQNs65VyWkYpVjvuJqcdDtAU1/PS0uJVVm94ibb7PyWkw8z870g
         zByhEVTSJ2gH1pEr2uJzEBa/WK8x0NjdQpy/huT2DzggKEu0rZ0V+87xk8nNQgrPeeOh
         W/kSYHb8aXO2VKfm4iW3BKd87KXWrsslSSZ1y3GmZvF0LkbCopx39LVnWzux9AQA1uVR
         UrugbbWAfVYnIm+uQdGA4h4XNT5w3ooHj0prMgxhTxWNhI2GqrUFpDoFwIu499vJJEPa
         t7nj8+jhcVhuxrMsQWnPXAiBGeImFshK3wC5mhCJqNLs+JtC3kTMfAKpTA5Ht8khZAhv
         QLQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=kRIj8JIq;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipC0E68wx/QO/7FKbqBpk/RkdHKkzJGViACHZUEzgo8=;
        b=fOLolqi/lp75h/4cbDgUFHLS3cXesXR7j5DHJcwt5ybsYxgrkl7MiTSc8Hp0hZgBGQ
         ZaeoAk1Jcy9Vft98x3yvaVQW0wLdtJ8ZK21OJn/36xwliYLE3hFbXebXjuT/X6e4rGK2
         9/eq2g8WMqBocnBOQZdHoBOz3G4YUckt9UCZq0F/78idGe5pJIO4MX6xmoZFraVfPsy1
         qLHzWUK50myQd6sZe21Nv9UQA0jgi3jgRlfW2F7utljXHjmDGxfVLI2QPZyyaeShqNZn
         jXnlKS0V4TPkg+x3RUO5pgyZ9+widOLopxxJaIqWOMRAUM7BUuQkw4LxWhZyUigCjo9o
         BpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipC0E68wx/QO/7FKbqBpk/RkdHKkzJGViACHZUEzgo8=;
        b=Kyf93yd1O2m/+aHHN1yy7RTfIi1jO6Kq1oVJdxbSbxY9EKThNPmuoI4XCwoBy9ljO7
         q1CEkp2hkSyfX+tAf5jUR6YVuDwsyUVax171ArL+acjEqNik5WkrOdJwgkS55opYzWj9
         EK1EU76u6gHMGres5anFDUsM6960GyU4XScgTImRjBP/vKZzI+w+vsPgRSWtLdK0t+/Y
         6bKjqHf7n4C9EhMT7HA4j9B2KmzBKrTsAcw2KEX9MqOvqxncjcORFRJmgbyoDGKlKUQX
         l1r7nKc11oHeG/YMr/q2/GxSLy29//TjWnCYbEUwccdoS6KI/13b+xuG/n34YypVEH40
         VmuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531upaszkKjOLwMo4LlzkxPrtZsTJtISqueTPQIk7otJwew0G4nK
	njdmKKMvvCk8tFQhNtoadRU=
X-Google-Smtp-Source: ABdhPJxaF4gRXHx/mfhmqXuvGyK878vmwO9A+F7/E4KQofSoZkYkgYf7fr7YQb0lj+GocJPd43Vp8w==
X-Received: by 2002:a05:6a00:9a6:b0:3e1:656c:da81 with SMTP id u38-20020a056a0009a600b003e1656cda81mr11455773pfg.26.1629326125465;
        Wed, 18 Aug 2021 15:35:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls1685172pgv.7.gmail; Wed, 18 Aug
 2021 15:35:24 -0700 (PDT)
X-Received: by 2002:a05:6a00:791:b0:3e1:3316:2e8 with SMTP id g17-20020a056a00079100b003e1331602e8mr11652142pfu.10.1629326124830;
        Wed, 18 Aug 2021 15:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629326124; cv=none;
        d=google.com; s=arc-20160816;
        b=O1oYMYXEUMfCqyQJQU1t7pjNN1sCSLM4ghPg7tuZLqGq1zRb/b5YwHvvKjsSsY2kL0
         nrpG96LmN4FTYeDqynhWUhELqIen7lVCgVK9SKAs3mRbtyezRhSRtgkccDGDSjdc0y1C
         aIQPZhDz/PC0NPq+vz4yXji7MMpSLtksYvgevunqxY6aBSMg87rusvom+L3EZgZjLMpk
         MxN6bVx3PYYwnno8UETiXvGRpxQRPErBxEaQJhlRVn0FQ2680ji/teb8ta7weLZJBfAk
         7RH/KnYrmz1Zg6z+oospLtFaWzFW+a3/Iz/JPfqI70A149AbYE7CVcL8tjgM9gVI6IN3
         wV5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P+5mSEtJrjnggVNveih68RddTImV6HnC03hWsATd0wA=;
        b=gIsYSv/ABvOVB5h6ETcuziDn7/fpWKpELtfcVxIJEHk3yxh1MZsfuRhpajXnvBBTZC
         ico2pQX7rX3uvqrhwhyZN1zSgpio7EfbaTJB5GnfrKroDy7ZwlIBQZ+zun8j1ybatCSo
         zS+UXtlF5SD4K5akSonMpdFx203qRpaj8syYURXzQG24tQ/RbfGMcwTTMWuJKipLUTdD
         z1HJwS9ZFaPtc/J2hvfLZVW1TG3oeya/vPfIiQJJLDBdDl5pOWt0AGBNyOa1KXnhXDjw
         rD1ISIQxo+WY0Fx3oKeohZ1Mf9o8CakAkCXljHznBpOJsz3yaAzhgs/s1BHQ8e4xoVOE
         b77Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=kRIj8JIq;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id r9si40740plo.0.2021.08.18.15.35.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 15:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id w8so3883513pgf.5
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 15:35:24 -0700 (PDT)
X-Received: by 2002:a63:311:: with SMTP id 17mr10873581pgd.450.1629326124479;
 Wed, 18 Aug 2021 15:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-6-keescook@chromium.org>
In-Reply-To: <20210818060533.3569517-6-keescook@chromium.org>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 18 Aug 2021 15:35:13 -0700
Message-ID: <CAPcyv4jU+FhX0e4EXXVzisD5hzsdxK+cyVD3=QuqGOSpE4j-SQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/63] stddef: Introduce struct_group() helper macro
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Keith Packard <keithp@keithp.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Wireless List <linux-wireless@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=kRIj8JIq;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Aug 17, 2021 at 11:06 PM Kees Cook <keescook@chromium.org> wrote:
>
> Kernel code has a regular need to describe groups of members within a
> structure usually when they need to be copied or initialized separately
> from the rest of the surrounding structure. The generally accepted design
> pattern in C is to use a named sub-struct:
>
>         struct foo {
>                 int one;
>                 struct {
>                         int two;
>                         int three, four;
>                 } thing;
>                 int five;
>         };
>
> This would allow for traditional references and sizing:
>
>         memcpy(&dst.thing, &src.thing, sizeof(dst.thing));
>
> However, doing this would mean that referencing struct members enclosed
> by such named structs would always require including the sub-struct name
> in identifiers:
>
>         do_something(dst.thing.three);
>
> This has tended to be quite inflexible, especially when such groupings
> need to be added to established code which causes huge naming churn.
> Three workarounds exist in the kernel for this problem, and each have
> other negative properties.
>
> To avoid the naming churn, there is a design pattern of adding macro
> aliases for the named struct:
>
>         #define f_three thing.three
>
> This ends up polluting the global namespace, and makes it difficult to
> search for identifiers.
>
> Another common work-around in kernel code avoids the pollution by avoiding
> the named struct entirely, instead identifying the group's boundaries using
> either a pair of empty anonymous structs of a pair of zero-element arrays:
>
>         struct foo {
>                 int one;
>                 struct { } start;
>                 int two;
>                 int three, four;
>                 struct { } finish;
>                 int five;
>         };
>
>         struct foo {
>                 int one;
>                 int start[0];
>                 int two;
>                 int three, four;
>                 int finish[0];
>                 int five;
>         };
>
> This allows code to avoid needing to use a sub-struct named for member
> references within the surrounding structure, but loses the benefits of
> being able to actually use such a struct, making it rather fragile. Using
> these requires open-coded calculation of sizes and offsets. The efforts
> made to avoid common mistakes include lots of comments, or adding various
> BUILD_BUG_ON()s. Such code is left with no way for the compiler to reason
> about the boundaries (e.g. the "start" object looks like it's 0 bytes
> in length), making bounds checking depend on open-coded calculations:
>
>         if (length > offsetof(struct foo, finish) -
>                      offsetof(struct foo, start))
>                 return -EINVAL;
>         memcpy(&dst.start, &src.start, offsetof(struct foo, finish) -
>                                        offsetof(struct foo, start));
>
> However, the vast majority of places in the kernel that operate on
> groups of members do so without any identification of the grouping,
> relying either on comments or implicit knowledge of the struct contents,
> which is even harder for the compiler to reason about, and results in
> even more fragile manual sizing, usually depending on member locations
> outside of the region (e.g. to copy "two" and "three", use the start of
> "four" to find the size):
>
>         BUILD_BUG_ON((offsetof(struct foo, four) <
>                       offsetof(struct foo, two)) ||
>                      (offsetof(struct foo, four) <
>                       offsetof(struct foo, three));
>         if (length > offsetof(struct foo, four) -
>                      offsetof(struct foo, two))
>                 return -EINVAL;
>         memcpy(&dst.two, &src.two, length);
>
> In order to have a regular programmatic way to describe a struct
> region that can be used for references and sizing, can be examined for
> bounds checking, avoids forcing the use of intermediate identifiers,
> and avoids polluting the global namespace, introduce the struct_group()
> macro. This macro wraps the member declarations to create an anonymous
> union of an anonymous struct (no intermediate name) and a named struct
> (for references and sizing):
>
>         struct foo {
>                 int one;
>                 struct_group(thing,
>                         int two;
>                         int three, four;
>                 );
>                 int five;
>         };
>
>         if (length > sizeof(src.thing))
>                 return -EINVAL;
>         memcpy(&dst.thing, &src.thing, length);
>         do_something(dst.three);
>
> There are some rare cases where the resulting struct_group() needs
> attributes added, so struct_group_attr() is also introduced to allow
> for specifying struct attributes (e.g. __align(x) or __packed).
> Additionally, there are places where such declarations would like to
> have the struct be typed, so struct_group_typed() is added.
>
> Given there is a need for a handful of UAPI uses too, the underlying
> __struct_group() macro has been defined in UAPI so it can be used there
> too.
>
> Co-developed-by: Keith Packard <keithp@keithp.com>
> Signed-off-by: Keith Packard <keithp@keithp.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Link: https://lore.kernel.org/lkml/20210728023217.GC35706@embeddedor
> Enhanced-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Link: https://lore.kernel.org/lkml/41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk
> Enhanced-by: Dan Williams <dan.j.williams@intel.com>

Acked-by: Dan Williams <dan.j.williams@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4jU%2BFhX0e4EXXVzisD5hzsdxK%2BcyVD3%3DQuqGOSpE4j-SQ%40mail.gmail.com.
