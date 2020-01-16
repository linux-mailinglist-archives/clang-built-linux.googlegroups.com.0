Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBJONQPYQKGQEHC7PV3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8436413FC43
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:41:43 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id bg6sf2818648pjb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:41:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579214502; cv=pass;
        d=google.com; s=arc-20160816;
        b=SnmI/8KyqJ7JnqHwhAeEH6VLYTwleqfJtc/0Jh8F+0hr9cr/1/5lZZ34KhyTGIxwT3
         SHJeG4CtpULnuokLUPtxW9GC4F+mJQ+hvFIJ2QNXZfyP+O1VVnZbNKU+FbYv4gdXP/sw
         uPHwvTnlY5xnYMXueQD6Y0FJwGpmMu92KlI6oe7XwoWVcV+6tOD2uQT3HepcI9OZrbnL
         h0x4TmkaXiLefQAnTsBHbMDAEdB+gzGMkw5SAA3cMWDq2cqNTGNr7nO/5S2hD2SF3HVx
         m3e2CjOKtuYhHWubzStCQW6PEH8XyCJU9b+CoTx0wDyDNJ+DYZzBhUQ+CtTcwkU6Bz2P
         doNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=pbOTidvsHYPW+T90y3XrcapspgnCZbD5yF0bYA7iVXo=;
        b=TrUe08ROI2SqU+a6V3DOPU02uauS/xXBHn4Tu39yRhKRyViTjpX/+/Kn7HxIwh+LfE
         M0uFXpyy54P/19XwSSn2QL+iensm5YizEdfMAYAyO4ugeAmY7EcDF1RSfOzZOltvx3Iw
         798FAHeUL2dO2gUsgTySf8MGdoLoFP1Mt+s0J0Zu4a+quOLjdgX0VraCs0gatTOjqA3N
         BJhWI6wLmefagXmFsohMrdgyluWbKMSS3xk6kXw7e0WwnWtG/a8vS8X/593W0WMtREqn
         3MOYH4i/YxYAbcgzmyyNOrBvFkGfCwoxuJBnm94ulkiEffennAB6vIaimtwyNoshwTC5
         dtbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O0cAJfcH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pbOTidvsHYPW+T90y3XrcapspgnCZbD5yF0bYA7iVXo=;
        b=HadlgFcnlPJ3b2/BkAHVTBZ+M/272vaMNtAVR0/puNpYamtiNwjAU1XGlXcK1n+DgX
         Xz5AIqh9KkuL+IgdcHJEfJPcNgglqXAGAdrPoqAqA9w13rg9oRYrAUnzLGUu5qrBcjHQ
         R4t9zlozWevCAlQV/TPQVt4QwZApc2ieHFapNgX9b0PSoqXSA39fGsj/RSxUN0ZKanP4
         fA87QoDHu6U7tJdv36DrmUN4pvqxVrJuSIJdrfSPpipsOQqThP0z3l1nSWdL5tR3V9l6
         SJusA6TXb8OlHBp6kH0Gqsc8nvt2PW0A3fgfLU8JYhBhKGH2Mxt4Img2xp2A/t07b/lq
         XdEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pbOTidvsHYPW+T90y3XrcapspgnCZbD5yF0bYA7iVXo=;
        b=afRnkENEiSXLcaQNuSqe4HniXU+CZkEN879P15q2tA9OTsFIzcLnjC6wiKuBML2UKz
         Ybgo7/j0sAONMHyVhz7a8n3dbZEstxZ5IsoRZHCFuP8hz1LQqj6DaU0QzVm9lUIDc+3Q
         v0GYrb4vLsHHiOfpgcMEP69XOICaUO0zdYoorgRYPJU3LZQUIN1tK99iUafJyFBzRkml
         ynUcWI4V0ROSK2L8nYtFA/D3n6m6Q04Nl+BJp6UkgmrvDIFdRbnWK1QFzyzt7uHiUIZK
         lUPoiAwKXNxiUrQ/In0E4waXpmGbndUX4w1j4AbaSRk+OhKegwlQwHx4hoxZxAFWlXd7
         xc1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pbOTidvsHYPW+T90y3XrcapspgnCZbD5yF0bYA7iVXo=;
        b=AzHHNQbL35jKVoeUoSSzl8fTdKPLRtDAKwkCkYe497HTchUD1QsIpKFvIs7Uh6DAu4
         K9Cf2Kxgn4zNA+iRccp4LnAwlLod/6NSQJqDEiOaGZHJKT/wRuzkKaBLm7TIckRJZXEa
         E3hnsvs+L1zWniRmLTJ0Th6TPo9tHHikita5ZuOiu54TfaxCimLAiF99IJwC7Txsu60k
         HQqEzPnUS+4mPca0iyzy/n+XDF17iYPhho5wPgyWKOHvL/DKVVPo14AyrAavmUn77Dmk
         0C2ISiDOaSf6JTAoiiy75AtuTeheY2MvvHSs30k1SQzaMOygpV2ZNP8A45yoYL+3uu/U
         nebw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0PgedkGB478sRct+XBGKYWz1Lz47jr3M7/XD8VdV/fIz/cL7w
	yGUPF543SjAeAUkQxglTR/A=
