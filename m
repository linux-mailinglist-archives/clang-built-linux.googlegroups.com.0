Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBEDUWAAMGQEGOVBV2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 122962FE59F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 09:55:34 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id t4sf673780ooc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:55:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611219332; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+qNUD8QZ4TeBa+kDcflCi/EodZRRPvmHhrBRnsf9wTYb9vvVLt3KGyCFwcZN1Q6eM
         lJllNEim78vXPYJCmbpfkrfWQgfbPLhRlXBcyHiy5pNzQ1NRSZFahZ3xAM2NFz40GjPe
         yICwm3yjD+Wp/t9NJ9xJlPJPLIg5VGO5tg3GkY7HNpW3j/E8qNnIv1lDFo3je6VZEaaH
         k/dLdp/SvS5fptAvwto3gtcS+ojVyVjFrtknSLse9A7iVuFNDAtsZX2JvMie5mDacf6L
         a8Gg3GmqHz0cwKqI859MSgT7sk5YInmQaeLMyAkSb+M748P9ZDqSz5kk7+w8nUt/8paH
         lSSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=C/O668+2NzpHMEtce0ajZSDCpeoFd8THe780vLUcrWw=;
        b=oqK2S3dUOO0Zw4bg19aXqaQdXHv5BSLXk3re2EB8Gq8Ve61TjOLlIS8ojha7T/2aoO
         t/6i2nmHOXANRnUdj+3aa5o2SfjOgNp4m68utwGyO3Yi4zvM4NELv4OR+FQgSynMvsYe
         Q73yONBN3UpWVUugdDdR1QoSNFquYr1X/47gIgiB+K7dseFNMsOoNu/aP4tYXb7tadWG
         gYza3dKg+nddU09yA7ia1S6XuNzeswjXa8JOfGHwCbVTKUnFhItQujl/G6e2KdUzNFGy
         0hitEwnO+gNCZjlXLJewyE6hzcOrdnv9+DV6tM4nHRfb5oWDj9yS0oPv3Sa/MbAGMlO5
         cVVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ED1aFQMS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C/O668+2NzpHMEtce0ajZSDCpeoFd8THe780vLUcrWw=;
        b=fFpTMj4pY5g8VcJLV22Z9+Mt43dAi12RkP/9/NmdZsMXrXyUa2mYY4xV+C4m4FHbCA
         JkVZkzKLyq1db+wCDxBiqCNXg82yuX22LU3G4yw616LOKuTK91V5pKb+Q4v0f60Bje8L
         3wGxge0xLjaYGN+2ykB/2slOD2FJoan1drJLIl2IbEQbKukmSB9jkTNNpMfFeYZz2Qv4
         D0MnrUo/jWYCGi4845i+UKtgECojLsLae6sgmEB3kYHnvJJZaOcAOBVgR/CQOhgx+Ux+
         7QWh/hbu3QfOWG8C+vJhimpAGTrYDu0JJC2KjEDGcrXSrG/js+jhZJ9iwBjDjXDw8NSY
         fwBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C/O668+2NzpHMEtce0ajZSDCpeoFd8THe780vLUcrWw=;
        b=LkhzW7a6TBh2jScExbvsZDazftezFF0X1OWMmXLTKW1ZVcwwnKSLZuZs6ne/f9nQ8L
         qRTyBy1xy3hQKIqK5MY1rNgpVThOEYOsagqWQI02jhAul/QK/Vfu47Q+CkWwiGcjq+GW
         1OvXnsjLAvyHa6L82dOH6ikOUkfAKcw7UYctW6GSRBlhcIDb5isvaGw0Gm7b4wYMK5cL
         zzDKQ3uW3sAjZi8QA4Io0SPGtVNTlU3q2VfCupV01b3toiMcxbkbzhhvU+qJWljB5C/9
         0BwQtxahuNt5QCGwszmU2yA9a4EmwxwrD5khpfoC3ww31RKPF0lgizgoYpTwjJ3diWhG
         E/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C/O668+2NzpHMEtce0ajZSDCpeoFd8THe780vLUcrWw=;
        b=sQcRUFEL0N/jnBG9ee/qjRu1/fq14zqq7i+idfpXKhskG5fNeML1iuPysFUEe36vUY
         sU5j9SNfBP6Drw0aqXmktvt8M34aoWoQ5VwREPlJ9DQO6xyjIa/7Bp8pCU2UZdueFhlP
         /3WuNSigrINNrOFZbElt5pTGcmU48OnTff6RkmFRK2di8+Cu/Bab2HSk78OFJ7G6iep4
         lsxeyVpc2PsUpPvbL80072c97MuSnP4TxodWpvGnHy0mAPZ6X9x9JPM0SEjRCTK6FMdM
         pp77MZfp45/YQo5P0C5XaHsQzp4zYOtePWzODdQoD1/C91tDtJi15zbaOHv2WVmteL0M
         Xsdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nIGfRSQlrKEjDK/bwKM1wBuyND3bsvBBFach9ymWIVUndCKXF
	LbEbKndqDbcikvEMXAn3AjE=
