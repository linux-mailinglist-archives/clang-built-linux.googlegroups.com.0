Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBW4K4KAAMGQEPUBSTXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E6530B2ED
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 23:49:00 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id gx14sf460220pjb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 14:49:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612219739; cv=pass;
        d=google.com; s=arc-20160816;
        b=shQxXmHJTqZ83FMRFe+xOLqWeia4zI80nX2mW1FUU1oxyadbC3kxlWMa4s9Dg9VJq+
         8Nych07GQ8kb7TautmW+eF26jkAu/AZOeY7vr8WNmxXWovpEhV6R4sw3s9ilPbnq0lzO
         XXMgtAG8eYadPFakgN5DV0ol1y4PfY0u6KNizyuSNYdbN1YuUc70SnaqBQnDRpW2hcW/
         u+8vAlZ3bOE7fMLUV9X58Dvnz3AK13O/Hk+76N4QiNOOdDPcK2EVD6ydWay/LWhwF4p+
         ZSh/WUYotDLmsY3wTpV2CKcKFave2YCsgwxfg/DF4efGr6C0fR4AXEi12d/4G8W/LYvA
         E5yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sZqz+unhbtHZerAdKz8lxBNbbbspcRTE7/KZDWGuPPg=;
        b=jSj1MW5xWpHcOISMuFne4+2+V//OfAPcaXRJHlwLhyKAnrm/Lu2cNv/GcMG2+7Wkpp
         M2ugMeWb3Xj4/IF7kQuy9wYnxPkyyCi+ff9zXk0J+o6mwyeXxDGqkkFJSXRJilHPv8Vi
         1Uis5kEbXbhu1YoME4cmUlVFnj3vpGImyB5OwpTYzNQO+NE0/h7GOlrBpz0kZVpXXP+t
         G3wxtFjEnxuAWoV+3QQoiN3x8nC0qyF28ukuW7JkA4Bt/qR/qlLHIdTUYAZEGY7hw3ou
         6mBPHcjFTdB+DmJrXHiJu/xS/Ix9wSfnjHvu0TyCq0bJULUAlL7/Q/5OC+IVWGnG96hs
         LyRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sZqz+unhbtHZerAdKz8lxBNbbbspcRTE7/KZDWGuPPg=;
        b=K0HiQe746vzx1uGBW1gKeGBqK543sm1TXBwQekp28QlWoTrvOCjdjY8scJPpaw4H0p
         AAxMQk48f/fTRB4JUKcgw7D6K77lYdQ0KLtJX1VXJqPBP1ztHivbTwd67Hv25c93s0fM
         CYkjfONZDW6nyZIvqISqyvB/8IaZLui6XMRQ6+hq9S/havOJI+ryeYmEArTM0roCXQxK
         ZXnMDmpOVgJ0jw8IEUlEcvWldpP39dzQCDcw8e+m04SjI6QL6C6AVXboU48IsyP79rG5
         QHqJgupWna612IQuvI6IPlHJh5u5TqE6g+0CuOo/+nV6XruB2yKgvWrW8bG23xdTQEXH
         Drng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sZqz+unhbtHZerAdKz8lxBNbbbspcRTE7/KZDWGuPPg=;
        b=Or+bZntu0SYPzT6II1WlurTXc9L7Cf7x87G+YEJq9D+XtllWo9ZKexRc3OB/AUn31i
         gXvOgcsFor1DfN0WrIgMmWJXca0SPEFVhvLBtblTAW90spxVLntFXTfa7ubFEWAOU6Qs
         FSlnimI/22ux8v5sbuudUWcA0L6675FiSPeFLGIBdjrWMsntBKcsdjzb5ajPG51N00p2
         m7i88hKcd3Z5JccDyTECeGHmEs0z55GBx+qPqCurcWIrnZTFauIlkSOaXMq2z1LlkkBU
         IkGgYL+l5CBhp+L4r3gZ1taIoB/mIk5WbKnu0+83hO8K/UJuYSsRb8L/czZft9HEqweK
         bmRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530x6UGNueOAtubMfYnqJvOpOXz2K9umU+aBEbZXxe+cdK4Hatxx
	7BaviOIHp6Ij/twgp1J4UeE=
X-Google-Smtp-Source: ABdhPJy+laVgaQrwIyFKyEDGkMKS3RkjfzJCOq/192zLOvzEEp6gIhdyuyJwd+UkgXUDG51g6W9DQw==
X-Received: by 2002:a17:90a:39cd:: with SMTP id k13mr1021446pjf.185.1612219739457;
        Mon, 01 Feb 2021 14:48:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls7225687pfa.2.gmail; Mon, 01
 Feb 2021 14:48:58 -0800 (PST)
