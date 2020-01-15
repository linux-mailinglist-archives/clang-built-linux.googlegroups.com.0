Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBVNF73YAKGQEZRCWELY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C1A13D01E
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 23:31:50 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id e4sf14562503ilm.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 14:31:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579127509; cv=pass;
        d=google.com; s=arc-20160816;
        b=x5JWXYHdLm1sy3a1pylqDU9lku88/hLAof+ta4O7MQstXTv2Oj5hsoCkB99ByeePd4
         4GhZUOXVvXOP/6hS8K/oXIDQoTsl/4KHwcVg9b0bs+GFFkrXQ1S3yAX9GjF7R33JYggO
         2zysx1BDj1vSyENqHDVgcSdl2ptSO+OeomVDgQRfiLcjZcsWtr5C4CPj37+YY46L6BU9
         FtPBDAnD0776fhQzVxwKP8C454wnduNlbRVzrWWfOcjOgsX9Gzjb/9yuVtV3VB2Hwdtx
         XEW+lUxaI3xXbZZe2JB3gytFtIxAONn2nOOv357iDcGIHIWEUm6J+MVcqodX9p8XlSVm
         MIjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=RhfpBxuAu6L7CQne/7WjXCegrpwJmwlB+Jk8pZOl7rM=;
        b=uX9IezlYfmmLLjvQZJfGFLWp0BOiwXzcWmfbHbT5ZRNEsFa9yhbqGSurukwAQfbZY8
         IIxyWj0xDwwKjBotNHfDubg3mv/v64IU2jGUr9shYS8kjXCA7dvAXIGXC7+67ceu76FV
         gxKqBXNEI2mR2FMCplsyCVIrCb9OiNaY3EqIrtQH9Se8AiSqXTvJDwKkS+L9h7nTwFpT
         fEJJMqgGOwK4BE8Hd8/SHQwxNlPFRrJO75XBlC0VInrinWJ4teLW1TlsJKl035mMEL/Z
         G8FrnpersuMCiu1YSWdb35gYsn9U2y5iVYadRvvVcKb3EKxN+sC+0yYHs97YBRKGIq+L
         N8pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNt51iDc;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RhfpBxuAu6L7CQne/7WjXCegrpwJmwlB+Jk8pZOl7rM=;
        b=Z48ArawplXf5zczQE16AMDioaEw2IcsRcdRhGLkDD3XomdbxLSYkUy0se/WM1vPFEx
         E3PgwmnShF46OX4j+6TgY20iISzW5wQtB3wrnDKgQlzBuOAlLwqSs6XgR5v5fSKKsM1m
         3yLikJhYnP37igQFzTlo1Kxx4rP9TQZXJJQoe/ES8ipsChDTOoDInh6Pubq1wJgLwtTX
         nSwYcacO83qhuQPitBf+wn/n1rG0blbA2oIC2K6HKZBcFpLz0+gPfBNadKKDoEpZbBfr
         jtL+qdwuoO8/16BhVb7haPDBjuDgzetrhuZEGoiaxw3FXEW0GZM/QXhSLLELXQNu5xYC
         Dynw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RhfpBxuAu6L7CQne/7WjXCegrpwJmwlB+Jk8pZOl7rM=;
        b=YTbB3FN8HClWSo3cFfYKJ4xxSrxjI28Sg20UIfph3gvY1z5FO9UFxB4YJM8qaeYn49
         vRwJJ5izBDTj2D1RajviLxJK7e7vCbJ4T5+HIxA/tijCCqlXzmoB610anieqV6xzEz3D
         THMaCud4UGAj1fjOs196Ood8AMmup3W3JkiiXwKanEIdXg6suNLI2106vzeTwxx37WgR
         qF7sT7xVerU5JPbzMz8JJc1XzTIpmVuDMjsSjpMc7gEl4ykYRIfxQ6F1xgvJqQS3HuAy
         7vIxttT9K9HAhvQoVmU3/CCv/V7Bigus+InGsR7gM9oRT4p4eys1maLAlBQtUE0TbI4C
         S7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RhfpBxuAu6L7CQne/7WjXCegrpwJmwlB+Jk8pZOl7rM=;
        b=D2chz5Y6eGRAUVVZ+FXtyP23HTv9Ela9xgJ3tXr4NpMfZPpSLCdSDFH7myrVn0rwSO
         wupURI8B9pvC8b9nXGcgFKzizHMENAkjwNZVAMiEJZCOQQcCbe7kEJZK9OGeVr0/ZLpn
         jFmF8dYe+wxILk2rDl4bCnOniC67UFEA1hR769hiKrvJxtvBAxxs2r841KZHtGjgs+hM
         /QAqlyUY8H1IwUhiW3Mh8MrGrsc5vrUL7qBrrnKz6ycI225FtP3O6Fbb40PDGIfe6Lyl
         OTSfepUrQxc18W2HRZEMj+fpowltnvZyArCoCNHs07Wn47UFw0aHRcDF8c6+OtFetzsc
         4Qqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOS9/KfUE+RuAp0WGP5ZN26DV3UQyEjAGwKe/mBHK8vuosqmFR
	I6Cl8LzmKEuEdxtRmFkkHKw=
