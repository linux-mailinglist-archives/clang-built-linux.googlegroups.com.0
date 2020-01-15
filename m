Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBRUU7XYAKGQEG2WIOWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F2613CAD0
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 18:22:15 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id h8sf7217573plr.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 09:22:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579108934; cv=pass;
        d=google.com; s=arc-20160816;
        b=u3AeSL3Qg/2LMjTTVPdXeVoHf4fV+5h7rU6iv+IcG2MM+f0Z53eYd0oTbXJjgO2YeH
         eaAdODM3sbF1KxgHeW+7A9RUOjzLQ1/DXN5DbYo6xlqhbiI3zo/uLjt/KAyUjwBtRvJq
         6b1cOkMzibLsmuGaetTJwJ5dJ+GxBLPQY7Z44XIqopzpswUazh8G5+Bhv/eDFdJYLL0f
         I0c7lel2sR+TybdNL65SsQ52gG94LzrudSoBpGIY2dvqyMeYqS+0fMeoCktWaJ4ROS54
         fndyQ7dz7kWp4FuKHcYxZxxyJYexp+ei1Fee8RLrkKEgwUOE+f3t/dxdlugtQctP7E0H
         jGZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=psrvPuxIGn0AbMDnYCEecqj1+zGRU4Of3WdwLrNjjvQ=;
        b=W2mwPBl3XqUvLaIyPBiufAoPr+OA/rZdomgXyKxtnqm8qSM9DpT42Rp/k1XtBhuXWM
         DzlEZuXL8dz8iwX+mh+XnZr+jJL7kRHGW8TBo7h8RpBmYNAXyTluIizd7ggqP/U++yRM
         +hbv7IEA7sVfQ5Ey4e3xx1gtJh0z8IZvuyQmamRw+wvyrusGzY4BPUovk2Heo+cODtIY
         I4NxCx/7E/YqOLSeIJ4uTbx8bJz3cZA3ZRDNaOJGss6KnTk0nBLFmBXi6SOraegRND8M
         RC+5Vn/d7SpLMAE4pDZApn1bWQ1kPvec+q3Jg6A/uKPDfAtXv51h8O+2W71Fcw2DILyv
         qhgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GrMEzUhQ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=psrvPuxIGn0AbMDnYCEecqj1+zGRU4Of3WdwLrNjjvQ=;
        b=fxGwhvWYxBUKG9NSWLd/TKZ88logUpJJQREv9c+nzxJWNTS1vt66TE0sdoARELfWUm
         4ef/ZFZ9sGpcnYvOF4kOQZbdBTNROOMc9SVuGIGE3iQ6eaV30YB/HYEYXsE7GfqnntWZ
         FZaK+0f2QQbknlcQfv6WYKa4iI3uhwovCt+jLsHNhb4Sn/5Kz3OWrVKnyN7dF0SErW3r
         U/mH9ERZ0wt8LhT3opZnxbGd5tvzbj/fviCeooh92sWAa3qFFaamtIn0kw0g1kuXBp6k
         hcqewDDabq3O1bAfGdm95Sc1MUuxlMM1Y2pz6T9P1Sf24B66uIMDwEk70R86MQJAqH/f
         GaKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=psrvPuxIGn0AbMDnYCEecqj1+zGRU4Of3WdwLrNjjvQ=;
        b=MUoLNbUttLCMDdpWlqDL4Vwj1n7bGygk1bustQeKGAXTGcLVEIxtrI5qFg7e+nkuFA
         NvEQXjZafZzKJGyXKmV/US/RJCsntNPNCCAUuOIiJnIatJ5LcyNyDKmBnrMDt2/L0wIA
         JY0ndQLlSzMzPEJ5XJkTmIEK9fhJZgehQGA1OWSCvO/eufFHeQd6ZImsUoxF1Riuxxnn
         tPHcsr47LZRQp2mUmS0Z4uTpEWfTb6b4IjQsJ5QOpAY0zkWveKGMo4KgyEca8N9/ox2k
         gl+W3sHN+/whIiLgM6Q1sW6qiK8HGq/0Wv492UJIt/ocuTZkLqEdyMxXpHXw1PYOq4wq
         TYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=psrvPuxIGn0AbMDnYCEecqj1+zGRU4Of3WdwLrNjjvQ=;
        b=VTyvQnpM9EZIMRv1fyspMYjzk1FfHHkLWuBdqXH0NBgW1qDHlMdQmrdvLQcVKspVRh
         RqmCs6yJ39eGQho8ytL0d5W89AzxmAMmCVnn0QovocYrO8e7A7zN31854xM3dtEmgG+N
         O9JhYf0ujEC5XnBFZCaKZOwt8gAj2VoVDLFlUoBKjmN5OGf7GuKkX8sD6QrCeKpaRN5o
         NKA5sGYWUNgYfIdyMzNujxKjwwVLtvKLD8yKKbEUivN0mksjwVVjtwoBb0RzrM2S1aWX
         eNBp28WRup0Gt3M0Fh7JZ0XJdQTh1/P1yQVoaSVWzPqoEHlQh3wtzmeyIuUkopKx3hnB
         WDdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVP+eUPERDoJCtHXh95KT1xjy8qZniW7YNuAMx+Td2AB4hufiNt
	LWp19TbC4hg2zMSejw0yI0c=
