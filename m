Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMPETT5AKGQER2J4FWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A380253C72
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 06:10:26 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id d1sf3333568qvs.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 21:10:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598501425; cv=pass;
        d=google.com; s=arc-20160816;
        b=FNZPqhzNzTa3bi7Oi0OSZmhitCi4XSf12Sm0VLmzRTjRZ7w9bm3gT737BPBmJiLRzA
         LtAsLebBhmjIQGSaJ5WGz33EhBD7s7//mxqcv08IAQAP2Nsko7oY8sns7P+q5IcvN94a
         DuLhe/ZyrWsibw4WWqIxFii0dzoIjLcyzUs269PwSS63Q1nRJ4RO4z5ZuBo+MjFP1D6h
         GFwHxRsUgNoy7HmLPr4jSNAqFMK6A71AuuETxq6Mx2TGgBRKDNPIExQ7NOzEheUsLgRO
         GUk6JKpR2CptT4/w+GUY4AgJGZMEwF7BoeJqRhE5IOPLi6daFdzTp5h5vaCW+IEDhKHU
         aTMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Aw6LrSByHVG0dM4joLe42Om7oaXK7dsgc8lo413ghBI=;
        b=Qjvv3jZbWX82Jb785bfLz2OAdxI/av1sUZY7xNed+mMUv9s8Sixi+7CuUUnrl65FA2
         KfdMx9WKWUEiUXh+ijAQGG0CRmpmURHTwDdrvE1cf+1XyyInZdaKsbDvk5QQAbbLhbVe
         ro65kvuCJlzumJA7AauV8VYqm6GvnHqbLLMxyMwcnfszvqpW+UXlpox61JRjSdaS3Rhb
         Wlb6Q5YAzdiq6GlQCL2HBXFedu4CZu7nwy2febxZsww2Ptqldf1J9k7iHGwUZAMRY3kN
         FwtjmBCup1/GVMC/oGdqObHNAaIxPJj7Nz937tqSX4WJ26/8hn2WQDjI35E1omjfhlYg
         1eKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EbI6rHVN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aw6LrSByHVG0dM4joLe42Om7oaXK7dsgc8lo413ghBI=;
        b=PUty4c+1qlNwEJRLgQUxaR7YIiqH1zv8jNyys7pmy8x+LheTOY9LcSBaN0Op7ckEXC
         JPHFLu2s8U6S66ochWt8K0TzeQPWuMwnjErL7FSCsua8R88e9G8xSzd9YO/SsLVDGzRJ
         1KHDLapF7c8MoyKr1ChWo3bDVNUIT/dr0TXLi0hIzBrBooW0xrEGR+al+aGb1pSO3GWz
         AodrsE1wU7j2L2S9IGGRD0eZuYt0oS1mGkvwt66LDV7XMGonYDauCI3X6rsvkjziu0Wo
         NMTx3wljAtulleeqrzEpc939kw3Rmee7S1DQVHHaJbxUSWEZAvjoJwjoZWzMXU7o19vk
         Wsbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aw6LrSByHVG0dM4joLe42Om7oaXK7dsgc8lo413ghBI=;
        b=GRDtJcpVG9U90oy5KkG4VLJjfByN9kWRCaJbu34PG+vC/EVzZCXpbnNMZGKLmnUtD0
         GlRwzd9l/DRMPbIfbmHVF5T2ByQi39n2onXFg1GxUbSLvAzl+6/tzT3kvxKniz1AUFpi
         xKXOrUjG+VbXfX9H7yqfFKpeZUtb7zUz139tjYsfsYU/BMFDfVwR95ucv6b/njhVJtDB
         ARsRu9lz1NU9w3uW5oQgXlMFoKvaleOio5ASRws0SRY8zOLvGrT/FXE+RPnJ4QtDiraL
         y25QKYRpnd39hdDRaP8VV40CkyIZM/5dEMT91KJCxg5dPKmjyorr/dQ7hSCGIq6oCdg1
         QZng==
X-Gm-Message-State: AOAM533fdKlWyGIXZpiK4lX4DDLywIKBKVJ/buV+hDnF4dLgRVQFsXcd
	NnC6RNCXl+UpUme2g2kk57s=
X-Google-Smtp-Source: ABdhPJxjOIyC34WLtGzykzvz75eVH2NXI5ftNlQ93OnfWSl7WZ7xO3pIy0jDcqmbq4qz+9nXbSDkvg==
X-Received: by 2002:aed:2983:: with SMTP id o3mr9600279qtd.154.1598501425310;
        Wed, 26 Aug 2020 21:10:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5d09:: with SMTP id f9ls390637qtx.10.gmail; Wed, 26 Aug
 2020 21:10:25 -0700 (PDT)
