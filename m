Return-Path: <clang-built-linux+bncBDRZHGH43YJRBMEM6SEAMGQENVUHKZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C98303F044F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:08:01 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id z8-20020aa788880000b02903c5c860de7asf1249120pfe.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:08:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629292080; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANuNWV3TXbAGdoox85F+pui7ZWpJepjsmAv9l9TS66fuBBMHSIgtMBkqVFUAGaWQQ5
         3EX/0CeizsZqFwHei4xm4VS2CSmHimueJQjXSUjg0kKDo0zktgs/CYjK9vSFv1Ry/T1G
         jH+g69oY3QNx2XpTb3k7TSNRR9E2noyMN5/EXl9vcFnZT3Q9DNcG8jjxs/RymYmP6RY8
         D8uaXirneh5vXb2tHsDZNW8QbRwIoA8TnrdUnrz1ZNgF49RQLIsGlSjE5ODNokN/ux15
         D65cIh4fLIH7PLzwwe1uPNzveW/7vljfjZKN1nD/3GO5Q+lE7IRu061G9sCFkhgF85HQ
         wliw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+aiBQdkeLdHm44m8wKrDr8GYITflS3jUeti1L659L84=;
        b=Zeu9WoQnI5UOsAoUlfPD5qQ0wofTi/XjJH3g0BZq6c6c2/utCWZAlrlM9rgYhzUriY
         KcdLVgRc9Vt4CPc7XXmdp9ArjUqevFus8hVA9tTBReieQiTKBFpsYFenQZh6gd1s7ICV
         GCY68SzqIuKu2xs7157qtgxq3dp882fhlJtv9pfUItWsT0fqZsuwOI9YgfmNgH9A9cnx
         VVD+f7RmTJ03Yy5yMPAYpTgkzR7i2uhDwHNi/8MO6ruXnn2qu6Qr1q3yzPcqp7m+iXED
         +TJw1EZS1Ydtp3T1Xi+p78HPM0S8KG9LIlT6yI8A4MFbMr0NqPLURoEJJ7mdKps5jM69
         knFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZR+b95l;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+aiBQdkeLdHm44m8wKrDr8GYITflS3jUeti1L659L84=;
        b=Iigayw5ZpS2d+50lbdoc3npVbDi4e1arhTk9FHbgKVBUK+1anYKD+Ld1w4Upq3LPNR
         6PEO0T2g43lffkEaCHwA8SqA6xpepGmH1/44uQwu7HYB3FYMPq2CMgLv6++Sm5rJ8M++
         nsi6q3QgL2sDu4tfOvlEh9/oNEa9uWBj60pv44nqtyHU903XIfEug3Rk5GOTiGQKGnam
         Xy8ESare+JZ4hnS8TMd4QYEmJlxnDN+YTuh3sYUvHlj0xLBIc48LxQTSUEVVxZgbKUGE
         7cXt41S+CjPUxkZFYLaF3pi8iFF8EmDxWy0gCMQ7OJKjy9XpkbfBGoZp554yyhTrAXxY
         GfVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+aiBQdkeLdHm44m8wKrDr8GYITflS3jUeti1L659L84=;
        b=e6Ld+z8db2Dza++mU9BVhE0ettPri9BahyA0RTXlmfP8giWjexdzcFZxAwa9iDHBgv
         pJlsrgC/YlFh1EBT7ONhG0YkyWj5BXP+tOAa0k8Iy8ClZnTiQI7NB/eqjOddTzaqi/p2
         WC/+dJBQ9PeW6LRJeOvebHcJxAcnMzSl5rvW5kCFxsi0laZ3U1prD8m6zJE3fls9fUAc
         VX1oOJ76Y+CHoq8VSYnmbx0Ge+H3nMsm0wJu/9i5AlxG33+j4cESh31ZaJs7CaieHx5L
         LJR4nrIYoUIHMeYL8GWFY/NGcOHPWU+pylDOq8yLe/HfYbXt8DLizZAAFI1yhed5PWN6
         Rgkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+aiBQdkeLdHm44m8wKrDr8GYITflS3jUeti1L659L84=;
        b=BuY7Ys2q4C/Ht+d89Un04ScyJagkr88k2CDzMFVVMHY0VmDRz2e6yKOQ5Bf+T/H8on
         7MuF54wNgpIUabf8p+U8GJ+jB+FXCuO00ESGUGBI2dE7dycgVb9akOFWjXpkluJS1U50
         N5EM0PRX4tcEyRDUoJOHrP1zEZodEkWHc5eF5liJVRbft+zncL7RXwUWquKq0TQbfoJG
         2Hvilwlenc81DuT74TB9rK3MG76HE5VSbtOEuhr6jMBJHy+FEW80af0FPZgtw21v4bHW
         cBt+q+cRadrqZpBLrwcv6nf8vIGNUaTuPxvLvXU0RyEWsykgIH/KuyQ6cFwuZ1v/+ecT
         IIuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530X7wm+OSkkCQyF14WwLvkXAtMeLUQpMjOtR8Sf2GX6mp2BxpC6
	6UX+grYl/aGE51gG6BzKXU4=
