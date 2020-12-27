Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDMAUD7QKGQEFIS35NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE32E2FC4
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 04:31:26 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id c69sf3530491vke.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 19:31:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609039885; cv=pass;
        d=google.com; s=arc-20160816;
        b=MyEEHFXZ3kuysiwmsLs9FcdzIVFsbWSODEwVI+B4QsgPwDD0LvgOuM4SW4KAQ+n63a
         QSU6S7Nt/T4FkglgdtIR1yZM7a3ugVhxUqAuoQtmyIXIDkbdkhd5c0HE+2VwkVzQgSKL
         8r/73wdhqWbLrMVkbXHIZidyIw8TMy5uR3IWN8dwNWVudShXW++K+5beRIXg91ui3+mP
         M+ujZr0x2culXIIDYHD6FOHTE1Um8T1TKbKWd/WlC5WqlcDFelUVBOCwVDizbrCRJt8D
         ggcspKMJCf1GYrb0dHlIgZ5TknbGc6wJ9LoeuGlgKESCY68ksW6fgYaNmc1w1PVbz77K
         BFcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=ySWUko0YJCbUp8Iisi0ZMmpGTuM6fL90NqzBIX3lIPc=;
        b=e2E0lvpB+NGMRjTiJHLMe5DXySbxmklQXOMcApk3ogpjEvk7fXwlljZp2o4WdmCNG3
         LvggXpDHxdAAJfxbk1DG3z1kFkS8GcFJZjguo0ZL8TZEttj842zw77tqDq7YtT2Wux0V
         NU/79pSQ8s/z+ambvPsJEIl1Ripi9yoZtjUqZ47AazUeZXHj8uFzyUHn9h1vTzlFj2ef
         /myRXP1dgh4i0WNnMwf4TJ0mbBRyMW8mI6wXNebLGdn3YKjmQi3KJzxEKE4Afrhkbg5G
         roSzI9741z3SoWHKWEq2GPKao2qsuc4QaUODqy0i9M3le3MWy0AdHio/mrVLXz3On2Vn
         CuTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRBlCLWf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ySWUko0YJCbUp8Iisi0ZMmpGTuM6fL90NqzBIX3lIPc=;
        b=IX8PSu6cj9jUA/x75pjbRXewN+/g2WmGeEUfLsW81ypWNqHgWKdxvgUA5A6xWJH0hr
         1IfLwCLYUcGPUt1UOz9yVVk6QPPTxxGuF+yYEcjBNGevpHmKP/Qrtva9xScGYp872DFK
         JyrdkkHGNSNnlPQph2a6DqmEy+U8V3mrcmDtWiPIiimtCo6TWqY52fxLu3BhUfGOjckO
         JRZVao04Jo9KSKJ1UZAN/WqsEhDx4IIJm/jbhprHuGL55kIF8jFozfDU1AreAUt6E0TD
         okf3l4k6pDc7YnaOZleLL46NYsADqFgbM7i4hhwXhDNGgynJPpTqtiRrMaTOkbusche2
         /fOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ySWUko0YJCbUp8Iisi0ZMmpGTuM6fL90NqzBIX3lIPc=;
        b=av4MWDXAR93FHlsOxeIZpiyMjO7xUKKuvqxMFUE0jcUdvuBr7zEJOVXklBVRBsq9D7
         hiT4ZzmVmRCpABQQVzrxCQC3EF9IHToJmqKgnAvTFe5RVp1eNDQdV8Trfu126KFAwyMz
         lBN6eJ/+KmTwG+adh2ZCGykLl0b6xNOt1ZXel22YzBQrHDo+zsALPdfjitcnfdiG+zTu
         pHOPZn6HgMbcje/NC8VfviZvEI4GuynofpPzwhI9vLKQLhOXQIU3kWGIVg6ThztT/R+w
         pJ9gcZA3/0wIn22oWCw+uBJyo2ewpd7CWe2IVYPjMH1dC5YHg0IcHf/+O9OE4BUMluSi
         isgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ySWUko0YJCbUp8Iisi0ZMmpGTuM6fL90NqzBIX3lIPc=;
        b=LMubmsCpDeykkX9RZKGO6zIh6sGxWQ6ulDUpd6fkei5JmlknR7TwpjczR9q/1hMDyh
         gQ3me7tklxRwBF+1rNeya6Es3dUwdNkBEYBdiyth974p9lrI7Ny0wIcEFXBb7EVTyya5
         Wloz5XfMxrLQ/O3tEQe0GgHiZZDkyRBghkbzuDxMDoJCmFZvxCcSSFdDUj6AhR94COOi
         EJxD3jVtAGLNN58RqRbJFP16WdwwySA4Zyhn4lF95R11bw2wq9fGo8D8SNYqiunGAElO
         wTq8um5T9FSQ46AIxrWylXidteQOJaPecu1OZRnQraYZpsSNHXg5rc4Qqqsg1OHMs8mm
         LAwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UG1xup/Oi6vEIiXGg+Ml/EsYP8hgGDLaDcXXGcrN1sFeSgkLo
	GAyqKF8wYtgvhVTZC/fowc0=
X-Google-Smtp-Source: ABdhPJzhLMlmusIuPjx3CZDlLEXX9znE0pT2iftvYeb/nOnc2mSLtJDaRsqiNxDBbBhZEUEr3BmP8Q==
X-Received: by 2002:a67:ec45:: with SMTP id z5mr26411139vso.10.1609039885281;
        Sat, 26 Dec 2020 19:31:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f9cb:: with SMTP id c11ls5955509vsq.1.gmail; Sat, 26 Dec
 2020 19:31:24 -0800 (PST)
