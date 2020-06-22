Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBN6JYP3QKGQEYMTI5NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id EB62D203D6E
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:04:55 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id z3sf4976344wrr.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:04:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592845495; cv=pass;
        d=google.com; s=arc-20160816;
        b=lv/skjC3tQ9h6c4zUcdJ8+n5cEMUwWtmOTvNZRE0V7jW7DB7w8GO2MZOczg54rc34A
         JnW7JCF+0j+jfNYree8Ya/kx2uzb7yjwNxLBRagjYsYHk//6i4LKhXT24f1fy3HZ44Gd
         Unuu02GXCnzuZ+KNjCC0//EVlr9uxjj5SVH8MMdbVrrCUr3omYWAzkUtEJAokv3NaYFU
         Suo92GYUIZlFDodF7vpoubHQP9urRzzQTlFNnrE6UleaEatbaYROixCj9QyRKHtbl3aU
         Zy0JpuWUG3vZg5KfV08INsaIQiew1QM4HOS8xqLx+VB2StAa5qvKRMp1vexoXD66NQAB
         1xHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=IHaQu7DdPlmk80IURx+wv7klywrTLmeS3nzA6M+1YXY=;
        b=Z87hZtanz4NIjkaO0DXlEU9LaVChfrYVxUJgkkJq+WzwzXtrUPiJEPmJQsGPx+bkOS
         Rw5/rTffwe7ThQhuO9YM5DLCcdODwQUHOi3mq8p+oDsm87gvcoQDolM+VMcOPmcb9jpp
         lYKzb2XsqVVMPDyuXmX5oEXDMvGNFzmaKZ6sWSNxxYh9EVzUavsy0SSJEbqq3Y+tpGqs
         EAXe30aDbdYLlrRac5dt1OhfMRLWbx0EMYlYBYZ0xav6XIjE//eg3MBKlER29mvh8RNC
         3nQX5KcA0nwIONqL/fJJQS9AkUcKCiQo7T2EYCUENRGcr5Fha1NDsYxw6X6Hz9MZodTh
         6EIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Cm5lXkEb;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHaQu7DdPlmk80IURx+wv7klywrTLmeS3nzA6M+1YXY=;
        b=PIczNdPHakgtnksObjX03+XpCClZEgMMqWo7Y3S3T9E4ND8SWqMAGPb9JOPO7bUIR4
         3JLVATN5u0vwcaMKxTZgGlX/5WQ06wsocXragCDyNxqzSLe+bz6gQS7QW9us3rsQpWz+
         RnnB5ZWc0NJotoeMPsY2BmYRfA1BzAMrpD/VqWhs23bX+932Mes7pt+/JvxQWJzQJ9VM
         DlRj08RDLN2EeBuP8tvjiEJh/ay4n1a85AVTRd4u0YYGWb9NXeK3YRlcxwnwc4oNHNo5
         7w3YAumykhFk6nxqqlqGCWelQ1iGSCL2vzmRW4So08gPgbRzgmzFpMsIn2NfC9Hw07h/
         ghFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHaQu7DdPlmk80IURx+wv7klywrTLmeS3nzA6M+1YXY=;
        b=FFVaRectWeDLlxJ+NbmoMYxFIkCEi3K0ig4TdCTM0FF64uSJHBBT8AcQN73LEonEVR
         YyZImH3f8CyXKw0C5QQlzOMwUbcybkWPgNEgyaR7kygRoMdcM58n7LvrHhYG7UvLT7jF
         AXNa8uSYQyi4/JOQRJZ2OODIYwTdFfpZrXZVEu0QShB5BFf5YNshrAwGzzdrwPQKS33E
         k3ReB+ZexnffZNrAVCEGoM4oa9VRDy82CXdcykmwSsC1Yt0DDz2ZfN8W/dLs7ftLD9pf
         khizWUgsE1aL6bO3ET8SBdbHOznH4BuZt2FkulAepGakc1gisfHqmhMRkEZ37960s3vV
         D25A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532f2wb1TIen0aSVloxnKqP7XFCNaoDOlqJk/3Kh2YCdAeNNIkNp
	V58XkegdJocMrqTAeO7OPQ4=
X-Google-Smtp-Source: ABdhPJz/ocqsaTOlsC0DzoS7MGxs87WFldc28/kGpkM9yHaqVKz5VHici6dukK3xuITvIIgX072IZA==
X-Received: by 2002:adf:fcc5:: with SMTP id f5mr7157191wrs.60.1592845495628;
        Mon, 22 Jun 2020 10:04:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2301:: with SMTP id 1ls96645wmo.0.gmail; Mon, 22
 Jun 2020 10:04:55 -0700 (PDT)
