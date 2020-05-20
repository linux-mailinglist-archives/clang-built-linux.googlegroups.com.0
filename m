Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYXMSX3AKGQEY5WFDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C4E1DBCC9
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 20:26:44 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id a85sf3202979pfa.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 11:26:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589999203; cv=pass;
        d=google.com; s=arc-20160816;
        b=IDX8YM9E3R2pi73/yMIDRIjKlJl61vh4FOjhN/OqTjHgLhF9DL6UKKEe5hIZ3qRjRJ
         WzhZnavARbZ60Bijixwjz+daa7zlwHSIaz2E+rwvv1LcU5R0pgLo3whldiSGO7fxSSwF
         yIzS0yBLTVINksoigbDv1oi19ejWSjRgzg8KukNfhMyZRzKKWkC3lIRDAZ4jc7PWFdV0
         QmadUTYpqjzwocPPD2bRg6FFq+w5dp/y5a1a8WB6cH2LtdZu7thTZ4EiTy0wLqIXM7Lf
         UZ/DvpI8KuIFvNfZWj4jc/37khxTrKTFE6oM+qRItHGTqHxKm/Te4/PQgHrqFIcVGb3u
         HuUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:reply-to
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Nk6+OV0W9fQRBPQF+4Le7rc3L7CiCYYfFiTvwCEJG0o=;
        b=dZyOE880+89ybC0DRqiJSaUwuozVzmTHQI5L+tiurpSFaRV4dtyENeEcF8NUC7qA4X
         0qWFw0Waq3V3jrHV2il6374DknhijMsBzgW+o740ebWWVAdnILFswzqviM0Mkh5+Vyav
         +ipw7+Nho1/RFo2h305V2ggniX9oGZ05EqgSeNdFu7qEtPDbsCzOCrUvSyBRVCQwUg3+
         YCUNEtcmhV5NLSjMzHbpO5yJul1xuKkk2pjTr/ISIh+zZDfarqxYvrVM15T7YNnsV0r4
         0kLZK2/pKNZvqfR2Bgysm8240oU+4jJ5WqLcK98/BECOMILkLNJc14O8LjTEjPeNGfWh
         Q5UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hY+MhIAB;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nk6+OV0W9fQRBPQF+4Le7rc3L7CiCYYfFiTvwCEJG0o=;
        b=GgNsyfyF+VQkuW0494FzK9gmwh8qd6hoUoFRPwHMyvGDX55aMh8SuihmPHTtDOxaYa
         nOOVDr47bEJGR2HzapI6uILoDtD2+LIeoSQK8yI0/egboG/4N7Xz/cA7yL/w+gdRc+Qj
         3AHEcM3TsyrElTcj6aLe9yhkU6lhBVdpCXAcTqc3K4JW6TzbMOclkY3MPUAIHFPb1DGs
         3dDdSr//bpdDRUGTQv0B49rFwgX2pw24ozewq2YGObKGr4brchgVKELb1QlnrU6eFI4p
         ZfgsAYT2WKxtAOr4L4lJqB1ukvvQ+eCQN9GTOT0TUztrTqlQlI+fi0eWd7aQjwHkexu1
         n+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nk6+OV0W9fQRBPQF+4Le7rc3L7CiCYYfFiTvwCEJG0o=;
        b=lmEdzJ9P59fSITn6R0riHLOslP+cAVX7TMooeh49b7L4srh5hWH8kpyEftzn4VEAat
         CLzU/2zLUIZJ2cB4ZLSgNCpjoo5w9VEVkziOHYsom79bZwKHOZl8Hn422fu3QW8H7Eji
         Ca5WrRXE6CiXyeRlxkICdD7AiAi3X6c/47atJfwGhmxIaHxC9piFhQhefoA23ASbWT6B
         20dNy4MjLFK5uqtkZ/3WPF1mIeAM1gMVv7MK3Fkg/svqyIBsIPJTZ1XP+fR9C99RlGEk
         CixLFT2909ETrbWFjh+fLFJMbcu43rtSyYs1iURyW26lW8AFX+1OK7ht9LJ38h4P9546
         Y9Bw==
X-Gm-Message-State: AOAM532qVDM3iXQi1Ym9vxE/+ChnuHUNsk2+7FpiNA2wLGEQr/nxc6d8
	LSjsMYIfqb7pNhPplWNARM4=
