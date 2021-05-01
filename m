Return-Path: <clang-built-linux+bncBCS7XUWOUULBBD7UWKCAMGQEOSNPRPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id C285E3704ED
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 04:16:48 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id r204-20020aca44d50000b029013da91480a0sf29633709oia.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 19:16:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619835407; cv=pass;
        d=google.com; s=arc-20160816;
        b=wmuvycece3jl4g/Hz5X/VXRxrLw1whp2WAMugejF+Ls2wEI8zU/rc6qSfFPAS2xvD1
         fYyTbIeBgINqM7TJ43jjbjkxWfVxQk4/uUQyIsT1VTngo6DwY8V8gf0iI8ejk5F3lmJK
         GOKI55NV1P42GARqHagepC8AD55HS7CZuKMAnl+OYxxl9ru7e5SsqELfUUFRDJpsMBhP
         +xqs+j5/N3SJWfP5LvA89SBlaUaQYjHaiYxTgqGDXl0bzIel8/RAjHXeQZy1DFjPfIFj
         XOlHYEb4Zfb5AWcLzpfe7eDb7su2hkbf/5bo4LhNzMGS60dW7diSPsJFWp9nzLfAY644
         DlTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=53cQz2MgHxltlVre1bbq6ksJ+uS3dmeDEnNV23Z42/M=;
        b=vU6xBd6n+WfmeyyPwLBLEWdYCNVEyvPTI4nOOCdJY8Xwfr91EJQ+qc9qOSB4kJ9msl
         bOzeGkjnXRX4r+DQgCu2d1fEEHTB5PkEiQAIYm5ZdUA/ilZOtQi8/+AxJ0UQ4w8X56go
         I3G/x6gZAcXeDVVU1cdsHdLPwzh4QxfFeSClg+gtdlCPKyNmIdpkjSchHhAlh1GKYskd
         2LDPB18kxYKKjtp4Qa3Nrrk833O3lDnwwjtlR/G+8+Yz18COfwHO/tK5jG7SPaDIWTgU
         K29qF7nQK8+SLezCBg9SbccS/FWHPYAXpQJq/zeFFq0bCwEzSfCLC5F3wTGu746/2qOU
         XP6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=suGDJg9A;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=53cQz2MgHxltlVre1bbq6ksJ+uS3dmeDEnNV23Z42/M=;
        b=AhQ6WneOHcL0WuuGrVL4BxpVL3tL5y53appdEdo9qxoH0UMzXOZPJRFzNuJIisBgT6
         kHVR5pWCdEIDSFFoN3W7D14RONTub3Gkx3HWGznrUAuuK6MdHGHUOU9p7mDAh+XgWjvp
         IxCJ2Cc0+sD5SPaufDRoHLOdChyiJZ4uUriwb8O5gBE5WAlfOcRlV/xmzMcrJadHVoEJ
         rVPI1lVM0pAmDiiU2OD6IprZz/i4XwdXVUzas55FdAyRqal1sDZVn1xoKwNB4QhqxICZ
         eTeWLGfh0UOdXtlb5iWV5yVxGWLry6hUmDarIX/dIIJpIW3w5ssB+eUvVt4lfu+c4HH8
         SvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=53cQz2MgHxltlVre1bbq6ksJ+uS3dmeDEnNV23Z42/M=;
        b=hbKLtRc5s8oqa1T+phtv0MmLPzT37Wi77xL6LfdouRAs7Ai45ttZ161WUuDdjFnBZk
         E+BIvMp6hzlCQXPxLYT3edk6dV9mxfrPOcps1bpHGwxBjs0YBlnmN4z8mx0Ql8bXElbf
         mG2G0i2a6LQ49dvKt2tamBKNYJZ3OKHfDhK0QRKB5aMraxqFKadvV8dDbxQF/z2QUrbr
         gpu1PHUwKiWRfaSlYrlF2+MdLn18QpXg28wUkKMWTuzZvdHzkE2fGS1lBbI3+UsoJgh1
         7b9aP5Jq3yymtvouTg0ntTmNRccKETmRtxYBLZK/B7thL/8UDkIcQ0nqfn4oPTg99pkJ
         96MA==
