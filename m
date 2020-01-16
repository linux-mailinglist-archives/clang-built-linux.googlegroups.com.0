Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAHDQLYQKGQER6BXINY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBBB13F530
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 19:54:57 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id z7sf23008797ywd.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:54:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579200896; cv=pass;
        d=google.com; s=arc-20160816;
        b=VNHDahFg+0M8NEtZLq/GmXc1JW94d+3smG/6sAwfpk8Zh+OmYWRCT5iok5bPSXx1uh
         LlxQ4iRrvpDNqKL5pRI+uwaMvL7jtjZBpiwAeWf+X+Otrrnd1A+kCF0kRWKw2WNIeRpQ
         JTl86Fr6qsxtVUYUtsmFRkNEkN0PMUyUPUOILD5DmphPyHfKReqDeCN840m42Zzpwxyw
         iHRkz7mP/9VhJYz0/Eydpqf8ZMtGn01ZoG/jvbUXKmg96lfeiEJxtQtCw6HAdolervpS
         9eJ0yUuCKAjGLoQ8Syxq3Iw8nVa/wsfF7+cNMn9TvmhNPGsTAX5KxQYQbTx1kPxdvaup
         8dBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=KXUXhLk7D/lkCcOjMaH90mBVqMjwH1txlhRiWGBADjc=;
        b=QMOHbv4RQFYgFz4BVaMxsyOmgOYIwbXhIko2nV28KdRwujbgyDc2dZjW5V5n/jh3L+
         2PtX7Poo3uYbNTJ5RKtmZzs1r2K/Wyv1+DQHAgwzfat2XzLNdmimtB7K4SeGbaKmTwL/
         AB3RF1wQWfDD+YePXIYQVfZmER/ebPshKzgnmsJMe2F2KTYhdKUVk52yOS6n+H9OBAun
         /xu+khYdlb4zb4MDz1lyJs4Lsh/70h1kKv8mi7FDnqZ+71PTrw2ExIfHaWln5rdBtBOw
         b97RiibOFW5wrm/KvibuBmnXtjBQjRok1ak+ycSIsJRFu+SX0Utya5o/7u2sxUBsSJ9E
         SkJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0BZb1Cf;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KXUXhLk7D/lkCcOjMaH90mBVqMjwH1txlhRiWGBADjc=;
        b=Ftnocj8vcd8ZAR8YqNVKbz/H5N9L+Tq1AnyL523ml8F0vE6VE3b33l9LE8KrCbs7kA
         f56Gh4oddmV+40kAwjjmiQ1KdmcnseZkY5wTWerhNU3loJ7IKqAOF56uKPd9QbsZH02w
         BPZiy3OaTA5llTAjfunW6KyFW5AXRdkwrIWDYnmjisiAoNcxEJTrYaqpXZyUlL6ryT6k
         s4wrqGyFD6deknNi7/ohXGRzMvsa3FtKNkFFyOlgAoU6Bn9AEV531srW3sNxtQEExlcb
         ENCHMdJnV1Ff1z/MeLt9uWlZ2hGYfG8uQdRvWhOiyMKTPoPaABEg9bjI+AwKVnem4vFV
         em2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KXUXhLk7D/lkCcOjMaH90mBVqMjwH1txlhRiWGBADjc=;
        b=IQNpb1YQ4ZrB/jXySOqpQ0WR7J4ZzWmS+nrlGap3N+MySsDvLK78HNvWx8lJA/u75O
         WRs4JPIsy/Hhelij2fcKGXKFcKRlpS4SH8ruMf/ttBI4g3utwTscAaGt943B7rtFh/CN
         fwG6VsifwZSbLDbUwv9pfrw3VaGCeFdSKM+YkAuhpKSplLfYVAL5T2UR9wA4LCbIyrBM
         cP8JE8s3zwOoIb1zgj+Vn2CUKHt3ocl0eXNBraT5ilrQVdemBR/uhqtwYOcsg3YkuSgW
         SmyFJJJHyj8Qi5FPjx6idzNyFUFlRIE59fYNh1SHl4mlrMkSruYjbJa+gDyoCNvKgPxP
         w9Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KXUXhLk7D/lkCcOjMaH90mBVqMjwH1txlhRiWGBADjc=;
        b=HSUBHHV+H8s6Psh7yJ2UojbwsftT8KA8jqnKvaAQEE/DRXm3V6CXY8NBwjmz4nNs1I
         0Ls6+2kT3H2rxu4BJuYrr5+YwD2FYtmyLWuphnhbpmfYrUwivYHIrgM7hAEB2uzLXJ6r
         XON3fLNVYmpiGa4u1xAOO+3aEaFl8ca8zlcVUUSa44wmnE3c3W9YwPG/+sYk8iymIh3U
         Wadtk3hBIVL17YpsRf4X0n6lFcFzKDhGpCD24RQuN+yj91CcKWeIfzjLenA4YOXbql6q
         qL99KgBKo974jyx6hN7+xYjjWNekY6Io2fXAJTtsFM+qfaONM24kugAyvJlTo3w0Uy0R
         cewA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwpj4uRPmNr32L9b8MDLtnJ1USulCSmwPLIBTz1rwbwuYa5Bxo
	DjxQGmJWaI5Sv3UhbvrxJk0=
