Return-Path: <clang-built-linux+bncBCS7XUWOUULBBXPY5KCQMGQECEUGGTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id A18D239C419
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 01:50:54 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id o14-20020a05620a130eb02902ea53a6ef80sf7587369qkj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 16:50:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622850653; cv=pass;
        d=google.com; s=arc-20160816;
        b=q88DZSLi1coU0WIjtJsb8s0h+FJYrOWbCr5YxQdx3RsqhEb84Y14yt6LiaMBrUq4/w
         oSt62wnWeNAAraSaAMlqBORnNSkEzhYkpKmTJNQ098Fv40/A3HnuGDWn88fAXkUExyRo
         70auvHF/VIlfdGLbwe52RfJvzoMRNtnJAsSpdqIgQKfuWAPkObt90tvc8s2EPyhup8Qg
         fb1UpU2UnwRJ5sZ1qRmtIRrfgav1G0YSvRDC4Wio4ybfwV/K3AnBQW6qMYEHm7lZr0JA
         q/+iTo/EZ2RrRkr58tNQKkNkqpnqxn6X9byaSjqJfnG70u1Car7gpP0zFK9CAcRL5BNV
         5F1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oM9rd27GeerCNNefHVGx5KQ4cfhbg+AwKifoa4MDhOE=;
        b=xMJC84pU6gaw70j9+YVZEcVVOAs1MDNlC+V2axLGhw+1iAOTX//TVDjBs8Ysg0jJPO
         iRXExCooPJ91FV8InDnZsI8cHYYv5dVqXLG4ysZgCJ1IPIeWXBFFqR8YarMnROD7rWTs
         fY2MWthTcZ8kZ6SI50SwgwJf19rQ8gB77PPr9wUa6i9Jf+BPCQWKngVAr3x83En7YUyO
         7+cd/NXs9NlN640dGAjVcSbHGk/M5fP4zz7GOavfx1hhb/wQ1cMRBjAvSwWtUhyIKZd6
         /m/VWRkoFMgtu8dMdhrRcxJAkIBoZP+wdciTLq8cSVcGv6wvvF8HBGwAvI1lWpLbkpXY
         wERg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lZqKUeBT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oM9rd27GeerCNNefHVGx5KQ4cfhbg+AwKifoa4MDhOE=;
        b=YVcBDQX4Nh5XqXJQKPMJiFYSSJBJ4u72hW0iT3nJ/IrEqRToZmoFlcIKQ8+SfgKzjO
         LBXSQfAh0Jw77sLusLht1JdHBpxs6I4vr+2D5fXyPSBgue/n2GgTgoTH+RBc1zVQjHjL
         XkLxh2pp+2fPUknLOpGApJnThQ49iar+OafXeX2Dgwbqvi4z5WivWG4bB9T+OYQ4GXdj
         blS1hImky/uA3Bb2o0q9jYuDeKZmFvb6baWXP/jvYLZc5XOFf4hIqQUCfXTFEl5055js
         xJspm7L8csVb1PhG5STSqTTAfvr1BNVrGgxeTKrfkvbQMVRbjwSsIJnzh7pAh3v9D9Qn
         1XnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oM9rd27GeerCNNefHVGx5KQ4cfhbg+AwKifoa4MDhOE=;
        b=MHHjuGf2nIIdmo6+Q1WpzuMIA0GrSw7QSGKlqi6Pu8wEBLW0i6TT3lEsFSeJ08X3Tl
         KE1VkvgQs7n3JNoaSnWDjnjBGd662ANdgDqOyzsuajsPTGRRFCySaEsVzdnYp4u0nxQ7
         T5cdHdKybxetO9YIxUbvlR1+wnij6DpkENDHXuMWmI1sxavw+wTqM+E7SqFjZWuMGrpr
         Rdb6RLu3vsPEKCf54ULe+4fvNPIJ4y3/PCfPTDjXrrNBwwFtMeQElduYkbJIA/Q6ZebV
         /5s7HCyq2sNvFDSGhiql3ZAMthe1vTs/rF9C0PLttgwYHt6DnI6yoRP0j1a1IZX5tqkQ
         r7Kw==
X-Gm-Message-State: AOAM530eb7UHloCAa/mxQVTIZGkjyKiQ90Auuf0L7hIVd6sL97RlCxCk
	IewT0SzTN9UR2Wu5Y9DU+mk=
X-Google-Smtp-Source: ABdhPJzeOtDxJybUBdka35biB7gY9pr7dUPm9limhE6a1UrGu83hBZusVHOvwtawlgO82sfljW9Imw==
X-Received: by 2002:a05:620a:6cd:: with SMTP id 13mr6810064qky.186.1622850653337;
        Fri, 04 Jun 2021 16:50:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2452:: with SMTP id h18ls4955019qkn.6.gmail; Fri,
 04 Jun 2021 16:50:53 -0700 (PDT)
