Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBQ5772IAMGQEUGIU7MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3EA4CAAB6
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Mar 2022 17:48:04 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id ay7-20020a05600c1e0700b003813d7a7d03sf1028243wmb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Mar 2022 08:48:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646239684; cv=pass;
        d=google.com; s=arc-20160816;
        b=vd9TsNRhtiyToSqNqo6GdGjLJWIWmzLAXpmJ8UAyavevmeF6YiB8YmW46HT1XBVU1e
         C1VFxyqfgMnuuPM7j9ECDIyyxRLmhOMIwHr3iCAVYOMw4VTHWUjx6sBtoAGwUuZpD/V8
         3xPvtknuyU6oehUSusn66E/kNF9MwXfnLboEUcXDbddGcz4jfHOBv8uDkTirLeYcM1V2
         FKYosG7wrz+Ydgy5KQN7+HUdCL96wm/ykNLr2CY20CJmy4qW25gKdDF69VAHBQp9d/mT
         kyhd/0zhQkSl7Gv/fv8eRGWyiSaP7uKlewkN1ZhP2l9s/m+ujx7+o1K8cmXgD3KeyLSR
         xtRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=177fBDBwjbj0BzMNReg02BjF4EhhNisTehq2M6AYBt4=;
        b=OqoDzyTCp6zne+bfqyaXuCEgnE1ehnj3OlqaKX3OW0FHunniEm/m6Ffmm4Kw9jIupw
         3H09ZPTYnuAuvivJnqtI5uBCk+95skmI/m7FCtq6SfkuLSotWckhXzv6xdHlaxYyzSEZ
         /kkJO2dBnKMlPE36tdn6mRx05vzRx4xA76dPKkA20BvwriHyuvqN4zNKNfMlIkNN8oDW
         7hOH7pHZ2MrzfluY2gQM9jUAtVtI4iMQ2XzO8CYooeh4xGK7RBi+pLggM1FzZvrkfhZ8
         hxjzYl4nPmuaOJKXeJwmhgaxTaWxCf/05biH9Srl2BA9a7eo7s4dYsUtAC2nt863anXv
         gUEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=177fBDBwjbj0BzMNReg02BjF4EhhNisTehq2M6AYBt4=;
        b=W4MSquuZONq7x73O1vbve76OvJcPvcKJ8aDL2zUFCyXysHyHpv0P8EAvKZh88U1a+7
         Su395/dIZQDaFb5LTJFFzkIs+4MUHLbIsVQY8WlsiW1E+yusnKEt9DZ0VLb3bVYZk5YA
         u6eSr7H9pHBqpcZGFgthVgO2E06sYVDlFHX+aDKANF3wlNcvayjEZ7TfmRZH6CLdeAiT
         vcFzpKc8B+PqTd0Csr7J+zjvsMPytWhVqvpFWxFV6LQRNJOQtqvzi/fgIXih6uX7+ZRQ
         ujsig6YTooXFRYhEkYbwrhssG/0gMasOIMIezRIkYnm3m/8Wx+s9Y9vGT8E9EwwtCNz0
         b7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=177fBDBwjbj0BzMNReg02BjF4EhhNisTehq2M6AYBt4=;
        b=IFBmRpyEnTAPnobJ6Yvo/IMeGBQHt2eaNllsL4SpxSu45tCT+dn9nwneVLV26Gv5lz
         ZA8b725na6u42jyakFHeMv8BrZb7/u40XDFmBlNEqLRsFD10/kM+2J98Mnqr3cBSje7f
         EVX/uptDn7KmyFIx1czXOBK4BhQrnHJbt9VN5NnKfYIVRvuS6lwCC/va5vhs8e97UF3Q
         Ak7V8/Wl8eyWFZGTnHK1ItPS6enaebOMj5Jx14MkaQn7zHDfSemThH8cPA+cm+vM7Smc
         chXKRyVHb0oF/a3f8IuQUEPJm3TsFw4ZFI3imzfVLYFjn3nD+Q+OxNkmFKGDQt5kLdny
         6Yew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZXyx7dOHLku614L4M+Gm8n+gWZihnrlO9vb7c6snLqqftO1CL
	hGGmBNiBkN7RnPnD1WFczJk=
