Return-Path: <clang-built-linux+bncBCT4XGV33UIBB7GEXTZAKGQE3S5E4XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A99D166B7E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 01:21:17 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id s5sf243519qvr.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 16:21:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582244476; cv=pass;
        d=google.com; s=arc-20160816;
        b=msbsYbfN8+wzPUGBwi/M+GVWCFfK5g3wO0iGseove9or8gxqO2Npidwei9sEjKkasW
         jajHr5OvlSCAhCtu0iIUvZnPOkkFw/G/5onDh3WD0kCF7OZBjEiR37ZKTv938I4c4SeS
         mmCq+QWd50dn97znnSZUzXvZESvSHd+AzLejwei2VIqWdEASAajA3sP6el0D+nlGwP5p
         a5RKNe4ReVXrIY6Iukh+MsXc6dX7efyn3Et1w2isXHtN66WUmTwB0KdvXSMfL0JSDAg7
         RHyVy6xD7dJC/h6u3qnVJ4sCztiofshfzZUbLX8lN0/VLgZOTa6Q0IFj0pgoV40plrB/
         xl5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wHXClAn/xxzGUz5XZUjJH1vwFFXVHOGFG6ppj6ZbyIQ=;
        b=PQesnYL0AqTBTeT63C1QB8Cmjl2C6pBrkCjdfxhRRQb9Aruu93WKDCausJ8D15f9iJ
         TfX4OwXxisyGuK6KqEwCUPsSbxFHqTuFhyBmyYmsRazxspGqcjm+HN4DmKPVfByWmSu+
         wGgKnMyvAVA6GhdzzGTMkTV1s+2BqjxIgwa5jVD86R5YZnVq5ssWnwvnPvk6BnCxu1uR
         LjM2vr/hmT8vjQhVyiUJIjGCumnHL7CbTHstjTcZTtw6Bn+aqIsDZSaAwCsiDcByb29W
         dy/NLUPUjp9DY+fharbvK+eEZ0AhRSOh4xOj1Rqyw0VqrjCIWHnVgl9B6BL1Jpgkw6zN
         uHGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vG91CCT7;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wHXClAn/xxzGUz5XZUjJH1vwFFXVHOGFG6ppj6ZbyIQ=;
        b=Da+QY1CCbJh/f8M93Mg5qV5euCtZLVCfakzmnAwox9o3yK0Hz+OGIxep6hjtVb8Gcy
         csXN1f95G7dmhfSvq/LRTH30DGrrQrPQzuWbDi0cX5php6ypYJwjxOdQ2T3pU16Dnk+f
         ASPuByMIJPT5FMZKoFxzv0qF1C8BB1Hcy6ppcRd2m72wXfJx4rGFbuoXQMuZB+7QIJ9x
         KloKu8IKsD+ZJo43DVkd/rzm7JVh3y0vKGrJ34SvOWkG2Q2dct3EI5Inh+O4gfKDSfiw
         bLyJLwRXzpWpQ5eLvB15Xslay6d+TjU8b3oIJgHUibcUZqJSGI0ZUXbCEDDW8A48+xrU
         v4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wHXClAn/xxzGUz5XZUjJH1vwFFXVHOGFG6ppj6ZbyIQ=;
        b=NN6xJ6qr4LcSbvoMHTBBmjgdmKZs4IH7tSryeFem0flCBQhrl1zU+mBT+5KfUnYCDt
         M8xau9OtaNpWhUnyCiuR1/4pisI+os10YhwGrokX3B0p/CMJG3ySyUOTv0KEBsHZcLJ9
         5wxyN2vXZVxd+QPfKU1wZp8QZtflvGTNNoFgf80fiUEQ/i9Lmm0LTKjmcfm1ePK6y4kf
         4mahz3D8Bww9cV9xD/5/5Nyfh4EO5Mg2ah3Cc3ZuPyQNJloz38oi6hzwVrNIgn7q7fbc
         1uFxuSrK791cEjN3WNvDTBWoP5ELnOfpjO51WDCHGtJD/IsiKJo8+TAZXm5Ed2d62oCD
         7wxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaBSgBm3tN+hMmKLznsWRNgmn0sML8n9/65AIdQfNMZrvBbl7S
	SD3BheJrR0pwQkhB6ARolXs=
