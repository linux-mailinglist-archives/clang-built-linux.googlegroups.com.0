Return-Path: <clang-built-linux+bncBDY3NC743AGBBZUA22BAMGQETLDC42Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE96342A99
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 05:56:07 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id d15sf1791449uap.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 21:56:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616216166; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4xK9bWoe6dcptZK8w+PTDonTFTv3T2MZCZrDq7peGqk0/g5CQ2f1eZsqqkE3eHlRs
         bGEbyOIrJCFQUj8ZzM5UsYYpiMFEH+/B0tWFzs593W4USHZNshSCbQd1HuxBm1afJyY3
         aOjEX0x9Ur2AgwwOFoBXFTUHe1EOz5w2+vyjScfpN3AB9h7RoEATO4CukAiZ4oYOajyz
         mf7eMMg8hdH9bbom3Q1cYimUssRWJBSzKoZUaBIP7uo812qo0ns8XhM3Ej8hy3cw9fcl
         UMSZ3em+/EkXKlxiRWawCOURuxQ5wZbNo72VtmrGTq7NV0f5U9tuFa1Ywr3oGwwrNBLV
         6hYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=c1BHJKkSVIcj/ZBPNKW+5UnjeKc3pZGpoFZ1cwhtsy4=;
        b=sbcsndalNHYWbiXYdeDBWRKj8xtbfLKGRG5f7Tj/f4GVFat4m9D9W4wlmHPfzQA5kv
         zRKHykeLRjDFdj2UhQdAhh0n/BMWTTo2WTUgfluE9oj7HKyl1eDlGRbnOoUhCblLY3mh
         8dTyzhZDdLeM7uoN39OPL4rZFXwDynWWnAVYb9gZXKv1DtGlYRpT8GEHnwU1caE0ETMG
         cYa1zymll0d1AgNQspubQZNYVqs4xFp23lzWAFuuhxW5cKh1MoVw175ar/IQO9GNd1y0
         Bv3TL8AYeTdFihiGT/jUhynF6cr6FC6ibx/2JxHICMmgkI4zcoKHvV62h6hVPlLvgM+u
         zq/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.2 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c1BHJKkSVIcj/ZBPNKW+5UnjeKc3pZGpoFZ1cwhtsy4=;
        b=i7Nde4xFRYufWYO99YPsQ0Vyq6jlhud298g78eYmaXhH63isR/xwid1AAAArEjrs85
         SJEF2P5QzZPuY5H1zD1TjmXPrU+ByqoBjbjA94RsJYMvt3hZC/UbZhj1KRf82sIw1tjq
         0QHBamytdeP3USZheuLs9UlZYngVqWf/A+NvMEu0j66dn/BgP5M4GSxtF89GYohTqtcH
         19YtYXxxf04qRYGuILre6XYPI0AKKGO8DolK2z1h8zw0nd423U8hVbybxcAfhf44Pw7W
         ZoYZk6hjF7Z4wyq8NmljSxLBVEIU74BRd5snj3AJIlDuay6M14lzRQCBTna3lhNBo1Dw
         au7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c1BHJKkSVIcj/ZBPNKW+5UnjeKc3pZGpoFZ1cwhtsy4=;
        b=uNjt2dJ0ZsqP6zLNDEOJLsOy59CXticOF+BluZ3tMUgVeXZlwiF3lSnXqW207iDlgp
         LbDD7baojPN8LzP90OY/L5TOnhWxWGBnTpUq+lmpaUL0RqyqzAhKoASVGEDIVKJ1f9fo
         J2jrmzTwKoubmavnRXIqvJlpOj4HvuF0ol379uibM5EUeE/rGdtTz+YAKROcJOg0N4ev
         Gl7ATtU0vrRom2jkwBxwgic60entjtF8TYcr/fAhK+LPfvGv5jx3qnsAn9XBqfBnGxQr
         yt94SOhqyR8ckcFS61bI2xav6seE730AUloccBouG4GsP5Xj/MmoAQ+8J8Jw2fRVn7LL
         8okw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EJYMh4s16tSEmtuYq6lJg/0j/gZngCxHLlRDAvR5Zsdt0WRjs
	bUz/DU0oyulxX+UKfc7nDD4=
X-Google-Smtp-Source: ABdhPJxbxZU5kPI86XbYuU4Y4q4EkdBS7apIAlXKVU1afKk/dCUDJUctz587qAZnJzG8RjlO7C46hg==
X-Received: by 2002:a67:31d1:: with SMTP id x200mr5044529vsx.16.1616216166485;
        Fri, 19 Mar 2021 21:56:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3b93:: with SMTP id p19ls558074uaw.8.gmail; Fri, 19 Mar
 2021 21:56:06 -0700 (PDT)
