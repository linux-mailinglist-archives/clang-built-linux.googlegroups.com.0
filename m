Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZWER37QKGQEDRP7INQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 920F62E2116
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 21:02:47 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 92sf83547otx.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 12:02:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608753766; cv=pass;
        d=google.com; s=arc-20160816;
        b=nSNKlQqwRhRR98cln5RfMImq96TM5pOBEgMrtNa4H0b5t4Rnkp7isiaKSJIg5WQOBx
         cQaSOCngM3+ymJxXyI7Rnh/N5iM6cGzRoYSXvCa0t2/91F0G125jJ8fVApmZ/kSWCrCU
         vE8qw1luC2TvDodph9ebkOo+FeIRNVDUXWn7dzdgNhz66h/UqreoQXM9bPAv+R+m0uLo
         /d58I68ReA22+GBIzv4RF6cFU26cwQdFUDXURiw4iXrjpZGOEumk0+q99ef4eM8rL5HC
         CLTYzFOg67a1+JYFf3Amn2n0MxTSwhhcMSkWFH8n+J0xwBm13+ggsZRqntsi7b1m/7mg
         vkRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NkjB269EBChHcX3EsO4rFEZfPz1s2fhI2PpmtBdNJoQ=;
        b=FW1J/9I2ZkhRkij6RLfo13WNFG3qnIomaQE+HczM2+0lboLWATV58jB2lxskWeE5HJ
         eYs9aGtEuSrIB6l7nUV8At9DE3DrBudC0ar6CbypfYMr8VKrotjwmIYkFjt+LCIEW3RY
         UQNFM7qslqfs6E611cAnsAxth93+hsz4/CFSvfP2D4ozvnapUfJwlPFcP8CPoT4R+Y/4
         LaWgJYC+pDNd9xJOgIvGumdiI5FSkrkna/xyDdbnMpgE8qge4lZR9yQjbFU8QCb/TBKs
         hMsToLJ25qWEzjJ56L8TWgLAVvqYN6r+hYh1+4+UT7BPOWvw/j57p+vMFnxTsmKkrvRL
         J5mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pJnNiZLI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NkjB269EBChHcX3EsO4rFEZfPz1s2fhI2PpmtBdNJoQ=;
        b=MzEKDGTukVr8vRHhvDdnaoD4C9Gx/vBT443SJUTKrh15MXn7U1yCKsNl8r8xB5ORnT
         3WQzSyGo+G+1j5nuwj0XRGuSEaAO+oEkKTI6z1adxX1sbkeKAe3RVpaJS2RT/03qMhMQ
         gzPkDmpj0REGFFeTbJmvx2Zc4Oqkw3B4JEPLDHII/uHdATL6YemRcFnVFso0+q3TR18p
         5xQukzTdIcDfhwLbVo2gzSmw86kbRTwvnEUNioODfm6iKaZUwmbV/7aihRIIpT6FqBI+
         PPz8L0pUyLoxEVK7JVsP8inzJniZwXdqs7Wj/ib34IiIfITSpPwZdwjdg5zJHEMt7a20
         TIIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NkjB269EBChHcX3EsO4rFEZfPz1s2fhI2PpmtBdNJoQ=;
        b=fH41dCOgFXvUu8GQxN/dY4T8Xdt6sW15RecaRCKgfGo1btsTqlCY3Noas70Y3j5gSX
         ktkOf7m86KOB0d4DvLXJuC/rtb0c8BqrhOClCuLGO/X77XCCE6498vKpbpNtvXCjgvtV
         jzSps/wu7Iwd5LFFLkTO15UePkVCkduPuaft2BWrNM4pcSzhJa3K6oQ8MMxYfjgg+nEB
         J8mIAR0iE0eUtvRgyIV5nmeCgGEkPC5DSIm09GBDx+7fyqoySRET3397HHbszXMTFyEC
         lguDGhsgGr8CnovayGOhH8O8EGosowW7iFOy27ujbQ0aoQUf/pwqolTTMYa0XYQrI1T7
         Elgg==
X-Gm-Message-State: AOAM533K+tSgzfIQuJVKfLiMJEl9OYJEq3ivQp2wpeIeDYO+f/5Dq1xZ
	VWJdNzBqTPnDvSvXTE9vRac=