X-Google-Smtp-Source: ABdhPJyojkKJcklMDgTufgNlk6Sj7Hp7q6wuXXxYDa0npnXSIMKbEY4yAUPWJn8iV9gERNMRJQaNiA==
X-Received: by 2002:a63:211c:: with SMTP id h28mr8909635pgh.83.1629292080185;
        Wed, 18 Aug 2021 06:08:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a409:: with SMTP id p9ls811325plq.3.gmail; Wed, 18
 Aug 2021 06:07:59 -0700 (PDT)
X-Received: by 2002:a17:902:ed82:b029:ef:48c8:128e with SMTP id e2-20020a170902ed82b02900ef48c8128emr7364733plj.72.1629292079568;
        Wed, 18 Aug 2021 06:07:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629292079; cv=none;
        d=google.com; s=arc-20160816;
        b=UJ9KKg+jXq5EicuWxKowqHuGTkuj32uWngBj+h4bNE0LFdErKNMGQ9H8QvG/3Hg2do
         KvJHt2K2TmN6fmWaSDHFj4xx07CLSBMrLPri8kljP5aTBBy6onHfE4hRDhlGGfI3tNoN
         8MOkyDy30wF4RokvyKssh7nnUaZC7c0KZvkFErtActqTj6ryoDH+IK/PPuvXEGQHP4w9
         nvcWsnZM+/geCNmJDNP9o2OSo7/+b++pTxNhGyRpjBrLdyj/Id/KviZbAACUPJ4lVtV+
         G2Me8X7e0tSxChqmrbylssGUAHtIYkc1uS9TATHMdu5Cpm1Nvp46/AiaLh8aSbbDlM7z
         xRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+tNPb1/FPZA9eF7X+TOOmGLZvE3KZSt2M0L0KXp9Ah8=;
        b=QHN33irFMp9cpGy/+1STzZaWnR7jSvaOfDRkKz8n5LAfG9lhDUQ4Z7u4jJFezdVMMj
         5Etr+jCPYIrvAjaAfzKOW1ps3BERcPTB36dij2A/NtA/DeKDpNgh2rtjuM41uUT00QrM
         KUJdHIkQLxIqfggTpYPp+H6CcosRsl6NmQ8/zjV3nm81Bpz1alonNfqxjDwaP2CTlZDE
         4fpEMoWyVfqwK8VbtykMIoEMWJrJjn7ZYPO4AKe+uxGiFFv4zrqO155EDjE86TPeCwun
         w0BX6WFcs+6TRSDFs2685n5N76upgQkDhk199vu8rGKVcv5wTXsoJLEiOwZenDtQyNr0
         XfcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZR+b95l;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id j12si394198pgk.2.2021.08.18.06.07.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 06:07:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id n24so2655613ion.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 06:07:59 -0700 (PDT)
X-Received: by 2002:a05:6602:2c05:: with SMTP id w5mr6948405iov.91.1629292079292;
 Wed, 18 Aug 2021 06:07:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210818050841.2226600-1-keescook@chromium.org> <20210818050841.2226600-2-keescook@chromium.org>
In-Reply-To: <20210818050841.2226600-2-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Aug 2021 15:07:48 +0200
Message-ID: <CANiq72=ym5ubiXgwt=xyyOSxnPFqgfArJsPyV9juOuwWN+PqCQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] Compiler Attributes: Add __alloc_size() for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Daniel Micay <danielmicay@gmail.com>, 
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Linux-MM <linux-mm@kvack.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SZR+b95l;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 18, 2021 at 7:08 AM Kees Cook <keescook@chromium.org> wrote:
>
> Clang can additionally use alloc_size to informt the results of

Typo.

> Additionally disables -Wno-alloc-size-larger-than since the allocators

Disables -Walloc-size-larger-than?

> already reject SIZE_MAX, and the compile-time warnings aren't helpful.

Perhaps a bit more context here (and/or in the comment in the
Makefile) would be nice: i.e. why are they not helpful (even if
rejected by the allocators).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3Dym5ubiXgwt%3DxyyOSxnPFqgfArJsPyV9juOuwWN%2BPqCQ%40mail.gmail.com.
