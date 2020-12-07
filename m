Return-Path: <clang-built-linux+bncBCR5PSMFZYORBWN5XD7AKGQEPHVH2QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F50A2D1081
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 13:23:55 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 1sf8581170pgq.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 04:23:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607343834; cv=pass;
        d=google.com; s=arc-20160816;
        b=orBYZfl1nuzsdHJM+onEKbXV1sai1RmWyVNanBeX/qhhvmAHFlFzRAdjb4AzAaUgcI
         PZAOl5TlOnD+raLRpSJgvfH0zjrBLdAL9lmP8ZoykZjBy5A+J8mm+9/SJoQCZ4lvwehM
         CteVSE1qGtbGJpw3iv2E0Y+w10CdgBi1EJG325TNvoR66/KtWmWnmjH6+TjUDmI/BLAY
         9n2X1aprs01pIixr9NyY/5Nbwb7RuYXJMl9tU3kUrgGjRp1IgFFDOx/7jOXoJRskk4zV
         kJu7GslctHNXUHOy5jyJjcP2Bi7yIJ4Wyv0l0GbgejdakYfCwTSjgDCd150Y/c0wg4gE
         72pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=RiMmaeJF2nOpcDoTPsYvm02z2A/PWDJc3uzT7QNBIHg=;
        b=RIj3dVvCBa+9w7wCatI1LDkhh/CS2zpX5jXJIgvX2bXUsY/t4Y0oAQbUi3+IjIvxRd
         Gj/yG0zp75lkJST+f8yUFpqtFskIGg536WeZA2Id9GxrDwmfxKvBRGbE419TxrzZTIlY
         CC5OK0Dmj443skx4Go3sLYYefrMQAIiv1o9fkxj3x9ItDJiI8Briz2J7CgJ7fZGkVFuu
         K1IEGQOdy+ePe85d2iSI2Bx+3qu2kXsmInF3NWImasOWeNI8iQf/F9T2wQnQaNgmmaQo
         /+Hoj6zUpddD+5C28M2MihLz4mMWHzZ2uZ9XSOa2V038cVeWoSitFA/LwK22w4X6m/Ji
         aLGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=Jaz1NyI5;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RiMmaeJF2nOpcDoTPsYvm02z2A/PWDJc3uzT7QNBIHg=;
        b=k1cSpzZ/VYmCLhHZEjV0wol9uZEzB6cuBvC13/Pt1ewMSx16CQ8k3+nk7iZ0jFCdHS
         YwKMdSnwfAcDSnIG5hr+sFA6AkCzV13zUhCpfU/tdp2OC1vNuRK0G/L5uGEFH9kcQJt6
         lcZ4DYMBukIo6PMYUOC8DWHwSXGsZs32LGA0dGr22aESSCUp1UJkofcI7bW2ObGSZrS/
         xf8vfP9sd97+wrkT6/l3kYeEjM/2K8+r0IXHczmEojfwW0JHLzNKXPKLtqTURRutGfEf
         rxPrlt+6Di4nYSuaDpQltxiULgjjEzn1e8boIYpC91UXyOfiBU84TkXASJrXf5uf5Rw8
         /Dhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RiMmaeJF2nOpcDoTPsYvm02z2A/PWDJc3uzT7QNBIHg=;
        b=Fzw5tQRy9EpOmTlZLoOfPNL32zKNvNRSuKoi6dY5xFuG9+LjmBPv/DaypAE+FO8aao
         PoXCKcMck4F7WUz/BUHo/fvQ7xz3sjIS3W5d3zFe0jU88qe6W6135wJpG3rhD89upnrf
         rEfTqm63Kuktza94ViDUlDZxo7U2StkuAWwd4xsxjo1fV5L6GnRKvQvOb9YS97jY5jaJ
         QVEhGC0GCeRiRi3YzL/DjcsJzbYaypGw+mTmUNSmWUY/MGLJ7ufOfPHnJ5Ka+ifFUtY7
         HEdY/q6ASYKGCw6Wp4PfNxQPYBPgIK6QoYUlqoUPCa4I9e2KJlw3NX8JeRRPcDep0TQx
         nBhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qHWAFx7JXsqpUj182erfk0G48kCIW9EgRLHM0ZJLWMuv/BJNZ
	7KPMarxAIaue4wuEYzwpXHg=
