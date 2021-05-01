Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2HGWKCAMGQELTAS67Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D3E3704B9
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 03:48:25 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id v2-20020a0560001622b0290106e28f8af8sf23723380wrb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 18:48:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619833704; cv=pass;
        d=google.com; s=arc-20160816;
        b=m94Eb1ph5Y8qBdwDIKltfhkXjyastSq2doXUSJraHDW/NC52zRQWUrB5cZkwK+hnd5
         D+cSts0FQT3FGPVS3iB3PiimrAdBtIzR1N5ZVjUyh2FRAUlyd4sIn3AeQC9nFUIOlXKa
         LKmkw5XrcuoJmdoFcVSLSHJYdP/ewyM/cp1LBrDblumEMnecYLAK1dOSunooQ1euDrbO
         iPdsBpolLT9vimYklPb/KvHRBVQljWaUaDqQHMM1sJYIykAX/G5UWD4ex17gok5n6pIR
         R1fM68D+FOxaflBz48SWcsX6G1tbpc9Z7j/ea1chuGihuT5sIGjumK6sd036qw9QbEpU
         5AUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qyqejzEaQMjOwXs8i0XTjPJ8fcRqE1wHRt3WhU+FOhs=;
        b=oqpcsCVD/KTnm7fJbepk0P9z8HdGXTl/LT4UnfNHmJEYe7S5q5+OVeSOZa+N+JHvBK
         m97guTn1/krQECnp/8G/0z6Rw1RndBrva7nwmUvagb/xJN8T2ptS7c/2J3wvk8Ou1xtA
         d68jkPE1amXtgDekiUKjBncZOJqya+MEcSzsia2m5e2EIHNNZQmN0Bi/Ggvdvz/tzBuY
         Xh9CHXwD1i081FluDiEKzExX6FdjRYoMOURsHvNSvH4ikSriFU/bug9pOWzkeLkYWNxU
         ptDe1yPE9HhvAJoiuWbrFDnIgSLeKDyIDFo0HwkUWbJDltnJrRwBvhpFPm9oXdJDPGs+
         66JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tF2MeLtO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qyqejzEaQMjOwXs8i0XTjPJ8fcRqE1wHRt3WhU+FOhs=;
        b=W8pin02JSXcWOXL8g0P/flhoceHadJMfrC9A52MAZcddgF7O1ms27dyuDYeoEtAAFg
         GGh7WPamGkyCcJefmIDbKCRNZXqrPUnuMCyyjrPcIk57v2MIzQwHftlV8Z0pHNwxwbmM
         0De8e94s6pcOsse9cfWfLYMHy34k9UMm64Cdw+K3ZeearXMV7CpgtKXoOyhD1UUhsK2m
         cAqhFESTacF2dojXxDhBjvg4Opl6FhiPyUGOXM0xGmaaWL3F2gv1DpdGJKtRFzr/ItNV
         6wrKZsqH41m4Eljyn37txAojaWWjF1hPXqX6iHi4O5tkYXUarRHC9ZsENkDRkOqqIf7P
         OQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qyqejzEaQMjOwXs8i0XTjPJ8fcRqE1wHRt3WhU+FOhs=;
        b=P0X1703Cf7ytUBbjYpwqyLLCfxtj2ldLVp/sDCu/Jq0rWrX4CJiuef8qGrkLxna2z0
         eyNRmBQiG3+PYz3yTU7FB4mLyazR2eyMKrme9XZjDxsVP8ilYOpHJs2suL0GeN6WZQ4Q
         fpbM04DZg0YfgKJiqatIVajmkXI+wVryw55NVg2TJMVBemneGCAw1xBnIfyu/X6x7K4M
         7Qkyba2Lk1JyKZvazY6cUrtSypfTVxAgUTJrsR9IBQQ8C8FIfxzjpw3ribXSCc1QOls5
         N1T6uH/RDvszdadMzRqS8inkHorA65v8MvbYfx9Js9jJBRJqoSuzDo8D4ODMHWAupdW1
         nm9A==
X-Gm-Message-State: AOAM532Q9zNXAB8QDbq6zA4ntiNZJBLaSMpdkq9AqSmH1RexlI/dpqfz
	iJMwHRz9bbH7rZntQdWWnYg=
X-Google-Smtp-Source: ABdhPJzKbX/l2Ecz1W7/229Z7srUM9n3TYDKa5j5TqEFteZJbdPby42zQ8wD6VxyQzhQNA6cK9uzcQ==
X-Received: by 2002:a1c:f204:: with SMTP id s4mr9066797wmc.8.1619833704719;
        Fri, 30 Apr 2021 18:48:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f16:: with SMTP id l22ls6268853wmq.3.canary-gmail;
 Fri, 30 Apr 2021 18:48:23 -0700 (PDT)
