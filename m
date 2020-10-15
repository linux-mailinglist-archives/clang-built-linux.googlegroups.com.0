Return-Path: <clang-built-linux+bncBAABBPU3UL6AKGQEVMDS47Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B35F28F7F9
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 19:58:24 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id e13sf2269690pgk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 10:58:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602784702; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZpZD/rD1GfYZTbyQpJvOx42GljBHgROgesx9QnSBsMEEaRE4fchyedVdQH1+20szq7
         8AkuMjy912J0C9WNH/5NxmzVmi6ia1CCWttPjJYoXoLEDYz3DqecSQOazUo97/xoelnh
         TRB7TlRKCa2Qe/E/DjjuADwKTC5F2uQhXvXbchoS/P9g1R0WbpzsN/a0/+/3G7Res5z6
         VxmpJPB0Rjlkr0qcZaZtChjDgUFzotQYZzoYCgpAy3ZS4Bvq6fcLI4iRCHWh4D+l1u59
         SYJjOUWTipCbUgzWo/RXxmQAwLBkI3yEixKhdEVuFRx6FtMNMmGOnZuOHPyBuEMESlWd
         0Dng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nR0Q6o8ahYwhAKY8PN50w9ct2R/wjIznsKJs85ABIfw=;
        b=MmdlxAoSHU70yv7YtB6hTAanvGwsAFl6SPFNjiimnk1HUqg/f26YcWGMHy7IHs5oK6
         yI4DmbKmpJgeNFySZrzg77xycSTahKZp3tfTovs1l8VqiMdqyG1HOyRrOFdO1yxbB3hl
         TKyLab1+sKtpmoSD/4RTjCaeVNlZ5NFUKxXnf3quJV8EYnS+NAgpChoML9m8L2Omwnal
         8JVO6L2KLbCsSckN0k97qkh5F5tuy209j5/aAUpRAxA7Q80OHaJwVD9dqqq6VYLakCAm
         PIHqO4Gb0qwKUmx6TT4KGw7o2MxJUzku26cYSpRA0WQSq7DSXo3kaA9VriV7RHM5KAY2
         TjIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aGAfJkcm;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nR0Q6o8ahYwhAKY8PN50w9ct2R/wjIznsKJs85ABIfw=;
        b=eWv2j6+lBEqOK3m51vtX9beku1F36eQq06lvwsqFtlLWaoO0AlBtYzyM8qhO5OpwKR
         WWwEBSi0BpkTx98pNpmA1c5Ch/diZuNoZO1f33xC7dNvvomux4vss+Cat9iqxDUZyuH0
         xQdf6mbo2APs1NBTzmmCmEBt7kG4Axe/h7LOeOSLBBbz2+xO+iv0awHhwCcaA9hHfp8O
         h3wgCAe8sCXIKbSGDYzbyKDaOhj2RJJUfOoabV8u4Lgw+SBDX3/D7Le3rLMDeGiK8qFg
         wQIKiJ4XNGfugpMCsEHpvuyF/bHxPnitiap9icO8Lm+96GR6aoiJg1TTqxNadnSxHOCv
         upVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nR0Q6o8ahYwhAKY8PN50w9ct2R/wjIznsKJs85ABIfw=;
        b=USbFr5Jn4IJeMGbTZTwQHF2lDtGgYG/FXE6lzjq97Goh4kdoom9+X/g0tWij+sxITo
         GSEhY/y1xdLJvdWoJM1sDmIOysCUY3tySP6oXkEI6DBnyrmT4IovACvyvmRgTKoogWO9
         dIpEc/ujvl4uuLyYhRQSbB0YEZxJwAbMDvCcfHmMJB2p7StnFLtAea1UW9nQVpRU9Ma1
         HOmGqhccc9oDERES+LA0DwwSWiklfFxqU3dDlIa2VkYnhHMPLzzRG2FYXk2uTprt+IXU
         XbYaAbrLjaVVPeLXlEXWrHnYO/hHCPhRKtyu2kxeJQY3CpfNPrzOzrF4+85it9k2Ou4j
         7+vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bEMcrstupFbjN1is71eArmhRJHhgDAb5DFZ8i5+hg48rUPGI/
	GoLu6Dn5Iru4Vpbn/Iel8I8=
X-Google-Smtp-Source: ABdhPJwyiC31ZsDTlt6pBGMefrDWlEUgQuiHDR00XrqNyFsB67qhx1Wv+C8lfP2iTpEGGj09kCZAEw==
X-Received: by 2002:a17:90a:77c1:: with SMTP id e1mr39078pjs.39.1602784702680;
        Thu, 15 Oct 2020 10:58:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:786:: with SMTP id g6ls1316957pfu.9.gmail; Thu, 15
 Oct 2020 10:58:22 -0700 (PDT)
