Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBREDSP6AKGQET5D7MDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AAB28C34C
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 22:51:17 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id r16sf4575808pls.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 13:51:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602535876; cv=pass;
        d=google.com; s=arc-20160816;
        b=TlOZW0Rf+oUS+bntdZieIeCFi781ozEuKmKqIbhJAye12/wrfOzSV697zd74nI7vEN
         yHyPNHOVlOcoj1UezwrGEPjzuiNf9HTyXjVMMzMfpX2pkheK2KSW+wnJY6COsthvpqVX
         PTeaXxWvdAHWAdOQnRmePw0nAiKAM0fxYWB2e5uw85q/uKKT5o9WpStuHExiAdeQnxpe
         doSffndFVf5yHLb52lRxGEqJec3zis49uPojnl12XwitZ8tO3iV8E7dYsc4KJQYfUf+5
         jpM9emCLbkjAVZEBk5Ynd12rvs3TBlOoAHNKJDpiO9Q4GQlQhuLJxvi+nGqQR0IZyqk+
         cvUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ryNxHbRrWj0tpNk7OeLtNdQZi2Ys0uXwjUpjeQcy7Rg=;
        b=a3X4BfTiGJaGnsYck46dZZENWkVRjbnadrFF4YhOG2eIaRWLmYJObFzv9sYAtvoHVg
         KTXuj08vpd1B3Hp9NVsMVMvAqWej3x1iKAcvAKfKnwHgN8/qK4ILasilik8/GiCeOhKe
         FNSJcXCeyG5L5rGFRBv5Y0kVIq1y6dLvpsf8HBVkMjKGD6IAZfMt8ZshuhKADe0ksNc1
         /B7zbHoCQUqFB3bm8RFc9erYfDEl8mEg/GgUs+GThSQCvjAbxtEx8/piG8q36ecnMInr
         e8f6JB0RPd9gz2KF2Qu/cGkRrZs7M1leTv1Y+RruzXkmc6Wg01/Ib9kzw3hJmByWOYbm
         eQSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aUA4p24m;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ryNxHbRrWj0tpNk7OeLtNdQZi2Ys0uXwjUpjeQcy7Rg=;
        b=oa+1wBOI/0FTriTkt/SZwDKoSVZWQCJxlmO+IybK9Kg/i3pEvxSbekUZ/eyGicide3
         nmziebZpDqaRTbHI4fKvCzOteY8/N39Iulz1gP40eAwK9ar0pMbjsAqoyOSvQBZiRw0N
         1VDhXAbI59UM7PMX215nBBmqAwXGGeHxq8Yf9038n3DCEkmfAqVBCshzy2IqnhGGoKl1
         oGqkt8FGZacdM2A1jjNjPwz9mKawrA7tMuw9WPf4b0ncEO5Xr36971jN8yv88sKvpmcU
         mUyBqQDhqn3bbIamS11Mb2zWGOBpcufg6G6uIZEb6ovLoNndzyLgfDD0Z3/4CGzOFKEC
         jOGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ryNxHbRrWj0tpNk7OeLtNdQZi2Ys0uXwjUpjeQcy7Rg=;
        b=CCRHZ9clfsVPS9Z730eNFVnFWPW47YytCYw3iHbCm9CYi9tocyoCNmoVkgZnIaVc62
         bbOp7+10giNcK0uqQig/L0sjg3QQA4UoCnM7jtwA6SJ97i3iSBvWHf1KtcJxEyK90UGe
         q533DycD6uRynbGttIBbjdeVoqRm4Mdo3yJBVo4wNuXCLN0Hy4mXLbTLm2KxxfYTnPDA
         IeWtLKQb3THmOfQhbKeJJP+oucNaTRcw+wqSaXHOqQ+0nfSQSlE4jkI5w1oh8vtJE1CY
         NlgkIU+1K+X7hRTI3ukrKsxyXDTqekYUU3EF5v6WYvufS+T2VkfLWew3KuecM1Eki/1P
         og/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533X3zeAfRQdMdtbXoIFqQ0jaYQWe7Mjz4qFpKkCjdf3yhe2uj0h
	hjVLkAAEFjP6lPmPfpij5G0=
