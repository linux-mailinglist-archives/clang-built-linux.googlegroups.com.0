Return-Path: <clang-built-linux+bncBDV37XP3XYDRBX7GXLXAKGQEXQ6QLII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF0DFDFD9
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 15:17:04 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id m68sf6983750wme.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 06:17:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573827424; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxEUJkLijlF2F00jJYduEEyqw62B0RRQLAZF+PVhxIrVvLL+DKr7sJQ9uXCIsIqoi8
         OoWmupqthO1N8f9U56hiH/XTm1riWBGy7LsGUScCKaWBue1WKcWOsGWhHBdT0NgSr2yx
         wdsI1CY5i/Q4j4AqKfYxCrb1nu67qZy0i5gfmz8vIHSrlXrH/SOb8eMmqh67G7K8jroL
         GHncKOyY1YDUZNKwa8z2YvNdj91tPSqSMyPic0tDffrs42dt3QS12F/58WoZdtoF6ryd
         GDWlFJoPjHwp6nvMCRHgVQW253iEyPxQE/qjdSCLQV+8xPDrwZsDBy4JwjgQTW0Qt+U1
         xfAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/HjOLLSmmgwdegB+BjC5czP7WaFDWdKfnO1iwKcREvE=;
        b=OJ8Mu0+7O/e8+A66Po9cmOoHipVaO1W//cND5B/e09unOqmBU3qYFR5Gghf1D1KQcd
         vLJitFTyKN3/nC51PEG39NImO7I3bk3a8aSpF8K5rgg1Mwydk8JLIdtwz3QeIz1tU1/Y
         Wy5nCJFSjecJImgY19ErFToWW+T8sF5u+nKzwXK8G+9OLLohtZ5NFURAKokjJkUTf8cp
         FEm0XuqPAxCwDiur0ZNlNH3MDxircpNMGJXPTKEPoYTN2BEFPWcItI511NP3hyKUeRCN
         A8C2ghX0mqghRGNN88/QWMlf9MT31ILhamgzs1VmcJ2RCmPOqpltehtcJPsRu8Rjk1yJ
         5v2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/HjOLLSmmgwdegB+BjC5czP7WaFDWdKfnO1iwKcREvE=;
        b=dZ0kPCzFKAGbpRCT9AGA1T1sTbLyYKcJWm3yjWmXyYLzsrESrB6YTPhWLWkEcguNcl
         TvtKPaVt7HUL/1rph+6UT1bqTBp/LFCmhhsvLbXQTzuMyCD5tNMpIrLaT/5fKmzRlSCR
         18me7vMOfuF4fpF7VboyoDn4+yyYuxQZdLZzDOKoUr5Z2E2vZRBkXvwN1uqWxgH+1R3K
         pqvG9/0tGT9/ooUfABG8Jx4bQO0r/1lL/N8aLNJFmIitlnZ0Iu+0GuWdpP7yJy4Gyns3
         UY1DPRb5jSginT40WPL/lfLqlD/xxwGPjMX4ogG9bE/p9vaoEmSU6WuAxvolXYnFDPlG
         9Bpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/HjOLLSmmgwdegB+BjC5czP7WaFDWdKfnO1iwKcREvE=;
        b=sv/6IP0eKdEHuePI2cSBmQLSz+RY+afzKuoBg7A4ipWHg/lvfWAPVPN+7VVPEQAoy2
         7MUs/+EVutlWocGSehCLwd7BRW3tSdhOfXoYRDTymz3ia+M1qAh+7K4tk36/qoadPmoD
         GKL34i63kmy7KnQDiZK0qQrOTtlEy8KhfQFyo9tPRwRCp+VnpgqFay1yrCDrK5GHM7rb
         S75N9ETy9JATMDa9tBvxQz6M3EJDgxH/JbuKH9zq/z//bGHLOO+3HfOk1LGeXewCrGp4
         70vqtxmqXwZ3Q+MI9FoVzKhAAvR1txsqvos75HLLgW+V8BUNXbXjAnnAzuIe+EfviY+z
         Q7ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSAfnuzuUtgpmmpp91nlzpYVmqErGDqhwKsxkm+MzycBd50m01
	DK4ura3GUyaSurNthDzmcvc=
