Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRWSY75AKGQEBLTWPXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 660A125D223
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 09:14:16 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id w9sf3786802ior.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 00:14:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599203655; cv=pass;
        d=google.com; s=arc-20160816;
        b=fNNtlNCnhJZ8O8AmQErxpZOUPSpvdMhz/O8Fw0vutP5MADiT5QD85oswAcldzAslrv
         sPryx2RnDklBuAX40gDBRe/cDdpJZPEztbuMBeFUjptJgOx28UkT+3ZPfnB5nSq1cBFp
         TV86pcXd3uocLSEoHQkCy7a7gIEeGnJ0pS6jf3WOTBuxOi7uphzT4kfnxmjwDYJ5lXkW
         oDpghDvdW7sCBmnbtKbHA2O8Yl1t6Rb+s3i9nUWAOX5v51jEpo3oQIGZ3JUsc0KgK6qB
         u4KkSqEWi2I+OWTn6odvVgSV4Xut2Ho7N0uXxTCEQLoGNO0Tjl5zSgMFeYQyZuPoLMh7
         pxiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=1cR5COM/+pOdNnydEjM7NRDoZ9T9/JuVqL4OFvHMwug=;
        b=t4zqCiTUNPdWofZwCRX2x/XN3ljFZizBbW5ZJLQpQTBe8K3myGtXb96320Qxg6FUs1
         XSHK4XTXmTaBNTtt1CmmBxBGgtAUxL94tc+Ky77srNMMI5DpZC4ViS7pAD94wz/kQXa/
         w2tShVsXT2RPL0qO9gsHNOkSrUCqHr5fQa50KjzbZTcXgQB0dF+Ah47rwnZydFIZMMCV
         qVJS8Rwa1E7IuAoMCkDPNR0TD+bdTlzaSyEgUloIDdMRE26YeT2YNg9gm+8BHfQ4eqiy
         wGRb/4yUN7aaAYiHcz6VCd4J32CWRKSLpWIAUyrVUmDGwrJ0V0Fw4+hP+m9pGYnqjepm
         JEWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVN64zaL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1cR5COM/+pOdNnydEjM7NRDoZ9T9/JuVqL4OFvHMwug=;
        b=T0zPIv8ayfQl3z63IlTyFv23RSRAyYvZdjGTSjyTOgdwAF3oiSJa8ck1pE8lKxWgzB
         xoLdQq7Zty4+jsyt/wuBhEf1xH2hXphMCJUSRtdR+7ifpmIEIc5EMgSuwv2EUMETsnOq
         5wlxIzwCd8Kowx0fi0q3JQi+mypX5yOnjuaSU+hJh+Jkdq/L0Zvgkaxfx6ZmVK1CJ2wO
         EnaZ0bq9K8cyNYuog3aqxchKoFbeAuDCs1+6mQajZNX+4sfz6Zz948BBX/IJtb3+ZokM
         AsgixRQGz7aNAk4BAhF1Oh3ukiTKq0YWFCLXcpNkFIVRJB/0QjNTxovBgU26mYj+9K75
         kP7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1cR5COM/+pOdNnydEjM7NRDoZ9T9/JuVqL4OFvHMwug=;
        b=KS5pe+BgyEOwm7qXaR7JTt+6DlyLvgzSEFRyOn9RM87PmWaTUpTmaRloyxT/FEns+l
         tdgthH8ebquKL/vOxOx7yGRiimsQQo19vdwrtI46YnerMeZx2uVGduKuRccboywMa1TM
         d4j12+Z9twKKNdIaxerQhScZuJrgQ6YiooiYZrv39qpSmydh/u7U6DMlM7QQs0mf3aeO
         uEKufHYpbpxjVYCHCeNRT4q3+s4uC7Q09dWMyPdZH/Y2iTbCNX7FGoO40HkwQpBdlK4E
         +RGd8uRy1T+KPjHo0wSCx8xLBA+DWItC0f0i4rdzI+eY56J9Dng36RtvYDzNJYYBvTc6
         o0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1cR5COM/+pOdNnydEjM7NRDoZ9T9/JuVqL4OFvHMwug=;
        b=F2X7EfKaLmFBPKGLS5GkctRKcpowqlHjP8YE8dVnst5EmELfjSxNi9XW7g7HEx3tKo
         vBREj3XayqE0Ww2hRCVuAjGbgOxI6COqCr4RjdkW8KmgRLfsHlBeCF+6A4xlPjZYQMx4
         VJRqSUFWcdzc90DhcGK6esLjhqkYr5yyea5Eto6Fdf7IiRWwf4Z9QYNbT7ffCO4Tl5Z+
         rgxP5Z9++7bqmoB6tAuvjRsOCrj4BCObMeyhFwjWcxCEGg0chRoZqzT41+TJB4+72xyO
         Od22Jt5Omj/vfqPwjWqCqZM3Ye0rkqIl6to1AvCOhekx2JtzJsC5xYrqkhcuKAvJiI9+
         3yRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HFyNbSYYm1r+3l1Ahk+OgL2ywiLGcqCH0xFyVRpehT9zsoizE
	KyH7auqcl1qImFuj7Vv+U8g=