X-Google-Smtp-Source: ABdhPJwtdKiw4rkB2BEXldmO5OlsweZxxJmQU4zbft3VG9o+TQ3zAw6LmWDZ6/4kT5V4xgtOSpqsaA==
X-Received: by 2002:adf:b74b:0:b0:1ed:e1d3:e053 with SMTP id n11-20020adfb74b000000b001ede1d3e053mr24156373wre.131.1646239684011;
        Wed, 02 Mar 2022 08:48:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6489:0:b0:1ef:d725:8751 with SMTP id o9-20020a5d6489000000b001efd7258751ls739624wri.3.gmail;
 Wed, 02 Mar 2022 08:48:03 -0800 (PST)
X-Received: by 2002:adf:8063:0:b0:1ef:78e3:330 with SMTP id 90-20020adf8063000000b001ef78e30330mr18481854wrk.424.1646239683035;
        Wed, 02 Mar 2022 08:48:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646239683; cv=none;
        d=google.com; s=arc-20160816;
        b=o0YTLpeTxwLsvJjrkv8gUGFDIMGTODJRvBsYMRnOsTt6omGwQRY4rH2QBhRw1wkjt9
         DIFfTWyFNHx8QC9itblOVo+4xW3fuoSgESeMkVqp6qZTuqYnVsW2852bZdjxZWCwBNYZ
         FAcM/tmrhgIYbRZ6PRD6tQgQpwEarLXbkkifukz9i25uPUUTgPUCkXPUo2f90e8wxyME
         WC83YaDt6Kr2WXMigmZb+kH9msLNAvf1kkU0iPKT8N9ZG3pUX27dHy5+smiRi7/05DFc
         aAmkRE6YC+3m6Ox4Wib0a1h+ajS9P9F6TKeZsegOfYLgShiY43y2nm3PWvpGIJfe1XJn
         NOjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=yxIQJzJY2RU5eIH2Bl2kHmhCgBk4F58bNCJr9+vhAfY=;
        b=mvlIt+KyQlkC3V9QGigDYlBBNoq/Kpm1DzZVxGht3+q04GhHJP5XwhicMulg1jHH8K
         Fm6ajr8s2wCHZM0YRlL+pjzPuEH03PjwzjPQhKQvQw9zOYAJpRUMtkp1/QT4DoS/RMjA
         0454WyzKSMqYsIVxrRvO/wLTlYKlHzhvsRNf+HoTxjEdS29EXa3Cor0kwNik/39m8GDs
         rZKyWzYCOuwXd/ymNCM1QeBkEleNvy339ITj4JP4s6QW5rPF213PQFLaQE3PFwgXaM0W
         0M1Dyq2/iIL3SRecnquB1trSgfbFPJpU8g0CFji5j6cnHSFbSaBxi5PzyQzmcAC1Hrt/
         qioA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id bh15-20020a05600c3d0f00b003816cb48925si348203wmb.0.2022.03.02.08.48.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 08:48:03 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4K80RQ4bLwz9sSR;
	Wed,  2 Mar 2022 17:48:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ojv3flF-hEnn; Wed,  2 Mar 2022 17:48:02 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4K80RP3v1Kz9sSN;
	Wed,  2 Mar 2022 17:48:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 208A88B76D;
	Wed,  2 Mar 2022 17:48:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id O_1AzIOzJJwo; Wed,  2 Mar 2022 17:48:01 +0100 (CET)
Received: from [172.25.230.108] (unknown [172.25.230.108])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id CB7358B763;
	Wed,  2 Mar 2022 17:48:00 +0100 (CET)
Message-ID: <a120fa0c-4d00-ed4c-cffa-0df1fb5abb2b@csgroup.eu>
Date: Wed, 2 Mar 2022 17:48:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
Content-Language: fr-FR
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Joe Lawrence <joe.lawrence@redhat.com>, Kees Cook <keescook@chromium.org>,
 Fangrui Song <maskray@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-2-ndesaulniers@google.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