X-Google-Smtp-Source: APXvYqyKI05n8BUWfgtKLrhcvxpbv5hMjXcuFTxviLximOC7oXneEfBeaYovTG7ogs0qU//opAGD+g==
X-Received: by 2002:a63:5f91:: with SMTP id t139mr33533216pgb.185.1579108934164;
        Wed, 15 Jan 2020 09:22:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad46:: with SMTP id w6ls12362pjv.4.gmail; Wed, 15
 Jan 2020 09:22:13 -0800 (PST)
X-Received: by 2002:a17:902:a40c:: with SMTP id p12mr26892442plq.292.1579108933614;
        Wed, 15 Jan 2020 09:22:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579108933; cv=none;
        d=google.com; s=arc-20160816;
        b=D+b/2dE+9vEvVomaptTWI5wSq8gYiRukp+bQCRn3nYLbC0YZyKwrF5sPduXbG0eBav
         qw3icKLClK9T4BAZbgiWCaYxYCJL3SI1Fk7c/B5McXfyDeyncnZN1RcWcc3lJS6CUR10
         8KcaNuf8HI0vwri5H75yKEqbiWKSRkSKL0qygEvHsSLN7nKD314g0LbWPoatr8u7T7zq
         8kWnGpsKBGyJ56EBgLd8/GCOsbl6sD34+poiNCmLIpupSgXp+1IA5kCq5l58mb7umdR2
         xSKdtZhW0JC33CXNog81/6Ax19xJ7jx7AkOK0CM1I+5RAhfva2tF0hADh3oQpB+K/kDs
         rHMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=c+q9bObKfV/TNxL1HH2wA5LqldoKCgE44YTN9MzEObM=;
        b=0QWXcflPTl0haIeAQXievh5j1JwbbGm/HeI1NkNMtAxqxGO45I/1oqGLA/NP+0zpcI
         UQlAoXfJYNNLZqraMbQmv6++DF/B9Gk07I+11m2T3gXk/uws6nvuWr0Qe4wOZioc+3jv
         /oq0L9tYe/ZZhbbIZOSi4wEdesLKTocTPfRToxI6Jl/Jr4pM5Qt55L3PgWEBwrqXv5ki
         ISYYuYtyv1Ke5lxZhFejvcrPb8GYLcEu8eDSjI/sjU0m0LRuMRmlI7XnlMEfzz9yIHwF
         Os3EVyOpKpQh0nCN6L4R5mkl01SiqMR5xuQsEKb65zK6kFeEMP/XysFWkH3a3pgjLqEQ
         zC6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GrMEzUhQ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id 65si899298pfx.5.2020.01.15.09.22.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 09:22:13 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id j9so16412551qkk.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 09:22:13 -0800 (PST)
X-Received: by 2002:a05:620a:5ae:: with SMTP id q14mr24418928qkq.437.1579108932557;
 Wed, 15 Jan 2020 09:22:12 -0800 (PST)
MIME-Version: 1.0
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <157909757860.1192265.1725940708658939712.stgit@toke.dk>
In-Reply-To: <157909757860.1192265.1725940708658939712.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 15 Jan 2020 09:22:01 -0800
Message-ID: <CAEf4BzZ2jAQPKzzp+NhWXbUFcfdcXs+akFSY4O0JhabJy=9vag@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 09/10] selftests: Remove tools/lib/bpf from
 include path
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GrMEzUhQ;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Jan 15, 2020 at 6:16 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> To make sure no new files are introduced that doesn't include the bpf/
> prefix in its #include, remove tools/lib/bpf from the include path
> entirely, and use tools/lib instead. To fix the original issue with
> bpf_helper_defs.h being stale, change the Makefile rule to regenerate the
> file in the lib/bpf dir instead of having a local copy in selftests.
>
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/testing/selftests/bpf/.gitignore |    3 ++-
>  tools/testing/selftests/bpf/Makefile   |   16 ++++++++--------
>  2 files changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selft=
ests/bpf/.gitignore
> index 1d14e3ab70be..17dd02651dee 100644
> --- a/tools/testing/selftests/bpf/.gitignore
> +++ b/tools/testing/selftests/bpf/.gitignore
> @@ -33,10 +33,11 @@ libbpf.pc
>  libbpf.so.*
>  test_hashmap
>  test_btf_dump
> +test_cgroup_attach
> +test_select_reuseport

