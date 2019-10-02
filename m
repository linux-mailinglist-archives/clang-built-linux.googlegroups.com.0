Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJFU2TWAKGQERFIMAAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C55C9396
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 23:44:05 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id u123sf84665vkf.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 14:44:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570052644; cv=pass;
        d=google.com; s=arc-20160816;
        b=xyVdU1vaK+nHUuNx882zhYQ27mluTr/4nF6jhs1iudKZGFPFSJRm5w7OXQd89DXmHN
         i/QJdb4bpqP2u0O76aHwIHjNBs8wSB7lBcRmJGxt8sCSpvv12ZhBIlhUluKKAxIpytJH
         47orLoIsy+UDUIs7gL3f/xKGhzbUg2N4jv4Y0qASpSv/HPHxub1deOvOMkX4Z1xXkfVW
         K6NaCjzDfS8ZN6Wo9hjm0HHTxtQy3qKLxBwYPdhH/9y5p7bAP3YLFlamWnN1Uechi4Cz
         XuCCr8QR2En9tzVr8VwaJ4ybrlvbCj3iVLt0khyWiwk2lrEp+hglXk+TLU10UYvPgASY
         5IBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ha68cYerm6+1QocxPWJCBwbOjSqmFhRJt3M/kjsy8z0=;
        b=z9kG7t3ZivP23f0bYwKDKLHBkoAXRBD6OjfVnFqy9rzBtIzBhKOfvF2HW0J5ZdGoMM
         vzHIgcZd8gKzszfcpu9H++cMpDR/6TxC2F7/DRDoXwRC0v3UXVkgNJD5uYikSswvOg+J
         tM/YYY1T6KmVipLXdNZwDbfs5Z3pHZicaTXVGyuRIoxt0qCTgeWqs8ZiBvSpZPE6pxJM
         cccWCLgI+q1fpQkSSFrk68bvrp+xdWPxZ9lcrsB3Yz0Ud1v20rVQ2ZHYOSxdXf+YZcV0
         Ozh3iQrvwlUqKnvmd2SuWs1/Me8LEadoquK8P1iD0nlxLkMtuVMbjPP+t+mj4Hkr7cdw
         3kJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M3xaUt8s;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ha68cYerm6+1QocxPWJCBwbOjSqmFhRJt3M/kjsy8z0=;
        b=da8X5jyeTzYI+DXTXcyxz/TReFK+ROukXGXzWoTdNhLwr6V5tpBqo9eI1Hjgsxk7bj
         0mLSxryEW1CisYG+Jf3alLfdkikpq/T3BPUaESeTWlEVEogJvyDhCMzgWo+PfFmQuBhW
         KFu3KF+tJ8sPQV4r4dOAXouaQcDZ5Ace66HlorEOAqqqeG6LZ0lZRICLTjYmHFYzoUtI
         QYDbJK2Ds4pTpVzA5ZGqVTP1JHVfvpGXb5XS0f6YnI3vuGye+mXG4Zs+zhMVXbdIG1Ab
         WXldy5QTeGUkOskJfk7pos3v16/cEqoLvgQQcTHx5pu3HyTV1tEtoS4hStqMEYgxWWn7
         hFhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ha68cYerm6+1QocxPWJCBwbOjSqmFhRJt3M/kjsy8z0=;
        b=UARpBjPOgLzJuwtrIP8KeDiJNHSxPPGUhkQ2qY5egFm/ZBGj/W9bPR8mYdJVi2wbp2
         I0QZRRSYLxENFzuUe3ZT/Dd6clR8cPEmK8RNmHvkSsqe6JjsLdv0t7MpuRDWDgkJ6IwJ
         HXqDi1U1RgpI+dXG7tlldK0u4VzcyahgAHNM2nVXGoI+7YUHexr+86Ap7258RHeAjAh4
         I1x+BU24iTi5fb7B6+MdfCrrbkpZQzwDvjpKJfc+9gTGQL17O9fWwv8c63Bdympa6EOF
         sPNi+neNz8HU3fEHvMsYYgFUj3zKISJVRUN8ajDurSLtbMtaHolDTJjnyJQ/1AnAgWXa
         7J2A==
X-Gm-Message-State: APjAAAV+2nMY4dSZs1QENRqQoNg3OdGfPXlZ8xYeP9W9Tep9GPxWwmWr
	I0clbL/YcLD0QRzRRax/Xa0=
