Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBW5J5KAAMGQEQGU6UMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F81D30D9A9
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 13:19:39 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id b201sf3050781wmb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 04:19:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612354779; cv=pass;
        d=google.com; s=arc-20160816;
        b=TH83HdiF8OGqexMemsQmGHFD3glWPZQJMqiVVXSUCDsPYcfK8IqK/nyWzRTREtoqTF
         Ai4u+i9p3BuZnwwIY/Cr3OONKcAATwivZTsBQTFAbT/JnN18rbohc+N4cwo9RKE8U+pw
         I/UICqmXKeUjuUtSP+9jGhhP2Opujyax1lDBiqsRmNBYToVZ9h1+gGLsg3nExE3sJ/V/
         wsGoT1zBfIpg7aLO7ZVH8FWLU8pAgo7gANjAjdPGvFoRBMohcr46v/x5eeRx/XE0sKEw
         6iYFSn7g7XrOqgxmJNlT1B/vZ2FqQkxVvHKf3pre9K0Vlul+Lhnru4lbcyDkm23Y7Acw
         LPAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dAmyaIV8cy1bA7JHGWzcWLstP/RLZubAWIvAMumG0GI=;
        b=gNshaR8vBF+4RrM1byrF6hK/WsAPQwROL8wN12S/x0gEc+p7KH7HgDr6PewNztyO36
         +Epx8hfePSD6g4nXiZS6oh0Xt/26ahwJ5a6NQu3FGehaQCMvbyVoaEjaEfdbKwiotYyq
         Q/SO2iUun1DlY0ZY4rK7x0R+vh3ZqkBcaisA3QGlqR2qHuVt12N64Kxn47TDDULLQCS0
         TJpP4sanhzqQuUIa87nKla4xphPc0auK16hAI6VNJI+U10HIVoebSC1E26rnsDeKnA4n
         Pn9ut3LGlAeLUm/aloN+YkDV8GYKVYIZCONuB5BNvo6JobS+yWbb2roA/0m2UEi7t+Fv
         HvhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Hnv7ulWZ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAmyaIV8cy1bA7JHGWzcWLstP/RLZubAWIvAMumG0GI=;
        b=Cg0iCO+yJDdxlqsp9rEK+d/l/GFQaxEa8VFlvmeIDg2C8tRJXavjRQd6Kdja2f9y5Z
         yDaQp1ha6T2OS6zhHIXGnA/AfNHsat12B4E3hvbHtg3RFF1puFzAiapWtJSfTBQwB2F8
         cbV98JWYz75rQ4FOPb2av/8HHSmIuXY+Mow2XOhtgeOQjyUIaQ2nddrKCeR0OD+uBe0E
         k8W/3ajqRtpA6wlstxr7UoW1il0lngDoe3OrjyP2X3cSbvkCNM0L6NQ5kMRjRZAgP1rH
         3sPaPFqVBvAGu4BRVM/Bu3tiTga9s5Ej/guz01syoN2J4mHXxuzNLsfzTX+ytdR14hGI
         X+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAmyaIV8cy1bA7JHGWzcWLstP/RLZubAWIvAMumG0GI=;
        b=R9SwE93fghTsqMdECvUoDamlft/9rhrQ1e2eRBNvIMpOey++3iGJ/fwL2e2kgGHyOe
         LVXMLzBA0QDQWzIjQ7EmfgDSaRRyRCdgMcsq+kM0WaMw6eX81R0WtIHdqj7v3i1KcVLo
         IYVugitefA2+pJP1LCi6sobOWetModiR0mdvZ+NYYyUc/Pkpg773Wnf8klyfWCs3Satz
         V69vWyFPUmxZjk/j83xJ7445kVhhhz5HKEBFOrbdLBgpG6oKNubYa5VU2Z2Tg7C2wi71
         ViFTpJv30egJ+Xe6RfUGzqKwaBdA7MJ2J0YekldS14/mDvIYXfTmxtXJ2TC2f1owuIyU
         IBbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i2cv1cub0W7gQdJBZdqf7xbesmR4k6uGmy7yCKFWqP9OqU4E7
	szzn6hD2TfKitagC3Jtui1Q=
