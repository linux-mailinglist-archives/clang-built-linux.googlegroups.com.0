Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO5J5TZQKGQEHC6T6GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 15353192283
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 09:22:21 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id w203sf1194276oiw.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 01:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585124540; cv=pass;
        d=google.com; s=arc-20160816;
        b=XF2GV8nBjsqOlaW9D/9udbv7f+G6JdKEu8yi9imrDJ71XVz0bm+vqqD+iycTLmcQBW
         RNUoyvaxchuvYi6SnyWfg5OJILvVGT0M8NyJg0YkjaJjy+48ji9/q1T7LPi6dl0sAAF5
         ableV7K70ww2MKD2HS3zZdqkw39JAePvc/qWUHKl6vQBAPUFdkXtVRqDQNdJ2GMgqITL
         I7wfAqaCz1yJFOGq+Lpp+RbTVD7FtjszhUuv9EAlMtqJTNNHAdOAqBb8Lrur+isfpDCQ
         rpyIpNnl49e7oGeZIyRgtvTspyu4P2wvQsFXuMatjzQy1i68JdN4b5PyzE3VqB0NIlUs
         GwkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=kG46JQWwgUvJ9N2tQyXoZp/G/KBmOXKy9ruWsVmaE8E=;
        b=hpQE5/EKVKhyMrA+7jTqyuoB/FyBNIKEwr7kKzeA1m8sETK/BvVHklWq2qcIuxlwzI
         aWsaQohYRRss2m6r5lFcRwiOo9mfVcfBai/cE2UaGXcXGm8wKzFsznz4VM0s3QjGSFJR
         8OyI7SKXq/kUF1Ni+lZqZAFr7+2vRgmvFA/QpSMIeIm1bwYqPmYqRLz5xsB+NfbDjhLP
         XXvs4DK4EF56LtrssYqy5j/OgstZ6GeqQC5yDotsMGF6PCYDyB14w44+KuVA6YQEhSaI
         ov7bBHcVWvoGWSNQiLEu6e7udcxldpyEJTlGFIe1VQnCrD1ZAI3P3X8lzwNHBrFor81w
         976A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=slyT43EL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kG46JQWwgUvJ9N2tQyXoZp/G/KBmOXKy9ruWsVmaE8E=;
        b=JtSnaxQ6rjiB91eeksgohRUTyuJK76zAcJ0TzSaI6cQOhE/quDTtE9HyCptq/HxVhl
         YSSn02NB3vY/wi3Mcs23MmzQvBdwvmQbdOEv6HuK9+TRh+q0TM8ziCSca7OkEaCNzp/6
         P40YsQAdJyjmyFMrChlX710iNZ7RLW3g3Qy66+YT80lTLBhUMFOd9BQMev1aIWVIGhRg
         b0xcBNpkFO3/pDah0RfZDbOFkkQtXF6BhIAXw4QjlSficrdHW6flPk7brmYy7sSG+ThT
         UBWHrXg0dbE399ON77pLgTymc6ZuzUZVLqd2/xIfI9eR/04EG3eyw5lGCP/u++xhFLqQ
         lCpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kG46JQWwgUvJ9N2tQyXoZp/G/KBmOXKy9ruWsVmaE8E=;
        b=PBNHPX+LabHVs3B0ZEGQ553a5D4iOJPuZxQUex/loJgYm+cgpV+/3/wBWkWZLk6zXo
         6SLI4piG+Dxx9rnfgQZ3JmRPHyg2dyyPaTDUJ+su2lsKqzzZwk3UT8aiMXCiyaPM6NTt
         +7nqFr3DczJWtGgXtgsxuolDMMpF30Wx4U4xL3z1SKzayRd1rB1orDC/LnAH0dZk9WVZ
         XMEY192xveQ00MFrw6H5ZnsU6tHPWicJS1VsI7U+nBBH4YjKwzqEj+TE00cyuq0m3BzG
         0FeDpMC9EoDi3Bxwr87CuSvJtlEVK7Bw68dLfuxJ45JNmWFTams7S6gUncuisrGaWFM2
         oVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kG46JQWwgUvJ9N2tQyXoZp/G/KBmOXKy9ruWsVmaE8E=;
        b=Dw6LqSXYG4WVOWdWYmTsc/wLgkSSdvX7Xaq+KSd6bSJzdbLxO08CDZ164bh6aSLhb9
         kO01X4VLqd9Em4VVuwQ6SBBtGuZamX5h5qzSnmXBBYypjnVeR/DL3U20vL1AWzg4XADg
         KeBpBPQCuXwhWpAfYoFQLaHTraHqbKqGuzZYYXg/TDwUEKBSjknWlSDLtNJED27iGGxQ
         GdMZDzXuYeOcBGjuCr6L4n8M7lgp5LeoFFgDqSEtco0RrlAufOrtt7PHx6NiZSe+5K5b
         wDeeiIb/HdvC5/Mun8r6zAr+bitGXe12CErykKdKFvtUYlEkWfx3kqh/J1YWaYUIgQQV
         TVtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ37lLGcq/p1wddIx0CeLXaGq9fFCHeeEsfZB6C+sagURPu5Q9e1
	L8LBEfpX3xghX1wPrVV2bJw=
