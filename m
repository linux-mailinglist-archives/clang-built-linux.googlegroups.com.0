Return-Path: <clang-built-linux+bncBCS7XUWOUULBBPHDWSDAMGQE32YCR7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EF09B3AD629
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 01:52:29 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id s20-20020a0ce3140000b0290268773fc36bsf2888529qvl.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:52:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624060349; cv=pass;
        d=google.com; s=arc-20160816;
        b=In3BqMPszesQR9PhTn0dsLOOPBV/PF9mtPuRYdF8jie61l6trat3Eg7s64lBV8WwRz
         FcmgDG0ar/UMk7Nbh1vGMwfWjJDmVOBZ+S9wFGPisIdgFrO0wuv7rdfsUje0vieIGLHf
         O5kTQOadHrllDMplndhmdFaaNlWIROXwrhzotfYfCsyV+Zy0ZhWpCJm5R2M9elS6PxmN
         HYZHr9stlh09gEQxIwQxzRm97YVUcm8MkDhGMjamXbMF2ISGgIxeFYM9yfiiEhbq14lq
         GJVqwXM1Bhj+vufOqqqy+yfZPSHB/MKAIymb8Tujk7EvU0EeDYNqmkxh+dYgSlrXVtLk
         lt3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=KfcEVRi2fQsgdk/4IKW5GauCGpfOKKraqmJ1tddVBjM=;
        b=O/V50zKy1Ge3f9kGqJ6zkhexEeBLAEmKVu1aaaW1NgMRfs24/PliRpQKk+G2DJ2it8
         LHnBddq8vdJg8iPz+V51SLkkNZi45i+GIW51KcYI4gk4PouXkJlX0/ZuyjHc9IsOmVRI
         HFYwsVhPwLp/ckpqxPcC39vKWeTjd6s3mpAPNeVsTK/vDdE+LJ2IlL/KmiyvGHRJsq4h
         u4TAYAXFoEPH9O4QvZzsR+7BlOD2QT8WAW77pwnV/zERe+SuRc+G0vbhIe+HcQfXXw72
         ZWmGDqFA7RsbqrAiEQLuDCEhilF4jQwdXjWdPz/rlVikZC32th65cnUJ6b1bB67pvi/A
         1OWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cPWHs2b8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KfcEVRi2fQsgdk/4IKW5GauCGpfOKKraqmJ1tddVBjM=;
        b=fmUQMF4sTGeUN51Dhl/2LzONSZF9mHsVn4TDExzuXM1kIkvuBWv9i7MeLb0yCqJ3Lh
         r4ZkGbE6RQkwPwYJ5esS/PV2F/pdc4I3Jpd2pWFGNIFTCCrrIvWUwrlDy5YgligMXR6N
         PeaRWsuzkBftmL3Ce3N/PbEDvgTNce2d+Z2xfIF773H5oBv4QFFFe9X1ttgSQDB4UGr6
         vutsNUWz7/vTzdU31pM0TbSlmheHG1sA9CK+Zkw5RyOjx2/KSjfi//nt+WZ1QhOMt6Vy
         9IedmzClurlu9mb244/WDC2eVIk065hmdvvajvgvPbctBrEo4dd25fSzvh0TKhmVeCSz
         AFhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KfcEVRi2fQsgdk/4IKW5GauCGpfOKKraqmJ1tddVBjM=;
        b=Xl6CLe5soF8PuFk/DNUunhKFThvs+m6bSZoC5ma4sXdFN6MkzKzDXI9HOG6CCzS//5
         VdIzw0/Kq2Q7KztGrTl+vdcKEmdVWnm7RyX33xzkgYPBuBmSGA0gOOaQoQkDBIjw4XlA
         9kpRv+9Z6Lm5VMmLznt5BSq9Xkkuk9g4jLZSnVCJgKSNWgkv4JV1pwP9wq8qnaeD/cwU
         I4XBtHJmbf7LtmhjaIktxfp5sKt1CZzM/mkDOCuVk04mDd3qu8Q9NHvBdy0EjCpC8V6s
         hcGw7iopugvbdKvdHUSMkWLTWgCkRJQ0vpTtuBoZi4LMhtC1jk910vplDngnhhctAtRO
         mL1A==
X-Gm-Message-State: AOAM530K5G6dHCrDwPHDCnyxJnt4n1QgsQwdQcAPMop6lrIpdmwh7nhr
	NMrcCnGJC1UJ8QC8XEI3Ckw=
