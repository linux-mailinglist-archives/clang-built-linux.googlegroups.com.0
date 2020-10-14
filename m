Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBKEDTX6AKGQEE4L3XJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B85228E62F
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 20:21:29 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id l8sf95911qvz.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 11:21:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602699688; cv=pass;
        d=google.com; s=arc-20160816;
        b=v6nwjZcEyTO/hW/LK9nTVdAHXCcy/9sH//pu73stXn6ZKUbQNtshvmH79GzezdcvG+
         22bIUHnsQSaX7c7EoSNdbJdPdPTP/zRaJbMfDLeWcIR4UlJqJ4YNOKn1ojLJVW5O9CAF
         LLaR/v8SLnFyC8678rz++9V2pszRL5Jv2uaBUVlzwANO+CCvd4co4MJreLvPPpFkXBmS
         X9tRIUSSW+3fLrYd151Lpxx6Q2oE9UF0h8OEivk5S5aqcRbUsAchinFWlJdrwLcohHkE
         bePxomQFCU4rquEiJiXbCy41Z8QSeDu8eAfyfoOEMlqO6nABpalLcHiWN5G+qkq5wpNf
         vSCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dzjxXlU1U+xikDVgkcyGbxyA7QZdXdu3gSOsspQ+2oE=;
        b=sNZCGsA2Op4QGek9996Wx7uF6sjYk6KnP5FkU+cdpgHSufT6Ll2F2i3kFh7bsMtOwV
         rTzsZdjvqXER/6TJiTecy5hzsFrv26D93a3L72U1Q4tA93Aja5gdcbGfxdI/GXtm/cTd
         vceESHFh7QCxZo7gjyDmLZSQFHOpJVQYVDGbABdga5mhLRyrxNZz5xXsZGm1yw8zmZ4z
         z7YKUZaaaWtt9FXiQEH6LCeLi2uJfanpiOlanQ7ePW8Q6wB0nYrY+eh+jf5di/PDIslT
         yS2i/x1i183QSWlJok3XSk7nOWGnczvoC01QeJzgh47G9EcjjcJFpGH4Q/ZX5aQJDEmy
         rV1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=icPeuHkh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dzjxXlU1U+xikDVgkcyGbxyA7QZdXdu3gSOsspQ+2oE=;
        b=ktwyeQxZGeplyJxXTpzlObIG+FPmW3kOi0u+YnElP0fKpk553RkQagNI79Uoc6eWGT
         yF6xw1qXi3cCobdH/3X5geXGoLlcP/7R7ZkFN9iKAMk86NSEP7tBbCBrMJ86J2FOuStr
         ioOuCs3sfmplDwj1TuxC4HRxElOM28hEtH+0zqsY3RirE9pGrkZV2DIXFBVzfaOY60MX
         OYYTgZ5n0SxajfieGQ6EBbek32SE57e3o3g0GPlyeXfpTnF+3W5DJ6Lkoz7L2PmX+Z6J
         uhVf1T85Sj0JRCz86K9KN4jAY1zmdZ1KIkww0qWJbUcohWTojN4QEi2se/94KxGgKQX7
         KUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dzjxXlU1U+xikDVgkcyGbxyA7QZdXdu3gSOsspQ+2oE=;
        b=Jn5rQyBgf34FHTGRuODEJji8c7dIKBxXNTa/Oe0nWNoUIUmykNLUue82oqZ/7eL780
         UY7z3FNWdtZYKuoDItPGrcDtCHEIvjZyOTyqeARcC7cMYMPyawERQsZUGSPUHI2PNBBX
         P38irnlz/QS6DNE+xStkqCmGlqfLBPtXlnvrFkYIMm3bphn7P77xInuqAAWLQX351Ucx
         SL1jnRcEl7mT4ogw76LSDhcqjfZ7j8sBJzPsb4ogg/XFGfKB6AZlhG23Ba84euic4bKx
         7CMb2X9PmQ4aqZRKGi+9tOXcI3Bm3MCOYzLZLp5gJdz5EOVjmRgRI4lwniI0T5yaLoTn
         jZ/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yqukzQ8TqAoreQV86oan0yqD2zS1V1NtqenZn1z22EMNepOQI
	9DvrxknUHrWk38rZNucirNU=