X-Google-Smtp-Source: ADFU+vskPcR+jZYHNQVZI2UJzXujELdDHYhyEdj49pRuAQQxdCFgFunqLjh12NewHxn8oUNI0fmP0Q==
X-Received: by 2002:a05:6830:1d98:: with SMTP id y24mr1632820oti.76.1585124539937;
        Wed, 25 Mar 2020 01:22:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52d2:: with SMTP id g201ls287134oib.11.gmail; Wed, 25
 Mar 2020 01:22:19 -0700 (PDT)
X-Received: by 2002:a54:4e0e:: with SMTP id a14mr1695297oiy.88.1585124539548;
        Wed, 25 Mar 2020 01:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585124539; cv=none;
        d=google.com; s=arc-20160816;
        b=gD+X+G3eRRICvhDFgJjTCe7AXtzjsfOx0/b2DfwN5H4Czkok5/3NRW3/YfCUkTma16
         WJ2221mhNYcGNJi+HCwzW50uBTEvlEBB5O03Kjbjk5BFqzxOocoL6k7E8hkY8GCTOJk5
         /Y9AjljBJzUM4HtLdBD3MIXd7ubB9qCV/y7n/liJaJn7u+KOwrWGzFCUOcjNgCjciUR2
         zmZN0yEiLajtK8012Ijei2/qFuxc9sZ+FXilB+y7wE1TVIgrMi3Ui3m3zy461VmqkG6p
         tC+yJUwaupkEJrW49m5BsRw3JVSvWTS32GBvQWk2oxmCi82kJSkEZiF3qMKivew0UJ0K
         tMgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sAg97FE5wdRgdo+jOO9kNq2dYetF6sIMF7eZAguAbpQ=;
        b=PCujrZK5IV2P7AASCeK2+/xrNFOTVM6LK96nAwjJp6P5bks5+pH9oKsHYGYSPZNqz+
         Puv1oLFRditG7OcAqGNlUr0n35Y8DL3X2TVwdPBfQI98vxLY5HhxxoLEB/Oy50YFFonn
         OsrcrTPnCmxkivGTqHm3fNOPpuyMPurFPm7ax13o8zjOwW9MD6Gzq4sUZy8OBipCej51
         cEWKNjXROVcQD8FszSNvvHdAZCWBzMM1xG6eUuz9hVYvhiDsomBxKutNzKovh7BixWTy
         kA2EnJeBOJiCrbgWQL8b7mEiH4IKQyRxkJdtRSaDQwka4XNUbEZCUYGVBU0sP4UrO9iH
         ggOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=slyT43EL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id m132si1442476oig.3.2020.03.25.01.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 01:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id m14so1362046oic.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 01:22:19 -0700 (PDT)
X-Received: by 2002:a54:4e13:: with SMTP id a19mr1712363oiy.108.1585124539026;
        Wed, 25 Mar 2020 01:22:19 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g48sm435416ooi.37.2020.03.25.01.22.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Mar 2020 01:22:18 -0700 (PDT)
Date: Wed, 25 Mar 2020 01:22:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [linux-next:pending-fixes 86/277]
 arch/powerpc/platforms/powermac/smp.c:664:26: error: unused variable
 'core99_l2_cache'
