Return-Path: <clang-built-linux+bncBDYNJBOFRECBBGXN2XZAKGQEDQ3IHSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CE116EF13
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 20:33:46 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id y23sf52604lfh.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 11:33:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582659226; cv=pass;
        d=google.com; s=arc-20160816;
        b=hCWztN43NV6Z0Nyek9aXBkdZtpXCT7n1/NuvTO8S27+q5Sf6j2EuoTAGbUfxptNhXs
         ncmxRGJzuAAFmGgHblJusc6yja2I4q44TPoDzFqHI8Ju3zU0ZVBOE4j6wfNchYagKT/f
         lXg6aQg1AoYM0pyOivUeRjJvzyOBBabngeSm+ctYRjhjWQxYZLLeEO3WsX/2abicf653
         D04oiPVBHy8NGQ/e0ZiD8U7nCXp9ITss1DHxNHMcul0oOIX06hoW9BMSSqNYhOxOpdfz
         DZlEy3qkl/AfUuz1DQwjfw3AGCF3lsAwNli7T2wIUvGPzWwPCeMkKIQex9Vm2l38ICtB
         ciOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=g8GJ4VnJ0vsfdQShDPWj/YRrHyZJP25t25n9L6Ig2rM=;
        b=XbUKO1byP55A52uVdj3N6vXwNthLbjBgmEqLgx4tP40QSBiAzu0xeKvwcNBHrcdHKb
         72vGBfh+itHuEhsO3K7NdkjznUXWoFmzGHbAD5Qch5pd6qq5dcTZWOL76GXStExFFlAK
         XqXIVMxITUR5DPHtlCySdCeQipgHG81vlGkXyx8+DwKhCrnoTnYTbPWK5R2Hgj8rSDxa
         0ujLaZxUDIzAPPx18NR3ksVmQ4WrTiK2f5QSYUDuoAvmfUdTIU7m2QO0v2mrR0TXqBOP
         2LEF5/vbk8/LtOO6NnyiILxAjd4Gf3wMPMGExEOvyQ9ob45BuAflKfRccIri8fJ6T6si
         IPEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=jr2iMjqi;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g8GJ4VnJ0vsfdQShDPWj/YRrHyZJP25t25n9L6Ig2rM=;
        b=OwiD6eOCqJWWXg2olWd/28Lo2I+u9dzMaK2Tn8p+I7k3m8+8i7Z2nJz5iIwaRp/uA/
         20HkVUhkwuA5pq/7VXqGiZdB0HbSBPrfJSrlE/MhqSYpWvYUpa7Ser+ciTRo3Fyakr/w
         ouuP9HE8O7C4AHEiwHjpLOidUZhtpprAyEpHczfnyZll/W1bHutZnrpCqylywWZ29rV1
         swQgju+Lc0Y3wzhb5D7ptLiyd8f1TN7b6tc4mPeusmMc5R0kcxUn7F/7AXtLgKUwzCev
         EVaLwZGCD+dylBgWpB3Q/L7Ifm+dSLeEHS7XGCjasDiGoWvMl5bYB+H/0seAyf4rp5Jo
         9kWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g8GJ4VnJ0vsfdQShDPWj/YRrHyZJP25t25n9L6Ig2rM=;
        b=FizcaHYMUWffZWZDKc9AhxT4Cur3PUB6BztgE+GYC1GWtyRrX9Xk9wBypGUzttq7D0
         l6VqHmKAgklDbIkEDmw1kYgSO616ldfgpMfYAQbHQGdo6hGVf42n7TJgGNR7XaIzdUA9
         AP7eg2HNZALgzdTtjvaF7riu3dJ/ISG5KXabgac7IpCQSWJbqALpRE/2izD8kIpMrKPS
         TeAkFGecrwRDvDsJlch6t7i95pLTPTwK4JOf3xcP9u0RVFsxAz0zxiqrOMAiZph/onK7
         ae81u5HP61klmhOlSMREbgxH8TB1A1gov53ZPsc2BE/XAZ++4EMClI3Bzn8VxsSRiX12
         5cJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPHqu2rq09Yco/IfuwGvPeGwfe/EoSO6W6vf3dLi+clgj7ZlX6
	f2hBcdhf6x01Veus7YTVvqE=
X-Google-Smtp-Source: APXvYqxiAZZ2fkZJj25RqTvlawUPKgBdy011eArEL1eJIyRluVXLoebxYqHiW+26/WS8Zin6ZN7fag==
X-Received: by 2002:a2e:b0c4:: with SMTP id g4mr360702ljl.83.1582659226421;
        Tue, 25 Feb 2020 11:33:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9516:: with SMTP id f22ls72657ljh.2.gmail; Tue, 25 Feb
 2020 11:33:45 -0800 (PST)