X-Google-Smtp-Source: ABdhPJwRbLQXl5B5ipHXAmbt5YxrfwgltCbXGVCIUMbFHZHHAOOFrKoce2QQUHrwz74FxB5N7uZDLQ==
X-Received: by 2002:a17:902:c410:: with SMTP id k16mr6022358plk.10.1589999202821;
        Wed, 20 May 2020 11:26:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c38e:: with SMTP id h14ls1861240pjt.1.canary-gmail;
 Wed, 20 May 2020 11:26:42 -0700 (PDT)
X-Received: by 2002:a17:902:690c:: with SMTP id j12mr5936808plk.5.1589999202375;
        Wed, 20 May 2020 11:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589999202; cv=none;
        d=google.com; s=arc-20160816;
        b=Knslnjg92BrK/lpIax1GIO2H9A8IYl60X+eghAzNWyivGbHNC44wg39GfAI6oJozGH
         hkOs1hhE5mbtbnudR0I5QQcGUPKsYIse/06UP8/vxjUecFwgYWepb75Sv6TImSa/Uz5u
         4EQNpb323AFJbKWesAehGVJ4r+A3mbliGklOeDpMw/IWAA4hggOxFcT9zRQ/BMeC16fj
         C19gI8YWnns3uBymsCDEjsrIS0hkKW+br4aJqjBqLdTF8geZns9Cm8eDusx3hkakWo9P
         TeQ3zgyEtaK3NL5UQRfGM8Kkq+A/LOHFStdjT5FwvfVR1aJ27r5HZkPiafhRGLYds2Kv
         iELg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gmTRxn2yiC/GCHZxivAn5VqkLhuGYHAhN/MaTk/EAtQ=;
        b=a1t/0dP8XqVxwounSH77M+clmuYvpKVo6iESxtrSjbgboVr22C+o5LJd3AhVjBL4lJ
         hYAr2DbeIC6iFwA/hQGvbAKH0ov5O7/Bz+jQ5hhnzffDh966jYU1UFV9KmYHv/bJFrEm
         YqW2U20afB5PpNU5dbTS8wGtCd0SSvIbEty+Ql5CQg4SNi7QF5bxC+uvEljuSU3NOZjK
         54fo+Wc8PC85LVtSj/4kS9v4ipaEK9G8BaAVl760jQ+3Cfo8uA8rPNLKFImdyqKG7nFC
         YVmIiSFqgB6iWmvfPjIaj+1WdE0xQDSo+evsROLmZy/ozDtSafHniCFrgL/6iHFmjHji
         xi5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hY+MhIAB;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e13si268402plq.3.2020.05.20.11.26.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 11:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id f6so1849686pgm.1
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 11:26:42 -0700 (PDT)
X-Received: by 2002:aa7:9510:: with SMTP id b16mr5641145pfp.265.1589999201799;
        Wed, 20 May 2020 11:26:41 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id m43sm2702285pje.16.2020.05.20.11.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 11:26:41 -0700 (PDT)
Date: Wed, 20 May 2020 11:26:36 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, kbuild test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-efi <linux-efi@vger.kernel.org>
Subject: Re: [efi:next 22/40] ld.lld: warning:
 vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32
 against symbol ''
Message-ID: <20200520182636.jnnobtrcwmksb3tf@google.com>
References: <202005201012.pqmB8hA5%lkp@intel.com>
 <20200520155352.GB3184088@rani.riverdale.lan>
 <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
 <20200520173425.ovn4kvv2cvkdlrnn@google.com>
 <20200520173926.GA3365034@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200520173926.GA3365034@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hY+MhIAB;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-05-20, Arvind Sankar wrote:
>On Wed, May 20, 2020 at 10:34:25AM -0700, Fangrui Song wrote:
>> On 2020-05-20, Ard Biesheuvel wrote:
>> >On Wed, 20 May 2020 at 17:53, Arvind Sankar <nivedita@alum.mit.edu> wro=
te:
>> >>
>> >> On Wed, May 20, 2020 at 10:28:13AM +0800, kbuild test robot wrote:
>> >> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git=
 next
