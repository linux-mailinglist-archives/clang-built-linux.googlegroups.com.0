Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOEGUT2AKGQEC7NGYPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCC119E7D4
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 23:59:21 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 5sf4577911uah.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 14:59:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586037560; cv=pass;
        d=google.com; s=arc-20160816;
        b=MSTpA6cFFLu0Ci1KuuoZ6+ae4OyYncQs44tO5FJfEhgUsbgZ9BNb1aRTUrdZXHLN2H
         kYdU1xVHjFe3NiHf3jDdT99WDsjCYXYOL3lFBe/NWhpnK1PF/J508W/EpvUrL9ZNoMPN
         kJ/OyJ6qROrwgogwDDRpG1e/1yysxhVIqxbYf9gwVauYwIDb6vVz0uu1FkyXTFFJVuad
         Q4WN4vejxCyROxkxcmWhTnhIPT3D5k19BwQw8dtutIQQSwOdWzacZ8N/zktaCHIg8Mgz
         V06yfCBmEYxDCcodh1pZxiWIiihduJDpXUWfKVYioVHR9TYbN51F4RiW4ZKrIKY6r55A
         XEGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=ivKI9e+m/FU9/tkJxt4escxzfnPQFMByzGh/7z3fi0E=;
        b=UwvE9RMCAflXqWBjI10SPusCfr6RS0x6Cds+DR4/N0jaV5Rs39kYJE/3DkoshzzVs8
         fx/3GIl/Bidv7Vn3jJ2x65AqDG6qtssExHMbVvaTYD2ZO1qSq1RLXkDgKeRK4/JErd/6
         Vfa/HkINogwnjlxTNNWM6c/EanL6/tHG9Aw3Y5Zisw2zXl/6FtNeO1ukb71hLZZ5VZyj
         DrPCibOsh/s/pFvIoVw5szgKXSkoutBprF5v4mH3PnMoSy3fvZYNa9DHtLOUzpyLmQNE
         W0pgsu1bBvU3z3R8hvObkWaOaPVl/dija6nBWfbYTSOh+fNWn2dgiA0uGRpazhvPiB/P
         +DGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UWJaKC8V;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ivKI9e+m/FU9/tkJxt4escxzfnPQFMByzGh/7z3fi0E=;
        b=X3oeVDQlGGT6VbWO3NqIiINhtLs1XwL55Fo5tcnnu86E2PCutOxyghwnvwgb6a8gbr
         iZ608CAGHFVP7NbaVqrrPisGD6qkDy26XjjrvDmALdQM36O6oXi8fJ2wuwkUU4+p1Dbd
         l3S8AZfE30ZYPIX9qr0JgNnEHDfWCYjb6KBDESq+cp/qesNgQs+tG+OHLWOojdXf040+
         RrbnCzl63x89GauJAIYyYXdKr8oiwyOy/RNHRhnjX56HRsQCB7qgSxENMoTrfRbjWN0e
         QqKUI/rLS/DwAfgrVdnoKhlDyX+ZJn6ZDjk8kR81fyXgyEUc1jbLX9NxIVfbfT6U6K7X
         Ao5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ivKI9e+m/FU9/tkJxt4escxzfnPQFMByzGh/7z3fi0E=;
        b=Ufyke3eirX4pwLNjJ38vn9+r2VKN9vpJ/CwaSUeEE7Azk9hT4aBb7fpx/J5XHkbt6Q
         mLqwex91RZVkZ+gXhxFzzaWvkPVCLASPaYrxHj/nheQa9HDF/DQqI9LscTWymBy5TpDs
         mQSE/4f4JFCg35rdcr4GRjFMUJ+/ttVBVPlE4UsH6e4hH6fqS+OsjdZBTEV8tlGfH5hK
         UWgCELcm/+TGs9FjQZmjMk6b6u+ENlIQ0pafazBEpPDsd48k8LK5F7iev5oEjTTbTGo7
         UkM/TuvjM4HMV3V2l+X69JiR6gTcjsYCNYSpc71YFBEc7qGRV7StuObDnLIIw4FikND/
         XbWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ivKI9e+m/FU9/tkJxt4escxzfnPQFMByzGh/7z3fi0E=;
        b=sYjjUs9//9/lwucbGtS+3xi4h7KG+6rR/2fyeeV0oHUG4p74Zeo2yXWsHn0Q8FDv8D
         TjGKg/az9U5LlQNHc3ZzrEakT1DV2yq8PqeIbSCEsL24sa2alaJur+nhoVDZudnGgAXm
         MoGAptUFJI1KuqmxL2/ugyPku8WH18QnTYNheZYidjITWMckf5sB6wb5HX8d3/DMR4W6
         d8s4fdFUBxKUUEdkfmCLQyLR8tEruZB6ESfT23nHPJtGpx93ptTX8kNcvYebnRkQtUW5
         6rC6AB607IOmdJZTufxaB6N42hj4MX5f1FzlcXoQMU2psXXFip3vRniurAfC8jK/7g3Z
         wEPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ7SV6koedNrFTvLjRwLw8xyEgt6rns2cY16BNiF9fJ3ufGDp4l
	dt0szHS5wNqsFvOV6Dz6GCg=