X-Google-Smtp-Source: APXvYqwFQ0U4FlKwK9gghwOzkswmW36KZPTQJxD9sDSwCzEXZQB25jkPX2n3+pjzrCGi52Wx/bhnWw==
X-Received: by 2002:ac8:3453:: with SMTP id v19mr29792775qtb.263.1582244476229;
        Thu, 20 Feb 2020 16:21:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5441:: with SMTP id h1ls94854qvt.8.gmail; Thu, 20 Feb
 2020 16:21:15 -0800 (PST)
X-Received: by 2002:ad4:55a4:: with SMTP id f4mr27918527qvx.221.1582244475870;
        Thu, 20 Feb 2020 16:21:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582244475; cv=none;
        d=google.com; s=arc-20160816;
        b=SIvEsKYD2AosS/8dyX/vkUW/OCAxbEfYDs+U7SSQ16XnJ6DwhkVnEdFI84X0wF3vyn
         lB+tm50ROXmk1usIof9f2YBjhcdORLWvxZ10ToOOPiLBcaIWMhZ3acE76L/pO+p/cCbs
         pPcJiKW2snBQOrhoSrijBCWMgU7Yiu9zkhAo7pJxBh2LJEgOTMthGtjyGqBiOm8q6cSv
         /PYIgeAc8jVFLssv1D0o1ZTOi6NE/FaPoqLCGeF1rvxYUBKtGGOkmFAlTk5qJqNcbZZs
         Z9gN5dWca7RvRfyTOmE/U2UAK6bEthizJ5fKB6tjlQA5Us1+6WGRVcu9zH9xCiLlC6ex
         0+VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GtSxERHjN5fR88CVImdZ8Dsbn1cVjno/zhW9SKISd1c=;
        b=xdCCfC2fnwnY5mc6pzvYitEhfWiCTSlexM5uG5BG0q85bqGa1e1El92XKUg+9s/CFI
         FeEkxM9TEsuYLVDU5j8ND1XZ7b4Qmum4jJRW5GGzC4TeWzAMwoQ1xK/Kg64JK6V9Imz0
         q/ogpPOcIaKYXu2Y4IeUKMA8aG2zabQKEpKTSur0jCYt3pyiZJkqor9OeTOf1RS0oSh/
         0Tm2d/8X1ueZnYSQ9WyBx7Q69x4zKpkaGKhwsTH9OYcXIewyneIMlTvh8selnqybh7Zz
         yHk31etHBmpQUHdJ2bpjX9n8g+ITe1PshRN3J9K0yvSlGU4f+4ils9ifbqERWmJRQtkU
         IBZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vG91CCT7;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si57447qkm.7.2020.02.20.16.21.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 16:21:15 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9989424654;
	Fri, 21 Feb 2020 00:21:14 +0000 (UTC)
Date: Thu, 20 Feb 2020 16:21:14 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Joe Perches <joe@perches.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
Message-Id: <20200220162114.138f976ae16a5e58e13a51ae@linux-foundation.org>
In-Reply-To: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vG91CCT7;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 20 Feb 2020 12:30:21 -0800 Joe Perches <joe@perches.com> wrote:

> Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough
> to allow clang 10 and higher to work at finding missing fallthroughs too.
> 
> Requires a git repository and overwrites the input files.
> 
> Typical command use:
>     ./scripts/cvt_fallthrough.pl <path|file>
> 
> i.e.:
> 
>    $ ./scripts/cvt_fallthrough.pl block
>      converts all files in block and its subdirectories
>    $ ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c
>      converts a single file
> 
> A fallthrough comment with additional comments is converted akin to:
> 
> -		/* fall through - maybe userspace knows this conn_id. */
> +		fallthrough;    /* maybe userspace knows this conn_id */
> 
> A fallthrough comment or fallthrough; between successive case statements
> is deleted.
> 
> e.g.:
> 
>     case FOO:
>     	/* fallthrough */ (or fallthrough;)
>     case BAR:
> 
> is converted to:
> 
>     case FOO:
>     case BAR:
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  scripts/cvt_fallthrough.pl | 215 +++++++++++++++++++++++++++++++++++++

Do we need this in the tree long-term?  Or is it a matters of "hey
Linus, please run this" then something like add a checkpatch rule to
catch future slipups?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220162114.138f976ae16a5e58e13a51ae%40linux-foundation.org.
