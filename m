Return-Path: <clang-built-linux+bncBDV37XP3XYDRBQFUQHXAKGQEKKNGB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0B8EE580
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 18:05:05 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id z26sf1047217ljn.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 09:05:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572887104; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYvdAW7K19VOkxESimnwlwKI93ubjqbaW72fSQ7G3icarPqIiHjD5hZlkKY93DTNIe
         7zBmgAPXbGpwjoNnw98L/6Fp2c0onwev/u1C0GPMWyyOiTJ0t953iwUot8drvqFkEnts
         /7q44yQX9Jt3VzmcR+fqGo8FHmNmqSMO9g9lXBv8/SNHkYDJfDecvGwuSrOtbIKu7wAH
         dM4aHvc2QKtA/WkgmpzmmAnaIHMA1ZUMOBRQ/m+W/MgMX9kxy3iX3Ik6Xn1AdZ6FAfQw
         uoD9GQ7KODLTq5lBvYRyWioOxM4dkYB2seNL2LIT/sigIQZZmSQ47b57a0FsYmd5/aYk
         vEaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=iT2Ncpn2Q7fKSyIcEhoeIEU4PBhOBVQEzmRvbE5gqWU=;
        b=AeaL+4mo0QXiyGRuP5NQGMvubTZdZ6coKJssnlVZAK+rp6KUHfmG/b11z7VGl8sSba
         JJwkkkt0IterA3Lo1CATHHHfd+6qVTE9j/uvI7R1UfzMTbhY0GnWHmDDN2juNEg+tjCZ
         Qfrpv9RTZ8w06T705NSul33V+XnNljH4eCgozPHidGaETxysfvUi3NtB3/1V+MtJSSzi
         5ZzFUHuBFip7RiZN2f9Lu7jzGps8KeWpC2LT2PeJC+56GjDTUDfnH7x+548BXcp46g4d
         XN/3DeL5e8XxXqNNs2ppPnGipPqFWtrSlYAb06Mmvj1oxi6st0Q6K31u4jcI3r+BNe+7
         ohCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iT2Ncpn2Q7fKSyIcEhoeIEU4PBhOBVQEzmRvbE5gqWU=;
        b=jQW5YYLOmctXrli1MINALL1De9w29aO+ezYQYxUorkL2whVFazN4gqjJS/8gtfQCaD
         UY81oPn9gNrgcjuZKiAx4o/sRTpzv2fedpqg1S8d3sjzGCjOZ6ZFCM/4wh/lUC7v9By6
         HUvd8AcdL6ZDZNbQnRPhw98xglpAQt+7TfunDzGyFMTibz1MlZ1Q4JtXuSh2wOHBlPzw
         jRLlu3Pf1t9DNenXK6cawG4ABZXcDm8p+jjPC9HZ2XQ0NLYQ0H7y/BYKqrBI6RyJB1S5
         c2wzPWoeRN/XVVuZ9+NccWJB9i8yKd49+as1MsA4LgEmUZ4el7AZCLsZ3LRJyBF347LA
         E5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iT2Ncpn2Q7fKSyIcEhoeIEU4PBhOBVQEzmRvbE5gqWU=;
        b=OOaN7bwtMIYYm/99l6Z1H4w2PLDrLmqRBaqQx8up9wQYdTm1wjbBnGL4KolEDBpgLz
         EpaEFsPo7GNtireRFEI33gptwXkCAlbSqtD3NFK5pBas4N9ubDEJkKH9eTE4NyrCcqe1
         lNdflTGhl6d4hCJYSfL6BWZOGFO57L3RA46F1kUhFpUnmSU9DmZSgmy1F6bY/yJ/BLkd
         E19IdU/YEoZ7hoYuwoXHCeoxj8AhjoFGmzNBbhSNh0LfUZHARHIKtmPzK0C8ipNhIs23
         fIOuUh4AZG15HxqxRQzN2XJ/p20DLZ1Si3eXtdhsOF/2n5SFPu5igOsysFstxe4Ow0kp
         nRpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiQfFfUXwzMQi1VHKLwFSz+lOnfzYsZQ/VMPCbz8wstYjI++/G
	hry7tGIwl7uScXHQVtCAPmU=