X-Google-Smtp-Source: APiQypJl6G8ia3430ZfJMtCWMKUs9iS9adJi0Ssn1dpDd94K3TCCk/jfPmiDdzOsH/JmtGEtOrfqbQ==
X-Received: by 2002:a67:2284:: with SMTP id i126mr10762171vsi.223.1586037560166;
        Sat, 04 Apr 2020 14:59:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:a645:: with SMTP id r5ls1791025vsh.2.gmail; Sat, 04 Apr
 2020 14:59:19 -0700 (PDT)
X-Received: by 2002:a67:d60d:: with SMTP id n13mr11751243vsj.230.1586037559819;
        Sat, 04 Apr 2020 14:59:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586037559; cv=none;
        d=google.com; s=arc-20160816;
        b=jzWDLFOAklNNxpuFJGt13JfRe2wGFWG/SMQFnsT6YT7APbXxmMQd56vJCn7/k8q0He
         r9nNbIjQqJSu7kCofoHWGKV6u6nMCkLfe6FXIm9WyVrOGC3qAjpb1I29LB4Oi+CsGJmd
         tBbDTmyOKefR2zDLhXLEp7hjWELHx4qrG8kcTgABPsDnUx1ZVIKs445q5FIxzssqrqGT
         tdYFuJWt9tHvtlZC1kVdhZhok6fnDSKtguTCUOIxmlkiUpSHdSrOjv7oF6Aj3+H9vLm0
         TFNKqmZd5/w6JJ5Lyvf1l0tiZjutbyleWbVZnknMMcLCvrklibIDunvl/ROLSkfooxer
         wCDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pVp3qksQb2vdqHq/6WfrBiZ707DIbhDx+1bFys5wWR0=;
        b=l8x464uxFOjXhY78QTHnNg6fyFimoOf4EmREfCpmLTNdXNrZvOsAx9EkS/R9OJC7ou
         KhK0PUXIubu3DzcPR9nWuCT2JbS4W/Ml9wdg8tMxdWiWKsNYslIeo2FmBD5FF1qI5ymv
         5fRn4tqNfQrXhO3XLw/3SRZdSPltM+XJ4ElvzdGECixpnxbPRikIammOi7Ut+Zg5Ii4Y
         aszdRrd6OHwa7U7toF2o63JNlAXty5YaGEisuebdaOIN4/cXcKlTA2XueKPqcLmktqD6
         qY5zJlCNfEh6wpj6JPVViiGHhKm1X5btTAs1Na2fEuxdcGUuSx1wDlU5FX+AQMR+tc8I
         sMfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UWJaKC8V;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id u6si1239626uae.0.2020.04.04.14.59.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 14:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id v2so11343858oto.2
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 14:59:19 -0700 (PDT)
X-Received: by 2002:a9d:5e0d:: with SMTP id d13mr12164436oti.162.1586037559205;
        Sat, 04 Apr 2020 14:59:19 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 81sm3213961otu.51.2020.04.04.14.59.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 04 Apr 2020 14:59:18 -0700 (PDT)
