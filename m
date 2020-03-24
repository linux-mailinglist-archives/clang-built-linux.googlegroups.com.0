Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBGEF5DZQKGQEC2KS5SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 34966190E1F
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 13:52:41 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id o18sf12323748otl.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 05:52:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585054360; cv=pass;
        d=google.com; s=arc-20160816;
        b=t8MA9tZP4PVpuXCW9A4kScKc2ExZuzoZF4TD4NqhBBbSQoxBJWr3eazoeQ/ilAYbJQ
         emQMij6GML4y10fmm/uFlDDg0DvYjvUTp1PSjPvnThpPspYH7YgiY72Wd+fhWcOQj7UQ
         ipo9DE1rf3+fIoETH3krsE2Ocw3OJAFuIfMqbX704ssoDK2FvZlNVlLmZUDhC1jU44Rh
         3c7JrvmTHUQ5HckqlM7QgAPztc6P5TjULw1teaKE7YGjZu3yQrDpWL6sr+OzivOICr2/
         R8+VfcPXG4mgrMKLS8JclND8QpD66EkvEew68tlHVC51G1hyHeknXSjqUP8P2IDneb1j
         ubVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n3h1haJemIFWuRpNwqcD4V9KHzeDMWADISISbIPuLQI=;
        b=Oj5u0WZv5t0VS7mV0pQDLcUNBm0ySjwv3qNEHblscJPE4NgyMjZOxrwuLs/fN8E9XR
         haMbd6xKo1cXKmvrMTd72NpsaDSxISN8hg1YLV+x5Hm7VSNMgFHZy1z+Nj50Rzn25LS2
         2Lidbcs14C4hmHPwD7lLmok1Dx+gg1r5o/zOgjkkYvU5K+gxmmp5TtrJH9tvMNZdSJN2
         B//FtFS9fjQmQgpGPr9Kg9K7ncwvgh9VjAMUhpmYCqwO+0hCjrNRkWUrB6ui99HkDYQO
         hjDIp9SOtF8d/TT81kgbipxdhW6GYvOmXSOiqAgNNfUZ9Dl1ECa0+iU9gk7z3lFTJiAU
         x9iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JYE86fRG;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n3h1haJemIFWuRpNwqcD4V9KHzeDMWADISISbIPuLQI=;
        b=hDTnKwx7Mn9W2ZrnrPcNtPK5hUafOGkpJd0ZEGEPXbGQd3vxKFSzRrulo4ite9+4vE
         6KGxLBIb4cRoPdfGVEQBR5GFEdIIjbLybCvy2aE2ZW0mjRf7P8QxAjlNx0/wVjxcJYZ7
         ExtaB+2VDwQ1bPcsrsy8TIgXUlI/AU/xeX3DFm4H+wriqnQ8zy3o5caMD2uJpq69Tnqm
         EifCcbCDIEfY0c6YlG7fuXGhBfnZ5UeeWuYwPf7qoXtBwIWx0mykEJJQ3JVzFlmf/jPc
         gINpEC5ZH/ilYfjahN7sx9oLFWL3R0OwHkdQ649Voi9urYGQQ4e9hs6eW4uLniRgEwNI
         BZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n3h1haJemIFWuRpNwqcD4V9KHzeDMWADISISbIPuLQI=;
        b=EovPU3aPwpmKNrIO3teJzWvDcI9rUWj0DWXnDX+ubAnZfYzmrni53QrEMT2yL8B0/X
         WO8+oynI2iDqpQFkXacc6qmf6zlm9sY1fZwt+ulpdPqqcq6L2AajRJDyO92oxM5b8OnC
         5P8rFctGSwdVQ95tk3aUxeA31jcRbBaM06u9rrlkCVmCno680QSg0avuJCd3VbRMFfEm
         RBnMeMhoVyGaf+QKEYvvc35u0MzoHALzxKJkj502MzBB1rDGx9Pxg4Wzlnek4HKwmHzY
         3/TkS3bQNRWcXZYYHtUF7LLbDspNnfaSRpu7kiDnOKnOVyn+qW7QX+FTN2bZ0mvG4pyR
         ZN3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Kj9O9TH9JheY+xFXRMv6IyYhPiDi+ZJttapLxGSGMy0XSstA7
	rAWnwHHUKWxI+cGz3wL1pTM=
X-Google-Smtp-Source: ADFU+vuMa+NZm1LuNB4XGlDkKF8dY9GpWfQCEOGnDaYNLUwJWDtyFFC/h+fzfkB0Nz2BqWrQt8tKTw==
X-Received: by 2002:aca:7506:: with SMTP id q6mr3221939oic.73.1585054360101;
        Tue, 24 Mar 2020 05:52:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2e7:: with SMTP id 94ls7464406otl.6.gmail; Tue, 24 Mar
 2020 05:52:39 -0700 (PDT)
