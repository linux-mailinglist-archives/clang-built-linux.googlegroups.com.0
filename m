Return-Path: <clang-built-linux+bncBCXLBLOA7IGBBQ7X7DZQKGQEB42VH4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id CC002195D19
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:45:39 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id f8sf4665387wmh.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:45:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585331139; cv=pass;
        d=google.com; s=arc-20160816;
        b=o7he74JvmChp112J0FY0EequGLOD35aKh0g8HqSZLZXP40dvEYVhXfbUPLh1+uabPb
         yiJSx/SlqTRvhksbGuu7Ue1jHVlSkeUCfI02ADeRZfCzE0TDgRcNyctXpW9zSkXTGKfm
         14GGvD0HN4a9oHkXJ1S/NUToAFQ8O3Ytoj0KGogSb9tpFlRaQGmdMQzrJ2bOjQDxFBHr
         e4LqgVlY7/9lGnzRYlFufAjhh79e2oiCbdD6hUsp5j2zzKmcZnWNEQIkG9JgG3P0YhwB
         jqHecoOggYwFngtX4iJhzRKRlE37OgUgPAsyaSSf/MZUfsRKyBWJzux56KOLJhLv+ZbB
         ZLUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=HrDtI9nsouSu73I4Dd8D4ybUO7dR1pwMnZ/pYqsJkzA=;
        b=s8By+GHexXgUG0TvehKOkNuZxhm94zpW88vDaCkMlN0WzPYegT6KCc9SvsZSs1FBoA
         1MUNkRyDZPNK6wtxbcRWr7y99vJaZNjWtpAd8UW+j1+XPCIvcKTvX2BrEMq7nN0xdsds
         Fu33WG3m/olXcEpKLSLijG+KWWacKmKnHGfS9O2Q1/7QOhk1KcyDoas8t0iTmAQtfpZK
         dmMQU2pP5BaSFgeA+AMqHErJSKfyTnUbyV+U5U/sBT4gLsESmGmxPGjaBCOMhGlaKhcE
         n015n7tjlgBtXiv0NCelxAELPzka3prkgSC5oR7SJK4ELCJWUWdKXdfOBiCykrGahdAd
         sYQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=I7zcFKtD;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HrDtI9nsouSu73I4Dd8D4ybUO7dR1pwMnZ/pYqsJkzA=;
        b=e8K2p2h40xI1cF9zAm+U5O09HNK43c0yS93cMDlc/Up7nMS1lcYeDa5PNfMxLJ/Ak3
         uuWetw7ONcBCF/9hTUVtja1Px7K4ztZ3S/U71lMJlcDuR6ZZJJynbEbZ3qPIrxyhYwPn
         NjPd24bk8fsiMuDVhqsO2cf+HAoMf58C3QmkktpduZ8ZgpplWvmzMUCn2ydVFVMKIJA7
         Qa2LFZax2O2qfWeSd9hsMXx0g3zugAnGMXVEbM6oqzZvE4w27JpQpzrdxMFObYSAMGby
         QUXpjxsbehhA5sgebQJRHXZvOA2mSaB2CeQb/okwE1sCw623Y+MEB/DZ/uMWuf61lpTg
         IJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HrDtI9nsouSu73I4Dd8D4ybUO7dR1pwMnZ/pYqsJkzA=;
        b=Dbx4zt4PorzyuQhnP1F8ryvvDFFI2pn3gwkA/Y3YHmLQzgyKUWzka9+JV2DzhwIEzK
         4mp+AQNa9u5yONIHWz7NTXqPEpYtCrxfpX0+z83spegD65VOJGHg2Cy66JQ+DJxIzCjt
         v9mZVy1hH6bsRMbR1f5xazCpoUjctm0+1/23NdnU96ZSvfRN0NVVQKb0J99DFhSF9ojE
         1QrT4wAQkUgUkwPAxT3GdW7XqP4Fa/JjZRlULFRXKhokJZ4t9WVUhQrAVS7ps61lipm7
         4KLwGeGcoWFHC4KeqDkev+5PRAVOd5i/F+mEdxVUM2gtyKZDyIkacGwIXTDDOVSQRaMq
         tVEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2R8UTJ/oVLIZ3PYgODJasCQFPil6Wcxh1Oodk73zWtNSlS9/at
	7fht0C5BdSlqSHsrXqyyPBg=
X-Google-Smtp-Source: ADFU+vuOypy44ISxdBFLfPEWAIOhGU2aGGsVnmQpAybb/8oU8MWrr1UOB7VdS18BC2b1QbI8hwzN2g==
X-Received: by 2002:a7b:c004:: with SMTP id c4mr6288668wmb.108.1585331139524;
        Fri, 27 Mar 2020 10:45:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls3952748wrq.11.gmail; Fri, 27
 Mar 2020 10:45:39 -0700 (PDT)
