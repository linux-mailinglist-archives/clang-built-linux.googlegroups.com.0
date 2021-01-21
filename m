Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSU4U2AAMGQECKZRRQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id A13D22FECCD
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 15:23:08 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id hg20sf1677756pjb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 06:23:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611238987; cv=pass;
        d=google.com; s=arc-20160816;
        b=OSTmBWF+KicGNMGT/4NUJsxmjPd46747pWd6ItjCjeFApPw4KbGRlqALWD/Y05u/Sl
         fUAxeLJvsXe/14gJIcO4wveI8wh3ALJCqAZYTrpOZLvhbZHTvfK/dChHNMm9WWsdJmlE
         LQf5ChAwGIjEH6AwNZKywwmQT4vjiWnImxe6LhzwthcfDRNDRhHk5c9IFZGMFMKkGf8h
         /RQAn+p4e66bAwvX2NkEtl1ltYm/nR909holTMrWIzTj9uFkYAuMnz2U7L7Ii1cFeEEj
         4w94Pr3roor/o44Vf+NFBGdtPFl02pEU49NBOrvvkBZ1ph+uJkFRop5Tcys9SkWNYMiD
         d4gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=qK1UK/AaqsQTn9zHSS2qYhbcxVV03XiDGZjUXFT4Uys=;
        b=tWnwKkj29o8X5h6qHrbH0hxAiS8PQkItrVZmqVPMnpHAlsKW5HRrN1fkSZQgo/VWlI
         Enk25Uc3pUHYopIlvUr4zxdnuqDx7vBVHkLdN7SQ6P9s2K5q/9sR/BKi5K2AAtYKkbp1
         KqXrS78wLrLYVypzI5doGdp1OoU2F1OdzUOwC0qy1Re0GQrSAiHv8kvP/QcNrdASnvJk
         v9EVd89TLpHNhJ+AuFu1VQz/zP6YO9iNpd6IKbAIYoi444Tq0b8VFFL/u9kvZ9C+52bK
         IuOIZieOAMTpI6IwYDd8I7Eeu9BHrn+TtJ91ZEUorhamUcMwP3MrjHbBV7X3F+vcOoj3
         5Ovg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jC4IVgUH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qK1UK/AaqsQTn9zHSS2qYhbcxVV03XiDGZjUXFT4Uys=;
        b=hq3KkJRDduPG5TbBp/PTziN8Xu3Mwf29F502g4hEcouAqXFopEoo5tJ96eyO8W6Q76
         fqDMvF0RwmvxenWkB3d4lArHylWBOoPDbovEcKNIF+LnqwdZzvADFaPRzUBwam+h7NEW
         Fllkd4Tcg9YLdeH2adH83ujjrdpebgDNEH1AvU/gRHUKNcLjptVwIDS2iMyQ19IBaweM
         cFU/eA1T6KiPgwlTRneKrCu4muBEoFIikYAsIxirDAKeL8QLdGG6Wf7qxMvEqbv9bLye
         EBOOnTpElkueDbKlvCXp2j/v6tQThradQsOeydFhd7Q/xGMcPm3GUr9tVlRRD/Im9qEU
         0qVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qK1UK/AaqsQTn9zHSS2qYhbcxVV03XiDGZjUXFT4Uys=;
        b=hWhApdiUqjB8faZiSVnBcAwB97KA13ulX/QZrDj8pwUeyDngUhtn4A3K+u5Ryl1c+1
         YM7X1bDSjRQHiTJ4cdyaaod2VQfvOYEYD7gsanc0wuoepbYdSOfSKLXp2LyGH4i8llB5
         CvVhToWHJntJ5NIjCat3kGN9MYujsVXEpS0wARrcVREvUEDb1Ek27iw+8q1ZQZeSKpHR
         Nnl6Yep5LAqJD+ocQMJRmUaqVs4TLHRe7igB2KtlEO1BTb1SgbBTb3iZ7Qdld+Fps4St
         HetbOyZNva9Zukf2QMKhlW97dBWNMykcHGAUMq/0oXPktSLJemx+Frir0xOJSChbDc29
         4x9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qK1UK/AaqsQTn9zHSS2qYhbcxVV03XiDGZjUXFT4Uys=;
        b=Qv2esFZQTM+fsWPjpBxUecAcODBOkK9uoAsxWXNgNblJ93nxtADgCr6R7lf2Ugeo7D
         Q1OjoL37EEK0mKoTCcwsExmDFSTMMdKQuVZAKhluvG4JfauF7nOWggI6QLZM8AffBNlL
         lsd4gzP5JZMCpPPP0BMmyE4Fo+hxjdBj08CgTlMqZkekBXO3WCGRtQSqli5Y3Q05lJFU
         +dLZ1rkP0vT7V1kdYeS8GNEKC4U207FovtMy6s8Qyp01akbE7ArObrdOUstYV9mDH8GX
         NIWNPmPQ9qgYrN5asQsLZUB/6k7k7+NBueRV1W/Mu+UOl2EG4hbJ9rJIeKqztqa+fXgt
         lPDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gH7YMEIqxpXVYGhKa7gtXcxdZOCobUyvU3eFGiTFB3o1o1bgk
	Z8xHWRWtLWqA20zQmT/XtIo=