X-Gm-Message-State: AOAM531ZVZus83eTapJQVodqIB9MAFwl7gR6iuZkr2YLTNZpSrBQjOCu
	oaOtZRmOJczPwPYTkurfma8=
X-Google-Smtp-Source: ABdhPJxRmvjozV8zAN0/d+SmX4CUiNT9Kq62oDORevYiR2G5NYUGJaYLqdtkJMfk1WJq2bWDJdfvZg==
X-Received: by 2002:a9d:3424:: with SMTP id v33mr5888727otb.137.1619835407705;
        Fri, 30 Apr 2021 19:16:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3488:: with SMTP id c8ls2241223otu.10.gmail; Fri,
 30 Apr 2021 19:16:47 -0700 (PDT)
X-Received: by 2002:a9d:3444:: with SMTP id v62mr6266103otb.286.1619835407330;
        Fri, 30 Apr 2021 19:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619835407; cv=none;
        d=google.com; s=arc-20160816;
        b=X3YMfREnMnU4IKRIJxy8Q0n5/0qSWwgFkflMsNn/dX/im7JBD6QsAIOGm5JlUDwrzW
         lq2VSC+GLNpuTQrZfG2oMc7b3yjzQ6VocdkQ4wa5Cz6dvnt0FrvKG/vNEROZTgY254DN
         2auvOZw5PxhZDlb9/S6eb5MFBgbqJRc1kk3EDn1HMxebzikm0mwGTIrTkkB9E01zOd5p
         15sWjFao3JwdrCBuGV/prPB33huCPeb2BySrSZh4ixwv/Fjp95oc4nD9vt8UHtgeiQ36
         pdhEthGqo74J2Ho8iTEpyk58rR1XUgKHloSE+87mU6btQSnNgIolffO22rSNhPlaZOAx
         XnMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tQtdPbaQcCHSATMeh3s5HzCozhEyZ/3PouIEknCwd+I=;
        b=j50u66CVvQSA2CvHrCtV/Tw8MqjQf/DBl5JtvdAnJpb61mVZAVjSKUVBZ9Ma3wgkI2
         lt8DiRTbHnLKyEzs+dnBmwATMKgyKlCNoFgrTw0qn98Y10VcXctnT+p5sBOM0KXYhK7Z
         TD2ZD69GivofeAdI9mQ0364ucCqPxGpW8URVDledvp2BFEDTf2AiChyBfJYwVJISnawr
         SSAGPJjgZRPTMKweT9AstRF0QI/Asp2kyTshh61Gib8xbHreBn5/1ucQYTz+ss2BdStQ
         Z1JUGiuHVJcS3wD/IE5MVYkQxyqjY2u8H+p1FhO4ftJyjJM25FQAS38rnxsggmUqqSL0
         C/VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=suGDJg9A;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id e13si771905oth.3.2021.04.30.19.16.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 19:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id b14-20020a17090a6e0eb0290155c7f6a356so6475770pjk.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 19:16:47 -0700 (PDT)
X-Received: by 2002:a17:90a:8c86:: with SMTP id b6mr18114177pjo.73.1619835406794;
        Fri, 30 Apr 2021 19:16:46 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:c8ff:cd89:d408:7b46])
        by smtp.gmail.com with ESMTPSA id a6sm3377544pfc.61.2021.04.30.19.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 19:16:46 -0700 (PDT)
Date: Fri, 30 Apr 2021 19:16:42 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Tom Stellard <tstellar@redhat.com>, felixonmars@archlinux.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210501021642.yertoclugdbqq6m4@google.com>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=suGDJg9A;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102c
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

