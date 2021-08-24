Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTWESWEQMGQESV2GHCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 418673F6AEF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 23:19:17 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id k18-20020a4a94920000b029026767722880sf12479254ooi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 14:19:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629839951; cv=pass;
        d=google.com; s=arc-20160816;
        b=gGW09X2TI65qpKPCG25M+EZEGiKTnC919S0b7lv07DTkvob5af75wDCUmSbWrfw9sQ
         pQHTZpjqi6tcnMbLpn9nun9kanXSKBZHPaKUX066OaEt/C4kit3zqMBa5oIAQiGly9AC
         jWjDixFo1FgRv9V+MsVS/o+v8qT3G/m2VE0VYwP0FdNcQbM9/wOMUwyxKdUOPCoBtxFQ
         d/Cz5RluXMoevED2/144iiKMdycGmZLylWdE/2nzZB8oO+THHoWKoQxFnaBskl5Uh6DB
         3rtsCdHGOkgVFSjnUf85JYHNbl2YT8Q8GM2hqrn+B7hsR0E33p3DNhmeW57S4ie/nuxJ
         87ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=UnFxlTWEkZmW/GBvK4PWKwES96hyAVJv/04cSamolFg=;
        b=HPx7mcDzdEWZ3vkZmCKN8jHHlkBpMBUjhU7SM67sVsiRNkWGRztCqyqe0haokRY4eE
         Me+avYY4uPJetCpRegIZTahpxcKZxI5mHwR9XaumJiH+aICurd8C42bY204PFtGfwYGs
         QhSHuMYz9BYkDzekt78O0EYTNKkNIvO+dvnx0ociQAD0a5MujYy6Q+WR6FzAGVEDjtCw
         cPZAakWOU5uHvcX6xpyonnQLVb2zsOhs8UJ8AnlW2g2RoCj6VD6rzxykRds69o+JljBe
         eXhRoJdMWI7Of7q2YSmBKaOaDJBGswp0zlvbCVvtPwf8rAgQlpqVEBF/H1wtk4conSDV
         hdbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ChXXmcCa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UnFxlTWEkZmW/GBvK4PWKwES96hyAVJv/04cSamolFg=;
        b=qgFNOHY0ixmub9Z88Wqm9ZeHxFTB2g5tIsxfdt+bbYrK7swr+XmxLXUjF9en7V3Bd9
         PKHYa67sVUoSRjcZ5n+VWsEEJ/u58A4Zt79lQgh7M7NyY1uZiLotCcw8nZS4ntLww/4A
         eluHLaTDPZgAVwmi3Cx7sy8ujjjEIeiOaOTQS3+RNLQF6R1cnlNOx7Rbu6iX1L4UkNiK
         v5xfyf757PtoGcVRQQOu7pPeV8HiwGxMoY9FohRvlCajy7xHa2++HPR5F6DWKgrSsroU
         rkUkTyoxqNuf4lUnbAkm/l6RtC86PT/Jm8XqBaWnvuAf4csQ/zqRWbOj+VyhVaBLCQ0R
         bx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UnFxlTWEkZmW/GBvK4PWKwES96hyAVJv/04cSamolFg=;
        b=mPHxwx5w+xp7Uc2em0qX/YeesZKnuNmaLJv/NU4s60HFbXjBVvKJuFRvtFve4ilTuY
         qhRyeNyEL3aCvXl+0z7Cllq6b04mdEy5LYXC7GRu+BzYBzTuU+8g19EEG9Q424hQHGqS
         NaQIqiVvW/sHUXFnYUXNOJPwR9MggqP+K7j2OwTevGO++oIJDVaCb672QRfCdpDRCcWB
         oOkTIg+Az0pJDagpQLxPOLsB546tzSNSXcH5wD8HT18+KHm+KsXFlAAw+gbvBcfQCfB7
         jMlOPD8fCYSU9uZKPfRXlCN5azOKtlwei3FI3/vXTvycVRt7naQso3XX/jRC63Jyx5aA
         zlOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dhj5VHrTilHpw5pFskMSTPCeb/z3e5CNaRJ9wOPsG+s0xpgR4
	22QHrdwP1JK9hjfm7ncXvBc=
