Return-Path: <clang-built-linux+bncBCXKBPVPXAFRB2FZQP2QKGQENY2UGXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f59.google.com (mail-lf1-f59.google.com [209.85.167.59])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DD1B5129
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 02:10:16 +0200 (CEST)
Received: by mail-lf1-f59.google.com with SMTP id y71sf1613492lff.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 17:10:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587600616; cv=pass;
        d=google.com; s=arc-20160816;
        b=0VC5g9BcTEbK3p9uyuLcTUHai0tUT4cDM797pEggm23uym+EOEOuDZyKJG1FcDlJ93
         klEL2ekgu7Qb2w48zKBOawnW0nYw72lFTeU+9OBR1ykeXZQcUECAtGHzHrMtmdJuso/N
         pZg+5TplYO0MGjUwYcfgLNSi70uYEs8cHKP6x7fLlI69i01uxho9aL5wMaM/HVQU68v8
         nwGFVH1p4QdfsjCR0FPVxk1QYVcLUvNWaVTDXmDCz37d1QVxP3basysuNPxZrh6YytG4
         zbfo4BO54s2UqoW67AaPXFJeDcbvWkqzKe+HKv8j2jv3Q1wbtPGaF2ZQH0F+eE71ckBx
         nKtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=3h34QxtKcTjDH0WaK0+BuiYqz+jPjD6xI5np2oAwQs4=;
        b=VIcoKjqRsZi8f1RHQiXV/HzI3QLkMWgwDGDFxK4F9MFcOQrcLT0QIIv7V2wZ8uPezn
         OWVh9U+l8gyN10Z1AxM9YypBHFu3KSphHGY2MYZb9y25THYYYlpCeK6zam+fwUqic0uP
         AbpY0a3HXCcUYcU3WGEOqnfukIHNBgZi3lHCb5EWMssemlqt5mqFO24LWfyWQM2t6mQI
         gPxP6z2za9pWhL4ybOCWuT+9RdKppcYoo0+M7dClb265OsrtpI6L261qQ2sZBIM8rg4V
         j8I9Aj9mu5oDXekZHQaN5VJFsZRlMI+sD4O8G0OH/VzNYtDcJ5vP/OXGN2LauQw6BaMg
         ZQ1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3h34QxtKcTjDH0WaK0+BuiYqz+jPjD6xI5np2oAwQs4=;
        b=VUCvQzVBYiF7ppIYkR41HtcpsyKPN+GMeCEgmt0NKZEDTJTVffFsnzexQB9qAE8IuG
         bJ6MT2ZJRriHPaiJHZmCNiOv6O2kDO3XqBtw2Klvv4SigEfUPqh+TIVjqUuU8FSLweCr
         MX4XBvbgPGXmt2BC4fr5SHtL9vFxazj6cFd4ku5Zv4MOJw2JM9kVfPLYD8bN1Q535qDD
         EJAK2PcFsLYnq108etCUjGwGoMgw+dnI+OU/g3hMI00szm7Vvt42dUIg+5KEyjkdMdYP
         heunMkWTY5PnwqW7rL5nbmfkebiipRREJ+96fVd8RsmWN+CaD8if19JHSnO5M0DUdSsP
         RlLA==
X-Gm-Message-State: AGi0Pubq4P9tgjjgrqItMmemVCSOkNQNlEI0LMHuqouW5wxoEAebrfTu
	p7nuOqWRmqnaZGuWGE6samQ=
X-Google-Smtp-Source: APiQypJTlxFzT/l+63R4gCKX7e468CMLhGdNUd7GIQpvsy+ZhCniI7Y6vXpuMdkfLWt/MgYZgTC03g==
X-Received: by 2002:a19:4a03:: with SMTP id x3mr644688lfa.159.1587600616467;
        Wed, 22 Apr 2020 17:10:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8155:: with SMTP id t21ls1177044ljg.5.gmail; Wed, 22 Apr
 2020 17:10:15 -0700 (PDT)