Message-ID: <20200325082216.GA1803@ubuntu-m2-xlarge-x86>
References: <202003251537.N3F2RWO7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202003251537.N3F2RWO7%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=slyT43EL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Obviously these are not caused by that commit as it suggests. That patch
just allows the kernel to build past scripts/dtc.

On Wed, Mar 25, 2020 at 03:41:47PM +0800, kbuild test robot wrote:
> Hi Dirk,
>=20
> First bad commit (maybe !=3D root cause):
>=20
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it pending-fixes
> head:   1e07787fb89ded7f9b290af70c788c9f82f13cc1
> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [86/277] Remove redundan=
t YYLOC global declaration
> config: powerpc-defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1ac4=
03bd145dadfa1004af29bd6c77f871caf42c)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
>         # save the attached .config to linux build tree
>         COMPILER=3Dclang make.cross ARCH=3Dpowerpc=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> Note: the linux-next/pending-fixes HEAD 1e07787fb89ded7f9b290af70c788c9f8=
2f13cc1 builds fine.
>       It only hurts bisectibility.
>=20
> All error/warnings (new ones prefixed by >>):
>=20
> >> arch/powerpc/platforms/powermac/smp.c:664:26: error: unused variable '=
core99_l2_cache' [-Werror,-Wunused-variable]
>    volatile static long int core99_l2_cache;
>                             ^
> >> arch/powerpc/platforms/powermac/smp.c:665:26: error: unused variable '=
core99_l3_cache' [-Werror,-Wunused-variable]
>    volatile static long int core99_l3_cache;
>                             ^
>    2 errors generated.

Fixed in -next.

https://github.com/ClangBuiltLinux/linux/issues/663
https://git.kernel.org/powerpc/c/9451c79bc39e610882bdd12370f01af5004a3c4f

