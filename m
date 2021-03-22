Return-Path: <clang-built-linux+bncBDU43XP6ZAGRBY4P4KBAMGQE2TPMYNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C80FA344066
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 13:04:51 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id i5sf25899491wrp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 05:04:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616414691; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHSuFrQ3XwhAzUBlY0+qDsMvQkMA+hWaXwB/aRBRnmCc+HXTzz1bZpsaZZ/NWr8Yci
         +Q8000GtGQ6iI9vpDFRV09QOY4kkqHyOdhqyQQYnNoGM/2dzYfP9RddNskhP0iGDEwtq
         SHPTNNEz4jkmNb5Ncx+7uyMB8gLxH64YHYlfMMqOhK2VXVhpKoUW0XOKmN2P91/c0nTt
         hyQxgF0jJof6tODCl4LmT05QXHpvCk76chaZWRGr4+XtMuFsQiVsV7OKue7bkax+LLzy
         z4D1U0PMzW7cPdN6YEVXxDG/rnax5fcFiTtj3VdUqbUlrNm+wHw3MTdcx5Kv0w3p/pRL
         1Z4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=j/EmB/Xux24vg5WgnYz43M8cYwLP+uP/8LB8jBapDfc=;
        b=kr//q2XRzIv9QkATKXloMS+ueEP/tPO0MSNaYCXxcNkBAcD24PPWjITR7vA5xY38lB
         kh2c1FL8nuRKRPdkI4kIuMIK8Xo5kvQ5C68b7BQ+Fmv+kLjlCPaksPONF0IjPHRzDI6F
         u3a83jJmYBo4YDG9+IWyrjTKcTo+atFTNqPvTLyrf1NJoDR3X827dtbI+08tjUnFA1k5
         9T9uxoqNHQ/B916tLNKOCh6O+6jQ2+XoRbLRp6NKJIiIkwOMvFvCyx32uWIywNNYiY0D
         aN3CY9m54wqwrQtZnpFbCOwRBYsP2EhRthBhtp3wdY6QSR7t9kRvkDpSd0/+H4hv3Auu
         6BAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=R2bsUqhA;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/EmB/Xux24vg5WgnYz43M8cYwLP+uP/8LB8jBapDfc=;
        b=UXITGkmbdUfrNA9vlm8/hyjxVQxSstrafIDLZLlA/yBdJP8FQdOx5FfCR8kxfoiTCk
         2U2ehlOFcehxKWAfOx4wsAKw3C6VXyjhPJRf+Y4bfy7AjFGnH1ji1l0V0uqqQixbE6gi
         OURXn3h1fpWjUSvWB3me9i8gR8nzQMPXvaZa+uaNRQoUgI0GvsPOdCn3IFuljIVToCdN
         FyrRuGdRvBLj7BFcByOWXleuhYnkRQ2tWawzEDL/j4MxZSEa4n+UVnfX3SkssvLPbNmJ
         bCzIsuwaUUxmOR5iDqqv2CDhHhqSqa2m0UfH1+7TnTzUFcAnv9GOCLd6PohDCqGg+1E1
         gpNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/EmB/Xux24vg5WgnYz43M8cYwLP+uP/8LB8jBapDfc=;
        b=D4XxxC1oYhFPYuJ2AFhFniRPZNRbPl53IEPLOPyx3/bA42+QZdZK5MdXsCoDTLRlg9
         QGemZfn7DvvWUItF2R5x4PDxhyHCZWgeMa8MkK2ZCeCq1NFr6wMahaO6OffTzr1oDyyR
         Nq0nHY0VQ6VN+lD++DZrtjxeSJ8JFUxAXz55tCKwkYP4Q2j+wpe91npmE0Cc09zqohDx
         wEG4jaAMnjwz1mf4MT+pXXyJyRwoRTtjsr93x/3Sfe/+ESgeEfZ49vdUbOgUk4nprGp3
         MdGjKvGGTmvZm8tzkkkjRXpOB+nWQ+cfGG9pnM8vijP9RmUThgHDectVqPjdHi9S3GyZ
         Qfzg==
X-Gm-Message-State: AOAM5316ZRxDptolUcTO9HSLslsmbwRl0sNYOIlHKDrC7Ggivv/koXz0
	4r55NqeWv0OmiVp/UVhyrmU=
X-Google-Smtp-Source: ABdhPJxh/9XcMlGHyjue2uK7s7GvVGYgXa11FR90FL7ryQETFndAb6MFxSkjcSKzbYtDvWEa/XZ+QQ==
X-Received: by 2002:a05:600c:4fc2:: with SMTP id o2mr15323285wmq.25.1616414691527;
        Mon, 22 Mar 2021 05:04:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls1582288wrd.0.gmail; Mon, 22 Mar
 2021 05:04:50 -0700 (PDT)