X-Google-Smtp-Source: APXvYqxMu0uXz8IDbY7wfRmJgp1t5RUj7sOZOIOJMEy97jM7zMrwT2cEDNOjFQpogaSwjNEIdXiKHA==
X-Received: by 2002:adf:f490:: with SMTP id l16mr4839185wro.77.1573827424156;
        Fri, 15 Nov 2019 06:17:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ca52:: with SMTP id m18ls2569718wml.4.gmail; Fri, 15 Nov
 2019 06:17:03 -0800 (PST)
X-Received: by 2002:a1c:49d5:: with SMTP id w204mr15583698wma.111.1573827423353;
        Fri, 15 Nov 2019 06:17:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573827423; cv=none;
        d=google.com; s=arc-20160816;
        b=VCD89FJOIaNJxiWmGwAgPSE8w1JWCgnirDbQac39+rjs9SSLM18AZXTPn9vD2SQHy6
         R0TzhYivXnCg57sm00s0gwADhDzeZtPxKE+jQ8cCXx/kSwQujtYBMG+x7cuEhYdVi8SR
         DNpyewnBa22lrRzuBU3GIbH0yzXH7IgvczETjq1vdcP9I6HiIM4zJIrxxA4q07WVfPnp
         vpcLRBytGaE0cqQ2LLeqyz2dJ+55ZsV7IoPxB1sTmVzvdDBzstX5q0tU2j6nHfVaxKN9
         ijaewoDoQo1PzpL2P0DvRhvmEaLsUaiQwCLoLOVlili7oHnefKHjAr185cCaIdWcFUn0
         5Jzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9krPwWFD5V97ExVQ4zmy3pVlx+NIOvaawAfoD9nIn0M=;
        b=i5LNBtnBE4BtjZCcbp6a8lNkUxoiOJCZZG4/1zsmru54jT+8J0H/I3IWGLHsahdFtK
         irytSKxPZCXXzjTdLuZ2VL8oI/6EIhISp0zUh5ao9rP02b6N0wrGSYVo5Ym0HXGQaekd
         Fd0cZhvW3++WVp4gx4DjYEr4Yj9Y8WQYU79MxRoqsVTkFZwvu3bYQqlgPizGXgu34AJr
         QezkgnvFGsQGIBUXo1cgLuB/HI/x4hD0mt5bKbgBTjhAqp2c0Q1aa5BXCcOTrDhHEUv/
         y7rr2wSDDIZF2K3CITc9b1eplk5wS2oN+L/MEqh4fjPEcD2w7fU6RSsWrrNWFziH1Cm7
         aAxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w6si846415wmk.3.2019.11.15.06.17.03
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 06:17:03 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 897C431B;
	Fri, 15 Nov 2019 06:17:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B8EC3F534;
	Fri, 15 Nov 2019 06:17:00 -0800 (PST)
Date: Fri, 15 Nov 2019 14:16:58 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
Message-ID: <20191115141657.GD41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <201911121530.FA3D7321F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911121530.FA3D7321F@keescook>
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

On Tue, Nov 12, 2019 at 03:44:42PM -0800, Kees Cook wrote:
> On Tue, Nov 05, 2019 at 03:55:54PM -0800, Sami Tolvanen wrote:
> > This patch series adds support for Clang's Shadow Call Stack
> > (SCS) mitigation, which uses a separately allocated shadow stack
> > to protect against return address overwrites. More information
> 
> Will, Catalin, Mark,
> 
> What's the next step here? I *think* all the comments have been
> addressed. 

I'm hoping to look over the remaining bits in the next week or so, and
to throw my test boxes at this shortly.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115141657.GD41572%40lakrids.cambridge.arm.com.