X-Google-Smtp-Source: APXvYqwXwGQ98p8oM/sAIRHPDWzqBszQzlnbGw+Lh7Z0vDsy9fsPaNjfY8qXiLiPUXGD7AM4ST9iQA==
X-Received: by 2002:a17:902:9009:: with SMTP id a9mr40550059plp.124.1579214501840;
        Thu, 16 Jan 2020 14:41:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:208:: with SMTP id 8ls6445346pgc.16.gmail; Thu, 16 Jan
 2020 14:41:41 -0800 (PST)
X-Received: by 2002:a65:55cc:: with SMTP id k12mr42936710pgs.184.1579214501351;
        Thu, 16 Jan 2020 14:41:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579214501; cv=none;
        d=google.com; s=arc-20160816;
        b=ipJ+n5VnkG+UEACnt2KYHqfNVsSv3B+IQFGwOO9iiPBkQ/GayW/Y8GEny7HOZ7enAB
         iqZNNOSfafuif7372xypeEVUAc73y0zWOH5xpdH43oa1ei4lACKA67Ktcf3IXtXeLz9Y
         fsghZp5E0P9OXpgD6Vq067a2LJKAX5PvUEy5aMOvoOxmyhmLZqJwYyvMKZni7RHfotOz
         bIBhwIHYvcBJfXPbLsrHGLr22BrsrPQ1VljrFG8xeYxqwFAreQsTRc/2Rp3l/oXy3gD+
         Le4iekoLpuc95LynjX/4q7sW+AczIyPANWSj2a28RcmLWHUH0MhE2aeOLgWwt0m5kJ4B
         HNWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CvIccACVJOu+2bdMdFsFdYMzg33aY8K8AC76wN0kDto=;
        b=cemhBZceVnQps95Ngjz/6fCfE4dbAnXfO4gnTUehH7gnp/esKjBzv7VbAfNtk1HXty
         mRHQTdUJ6FeO9NPT+Wq3EDixo6A0yq2GOSmArpg3qZnbfUjPKnEfWb0KC/bVPL0MIO5u
         l5CuTOtZJ8NsVLzcZrr/ATtFeAijA4xvNQnt8e8UrKvH/fXnLYF/XkQIyPGDMXVuzrgy
         voZjshRM+mgjCs+ARh436lQevNO38q/Mjd1qN/l929UFEIqqtA0jU0qrJrww1PlOt/2l
         kl+Yi3CoYDYS89Y8kkmqitEanx7TRuW0bKitvafZRhB/7wzsHl7j4WqgtPggFaOaHNFY
         /rEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O0cAJfcH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id cx5si139128pjb.1.2020.01.16.14.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:41:41 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id dp13so9880856qvb.7
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:41:41 -0800 (PST)
X-Received: by 2002:ad4:54d3:: with SMTP id j19mr4814230qvx.247.1579214500294;
 Thu, 16 Jan 2020 14:41:40 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918094179.1357254.14428494370073273452.stgit@toke.dk>
In-Reply-To: <157918094179.1357254.14428494370073273452.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 14:41:29 -0800
Message-ID: <CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE+RVR-nFvQA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 09/11] selftests: Remove tools/lib/bpf from
 include path
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
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
 header.i=@gmail.com header.s=20161025 header.b=O0cAJfcH;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 5:28 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> To make sure no new files are introduced that doesn't include the bpf/
> prefix in its #include, remove tools/lib/bpf from the include path
> entirely.
>
> Instead, we introduce a new header files directory under the scratch tool=
s/
> dir, and add a rule to run the 'install_headers' rule from libbpf to have=
 a
> full set of consistent libbpf headers in $(OUTPUT)/tools/include/bpf, and
> then use $(OUTPUT)/tools/include as the include path for selftests.
>
> For consistency we also make sure we put all the scratch build files from
> other bpftool and libbpf into tools/build/, so everything stays within
> selftests/.
>
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/testing/selftests/bpf/.gitignore |    1 +
>  tools/testing/selftests/bpf/Makefile   |   50 +++++++++++++++++++-------=
------
>  2 files changed, 31 insertions(+), 20 deletions(-)
>
> diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selft=
ests/bpf/.gitignore
> index 1d14e3ab70be..849be9990ad2 100644
> --- a/tools/testing/selftests/bpf/.gitignore
> +++ b/tools/testing/selftests/bpf/.gitignore
> @@ -40,3 +40,4 @@ test_cpp
>  /bpf_gcc
>  /tools
>  bpf_helper_defs.h
> +/include/bpf

