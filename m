Return-Path: <clang-built-linux+bncBDX5ZRH7XQGRBFEHTX4AKGQEGA2LYUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7520421A48B
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 18:19:32 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id g6sf2647875wmk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 09:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594311572; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUaKf4WDtEvkJk67hdkcH5ItdsRjzsh5jtZoYufkewhfNXp8yoZWRoD1fOErZcZ4KH
         OFwjTYuKbmKmxPtVg0toY0nRBkHWbQeVoKSzOQPtXomFAW512UfclHYmFVo0V7uKbr6i
         TS8rpNlN4IyrBqK7YKMnEsV0lg9XiKnFmzJHfskJVi2R7X4vssqv5moRTeWSFEPY9g22
         Q13sXt6HODZw+vmSQx9FMiZSFfDj/PSFnx7gKKbEtgjAKYsYubMdCcQEpKzojUdTDHDW
         Hd/l/c7AVh5BeaDgOI7QDCgIUllD4w7+Knp/uaihyo6rJ40z+vxg5N8t/2/E/9V4Gv0L
         mfIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ltCWTdu4mggx9G6orMczZ+imNKzgLw8nEx8CV1mwuCQ=;
        b=o1zTG43aXQ/NMiUW7KGdNgvIIMB0Im/NdDr5Od6uppHAbGvAccDjgmDluV6A5pctjd
         n9QMdVda7ZV28YFzNhF0GyKpzyHd8dzUihWgOSFnFVM0hMY16a/FFEU0LmiINL4fTn6x
         b9z0aFOHImk2xwRQq3ApeOT5WXZV6hLEyzBDkBJotcrCnPy1p2PfLTFwv41EP38KdZst
         rv5dATIUfMJqFwMF/juzVo5Pq9dlKIKk+AFihLmPxfjQVeet9n24hCJVtTmLIXdukygG
         /rwx91nZzukdHTKTZLe9Cv+3XKW/oflFX1KoqX4Nsyz/bT4U0I+wTWzZP2HjoCx7Clk/
         /4vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=uq3XQro9;
       spf=pass (google.com: domain of khilman@baylibre.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=khilman@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ltCWTdu4mggx9G6orMczZ+imNKzgLw8nEx8CV1mwuCQ=;
        b=q/fB0TJ842nvQck4M5fV3nP2tdmKFgqO53kkPQdP7ZbQHJrbfD2poVgRtN3oMI9t7z
         TxUh5P//xVz6xl7uzvJyMYoOgbt4gq50ikW+0Oa6emjJm6ubY7/707SotmAfIYxMp3WJ
         QY995ZfZnpd2yqLM/KUSipbCmt80o3TOfCZOyExyg0Lz4x5/vQBAMrJAFEXk6trY+nVo
         l5aW+rXLvBPQkUxivZarAM3V0LGBwJ6Anzr3XWDr/26YMAGCpDbyKChPJXwDBsZiizSo
         8Eujdq1s0LTMqabwx0aeTKq3G/NWnVb0aDrS6uquQd+tocHjVjL6ursX/Q29PLrMN2YQ
         Hb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ltCWTdu4mggx9G6orMczZ+imNKzgLw8nEx8CV1mwuCQ=;
        b=GWfIQhXpqu4uykcdDIhBPpuNlQHQLMolNsCzHMeT3uLpDCAz2EPAiAoGu9lE0MH2Lj
         IKZFnKN/4rQMWejAOvMwdHyxPNpDoY9hWRH1HfI3MF7RDb19Z7ju75wA47jyAMl2WvHM
         0UarH1ATwYpNBGqhF6bfqFv/O6hM1sH7R6oVcorFDMCvBJn/+oeC8sVs7IeuTIehdh/u
         CKaefPe+y2AYl2ZlJjZxItzXBLL4QdiMV5KAIo3l+aVe6W/wl5ESr+SzXQEBflvd+OUD
         NUWtQsOPqo5yORYWVNdmaJ+TPyzkEt7NbYnuiYcosPwTJHVFn2P6CNTlGd8zi6LlVrrn
         8Yug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uNccljsdCXHp1Z/pRtwSRu45qhr9fOl1UBangCoN2zAMVEfjx
	kFN/2HcS4JvIw/BEMzt/exM=
X-Google-Smtp-Source: ABdhPJxIklpUJ1F29Y5Uoj+ZympRJf1Trhq8DEqGV0Cx4q0VhtdSOr/BrjyeOR6Bhn8c4E8oEQQ+Hg==
X-Received: by 2002:a1c:dfd6:: with SMTP id w205mr848200wmg.118.1594311572177;
        Thu, 09 Jul 2020 09:19:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a587:: with SMTP id o129ls3171090wme.2.canary-gmail;
 Thu, 09 Jul 2020 09:19:31 -0700 (PDT)
X-Received: by 2002:a05:600c:410f:: with SMTP id j15mr786521wmi.128.1594311571667;
        Thu, 09 Jul 2020 09:19:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594311571; cv=none;
        d=google.com; s=arc-20160816;
        b=hVvmuBpRD9W1qJWUoLhTg0Dyy2mTkE+afsZ5Nn2Pj2g6TwT/TpNib8eU5wkB7DegUn
         0C7VNqKiKHYTCmyWYJ3/GfO5Z9HqrHqb/D4rCgxw3i1QVBHEhSe3KcAH+U5bpNIbs42Q
         rVuxNYI4o9AgBCipDGvw+DKxl+l5027XChWmCWT1YNeGm4SYT1dnZ1Q2Hid8xKCR+UUL
         RflURC6b8hv/cnfpjbaB5hFRCNfmAJc9AKqsWrn/b16cF3c7ORj1kZzZAh0BS1L/UY4i
         hpRGKdcYbDJQuEQH7w6dzGwOhF7LFrdBjaeVaibSqXxR9Z/kZ2S/guNKyym+dl849BOw
         J3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=9J1wQUwWTdf5DPCwCHtjf1YWcC4PMbi7fcY9VErjnWs=;
        b=N+fG3hxiuAP8Yx/WaG9DwizwOR+CEgss8gEQGin+Pdu3sJKKBXl2MPPYfxDAjwPgXS
         hDZSj4At3H5Qqzkpg4iOfN0JA3/Y065JkkQZ1i2NbI7N2X1yqJGgfgrk1iWTxRL/Qu9K
         C6qTimors5tVBhZ9DjgaldD+NKug9H+CGWyShWwl+l01zQjhZ2hfhpnJj58C+KLMAp39
         lARJC8aGTIDpUdeOsB+jMMYmqblWOLNeQq4VyHO3ZUrq9cjIdc5PKoBAG2W1zDVd+Y++
         Lixk0eHlbY18VAdd9YkLENV2tDdM1Sj5fo87IECz0CPF120sQ47f4uyPDC66Sv2gNfgB
         UF4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=uq3XQro9;
       spf=pass (google.com: domain of khilman@baylibre.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=khilman@baylibre.com
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id s207si525042wme.4.2020.07.09.09.19.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 09:19:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of khilman@baylibre.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Received: by mail-wm1-x32d.google.com with SMTP id g75so2501575wme.5
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 09:19:31 -0700 (PDT)
X-Received: by 2002:a1c:c3c5:: with SMTP id t188mr814523wmf.53.1594311571253;
        Thu, 09 Jul 2020 09:19:31 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id q4sm5379481wmc.1.2020.07.09.09.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2020 09:19:30 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernelci@groups.io, Chen Rong <rong.a.chen@intel.com>, Philip Li <philip.li@intel.com>, Dan Rue <dan.rue@linaro.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Mathieu Acher <mathieu.acher@irisa.fr>, Steven Rostedt <rostedt@goodmis.org>, Sasha Levin <sashal@kernel.org>
Subject: Re: plumbers session on CI and LLVM
In-Reply-To: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
References: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
Date: Thu, 09 Jul 2020 09:19:27 -0700
Message-ID: <7h36603blc.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: khilman@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=uq3XQro9;       spf=pass (google.com: domain of khilman@baylibre.com
 designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=khilman@baylibre.com
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

Nick Desaulniers <ndesaulniers@google.com> writes:

> Hi Kevin and folks,
> I'm trying to put together a Micro Conference for plumbers focused on
> LLVM.  In particular, I'd like to have a session that focuses on
> Continuous Integration (KernelCI, 0day bot, tuxbuild, kernel
> configuration space, and LLVM buildbots).
>
> I'm curious, are you all planning on attending the conference?

Yes, I plan to attend and most KernelCI folks will be there as well as
we'll have a few topics at the testing/fuzzing microconf.

> If so, would such a session be of interest to attend or speak at?

Yes.

> I saw the testing MC has already been approved and that Kevin and
> Sasha are the leads.  I'm still working on the approval for our MC so
> it may not happen ultimately, but I still would like to have such a
> session regardless of which MC it's in.
>
> Do folks who are planning to attend such a session have thoughts on
> whether we can carve this out of the existing testing MC vs keep it in
> the LLVM MC, or even if it is of value or not?

If you don't get your approved, feel free to submit to testing/fuzzing,
but it looks to me that doing so would limit the scope of topics you
want to discuss.  It sounds to me like you have enough non-CI topics for
your own MC.

> One thing I'm curious is what happens for two concurrent MCs if leads
> need to attend both?  Maybe the conference committee can help us avoid
> such scheduling contention?

When you submit your MC you can request to be scheduled separately from
testing/fuzzing so we can attend both.

Kevin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7h36603blc.fsf%40baylibre.com.
