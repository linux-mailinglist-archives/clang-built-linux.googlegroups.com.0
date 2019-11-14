Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBF4OW3XAKGQEXP263BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 91183FCB27
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 17:55:53 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id v10sf4963532pge.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 08:55:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573750552; cv=pass;
        d=google.com; s=arc-20160816;
        b=OtysB8TF/E2DdOT9AfeuP4/3KCJ2WKtnApVwpekTT7RokdfDjpdHWQeiC5YacUMZqI
         4oKSSDs2B2PIZOXFVGKc4C+NS4HVJc/FJgGlbM4JHCpeAbK+9nAlt08IfK5cMZUHRFRX
         sOcLltgLPPgnXiEAXEzB/SKfFvM9mK+6EIwl0nH6rZXGb552h7rb6yFG78ZQiKuwqNp7
         I1nNkh0SeIuiaxZo52Z0so8SkdnFZoCxBjBBT1KLI9UXiyvlrJqn0SyGhlR5ycPpjark
         lnu6XZITxi3czr9SIDrjIml8HOu0ypNghZQm+LSc0uZdK6B3OHUFTjpUZbO73R/+iic4
         i2/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UfgA8GRrPZ2whz5OyU7V81kdVgd2FhxcuNoCU+7RSq8=;
        b=qrnmPu5AAu+t4TU8UuTXgqe8fyTSnx1YIegzDCc/PYL7lVmkr6i16Z1ALwOco18iXK
         cqjeg0/L1uvldV8pY4GmiA4NkxcB8AyVGf57UhX55aEll693Cxl1O3DIhLbb5LtbaJAt
         Gr/nKE9mpLB3QYdkI1/B6LpovSwu0f6+WvMnrR4oiu3aV7ZRO47I/RiPA7mUhCRUacxS
         /xO41InEzVWLzIXMTAsHw0cpWWNML3hvZuYFfEjL66B/m4xp1ks2cUYsWY6OO9WAlH46
         Ps5sdWYnk3wlktwPM0Uney3Oy6BynlODisOFU8k1wdq4FgmJlaBUXeJjm1xfBHWrQIth
         fOBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IzGGwjyc;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UfgA8GRrPZ2whz5OyU7V81kdVgd2FhxcuNoCU+7RSq8=;
        b=sbPH35eyGfYeubRgRy6whg9/extAjOcdt4YNdNkMs6XzVSuHgyW6AodZMXdv4CwkX0
         UHPhddTUdz6LACk+k99Rg4h6dgU1zRdoHVRg7vNvU2sos/EMmrr0+p+ZSz8o7gFTlxKD
         augqKCDHiwFXkaP1bEaPdTmHA7borjahKIjIGcnUz2BlToZImtAdOls10aIRVzDYiobV
         D6zBAk7lss2WxsHRbcnS1CyHG0/b/HCOp8af1/9+LrZPh6b4AWwfnUlsj5zvO3VPaeBh
         BG4K42Af3LVSv4vtNP9OgTZnK+3bOp0p7koKgP4lirnU9Tew3TpcEv/dztWWqMX9KTZt
         UQkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UfgA8GRrPZ2whz5OyU7V81kdVgd2FhxcuNoCU+7RSq8=;
        b=ar8Byswyc0D4Q4o307LYvjU3Ncp1yTXlYCUiq8k5jGUa289KprIflyXdGwf3O0yEWE
         x7iHpxY0L5lran1Xowu8VTbtdjSZFEh4V0wMNYpNCDYjs5cdwe9gSS/XoQ1FzwLq9TKE
         TTLcYwvDW0mzc/OUcVcrXt2n+dzwMrkCpg7WfXdglaTsZLuXkzW1LT6aGUWgAk08TBel
         9Zlw/B7sv/etsKlfYucqpFSKFe70p3dnm17UGgGx4XHOcKffyomwtUxKiJ8yi3pWwX4y
         cl+eePN4sNGT/SrG+tADeoApTHKRq1w7gvV7zPHPbe84wTtzK7IkZJPuFARYmTOTFGE+
         ZvAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1NC6TGK7Zbeb7gZrlE/Thq3AH2de9E1zwgB43b4Kp1tGygtt6
	5YO19SW87IJJYUTAW5MPJPc=
