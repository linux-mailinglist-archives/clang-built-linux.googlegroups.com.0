Return-Path: <clang-built-linux+bncBDE5JTGNZULRBKHTYPZQKGQE7RBSCXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A445C188A1D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 17:24:10 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id h191sf15788427pfe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 09:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584462249; cv=pass;
        d=google.com; s=arc-20160816;
        b=iBGzJQ0lQMPbDzMuqEC8JssIdN1X78G7Gr0REubsVv292tg2DrscMGkUsF4xw/HSW7
         59nu7iZHA/JPPK0jBOawfJWMeQLZtWd4Et/NxOf8W3c6Rna6uxPywn3WKAWoYlhrDO/I
         +Y5HPUr7EO+JbbBJf9DgXv4+eIS759y+aqgFTMPYEJdRl2ual6XBtDeslKFmLZRTuTA3
         heSukUlUmAMVSIgCtENTY7vW+ElAhGHWxftaMNMHs/JzVMfz7cHskYWL2WxGybY+93M0
         a1PiCHKJd9uPPyWmlweI/YfsQo4O8IE97TM6ExFySdn9ryf5ooFgPs9ed+T28sNvK8qp
         K1Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Fx3uLBJIg5/h63cFzZ1h9znYlMhb30TSJFNoYw95Jk4=;
        b=08oEP37aixJ1kpbTxRvRot3JN9KktXAUTa60wUYs1iiwVs8nfDQFcDTXeu/mO4OJab
         8UEJP7vssmjukzA+PHvulpYMndtF+IeexV7HN+4IdZaSIfCpL7i5dPb64mFbPm7X2Nbk
         d1bRovh2m43OfRpQoSEKBXfuhwHC95TeTb7gfjDNGWXChObeYN6QvXKQ8YVgN1qG1RYg
         yE0/2hsqyTleBFvjk3SYZmC6nd7KAfa+46Fi1b/2LFoFHF1Qkbh3fp+xlLKmpbYORUiG
         2pNDZHSdEsY0jp+2rToTcD0XhWafEecAIs9x3kY/vJaT6tsCdF8J/m3MzmMSTRCiR6Fh
         5Pgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b="EgT9v/aR";
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fx3uLBJIg5/h63cFzZ1h9znYlMhb30TSJFNoYw95Jk4=;
        b=mJxnX5OVdURYzFm1+um1sUgUPoWskcZF+nhUCxXtlHJxfOesW6f/9mbMybWVt24E3O
         pv23366icL+ZF1RcX+aPRMXM+XS02+MW437u/zeDmQGb0RpDr1O35vjTmzFvw4qsVack
         fDdlGVvtIFoiDbTBO2agM+68uTgqc8n3lEUN5E5u3apiCu38zsKE340k+u/rSGKLZK13
         xmh92y9WMiPeHhy+NxQ3VFecIuKNBmXNYQ1omJkS4XBCCsftQHZegPDOrgxhWzYsRRgC
         AjVAJByXdqixlL6knL1TCBSfmGvPxSU9xt/xdT+tWgOTVBJPKHHaHrFaNcdPsqGsjKkU
         MPfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fx3uLBJIg5/h63cFzZ1h9znYlMhb30TSJFNoYw95Jk4=;
        b=jhd0wwPRGZ8ZQ8e4yhTXcFfyhx2LKD8q1ZBZINnAJcUwPm4LF+VKIy0A/HyjwA6Cv7
         X8CmTz58zBEFoB1zwsRzUfOFJ7GfnngOnB/vgQ5hv7ZKM3NlxmMMkCgz2UzBHwFd2YFb
         /r/M/tiE/oyrQkqVsordTgv+dWqmg+IPxQxN3nBCEzdmct/ZC1vf0OB8ozs64ZdKKifJ
         Wnwkt4XbD1U7neqrxgvLuOLTUTlyKq3FzL0kxBSRbPpLO1exavy7eln42d5xu5UORWBl
         +LrqLC+w3jINXMqHJ6DLK8NUX/atffTVaKidYRQOVRS9Sixj3hXoU5ZC8pQ9PD4cKnp3
         U1Fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0WkhzvCD5OtR8fH3BsmzqP/pCYeixjGoOixPWNuZzUp39xXj/P
	MCfnaDa2zJrr6mD3w7N8KEg=
X-Google-Smtp-Source: ADFU+vsMkQJacedjhCogPi9+qGnPGjbGx9bW08uhHClfTYBhQ7tmPxkU/BsB7A4NPei0hwhKrtlwhg==
X-Received: by 2002:a63:607:: with SMTP id 7mr5904615pgg.303.1584462248922;
        Tue, 17 Mar 2020 09:24:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls10563320pfg.9.gmail; Tue, 17 Mar
 2020 09:24:08 -0700 (PDT)
