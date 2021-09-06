Return-Path: <clang-built-linux+bncBCVJB37EUYFBBJE33KEQMGQEUQS4KNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A287240212E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 23:52:37 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id r5-20020a92d985000000b002246fb2807csf4673649iln.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 14:52:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630965156; cv=pass;
        d=google.com; s=arc-20160816;
        b=DdSHjPx/oc5cevsb/unbjb+4HiN5sZ2292xgy0dqQ+xtV79Z0/C8vQbETFkz8g07mv
         2OkcNOg/ngI8GwymXY7eRWboNP4nOCghwkGtUeo0Se3maWwSHIxJLVE5O4jvB4TXP/ps
         8HCCnXfEUyfMvHJenRGRZ5Dpx3n0GHjsNBhvZNDJYDuZjrwClbtZ9wYaxAFJYwHi5lyB
         F3wn+xD8n2d+DSNhh3qWC1FVZCFObKrkhK1rR/EgXV4qiCw6Eto9rQ+l1hjLBQL6n89X
         lUYu3YRZaW06SI4mh69rbfRNofRioEI3DVO3afhUyUjJwlVpu/DH2lf+gR/R08aOJ7Lh
         HCng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=DuT7j4R/tiepiftAIYZgwlpYkD0HCquUqAqSPyeEC5A=;
        b=xVn31b33nrxECp2MrvmYfpe16jbTlTzr0SeBK6HCGzepkiAyXc15whThRUya2W1BTt
         c8R6xc4+I/JdCuULYCIHoqMTVNWpVwPjoB+yMqdiGLyL4RBpQuZ5ZuKM3d1DUQ1YoHfi
         OfdC50sL3yr5tX6Bd6tEeG4XS5XB6fNjuxuixUvB/xFk/DthkY+ERoAN3qwkeM5rk3PL
         zYke8cqaOvJRNGMRMSu0J060mgHi6S3+p93UpnGAIU/P80YDPlUFVDK91rJtXsxwzcA9
         FLSR0y/I1X/4FhMBLWBonaiRIi3NOI5YacM4aNt7l1jFwlfnnnDncC1f6kIdkcqAC1l7
         b4MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V+BMQ+YF;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DuT7j4R/tiepiftAIYZgwlpYkD0HCquUqAqSPyeEC5A=;
        b=oui6mXP02xAJUoSr0hJQFe0U7IGLl/oZzSvx+whziabMxldgu3ikNVjAHQA9Lazj9q
         iwMRztpgVY5DXwlX+xlnVahaDTKFOGoMunsGy3wjU29ql+4NFr2FbLjlhXerLp7SDWf5
         JopVE//7jno5MPf6exdPMytXX0nbWtSB3DgSIh7XBJxjLpv1qOz9Uqlw9CY/mY+Q4Ya2
         b8DNnB9xANjCrVfuyAzrmAiwG+f9m7mNs2rlYYXcpMnoApylPOJhbU0sMGnsZ0EMo3qF
         bCKNwGtXBQtEA7YFjItopA1OGDUGgLSG+NJHE1nj/TK9ZPPcOc0e/umMi28ohfXR+DGu
         eibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DuT7j4R/tiepiftAIYZgwlpYkD0HCquUqAqSPyeEC5A=;
        b=jPuq11L5u4hVBVeJCUsaRamVuuZA3hnCvvlUA7cwc20DZk8ZYORC10cyFer4rOR7kc
         TYaW8e7niJrLe1uagi2iZNJ6IYalroomKMkgh1LV6e5Ifyklm3f+0s/zMosuf6DGj+N9
         fHDDFVXyxFQTnR8IAU/km3uex9c9kVkmg3NzIaH7zCqUjfT9ySBFGhKc1wN+JtR5/e/I
         iL7ZK9fdoptmr9+qNc4YQnAfVcEid4d3bUHCQOMhmXqI1cLdgUkxKg2qJ78xNKxj8fOd
         qgXessshwmg/DMLXswg2ctVlIPULBP4fIqwaFp8JsOXKnVYHt/8ZlgHFdKGuVDe7b102
         BfpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53122qnpEOdbbJdtVAscGZsqf8nFrCt3MAEoxClvCSZfOCjexQdA
	MRpqeR3vny6YzN0G2iDy9A8=
X-Google-Smtp-Source: ABdhPJwzSFauZHnmvxtG6zLkeWdX5dcXbZIyCRf0K6mz5Leq/oEMcVjPdJ5gjwnnCLyvX+WLl9dJ/g==
X-Received: by 2002:a6b:3f08:: with SMTP id m8mr11055018ioa.117.1630965156346;
        Mon, 06 Sep 2021 14:52:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:71b:: with SMTP id f27ls1136114iox.1.gmail; Mon, 06
 Sep 2021 14:52:36 -0700 (PDT)
