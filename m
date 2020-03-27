Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA4L7HZQKGQEEUNGJEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FCD195D9B
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 19:27:16 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id n28sf8515661pgb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 11:27:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585333635; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAzmabZpOltYXJXPDPk/8SVEvL+5RDzYg15lqym5/1nAqfvYk+O15Dc0opZLaI4R9j
         fdW08zSd0FdSeX58SpheLDePVXYeuYVSVB1yRlaGu9mln5jZ+nIKk+LeBPE8GXOHAoiI
         Fp4vegW3Nu+zHJD7NlXkCS31IhHYXBwua0Orgt/fhzQ700GqvMk9RhXe1qYBgkhR3gL6
         bNlH15w6upRQQP+Cdev2o082e9wYmei7lKojUl2Upgd85jydM9bd9Hq6xOd0OAInaRu0
         0ywLeTRS/PRBndR7rhzCw/Dhf4Vh+gyw1f+d6NcsY1fCuo0PO6fOZyrnNYd9FiOnLyKz
         9I/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=3Ek5tmn93Mocoe9IIseOh79Qs+jtt5SxEd72HWl1aEA=;
        b=05fRpP/rvVv65Sidnrh2zWjEXqsOAeNGkksy3Ay3nvbAVInnk4ZmMBUv4v0djs4Azc
         vU/tInT6yBaOFABb7whqymKjwX8dxXGTEf35yYJ5igWJpa2WzOXSq1X7InTmri0rCtqE
         iWFRQrzWt8hyL54foP3T62kl/OpLVpHfvzF8oKZJgNCbih9wckP2wFoQWrdUFMfnUGFr
         Sx2glA/WfAR1fXvrDIXhhTtuW8Y/0sLC+7ZaMSklscNxPKBPdppFvexChbuIq0nBL0Qr
         lhpSoS61drKKfyDHOtCT96igfQqpy0QXBWeCOpdyzw8CL4MXRznS85MbFzIpFJC9xTbE
         Cbew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r0rNlhVi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ek5tmn93Mocoe9IIseOh79Qs+jtt5SxEd72HWl1aEA=;
        b=dyaknZUyMML2gN9aXhsZcofqNU2JTe5HuI/wVPEbLoIOMNa3mLOtp4mcDSfaKXiUZx
         cj1LKODfa73FZlZIjGRu3VTwnWAhZT3yxmqldiEyal0GYcKwaPAdM/GZ6zgC4eqKy0wS
         gz4PNhDW7UjYdPL/WPitIZPDMwjXZ03FRURHLUMi2UsphcVoA/2oYzlYRI62ZEcFZdGf
         GUAFuOLJbqhvW4gLgXlXQ4DsMYkkBtHO+Zgb0jJVK54kiQwPPP5fWuy/5WsJ38+++Jnt
         1Tv6hJK8bY8qPYVXYvC0xzd9fsaV6N7WlEcruG8RCsIp0+gA6Ux8CwLMLjJVxERO6Hnc
         w2Jg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ek5tmn93Mocoe9IIseOh79Qs+jtt5SxEd72HWl1aEA=;
        b=VV/Dk85FEFZfgHmXKE9gOBETBrvdogRyu5l+dTNI09o0irDqsgH6OuTjzRErBdC53S
         2huZBb9fEBR5+XimV5zX9OciWcKjVcQZ3jMN7bqcEhjh4lZbDxpXU6vOW0nFtB2Wdl6O
         EbvbtVuxgmtgiqyvgSgkx7zJWbTT3dMsI3yFxMZHvsllXDJzbmVQqs1rqqXbTrfHmFMR
         G/mE4fMkJfVG9fnmPE+04jLzvWlE9qkSJaonKsg59mcv+E8ggaemQ+m4sbDjsblDEm/b
         bfCgKvEABuT0cKL+9fC09C/JSz35XQ5E4OQ2Uhx/rhpgzcQybThfDCCz4HZxZZk7eMTQ
         ehWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ek5tmn93Mocoe9IIseOh79Qs+jtt5SxEd72HWl1aEA=;
        b=P9WS42Wcu2UJhHaBoCcjC4UyBrUloKcNCTJqaBoycWsBNackcqMQnWjSeFvxa+x6x2
         iRv4EyvPyGMrFR0yRb++Wkm5NsmtaoSOty32IMJOji7PkP9+5qNmhoz4j4C2oXuYxlVs
         /YSLP3fvSsX6Zar5mzFWIj3QLyqxIGykPnyL2ughcguHnR/TDJHuNDdlaQbIBaniKowr
         pkepitXtNXGsrNp08S+Tr5/OdwE1Mk0x91bWoaDftQwqPp/IGLx/hAWPIYXdxdxSsRAe
         i25BhFc5PBixY0BpHRP4uWTQhjGlzmWaSoq/szaBKbxRVbSqpQr2xX/K4c8ubPt4YrJL
         rhCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2B36Ci67dIQyfGERV/3ygZCp+IDROVrnDOxaogqDc9iaoDtu6S
	NHbyRJdZ4ZFsjNOJRkn5MN0=