X-Google-Smtp-Source: ABdhPJx/cmTnAchnzR1Shgm/UwCD0mGY06wDO0rKINrTpZKNsDAhBlguuOV9ZwhxFtewHAnayU/RRg==
X-Received: by 2002:a05:6830:1c2b:: with SMTP id f11mr1533977ote.74.1611219332651;
        Thu, 21 Jan 2021 00:55:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1614:: with SMTP id g20ls351233otr.1.gmail; Thu, 21
 Jan 2021 00:55:32 -0800 (PST)
X-Received: by 2002:a05:6830:838:: with SMTP id t24mr9935744ots.139.1611219332156;
        Thu, 21 Jan 2021 00:55:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611219332; cv=none;
        d=google.com; s=arc-20160816;
        b=cnQJguEbedUkc5kEsYLOCL/EY8mi6QgGwYG97qre9vyz+6oQ5j/+MQ9WQCO7MOS3s7
         TvPD1hKnA4nO4zcmE3x7aGsLdNLRyy74+zxzHzCjeftpm4AmP8CQlSBIE+4lHHBeCVCh
         wmQM26N6KeI1rVdZMRHaJQyu6ZHGA3D0PFrtL4OLTMTdz2Zop3G8xhYM+qUt/9vtamoT
         6aaUUcq2NXpIegDYjWKpvY3qOTd47Mm8WE5KdiMVJZUbgwh8Izg0zjC+8aDoOI5o2vbP
         4POBbGTu4MszsHKhVaWPpVnpcqkw4VKXavkdgpWjDJlz6n3Oz4VolKB0DIZVZ/vB5CAD
         X1kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1W5ctKqJEh15657vCDtsaXBORxGKTTf2ebPpWs4xoy8=;
        b=LehRQfJ1yrW0xb0pGtkER0RqWJAGp1eSwvCiJMknV7UTxEO1SiAOl2RFhP4Q8Ew5VU
         FakOuhGeKhtRncQZpAK4V+YW9Ho7jfHqLhEi/rVadNho7wPxYSh8t2gQo3o/Qb144Wt7
         WuEMc1M6KDJep4d1zZz7IJkISI+8MHrFdJ22MURMRJDdm/eEhyZM2iydTMMVox2OOvt2
         T1k6tS4rtvGc/L6UZ29XuQ9Wa9s/rKbR+ooaJ02JdF32gIlvucSSR21/Sh4UfT5kCeO9
         bZP1L6o4igQ0y01rHwEEvrxj4ixxKn4nnR3XZzo+XdC06mhhRjRI4RuLQAjhogxdRYmL
         lGnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ED1aFQMS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id r27si378168oth.2.2021.01.21.00.55.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 00:55:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id e22so2531149iog.6
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 00:55:32 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr9605695iog.57.1611219331865;
 Thu, 21 Jan 2021 00:55:31 -0800 (PST)
MIME-Version: 1.0
References: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
 <20210121053627.GA1680146@ubuntu-m3-large-x86> <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
In-Reply-To: <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 09:55:20 +0100
Message-ID: <CA+icZUWNu1JaS+m+Ne1ZB+tCARRUaiVh2KbqarnGEtM46PD1NA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3] samples/bpf: Update build procedure for
 manually compiling LLVM and Clang
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Tiezhu Yang <yangtiezhu@loongson.cn>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, Xuefeng Li <lixuefeng@loongson.cn>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ED1aFQMS;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 21, 2021 at 9:08 AM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
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
>

AFAICS, cmake is now the default and "Unix Makefiles" deprecated with
newer versions of LLVM/Clang.

- Sedat -

> >
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
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbZxuy8LRmngRzLZ3VTnrDw%3DRf70Ghkbu1a5%2BfNpQud5Q%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWNu1JaS%2Bm%2BNe1ZB%2BtCARRUaiVh2KbqarnGEtM46PD1NA%40mail.gmail.com.
