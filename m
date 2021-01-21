Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBCXNUSAAMGQEYRNIZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 569042FE4A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 09:08:44 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id o13sf466041ote.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:08:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611216523; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPoMHotYkSlXsK/MRgnPVyrzUBMxWcIzl3H4iKxelIlM+kmoOOZLOAxpNc3Js9Mf6o
         gkHTmSXszgU5oTN6OaIlPV5NTVWeppZ3RMlb35WzhZj5gp6FlVnbEgVlLH8kTa8F8xU/
         yXuPvlWEswXtn7GnkRNnxQlPEwaXKPsmK34h7jJ2gP6YfSF/DUcR94JQlHaps0j5tAoj
         /yq+6HPCHCCKLFDq7scaR889wwTOXCdez72XaaYP5NHgCHsNGffIsVww494Dw3e66nuA
         IKngT8Is4nHyAB30JKF6BUg8+ceaOEVc8//ZCme2PURGKC15B+X9YMrYcesQmX2I1na/
         DF6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=17a3D1u3DFHehjLgn1YEXNdIM1qyeY6XkwFiGeRfgro=;
        b=JUFoaME+4+WtQKdeq6KOsLPwZ974jINupQ/RevS2JBdrwHghrpJgghk57zGEI+lQ+e
         87bbBchVjG7vLtZUL+XqRzf19RKOtLzr/vBc0qS6tvoeOIVp2XhD7777RJ87SRpkwFBR
         ElWosv9pl3gJihKt1Mw4fdElx8R8eDk5cIrTSrc3q76hPgskJXnAcrnuKIyhs6Oq1qu9
         ON8m7pdiFOkV97lhVIkk/lFTfDl3a8gVJHFsJyutDRPAzPf7UyGxz0JiiP/Y/uuFljK+
         RPdb5pszLamYB7sLSQBp/i5NpKGA985UdzfV+rOPkjNu/qeT0safhFY2ZTSsC09WlbJo
         zVuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i68+xYFE;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=17a3D1u3DFHehjLgn1YEXNdIM1qyeY6XkwFiGeRfgro=;
        b=S0Fxevha+Avk9yAjdJ5HMPm0JiIu0TJLYGmF/RKNwd9YkINVMDyWtoTnIX/lOKa0jL
         BYFRYooffb/7KnFE8SLbynX7uyNFsPpFOj1RP14VMn94muZYpb34NS/9ItU+kjsK9V75
         Z01YEXXnimXtGkcjwzxOFAAIIY9i/NrohKsoQPKfN1+T7wC2knLxPKV3ucvyhJbbQLfM
         9SKyuNXWuA+viQ131xGyltjYPTXRDq89cfor/wqBcAznnxKVH6PA5mvpcdMo+FTswbFc
         MsGsXz6I0ZSGhzm6Sl25yy6CM9K+t2kOEybzIzvvG1za/menG/G6TdtaaNjhYJJHhBEl
         7BCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=17a3D1u3DFHehjLgn1YEXNdIM1qyeY6XkwFiGeRfgro=;
        b=TCT4l4UvDDO6Nkj3vkiHlr8deLozZEyPT4nlvKgdROyFMxGeGinEq/W0VT1cPvNZ0w
         K5/MlkehaJQOe56UVIc3tHSmp9lWKYs43PdTGCKVYF+stZvk8o4dgeYLSd0v25jl4mbO
         x6OOorSO/5f9dRRcjY8Uu0C/lckWMQZ7qNGKmZt6Y6J9XJyHzcaLI2F96wroiuFMt9xJ
         Ux1GRF9iz3eLN+REXgaQnM5/QTv2TxIKkNeVtwRL8L8On1+5JcftXwW4hSkW/isG8Hga
         HmyEKM7OUWEMdS0vswczvy/aE14EHYGB/Z0npNs2vcZLcpz+XmXXF/8dN+FjEzYXdW0l
         fQqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=17a3D1u3DFHehjLgn1YEXNdIM1qyeY6XkwFiGeRfgro=;
        b=ZRVjHmkF7ecOmQ8I7TkshXTdinsWcs+rRTF3sHw2SKG0i+oLsUox31vgmZ4DZ1Dj9g
         idcbttzZj+D1+fKqyyJS4LsNo2oyhNxMjuMad6B9G5vA64IgmFuRyn1Xvao/B02LBLc5
         9cgFC4li0B+ASkYFVY+xsolrTvtFHejrYDl2sPOP5xBMWUhOt0EDVaXMFX1TePgKM7RK
         Vad+9MEbOxX32jNMDAg5ZtQsBsRIqr2D3xo2V3PrKdVsysUz6yr7vJZ7s4IkA+lq9dqH
         cQphycjpX+0g3Q/yveP+uiozfOGtu/zMILfctVWf/lgk+QWF01LBSefPukA8C08nmbZ5
         WoBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Wvw1mLCr8jZLWH3fq8iSi2FQOVcJtJ7Ozpzw67YMNzQW5GIiz
	5EU7mmHvEIrpURmLOHTmL8o=