X-Received: by 2002:a2e:b53b:: with SMTP id z27mr764875ljm.114.1587600615908;
        Wed, 22 Apr 2020 17:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587600615; cv=none;
        d=google.com; s=arc-20160816;
        b=cIArVDRNUAMvJ2LrKgyGO5+6mCA6IxL6J6d8b/zB0sUWKJ/359N6bcxykFkaFK+ROd
         dyqZA/N+B8d07x3dg5K70xql9meVPONZkjj9PiQPuUTLByLn1aEHAmBmqQ3f5xZ7PxV/
         jR7KcEcHY01JRc/kW6a6615y68hZxTwZLHoqq2paAV0zN3AWafjwkNzUqdvehaKgQe9f
         0nm4diXxQTwuBOZsyaCyb5pEnubpFuIWZ6FpKe6P7rs37V8fPH/mSiwX8cgL5sgzI33W
         JdvFS8rJkK4DwdWfcC2Gbmj1Xjv8YWvvr6rBVEvlJGG0B/EPzmAuVu9Msph0PUsJTngX
         q66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=rJCA9+uFZ5jPoUQVe188L65lNPSzd3QIzoInf+I7LjQ=;
        b=rePIKrkKN6nWHCKOsUXAHQ/pQEP2s2z1o8bTY60FGSaiyqAajsl2mN/hJuCaNwzzAZ
         ttu1hcuJxgW8n1gi2e+60ks1H8ZAFm3CQAO+jd1BP0pRP96nSJK+fspM8i0sgH+t6Ym7
         kS9mivLUD4pBXVBtV2vd0RU+PhYVmqrGH6LlACAicdJkKoem1FMD7LzLKSTGlGZSUhFt
         TupdeKmKWvm+eiB/8R3R6Nt5KPcilPZG02hGm7Ro9Bo8/LcfUMdyL9eLCrIZUj3o1de8
         uqjUJ3ps4PuTMsW2VcwxizQnrcWUjuwWXUAFdkOsNyGV7v0G4qPsI3WSGBX0oGW5u6/z
         5hXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id k13si67048lfg.5.2020.04.22.17.10.15
        for <clang-built-linux@googlegroups.com>;
        Wed, 22 Apr 2020 17:10:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23994945AbgDWAKMinJPB (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Thu, 23 Apr 2020 02:10:12 +0200
Date: Thu, 23 Apr 2020 01:10:12 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
        Fangrui Song <maskray@google.com>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Paul Burton <paulburton@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jouni Hogander <jouni.hogander@unikie.com>,
        Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
        Borislav Petkov <bp@suse.de>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit
 kernel
In-Reply-To: <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
Message-ID: <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com> <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Wed, 22 Apr 2020, Jiaxun Yang wrote:

> Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>

 Hmm, that was for an earlier version of the patch, and reviews obviously 
do not automatically carry over to subsequent versions, as it cannot be 
claimed that they are as good in the reviewer's eyes as the actual version 
reviewed was.

> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index e1c44aed8156..68c0f22fefc0 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -288,12 +288,23 @@ ifdef CONFIG_64BIT
>    endif
>  endif
>  
> +# When linking a 32-bit executable the LLVM linker cannot cope with a
> +# 32-bit load address that has been sign-extended to 64 bits.  Simply
> +# remove the upper 32 bits then, as it is safe to do so with other
> +# linkers.
> +ifdef CONFIG_64BIT
> +	load-ld			= $(load-y)
> +else
> +	load-ld			= $(subst 0xffffffff,0x,$(load-y))
> +endif
> +
>  KBUILD_AFLAGS	+= $(cflags-y)
>  KBUILD_CFLAGS	+= $(cflags-y)
> -KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y)
> +KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DVMLINUX_LINK_ADDRESS=$(load-ld)
>  KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
>  
>  bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
> +		  VMLINUX_LINK_ADDRESS=$(load-ld) \
>  		  VMLINUX_ENTRY_ADDRESS=$(entry-y) \
>  		  PLATFORM="$(platform-y)" \
>  		  ITS_INPUTS="$(its-y)"

 Hmm, to be honest I find the nomenclature confusing: VMLINUX_LOAD_ADDRESS 
and VMLINUX_LINK_ADDRESS sound like synonyms to me and also look very 
similar, so I expect people will be confused and scratch their heads in 
the future.  Due to the obscurity of the problem I think there is little 
room for manoeuvre here really, but how about using LINKER_LOAD_ADDRESS 
for the new variable?

 Alternatively, have you made any attempt to verify if actually replacing 
the setting for VMLINUX_LOAD_ADDRESS would be safe?  Glancing over its use 
there do not appear to be many places.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004230036480.851719%40eddie.linux-mips.org.
