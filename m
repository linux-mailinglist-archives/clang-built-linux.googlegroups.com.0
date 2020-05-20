Return-Path: <clang-built-linux+bncBCS7XUWOUULBBKGUSX3AKGQE6BA3PGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id C92411DBB92
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:34:33 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id p81sf3345598ill.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:34:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589996072; cv=pass;
        d=google.com; s=arc-20160816;
        b=LAiTmClZs/h3GAfjNCMpTqVZtvNdta44vbARhEPLdSOuEmRuNmffa7n6escU99YuYA
         HsvD1/yYHcXpqA8KLAN3obHFUe/xfcuQynThgbHePO3Dwl3yani+LQZLQWRfYe5L4hrJ
         07DVJe5AjmZxY4UZhrBtpgegQLPJACEI9f8OK84hoTfG0tga7IQ38qQk0yNljD0csW8+
         V5Esd+WX6nK/QybrIR+vOQlDSJcxJ11rLzv8/Q1kDf2hf66qeK2RTl2pgjtsClaxQcnJ
         fwbRnSSzEj1AKRZHT26UqaX/mA7Zua1ifZvkgvn/E+WOCQsUyI5zivIlihCpAXJHuOfh
         uSlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:reply-to
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e7TKOddAxBNAMJclyyFoj+IPsaxoKC4hbsesZBCymGE=;
        b=edEc5gRmxyJG+YzMJ8lO0rN2yiin0uZhRyq+6HRU6l6i/nc+kZLtaHu1vRksv7x0XD
         W7HYysEu0CGk+ot5YBtQbrYpW0vnJYOYXSSaRGPQhN2a80zmT63ZoCg9U/f/ypggdqwo
         9p9BaRax1EQBck/89hMW+/XX625wDEjgVLyo33IxEix3rx9UCqtqcMoD/+yZ+aSAfjdZ
         N39LWsnWYfARai+im5ilbKkGIMPtOzx2HdviP5iRLbqAqskSvN6aMB9FaorHL0k3Vsz4
         ZNhPXKgyvxscIys6kMHhpf0vG/J/frClqGvCkBrXXl1F1tgCuZG0hnXteCRS6MnIUWmG
         0veQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q5ys3q2p;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e7TKOddAxBNAMJclyyFoj+IPsaxoKC4hbsesZBCymGE=;
        b=JSfynYze0ulZ0y22g0VwgoHnB3ApV3xI4nfyRzTHaGlB4K07lNM6qQMMtRi0oZ/YaT
         4a7YVOje2LpYT0MUI+SYuM6DQcVBA83X7/3Z9rf8lnfpDZ4QdYMZscX3f/+Tb0TED7YO
         WGG74xPPqOwqEzeKFX8kcXLWOWz3NAPSYFJAILE/0yqg5YgZm70+tS/wq5yT5qsUW2eu
         IjcFINuB955SqPlETEyD1Ub4Bbifrb0k1EzBG964mkJDm6xUErNLdJbGI8KzaF7whUjF
         7z84tGnGVvc60vSCtRpMz86cX/5uYEj867mJHXgEKZCiYY5GT8ztij0dpRMvjCqhKc0W
         M5Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e7TKOddAxBNAMJclyyFoj+IPsaxoKC4hbsesZBCymGE=;
        b=dmWEqZF4MvUBkWzZujmND3PsoFFcDpR5P+sKsIkhxnlJw9c2MIY1acPXH6jCqk1SW5
         TWMd97Yl4aM93rxUD9U+265luTKL9HHMamNiLjSIVF8R0iMAtck5iBDxMhejRfVpWGHW
         ADRF/xR2cfvYTGp+OA2vuS16MDSwNpBWY4/Xf/gIt/Sg56ROImpbC09Uxffqkg/SpIiX
         P493XZAxOviB+IlQtXRkItQQqtutXkBFcswLJePDDR36Rd/2MEhfzl6gMeoKpkoaeIxJ
         8MbiLC4pUHZhbkt4eiw20KJolpdvBx1Eq4ueGbpSg/oZx21RPhMo87xQkopI9jLpUw/w
         q0JA==