X-Google-Smtp-Source: ABdhPJzsvsVRnGBXM01f+cR3RXZjT4pMaDbwSzVpP0YEuTEAVaaccDoECQ5RZwYVkSAOlVhvy+aQ6w==
X-Received: by 2002:a05:620a:683:: with SMTP id f3mr306035qkh.468.1602699688309;
        Wed, 14 Oct 2020 11:21:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b44a:: with SMTP id e10ls116317qvf.8.gmail; Wed, 14 Oct
 2020 11:21:27 -0700 (PDT)
X-Received: by 2002:a0c:fca9:: with SMTP id h9mr806723qvq.30.1602699687550;
        Wed, 14 Oct 2020 11:21:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602699687; cv=none;
        d=google.com; s=arc-20160816;
        b=0kZFXeVOOtqBxSb7tOKHx4uRbGC77LOpP81JIkd9XWar+kNEItB9szkM/Ajxw8CMpd
         zJJOeVMupzbgnHODw9dE6jh9OYhyuYB55R8p5/rnSmsXEH+0UEXruWsvcSZ4G11wwbJY
         EAWJDkLwkQeeXYqgPTLwrC3SirDMIHVU7nZ+/rbJ6ZFT6GLuuw4A/41aGzdtGDNwXAu2
         X2HEfIIshUQ2yM3Y8QyeLQNJ06hKzlGDM+5tTmIjTj7sSEjVfd87MTLr8tZN5TSL5CMW
         Upsoq3Pko23+u14RpTb9oKzG95XXdE9ehAR0uB3rfERs+7MV7hEiLv5U8Q43MMT2G35R
         JenA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4D+6T/0Jyivj7fxKw3DZP3bEv4Hi+6DaIRYNjOGogQc=;
        b=IfMeTQAzVoYM2LHsovo9PJ8E9iV1iWr3eGxd6wKhSL1nRqL3L9bzl4vMqkD8V9JGHK
         DydE3tei6if8fihrmAJ01bB5gdNy5l2fdLnwPHdHCAdgp/h9W5yR7p/ezVM1kg7AiuD4
         pqvl+AfD3fF0QrCcM4PLNLlU+dm6Ys1e96t6Fq08rFU4ftiJ3OKcYdx6bUmQwh9XmeFj
         S5HruG88oJ9b2x8Otv/wX6sOw5HDqDNdMbHuzKpmLQfs6TsiwjjPXwwpGOEZDvHHZ0Xk
         BiARPYp2eFSVx1IwAquUDoW+JCfuJt1g2K2v9NZaAtlFddciqKhnyfeODd6EoWW4Z/ju
         w5qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=icPeuHkh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v189si13736qka.7.2020.10.14.11.21.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 11:21:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSlOq-0004TS-Kg; Wed, 14 Oct 2020 18:21:20 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 402B0300DAE;
	Wed, 14 Oct 2020 20:21:15 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 23F3520696FD8; Wed, 14 Oct 2020 20:21:15 +0200 (CEST)
Date: Wed, 14 Oct 2020 20:21:15 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH v6 02/25] objtool: Add a pass for generating __mcount_loc
Message-ID: <20201014182115.GF2594@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-3-samitolvanen@google.com>
 <20201014165004.GA3593121@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201014165004.GA3593121@gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=icPeuHkh;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Oct 14, 2020 at 06:50:04PM +0200, Ingo Molnar wrote:
> Meh, adding --mcount as an option to 'objtool check' was a valid hack for a 
> prototype patchset, but please turn this into a proper subcommand, just 
> like 'objtool orc' is.
> 
> 'objtool check' should ... keep checking. :-)

No, no subcommands. orc being a subcommand was a mistake.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014182115.GF2594%40hirez.programming.kicks-ass.net.