X-Received: by 2002:aa7:951d:: with SMTP id b29mr6204703pfp.30.1584462248406;
        Tue, 17 Mar 2020 09:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584462248; cv=none;
        d=google.com; s=arc-20160816;
        b=U4ZJzOz4RWkvWyrgntoKLAOzpWguRlbeNEc4lCQko6gj9ygTHFAJ6PtxsHcjrvKLYJ
         Lazefi+B7RPYXEKA/kmZXVqNG6XGQmHlSCztdE9QHlHbmeYmhP5N1qPZ3pTXXI3oIHwK
         vWTF43TYGefMOu8ygM6bN3HNUWQban2b/yema4KTK+RH2jgg96UDdw5rSXlEr0a2R3FI
         Db4WEGzgzWRQNW4wNb+aNrDve6YUX8vwPUS/sz9Er1JIEa+RykJXWAq6MW5x99Fuqjth
         WHEjeUkkX0a7bdCYmwxbfYU0tO5G4jnruyOBnWKZVOlOeP7y34JqNchQNVxOjqVW4qSs
         Zqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3gLHCw1k1vgin5ImJr7e+a6EB7LHD7UzoYRzly3/8qo=;
        b=m6kSDYSRWXtGOPz56t+JlvJvjDWq9UxfmgrUALn+WdJQAxcqkyrHWc5MRRG3hAJkpm
         HGd6txWP83ZeJE6AnKw+ALSLmOjv35i9A12XEdUayPuFhHaU/TBzzzadkmhGSQBfXgQJ
         244D6AaEBYqLgED3rqimJvo2kgaqFBvkIsXx785FvysGKbpZTmRPr0gl93UvlqQ4z0b7
         WwJueIB75+Yy2MOO40hivO0puXqTIi6Y+mMRNE4eWF4oiRKqfQe/JfwIPBJrblaLZCFd
         JL2ibr6rAi9mo0/oatAArV5ts/RJhsOsoGFXx88U3q6/ttr2k4GsN7rH7NQrJsbO3E9Z
         Ts9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b="EgT9v/aR";
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a141si65730pfd.5.2020.03.17.09.24.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 09:24:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id m5so12025351pgg.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 09:24:08 -0700 (PDT)
X-Received: by 2002:a63:d255:: with SMTP id t21mr46599pgi.114.1584462247864;
        Tue, 17 Mar 2020 09:24:07 -0700 (PDT)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id d6sm3303583pjz.39.2020.03.17.09.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 09:24:07 -0700 (PDT)
