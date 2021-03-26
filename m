Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB6XT6SBAMGQEB3O3BJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 443C3349EBC
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 02:33:47 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id e2sf3967156otk.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 18:33:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616722426; cv=pass;
        d=google.com; s=arc-20160816;
        b=Va5ke6TPXWgJ45JM4+J8t//V2gGxVm2T6qCtGL/BWiAHR/eJYStwBvtXqV4FqnBi9X
         Pl8ClnoF8Rh9zWFfcp90K3+9hvx8tJvIIaCnvcsMO3aCe7z45hXQvb7m/rOavPxscTeI
         liCZMcmrEy/pKLGDkIww2RSUtBY7aYiZj9ftEBa8gEcwQnQLOE5vyLI2xjWOPZWQkTEo
         sMyH1CDkEkkXUJ1j+PGu5+bEmwTpNzyPM/uqsfVLLfCU5WRN210EDSDyYV7Ps6peL+gc
         MWwrFzgryt05ZTFX/TRbeKE4rBYbWNcgiioN4JdOiFUMim0JguP3zVM+ULNDBJxFNKJk
         rcIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KhW5EzFJmaa7vdgSREc6kp/qPSt1hrWep/bumOKONz0=;
        b=v8GfWqmbGklV8ERPgYmcc8+i8LiPdrK1LfilM/RMfB7ZqdYL/iC3szAhzxRCnlFiSy
         s5oEQ9HKwsC/s1V5J/xA6AzkuXyP/pp4evRt2xeCNldbJ9q4x8x07c6Jh5zd7PUiVwX9
         Je0ILVRZdUClZqhKX7N/MKZxyYRYhvrNIX+NJ4My6D014tElnH4HksEmazC4DFb2BAG2
         ddTNifp7mdaePJOQ8RT/vv4zPXBSdWyEsX5igSi6NV4MQh1sMx+H14KNsrv/KkNkymjf
         tUrVMwObs3k8eePaWDoSj0SIWMrhVF2kV4IuQjyhvZ3NBolpoWJhigRy3OxkAk0yD7kx
         8btw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h0snOM9z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KhW5EzFJmaa7vdgSREc6kp/qPSt1hrWep/bumOKONz0=;
        b=q9xCnJ5x21qr+3oJq7XnTWZb9L3kd6dy4VCHCFXN0t5ucV/eL3+WJhm2WEMM5NYrHz
         W3xBZBJuo+nP7SeID+++/k6J916vrDbyvuswmPxLx2H1PsgRHdrJkSqf1gmAUiy6BJyz
         16yTCCRm8qL+W6eoufME/vcJa7XplfJI19UyhhPcR5aZjsd5yxKUE5kZ2b80cfrTFLUs
         hGYGTAOjXVmg5VAxs5YpuUtTY3bIVkrOItZEubSr2zXsr4jvSez8kWdk80L8JJPxuuuQ
         wbTrInzQf4hebjHRCAIAAO833I2lr0QrVz9umc9bN7QFLs1eWkJEKeB04DXMoQy2/J8M
         f/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KhW5EzFJmaa7vdgSREc6kp/qPSt1hrWep/bumOKONz0=;
        b=c3J2SkaG8FXyR+t1oEoCw3g3jjH/3GSPUi7sbkDZjNb8+f76yDbqmmulSqU91oIWsa
         qtGK7aNyfKi/6+BXB1oXM9i3rm1unOON5bYPK2p3t+7vyp61DXm/p+8SAvEdAVI+8q/U
         156+oEgyAl10KzvjnD5UvFT6xY81wwf+RcxDCDMP/tDJPukYkBlNWFqL4DoAKK0w8QKh
         V5fMF8HHn3jDu/4xN49AXH1aAVe5Gn/b1+6NQ3I4Uy5AMtIExD11NabbRwWZfC8k6mPp
         7XnwpqNZ/bGGWAV+0Jr8R3HHPRcXnJegKM1VPaVJKn0tkSnJ/hGsYAmfFL6Od2pR/UDl
         +T+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uPHwTbW2jfrjf4cybmgBJkUUsptZXY2gjUx+aST3VOWobtPr6
	XG8wR9FgK+syPpxWW/w1vi8=
X-Google-Smtp-Source: ABdhPJy/yOAHGummyevx1GcM7BP1XdEX9w1WD0QYPCEkP+LHkDc2XnzJAHlyOhFvDwU/88R0PvAkSw==
X-Received: by 2002:a9d:d89:: with SMTP id 9mr9937790ots.23.1616722426130;
        Thu, 25 Mar 2021 18:33:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls1994575ots.0.gmail; Thu, 25
 Mar 2021 18:33:45 -0700 (PDT)
