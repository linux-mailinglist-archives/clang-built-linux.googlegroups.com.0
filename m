Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB352UWAAMGQEL45CHPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4A12FE822
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 11:54:40 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id p77sf2584618iod.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 02:54:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611226479; cv=pass;
        d=google.com; s=arc-20160816;
        b=QmavZ5UfYgTWO3Zb//TZ5DA5opr907rdg9vMo+69UdpKcLk/RbMn5O3Il1f9/Imkig
         p6n/8dK29jU8xz2qA3Tc/WIE8plEej6EbCdMsg0ECiqQ7a9VXaoGRj7C5vYSQVLRlqtE
         Js2kcizEm960H6KjrZW5TgT/sLOySfBBFXqcQHPtoqUK+0mQITrb/1PEGhrmCrEDt3Ai
         TqE+ch4XMvGTG2O0WoB8oD1YrGoiFZYyu6H3NFr5TG2Skv3kyvRLUE4fFM4g8dbwLc/J
         a86RDcTAM3M13PbtApGiww/08zIixRUZ8pqI1OTHgtu9L02Q2/jB1bE1xJlOEcZUpq0e
         NC1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6axxMDHct5w+8c15Y7BhHXEH3kEddGUtEnzImJC+0F8=;
        b=kflLjVLKYSPkqMqaLwiRV9KTipde13Nn9VixyPOAuhkTvEG5pptpu/ZlgXp5Gxbk5K
         WEQz7BXO4bH8a0zyJfx5qKEImwFkR6KsJv1drMybB+iVUu9Rn4dOJTK5RZgHWFQO+n2u
         bT0PZ5M8THoalvMTWQDyG/+mT8i9fauBeMSULINeMoHdgdXpCzwzW9GXKtmIH9qpxh3+
         qWnn4Z2AGP5v+ZdrsD1OxYujCA+RASelRMw9KTaaTKujHQTvjMMpL1Jb9ud7DabZNeKJ
         xlIOGSYjzeLiEHtay7yZS3jRG9ERbvjbnUfh+zJB9FaAsxpRH0vL0CYjQm7zGx5oU7z2
         4K1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="L1lxUFr/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6axxMDHct5w+8c15Y7BhHXEH3kEddGUtEnzImJC+0F8=;
        b=fBlWQoEItgjUmwXvn1o1Gphrkf7o0A34/h9OMHQ87gmqxV+MMkZLupiWLWczMgDZvS
         bHb9SK0g0YDGUpMvMCR+PxRu+9pasVMgGjbHPLR46hvBFtBiNVIFwsf0lY8N1LLd+4ey
         3mzQxLHvqgoetCwSpWc1vqyqg/vRhy+bAflt3VPO33ZD4i8/xLrvbNebEN5YK7klM5ia
         et/lsHQ93qqmPNN4asT1Tqa5tZJYj2YGDu72ZKj23p7lBlYzE+ic4sG8rSL6tfGjJkIy
         +hhyistamFgD+D5TYLAQPfeIqx9lembE35f/MoFMiaUNa71i4WWHoW+OlLYUoMCt1EpU
         KOaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6axxMDHct5w+8c15Y7BhHXEH3kEddGUtEnzImJC+0F8=;
        b=EDCfvuuzWl5ZYQ0lIh8JurAT5tqfkQuWAVwJIPYwODNvO++p9eJsl86IX06nW7dtrx
         gZ0xUYZOLEMF7fxYOc2eQ5Q6JYM0VOwjc4n07zJkcXYa5nhkTT++lzHDHcV4uuTDKP/6
         kLeNk7NkBbK8n4/khPz2fM8R9E2Ie6SKTqeQ8J+XUfQKCt7qJEygcJNfih0TPcFBFZrC
         Fn5iPlqLpEJayvsRhjeGRH48aGQN2t86qRe8mM0aP4/mdV69c690a/44cDBoSKq/U7TA
         NDLhf/+NbiV3xmoKwkXUANMJll1+07JsySl0aqTOOLRhmGUJ3OZ2KrPuqHmv2vxxB3H7
         e1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6axxMDHct5w+8c15Y7BhHXEH3kEddGUtEnzImJC+0F8=;
        b=gFNIcZjJR7bHiGkyL+X3bvn2o7CTzkPDo7XiYsAZXZjyPyM4VgQkeJee+C4E/yZlKI
         6yGoeQJJHOgU0JlpFr/276dycGDxPE/5dXHqVwopLGTOUIuJI30d/Y6/LQ8167S+wETM
         E6IVJ9Ga97Jip9/TJjwbPVzwE4hg4R7gDHn/0qufEnDkUuv4kti3IqmPuxVB1ZrhI7yw
         IzcijJShUkje5kyLIa9bOAUlVSwCys6Kp0z4jXT2q9EFbSYqvZNkfMMBbABhXee6QYIQ
         DYt28gcwbgJzdJX1uKftktrKD3CVbeRbc/sx824gFr44/reVWOFEEw2ge7zNyihk/3fZ
         oCXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hAXJnm/pedEmrrzk6snkswxSihoHdcj46e943YLghA68xJklJ
	HE8TmmDZe+bzsDndRUSnUss=
