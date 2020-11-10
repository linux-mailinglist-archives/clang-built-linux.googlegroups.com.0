Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKUNVD6QKGQEV4RSB3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E222ACB92
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 04:19:07 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id s12sf2519454ooi.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 19:19:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604978346; cv=pass;
        d=google.com; s=arc-20160816;
        b=lpYNO2KRXkIOfY3Qsbk8Ul5ZDjZVTeKR3OvERB9jvRGpHswE0CXYjSvnj45Dg/tKIz
         tCrHN1XqNpuSm67OxPZZQnudPJ4hQCfi2CFPvhJ5r5U/qqplqzWp8TBsgmqSgXW9joLV
         2zaiXZM/ftUOdfXZ+yLZDt+QjUply1gXt2xUwC34LGaa3+2Qd4muLMVySiQ7sTW7/NsZ
         5D3uk2MDARU6y5OTQqGlj4L75nHr5W/O8bOrEXs1EnpjrtbrekT05asvnm6XBxnkZwua
         MULjVuEbuifBaVmfpaVZMPcZC3ZEz2F40GefrYEg1HeJNq9zX2ELeKUF7eCuTT0Crn8H
         xtnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cYh71+q3CcyXsZxMj12lO8VdCLPshDUmg03lAkRz90s=;
        b=1BZVWW0CddoTrXcn8foKg6YnenW04tM7MENZJRCV8i1KSxA8fDW3jcW3b78OcXtQTi
         uaIUOf+YJVUHflDugp0GPeibcUX0opzThiklio7VDt9cdnnUfVVG87t+O9QhZY2bVqRl
         eDEkDKLppZ4k8BMAyXePUjcUcxnZkLnnVfpdNBXr5xFOJBcFfJ/XSh6tCzQgROmHsMZ8
         OZbVyW9GxuI+KMzIbwRvvAeL20FSXfRaG9JBZo2JZyjFSaEofLv+L9OlTAFF3BBYfms5
         ADY8DwyOTtYXCsi/h81dZhskR3/TnHbq6sHvHzV4xee+fZS1FOcGiCTxCpUKv3M5gb+M
         6n9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XsFFeqcH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYh71+q3CcyXsZxMj12lO8VdCLPshDUmg03lAkRz90s=;
        b=FvNY47CVcs8m+WyyDA2zL1tZWxeowwnXTdTkUTDw0KeiH4dKirbnzt8ADwV7dJ9V/T
         WoWkWZld5VzSUWbsg9o3iz1rItTItUqybkfC8jIzIYFb1GHwuaPkERgT1kku+b8MweaQ
         LPBeU4A0XGvGPMHHOLhJQUPr8X17kfGTuEDEoLhMnI8h9+WoS+4HzyzPHeQXybVQHBae
         /PNR4v8ZcclNpLZg1MBLuNX+2ac3xp1Uv1RPJ0+qOpS8zF3gdjJ7eoFZOx1bRRvRGoKB
         zei6qkWXnOQb2nIjl77AMHjT6+3Uac3qYCsdlX3BBFD29YrNW+lm/6ZVvLNoPuTOizjr
         hfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYh71+q3CcyXsZxMj12lO8VdCLPshDUmg03lAkRz90s=;
        b=mBw/E2Iyco+CJ6fso9HjeX7fc9rEEd+7bH6/4wUbp0pG9OMmJRyKf6DMWttwc6N1Vo
         Qmrc9mCzqJm5gcr2AHPjhfrra0ie82ugYUroWtJQAvMscAfU7K+gJ3m+MWfn2L938+eK
         wpw1NO0IicSM+dtdjlaqbuEfVZp//mihyusHN0iw/RXSpwLHNwE/jq0KEGh4FqE7q1MJ
         Y0nB2fbMvqnpU9OLL/VeMZUkUZFoKgpEGS9EoM13dkZb9BqdHUPDKdAE6RHDw25P+ND/
         mxHe9UNWKzryy1ZHfAyfr+vXtZ1BWnj+kTNo7sqp3xCwb3RYJ5TwjN8rqEHcN6GXLyN5
         al/g==
