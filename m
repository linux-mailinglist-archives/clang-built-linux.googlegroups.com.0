Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBK4BYHZQKGQEAYIZX3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A7C187801
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 04:14:52 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id e21sf19735813qts.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 20:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584414891; cv=pass;
        d=google.com; s=arc-20160816;
        b=QegJCSga2O+bLu+Po8pwscAqbYFiewsZNpLknmRzWxx9RnIOldiy1EiD/Vm30gPntY
         V8PPdkyE2UR3pTN9Ps1bOkAVhu4hM0x7oNDOLBALUijLbJCCb1Ml/npYYKIXX6wukeW2
         Yl4sCEXPSNc+MgTreISdQVOUK89v9lPssdmnir3wlizObJK2kzWU4l+3WUsR8xVTTMFV
         Rb1bYf7b8tcmY4Ot+I+SS/Sj6pDBwVHerPEwzCYzFIW8A1kHbOpck4ADtvBRGSwFZyjh
         rnsPR5Tk8ifKl69d/6e/0x1t7tmFyCaMdoMP4ST7yF1yi9mPplix0JPM+4GUzWyJsQwO
         IHtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0wXQoWzy7Zo98Hx+zJrcIDO9728/Vg08rnKpc1NfeRE=;
        b=wsF0aMUCtaMRIQZsUvXcOVuXfnu6JV1os6GKkZmdE2etAp5VgWKfH/47VzSQPaYz46
         5EuxoCme21WiiSP23ABb5+Nari175Lis+YhY3TDGnPEbVAiRtpJYzsTH43TN9A9BTiPF
         OGAlkisQgYr88c8CnxxykiOIqWPgNnphiazwJstKjlUvg4rP1cYAQ62ZNexyqrRnN70H
         Flrc7eIguZco96dpacRSLO42ILeX1Aq5cEl4TcHVulwRFeCALTTvpSLO4hyuAA5ns2XJ
         crA/jWR56CgPMlDFXudXvZmD9mP3oZmLp0SyG+GyfzyVVMhCWaoXrfZoX9orqsIXiW+F
         qLpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPdMIcBf;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0wXQoWzy7Zo98Hx+zJrcIDO9728/Vg08rnKpc1NfeRE=;
        b=JAIszy7Uc9jrpWNxYuY05nZNddvLK7bHkcQ5yrK5SQi4yCliJvMvdJNUBp4369jTKY
         Ytww23EsKFari5IAk9yMWh66PWULrgiNiQ3U6+ZNdJaKcBfm42RfEWwY4n+2qVL3hPfb
         3CTDlbrXqRsOseRqhEK5tUts85KWAJvs3DxBPXQyFRR4NjurL6fQAPhEs/Gm3EB0G5MF
         SzTk/oEGlaJiUm5kmWPFv9Bx7Gz5DDc1Tt1aDtFlxUSjJVkKNWgNJyHMHHXy03BA11pI
         YwoAdAt65LvhRIWZ0m46Q9Ud1AJZwQM2aNTfLrj2qCbyHeEtqABLixu7l9mMO97CqXBG
         ITUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0wXQoWzy7Zo98Hx+zJrcIDO9728/Vg08rnKpc1NfeRE=;
        b=RbHettYBQaa/szv6/HFhvcRVxhQ+SaqOkBpDPRLcT7oEb1s+KXnr2Yy5Zj3ytNP32B
         J/qkZSLdDEjD1gYCyl3tkexmzcmafzv60EmOebyaLJWXVtE+iGco39GQlV8sN0Gcr+gr
         9lFO+AyPclfEjg31e1weXw5annRH7QhPZR2+UVQko3NzngrtaGhE/gBJRy8Cj1PFQUY1
         jqEVSSGePK0ixvEfJ4lQPd9hWEWLSOVFsfwfHNCZfNdR2/wFQzakvCiKlmhMdgpHAkl/
         rAVSiwkn74PRx89K3uDm1Yrkhzz6G3xh9pLhC980hy8ISx/8vcyHeh5DjSKPH1ouonMw
         MG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0wXQoWzy7Zo98Hx+zJrcIDO9728/Vg08rnKpc1NfeRE=;
        b=QsWIuf8BBYh37zjF9EZA3MRV3OP2z7eTE6bQR1kaAPXlPtnMU32I/Srj4Y6HVZ9nZy
         t08cy8UmxKrps069vSDTASWV36YiLe/mBw87KPV1zWBHaFpvCpB1yvgECn6lp+N2bRy3
         EhY9QGPkI2FEW4DQa0obweFfX9iDHaCHnArt1n85uhZEndcQnluQG02lwPZn4x7jv7qG
         kUnGG3OUJj8qQl/jpwpIGav4on9sRSlU+Fk3XNFMWU89XIlq6hWV5to05h7oLlQsb8nI
         SWBEBeXFXsVaw3eJNp1Oz7nqfDwiCvxYIgBHRt7OUq/g32Z5bNUAKLK5abb4dmifvuUA
         NiqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1AQi9+TJZgSupaBL///YBGIEbhNLMhSjk3/oxxzccPp48Mtsc2
	qcgcpZvBCHLK5fdtP+neHnM=