X-Google-Smtp-Source: ABdhPJwT9fmLthlRwt+BD+E1kidwODIUQgGYVtH/xAilJ94KJk+MokQqdVNvaGtumwZ/579dmRNkBw==
X-Received: by 2002:a05:6602:2f89:: with SMTP id u9mr9792183iow.99.1611226479107;
        Thu, 21 Jan 2021 02:54:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls237555iot.1.gmail; Thu, 21 Jan
 2021 02:54:38 -0800 (PST)
X-Received: by 2002:a5d:9418:: with SMTP id v24mr9955769ion.61.1611226478549;
        Thu, 21 Jan 2021 02:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611226478; cv=none;
        d=google.com; s=arc-20160816;
        b=AoWZ6+/8WEPAXeqF4wZBdBZEwBUK3mW7wqQKT2DwqFPujlgJf52Jlqx1JWxJiT0r04
         C7ktTKD37Os96hD0GQybU9W2LnM0KEWDVaK/E7WaLYigwZ9/X4XanyNq4N7bamfOEoe+
         xMaidsPdTMWq0eRtKUDnQ2L1Aj7UmsZwaC4TZE6dJDaSs+tai6E3c62w6GM5MqEoaEwm
         sDKh2shDkAig+le+wM9X6qIrxwd0xwIuykq94VxYQFku5D4BZuXw3O7jPU7fq6+Ui3Fs
         G3sJVc8rT3Ta32Cuj1WKr+JgqWGZA4elvbmtM4nQTHy8WVCAVg/liHatCV9a5ByW+Y8f
         hTTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eHh9bl/LcH3CTdV9ko4oi/XPeB06sWntbeOZiEwFMXM=;
        b=T67y/hwIahmw7uT0MM79JwYPtlHnzFzOFbzW62w5L+3uvwMaLMG+qN7KoK4r6CXO15
         SOmhQc6u1lFMfaW0prudJauNdn7OuVg2LF2sDJFbizBeNE3hguVcOkrQvhUVy1PzniNI
         puuBMC0iN3/pI3H9FcWkRnAc86ro2sFRD1lYVXrQg/OmXYHeG/TfA4qvljXnTyUemB8G
         QyVLHEXIZowJVYO31L4wvqnHorVUGT6020x5udfLLfDjEf/sEUoV/N8ARMRMOIQpRwkb
         D0A2CiA3L+bxhs9ygz9QMIQr3oCFbQM9mx2edfmi1uDHT2p4f7ReF/uSMu/slMyqbVkq
         VlJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="L1lxUFr/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id o7si323210ilu.0.2021.01.21.02.54.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 02:54:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id q1so3064307ion.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 02:54:38 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr9850452iog.57.1611226478174;
 Thu, 21 Jan 2021 02:54:38 -0800 (PST)
MIME-Version: 1.0
References: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
 <20210121053627.GA1680146@ubuntu-m3-large-x86> <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
 <CA+icZUWNu1JaS+m+Ne1ZB+tCARRUaiVh2KbqarnGEtM46PD1NA@mail.gmail.com>
In-Reply-To: <CA+icZUWNu1JaS+m+Ne1ZB+tCARRUaiVh2KbqarnGEtM46PD1NA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 11:54:26 +0100
Message-ID: <CA+icZUXD6jsAcd4pnbALYYbOq7-z+TRfvEkNRB+_i0BTgiWOyw@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b="L1lxUFr/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e
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