X-Google-Smtp-Source: APXvYqxDIEXuAJCwdOOjHWpssAlG+vlhI9OWvKP34VD1yCYwJ3oVlbDJWappQ3xlpAnhudCt/gXxmg==
X-Received: by 2002:ab0:2785:: with SMTP id t5mr2732600uap.11.1570052644325;
        Wed, 02 Oct 2019 14:44:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bd51:: with SMTP id n78ls138930vkf.10.gmail; Wed, 02 Oct
 2019 14:44:04 -0700 (PDT)
X-Received: by 2002:a1f:cd81:: with SMTP id d123mr3282052vkg.21.1570052643964;
        Wed, 02 Oct 2019 14:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570052643; cv=none;
        d=google.com; s=arc-20160816;
        b=DcTXZGSc9+0367Ab62hRvw0mshRrqpGkG6qDcf85F5ZLB2FyhVz8SAlsOQf9Rg4skk
         oTQHk3hJR7F/18ITTZzMhzWBMmAdFi89FCWTb8u97uByCAsCfKMhJL67liprTFmBOw4a
         zmOJn/91NjmIAmuEwCGpaYreu/BmQfv3VU1H71YEgjq95LEVxkSX6UMlzS4K6GEWJbMg
         1MpLOxnnBQ8Zp3RyXLeI3Mpg7mq9GagNWpW6YbnaiXITLB0R5k3aTtwRbscG1Wje6ypw
         8Cu84VwAgtV+igZTCHHHjOmQ7e7LHUw4SdYVS8k5smW5wzce6YDGiK+C1UkjNKdz8VXy
         aQ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Utf5M1idf2buPTzn1CVF8rxTf5cVxXahETs/DaKiNis=;
        b=C7aQfaz6q2/fMGBlIOZDwW1mKNwkGb2lA32nylPLcwxCd1gOkhsbLvNuUDyAQ5GIjD
         x7+t9TemKg8pqJtoBzvxhWZEFfkjUlMvCy/91KcA6m0w2gfHj6nrMzg3lRAGliJbdO29
         RFL0yXjaM8RNyZsOvHcHmtpqWeOprZUldhfznAQrMRLzqa/iyR5K47+FWdRVGJDuSzvp
         vrqHtn25atiXgrhpl31Dlp1Ym3JH5i96vPRH3xz3JduLLaJjx7kfAd5j+jIPKa7Szf3T
         EeFQB1Sh/XqQTcC+/XLMJGxyXfJVFJqklYZFqznY+9v47D/uFs9kCNCqzp8peJRujst0
         69uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M3xaUt8s;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y14si27616vsj.2.2019.10.02.14.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 14:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id a2so310281pfo.10
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 14:44:03 -0700 (PDT)
X-Received: by 2002:a62:798e:: with SMTP id u136mr7263870pfc.3.1570052642514;
 Wed, 02 Oct 2019 14:44:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com> <a2e08779-e0ba-2711-9e0d-444d812c0182@roeck-us.net>
In-Reply-To: <a2e08779-e0ba-2711-9e0d-444d812c0182@roeck-us.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Oct 2019 14:43:51 -0700
Message-ID: <CAKwvOdnG6tTHHx5aL8oA3ta_mW24aZ37JX+=HQ9YphearL4DOg@mail.gmail.com>
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
To: Guenter Roeck <linux@roeck-us.net>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, jdelvare@suse.com, 
	=?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Henrik Rydberg <rydberg@bitmath.org>, 
	linux-hwmon@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M3xaUt8s;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Mon, Sep 30, 2019 at 5:01 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Again, I fail to understand why waiting for a multiple of 20 seconds
> under any circumstances would make any sense. Maybe the idea was
> to divide us by 1000 before entering the second loop ?

Yes, that's very clearly a mistake of mine.

>
> Looking into the code, there is no need to use udelay() in the first
> place. It should be possible to replace the longer waits with
> usleep_range(). Something like
>
>                 if (us < some_low_value)        // eg. 0x80
>                         delay(us)

Did you mean udelay here?

>                 else
>                         usleep_range(us, us * 2);
>
> should do, and at the same time prevent the system from turning
> into a space heater.

The issue would persist with the above if udelay remains in a loop
that gets fully unrolled.  That's while I "peel" the loop into two
loops over different ranges with different bodies.

I think I should iterate in the first loop until the number of `us` is
greater than 1000 (us per ms)(which is less of a magical constant and
doesn't expose internal implementation details of udelay), then start
the second loop (dividing us by 1000).  What do you think, Guenter?

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnG6tTHHx5aL8oA3ta_mW24aZ37JX%2B%3DHQ9YphearL4DOg%40mail.gmail.com.
