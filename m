Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKUR577AKGQEAK537JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0C52DDA8D
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 22:07:55 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id l185sf246120oig.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 13:07:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608239275; cv=pass;
        d=google.com; s=arc-20160816;
        b=CEoRgphtj5b2z7IjUmSPvQQ5G5kvXd0LsPPSTU20SLsFN0vTocdiX7GvbZC7AxMHm4
         cgqto3Ajm6hUCU9B04J9gc83bophycsmNQvNj/eeTAVkg9h6SMaloZLVLCpWgSV3oz8r
         wA6EI8P5Qvn0Fkn2Uhj3phwCrEIbQwVx0xms1mJFMp8gMsT3r9trJXFeftXRYVnH7yPV
         kvlfFiZVhYKq4m1jpe9dG2ac2bB/8f+CS34RFRFj6ZI0OeBAhxY7i2+/s/cgcX+1uxBB
         0YF3BGY/WKvUj4GpwniQm4y5vtI+Z62n54vYx4rmLfS4GuSyB+HdQOcNP3yZeYj962tY
         jVkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K3rzwoJOnaTEhbRH4GL4awPItPNrpCnszjC0lJtfgvA=;
        b=MsP+TC32eNH3E+ifXpHjeC3lV8UxdwQ3sLZznU8xi5vkuJlcUnaZq3sLdGuNswvC+L
         Nb2k0WvBfQxn3++Mra1POO69lvthDkzIoDQ8FIlsSVwj8ZBHcqwYM1xfozrZIVFHpv8v
         fqN/NNRgYnq7H/N5ugzOgmeKYfJvlzqBBnG6GZHEX1u8klceyWABPdhxkENSB+zZEkGk
         j6Irf11QiXqhQXd6Qa+LJiO/+/pFUOF5GiBYXRkfTEWlJpBHPBHC6ckfEKqDb3ItbVMF
         nuckSfHAMbpoVinEMFnG755W1Hn+f/JEnsNC+VQS1GyraJ7CVxONAGhKqH4G5m/n12yz
         oU1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uyu8VTEG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3rzwoJOnaTEhbRH4GL4awPItPNrpCnszjC0lJtfgvA=;
        b=l4wfb3BgsQBxhNripQV6DT+OqGlIsOzjFDRGdDVRXui/WjwALpTeQsb/+IP5cOIcvc
         IWu69k8Ku8citcPYPM+b3RfCa+bQNj6YslDYcXsEPdRxbMh3RCyb+SPM93pAYHrBCOGX
         iqhbVHAYHaGlzqUF+lz3IvLY+y3/0qzV/zyl1bzEDm7OEN5I/Pc8pLCVhVvK2Kp+QOs0
         3rHJm5k/PxPZ2UEgHkkLQCjU6vBaYMXGf3ouDzvlol6rDi3OfIaJtUCLqSihZ11fZXiA
         t3lz7U/EX5j7W8d2mIKlcOIUyDwjmC9JSHFPi1WCrn0K8rY7HSsfG29r3zgPValZe0HG
         ADZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3rzwoJOnaTEhbRH4GL4awPItPNrpCnszjC0lJtfgvA=;
        b=GKma81lLkWON1ONeqRRAtYZAV+2g4Cp1cyvySxNhD6uZGwY0vINoAWJ/LSCBEQNLIQ
         geXI1qLOviw2nhr1/In5eco2jVdrQPgslboCLQTT8j+R9pJuv0BUASjv58HJcikRQ+Fk
         UqPWafMSS6Mzh+2Ba+NCQZSnma1Ri8nvjzUYUULjkPpJkNUf7LBKwhhsk2npJqlURPcS
         CqsB46REq930c9Xrd9C8RxDez1U9Yr/e8RV8zgRFZOtXKQGZC36yb56GmsMKhLwtUAsq
         zrbmSLj1bH6G5Z7XjJK5BbYr26H7djU4ajK+hoq5P8mlAplDmBtcvVfUB/R8VsBxkjXD
         bkuw==
X-Gm-Message-State: AOAM532ezcLhMO1wwf9xqa4cGbYFagAVW37SlaA+Pj/Z4Qu6tZnMKdI5
	eXY2VSLIOYtH6/UEBleuHt8=
X-Google-Smtp-Source: ABdhPJyNGziG2+wyIF508HNzJ8rW7/S3KctYxRvceqKv5SEmUYnuBVEMpkcVXBzX5pQie1ISpXszkA==
X-Received: by 2002:a9d:664f:: with SMTP id q15mr643799otm.40.1608239274794;
        Thu, 17 Dec 2020 13:07:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls1627901oic.4.gmail; Thu, 17
 Dec 2020 13:07:54 -0800 (PST)
