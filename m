Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXY62AAMGQEXF4IIRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4907E3113BF
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:44:59 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id j6sf4271527lfg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:44:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612561498; cv=pass;
        d=google.com; s=arc-20160816;
        b=JQTdCc4nKPhIbtENOZA/hpJLiH4XJcGd3hZeiBzy7OB7wAv0zsmtm05910nZ4Ip8sL
         I2Szs3gdg6yq2LavrU5cg2iWNwacQZgSiIjTkmiGua7eWfib4pTWQqpz99Qeu+LHWD1w
         CAETjwzppIiA55D6e3jBglUVdQuikR0TECw0BTWsAqRIxPwoaTmW+702Mme7xO9DHhSa
         KQQMuagqp8aIgG23qMi9NAncnjo4abI9eL6bly70aC54zRubOYpXIhSJmSYPp1pZbZMI
         jDsMrf7QngxwML8PHx5+YjUTBdjE1uCQFDyaBSHR/ybdirlmxO3U/JcyOx998nOXcPIY
         TQSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nV26taApgQR/N8FuQ6TxZD5V5dV+sNrhL1CFbvNJj/U=;
        b=meH8B3VyNjVomPAq9A00a+zcEgrn+IyJUWWi25EpOdAebXs6f0mTiQFU82uZAJbYDy
         HcvdRglKdSSzwIzCp7W4bxwdzFVkISPf9E1DjT6VL09BgqRhu5am+p2k/dPHO7TmbkE1
         2mzrRFhE2tnp1DDs+kgp4zkx9s9WsAR0oQxlM3CdAo0ivaIiiLUgLmUaa6uVI9z35VVc
         MNOg4rW7xLthdUi/EZZQbkozkiSz34Sm7kMVxyXPyt1jz2tLguVwsWJg4gV9hmx1VGFa
         cAgJqDOs0C9WzIAPuXRmLMDspggzKiDqR/mIMPXxMaU5Bo0yoHxEm74e+QYiT4zVmRge
         Rjgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F5jyzMKu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nV26taApgQR/N8FuQ6TxZD5V5dV+sNrhL1CFbvNJj/U=;
        b=pvVDesgBdbbjjS6OucOXI2dE0gTOXZNoqiEDZKzjgR2rufXGpMlSkRHJTujmewUL8A
         bAMRL8O7FPQb/0JcQ4h8p/Yqms2OZOxt23hyNtHdzvFBw9ss7Oq0yea8Z1wjHY0E4TK5
         mnvIg20iovqc26O/6lMhVgr8Ahi6XmJE5uyeXmzwUnvb5rqVtmVq/G3YDxGmaIVVBSx5
         sNxBL8HfV6pskADocz5bQ7qqlGWi1BRDPtjeXd/aZhn69l9x+tXsv77NKC3yWOWZW0my
         bEKO/FvrdjJG5mrPuSdQfbiezkIwVbexziSyNftmOYj66mwFVKiN6kUD6oFNGmyyY1lH
         +YlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nV26taApgQR/N8FuQ6TxZD5V5dV+sNrhL1CFbvNJj/U=;
        b=hE+Jeh8KSZH1x2r97fk7jUKV3buwYeS/JG9LpHvlnRuaPTG1musQGHXcNH+GOlRae5
         8hay/CpOKmuhcsLsLyMSV7tUs6OeuYj6YEjLPdgJXpsJNnZ4LKp4U6ej+10euvNvbrE0
         CqAHP0QClyl7nj5l8mOEhS9gxpZaBu/xuqpYp5YxXMX0LaEreMzBVehcjAbq14lSszlD
         KrgEZxeA4gwCf1WxEn5QSqDmECLFcAHrRNzOtgnVscytYvBrn5EIOYJ+E8/V29RnxF8o
         OpHvBPwmq8ZF/uVgWNxu77aY1yXKPeb+4fWhmRjfTRrzXHgIhQ3Cwsd1w/bHGwujIz8h
         FZ/A==
X-Gm-Message-State: AOAM533CEzYV/4Uc0awpMPj2/hvLuwF633+1lSx8EzgLtexB/8HZe8Ph
	8rqSuoJ9dpPSpeh7tCs2GKU=