X-Received: by 2002:a1c:e355:: with SMTP id a82mr8288794wmh.165.1592845495269;
        Mon, 22 Jun 2020 10:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592845495; cv=none;
        d=google.com; s=arc-20160816;
        b=ClHCEwPsz9xsvTa70O3YolFrnHfc0Fotnv77t2+mvft1oahwxOT3raVtUr/Ei+VbAb
         DCSCU6YIji8ONJmB9EgdYg+R7DhReOxnTDxyGRfZa5VPRqJkzxgeM9Bxpsz24Ho7+gCY
         dB7ubi8AKb/k6EGEfxZ6+lBFxWQcwU4YVmU9FKQw17rTbAPpgopZhD+BlaSzDznqH/9X
         4ZPWnrepT6XaAczOl7eYSY+SiSjeGQ86uCbiDEZFqC1fQ6TQ2HaIRLk5V71BCjCDPonn
         gE4dBrlJCnegiHyXY4FrppXdUoJ88AcleSZxfqE1j2b7Mrb/FlhyYHi6VJReHR/nVb//
         ms/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=4ZE0rblkVRU8ADgHdusXh5/vN8EII/na4ZFDGRwtdqk=;
        b=sC+KxD/eT1PSYUbUYbyFIUCnPGU7zuT/OIh47gNukhOckwrCq25fyJF6T4dhIJ6LW2
         91FTJ50/a57DR0JC5bXRWPflSerwwgCBiN5SNRSqNW+XrnRN6S/4ykiigE1fsg/uzDQ0
         0XDyuereg3GvrluFjCTPb/RH5fLVBXFTTg+VS0VOq3T52E/hDXZISLj8Ym9PpBaTxIqa
         kRwKc/xOm41qMpH3BPa4TO74ogvrL8SJUjn00GcfHFIpUyShujTfXN2Rbm3uhasncSrn
         2KdgSm+KKFUE1OlspMPHBg4BAh6LkiZzh7EihHKXYWLKd8FNZNE9SqH+ayfZJyRn3yJi
         jGew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Cm5lXkEb;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id s18si6833wme.2.2020.06.22.10.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0a2500329c23fffea6a903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0a:2500:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 888181EC0283;
	Mon, 22 Jun 2020 19:04:54 +0200 (CEST)
Date: Mon, 22 Jun 2020 19:04:46 +0200
From: Borislav Petkov <bp@alien8.de>
To: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com
Cc: X86 ML <x86@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, jpa@kernelbug.mail.kapsi.fi,
	Dave Hansen <dave.hansen@intel.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] selftests/fpu: Add an FPU selftest
Message-ID: <20200622170446.GG32200@zn.tnic>
References: <20200619174127.22304-3-bp@alien8.de>
 <202006210328.6YokxLP3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202006210328.6YokxLP3%lkp@intel.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Cm5lXkEb;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Sun, Jun 21, 2020 at 03:55:00AM +0800, kernel test robot wrote:
> Hi Borislav,
>=20
> Thank you for the patch! Yet something to improve:
>=20
> [auto build test ERROR on kselftest/next]
> [also build test ERROR on tip/auto-latest linus/master v5.8-rc1 next-2020=
0618]
> [cannot apply to tip/x86/core]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Borislav-Petkov/x86-FPU-=
FPU-sanitization-for-in-kernel-use/20200620-014453
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kself=
test.git next
> config: x86_64-allmodconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487c=
a07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>=20
> >> ERROR: modpost: "__gtdf2" [lib/test_fpu.ko] undefined!
> >> ERROR: modpost: "__divdf3" [lib/test_fpu.ko] undefined!
> >> ERROR: modpost: "__muldf3" [lib/test_fpu.ko] undefined!
> >> ERROR: modpost: "__adddf3" [lib/test_fpu.ko] undefined!

Hmm, the point here is to actually have SSE* code in a kernel module for
testing. And gcc does the right thing, see below.

LLVM folks, how can I make llvm not call those library functions and
actually spit out SSE* code?

Full build command is:

  /mnt/smr/share/src/llvm/tc-build/install/bin/clang-11 -Wp,-MMD,lib/.test_=
