Return-Path: <clang-built-linux+bncBD4LX4523YGBBOPLX3VQKGQEODI57QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D45BA834F
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 15:01:47 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id z7sf11770283plo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 06:01:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567602106; cv=pass;
        d=google.com; s=arc-20160816;
        b=iinKxIWYxdp4v21BpnZCTCuriXF8CSGvFIzC0ZkVP2Gs4oe8A/2a6qc1G7KNmrFlaH
         +7nzRysI7i7GqAK+cld/Gh6LUl8/a0y605L1n2vx3u1xmlmfPOE4rbr1MP0sUPrYXOoz
         zTEp5gx3qRj5XHBvqV54oMEJyWH3Z8Xfa/iPSDpF8aFAyXNReXbIvAaO0zqLI+vMvw5X
         chpHhRWegJNw910p6k43o7mf41T+Egalk3FFbjg4poXSz/RRfj3osdTwKx/6JNL3uOoc
         qsP8RGAeRa6edT0Q7tZA75WJB1RLKGqC1ZIiazjtTax6dzRmk1tRE67GCk/vWvl7B9D0
         bQOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CBDwyirz42kRcZbWj0OCSQztuba1aUrqSVJZyVVOaWo=;
        b=cd/ZsI3Xnh8ikukFJ7vt9/rP/YUhTuackknKVVlrnovtn/ZyStYVewWzagAQF+0r7g
         vioj4W2KmFn4B1d2qo7UWAGwxU6NKpLiRn0LGHZ0eYGmHz0aEk/SRAPxCggcHBY5oBUb
         TWkxsIOJYrGF6ekjms0yedFiBt0kG3KF0P3uY6LU01un4C6/7QHMNgMwUJuYXFvIh1Uy
         m4TYgJsbNrGKofv9Lq/KlDyh9BfwB2ksGsbgq8OEFH26aiorXYO3n6Bzd03CLl+HMcyg
         UpTh3xQeeKSs2svuftXmF17Ne+NOVSct1flzVK01o2j0AG+KrAE5SuOnshkX8ZL3uhNX
         5eeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CBDwyirz42kRcZbWj0OCSQztuba1aUrqSVJZyVVOaWo=;
        b=I0lUfmj6yKi6Xwa2ZohsUVz4VvaoaADqb3uA2Inr+ZqCTLlv31CPa5EDI5fZ3rxakS
         p7BhqYwSz+g9/a+S8Ht4jNFZFkf7sj+WhIlMwj7mVeGyUNx15KgyMAFy5jyImyT0U7wC
         8Ah6F/I5tnrEvMNp6KIaqJYswPI/k0v1OLjvohrCUg5zX7PQ+zk4MMKRR3U6cK1uX00m
         lM2qqgNUW7g77mgB5f/cBcTOu8WITHlb3RzIDgnXgcy8V2QFZSYhblwztqn/oLolS+Hg
         rLEuzEMCZX/B4oWomGgw3KyAHjZu6dEgEznJh0OHHWK3qbJQdCuJMCXduZJVIQ4uPJOk
         xYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CBDwyirz42kRcZbWj0OCSQztuba1aUrqSVJZyVVOaWo=;
        b=FZ8eumSQhucvLfL1S0xE4x0Z8adGOuiJAXg9sIrTKimNzfi4UWR3AEueLSkA1Q2gWu
         bUKDIrXP4Oi7XITZh40j0rEVMSrjeyWJ2jmQmoWdv8Tb+/kPci3DSWbGybn1rQxBPObr
         HiEbo0683YmcAEexTTffCc/y91S4bvgRx0GbY+a7wcVSAejRBSRAPbNixOpRh1upD8J/
         Cxr+wzuni34kaipwll8NunMunwjjdeGE1HcScEuhE1/wDPtf+Een+NF6LtGZWZ9f7R1P
         GEHUKE+xw2eEXsLCAMo2tJpm8+QYru78zEA5Cc39Gjpf7AtlHUq+d7+xLq9fO7V4u8mK
         Byvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWCxVi98i19SjSvmHnI7az8kjeORAObhkXYES0W4O7T2Dw6v7OB
	Gj3K/aDi/NTATrMzYGgnk+8=
X-Google-Smtp-Source: APXvYqwq/B2GSoMHxlE6QHSRjV3hJA0j8lDXtf/sRwxD1hostaE3OX2SrCL+9OCLlH11fsvY11FQ7g==
X-Received: by 2002:a63:c442:: with SMTP id m2mr35890132pgg.286.1567602106084;
        Wed, 04 Sep 2019 06:01:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a410:: with SMTP id p16ls599511plq.1.gmail; Wed, 04
 Sep 2019 06:01:45 -0700 (PDT)