Isn't the real path (within selftests/bpf) a tools/include/bpf, which
is already ignored through /tools rule?

> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftes=
ts/bpf/Makefile
> index 1fd7da49bd56..c3fa695bb028 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -20,8 +20,8 @@ CLANG         ?=3D clang
>  LLC            ?=3D llc
>  LLVM_OBJCOPY   ?=3D llvm-objcopy
>  BPF_GCC                ?=3D $(shell command -v bpf-gcc;)
> -CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR) -I$(LIBDIR)=
  \
> -         -I$(BPFDIR) -I$(GENDIR) -I$(TOOLSINCDIR)                      \
> +CFLAGS +=3D -g -Wall -O2 $(GENFLAGS) -I$(CURDIR) -I$(APIDIR)            =
  \
> +         -I$(INCLUDE_DIR) -I$(GENDIR) -I$(LIBDIR) -I$(TOOLSINCDIR)     \
>           -Dbpf_prog_load=3Dbpf_prog_test_load                           =
 \
>           -Dbpf_load_program=3Dbpf_test_load_program
>  LDLIBS +=3D -lcap -lelf -lz -lrt -lpthread
> @@ -97,11 +97,15 @@ OVERRIDE_TARGETS :=3D 1
>  override define CLEAN
>         $(call msg,CLEAN)
>         $(RM) -r $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED) $(TEST_GEN_=
FILES) $(EXTRA_CLEAN)
> -       $(MAKE) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/ clean
>  endef
>
>  include ../lib.mk
>
> +SCRATCH_DIR :=3D $(OUTPUT)/tools
> +BUILD_DIR :=3D $(SCRATCH_DIR)/build
> +INCLUDE_DIR :=3D $(SCRATCH_DIR)/include
> +INCLUDE_BPF :=3D $(INCLUDE_DIR)/bpf/bpf.h
> +
>  # Define simple and short `make test_progs`, `make test_sysctl`, etc tar=
gets
>  # to build individual tests.
>  # NOTE: Semicolon at the end is critical to override lib.mk's default st=
atic
> @@ -120,7 +124,7 @@ $(OUTPUT)/urandom_read: urandom_read.c
>         $(call msg,BINARY,,$@)
>         $(CC) -o $@ $< -Wl,--build-id
>
> -$(OUTPUT)/test_stub.o: test_stub.c
> +$(OUTPUT)/test_stub.o: test_stub.c $(INCLUDE_BPF)
>         $(call msg,CC,,$@)
>         $(CC) -c $(CFLAGS) -o $@ $<
>
> @@ -129,7 +133,7 @@ $(OUTPUT)/runqslower: force
>         $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower      =
     \
>                     OUTPUT=3D$(CURDIR)/tools/ VMLINUX_BTF=3D$(abspath ../=
../../../vmlinux)
>
> -BPFOBJ :=3D $(OUTPUT)/libbpf.a
> +BPFOBJ :=3D $(BUILD_DIR)/libbpf/libbpf.a
>
>  $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BP=
FOBJ)
>
> @@ -155,17 +159,23 @@ force:
>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/tools/sbin/bpftool
>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
>
> -$(DEFAULT_BPFTOOL): force
> -       $(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)                  =
     \
> +$(BUILD_DIR)/libbpf $(BUILD_DIR)/bpftool $(INCLUDE_DIR):
> +       $(call msg,MKDIR,,$@)
> +       mkdir -p $@
> +
> +$(DEFAULT_BPFTOOL): force $(BUILD_DIR)/bpftool

directories should be included as order-only dependencies (after | )

> +       $(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)         \
> +                   OUTPUT=3D$(BUILD_DIR)/bpftool/                       =
 \
>                     prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
>
> -$(BPFOBJ): force
> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
> +$(BPFOBJ): force $(BUILD_DIR)/libbpf

same

> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) \
> +               OUTPUT=3D$(BUILD_DIR)/libbpf/
>
> -BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.=
h)
> -$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)                       =
     \
> -                   OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
> +BPF_HELPERS :=3D $(wildcard $(BPFDIR)/bpf_*.h) $(INCLUDE_BPF)

Shouldn't all BPF_HELPERS come from $(INCLUDE_DIR)/bpf now?

> +$(INCLUDE_BPF): force $(BPFOBJ)