X-Received: by 2002:a65:6793:: with SMTP id e19mr32057pgr.35.1602784702216;
        Thu, 15 Oct 2020 10:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602784702; cv=none;
        d=google.com; s=arc-20160816;
        b=xkKjeoXRv5VeICAxwTG1KeHLWK5sqItMWcCY53q51VrsWMMaKSJNv39e4atAOp6aWt
         XF7GHUYo3WNqzFSCZEWqEghkqbe9j8HEaoH27BDf3AK8ekMFpIueId7APJjUugKdqj6W
         8wLXt9G/Zg+fM0ubOQPH0Vt7y8akwV9Rvh01hQoFKJ4U6uK0C5/dC0WITQQaesR6BefB
         My+nfZ568s3dqv0APzdklHHWFQKX04n7ZpRZd3VeHZdwbj/E7mrilmJM5liLDb499aMp
         wACXvXLVuV06iCB0+sbtetv54+NAEqQFy9NwKdJRKCdG4F14G/H4XS0mRQ3TOiIcXh2o
         bIXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iAXexSzxH1otMVa16dn+Ypm9aamg0DU9x260+S4EDoc=;
        b=azcW7ItRVGBbaSlAk1jKOYf4bFQTmJUbgO7dcq7CxeyBNDJtn12gsxD21yXYuPBRp5
         dHD9qhQSjo4FROZdbf4CGY7RFpp7HwsRQ88FNE4LRZPMTbwzBON30TObcn8iU1Hysigw
         JTg72rk5x8Er/qo68QhtDFpb6P1yu5yLKOo8xsfiI7lHKcKle4QrJrdbAhmbhtgeXz7X
         BwD4Olof6nOkvYNaV8KV52EyeyH3SCbNlcCS2mFYESClRNmtfHXpdsJdU8EZ62pgl05p
         /li04726au35HEZWFnmbAolzudxHFReoZ+zAl1AoZbLZuk25y6X+PxAcUSob2yyb7N9r
         LqLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aGAfJkcm;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i9si678pjh.3.2020.10.15.10.58.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 10:58:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gmail.com (unknown [104.132.1.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 60282222D5;
	Thu, 15 Oct 2020 17:58:21 +0000 (UTC)
Date: Thu, 15 Oct 2020 10:58:19 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	syzkaller <syzkaller@googlegroups.com>,
	clang-built-linux@googlegroups.com
Subject: Re: WARNING in __rate_control_send_low
Message-ID: <20201015175819.GB3336735@gmail.com>
References: <00000000000064f6cd05b1a04a2c@google.com>
 <CAKwvOd=4h5-YFWvUATRx=++oGJ9jfBP+n6B=4iuW_nWU5XfJjg@mail.gmail.com>
 <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aGAfJkcm;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
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

On Thu, Oct 15, 2020 at 08:04:09AM +0200, 'Dmitry Vyukov' via syzkaller wrote:
> On Wed, Oct 14, 2020 at 8:01 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Hi Dmitry,
> > How is the cc list built?  Is it possible to not email
> > clang-built-linux@googlegroups.com if the compiler is not clang?
> 
> syzbot simply uses get_maintainer.pl.
> clang-built-linux@googlegroups.com is listed for net/mac80211/rate.c.
> 
> linux$ ./scripts/get_maintainer.pl -f net/mac80211/rate.c
> Johannes Berg <johannes@sipsolutions.net> (maintainer:MAC80211)
> "David S. Miller" <davem@davemloft.net> (maintainer:NETWORKING [GENERAL])
> Jakub Kicinski <kuba@kernel.org> (maintainer:NETWORKING [GENERAL])
> Nathan Chancellor <natechancellor@gmail.com> (supporter:CLANG/LLVM
> BUILD SUPPORT)
> Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD SUPPORT)
> linux-wireless@vger.kernel.org (open list:MAC80211)
> netdev@vger.kernel.org (open list:NETWORKING [GENERAL])
> linux-kernel@vger.kernel.org (open list)
> clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)

Note that you've volunteered to maintain every file that contains "clang" or
"llvm" anywhere in its contents:

CLANG/LLVM BUILD SUPPORT
M:	Nathan Chancellor <natechancellor@gmail.com>
M:	Nick Desaulniers <ndesaulniers@google.com>
L:	clang-built-linux@googlegroups.com
[...]
K:	\b(?i:clang|llvm)\b

If you don't want that, you need to remove the "K: " line from MAINTAINERS.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015175819.GB3336735%40gmail.com.
