Return-Path: <clang-built-linux+bncBDV37XP3XYDRBNPUXLXAKGQER3QHQRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 28779FE072
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 15:46:14 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id s26sf6204375edi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 06:46:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573829173; cv=pass;
        d=google.com; s=arc-20160816;
        b=DAGB1DX6NOVNpVomTVeUm+G1wFF2vHMIr3bpnKsDVrytk0JvaX7MO7Tieue/TJ7kDQ
         u6JjYBGG/thoy4YcfQKhf+cQORm/T8SZ1mjHfr8UqESy2SpNvuRZUZHsf+S6JXVPfTp4
         CoIcHXkW5shZhVrZR8NOY2QVRnblaoIVhO0BQHEJQFHhhPo3bB6OSGO1OgcsEjXvvhek
         Pvgw3EU5pfQ77l8gVB9Vkzp0seDuK6B4rYM30kircbF89/rm6fLhnphNDAyMVW7wXSdk
         7mPwqWIP9kDYcqozzfGLA4YezIQBLLLGPDaeAzz846KhHxhoJcF9tkQK5oY2cQUyBFDC
         HwHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=g/U1NK5pqfcTpQk2eiGZ7R1gTqcKmr/wxfXXmUqE1Gc=;
        b=xowit7961meh8Fpw0+a8k7U8IlwaLzvKn3s4AWVLj0Pl4C/h4xQOre3FIro/XTkrtm
         IopQUnKKLCsBbeacuvx/6+FtUcpG3X4H38TzCVjgYa2S+D6gb8vMcEDKRanbQxK+L5+/
         X8IWz8AO0wftEsiKAMthsHqDZ7/pb+vg9QmqXW8XgLXG3Py8c7ZHM/dhsr67AAB5DvNJ
         p8Kj7TuS87d/kyg+nzb4G+28mAUwk6WOWd6TBNRjfEEvEzdf6lerSRMvMqfRdycu0vCC
         UTE22mepBniUZPcOQVLF8E2h6lNLq0FsqySTZcosZRAK37yLMr/xXYE7fbZ6WkzyLHmm
         aYyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g/U1NK5pqfcTpQk2eiGZ7R1gTqcKmr/wxfXXmUqE1Gc=;
        b=Z0HM7wsW4F6u1BNGX5nuhl2JlWTyu8Bb+xNnKRJFbnqFAnkLawxoytUOqL7nPtwQP+
         2ppT1+F+Zv0vgjF1j464nxcO4ULpgBDEXuixGy6B1+LPoZdkypeBU1EtYclxnHlfMABl
         pu8E9NNW11/sU+0cRNj4klSpcRRZ0W0k5/WiZmwtLMw1SoCR89PaEGHJl4bIeZk53eUA
         Xi1wPr7L93hVen+x9NAAIbo2xuiCD9RMHeR0EB5TFgWdxYJGbsTC2DhKDpvRRkX+p6ez
         EgCQLGYq9eHb+wzUKNr5iHz0709fy8QYdx0AayEHolPjE9pb2+CSCxNQHUipNWPcTJrT
         TPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g/U1NK5pqfcTpQk2eiGZ7R1gTqcKmr/wxfXXmUqE1Gc=;
        b=nOGshZlWvwOGAOWDsNsXNDkZT+uhd+UJUstF0XaQiWAfciq8Z9HQdvAwBHubJr0T3x
         6yX95uw+dyryLLuUf813WLLywY6GTwwLGENPkUxrZLl0NvJzsOFKoBzBsNR8BJxGR9lf
         FUJsePQIqlypvzKNYi+ShXrRpUONUrKX2bTsKPrBwBuKUjtlsAROCtHBtvIq+/Z0RMzE
         h+3ffh5jmW+byH2PKmkqu3iIz3whJ8NicCd1zaEr89H3xACKJ2B3y4FoG2szHbydxDD/
         5Zuu/m3nTAk2B33xvfqe1KyDSq6BEKAx+E1Aswge0Ds3qBhOb9RJtm9mGI9Df+mMBRhq
         gDLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXFqAGidfTZcgtSqRubWgfWfdvhenxW+N3L8QG21q6z1S5onoR3
	s6NkaEdi0/l30qy101dZSMc=
X-Google-Smtp-Source: APXvYqye3OglxBrsz9eiZoNqD4DTmngRLSfeD5FusIzIWthOx7M6AQYLb27Hi+LJuIb0MoMJOzXyxw==
X-Received: by 2002:a17:906:742:: with SMTP id z2mr1477593ejb.32.1573829173866;
        Fri, 15 Nov 2019 06:46:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:95d0:: with SMTP id n16ls213587ejy.5.gmail; Fri, 15
 Nov 2019 06:46:13 -0800 (PST)
X-Received: by 2002:a17:906:70e:: with SMTP id y14mr1440478ejb.70.1573829173227;
        Fri, 15 Nov 2019 06:46:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573829173; cv=none;
        d=google.com; s=arc-20160816;
        b=k2nZiOulozuuzLUzZ690F/fS1eB2KwLsMLTt9UFnfngQRmDVKaXqrtq0KQOLODcgc3
         W+6RwY466OVJxVgdLIudgdT7LJVPRLOMl1eAvjH814ulfEg2WwxDMKje5E7lwc3AJmX7
         o0km6e/yfNaVlvB9qe5ZtNTeoK8xVHt6SJ4pjvXstZrBJLx3UYgFJ12J4g4mi77xKiWd
         vKXad3IY4fnQSwP94WnSzdsIticKAvCELsaGr+khC7YS5GT2srN3oExLvDOi3coiiU3k
         ScI5RRiFCScx9HF+5VdXlt4RpM9TzNa3UhUhnR8wgRVYft21tvOmNvJA0RfMF/Q4OaKA
         TfkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=+QfmnY8jtavQ1vUTJw8Tg/zkShPS7rj8Lbsal/xqKEc=;
        b=J72mr3AyiOFklR99eadaFUDmvlp1DE7aAPqRLLHQ4VkI2oouxXV88vxlpLaAww69Lt
         CzQ7OvhXD9QaObvUJyIn3whu1wWGIjonS6vK+6dCXEjdmsSGhbDpS/u3tXWP34LWADNe
         GoMhi0WydRfWqP2aHkluqIwq0OVftynf/jkBYRDNrBaxfz5PeCpu2yc5mc8fXymtzNG4
         vbf5cxdWRIfj/t8c77+s0FzcK2WX/AVZm8PVG2DxTLr/7sMdbbVI5f1ItgwCrkxVJs5A
         EyFxfHY++r3UWpBaA+u2sbDaWDmaLDcgROxbC0kntqDVstWKeGWPMAEWz5eeQZ3VtTyD
         KApg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c31si631436edb.0.2019.11.15.06.46.13
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 06:46:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83EC031B;
	Fri, 15 Nov 2019 06:46:12 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 479973F534;
	Fri, 15 Nov 2019 06:46:10 -0800 (PST)
Date: Fri, 15 Nov 2019 14:46:08 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 13/14] arm64: disable SCS for hypervisor code
Message-ID: <20191115144607.GH41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-14-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Tue, Nov 05, 2019 at 03:56:07PM -0800, Sami Tolvanen wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Looks sound, and objdump confirms that the hyp objects are using x29's
frame record, without using x18.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..17ea3da325e9 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115144607.GH41572%40lakrids.cambridge.arm.com.