X-Google-Smtp-Source: ABdhPJzes/g32aM6LpBi1Uq3049ek3nrVadzyGwTP6GHmSGOGPyQtRbw/ny71L/n8BAlAfYWWoSzBw==
X-Received: by 2002:a17:90a:a393:: with SMTP id x19mr16887944pjp.68.1607343834167;
        Mon, 07 Dec 2020 04:23:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d97:: with SMTP id y145ls6752398pfc.10.gmail; Mon, 07
 Dec 2020 04:23:53 -0800 (PST)
X-Received: by 2002:a63:e20:: with SMTP id d32mr18476238pgl.94.1607343833415;
        Mon, 07 Dec 2020 04:23:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607343833; cv=none;
        d=google.com; s=arc-20160816;
        b=qG8wEbu2eggESnWrFYiBeW3mym22cPg05GpotFqdXhBHvi+g80mG0oSuw86gZ5n2xy
         W6trpMCNHPsGkAt9S8TzDuFwt2p3GPe29jQoiPm4vDMCNsDpGuKkmRYI3pRhXZ/QX2NU
         WWbeXo4dNiflXiOeltN4RvNuP2wLkFrN7R32MPXtVCJ6MV64ujtA3FJVQ7gZjVSkNvjA
         x+7+rSAUIcdpvq8IMev8BLPh3S36P34kLc4i+oI5WIY4xOEWZQ8G2s6iOBYC2otAh3o1
         aoEzp6/c0Bg/hgmoGx0Rfppi8BVD61NYe+SlQ1ZgztRxdHQx04Gf+onlSIlwkajP3mC8
         Dhdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=0gWplW4j+f9mbE3E3uanOoY2Fq52XxzXsRNwiKaPddA=;
        b=A4qUtDRtKpQqKhmMu3KjQcoyLMmu3LtjG7JoghPFM/F4UxVCjY6Qsm63OM43yHlu8k
         TdfgBKY3Y2VtDGZSXae6YYfWtO54kiXJ4ZgSLguRzeLz3dYqso96Nx82o7WYBErDe/RL
         CxJtMIY4Kh1AJpCDcQ3n4hlBWc+D+Cer9k3/OgCUzb98eDbnvlYVnLeGzN6ZO+u3/CWA
         /+8EMx8dhSa7T3DEVJGxG0QKkjSxsysuX6PXqfd8dewFZfVx0xIlsoVw8wIdBFWinKwB
         JjnCqxp12oZ+Z9+i07VRNgX8FClUZGE6tEyW3O8kWJpLrdkje0fDjt7jVFEKhQXLUHaY
         seVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=Jaz1NyI5;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id w6si741691pjr.2.2020.12.07.04.23.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 04:23:52 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4CqMtB4Fy2z9sR4;
	Mon,  7 Dec 2020 23:23:46 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: kernel test robot <lkp@intel.com>, Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
Subject: Re: [powerpc:next-test 54/220] arch/powerpc/kernel/vdso32/vgettimeofday.c:13:5: warning: no previous prototype for function '__c_kernel_clock_gettime64'
In-Reply-To: <202012042220.zO7hSFT2-lkp@intel.com>
References: <202012042220.zO7hSFT2-lkp@intel.com>
Date: Mon, 07 Dec 2020 23:23:43 +1100
Message-ID: <87czzlu7n4.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=Jaz1NyI5;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

kernel test robot <lkp@intel.com> writes:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git=
 next-test
