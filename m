Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPXPXXVAKGQEMSMU4VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0A888F09
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 04:04:46 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id v7sf48642517wrt.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 19:04:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565489086; cv=pass;
        d=google.com; s=arc-20160816;
        b=kr6G7WK3i1vjhob3HZ4+shC/Xv5nwAME90x+F/Znbqk9bb09r1z2djJQwQkRwim94D
         B8BU6ZEs6iP/4flBiofTxIaBlUOn6wOqFYAexCcwkTt0PYFNj/+Q6lJJCWFbQ60b2T2T
         neWQaowGyfEJ1I1FGWXda063zFedSTZqMMAg5dSWpCBVZaAmV1QdBxyK95L411vzjXi1
         wDggVPHpIRZLt9JyZ1iNcFb6VbJUKtUwhFxnYS4+HTUc4ayLb0CoqnM6GmUUJRIJBV6n
         dkGEUhg5kGd5VIs6+qFHyMJP9a+cu1TmdN319IfvcBVSLE+S3Ai6xb9cFeYvhi2/1gPr
         KctA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=DKK2SZHonegJ937EBKzkgDzI+VNy9EkKVhpgehSJkiY=;
        b=pMaM7WyBwb8mtzk4UuHJmKePV4Sh3GAbKF9srySYr5lY2b6BrQmk/UH9pz0pRC3s6E
         f/yRx4vMOjs0BSJGEkH3UgFbrvh1x3a1aAGoIG0ydVl6VMiuwg9QYzvXn8KtorzT3UXW
         EdRjZwmh8qxPU9TvGVqEKOrGyYXZfS+9v4b+Wf5L1R761/nCOJD6OYbigOxQX6Ob+8/H
         rNx15l0RWA4OtFJ0K6XAdhlPOxJSAh3rijM/EfPqohR3V5GLaOyPRHQyuXd83X60cHw6
         +8orkZhKvuwtiVcoFUU0bpioaWEeh9lGVQLU9/sHGkqxeUGZTncAbl4nEDwqTk9O4IgZ
         zF/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UnPKGYpx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DKK2SZHonegJ937EBKzkgDzI+VNy9EkKVhpgehSJkiY=;
        b=o0GBc2kcVGIbU1+L+5c2OQ1MRnpIN1o78qo9xm4xMLaDQ+id7GMxj/OEtEEAeABI8s
         8j2hJYVDNh8p2Jwj/g4hyJEqo1SCK2IQYmdHLzOnOE7hu107IDh+8nGA0D2wIXfARwKK
         NQjQTzjaBebIjqMmLRQZwzOWpimgaSWdGxvkWHrc8mgr1Rt2uB7sETTA14IYoS+Ihmh9
         Jc3EBwNW5RDZCfY4ci/5gFxzEi2chF34qh2XS82MhAKXCK63zhklTs9UOQSKgW1BrA17
         PVtpttAnA2c2r7rLPhDbz7nRHEjtO3MQ6/A/EKsryT1Hfzs0PM0OPdtzKLkdIn3+Ymyr
         braw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DKK2SZHonegJ937EBKzkgDzI+VNy9EkKVhpgehSJkiY=;
        b=oALRQLyPE7cM+HJXBhxfq3+jW/q/nQxd9B82A0/FqVKsi31LlZn2zQSVnWlK9jlOCV
         3Q+97rKyqo8YXWtmy53n1VeG9RUxcYk/iF1S9AG+KogUlnD2Eo1C0COMCDVOwIEwVRj9
         Da41nHxiTvb3vv3XiQ3FR86Ul6wnev5J8GqHR5xGOGCeY8zlGf/eSkcfmRb28BLbQ3IZ
         QuJ1IZz++ts8Dq5aE3d54q4eS4U0UrT8IyTlnekvixXTo8VJ/Mm9kw3c6zEuQveWqJCm
         b0UqCVOdyk71QYAbiFDe5CrKKPdb2+CSvXx6M+8TNkrask1LqmaeWw8oDrrPLcNgP08a
         W48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DKK2SZHonegJ937EBKzkgDzI+VNy9EkKVhpgehSJkiY=;
        b=VCg4kbwJio31FwJJ8oSZIu2hKJ/bAkHF/uoCQf+i97RG2q4Hvm1aEWeGFqwRDP2Fcw
         0uZRujQ018nC4ppCOL98Id24EY/QASfAkiwWVG+1LiWS1vLCoPvECbC640irPc3X1jiu
         fF2z05eIvpBGkMiEDwG688XcdD+YR+ZoGn1C1JHA2jqFYO+fXJ5gXGblhR1CckbE7jt7
         UNQlGVdKIo/9vbOX3EHAzD/A95xyBdnm56l7m7O5e2ROuqKsIJugBVbhTdc4oY6iwASf
         65PBZ2Mn2hqGxUeTzS/Q2ebBdpli7Ac+Uqkk27iDHO6f3BWVcm40DOToKjnlABYF7GmK
         aGEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYrvqFnWHDBMA70lyHz6ocdKui5Orph31+rC870HkSZDGekFJu
	YbePoXr/cnyXzRtfCMcj6ZE=