>> >> > head:   e5fbadd1179cdadeaa44d71a9ec068c5bc100524
>> >> > commit: ce5e3f909fc0ed67e58367b9c56a54c20a51080b [22/40] efi/printf=
: Add 64-bit and 8-bit integer support
>> >> > config: x86_64-defconfig (attached as .config)
>> >> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-projec=
t 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
>> >> > reproduce:
>> >> >         wget https://raw.githubusercontent.com/intel/lkp-tests/mast=
er/sbin/make.cross -O ~/bin/make.cross
>> >> >         chmod +x ~/bin/make.cross
>> >> >         # install x86_64 cross compiling tool for clang build
>> >> >         # apt-get install binutils-x86-64-linux-gnu
>> >> >         git checkout ce5e3f909fc0ed67e58367b9c56a54c20a51080b
>> >> >         # save the attached .config to linux build tree
>> >> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cr=
oss ARCH=3Dx86_64
>> >> >
>> >> > If you fix the issue, kindly add following tag as appropriate
>> >> > Reported-by: kbuild test robot <lkp@intel.com>
>> >> >
>> >> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
>> >> >
>> >> > >> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-=
ABS relocation R_X86_64_PC32 against symbol ''
>> >> >
>> >> > ---
>> >> > 0-DAY CI Kernel Test Service, Intel Corporation
>> >> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>> >>
>> >> Clang folk, is anything actually wrong here? This seems to result fro=
m
>> >> use of unreachable() annotation, which generates these
>> >> .discard.unreachable sections apparently to help objtool.
>> >>
>> >
>> >This came up before, and IIRC, it has already been fixed, only this
>> >branch is based on v5.7-rc2.
>>
>> LLD reports the diagnostic because a PC-relative relocation referencing =
a
>> SHF_ALLOC section from a non-SHF_ALLOC section (.discard.unreachable) ca=
nnot be
>> reasonably represented. A non-SHF_ALLOC section is not part of the memor=
y image, thus conceptually
>> the distance between a non-SHF_ALLOC and a SHF_ALLOC is not a constant w=
hich can be resolved at linktime.
>> This is actually a nice diagnostic which has caught a number of issues.
>>
>> % readelf -Wr drivers/firmware/efi/libstub/vsprintf.stub.o
>> ..
>> Relocation section '.rela.discard.unreachable' at offset 0xe38 contains =
1 entry:
>>      Offset             Info             Type               Symbol's Val=
ue  Symbol's Name + Addend
>> 0000000000000000  0000000600000002 R_X86_64_PC32          00000000000000=
00 .text + ac0
>>
>> ---
>>
>> The linker command line is:
>>
>> % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds arch/x86/=
boot/compressed/kernel_info.o arch/x86/boot/compressed/head_64.o arch/x86/b=
oot/compressed/misc.o arch/x86/boot/compressed/string.o arch/x86/boot/compr=
essed/cmdline.o arch/x86/boot/compressed/error.o arch/x86/boot/compressed/p=
iggy.o arch/x86/boot/compressed/cpuflags.o arch/x86/boot/compressed/early_s=
erial_console.o arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/k=
aslr_64.o arch/x86/boot/compressed/mem_encrypt.o arch/x86/boot/compressed/p=
gtable_64.o arch/x86/boot/compressed/acpi.o drivers/firmware/efi/libstub/li=
b.a arch/x86/boot/compressed/efi_thunk_64.o -o arch/x86/boot/compressed/vml=
inux
>> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relo=
cation R_X86_64_PC32 against symbol ''
>>
>> arch/x86/boot/compressed/vmlinux has an output section .discard.unreacha=
ble , which is likely desired.
>
>You mean /not/ desired, right?

You are right:) I meant "undesired"

>
>>
>> Note that arch/x86/kernel/vmlinux.lds.S has an output section descriptio=
n /DISCARD/ : { ... *(.discard.*) ... },
>> but arch/x86/boot/compressed/vmlinux doesn't.
>>
>> We can let arch/x86/boot/compressed/vmlinux reuse the /DISCARD/ to fix t=
he issue.
>
>Yep.

git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git HEAD
does not have the warning.
https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git HEAD has the
warning.

Sent http://lore.kernel.org/r/20200520182010.242489-1-maskray@google.com
"[PATCH] x86/boot: Discard .discard.unreachable for arch/x86/boot/compresse=
d/vmlinux"
which should fix the problem.

I am still a kernel newbie. I set To: to you and both x86@kernel.org and
linux-efi@vger.kernel.org
Hope that is correct.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520182636.jnnobtrcwmksb3tf%40google.com.