X-Google-Smtp-Source: APXvYqw+GZ/ZaLqoXk027jOUsbjGolomJbaJLpfUzGt3ve+SnGS6N9vYpT7kyKq95ltcpf9pCfCL2Q==
X-Received: by 2002:a25:8508:: with SMTP id w8mr26303202ybk.451.1579200896474;
        Thu, 16 Jan 2020 10:54:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa54:: with SMTP id s78ls2429453ybi.9.gmail; Thu, 16 Jan
 2020 10:54:56 -0800 (PST)
X-Received: by 2002:a25:ba09:: with SMTP id t9mr24164732ybg.207.1579200896160;
        Thu, 16 Jan 2020 10:54:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579200896; cv=none;
        d=google.com; s=arc-20160816;
        b=DqzSPmGykzj9lyF2jHMHVHKVWELFDXqGnaDs5LxsbO6RkxHCoOFn4q44AIWrhe8Jqu
         mzZhsmWSb5Iz4vMogpRAN/dqyIUcfiT4Ar/J1DBAzrxlnVKedLZS6qmj3Jc8Wa96lwnG
         +qZWfLeuuhCShuUDTdqEUkg8Nny0f70HRzaJLHBMVDpJPqj6uaCCy2gPv9SWhpmYM+q4
         mb5ihxr2v/yYgBeuN2MedqgK6nwAIDcisvwRY6lNUauJBKo2lWjhQbAOwNy0US0SUr0P
         I/0Ek4AehbALeKI14Mu3m8+HKdyTSwt1GDixKilMrQuNywyh3HLre6f44r3/ZN/5R6Uz
         sKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P69NeR3xJbxZLi5K91OSnj1oflfK13tq5qYKZgVnyUA=;
        b=xniAIqKua1PsrbrI2oWfMfGR+SelVrXLc/YDXoHO0adGRzWUP7SkAxRRkzXmF2JbVf
         1mG3j/P6oke6wRLJnp3Oj2/VUUjnHwssR22yCWtz0JV5t4KwVxh2FGOgv9uADDI7hsau
         wkkFAdxyrU47HLwR3TsBkZY2GwE/9NAdX+RoPyAQ2/eJQgmRS+uDyZ1vkV9cbM7bwrrM
         XM/mU9l78ajIDRlytHpTny4Y7tPHd2eOIyC0lOUvlwuGIuASCqTSl+3a/wZPQxJbBBpg
         ZZFLR2CSg/3nn9721jN5IEvia1srNL5jEWoHzneTxRLgCP79NY+00kPLZQNf/qXRDOxP
         V18w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0BZb1Cf;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id z5si1310751ywg.5.2020.01.16.10.54.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 10:54:56 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id c16so20197081qko.6
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 10:54:56 -0800 (PST)
X-Received: by 2002:a37:a685:: with SMTP id p127mr31044074qke.449.1579200895688;
 Thu, 16 Jan 2020 10:54:55 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093389.1357254.10041649215380772130.stgit@toke.dk>