> >> arch/powerpc/platforms/maple/setup.c:365:1: error: attribute declarati=
on must precede definition [-Werror,-Wignored-attributes]
>    machine_device_initcall(maple, maple_cpc925_edac_setup);
>    ^
>    arch/powerpc/include/asm/machdep.h:294:43: note: expanded from macro '=
machine_device_initcall'
>    #define machine_device_initcall(mach, fn)       __define_machine_initc=
all(mach, fn, 6)
>                                                    ^
>    arch/powerpc/include/asm/machdep.h:277:7: note: expanded from macro '_=
_define_machine_initcall'
>                    if (machine_is(mach)) return fn(); \
>                        ^
>    arch/powerpc/include/asm/machdep.h:248:19: note: expanded from macro '=
machine_is'
>                            __attribute__((weak));           \
>                                           ^
>    arch/powerpc/platforms/maple/setup.c:294:1: note: previous definition =
is here
>    define_machine(maple) {
>    ^
>    arch/powerpc/include/asm/machdep.h:243:23: note: expanded from macro '=
define_machine'
>            struct machdep_calls mach_##name __machine_desc =3D
>                                 ^
>    <scratch space>:203:1: note: expanded from here
>    mach_maple
>    ^
>    1 error generated.

Patch sent:

https://github.com/ClangBuiltLinux/linux/issues/662
https://lore.kernel.org/lkml/20200323222729.15365-1-natechancellor@gmail.co=
m/

> >> drivers/scsi/qla2xxx/qla_nx2.c:3226:1: warning: stack frame size of 22=
08 bytes in function 'qla8044_collect_md_data' [-Wframe-larger-than=3D]
>    qla8044_collect_md_data(struct scsi_qla_host *vha)
>    ^
>    1 warning generated.

https://github.com/ClangBuiltLinux/linux/issues/946

>    Stack dump:
>    0. Program arguments: /opt/cross/clang-1ac403bd14/bin/clang-11 -cc1 -t=
riple powerpc64-unknown-linux-gnu -S -disable-free -disable-llvm-verifier -=
discard-value-names -main-file-name be_cmds.c -mrelocation-model static -mt=
hread-model posix -fno-delete-null-pointer-checks -mllvm -warn-stack-size=
=3D2048 -mframe-pointer=3Dall -relaxed-aliasing -fmath-errno -fno-rounding-=
math -masm-verbose -no-integrated-as -mconstructor-aliases -mcmodel=3Dlarge=
 -target-cpu pwr5 -target-feature -altivec -target-feature -vsx -target-fea=
ture -spe -target-feature -hard-float -msoft-float -mfloat-abi soft -target=
-abi elfv1 -dwarf-column-info -fno-split-dwarf-inlining -debugger-tuning=3D=
gdb -nostdsysteminc -nobuiltininc -resource-dir /opt/cross/clang-1ac403bd14=
/lib/clang/11.0.0 -dependency-file drivers/net/ethernet/emulex/benet/.be_cm=
ds.o.d -MT drivers/net/ethernet/emulex/benet/be_cmds.o -sys-header-deps -is=
ystem /opt/cross/clang-1ac403bd14/lib/clang/11.0.0/include -include include=
/linux/kconfig.h -include include/linux/compiler_types.h -I arch/powerpc/in=
clude -I ./arch/powerpc/include/generated -I include -I ./include -I arch/p=
owerpc/include/uapi -I ./arch/powerpc/include/generated/uapi -I include/uap=
i -I ./include/generated/uapi -D __KERNEL__ -I arch/powerpc -D HAVE_AS_ATHI=
GH=3D1 -D _TASK_CPU=3D300 -I drivers/net/ethernet/emulex/benet -I ./drivers=
/net/ethernet/emulex/benet -D MODULE -D KBUILD_BASENAME=3D"be_cmds" -D KBUI=
LD_MODNAME=3D"be2net" -fmacro-prefix-map=3D=3D -O2 -Wall -Wundef -Werror=3D=
strict-prototypes -Wno-trigraphs -Werror=3Dimplicit-function-declaration -W=
error=3Dimplicit-int -Wno-format-security -Werror=3Dunknown-warning-option =
-Wno-frame-address -Wno-address-of-packed-member -Wno-format-invalid-specif=
ier -Wno-gnu -Wno-tautological-compare -Wno-unused-const-variable -Wdeclara=
tion-after-statement -Wvla -Wno-pointer-sign -Werror=3Ddate-time -Werror=3D=
incompatible-pointer-types -Wno-initializer-overrides -Wno-format -Wno-sign=
-compare -Wno-format-zero-length -std=3Dgnu89 -fno-dwarf-directory-asm -fde=
bug-compilation-dir /kbuild/obj/consumer/powerpc-defconfig -ferror-limit 19=
 -fmessage-length 0 -pg -fwrapv -fno-signed-char -fwchar-type=3Dshort -fno-=
signed-wchar -fgnuc-version=3D4.2.1 -fobjc-runtime=3Dgcc -fdiagnostics-show=
-option -vectorize-loops -vectorize-slp -o /tmp/be_cmds-0947a8.s -x c drive=
rs/net/ethernet/emulex/benet/be_cmds.c
>    1. <eof> parser at end of file
>    2. Code generation
>    3. Running pass 'Function Pass Manager' on module 'drivers/net/etherne=
t/emulex/benet/be_cmds.c'.
>    4. Running pass 'PowerPC DAG->DAG Pattern Instruction Selection' on fu=
nction '@be_cmd_rss_config'
>    #0 0x000055be8ef26dca llvm::sys::PrintStackTrace(llvm::raw_ostream&) (=
/opt/cross/clang-1ac403bd14/bin/clang-11+0x2a88dca)
>    #1 0x000055be8ef24b15 llvm::sys::RunSignalHandlers() (/opt/cross/clang=
-1ac403bd14/bin/clang-11+0x2a86b15)
>    #2 0x000055be8ef24c32 SignalHandler(int) (/opt/cross/clang-1ac403bd14/=
bin/clang-11+0x2a86c32)
>    #3 0x00007f4da2022520 __restore_rt (/lib/x86_64-linux-gnu/libpthread.s=
o.0+0x13520)
>    #4 0x000055be8fb009be llvm::TargetLowering::SimplifyDemandedBits(llvm:=
:SDValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::T=
argetLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/cl=
ang-1ac403bd14/bin/clang-11+0x36629be)
>    #5 0x000055be8fb043a2 llvm::TargetLowering::SimplifyDemandedBits(llvm:=
:SDValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::T=
argetLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/cl=
ang-1ac403bd14/bin/clang-11+0x36663a2)
>    #6 0x000055be8f9ddfae (anonymous namespace)::DAGCombiner::SimplifyDema=
ndedBits(llvm::SDValue) (.constprop.857) (/opt/cross/clang-1ac403bd14/bin/c=
lang-11+0x353ffae)
>    #7 0x000055be8f9e59d2 (anonymous (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x35479d2)
>    #8 0x000055be8f9e6a8a (anonymous (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x3548a8a)
>    #9 0x000055be8fa1313e (anonymous (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x357513e)
>    #10 0x000055be8fa13edc (anonymous (/opt/cross/clang-1ac403bd14/bin/cla=
ng-11+0x3575edc)
>    #11 0x000055be8fa159c1 llvm::SelectionDAG::Combine(llvm::CombineLevel,=
 llvm::CodeGenOpt::Level) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x35779=