X-Received: by 2002:a2e:9748:: with SMTP id f8mr389600ljj.178.1582659225634;
        Tue, 25 Feb 2020 11:33:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582659225; cv=none;
        d=google.com; s=arc-20160816;
        b=EuApxOhjxBh0Nq7Yq0cPN4ZTBGPIbpy6YKqOR1TuUYsryxKnpDJ8UpYD9agF/8GZGS
         o8INT4VPJqH9QUFR04i1toLB7Dnqpg0LXIuBbVyhidlCAETQH1lU73iumO9ttAPq1cQX
         2gwxrusS4MXY7xvTp/2/SwBNI01JiImMu4+EEMbD1zf+igvTGFdvQrDv2KH7FRYM+pH7
         x5hfK89HVFvzNMTxASbxyUrjjAxKyegB3PXDdhtu/ByHAFZNBua78Q+066P8Ud3uEism
         f/V1WqK+RdBbl31Rem5zYjUGuHDxufQuByUhKV6jFYW/DB2A+9tEEJEP5Pu+6GYcwyyZ
         qx/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Pm9mKzisBXffRenDjzc076HpmcDb6sC4Riuk402uBGE=;
        b=Zg+wfxIp0MGoaCrCqOyv5E/jd0LajsCis/AjHhKoZx1D+FuUTxwwEt5bCe5JZP8LAv
         YD39Tk6ps0nifCel0rkM3Nfs43h9qzxHneHMNYA2yU9fECq3xuHDZHn9LwJY8lV11ii6
         HswjKdhc5h2uPty2d56SNKK6P6+Kn7kQUT5+8CoGUQ3TTw7JtKwlW3tiJsU/JyywENQN
         wRZgT2sDIVq+9+mfhSZj4bI9HitgOxpXEBR1k8X+mpxwEhG3D8d0TAMrsEThmhg8iXwc
         sUcbeE5NzMv2UswxfgYuNlFCfN8E2Y0ghohsX9x+a8j/i1QVcbYicMM8aZSl9IRr6s5U
         nC2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=jr2iMjqi;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v2si30792lfn.4.2020.02.25.11.33.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 11:33:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id p18so12991wre.9
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 11:33:45 -0800 (PST)
X-Received: by 2002:adf:e742:: with SMTP id c2mr691012wrn.262.1582659225078;
 Tue, 25 Feb 2020 11:33:45 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
In-Reply-To: <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 25 Feb 2020 20:33:34 +0100
Message-ID: <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Stefan Agner <stefan@agner.ch>, Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=jr2iMjqi;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 25 Feb 2020 at 20:10, Nick Desaulniers <ndesaulniers@google.com> wr=
ote:
>
> On Mon, Feb 24, 2020 at 9:22 PM Stefan Agner <stefan@agner.ch> wrote:
> >
> > Clang's integrated assembler does not allow to to use the mcr
> > instruction to access floating point co-processor registers:
> > arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
> >         fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FP=
EXC_TRAP_MASK));
> >         ^
> > arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
> >         asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp=
_ ", %0" \
> >             ^
> > <inline asm>:1:6: note: instantiated into assembly here
> >         mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
> >             ^
> >
> > The GNU assembler supports the .fpu directive at least since 2.17 (when
> > documentation has been added). Since Linux requires binutils 2.21 it is
> > safe to use .fpu directive. Use the .fpu directive and mnemonics for VF=
P
> > register access.
> >
> > This allows to build vfpmodule.c with Clang and its integrated assemble=
r.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/905
> > Signed-off-by: Stefan Agner <stefan@agner.ch>
> > ---
> >  arch/arm/vfp/vfpinstr.h | 12 ++++--------
> >  1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
> > index 38dc154e39ff..799ccf065406 100644
> > --- a/arch/arm/vfp/vfpinstr.h
> > +++ b/arch/arm/vfp/vfpinstr.h
> > @@ -62,21 +62,17 @@
> >  #define FPSCR_C (1 << 29)
> >  #define FPSCR_V        (1 << 28)
> >
> > -/*
> > - * Since we aren't building with -mfpu=3Dvfp, we need to code
> > - * these instructions using their MRC/MCR equivalents.
> > - */
> > -#define vfpreg(_vfp_) #_vfp_
> > -
> >  #define fmrx(_vfp_) ({                 \
> >         u32 __v;                        \
> > -       asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx   %0, " #=
_vfp_    \
> > +       asm(".fpu       vfpv2\n"        \
> > +           "vmrs       %0, " #_vfp_    \
> >             : "=3Dr" (__v) : : "cc");     \
> >         __v;                            \
> >   })
> >
> >  #define fmxr(_vfp_,_var_)              \
> > -       asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp=
_ ", %0" \
> > +       asm(".fpu       vfpv2\n"        \
> > +           "vmsr       " #_vfp_ ", %0" \
> >            : : "r" (_var_) : "cc")
> >
> >  u32 vfp_single_cpdo(u32 inst, u32 fpscr);
> > --
>
> Hi Stefan,
> Thanks for the patch.  Reading through:
> - FMRX, FMXR, and FMSTAT:
> http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0068b/Bc=
fbdihi.html
> - VMRS and VMSR:
> http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0204h/Bc=
fbdihi.html
>
> Should a macro called `fmrx` that had a comment about `fmrx` be using
> `vmrs` in place of `fmrx`?
>
> It looks like Clang treats them the same, but GCC keeps them separate:
> https://godbolt.org/z/YKmSAs
> Ah, this is only when streaming to assembly. Looks like they have the
> same encoding, and produce the same disassembly. (Godbolt emits
> assembly by default, and has the option to compile, then disassemble).
> If I take my case from godbolt above:
>
> =E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c
> =E2=9E=9C  /tmp llvm-objdump -dr x.o
>
> x.o: file format elf32-arm-little
>
>
> Disassembly of section .text:
>
> 00000000 bar:
>        0: f1 ee 10 0a                  vmrs r0, fpscr
>        4: 70 47                        bx lr
>        6: 00 bf                        nop
>
> 00000008 baz:
>        8: f1 ee 10 0a                  vmrs r0, fpscr
>        c: 70 47                        bx lr
>        e: 00 bf                        nop
>
> So indeed a similar encoding exists for the two different assembler
> instructions.

Does that hold for ARM (A32) instructions as well?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKv%2BGu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ%3DO6D6Rcg%4=
0mail.gmail.com.