X-Received: by 2002:ac8:5247:: with SMTP id y7mr17492187qtn.176.1598501424993;
        Wed, 26 Aug 2020 21:10:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598501424; cv=none;
        d=google.com; s=arc-20160816;
        b=x+qgRKFYGW6jQyaPy/OlhO4qmBAJ1rYLumewcfRLbRXSthlaUGRna8EuWz+QTzh8L4
         4vBNQg2NXk35qGByf34LYdd1afgy0z+zlL/IlZSl+quhITv9PQHgqTQRAsfpKKo5nCdE
         bb8WIwut3bGKEL7K+1XMycaLmzbySIkEEARw00vRu5LZeceq/GsCD6oM5p+9McYrDLml
         dcT+LIZ05/wVrCjBHYsmj82gl1vD3ENgY7vR0bVWcTjwil5kVjDGRk3FIMWnetR2Dbkv
         bcbjLhPa6nkwgEL+Hx6JsinmqXwNXpWUhSPfDPEUlUPpdrZMutQAYnpuR8PT7L1X5F73
         wcDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tVtVIVv9NaM54TpGOPEUPLIvyxsrjQfRgTHhzXuSmcM=;
        b=OF6BMfXcPE3xWwmkthKfcftmsy+3NCGMgvUdGdft0dIjE/U3WujkhnrgRQuIgHVrny
         xW1UzL0PvEs6Xy3JV77mnrFefD4ned47L4fQK2yjyT15TTpuYvYWO5uqadeXW6zcWAA2
         ZbT/sV5genip/xDYAX1uB1cvEYZnoQQjGBYqA7W1Vi8GMZeqMmRJ4WSdrQW/Nbr9uR91
         MRLTHtof18ZjuFOp4msAVKB98Ih5QDlElJ0b2e18LGtb9Bk442eumPlc7z2K238E1A5x
         IQJych/HWJb64k6kw2jkDYykvU7ag33kaMeAYXe56TrOnbwXaXwi+lzjo0+TtsqQg9NM
         oZcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EbI6rHVN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id a189si50968qke.3.2020.08.26.21.10.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 21:10:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id g33so2407786pgb.4
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 21:10:24 -0700 (PDT)
X-Received: by 2002:a17:902:9f8a:: with SMTP id g10mr14819190plq.158.1598501424294;
 Wed, 26 Aug 2020 21:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmKTzO6WOgPX5Y9Cn5Nj_6jW6YbEWnYUaJTKtHW-GRdJg@mail.gmail.com>
 <CAKwvOdk7OKrA1CqYju9iMUQaYQxmPB5Hk+r0424b75aqzAPS-g@mail.gmail.com>
In-Reply-To: <CAKwvOdk7OKrA1CqYju9iMUQaYQxmPB5Hk+r0424b75aqzAPS-g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Aug 2020 21:10:12 -0700
Message-ID: <CAKwvOdkEuGhi0fZUYKE6JdCK5Wa=aM=EXwybjK864sA1Lrd11A@mail.gmail.com>
Subject: Re: LLVM BoF tomorrow (Monday) - LLVM MC (Thursday)
To: Nathan Chancellor <natechancellor@gmail.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Bill Wendling <morbo@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Mathieu Acher <mathieu.acher@irisa.fr>, 
	Dan Rue <dan.rue@linaro.org>, Will Deacon <will@kernel.org>, 
	Geoffrey Thomas <geofft@ldpreload.com>
Cc: Behan Webster <behanw@converseincode.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Triplett <josh@joshtriplett.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, John Baublitz <jbaublit@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EbI6rHVN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

Slides look great folks! Thanks for uploading them all.  I'm going to
download them early tomorrow morning from the pages linked from
https://linuxplumbersconf.org/event/7/sessions/84/#20200827.  Please,
no more edits if you can.  I plan on posting them in a github similar
to what we did for our February meetup
(https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides), too.

The room will open one hour before the talk; I cannot provide a link
until the room is open, but it will be linked from:
https://meet.2020.linuxplumbersconf.org/.  Do yourselves a favor and
bookmark, pin, or open that link now, and verify you're signed in with
your confirmation number.  You should also jump in a hack room ("LPC
2020 hackrooms" in the top left of the meet link above) and test
joining with mic, and webcam setup.  I plan to be in the virtual room
as soon as it opens; joining sooner will give you time to test your
setup once more.

A lot of folks are hitting issues with connecting via microphone.  You
should use headphones / discrete mic if you have one.  The simple
usb-c headset that came with my phone works better than my laptop's
mic.  Further, networking issues are common related to the use of vpns
and proxies.  You should not wait to test your connection until right
when the talk you're interested in is starting.  For me, I experienced
a couple issues and found a browser reboot, or even machine reboot was
necessary to connect.  If you need help connecting, join #helpdesk in
https://chat.2020.linuxplumbersconf.org/channel/llvm-mc.  I will be
focused moderating and won't be providing tech support; the only
advice I have is exactly what's in this email.

My wife made nice little cards for 5, 3, and 1 minutes warnings, which
I will hold up on video throughout the talk.  We have some talks that
are back to back.  The next speaker should be dialing in with mic and
video enabled.  I'll make sure that slides are available.  Behan or I
will grant the next speaker "presenter" powers to control their
slides.  At the 1 minute warning, please wrap up your talk out of
respect for the next speaker. I will be cutting off speakers should
they push the 1 minute warning, future apologies.  If there's lots of
questions, it may be worthwhile for speakers to suggest jumping in a
hackroom later or Friday.

Thank you all for all of the work that went into our MC; I think we
have a great schedule of interesting topics and am proud of you all.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkEuGhi0fZUYKE6JdCK5Wa%3DaM%3DEXwybjK864sA1Lrd11A%40mail.gmail.com.