In-Reply-To: <20200901222523.1941988-2-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 02/09/2020 =C3=A0 00:25, Nick Desaulniers a =C3=A9crit=C2=A0:
> Rather than invoke the compiler as the driver, use the linker. That way
> we can check --orphan-handling=3Dwarn support correctly, as cc-ldoption
> was removed in
> commit 055efab3120b ("kbuild: drop support for cc-ldoption").
>=20
> Painstakingly compared the output between `objdump -a` before and after
> this change. Now function symbols have the correct type of FUNC rather
> than NONE, and the entry is slightly different (which doesn't matter for
> the vdso). Binary size is the same.
>=20
> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orpha=
n sections")
> Link: https://lore.kernel.org/lkml/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_b=
S92duihhywLJQ@mail.gmail.com/
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Is this change still necessary ? If so please rebase as we have changed=20
the structure of VDSO source files (Only one directory common to 32 and 64)=
.

Christophe

> ---
>   arch/powerpc/include/asm/vdso.h         | 17 ++---------------
>   arch/powerpc/kernel/vdso64/Makefile     |  8 ++++++--
>   arch/powerpc/kernel/vdso64/vdso64.lds.S |  1 -
>   3 files changed, 8 insertions(+), 18 deletions(-)
>=20
> diff --git a/arch/powerpc/include/asm/vdso.h b/arch/powerpc/include/asm/v=
dso.h
> index 2ff884853f97..11b2ecf49f79 100644
> --- a/arch/powerpc/include/asm/vdso.h
> +++ b/arch/powerpc/include/asm/vdso.h
> @@ -24,19 +24,7 @@ int vdso_getcpu_init(void);
>  =20
>   #else /* __ASSEMBLY__ */
>  =20
> -#ifdef __VDSO64__
> -#define V_FUNCTION_BEGIN(name)		\
> -	.globl name;			\
> -	name:				\
> -
> -#define V_FUNCTION_END(name)		\
> -	.size name,.-name;
> -
> -#define V_LOCAL_FUNC(name) (name)
> -#endif /* __VDSO64__ */
> -
> -#ifdef __VDSO32__
> -
> +#if defined(__VDSO32__) || defined (__VDSO64__)
>   #define V_FUNCTION_BEGIN(name)		\
>   	.globl name;			\
>   	.type name,@function; 		\
> @@ -46,8 +34,7 @@ int vdso_getcpu_init(void);
>   	.size name,.-name;
>  =20
>   #define V_LOCAL_FUNC(name) (name)
> -
> -#endif /* __VDSO32__ */
> +#endif /* __VDSO{32|64}__ */
>  =20
>   #endif /* __ASSEMBLY__ */
>  =20
> diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vd=
so64/Makefile
> index 38c317f25141..7ea3ce537d0a 100644
> --- a/arch/powerpc/kernel/vdso64/Makefile
> +++ b/arch/powerpc/kernel/vdso64/Makefile
> @@ -32,9 +32,13 @@ $(obj)/%.so: OBJCOPYFLAGS :=3D -S
>   $(obj)/%.so: $(obj)/%.so.dbg FORCE
>   	$(call if_changed,objcopy)
>  =20
> +ldflags-y :=3D -shared -soname linux-vdso64.so.1 \
> +	$(call ld-option, --eh-frame-hdr) \
> +	$(call ld-option, --orphan-handling=3Dwarn) -T
> +
>   # actual build commands
> -quiet_cmd_vdso64ld =3D VDSO64L $@
> -      cmd_vdso64ld =3D $(CC) $(c_flags) -o $@ -Wl,-T$(filter %.lds,$^) $=
(filter %.o,$^) $(call cc-ldoption, -Wl$(comma)--orphan-handling=3Dwarn)
> +quiet_cmd_vdso64ld =3D LD      $@
> +      cmd_vdso64ld =3D $(cmd_ld)
>  =20
>   # install commands for the unstripped file
>   quiet_cmd_vdso_install =3D INSTALL $@
> diff --git a/arch/powerpc/kernel/vdso64/vdso64.lds.S b/arch/powerpc/kerne=
l/vdso64/vdso64.lds.S
> index 4e3a8d4ee614..58c33b704b6a 100644
> --- a/arch/powerpc/kernel/vdso64/vdso64.lds.S
> +++ b/arch/powerpc/kernel/vdso64/vdso64.lds.S
> @@ -11,7 +11,6 @@ OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "el=
f64-powerpcle")
>   OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
>   #endif
>   OUTPUT_ARCH(powerpc:common64)
> -ENTRY(_start)
>  =20
>   SECTIONS
>   {

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a120fa0c-4d00-ed4c-cffa-0df1fb5abb2b%40csgroup.eu.