X-Google-Smtp-Source: APXvYqwX8RrTsOxKcLfWuNtdIQlLrAIpTi0A8rdI0xe9pOYUTH2iXryjXiCqj02dLK6m9K7QynAEhw==
X-Received: by 2002:a19:ec16:: with SMTP id b22mr18592408lfa.74.1572887104634;
        Mon, 04 Nov 2019 09:05:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:c4:: with SMTP id 4ls857620ljr.6.gmail; Mon, 04 Nov
 2019 09:05:03 -0800 (PST)
X-Received: by 2002:a2e:2a05:: with SMTP id q5mr11542995ljq.170.1572887103924;
        Mon, 04 Nov 2019 09:05:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572887103; cv=none;
        d=google.com; s=arc-20160816;
        b=Jos43IkBaiG8V7iuYHC83+QWGH7WN0RQYolihEA/f9ZRBUXjXpLsFDwFQA+p06HV54
         VbLOvomLnc651M/dSXEJsCPu2BRV1yNenxZdnFFe7kY+wK1aTNBJHySEg9M0tmuBWJVy
         rRG89WAT35Gu3bHd4ti/T/exBUd8JpRL4/rpf7XqwlsVmrECvC21aXu5I8J/0DiDVstF
         s/VHXe63lTMuKA/UjTuNb3tPvaHZJSWXOzqzgKY1oFURT/GNrxSPqq719p1X4mov0RB1
         HtCX2sEs5iU7wa4PidqnZKW25eNQzzO34tW8bJHu99tdWAIR4h5bI5O4uC2oqk9wwf41
         ZISA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=tiPrt8SBOMotsbG4SwZyt72R7yCiKHlT0JU9Tga6ug4=;
        b=zTXFd5McyE1qtjWL6wbR78rTXuBXLh33gpqTfaJ5vg/GJ7HyAMTa+5jnqaKGXWhzE/
         QAEZNDz702eRjxo+Ulx+dUuThYDPim6xyEcKJIlq3LVOh/Y873XLIsJNFAXfcuf2Y5ua
         AndOehJD5EbW1hL1Mc00F8vqF7BRD4HMssxn6Vre3zAfXtAwp+UjQfDEp2k5CUeAsE5x
         qQRfjwsRs7KnV+2eORyurdj2Hk/WkhTZMhhDuOOVWHuiGebi4rAB13cRSy+wuHYnqUpK
         xNsFf/q9FoIKJ66B9LI9r341njL1xnMmNAmAOqTaj9MmxMOMrC5ES0lNAsqFUBFc740q
         vFdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s4si1449988ljg.1.2019.11.04.09.05.03
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 Nov 2019 09:05:03 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9992D1F1;
	Mon,  4 Nov 2019 09:05:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 605073F71A;
	Mon,  4 Nov 2019 09:05:00 -0800 (PST)
Date: Mon, 4 Nov 2019 17:04:54 +0000
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
Subject: Re: [PATCH v4 10/17] arm64: disable kretprobes with SCS
Message-ID: <20191104170454.GA2024@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-11-samitolvanen@google.com>
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

On Fri, Nov 01, 2019 at 03:11:43PM -0700, Sami Tolvanen wrote:
> With CONFIG_KRETPROBES, function return addresses are modified to
> redirect control flow to kretprobe_trampoline. This is incompatible
> with SCS.

I'm a bit confused as to why that's the case -- could you please
elaborate on how this is incompatible?

IIUC kretrobes works by patching the function entry point with a BRK, so
that it can modify the LR _before_ it is saved to the stack. I don't see
how SCS affects that.

When the instrumented function returns, it'll balance its SCS state,
then "return" to kretprobe_trampoline. Since kretprobe_trampoline is
plain assembly, it doesn't have SCS, and can modify the LR live, as it
does.

So functionally, that appears to work. What am I missing? 

Thanks,
Mark.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..e7b57a8a5531 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -165,7 +165,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> -	select HAVE_KRETPROBES
> +	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
>  	select IRQ_DOMAIN
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104170454.GA2024%40lakrids.cambridge.arm.com.