X-Google-Smtp-Source: APXvYqyefMQ7uO62bSDHgxscCx3IEENkU9fwzqawqCuIWbkVjV5pNx/XoF2xX9YDGqIi0tUt0a4o3Q==
X-Received: by 2002:a92:8893:: with SMTP id m19mr807354ilh.4.1579127509323;
        Wed, 15 Jan 2020 14:31:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:39c5:: with SMTP id h66ls3624405ilf.11.gmail; Wed, 15
 Jan 2020 14:31:49 -0800 (PST)
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr783981ilo.227.1579127509025;
        Wed, 15 Jan 2020 14:31:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579127509; cv=none;
        d=google.com; s=arc-20160816;
        b=uCz4BJcRWu2NO0nFOkpAiJoeGkhQRAD+ZAboIrR2yx9oMCt49PAqpBuWmXnVqdcoCG
         nUXj5DUswSSQxQGgKAcapT5ZwnVaqynHDKS5XOIg2L1xA6TD9+HD542z/jhfsZgOo/qQ
         alXatTgEIz2s0JeTnWB7XolanxCg5ywyWFiVT7SwgRE9Ej65tOl3YUQ0ptidcatFQ9vz
         DTwWi/ThJ7E2Y8VC3g9PkUie1YgI2MmhfApwqhwe/oKn8oTi2gtvq/dN5GVyug7rEdzF
         teiROUou/LwxoA5fsI8J4xmZveIVH+hQIqdwR4+5GPZZJ/BG1Q2Fy/mHMeT7okWLkHuR
         V52A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m3ykeEiv2DWhC3YDv/3M+ztOkLKwpMGFjEqD6cnUt4s=;
        b=uw3Pk/buIpxqTfWYsRuflfd/2oCMNWVLmK0kmUW9nQSkA+f0woTMYEcFIi4GvgjTid
         4QN/ji3uZb3MtKI60yDiKeka0jmhYgZ/VJ3nM/jGmCkQUt+PDvkdxA+K/WmyyFdPz4AN
         WHLf7Tbzt83MfDrX8S6XdAa9DFM/hWrknU6u6jIu+As6rdvh62WU7IiKTme5UtUTtlLD
         uuw2dGfhvcIcKWTW8faaJwu7bCFciUwhP25X1IeY81tKTVMPmqpSe4gudqlVggWOkXVp
         RxiTeR8gDJWH+cLpzzIxGR76hzPlcai/VdoUx8/ggCZ8d/tXN3Hiu+Yv3EK+RAVd4KCA
         8gPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNt51iDc;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id a1si991006iod.3.2020.01.15.14.31.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 14:31:49 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id c17so17314428qkg.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 14:31:48 -0800 (PST)
X-Received: by 2002:ae9:e809:: with SMTP id a9mr13631663qkg.92.1579127508368;
 Wed, 15 Jan 2020 14:31:48 -0800 (PST)