X-Google-Smtp-Source: ADFU+vtPpw/TwaftlpTapHmwu2AduMJU6eTf4eFoq5VPV94EbJov+gLsJMguEZuLoGlTzTZ8z9laFA==
X-Received: by 2002:a63:9d46:: with SMTP id i67mr587273pgd.365.1585333635094;
        Fri, 27 Mar 2020 11:27:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls7721027pjb.2.gmail; Fri, 27
 Mar 2020 11:27:14 -0700 (PDT)
X-Received: by 2002:a17:902:a58b:: with SMTP id az11mr356432plb.137.1585333634629;
        Fri, 27 Mar 2020 11:27:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585333634; cv=none;
        d=google.com; s=arc-20160816;
        b=CL1hjSOIXGm6ZvyVNn+yfBwGxY/Q4Ph1J3/V5ZQmPLg26AcNBpuyP+93vOVLWqUB4W
         jqz1koei0cfTFehL01xc/284cDzhnrpZ+LFAP6rqPVBszYlMCk5h8Y4ELEvL2PmrS25Y
         6SRRqcFf2Xm46Kb+JZCSr7v0gGpMJ5b1FEWjsaHbgRsM8whGwPnKXx/MQqG9t9R5JXwU
         9sll4BXXTbVULPJKWXlQt0lM9ON2Ewdw0rBCgaKmslQWjls6+JCTmAElZa4c47QxP9FO
         NvV00XnC3fZuuuhWL2Lvr6TFoNqP7QE9X6egVMhyJe12AF5UN/gzIhw+yKAE/I91gynG
         ZIAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mUgPEhhQcjfKASu4ovKrH+viuyNdfG4nZwjDD1Ymszw=;
        b=B5SrW0V+lORBa5qVgoTHfFvO3SRhOKOF9hGlkZ3cV27gIGuCU6Ac9BLtBxmSpKPeyt
         A5CiT4t4rTVA8sQhsdbs8+1V/XwjOt8JVBQiFM58oTpvZnY1LaRW+aE+F72ujpW4x2Ec
         /Cf7/i3HD0HjjXpje3ep23dys06lPAWjsL007f0sPtZ2lCuSqqZi0TFiO7JhxxM2x8d+
         Bm3hvvB045RP5/dzR//LPHRRXF4I5UmTHnb+Um9TIeiNra9YPfKGfqCXR2pqlCxMton3
         8tun8ieumr5BYsJWs/mHg7CO3DvVITy2UUQcvWsw+LHJRkHTzZeCHEvIpDlxHjkJ2wQw
         Y9UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r0rNlhVi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 138si451998pfa.6.2020.03.27.11.27.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 11:27:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id z5so10494704oth.9
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 11:27:14 -0700 (PDT)
X-Received: by 2002:a4a:da48:: with SMTP id f8mr632811oou.44.1585333633780;
        Fri, 27 Mar 2020 11:27:13 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b2sm2094786oii.20.2020.03.27.11.27.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 27 Mar 2020 11:27:13 -0700 (PDT)
