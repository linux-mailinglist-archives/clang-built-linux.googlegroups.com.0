Return-Path: <clang-built-linux+bncBCIO53XE7YHBBL6XSX3AKGQEC2GQABI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EDA1DBBB7
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:41:04 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id 5sf2509376ybe.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:41:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589996463; cv=pass;
        d=google.com; s=arc-20160816;
        b=r6ybeN2h3ydkmpg0RK6KJbWrv1z7lySyiMGytdxmMlPxHPfbLPWFEzDEU/DIE5NAO1
         9lcIBei+Li0bsYKHC/CMkv2G7jjK/8sqx7oIYALuwOOmf5L8lLt30zdVGOA0YLrHJ3OH
         kXGKRXMlu+SvD5p8oCti7ZJ2k5eZmLKLEQFNkoftFfF2pZhaLYkAJTSxJ1rXgaR6kzvg
         o0JUergmkHi74rGmTXxWdykkMhMC0tRVnhfGo3TfthcnjQxl/37ZG/4ruxaCxOI9mKoy
         vjMEY8J3h1E16PsRf+0K8+fyBgh68m4eIkN1f+NPjGf52wPMb8bqlm82CI2uspLUusNn
         YPAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=K5PPG2MY0Uz3KmLyrdrgUT/SlE/TWna7HIcsYHgGQHk=;
        b=gGdBs2EqhkLt2hQ1u/Y/7hAFv1+Ty79ve0ZjUcg/f1PIgejk0Rpdj60DYxqqZKBDqQ
         8N1ogU9s6vWRTG5+8SQ1aO0vrlD6JK4BpZ6IFFD1CWIpImlgzRSRRoBGjgdo7s29oyJ1
         XJrSbolTriB/VtXoNS8nUoOAcdTFnFf4LbYXKnUJCBCYfdmqzbhAJoIXyVyB6MXvGyIc
         E9n9vdD3RMbBLgShd+rwXFsrtRnxjBDcBucv5G5Ikq+Pm3PYk1Zl7p8ICktnoPyCE7gR
         7liNDcBJNxNSWSKcRVpkIoh1abqEFTazo4VbfXiQUutbi4iwv/j5508UA32lHmJQKDQ+
         1gUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=keV7XTh4;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5PPG2MY0Uz3KmLyrdrgUT/SlE/TWna7HIcsYHgGQHk=;
        b=uHIM7HQjuT0mBXCd+/z7FXsnj2KBARuNHou9Fq9bIY7OpEiBmqWAMGlOcVOCz7O/8T
         otsZ1pt6cnK2rL0Z+Ib06dILylnqAIZPXAVa3EpOOhOT9uX3RnQiq6R4htzU5wS4xsrN
         0+c1BVn5N2plVU+n7Su8CspoxcsGLJs0gPHWo5V9sDWt9k3qsR1pjaW8+giRyxDsfkFM
         a2TSPuy6txeJxpUvYGCftlqNWXqDPo4qKQ6RasOsSWYWq6cEQUaf0MnUReWOPa2QI5HG
         2P7zca4T4fulSWsZxVKVlowMfp1vv60jiff3M+m1jYpThKNcPpb5fQEUexxc6ouHfi/Q
         znLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5PPG2MY0Uz3KmLyrdrgUT/SlE/TWna7HIcsYHgGQHk=;
        b=A2WpLc309aRk/eqiqPips9Chs+37cIo5qgFMbB7zo7T8wWLJdywfsnJzwxDqYsbJZM
         XdjpJ4FeFyMzTPDHyKrEfqyW92QRSUWhWbWy7AhTPQO0HVCfQwP6uLPS+4rGdH/vCSZP
         RrpAQ32UxVOMN8oGrNviIXADh+fuZtgDB5Q08QDtzIOTYJzgyFvAc+HXoeBQ/pgDQco5
         4mzWzF7kdxm4iW6h6LFbQ0WvkuMDPxa3T2DrehsQaUV9cMWSHL62g3YfwUz5RjAPzYvp
         8h8CRcf0WmnYXQIVjxokZwjUuCFl2yP309HIgNeCQdTgDNgT/ppZoECFldDDAJcwmVFF
         DIzQ==