X-Received: by 2002:adf:edd2:: with SMTP id v18mr589462wro.55.1585331138975;
        Fri, 27 Mar 2020 10:45:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585331138; cv=none;
        d=google.com; s=arc-20160816;
        b=RAg+jmHlngn+Se04tAWXW1cbgUN6R/ykYlCNLkDH4jmmC6PpEO00/uofc/9KrZn3+r
         xV2FTVioPwlsaCiDrh1hpQMfR3txk9Sc7wIBXTh4tPgktWHgJ9R8tN2mNSLNads9Qx0z
         xHwkBwR4gX4KT+BDFInwtIR1ajy4RJjysTOdiHFW35YIZS0NxgFscu9qRWJmZIEfS6d8
         3QgjB5SHnjJoqonyT4Fskw+9Rk7hkjPioh+jS5/90Af8sR7Lrt3apBJ2gGDu7ZGhJfPd
         XXwbcix23lywU5PvNPkqaSmCuJKzvwOMhoomVJ9H23EQay79EtOAQmZpsBq4cwSlsRxy
         1e1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3SkIPgsXKkFnLTZYxtFtW0Qi2neIcyQvhkRRPwD/4fY=;
        b=ER7gcM2Lp3ooCO0Sa+s/SX3Ds2trRMh/4aSmrUSnEHoY0Cz10+xWPD2WH4FveXuAS6
         yjAl33kKPB5ZT6c5qpYEY/KUyGkEkvxTUNlrDGDgpyEeHHhw9ieK9IiLPLoLObXmQwBj
         +Q8rRcwYppiMI7BSK5SC+6TYpTs+PqSP5JIIimkrs3LBWzXjkvuaj+/pV4eSPIeR4FGA
         gdToEPpzYGvkeI97BMH/lT8mblj0sVfAnDqjxwo0jFkHKyUXX5sHxlndNEqNom51hjFr
         C2h9qQn6+fSx+CbWpGJqsgHTq5exiuaknM682v6fzhoAAH5xOomcE7XM5aEiVoxGSUgW
         Tezg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=I7zcFKtD;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id b81si223424wmc.2.2020.03.27.10.45.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 48pq5D62XgzB09ZD;
	Fri, 27 Mar 2020 18:45:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id jCOozahwYNFE; Fri, 27 Mar 2020 18:45:36 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 48pq5D4ybszB09ZC;
	Fri, 27 Mar 2020 18:45:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 5DED68B829;
	Fri, 27 Mar 2020 18:45:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id UPRfRPNn2d55; Fri, 27 Mar 2020 18:45:38 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id DFD748B822;
	Fri, 27 Mar 2020 18:45:36 +0100 (CET)
Subject: Re: [PATCH v1] powerpc: Make setjmp/longjump signature standard
To: Clement Courbet <courbet@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Segher Boessenkool <segher@kernel.crashing.org>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200327100801.161671-1-courbet@google.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <f1b85a2a-1c60-9a12-f547-13ff255f18f0@c-s.fr>
Date: Fri, 27 Mar 2020 18:45:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327100801.161671-1-courbet@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=I7zcFKtD;       spf=pass (google.com:
 domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted
 sender) smtp.mailfrom=christophe.leroy@c-s.fr
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

Subject line, change longjump to longjmp

Le 27/03/2020 =C3=A0 11:07, Clement Courbet a =C3=A9crit=C2=A0:
> Declaring setjmp()/longjmp() as taking longs makes the signature
> non-standard, and makes clang complain. In the past, this has been
> worked around by adding -ffreestanding to the compile flags.
>=20
> The implementation looks like it only ever propagates the value
> (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> with integer parameters.
>=20
> This allows removing -ffreestanding from the compilation flags.
>=20
> Context:
> https://lore.kernel.org/patchwork/patch/1214060
> https://lore.kernel.org/patchwork/patch/1216174
>=20
> Signed-off-by: Clement Courbet <courbet@google.com>
> ---
>   arch/powerpc/include/asm/setjmp.h | 6 ++++--
>   arch/powerpc/kexec/Makefile       | 3 ---
>   2 files changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm=
/setjmp.h
> index e9f81bb3f83b..84bb0d140d59 100644
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -7,7 +7,9 @@
>  =20
>   #define JMP_BUF_LEN    23
>  =20
> -extern long setjmp(long *) __attribute__((returns_twice));
> -extern void longjmp(long *, long) __attribute__((noreturn));
> +typedef long *jmp_buf;

Do we need that new opaque typedef ? Why not just keep long * ?

> +
> +extern int setjmp(jmp_buf env) __attribute__((returns_twice));
> +extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
>  =20
>   #endif /* _ASM_POWERPC_SETJMP_H */
> diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
> index 378f6108a414..86380c69f5ce 100644
> --- a/arch/powerpc/kexec/Makefile
> +++ b/arch/powerpc/kexec/Makefile
> @@ -3,9 +3,6 @@
>   # Makefile for the linux kernel.
>   #
>  =20
> -# Avoid clang warnings around longjmp/setjmp declarations
> -CFLAGS_crash.o +=3D -ffreestanding
> -
>   obj-y				+=3D core.o crash.o core_$(BITS).o
>  =20
>   obj-$(CONFIG_PPC32)		+=3D relocate_32.o
>=20

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f1b85a2a-1c60-9a12-f547-13ff255f18f0%40c-s.fr.
