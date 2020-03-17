Return-Path: <clang-built-linux+bncBDE5JTGNZULRBPXKYPZQKGQEYJSVEMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B67F1889C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 17:05:22 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id q7sf21609660qtp.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 09:05:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584461121; cv=pass;
        d=google.com; s=arc-20160816;
        b=UOP4nLNyKeVqnxzTGx/CbGM//3BK9NgIdHfZyeXwfdOzn+upYB5nfF2QDuruV700bB
         i2z7nW9PUeobLtE8CqV/HDLvHbBmxGPOEExR+d/RyHdm0HKShxZg64gmJYohZEwAwbeW
         yjoNRZXTm52GprYtORPiEA2LRB6mBmNQbMqaP9qKW6rg8swCs5ajzMd8YFvLxwh+5+OQ
         qggBOAGBZPugRg0xPh/QZZmMFv04oLI9q/4vJgOtvIHrjdpsNHG4DhNxxeks/a3OGLYe
         9pPZTS28p36Z6SJhzzCTIKEUs03rrawfSL8NFaxHnQMz2g+oPGc+OTNg08Zx1xxorTza
         HthQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jy034Mr4hDcxlGC1ZLL3urAutywNJXttnakfQP5Uj/0=;
        b=h5W6mPIcxoJ5c1ZAXl8q0JQKAKXUSpFCSIHDCk08lPK0EyyC/A7R9tYeW5hflwr7aB
         nzU8IEkRcdQRp4fOM1xo9/BK+zL5Op0cmeMEMWKK/M+5IptHZUJPlxjo7PcLcqZMOz0o
         zqGFGOsn/pU4qyhj9ymezmD4hxNAhvwDtEO7kCjN0HUu71VO8ma8NVLwmxL4i2f9Pw9I
         d2yavVk5LgZRAKwj0CDvYcEkTyU80GkXGpw/1/SJNqFt9Q9tHMxXcLS3n4WwymXMEH2w
         E7qsJmM/BetMZV9/Q7fA9xKRCmhNvgCX/Uvmt4n/cr6bkNcyboAFLbQ8YjcS96Kqf8jD
         4i0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=S911caeI;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jy034Mr4hDcxlGC1ZLL3urAutywNJXttnakfQP5Uj/0=;
        b=HkCwtGk1e1t1qIUx8KhpaTNCXLhNOG8CgdPX9OvmfnEer7VKXecQy+XiG172GO7618
         zm7wIyEnpnp/PH/5VZDXTckyrvvZCu622BL8XGrvFEJsc/gbXQNbDXlSnuMrAE9SMpbu
         H0PT74KzYaLaqJ9G/reiZzNG7l+8a6HgWZS8Ex+gdQZbGbZtHD9A7ex8Rw+2heqCtyqn
         3nUOi1vc6ReBYdNlAJVQ50t7+mMDkXfypACOpJC6f+W5Skq+U7By/lq9wLe575wSGhAv
         KGjeu3K6Z+Rao4v+hEVJEw4IMDAzHlQfu9J5mmXnwqfzX/Op0Cpvgd1Cq8ZqlyihAKgC
         twfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jy034Mr4hDcxlGC1ZLL3urAutywNJXttnakfQP5Uj/0=;
        b=O49Y8IS6+0zgZKEOmBASiLI5XduzRAWkB4mDFyhrrm9MvSrgw7Fcf0SNoWY2ygJg4E
         JcK5xEnLqPYIwNr35PI/X0bCRb2TnPQUFLEfhQVVwCY2Fzl0+BU3AjSnUDVft8kUt//Q
         eWs0SSTGW9umDt0PO2iPbaTslfSmjfZcfqPMyLij+1wh/0fHttDSH3hlLQUX4/p6BwYm
         5VjvvRWuvU9cvPYqqZJCvGFyai4sqiapuWsXng21j04lcdOzRJPsCXJrVqyNz19y/x09
         E8tkLRx0kieNGdB7X0sr/p9mt7sJY0vBsfhsGoRoodFHIvy7NojqftghqWf7bgDAL1bp
         YyZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1XYz+f+3v477zvc8piKP4Kn9c7vcPEu9uoKonmqqBvTLwNIIOd
	azuWWUTx8MGcLGVoHMpFcIQ=