X-Gm-Message-State: AOAM5334ltBiBwjVzpa0k3OzMouG8+JSyFVkjCpX/w57wvH7h28nDoq7
	ItA4/mnBsubpsae2bsF2ah0=
X-Google-Smtp-Source: ABdhPJyFO89I+Aw5aCLokN4d2a/QCvC25B/tlPTCO99aT/BJOrZAiV3UVKCLPtc3jbILyA02Dkph7g==
X-Received: by 2002:a25:ce42:: with SMTP id x63mr9090949ybe.23.1589996463219;
        Wed, 20 May 2020 10:41:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be4d:: with SMTP id d13ls1418728ybm.2.gmail; Wed, 20 May
 2020 10:41:02 -0700 (PDT)
X-Received: by 2002:a25:f206:: with SMTP id i6mr9112533ybe.415.1589996462786;
        Wed, 20 May 2020 10:41:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589996462; cv=none;
        d=google.com; s=arc-20160816;
        b=0CzO3lRi9dzIwJQAFXX5J5pKZ+vvLMBE75hCIXS2JBNLXQOss+Hk8Q7MmUHJLz5JUr
         JRVJbISNhH8Y2a363RZRJJPZNTEONGcEd3P2yVKHqwm7RmIu8FZtgSvUNn4DlCybN17X
         BNB0JRTK9RxfxX0exwOkkf1lKahj1QkaVuZvB8AaTpC1vnuiFs4uQUaHLU2jX03SgkUJ
         dl6/xqCiGUjAjLqawqAgPkckLSrqSYW/OqPvZ9yeKAp7LVIcaf8KGLRl3xAlt1alsntJ
         ko21V3fdhbv+ZKxDjQPmDBHN7cfn/Ms8nw2cYm2BeHcWPXzEUpJjPEVGlyvCAjZgshrA
         wY2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=URcpVJ4JyI57kr8iGfQFjLThhOWvhbh5pUatdFl6RX0=;
        b=hfaMyE/c+LvEHkqJYr0M/zQeN+tyDwPsyxs7h6rKlGDXf2y/iUbioEJTC29V5Vx5ws
         g05z0GVTdwsgRCWoBbFk8z1ugD3feHfsOyv2A3hF+0XwFD69wnC+ObFhcEp1ks3L+UAd
         GBASp2h1BRHI5EzG58EmVKXkhYQ6yaZx/C0Ha+LWmjWrIDfQfSE3jxcCsjgIvqQsdOUW
         11f/WnrfpACW6yPJIBFbGHAlzik1XnqZiPEIsMv1ifZwfbVXBb5d9+yruxluPUXOEp5e
         xlMeZGWPmYXeOlxd6BVtLGK5DNSMjj7V1gQulR0IsHakmOw50h4JgQ6KbVdwVdRPpUVO
         eFSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=keV7XTh4;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id p85si180420ybg.4.2020.05.20.10.41.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 10:41:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id z80so4481887qka.0
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 10:41:02 -0700 (PDT)
X-Received: by 2002:a37:bd81:: with SMTP id n123mr5662348qkf.57.1589996462293;
        Wed, 20 May 2020 10:41:02 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 99sm2828391qte.93.2020.05.20.10.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 10:41:01 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 20 May 2020 13:41:00 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-efi <linux-efi@vger.kernel.org>
Subject: Re: [efi:next 22/40] ld.lld: warning:
 vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32
 against symbol ''
Message-ID: <20200520174100.GB3365034@rani.riverdale.lan>
References: <202005201012.pqmB8hA5%lkp@intel.com>
 <20200520155352.GB3184088@rani.riverdale.lan>
 <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
 <20200520173425.ovn4kvv2cvkdlrnn@google.com>
 <20200520173926.GA3365034@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200520173926.GA3365034@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=keV7XTh4;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
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

