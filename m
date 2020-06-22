Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXPKYP3QKGQEYBWN7YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3BA203EE7
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 20:15:59 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id h25sf201997ote.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 11:15:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592849758; cv=pass;
        d=google.com; s=arc-20160816;
        b=OQgLEYc5vwWSzqYl0nHDuK11l60Z0rdFHJpVwH+lrre39zar/tmh60FIlwi+NT5r2m
         yGfq4nXlCurBGmRAdqSs4xy6wXG5pHNhTkWEtdn61UzCnon+AKYT/hX39pca0My2a1eD
         qtLg/D94skvssjpTs/4g7WyBvJnYsKaCef9fFbvHK1TQIhaDdK/Id5Sfg88XEdbNJ74+
         ZoT58Es17Rl8JfJQZuViBo4r6vWKbplBh21f7Pq8FyxqYPaXUyok/GaTvfjyq9BKW+N1
         smA9bcPaKf5Eqp7tb2ZLPoqW43U7esU6oCHbvuhKOizvJ5/4sEZrz0G5myN4B12hDMWI
         revQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0sGDVHC/33eDOlOZHeA3vckukFPVWOs8NoyqfMAYusQ=;
        b=NzYsHSYwSRA192PD5UagMatdqQIpqYgzg3VAczcLrjQCN2HYEjcbNwZhZa/2WmjOs+
         EEelH5zjw9kzze26jidsrtnHZw6UYVaZF9TRRd6ul3+RbdXsZHXRsidN+3NovnxV64lw
         xxH82rZtb3fdTj/VKxzuAoUiOocDkFtWJyNTx0KHj4q9NpA3uxuF+021wUnH447I69/S
         wWNc2YAyk+6roqzugRLI2KYW7p6GHDAUwcU+Ev7OHSiyuvXGsmbaw4HiVdNcWK5UVI5w
         dFChv6EGk0VP66+8Pdojoz6ce1qDFkdGiQ0kpZRp8N/PDOSPNDj2F+5NduIHbQRCp6jb
         hymw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c0k1NtG8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0sGDVHC/33eDOlOZHeA3vckukFPVWOs8NoyqfMAYusQ=;
        b=sKzVvx9nEJYGB8cs3oytm0I298xrnuca5Te3/noOc4rPTYvmpPCQphne4aTfjogeGx
         kAY3/tq61q6rOvteqUMG/H49zQmoEcPDM6ksT/xVcEmjhdVE9J9hknk5oJLENAEmRrnF
         K4slg3+KMjX8eNL13faukmeVhzpj3h00b1BLJIEQeQmDA5sXjLvt0GTVB7BGi22zjNYi
         il4U3FB/caCo9V9T7OIkUk/dv3D/mhZdOpnsyPjtDGOtIxOwKWlNo5UwmBzq2UhwEjaw
         vpjWl9X8tY7KekZ4Z5lQ9tpN0gCyOGbJa1lOyGkUtMkN2vmkqmfjjw9Z3dpOaU3+3pR7
         PLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0sGDVHC/33eDOlOZHeA3vckukFPVWOs8NoyqfMAYusQ=;
        b=L4vt2GMx1iubaNHOk5Yb2ko+LyPqIns2jBOcEfKyv40BWlAqBFB3tU4FDmQ+l5vMBQ
         /ZxdyfjCZ9kws5CJEma/IFgqGEx0TsIIfmWIa8u/UM+4/eUlPvhdUbJCW6yc89E6ty5O
         V/6ASqf+BE85LWG9chq/AVVZYKAAnRADU9Qme7E4mZ9I+Uhf2pgKOj0/ywo4m5M3G4Lv
         SKA0/hWeEnOfMVAhAeUhBLe3mLfNb/va472hgYDZ4WVfs5ldx003PYOBOq5v2T0pYLtD
         r853shM9k69S7J+HRyxF+726OkaCqdFM7tnhqER5L96E2ROyJYzNaySYwRJig66ORN6Z
         NRIw==
X-Gm-Message-State: AOAM530ylmSOPHy1A5q8ufXpTVo86xh26N/uho0Adowi8qnHAyNDs1fc
	f88zUbUcOdukrIjaqXXb/Lc=
X-Google-Smtp-Source: ABdhPJxG93SI5jcuGCrd1wOxTNF+gOMzB++6KJAfgTFq2YMSwq2MqsnMapb9+5S0wLo8/DF5xg/O9A==
X-Received: by 2002:a05:6830:210d:: with SMTP id i13mr14058149otc.252.1592849757831;
        Mon, 22 Jun 2020 11:15:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:520f:: with SMTP id g15ls1425199oib.7.gmail; Mon, 22 Jun
 2020 11:15:57 -0700 (PDT)
