Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKXC2XZAKGQEG4Q4HAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC0B16EEAC
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 20:10:35 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id s24sf58079vsn.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 11:10:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582657834; cv=pass;
        d=google.com; s=arc-20160816;
        b=oymTJQliQCnDq1p/oeI3w3IOYIJNy8ZnjWRxlBEnLR7AHODG6KRVptuZ5RdGZ32Y14
         Dlm+z4nIFZsuq8rmRwKfrDRKsHH23Jc5g+8Kmr9pbjlPm6m8Uc8FXmgK8VHGmEFcDvSK
         229o02dkzdisEEvi4ja9e86OReDHVyWpLLHkvOTT+R9GqE+Y+HznHJ9uRNbD5ydY3EyQ
         AlPi+x+FNN8Lh5eyyp31Cqh30i/o8e4Buofxcn9/RnYynXvu11C7lT9vrESxTVIwUXEY
         louGM0/+U9EH05waFW+DbU01AUNsquyd22JZerauHJW7jFM+cCgTWiZTe+23l8GgH3Wn
         n88A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5nklXsAfW+GNUX4YL4COc3LDJmaKuVbrQZoDLNlGXao=;
        b=f2VfwcnzBKlzB+IBo0ObH7En01WGP19y3BUQZgpULSe8DkmB+CepLgEq19mGkz1wKl
         t1qEVlo51+NInSc9tHFvg+P/kH9Yqku4xbPgKTF2Iow6U9Q3cRKpKeUe7h2A5SDqGCsW
         jk6UQls27mJd4SF6458JFWsXpeYJjLdMXlB5QgyGRfN/IF4XYn/Cc0BVgPzr+LGT/snp
         6hy4N1o1gRT2w7A7VyrmTnQD5xzrTifTXhZoJ4tQPoooyaZuvzXWiWZWRWjdH+7V4g9V
         fFMH78apy5pUiJczowSnRsel0PGN0NFCZwrupDm4/USHmwkMLFxNY2PQJ943UgmlOUvK
         ufNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Aglq1138;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5nklXsAfW+GNUX4YL4COc3LDJmaKuVbrQZoDLNlGXao=;
        b=o6E1SGsj3NmXuA4k9vYx7uz0K99D3Yb774lDN1TSpyGFJK4gePmWtqDJEV1x6xLnWZ
         6CK/BAuQFTTxeNmVy3d+u2PZ8ROr+qy9a4QapodaaR34fdK2po3UaJdRACaSQxBYTVAb
         nk0Z7EeP1ChwRJbpx3y+NucxQchErnVntaEp4vc2x30O6avzkWIIvy1/w5T7n5frFUJ2
         zs0i39w90ykjmdBAUTRAH06r4C/CFVmZR1MdTi/TUtRmhZEcy6/jEA+fKn93RKeu5nVE
         8ATjvJ82erDM8rwp56ae0V6xCJJont6gJkHo3mELpaixpSP4wW+/FXKFo1M8xWioPZFK
         VXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5nklXsAfW+GNUX4YL4COc3LDJmaKuVbrQZoDLNlGXao=;
        b=j/RHhIpxQVBAqJ30lEoovAGS/aVYvZDk5fUb6XKATX5pP/88P9WEO5EYD89/ochpke
         1aCLfRkA5D0oi5XVpqm1HxLdSaP6MU+zFgauYp8W51XN1WYKmiVxmZRzCDWAm+l4n4+k
         YHLgFfMzYuBm9+Er4j2ZUUVtQiZbqDLwWFUf0z1zytpWNWxDwe21XJESyO+lY3aGD+4M
         gPibssqK3P7+XzP9YZ0fAAoTWp47HpGQ2oyB+gVq/LTj7Wg/owKxCOgW3j2004GPfDha
         gj9uqibM15FbZkvv3kRYGlFBhMPtSfiljk2Ph3ftX00mDCIWBh5Nr00vI3+dFaJiSOJl
         8lvQ==
X-Gm-Message-State: APjAAAWrKYJXQzu82+cqTd2ozVrJNjxoz/MSQwGVrLUhVSjYG4u6b/Nv
	QxxZ4eHTZuMhSOS0BdknH5o=
X-Google-Smtp-Source: APXvYqzQZbB777n7KMVnQtL23XXMvABSPK9Hfl76+GN/gOWvsSeqF3Z2DUqOVkbAvz+mqvUbvtC7OQ==
X-Received: by 2002:a05:6122:332:: with SMTP id d18mr295017vko.89.1582657834615;
        Tue, 25 Feb 2020 11:10:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd78:: with SMTP id h24ls59259vsa.0.gmail; Tue, 25 Feb
 2020 11:10:34 -0800 (PST)
