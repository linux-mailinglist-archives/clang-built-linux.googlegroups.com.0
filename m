Return-Path: <clang-built-linux+bncBCIO53XE7YHBBUWWSX3AKGQETTUN3RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id B24121DBBAE
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:39:31 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id t13sf3111048plo.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:39:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589996370; cv=pass;
        d=google.com; s=arc-20160816;
        b=NGkAKKGx0hCBiNHDPmqlK9IEWegfEQlfdC9wgLuG5sbKNJ2xjEPcfhKoOkNUm7bioJ
         XaidBFWRH5K/Ohn1402PcRNdnx3OSjPwdVpvI6GeWdIOHeOQOCxRgdhTeUllUr8+0CcB
         93WydhMuOfg7aB6yAfZrQfvzrsg/sOYuYsTJFAv/cR2X+Ju6FeIavIUiPQXTex2b98FS
         jFQC6PYkSh1hKRj960i6DwidaVSP467Z11fN51dsQjsCsjQPEdHP/d+XUQ4fkWn3NRcV
         KxBoAohKy4NUcsiMU0KH82a+BRXpuVI52UW1m4WZoPAWvJtXGxFLonzXHG5iD94Mfw3M
         deJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=El24b1l+mbYm+xK27edD0loefaJ90jlZJBkOEa9jW48=;
        b=pENeZxEKGhR0b4LuTwR1/W7EO1EmbWtzBflNfewPxbfsnwIodZpLoLFuUpFoq0t+7C
         6I3syBnuS3RJ/qjDEHXkGasATeNND/3n6uoiAWJ6HSE356sYFciKYRaAY3w10K8N+pCb
         bdWGjR+PemTDXfYgYZfti94g4O/Spe/BWb+LL0hPuv9ZeCFvGrLeGZVEKuEr1h9RC/cZ
         kcNvMbQTabrm/cEwRW5cB1NKWLOTj/8XHEyxgaYF4R7kluz/zoJZy2lHx9j1gUFfPrxY
         jsujFL4JC/7w4a0L1pn+0FSLdN0nExrNYFRLf6/WyIfHAU/y7DfZYBi02qJyhQNfDD1a
         0cWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ribA4iwK;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=El24b1l+mbYm+xK27edD0loefaJ90jlZJBkOEa9jW48=;
        b=WgVzFEAA7YzUZrxrp0dpWnikF/4rC4kOwitGhzofM1qyX4ByPklVsS6CgLSlMO9wdp
         scf7gONTD7J+hU2P71VvQ79Q3NYXJmwtLs2hu5QYMO5oppiPn7sXnfQF6jl7BHEYc4gx
         HyrcEzyjUnh7CjWL3SYZK0mbPLO2LRRFY43LW1iWQvtJyWyrymq8jb8FN3EIGQZtV0Fe
         RfHUpu56ZtkrOoRy4Efw3n9o+RCsFvGdxRQ6LBWyUwrsYsW6uy5hrMxUidY+H3sSGrDa
         JcTYye0zSXivhrKaf0QF1sMsvV9yBszZIIl7rAViiHA+D+RyyyvGBmV+j6O5PD+dFmC6
         jYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=El24b1l+mbYm+xK27edD0loefaJ90jlZJBkOEa9jW48=;
        b=cBB8NnCmtzrP9xgmjpGe9NWIMvr7E1SSscXnETFgA0JHp/KHFM7tRqmU0pQ11CdZoQ
         4hmhg49DzGOuXOlAhPjiYuos082OQcDoZYlEH05SUomc9t9tRywuuBnfL7GY/S3ySzsD
         AZV8uS4PxeuOYU1l6w0tV7N9htUhl/cFPvOIdShBx3lywkkpJri4VKjUjDgzayu79DGv
         Gs/c3e3efb+ya6GckOZ0QAF0/AwzOnAsr8ZOGFpOEQHAYHPBE4abmh9Mo4nqH1JYWPL8
         4Vxl23TSm+qLYvU8yM7KtS+lklz0YoexExRD3HERTkiKiY4fZyPiU3xK//X1g8CNoOLp
         5a7w==
