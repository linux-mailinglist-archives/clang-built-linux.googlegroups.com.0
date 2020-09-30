Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLXF2P5QKGQE5Z67NXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC0927F3DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 23:03:44 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id i16sf1831584pfk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 14:03:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601499823; cv=pass;
        d=google.com; s=arc-20160816;
        b=JvsouGg1hLLChApeNkNR84yVbLbW7VaH255xZiMN6iyusYSWQFtsOwP9fZqDMOZKrl
         mLKzhErD/KkZ9tK1PACMunoL24nIK1W3aOuEGOhtChckpUKHhQmin1JfMaemnphjTiwX
         af7ZXauxHPVNM/HAB++2Q00WRyN8cm1KgFy054uqvZ278sbGgVVmJ5fMDWrmrs5Hzgao
         kJu+AYIc/HXfDe88GR7VO2My3YHMon7NWunJElsL/Doj3W+5dBU3ivEfYL20Z+uCAUsk
         IxMAleiDL/c0NTmWy6O+5KsBt6bE7fvwsmD/zMxn+I8XrclbMx6+Cg7ILLrXAS3kOxwD
         1eSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fddRq88MmhIBEKOx8wvCewyGIEV6EbcSrpPPjXSfY+I=;
        b=Kyj5S34UYw6MqU3SpyyDFghRtazMDmRUw03ATMc4VV8w3Ex6LTznWw/4apIIL5qo+y
         5FexfqAMcQ3b8DIK3NpX0o4//CLeLpVv6EGeemKxeRBI2R3fLZCjFs6blX2m1wAU5L4S
         B+l3hk1m891mR9Jjm0q9ovfgATHk1wnFHM5hW6tGcC13pJi7Iaz0Q6zjlMYAHxOTRRAE
         nw6lJgZjy2VnfrSmgBBFw4rwodbvgHHU8yEpxNYIpk5kULJwV1R1MxDYt0QhMNIus5JS
         jVGzYde6q1gsHfcTRTFps1ldeq3Z2uN9ct//riPufeD9w14bu739W3aeQ4GXiyqQNqnl
         J8vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kf+V7fDw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fddRq88MmhIBEKOx8wvCewyGIEV6EbcSrpPPjXSfY+I=;
        b=C11fR8Rb794cFSi+LNhmj9L9B/j/55Mbm47D0UFjFW7w9aX7xA0yN0Sm+pYGBR5M4v
         EbgXCGM4JjpOHgNE49wBToKjsuaYBR3BXADH/1V5FPo208ZlU/rBGXVfTTAP9BZrFHt9
         kNwks+AutBjxbVTWKtqMr03TtVMWvfjKnxqCpAgyZOWqyCbmx9EPhPsaOhalaU/zSLtA
         zekZzBlRdxphoN3gsK25uV9hn3m88RX8nOI9ww/aUrts03Fys15Sm2V12/oqvJ4d5r62
         WNEt8QKfTLnAET7MxuzBW1lSTfOkVEWH1M8LNGcKkOLVYOQCmBiGZ5aSyMsNz5tnn+58
         e5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fddRq88MmhIBEKOx8wvCewyGIEV6EbcSrpPPjXSfY+I=;
        b=Ii+TvVWVLtu1TAn0H6abSLuon+qzc4qolo+3WHdNhs3cJn3e5nHMzwfuuk34YwMoFv
         TLKgEfhJfrRk29mYTaus8MUNP9oSTgdrJcgGDLw+bq5Yzp6eZ4psM6vpBebVQ2ZssjXf
         5mwPLver1rWIqJOVhErQiWtn5JurViOZer+XTsh0JUpXFtvQ3Ul9n+WOkaEwbpSTN3Dq
         O91uX6uNfmMANaImJj0j9mVAGKPJ6SB86kTfBj3VMrpPeYtjF7+cwXPXpZoZqNJaS733
         fnF8anru0dMHXv9JF6d5iQmohmWeQQyTdbiLM8OZgay4uSnr/YIs3w/ibi6UhDLIwJYQ
         wP0A==
X-Gm-Message-State: AOAM530VzAxCBlx+Tq76L+yZ2cEjEUpsN9129lb/rdZ75CnBySwbEoYq
	/z+MyRiS5Ehn3dlh5X/V6zA=
