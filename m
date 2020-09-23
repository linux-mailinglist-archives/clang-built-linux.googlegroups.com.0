Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4XGV35QKGQE6NSHYTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A31276255
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 22:43:32 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id h14sf354594oos.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 13:43:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600893811; cv=pass;
        d=google.com; s=arc-20160816;
        b=feWNHr9OpesqicwZMJR+FIvstzcNmh8zDhgFWF4Sqj1dKk5tBiZZ6+KhQgMWXazsa1
         kHPyztsLLF5CvCi1UbzTUVQLLq8HUD2MVVgm5Hosrm2QNoSy+MfKAVEDX2hgJs+nz7LF
         L1qYmlFisSnIX7Vj18NhPdEHk7atkLkQkbPK26lzBsjwppsb907u59Yl2yXl9NJvbFHY
         /0/Ea4oayZBwgX1agAs2vHgv5RWQ7D4wnrBRkYuRlY5/HDBw0CfzRT5TIzkjihtqjVY4
         3uW3oWu5d8hQ+po2OJjdojRzcmGfrhMpGuasleJ6+8134jyOZHg6vnL1osw/IiXG2Zvz
         txVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1nW9Zocoh0GsjeFJaDO3DMbbDsnXsvnUOA4sLd5RU4Y=;
        b=tyTUIv9rC0iwexax64vUwNX1/3ym36XtVC3K0Ni2tW9jnGeyO0/y9YMe2J5PmZUjRh
         UyZyxLjItlB0Psv6YB/iapmmhAsCXXN8fiUEi5ibxaptuaU7zcN+PGNf8SkezIiKskZh
         i1fx1DMM25n+g5LpBh5+BueUgTKOSPda0nHWZBReBL9SDSN5WaXEeug9530dEH+0djSg
         B68ILvnuZc/zHDLP3cpoSrptz4Z9km1IkyFP1Jx0r9ykyvfRyxeSJqOLSGP/fySAf6c2
         fBn1VS7gBMxRx2U0E+H59eh/KyXoFjehQwGiyTAaAPIoGQ/xr8GqDvcvuGhtS4FGG8l9
         fFrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rMVvMtGJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1nW9Zocoh0GsjeFJaDO3DMbbDsnXsvnUOA4sLd5RU4Y=;
        b=bbAu8ava7kE9Ne3MTZw473okzYrYuzN9aGNBXqn4R4U3xHw+AV3r4aXqVnz4jsK40H
         +6OUT5J7wl3AzXwoAwPU+YcDTkzDXw3wsxjFlxnfjTrbgJuAlb2vegs0/Z2iBBuHzhdP
         JYhbuwNGgWIxiw4qau2Dz0EnOvkdO+lQCgNURpR/ESZcrd1rYcK3/eHmtT3r/EDcc/0n
         JX91Dlnw0wEQs/y5GqFIIW9YM/BHUdMuoMy5ZqzgpmFDoAONiO3pfUi5itsvHT5Gp3B4
         BzYMJw78mzAjCqbNU6/DS1KdguWmWmGa8EBlDOR1AOz5fpYhQBg99WrDiZbW0w1bKYsD
         sA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1nW9Zocoh0GsjeFJaDO3DMbbDsnXsvnUOA4sLd5RU4Y=;
        b=kGZxHPPS5+g4Q9R4R+PfOLBz6yq7qzQ1Gsh4GutZ9BptMw/QiQeW4A3Nv3UxaSB80O
         19AHeu7aDeFdEfK22hx/rrJlMSwvBnDs5nltf3vp77QgUpL90TfsEyVnMrFY6RId0zFI
         beLxpMYCnynwIxbra9/TZliMbYzoQKxBjoU0/QX/xpLMxUqAZgvSWVxhTThRxJ67v09J
         BltAYNfsI8k8pXwC47y0gSCKB6ACmAK2KreSz+48wT2iYFowhmah5ga4dWmLoJLVUdLp
         UPHzW38pgMt1F8lrhuOgum6mdzmnna1bsmUjIvb+Bt0Dxh3Tax60MqrxZqnxA7wQVr2P
         CtSw==
