Return-Path: <clang-built-linux+bncBCS7XUWOUULBBCWVW6CAMGQE5SLBLEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C69370959
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 01:55:56 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id d5-20020a67c1050000b02902228a77a0e6sf1037870vsj.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 16:55:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619913355; cv=pass;
        d=google.com; s=arc-20160816;
        b=QcUhbiC3T32+h+rccPSYRf83XMFLj7ud1HpHZ7Lif9/QIPRdUV1f+yB2906kgZKYwx
         ptpmyf0GurNwntvyV5eUcnXgU0DoeMsimuvUuPx1pjMbtwxTQU7f7GECMFboZ4iNSe4S
         2OiCtr+4a7l/Q7+V5MDmlkE3+Ab0DDBbAUkq9uWEThODjoVsc+QQyQwyGO4Y8ouZ8Ofx
         vWIf0yaH7DRooh0hMKJa3nIMpdi9TWOieJralyLZSCxxFkRt7BqXAuDHMYJpLK4jOZ83
         Vm5UkrwQYlNeUB7s9Lc/+DriJ8XCaw2ycmn5xbSTjMfGt5RsqDluZVA6WlafhWHQ2Vvc
         qflA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CHScmJ7Rb4kcPC5AZ7hJ0Fx9VGZS6f0nReZtMX+Tpf4=;
        b=0qRDpPwTYKg6h9betNeN7QnJPnmqR0xCvgj1J8c0ejPnF+1mQdz5ELqOyt5nSuSoLl
         povhe3BVVwdD3kAaLVUv8K4L17p+LvzDwKQRw10E8pLeyG550a4rNNzeuIBHju9EZxG0
         OJWqaoi26axjfbWQqvExngayJXHyugjVfO32zLj6KLRp9LcrSGpsmci6xHAOzzI4CCnh
         gEE3ZOriPanWgX0n790632O67+YYyUWHH4spp3KbDv4YZd9fGR0vIhwGI6szmhgzrxAM
         MCKxad00UXVQ8F67aVR6E5PO7VX+DSPtL17PXPLQsnCgzsLMZK/HyT4xR08+o1xHcpAe
         VhNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yp+7NBsW;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CHScmJ7Rb4kcPC5AZ7hJ0Fx9VGZS6f0nReZtMX+Tpf4=;
        b=iefsFkBR4OHF+EBq4oCGic8hGv2tJk3qNo1NGUp8ZMuIwg6c1QYf/aZLyihfHFqKkn
         TSAvDz/HdtHT1NQqPN+zERX2MH490CCows+m+s1ighP7ugSbKYdwavalNOd80pf1q1wl
         2kECIASo+Y3XCVyzB4dbb6ZKv24F501RVgS04UB8z2nwC1n4OXwjnAQhUuGJ0zMvH2W7
         pBR7Z7d5I5USzlHe2INkB3+f+7U4JwEbyzVa7K0a3zBsfUi7yM0wcqgvbs+SfipAaNAB
         sSBB4KaxuyO6bsKorpRocv+evEWBiWvYaKFXDLompqBjt6g7kOEt2W1oZBkHhst+051Q
         bA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CHScmJ7Rb4kcPC5AZ7hJ0Fx9VGZS6f0nReZtMX+Tpf4=;
        b=SzjmQ8QrF+WS8ms4DddzT4nV5Qyy1YAkkYYoYNCgNItO62KIK/IQ3Rcnlpyc1m/Zc8
         ANGFrmtHLq47Esh7V54u/l44pk7ANT1qECEckQfvplwJyN1bBTp3gMDkP62QdvrFR4l1
         hszSQ0CjwUqqkJ6NtGE5HE7onqYsNFDpy0p/+gLsjqWo88m17RQjF9s9WGGLy0puZ8mC
         3RxPFFMEPK7nepwIlIxqpi2H5P+OtiOsMLE4Ins9XSL7DEbZUc2saR6hmKECO6lpYh8N
         EK6fDtWNsBY3TYTpyn/JQn96r7h/HAPjGSuaqAci0rOILtPKYXu2eqH6rzuJdfQAIaPT
         i/oA==
X-Gm-Message-State: AOAM531RMKYKk15A2m1W6udm/zNYUFeqoMMVujAbSAKo94+eMdicwgu7
	wZgAGLwIy/kWqQVOVwkg6Bg=