These were moved into test_progs, they are not independent binaries
anymore, you probably just had old leftovers lying in your
selftests/bpf directory. Let's not re-add them.

>  xdping
>  test_cpp
>  *.skel.h
>  /no_alu32
>  /bpf_gcc
>  /tools
> -bpf_helper_defs.h
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftes=
ts/bpf/Makefile
> index cd98ae875e30..4889cc3ead4b 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -21,7 +21,7 @@ LLC           ?=3D llc
>  LLVM_OBJCOPY   ?=3D llvm-objcopy
>  BPF_GCC                ?=3D $(shell command -v bpf-gcc;)
>  CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR) -I$(LIBDIR)=
  \
> -         -I$(BPFDIR) -I$(GENDIR) -I$(TOOLSINCDIR)                      \
> +         -I$(GENDIR) -I$(TOOLSINCDIR)                  \
>           -Dbpf_prog_load=3Dbpf_prog_test_load                           =
 \
>           -Dbpf_load_program=3Dbpf_test_load_program
>  LDLIBS +=3D -lcap -lelf -lz -lrt -lpthread
> @@ -129,7 +129,7 @@ $(OUTPUT)/runqslower: force
>         $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower      =
     \
>                     OUTPUT=3D$(CURDIR)/tools/
>
> -BPFOBJ :=3D $(OUTPUT)/libbpf.a
> +BPFOBJ :=3D $(BPFDIR)/libbpf.a

We can't do that. See fa633a0f8919 ("libbpf: Fix build on read-only
filesystems") for why and why we have this problem with
bpf_helper_defs.h in the first place.

>
>  $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BP=
FOBJ)
>
> @@ -155,17 +155,17 @@ force:
>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
>
> -$(DEFAULT_BPFTOOL): force
> +$(DEFAULT_BPFTOOL): force $(BPFOBJ)

do we need this? bpftool's makefile will build its own libbpf.a
independently. We can probably optimize that, but see above, we need
to ensure that we build only within selftest/bpf dirs.

This "read-only outside of selftests/bpf" requirement actually made me
realize that we probably need to specify OUTPUT pointing somewhere
inside selftests/bpf/tools subdir to build entire bpftool within
selftests/bpf directory and not touch anything outside. Do you mind
fixing that while you are at it?

>         $(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)                  =
     \
>                     prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
>
>  $(BPFOBJ): force
> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(BPFDIR)/ $(=
BPFOBJ)
>
> -BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.=
h)
> -$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
> +BPF_HELPERS :=3D $(BPFDIR)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.=
h)
> +$(BPFDIR)/bpf_helper_defs.h: $(BPFOBJ)
>         $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)                       =
     \
> -                   OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
> +               OUTPUT=3D$(BPFDIR)/ $(BPFDIR)/bpf_helper_defs.h
>
>  # Get Clang's default includes on this system, as opposed to those seen =
by
>  # '-target bpf'. This fixes "missing" files on some architectures/distro=
s,
> @@ -186,7 +186,7 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-m=
big-endian)
>  CLANG_SYS_INCLUDES =3D $(call get_sys_includes,$(CLANG))
>  BPF_CFLAGS =3D -g -D__TARGET_ARCH_$(SRCARCH) $(MENDIAN)                 =
 \
>              -I$(OUTPUT) -I$(CURDIR) -I$(CURDIR)/include/uapi           \
> -            -I$(APIDIR) -I$(LIBDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/..=
/usr/include)
> +            -I$(APIDIR) -I$(LIBDIR) -I$(abspath $(OUTPUT)/../usr/include=
)
>
>  CLANG_CFLAGS =3D $(CLANG_SYS_INCLUDES) \
>                -Wno-compare-distinct-pointer-types
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZ2jAQPKzzp%2BNhWXbUFcfdcXs%2BakFSY4O0JhabJy%3D9vag=
%40mail.gmail.com.