Date: Tue, 17 Mar 2020 09:24:05 -0700
From: Stanislav Fomichev <sdf@fomichev.me>
To: Fangrui Song <maskray@google.com>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>, bpf <bpf@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>
Subject: Re: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
Message-ID: <20200317162405.GB2459609@mini-arch.hsd1.ca.comcast.net>
References: <20200317011654.zkx5r7so53skowlc@google.com>
 <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com>
 <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
 <20200317052120.diawg3a75kxl5hkn@google.com>
 <CAEf4BzYepRs4uB9vd1SCFY81H5S1kbvw2n9bKNeh-ORK_kutSg@mail.gmail.com>
 <20200317054359.snyyojyf6gjxufij@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317054359.snyyojyf6gjxufij@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sdf@fomichev.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623
 header.b="EgT9v/aR";       spf=neutral (google.com: 2607:f8b0:4864:20::544 is
 neither permitted nor denied by best guess record for domain of
 sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
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

On 03/16, Fangrui Song wrote:
> On 2020-03-16, Andrii Nakryiko wrote:
> > On Mon, Mar 16, 2020 at 10:21 PM Fangrui Song <maskray@google.com> wrote:
> > > 
> > > 
> > > On 2020-03-16, Andrii Nakryiko wrote:
> > > >On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
> > > >>
> > > >> On 2020-03-16, Andrii Nakryiko wrote:
> > > >> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
> > > >> >>
> > > >> >> Simplify gen_btf logic to make it work with llvm-objcopy and
> > > >> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
> > > >> >> use a simple objcopy --only-section=.BTF instead of jumping all the
> > > >> >> hoops via an architecture-less binary file.
> > > >> >>
> > > >> >> We use a dd comment to change the e_type field in the ELF header from
> > > >> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
> > > >> >>
> > > >> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> > > >> >> Cc: Stanislav Fomichev <sdf@google.com>
> > > >> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > >> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > >> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> > > >> >> Signed-off-by: Fangrui Song <maskray@google.com>
> > > >> >> ---
> > > >> >>  scripts/link-vmlinux.sh | 13 ++-----------
> > > >> >>  1 file changed, 2 insertions(+), 11 deletions(-)
> > > >> >>
> > > >> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> > > >> >> index dd484e92752e..84be8d7c361d 100755
> > > >> >> --- a/scripts/link-vmlinux.sh
> > > >> >> +++ b/scripts/link-vmlinux.sh
> > > >> >> @@ -120,18 +120,9 @@ gen_btf()
> > > >> >>
> > > >> >>         info "BTF" ${2}
> > > >> >>         vmlinux_link ${1}
> > > >> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> > > >> >
> > > >> >Is it really tested? Seems like you just dropped .BTF generation step
> > > >> >completely...
> > > >>
> > > >> Sorry, dropped the whole line:/
> > > >> I don't know how to test .BTF . I can only check readelf -S...
> > > >>
> > > >> Attached the new patch.
> > > >>
> > > >>
> > > >>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
> > > >> From: Fangrui Song <maskray@google.com>
> > > >> Date: Mon, 16 Mar 2020 18:02:31 -0700
> > > >> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
> > > >>   vmlinux BTF
> > > >>
> > > >> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> > > >> We use a dd comment to change the e_type field in the ELF header from
> > > >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> > > >>
> > > >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> > > >> Cc: Stanislav Fomichev <sdf@google.com>
> > > >> Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> > > >> Signed-off-by: Fangrui Song <maskray@google.com>
> > > >> ---
> > > >>   scripts/link-vmlinux.sh | 14 +++-----------
> > > >>   1 file changed, 3 insertions(+), 11 deletions(-)
> > > >>
> > > >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> > > >> index dd484e92752e..b23313944c89 100755
> > > >> --- a/scripts/link-vmlinux.sh
> > > >> +++ b/scripts/link-vmlinux.sh
> > > >> @@ -120,18 +120,10 @@ gen_btf()
> > > >>
> > > >>         info "BTF" ${2}
> > > >>         vmlinux_link ${1}
> > > >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> > > >> +       ${PAHOLE} -J ${1}
> > > >
> > > >I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
> > > >is necessary, pahole assumes llvm-objcopy by default, but that can
> > > >(and should for objcopy) be overridden with LLVM_OBJCOPY.
> > > 
> > > Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
> > 
> > It's pahole assumption that we have to live with. pahole assumes
> > llvm-objcopy internally, unless it is overriden with LLVM_OBJCOPY env
> > var. So please revert this line otherwise you are breaking it for GCC
> > objcopy case.
> 
> Acknowledged. Uploaded v3.
> 
> I added back 2>/dev/null which was removed by a previous change, to
> suppress GNU objcopy warnings. The warnings could be annoying in V=1
> output.
> 
> > > This is confusing that one tool assumes llvm-objcopy while the block
> > > below immediately uses GNU objcopy (without this patch).
> > > 
> > > e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
> > > generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
> > > set.
> > > 
> > > >>
> > > >> -       # dump .BTF section into raw binary file to link with final vmlinux
> > > >> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> > > >> -               cut -d, -f1 | cut -d' ' -f2)
> > > >> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> > > >> -               awk '{print $4}')
> > > >> -       ${OBJCOPY} --change-section-address .BTF=0 \
> > > >> -               --set-section-flags .BTF=alloc -O binary \
> > > >> -               --only-section=.BTF ${1} .btf.vmlinux.bin
> > > >> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> > > >> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
> > > >> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> > > >> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
> > > >>   }
> > > >>
> > > >>   # Create ${2} .o file with all symbols from the ${1} object file
> > > >> --
> > > >> 2.25.1.481.gfbce0eb801-goog
> > > >>
> 
> From ca3597477542453e9f63185c27c162da081a4baf Mon Sep 17 00:00:00 2001
> From: Fangrui Song <maskray@google.com>
> Date: Mon, 16 Mar 2020 22:38:23 -0700
> Subject: [PATCH bpf v3] bpf: Support llvm-objcopy and llvm-objdump for
>  vmlinux BTF
> 
> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> Add 2>/dev/null to suppress GNU objcopy (but not llvm-objcopy) warnings
> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> Our use of --only-section drops many SHF_ALLOC sections which will essentially nullify
> program headers. When used as linker input, program headers are simply
> ignored.
> 
> We use a dd command to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
> Accepting ET_EXEC as an input file is an extremely rare GNU ld feature
> that lld does not intend to support, because this is very error-prone.
> 
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Cc: Stanislav Fomichev <sdf@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  scripts/link-vmlinux.sh | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index dd484e92752e..c3e808a89d4a 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -122,16 +122,8 @@ gen_btf()
>  	vmlinux_link ${1}
>  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
> -	# dump .BTF section into raw binary file to link with final vmlinux
> -	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> -		cut -d, -f1 | cut -d' ' -f2)
> -	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> -		awk '{print $4}')
> -	${OBJCOPY} --change-section-address .BTF=0 \
> -		--set-section-flags .BTF=alloc -O binary \
> -		--only-section=.BTF ${1} .btf.vmlinux.bin
> -	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> -		--rename-section .data=.BTF .btf.vmlinux.bin ${2}
> +	# Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> +	${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
No, it doesn't work unfortunately, I get "in-kernel BTF is malformed"
from the kernel.

I think that's because -O binary adds the following:
$ nm .btf.vmxlinux.bin
00000000002f7bc9 D _binary__btf_vmlinux_bin_end
00000000002f7bc9 A _binary__btf_vmlinux_bin_size
0000000000000000 D _binary__btf_vmlinux_bin_start

While non-binary mode doesn't:
$ nm .btf.vmxlinux.bin

We don't add them manually in the linker map and expect objcopy to add
them, see:
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/kernel/bpf/btf.c#n3480

>  }
>  # Create ${2} .o file with all symbols from the ${1} object file
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317162405.GB2459609%40mini-arch.hsd1.ca.comcast.net.