X-Gm-Message-State: AOAM531zNd0FMsq4K5OmKL92XZngZvOYQFY971PvCI/rNAXg1g/oPluU
	Zq4+8CdJq8Uq1nc5ODS9eJs=
X-Google-Smtp-Source: ABdhPJxh7TDay0CtNO80855swhsDtIMxg9lM9ueGscyzIvO7ilqM1kna5RJ82AzXE3eSyHISFLvrHA==
X-Received: by 2002:a05:6808:9bc:: with SMTP id e28mr731773oig.71.1600893810858;
        Wed, 23 Sep 2020 13:43:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1b72:: with SMTP id d18ls226303ote.6.gmail; Wed, 23
 Sep 2020 13:43:30 -0700 (PDT)
X-Received: by 2002:a9d:7095:: with SMTP id l21mr1008983otj.224.1600893810449;
        Wed, 23 Sep 2020 13:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600893810; cv=none;
        d=google.com; s=arc-20160816;
        b=o+jUR/EvZh06f8MRAZGT62yO/rc0/wwGWdBMhs2WtoQoJ+AAc47qO9R3DPR7CdUuHH
         TwOjTmC/Zo2t4ghPbbNcIZXNqtHzfuZCbM3dWOl4y1nWUtdre0G/PPLym5pcGlGbxufc
         1u3Pg0z3Cje/iVo0vk0LgeSmA6yHCB5mXljZTO5tYRdIJF8Rak/HDZ0mhwAvojOBAfEq
         9l4JKQ4yizlV5guJuOnpbhJaf0WyXUgCnyjHZ22Yd17V+sZs37+b2hDDfNLtfM0J2qpM
         0lNBHO1eIzlBfl+T+vuMUHiKLRhUPMVcYa0YEYfHtsiDjjGKuTHFkqlwvxPzITb1vhWb
         p52Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=aEh51D/f/Z6YvrShA4UATFoibbyhGIRdBuoFpUBiX0o=;
        b=xSGybJxN7TrZRnJF4xKOmU/GTCyqc5JZuyrjPwhELNoNWypyM8oZJYxotuxyXnb6DS
         YhnMf8yKV5uo/V7kPUkHDjgR0yhyHBszRMb3FHIlxQ9VlNAVY3j6IxMjjtU2ExEU91io
         p7QeuaQTLzke9r45/4BK+KOKLvowBL8bQPeK0TM4H6xST0stZoZ5S2ogUd3UFtAVPQU1
         8XYMXTzeprX6sRJB6PtyfQkQqOyL5PTDPgCMOsGohyWdq4vDL3B2x8caaj6j1O/FaIqI
         NwSijmcyuNhYkYwAagmro7PwkwGTtaE2X0vnHJtfhA98utJoaVZZS9QjwJzTFB/3opMR
         iv7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rMVvMtGJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id i15si48727oig.1.2020.09.23.13.43.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 13:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id q4so343769pjh.5
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 13:43:30 -0700 (PDT)
X-Received: by 2002:a17:90b:f18:: with SMTP id br24mr1043073pjb.32.1600893809470;
 Wed, 23 Sep 2020 13:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
 <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
 <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
 <20200922232956.GO28786@gate.crashing.org> <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
In-Reply-To: <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 13:43:18 -0700
Message-ID: <CAKwvOdkBH7=hjNQiXUGx8D2oyyrVZdDSo0QwS3MO+nU=FCaaQQ@mail.gmail.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40:
 Error: syntax error; found `@', expected `,'
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, kernel test robot <lkp@intel.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rMVvMtGJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Sep 23, 2020 at 12:26 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@goog=
le.com> wrote:
>
> On Tue, Sep 22, 2020 at 4:32 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > Hi!
> >
> > On Tue, Sep 22, 2020 at 03:51:12PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> > > On Tue, Sep 22, 2020 at 2:55 PM Segher Boessenkool
> > > <segher@kernel.crashing.org> wrote:
> > > > This is the 32-bit @local relocation; its history predates binutils=
 CVS