X-Gm-Message-State: AOAM5307YzOkbwsAyVUg7Tls57+JHqUgEsXFRRW86JxNZkV9ERUCnFLF
	AHXaRtYcQNTHyneXC/4Yg/c=
X-Google-Smtp-Source: ABdhPJy5qIusolSJtgR4omo1qUuOFZ001rDp2RJogwPpq0GLUm4epHkdXXOTu4N/6iOj9HUwjoVM/Q==
X-Received: by 2002:a6b:5d08:: with SMTP id r8mr4312383iob.180.1589996072540;
        Wed, 20 May 2020 10:34:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c889:: with SMTP id w9ls964421ilo.4.gmail; Wed, 20 May
 2020 10:34:32 -0700 (PDT)
X-Received: by 2002:a92:2413:: with SMTP id k19mr2544966ilk.8.1589996072139;
        Wed, 20 May 2020 10:34:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589996072; cv=none;
        d=google.com; s=arc-20160816;
        b=GhmpTPEnvQuCghpEHxcvUrUEBNA0XJjYykYHDgeT4rVYYDlShTnXd6Bc3oM6IOhZ2Z
         RTAh0+L3/abLyaGQQC4Qq1vwUM0irOarTC7aCerD7PbipkZwAgu/sV//Xfg72TWyIoxT
         k2CgLo9bUt5XZCtxi0gehcOQAGbL4tBFf/CNLoJe74i4LuI9pFIyQia5OF2FAU5wXYDQ
         5NT0qJ5PjxRq75gbr9MqXKyzNvWVDKLLrq4NeBC8ZCvRwZ+sT5oq3uXw6pKFSbEDRvjD
         BRwqe2F2JFFseEhFFe/hs3H0hW0IwvORdIwkc5LPHA4jxk8fLeiv9qghBWcaIHn7wwMs
         OASA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ly7q46A/YW7cTJNS8aaCsg5FPCDHrwS4jRDbS+IUhyI=;
        b=lJMWXLVRc/9FbN4hptX5mIOQAGdrdNGj03rvjbrZUBsaCl/nHHloF3lO0G0N6O6kzs
         MQkH/ZcRfLZTdEX8AKYxrQGswwq2Bd6DE5yF+aCfdYCJvkO6yNdcTsrpY9WcQau1m48a
         m/XWIdp5MYkJap3wG7YvIXa/etQAxDBEkvmnuoP9CbI3vSDfoarHfAmmkOq1pQ3iKf31
         b7QbFbwOH5ke20iJM6BG6sPJ6Hdg2dvtW0Cf+mIvUDEVudp3re/Ta2NatR/tWTTL7ukr
         mdlLhR3i0q3Tp7GV4lfZ5vaIujhlIeB0OQh15aciFrspimbiRzG0C0tlddJmYMxXZJBs
         IUwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q5ys3q2p;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 2si220260iox.0.2020.05.20.10.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 10:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id k7so1631507pjs.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 10:34:32 -0700 (PDT)
X-Received: by 2002:a17:902:b217:: with SMTP id t23mr3107621plr.183.1589996071167;
        Wed, 20 May 2020 10:34:31 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id kx6sm2513543pjb.49.2020.05.20.10.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 10:34:30 -0700 (PDT)
Date: Wed, 20 May 2020 10:34:25 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-efi <linux-efi@vger.kernel.org>
Subject: Re: [efi:next 22/40] ld.lld: warning:
 vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32
 against symbol ''
Message-ID: <20200520173425.ovn4kvv2cvkdlrnn@google.com>
References: <202005201012.pqmB8hA5%lkp@intel.com>
 <20200520155352.GB3184088@rani.riverdale.lan>
 <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q5ys3q2p;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
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

