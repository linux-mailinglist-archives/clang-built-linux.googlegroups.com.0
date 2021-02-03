Return-Path: <clang-built-linux+bncBDV37XP3XYDRBB6Y5KAAMGQEEHL32JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id DF72430DC05
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 14:58:32 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id e12sf10771484plh.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 05:58:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612360711; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bl/cC8JWdERiYJjSMHvuVGY6TQLlMrxZ9vmHmpNjn9LdlXat7nDfipQqZS5+C+3+iQ
         EuCfti9qzwu6Q4eQsBCheIXEruzkVb5xxvRRq0GKllKmpch+I50Sk4wp6HLHM+h+GyEf
         K2HgajaBjDveiWyRyGSsploBy4YCAk9AoCmv9yQbc9eYHmyPHjhbIdBSTZ7sBRsjkO48
         bVZs/sbS4rLDqtLaxPWJRMCFRSt5Nl4Ovx3/Pc3U42WFBfOi8AGzhsyULuuZaGt9Y43N
         qYYigcSvP7+lFUydbsVXAetf4yD4yGfXzeSBPm2RS4xLilzycwJTEv12ZC4wq+eqs5pW
         QA1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dqrlN1Na+MH8nGf6q9Pv0IQSYUJuzXvZ7HLnF+sDfgY=;
        b=KHCdKEdmwbMvJdxgEAfJKQ1aZhl5zvqAQHXd45IBl4h22+kAMsVmfFJzbXr1cvqi2x
         6nYcXnoZFqjXpqzDL95Tudc9UgooYO7qr9rMpDOqXIfCnwRV6Zs7znq3USkXK3woZ8HU
         J9LlGPfPc7jL3QvFOcHS9U2r96Sziblj9aGcNkDNHhxpvHFJW6YGmme8AC0JvkrGLPKz
         jxLj1Rf1gLBpEmyXuqhThdd3Bva6uFb/BFEXZrVKctj9NlNC0N+MM4XxSQ0lh5zfBb/9
         WTx9eZXrkzhRHvAtv+KE6toBT+KWEYSCNM+4w8gZVapWqK6uH78qnsLWFphuec+oVKZq
         NzJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dqrlN1Na+MH8nGf6q9Pv0IQSYUJuzXvZ7HLnF+sDfgY=;
        b=azhItzP/7GvRR1exrPyvhTq8Zd4SRDBPxJZJrMzi+9O1bjz8llDk5FOLqkbVUPq1SZ
         GUgwG35p31t30wYVWCOAXI4aHKWe/HfCJm50yy1YAU48cTuSAzZJJo/Ag8PUIa3AvmlE
         UNdz/mW8mJ71dAuNk5sCP1rBwrRjU8Ll9CNGiY91RoKQqLotc/4lQeikrUHEe5HrfNes
         THI+ZcTdi9Uli0PZxSs25v/8dLYCLS+7chxSq31VnUhy9LpzRW4987KIqZYbjpMkAGo8
         7TmzhbDFUfO5wYq1czG2Sbcld1/ATkiA7WRXvNJz/izAL92jWsgQFWge3jzTjxNRyRgE
         pPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dqrlN1Na+MH8nGf6q9Pv0IQSYUJuzXvZ7HLnF+sDfgY=;
        b=OejEc6IWAF8bgSOLEpl4Ec7dwTMfg8YTsFYr5ANgeUavrAdl+pRlN/odKn/W1w4A8R
         QB8akl40FRR0v8o1uH+iZ8uIOH3+JU8FOutZyPuiB/QO8b/kZ3qqIv/sXZmT0CQ6RHLO
         GLTwCvksm0uCQVHQCOM0ue7T33I31zw2kaeIVxPyvl4pZlthMFA6gv+TVRdJf0ukDULW
         wgp+elNtGSPF5GJeN4sk+J8SNdW1OfxdY4ObtmKNfepnDLfAxAVN14aSQbRNJ18ejDjl
         S5eRXy6+Q8lpOR/wljvDLp7OCxTBiE9E0/3jA3daF4B34+aAyiBLCHz5AJ64rYhPJqxU
         +fRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Wo3v9DYP7ndEYuUMqN2gmtFRjrwtUVaU1VHjsFeZz8xppP0Ts
	ANi5Mp0F5gHzp2UlRU7+ZJg=
X-Google-Smtp-Source: ABdhPJw8np5xgq7Wv8Ap6JAciZhnRw1wOOTAiFcMaKSln/Ox+9S5Tm6XU7YbXw4aftKtkJ32/04CbA==
X-Received: by 2002:a63:1a44:: with SMTP id a4mr3716894pgm.41.1612360711300;
        Wed, 03 Feb 2021 05:58:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b8f:: with SMTP id lr15ls1147941pjb.3.gmail; Wed,
 03 Feb 2021 05:58:30 -0800 (PST)