X-Received: by 2002:aca:d54a:: with SMTP id m71mr794230oig.30.1608239274414;
        Thu, 17 Dec 2020 13:07:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608239274; cv=none;
        d=google.com; s=arc-20160816;
        b=cHkrnmAHafEBnJU6rssYl2dflf7o0R75W3xo2SB3XEDJbjuy/OSOO9hJsOmUtm45Dn
         xbScacTY6TdBIjXo89x6bfR/2AWsip2Xd7i+3jKQ72xKv6exkat4RZrwfBvdQDEjcF8T
         CNwUCR22W6C4NmMeBL3kxiNThnmfd6+GtB2vM/nuuD0JKl3u9QyP+i9kuwp7ggg28xTD
         FNG47OhQT6tCBDpDWblHHeDxDlfFANRsprvfcE+MdIxmeuuB/wbcdzDE6QHrBqcWH6vA
         4IsdDwx5Q8M1FiEmYgz3q05B3oyh0yDubQFzxUXTYqPVrNEXQjYSmbdisfguDPsioUL0
         cw3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pn64gL1PFy3T6aEaSewOwhAXHuHI8RuWQ88aIPK+DJ0=;
        b=nXKZw37vVkGomB178Skd3FrgwDVet78LR6fBEjc8BkymBen/u4GqgGyh1LWarsUehO
         WDwlJ0IOjRsMBXGJ+7UUIiUCdzGv/7daP2Se00b3kNdQHIlyo2mQ88gsXEbNPAl8IJuI
         biRUVL0rmTxhvbXxMWS6T6aDtN6tg5M/raUNaycirIk6A/PAkOM8WZmS/bcad07EQXr7
         ZB/EYfkN/sco/EiomZEWTvN8ugmEWtpjzv712SUUSJgFr741kvXQLZD0cAq24wA+dtg4
         /idcO3MOvR5Mb+nY8Y0aw9a91sQBj4PbelFfgFhHBwhCodj8aNJulzWeZ9+NNyKtrp1E
         QK8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uyu8VTEG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id c18si492968oib.5.2020.12.17.13.07.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 13:07:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id g18so21183771pgk.1
        for <clang-built-linux@googlegroups.com>; Thu, 17 Dec 2020 13:07:54 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr1079220pgr.263.1608239273686;
 Thu, 17 Dec 2020 13:07:53 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_+kPR9XQ@mail.gmail.com>
 <20201217004051.1247544-1-ndesaulniers@google.com> <20201217120118.GC17544@willie-the-truck>
In-Reply-To: <20201217120118.GC17544@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 17 Dec 2020 13:07:41 -0800
Message-ID: <CAKwvOd=LZHzR11kuhT2EjFnUdFwu5hQmxiwqeLB2sKC0hWFY=g@mail.gmail.com>
Subject: Re: [PATCH] arm64: link with -z norelro for LLD or aarch64-elf
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team <kernel-team@android.com>, 
	Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Quentin Perret <qperret@google.com>, Alan Modra <amodra@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uyu8VTEG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Dec 17, 2020 at 4:01 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Dec 16, 2020 at 04:40:51PM -0800, Nick Desaulniers wrote:
> > With newer GNU binutils, linking with BFD produces warnings for vmlinux:
> > aarch64-linux-gnu-ld: warning: -z norelro ignored
> >
> Given that, prior to 3b92fa7485eb, we used to pass '-z norelro' if
> CONFIG_RELOCATABLE then was this already broken with the ELF toolchain?

Yes, though it would have been hard to foresee the change to BFD ~6
months later.

Specifically, binutils-gdb
commit 5fd104addfddb ("Emit a warning when -z relro is unsupported")
was committed Fri Jun 19 09:50:20 2020 +0930. The first git tag that
describes this commit was binutils-2_35 which was tagged Fri Jul 24
11:05:23 2020 +0100.

I noticed about a month ago that the version of
binutils-aarch64-linux-gnu installed on my gLinux workstation had auto
updated to version 2.35.1; I was authoring kernel patches for DWARF v5
support, which relied on 2.35 for DWARF v5 assembler support.  I
suspect Quentin's host was auto updated as well, at which point he
noticed and mentioned to me since I had touched `-z norelro` last.

But if we look at
commit 3bbd3db86470 ("arm64: relocatable: fix inconsistencies in
linker script and options")
which was committed at Tue Dec 4 12:48:25 2018 +0000, it was not
possible to foresee that binutils-gdb would change to produce such a
warning for such an emulation mode.

So I'm not sure whether my patch should either:
- have a fixes tag for just the latest commit that touched anything
related to `-z norelro`, mine, 3b92fa7485eb.
- have an additional fixes tag for 3bbd3db86470 which first introduced
`-z norelro`.
- have no fixes tag

I'll respin a v2 folding in Ard's suggestions.  Meanwhile, I've filed:
- https://bugs.llvm.org/show_bug.cgi?id=48549 against LLD
- https://sourceware.org/bugzilla/show_bug.cgi?id=27093 against BFD
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DLZHzR11kuhT2EjFnUdFwu5hQmxiwqeLB2sKC0hWFY%3Dg%40mail.gmail.com.