X-Received: by 2002:ab0:3736:: with SMTP id s22mr804057uag.76.1616216166047;
        Fri, 19 Mar 2021 21:56:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616216166; cv=none;
        d=google.com; s=arc-20160816;
        b=be1AXYyzMT6u9iaIDg1uUcwmhP7qO/ZAJesfbhl5YdYBY+xhX8M7JNJkDmN9M/y286
         zCBS8x1wUSzfCrOlzgImJmHxqZp1P3cKrgXdoY57aWPfBkK7Xz06le3Zsq76TRucuCVr
         vM6iLfq9X484nv3JRjK0U2h5ewoPTu1fFOXyDj7ad9wWryxjpUxYgbI5Z21FqzW+zgWR
         tKksA75QQX7GXd2RJDAxNOqmzDBu35YeW1blUEBUHytnoRyXWAVHz2kTkHxfaxVcw//Q
         OPOpP+2NiGM/0iIp1S1+28p1PZBwcfeTA3Smw7nCwwJkxI1z7LVQ/6myR0v3fe86y0Pm
         yGpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=MZ8QJtucbLl4fNCyQ1b+im2tO5vgPH4xdMTFCqE+vlY=;
        b=DrJ2Wzniq/ksg1AahDD7e87qN8R11IMoHHj6Skplrzbwcg0qyrquTwbNNhC9nBfzCa
         GX+Fdrouu/x27pNiDmIwrY/IoSqTtuTc0nZzlliCviKoMvooV5AQadqJDiKIJDgR/Sv4
         3USWoZAkFBoHmJ5F+ULJsWDhORwXcTJTMdRMmo2/3FZttSULiUuKWfzukYRkDtkkd1YT
         kfVPMdR8oxYZfJgKgjl/xbzxM3HI09QaIyOM5daRgFgrllP5b5IN4ftb4qhPLEt1cPPj
         ofeEgckhxyFH3bIq0qL4gLCWnDqol7YHIJPpeF8awFy1PnQ5wT8qulZ18stbOB01cp/U
         MRnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.2 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0002.hostedemail.com. [216.40.44.2])
        by gmr-mx.google.com with ESMTPS id w26si254423vse.2.2021.03.19.21.56.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 21:56:05 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.2 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.2;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 203A6837F24D;
	Sat, 20 Mar 2021 04:56:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:2892:2895:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3874:4321:5007:7264:7514:7652:7904:10004:10400:10848:11232:11658:11914:12043:12050:12297:12679:12683:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14181:14659:14721:21067:21080:21627:30045:30054:30070:30075:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: iron37_620244d27755
X-Filterd-Recvd-Size: 2650
Received: from [192.168.1.159] (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Sat, 20 Mar 2021 04:56:03 +0000 (UTC)
Message-ID: <03d462504887401ffbcdb58a392ad01923a2be7b.camel@perches.com>
Subject: Re: [PATCH] clang-format: Update ColumnLimit
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Ansuel Smith
	 <ansuelsmth@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Fri, 19 Mar 2021 21:56:02 -0700
In-Reply-To: <CANiq72=sEtv6-uMqY5QqpHSEqZnMj=6VrhgyFE2a=wZy=+_SEQ@mail.gmail.com>
References: <20210319183714.8463-1-ansuelsmth@gmail.com>
	 <20210319184234.jsudy6solmtrq6vz@archlinux-ax161>
	 <YFTxOcf56lPBi2sb@Ansuel-xps.localdomain>
	 <CANiq72=sEtv6-uMqY5QqpHSEqZnMj=6VrhgyFE2a=wZy=+_SEQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.2 is neither permitted nor denied by best guess record
 for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2021-03-19 at 19:48 +0100, Miguel Ojeda wrote:
> On Fri, Mar 19, 2021 at 7:45 PM Ansuel Smith <ansuelsmth@gmail.com> wrote:
> > 
> > Sorry, didn't notice that. Considering that checkpatch complains and
> > some reviewers actually state that 100 is the new limit, I think it's
> > time to update the file.
> 
> IIUC, 80 is still the soft limit, but 100 is now the hard limit.

80 columns is still the strongly preferred limit.

From coding-style.rst:
-------------------------------
The preferred limit on the length of a single line is 80 columns.

Statements longer than 80 columns should be broken into sensible chunks,
unless exceeding 80 columns significantly increases readability and does
not hide information.
-------------------------------

IMO: clang-format is mechanical and, like checkpatch, doesn't have much
'taste'.

Ideally, 100 columns would only be used when long length identifiers
exist with some mechanism that determines statement complexity.

Today it's fairly easy to go beyond 80 columns even if a statement
is similar to
	a = b + c;
when identifier lengths are relatively long.

There are many existing 25+ character length identifiers, so the trivial
statement above if used with all identifiers of 25 characters or more
exceeds 80 columns.

So for some things, clang-format (and checkpatch) should allow > 80 column
lines for trivial statements like the above.

It's not a trivial implementation problem though.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/03d462504887401ffbcdb58a392ad01923a2be7b.camel%40perches.com.
