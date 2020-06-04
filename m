Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX4Y4T3AKGQED3RGNYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A901EE71F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:59:44 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id y69sf4991152pfg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:59:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591282783; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ub7UpYPMWGqJF05veo8OnBP7eLvfOzeOfVCVfEeTSuJP+7EhPR6Ojdkk0GkgJW/ueD
         nDPAL34WIso9qBaqm7TAF7DY52VoTs6ZZ4i9cNqxKyXQBUc39Kewm8D6kA2jYuD/saFo
         HxRUNu+tqdmFqAn1pail6GYNCDk1+Em5PUU92jm6U3EKWILPF3dqoxriPtXah69t1LPj
         w6MLsM0MND3q8txN8+ch8Zwfxqitq1lgPo/EHE2tNlDwNbFjB6zW64Y7QJqAeD1rFxTT
         0DlJnriKxOxf4RQ54ZOPzrgqs7WubBFKifzAx1s1hJfaQPQUFJYcn7ZdP2f6BY4Xe7F8
         JCqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4mtmwnwehVNkDPgtJwgSM9GGRQYWrRkmyYPzn8+C8Ps=;
        b=ZTgRMBglemgIX4wXqQ8C5ivBCMapSy1H66E8xwhU6uXw9D9X3NXsy7UC+HmqNuzI+7
         zTsjEm0KM5EJqa4hUWbvzjemfmdow2B4dp69A2ypXkLkZsoTV9c3/W5tdd3zsqfk4CAA
         JF2V+QPydxHl4YqTzjWPrYMMcC5a5r7N88vI7tDvuR8uCAVCUxTqsOCseQoDlOJoKaV3
         qUwAmtYaG2sZdBkV25PbU+GaVs7m8CgU8Em0UrmMKMaiHgTeeQmf2r8nlmKGvjAg5C+Y
         jciiNx4VyxXNTB2U/nUALkG2l1kMmRtoSjJ19vur1nvuv5PFSBPSxHBNFTsJhh7Sa9sd
         pcxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TupHTdyg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4mtmwnwehVNkDPgtJwgSM9GGRQYWrRkmyYPzn8+C8Ps=;
        b=aFOUz+8PM495I4N60dekM1vItdodP267Mj+ooNDr8XdZdrzWGsewUoYpQKWIQ4kNhR
         lt95iIF8y703b2TP5OBFPjiltEZl9qSqT/KcPh8KDTX66pvb4fXw56aaDtSqp2PdbsQ3
         OaEpsjtW7jDziR/zEs/AOOTAV5q97NbKwc50YcQTJRe2uE/63oyZqjZjhR3LqFxqbWH+
         oAr376vHG6Ij6nMGXi6erL+AGY0jJsl8yMAHlB0kM1kwDKPqu2UEm4X27uU/LGK9Yd4v
         HpFSJxCdcAX6fpRrEFRfHQCFWFMGo1tShOrFSGxvk/zqTL7M/JMfRH8Bey7XoTdNTa8y
         HYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4mtmwnwehVNkDPgtJwgSM9GGRQYWrRkmyYPzn8+C8Ps=;
        b=asfhy96ThA6r/++h8p2r534FQl97J8hH9LIAIRwiOP1Ye6MTWqco4ffoW6pMR41oKC
         6fekTKmgq18NbKxMmaT8EdHG/ouqyix230EXdKVZmlkwCmOVIl8hGWrOYAxgEfq1zFeO
         CpvlL4wcqdklN+F+dxmWMPF/Ht/9Q7TtMuGVqqFyq/TazQEdvE0G2fYnduXhqCo/yzqV
         2XugA0VTI6m8b9tZfd2SraPVtYErCFlJFmIfM3jcSm6UP2Zappog8An6JmWgiBcqqjhN
         KxWFpdQU7hZL8WB/ihNLDIp3t0kHJ3CdSUDCAUfgwpRM0JkCQ/DowbHPY2Ml32p9u44y
         /8MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XMXUDo8StzQw1kXzVy1bu+5gz6PybmoGhhdGq22MYCodfVL9x
	cx9d8lajyCoaEwI9yHPz4jM=