X-Gm-Message-State: AOAM5309bgkyaK8jADtycRsJs9cmmV2O26cn1kduebcfukNGBGrhneyX
	9ZYfpRc9eUW1d8XjkzzI2xs=
X-Google-Smtp-Source: ABdhPJyxOa5WmA+XcsRHU8ZmMm9E0KiZdnvwi+C2uwHR4LcPRv65f7z8esYGJpZk46yvBk9hgEN4bA==
X-Received: by 2002:a05:6808:3b1:: with SMTP id n17mr1481707oie.139.1604978346440;
        Mon, 09 Nov 2020 19:19:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5214:: with SMTP id g20ls2670204oib.9.gmail; Mon, 09 Nov
 2020 19:19:06 -0800 (PST)
X-Received: by 2002:aca:d987:: with SMTP id q129mr1619275oig.5.1604978346090;
        Mon, 09 Nov 2020 19:19:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604978346; cv=none;
        d=google.com; s=arc-20160816;
        b=fc7F7LsmZ8pVXC1GpSpmS8G6jeChEZm/7Vo2MUlERP/Ap9p/Vd5QLcSgBc8u6EUoRS
         yXN3X2zEmFij+dz6nBKbNRr60F7j1Jivhc9QyDbf0BGXi/XhxReNieiLZvmVynEbkGOc
         i5wpm73HaHmiDQRfeQ4LnlTfPebE4tfwmZulBj2Hgye5KKx04UrKUOFHzxGfGhQJCSWR
         irbLZF/bwFqIaZLvccFz0yzcpQLbVx4N0P8OZSLNEc9kN1G/abEDQzQD5A7zVdEawAOx
         VCHll4R4BqxCtOycRZcIW6j8LGtgDJHJwsWYDPRDwnRn4NoEHYD5yZtR8r6LO6aRCwUN
         O+Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=27ykW6WMBpdjPMmYk+TEkpv4ofG2LVLk39veK8STtAM=;
        b=VpyZ/gWCiG7MQ28jgHl/A0hgck3Vv43WBIypu1L2SqVQpbuT1zfIkiS5P9qRxLppnZ
         OGZLL6drp9gRtpE9ht0s1p5fbCMn8/9sLL3mr023LtnYtiNl7mtth0/oFQrwbzx1lJZy
         EYfwJ75brKwCPnRqQbtTR5B/sBnWWlwnqMNaMWU2KLwh+dHQocO/X1ySqBcB6hTnDmyz
         4L3BPuP5woH/sIRRL4qpt6rmeFbAnn78NtSTzGKvBdJyGDDxMYa0ks/e1z42i1mSGkcB
         GVElzKBQuXnjIsnHj8B8vSRMCnaqnC72jJM/1qyZ031PuR7X+bix+YcvG4p1QF7DcS/y
         uXWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XsFFeqcH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id e206si498549oob.2.2020.11.09.19.19.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 19:19:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id i7so8931430pgh.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 19:19:06 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr2684359pjh.32.1604978345526;
 Mon, 09 Nov 2020 19:19:05 -0800 (PST)
MIME-Version: 1.0
References: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com> <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
In-Reply-To: <20201110022924.tekltjo25wtrao7z@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 19:18:54 -0800
Message-ID: <CAKwvOdnO2tZRcB69yJ+FTj+qGpzCasxecCPQ0c5G9Wwn6Wd12w@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Jann Horn <jannh@google.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XsFFeqcH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

On Mon, Nov 9, 2020 at 6:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> Also, any details on how to build clang would be appreciated, it's been
> a while since I tried.

$ git clone https://github.com/llvm/llvm-project.git --depth 1
$ mkdir llvm-project/llvm/build
$ cd !$
$ cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
-DLLVM_ENABLE_PROJECTS="clang;lld;compiler-rt"
$ ninja
$ export PATH=$(pwd)/bin:$PATH
$ clang --version
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnO2tZRcB69yJ%2BFTj%2BqGpzCasxecCPQ0c5G9Wwn6Wd12w%40mail.gmail.com.