X-Google-Smtp-Source: ABdhPJx/bHuETsyLMVIcITvZASIe7Sasp7yuZZNfqKykLX0Amf67GHqsgnt/g9BEO51V6cvNriYndg==
X-Received: by 2002:a05:6102:48d:: with SMTP id n13mr11987784vsa.51.1619913354998;
        Sat, 01 May 2021 16:55:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:31c4:: with SMTP id x187ls802536vkx.9.gmail; Sat, 01 May
 2021 16:55:54 -0700 (PDT)
X-Received: by 2002:a1f:ae94:: with SMTP id x142mr10086364vke.12.1619913354516;
        Sat, 01 May 2021 16:55:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619913354; cv=none;
        d=google.com; s=arc-20160816;
        b=lZ0l0d7SztS9Qc/cYU/7LEh/xkUxDmUWQHhJYqO7uX/OR8StCebYjLmth2rgqzZ2Kc
         Af/FwkX1nuiMV3AvoGg2epy8lyqCaOwR8fG/UVoCzRvKRElmhtN28zES2K6TNpv1Ftnp
         ALBRxZPKuB97Y4lPd6dDaXT3UD31MyZCTd/VpSHw1xOaCaYqqSb60EHdTR86yr6rT6Tv
         rNKIrpTQcGdfzzgzDfbSuVyPhJHgjArVU8Nl7QYtA1zY8RRQs0kGDoaBV9elevma9DA/
         EGYj3lNWKyFYudXqtaBsQKuiMdNzVKLoFQWet4l8piR43LxiWwYan23HdavhM+Q6pgZp
         G+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cJtnQiMEQGHamwTnLSAL+yS7z+YYUkCJ8B6sDol3IVQ=;
        b=NTEULZLSYslgD2Wxvo+K8EVOA77p3B2yCh1TaScyJwXHdR7fLqHlP/4ZGT0GtJySpA
         BLfCVcvgUT2temrUsdfX1Xk7b0kLSvLdWHQsRIKtr2uXlOnfix7UsB9+WgpXN1NmcJh4
         UHvL0yer2N0Nkmy+Z2ztYhj1dbWL9kj5baJpbmd0IP3peWMpo4fmPXq2LXUcRiksbROY
         wnabrkyMdbhl1dlE876WxpEhNFl1Yc6Zwlxoq5sMOUQhJDlX28/bW4/ZGMTtgTbL+j9I
         y6Mprsgho0PRDOY+BQY7yxVBhVntY8UJsNx2Z4NXo7sldom97F+gXnjN8+F85cmK1xlL
         wN2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yp+7NBsW;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id t11si543184vsm.2.2021.05.01.16.55.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 16:55:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id lp8so1028136pjb.1
        for <clang-built-linux@googlegroups.com>; Sat, 01 May 2021 16:55:54 -0700 (PDT)
X-Received: by 2002:a17:903:1c2:b029:ec:a5b6:f840 with SMTP id e2-20020a17090301c2b02900eca5b6f840mr12676430plh.24.1619913353423;
        Sat, 01 May 2021 16:55:53 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:bd70:101f:7bf7:d724])
        by smtp.gmail.com with ESMTPSA id h6sm5383564pfb.157.2021.05.01.16.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 May 2021 16:55:52 -0700 (PDT)
Date: Sat, 1 May 2021 16:55:49 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Serge Guelton <sguelton@redhat.com>, Tom Stellard <tstellar@redhat.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>,
	Felix Yan <felixonmars@archlinux.org>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210501235549.vugtjeb7dmd5xell@google.com>
References: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210501195750.GA1480516@sguelton.remote.csb>
 <CAHk-=whPoHOa6_gA3-pk=nOzpefZmsSK1an_iByEyhLe+3m-AA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAHk-=whPoHOa6_gA3-pk=nOzpefZmsSK1an_iByEyhLe+3m-AA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Yp+7NBsW;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1030
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