fpu.o.d  -nostdinc -isystem /mnt/smr/share/src/llvm/tc-build/install/lib/cl=
ang/11.0.0/include -I./arch/x86/include -I./arch/x86/include/generated  -I.=
/include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./=
include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h =
-include ./include/linux/compiler_types.h -D__KERNEL__ -Qunused-arguments -=
Wall -Wundef -Werror=3Dstrict-prototypes -Wno-trigraphs -fno-strict-aliasin=
g -fno-common -fshort-wchar -fno-PIE -Werror=3Dimplicit-function-declaratio=
n -Werror=3Dimplicit-int -Wno-format-security -std=3Dgnu89 -no-integrated-a=
s -Werror=3Dunknown-warning-option -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -=
mno-avx -m64 -mno-80387 -mstack-alignment=3D8 -march=3Dk8 -mno-red-zone -mc=
model=3Dkernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpolin=
e-external-thunk -fno-delete-null-pointer-checks -Wno-frame-address -Wno-ad=
dress-of-packed-member -O2 -Wframe-larger-than=3D2048 -fstack-protector -Wn=
o-format-invalid-specifier -Wno-gnu -mno-global-merge -Wno-unused-const-var=
iable -g -DCC_USING_FENTRY -Wdeclaration-after-statement -Wvla -Wno-pointer=
-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-=
stack-check -Werror=3Ddate-time -Werror=3Dincompatible-pointer-types -fmacr=
o-prefix-map=3D./=3D -fcf-protection=3Dnone -Wno-initializer-overrides -Wno=
-format -Wno-sign-compare -Wno-format-zero-length -Wno-pointer-to-enum-cast=
 -Wno-tautological-constant-out-of-range-compare -mhard-float -msse  -DMODU=
LE  -DKBUILD_BASENAME=3D'"test_fpu"' -DKBUILD_MODNAME=3D'"test_fpu"' -c -o =
lib/test_fpu.o lib/test_fpu.c

Thx.