X-Received: by 2002:adf:fec5:: with SMTP id q5mr17212708wrs.43.1616414690737;
        Mon, 22 Mar 2021 05:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616414690; cv=none;
        d=google.com; s=arc-20160816;
        b=s/4Q0NT1vk/aZLGC1OMx++hrV0DJhEWcf0MoMPKPDTexgb6+AwroPIJtFsF71CKA0H
         /ptbd41nAci/prQpk9sL1JpbcEZSxSSZGzp84kjEbsErwdedcpWFPWjC7hsqGulX8uZw
         nqmOAVnt/DnNj3oGd9ZlxL0s3SUD78fs35cR283Qwve2BOT+bqC/Wk6WivcMIwIoOC8t
         J2KStT7OA/9SxtQEnOZTLeoP4pa0QZ8A1ru4i7aTSkE7JZrl0du65j6nkBEUlQT0iOSA
         IS3Rr0Ob/pZEQdpxGow+qMjbVPyoM4ldkgtSOJXZWtBOnlDTimktDgAwa1RvIuQgMFLY
         FleQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=AFgCbLguriV3CwFF1nhSPTfmyyoAQpRcEnd0zBssKuA=;
        b=zHxGKbCJ4w2SAQa9QGmdC4aEb3hs/Tu1A7e1vOza/44cGfo6lyXOlc6bqBYMeCJU3i
         9IWUvUu7SxVM+xwh+Sl9AjZzBaNeC7b2YpRN7uhSOUQuwZnRYJRgrqZnq5xGmOeQt+Hr
         bOFXrDrpB8DrM0JF6FdtOhLeyZYRQsdELz/ItTYyvAdel6sWRB+MOJGGUVdgQMQdM8KY
         hIq4ujkDlukIoCk+uWlPkU8KKeMVttPgKtrdlC10/7UgZdaq2HcEFBZdwefmqDXMwCup
         fSmGyuVbGEu5Y2SvY6tvD/B7qQgJeKRjoHFEHEPGcD8r0He1qQ8Z0G2SQtspVZusnhid
         wszw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=R2bsUqhA;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id i22si670605wml.2.2021.03.22.05.04.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 05:04:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Mon, 22 Mar 2021 12:04:43 +0000
To: Paul Cercueil <paul@crapouillou.net>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Paul Burton <paulburton@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, od@zcrc.me, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH] MIPS: generic: Support linking with LLVM ld.lld
Message-ID: <20210322120429.3706-1-alobakin@pm.me>
In-Reply-To: <20210321131805.98422-1-paul@crapouillou.net>
References: <20210321131805.98422-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=R2bsUqhA;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Paul Cercueil <paul@crapouillou.net>
Date: Sun, 21 Mar 2021 13:18:05 +0000

> LLVM's ld.lld chokes on the 64-bit sign-extended load addresses. Use
> 32-bit addresses if the linker is LLVM's ld.lld.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  arch/mips/generic/Platform | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/mips/generic/Platform b/arch/mips/generic/Platform
> index b871af16b5b6..19b7d92a4ca7 100644
> --- a/arch/mips/generic/Platform
> +++ b/arch/mips/generic/Platform
> @@ -12,8 +12,8 @@
>  cflags-$(CONFIG_MACH_INGENIC_SOC)	+= -I$(srctree)/arch/mips/include/asm/mach-ingenic
>  cflags-$(CONFIG_MIPS_GENERIC)	+= -I$(srctree)/arch/mips/include/asm/mach-generic
>
> -load-$(CONFIG_MIPS_GENERIC)	+= 0xffffffff80100000
> -zload-$(CONFIG_MIPS_GENERIC)	+= 0xffffffff81000000
> +load-$(CONFIG_MIPS_GENERIC)		+= $(if $(CONFIG_LD_IS_LLD),0x80100000,0xffffffff80100000)
> +zload-$(CONFIG_MIPS_GENERIC)	+= $(if $(CONFIG_LD_IS_LLD),0x81000000,0xffffffff81000000)
>  all-$(CONFIG_MIPS_GENERIC)	:= vmlinux.gz.itb

For load-y, it's handled in arch/mips/Makefile:289 arch-wide.
For zload-y, it's not handled at all, but the proper way to do this
is to add a similar to load-ld logics in
arch/mips/boot/compressed/Makefile.

>  its-y					:= vmlinux.its.S
> --
> 2.30.2

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322120429.3706-1-alobakin%40pm.me.
