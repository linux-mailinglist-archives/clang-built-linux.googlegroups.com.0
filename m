Return-Path: <clang-built-linux+bncBAABBK6TU74AKGQEDJAMLQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id DF45221C544
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 18:32:43 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id dg19sf12072213edb.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 09:32:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594485163; cv=pass;
        d=google.com; s=arc-20160816;
        b=p8AsTNb2tIwerdG0IoLRKWKUftOQs+70qB4K//lcWof9Bth6LL9LX/TVYnEFEeGfgf
         sS4uejVke7p/VL4fKGjBDV0Btc4RGnCWNHTUtGN86kPbJZo3pgGxjTTbb/1N1BKmFmMx
         KnL1iGfotRv4KChAkIJmMlVWOMUKd/epNoeohjokgz6GiX6Gp2ReY56u2+p0tqF23XCE
         bkHYCd3cLg7gYMJBBEzJGqA3w1vPXgdVQEg2nsGOh6gsfzbs2CRRXowoXRpcsSF1AQaI
         /7tvO5SidCtQOAm7cgZ+B9b2FV+FE0cxr/VaeDm4o7iHYaNC6iuow+Wo2C3kInHX3LCq
         1SFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=p1ElH+H9OP5C0CLQpiErmTKVLAZj3JJMnqEMFGfi3Rg=;
        b=lRdaXMLJUJHs4HbwXmbn1eZl7u+ytNl956aakz2N7Riy/C1ycHeMIveU4GjhpSQ4Hh
         5ayknfYOUYCvTeVXDO9fj1lmprVgkQhlcsJ+uB9X9z7yFC7UkZ+fs0yXvi+P7qMQF7S7
         Wqf/Yd7VZvyNGJsmcc7c2+OLYb8o3WFNueV1e5uqW9iuUt3TnROB5PNazD4oqkPm4FO8
         YkiKSpkSQ2f3pqUv5jT5HqeK4EdWpJuVOWPc5OT5nu0H+jTTTh3JNBRLt4wK8plCz9a6
         w1tfEnpfooOVn4B8mcqlodq3mdTM9g9ltGsYrYn/0OlwRM8+AZSRl763ns63lfBpS2xc
         o+3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p1ElH+H9OP5C0CLQpiErmTKVLAZj3JJMnqEMFGfi3Rg=;
        b=phvhnJZz16/V3MP4UNj7rzHUSVI1DKSRQhfnvWdNV2A3DuBjqmC+jPUyLQBk2QKIJH
         JJ+K7XpT6igDBwCb8oCVlmQZQUq5KXnwXfXkdSMFW7+TkxeV5+NbR3PdHbIOqN+k/Cae
         aWckCR9WawRWta9YjE8hslN8zMHKGrsOgGl1lzyfP4S9tpc5jXJD+tIvlCc/Qp4Zt1dm
         D/MTNTSk195gJyF2eyKGwEPmvO6nry6pyv4xtZmGYQnM7N9m6YPqpqma2dWphBFwTaYA
         1JyQMBNr/31PiWKOBhErnthl3nUqjq1C+uPP0FONPM4sgFaVLbalG4X9bntZtFdWCH9o
         xGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p1ElH+H9OP5C0CLQpiErmTKVLAZj3JJMnqEMFGfi3Rg=;
        b=Ruc9+eOUE0Zm533UjUAGXLFtHRCVkFopXkyBmdgxsivsA+CSy3PMyRx+Buh5fObFbj
         NWqNm3Li4GH12qLGagf0R+WmWTlYtmsgbWqLwsNKJZGF1rGVO4qhFBYT32jtKg4SR5MU
         Sk3JlZb6mUOPact6uQOz6MNyLfL915DScpbLiZyX0WT9xdA4Za3mgskAKPpKw3efi/fu
         q3ztGl15VTZ/0Uf+3hfw6BkQCH98/DAbUgfzd1Dxn7ZqsZfXDdsAY4m/c871tnoVAdgr
         GyFaeWQXdhmZF6rZu5RIr7NLWqc0SrW4gCQO/BXcyxjWkwqR5HIAs3klAE2cPYTYoGBE
         lobw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NqQtJIwIFxybbHShSNUbpu46OELFk77BkiO3tPloPd64pCRyv
	0rywA1UI1vXOzHPxUvmUVkA=
X-Google-Smtp-Source: ABdhPJwD0aqsq6HnMSBbyj4cHSXSRmXq2kaUrJKRXc+jMHxBUxqx2c+PiXKEl8A3lIGEJFHSjmIkoA==
X-Received: by 2002:a50:c355:: with SMTP id q21mr80294024edb.121.1594485163486;
        Sat, 11 Jul 2020 09:32:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ed8e:: with SMTP id h14ls3894732edr.2.gmail; Sat, 11 Jul
 2020 09:32:43 -0700 (PDT)