--- /tmp/test_fpu.s.gcc	2020-06-22 18:51:25.828615337 +0200
+++ /tmp/test_fpu.s.llvm-11	2020-06-22 18:50:35.080614534 +0200
@@ -1,74 +1,49 @@
-test_fpu_get:
-	pushq	%r12	#
-	pushq	%rbx	#
-	movq	%rsi, %rbx	# tmp119, val
-	subq	$56, %rsp	#,
-# lib/test_fpu.c:58: 	kernel_fpu_begin();
-	call	kernel_fpu_begin	#
-# lib/test_fpu.c:32: 	a =3D 4.0;
-	movlpd	.LC1(%rip), %xmm0	#, tmp106
-	movsd	%xmm0, (%rsp)	# tmp106, a
-# lib/test_fpu.c:33: 	b =3D 1e-15;
-	movlpd	.LC2(%rip), %xmm0	#, tmp107
-	movsd	%xmm0, 8(%rsp)	# tmp107, b
-# lib/test_fpu.c:34: 	c =3D 1e-310;
-	movlpd	.LC3(%rip), %xmm0	#, tmp108
-	movsd	%xmm0, 16(%rsp)	# tmp108, c
-# lib/test_fpu.c:37: 	d =3D a + b;
-	movlpd	(%rsp), %xmm0	# a, a.2_8
-	movlpd	8(%rsp), %xmm1	# b, b.3_9
-	addsd	%xmm1, %xmm0	# b.3_9, _10
-# lib/test_fpu.c:37: 	d =3D a + b;
-	movsd	%xmm0, 24(%rsp)	# _10, d
-# lib/test_fpu.c:40: 	e =3D a + b / 2;
-	movlpd	8(%rsp), %xmm0	# b, b.4_11
-# lib/test_fpu.c:40: 	e =3D a + b / 2;
-	movlpd	(%rsp), %xmm1	# a, a.5_13
-# lib/test_fpu.c:40: 	e =3D a + b / 2;
-	mulsd	.LC4(%rip), %xmm0	#, tmp109
-# lib/test_fpu.c:40: 	e =3D a + b / 2;
-	addsd	%xmm1, %xmm0	# a.5_13, _14
-# lib/test_fpu.c:40: 	e =3D a + b / 2;
-	movsd	%xmm0, 32(%rsp)	# _14, e
-# lib/test_fpu.c:43: 	f =3D b / c;
-	movlpd	8(%rsp), %xmm0	# b, b.6_15
-	movlpd	16(%rsp), %xmm1	# c, c.7_16
-	divsd	%xmm1, %xmm0	# c.7_16, _17
-# lib/test_fpu.c:43: 	f =3D b / c;
-	movsd	%xmm0, 40(%rsp)	# _17, f
-# lib/test_fpu.c:46: 	g =3D a + c * f;
-	movlpd	16(%rsp), %xmm0	# c, c.8_18
-	movlpd	40(%rsp), %xmm2	# f, f.9_19
-# lib/test_fpu.c:46: 	g =3D a + c * f;
-	movlpd	(%rsp), %xmm1	# a, a.10_21
-# lib/test_fpu.c:46: 	g =3D a + c * f;
-	mulsd	%xmm2, %xmm0	# f.9_19, tmp111
-# lib/test_fpu.c:46: 	g =3D a + c * f;
-	addsd	%xmm1, %xmm0	# a.10_21, _22
-# lib/test_fpu.c:46: 	g =3D a + c * f;
-	movsd	%xmm0, 48(%rsp)	# _22, g
-# lib/test_fpu.c:48: 	if (d > a && e > a && g > a)
-	movlpd	24(%rsp), %xmm1	# d, d.11_23
-	movlpd	(%rsp), %xmm0	# a, a.12_24
-# lib/test_fpu.c:48: 	if (d > a && e > a && g > a)
-	comisd	%xmm0, %xmm1	# a.12_24, d.11_23
-	jbe	.L15	#,
-# lib/test_fpu.c:48: 	if (d > a && e > a && g > a)
-	movlpd	32(%rsp), %xmm1	# e, e.13_25
-	movlpd	(%rsp), %xmm0	# a, a.14_26
-# lib/test_fpu.c:48: 	if (d > a && e > a && g > a)
-	comisd	%xmm0, %xmm1	# a.14_26, e.13_25
-	jbe	.L15	#,
-# lib/test_fpu.c:48: 	if (d > a && e > a && g > a)
-	movlpd	48(%rsp), %xmm1	# g, g.15_27
-# lib/test_fpu.c:51: 		return -EINVAL;
-	movl	$0, %r12d	#, tmp117
-	movl	$-22, %eax	#, tmp118
-# lib/test_fpu.c:48: 	if (d > a && e > a && g > a)
-	movlpd	(%rsp), %xmm0	# a, a.16_28
-# lib/test_fpu.c:51: 		return -EINVAL;
-	comisd	%xmm0, %xmm1	# a.16_28, g.15_27
-	cmovbe	%eax, %r12d	# tmp117,, tmp118, <retval>
-.L4:
-# lib/test_fpu.c:60: 	kernel_fpu_end();
-	call	kernel_fpu_end	#
+test_fpu_get:                           # @test_fpu_get
+# %bb.0:
+	pushq	%rbp
+	pushq	%rbx
+	subq	$56, %rsp
+	movq	%rsi, %rbx
+	callq	kernel_fpu_begin
+	movabsq	$4616189618054758400, %rax # imm =3D 0x4010000000000000
+	movq	%rax, (%rsp)
+	movabsq	$4382569440205035030, %rax # imm =3D 0x3CD203AF9EE75616
+	movq	%rax, 8(%rsp)
+	movabsq	$20240225330731, %rax   # imm =3D 0x12688B70E62B
+	movq	%rax, 16(%rsp)
+	movq	(%rsp), %rdi
+	movq	8(%rsp), %rsi
+	callq	__adddf3
+	movq	%rax, 48(%rsp)
+	movq	(%rsp), %rbp
+	movq	8(%rsp), %rdi
+	movabsq	$4602678819172646912, %rsi # imm =3D 0x3FE0000000000000
+	callq	__muldf3
+	movq	%rbp, %rdi
+	movq	%rax, %rsi
+	callq	__adddf3
+	movq	%rax, 40(%rsp)
+	movq	8(%rsp), %rdi
+	movq	16(%rsp), %rsi
+	callq	__divdf3
+	movq	%rax, 32(%rsp)
+	movq	(%rsp), %rbp
+	movq	16(%rsp), %rdi
+	movq	32(%rsp), %rsi
+	callq	__muldf3
+	movq	%rbp, %rdi
+	movq	%rax, %rsi
+	callq	__adddf3
+	movq	%rax, 24(%rsp)
+	movq	48(%rsp), %rdi
+	movq	(%rsp), %rsi
+	callq	__gtdf2
+	testl	%eax, %eax
+	jle	.LBB3_3
+# %bb.1:
+	movq	40(%rsp), %rdi
+	movq	(%rsp), %rsi
+	callq	__gtdf2
+	testl	%eax, %eax
+	jle	.LBB3_3
+# %bb.2:

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200622170446.GG32200%40zn.tnic.