X-Received: by 2002:a05:6602:cf:: with SMTP id z15mr11011565ioe.4.1630965155976;
        Mon, 06 Sep 2021 14:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630965155; cv=none;
        d=google.com; s=arc-20160816;
        b=YdnN0qR/gxVVdj0RPYxdEe34ffUZywOFRkMXQEnE3AWCeyNjT7ZogwuC98n9WVivwP
         js4zoL/9d0N8C0dQEgC3y5Ovoo39ftXqmfUHX3XITSuNynVerrQqeY81jgDjjCRxGT8q
         TY7qUNy2HLY7LfJE2kUSzRhiFXo6cOoMfORdvo/nOKawJsBnPplGoiTvtyrgkl1sO1GH
         gO9j+2yWZqEB9I0JFTIdW0i996jCxrs5iRpgJEceZLt3AbmGlX1czP4iX8wk4wIr8O3C
         7UCTUGATx8q96rSQcSDk11/5wAnpnDMeGUpawQQzNNe+ioDAR/8GA6BVttvOsoo+a4jz
         B4Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RiQRlnc+QePT23Ng+AhQWm6c9mQGSn/3BlHMqrjDwFk=;
        b=j8CtE2CVQ1LXGr2+gK2GXVg7orCzgXVAGVBeKCXUQ16BUVCbI9fRrgOeY4/K5t0Pq8
         OKwJP+LKN1IMl+sRySmEGrS7PTe+suwwNDCfTrPDzJugTneOoK/BbQJ4BfYp86ZUEYwz
         6yXknhp2C+wXGm72wn3RoEASR0eLJ15iMFzVN70StLHk/c/Cy7HqHIZD/Bz9t+Ro9ZRu
         IphxLJYDw5ZWkTIyqfXKL83HqdXQk6cXYg1adkdhZtHOPFjPJciqTuHKfjVQsc0BgGTd
         lPBXlNQJxTtXTO7azK55TwktGrxdgxQXgV0puWltvWJVqgmqEy8H2EGQ81ihqjykxhae
         Jaxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V+BMQ+YF;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b12si632088ile.1.2021.09.06.14.52.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-ElLduOG-PemaJUlHEYPt9Q-1; Mon, 06 Sep 2021 17:52:31 -0400
X-MC-Unique: ElLduOG-PemaJUlHEYPt9Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0995A80196C;
	Mon,  6 Sep 2021 21:52:30 +0000 (UTC)
Received: from tucnak.zalov.cz (unknown [10.39.192.10])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A295F5D9CA;
	Mon,  6 Sep 2021 21:52:28 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 186LqIvf393816
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 6 Sep 2021 23:52:18 +0200
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 186LqIUA393220;
	Mon, 6 Sep 2021 23:52:18 +0200
Date: Mon, 6 Sep 2021 23:52:18 +0200
From: Jakub Jelinek <jakub@redhat.com>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
        Florian Weimer <fweimer@redhat.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210906215218.GA920497@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210904191531.GS1583@gate.crashing.org>
 <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org>
 <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org>
 <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
 <87lf49wodu.fsf@oldenburg.str.redhat.com>
 <20210906194808.GY1583@gate.crashing.org>
 <20210906201432.GZ920497@tucnak>
 <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=V+BMQ+YF;
       spf=pass (google.com: domain of jakub@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Sep 06, 2021 at 02:08:58PM -0700, Linus Torvalds wrote:
> > the only guaranteed APIs are
> > those provided by the headers (x86intrin.h/*mmintrin.h etc. on x86,
> > arm_{neon,sve}.h etc. on arm*, ...)
> 
> You guys realize we don't use those, do you?

The x86intrin.h/*mmintrin.h on x86 indeed not, arm_neon.h is used in the
kernel:
arch/arm64/include/asm/neon-intrinsics.h:#include <arm_neon.h>
arch/arm64/lib/xor-neon.c:#include <asm/neon-intrinsics.h>
The arm intrinsics headers are similar to the x86 ones in that the only
supported APIs are the ones provided by the headers, the underlying builtins
can change.

> That "immintrin.h" file, for example, is simply not usable for the
> kernel. I just checked.
> 
> Why? Because it ends up doing exactly all those things that MUST NOT
> be done for the kernel.
> 
>    In file included from
> /usr/lib/gcc/x86_64-redhat-linux/11/include/xmmintrin.h:34,
>                     from
> /usr/lib/gcc/x86_64-redhat-linux/11/include/immintrin.h:31,
>                     from t.c:1:
>    /usr/lib/gcc/x86_64-redhat-linux/11/include/mm_malloc.h:27:10:
> fatal error: stdlib.h: No such file or directory
>       27 | #include <stdlib.h>
>          |          ^~~~~~~~~~
> 
> Oops.

It is actually not that bad, stdlib.h is indeed included there because of 2
intrinsics out of more than 5000 and when one doesn't need those, just
#define _MM_MALLOC_H_INCLUDED
#include <x86intrin.h>
will get rid of the stdlib.h include and those 2 APIs that wouldn't be
usable in the kernel anyway.  There is a stddef.h include too and that's it
(I must say I don't see the reason for that include though).

Other compiler provided headers (not talking about C++ now) also have no
or very limited includes, including stddef.h, stdarg.h, stdatomic.h, etc.
The only exceptions are tgmath.h which isn't usable without libc
math.h/complex.h, in some cases stdint.h and limits.h which are in some
configurations provided both by the C library and the compiler and include
each other in that case (but e.g. stdint.h has an alternate version that
only uses compiler provided builtin macros) and openacc.h.

Sure, the glibc headers are a different thing.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210906215218.GA920497%40tucnak.