X-Google-Smtp-Source: APXvYqwC9Xg77ixaCCtR5iXkCOeQjAeyCZbZ8EHgEF2U5ldib/6mqKLiIfFAHPchGFqIy9gSskj6Jg==
X-Received: by 2002:a62:e308:: with SMTP id g8mr6389104pfh.121.1573750552025;
        Thu, 14 Nov 2019 08:55:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cb0f:: with SMTP id p15ls783065pgg.1.gmail; Thu, 14 Nov
 2019 08:55:51 -0800 (PST)
X-Received: by 2002:a63:1b5c:: with SMTP id b28mr1316058pgm.69.1573750551495;
        Thu, 14 Nov 2019 08:55:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573750551; cv=none;
        d=google.com; s=arc-20160816;
        b=iW21slkp2ONQd+f4I6dNLhbpdyRmiXa+XMvBv2mPRfWC1oebtaYF/w/XKPtCzUYGk5
         rq3tbCeLMkhakzBtdmVIXx0bFun2XDRrpgwX1XCRk76y7h5K524b4MPLiz+y5RSbm+Mq
         QXfc+sKZrvrv4Y2wqhMcuQygaRbAAwTWmiPYD3st3iKC7uNHQNDJjCE9myZBjbU3HqMW
         /tCbrd596X9ve6DlDNeBJ2arX4LW8BsCZBNOtKePOOkBnLzv5TTGF/i84o44t+M2WtGc
         wmIn6IsHLbylY+zLWrJYX9PJ9aaC0bH94UOWnJKgKFS275D9hPKa2p+GR0dv2W763XUr
         +3vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SBrVC9s2les4SR/cUrjqOydjUmZTVoflVmsG5q8KNZk=;
        b=Yg/Qc2QxRMen+F3xA3sbzkwb3GkjcGUu7pa2TDPicXiTM7k+UkCZcx2uzCqAspy4Db
         Jyr+tDHGbZeuFEEOOHOeZHALKKFk+5LImj2DYrrYI9tfg9OFCHqF43V92L4nuXVklu7a
         HyAsO3qoNjL0wv/PhYAidU4SknDbJDDj5V8twFiIoBW6aVeOsMJVoOJA82OZSx8Ob2xa
         QmKmKZocZ7WvRdl6A6J9blVO0idXrYUB5QMYJwnVYIm90+/EB8L/2Wbpglx+xmvFubBv
         ekohnNDPHILGYvZQJ1dJEwxOwZFcgBDw9kL7hIVnK2RoDC9huzXVIpK619WPzfi8mM5L
         Fnsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IzGGwjyc;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 102si262797plb.3.2019.11.14.08.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Nov 2019 08:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0E967206EF;
	Thu, 14 Nov 2019 16:55:48 +0000 (UTC)
Date: Thu, 14 Nov 2019 16:55:44 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [RESEND PATCH] arm64: fix alternatives with LLVM's integrated
 assembler
Message-ID: <20191114165544.GB5158@willie-the-truck>
References: <20191031194652.118427-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031194652.118427-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IzGGwjyc;       spf=pass
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

Hi Sami,

Sorry -- I thought I'd already replied to this, but it had actually
slipped through the cracks.

On Thu, Oct 31, 2019 at 12:46:52PM -0700, Sami Tolvanen wrote:
> LLVM's integrated assembler fails with the following error when
> building KVM:
> 
>   <inline asm>:12:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:21:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:24:2: error: unrecognized instruction mnemonic
>           NOT_AN_INSTRUCTION
>           ^
>   LLVM ERROR: Error parsing inline asm
> 
> These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> which test for the existence of the callback parameter in inline
> assembly using the following expression:
> 
>   " .if " __stringify(cb) " == 0\n"
> 
> This works with GNU as, but isn't supported by LLVM. This change
> splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> to fix the LLVM build.

Please could you explain a bit more about the failure and why LLVM's
integrated assembler rejects this? Could we use something like .ifb or
.ifeqs instead?

Thanks,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191114165544.GB5158%40willie-the-truck.