> > > > (so older than 1999).  It is the same as @local24pc (which is docum=
ented
> > > > in even the oldest ABI documents).  It *uses* the GOT (or PLT).
> > > >
> > > > If you do have @local24pc, just add an alias @local for it?
> > >
> > > R_PPC_LOCAL24PC is a legacy thing.
> >
> > I have no idea what you call "legacy".  It is very much an active
> > feature.
>
> R_PPC_LOCAL24PC and R_PPC_PLTREL24 are not inherited by ppc64. That is
> a pretty good sign that they are "legacy" :)
>
> > > GCC appears to emit it when
> > > referencing hidden/internal/local symbols.
> >
> > GCC uses it for PIC (and other things).
> >
> > > It was invented probably
> > > because a couple of decades ago people think having relocation types
> > > to encode symbol properties was a good idea.
> >
> > It *had* to be invented.  The ABIs clearly say what it does, and no
> > other mechanism provide for that.  It has nothing to do with symbol
> > properties.
>
> They may have overloaded edge-case semantics in binutils but their
> general purpose use cases aren't any different from _REL24.
>
> > > This is not useful
> > > because symbol information can change when merging information from
> > > other translation units (a default visibility can become hidden). Suc=
h
> > > properties are really the symbols', and not the relocation types'.
> > > ppc64 has unified R_PPC_LOCAL24PC/R_PPC_REL24/R_PPC_PLTREL24.
> >
> > It is not clear to me what you are saying here.
> >
> > > When I implemented R_PPC_LOCAL24PC for LLD
> > > (https://reviews.llvm.org/D62464 ) I simply treated it as an alias fo=
r
> > > R_PPC_REL24.
> >
> > But it very obviously is *not*.  It might not matter for the one use
> > case you wanted to support, of course.
> >
> > In any case, you should implement @local as well?  That is used as an
> > alias to @local24pc for over twenty years now.
> >
> > > It is clear that LLVM integrated assembler needs to support @local24p=
c
> > > .... There isn't even a test case in binutils-gdb.
> > >
> > > If there is a @local24pc use case, just change it to @local. The
> > > suffix can probably be deleted as well.
> >
> > If you want to claim to support the older ABIs, you need to implement
> > support for them.
> >
> >
> > Segher
>
> clang ppc32 supports @local and LLD supports R_PPC_LOCAL24PC, which
> are sufficient. Even GNU as does not have a test for @local24pc and I
> cannot find usage in the wild, so clang probably does not need to
> support @local24pc.

I just fetched the config and can reproduce via:
$ ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64le-linux-gnu- make CC=3Dclang -j7=
1
arch/powerpc/kernel/vdso32/gettimeofday.o

Adding `V=3D1` to the above, I see:

clang -Wp,-MMD,arch/powerpc/kernel/vdso32/.gettimeofday.o.d  -nostdinc
-isystem /android0/llvm-project/llvm/build/lib/clang/12.0.0/include
-I./arch/powerpc/include -I./arch/powerpc/include/generated
-I./include -I./arch/powerpc/include/uapi
-I./arch/powerpc/include/generated/uapi -I./include/uapi
-I./include/generated/uapi -include ./include/linux/kconfig.h
-D__KERNEL__ -I ./arch/powerpc -DHAVE_AS_ATHIGH=3D1 -Qunused-arguments
-D__ASSEMBLY__ -fno-PIE --target=3Dpowerpc64le-linux-gnu
--prefix=3D/usr/bin/powerpc64le-linux-gnu- --gcc-toolchain=3D/usr
-no-integrated-as -Werror=3Dunknown-warning-option -m64 -Wl,-a64
-Wa,-maltivec -Wa,-mpower4 -Wa,-many -mlittle-endian -Wa,-gdwarf-2
-D__VDSO32__ -s     -m32 -c -o
arch/powerpc/kernel/vdso32/gettimeofday.o
arch/powerpc/kernel/vdso32/gettimeofday.S

(so I was wrong about -no-integrated-as)

I wonder if we need to be setting --target=3Dpowerpc-linux-gnu instead?
Maybe the -m32 isn't being forwarded to the assembler?  Or is there an
assembler directive we can use to tell the assembler that this should
be assembled in 32b mode? (looks like no:
https://sourceware.org/binutils/docs/as/PowerPC_002dPseudo.html#PowerPC_002=
dPseudo)

```
foo:
  bl bar@local

bar:
```
assembles with powerpc-linux-gnu-as but fails with the error message
we observe for powerpc64le-linux-gnu-as. (I'm pretty sure we had
similar issues with the compat vdso on arm64).

ah, `-a32` will put the assembler in 32b mode.  I'm guessing gcc maybe
adds this implicitly for `-m32`?

```
diff --git a/arch/powerpc/kernel/vdso32/Makefile
b/arch/powerpc/kernel/vdso32/Makefile
index 73eada6bc8cd..c29d948f45e3 100644
--- a/arch/powerpc/kernel/vdso32/Makefile
+++ b/arch/powerpc/kernel/vdso32/Makefile
@@ -26,7 +26,7 @@ UBSAN_SANITIZE :=3D n

 ccflags-y :=3D -shared -fno-common -fno-builtin -nostdlib \
        -Wl,-soname=3Dlinux-vdso32.so.1 -Wl,--hash-style=3Dboth
-asflags-y :=3D -D__VDSO32__ -s
+asflags-y :=3D -D__VDSO32__ -s -Wa,-a32

 obj-y +=3D vdso32_wrapper.o
 targets +=3D vdso32.lds
```
gets us a little further, but then I observe additional failures:
```
  VDSO32A arch/powerpc/kernel/vdso32/gettimeofday.o
arch/powerpc/kernel/vdso32/gettimeofday.S: Assembler messages:
arch/powerpc/kernel/vdso32/gettimeofday.S:39: Error: operand out of
range (0x00000000000f4240 is not between 0xffffffffffff8000 and
0x000000000000ffff)
arch/powerpc/kernel/vdso32/gettimeofday.S:39: Error: syntax error;
found `@', expected `,'
arch/powerpc/kernel/vdso32/gettimeofday.S:39: Error: junk at end of
line: `@high'
arch/powerpc/kernel/vdso32/gettimeofday.S:83: Error: operand out of
range (0x000000003b9aca00 is not between 0xffffffffffff8000 and
0x000000000000ffff)
arch/powerpc/kernel/vdso32/gettimeofday.S:83: Error: syntax error;
found `@', expected `,'
arch/powerpc/kernel/vdso32/gettimeofday.S:83: Error: junk at end of
line: `@high'
arch/powerpc/kernel/vdso32/gettimeofday.S:203: Error: operand out of
range (0x00000000003d0900 is not between 0xffffffffffff8000 and
0x000000000000ffff)
arch/powerpc/kernel/vdso32/gettimeofday.S:203: Error: syntax error;
found `@', expected `,'
arch/powerpc/kernel/vdso32/gettimeofday.S:203: Error: junk at end of
line: `@high'
clang-12: error: assembler command failed with exit code 1 (use -v to
see invocation)
make[3]: *** [arch/powerpc/kernel/vdso32/Makefile:49:
arch/powerpc/kernel/vdso32/gettimeofday.o] Error 1
```
That's preprocessed in, but looks like support for @high is missing
from clang as well.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkBH7%3DhjNQiXUGx8D2oyyrVZdDSo0QwS3MO%2BnU%3DFCaaQQ=
%40mail.gmail.com.