X-Google-Smtp-Source: ADFU+vtNyiLrXvNP54xlJFe0CZE/Al4KzhlDHplP4QYoOwONH3GUjD0CQy99UAzo0icILWYAuAm8zw==
X-Received: by 2002:a25:3187:: with SMTP id x129mr4373201ybx.397.1584414891546;
        Mon, 16 Mar 2020 20:14:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cf0a:: with SMTP id f10ls4592186ybg.2.gmail; Mon, 16 Mar
 2020 20:14:51 -0700 (PDT)
X-Received: by 2002:a25:4e03:: with SMTP id c3mr4407953ybb.23.1584414891107;
        Mon, 16 Mar 2020 20:14:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584414891; cv=none;
        d=google.com; s=arc-20160816;
        b=RWkH3pKKeS8lrvcpra7xIWU0um1GJ0L7D3No5VMR7mc9ihOYmYDFzEI6XoY1f2X6SL
         TEgn1LO8KvWBOozw9itYhYaZ189k3cAClYvD3PNZsX232GbZOztVTu6mAaVD2+SRDGH7
         y9YcgxDYOHactxvDPP884MvA7m//dbNx8Nr7zyB9JS1Ktdu6zPF58j2MLqvWQ3WTUr7Y
         jp8kzLWY5K/ffmDGCDwZWsBU1E4HbpCm2enyhMFoJPkXxEUIFzhP9LUqEy21Ay7tVADq
         W2HpCN++TCIuqOwhZgl+bgyfGrdEqEExbPEd6gieDriEUWCPQdzie8EMjDmJzycv990t
         /Zyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7HQTEP5qZYfmGLQ0NflRh2YcAfuWWOw0vSoZda8pwfE=;
        b=RL04gyIJqQQvJWlOlz4NDkULpkXPhogJlJclRi95mDUHjR21dMKFDwcl9h1zc92Lis
         l2VUHtM0wSqiwL28H5FWrDUAROrM3fYMhzC/9FWcuvn6HKjIW+hcvCez252K1Vricg8f
         6cyu2xJmWgWtGteuRVHcCGILlMeUmA1xeyPT8E05u18mGsa1wVyotgBPTQS7x6T/ernj
         Nq/JftgEe4/ii5clwGexA94gqmqCZ0LUsFX618u37uQMgh4LaK1xxHxSBSHtYZk0vrC3
         y8ZOr4Z5CxQai2yJbc2XSf7q7BX71Tt6JKW9SKfLwmqyXfOOiUAudqSQnX0TDiOFpUDc
         6prg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPdMIcBf;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id l1si139270ybt.2.2020.03.16.20.14.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 20:14:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id e11so30148723qkg.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 20:14:51 -0700 (PDT)
X-Received: by 2002:a37:992:: with SMTP id 140mr3038319qkj.36.1584414890639;
 Mon, 16 Mar 2020 20:14:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200316222518.191601-1-sdf@google.com> <20200316231516.kakoiumx4afph34t@google.com>
 <20200316235629.GC2179110@mini-arch.hsd1.ca.comcast.net> <20200317005651.tnzbreth7dk4ol43@google.com>