X-Received: by 2002:a05:6808:20c:: with SMTP id l12mr13552123oie.32.1592849757511;
        Mon, 22 Jun 2020 11:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592849757; cv=none;
        d=google.com; s=arc-20160816;
        b=cBkjCBPsnmHlQIzIpRY7h0nZkdKbz67SbPN8jjseLiix1/OYf+aZekSDuV0EygvvTy
         5tQhB5niYWV+Mocv0tBArGidf0F3jknm5LOV/1UNwgXlKnM88lDQRut+YEuTF5r+QgmM
         LkvAaqxRwDdiTkxVVnFjvvnDOK1gbrQfxZz7E+KYD3aDgqd5/1v+DuqwbAuEAMccArFf
         XVKkw9/bKOte/xqyoUqLN45NFJS//1aybs86Y6F46VYLYCP3C3+FEfauTuJRXRXooAJe
         N2b7xOYc/tCvIHWAuwpSPRcdk9qp1elfgkAItxHuJnBUCF35vFGOyQTAPMsn8iEtiie7
         zBeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9K4yuS9GzXVwpGfNy/7h0Iyt2LnJ7F/lC1aAY0PM1GY=;
        b=K8usqwzeH/tRq2t9xRI6oRvqagWyaBlEI+fQ/LbsWDKZq7xOpXBvyjX7ifb/JEt86W
         +eyEOyOD7fe1ixQE1TuVwNSotjeUujCkqAPBNs8mIWUT18jqsKpA/sDMxln+aMlwckia
         AxxRHuf5XKH+NLyg8//231p8U6eC/l+T6A/f1BZ3iyZjRRICCfXfMvAu3cwloFyACJpD
         BiItAOfM9DmRQsPpuu6uANKrs3pOMe1NVKyioY83Qsh6xMBVarwb9SuZ0JbbZLdYPotE
         8nCX+262ftkeNeEi0TGD7Axx84VMHytjGwuzmAHRSIv81czXAdfpW4eyuOD/NGlNrGIo
         6jRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c0k1NtG8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id z6si453111oid.4.2020.06.22.11.15.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 11:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id h10so8526895pgq.10
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 11:15:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr21820346pfu.169.1592849756434;
 Mon, 22 Jun 2020 11:15:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200619174127.22304-3-bp@alien8.de> <202006210328.6YokxLP3%lkp@intel.com>
 <20200622170446.GG32200@zn.tnic>
In-Reply-To: <20200622170446.GG32200@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 11:15:44 -0700
Message-ID: <CAKwvOd=PMNx+AYg8wxr5pQC3_RHBQzwpELptHuYx_GLosOvoeA@mail.gmail.com>
Subject: Re: [PATCH 2/2] selftests/fpu: Add an FPU selftest
To: Borislav Petkov <bp@alien8.de>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	X86 ML <x86@kernel.org>, kbuild-all@lists.01.org, jpa@kernelbug.mail.kapsi.fi, 
	Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c0k1NtG8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Jun 22, 2020 at 10:04 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Sun, Jun 21, 2020 at 03:55:00AM +0800, kernel test robot wrote:
> > Hi Borislav,
> >
> > Thank you for the patch! Yet something to improve:
> >
> > [auto build test ERROR on kselftest/next]
> > [also build test ERROR on tip/auto-latest linus/master v5.8-rc1 next-20=
200618]
> > [cannot apply to tip/x86/core]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use  as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Borislav-Petkov/x86-FP=
U-FPU-sanitization-for-in-kernel-use/20200620-014453
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kse=
lftest.git next
> > config: x86_64-allmodconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 48=
7ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> ERROR: modpost: "__gtdf2" [lib/test_fpu.ko] undefined!
> > >> ERROR: modpost: "__divdf3" [lib/test_fpu.ko] undefined!
> > >> ERROR: modpost: "__muldf3" [lib/test_fpu.ko] undefined!
> > >> ERROR: modpost: "__adddf3" [lib/test_fpu.ko] undefined!
>
> Hmm, the point here is to actually have SSE* code in a kernel module for
> testing. And gcc does the right thing, see below.
>
> LLVM folks, how can I make llvm not call those library functions and
> actually spit out SSE* code?
>
> Full build command is:
>
>   /mnt/smr/share/src/llvm/tc-build/install/bin/clang-11 -Wp,-MMD,lib/.tes=
t_fpu.o.d  -nostdinc -isystem /mnt/smr/share/src/llvm/tc-build/install/lib/=
clang/11.0.0/include -I./arch/x86/include -I./arch/x86/include/generated  -=
I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I=
./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.=
h -include ./include/linux/compiler_types.h -D__KERNEL__ -Qunused-arguments=
 -Wall -Wundef -Werror=3Dstrict-prototypes -Wno-trigraphs -fno-strict-alias=