On Wed, May 20, 2020 at 01:39:26PM -0400, Arvind Sankar wrote:
> On Wed, May 20, 2020 at 10:34:25AM -0700, Fangrui Song wrote:
> > On 2020-05-20, Ard Biesheuvel wrote:
> > >On Wed, 20 May 2020 at 17:53, Arvind Sankar <nivedita@alum.mit.edu> wr=
ote:
> > >>
> > >> On Wed, May 20, 2020 at 10:28:13AM +0800, kbuild test robot wrote:
> > >> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.gi=
t next
> > >> > head:   e5fbadd1179cdadeaa44d71a9ec068c5bc100524
> > >> > commit: ce5e3f909fc0ed67e58367b9c56a54c20a51080b [22/40] efi/print=
f: Add 64-bit and 8-bit integer support
> > >> > config: x86_64-defconfig (attached as .config)
> > >> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-proje=
ct 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > >> > reproduce:
> > >> >         wget https://raw.githubusercontent.com/intel/lkp-tests/mas=
ter/sbin/make.cross -O ~/bin/make.cross
> > >> >         chmod +x ~/bin/make.cross
> > >> >         # install x86_64 cross compiling tool for clang build
> > >> >         # apt-get install binutils-x86-64-linux-gnu
> > >> >         git checkout ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> > >> >         # save the attached .config to linux build tree
> > >> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.c=
ross ARCH=3Dx86_64
> > >> >
> > >> > If you fix the issue, kindly add following tag as appropriate
> > >> > Reported-by: kbuild test robot <lkp@intel.com>
> > >> >
> > >> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >> >
> > >> > >> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non=
-ABS relocation R_X86_64_PC32 against symbol ''
> > >> >
> > >> > ---
> > >> > 0-DAY CI Kernel Test Service, Intel Corporation
> > >> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >>
> > >> Clang folk, is anything actually wrong here? This seems to result fr=
om
> > >> use of unreachable() annotation, which generates these
> > >> .discard.unreachable sections apparently to help objtool.
> > >>
> > >
> > >This came up before, and IIRC, it has already been fixed, only this
> > >branch is based on v5.7-rc2.
> >=20
> > LLD reports the diagnostic because a PC-relative relocation referencing=
 a
> > SHF_ALLOC section from a non-SHF_ALLOC section (.discard.unreachable) c=
annot be
> > reasonably represented. A non-SHF_ALLOC section is not part of the memo=
ry image, thus conceptually
> > the distance between a non-SHF_ALLOC and a SHF_ALLOC is not a constant =
which can be resolved at linktime.
> > This is actually a nice diagnostic which has caught a number of issues.
> >=20
> > % readelf -Wr drivers/firmware/efi/libstub/vsprintf.stub.o
> > ..
> > Relocation section '.rela.discard.unreachable' at offset 0xe38 contains=
 1 entry:
> >      Offset             Info             Type               Symbol's Va=
lue  Symbol's Name + Addend
> > 0000000000000000  0000000600000002 R_X86_64_PC32          0000000000000=
000 .text + ac0
> >=20
> > ---
> >=20
> > The linker command line is:
> >=20
> > % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds arch/x86=
/boot/compressed/kernel_info.o arch/x86/boot/compressed/head_64.o arch/x86/=
boot/compressed/misc.o arch/x86/boot/compressed/string.o arch/x86/boot/comp=
ressed/cmdline.o arch/x86/boot/compressed/error.o arch/x86/boot/compressed/=
piggy.o arch/x86/boot/compressed/cpuflags.o arch/x86/boot/compressed/early_=
serial_console.o arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/=
kaslr_64.o arch/x86/boot/compressed/mem_encrypt.o arch/x86/boot/compressed/=
pgtable_64.o arch/x86/boot/compressed/acpi.o drivers/firmware/efi/libstub/l=
ib.a arch/x86/boot/compressed/efi_thunk_64.o -o arch/x86/boot/compressed/vm=
linux
> > ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS rel=
ocation R_X86_64_PC32 against symbol ''
> >=20
> > arch/x86/boot/compressed/vmlinux has an output section .discard.unreach=
able , which is likely desired.
>=20
> You mean /not/ desired, right?
>=20
> >=20
> > Note that arch/x86/kernel/vmlinux.lds.S has an output section descripti=
on /DISCARD/ : { ... *(.discard.*) ... },
> > but arch/x86/boot/compressed/vmlinux doesn't.
> >=20
> > We can let arch/x86/boot/compressed/vmlinux reuse the /DISCARD/ to fix =
the issue.
>=20
> Yep.

As an aside, how does one (should I) get onto kbuild-all? It keeps
bouncing me as a non-list member currently.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520174100.GB3365034%40rani.riverdale.lan.