X-Received: by 2002:a17:902:7449:: with SMTP id e9mr39370760plt.242.1567602105708;
        Wed, 04 Sep 2019 06:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567602105; cv=none;
        d=google.com; s=arc-20160816;
        b=hrIYAE4mzC7o39mgps7nZ4Ya/V1UovDoT3vzb6Sm64cAXd76fQBrR9CQKl3Aq8V2JG
         FBJR7Ydibn/Cd1bUH7HBUctQstq8xPeUisxeAYhbkqcQAJEbtCCus4bPSZGK6vDiQvga
         WA1j6DJ1wG+mwgouOUjMyeL9MD8k7bvF9mcNVorWQOHSQHnYgyKKUgJFtFuMwSz7503y
         7XHgHF6VUk2HoRIrYjOTqI9resZdtpRHnB3G8eV98oEwZq/2IRicEYwOiPPNMFnLlASD
         CXAA+fRoCLb2etXIV6DoNihwyTXgLWjJ/eQ2Qlu9QWgA4YVjsrDo+7s8L0PjELF3eKsZ
         fBVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vWzsGllh6hjalw+dsDZ42wmsiI/1GMOJEaABhXQ5rDM=;
        b=tCt2nnRA7QXvt+hm0b6Mb4oAZwWSOSIKyrIz24c+rTrTAKsaMoTY1B8UQir4r01i4W
         DMICZ0oaL23zRZ9giYr0r6kLSu7j66paIH1ZFSHNlCKkCTXi+vw9PhyuBAI8L+aFpa2h
         l9bvojXnTvW/bjGz74Qff7J+d+8TPGcImusVqQbN5wsYyS/7CMWyG9mULV1qT4gZry0J
         Y/wI1ueqgoP/By+nXBDZMxoEHw/ue+JPGRH4IW6CF6OKDxDo9mihTeDp3olRaI1jHGE1
         yBQ5xDjVQnQ+jk5bt8TpfLvj2gQvVr3k7L5wWD0Rb3JnnhOT2sxTcv/5ep0lwkPPTCQB
         D4aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id a18si49005pjo.1.2019.09.04.06.01.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 04 Sep 2019 06:01:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x84D1aT1025468;
	Wed, 4 Sep 2019 08:01:36 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x84D1ZS7025467;
	Wed, 4 Sep 2019 08:01:35 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 4 Sep 2019 08:01:35 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: David Laight <David.Laight@aculab.com>
Cc: "'Nathan Chancellor'" <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "# 3.4.x" <stable@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190904130135.GN9749@gate.crashing.org>
References: <20190812023214.107817-1-natechancellor@gmail.com> <878srdv206.fsf@mpe.ellerman.id.au> <20190828175322.GA121833@archlinux-threadripper> <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com> <20190828184529.GC127646@archlinux-threadripper> <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com> <20190903055553.GC60296@archlinux-threadripper> <20190903193128.GC9749@gate.crashing.org> <20190904002401.GA70635@archlinux-threadripper> <1bcd7086f3d24dfa82eec03980f30fbc@AcuMS.aculab.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1bcd7086f3d24dfa82eec03980f30fbc@AcuMS.aculab.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Wed, Sep 04, 2019 at 08:16:45AM +0000, David Laight wrote:
> From: Nathan Chancellor [mailto:natechancellor@gmail.com]
> > Fair enough so I guess we are back to just outright disabling the
> > warning.
> 
> Just disabling the warning won't stop the compiler generating code
> that breaks a 'user' implementation of setjmp().

Yeah.  I have a patch (will send in an hour or so) that enables the
"returns_twice" attribute for setjmp (in <asm/setjmp.h>).  In testing
(with GCC trunk) it showed no difference in code generation, but
better save than sorry.

It also sets "noreturn" on longjmp, and that *does* help, it saves a
hundred insns or so (all in xmon, no surprise there).

I don't think this will make LLVM shut up about this though.  And
technically it is right: the C standard does say that in hosted mode
setjmp is a reserved name and you need to include <setjmp.h> to access
it (not <asm/setjmp.h>).

So why is the kernel compiled as hosted?  Does adding -ffreestanding
hurt anything?  Is that actually supported on LLVM, on all relevant
versions of it?  Does it shut up the warning there (if not, that would
be an LLVM bug)?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904130135.GN9749%40gate.crashing.org.
