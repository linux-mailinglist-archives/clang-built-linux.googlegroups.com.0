Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYED7SAQMGQE6J63VIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FE132AF5E
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 04:26:25 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id p136sf25226991ybc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 19:26:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614741984; cv=pass;
        d=google.com; s=arc-20160816;
        b=zA3S5vRZxR3OWMuAJOdUcJZLNWCj/NXKjgDMHk20U1k91FPhewfWPfMj1thFFIS2wo
         Tgk4zmbAcumuCNhcDH5C+GUhtraU6mY1BfZeLy10Qfm1Gq/UavhD9o7k00LxIBQUn5+n
         4i5S2qtIV8NgGRnoqNrfQyfdi4Yjg34DmTSX9VXMIfQK2xgck5g1B6Qs08rqL2bxrLCY
         FpD1LrTN8s7/g/csicm0sYcBJVYECFxzWzP3eLPgzsUXZ9fMQNO21Htbd72/0NA/lsSt
         e/6V0XRqG8MlEf0IXLhGMINuCaZpNdR4HyOW+Q5sSsdvDcS/jEgzxcKWegKJzzfU7UXX
         q9NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bhhTVGrWtTTX2QrRLPB+PNVRC0+8lW/cYk5jiVYjxY8=;
        b=wiSZxGdHThG3pywLQBNDesBYKi+E+ydjQjLkQWC48zxXSDATV5GOHNqOSX2ifieWhe
         dk8JlfIMdy05sBe1QySorTBw+l7RnhfSzP5PdmJltITsG0vci+dxHl7uWfzzMm9c1cNN
         XnS1O8/UZASevpZIujH4UZw8Jpyuf9g2B6uMjjxros2dBEEm9QI5y/HriGdDs2NrEEZX
         c/tIilf2RELjnVNtTBG5YTmevN8+HKHnU13PJcXJrgUBYdoQjUMjom6WvcodMcAgywOD
         OcAKt7wzzKqDYoCPtKxP7MG1ULEP7U9xNabR+468hC93clm2tW9zmDDBVscdRRcRwXjJ
         dZJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GdqfAoy8;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhhTVGrWtTTX2QrRLPB+PNVRC0+8lW/cYk5jiVYjxY8=;
        b=evM/MWA49Q1C9szvncIdVdFE8NHUvuMcA7B/4KLBMDPB5CoNmZB5zzOtP2ppHV6RJu
         97yHApOIG/+UYHQuWKTB/eyNR2haP5e/51/MZ8tWZhze0I6wKzFRV4nqNyvRuh0DI81d
         xvszLP+2QvQxX1VPHz1dldlLnznbd3t08JEIxEp3J8RNG0iKEvr9WGgEFnev37hvsJPH
         fvDkhpg8sgTLF0CY36nTxo0PyfBwVqjVnQdeuWQ4mUKGp87KveIYyG22CwqG37x201nB
         N9cYPw+E82+Hks1oSpFzvhGCfANuY4Pgyelc3Vgu0Farnu7FIcvo/4RWTwDctYUG8PuU
         GZ7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bhhTVGrWtTTX2QrRLPB+PNVRC0+8lW/cYk5jiVYjxY8=;
        b=ZIAmTmF+WUxK+AtdAWH6KfhC3a8eB7Va3XgTcl5ljcDWZieIahHb+5HypgzIaUmBJV
         unnNk6urDF4iEnk6X4egwuPs0tqNmqsVy/9HEt1i1S7WvIf2uuomPxhGmRpVOM+IO1/0
         o/EbUOF+h5h0Z0Yh3iYcoOSFmST9iV24nrnWTtcJK5hQN36sNg3jEn9eiPz7R+wnTxN7
         h1tKpkzwPx91T8UAHCkL7Mg+mEne9sOIlB0RKJ1qOW7brOdgQnJadhCNzi1sXNqXbZr1
         mRXD9b/1KP7HWKaMK5kd0JQPrwxLeQI+vVrzwoqfpeHRxY5JkkSj1e1al3ycgcFoND9f
         jlQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bhhTVGrWtTTX2QrRLPB+PNVRC0+8lW/cYk5jiVYjxY8=;
        b=tjNEAZZgXuu2FOjAFBZpUJ1p1zuOE5NRKlH/NouE+HTmy7bAfy5BcuiE3rn51UmFbz
         CfJkeoiMm5p5e46lSXkb8M8bvlWjnSByKtbJBw7/QvZNmIIn/3O4fDhUQXmEuYKveMvf
         /o5+B3vrGNrO/S58FSyUDBVpQ/PffudA+1ib1zO7DmCI2pnLAbvpd1fOqANKhUO97l3E
         /PJPCme+gonR5EhsK5Sfv665g3V0cPqq271OYjkT74WhIgTw2y3UIyfiyRBbX/FyBcSd
         jg7QItotnRdGpnHRBacfeh0QjcaYmN/npAgDM5pSApEBYMQLJtjaZNQYJPdm5HQLKyu2
         41Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dzQ4srHQnOz2rC3eSy71lLbmITQ1S/d56DqL9HOigrzzd7cpE
	NMpUZIiFBxhUU7OpVtaeOZo=