X-Received: by 2002:a05:6830:139a:: with SMTP id d26mr9805861otq.256.1616722425722;
        Thu, 25 Mar 2021 18:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616722425; cv=none;
        d=google.com; s=arc-20160816;
        b=rJi0wr9B8SMXShFrm0xq/+OD/4GLG+AA9TgEHoGYbUfSSDVkaITPwJQz1j5vi54hMg
         aN0mzLx+jiwc1n5Xfcj/povnAt/Q2+/zPxEqXP/uMLAlhQtMePXZk0A1IGyYHwnZEWdy
         eFdb7kvbUaoopwvWYLsnRg/8fB1vryOrTK3fW4N5gfos0NbT5pF+yv4+q5fl7qiI7tT4
         xXVP/OKNw2hiOYgN9rd4YIH1ujCb8ia32b+KLXgEKfQTU74OZO0Yxtpr+dr8zNxWgPMP
         tMbQKQsNE+UtMQYRqNZZWmwJ7bervcIWUVZEPlZypj63WoaHPfw8jHhy07GEbsk39PsI
         UrgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZYOj3CPaa9OM8ddO9JunLXGcEV4mNLq+DGci49FyB3Q=;
        b=R2NCyr7NVjGnf/wpJ0e6y8tudk6HgahaOYdfpmfeZZN4pKuhmoziJR4D4rG2zNhQVN
         qoYAe1YOPmGQozpj3m/Ktm5bwiyPFSey2+Gs5OR+o7MPUjBbUwV6mqePY+zCH4kxiUPg
         VWPrAmZ0W2xBwbic79YJpLJXW9lCqJhMSsJpJ1HIcg8EeAfmOPSH9jnJ6ijCToja68eK
         iHhBQZPU7clTYXcpM4h4wnguz+tuTI8aY4KLvx119z8y8gaKkex24lwDVQW4eIvp1Fbi
         XkACTMa+B8CYszuojGQp85kF/A2J1BoCTOX4w7kRquiEeEk6EGw8PiZNUYECWq9S4xbC
         MNZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h0snOM9z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h187si360549oib.1.2021.03.25.18.33.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 18:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7ECB561935;
	Fri, 26 Mar 2021 01:33:44 +0000 (UTC)
Date: Thu, 25 Mar 2021 21:33:43 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
Message-ID: <YF0594jHAlZAmIms@sashalap>
References: <20210316213136.1866983-1-ndesaulniers@google.com>
 <YFnyHaVyvgYl/qWg@kroah.com>
 <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=h0snOM9z;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Mar 23, 2021 at 11:52:26AM -0700, Nick Desaulniers wrote:
>On Tue, Mar 23, 2021 at 6:56 AM Greg Kroah-Hartman
><gregkh@linuxfoundation.org> wrote:
>>
>> On Tue, Mar 16, 2021 at 02:31:33PM -0700, Nick Desaulniers wrote:
>> > A common recurring mistake made when backporting patches to stable is
>> > forgetting to check for additional commits tagged with `Fixes:`. This
>> > script validates that local commits have a `commit <sha40> upstream.`
>> > line in their commit message, and whether any additional `Fixes:` shas
>> > exist in the `master` branch but were not included. It can not know
>> > about fixes yet to be discovered, or fixes sent to the mailing list but
>> > not yet in mainline.
>> >
>> > To save time, it avoids checking all of `master`, stopping early once
>> > we've reached the commit time of the earliest backport. It takes 0.5s to
>> > validate 2 patches to linux-5.4.y when master is v5.12-rc3 and 5s to
>> > validate 27 patches to linux-4.19.y. It does not recheck dependencies of
>> > found fixes; the user is expected to run this script to a fixed point.
>> > It depnds on pygit2 python library for working with git, which can be
>> > installed via:
>> > $ pip3 install pygit2
>> >
>> > It's expected to be run from a stable tree with commits applied.  For
>> > example, consider 3cce9d44321e which is a fix for f77ac2e378be. Let's
>> > say I cherry picked f77ac2e378be into linux-5.4.y but forgot
>> > 3cce9d44321e (true story). If I ran:
>> >
>> > $ ./scripts/stable/check_backports.py
>> > Checking 1 local commits for additional Fixes: in master
>> > Please consider backporting 3cce9d44321e as a fix for f77ac2e378be
>>
>> While interesting, I don't use a git tree for the stable queue, so this
>> doesn't really fit into my workflow, sorry.
>
>Well, what is your workflow?

That's a trick question :) I don't think something like this should
target our workflow, but rather should be for someone who wants to send
patches over to stable@.

I also think that the formatting patch shouldn't be checking for proper
formatting, but rather should just be doing it on it's own.

What I don't know is the right place to put it in... It can go into
stable-queue.git, but there are very few people who are aware of it's
existance, and even a smaller number who knows how it works.

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YF0594jHAlZAmIms%40sashalap.
