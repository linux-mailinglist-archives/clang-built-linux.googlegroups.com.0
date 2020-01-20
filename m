Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBU4NSXYQKGQEULYFTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D25E14232B
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 07:21:09 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id i123sf12565131vkg.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 22:21:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579501268; cv=pass;
        d=google.com; s=arc-20160816;
        b=gyiSsiCddIetBqab3dNIq15W+zzNshLSpaeBWuZ3Jo0uMFvh7hqjZRRerZOE75sdkU
         ShIw2Fsn5WwwbLnl9LZtQcNJB7wZ8OXC/dc3/zYOp1lflTkcHkR5s7Qe4qwjmcmi+gMb
         /sKllTzL65CC4kQyUFGIWGZLG/kfhxOmQQ3iJY9OeyTvBJWhVwpa03ruBAvXt1gKwvIP
         EHBhu/BJF2/MUTdIGJF6Zh70tCT/OIc66Ubd7zxzKXCi/JKsm6lfWBqToeNbAVN6X8Ry
         TaIXykFtphtok2JAtXXTQH6/jVWnRCSnBk/JgRpIzVWN3pg35BPvvfsGoEoPzfpVRPj+
         hwpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=kKD8hpmQHUYSzJZkmDKidMn9j0GdX6mMgNws5P1x4Tg=;
        b=SAtf4Da3r/r7nMzCFNRJSYbMB1aNs3wqlJWhfmPlWWuKea2z4fVaMcUehDKcVde/6s
         krlPNhDjBzq3K2CzDaaMw9sW3EItPlSyEBcMOmGf+HSmYISOyPIDg0S1Tm8WzgBW3lhZ
         QoYEhx9KVO/WtoEwTg0IjYbWxm5h/TcE1/q2v/KYvYIBQEfZ1zJ3Rq7jBJ51qb1tDYCV
         ACQ1sbctmZKgGq5LCZFm4wNInBy64qrRQ4Mwx5q5wND65dnPrrshrx2R7ZCDiaAA03pL
         PlhbH7rftdSuO8cKsQdB4a0ZGzBGCUd9YsO9JqZeYhWsKDGwYZ78dj0vR6Bn3ST8ZcBe
         F5Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CvqTeXhX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kKD8hpmQHUYSzJZkmDKidMn9j0GdX6mMgNws5P1x4Tg=;
        b=ohWLRBTOG7haEkFEY3nTuNk+uzdHU+DvvY/X0syuy8XktCHbl1iGllnAy1p3YwyfGC
         gSyctQTv28RnK4QSza/Qyp385hy+ct0w0cKwLMQY+v32mZlTIhBoS1/F3JLkneZFdU7z
         Ayj+ICxPgN2XLNYqhNrdOGOXNFrXKUv7U9cP0SkPzTUiwXxEtaPuaohnd9kz8hsfXKzv
         0Z2zcNukJcrawEbb5zVkeIQnPZ4gL/2hP8hIlywtV35ECUm8fmpd816VyMNgXJWy04fM
         sDpEHF7W+RDj8dlOE+Qg0O+PRP+UkearHFHhm6G9dKdLLad9DO1sq9qDwiQbYtafp4YL
         tamg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kKD8hpmQHUYSzJZkmDKidMn9j0GdX6mMgNws5P1x4Tg=;
        b=O75MaKQ/bBa7omiohJyiu7qXRlskIZcHRBIdKXdPLvmPbXMUGX9f01P8HCW23OP2pF
         AuSypmyWSrMeYZ/9vEXFilDjW3+fkMR8y6iqnqL6kuPby7fKQ8TxxFX6VIoFYOksY4yt
         sYoUKn1ei2WSBXwWNkb5tRD1tS1L3IPr67y+lDmbGg0dFcrdRqRF/mij+Q3KhQ8BJ+Ax
         8YPJn1bZRJkQO42lb5eI3rWiLrpO7cYO2WK/8wRP0P+jcQMmZsy1JpfDzUmdcaEopTLu
         k0jh/i23cJvTrn68/qbopRz4wcFhz3d36mane9p4lD6wGFoU/1QLR3BKr7lBxkQWYHgh
         5+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kKD8hpmQHUYSzJZkmDKidMn9j0GdX6mMgNws5P1x4Tg=;
        b=VLKvqKRuoo9fZn64FiQOkaSunHvx83ZmHvEueP4tbeJ+NWhjtPDxGiLymrRlS54GjI
         j43Lc+FgaNuONBALE7FhT8XyA+lMxN3vey/cg7+hfd0fJsJYefZ4eY7KOMotYGzXwpf+
         /zvmEQmg5sFdCYhrON4V+an1Y3Az/ly0WgV0pkPhvKxplE7EoKF+D+4JOPtt35kLK9TM
         FfHk0xAi5kKBdMep9VYRffyimjlpSPtaIlx0k1ZYzPLiepZeGMBJTNVtWaWTvuYuRmNJ
         qgwwa5u3uGKvXSE8m8YZCZ2F/tX2h9A9IS0XIMKdxaC2U/ymaBUtcr3W0qlRLLdOLS9d
         fpmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUeW6G89S15uwb9mk0/kMEKn3/kJtSeI1TCxN546bSkrWJXdx/
	X01YxqEQ4STP0QfBlHjbQYc=