c1)
>    #12 0x000055be8fadfc1b llvm::SelectionDAGISel::CodeGenAndEmitDAG() (/o=
pt/cross/clang-1ac403bd14/bin/clang-11+0x3641c1b)
>    #13 0x000055be8fae3e62 llvm::SelectionDAGISel::SelectAllBasicBlocks(ll=
vm::Function const&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3645e62)
>    #14 0x000055be8fae5a0d llvm::SelectionDAGISel::runOnMachineFunction(ll=
vm::MachineFunction&) (.part.816) (/opt/cross/clang-1ac403bd14/bin/clang-11=
+0x3647a0d)
>    #15 0x000055be8dd97f55 (anonymous namespace)::PPCDAGToDAGISel::runOnMa=
chineFunction(llvm::MachineFunction&) (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x18f9f55)
>    #16 0x000055be8e595467 llvm::MachineFunctionPass::runOnFunction(llvm::=
Function&) (.part.40) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x20f7467)
>    #17 0x000055be8e8f1dfb llvm::FPPassManager::runOnFunction(llvm::Functi=
on&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x2453dfb)
>    #18 0x000055be8e8f2493 llvm::FPPassManager::runOnModule(llvm::Module&)=
 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x2454493)
>    #19 0x000055be8e8f27eb llvm::legacy::PassManagerImpl::run(llvm::Module=
&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x24547eb)
>    #20 0x000055be8f143228 (anonymous namespace)::EmitAssemblyHelper::Emit=
Assembly(clang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std=
::default_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/b=
in/clang-11+0x2ca5228)
>    #21 0x000055be8f144b85 clang::EmitBackendOutput(clang::DiagnosticsEngi=
ne&, clang::HeaderSearchOptions const&, clang::CodeGenOptions const&, clang=
::TargetOptions const&, clang::LangOptions const&, llvm::DataLayout const&,=
 clang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std::defaul=