On 2020-05-20, Ard Biesheuvel wrote:
>On Wed, 20 May 2020 at 17:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>>
>> On Wed, May 20, 2020 at 10:28:13AM +0800, kbuild test robot wrote:
>> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git ne=
xt
>> > head:   e5fbadd1179cdadeaa44d71a9ec068c5bc100524
>> > commit: ce5e3f909fc0ed67e58367b9c56a54c20a51080b [22/40] efi/printf: A=
dd 64-bit and 8-bit integer support
>> > config: x86_64-defconfig (attached as .config)
>> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1=
35b877874fae96b4372c8a3fbfaa8ff44ff86e3)
>> > reproduce:
>> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
>> >         chmod +x ~/bin/make.cross
>> >         # install x86_64 cross compiling tool for clang build
>> >         # apt-get install binutils-x86-64-linux-gnu
>> >         git checkout ce5e3f909fc0ed67e58367b9c56a54c20a51080b
>> >         # save the attached .config to linux build tree
>> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Dx86_64
>> >
>> > If you fix the issue, kindly add following tag as appropriate
>> > Reported-by: kbuild test robot <lkp@intel.com>
>> >
>> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
>> >
>> > >> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS=
 relocation R_X86_64_PC32 against symbol ''
>> >
>> > ---
>> > 0-DAY CI Kernel Test Service, Intel Corporation
>> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>> Clang folk, is anything actually wrong here? This seems to result from
>> use of unreachable() annotation, which generates these
>> .discard.unreachable sections apparently to help objtool.
>>
>
>This came up before, and IIRC, it has already been fixed, only this
>branch is based on v5.7-rc2.

LLD reports the diagnostic because a PC-relative relocation referencing a
SHF_ALLOC section from a non-SHF_ALLOC section (.discard.unreachable) canno=
t be
reasonably represented. A non-SHF_ALLOC section is not part of the memory i=
mage, thus conceptually
the distance between a non-SHF_ALLOC and a SHF_ALLOC is not a constant whic=
h can be resolved at linktime.
This is actually a nice diagnostic which has caught a number of issues.

% readelf -Wr drivers/firmware/efi/libstub/vsprintf.stub.o
..
Relocation section '.rela.discard.unreachable' at offset 0xe38 contains 1 e=
ntry:
     Offset             Info             Type               Symbol's Value =
 Symbol's Name + Addend
0000000000000000  0000000600000002 R_X86_64_PC32          0000000000000000 =
.text + ac0

---

The linker command line is:

% ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds arch/x86/boo=
t/compressed/kernel_info.o arch/x86/boot/compressed/head_64.o arch/x86/boot=
/compressed/misc.o arch/x86/boot/compressed/string.o arch/x86/boot/compress=
ed/cmdline.o arch/x86/boot/compressed/error.o arch/x86/boot/compressed/pigg=
y.o arch/x86/boot/compressed/cpuflags.o arch/x86/boot/compressed/early_seri=
al_console.o arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kasl=
r_64.o arch/x86/boot/compressed/mem_encrypt.o arch/x86/boot/compressed/pgta=
ble_64.o arch/x86/boot/compressed/acpi.o drivers/firmware/efi/libstub/lib.a=
 arch/x86/boot/compressed/efi_thunk_64.o -o arch/x86/boot/compressed/vmlinu=
x
ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocat=
ion R_X86_64_PC32 against symbol ''

arch/x86/boot/compressed/vmlinux has an output section .discard.unreachable=
 , which is likely desired.

Note that arch/x86/kernel/vmlinux.lds.S has an output section description /=
DISCARD/ : { ... *(.discard.*) ... },
but arch/x86/boot/compressed/vmlinux doesn't.

We can let arch/x86/boot/compressed/vmlinux reuse the /DISCARD/ to fix the =
issue.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520173425.ovn4kvv2cvkdlrnn%40google.com.