X-Google-Smtp-Source: APXvYqxv4MPlX2X0ZOuG+dLiKGapl9hFOnfN7IWElUpf0wN6T659mJJHL2rkyvbJcaoT2TQ7F7GaiA==
X-Received: by 2002:a05:6102:2408:: with SMTP id j8mr11392602vsi.124.1579501267858;
        Sun, 19 Jan 2020 22:21:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:201d:: with SMTP id p29ls1678615vsr.5.gmail; Sun,
 19 Jan 2020 22:21:07 -0800 (PST)
X-Received: by 2002:a05:6102:7d8:: with SMTP id y24mr11378541vsg.78.1579501267440;
        Sun, 19 Jan 2020 22:21:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579501267; cv=none;
        d=google.com; s=arc-20160816;
        b=ycZvIClwf0I+MVKNd1VvVBR2B962l9cMlaU2zawSGU6ILJ8XdsZRtrWH8QBQoIEstg
         GrXW6oZw9kB8KtYMx0jEmpjw+kdpsVOxMZHvOH4zm4AhcUwfbDCdADMTMP7rTC1dyd3r
         TI+zuonoMC510uWHesL04uRnRUZGEzQiGIMOwH8huxWMK3K91sjP+clkUy+ImIGohar0
         I3YZLOCxfg+BZQF7JE8tCD04C1hdLkdcHNoi/7LXLYWAn1JirA1Ztxfzey4ryrYn0iAd
         L3ZQpbOWkNgaSebORQjUr8MeW9JXmKrg7Zdaq/WJfPCy29ovj9g1rqFxqOXVhIoyaA9X
         0RSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HzgwQjk23FH9alWYUZE6q0CWsQkjBSTe2jUKbbfrMf8=;
        b=NfqEGPsUG60/xBWDqyLzdir81etkWBxoSy4/r9tpHUSe0XGFMACPaUtjHMPCUSDVzS
         6kX5iNrQe6h5S5mw93h7Hb+F1uK8sJKrI6ugSH7Y4Fam2PZg7bocDBSEF4KDiy1o3ZA9
         XEGB7qnEr7Wf0WWa0nUANTDa0C0zTdoAli4VoiqOmYqwUX8SMnLNqmxZK3Wrn8bMDJXw
         xCBez8x/sTvPKB7o/8bu1b/cmIo4BB9KmdujNIT80ZQ0cZfjNr5WaBYQMgEg33w1JMzJ
         mAicPRwQId3rTBkhQN3y1jiTZ1Q0Ymk+tGf2wg14TYYp8V2rQnwNFYaDcMak/Bevbken
         h2Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CvqTeXhX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id y126si1163317vkc.5.2020.01.19.22.21.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 22:21:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id w127so29055557qkb.11
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 22:21:07 -0800 (PST)
X-Received: by 2002:a05:620a:5ae:: with SMTP id q14mr46460647qkq.437.1579501266863;
 Sun, 19 Jan 2020 22:21:06 -0800 (PST)
MIME-Version: 1.0
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926820677.1555735.5437255599683298212.stgit@toke.dk>
In-Reply-To: <157926820677.1555735.5437255599683298212.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Sun, 19 Jan 2020 22:20:55 -0800
Message-ID: <CAEf4Bzb9zUmhxTyYahJqySJzgfyB-zMEd+o4ybv=a8-t+iZS4w@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 09/10] selftests: Remove tools/lib/bpf from
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
 header.i=@gmail.com header.s=20161025 header.b=CvqTeXhX;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Fri, Jan 17, 2020 at 5:43 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
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
>  tools/testing/selftests/bpf/.gitignore |    2 +
>  tools/testing/selftests/bpf/Makefile   |   49 +++++++++++++++++++++-----=
------
>  2 files changed, 33 insertions(+), 18 deletions(-)
>
> diff --git a/tools/testing/selftests/bpf/.gitignore b/tools/testing/selft=
ests/bpf/.gitignore
> index 1d14e3ab70be..8c9eac626996 100644
> --- a/tools/testing/selftests/bpf/.gitignore
> +++ b/tools/testing/selftests/bpf/.gitignore
> @@ -39,4 +39,4 @@ test_cpp
>  /no_alu32
>  /bpf_gcc
>  /tools
> -bpf_helper_defs.h