X-Received: by 2002:a17:90a:5d87:: with SMTP id t7mr3053946pji.175.1612360710553;
        Wed, 03 Feb 2021 05:58:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612360710; cv=none;
        d=google.com; s=arc-20160816;
        b=n8mcaGdMx0tQS947Y0vayTfvqVGcn26vbr5R4gst+c3mcvh9PixQO2f89EdpGMh+Iv
         ffTbcymDqj+NkDxUiAYlFv0X9oUPbKfj2oYngTPXGYpMj+Y/dS779cjGpW3EBekepHzA
         CQBgtwk4v74YR0R090MemhqqOYuaS2JmZ99mgsbpe6w+OO4EpSnMEZx2fMsCjq2G++4O
         7Jx0hHpA0oTmZ6Ys90pTlH2Q6YGI8fGeuhY8CNnXdP1pcEMwzbDuOjV0FeJ5eM0cOpym
         Pg+AVV4UXaLtXmoxQ7HA/IOSogdejtS4aCHVzZylRRz5J3w9uB2d2tDS7Dn46utPiErJ
         y0eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7jcKuKJSg8pciK4+g71J2hYJ9Bmr1dnzsU3M2uRFs70=;
        b=RH378+I5gOZSvUbGQn/In64VgAyar6Es95Wg/PhMCLE8S/HpCSYFuK05FUwO+Qgv9p
         GyF3EnsGyTlScazMU63g5Wt2sWKwlc3/JmO62Z65enRWpujAAtBshVz40fQiMrfRZVKS
         PgqEKzFnOyhtGB7Lz4sAmi0oHf+/clJNNHY+CAe+lS1lrM694lkW+Z4HRAgDQ/mc3T+/
         bYQRIdrUU15nA77tj1ct6FZcV0+Xs+2Zznk5O+hL00VPkrsgdj6OEspE9dCwfSULhw9f
         P0swBArY8NPcV7Z8X2tM/JVvwV/LTxPia43OC5jNhRpmuutaMy0FxZOuV0806cj2LWL2
         8HHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b189si75103pfg.5.2021.02.03.05.58.30
        for <clang-built-linux@googlegroups.com>;
        Wed, 03 Feb 2021 05:58:30 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8148F13D5;
	Wed,  3 Feb 2021 05:58:29 -0800 (PST)
Received: from C02TD0UTHF1T.local (unknown [10.57.11.206])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A40443F73B;
	Wed,  3 Feb 2021 05:58:25 -0800 (PST)
Date: Wed, 3 Feb 2021 13:58:22 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Julien Thierry <jthierry@redhat.com>,
	Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Bill Wendling <morbo@google.com>, swine@google.com,
	yonghyun@google.com
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210203135822.GN55896@C02TD0UTHF1T.local>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
 <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
 <20210203001414.idjrcrki7wmhndre@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210203001414.idjrcrki7wmhndre@treble>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Tue, Feb 02, 2021 at 06:14:14PM -0600, Josh Poimboeuf wrote:
> On Tue, Feb 02, 2021 at 03:01:22PM -0800, Nick Desaulniers wrote:
> > > >> Thus far we've been able to successfully reverse engineer it on x86,
> > > >> though it hasn't been easy.
> > > >>
> > > >> There were some particulars for arm64 which made doing so impossible.
> > > >> (I don't remember the details.)
> > >
> > > The main issue is that the tables for arm64 have more indirection than x86.
> > 
> > I wonder if PAC or BTI also make this slightly more complex?  PAC at
> > least has implications for unwinders, IIUC.
> 
> What is PAC/BTI?

PAC is "Pointer Authentication Codes". The gist is that we munge some
bits in pointers when they get stored in memory (called "signing"), and
undo that with a check (called "authentication") when reading from
memory, in order to detect unexpected modification. There's some new
instructions that may exist in function prologues and epilogues, etc.

There's a basic introduction at:

https://events.static.linuxfound.org/sites/events/files/slides/slides_23.pdf
https://www.kernel.org/doc/html/latest/arm64/pointer-authentication.html

Return address signing/authentication uses the SP as an input, so
without knowing the SP something was signed against it's not possible to
alter it reliably (or to check it). The arm64 unwinder ignores the PAC
bits, and ftrace uses patchable-function-entry so that we don't have to
do anything special to manipulate the return address.

Today the ABI used by the kernel doesn't mess with the pointers used in
jump tables, but that may come in future as toolchain folk are working
to define an ABI that might.

BTI is "Branch Target Identification", which is a bit like CET's
indirect branch tracking -- indirect branches need to land on a specific
instruction, or they'll raise an exception.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203135822.GN55896%40C02TD0UTHF1T.local.