X-Google-Smtp-Source: ABdhPJz7xMO0a0ApStcuzIlxrVRAgCPSxO1clkZMkHMrUH9ehoKo/PevBjY8z9wcfKTcWYZk84DTGg==
X-Received: by 2002:a17:902:b713:b029:d2:6153:fb62 with SMTP id d19-20020a170902b713b02900d26153fb62mr3896870pls.28.1601499822992;
        Wed, 30 Sep 2020 14:03:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d704:: with SMTP id y4ls1314673pju.3.canary-gmail;
 Wed, 30 Sep 2020 14:03:42 -0700 (PDT)
X-Received: by 2002:a17:902:7e8b:b029:d2:ab80:4f81 with SMTP id z11-20020a1709027e8bb02900d2ab804f81mr4027725pla.19.1601499822445;
        Wed, 30 Sep 2020 14:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601499822; cv=none;
        d=google.com; s=arc-20160816;
        b=vFTNuM/NS/ottbc1R45hpOYeo1q944hp7tQTYbDT/5jyrfW8NbE8I/hrWk+WzITSiX
         T9yGc3tpIYqy6Ww0QfdCNexpXUcqDVDAbX/NG5NGxlS5VJGeetnHH+9CDyDa3nK4+aoF
         DrtyMUF6z9XbSpmyPRQORydsTksfRRpskhfSMkE9hdVPqAW6VWJdIlp/lA0uk0HtzenF
         lQN9DzalJ53b4lVLS89CyKtLIv2rFa7920G8aNbvW4NX2oTVzgZNejxij4uIi1m4AzdF
         bUo7QbVr2X7Uyp46HW5/DDOcEKKkuA7pt5P/c4m7X0oDm/QpgoY6YNvvB4Kl93f9T/jw
         z5/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O512az4Xm2bo+VOlvYsiJktQUNoQKTUCg74w1eHplF4=;
        b=fClSI1oCNCTh4vR1upzE082SFb/nKFNVU+QwZOPY8wsv3CaXCi3/poMeNyj1a/Io78
         0WLZ56DZiRzH22oG256q9JGFK34qmV5taWNHWuxi+0gYOY0Zjv4FWbKel9bDJfpnaiq+
         52witRVO68QS7etv/D6+KdJ9zmMDyC1pvcfkFbedtYrACXoC3Hvkd5OFG2FHjnQSW3o9
         KWeN/Mzdg+tkuSRNaw7J2tvoZUvU6bw6xxL4rSxkkk9PeYQ6NtPmDt2iqqVn2ejcl1D4
         I9LnoihJwhf4xFaxo/cz8iAt0mi806WTgXmcDfmdBnr2Q3829DkmjnaT8ju+3V8AOqT3
         IKgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kf+V7fDw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id t15si198856pjq.1.2020.09.30.14.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id m34so1904850pgl.9
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 14:03:42 -0700 (PDT)
X-Received: by 2002:a62:d44e:0:b029:13c:1611:652f with SMTP id
 u14-20020a62d44e0000b029013c1611652fmr3973390pfl.15.1601499821975; Wed, 30
 Sep 2020 14:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200930153642.GA319225@elver.google.com>
In-Reply-To: <20200930153642.GA319225@elver.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 14:03:30 -0700
Message-ID: <CAKwvOd=0FV_VoSD8j4xP_k5esOtQ7KQHOq1cFFAkXYM0UQ2-ww@mail.gmail.com>
Subject: Re: Clang 12 possible memory corruption
To: Marco Elver <elver@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kf+V7fDw;       spf=pass
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

On Wed, Sep 30, 2020 at 8:36 AM Marco Elver <elver@google.com> wrote:
>
> Hi folks,
>
> I would like to escalate
> https://github.com/ClangBuiltLinux/linux/issues/1125 (if the problem is

Thanks for filing a bug in our issue tracker! Bonus points.

It sounds like you're running a bisection? Please let us know how it
goes and we'll help get it resolved.

> being addressed elsewhere, my apologies). I just added another possible
> corruption (also in skb allocs) that appears related and only happens
> with Clang 12.
>
> Because people are already using Clang 12 for testing, and reporting
> kernel bugs based on it (e.g. we got
> https://groups.google.com/g/kasan-dev/c/1Zvywuu1T5Q/m/FDP8W420CAAJ just
> now, which I think can be attributed to this problem).
>
> In particular, with the attached config, Clang 12 (unlike any Clang 11
> or GCC) appears to cause memory corruptions that I have not yet been
> able to debug (see log, or Github issue above).
>
> Thanks,
> -- Marco



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D0FV_VoSD8j4xP_k5esOtQ7KQHOq1cFFAkXYM0UQ2-ww%40mail.gmail.com.