X-Google-Smtp-Source: ABdhPJwO8/7aBgRVk83XNQ29Vwg6PMrCVgEvZ39DFaMvZQJc6PR4GY8iLPQjWTt79qxuVU3piG7kqw==
X-Received: by 2002:a05:6e02:12a2:: with SMTP id f2mr6844479ilr.43.1599203654871;
        Fri, 04 Sep 2020 00:14:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9b0b:: with SMTP id j11ls1455131iok.2.gmail; Fri, 04 Sep
 2020 00:14:14 -0700 (PDT)
X-Received: by 2002:a6b:2c44:: with SMTP id s65mr6383404ios.185.1599203654467;
        Fri, 04 Sep 2020 00:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599203654; cv=none;
        d=google.com; s=arc-20160816;
        b=TIwXEbuhQDoJai+viN1Ps2KxUcX0Kla+aM7kF4ca+cTLyVhwnT6e5w75xUqQIOqeEz
         L75tT5tZiCE3a00/Lx91dROPU3ICKYOyQdsdYm5mA1PXH4aqSzaJips4grYnCcYKtgJJ
         HL40TUyh2lpxJXZY73Cw1DT/9fKM5BAJBgFa59zM9Ph4IHhH8MY8M7smR67eOgb48gF2
         9dV7M0qiqfCY7/944otpQyM8hsuqMsqR2NEVhErAQEYoKzZrCNMN+ZVv904XwmUXbNA5
         3Fb0vtRJPZfrnSjQ3xCAjeFDhXy532g4L7BMAAi0yjCYG6mzTPVe1p5nlDX4SFkOathJ
         QT0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GSiu7q5INNKgwni6kCKdhOc96uZE70+2Wp8nmvDrTrM=;
        b=FcbggBdmYheYME3MKivfybWY7IY0xativWyixJAWvbB+fBwOsRDDiugRiUvM1J95GZ
         Aoyo3cc4DKJlPdDxakLuXlClfYwRY+4Ju9jZHsWStpel9ONqDeRU8hefus2Bz5M9sZRn
         RF67blK1xQ3UIIFn+jPK+Jt8fjye2YPtdHcEvl32nrLLcWJ3tuLBmnbfpzf/Eex7twxB
         UGUTCLD4RHrkn018A3ga0i5I1NIsR+xGU9yQRyy1T/IPIga5uuGb7W9E0NdR6rv+eKDz
         UFuTHbJo/ClpAd5GTdlGuPgWM7ds9omdF3pCj1s5xr5EQA32N4ZSp/fAZFa2qd8tBXyg
         VN/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVN64zaL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id n1si327207iom.0.2020.09.04.00.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id e5so3933970qth.5
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 00:14:14 -0700 (PDT)
X-Received: by 2002:aed:2c63:: with SMTP id f90mr7360733qtd.262.1599203653880;
        Fri, 04 Sep 2020 00:14:13 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 202sm2202325qkg.56.2020.09.04.00.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 00:14:12 -0700 (PDT)
Date: Fri, 4 Sep 2020 00:14:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 01/28] x86/boot/compressed: Disable relocation
 relaxation
Message-ID: <20200904071411.GA1712031@ubuntu-n2-xlarge-x86>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-2-samitolvanen@google.com>
 <202009031444.F2ECA89E@keescook>
 <20200903234215.GA106172@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903234215.GA106172@rani.riverdale.lan>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pVN64zaL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 03, 2020 at 07:42:15PM -0400, Arvind Sankar wrote:
> On Thu, Sep 03, 2020 at 02:44:41PM -0700, Kees Cook wrote:
> > On Thu, Sep 03, 2020 at 01:30:26PM -0700, Sami Tolvanen wrote:
> > > From: Arvind Sankar <nivedita@alum.mit.edu>
> > > 
> > > Patch series [4] is a solution to allow the compressed kernel to be
> > > linked with -pie unconditionally, but even if merged is unlikely to be
> > > backported. As a simple solution that can be applied to stable as well,
> > > prevent the assembler from generating the relaxed relocation types using
> > > the -mrelax-relocations=no option. For ease of backporting, do this
> > > unconditionally.
> > > 
> > > [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> > > [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> > > [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> > > [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> > > [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
> > > 
> > > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > 
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > 
> > -- 
> > Kees Cook
> 
> Note that since [4] is now in tip, assuming it doesn't get dropped for
> some reason, this patch isn't necessary unless you need to backport this
> LTO series to 5.9 or below.
> 
> Thanks.

It is still necessary for tip of tree LLVM to work properly
(specifically clang and ld.lld) regardless of whether or not LTO is
used.

[4] also fixes it but I don't think it can be backported to stable so it
would still be nice to get it picked up so that it can be sent back
there. We have been carrying it in our CI for a decent amount of time...

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200904071411.GA1712031%40ubuntu-n2-xlarge-x86.