On Thu, Jan 21, 2021 at 9:55 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 9:08 AM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Wed, Jan 20, 2021 at 9:36 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Thu, Jan 21, 2021 at 01:27:35PM +0800, Tiezhu Yang wrote:
> > > > The current LLVM and Clang build procedure in samples/bpf/README.rst is
> > > > out of date. See below that the links are not accessible any more.
> > > >
> > > > $ git clone http://llvm.org/git/llvm.git
> > > > Cloning into 'llvm'...
> > > > fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
> > > > $ git clone --depth 1 http://llvm.org/git/clang.git
> > > > Cloning into 'clang'...
> > > > fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
> > > >
> > > > The LLVM community has adopted new ways to build the compiler. There are
> > > > different ways to build LLVM and Clang, the Clang Getting Started page [1]
> > > > has one way. As Yonghong said, it is better to copy the build procedure
> > > > in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
> > > >
> > > > I verified the procedure and it is proved to be feasible, so we should
> > > > update README.rst to reflect the reality. At the same time, update the
> > > > related comment in Makefile.
> > > >
> > > > Additionally, as Fangrui said, the dir llvm-project/llvm/build/install is
> > > > not used, BUILD_SHARED_LIBS=OFF is the default option [2], so also change
> > > > Documentation/bpf/bpf_devel_QA.rst together.
> > > >
> > > > [1] https://clang.llvm.org/get_started.html
> > > > [2] https://www.llvm.org/docs/CMake.html
> > > >
> > > > Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> > > > Acked-by: Yonghong Song <yhs@fb.com>
> > >
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > >
> > > Small comment below.
> > >
> > > > ---
> > > >
> > > > v2: Update the commit message suggested by Yonghong,
> > > >     thank you very much.
> > > >
> > > > v3: Remove the default option BUILD_SHARED_LIBS=OFF
> > > >     and just mkdir llvm-project/llvm/build suggested
> > > >     by Fangrui.
> > > >
> > > >  Documentation/bpf/bpf_devel_QA.rst |  3 +--
> > > >  samples/bpf/Makefile               |  2 +-
> > > >  samples/bpf/README.rst             | 16 +++++++++-------
> > > >  3 files changed, 11 insertions(+), 10 deletions(-)
> > > >
> > > > diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
> > > > index 5b613d2..18788bb 100644
> > > > --- a/Documentation/bpf/bpf_devel_QA.rst
> > > > +++ b/Documentation/bpf/bpf_devel_QA.rst
> > > > @@ -506,11 +506,10 @@ that set up, proceed with building the latest LLVM and clang version
> > > >  from the git repositories::
> > > >
> > > >       $ git clone https://github.com/llvm/llvm-project.git
> > > > -     $ mkdir -p llvm-project/llvm/build/install
> > > > +     $ mkdir -p llvm-project/llvm/build
> > > >       $ cd llvm-project/llvm/build
> > > >       $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> > > >                  -DLLVM_ENABLE_PROJECTS="clang"    \
> > > > -                -DBUILD_SHARED_LIBS=OFF           \
> > > >                  -DCMAKE_BUILD_TYPE=Release        \
> > > >                  -DLLVM_BUILD_RUNTIME=OFF
> > > >       $ ninja
> > > > diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> > > > index 26fc96c..d061446 100644
> > > > --- a/samples/bpf/Makefile
> > > > +++ b/samples/bpf/Makefile
> > > > @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock               += -pthread -lcap
> > > >  TPROGLDLIBS_xsk_fwd          += -pthread
> > > >
> > > >  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
> > > > -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> > > > +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> > > >  LLC ?= llc
> > > >  CLANG ?= clang
> > > >  OPT ?= opt
> > > > diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> > > > index dd34b2d..23006cb 100644
> > > > --- a/samples/bpf/README.rst
> > > > +++ b/samples/bpf/README.rst
> > > > @@ -65,17 +65,19 @@ To generate a smaller llc binary one can use::
> > > >  Quick sniplet for manually compiling LLVM and clang
> > > >  (build dependencies are cmake and gcc-c++)::
> > >
> > > Technically, ninja is now a build dependency as well, it might be worth
> > > mentioning that here (usually the package is ninja or ninja-build).
> >
> > it's possible to generate Makefile by passing `-g "Unix Makefiles"`,
> > which would avoid dependency on ninja, no?
> >
>
> AFAICS, cmake is now the default and "Unix Makefiles" deprecated with
> newer versions of LLVM/Clang.
>

Hmm, I mixed it up...
This is about the cmake-generator (GNU/make was deprecated/abandoned).
Cannot say I use "ninja" - it's fast.

Just as a hint for a fast build of LLVM/Clang:
Use tc-build together with stage1-only (build and install) options.

- Sedat -

[1] https://github.com/ClangBuiltLinux/tc-build

>
> > >
> > > Regardless of whether that is addressed or not (because it is small),
> > > feel free to carry forward my tag in any future revisions unless they
> > > drastically change.
> > >
> > > > - $ git clone http://llvm.org/git/llvm.git
> > > > - $ cd llvm/tools
> > > > - $ git clone --depth 1 http://llvm.org/git/clang.git
> > > > - $ cd ..; mkdir build; cd build
> > > > - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
> > > > - $ make -j $(getconf _NPROCESSORS_ONLN)
> > > > + $ git clone https://github.com/llvm/llvm-project.git
> > > > + $ mkdir -p llvm-project/llvm/build
> > > > + $ cd llvm-project/llvm/build
> > > > + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> > > > +            -DLLVM_ENABLE_PROJECTS="clang"    \
> > > > +            -DCMAKE_BUILD_TYPE=Release        \
> > > > +            -DLLVM_BUILD_RUNTIME=OFF
> > > > + $ ninja
> > > >
> > > >  It is also possible to point make to the newly compiled 'llc' or
> > > >  'clang' command via redefining LLC or CLANG on the make command line::
> > > >
> > > > - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> > > > + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> > > >
> > > >  Cross compiling samples
> > > >  -----------------------
> > > > --
> > > > 2.1.0
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbZxuy8LRmngRzLZ3VTnrDw%3DRf70Ghkbu1a5%2BfNpQud5Q%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXD6jsAcd4pnbALYYbOq7-z%2BTRfvEkNRB%2B_i0BTgiWOyw%40mail.gmail.com.
