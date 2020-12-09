Return-Path: <clang-built-linux+bncBCS7XUWOUULBBX5RYH7AKGQEO7REX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AED52D39F7
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 05:56:01 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id l7sf171370qkl.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 20:56:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607489760; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCY6OSwJepGrVIcnPl9pIQkMr8Gk+t9FXSoVl3Ie5WvP0BisQ0FfsvRajZ6D1T7Ud9
         6Q/3rDdHMMyWFMTHydP1w4nTG2JoAUD5ilO5BurfGxd5xdClJTDoXKwqpjlPjiuct6hW
         1B5ZTNwP3OkRsw4d9JX73APOYDT0JcxXMQGvSsy1PFSAK1LogBheYe9QNLg1FpHYEl8Z
         i9c67HxEEYrApoFm1jOnomxsf3qWAVQbGAC/25zmVqI8SrNN1HqQbDVhN0QrRzg1z8SJ
         PyP3QI7Q6ypVXg1v4+dSmvV1KPafkGYl9oGgwlVPUnvcxdUdTDmNHJ4r4U39laEUmpIJ
         2K3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=EvGb1yGdy9YTnPwjL4nIJe7HuUj6r2O5Q+YZ5uvTKRg=;
        b=WIp0o/bi2KTgjZgBYh9GRrIikBCbAcRBu6KrPBIu/8nz98giEirxdVTF+KhHtblqWN
         lVMnUd3W90lKNI931X9fguTlAcEOpJKfM8jszP53lbQdr6P2Ywe9mq4tx4uMLFfTryiH
         f5TSKqQyYFDH6clIw8B3csp3Ur2KMr1meUt/ptG50U6krrvwvhKaTodvdFvF4InHJaGr
         woq/E6fGBmVtC2JIF+z/sB+QZqkzb9Lk2yGcoYCPd3qSsH5ZP/6z6THCS06JPDUPO4yl
         5mZ+OdtLPJm5mK2HESCvGFUvodcaDpNwt0b4Mt72d1BmKNzju8GqdLh0GdJVQ3N8NRfM
         GcLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gVlT6d0N;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EvGb1yGdy9YTnPwjL4nIJe7HuUj6r2O5Q+YZ5uvTKRg=;
        b=STztCDPOmCXP2N93rtlCn+AZDKiziLgCUay9KlyG2WZ3ahu+6SFXaujVgl83AIrGfg
         clSMpf6Q0NkL/wus/wa7mE6DVBykCNuZhqaEW1jm3oaX/4VL6DaoxX/B2EVXJT6ZyTq0
         7swN9yV6axR7uPr/68a54V2mU06cB0azzuGhBku/LmowNWwEC2CJfTE4IREWqWT0Hdvy
         k7M6e7uUd2zjASPBxpzdDat5Wm3kcIH9Hn7OByeHhu5qs2dggm60al/f6E4PxmQ6ckc9
         ufXmv+lyOrwUqTwdkoCECu+BSwAjZ1Dqws0rr0kJy8kon/KyKfjWIZAR94lmNsiaYaxA
         kNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EvGb1yGdy9YTnPwjL4nIJe7HuUj6r2O5Q+YZ5uvTKRg=;
        b=SI1WlHcz8zdSSEGitE1OMFOarBvghtDWh/VGCH1wZ8BB9XkXFwqdhm84uTiU4wex9j
         WoYpJ5Raz+Ts+7oELASGXOxlt5XvbNg/33Rvw6MLl6bI6B7zUX5RjaQ7beRoNgz7yg8Y
         gnuQRf+rCX6fxxVjn1vQ/+anJ3wiYcTnt2m4ICuul35P4glChBY/HxTm0i3N+EsvIn16
         5z+AlQZZeq+4LJj8HLS4wSp0Kc2bt2eU0q2TGX9se70zB0KjwjSsYSJXWpgfPb7o/dBm
         WEIEBMtZ5GLBa3BTnz9lsrC0oY2g+R/+3XPiBraZTebkuzwExzqeEptbfu2uHOnpGMD2
         W/EA==
