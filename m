Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVV3QCBAMGQEMFRYKUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7097132BF37
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 00:37:59 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id n1sf18942761qvi.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 15:37:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614814678; cv=pass;
        d=google.com; s=arc-20160816;
        b=hIMFsc1BAwqQLzyll7w668Q/dSeZa1O/xaHZ1KjJmH8Zid9Txl2Tq/koUc6iW/flim
         oLjkIYQuSStovePVJcffhsypMPIkmYL3mJbLiR+1JCxBXp17/vh4ZwG4bAqhgbXDYZPx
         SQR/0u5zkvnuEA9mwQPJtD9EiVudpU9DO565+GwboPEo4cIPweCNMc3CjdtZjR+E+ovb
         nrDTTROYjdC4tNdgyJ9LJKBPuXr2ewIDH8j3brq6gliNgnfJyfSjo6kJUEH5kw13WoVp
         cTWBiyWN/aGU3PDo+ihGrBaQdf0VFJMJQdtLoxSGJ333D5iMke8CzJ1wlTfEeyngLc0f
         OJhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9mIxKROJpVtsjpz0LLH9Fwn69NqxHAltQw1f4PsfD50=;
        b=f93FmbEeNQE0opS+zcsGw5giyS1wxauXZr5KUiFfIAetZ/cFfSMdvyKB4c4msJlhr4
         gspusIluJoKx7zPBUS1fbG4+DmtCUw8MvgG/JMkWNggvp7KGdqQ49XaYK2TjgGOK+Q3W
         iOcCJs08cJy+vIfbwKG+Jd70NNr72VfGGkMGZ5f6Zc7ZUoFj/ODCNCtJdLKmn/0Uagcr
         CpbT7vjko+H6DsBSs1JzpDe07CIYR1ffm3TG17poQHIxXHjTUD4JwvNBRhiyAfIrPrsE
         DxMU4MLmpWQNrOjzegBE1REZ92fHRoWgzuHd/Rmw9JIhPWNM0Crfs8rwW/5BCvE9lNH7
         O1hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oOxS63Mv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9mIxKROJpVtsjpz0LLH9Fwn69NqxHAltQw1f4PsfD50=;
        b=Wu3uVGM4gwkqdOaVCwzRqNmktqoYvHwfgXMcjaXlISSHFHm/HMXEtKkmi0Qa6mnvzb
         c5nxedKFo2KMePwI9X1bfijgr3MqJMpbbGSI4yzMScuS9c2I1eTMQK1TRcZWLZTl228u
         dP8i05ELl6YFNGZkORhToVWKEnsaQQIYwC57qxA5w5J7Hbshd9z1eYBAZbBIBcl6XrgE
         JDwp005sHIJxxCGEzaX/W8R36iEwVmIPqxJQTDSXT+KuRAG9A3q6flmuVi0+xm7oW7kt
         +kpujv/6XRUaXaAJGZj+ZsHNGrjUj5u9q0Y6qu9IVpGrB/Mzt+t9g89T+R5XmavhnQr5
         0zgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9mIxKROJpVtsjpz0LLH9Fwn69NqxHAltQw1f4PsfD50=;
        b=iGgeMf3JK1h3AKAOF1bNCy9fTK2PXlns0zU0vdFuIXpzuiiCai9R2R4QcZLAXLNzX8
         DL/452nw3EUe0o67ar3B+V5uZB5cs6ekmQxG00f2n/dOLk0I2nHOSHhY6I10rVJMYR1W
         /fLUjko05jlz8Ly5seWILYDX/6Q/1RgK7yPaNnbArdBWtdfT6z9w16YGNpqqnLBNiko0
         ZYIkzYXksllusRnWW2NJT8FydEgahVuIo20kw7Wql7IHzX+c57Pz9XAXvcbOh0QNmYdr
         KT7ivZz+3dY2Sug2YJmQaWOKrsDKR7h/32wQU2z3RDs6C0FasjbJKkaqNUNUicQX3y2S
         +6yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RH/+bbtoLWlHG2ML63FSQ+sIkkXjYPs+VV96OggyWxIVS8hxe
	OxgdmHzwEZ2nSbS9cCnY1TI=