On 2021-05-01, Linus Torvalds wrote:
>On Sat, May 1, 2021 at 12:58 PM Serge Guelton <sguelton@redhat.com> wrote:
>>
>> Different metrics lead to different choice, then comes the great pleasure of
>> making compromises :-)
>
>Even if that particular compromise might be the right one to do for
>clang and llvm, the point is that the Fedora rule is garbage, and it
>doesn't _allow_ for making any compromises at all.
>
>The Fedora policy is basically "you have to use shared libraries
>whether that makes any sense or not".
>
>As mentioned, I've seen a project bitten by that insane policy.  It's bogus.
>
>            Linus

As a very safe optimization, distributions can consider
-fno-semantic-interposition (only effectful on x86 in GCC and Clang,
already used by some Python packages):
avoid GOT/PLT generating relocation if the referenced symbol is defined
in the same translation unit. See my benchmark below: it makes the built
-fPIC clang slightly faster.

As a slightly aggressive optimization, consider
-DCMAKE_EXE_LINKER_FLAGS=-Wl,-Bsymbolic-functions -DCMAKE_SHARED_LINKER_FLAGS=-Wl,-Bsymbolic-functions.
The performance is comparable to a mostly statically linked PIE clang.  (-shared
-Bsymbolic is very similar to -pie.): function calls within libLLVM.so
or libclang-cpp.so has no extra cost compared with a mostly statically linked PIE clang.

Normally I don't recommend -Bsymbolic because

* it can break C++ semantics about address uniqueness of inline functions,
   type_info (exceptions) when there are multiple definitions in the
   process. I believe LLVM+Clang are not subject to such issues.
   We don't throw LLVM/Clang type exceptions.
* it is not compatible with copy relocations[1]. This is not an issue for -Bsymbolic-functions.

-Bsymbolic-functions should be suitable for LLVM+Clang.



LD=ld.lld -j 40 defconfig;  time 'make vmlinux'

# the compile flags may be very different from the clang builds below.
system gcc
     1050.15s user 192.96s system 3015% cpu   41.219 total
     1055.47s user 196.51s system 3022% cpu   41.424 total

clang (libLLVM*.a libclang*.a); LLVM=1
     1588.35s user 193.02s system 3223% cpu   55.259 total
     1613.59s user 193.22s system 3234% cpu   55.861 total
clang (libLLVM.so libclang-cpp.so); LLVM=1
     1870.07s user 222.86s system 3256% cpu 1:04.26 total
     1863.26s user 220.59s system 3219% cpu 1:04.73 total
     1877.79s user 223.98s system 3233% cpu 1:05.00 total
     1859.32s user 221.96s system 3241% cpu 1:04.20 total
clang (libLLVM.so libclang-cpp.so -fno-semantic-interposition); LLVM=1
     1810.47s user 222.98s system 3288% cpu 1:01.83 total
     1790.46s user 219.65s system 3227% cpu 1:02.27 total
     1796.46s user 220.88s system 3139% cpu 1:04.25 total
     1796.55s user 221.28s system 3215% cpu 1:02.75 total
clang (libLLVM.so libclang-cpp.so -fno-semantic-interposition -Wl,-Bsymbolic); LLVM=1
     1608.75s user 221.39s system 3192% cpu   57.333 total
     1607.85s user 220.60s system 3205% cpu   57.042 total
     1598.64s user 191.21s system 3208% cpu   55.778 total
clang (libLLVM.so libclang-cpp.so -fno-semantic-interposition -Wl,-Bsymbolic-functions); LLVM=1
     1617.35s user 220.54s system 3217% cpu   57.115 total



LLVM's reusable component design causes us some overhead here.  Almost
every cross-TU callable function is moved to a public header and
exported, libLLVM.so and libclang-cpp.so have huge dynamic symbol tables.
-Wl,--gc-sections cannot really eliminate much.


(Last, I guess it is a conscious decision that distributions build all
targets instead of just the host -DLLVM_TARGETS_TO_BUILD=host. This
makes cross compilation easy: a single clang can replace various *-linux-gnu-gcc)


[1]: Even if one design goal of -fPIE is to avoid copy relocations, and
   normally there should be no issue on non-x86, there is an unfortunate
   GCC 5 fallout for x86-64 ("x86-64: Optimize access to globals in PIE with copy reloc").
   I'll omit words here as you can find details on https://maskray.me/blog/2021-01-09-copy-relocations-canonical-plt-entries-and-protected
   -Bsymbolic-functions avoids such issues.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210501235549.vugtjeb7dmd5xell%40google.com.