X-Google-Smtp-Source: ABdhPJweS/hD/rEArAwGvabd7ZVzAh8x6mrChUE+gsmtbKeagznjz4r3a56Lk0n+k0zq1ZsOM9nY5A==
X-Received: by 2002:aca:4a84:: with SMTP id x126mr913932oia.111.1608753766153;
        Wed, 23 Dec 2020 12:02:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2413:: with SMTP id n19ls8881797oic.7.gmail; Wed, 23 Dec
 2020 12:02:45 -0800 (PST)
X-Received: by 2002:aca:3094:: with SMTP id w142mr922585oiw.101.1608753765712;
        Wed, 23 Dec 2020 12:02:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608753765; cv=none;
        d=google.com; s=arc-20160816;
        b=jDiZOsfRuVFX2NExBRizGVvf2v9DciTHxQkRLmpMaoj6cP3N2AOpgUhSsOK8YTQETN
         /OkA8F0g2SF3ocYW5aeu2LGpElFutfjgONEpxRrkUry9bjT/mTPb9aXgJUmRv3ajbuT8
         MkUuLxmILpQvvVNP4jsnqpPoJGxIEChMA50B+o+W98mCSGlJpHqind+T/dN7KqJ8FBKv
         FwGAMVbCw0S7IbS5BXXhVgUy/8nPJlqoTNzUkt/JA6LzYUtcHBFYQpKs0UF/FF71PTJL
         OGrAiA3d8butRCk8GkaWDp9oV+TzigBaieYbxThAwrsj/VfxzEQfcFcuqjKNqDuyb6rY
         mpjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RQjHGEhez9gAsCthzyBXrtWP3JdPJ9jzUZqLhtmOLQo=;
        b=I/ljcbPgvz3DTZQbjqbqjjh+taMkAf0OyF5mIqeMvBXJPrKA8lFsxjt2rgLWKbpSMP
         qHZ2qShwhjz5/4K89YByCAKfn9p0t0mB6z4CFH/bC1b6OPTT+U75BZY448bqx0OhAP5t
         0OxYByavrxJtNnIszyfD/p/ILWC7Gp7Jm5HwDFMQVfuVPHRGAY/hwazo+Vv6gJG0T4y+
         uL2TV9zDmT3rSC4FXgBj8+2kjXrciARrnmhqsXSoPE5U4J8g748J7D40iwF4TJ4o8kge
         bLXaxRi+qkO9rJV1WTWNHROfKbfnydtIBVucPman8fz9H2VpJGx+mSvEbkhel4r6b2lX
         l+Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pJnNiZLI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id v23si2606163otn.0.2020.12.23.12.02.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 12:02:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id j13so327370pjz.3
        for <clang-built-linux@googlegroups.com>; Wed, 23 Dec 2020 12:02:45 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr360137pjf.25.1608753764841;
 Wed, 23 Dec 2020 12:02:44 -0800 (PST)