X-Google-Smtp-Source: ABdhPJxE88cY33NBqNZZ8ZSl1HdGOBZKxRaZNCsILacpb9qw8ocwuvg+RUqtxOC7n/YCNEvbPxq5yQ==
X-Received: by 2002:ad4:5a4e:: with SMTP id ej14mr1806832qvb.10.1614814678563;
        Wed, 03 Mar 2021 15:37:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5189:: with SMTP id b9ls1003683qvp.7.gmail; Wed, 03 Mar
 2021 15:37:58 -0800 (PST)
X-Received: by 2002:ad4:4cca:: with SMTP id i10mr1732038qvz.49.1614814678180;
        Wed, 03 Mar 2021 15:37:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614814678; cv=none;
        d=google.com; s=arc-20160816;
        b=sPMmCpdrV3njC9u4uwWqVZXbZFJ3sInzE2G3cW/zj9yCoVTZdc9h/zA2CzBbIfr96R
         twbl1lGcdgpWuqjMhOnrfuOff2GdQytSaaoqTE7SAbjDutjHjI83n75JpEiiRTrtUu/m
         s3uC/jf1f04h2HLeOIedrltmUSlHxEQiyq9vTLe5em4JkuQYQZHPTBFCqtm0Ly5CTgfs
         779tZkcFrAQs/Wz2aj2cnjX5JDAnkplnjMsz41eclQPVSHTSVDK89RTUsoOXCwJGtSgo
         3BZQgF23u1OmkMoimRlyCmJJIsfHx6c1qR7XJCbIb+0sxEyceyzaXMRyfqsSi/Vzv7Jk
         eSjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6Ra/15/jPeoKrSdFIUtPdW00QuDBe+AZOJOFsAB7Uog=;
        b=IGg7Npy+3+H1w9MlgzDKGsWxQK3f6RqAAUTnwG4gzQ48qyox/7F7ZCMXwHMdHF5rDO
         LC3UbRVDiDeItjWu6DaLRqlkxQndsxBdtsbebJR2L3tAKzoMms2JDnP3uxnDeCkFUK6V
         aOcEeDzvXesB4i5xU8r4D6oNzzIC5qheEcFaNULmlaiqg2Fn1HjKPE6hw9PI3QbLZijK
         GoubPbdV1vypO896BXoh0B7lRiV5ZwIS46UhdqdJVkAJF6mYYTVmYhMunFbWV+CCMhBD
         6o2j69YPWXjShYbl3XLnc1Go+972mB3P12BqMcd/EjYvA/3hlSJt1hoM1zSPWc8wBktc
         GLgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oOxS63Mv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f10si1188143qko.5.2021.03.03.15.37.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 15:37:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E4CC864F23;
	Wed,  3 Mar 2021 23:37:54 +0000 (UTC)
Date: Wed, 3 Mar 2021 16:37:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] kbuild: remove LLVM=1 test from HAS_LTO_CLANG
Message-ID: <20210303233751.k5tkmjdt627oucn3@archlinux-ax161>
References: <20210303183333.46543-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210303183333.46543-1-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oOxS63Mv;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 04, 2021 at 03:33:30AM +0900, Masahiro Yamada wrote:
> This guarding is wrong. As Documentation/kbuild/llvm.rst notes, LLVM=1
> switches the default of tools, but you can still override CC, LD, etc.
> individually.
> 
> BTW, LLVM is not 1/0 flag. If LLVM is not passed in, it is empty.
> 
> Non-zero return code is all treated as failure anyway.
> 
> So, $(success,test $(LLVM) -eq 1) and $(success,test "$(LLVM)" = 1)
> works equivalently in the sense that both are expanded to 'n' if LLVM
> is not given. The difference is that the former internally fails due
> to syntax error.
> 
>   $ test ${LLVM} -eq 1
>   bash: test: -eq: unary operator expected
>   $ echo $?
>   2
> 
>   $ test "${LLVM}" -eq 1
>   bash: test: : integer expression expected
>   $ echo $?
>   2
> 
>   $ test "${LLVM}" = 1
>   echo $?
>   1
> 
>   $ test -n "${LLVM}"
>   $ echo $?
>   1
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Yes, there is not too much point of checking if $(LLVM) is set or not
because we already check for the other tools.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
>  arch/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 2bb30673d8e6..2af10ebe5ed0 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -632,7 +632,6 @@ config HAS_LTO_CLANG
>  	def_bool y
>  	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
>  	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> -	depends on $(success,test $(LLVM) -eq 1)
>  	depends on $(success,test $(LLVM_IAS) -eq 1)
>  	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>  	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210303233751.k5tkmjdt627oucn3%40archlinux-ax161.
