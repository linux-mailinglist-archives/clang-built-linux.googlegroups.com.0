Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBKWZ5PZAKGQE5FTJSHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CD51749E4
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Feb 2020 23:58:52 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id j21sf1824121ljc.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 Feb 2020 14:58:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583017132; cv=pass;
        d=google.com; s=arc-20160816;
        b=HTI0liHu4VP5lPX1qNa1CDyKFNSLPBEEdIJhEGWzjcnrV1LB73sVdQsFB4UQk9w8PP
         D18JSc076UIRDgXhZHRwLeLoq2JuwMz5dmLznSmWsr3mB3/k1w0ZyeTu+HPrsJZvgD+C
         iSGDQ0NviDZrKRrtHwMumm0zBCgzRk8I6RAMb5W4fvIn1FelyyyawGIBAkL0aBJgbqf0
         0fIecN72oRs2LvbYZUX6Op8l9ZNQautEYRUV+/ka0+Uqa72a1+lIUbME+QHLnowlfd5n
         bVPdWqvoEZNdRjSEcdZUJo6PFm5/9u9AhHAJrKvDWscmHAAA/Y9I9dxkrstvbHP+KkvV
         7r7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=4iPBkmnauZpKOSVWd38Q6dIZDvsO1yDp0Vnv7e5vq5g=;
        b=WXbooPx/ivy2/rsfaQtd97waMmVW717eeYmasxArOzBDA9EET02TCMnV9uqFd1tIU8
         LdQfseGA6wFdp3M9nIvJ38+6mRuxhZ8APEZXh+PBQURMU80ZHCp8+IrIwFC7trrZaWui
         AjoDSevQzn9oXN5VxCgOly5WFFafR97lqALoFOIxyvWFaWQCFQd7dczWSGbxPuE5mWFj
         E6a1TxGOFRr9G7th7G9QRx4MtNObaoHHlMh5YT4TQlqasjsaLD/eDJbFBqrKoNmKsnM1
         3lP26ciLwcWrwbZ9gyBSO/imhBlWy3psKk1RE1H/sqbf1fkAYKdAIgclWtgbxpw49wCi
         O7dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=A139eRSy;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4iPBkmnauZpKOSVWd38Q6dIZDvsO1yDp0Vnv7e5vq5g=;
        b=MDiwWXaqoUfEI7DX/gz1H+1n2801tuKxJ7iBH8qYU2RnFcvFDomuSsxS1P5JFu+rtS
         4GFmpUUp3xbldsAoXOb004RbM4o0IkCsYQfNmx+QWuNIeuLiM1DKcAzMyAgGZ8PAyqxJ
         SNtS6l1XA8te+8yQxZ9TK6xDU86Seh4rH32rULXyBXxGavnXZNuxX/UuC3TDjxXbGvNw
         nBkdTfAoYKzjY7u84cfDuLL4jr8QH+MiyjQv0vfUNSbEhQUt5XtrtRiZ1eMFXpJg4Zvl
         yCaUYYTKdeN/QfZ+znNxECzlIa3WDgDNQdt6oO1UlVeII+4Onr+p96ZwzHCEpZMB0pUQ
         Xs/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4iPBkmnauZpKOSVWd38Q6dIZDvsO1yDp0Vnv7e5vq5g=;
        b=Gm7GXfm+ayHFFlWBkwyNtGtALz3Wdfr0i5mbvX7GJk32jaDFjDQ87FBnL35ENVh62s
         joiqXnM+ovQNHSSdLdRu3PrMd4muGC9TwKKf9b47c8FdPcsxMXw3sxlmHoYAbqkblhJC
         i1NxAeXaijLqNQOeXdb363ewsAt8mfSXuZBPw1B9HaIg2fUghTfwjGhw87HVLTZXlMal
         dQkYfkp+ZjJRIH3Qwy8Gnh5DscSePYYv4LaRSljdEPSqayIC0mEzUZmabjOQY2GNhx1p
         X7rrpPI52oy5VkfDyuhszRedrBo4WYC9kmfCSsV55qovRNhnRZkobBc5CsItPamwYL1a
         a5Aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1YEVKKHGA0Rr5ZHBXEbcaMb0yq0bDMXCUbOnCreXvqaXNYsNWD
	Qm8sBhai+8gyJZNy2nqq8Js=
X-Google-Smtp-Source: ADFU+vs0xA5LbSrRF7T7rRrt1OnwlnQRrdPqR+I1mecUm33W0VVh82lhZAwt2oFWIprZdDLfJ4X3Cg==
X-Received: by 2002:a2e:9788:: with SMTP id y8mr6559390lji.287.1583017132435;
        Sat, 29 Feb 2020 14:58:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls526434ljj.11.gmail; Sat, 29 Feb
 2020 14:58:49 -0800 (PST)