X-Google-Smtp-Source: ABdhPJxAEdQZ8/puqYJg1jeKe7WVR7EHFnOU431aoT4ZGk7NDaoLEQr5qP4we5iFbA9A6hrRJu0/sg==
X-Received: by 2002:a62:b50f:0:b029:19e:2974:b7a4 with SMTP id y15-20020a62b50f0000b029019e2974b7a4mr14491152pfe.61.1611238987065;
        Thu, 21 Jan 2021 06:23:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls1248279plb.2.gmail; Thu, 21
 Jan 2021 06:23:06 -0800 (PST)
X-Received: by 2002:a17:90a:7e18:: with SMTP id i24mr12281550pjl.72.1611238986408;
        Thu, 21 Jan 2021 06:23:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611238986; cv=none;
        d=google.com; s=arc-20160816;
        b=z9syucR/rbT/1PWwjrVY07CTsZLUbZ3qdXVHohmUrPdL21/2HU4Txg9MGJPz++nrR5
         ZaN1rIFbjcSGAVtvK240Lakb2UZfwdTxj2MOovKy7GLsqLV1Ksxryly52oBmBi22P4fw
         33mAPBPQT7O/0MVdFC3pjbqUTYpH0enPXNsMvxb6mnUedHnDR+JcgqHVlcT7S3Q7m+2t
         in6B48o0Bs6LUzcnWPg8zcqrhhHq+8mFeoZntkglo/ORu7U5ZHDJSeK4zC6oQQ0D7BhZ
         yeeDyfmdirEC/2X7OV9EdNPeirT74puM7upAsuDQQFvNWPYzxRaKPdnhatB0Qlh0UAxP
         WBnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w3fw0nXMRMWboT6HRhuDOZbyDuSIlRWZhktoQjQ5hhQ=;
        b=gMmSeurkx3NsfqwIy6fSz0mLyuoFl3S0kwfLE4U5UwyilPmBo0Dc2lLuRyZ8um6enm
         3qtuBE25xNfP0UYOULC/ALmdHAda3wiqPXC+2ZF59dDI0wT1Mg4kPzRiy9axUwSxF96n
         Wf8gHruyaIIXDBJmka3LorKCdrQlh00/RRU80tdfluM9vSiDNmRzChBI8TcsAbJxemmr
         q3c/miG2139UjCPJmbahVJpcFqH/ocfZRst7mYTeQNTa9FyY8eyqluLvMJs5y5IhibAm
         /uXx6fA6vLZYp87gXXZHbp6O6s9z/dqzBqXbqinsqwHUtVVcEtBPYIl+acWvQlu7BX1n
         jj1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jC4IVgUH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com. [2607:f8b0:4864:20::832])
        by gmr-mx.google.com with ESMTPS id b19si311156pgh.3.2021.01.21.06.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 06:23:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) client-ip=2607:f8b0:4864:20::832;
Received: by mail-qt1-x832.google.com with SMTP id z6so1621629qtn.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 06:23:06 -0800 (PST)
X-Received: by 2002:ac8:57ca:: with SMTP id w10mr13739504qta.12.1611238985422;
        Thu, 21 Jan 2021 06:23:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 38sm3528072qtb.67.2021.01.21.06.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 06:23:04 -0800 (PST)
Date: Thu, 21 Jan 2021 07:23:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	open list <linux-kernel@vger.kernel.org>,
	Xuefeng Li <lixuefeng@loongson.cn>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH bpf-next v3] samples/bpf: Update build procedure for
 manually compiling LLVM and Clang
Message-ID: <20210121142303.GA3346833@ubuntu-m3-large-x86>
References: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
 <20210121053627.GA1680146@ubuntu-m3-large-x86>
 <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jC4IVgUH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 21, 2021 at 12:08:31AM -0800, Andrii Nakryiko wrote:
> On Wed, Jan 20, 2021 at 9:36 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Thu, Jan 21, 2021 at 01:27:35PM +0800, Tiezhu Yang wrote:
> > > The current LLVM and Clang build procedure in samples/bpf/README.rst is
> > > out of date. See below that the links are not accessible any more.
> > >
> > > $ git clone http://llvm.org/git/llvm.git
> > > Cloning into 'llvm'...
> > > fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
> > > $ git clone --depth 1 http://llvm.org/git/clang.git
> > > Cloning into 'clang'...
> > > fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
> > >
> > > The LLVM community has adopted new ways to build the compiler. There are
> > > different ways to build LLVM and Clang, the Clang Getting Started page [1]
> > > has one way. As Yonghong said, it is better to copy the build procedure
> > > in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
> > >
> > > I verified the procedure and it is proved to be feasible, so we should
> > > update README.rst to reflect the reality. At the same time, update the
> > > related comment in Makefile.
> > >
> > > Additionally, as Fangrui said, the dir llvm-project/llvm/build/install is
> > > not used, BUILD_SHARED_LIBS=OFF is the default option [2], so also change
> > > Documentation/bpf/bpf_devel_QA.rst together.
> > >
> > > [1] https://clang.llvm.org/get_started.html
> > > [2] https://www.llvm.org/docs/CMake.html
> > >
> > > Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> > > Acked-by: Yonghong Song <yhs@fb.com>
> >
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > Small comment below.
> >
> > > ---
> > >
> > > v2: Update the commit message suggested by Yonghong,
> > >     thank you very much.
> > >
> > > v3: Remove the default option BUILD_SHARED_LIBS=OFF
> > >     and just mkdir llvm-project/llvm/build suggested
> > >     by Fangrui.
> > >
> > >  Documentation/bpf/bpf_devel_QA.rst |  3 +--
> > >  samples/bpf/Makefile               |  2 +-
> > >  samples/bpf/README.rst             | 16 +++++++++-------
> > >  3 files changed, 11 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
> > > index 5b613d2..18788bb 100644
> > > --- a/Documentation/bpf/bpf_devel_QA.rst
> > > +++ b/Documentation/bpf/bpf_devel_QA.rst
> > > @@ -506,11 +506,10 @@ that set up, proceed with building the latest LLVM and clang version
> > >  from the git repositories::
> > >
> > >       $ git clone https://github.com/llvm/llvm-project.git
> > > -     $ mkdir -p llvm-project/llvm/build/install
> > > +     $ mkdir -p llvm-project/llvm/build
> > >       $ cd llvm-project/llvm/build
> > >       $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> > >                  -DLLVM_ENABLE_PROJECTS="clang"    \
> > > -                -DBUILD_SHARED_LIBS=OFF           \
> > >                  -DCMAKE_BUILD_TYPE=Release        \
> > >                  -DLLVM_BUILD_RUNTIME=OFF
> > >       $ ninja
> > > diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> > > index 26fc96c..d061446 100644
> > > --- a/samples/bpf/Makefile
> > > +++ b/samples/bpf/Makefile
> > > @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock               += -pthread -lcap
> > >  TPROGLDLIBS_xsk_fwd          += -pthread
> > >
> > >  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
> > > -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> > > +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> > >  LLC ?= llc
> > >  CLANG ?= clang
> > >  OPT ?= opt
> > > diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> > > index dd34b2d..23006cb 100644
> > > --- a/samples/bpf/README.rst
> > > +++ b/samples/bpf/README.rst
> > > @@ -65,17 +65,19 @@ To generate a smaller llc binary one can use::
> > >  Quick sniplet for manually compiling LLVM and clang
> > >  (build dependencies are cmake and gcc-c++)::
> >
> > Technically, ninja is now a build dependency as well, it might be worth
> > mentioning that here (usually the package is ninja or ninja-build).
> 
> it's possible to generate Makefile by passing `-g "Unix Makefiles"`,
> which would avoid dependency on ninja, no?

Yes, although I am fairly certain that building with ninja is quicker so
I would recommend keeping it. One small extra dependency never killed
anyone plus ninja is becoming more common nowadays :)

> > Regardless of whether that is addressed or not (because it is small),
> > feel free to carry forward my tag in any future revisions unless they
> > drastically change.
> >
> > > - $ git clone http://llvm.org/git/llvm.git
> > > - $ cd llvm/tools
> > > - $ git clone --depth 1 http://llvm.org/git/clang.git
> > > - $ cd ..; mkdir build; cd build
> > > - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
> > > - $ make -j $(getconf _NPROCESSORS_ONLN)
> > > + $ git clone https://github.com/llvm/llvm-project.git
> > > + $ mkdir -p llvm-project/llvm/build
> > > + $ cd llvm-project/llvm/build
> > > + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> > > +            -DLLVM_ENABLE_PROJECTS="clang"    \
> > > +            -DCMAKE_BUILD_TYPE=Release        \
> > > +            -DLLVM_BUILD_RUNTIME=OFF
> > > + $ ninja
> > >
> > >  It is also possible to point make to the newly compiled 'llc' or
> > >  'clang' command via redefining LLC or CLANG on the make command line::
> > >
> > > - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> > > + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> > >
> > >  Cross compiling samples
> > >  -----------------------
> > > --
> > > 2.1.0
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121142303.GA3346833%40ubuntu-m3-large-x86.