X-Google-Smtp-Source: ABdhPJyQoPfWuJmYUoctC73/BkqD6NUL7qE8yQxLltk3n1+6+jdT4rL5ugM8uFvK8LuxF0w7+NeR4A==
X-Received: by 2002:a05:620a:232:: with SMTP id u18mr12110667qkm.413.1624060348902;
        Fri, 18 Jun 2021 16:52:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5193:: with SMTP id c19ls5371322qtn.11.gmail; Fri, 18
 Jun 2021 16:52:28 -0700 (PDT)
X-Received: by 2002:ac8:774c:: with SMTP id g12mr12763569qtu.39.1624060348456;
        Fri, 18 Jun 2021 16:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624060348; cv=none;
        d=google.com; s=arc-20160816;
        b=y28yDPaMcNs5H1pvh0dr/jks7TimG5Djh7JuyHBEFTaZ9S5zCyUlTbICw7z/zO+J0z
         QyhP2kcJ3W7RkEp8dsGSjXLTuAkQzC7kNwIIxKs5BrA8gei4DHqoCT9VekhU3g4K7EhV
         LXnwVtg09M8D92BEbeztXNJH2z6z08KwausggKkxGCOOByfcccVZlIsGDZ8Fkx+oeiTo
         YDQcKdsoy1yAdQ0at1+p+6n4xnc95SvGJRSYhJY7hMJWNOHxOQCqqOuCwm8k1WjRjzKx
         E4Pf+C/cn2Ld+ypqPAKTpY98oCX0dh/wBjUjmC+INtwFeFGhPZnpRkRmWWqVtIe7JRPc
         bsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3QYcwvtyhPnU4XufKlxXAbadnyn0yvfQI9M4GTCqOZc=;
        b=WIejuYD22GLT801FLXUPnh8I9l6LSYro5uV55L7OPQG2O0fYNt/Qso+ICRD77FcVaZ
         k+AKBIJeRR13RJ4zsZyzn7lPRd35Knc8AUdx1pdKgmeZeBaews7WrCwy7MvHhgVSIGHz
         qZLdkTeewLtvtlonxmKU7smxeLnZFsXADgA8bUTIphqM0zoUyLwzYA/SZE1NwXacD0Uo
         qOdY9E66zXOP/YUwi+fo5UsWQzjNFbCzoA+SYcwRgqppz7hbTdsISSD/JJCxzg0Xi/PH
         QZYqEbyW8K1sOqVF8x3e2UixXyQg06JlLescQLqIq8DEHp2j4/cQQR9zow53z5+KVaZQ
         S36g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cPWHs2b8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id m9si993162qtn.5.2021.06.18.16.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 16:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id x19so5517157pln.2
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 16:52:28 -0700 (PDT)
X-Received: by 2002:a17:90b:1946:: with SMTP id nk6mr6004677pjb.86.1624060347511;
        Fri, 18 Jun 2021 16:52:27 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:7718:8bff:acab:aa6b])
        by smtp.gmail.com with ESMTPSA id x22sm8897487pjp.37.2021.06.18.16.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 16:52:26 -0700 (PDT)
Date: Fri, 18 Jun 2021 16:52:22 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Borislav Petkov <bp@alien8.de>,
	Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kbuild@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
	johannes.berg@intel.com, linux-toolchains@vger.kernel.org
Subject: Re: [PATCH 0/2] no_profile fn attr and Kconfig for GCOV+PGO
Message-ID: <20210618235222.s6l552hpkbfod6sv@google.com>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210618233023.1360185-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cPWHs2b8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-06-18, Nick Desaulniers wrote:
>When we say noinstr, we mean noinstr.  GCOV and PGO can both instrument
>functions. Add a new function annotation __no_profile that expands to
>__attribute__((__no_profile__)) and Kconfig value
>CC_HAS_NO_PROFILE_FN_ATTR.
>
>Base is
>https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/clang/pgo.
>
>Nick Desaulniers (2):
>  compiler_attributes.h: define __no_profile, add to noinstr
>  Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
>
> include/linux/compiler_attributes.h | 12 ++++++++++++
> include/linux/compiler_types.h      |  2 +-
> init/Kconfig                        |  3 +++
> kernel/gcov/Kconfig                 |  1 +
> kernel/pgo/Kconfig                  |  3 ++-
> 5 files changed, 19 insertions(+), 2 deletions(-)
>
>
>base-commit: 4356bc4c0425c81e204f561acf4dd0095544a6cb
>-- 
>2.32.0.288.g62a8d224e6-goog
>

Thanks for the attribute work in clang and kernel! Hope we can use clang
PGO in 5.14...  (I am a casual contributor to clang PGO/coverage)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618235222.s6l552hpkbfod6sv%40google.com.