X-Gm-Message-State: AOAM532zB7zLYdimlS2ilM4bvrMAy2U8U+6fFHSu4dqnoYAdcVE0KHWZ
	YH/BKF6TCKj2D9kQASPv7ps=
X-Google-Smtp-Source: ABdhPJwzk6Te2BmRmTGUePOMfnMRPqpRLhbqQatJaFk6OCsf9dvrVbjVdgqstTH0zo41hKIez7bbDA==
X-Received: by 2002:a17:90a:730a:: with SMTP id m10mr7054659pjk.9.1589996370192;
        Wed, 20 May 2020 10:39:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d95:: with SMTP id v21ls1266236plo.3.gmail; Wed, 20
 May 2020 10:39:29 -0700 (PDT)
X-Received: by 2002:a17:902:b203:: with SMTP id t3mr5758991plr.129.1589996369610;
        Wed, 20 May 2020 10:39:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589996369; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+ExYgUb1GuNYPzonSKT58IvqQRNjVnejT+FWAJYtJbMcoKziOqIX62aPWLwagHSRf
         zcG4jo0JduzkZbB4yyy4oa6DKz9J2mjJm68U4MRnl/hHjqhQg1czWE8ElrUp4kKJubde
         jsHfrLGYPjT9eMozDuxwKO7/awsHKfwR19Mz4CDTSYCMeelgO0w+LoEo4DojkoqbRDQi
         ZjnG8CTxqahRjTzX3sDbQ6sl6o3xPd+bZOt9h1xtHF4u2bAmkRptAq8pRsdJYWeu3wYG
         tXiPviLKKlB3NTK1zvvqd8ra7yPP8ZGZ891eI43EuPUdhaptP4lAFKvUgup7FXLIy2+4
         biVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=V+t3vMM5V96WZlfgqLc5Cx1qm2TTvT+NmXk11xZ683A=;
        b=ii+vhAV/qMlyRInaJlzMDlgBwgOUX17vj3ne54hTbjOCrlOo+WePJkG3nkzL0PCd/E
         rcgoQ1o0p2ewjnie1l/7ITkJvWQWZWC7MxhsG88ZEN59jOn7cAf5/Ln1ovvFWMCql4EE
         udNmJ4iAMKbDBCmKEwzeTwjVl1DBMB9UW//DeStpbkHJbBzJe5wTNx/vHB8BPovbDSl2
         JieIksAN6vGGmOU45EVfdFRq8i87H0pzmtne99IZcko73zpxd3Y/ojeyTDEE83gnH7HM
         b3akRPGrmKK4+SMZ+bDpOJtLiZvrvb1tNT5j0kMSHiy3xOkuBSeSuB2dbhNBQFJTT/pZ
         8Y+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ribA4iwK;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id s12si318691pfh.5.2020.05.20.10.39.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 10:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id i68so3242363qtb.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 10:39:29 -0700 (PDT)
X-Received: by 2002:aed:3f8c:: with SMTP id s12mr6697962qth.248.1589996368687;
        Wed, 20 May 2020 10:39:28 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 9sm2824334qko.29.2020.05.20.10.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 10:39:28 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 20 May 2020 13:39:26 -0400
To: Fangrui Song <maskray@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-efi <linux-efi@vger.kernel.org>
Subject: Re: [efi:next 22/40] ld.lld: warning:
 vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32
 against symbol ''
Message-ID: <20200520173926.GA3365034@rani.riverdale.lan>
References: <202005201012.pqmB8hA5%lkp@intel.com>
 <20200520155352.GB3184088@rani.riverdale.lan>
 <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
 <20200520173425.ovn4kvv2cvkdlrnn@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200520173425.ovn4kvv2cvkdlrnn@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ribA4iwK;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, May 20, 2020 at 10:34:25AM -0700, Fangrui Song wrote:
> On 2020-05-20, Ard Biesheuvel wrote:
> >On Wed, 20 May 2020 at 17:53, Arvind Sankar <nivedita@alum.mit.edu> wrot=
e:
> >>
> >> On Wed, May 20, 2020 at 10:28:13AM +0800, kbuild test robot wrote:
> >> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git =
next
> >> > head:   e5fbadd1179cdadeaa44d71a9ec068c5bc100524
> >> > commit: ce5e3f909fc0ed67e58367b9c56a54c20a51080b [22/40] efi/printf:=
 Add 64-bit and 8-bit integer support
> >> > config: x86_64-defconfig (attached as .config)
> >> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project=
 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> >> > reproduce:
> >> >         wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
> >> >         chmod +x ~/bin/make.cross
> >> >         # install x86_64 cross compiling tool for clang build
> >> >         # apt-get install binutils-x86-64-linux-gnu
> >> >         git checkout ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> >> >         # save the attached .config to linux build tree
> >> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Dx86_64
> >> >
> >> > If you fix the issue, kindly add following tag as appropriate
> >> > Reported-by: kbuild test robot <lkp@intel.com>
> >> >
> >> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >> >
> >> > >> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-A=
BS relocation R_X86_64_PC32 against symbol ''
> >> >
> >> > ---
> >> > 0-DAY CI Kernel Test Service, Intel Corporation
> >> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >>
> >> Clang folk, is anything actually wrong here? This seems to result from
> >> use of unreachable() annotation, which generates these
> >> .discard.unreachable sections apparently to help objtool.
> >>
> >
> >This came up before, and IIRC, it has already been fixed, only this
> >branch is based on v5.7-rc2.
>=20
> LLD reports the diagnostic because a PC-relative relocation referencing a
> SHF_ALLOC section from a non-SHF_ALLOC section (.discard.unreachable) can=
not be
> reasonably represented. A non-SHF_ALLOC section is not part of the memory=
 image, thus conceptually
> the distance between a non-SHF_ALLOC and a SHF_ALLOC is not a constant wh=
ich can be resolved at linktime.
> This is actually a nice diagnostic which has caught a number of issues.
>=20
> % readelf -Wr drivers/firmware/efi/libstub/vsprintf.stub.o
> ..
> Relocation section '.rela.discard.unreachable' at offset 0xe38 contains 1=
 entry:
>      Offset             Info             Type               Symbol's Valu=
e  Symbol's Name + Addend
> 0000000000000000  0000000600000002 R_X86_64_PC32          000000000000000=
0 .text + ac0
>=20
> ---
>=20
> The linker command line is:
>=20
> % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds arch/x86/b=
oot/compressed/kernel_info.o arch/x86/boot/compressed/head_64.o arch/x86/bo=
ot/compressed/misc.o arch/x86/boot/compressed/string.o arch/x86/boot/compre=
ssed/cmdline.o arch/x86/boot/compressed/error.o arch/x86/boot/compressed/pi=
ggy.o arch/x86/boot/compressed/cpuflags.o arch/x86/boot/compressed/early_se=
rial_console.o arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/ka=
slr_64.o arch/x86/boot/compressed/mem_encrypt.o arch/x86/boot/compressed/pg=
table_64.o arch/x86/boot/compressed/acpi.o drivers/firmware/efi/libstub/lib=
.a arch/x86/boot/compressed/efi_thunk_64.o -o arch/x86/boot/compressed/vmli=
nux
> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS reloc=
ation R_X86_64_PC32 against symbol ''
>=20
> arch/x86/boot/compressed/vmlinux has an output section .discard.unreachab=
le , which is likely desired.

You mean /not/ desired, right?

>=20
> Note that arch/x86/kernel/vmlinux.lds.S has an output section description=
 /DISCARD/ : { ... *(.discard.*) ... },
> but arch/x86/boot/compressed/vmlinux doesn't.
>=20
> We can let arch/x86/boot/compressed/vmlinux reuse the /DISCARD/ to fix th=
e issue.

Yep.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520173926.GA3365034%40rani.riverdale.lan.