X-Received: by 2002:a05:620a:12f2:: with SMTP id f18mr6875011qkl.122.1622850652923;
        Fri, 04 Jun 2021 16:50:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622850652; cv=none;
        d=google.com; s=arc-20160816;
        b=bg5mjEgnmwxFgd8v5uE+LUh+bDUf2bDS1TO6DQZNGynEO5NH7Av54G+6wYlIj7v+Wy
         uqlafp9XKNYQUutCeb2wTzNaEt96u3lkUjHOlGznVRf+qbTguIlnz4i/8RPBDHadhyHZ
         jr920To2PW3dClOnU8VBC4B+80RBQfNLxgJMlQIkRW+zDT4yJw/IaWK9jpJK3+EhLHal
         qV/ZkcYKNtwyOVaf8Ndo8zWg1cT8plwqsZXUB/bygFEk+dyvt+FR1cQzN3UQosyNrhou
         Dre+jMxCvZMfLAU9qs7Jnadf8ToaezAV/HwbL+/iPdQIdOWymKb5BhmAdc/JpEzx5rYq
         KQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NNdIv1Q9mZxSjkjhRDb+rDB0M2eG3pxayo33UlZp4vY=;
        b=CmDDeEVDEHZzwNQg4NTQbNTzuwnOli+de3Q8JleCubnyHCnA1bwLbed4xqueNGZopO
         6Pl4eUlX4xM96Takx4OxC3L7VDG/UCZVha9FmLZn+jlTU3JJ3+XXdhPftigVoCtOzW3H
         1Zh7hF4FHR9Q4cp4ecR/Tv4lPyeJjMjjRxmOUWvHryoBRx+DpfSffc0P7F/ffgAvBo8z
         H9DCxwzVugnGwj72x4zM1flPdRekPzwyEFTYlTRwuE1EghLvY3DuxYBdK0AAol6RO+TZ
         +lnLT1juEOleJMLdnQwF33m1J2iMxWLNbI4YyRq7r1ssqD7Cq/8weY/qDMb1BGXptPNj
         KKlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lZqKUeBT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id p16si777875qkp.7.2021.06.04.16.50.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 16:50:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id i5so9125723pgm.0
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 16:50:52 -0700 (PDT)
X-Received: by 2002:a63:7e0a:: with SMTP id z10mr7159079pgc.12.1622850651840;
        Fri, 04 Jun 2021 16:50:51 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:dabb:6084:19a6:c9d5])
        by smtp.gmail.com with ESMTPSA id 23sm115825pjw.28.2021.06.04.16.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 16:50:51 -0700 (PDT)
Date: Fri, 4 Jun 2021 16:50:46 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com, rad@semihalf.com, upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <20210604235046.w3hazgcpsg4oefex@google.com>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lZqKUeBT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d
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

On 2021-06-04, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Fri, Jun 4, 2021 at 1:50 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> (Manually replying to https://lore.kernel.org/lkml/CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com/)
>>
>> Hi Peter,
>> We're also tracking 2 recent regressions that look like they've come from this
>> patch.
>>
>> https://github.com/ClangBuiltLinux/linux/issues/1384
>> https://github.com/ClangBuiltLinux/linux/issues/1388
>>
>> (Both in linux-next at the moment).
>>
>> The first, it looks like a boot failure. The second is a warning from the
>> linker on a kernel module; even readelf seems unhappy with the results of the
>> output from objtool.
>>
>> I can more easily reproduce the latter, so I'm working on getting a smaller
>> reproducer. I'll let you know when I have it, but wanted to report it ASAP.
>
>Sent a pretty big attachment, privately.  I was able to capture the
>before/after with:
>
>$ $ echo 'CONFIG_GCOV_KERNEL=n
>CONFIG_KASAN=n
>CONFIG_LTO_CLANG_THIN=y' >allmod.config
>$ OBJTOOL_ARGS="--backup" make -kj"$(nproc)" KCONFIG_ALLCONFIG=1
>LLVM=1 LLVM_IAS=1 all
>
>It looks like
>
>$ ./tools/objtool/objtool orc generate  --module  --no-fp
>--no-unreachable  --retpoline  --uaccess  --mcount
>drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o; ld.lld -r -m elf_x86_64
>-plugin-opt=-code-model=kernel -plugin-opt=-stack-alignment=8
>--thinlto-cache-dir=.thinlto-cache -mllvm -import-instr-limit=5
>-plugin-opt=-warn-stack-size=2048 --build-id=sha1  -T
>scripts/module.lds -o drivers/gpu/drm/amd/amdgpu/amdgpu.ko
>drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o
>drivers/gpu/drm/amd/amdgpu/amdgpu.mod.o
>
>is producing the linker error:
>
>ld.lld: error: drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o:
>SHT_SYMTAB_SHNDX has 79581 entries, but the symbol table associated
>has 79582
>
>Readelf having issues with the output:
>$ readelf -s amdgpu.lto.o.orig
><works fine>
>$ readelf -s amdgpu.lto.o
>readelf: Error: Reading 73014451695 bytes extends past end of file for
>string table
>$ llvm-readelf -s amdgpu.lto.o
>llvm-readelf: error: 'amdgpu.lto.o': unable to continue dumping, the
>file is corrupt: section table goes past the end of file
>
>`file` having issues:
>$ file drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o
>drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o: ELF 64-bit LSB relocatable,
>x86-64, version 1 (SYSV), no section header
>
>for comparison:
>$ file ./drivers/spi/spi-ath79.lto.o
>./drivers/spi/spi-ath79.lto.o: ELF 64-bit LSB relocatable, x86-64,
>version 1 (SYSV), not stripped

tools/objtool/elf.c:elf_add_symbol may not update .symtab_shndx .
Speaking of llvm-objcopy, it finalizes the content of .symtab_shndx when .symtab
is finalized. objtool may want to adopt a similar approach.

read_symbols searches for the section ".symtab_shndx". It'd be better to
use the section type SHT_SYMTAB_SHNDX.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210604235046.w3hazgcpsg4oefex%40google.com.