In-Reply-To: <20200317005651.tnzbreth7dk4ol43@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Mar 2020 20:14:38 -0700
Message-ID: <CAEf4BzbmciTXu1COJNH2b-p6ySj+USynJ_7pXJo_k8i8DTBSag@mail.gmail.com>
Subject: Re: [PATCH bpf] bpf: Support llvm-objcopy for vmlinux BTF
To: Fangrui Song <maskray@google.com>
Cc: Stanislav Fomichev <sdf@fomichev.me>, Stanislav Fomichev <sdf@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SPdMIcBf;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Mar 16, 2020 at 6:09 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-03-16, Stanislav Fomichev wrote:
> >On 03/16, Fangrui Song wrote:
> >> On 2020-03-16, Stanislav Fomichev wrote:
> >> > Commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux
> >> > BTF") switched from --dump-section to
> >> > --only-section/--change-section-address for BTF export assuming
> >> > those ("legacy") options should cover all objcopy versions.
> >> >
> >> > Turns out llvm-objcopy doesn't implement --change-section-address [1],
> >> > but it does support --dump-section. Let's partially roll back and
> >> > try to use --dump-section first and fall back to
> >> > --only-section/--change-section-address for the older binutils.
> >> >
> >> > 1. https://bugs.llvm.org/show_bug.cgi?id=45217
> >> >
> >> > Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> >> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/871
> >> > Signed-off-by: Stanislav Fomichev <sdf@google.com>
> >> > ---
> >> > scripts/link-vmlinux.sh | 10 ++++++++++
> >> > 1 file changed, 10 insertions(+)
> >> >
> >> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> > index dd484e92752e..8ddf57cbc439 100755
> >> > --- a/scripts/link-vmlinux.sh
> >> > +++ b/scripts/link-vmlinux.sh
> >> > @@ -127,6 +127,16 @@ gen_btf()
> >> >            cut -d, -f1 | cut -d' ' -f2)
> >> >    bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> >> >            awk '{print $4}')
> >> > +
> >> > +  # Compatibility issues:
> >> > +  # - pre-2.25 binutils objcopy doesn't support --dump-section
> >> > +  # - llvm-objcopy doesn't support --change-section-address, but
> >> > +  #   does support --dump-section
> >> > +  #
> >> > +  # Try to use --dump-section which should cover both recent
> >> > +  # binutils and llvm-objcopy and fall back to --only-section
> >> > +  # for pre-2.25 binutils.
> >> > +  ${OBJCOPY} --dump-section .BTF=$bin_file ${1} 2>/dev/null || \
> >> >    ${OBJCOPY} --change-section-address .BTF=0 \
> >> >            --set-section-flags .BTF=alloc -O binary \
> >> >            --only-section=.BTF ${1} .btf.vmlinux.bin
> >> > --
> >> > 2.25.1.481.gfbce0eb801-goog
> >>
> >> So let me take advantage of this email to ask some questions about
> >> commit da5fb18225b4 ("bpf: Support pre-2.25-binutils objcopy for vmlinux BTF").
> >>
> >> Does .BTF have the SHF_ALLOC flag?
> >No, that's why we manually do '--set-section-flags .BTF=alloc' to
> >make --only-section work.
> >
> >> Is it a GNU objcopy<2.25 bug that objcopy --set-section-flags .BTF=alloc -O binary --only-section=.BTF does not skip the content?
> >> Non-SHF_ALLOC sections usually have 0 sh_addr. Why do they need --change-section-address .BTF=0 at all?
> >I think that '--set-section-flags .BTF=alloc' causes objcopy to put
> >some non-zero (valid) sh_addr, that's why we need to reset it to 0.
> >
> >(it's not clear if it's a feature or a bug and man isn't helpful)
> >
> >> Regarding
> >>
> >> > Turns out llvm-objcopy doesn't implement --change-section-address [1],
> >>
> >> This option will be difficult to implement in llvm-objcopy if we intend
> >> it to have a GNU objcopy compatible behavior.
> >> Without --only-section, it is not very clear how
> >> --change-section-{address,vma,lma} will affect program headers.
> >> There will be a debate even if we decide to implement them in llvm-objcopy.
> >>
> >> Some PT_LOAD rewriting examples:
> >>
> >>   objcopy --change-section-address .plt=0 a b
> >>   objcopy --change-section-address .text=0 a b
> >>
> >> There is another bug related to -B
> >> (https://github.com/ClangBuiltLinux/linux/issues/871#issuecomment-599790909):
> >>
> >> + objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc
> >> -O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
> >> + objcopy -I binary -O elf64-x86-64 -B x86_64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.o
> >> objcopy: architecture x86_64 unknown
> >> + echo 'Failed to generate BTF for vmlinux'
> >>
> >> It should be i386:x86_64.
> >Here is what I get:
> >
> >+ bin_arch=i386:x86-64
> >+ bin_format=elf64-x86-64
> >+ objcopy --change-section-address .BTF=0 --set-section-flags .BTF=alloc -O binary --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin
> >+ objcopy -I binary -O elf64-x86-64 -B i386:x86-64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.
> >
> >Can you try to see where your x86_64 is coming from?
>
> llvm-objdump -f does not print bfdarch (ARCH= in binutils-gdb/ld/emulparams/*.sh).
>
> % objdump -f .btf.vmlinux.bin.o
>
> .btf.vmlinux.bin.o:     file format elf64-x86-64
> architecture: i386:x86-64, flags 0x00000010:
> HAS_SYMS
> start address 0x0000000000000000
>
> % llvm-objdump -f .btf.vmlinux.bin.o
>
> .btf.vmlinux.bin.o:     file format elf64-x86-64
>
> architecture: x86_64
> start address: 0x0000000000000000
>
> % objcopy -I binary -O elf64-x86-64 -B i386:x86-64 --rename-section .data=.BTF .btf.vmlinux.bin meow.btf.vmlinux.bin.o
> # happy
> % objcopy -I binary -O elf64-x86-64 -B x86-64 --rename-section .data=.BTF .btf.vmlinux.bin meow.btf.vmlinux.bin.o
> objcopy: architecture x86-64 unknown
>
>
> As a non-x86 example, elf64-powerpcle / powerpc:common64:
>
> % powerpc64le-linux-gnu-objdump -f meow.btf.vmlinux.bin.o
>
> meow.btf.vmlinux.bin.o:     file format elf64-powerpcle
> architecture: powerpc:common64, flags 0x00000010:
>
>
> Unfortunately, GNU objcopy<2.34 (before I complained about the redundant -B https://sourceware.org/bugzilla/show_bug.cgi?id=24968)
> could not infer -B from -O elf* .
> % objcopy -I binary -O elf64-x86-64 --rename-section .data=.BTF .btf.vmlinux.bin .btf.vmlinux.bin.o #<2.34
> % file .btf.vmlinux.bin.o
> .btf.vmlinux.bin.o: ELF 64-bit LSB relocatable, no machine, version 1 (SYSV), not stripped
> objcopy: architecture x86-64 unknown
>
> GNU ld and lld will error for e_machine==0.
>
>
>
> I will be a bit nervous to make llvm-objdump behave more BFD like.
> Adding i386:x86-64, powerpc:common64, etc does not look particularly clean.
> Fortunately, looking at the code, it seems that we only want to retain .BTF
> The following scheme may be simpler:
>
> objcopy --only-section=.BTF .tmp_vmlinux.btf .btf.vmlinux.bin.o && printf '\1' | dd of=.btf.vmlinux.bin.o conv=notrunc bs=1 seek=16
>

This part looks pretty crazy. Would it be simpler to detect whether
$(OBJCOPY) is llvm-objcopy and handle that in a bit less hacky way?


> The command after && is to change e_type from ET_EXEC to ET_REL. GNU ld has an extremely rare feature that allows ET_EXEC to be linked,
> but lld is more rigid and will reject such an input file.
> https://mail.coreboot.org/hyperkitty/list/seabios@seabios.org/thread/HHIUPUXRIZ3KLTK4TPLG2V4PFP32HRBE/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbmciTXu1COJNH2b-p6ySj%2BUSynJ_7pXJo_k8i8DTBSag%40mail.gmail.com.