t_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/bin/clang=
-11+0x2ca6b85)
>    #22 0x000055be8fbd5425 clang::BackendConsumer::HandleTranslationUnit(c=
lang::ASTContext&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3737425)
>    #23 0x000055be903d5909 clang::ParseAST(clang::Sema&, bool, bool) (/opt=
/cross/clang-1ac403bd14/bin/clang-11+0x3f37909)
>    #24 0x000055be8f66c8a1 clang::FrontendAction::Execute() (/opt/cross/cl=
ang-1ac403bd14/bin/clang-11+0x31ce8a1)
>    #25 0x000055be8f62dd08 clang::CompilerInstance::ExecuteAction(clang::F=
rontendAction&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x318fd08)
>    #26 0x000055be8f711ed9 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x327=
3ed9)
>    #27 0x000055be8d3471ec cc1_main(llvm::ArrayRef<char char (/opt/cross/c=
lang-1ac403bd14/bin/clang-11+0xea91ec)
>    #28 0x000055be8d3442e7 ExecuteCC1Tool(llvm::SmallVectorImpl<char (/opt=
/cross/clang-1ac403bd14/bin/clang-11+0xea62e7)
>    #29 0x000055be8d289523 main (/opt/cross/clang-1ac403bd14/bin/clang-11+=
0xdeb523)
>    #30 0x00007f4da1b37bbb __libc_start_main (/lib/x86_64-linux-gnu/libc.s=
o.6+0x26bbb)
>    #31 0x000055be8d343d6a _start (/opt/cross/clang-1ac403bd14/bin/clang-1=
1+0xea5d6a)
> >> clang-11: error: unable to execute command: Segmentation fault
> >> clang-11: error: clang frontend command failed due to signal (use -v t=
o see invocation)
>    clang version 11.0.0 (git://gitmirror/llvm_project 1ac403bd145dadfa100=
4af29bd6c77f871caf42c)
>    Target: powerpc64-unknown-linux-gnu
>    Thread model: posix
>    InstalledDir: /opt/cross/clang-latest/bin
>    clang-11: note: diagnostic msg: PLEASE submit a bug report to https://=
bugs.llvm.org/ and include the crash backtrace, preprocessed source, and as=
sociated run script.
>    clang-11: note: diagnostic msg:
>    Makefile arch drivers include kernel null.dwo scripts source usr virt
> --
>    Stack dump:
>    0. Program arguments: /opt/cross/clang-1ac403bd14/bin/clang-11 -cc1 -t=
riple powerpc64-unknown-linux-gnu -S -disable-free -disable-llvm-verifier -=
discard-value-names -main-file-name be_cmds.c -mrelocation-model static -mt=
hread-model posix -fno-delete-null-pointer-checks -mllvm -warn-stack-size=
=3D2048 -mframe-pointer=3Dall -relaxed-aliasing -fmath-errno -fno-rounding-=
math -masm-verbose -no-integrated-as -mconstructor-aliases -mcmodel=3Dlarge=
 -target-cpu pwr5 -target-feature -altivec -target-feature -vsx -target-fea=