MIME-Version: 1.0
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
 <157909757089.1192265.9038866294345740126.stgit@toke.dk> <CAEf4BzbqY8zivZy637Xy=iTECzBAYQ7vo=M7TvsLM2Yp12bJpg@mail.gmail.com>
 <87v9pctlvn.fsf@toke.dk>
In-Reply-To: <87v9pctlvn.fsf@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 15 Jan 2020 14:31:37 -0800
Message-ID: <CAEf4BzZpGe-1S5_iwS8GBw9iiyFJmDUkOaO+2qaftRn_iy5cNA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 02/10] tools/bpf/runqslower: Fix override
 option for VMLINUX_BTF
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
 header.i=@gmail.com header.s=20161025 header.b=cNt51iDc;       spf=pass
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

On Wed, Jan 15, 2020 at 2:06 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:
>
> > On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@=
redhat.com> wrote:
> >>
> >> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >>
> >> The runqslower tool refuses to build without a file to read vmlinux BT=
F
> >> from. The build fails with an error message to override the location b=
y
> >> setting the VMLINUX_BTF variable if autodetection fails. However, the
> >> Makefile doesn't actually work with that override - the error message =
is
> >> still emitted.
> >
> > Do you have example command with VMLINUX_BTF override that didn't work
> > (and what error message was emitted)?
>
> Before this patch:
>
> $ cd ~/build/linux/tools/bpf/runqslower
> $ make
> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it =
explicitly".  Stop.
>
> $ make VMLINUX_BTF=3D~/build/linux/vmlinux
> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it =
explicitly".  Stop.

Ok, so this is strange. Try make clean and run with V=3D1, it might help
to debug this. This could happen if ~/build/linux/vmlinux doesn't
exist, but I assume you double-checked that. It works for me just fine
(Makefile won't do VMLINUX_BTF :=3D assignment, if it's defined through
make invocation, so your change should be a no-op in that regard):

$ make clean
$ make VMLINUX_BTF=3D~/linux-build/default/vmlinux V=3D1
...
.output/sbin/bpftool btf dump file ~/linux-build/default/vmlinux
format c > .output/vmlinux.h
...

Wonder what your output looks like?

>
> >> Fix this by only doing auto-detection if no override is set. And while
> >> we're at it, also look for a vmlinux file in the current kernel build =
dir
> >> if none if found on the running kernel.
> >>
> >> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
> >> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >> ---
> >>  tools/bpf/runqslower/Makefile |   16 ++++++++++------
> >>  1 file changed, 10 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Make=
file
> >> index cff2fbcd29a8..fb93ce2bf2fe 100644
> >> --- a/tools/bpf/runqslower/Makefile
> >> +++ b/tools/bpf/runqslower/Makefile
> >> @@ -10,12 +10,16 @@ CFLAGS :=3D -g -Wall
> >>
> >>  # Try to detect best kernel BTF source
> >>  KERNEL_REL :=3D $(shell uname -r)
> >> -ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
> >> -VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
> >> -else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
> >> -VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
> >> -else
> >> -$(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it expli=
citly")
> >> +ifeq ("$(VMLINUX_BTF)","")
> >> +  ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
> >> +  VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
> >> +  else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
> >> +  VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
> >> +  else ifneq ("$(wildcard $(abspath ../../../vmlinux))","")
> >> +  VMLINUX_BTF :=3D $(abspath ../../../vmlinux)
> >
> > I'm planning to mirror runqslower into libbpf Github repo and this
> > ../../../vmlinux piece will be completely out of place in that
> > context. Also it only will help when building kernel in-tree. So I'd
> > rather not add this.
>
> Well building the kernel in-tree is something people sometimes want to do=
 ;)
>
> Specifically, the selftests depend on this, so we should at least fix
> those; but I guess it could work to just pass in VMLINUX_BTF as part of
> the make -C from the selftests dir? I'll try that...

Yes, it can be handled through VMLINUX_BTF override for selftests. As
I said, this will be a self-contained example in libbpf's Github repo,
so this "in kernel tree" assumption doesn't stand there.


>
> -Toke
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZpGe-1S5_iwS8GBw9iiyFJmDUkOaO%2B2qaftRn_iy5cNA%40m=
ail.gmail.com.