And this can be more properly a $(BPF_HELPERS): force $(BPFOBJ)?

> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) install_headers \
> +               OUTPUT=3D$(BUILD_DIR)/libbpf/ DESTDIR=3D$(SCRATCH_DIR) pr=
efix=3D
>
>  # Get Clang's default includes on this system, as opposed to those seen =
by
>  # '-target bpf'. This fixes "missing" files on some architectures/distro=
s,
> @@ -185,8 +195,8 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-m=
big-endian)
>
>  CLANG_SYS_INCLUDES =3D $(call get_sys_includes,$(CLANG))
>  BPF_CFLAGS =3D -g -D__TARGET_ARCH_$(SRCARCH) $(MENDIAN)                 =
 \
> -            -I$(OUTPUT) -I$(CURDIR) -I$(CURDIR)/include/uapi           \
> -            -I$(APIDIR) -I$(LIBDIR) -I$(BPFDIR) -I$(abspath $(OUTPUT)/..=
/usr/include)
> +            -I$(INCLUDE_DIR) -I$(CURDIR) -I$(CURDIR)/include/uapi      \
> +            -I$(APIDIR) -I$(abspath $(OUTPUT)/../usr/include)
>
>  CLANG_CFLAGS =3D $(CLANG_SYS_INCLUDES) \
>                -Wno-compare-distinct-pointer-types
> @@ -306,7 +316,7 @@ $(TRUNNER_TEST_OBJS): $(TRUNNER_OUTPUT)/%.test.o:    =
               \
>                       $(TRUNNER_EXTRA_HDRS)                             \
>                       $(TRUNNER_BPF_OBJS)                               \
>                       $(TRUNNER_BPF_SKELS)                              \
> -                     $$(BPFOBJ) | $(TRUNNER_OUTPUT)
> +                     $$(BPFOBJ) $$(INCLUDE_BPF) | $(TRUNNER_OUTPUT)

singling out $(INCLUDE_BPF) looks weird? But I think $(BPFOBJ)
achieves the same effect, so this change can be probably dropped? Same
below.

>         $$(call msg,TEST-OBJ,$(TRUNNER_BINARY),$$@)
>         cd $$(@D) && $$(CC) $$(CFLAGS) -c $(CURDIR)/$$< $$(LDLIBS) -o $$(=
@F)
>
> @@ -314,7 +324,7 @@ $(TRUNNER_EXTRA_OBJS): $(TRUNNER_OUTPUT)/%.o:        =
                       \
>                        %.c                                              \
>                        $(TRUNNER_EXTRA_HDRS)                            \
>                        $(TRUNNER_TESTS_HDR)                             \
> -                      $$(BPFOBJ) | $(TRUNNER_OUTPUT)
> +                      $$(BPFOBJ) $$(INCLUDE_BPF) | $(TRUNNER_OUTPUT)
>         $$(call msg,EXT-OBJ,$(TRUNNER_BINARY),$$@)
>         $$(CC) $$(CFLAGS) -c $$< $$(LDLIBS) -o $$@
>
> @@ -326,7 +336,7 @@ ifneq ($2,)
>  endif
>
>  $(OUTPUT)/$(TRUNNER_BINARY): $(TRUNNER_TEST_OBJS)                      \
> -                            $(TRUNNER_EXTRA_OBJS) $$(BPFOBJ)           \
> +                            $(TRUNNER_EXTRA_OBJS) $$(BPFOBJ) $$(INCLUDE_=
BPF)           \
>                              | $(TRUNNER_BINARY)-extras
>         $$(call msg,BINARY,,$$@)
>         $$(CC) $$(CFLAGS) $$(filter %.a %.o,$$^) $$(LDLIBS) -o $$@
> @@ -388,7 +398,7 @@ $(OUTPUT)/test_cpp: test_cpp.cpp $(OUTPUT)/test_core_=
extern.skel.h $(BPFOBJ)
>         $(call msg,CXX,,$@)
>         $(CXX) $(CFLAGS) $^ $(LDLIBS) -o $@
>
> -EXTRA_CLEAN :=3D $(TEST_CUSTOM_PROGS)                                   =
 \
> +EXTRA_CLEAN :=3D $(TEST_CUSTOM_PROGS) $(SCRATCH_DIR)                    =
 \
>         prog_tests/tests.h map_tests/tests.h verifier/tests.h           \
>         feature                                                         \
> -       $(addprefix $(OUTPUT)/,*.o *.skel.h no_alu32 bpf_gcc tools)
> +       $(addprefix $(OUTPUT)/,*.o *.skel.h no_alu32 bpf_gcc)
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE%2BRVR-nFvQA%40m=
ail.gmail.com.
