Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBIUVTSDAMGQEBLBMBBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE03A5DEA
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 09:52:02 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id dd28-20020a056402313cb029038fc9850034sf19834478edb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 00:52:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623657122; cv=pass;
        d=google.com; s=arc-20160816;
        b=KbcIY7Xq8NyW3HNBhTyYDt9eE9qpe7QlMU1JEf9f7cvQluodCd94x3efzKTMJ885Vi
         +DCUtXZpbtlgWtnt1Wyxlpg84uco02/s8lkvyCtoJHZXHz6H3sFbjVJVSysxCiZbg2ro
         L+qnSGTuTYnfc+z+9IsAtlVsxXhTLKP0jouVcicCCV/Wdv2BL2DoAUgn11NxLLnLhMiS
         UJPMkE7G0ENHxtfXbpKi40nrjdprETfIxtMKJyCOak1qUUhkp/aRtNv5UdWYdrNnCssX
         4jgBQPNeccM4AXe17qMxoJ7hUttmcA5PyiQglI4hiU7FFByCyDGxJRCUCqDON58JwQr3
         //lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NmhEXPjI/gntznsO6aRZ7gqGkH613LvaXV30eUSyzZY=;
        b=Cx0pzTiztZai7FZvYAmWzbprhOoGfOHgwicn3MMJLuWZSWnXP0MBRv3SutqVtjOgT6
         CQDD/AKOpgKwjvJTqL9ISWBGeeL8sdXIMMXYsUvHbpW1+1P5JkFnUb7JkIDj/5uhTKwM
         T6vnX/FX5pcztUc3RtxnbbxjXY0xRgLjJxn3U6E2iGeOr6dmfTw9Js9Tm+HMgJUaJVvw
         95gCh606nYD+TAG6QVr+gsZI+Nzz+P4SvLDyWkMr8Chxd8xFEWvV650NffvSc/8kHlh/
         q1rRwH/1Ycn5qiPkIa5DGbvZEI2sOj50MFBQfPODv+ryyJo8+VNVC77QyI+RFAyKUe37
         9HIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="iMpjx/GX";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NmhEXPjI/gntznsO6aRZ7gqGkH613LvaXV30eUSyzZY=;
        b=CGujgar6We3FKAc/2ZE2kc50HWoFNLqo3xISOQmE3pLK4s3mwsnXCBIY0g9HXjhIj8
         6A/rvhgkO8MM1htDKz74e80WS9X093g65YCf1pe/edVxel+ZAyvpen8QgU3jI80NS62E
         FM7KA7zWUfJ+esNf0haYJAwkavH9Uog/Nfc8hSc15OCmx2feTbEzYs7tfGZ371+1DSEw
         Uhn8rsc9rIliXpUaeTyjUia2enY9AJuSfUoEAIfrIrZUORsjOjYEPLqHmkAte4k/RQqw
         MFzqTRzfVRzDCoFK5ojBCV0KlcUK84bJYxcL4+iO4To6EKt0bdcgrEuMepG5qJC1zkeW
         lmNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NmhEXPjI/gntznsO6aRZ7gqGkH613LvaXV30eUSyzZY=;
        b=jj0AcsjC1VtKNfewPGCfNtx6fdivQF3t7JGz2u96y6XcdlGfurEx1m1gx3YQFEYVMR
         vBH8wL+zUW6Tvg/5Tf3Z+FMR9PFHWZG83N3ZYEp7njJSdQSThTC79kBl5m7ym0ix18nT
         3ICbUO5n0G2/y9g/MAvahC1mRSpqzDc0X9xS8VtnHxUyWk8QQZCvyvXDoIVH/VTmxJM8
         fIEPh176zPERj+K4j9cyszv6Mbmbd0tTZx+1lvW6RSu04G1XDQCjIGfiSnbdSsktg1Tx
         /EqqA21D5X1VLgfeLI+IOjLZViSM1vsDR75olkg6xcg3zpK2InEhS4ScbGWqrQPDkd/h
         +NJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531q6lH6kABRdqiXnSpvCekYQKzsIxZ9vYX3QGx0F/7UyM0VVuHa
	NUHP6EzPn2Ixs1tm/MleKLE=