X-Received: by 2002:a2e:6e19:: with SMTP id j25mr6968864ljc.95.1583017129614;
        Sat, 29 Feb 2020 14:58:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583017129; cv=none;
        d=google.com; s=arc-20160816;
        b=l47fKaobvJgWoh7fd3yElOSEjiYm5HmKeYrzEeYvPpNMI0JLj3RgElf65Y8QNtLLca
         DirndI0bnf1jUtQeZf0CCfSHwFxGHeu3kTG7Y4DTcX5D4BcrnJvtUu/5Krw5QysbzjGr
         MLWEU0TAimx4FgPZKx4W7i3Lfj55YCrGEDfzVwOkMSXe+L5iJDArr1qKRgM9PXIa5wGE
         sSbkZfvZE6P/rU+mVoSNJyKiO7qpLMOiy3tZEtOJuUG+Z1na1tWE1iOgATuqRP0w4cW/
         jRqtWKYZeOnpQlfEBBg97sd2mFEtpHaOhICV9o9YOS7+yJe8WUtKO9QM3aNgR/apuAbZ
         bM+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=1bNoDWsqYYisEb5EWkUaz01QS0co4YAIEIGe5+hEj+U=;
        b=AztlVJzIvM0JlS2QDn6F6iBv/ntDo1Lv2845GVvaA6YjE2sSL0vShpUiENzSp9kg22
         o0wVq0nKPnND00/Sg27gGlopZY10sW/n2Td7BlHOiAcDHVy6wodqZBI3twFJjjK7G5MB
         qZ/f4gCnK6jUhIlDwwzD/TKmFmPO4gFSL7MB5jUd9srpLd2ZjrpanIfw4Z3t8/Uk/yIr
         FBJvtytCwGqXEm7Tb6ir032+wXaUVlBiWfBZce845cpr1n0qZ8dbHWsX8YHN0wRJ7LOO
         x8LosNo3D41HRVFrDUkvtL67WcIBBHItihI2dHoZ9KDMTYLbcg0spHP/6+EFkXnnldN9
         MUlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=A139eRSy;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id o24si552385lji.4.2020.02.29.14.58.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Feb 2020 14:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 41C925C181D;
	Sat, 29 Feb 2020 23:58:40 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 29 Feb 2020 23:58:40 +0100
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de, manojgupta@google.com, jiancai@google.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
In-Reply-To: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <4366c303e707a43071d5bc54f00cce01@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=A139eRSy;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-02-21 07:34, Stefan Agner wrote:
> Clang's integrated assembler does not allow to to use the mcr
> instruction to access floating point co-processor registers:
> arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
>         fmxr(FPEXC, fpexc &
> ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));
>         ^
> arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
>         asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   "
> #_vfp_ ", %0" \
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
>  #define FPSCR_V	(1 << 28)
>  
> -/*
> - * Since we aren't building with -mfpu=vfp, we need to code
> - * these instructions using their MRC/MCR equivalents.
> - */
> -#define vfpreg(_vfp_) #_vfp_
> -
>  #define fmrx(_vfp_) ({			\
>  	u32 __v;			\
> -	asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx	%0, " #_vfp_	\
> +	asm(".fpu	vfpv2\n"	\
> +	    "vmrs	%0, " #_vfp_	\
>  	    : "=r" (__v) : : "cc");	\
>  	__v;				\
>   })
>  
>  #define fmxr(_vfp_,_var_)		\
> -	asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr	" #_vfp_ ", %0"	\
> +	asm(".fpu	vfpv2\n"	\
> +	    "vmsr	" #_vfp_ ", %0"	\
>  	   : : "r" (_var_) : "cc")
>  
>  u32 vfp_single_cpdo(u32 inst, u32 fpscr);

I just found out that this fails with binutils 2.23.1. Since we support
binutils back to 2.21 I guess that is not OK..?

  CC      arch/arm/vfp/vfpmodule.o
/tmp/cc2Vcw98.s: Assembler messages:
/tmp/cc2Vcw98.s:920: Error: operand 1 must be a VFP extension System
Register -- `vmrs r6,FPINST'
/tmp/cc2Vcw98.s:948: Error: operand 1 must be a VFP extension System
Register -- `vmrs r6,FPINST2'

Looking into binutils history reveals that FPINST/FPINST2 has been
allowed with 16d02dc907c5717b5f47076bb90ae3795e73b59f
("gas/config/tc-arm.c (do_vmrs): Accept all control registers") which
made it into binutils 2.24...

I don't have a particular good idea how to make this work for Clang and
GCC other than a some ifdef's...

--
Stefan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4366c303e707a43071d5bc54f00cce01%40agner.ch.