X-Google-Smtp-Source: ABdhPJxAproGng6oMa7LpUdeqRQ2C7wmiu4iU60qt/96Mk84+e8GFPEtEAllwlwWrAyTFaaPEsaxZA==
X-Received: by 2002:a2e:9086:: with SMTP id l6mr3902567ljg.510.1612561498819;
        Fri, 05 Feb 2021 13:44:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad2:: with SMTP id p18ls1932150ljj.5.gmail; Fri, 05 Feb
 2021 13:44:57 -0800 (PST)
X-Received: by 2002:a2e:9f17:: with SMTP id u23mr4023881ljk.353.1612561497894;
        Fri, 05 Feb 2021 13:44:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612561497; cv=none;
        d=google.com; s=arc-20160816;
        b=Bh+mZSs0WQ+uKb2Vx8JKl/7WBPTEK5chkbJKX+W9D2DCL5fNf62GL6MniUa7bfXBa4
         5uqwSJ8XNLlfVP1fLQDxjvbUST+eIcNiSpATMRMljHyzz3JMOGHBVQ69H8RDBhGZJnXJ
         v0DOAH3nTnT3eV8XAlGU3fg5gyIS/6WA9S8/NRVF6ayC+tO288/kUOF34gNk3NI19GJz
         l3rzaaxjvlAA2EqlL4j+ieg5NI74E7ML6P66dvHmsW9FpEvKaGljtA2lLfk6N1VXOsIN
         a0QenAS5CYosRFFDlCFFPUQ4Qgi2lGgQ42RHXcYrXhfMe0XpKPk2I5MiocHVZNqjhhnc
         Ygug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XsbuJM9sF8LMh+2PIYZcanGAWJaYjpFJ9kTMXGBhvxw=;
        b=PKqA+Yxykdp+u8UzGKovRsWf+UkoUC4SCzjHyAizdXBIr3hh8faEE9bDmWhVLJHJrY
         GyzGQ4hnsg7hspZfIAi2FmmGsVHOPc/uVY2VlVBJLlgISyFRsP4iCmqLe3+1l/NTV6V8
         12M1sEOw3aNNPP/fiBxtCx65rCxwsn+SZd/oHsAZa6QMuTLsmEG2AvP2H1UrbWj65FAF
         y9+6JA7rELBJP2uaEUhlq5kUKPLDFWQqDBCWuMGlX4JMZQIKQucHWwL4dreQFyQk3Bjl
         ED3eu3663SdgQiTR9w7a2MI4iVcywchwbSXsnNS6cWUM5R+4wMSMhe+0c7715Lg0ic3t
         lK4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F5jyzMKu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id a14si564819lfb.10.2021.02.05.13.44.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:44:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id d3so11900873lfg.10
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 13:44:57 -0800 (PST)
X-Received: by 2002:a2e:8541:: with SMTP id u1mr3940752ljj.0.1612561497332;
 Fri, 05 Feb 2021 13:44:57 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
 <20210205213651.GA16907@Ryzen-5-4500U.localdomain>
In-Reply-To: <20210205213651.GA16907@Ryzen-5-4500U.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 13:44:44 -0800
Message-ID: <CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg@mail.gmail.com>
Subject: Re: Using GNU AS from a selfmade binutils v2.35.2
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F5jyzMKu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Feb 5, 2021 at 1:37 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> It is entirely possible that '--prefix=' should always be present though:
>
> diff --git a/Makefile b/Makefile
> index f5842126e89d..409822f45bfd 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -562,10 +562,10 @@ endif
>  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> +endif
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> -endif
>  ifneq ($(GCC_TOOLCHAIN),)
>  CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
>  endif

I'm unsure. Consider the case where I'm building with `LLVM=1
LLVM_IAS=1 CROSS_COMPILE=aarch64-linux-gnu`, ie. no GNU binutils and
am cross compiling.  In that case, we should not be setting any
--prefix or --gcc-toolchain, and yet today we are.  Perhaps that is
orthogonal though?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg%40mail.gmail.com.