X-Received: by 2002:a67:e90d:: with SMTP id c13mr26077023vso.0.1609039884899;
        Sat, 26 Dec 2020 19:31:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609039884; cv=none;
        d=google.com; s=arc-20160816;
        b=cVJlr01hh4k8r+gIvQMop/pETlCh+aWw/jx//j9pRpUmirU2hsyGUf9nEEgAQ8NSHU
         /A+v9jVBxrOLeH4r0Hs7dxf397IfRrTXyULk7j5SKbBjcU8v8JL7Ub/8Ib7douiJqAMS
         HvhyvPQgBZG9KfzufhRMlIMeskkroLH0jcEds3REuyjmwR18FfOuIguSEQt6PIC5gw7q
         ADblO/Cka/eyyXGxrVxiheOOYU/YiOruUVmlruDfwCGuYyzH99IzuarxEhScsf7m6G1O
         JwhwZ4WNYmOjIuTFygIgjLuXxwLYkAa5aBLaybrVCETg9Rfe22x26SoRb2ItBRBs15Lk
         mpLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=EbFmFXuAZx6U2A2wGjp3rcMvZ/cJc1YG+CVcb98AIDQ=;
        b=xHupmxUM36pMhgXpuTK/e4aTEvRiQ6NzrsvU366Sj1FXO1T35UDzL3PlryaQx8ztE6
         h9erRsB3WQMPAWJQouujaLCShN5vDMwehFG3pOHdROcAG6F/UvJU8NEgczMqXJZb3Occ
         lOa9tHeSsvBAvBYWQLiS8PqXfBHzCAvR//ssIQAZPjIHyrQTLS+FhgfNiWrpTvq+r8Tc
         t57TF8rzvLxVmeReajUlr7lzfSa5v7BEdy9Bh66IHzKixDuxF8FlwfhEU0BkyU8LmjxR
         qPeSp93NHIr+zFTEHOMjUwmunya09Npz0aA24oZA9d1IKJMVHpuRDfmdi3yiXTChyQb6
         exCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRBlCLWf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id v23si1174252uap.1.2020.12.26.19.31.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Dec 2020 19:31:24 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Received: by mail-qt1-x830.google.com with SMTP id y15so5020725qtv.5
        for <clang-built-linux@googlegroups.com>; Sat, 26 Dec 2020 19:31:24 -0800 (PST)
X-Received: by 2002:ac8:7654:: with SMTP id i20mr37758757qtr.291.1609039884505;
        Sat, 26 Dec 2020 19:31:24 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 198sm20708580qkk.4.2020.12.26.19.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Dec 2020 19:31:23 -0800 (PST)
Date: Sat, 26 Dec 2020 20:31:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: John Millikin <jmillikin@gmail.com>
Cc: hpa@zytor.com, x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	John Millikin <john@john-millikin.com>
Subject: Re: [PATCH v2] arch/x86: Propagate $(CLANG_FLAGS) to
 $(REALMODE_FLAGS)
Message-ID: <20201227033122.GA1993664@ubuntu-m3-large-x86>
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
 <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
 <20201226075347.GA1977841@ubuntu-m3-large-x86>
 <3b793c42-8983-4502-1f9e-729cc0ebec47@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3b793c42-8983-4502-1f9e-729cc0ebec47@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pRBlCLWf;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Dec 26, 2020 at 05:41:25PM +0900, John Millikin wrote:
> When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
> contains additional flags needed to build C and assembly sources
> for the target platform. Normally this variable is automatically
> included in `$(KBUILD_CFLAGS)' by via the top-level Makefile.
>=20
> The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
> plain assignment and therefore drops the Clang flags. This causes
> Clang to not recognize x86-specific assembler directives:
>=20
> =C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
> =C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real=
_mode_header
> =C2=A0 ^
>=20
> Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
> which is inherited by real-mode make rules, fixes cross-compilation
> with Clang for x86 targets.
>=20
> Relevant flags:
>=20
> * `--target' sets the target architecture when cross-compiling. This
> =C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS=
')
> =C2=A0 to support architecture-specific assembler directives.
>=20
> * `-no-integrated-as' tells clang to assemble with GNU Assembler
> =C2=A0 instead of its built-in LLVM assembler. This flag is set by defaul=
t
> =C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
> =C2=A0 parse certain GNU extensions.
>=20
> Signed-off-by: John Millikin <john@john-millikin.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Changes in v2:
> =C2=A0 - Reworded the commit message to highlight that this is for
> =C2=A0=C2=A0=C2=A0 cross-compilation.
> =C2=A0 - Removed the `ifdef CONFIG_CC_IS_CLANG' guard.
>=20
> =C2=A0arch/x86/Makefile | 1 +
> =C2=A01 file changed, 1 insertion(+)
>=20
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 7116da3980be..412b849063ec 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -33,6 +33,7 @@ REALMODE_CFLAGS +=3D -ffreestanding
> =C2=A0REALMODE_CFLAGS +=3D -fno-stack-protector
> =C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS),=
 -Wno-address-of-packed-member)
> =C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS),=
 $(cc_stack_align4))
> +REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
> =C2=A0export REALMODE_CFLAGS
> =C2=A0
> =C2=A0# BITS is used as extension for files which are available in a 32 b=
it
> --=20
> 2.29.2
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201227033122.GA1993664%40ubuntu-m3-large-x86.