X-Received: by 2002:a67:bb18:: with SMTP id m24mr526096vsn.92.1582657834187;
        Tue, 25 Feb 2020 11:10:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582657834; cv=none;
        d=google.com; s=arc-20160816;
        b=ud1lU4lUJIcQvNin/lUgJZozUlm4F3I5UMkglNyIYvspOoCOlcNkBXLNsSmad/p/pq
         b9REYRIXw4xNr9O24oJb/JdFKsJwKpFx1zT9btaMziziB1UyB1cqp6q+7yt/lBy/Lp/q
         W7apfgzFxfoITp30nG/OTNjLOdxWLEisoRUadZ+OuMwnT8jRqubGIQrlbjCGVB3mNPFP
         wtPieGE5j2EWGcFDeLjF4gWozvGAHqv53cW2f1Pu17SHE+We3bqbvfgl/HG1F4Y9d071
         S4qbWHUqNEDTGrnBmHwQ3TSUVDUQ8K+ZYMjT9gyOO5FGi8HZd6MBmioCLQZy+N/pbcJo
         S8qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bY/V/GmjTMwSsbRxOp3cbtrLAwvSrthIWK239p8DTzE=;
        b=zm5scSFrHFdNSUHRIRMRryrLIodHlqVpZKymqCetJqxQ7j7VgyytsJm1AUGfI6l06x
         u0thdXYOiSMwam7soAVyNCvFeNUNydrdPMsTWRA0fQzV00VwAEoKURdS/gjaL56DWrW/
         XXZRbNBS0PnDUgXIvgVfesS1ER34mpGQGxaTK972tLf6PDpvyjEcH2F+unNK9sI1FN2F
         T0XUCuoYxN4aENscSu7A5Xo6iZ5ukuKghxA3BvwUrLMlt/joFsp2G02KHzWtJnWeyogF
         dUmYODrQuH+gOuIuDDkmKmh8511C98oi2jZup/1KlUKy3uS+xLgcv3u6L0g1ZzqJJyIO
         pvnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Aglq1138;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h7si11795vsm.1.2020.02.25.11.10.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 11:10:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id j7so194115plt.1
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 11:10:34 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr55585012plt.223.1582657832765;
 Tue, 25 Feb 2020 11:10:32 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
In-Reply-To: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 11:10:21 -0800
Message-ID: <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Stefan Agner <stefan@agner.ch>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Manoj Gupta <manojgupta@google.com>, Jian Cai <jiancai@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Aglq1138;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Feb 24, 2020 at 9:22 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Clang's integrated assembler does not allow to to use the mcr
> instruction to access floating point co-processor registers:
> arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
>         fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEX=
C_TRAP_MASK));
>         ^
> arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
>         asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ =
", %0" \
>             ^
> <inline asm>:1:6: note: instantiated into assembly here
>         mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
>             ^
>
> The GNU assembler supports the .fpu directive at least since 2.17 (when
> documentation has been added). Since Linux requires binutils 2.21 it is
> safe to use .fpu directive. Use the .fpu directive and mnemonics for VFP
> register access.
>
> This allows to build vfpmodule.c with Clang and its integrated assembler.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/905
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/vfp/vfpinstr.h | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
> index 38dc154e39ff..799ccf065406 100644
> --- a/arch/arm/vfp/vfpinstr.h
> +++ b/arch/arm/vfp/vfpinstr.h
> @@ -62,21 +62,17 @@
>  #define FPSCR_C (1 << 29)
>  #define FPSCR_V        (1 << 28)
>
> -/*
> - * Since we aren't building with -mfpu=3Dvfp, we need to code
> - * these instructions using their MRC/MCR equivalents.
> - */
> -#define vfpreg(_vfp_) #_vfp_
> -
>  #define fmrx(_vfp_) ({                 \
>         u32 __v;                        \
> -       asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx   %0, " #_v=
fp_    \
> +       asm(".fpu       vfpv2\n"        \
> +           "vmrs       %0, " #_vfp_    \
>             : "=3Dr" (__v) : : "cc");     \
>         __v;                            \
>   })
>
>  #define fmxr(_vfp_,_var_)              \
> -       asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ =
", %0" \
> +       asm(".fpu       vfpv2\n"        \
> +           "vmsr       " #_vfp_ ", %0" \
>            : : "r" (_var_) : "cc")
>
>  u32 vfp_single_cpdo(u32 inst, u32 fpscr);
> --

Hi Stefan,
Thanks for the patch.  Reading through:
- FMRX, FMXR, and FMSTAT:
http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0068b/Bcfb=
dihi.html
- VMRS and VMSR:
http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0204h/Bcfb=
dihi.html

Should a macro called `fmrx` that had a comment about `fmrx` be using
`vmrs` in place of `fmrx`?

It looks like Clang treats them the same, but GCC keeps them separate:
https://godbolt.org/z/YKmSAs
Ah, this is only when streaming to assembly. Looks like they have the
same encoding, and produce the same disassembly. (Godbolt emits
assembly by default, and has the option to compile, then disassemble).
If I take my case from godbolt above:

=E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c
=E2=9E=9C  /tmp llvm-objdump -dr x.o

x.o: file format elf32-arm-little


Disassembly of section .text:

00000000 bar:
       0: f1 ee 10 0a                  vmrs r0, fpscr
       4: 70 47                        bx lr
       6: 00 bf                        nop

00000008 baz:
       8: f1 ee 10 0a                  vmrs r0, fpscr
       c: 70 47                        bx lr
       e: 00 bf                        nop

So indeed a similar encoding exists for the two different assembler
instructions.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p%2BStnMojwNnf3kdxTT1A%40m=
ail.gmail.com.