ing -fno-common -fshort-wchar -fno-PIE -Werror=3Dimplicit-function-declarat=
ion -Werror=3Dimplicit-int -Wno-format-security -std=3Dgnu89 -no-integrated=
-as -Werror=3Dunknown-warning-option -mno-sse -mno-mmx -mno-sse2 -mno-3dnow=
 -mno-avx -m64 -mno-80387 -mstack-alignment=3D8 -march=3Dk8 -mno-red-zone -=
mcmodel=3Dkernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpol=
ine-external-thunk -fno-delete-null-pointer-checks -Wno-frame-address -Wno-=
address-of-packed-member -O2 -Wframe-larger-than=3D2048 -fstack-protector -=
Wno-format-invalid-specifier -Wno-gnu -mno-global-merge -Wno-unused-const-v=
ariable -g -DCC_USING_FENTRY -Wdeclaration-after-statement -Wvla -Wno-point=
er-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fn=
o-stack-check -Werror=3Ddate-time -Werror=3Dincompatible-pointer-types -fma=
cro-prefix-map=3D./=3D -fcf-protection=3Dnone -Wno-initializer-overrides -W=
no-format -Wno-sign-compare -Wno-format-zero-length -Wno-pointer-to-enum-ca=
st -Wno-tautological-constant-out-of-range-compare -mhard-float -msse  -DMO=
DULE  -DKBUILD_BASENAME=3D'"test_fpu"' -DKBUILD_MODNAME=3D'"test_fpu"' -c -=
o lib/test_fpu.o lib/test_fpu.c