Date: Sat, 4 Apr 2020 14:59:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: Fangrui Song <maskray@google.com>, linux-mips@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rui Ueyama <ruiu@google.com>,
	George Rimar <grimar@accesssoftek.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200404215916.GA929@ubuntu-m2-xlarge-x86>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
 <20200404010210.GA13010@intel.com>
 <20200404013204.p53fteofnppvf7pe@google.com>
 <20200404211252.3540251a@flygoat-x1e>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200404211252.3540251a@flygoat-x1e>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UWJaKC8V;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Sat, Apr 04, 2020 at 09:15:31PM +0800, Jiaxun Yang wrote:
> On Fri, 3 Apr 2020 18:32:04 -0700
> Fangrui Song <maskray@google.com> wrote:
>=20
> >=20
> > Reproduce for a clang/lld developer:
> >=20
> > make -j$(nproc) ARCH=3Dmips CC=3Dclang CROSS_COMPILE=3Dmipsel-linux-gnu=
-
> > LD=3Dld.lld O=3D/tmp/out/mipsel distclean malta_defconfig vmlinux
> > (Requires mipsel-linux-gnu-as and clang in PATH)
> >=20
> > I have noticed multiple problems.
> >=20
> > % file .tmp_vmlinux.kallsyms1
> > .tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel2
> > version 1 (SYSV), statically linked,
> > BuildID[sha1]=3Dff348ad92c80e525b3f14149e57e8987de66e041, not stripped
> >=20
> > In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-y)
> > is 0xffffffff8010000. GNU ld seems to allow 64-bit addresses when
> > linking an ELFCLASS32 file. The addresses will be truncated to
> > 32-bit. This behavior seems error-prone to me.
> >=20
> > lld does the right thing by erroring out. I do notice a display
> > problem of lld -Map and I have a patch to address that:
> > https://reviews.llvm.org/D77445
> >=20
> > For 32-bit linux-mips, the right approach seems to be make
> > VMLINUX_LOAD_ADDRESS fit into 32-bit. However, my Linux-fu and
> > MIPS-fu is not strong enough to do this :/
>=20
> Hi MaskRay,
>=20
> Could you please try this?
>=20
> --- a/arch/mips/mti-malta/Platform
> +++ b/arch/mips/mti-malta/Platform
> @@ -6,6 +6,10 @@ cflags-$(CONFIG_MIPS_MALTA)    +=3D
> -I$(srctree)/arch/mips/include/asm/mach-malta ifdef CONFIG_KVM_GUEST
>      load-$(CONFIG_MIPS_MALTA)  +=3D 0x0000000040100000
>  else
> +ifdef CONFIG_64BIT
>      load-$(CONFIG_MIPS_MALTA)  +=3D 0xffffffff80100000
> +else
> +    load-$(CONFIG_MIPS_MALTA)  +=3D 0x80100000
> +endif
>  endif
>  all-$(CONFIG_MIPS_MALTA)       :=3D $(COMPRESSION_FNAME).bin
>=20
> Thanks.
>=20
> --
> Jiaxun Yang

Thank you, that fixes the error and I see no new ones. I tested
malta_defconfig, which boots in QEMU:

Linux version 5.6.0-next-20200404-dirty (nathan@ubuntu-m2-xlarge-x86) (Clan=
gBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 1ce0bc=
39eebe95a350174eb0ed4e2508e7cb6ed8), LLD 11.0.0 (git://github.com/llvm/llvm=
-project 1ce0bc39eebe95a350174eb0ed4e2508e7cb6ed8)) #1 SMP Sat Apr 4 14:54:=
45 MST 2020

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200404215916.GA929%40ubuntu-m2-xlarge-x86.