can you please also drop libbpf.pc and libbpf.so.* rules from .gitignore?

> +
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftes=
ts/bpf/Makefile
> index 858d4e3369ad..ac0292a82fdc 100644
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

extra space here

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
> +INCLUDE_BPF :=3D $(INCLUDE_DIR)/bpf
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
> @@ -133,7 +137,7 @@ $(OUTPUT)/runqslower: force
>         $(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower     \
>                     OUTPUT=3D$(OUTPUT)/tools/ VMLINUX_BTF=3D$(VMLINUX_BTF=
)
>
> -BPFOBJ :=3D $(OUTPUT)/libbpf.a
> +BPFOBJ :=3D $(BUILD_DIR)/libbpf/libbpf.a
>
>  $(TEST_GEN_PROGS) $(TEST_GEN_PROGS_EXTENDED): $(OUTPUT)/test_stub.o $(BP=
FOBJ)
>
> @@ -159,17 +163,28 @@ force:
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
> +$(DEFAULT_BPFTOOL): force | $(BUILD_DIR)/bpftool
> +       $(Q)$(MAKE) $(submake_extras)  -C $(BPFTOOLDIR)         \

slash alignment


> +                   OUTPUT=3D$(BUILD_DIR)/bpftool/                       =
 \
>                     prefix=3D DESTDIR=3D$(OUTPUT)/tools/ install
>
> -$(BPFOBJ): force
> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(OUTPUT)/
> +$(BPFOBJ): force | $(BUILD_DIR)/libbpf
> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) \
> +               OUTPUT=3D$(BUILD_DIR)/libbpf/
> +
> +$(INCLUDE_BPF): $(BPFOBJ) | $(INCLUDE_DIR)
> +       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) install_headers \
> +               OUTPUT=3D$(BUILD_DIR)/libbpf/ DESTDIR=3D$(SCRATCH_DIR) pr=
efix=3D
> +
> +BPF_HELPERS :=3D $(or $(wildcard $(INCLUDE_BPF)/bpf_*.h),$(INCLUDE_BPF))
> +ifneq ($(BPF_HELPERS),$(INCLUDE_BPF))
> +$(BPF_HELPERS): $(INCLUDE_BPF)
> +endif
>
> -BPF_HELPERS :=3D $(OUTPUT)/bpf_helper_defs.h $(wildcard $(BPFDIR)/bpf_*.=
h)
> -$(OUTPUT)/bpf_helper_defs.h: $(BPFOBJ)
> -       $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR)                       =
     \
> -                   OUTPUT=3D$(OUTPUT)/ $(OUTPUT)/bpf_helper_defs.h
>

I really-really didn't like this alternating dependency on directory
or a set of file, depending on current state of those temporary
directories. Then also this ugly check to avoid circular dependency.
All that seemed wrong. So I played a bit with how to achieve the same
differently, and here's what I came up with, which I like a bit
better. What do you think?

$(BPFOBJ): $(wildcard $(BPFDIR)/*.c $(BPFDIR)/*.h $(BPFDIR)/Makefile)      =
    \
           ../../../include/uapi/linux/bpf.h                               =
    \
           | $(INCLUDE_DIR) $(BUILD_DIR)/libbpf
        $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=3D$(BUILD_DIR)/li=
bbpf/ \
                    DESTDIR=3D$(SCRATCH_DIR) prefix=3D all install_headers

So, essentially, just make sure that we install local copies of
headers whenever libbpf.a needs to be re-built.
../../../include/uapi/linux/bpf.h ensures we don't miss uapi header
changes as well. Now anything that uses libbpf headers will need to
depend on $(BPFOBJ) and will automatically get up-to-date local copies
of headers.

This seems much simpler. Please give it a try, thanks!

>  # Get Clang's default includes on this system, as opposed to those seen =
by
>  # '-target bpf'. This fixes "missing" files on some architectures/distro=
s,
> @@ -189,8 +204,8 @@ MENDIAN=3D$(if $(IS_LITTLE_ENDIAN),-mlittle-endian,-m=
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
> @@ -392,7 +407,7 @@ $(OUTPUT)/test_cpp: test_cpp.cpp $(OUTPUT)/test_core_=
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
clang-built-linux/CAEf4Bzb9zUmhxTyYahJqySJzgfyB-zMEd%2Bo4ybv%3Da8-t%2BiZS4w=
%40mail.gmail.com.