X-Google-Smtp-Source: ABdhPJwdKn00xkzhFc2tACVlIkDwIvndxhonzObkkyaGaxztBm+/7X8uDgY3+n6snFb2F+blRMrbiA==
X-Received: by 2002:a65:41c8:: with SMTP id b8mr4660544pgq.265.1591282783185;
        Thu, 04 Jun 2020 07:59:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96a7:: with SMTP id g7ls1928951pfk.11.gmail; Thu, 04 Jun
 2020 07:59:42 -0700 (PDT)
X-Received: by 2002:a63:520f:: with SMTP id g15mr4991002pgb.317.1591282782695;
        Thu, 04 Jun 2020 07:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591282782; cv=none;
        d=google.com; s=arc-20160816;
        b=ow37O+ToL0upLucRgwQzfx92gIWajiTUXpugPpFDAB68zy4tRge8JsbQRGFoqSyVy2
         +mMhrJhKxVUPA80hNxadkon+akY0rP7SGUrQIG62XE99hunLmXKKdo9mgoJBaM++zYXo
         tn6b3FbrYUpJCn1KPW9UcGKqGwtaxGYA7k3S3RgOrFHHayLn95a1teMy5o77d6mylAgy
         HWuHq7TFAu8tKzSMz3QhJRnaFNr8PhN7eUcwFKs1H7QQUuDkRfw9LaX2BqMAlz6xsAyQ
         o6/I33bQ5aWwJlwzofL+7/oCz4PrsnLOSqjOwSlUSJPjzYEfpUeGGswu5I7Iwj9qHv4h
         axLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xZR3lWkoYpLFg4eE+Etif6ukCUL5ApBdi/GoHnvWaEk=;
        b=YOpkMjMk8YO4xgjjITz2D0Jtp1fwJQRXwsc5vgDenWkYrIRVtLJDnEWpyMQJwLDrLD
         oH1Sm1v2edTJiGwkdFOHoQF/GHHoUf772pjmPtOxrSkZD++LleaWILUcEO+7CUNwUy7n
         RWeGuu7+Uec1zjhCdUkDKSNc3du15E9LDV/5WFT3ZoCfeVPdkuTySqRHjQL/JdH05a5P
         o4r+NjiJEhO5tSic4rGiAgi1g57LzZiqMP9itLrpKd7aj+LGlwwRr8uz3QaIUMDxCn3q
         MYACSRXrQ9OqY6ujUJH143DbvP/QEwrBdMQSyJc3tMOa0y5R7PLrtNJQcU6X//NUEgT4
         VcMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TupHTdyg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a1si339259plp.2.2020.06.04.07.59.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id z64so3380951pfb.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:59:42 -0700 (PDT)
X-Received: by 2002:a63:d544:: with SMTP id v4mr4979382pgi.60.1591282782325;
        Thu, 04 Jun 2020 07:59:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w65sm4752697pfb.160.2020.06.04.07.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 07:59:41 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:59:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <202006040757.0DFC3F28E@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604132306.GO6578@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200604132306.GO6578@ziepe.ca>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TupHTdyg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 04, 2020 at 10:23:06AM -0300, Jason Gunthorpe wrote:
> On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> > 
> > I preparation for removing[2] the[3] macro[4], remove all remaining
> > needless uses with the following script:
> > 
> > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > 	xargs perl -pi -e \
> > 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > 
> > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > pathological white-space.
> > 
> > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > alpha, and m68k.
> 
> At least in the infiniband part I'm confident that old gcc versions
> will print warnings after this patch.
> 
> As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
> the warning?

I *think* a lot of those are from -Wmaybe-uninitialized, but Linus just
turned that off unconditionally in v5.7:
78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")

I'll try to double-check with some older gcc versions. My compiler
collection is mostly single-axis: lots of arches, not lots of versions. ;)

> Otherwise the IB bits look ok to me
> 
> Acked-by: Jason Gunthorpe <jgg@mellanox.com>

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006040757.0DFC3F28E%40keescook.