X-Google-Smtp-Source: ABdhPJzVwID0c8BTGjl5Sm9KYlTEPlD4Tl72EEwQD2/twT6Rd3vfVUTfOdCGQcUV8Tbg4j6k/iId+A==
X-Received: by 2002:a17:906:240b:: with SMTP id z11mr13902764eja.545.1623657122391;
        Mon, 14 Jun 2021 00:52:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1510:: with SMTP id f16ls5376349edw.1.gmail; Mon,
 14 Jun 2021 00:52:01 -0700 (PDT)
X-Received: by 2002:aa7:d3ca:: with SMTP id o10mr15756068edr.197.1623657121521;
        Mon, 14 Jun 2021 00:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623657121; cv=none;
        d=google.com; s=arc-20160816;
        b=wclSueeesIJQJYY+X5YePYr71xM0ImB7P9afhRoqo7y3AxpHUxljuVq2ivRbZc/UN2
         vu4GecNEbpEPLTBebxcooMHkPSeBS6OLL0j3OztHQac/i2aejEBBaQqggC+6uPxp12GU
         v6ucGGpvlgR7RbUYw4v7e7KyKIOKJ5/62fzDQlHd91SDpZO8sikN+U1BGIstwIMy+mhn
         XpWdUbusnbPb3feAfw6DkmSHKB9VOvzxJEHST8bXs96iH7tpHAomE7kDLTteMk1ygbuG
         E+Ro0HS4FxcdJFhljeBZlkptF2Hjrtp/7DWVEEiPplUMErNWmiQusW6fcBFJTgAhKqpT
         W2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tgENEbQ1euA5WeQRBjJGfSzObO0naqGm4XxibhoeuXo=;
        b=DiLfY2AzrON6O2KTIKYMDpevX58XEzf8QjbmdeY2S2lDKXUQ7EdHkH4rQHRk5PLpfR
         409SyJ6aw6dLR8BwSGcHMhR+zEqQr1WjFB1ZmPG1p/ROpAxBDadd2gi0lxVkeVUIMF6b
         tLrVzcF9b1PtnmHyY+JBLo+sP3B8jOEPZlghxN3ONSuGVWAWG9Dr7V+QdbkFvYzIQngh
         UiV9qaPBAVdWkWBZYNBjeGMULYUirqKZUKuV37kXf0+9jiav0iaSDBAhaDidYs6iQjWz
         fq3kKU7QMoVxYrKvHNiezZio7QmUIjJEn/pfx86xVqdV4944Nz9gcgmz/z/0q94JqSA2
         fB5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="iMpjx/GX";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s18si256026ejo.1.2021.06.14.00.52.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 00:52:01 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lshNd-0058rV-UV; Mon, 14 Jun 2021 07:51:49 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 00B8B300252;
	Mon, 14 Jun 2021 09:51:31 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id DA0252026A646; Mon, 14 Jun 2021 09:51:31 +0200 (CEST)
Date: Mon, 14 Jun 2021 09:51:31 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Bill Wendling <morbo@google.com>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YMcKgyOz331qvO/R@hirez.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="iMpjx/GX";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sat, Jun 12, 2021 at 01:56:41PM -0700, Bill Wendling wrote:
> For example, Fangrui gave you numbers, and you rejected them out of
> hand. I've explained to you why instrumentation is better than
> sampling (at least for clang). Fangrui gave you numbers. Let's move on
> to something else.

I did not dismiss them; I asked for clarification. I would like to
understand what exactly is missed by sampling based PGO data that makes
such a difference.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMcKgyOz331qvO/R%40hirez.programming.kicks-ass.net.
