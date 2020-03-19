Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7PWZ3ZQKGQE7AXEANQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A7218BF76
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:35:42 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id c4sf2307398oiy.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:35:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584642941; cv=pass;
        d=google.com; s=arc-20160816;
        b=rL1vAxKRHXpZ5GA1i7i2OTVt+Eu00Q4Isnf37Ah6hC84mgM0TtiLcGVruB1vNHfIIk
         9VvXY/mlgvlBIEfiGNfFQED8nel8JsuedBaroYrBgF9hknTJygIW/ax8KygmzrVtN1GD
         Sy+SlWyjL4gozlxDVj3cMecZ/ekekfrz7qn5recD6YeELUrozzV0ORssAbUq+YMJTAKe
         RBmvTfEBVKBVPr19KFvLYU/vKStSejr8Epcn/jtPVDGJSKPYzNuRIWdqyh9a24ZsqTdU
         2Xmddx1BlLiumACbnZyioKhMny5sv+mZgWj0TlAK2tgWWxoGwaYyQ5n/CMt6ftJ2j8Ma
         xaNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=tZpef8WIZAU7GiF4pjHeseIvCIkBPukbKWRGeogV0kM=;
        b=n3jabRXkAHHOLnTtG2xF+k7izipEyHzWXILaVjdJwZ9kLvIoQRUjw67gwggoQgz2/U
         tdqAIqE4eiSx4aCd9LO6VUd/+8hK8COuNZZzO8tKVG5kXp3CRXlYGvbti9v13ega4MMT
         QQgrLOxptwOE/XLBgRW/NXwvW1EkMlDI22n/7iVoMlmkbG+E9wCrGv4egMAP4EFEd3Pj
         tOojsMRXRGCrE6mJYNa1QAv36rkyryBPD8VmvJAkyDE37BSWyRbYo4wmwAjupIomHbBr
         ijZTGsOd8iUDFUuP5enRWmTRjX6IPUAkz/MZXmq9an3pQcU0oXkrkE4mNzNYEt+ON+x2
         6vug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XDz6g/wO";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZpef8WIZAU7GiF4pjHeseIvCIkBPukbKWRGeogV0kM=;
        b=X9z4AGxO8sWa4u7MmnXPZ3D/s1tDIiFdc/TwPnwuCb6KC2Gt5N+qmIW27oLlWwbVNp
         MSnmkDU/fZnhie61eQ6kY12PqNnQrwijOvoh8ZJVK3VAVCqOr9PaVVpH6Mbmnm7OBWQL
         caql28MakgdfhhEx1GvOLxRfcpc5JQQGYoWJmWxc9V9SgX6cYbyC5hYNsGrlvH+q+HXR
         m7dQv1YCw5Cs25mhbkfE1BQvvcgASgeA+XFiKkaiz3+I+buGtp6TMRRhRV+JfQES71yW
         Rc4p0CyXDpLXOZC9fMQh4YL9p90rcCE+/Yk91sb7M5s7Ld7iFuYJaIhLjNqevZXBN7uP
         l0xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZpef8WIZAU7GiF4pjHeseIvCIkBPukbKWRGeogV0kM=;
        b=qPJcG5Zb3VgVadYK/3IteoysM5kBG8xRpDq6VrELOzxSplOoGMMbPX1v+vu8WqDnTq
         ff5uo4qd6RmkOP084DSM0WwfH1O0RrCwZy9RHLz/YxE8xK89jPzCRsmZ3W/NrCavkzHP
         B+8Y9p1YubMv576Lv4VPZ3XozAnayBiGkWYdy3ewItzxYEgK22I0xmvpJnrKOBC41HD6
         QZZ6WWmI4ys39qjpjw3sWFim4UqTIx5OFEoPaEbvC5mP2opynFs5j+rqJqM+YMOGmBf4
         wJaKrSxMXB019U2mVdv6xmC0v2j66zmwSE0qf08HTDIwMd8Pxgnumg7Qig11qiqEYGnp
         KJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tZpef8WIZAU7GiF4pjHeseIvCIkBPukbKWRGeogV0kM=;
        b=JVCq6Od7+ijTfKdtY9DD7tjdKNvZBaCvZ0MvAIc44mbfNVB3WCk+JDK7pmvOriNrgu
         8ea0PPjNBe2tC0O84pqQQGvrIcEL+N3fHzqaVLkuZjQqDup9VsBMakr1WMg3i6FgnhYT
         ZfuY6q2dEs8HQ2bz0J1YkpyNagUugYkPUq4visgPJ+sDHrXVoYifTIi7AvvPsb+OIeMN
         YXlLHJnl3+BuO+zsRya1FzD0q83hZtXszH4lB/jVksahjIr5h8SGxJSQvY/vFzsr5v6n
         qCgnC7/rQTapdD68GCY/4Nrz9zuyu46XrGASLUxGx4GU/uHM4grhwF/ljBJKxPfzgbn+
         bhew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ33vFlR28bYqCx73RndW1t98fWzinv6MrgPYykgyMZPbvt3NTqt
	i6s9WS5lnG2t046iQBPvkaY=
X-Google-Smtp-Source: ADFU+vvlxAcb4xbUHBcgTPG/evMDCwnjO0L0tBVly6/3HfwMfopvrz9B4MtMuFVPwNQovgurc9Ljow==
X-Received: by 2002:a9d:27c7:: with SMTP id c65mr3587923otb.318.1584642941297;
        Thu, 19 Mar 2020 11:35:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls1294474oia.0.gmail; Thu, 19 Mar
 2020 11:35:40 -0700 (PDT)