X-Gm-Message-State: AOAM533hcvx+RvHJQqdB9cuVR/cG2v0rbdwrfBHgen3+BXVUD8mFGfLs
	hgMbrXz/v7K+U61uRdWQHRU=
X-Google-Smtp-Source: ABdhPJz8lBOpAtfF0d53tX+95otahR3bXRipXnZSoMO9X6YIhcNJw86jfRTIUgk5MdjUW//x3ZpUbA==
X-Received: by 2002:ac8:5c47:: with SMTP id j7mr1131987qtj.160.1607489759817;
        Tue, 08 Dec 2020 20:55:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3763:: with SMTP id p32ls209629qtb.11.gmail; Tue, 08 Dec
 2020 20:55:59 -0800 (PST)
X-Received: by 2002:ac8:580c:: with SMTP id g12mr1218288qtg.340.1607489759427;
        Tue, 08 Dec 2020 20:55:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607489759; cv=none;
        d=google.com; s=arc-20160816;
        b=DMjoIsI3F2etAjUGGuYBScMjsGnunp4mWvq5yImoJaQ8MQp6tIE29JfSEuR05KL2Df
         TdIBzlSrjk5M26tlJt+QEWHDrd4dlttqcmjvsMpDcqQ1vpPsLujOCZ5HgEyqLLGpZpQ2
         J/Ywy4j8QHmT5Git0Qtm0Z8pqICkNFD9vUUVytn7nS/JBfKcuu3pGRv0EQ26vJpBzdGQ
         Agtxp3IDFkG7c07spPN2dKjmrGwhWnMLMQP4O2ldptDFz404Tmtl2qMDb2qgIkrEfLSG
         W0zSur5OtsdaAZwYOZ6qTxjd0mBdeQZGcgbXVo9I0THT7evBSgy/d7l5tlbRVDHMm4Y7
         oJcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yNxPOOK8GUbsNe5moby382MnhA6+vA6WAhboDqo7Axs=;
        b=UGG4XwSwEMW2dInvEaAXID9sPR3WQfH3jEfYdzrf/vIks2DLpSGLDHbOfIiEs7Kbii
         4OkxlQjbFM+cMO3zUYV+IEEFhbkoNMaZXVuJUrqvDljh+kkhYO6XwO89YTt1H/w5F0CT
         uIWA4yI+HcfwwzxiL/ByPNaCn+/MDsJXR/qcs90ToE/TtgU8cHbE4WGk3l9SrE9CWBvb
         HghYdzGWAF8+6tMpMwcZEXybyUCbN+Luo+aUJyCyg+mS+/SWVFxf2rX7K5MEF8F4otac
         VFV5VWfFupf0HHgPdy8iSM1Z1RMMpwUsWhGwnmTSEtbGyjT2iu/iSEpkJun7iXe5/Jud
         J82w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gVlT6d0N;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id k54si53076qtk.4.2020.12.08.20.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 20:55:59 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id s21so207058pfu.13
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 20:55:59 -0800 (PST)
X-Received: by 2002:a63:494f:: with SMTP id y15mr405121pgk.364.1607489758368;
        Tue, 08 Dec 2020 20:55:58 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id s17sm508448pge.37.2020.12.08.20.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 20:55:57 -0800 (PST)