X-Google-Smtp-Source: ABdhPJyS0Qelo1jEt1AhrHV48Ye4iUXrb+CvK3y7URSl9vD7oD2ZY1A89qGxPN5JmYuHEFpaLwrUTQ==
X-Received: by 2002:a9d:309:: with SMTP id 9mr34436463otv.365.1629839951005;
        Tue, 24 Aug 2021 14:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:760b:: with SMTP id t11ls13771ooc.6.gmail; Tue, 24 Aug
 2021 14:19:10 -0700 (PDT)
X-Received: by 2002:a4a:8d97:: with SMTP id i23mr31103279ook.4.1629839950640;
        Tue, 24 Aug 2021 14:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629839950; cv=none;
        d=google.com; s=arc-20160816;
        b=N732Tod4wQPOS+7lXtoxIviM4prJ1mYk0Zt7AXZ/R8RPxXvMPk/OqylozpTS2FPQJT
         HeBoo1MdaG8CupHyc3zV2HzXtAu7H2xdActtHaWCRQxezPut5zfXXNlFGxhE0NyBdGqm
         DRSTifhOm2AAVy6d1iGn3RBwgxWlCUMT1KayKsXMTt8FoLFgpj9Q1JCW4jNLpkUR1/Ro
         2qUHDtu2J7+amIpfIf75ckellV8MsNleo82eUnUn0YGeApXZg0nIfYWYV+5bZbF8F/S1
         KW03XqxavEbXD+R3DumLr5R0y2bnv8UhLvFrM6vSk9C5GJmtcYSo5K0BkPV4a4pGl9yw
         dMCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=AWy0NT/ir+44R/MYf5NREmOW2+tkmeFz0270UeNjWYo=;
        b=WiaNSY8KkBCkbYz360BgKNTDW2OdVnog8GTNyVhadS7hNeVTYnxfuToer7i4nsEYN+
         1wsLzsvyUiWcLSp+elED2H+OpnLuT80GHTOLjWenihe5COuYdijlXomuDObVZ6KMMUF0
         7akFjgl+Ft4bBf36obEYWMa5PZcJkYp3YfvEyga53IcXOXYDZG6m4sZOPICiZJiYdvRL
         WiSxWUAROOA/NVvYrv2qV6QLLn7a+ndgdeD2kfKhhu4J0ZZW46KWCAZToLyAESk5ZGjV
         PVjwskX1EByqFO6PA22l0JM/W1DCnPkyGVh77kRj8KLxE3sVjfKQtPHmwbjIYIXHIIV9
         nJtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ChXXmcCa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p6si73340oto.0.2021.08.24.14.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 14:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 47AA161247;
	Tue, 24 Aug 2021 21:19:09 +0000 (UTC)
Subject: Re: objtool warning in cfg80211_edmg_chandef_valid() with ThinLTO
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org>
 <20210824210507.GC17784@worktop.programming.kicks-ass.net>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <dedde693-bf1d-a35b-e858-dab1f8f65246@kernel.org>
Date: Tue, 24 Aug 2021 14:19:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210824210507.GC17784@worktop.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ChXXmcCa;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 8/24/2021 2:05 PM, Peter Zijlstra wrote:
> On Tue, Aug 24, 2021 at 01:08:58PM -0700, Nathan Chancellor wrote:
> 
>> The LLVM developers are under the impression that this is an issue with
>> objtool; specifically quoting Eli Friedman:
>>
>> "The backend can, in general, create basic blocks that don't contain any
>> instructions, and don't fall through to another block. A jump table entry
>> can refer to such a block. I guess certain tools could be confused by this.
>>
>> If that's the issue, it should be possible to work around it using '-mllvm
>> -trap-unreachable'."
> 
> So jump-tables are a weak point; ARM64 was having worse problems than
> x86 there, they can't even locate them.
> 
> As to having a jump-table entry to an empty block and not falling
> through; how are we supposed to know?

Fair enough. It does make me wonder why LLVM does that.

> Emitting them is a waste of space, so I'd say it's a compiler bug :-))

Isn't it always? :)

Turns out Nick brought up an issue very similar to this (unreachable 
conditions with switches) on LLVM's issue tracker 
(https://bugs.llvm.org/show_bug.cgi?id=50080) with the same workaround 
suggestion ('-mllvm -trap-unreachable') and there was no follow up after 
that so maybe that is one thing to look into once Nick is back online.

> It's been brought up before; but perhaps we should look at an 'informal'
> ABI for jump-tables ?
Not a bad idea, especially if this has come up before.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dedde693-bf1d-a35b-e858-dab1f8f65246%40kernel.org.