X-Google-Smtp-Source: ADFU+vvlY7CuouXOpZitHgd5dVUTVgjtF5s3ByffSSSXavu/IMczMTjwDSOu78YP1b7VEfSjWlJTNg==
X-Received: by 2002:a25:254a:: with SMTP id l71mr9138801ybl.237.1584461118791;
        Tue, 17 Mar 2020 09:05:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cf0a:: with SMTP id f10ls5300931ybg.2.gmail; Tue, 17 Mar
 2020 09:05:18 -0700 (PDT)
X-Received: by 2002:a25:d886:: with SMTP id p128mr8808442ybg.190.1584461118395;
        Tue, 17 Mar 2020 09:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584461118; cv=none;
        d=google.com; s=arc-20160816;
        b=zhr/sBexIu5990JMVg9hl7LgG1NOCqRJI/YcX0aAAGFUaABGSWuflN/AIaexhzaL6T
         31+6z+B/WKNNcxV8ZnSnC/2E4QwGI5qPpPYJosMlSyFatwh8nheAAGwv6Vtdj7mU23Tb
         nHx37QkOGWsyMmmSUPLWG5JT9VM+A6qNb8MofZuPHc4zq6BbH8VLObCt6xAnpJhUWwon
         K8/nojeQxYAATun2PzTXdVfJYuikhSoHvKU/zj20x6AobnfZ4NQWeCPw+TuSqEi8IYrB
         NxmL42MF12JdW3txC2l4FVWIznL9Nt/qby0ipPCfpsFT/3x5bBIxFOS2pkHkXsAu3Hyo
         K/6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0fe+6CUwzbiQ8d1E1j8IqRqgWqyoAVB18XoQMWs5ZAM=;
        b=sLdNEltNq13eZ6VQZrIN+PDIhE70QDbV7zOYlg3xjo3TqTmmzpbP2Hv9BC8nQqPOQ1
         EpxJHqcpmxPi5R5nd5zYiStnheihgOlIg3WwRpQqebm0luXFV7gCBdZsTxL3/EPdlFOh
         1W/lSmfGSXlHRsyF+6Yw1TfnChFw+WgNJCxZFWEmRlJTJ8MCsdLCuItN/1QuVRDxMZ2s
         Cu/6p/KtAqhJLaF4l2ZZnF0yf216zL1wM+5PQYU8FUtiyCekOl8oBQo9Bgvwy19UtI+R
         RFAiTcHTfM9F2zefZVhT6tym3HiUwnAR4vl/uydJuRFlAPsR+ajuPhxXdKWOXIv9HuZK
         URag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=S911caeI;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e131si173076ybh.3.2020.03.17.09.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 09:05:17 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 7so11995338pgr.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 09:05:17 -0700 (PDT)
X-Received: by 2002:a62:1513:: with SMTP id 19mr5877005pfv.85.1584461116885;
        Tue, 17 Mar 2020 09:05:16 -0700 (PDT)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id c207sm3665064pfb.47.2020.03.17.09.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 09:05:15 -0700 (PDT)
Date: Tue, 17 Mar 2020 09:05:15 -0700
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
Message-ID: <20200317160515.GA2459609@mini-arch.hsd1.ca.comcast.net>
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
 header.b=S911caeI;       spf=neutral (google.com: 2607:f8b0:4864:20::542 is
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
I'm testing this with binutils objcopy, will update with the results.

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
Should you also remove 'local bin_arch' on top?

> -	${OBJCOPY} --change-section-address .BTF=0 \
> -		--set-section-flags .BTF=alloc -O binary \
> -		--only-section=.BTF ${1} .btf.vmlinux.bin
> -	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> -		--rename-section .data=.BTF .btf.vmlinux.bin ${2}
> +	# Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
> +	${OBJCOPY} --only-section=.BTF ${1} ${2} 2> /dev/null && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
nit: maybe split this into multiple lines? and drop space in '2>/dev/null'?
	${OBJCOPY} .... 2>/dev/null && \
		printf '\1' | dd ....
?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317160515.GA2459609%40mini-arch.hsd1.ca.comcast.net.