X-Received: by 2002:aca:c3c1:: with SMTP id t184mr3496325oif.113.1584642940918;
        Thu, 19 Mar 2020 11:35:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584642940; cv=none;
        d=google.com; s=arc-20160816;
        b=nrBHcCKJwHWpniNyufB0Hp5h5S9lJwZYUZXJ6bCflatVFN1xpAJ99qtIfpUafUWEGO
         ZFu62n2fNEGPMus3dNTG7vItWwmyfzHVnZeuS0GCo/tflV7Y9TewkCm0NdkUrXd1TjXx
         ThhIBjhcCz0keYfhnz874Aqh6y97NTYvAbUkjT35m7OCLnzImaJXyideIBgvP/F/d9fh
         ZGdJ+Mvo+yODFS36HyyNE/CpCRPkSQDJBw7KS31HTuPvjwPcZ/s4HGS95ct47Ap7JKG8
         ITAKQipKMIPxN1uuQWmPRHTjOZxU92ecQ7J9Q8YqHg8QBDDDhuFGhDGQfpDpV5NI++Ia
         KEPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=APPSDaugBHGyzNNQiEw4/hvzhF063bWi+DW3Elw8lic=;
        b=Zpmh4KZRgCJmTTACWhVCmEkxkpFAEWVysO9RriyBpkpn45eBdYLrNZKf5Tc4j2Dw3A
         H505j+FfPn06jbj9uTaV/9oxdJsN2A+HdyNXtoOnFVujl5kEuUL3fzvGYylDR1AdQX8B
         4bRzjiNUbRENA7AA/duDAr2tkcgwSfBuQWI9uiBWBn46NUnzDvxys/V4DPc1x6DjSJP6
         4m0egsPw3F33xyaBAvdVyfRDUmQcQEgAeCsKf0sufoqTj4VRfM2tuMApF1BBAAOaYADU
         QAriHAHeKTP2e+SG65Zw7fpb9i6auibUCZeNKJkR+pWr/Tm/afxw80RJUHvfnwGJCglI
         NdmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XDz6g/wO";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c24si188667oto.4.2020.03.19.11.35.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 11:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 39so3471167otu.3
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 11:35:40 -0700 (PDT)
X-Received: by 2002:a9d:3603:: with SMTP id w3mr3559717otb.94.1584642940494;
        Thu, 19 Mar 2020 11:35:40 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c1sm1067571oib.46.2020.03.19.11.35.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 11:35:39 -0700 (PDT)
Date: Thu, 19 Mar 2020 11:35:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: catalin.marinas@arm.com, will@kernel.org, amit.kachhap@arm.com,
	Dave.Martin@arm.com, ardb@kernel.org, broonie@kernel.org,
	james.morse@arm.com, keescook@chromium.org,
	kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org,
	mark.rutland@arm.com, ramana.radhakrishnan@arm.com,
	suzuki.poulose@arm.com, vincenzo.frascino@arm.com,
	yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Kconfig: verify binutils support for
 ARM64_PTR_AUTH
Message-ID: <20200319183538.GA33965@ubuntu-m2-xlarge-x86>
References: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
 <20200319181951.102662-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319181951.102662-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="XDz6g/wO";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Mar 19, 2020 at 11:19:51AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Clang relies on GNU as from binutils to assemble the Linux kernel,
> currently. A recent patch to enable the armv8.3-a extension for pointer
> authentication checked for compiler support of the relevant flags.
> Everything works with binutils 2.34+, but for older versions we observe
> assembler errors:
> 
> /tmp/vgettimeofday-36a54b.s: Assembler messages:
> /tmp/vgettimeofday-36a54b.s:40: Error: unknown pseudo-op: `.cfi_negate_ra_state'
> 
> When compiling with Clang, require the assembler to support
> .cfi_negate_ra_state directives, in order to support CONFIG_ARM64_PTR_AUTH.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/938
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Tested with binutils 2.33.1 and ToT. Boot tested in QEMU.
> I added this requirement only for Clang.
> 
> GCC maybe doesn't produce these assembler directives, or looks like GCC
> 8.2 produces .cfi_window_save (https://godbolt.org/z/awZWZ5, godbolt
> doesn't have a newer aarch64-linux-gnu-gcc...) instead of
> .cfi_negate_ra_state. Maybe ARM can sort out the inconsistency between
> compilers?
> 
> If we plan to add .cfi_negate_ra_state to out of
> line assembly, we may want to make AS_HAS_CFI_NEGATE_RA_STATE a hard
> requirement, regardless of compiler.
> 
> Also, rather than CC_IS_GCC, we could do !CC_IS_CLANG || ...
> 
> 
>  arch/arm64/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b889d7956abf..1ee1d8fab218 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1506,6 +1506,7 @@ config ARM64_PTR_AUTH
>  	default y
>  	depends on !KVM || ARM64_VHE
>  	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
> +	depends on CC_IS_GCC || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help
>  	  Pointer authentication (part of the ARMv8.3 Extensions) provides
> @@ -1550,6 +1551,9 @@ config CC_HAS_SIGN_RETURN_ADDRESS
>  config AS_HAS_PAC
>  	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
>  
> +config AS_HAS_CFI_NEGATE_RA_STATE
> +	def_bool $(as-instr,.cfi_startproc\n.cfi_negate_ra_state\n.cfi_endproc\n)
> +
>  endmenu
>  
>  menu "ARMv8.4 architectural features"
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

It would be nice to make this kind of check work for both GCC and Clang
but like you noted, there appears to be inconsistencies between them so
something for another day. CONFIG_ARM64_PTR_AUTH is getting a little
gnarly in terms of dependencies but I suppose that makes sense given its
nature. I verified that AS_HAS_CFI_NEGATE_RA_STATE gets set with ToT
binutils and that it does not with an older version.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

This unlocks our CI so hopefully it can get picked up quickly.

https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/299816618

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319183538.GA33965%40ubuntu-m2-xlarge-x86.