X-Google-Smtp-Source: ABdhPJzJhm2D6/W9AKw5lfXCWuw6t8jr4GF0ovHvKC0j1a6GrE9UfQi2yPGRwiAnFKxhZXZkTo2k7g==
X-Received: by 2002:a05:6000:1045:: with SMTP id c5mr3356190wrx.250.1612354779255;
        Wed, 03 Feb 2021 04:19:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f88:: with SMTP id n8ls941120wmq.3.gmail; Wed, 03
 Feb 2021 04:19:38 -0800 (PST)
X-Received: by 2002:a05:600c:2307:: with SMTP id 7mr1643162wmo.120.1612354778486;
        Wed, 03 Feb 2021 04:19:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612354778; cv=none;
        d=google.com; s=arc-20160816;
        b=pzP/JAzsogb6pADt0OWPfYqwL3AdxoYwWYqmr/FvzdsktrKn39+Q2d/8akY71tUyjg
         zJUcT+ht+ydj9o0jkaTVEThQSu0vofCAD54G7M3OQ9YPvwNXPQdLMAErVPg4WGzMq8QO
         2hKRCRfLKmh+e4ndap4L3bZL93VHThZfEUhtgPwgrqa/hDo1f8gxXbl+2uEvPDCN7ezD
         xj+LkSA/ZVOYGSBCb4TefwTINvFrKKxTucU1syXWjIQhE6089KRVvVaOD3fSt6A6LpAg
         18atQV7080dZzVYjarGZ5GprgzcoH1na1sXjH60+dYZLLvAerIZZC35qFK15mqHuazO2
         GhHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Nj2ilHOLZKWctzV9AdEGYD+lgbpOZAlL7qxf96POKHE=;
        b=mACoMBzzDOCyA9qpdl1T1ZK4xSofq0zR83OzUwG659Tjxyi5WsV5Kl+GhvzV/8AWDZ
         CiGw1tnRQw0Sl1sc8E3iqRMBrRW7U1y9DMZaPn4lbMf0UQDORRkDci01DmQQlLi4bhmU
         shjL9dSjLXGU7bQBFRMdfpPNdg6TKNSbUoqIuvhygEuadRe9LwbPSNjpj8lD/hSdxoDm
         eOY9bkklmYcgtMqH5tF9vXyvIxpeFGEqjLH46jaJ8T9kPQv0q0KMGtvGkgBnVEvDFutI
         fdyWJqfOX4Vx8YkQtiWf00DYYyx9FoXs1DyQF61KvyNBnzwQ03VgwbdnWCc7L/+2K1R5
         FxRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Hnv7ulWZ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id w11si120536wrv.0.2021.02.03.04.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 04:19:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0c84005017455b058bf408.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:8400:5017:455b:58b:f408])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 35AC91EC047F;
	Wed,  3 Feb 2021 13:19:37 +0100 (CET)
Date: Wed, 3 Feb 2021 13:19:34 +0100
From: Borislav Petkov <bp@alien8.de>
To: John Millikin <jmillikin@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, hpa@zytor.com,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	John Millikin <john@john-millikin.com>
Subject: Re: [PATCH v2] arch/x86: Propagate $(CLANG_FLAGS) to
 $(REALMODE_FLAGS)
Message-ID: <20210203121934.GC13819@zn.tnic>
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
 <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
 <20201226075347.GA1977841@ubuntu-m3-large-x86>
 <3b793c42-8983-4502-1f9e-729cc0ebec47@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3b793c42-8983-4502-1f9e-729cc0ebec47@gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Hnv7ulWZ;       spf=pass
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

This one too:

checking file arch/x86/Makefile
patch: **** malformed patch at line 62: =C2=A0REALMODE_CFLAGS +=3D -fno-sta=
ck-protector

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
clang-built-linux/20210203121934.GC13819%40zn.tnic.