X-Google-Smtp-Source: ABdhPJxuz+NYrRY5btWyb1KtCTPcXb0A8W4CELen79fEyOcOJxdgu8IhSz34X6FuWpj1BvVdK/LRvQ==
X-Received: by 2002:a17:90a:be05:: with SMTP id a5mr22585669pjs.118.1602535876321;
        Mon, 12 Oct 2020 13:51:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b4b:: with SMTP id b72ls6030678pfb.2.gmail; Mon, 12 Oct
 2020 13:51:15 -0700 (PDT)
X-Received: by 2002:a62:7b11:0:b029:156:3610:7e25 with SMTP id w17-20020a627b110000b029015636107e25mr4583870pfc.53.1602535875775;
        Mon, 12 Oct 2020 13:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602535875; cv=none;
        d=google.com; s=arc-20160816;
        b=J5KoFGCMmaljMR6qu0seyeiKJ338x/tpst8JksK+0Ffe4GDlmz7Df8gmStlHAzEiT8
         OJdJ9xaXzGNaAuFjquJBihxEA4Wq5IZI+AZJPcjWFvXki7UhFLcAIgLEQTy5t/0hJjps
         pRju//68kWgvm0LuJ+I3GN0B3oek+GHiJGA/+cUmjQF5Jf82ue+HSf+CgXzw1xpIuXTe
         7zIN6Muttho8Zp8q7ciRwXQ1wrrLhIvGmz7tqc3xboEsgCzpGkfNNCAMlYrmAO+C1w6O
         tULQCWbHRb6ZZjVHNBwferlNBfIuNwFJacEsRrzy2ag4RoL6iVJsY79pPqwrsPxY3bOu
         K1mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eaMmKhoX3sEgUZeeixLeRadlAeGapl4orcJG8ymILJs=;
        b=D8bBP5+zxXzzCxarQ1J/QZOYfppCcA3qNxCVXaUV7yTNhwijblnBlylUZwif3rOFcz
         du2UpHETGBC9le6x3YT5BQv/psEIhqdJ/50fwiPwMGhf5UYtPl+JPfDl4wQJNN5i5O1x
         fUnxpAj9U1poQECjoKJrRuvO7UbzXmVUy3i+1yxeMdK/1Exa3M9YdO1Ok7T2jTef4rJY
         5s5ieVOtx74FOPq6NvFbRpe6VKk9gFcpIJAsZToHqeg2IAou4nXwaZ6N4AnTLndmsyv4
         me54AcVKpbCTUC+IBLdK45UosxMkRmEdxkYUvjVDG/c5YGODpcomqi2Pjb/FCFDFOkUP
         VmHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aUA4p24m;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z11si331182pjh.2.2020.10.12.13.51.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 13:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B24EB2078E;
	Mon, 12 Oct 2020 20:51:12 +0000 (UTC)
Date: Mon, 12 Oct 2020 21:51:09 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v5 25/29] arm64: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <20201012205108.GA1620@willie-the-truck>
References: <20201009161338.657380-1-samitolvanen@google.com>
 <20201009161338.657380-26-samitolvanen@google.com>
 <20201012083116.GA785@willie-the-truck>
 <202010121344.53780D8CD2@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010121344.53780D8CD2@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aUA4p24m;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Oct 12, 2020 at 01:44:56PM -0700, Kees Cook wrote:
> On Mon, Oct 12, 2020 at 09:31:16AM +0100, Will Deacon wrote:
> > On Fri, Oct 09, 2020 at 09:13:34AM -0700, Sami Tolvanen wrote:
> > > Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> > > 
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  arch/arm64/Kconfig | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > index ad522b021f35..7016d193864f 100644
> > > --- a/arch/arm64/Kconfig
> > > +++ b/arch/arm64/Kconfig
> > > @@ -72,6 +72,8 @@ config ARM64
> > >  	select ARCH_USE_SYM_ANNOTATIONS
> > >  	select ARCH_SUPPORTS_MEMORY_FAILURE
> > >  	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> > > +	select ARCH_SUPPORTS_LTO_CLANG
> > > +	select ARCH_SUPPORTS_THINLTO
> > 
> > Please don't enable this for arm64 until we have the dependency stuff sorted
> > out. I posted patches [1] for this before, but I think they should be part
> > of this series as they don't make sense on their own.
> 
> Oh, hm. We've been trying to trim down this series, since it's already
> quite large. Why can't [1] land first? It would make this easier to deal
> with, IMO.

I'm happy to handle [1] along with the LTO Kconfig change when the time
comes, if that helps. I just don't want to merge dead code!

Will

> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=rwonce/read-barrier-depends

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012205108.GA1620%40willie-the-truck.