On 2021-04-30, Nick Desaulniers wrote:
>On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
><torvalds@linux-foundation.org> wrote:
>>
>> On Fri, Apr 30, 2021 at 5:25 PM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>> >
>> > Ah, no, sorry, these are the runtime link editor/loader. So probably
>> > spending quite some time resolving symbols in large binaries.
>>
>> Yeah. Appended is the profile I see when I profile that "make
>> oldconfig", so about 45% of all time seems to be spent in just symbol
>> lookup and relocation.
>>
>> And a fair amount of time just creating and tearing down that huge
>> executable (with a lot of copy-on-write overhead too), with the kernel
>> side of that being another 15%. The cost of that is likely also fairly
>> directly linked to all the dynamic linking costs, which brings in all
>> that data.
>>
>> Just to compare, btw, this is the symbol lookup overhead for the gcc case:
>>
>>    1.43%  ld-2.33.so             do_lookup_x
>>    0.96%  ld-2.33.so             _dl_relocate_object
>>    0.69%  ld-2.33.so             _dl_lookup_symbol_x
>>
>> so it really does seem to be something very odd going on with the clang binary.
>>
>> Maybe the Fedora binary is built some odd way, but it's likely just
>> the default clang build.
>>
>>              Linus
>>
>> ----
>>   23.59%  ld-2.33.so          _dl_lookup_symbol_x
>>   11.41%  ld-2.33.so          _dl_relocate_object
>>    9.95%  ld-2.33.so          do_lookup_x
>>    4.00%  [kernel.vmlinux]    copy_page
>>    3.98%  [kernel.vmlinux]    next_uptodate_page
>>    3.05%  [kernel.vmlinux]    zap_pte_range
>>    1.81%  [kernel.vmlinux]    clear_page_rep
>>    1.68%  [kernel.vmlinux]    asm_exc_page_fault
>>    1.33%  ld-2.33.so          strcmp
>>    1.33%  ld-2.33.so          check_match
>
>47.61% spent in symbol table lookup. Nice. (Not counting probably a
>fair amount of the libc calls below).
>
>>    0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
>
>^ wait a minute; notice how in your profile the `Shared Object` is
>attributed to `libLLVM-12.so` while mine is `clang-13`?  Clang can be
>built as either having libllvm statically linked or dynamically; see
>the cmake variables
>LLVM_BUILD_LLVM_DYLIB:BOOL
>LLVM_LINK_LLVM_DYLIB:BOOL
>BUILD_SHARED_LIBS:BOOL
>https://llvm.org/docs/CMake.html
>
>I think those are frowned upon; useful for cutting down on developers
>iteration speed due to not having to relink llvm when developing
>clang. But shipping that in production? I just checked and it doesn't
>look like we do that for AOSP's build of LLVM.
>
>Tom, is one of the above intentionally set for clang builds on Fedora?
>I'm guessing it's intentional that there are packages for
>libLLVM-12.so and libclang-cpp.so.12, perhaps they have other
>dependents?

LLVM_LINK_LLVM_DYLIB (linking against libLLVM.so instead of libLLVM*.a)
has been around for a while.

Tom added CLANG_LINK_CLANG_DYLIB in 2019
(https://reviews.llvm.org/D63503 link against libclang-cpp.so instead of
libclang*.a or libclang*.so) :) So I'd guess this is a concious decision
for Fedora.

Arch Linux has switched to -DCLANG_LINK_CLANG_DYLIB=on as well
https://github.com/archlinux/svntogit-packages/blob/packages/clang/trunk/PKGBUILD
This is useful to make the total size of LLVM/clang dependent packages
(ccls, zig, etc) small.

If we don't let distributions use libLLVM.so libclang-cpp.so, hmmmm, I guess
their only choice will be crunchgen[1]-style
clang+lld+llvm-objcopy+llvm-objdump+llvm-ar+llvm-nm+llvm-strings+llvm-readelf+...+clang-format+clang-offload-bundler+...
(executables from packages which are usually named llvm, clang, and clang-tools)

[1]: https://www.freebsd.org/cgi/man.cgi?query=crunchgen&sektion=1

>>    0.83%  [kernel.vmlinux]    rmqueue_bulk
>>    0.77%  conf                yylex
>>    0.75%  libc-2.33.so        __gconv_transform_utf8_internal
>>    0.74%  libc-2.33.so        _int_malloc
>>    0.69%  libc-2.33.so        __strlen_avx2
>>    0.62%  [kernel.vmlinux]    pagecache_get_page
>>    0.58%  [kernel.vmlinux]    page_remove_rmap
>>    0.56%  [kernel.vmlinux]    __handle_mm_fault
>>    0.54%  [kernel.vmlinux]    filemap_map_pages
>>    0.54%  libc-2.33.so        __strcmp_avx2
>>    0.54%  [kernel.vmlinux]    __free_one_page
>>    0.52%  [kernel.vmlinux]    release_pages
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210501021642.yertoclugdbqq6m4%40google.com.