In-Reply-To: <157918093389.1357254.10041649215380772130.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 10:54:44 -0800
Message-ID: <CAEf4Bzbz47nFh4tPBn2PTi3+YiYpMDxymgf36P=ZjbuBPoCrZg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 02/11] tools/bpf/runqslower: Fix override
 option for VMLINUX_BTF
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
 header.i=@gmail.com header.s=20161025 header.b=a0BZb1Cf;       spf=pass
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

On Thu, Jan 16, 2020 at 5:23 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> The runqslower tool refuses to build without a file to read vmlinux BTF
> from. The build fails with an error message to override the location by
> setting the VMLINUX_BTF variable if autodetection fails. However, the
> Makefile doesn't actually work with that override - the error message is
> still emitted.
>
> Fix this by including the value of VMLINUX_BTF in the expansion, and only
> emitting the error message if the *result* is empty. Also permit running
> 'make clean' even though no VMLINUX_BTF is set.
>
> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/bpf/runqslower/Makefile |   18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefil=
e
> index cff2fbcd29a8..89fb7cd30f1a 100644
> --- a/tools/bpf/runqslower/Makefile
> +++ b/tools/bpf/runqslower/Makefile
> @@ -10,12 +10,14 @@ CFLAGS :=3D -g -Wall
>
>  # Try to detect best kernel BTF source
>  KERNEL_REL :=3D $(shell uname -r)
> -ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
> -VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
> -else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
> -VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
> -else
> -$(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explicit=
ly")
> +VMLINUX_BTF_PATHS :=3D $(VMLINUX_BTF) /sys/kernel/btf/vmlinux /boot/vmli=
nux-$(KERNEL_REL)
> +VMLINUX_BTF_PATH :=3D $(firstword $(wildcard $(VMLINUX_BTF_PATHS)))

If user specifies VMLINUX_BTF pointing to non-existing file, but the
system has /sys/kernel/btf/vmlinux, the latter will still be used,
which is a very surprising behavior.

Also MAKECMDGOALS feels like a fragile hack to me. How about we move
this VMLINUX_BTF guessing (without $(error)) into vmlinux.h rule
itself and use shell if conditional after it to check for file
existance and print nice error. That way we'll be checking VMLINUX_BTF
only when it's really needed.

> +
> +ifeq ("$(VMLINUX_BTF_PATH)","")
> +ifneq ($(MAKECMDGOALS),clean)
> +$(error Could not find kernel BTF file (tried: $(VMLINUX_BTF_PATHS)). \
> +       Try setting $$VMLINUX_BTF)
> +endif
>  endif
>
>  abs_out :=3D $(abspath $(OUTPUT))
> @@ -67,9 +69,9 @@ $(OUTPUT):
>         $(call msg,MKDIR,$@)
>         $(Q)mkdir -p $(OUTPUT)
>
> -$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF) | $(OUTPUT) $(BPFTOOL)
> +$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BPFTOOL)
>         $(call msg,GEN,$@)
> -       $(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF) format c > $@
> +       $(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF_PATH) format c > $@
>
>  $(OUTPUT)/libbpf.a: | $(OUTPUT)
>         $(Q)$(MAKE) $(submake_extras) -C $(LIBBPF_SRC)                   =
      \
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4Bzbz47nFh4tPBn2PTi3%2BYiYpMDxymgf36P%3DZjbuBPoCrZg%4=
0mail.gmail.com.