ture -spe -target-feature -hard-float -msoft-float -mfloat-abi soft -target=
-abi elfv1 -dwarf-column-info -fno-split-dwarf-inlining -debugger-tuning=3D=
gdb -nostdsysteminc -nobuiltininc -resource-dir /opt/cross/clang-1ac403bd14=
/lib/clang/11.0.0 -dependency-file drivers/net/ethernet/emulex/benet/.be_cm=
ds.o.d -MT drivers/net/ethernet/emulex/benet/be_cmds.o -sys-header-deps -is=
ystem /opt/cross/clang-1ac403bd14/lib/clang/11.0.0/include -include include=
/linux/kconfig.h -include include/linux/compiler_types.h -I arch/powerpc/in=
clude -I ./arch/powerpc/include/generated -I include -I ./include -I arch/p=
owerpc/include/uapi -I ./arch/powerpc/include/generated/uapi -I include/uap=
i -I ./include/generated/uapi -D __KERNEL__ -I arch/powerpc -D HAVE_AS_ATHI=
GH=3D1 -D _TASK_CPU=3D300 -D MODULE -D KBUILD_BASENAME=3D"be_cmds" -D KBUIL=
D_MODNAME=3D"be2net" -fmacro-prefix-map=3D=3D -O2 -Wall -Wundef -Werror=3Ds=
trict-prototypes -Wno-trigraphs -Werror=3Dimplicit-function-declaration -We=
rror=3Dimplicit-int -Wno-format-security -Werror=3Dunknown-warning-option -=
Wno-frame-address -Wno-address-of-packed-member -Wno-format-invalid-specifi=
er -Wno-gnu -Wno-tautological-compare -Wno-unused-const-variable -Wdeclarat=
ion-after-statement -Wvla -Wno-pointer-sign -Werror=3Ddate-time -Werror=3Di=
ncompatible-pointer-types -Wno-initializer-overrides -Wno-format -Wno-sign-=
compare -Wno-format-zero-length -std=3Dgnu89 -fno-dwarf-directory-asm -fdeb=
ug-compilation-dir /kbuild/obj/consumer/powerpc-defconfig -ferror-limit 19 =
-fmessage-length 0 -pg -fwrapv -fno-signed-char -fwchar-type=3Dshort -fno-s=
igned-wchar -fgnuc-version=3D4.2.1 -fobjc-runtime=3Dgcc -fdiagnostics-show-=
option -vectorize-loops -vectorize-slp -o /tmp/be_cmds-26db70.s -x c driver=
s/net/ethernet/emulex/benet/be_cmds.c
>    1. <eof> parser at end of file
>    2. Code generation
>    3. Running pass 'Function Pass Manager' on module 'drivers/net/etherne=
t/emulex/benet/be_cmds.c'.
>    4. Running pass 'PowerPC DAG->DAG Pattern Instruction Selection' on fu=
nction '@be_cmd_rss_config'
>    #0 0x000055c3204acdca llvm::sys::PrintStackTrace(llvm::raw_ostream&) (=
/opt/cross/clang-1ac403bd14/bin/clang-11+0x2a88dca)
>    #1 0x000055c3204aab15 llvm::sys::RunSignalHandlers() (/opt/cross/clang=
-1ac403bd14/bin/clang-11+0x2a86b15)
>    #2 0x000055c3204aac32 SignalHandler(int) (/opt/cross/clang-1ac403bd14/=
bin/clang-11+0x2a86c32)
>    #3 0x00007f1e26d93520 __restore_rt (/lib/x86_64-linux-gnu/libpthread.s=
o.0+0x13520)
>    #4 0x000055c3210869be llvm::TargetLowering::SimplifyDemandedBits(llvm:=
:SDValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::T=
argetLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/cl=
ang-1ac403bd14/bin/clang-11+0x36629be)
>    #5 0x000055c32108a3a2 llvm::TargetLowering::SimplifyDemandedBits(llvm:=
:SDValue, llvm::APInt const&, llvm::APInt const&, llvm::KnownBits&, llvm::T=
argetLowering::TargetLoweringOpt&, unsigned int, bool) const (/opt/cross/cl=
ang-1ac403bd14/bin/clang-11+0x36663a2)
>    #6 0x000055c320f63fae (anonymous namespace)::DAGCombiner::SimplifyDema=
ndedBits(llvm::SDValue) (.constprop.857) (/opt/cross/clang-1ac403bd14/bin/c=
lang-11+0x353ffae)
>    #7 0x000055c320f6b9d2 (anonymous (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x35479d2)
>    #8 0x000055c320f6ca8a (anonymous (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x3548a8a)
>    #9 0x000055c320f9913e (anonymous (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x357513e)
>    #10 0x000055c320f99edc (anonymous (/opt/cross/clang-1ac403bd14/bin/cla=
ng-11+0x3575edc)
>    #11 0x000055c320f9b9c1 llvm::SelectionDAG::Combine(llvm::CombineLevel,=
 llvm::CodeGenOpt::Level) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x35779=
c1)
>    #12 0x000055c321065c1b llvm::SelectionDAGISel::CodeGenAndEmitDAG() (/o=
pt/cross/clang-1ac403bd14/bin/clang-11+0x3641c1b)
>    #13 0x000055c321069e62 llvm::SelectionDAGISel::SelectAllBasicBlocks(ll=
vm::Function const&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3645e62)
>    #14 0x000055c32106ba0d llvm::SelectionDAGISel::runOnMachineFunction(ll=
vm::MachineFunction&) (.part.816) (/opt/cross/clang-1ac403bd14/bin/clang-11=
+0x3647a0d)
>    #15 0x000055c31f31df55 (anonymous namespace)::PPCDAGToDAGISel::runOnMa=
chineFunction(llvm::MachineFunction&) (/opt/cross/clang-1ac403bd14/bin/clan=
g-11+0x18f9f55)
>    #16 0x000055c31fb1b467 llvm::MachineFunctionPass::runOnFunction(llvm::=
Function&) (.part.40) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x20f7467)
>    #17 0x000055c31fe77dfb llvm::FPPassManager::runOnFunction(llvm::Functi=
on&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x2453dfb)
>    #18 0x000055c31fe78493 llvm::FPPassManager::runOnModule(llvm::Module&)=
 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x2454493)