X-Received: by 2002:a05:6402:31ba:: with SMTP id dj26mr77304984edb.181.1594485163116;
        Sat, 11 Jul 2020 09:32:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594485163; cv=none;
        d=google.com; s=arc-20160816;
        b=MGNvV/wF6SM5B/fZSuZIEV64AntzVIZQG1sapX3rl22WGY/i06ucET4pLctxLpANo3
         UcDDDZp1S7uQyf2U2wvGWBwJf67PrVaJCZCefQOvJ/64wsMwTZ7O/0pe8PGC9BI/ul5o
         2/LHg8CJuTlwkWquqFmsIGv6BUnzbePe6Z2UFUs+MoynRTkeOGWlzb+fNRS/91oJ4Dzk
         uUHEb3dNajfF+6VlVaFuulj5ur7mgZbWDOYqYQ4iVhbvwAO3PAItZwGIfGPhhnnEwQqN
         bZojuY6GKN3/YpbAmMvK1yK9l7pMZa+QHKEDb1LSi3N2Y2ItnC6mXVc6jsPu/2b0jFQh
         oBGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=rYgfyyQ3NGvOlAVqIdYj3wFT8d6g7xjCrgC0a2x+BNQ=;
        b=CBpJZLksfFepV+5d0g9vsJVMZruuZLas2QN373XVoE6TWs2yYF++7NBJr7w8TE4Yj2
         MNqi2n9hDBH6A8tt0EipW9F3pOTRGaa0xylau2vKkkRk2vkv272LjYfsuMPFq2WX2UvB
         hF0TgZMfAzdJtMo5oC2hpc/jt8uWRlaM6A0zYeYPhuE3aUzJCYiZEPPqyTfGWDQnhRBD
         MwFcGhHGAYkn72hyOjep1/exLzmn3ucXgvFPOy+Ie7B27ampZaxLi/RO2HQ66vje3FvI
         fHAiHUKuDR2wriUMx8PH4Vcg+mWPP759oubzN3bpMtxC845PkK+Z4+d91n2H1jN9tge3
         SKvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de. [141.14.17.11])
        by gmr-mx.google.com with ESMTPS id y7si567872edm.0.2020.07.11.09.32.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jul 2020 09:32:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) client-ip=141.14.17.11;
Received: from [192.168.0.6] (ip5f5af27f.dynamic.kabel-deutschland.de [95.90.242.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1B9102002EE32;
	Sat, 11 Jul 2020 18:32:42 +0200 (CEST)
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, x86@kernel.org
References: <20200624203200.78870-1-samitolvanen@google.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
Date: Sat, 11 Jul 2020 18:32:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: pmenzel@molgen.mpg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as
 permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
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

Dear Sami,


Am 24.06.20 um 22:31 schrieb Sami Tolvanen:
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
>=20
> In addition to performance, the primary motivation for LTO is to allow
> Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> Pixel devices have shipped with LTO+CFI kernels since 2018.
>=20
> Most of the patches are build system changes for handling LLVM bitcode,
> which Clang produces with LTO instead of ELF object files, postponing
> ELF processing until a later stage, and ensuring initcall ordering.
>=20
> Note that first objtool patch in the series is already in linux-next,
> but as it's needed with LTO, I'm including it also here to make testing
> easier.

[=E2=80=A6]

Thank you very much for sending these changes.

Do you have a branch, where your current work can be pulled from? Your=20
branch on GitHub [1] seems 15 months old.

Out of curiosity, I applied the changes, allowed the selection for i386=20
(x86), and with Clang 1:11~++20200701093119+ffee8040534-1~exp1 from=20
Debian experimental, it failed with `Invalid absolute R_386_32=20
relocation: KERNEL_PAGES`:

> make -f ./scripts/Makefile.build obj=3Darch/x86/boot arch/x86/boot/bzImag=
e
> make -f ./scripts/Makefile.build obj=3Darch/x86/boot/compressed arch/x86/=
boot/compressed/vmlinux
>   llvm-nm vmlinux | sed -n -e 's/^\([0-9a-fA-F]*\) [ABCDGRSTVW] \(_text\|=
__bss_start\|_end\)$/#define VO_ _AC(0x,UL)/p' > arch/x86/boot/compressed/.=
./voffset.h
>   clang -Wp,-MMD,arch/x86/boot/compressed/.misc.o.d -nostdinc -isystem /u=
sr/lib/llvm-11/lib/clang/11.0.0/include -I./arch/x86/include -I./arch/x86/i=
nclude/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/includ=
e/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./inc=
lude/linux/kconfig.h -include ./include/linux/compiler_types.h -D__KERNEL__=
 -Qunused-arguments -m32 -O2 -fno-strict-aliasing -fPIE -DDISABLE_BRANCH_PR=
OFILING -march=3Di386 -mno-mmx -mno-sse -ffreestanding -fno-stack-protector=
 -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-ma=
p=3D./=3D -fno-asynchronous-unwind-tables    -DKBUILD_MODFILE=3D'"arch/x86/=
boot/compressed/misc"' -DKBUILD_BASENAME=3D'"misc"' -DKBUILD_MODNAME=3D'"mi=
sc"' -D__KBUILD_MODNAME=3Dmisc -c -o arch/x86/boot/compressed/misc.o arch/x=
86/boot/compressed/misc.c
>   llvm-objcopy  -R .comment -S vmlinux arch/x86/boot/compressed/vmlinux.b=
in
>   arch/x86/tools/relocs vmlinux > arch/x86/boot/compressed/vmlinux.relocs=
;arch/x86/tools/relocs --abs-relocs vmlinux
> Invalid absolute R_386_32 relocation: KERNEL_PAGES
> make[2]: *** [arch/x86/boot/compressed/Makefile:134: arch/x86/boot/compre=
ssed/vmlinux.relocs] Error 1
> make[2]: *** Deleting file 'arch/x86/boot/compressed/vmlinux.relocs'
> make[1]: *** [arch/x86/boot/Makefile:115: arch/x86/boot/compressed/vmlinu=
x] Error 2
> make: *** [arch/x86/Makefile:268: bzImage] Error 2


Kind regards,

Paul



[1]: https://github.com/samitolvanen/linux/tree/clang-lto

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/671d8923-ed43-4600-2628-33ae7cb82ccb%40molgen.mpg.de.