X-Received: by 2002:a1c:a54a:: with SMTP id o71mr9264028wme.172.1619833703746;
        Fri, 30 Apr 2021 18:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619833703; cv=none;
        d=google.com; s=arc-20160816;
        b=eZQkocg7S/rJnOm1L/SKKwt9lCIo+Px+UB/LDmH0gHcrvLBt/YcKvTuOd1/dR/gHlR
         M6QpR7xg/PddgIW0kkqdoEVvnoxztqaFjVw5dJo0BGYntfgLwlRQIQPbaXWjbdTyUVeT
         PbUKwkUgpuqv6JFdRN0bMokkZI6kei7X+Z68xsMUnwCNTj6AS12+BlCfKqE0A9v0VZ4n
         pFS+CjLCz2uHOZckUOQ93+Y+ZtfbYdxmCk59occfmUd+Vj0tRf97Ae6Ydd7h8EYI8ZX1
         1W38Oqt140FeJ89fJMzwenczyuIULds190jxhG9BvVWNilDbisR04tzyTRCNYhpvHfO2
         owYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eBtHrA9yJb6BkyPbvCe4U6uwAdzA/QThsJuomereZNw=;
        b=kJbrBix7fCshXYhIHE8TqtF3TRHVPdm/Zu625NPyFgeJnKkcH/SRzofxbaWzKZVZhg
         RiYVAwHR8UG3XaHYu/R7tu9b0V8b2ElK0w/oJF/zm7La34DprUufA4PZhSg5sfJ6Kqlm
         qyoNrEaW3dgR2eCchnu5TpaY9eSO8XtDCjN6gRqQGjVWXA3V3cW+SDCqa6OWI7GSLTvM
         Vgdv6MKTH1hL9cWC8UFSQhi2kL1Srf+9xUIAbvkrCt/lqTzc6Ciir2r/4GOI2P8hMIVS
         VlxpZUKkPZS4WOH9z9hIrWz8bGfxd/XMf6OyYn9vStRVMvZNsD2zwTSBNj0uxN6uPPFb
         m/rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tF2MeLtO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id b5si272000wri.2.2021.04.30.18.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 18:48:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id j4so73431874lfp.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 18:48:23 -0700 (PDT)
X-Received: by 2002:a05:6512:2190:: with SMTP id b16mr5235875lft.122.1619833703046;
 Fri, 30 Apr 2021 18:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com> <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
In-Reply-To: <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 18:48:11 -0700
Message-ID: <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>, Tom Stellard <tstellar@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tF2MeLtO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Fri, Apr 30, 2021 at 5:25 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Ah, no, sorry, these are the runtime link editor/loader. So probably
> > spending quite some time resolving symbols in large binaries.
>
> Yeah. Appended is the profile I see when I profile that "make
> oldconfig", so about 45% of all time seems to be spent in just symbol
> lookup and relocation.
>
> And a fair amount of time just creating and tearing down that huge
> executable (with a lot of copy-on-write overhead too), with the kernel
> side of that being another 15%. The cost of that is likely also fairly
> directly linked to all the dynamic linking costs, which brings in all
> that data.
>
> Just to compare, btw, this is the symbol lookup overhead for the gcc case:
>
>    1.43%  ld-2.33.so             do_lookup_x
>    0.96%  ld-2.33.so             _dl_relocate_object
>    0.69%  ld-2.33.so             _dl_lookup_symbol_x
>
> so it really does seem to be something very odd going on with the clang binary.
>
> Maybe the Fedora binary is built some odd way, but it's likely just
> the default clang build.
>
>              Linus
>
> ----
>   23.59%  ld-2.33.so          _dl_lookup_symbol_x
>   11.41%  ld-2.33.so          _dl_relocate_object
>    9.95%  ld-2.33.so          do_lookup_x
>    4.00%  [kernel.vmlinux]    copy_page
>    3.98%  [kernel.vmlinux]    next_uptodate_page
>    3.05%  [kernel.vmlinux]    zap_pte_range
>    1.81%  [kernel.vmlinux]    clear_page_rep
>    1.68%  [kernel.vmlinux]    asm_exc_page_fault
>    1.33%  ld-2.33.so          strcmp
>    1.33%  ld-2.33.so          check_match

47.61% spent in symbol table lookup. Nice. (Not counting probably a
fair amount of the libc calls below).

>    0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor

^ wait a minute; notice how in your profile the `Shared Object` is
attributed to `libLLVM-12.so` while mine is `clang-13`?  Clang can be
built as either having libllvm statically linked or dynamically; see
the cmake variables
LLVM_BUILD_LLVM_DYLIB:BOOL
LLVM_LINK_LLVM_DYLIB:BOOL
BUILD_SHARED_LIBS:BOOL
https://llvm.org/docs/CMake.html

I think those are frowned upon; useful for cutting down on developers
iteration speed due to not having to relink llvm when developing
clang. But shipping that in production? I just checked and it doesn't
look like we do that for AOSP's build of LLVM.

Tom, is one of the above intentionally set for clang builds on Fedora?
I'm guessing it's intentional that there are packages for
libLLVM-12.so and libclang-cpp.so.12, perhaps they have other
dependents?

>    0.83%  [kernel.vmlinux]    rmqueue_bulk
>    0.77%  conf                yylex
>    0.75%  libc-2.33.so        __gconv_transform_utf8_internal
>    0.74%  libc-2.33.so        _int_malloc
>    0.69%  libc-2.33.so        __strlen_avx2
>    0.62%  [kernel.vmlinux]    pagecache_get_page
>    0.58%  [kernel.vmlinux]    page_remove_rmap
>    0.56%  [kernel.vmlinux]    __handle_mm_fault
>    0.54%  [kernel.vmlinux]    filemap_map_pages
>    0.54%  libc-2.33.so        __strcmp_avx2
>    0.54%  [kernel.vmlinux]    __free_one_page
>    0.52%  [kernel.vmlinux]    release_pages
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT%2BuCTgqBwQHBg%40mail.gmail.com.