X-Received: by 2002:a63:5f93:: with SMTP id t141mr18956808pgb.299.1612219738773;
        Mon, 01 Feb 2021 14:48:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612219738; cv=none;
        d=google.com; s=arc-20160816;
        b=kHJHge87nM/EDpyGn5IHda4EGLidy4CeHaW7zPn4+G1xzYpVlQACMqIN3+r4/baiz5
         Q5lcSDXpSoHH8nYzal2G079kaGPrv/jHsme/OeKdmmbJThjzSLs83cl2ykoVsPZSQ9zB
         NTxp9Dq5DztveI2Wmkf54FLgLp/1TnIR+/+9qGS4dLgmFXe2A9y2hKTm8Wbe8gFv4LUo
         RLf6ZasqbQetWa9qF7Y7C0KfpJpCEJgp2xdknFo7scIv0WgBsifGUu084gAmM3U3sS4z
         qy+foLzThAJhw5Bg8+WDi03KPbGj4aR9fEoLCz4AQtGXzLc3TLCilmPgJjlhPl2AYDn3
         d9GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=In96SOn+e2n4Oq3c81+ayFQgIekKDyUDXIMt4HMVvTI=;
        b=pRDoRW3UvgIyRyT55qmLmIAF6VI+jUWQzUQXR+G5wxh2aS01M7+hgJYWgWvfw9EHBH
         gcauUjq2GD/ytnjLVValzCQts2Zc0o2fpcTlU/6O7fuE7R4mx9CKMu/+B7TFMQNuRe76
         fp+sBs6ZpJtQ1QYSbNoa+sCNfpaHwqNaTKTwx9jVGrAfBhn7JhagicUCvlLkd8a/Zr/3
         XSfkWz8juM5dhfcPJ3Gkg7o3reN64I9qZngVkCpDrzPPrdAYad6O+kdhudeuC3BDbIqE
         P3ErLefugq/e67D9gBa3NprBMN+MmGALzMgb4XsyBG0NCn2yIA3v9nONJK8NKloDPAkT
         clgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id l22si67264pjt.3.2021.02.01.14.48.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 14:48:58 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 111MmsZW027971
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 1 Feb 2021 17:48:54 -0500
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 4C73615C39E2; Mon,  1 Feb 2021 17:48:54 -0500 (EST)
Date: Mon, 1 Feb 2021 17:48:54 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Christoph Hellwig <hch@infradead.org>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Ext4 Developers List <linux-ext4@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <YBiFVgatiz+owBs9@mit.edu>
References: <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu>
 <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
 <YBhuHJgZ3QPqHheV@mit.edu>
 <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
 <YBh0ywVzkUIR3fXg@mit.edu>
 <CAKwvOdkZRdBzzW19sVAs+pX-7wWwN6AWrxUkkZwP8L4OT7SLfQ@mail.gmail.com>
 <CALD9WKx6HREQeTRXuv81v-=DTVuznXG_56YFm2dM1GOG3s4BRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALD9WKx6HREQeTRXuv81v-=DTVuznXG_56YFm2dM1GOG3s4BRQ@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, Feb 01, 2021 at 07:05:11PM -0300, Vinicius Tinti wrote:
> 
> The goal is to try to detect real bugs. In this instance specifically I
> suggested to remove the "if (0) {...}" because it sounded like an
> unused code.
> 
> If it is useful it is fine to keep.

The trick was that it was unused code, but it was pretty obviously
deliberate, which should have implied that at some point, it was
considered useful.   :-)

It was the fact that you were so determined to find a way to suppress
the warning, suggesting multiple tactics, which made me wonder.... why
were you going through so much effort to silence the warning if the
goal was *not* to turn it on unconditionally everywhere?

I suspect the much more useful thing to consider is how can we suggest
hueristics to the Clang folks to make the warning more helpful.  For
example, Coverity will warn about the following:

void test_func(unsigned int arg)
{
	if (arg < 0) {
		printf("Hello, world\n")
	}
}

This is an example of dead code that is pretty clearly unintended ---
and it's something that "clang -Wall" or "gcc -Wall" doesn't pick up
on, but Coverity does.

So in cases where the code is explicitly doing "if (0)" or "if
(IS_ENABLED(xxx))" where IS_ENABLED resolves down to zero due to
preprocessor magic, arguably, that's not a useful compiler warning
because it almost *certainly* is intentional.  But in the case of an
unsigned int being compared to see if it is less than, or greater than
or equal to 0, that's almost certainly a bug --- and yes, Coverity has
found a real bug (tm) in my code due to that kind of static code
analysis.  So it would actually be quite nice if there was a compiler
warning (either gcc or clang, I don't really care which) which would
reliably call that out without having the maintainer submit the code
to Coverity for analysis.

Cheers,

							- Ted

P.S.  If anyone wants to file a feature request bug with the Clang
developers, feel free.  :-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBiFVgatiz%2BowBs9%40mit.edu.