X-Google-Smtp-Source: ABdhPJwUO47V66j77wm1juCLmj/9tybpN0ByVqBcIMic5jITfaqIiFZ64jUSgw6/2KNp0kSTme57vA==
X-Received: by 2002:a25:e654:: with SMTP id d81mr35578761ybh.207.1614741984742;
        Tue, 02 Mar 2021 19:26:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc49:: with SMTP id y70ls383681ybe.4.gmail; Tue, 02 Mar
 2021 19:26:24 -0800 (PST)
X-Received: by 2002:a25:2308:: with SMTP id j8mr2221864ybj.474.1614741984251;
        Tue, 02 Mar 2021 19:26:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614741984; cv=none;
        d=google.com; s=arc-20160816;
        b=VnPHmGP9nVh7UDiT0jzbUdz1LQAX+aniNIZOd8gNgt2YlG1ZsjHp/OOR0bmFbCQkVy
         c8nMeq+4FRSeqX/J3FPr+3a1snk7+e+Zski+hOV1RCShCRBQMEbBifebzxakU+TPT96k
         V3T7pmYNTjmV+Eh+3vM4jiYpgzJn88eEOuae7VqSl87ypwxhV5i2IoPZHdMllmPugXd7
         kWTzkJ1uYMUD2On6NT1Lb+qD7zhJpnffgYlFMXq0MZD+eFbG7gxfS2i8Oesy40iMT80o
         WpVzqymwQvI8cc+oJF9jctTDIN3jZAa1sjL//WppvB6exK7Wdnhbcv7yXs14FWPr6Pj/
         RgUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MBQIh7nbzwXZfvcx1OJ6qsninMO70G/gAKxbffF9+cs=;
        b=Hrc42mL4FxzgVkXKtZ+ybU3D4n03lIBl74ROFxWoLn5h8GbEhsHqqbjV7S+5QafCQL
         2/K8xVgjKTLxujKMCxOWeoTjb0OmYBRsq7imNSTsvzHM6ynAGiW7npgNB1txoC1Bny3x
         schHGasKD/IMPf8gOzufwIsSTP2ZvLavoMXgqAddSyUNzwBfVwh25ezTybF1jF61NLHU
         SbRWXd4J8+wcEugKlmfOV7An5P55gw8aSp6faC2nb3aJXAODr6J65oPcc5E5LNsY4nmv
         1wUytEZyrhm7b9K0rBFKRKl0FQw8aCp/LAY0mJO9Bj9iSmzAqDqwNcgURdBSxmHNzl//
         6siQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GdqfAoy8;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id k6si889370ybt.4.2021.03.02.19.26.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 19:26:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Received: by mail-il1-x12d.google.com with SMTP id k2so20068338ili.4
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 19:26:24 -0800 (PST)
X-Received: by 2002:a92:ce84:: with SMTP id r4mr2959615ilo.112.1614741983852;
 Tue, 02 Mar 2021 19:26:23 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org>
In-Reply-To: <20210302210646.3044738-1-nathan@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Mar 2021 04:25:47 +0100
Message-ID: <CA+icZUWKZ+vVTqSkPP0D8MMWuZkNzL1zpm+EkWrNSMM-5H3d1w@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Behan Webster <behanw@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GdqfAoy8;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Mar 2, 2021 at 10:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> This is not necessary anymore now that we specify '--prefix=', which
> tells clang exactly where to find the GNU cross tools. This has been
> verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
> distribution version of LLVM 11.1.0 without binutils in the LLVM
> toolchain locations.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

[ CC Behan ]

Hahaha, that is a change of a very early commit in times of the
LLVM/Clang Linux-kernel development.
So-to-say a historical change :-).

I will try this patchset later with latest Linux -v5.12-rc1+ and my
custom patchset.

Thanks.

- Sedat -


> ---
>  Makefile | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index f9b54da2fca0..c20f0ad8be73 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> -GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> -endif
> -ifneq ($(GCC_TOOLCHAIN),)
> -CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
>  endif
>  ifneq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -no-integrated-as
>
> base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
> --
> 2.31.0.rc0.75.gec125d1bc1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWKZ%2BvVTqSkPP0D8MMWuZkNzL1zpm%2BEkWrNSMM-5H3d1w%40mail.gmail.com.