> head:   4e4ed87981c764498942c52004c620bb8f104eac
> commit: d0e3fc69d00d1f50d22d6b6acfc555ccda80ad1e [54/220] powerpc/vdso: P=
rovide __kernel_clock_gettime64() on vdso32
> config: powerpc64-randconfig-r011-20201204 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c5=
01dd88b62787d3a5ffda7aabcf4650dbe3cd)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.g=
it/commit/?id=3Dd0e3fc69d00d1f50d22d6b6acfc555ccda80ad1e
>         git remote add powerpc https://git.kernel.org/pub/scm/linux/kerne=
l/git/powerpc/linux.git
>         git fetch --no-tags powerpc next-test
>         git checkout d0e3fc69d00d1f50d22d6b6acfc555ccda80ad1e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dpowerpc64=20
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    arch/powerpc/kernel/vdso32/vgettimeofday.c:7:5: error: conflicting typ=
es for '__c_kernel_clock_gettime'
>    int __c_kernel_clock_gettime(clockid_t clock, struct old_timespec32 *t=
s,
>        ^

We're building vdso32, which is 32-bit code, we pass -m32:

  clang -Wp,-MMD,arch/powerpc/kernel/vdso32/.vgettimeofday.o.d -nostdinc -i=
system /usr/lib/llvm-11/lib/clang/11.0.0/include -I/linux/arch/powerpc/incl=
ude -I./arch/powerpc/include/generated -I/linux/include -I./include -I/linu=
x/arch/powerpc/include/uapi -I./arch/powerpc/include/generated/uapi -I/linu=
x/include/uapi -I./include/generated/uapi -include /linux/include/linux/kco=
nfig.h -include /linux/include/linux/compiler_types.h -D__KERNEL__ -I /linu=
x/arch/powerpc -DHAVE_AS_ATHIGH=3D1 -Qunused-arguments -Wall -Wundef -Werro=
r=3Dstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fsho=
rt-wchar -fno-PIE -Werror=3Dimplicit-function-declaration -Werror=3Dimplici=
t-int -Werror=3Dreturn-type -Wno-format-security -std=3Dgnu89 --target=3Dpo=
werpc64le-linux-gnu --prefix=3D/usr/bin/powerpc64le-linux-gnu- --gcc-toolch=
ain=3D/usr -no-integrated-as -Werror=3Dunknown-warning-option -mlittle-endi=
an -m64 -msoft-float -pipe -mcpu=3Dpower8 -mtune=3Dpower9 -mno-altivec -mno=
-vsx -mno-spe -fno-asynchronous-unwind-tables -Wa,-mpower4 -Wa,-many -mlitt=
le-endian -fno-delete-null-pointer-checks -Wno-frame-address -Wno-address-o=
f-packed-member -Os -Wframe-larger-than=3D2048 -fno-stack-protector -Wno-fo=
rmat-invalid-specifier -Wno-gnu -mno-global-merge -Wno-unused-const-variabl=
e -fomit-frame-pointer -Wdeclaration-after-statement -Wvla -Wno-pointer-sig=
n -Wno-array-bounds -fno-strict-overflow -fno-stack-check -Werror=3Ddate-ti=
me -Werror=3Dincompatible-pointer-types -fmacro-prefix-map=3D/linux/=3D -Wn=
o-initializer-overrides -Wno-format -Wno-sign-compare -Wno-format-zero-leng=
th -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compar=
e -D_TASK_CPU=3D304 -shared -fno-common -fno-builtin -nostdlib -Wl,-soname=
=3Dlinux-vdso32.so.1 -Wl,--hash-style=3Dboth -include /linux/lib/vdso/getti=
meofday.c -fno-stack-protector -DDISABLE_BRANCH_PROFILING -ffreestanding -f=
asynchronous-unwind-tables   -I /linux/arch/powerpc/kernel/vdso32 -I ./arch=
/powerpc/kernel/vdso32    -DKBUILD_MODFILE=3D'"arch/powerpc/kernel/vdso32/v=
gettimeofday"' -DKBUILD_BASENAME=3D'"vgettimeofday"' -DKBUILD_MODNAME=3D'"v=
gettimeofday"' -m32 -c -o arch/powerpc/kernel/vdso32/vgettimeofday.o /linux=
/arch/powerpc/kernel/vdso32/vgettimeofday.c


>    arch/powerpc/include/asm/vdso/gettimeofday.h:183:5: note: previous dec=
laration is here
>    int __c_kernel_clock_gettime(clockid_t clock, struct __kernel_timespec=
 *ts,
>        ^

But this is inside an #ifdef __powerpc64__ block:

182 #ifdef __powerpc64__
183 int __c_kernel_clock_gettime(clockid_t clock, struct __kernel_timespec =
*ts,
184                              const struct vdso_data *vd);


So is clang defining __powerpc64__ even for 32-bit code?

And the answer appears to be yes:

  $ clang --version
  Ubuntu clang version 11.0.0-2
  Target: powerpc64le-unknown-linux-gnu

  $ clang -m32 -dM -E - < /dev/null | grep powerpc
  #define __powerpc64__ 1
  #define __powerpc__ 1

Compare to gcc:

  $ gcc --version
  gcc (Ubuntu 10.2.0-13ubuntu1) 10.2.0
 =20
  $ gcc -m32 -dM -E - < /dev/null | grep powerpc
  #define __powerpc__ 1
  #define powerpc 1
  #define __powerpc 1


Which is fairly problematic, because we use the presence/absence of
__powerpc64__ to determine if we're building 64-bit/32-bit code in
several places.

Not sure what the best approach for fixing that is.

cheers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87czzlu7n4.fsf%40mpe.ellerman.id.au.