>    #19 0x000055c31fe787eb llvm::legacy::PassManagerImpl::run(llvm::Module=
&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x24547eb)
>    #20 0x000055c3206c9228 (anonymous namespace)::EmitAssemblyHelper::Emit=
Assembly(clang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std=
::default_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/b=
in/clang-11+0x2ca5228)
>    #21 0x000055c3206cab85 clang::EmitBackendOutput(clang::DiagnosticsEngi=
ne&, clang::HeaderSearchOptions const&, clang::CodeGenOptions const&, clang=
::TargetOptions const&, clang::LangOptions const&, llvm::DataLayout const&,=
 clang::BackendAction, std::unique_ptr<llvm::raw_pwrite_stream, std::defaul=
t_delete<llvm::raw_pwrite_stream> >) (/opt/cross/clang-1ac403bd14/bin/clang=
-11+0x2ca6b85)
>    #22 0x000055c32115b425 clang::BackendConsumer::HandleTranslationUnit(c=
lang::ASTContext&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x3737425)
>    #23 0x000055c32195b909 clang::ParseAST(clang::Sema&, bool, bool) (/opt=
/cross/clang-1ac403bd14/bin/clang-11+0x3f37909)
>    #24 0x000055c320bf28a1 clang::FrontendAction::Execute() (/opt/cross/cl=
ang-1ac403bd14/bin/clang-11+0x31ce8a1)
>    #25 0x000055c320bb3d08 clang::CompilerInstance::ExecuteAction(clang::F=
rontendAction&) (/opt/cross/clang-1ac403bd14/bin/clang-11+0x318fd08)
>    #26 0x000055c320c97ed9 (/opt/cross/clang-1ac403bd14/bin/clang-11+0x327=
3ed9)
>    #27 0x000055c31e8cd1ec cc1_main(llvm::ArrayRef<char char (/opt/cross/c=
lang-1ac403bd14/bin/clang-11+0xea91ec)
>    #28 0x000055c31e8ca2e7 ExecuteCC1Tool(llvm::SmallVectorImpl<char (/opt=
/cross/clang-1ac403bd14/bin/clang-11+0xea62e7)
>    #29 0x000055c31e80f523 main (/opt/cross/clang-1ac403bd14/bin/clang-11+=
0xdeb523)
>    #30 0x00007f1e268a8bbb __libc_start_main (/lib/x86_64-linux-gnu/libc.s=
o.6+0x26bbb)
>    #31 0x000055c31e8c9d6a _start (/opt/cross/clang-1ac403bd14/bin/clang-1=
1+0xea5d6a)
> >> clang-11: error: unable to execute command: Segmentation fault
> >> clang-11: error: clang frontend command failed due to signal (use -v t=
o see invocation)
>    clang version 11.0.0 (git://gitmirror/llvm_project 1ac403bd145dadfa100=
4af29bd6c77f871caf42c)
>    Target: powerpc64-unknown-linux-gnu
>    Thread model: posix
>    InstalledDir: /opt/cross/clang-latest/bin
>    clang-11: note: diagnostic msg: PLEASE submit a bug report to https://=
bugs.llvm.org/ and include the crash backtrace, preprocessed source, and as=
sociated run script.
>    clang-11: note: diagnostic msg:
>    Makefile arch drivers include kernel null.dwo scripts source usr virt

Will reproduce, creduce, and file a bug.

> vim +/core99_l2_cache +664 arch/powerpc/platforms/powermac/smp.c
>=20
> 5b9ca526917b7b Benjamin Herrenschmidt 2006-01-07  662 =20
> 35499c0195e46f Paul Mackerras         2005-10-22  663  /* L2 and L3 cache=
 settings to pass from CPU0 to CPU1 on G4 cpus */
> 35499c0195e46f Paul Mackerras         2005-10-22 @664  volatile static lo=
ng int core99_l2_cache;
> 35499c0195e46f Paul Mackerras         2005-10-22 @665  volatile static lo=
ng int core99_l3_cache;
> 35499c0195e46f Paul Mackerras         2005-10-22  666 =20
>=20
> :::::: The code at line 664 was first introduced by commit
> :::::: 35499c0195e46f479cf6ac16ad8d3f394b5fcc10 powerpc: Merge in 64-bit =
powermac support.
>=20
> :::::: TO: Paul Mackerras <paulus@samba.org>
> :::::: CC: Paul Mackerras <paulus@samba.org>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200325082216.GA1803%40ubuntu-m2-xlarge-x86.