Date: Tue, 8 Dec 2020 20:55:54 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	linux-pci <linux-pci@vger.kernel.org>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201209045554.fxlzrmxknakl2gdr@google.com>
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gVlT6d0N;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-12-08, 'Sami Tolvanen' via Clang Built Linux wrote:
>On Tue, Dec 8, 2020 at 4:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
>>
>> On Tue, Dec 1, 2020 at 10:37 PM 'Sami Tolvanen' via Clang Built Linux
>> <clang-built-linux@googlegroups.com> wrote:
>> >
>> > This patch series adds support for building the kernel with Clang's
>> > Link Time Optimization (LTO). In addition to performance, the primary
>> > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
>> > to be used in the kernel. Google has shipped millions of Pixel
>> > devices running three major kernel versions with LTO+CFI since 2018.
>> >
>> > Most of the patches are build system changes for handling LLVM
>> > bitcode, which Clang produces with LTO instead of ELF object files,
>> > postponing ELF processing until a later stage, and ensuring initcall
>> > ordering.
>> >
>> > Note that arm64 support depends on Will's memory ordering patches
>> > [1]. I will post x86_64 patches separately after we have fixed the
>> > remaining objtool warnings [2][3].
>> >
>> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
>> > [2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
>> > [3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux
>> >
>> > You can also pull this series from
>> >
>> >   https://github.com/samitolvanen/linux.git lto-v8
>>
>> I've tried pull this into my randconfig test tree to give it a spin.
>
>Great, thank you for testing this!
>
>> So far I have
>> not managed to get a working build out of it, the main problem so far being
>> that it is really slow to build because the link stage only uses one CPU.
>> These are the other issues I've seen so far:

ld.lld ThinLTO uses the number of (physical cores enabled by affinity) by default.

>You may want to limit your testing only to ThinLTO at first, because
>full LTO is going to be extremely slow with larger configs, especially
>when building arm64 kernels.
>
>> - one build seems to take even longer to link. It's currently at 35GB RAM
>>   usage and 40 minutes into the final link, but I'm worried it might
>> not complete
>>   before it runs out of memory.  I only have 128GB installed, and google-chrome
>>   uses another 30GB of that, and I'm also doing some other builds in parallel.
>>   Is there a minimum recommended amount of memory for doing LTO builds?
>
>When building arm64 defconfig, the maximum memory usage I measured
>with ThinLTO was 3.5 GB, and with full LTO 20.3 GB. I haven't measured
>larger configurations, but I believe LLD can easily consume 3-4x that
>much with full LTO allyesconfig.
>
>> - One build failed with
>>  ld.lld -EL -maarch64elf -mllvm -import-instr-limit=5 -r -o vmlinux.o
>> -T .tmp_initcalls.lds --whole-archive arch/arm64/kernel/head.o
>> init/built-in.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a
>> certs/built-in.a mm/built-in.a fs/built-in.a ipc/built-in.a
>> security/built-in.a crypto/built-in.a block/built-in.a
>> arch/arm64/lib/built-in.a lib/built-in.a drivers/built-in.a
>> sound/built-in.a net/built-in.a virt/built-in.a --no-whole-archive
>> --start-group arch/arm64/lib/lib.a lib/lib.a
>> ./drivers/firmware/efi/libstub/lib.a --end-group
>>   "ld.lld: error: arch/arm64/kernel/head.o: invalid symbol index"
>>   after about 30 minutes
>
>That's interesting. Did you use LLVM_IAS=1?

May be worth checking which relocation or (SHT_GROUP section's sh_info) in arch/arm64/kernel/head.o is incorrect.

>> - CONFIG_CPU_BIG_ENDIAN doesn't seem to work with lld, and LTO
>>   doesn't work with ld.bfd.
>>   I've added a CPU_LITTLE_ENDIAN dependency to
>>   ARCH_SUPPORTS_LTO_CLANG{,THIN}
>
>Ah, good point. I'll fix this in v9.

Full/Thin LTO should work with GNU ld and gold with LLVMgold.so built from
llvm-project (https://llvm.org/docs/GoldPlugin.html ). You'll need to make sure
that LLVMgold.so is newer than clang. (Newer clang may introduce bitcode
attributes which are unrecognizable by older LLVMgold.so/ld.lld)

>[...]
>> Not sure if these are all known issues. If there is one you'd like me try
>> take a closer look at for finding which config options break it, I can try
>
>No, none of these are known issues. I would be happy to take a closer
>look if you can share configs that reproduce these.
>
>Sami
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueCHo2RYfx_A21m%2B%3Dd1gQLR9QsOOxCsHFeicCqyHkb-Kg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201209045554.fxlzrmxknakl2gdr%40google.com.