Add -msse2.  See also:
commit e8a170ff9a35 ("drm/amdgpu: enable -msse2 for GCC 7.1+ users")
potentially relevant, though less so:
commit 00db297106e8 ("drm/amdgpu: fix stack alignment ABI mismatch for
GCC 7.1+")
commit c868868f6b6a ("drm/amdgpu: fix stack alignment ABI mismatch for Clan=
g")
and may your stacks always share the same alignment.

>
> Thx.
>
> --- /tmp/test_fpu.s.gcc 2020-06-22 18:51:25.828615337 +0200
> +++ /tmp/test_fpu.s.llvm-11     2020-06-22 18:50:35.080614534 +0200
> @@ -1,74 +1,49 @@
> -test_fpu_get:
> -       pushq   %r12    #
> -       pushq   %rbx    #
> -       movq    %rsi, %rbx      # tmp119, val
> -       subq    $56, %rsp       #,
> -# lib/test_fpu.c:58:   kernel_fpu_begin();
> -       call    kernel_fpu_begin        #
> -# lib/test_fpu.c:32:   a =3D 4.0;
> -       movlpd  .LC1(%rip), %xmm0       #, tmp106
> -       movsd   %xmm0, (%rsp)   # tmp106, a
> -# lib/test_fpu.c:33:   b =3D 1e-15;
> -       movlpd  .LC2(%rip), %xmm0       #, tmp107
> -       movsd   %xmm0, 8(%rsp)  # tmp107, b
> -# lib/test_fpu.c:34:   c =3D 1e-310;
> -       movlpd  .LC3(%rip), %xmm0       #, tmp108
> -       movsd   %xmm0, 16(%rsp) # tmp108, c
> -# lib/test_fpu.c:37:   d =3D a + b;
> -       movlpd  (%rsp), %xmm0   # a, a.2_8
> -       movlpd  8(%rsp), %xmm1  # b, b.3_9
> -       addsd   %xmm1, %xmm0    # b.3_9, _10
> -# lib/test_fpu.c:37:   d =3D a + b;
> -       movsd   %xmm0, 24(%rsp) # _10, d
> -# lib/test_fpu.c:40:   e =3D a + b / 2;
> -       movlpd  8(%rsp), %xmm0  # b, b.4_11
> -# lib/test_fpu.c:40:   e =3D a + b / 2;
> -       movlpd  (%rsp), %xmm1   # a, a.5_13
> -# lib/test_fpu.c:40:   e =3D a + b / 2;
> -       mulsd   .LC4(%rip), %xmm0       #, tmp109
> -# lib/test_fpu.c:40:   e =3D a + b / 2;
> -       addsd   %xmm1, %xmm0    # a.5_13, _14
> -# lib/test_fpu.c:40:   e =3D a + b / 2;
> -       movsd   %xmm0, 32(%rsp) # _14, e
> -# lib/test_fpu.c:43:   f =3D b / c;
> -       movlpd  8(%rsp), %xmm0  # b, b.6_15
> -       movlpd  16(%rsp), %xmm1 # c, c.7_16
> -       divsd   %xmm1, %xmm0    # c.7_16, _17
> -# lib/test_fpu.c:43:   f =3D b / c;
> -       movsd   %xmm0, 40(%rsp) # _17, f
> -# lib/test_fpu.c:46:   g =3D a + c * f;
> -       movlpd  16(%rsp), %xmm0 # c, c.8_18
> -       movlpd  40(%rsp), %xmm2 # f, f.9_19
> -# lib/test_fpu.c:46:   g =3D a + c * f;
> -       movlpd  (%rsp), %xmm1   # a, a.10_21
> -# lib/test_fpu.c:46:   g =3D a + c * f;
> -       mulsd   %xmm2, %xmm0    # f.9_19, tmp111
> -# lib/test_fpu.c:46:   g =3D a + c * f;
> -       addsd   %xmm1, %xmm0    # a.10_21, _22
> -# lib/test_fpu.c:46:   g =3D a + c * f;
> -       movsd   %xmm0, 48(%rsp) # _22, g
> -# lib/test_fpu.c:48:   if (d > a && e > a && g > a)
> -       movlpd  24(%rsp), %xmm1 # d, d.11_23
> -       movlpd  (%rsp), %xmm0   # a, a.12_24
> -# lib/test_fpu.c:48:   if (d > a && e > a && g > a)
> -       comisd  %xmm0, %xmm1    # a.12_24, d.11_23
> -       jbe     .L15    #,
> -# lib/test_fpu.c:48:   if (d > a && e > a && g > a)
> -       movlpd  32(%rsp), %xmm1 # e, e.13_25
> -       movlpd  (%rsp), %xmm0   # a, a.14_26
> -# lib/test_fpu.c:48:   if (d > a && e > a && g > a)
> -       comisd  %xmm0, %xmm1    # a.14_26, e.13_25
> -       jbe     .L15    #,
> -# lib/test_fpu.c:48:   if (d > a && e > a && g > a)
> -       movlpd  48(%rsp), %xmm1 # g, g.15_27
> -# lib/test_fpu.c:51:           return -EINVAL;
> -       movl    $0, %r12d       #, tmp117
> -       movl    $-22, %eax      #, tmp118
> -# lib/test_fpu.c:48:   if (d > a && e > a && g > a)
> -       movlpd  (%rsp), %xmm0   # a, a.16_28
> -# lib/test_fpu.c:51:           return -EINVAL;
> -       comisd  %xmm0, %xmm1    # a.16_28, g.15_27
> -       cmovbe  %eax, %r12d     # tmp117,, tmp118, <retval>
> -.L4:
> -# lib/test_fpu.c:60:   kernel_fpu_end();
> -       call    kernel_fpu_end  #
> +test_fpu_get:                           # @test_fpu_get
> +# %bb.0:
> +       pushq   %rbp
> +       pushq   %rbx
> +       subq    $56, %rsp
> +       movq    %rsi, %rbx
> +       callq   kernel_fpu_begin
> +       movabsq $4616189618054758400, %rax # imm =3D 0x4010000000000000
> +       movq    %rax, (%rsp)
> +       movabsq $4382569440205035030, %rax # imm =3D 0x3CD203AF9EE75616
> +       movq    %rax, 8(%rsp)
> +       movabsq $20240225330731, %rax   # imm =3D 0x12688B70E62B
> +       movq    %rax, 16(%rsp)
> +       movq    (%rsp), %rdi
> +       movq    8(%rsp), %rsi
> +       callq   __adddf3
> +       movq    %rax, 48(%rsp)
> +       movq    (%rsp), %rbp
> +       movq    8(%rsp), %rdi
> +       movabsq $4602678819172646912, %rsi # imm =3D 0x3FE0000000000000
> +       callq   __muldf3
> +       movq    %rbp, %rdi
> +       movq    %rax, %rsi
> +       callq   __adddf3
> +       movq    %rax, 40(%rsp)
> +       movq    8(%rsp), %rdi
> +       movq    16(%rsp), %rsi
> +       callq   __divdf3
> +       movq    %rax, 32(%rsp)
> +       movq    (%rsp), %rbp
> +       movq    16(%rsp), %rdi
> +       movq    32(%rsp), %rsi
> +       callq   __muldf3
> +       movq    %rbp, %rdi
> +       movq    %rax, %rsi
> +       callq   __adddf3
> +       movq    %rax, 24(%rsp)
> +       movq    48(%rsp), %rdi
> +       movq    (%rsp), %rsi
> +       callq   __gtdf2
> +       testl   %eax, %eax
> +       jle     .LBB3_3
> +# %bb.1:
> +       movq    40(%rsp), %rdi
> +       movq    (%rsp), %rsi
> +       callq   __gtdf2
> +       testl   %eax, %eax
> +       jle     .LBB3_3
> +# %bb.2:
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
d/clang-built-linux/20200622170446.GG32200%40zn.tnic.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DPMNx%2BAYg8wxr5pQC3_RHBQzwpELptHuYx_GLosOvoeA%4=
0mail.gmail.com.