X-Google-Smtp-Source: ABdhPJxh+dkuMqZhvbO1Aw+pdIEpF4qkb81QIGg45k/GJMXoa6ajzhT560h9XTfB+HgzwRztYXHsLQ==
X-Received: by 2002:a9d:3ec4:: with SMTP id b62mr3157681otc.43.1611216523033;
        Thu, 21 Jan 2021 00:08:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3d36:: with SMTP id a51ls316480otc.3.gmail; Thu, 21 Jan
 2021 00:08:42 -0800 (PST)
X-Received: by 2002:a9d:65d4:: with SMTP id z20mr9804224oth.349.1611216522582;
        Thu, 21 Jan 2021 00:08:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611216522; cv=none;
        d=google.com; s=arc-20160816;
        b=Gn0hxW8SHND8D1x1V9nIroOeBio4d+PLkaNMEsUXfEI32m/1lKA41wI4ea2xVsHAlm
         BcbTitPCXo25FyibP/0UapQlamGm9bE/RtKh5fvwLp+P8TVy8tcjnf03lcGCwgagfNkg
         skPiSZXE7MOZyESM7NJaGRIqcqI5dcxq5154anKHMTxnlqRnK7nsEdKVxZ7pNvh3mZwD
         LckeMxWCwDWjMeM7kUorRH2dQ3MAYvK7z8hIt7acw5zZR5ZuKzdyHU/LyrsA0Q2Ub6LH
         9sPiTwS1vLyGkp2Cn0DkvTrFITBjjXNBHUhtlcqUb+7SpVb4r7WwTBfWobWC4ibGPRqj
         87SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oobkTWZTECnkORfzKz+9DkXYOma+YaOrTTEwIwnDNH8=;
        b=Az0BrbduvKZehDcd3Em7CaPwDF2D+Zexz2gUe3QelCNVg6wtlQiVwwEh0WqvL69N/B
         Cmse4kiyrLgVqbcbDSKFiYclebyuZUGHbeL6r1px3PYh35vQt1uC5m5OS30dgc7lnwrF
         V+iZJQMyrwTe7oPRAm/KOmP3VzrxFhvy619Pni3wOtsGFK/A6ASnHe4/Gq3GmRycX0qE
         shAFNZ7YehbUMvNmaOtV6eVjpf2pBND0N7D/7TWY4W524aauKvN+6/0+R6tH0YyzL1Cf
         GbpA2Y6BGkvlZf1gpQ0QPN9zq7heLt/1765cMfPOEQdpXEBiltWLHNPf57zGR/vlptoa
         Tl4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i68+xYFE;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id s126si251891ooa.0.2021.01.21.00.08.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 00:08:42 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id b11so1216397ybj.9
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 00:08:42 -0800 (PST)
X-Received: by 2002:a25:854a:: with SMTP id f10mr17694912ybn.510.1611216522128;
 Thu, 21 Jan 2021 00:08:42 -0800 (PST)
MIME-Version: 1.0
References: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn> <20210121053627.GA1680146@ubuntu-m3-large-x86>
In-Reply-To: <20210121053627.GA1680146@ubuntu-m3-large-x86>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 21 Jan 2021 00:08:31 -0800
Message-ID: <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3] samples/bpf: Update build procedure for
 manually compiling LLVM and Clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, Xuefeng Li <lixuefeng@loongson.cn>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i68+xYFE;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Jan 20, 2021 at 9:36 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 01:27:35PM +0800, Tiezhu Yang wrote:
> > The current LLVM and Clang build procedure in samples/bpf/README.rst is
> > out of date. See below that the links are not accessible any more.
> >
> > $ git clone http://llvm.org/git/llvm.git
> > Cloning into 'llvm'...
> > fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
> > $ git clone --depth 1 http://llvm.org/git/clang.git
> > Cloning into 'clang'...
> > fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
> >
> > The LLVM community has adopted new ways to build the compiler. There are
> > different ways to build LLVM and Clang, the Clang Getting Started page [1]
> > has one way. As Yonghong said, it is better to copy the build procedure
> > in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
> >
> > I verified the procedure and it is proved to be feasible, so we should
> > update README.rst to reflect the reality. At the same time, update the
> > related comment in Makefile.
> >
> > Additionally, as Fangrui said, the dir llvm-project/llvm/build/install is
> > not used, BUILD_SHARED_LIBS=OFF is the default option [2], so also change
> > Documentation/bpf/bpf_devel_QA.rst together.
> >
> > [1] https://clang.llvm.org/get_started.html
> > [2] https://www.llvm.org/docs/CMake.html
> >
> > Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> > Acked-by: Yonghong Song <yhs@fb.com>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Small comment below.
>
> > ---
> >
> > v2: Update the commit message suggested by Yonghong,
> >     thank you very much.
> >
> > v3: Remove the default option BUILD_SHARED_LIBS=OFF
> >     and just mkdir llvm-project/llvm/build suggested
> >     by Fangrui.
> >
> >  Documentation/bpf/bpf_devel_QA.rst |  3 +--
> >  samples/bpf/Makefile               |  2 +-
> >  samples/bpf/README.rst             | 16 +++++++++-------
> >  3 files changed, 11 insertions(+), 10 deletions(-)
> >
> > diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
> > index 5b613d2..18788bb 100644
> > --- a/Documentation/bpf/bpf_devel_QA.rst
> > +++ b/Documentation/bpf/bpf_devel_QA.rst
> > @@ -506,11 +506,10 @@ that set up, proceed with building the latest LLVM and clang version
> >  from the git repositories::
> >
> >       $ git clone https://github.com/llvm/llvm-project.git
> > -     $ mkdir -p llvm-project/llvm/build/install
> > +     $ mkdir -p llvm-project/llvm/build
> >       $ cd llvm-project/llvm/build
> >       $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> >                  -DLLVM_ENABLE_PROJECTS="clang"    \
> > -                -DBUILD_SHARED_LIBS=OFF           \
> >                  -DCMAKE_BUILD_TYPE=Release        \
> >                  -DLLVM_BUILD_RUNTIME=OFF
> >       $ ninja
> > diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> > index 26fc96c..d061446 100644
> > --- a/samples/bpf/Makefile
> > +++ b/samples/bpf/Makefile
> > @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock               += -pthread -lcap
> >  TPROGLDLIBS_xsk_fwd          += -pthread
> >
> >  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
> > -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> > +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> >  LLC ?= llc
> >  CLANG ?= clang
> >  OPT ?= opt
> > diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> > index dd34b2d..23006cb 100644
> > --- a/samples/bpf/README.rst
> > +++ b/samples/bpf/README.rst
> > @@ -65,17 +65,19 @@ To generate a smaller llc binary one can use::
> >  Quick sniplet for manually compiling LLVM and clang
> >  (build dependencies are cmake and gcc-c++)::
>
> Technically, ninja is now a build dependency as well, it might be worth
> mentioning that here (usually the package is ninja or ninja-build).

it's possible to generate Makefile by passing `-g "Unix Makefiles"`,
which would avoid dependency on ninja, no?

>
> Regardless of whether that is addressed or not (because it is small),
> feel free to carry forward my tag in any future revisions unless they
> drastically change.
>
> > - $ git clone http://llvm.org/git/llvm.git
> > - $ cd llvm/tools
> > - $ git clone --depth 1 http://llvm.org/git/clang.git
> > - $ cd ..; mkdir build; cd build
> > - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
> > - $ make -j $(getconf _NPROCESSORS_ONLN)
> > + $ git clone https://github.com/llvm/llvm-project.git
> > + $ mkdir -p llvm-project/llvm/build
> > + $ cd llvm-project/llvm/build
> > + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> > +            -DLLVM_ENABLE_PROJECTS="clang"    \
> > +            -DCMAKE_BUILD_TYPE=Release        \
> > +            -DLLVM_BUILD_RUNTIME=OFF
> > + $ ninja
> >
> >  It is also possible to point make to the newly compiled 'llc' or
> >  'clang' command via redefining LLC or CLANG on the make command line::
> >
> > - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> > + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> >
> >  Cross compiling samples
> >  -----------------------
> > --
> > 2.1.0
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbZxuy8LRmngRzLZ3VTnrDw%3DRf70Ghkbu1a5%2BfNpQud5Q%40mail.gmail.com.