X-Received: by 2002:a05:6830:1ac1:: with SMTP id r1mr17550153otc.139.1585054359681;
        Tue, 24 Mar 2020 05:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585054359; cv=none;
        d=google.com; s=arc-20160816;
        b=c8DwW/EgjAWhlWRXGNo4dU1WGH9UDmcd4PYomA8CjM/1cnqqa1r2G+/x+xAt2pEJji
         jP+qMTla6sH2lZvTUnXB5bp+FKJfQH0GOk2O64arHNb/mzj5vD9Xv10FUlLLwxC1dJTs
         hE/PrsC2V3vNwacxLl3H17wxmUus1BcZ5QJ4n7m7yM8UzdaABlAc+wZ+NiJtnJJu7Bg0
         h9uHJYjsrWpASDyl5//wEr12Fo+5ZDxLaVC6ILjyZ1CEutdybdWKRZEOmpWDhXW2wBDg
         0j+MJqJDwCGND56YBozeBF/VKMFya3XtdDFU6zIjxB431U8vHCyqiufYrFmokME3As3+
         cezQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qXAOLPt6QGHGhV5Hqcq/R5T4WdGX89hi6VL4VBFKtIY=;
        b=Tmr3BgU5veG7otGfaX8LcODFQr172nUzz/ntjZkSKOpHLh9dyJTLUUNgvd8UhgwiQm
         itbgw3tIIoMjX+eWtqmJaB3wOt1ekJ/1oWFjzdC9A13DVTkUSfh8Sl4FVly4QOfhackk
         xLQgCxKhOyV0ZL1PEeBp1UNmySMoPoL3jEalQqpGsFd6SBS1F9TK3EDyDpEM91TLzmF6
         p8pKxnVwDjMb8uK3q1qYga0i376QQPaMD/8lQVp9egmmxNxcdAP1NtllXGZ52VIZgcoo
         OvJIGvSlO8iFL7o/SOP0u2J/fu3/LcmUxVW47NoHmY1iHdBGBejJ79n93sb6H9wrQAgi
         z7JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JYE86fRG;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id h4si911035otk.2.2020.03.24.05.52.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 05:52:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGj2p-0004Hn-Cy; Tue, 24 Mar 2020 12:52:35 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3B82C300235;
	Tue, 24 Mar 2020 13:52:33 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 017F429B1EAD8; Tue, 24 Mar 2020 13:52:32 +0100 (CET)
Date: Tue, 24 Mar 2020 13:52:32 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: jpoimboe@redhat.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Wolfram Sang <wsa@the-dreams.de>,
	Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>,
	Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] objtool: Documentation: document UACCESS warnings
Message-ID: <20200324125232.GP20696@hirez.programming.kicks-ass.net>
References: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
 <20200324001321.39562-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324001321.39562-1-ndesaulniers@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=JYE86fRG;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Mar 23, 2020 at 05:13:20PM -0700, Nick Desaulniers wrote:
> Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
>   call to memset() with UACCESS enabled
> 
> Document how to fix these for future travelers.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/876
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  .../Documentation/stack-validation.txt        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/tools/objtool/Documentation/stack-validation.txt b/tools/objtool/Documentation/stack-validation.txt
> index de094670050b..156fee13ba02 100644
> --- a/tools/objtool/Documentation/stack-validation.txt
> +++ b/tools/objtool/Documentation/stack-validation.txt
> @@ -289,6 +289,26 @@ they mean, and suggestions for how to fix them.
>        might be corrupt due to a gcc bug.  For more details, see:
>        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
>  
> +9. file.o: warning: objtool: funcA() call to funcB() with UACCESS enabled
> +
> +   This means that an unexpected call to a non-whitelisted function exists
> +   outside of arch-specific guards.
> +   X86: SMAP (stac/clac): __uaccess_begin()/__uaccess_end()
> +   ARM: PAN: uaccess_enable()/uaccess_enable()
> +
> +   These functions should called to denote a minimal critical section around
> +   access to __user variables. See also: https://lwn.net/Articles/517475/
> +
> +   The intention of the warning is to prevent calls to funcB() from eventually
> +   calling schedule(), potentially leaking the AC flags state, and not
> +   restoring them correctly.
> +
> +   To fix, either:
> +   1) add the correct guards before and after calls to low level functions like
> +      __get_user_size()/__put_user_size().
> +   2) add funcB to uaccess_safe_builtin whitelist in tools/objtool/check.c, if
> +      funcB obviously does not call schedule().

There's sadly nothing obvious about 2); __fentry__ is enough to end up
in schedule() through preempt_enable().

So any function that has function tracing on (mostly everything) is
already disqualified.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324125232.GP20696%40hirez.programming.kicks-ass.net.