Date: Fri, 27 Mar 2020 11:27:08 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Clement Courbet <courbet@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1] powerpc: Make setjmp/longjump signature standard
Message-ID: <20200327182708.GA13308@ubuntu-m2-xlarge-x86>
References: <20200327100801.161671-1-courbet@google.com>
 <f1b85a2a-1c60-9a12-f547-13ff255f18f0@c-s.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f1b85a2a-1c60-9a12-f547-13ff255f18f0@c-s.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r0rNlhVi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Mar 27, 2020 at 06:45:21PM +0100, Christophe Leroy wrote:
> Subject line, change longjump to longjmp
>=20
> Le 27/03/2020 =C3=A0 11:07, Clement Courbet a =C3=A9crit=C2=A0:
> > Declaring setjmp()/longjmp() as taking longs makes the signature
> > non-standard, and makes clang complain. In the past, this has been
> > worked around by adding -ffreestanding to the compile flags.
> >=20
> > The implementation looks like it only ever propagates the value
> > (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> > with integer parameters.
> >=20
> > This allows removing -ffreestanding from the compilation flags.
> >=20
> > Context:
> > https://lore.kernel.org/patchwork/patch/1214060
> > https://lore.kernel.org/patchwork/patch/1216174
> >=20
> > Signed-off-by: Clement Courbet <courbet@google.com>
> > ---
> >   arch/powerpc/include/asm/setjmp.h | 6 ++++--
> >   arch/powerpc/kexec/Makefile       | 3 ---
> >   2 files changed, 4 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/a=
sm/setjmp.h
> > index e9f81bb3f83b..84bb0d140d59 100644
> > --- a/arch/powerpc/include/asm/setjmp.h
> > +++ b/arch/powerpc/include/asm/setjmp.h
> > @@ -7,7 +7,9 @@
> >   #define JMP_BUF_LEN    23
> > -extern long setjmp(long *) __attribute__((returns_twice));
> > -extern void longjmp(long *, long) __attribute__((noreturn));
> > +typedef long *jmp_buf;
>=20
> Do we need that new opaque typedef ? Why not just keep long * ?

Yes, otherwise the warning comes back:

In file included from arch/powerpc/kexec/crash.c:25:
arch/powerpc/include/asm/setjmp.h:10:12: error: declaration of built-in fun=
ction 'setjmp' requires the declaration of the 'jmp_buf' type, commonly pro=
vided in the header <setjmp.h>. [-Werror,-Wincomplete-setjmp-declaration]
extern int setjmp(long *env) __attribute__((returns_twice));
           ^
arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of built-in fun=
ction 'longjmp' requires the declaration of the 'jmp_buf' type, commonly pr=
ovided in the header <setjmp.h>. [-Werror,-Wincomplete-setjmp-declaration]
extern void longjmp(long *env, int val) __attribute__((noreturn));
            ^
2 errors generated.

> > +
> > +extern int setjmp(jmp_buf env) __attribute__((returns_twice));
> > +extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
> >   #endif /* _ASM_POWERPC_SETJMP_H */
> > diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
> > index 378f6108a414..86380c69f5ce 100644
> > --- a/arch/powerpc/kexec/Makefile
> > +++ b/arch/powerpc/kexec/Makefile
> > @@ -3,9 +3,6 @@
> >   # Makefile for the linux kernel.
> >   #
> > -# Avoid clang warnings around longjmp/setjmp declarations
> > -CFLAGS_crash.o +=3D -ffreestanding
> > -
> >   obj-y				+=3D core.o crash.o core_$(BITS).o
> >   obj-$(CONFIG_PPC32)		+=3D relocate_32.o
> >=20
>=20
> Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200327182708.GA13308%40ubuntu-m2-xlarge-x86.