MIME-Version: 1.0
References: <202012180909.WhlTpWrS-lkp@intel.com> <20201223183606.GB29011@zn.tnic>
In-Reply-To: <20201223183606.GB29011@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Dec 2020 12:02:33 -0800
Message-ID: <CAKwvOdkA+7AYGhPk_=FA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw@mail.gmail.com>
Subject: Re: [tip:efi/core 3/7] /tmp/slab-258052.s:9870: Error: unrecognized
 opcode `zext.b a2,a2'
To: Borislav Petkov <bp@alien8.de>
Cc: kernel test robot <lkp@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pJnNiZLI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Dec 23, 2020 at 10:36 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Dec 18, 2020 at 09:03:14AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git efi=
/core
> > head:   b283477d394ac41ca59ee20eb9293ae9002eb1d7
> > commit: 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a [3/7] efi/libstub: EFI=
_GENERIC_STUB_INITRD_CMDLINE_LOADER should not default to yes
> > config: riscv-randconfig-r022-20201217 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ce=
e1e7d14f4628d6174b33640d502bff3b54ae45)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install riscv cross compiling tool for clang build
> >         # apt-get install binutils-riscv64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/c=
ommit/?id=3D6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
> >         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/=
git/tip/tip.git
> >         git fetch --no-tags tip efi/core
> >         git checkout 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Driscv
>
> Something's still not good with that test - it fails much earlier for me:
>
> $ COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang /tmp/make.cross ARC=
H=3Driscv
> Compiler will be installed in /home/boris/0day
> cd: received redirection to `https://download.01.org/0day-ci/cross-packag=
e/'
> lftpget -c https://download.01.org/0day-ci/cross-package/./clang-latest/c=
lang.tar.xz
> tar Jxf clang-latest/clang.tar.xz -C /home/boris/0day
> make W=3D1 CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy HOSTCC=3D/home/boris/0da=
y/clang-latest/bin/clang CC=3D/home/boris/0day/clang-latest/bin/clang LD=3D=
/home/boris/0day/clang-latest/bin/ld.lld HOSTLD=3D/home/boris/0day/clang-la=
test/bin/ld.lld AR=3D/home/boris/0day/clang-latest/bin/llvm-ar NM=3D/home/b=
oris/0day/clang-latest/bin/llvm-nm STRIP=3D/home/boris/0day/clang-latest/bi=
n/llvm-strip OBJDUMP=3D/home/boris/0day/clang-latest/bin/llvm-objdump OBJSI=
ZE=3D/home/boris/0day/clang-latest/bin/llvm-size READELF=3D/home/boris/0day=
/clang-latest/bin/llvm-readelf HOSTCXX=3D/home/boris/0day/clang-latest/bin/=
clang++ HOSTAR=3D/home/boris/0day/clang-latest/bin/llvm-ar CROSS_COMPILE=3D=
riscv-linux-gnu- --jobs=3D32 ARCH=3Driscv
>   SYNC    include/config/auto.conf.cmd
> ...
>
> scripts/genksyms/parse.y: warning: 9 shift/reduce conflicts [-Wconflicts-=
sr]
> scripts/genksyms/parse.y: warning: 5 reduce/reduce conflicts [-Wconflicts=
-rr]
>   DTC     arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
>   DTC     arch/riscv/boot/dts/kendryte/k210.dtb
>   HOSTCC  scripts/genksyms/parse.tab.o
>   HOSTCC  scripts/genksyms/lex.lex.o
>   HOSTLD  scripts/genksyms/genksyms
>   CC      scripts/mod/empty.o
>   HOSTCC  scripts/mod/mk_elfconfig
>   CC      scripts/mod/devicetable-offsets.s
> error: unknown target triple 'riscv-unknown-linux-gnu', please use -tripl=
e or -arch

Boris,
Thanks for taking the time to try to repro, and the report.  Just
curious, which clang are you using?  Is it from your distro?  If you
have `llc` installed, can you send me the output of `llc --version`?

The reason I ask is; unlike GCC, Clang ships with all non-experimental
backends on by default, and relies on `--target=3D<triple>` when cross
compiling. You can disable backends when configuring a build of LLVM,
but it's frowned upon for distributions to do so (I do it locally to
speed up development).  The above error is indicating that LLVM was
configured to not have RISCV support.

The RISCV backend only recently became a non-experimental (as in on by
default) backend a couple of releases ago, so either you have an old
clang that was intentionally built without experimental backends
(solution: use newer clang, where it should be on by default), or your
distro has disabled the backend (solution: encourage the package
maintainer to fix that), (or you configured LLVM yourself and didn't
enable RISCV).

Either way, you can ignore this report. Known issue with further
discussion here: https://github.com/ClangBuiltLinux/linux/issues/1220.
Happy holidays+new year.

> make[1]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets=
.s] Error 1
> make[1]: *** Waiting for unfinished jobs....
> error: unknown target triple 'riscv-unknown-linux-gnu', please use -tripl=
e or -arch
> make[1]: *** [scripts/Makefile.build:283: scripts/mod/empty.o] Error 1
> make: *** [Makefile:1199: prepare0] Error 2
> $
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20201223183606.GB29011%40zn.tnic.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkA%2B7AYGhPk_%3DFA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw%4=
0mail.gmail.com.
