Return-Path: <clang-built-linux+bncBCWYVWVBVIEBBTXFRLZAKGQE5EIWT4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C231590FF
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:57:40 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id c15sf1087683lfc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 05:57:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581429454; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZoD2z1TXL9IapEiXANWi+gTKPgd8KfWyHoMCafnqXRGxtJ+IIOSymW4KkBLL8pLR5V
         FjFQgQIFNxM+CXdunWNVhzASFky/3lR7zb9BFlu030MlaGGCvEDP6GClxdm4mFfAfUjA
         Zu2hJ/gaWEVJhoweFsT4TX4XQRaQ9v7E+rtugo8U3bxV4hrIe8GKysIUdyQaoNPb6SEv
         qRfI8pvFd2etbznzjglUR8ilZ/NUPn5jwBqNqJSE360hQR1diU3p9AQrsHLt+yiiRv36
         nxHsEgjNdrW2TaOvAPThd3bDZDlUkRsJ226aIFeGWlxWR4kM6ZJRbz1IKPC1yW8/KAvB
         Xp5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=7CPz91MW7o5te+QUHXOhG5Hq0Shl5O7/6wt5oPuQVT0=;
        b=0T4VTFbOh4rNZzNuk8K80AynuFUGk5AqRr/C/SANoMNvT+vn/SN9WqiIE2MI9CRYt8
         wGhke8V9xxKei9F+js2m+Td6kVvMkAnBybtnHj/uZ1GwNn4YRj39cAkYQ4tXj5tUr5EB
         yBm62rqGVNaK3cyNjBuaYArlUehQS+1GNDKKYpMb5NA1RIpLlcIVkSrUx63iyJBngmOi
         Kun/4Zme1qI8PLsgWWS/8A1roxUuOF2/MdV2YO+bK+nEnto5ifWJ9TTV33l9iVKY7GdX
         mhxXPgM1qqSiiqtq4tE6906GPIwUee1dsGlFnYOuGaAdcHjCzz/6n0p1l4L8K29hKObR
         BE8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7CPz91MW7o5te+QUHXOhG5Hq0Shl5O7/6wt5oPuQVT0=;
        b=GWjgM02jPZFby0aNlmlrygeeORKtDA72TsNGMjdrvBidxkl4CyQOK9iH43lUeAd8cB
         8Jz6xuyGQj8g8dENZ6fDyG3Nga1kAl7ElTokNHPuJFnA3e0B86/ViR6FwrTCZMX1sj1X
         4epEY8bq4orlabGQw+NesQqBJ7qiw+rmMNdRTV8T6h5TjmaGnBjU0oYTlqQLBg0UBwcB
         i6volcGdpZFkKYZKaHs3SOzKo8mqB9jA5hW78FDJDLwxgu+vTxnwVka3jyqARnQrcWF6
         Vt4InJLXDKbctkQFNNVQPuG7Qb2nNO5aFu4oyw/s9D5YgO7Wz4PSbwBjEVF3/Xa422rn
         vdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7CPz91MW7o5te+QUHXOhG5Hq0Shl5O7/6wt5oPuQVT0=;
        b=o0HfdZWMhxPPqQs8Rgv7EvNni7zm5xjmFtSCHC6ORht+ysfhYXVMjP1Pje3ceHS8K8
         eT+axrSlBcvVFwAZLNIDRdJHGYeWRPYwC1IbIRHqm3n3tXKMDaQllsfcSa8VCjBxs5sq
         uNPXPX4tYsw7RykhqeuGdaDaEfO4td19m1A0XiRrUdmtrMK0i+xgHFp3+pRk7A/7trqf
         7T+bdoBh3+94HcMPkmgEzIWaT/UDvr3EMzWO9rhwZZPSv5vmj5UlTddYN5i37TKP/+vz
         YiUlt8WkF4rDMno2p/zeQil+a3DPkKlJq3Wuwv7+izPIJOi1M3eiZSPoy2Gk8aBLKKtl
         or/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXd88hz323Gpa6E9PThLGseVhz+t02lpyb9xiAksqfZQ5eSRtuL
	WFLtJPy/Q1bF8UZmYNFUy7g=