X-Google-Smtp-Source: APXvYqxkjIDxIWPdw7HzsPMj1lbl0kH87MEPT3q7ulZJ+t39RxQOD3FEGNxhp5XassAkx9Ds/S/Sbg==
X-Received: by 2002:adf:fe4f:: with SMTP id m15mr32529551wrs.36.1565489086159;
        Sat, 10 Aug 2019 19:04:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e744:: with SMTP id c4ls150326wrn.16.gmail; Sat, 10 Aug
 2019 19:04:45 -0700 (PDT)
X-Received: by 2002:a5d:4f8e:: with SMTP id d14mr808120wru.207.1565489085774;
        Sat, 10 Aug 2019 19:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565489085; cv=none;
        d=google.com; s=arc-20160816;
        b=GcMbVvAyx4rvd4KdWd6HpwdF00qRvFXtsL4cwQKIrnzvQyLftTDPXRrdavYkloFikz
         V4TWubiWDlb2iiSqoi0kxJUmX9sPv5KSt3t5U8awooA8TW+aAee1saanDeI72WFqwCsI
         OIqLGlkk3ZKgkFBvQ08yzIs0c4DqGKbf0/FEDwdlWheAPRk5POCUHVOO6baQrm5M68tY
         mCFlTSaaoML04rd7c0yy6C70OUf605HkykiqtRoCvpfonT8f2tpqLFrN3dvZbsyvRMHe
         v+cz8fEg40gUToTNuXvxexuPDDUE69iC0kbmbdBjKsECIpTAXDwCuiFGAR22qH3Dctsi
         6ZFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zhVdjHruZiQl0JBTlSzBUsJPhxHlp6YhNl0glgh5GWg=;
        b=KLBXBq35T9HMerDeKvEtADU1LlaKA908s12Ip1Pabi6S1IONbyQFnDn6KAOkm0wiaH
         Kk3J287746l6haJ4JMoD7Su2BrvHlNwUqPrLzXe3n4JUwenBoBHZpUUEGoRXcIwKKBJz
         fDj9hqPVu6FqrVcgtzqE71Gn5+oYVwQTOV8kcAra9rW6xA3aIHTXPRT2A0nJBTQUy8mW
         H+WdMl8vrVTMp6rlK1WTSAFoYOfl7mLT3g9NSbzL0d5fT0DCguTSAJWnmmgzMHP5ATaQ
         La7o25TJTX2utnPYY4C4gxflvTtQikvPNHKrIjJKKZv1E+K8Kf5xWBUbxgtgod3FYNNk
         9jyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UnPKGYpx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e7si399147wru.1.2019.08.10.19.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 19:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id l2so8883427wmg.0
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 19:04:45 -0700 (PDT)
X-Received: by 2002:a1c:c188:: with SMTP id r130mr18532943wmf.73.1565489085159;
        Sat, 10 Aug 2019 19:04:45 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f197sm1755333wme.22.2019.08.10.19.04.43
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 19:04:44 -0700 (PDT)
Date: Sat, 10 Aug 2019 19:04:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
Message-ID: <20190811020442.GA22736@archlinux-threadripper>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UnPKGYpx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Aug 10, 2019 at 01:18:22PM -0700, Joe Perches wrote:
> On Sat, 2019-08-10 at 12:44 -0700, Linus Torvalds wrote:
> > On Sat, Aug 10, 2019 at 12:32 PM Joe Perches <joe@perches.com> wrote:
> > > What does it take for this sort of patch to be applied by you?
> > 
> > The basic rule tends to be: "normal channels".
> []
> > I pulled from Gustavo earlier today to add a few more expected switch
> > fall-through's, I guess I can take this Makefile change directly.
> 
> Thanks. It's simple enough.
> 
> There are classes of patches generated by scripts that have
> no real mechanism to be applied today.
> 
> For instance: global coccinelle scripted changes to use stracpy
> https://lore.kernel.org/lkml/alpine.DEB.2.21.1907251747560.2494@hadrien/
> 
> and trivial scripted changes to MAINTAINERS
> https://lore.kernel.org/lkml/6482e6546dc328ec47b07dba9a78a9573ebb3e56.camel@perches.com/
> 
> that are basically impossible to be applied by anyone but you.
> 
> Otherwise there are hundreds of little micro patches most of
> which would not otherwise be applied.
> 
> There should be some process available to get these treewide
> or difficult to keep up-to-date and apply patches handled.
> 
> I believe these sorts of scripted patches should ideally
> be handled immediately before an RC1 so other trees can be 
> synchronized in the simplest way possible.
> 

Hi Joe,

On a tangential note, how are you planning on doing the fallthrough
comment to attribute conversion? The reason I ask is clang does not
support the comment annotations, meaning that when Nathan Huckleberry's
patch is applied to clang (which has been accepted [1]), we are going
to get slammed by the warnings. I just ran an x86 defconfig build at
296d05cb0d3c with his patch applied and I see 27673 instances of this
warning... (mostly coming from some header files so nothing crazy but it
will be super noisy).

If you have something to share like a script or patch, I'd be happy to
test it locally.

[1]: https://reviews.llvm.org/D64838

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190811020442.GA22736%40archlinux-threadripper.