X-Google-Smtp-Source: APXvYqwtE3pt2fxglOb3WD+gamy5xG4mMVAD3m8RjB+u3743Co2btmeN/7J22hcFwWTo+ZXFvfAWaQ==
X-Received: by 2002:a2e:86c8:: with SMTP id n8mr4272501ljj.205.1581429454813;
        Tue, 11 Feb 2020 05:57:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1b4:: with SMTP id c20ls2198460ljn.5.gmail; Tue, 11
 Feb 2020 05:57:34 -0800 (PST)
X-Received: by 2002:a2e:7c08:: with SMTP id x8mr4254048ljc.185.1581429453966;
        Tue, 11 Feb 2020 05:57:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581429453; cv=none;
        d=google.com; s=arc-20160816;
        b=fSIh8XZPz5nu0kepuZJTW54OZHTdK7L02jimR7IXSlAqkeOQJgHO0j2kyfbXiDrI6/
         2UTcjzsxljUHYzsoDeslAyemFuillqmSx/CRyRlkopNUkiMEM6euMyHLSV5+VJ5L81yk
         XKmSjUlgFW4fqOygU3sUarZkvhZintilIVbeoFualS7RIXR5LB/dSrwqJ+PFvOs7Bt5D
         2DKqB/SP0FV0PpEaEt1RMZgcnXBnoosADMb0MDez3l8bD2v2E3LMf1xIc/gwyz1v2zTB
         zU7ifnElo+dE5JgfWMV9IBYqP/xK7bx/H5wKJheHwe9pr5YRgmo334vHENstQtciifF4
         Ci9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=eNeJBt7f1kZr2UhkEpVEZjIa2Qqzd4EANgay0ciSC2g=;
        b=jcsxW5Jn4VeTiWCEpCVkrqFOuUKKdjWu03tYYNcTQ0qVEsqlgpHSGLo6X++pPVyT/q
         3lEydT84l0gOBq4siLOUkqbIuEEQeMXjfMguKmqShEd4HbZRS0JEN0/6Reddsp3z3Sge
         F3mzTwVlj2JJHZXjifWWQUug8L+k9Vd7ou9C50MuI2kQWplD9r04aEkP6ndmt+48Bg9E
         VHXgAXeI77QD59y0kDWu30IAKX2lMTkcJbzuA8yg+Ce08pStxUhrkeZujs3NwqZbKBmo
         /avtkdxGf4EwuX6V0hEADHaLax3N4i8RCe7Z9mfLxLhqvj+TmPV6MeYSEJoJsFlA3am/
         +bEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b29si233338lfo.2.2020.02.11.05.57.33
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 Feb 2020 05:57:33 -0800 (PST)
Received-SPF: pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CB6431B;
	Tue, 11 Feb 2020 05:57:32 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 541BF3F68F;
	Tue, 11 Feb 2020 05:57:30 -0800 (PST)
Subject: Re: [PATCH v7 11/11] arm64: scs: add shadow stacks for SDEI
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-12-samitolvanen@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
Date: Tue, 11 Feb 2020 13:57:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200128184934.77625-12-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: james.morse@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.morse@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.morse@arm.com
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

Hi Sami,

On 28/01/2020 18:49, Sami Tolvanen wrote:
> This change adds per-CPU shadow call stacks for the SDEI handler.
> Similarly to how the kernel stacks are handled, we add separate shadow
> stacks for normal and critical events.

Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>


> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> index eaadf5430baa..dddb7c56518b 100644
> --- a/arch/arm64/kernel/scs.c
> +++ b/arch/arm64/kernel/scs.c

> +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
> +{
> +	unsigned long *p;
> +
> +	p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				 VMALLOC_START, VMALLOC_END,
> +				 GFP_SCS, PAGE_KERNEL,
> +				 0, cpu_to_node(cpu),
> +				 __builtin_return_address(0));

(What makes this arch specific? arm64 has its own calls like this for the regular vmap
stacks because it plays tricks with the alignment. Here the alignment requirement comes
from the core SCS code... Would another architecture implement these
scs_alloc_percpu()/scs_free_percpu() differently?)


Thanks,

James

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9%40arm.com.
