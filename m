Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBG5HUXVQKGQEEFCQPWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE52A3C8A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:49:32 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id z4sf7757991qts.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:49:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567183771; cv=pass;
        d=google.com; s=arc-20160816;
        b=AgJWWAMm1YNx5ucd5d4v9FrQpSExWheV9M2vzzj3RHw9eyixnCpVE2W/td4MtQseTw
         nKWa2rlszCbwWZ0VQNhtD00QAvP2LkVnnA8QXlPkajtQBoZ3bWKl995ehi2T7TU7kGri
         FUPtBHe/YsmbVDRKtYYO2c1NKKUzqEcrE7s5OgTTd3VNu4q4d4tdC+BHx3u9txd6gfIL
         P+fLx1/1k5/I6vJqf+zQs1yl+MglTSlikhtlvBIoYMFgK7NKLk7KCyDw6YDND3RKCFoy
         go06g5+uH8cDoq7VQdaSirzOfNy55Bcua2rIrlnJJi63z5m8EloJDUv3AYQDYdJa/y6u
         nCSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lH4u/9Dpx0HffDMumABOmaKyEXj+PQmo168v7EO4b/I=;
        b=pqqGDbX7np6rkSCnp5z4aVmF3OeKQHxSWOVZp3wsXk4dZHKu9PvyF4mm+Fxf4xFaUZ
         H1dP3xXl+LXGFZNZhno8UYT7o/M4tKlTWe+igvFta5qa/oBU8KM24idSUdg2OTkkPnky
         DgonkiL5LiSytErziID+9A4liRlPoOT6TtiDOF9ps6qSA9FnkbVWzeQMQqBvCy8H8BkZ
         TJE1uEyioL3Gql0TMjLqUQ2Q0/4AA9WEqtKjnqx5W/PUxTNetDhTaW5rdT2kYMMJGH/A
         KZfYPQHhKnAKpRm2HUJtYW5u7DRsrYStWxko1tTADLFPuDqex6Nqf26kKhJpYDa68kGj
         1v6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lH4u/9Dpx0HffDMumABOmaKyEXj+PQmo168v7EO4b/I=;
        b=pxzBsvGPMOIenyA4PuYdIbM2shLLOeeWGKWOUO3e5K9ORE9e9Qt/Z2N2JQjsjKDJpz
         VnNU1FJzhOLwixPj30vlXMnhmsdZbHhXRg+v6GgDixwmmWBPL9hfA8o7jJYXfN71rq9E
         SC6v7nBDss1ydEdorq99nTjOvEazA8yZgbWV2O69IvBms1q343IuHAkNFrF00grm6LTo
         8HwrHFkMZB6uaSeFNTrf7whYeeqVEwh+jQaH07UPx3ECrAKLIthR9kRABB+zyvvd3PIU
         ErkPO5OigpIi25xuinc+IdZdGECmTecuCMciJuk7WDVNawWjbA6xzjdO765G3w/7E7e3
         9lEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lH4u/9Dpx0HffDMumABOmaKyEXj+PQmo168v7EO4b/I=;
        b=NJVxmoJ8mJ1h3kzRF3L2zi1fJ3SkSH1f+UiRJ7EMfXQMr8nzB/whgxOOeCmqrH7e1j
         8Q6OPLEWU2hSICLmR/0BL1xJ5AJLSL3GRCRqUblYOsq5XL5CYpEZyaWz0p9Gy2xHkiuS
         Ea6Hl7n6YNfQCEhBE8cXp651e2Thb0zXe4bBYKFfRwLgmwUKWA5cypbrzyol10amgj6o
         yQtf2bGAa0T051GrYkAvIxNAtBrZa1DBRry0GLDOMr8H1JF27CtcpCEt4BUx1bnR+m37
         AvRvDVsSk29nKRDM54I2JxVOW35Gi73YH8ENMv02yMt+OV4BrHSBE2cB9Q50WsxRQFKO
         8Nug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlqPGygWL34ddqj8HElBfZzCx14URv0T5/2X37A6JMbkELZnmK
	tAzISXeYSDfJWvjXaR+gS+I=
X-Google-Smtp-Source: APXvYqw6oQlt7vhPjw9vZfHMqI/Ej3owpkOeRPqJGEgYJuiNjizxdkAf4Qq0faXKEHS8lBV6lrECoA==
X-Received: by 2002:ac8:4691:: with SMTP id g17mr16502111qto.104.1567183771180;
        Fri, 30 Aug 2019 09:49:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:75c1:: with SMTP id z1ls1070785qtq.3.gmail; Fri, 30 Aug
 2019 09:49:31 -0700 (PDT)
X-Received: by 2002:ac8:36b0:: with SMTP id a45mr16326960qtc.105.1567183770983;
        Fri, 30 Aug 2019 09:49:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567183770; cv=none;
        d=google.com; s=arc-20160816;
        b=HbPlqVa1AzNyAYo+LggUNMzcrfCTV+kCiXTCri5yN9jNULsLSdtC34quODLdnmzM8l
         eseIwS3bkLMuws0FVK3ZvftPFMcpka5rNOOXJrPgAJWIXzNhLj54818IceBTOdvuGql6
         F4y7NmSh1tXa0dw6fMln8AEkh23w+5IoEqZ0Nu/U2DQNR172nz+3Uorix5ZIFwv7rTcx
         DOrwGHVAQ9C6CUfiSm+ibchkpeAk6DFQdLd/EKJzRuDdoBuneAnxm63WO/ZMFDRjToeh
         Doo4WPSzV0HuHoXIW0ohiHCscqgYLgH55kiIYlXqD8r6jjYWlSwarZ2TRzj1gkJu9TQG
         k8Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=U5sfjXawLjch2iFO0D+/RYuKavW28Y+22WwAVauIMnI=;
        b=aODxTMs576PMEhdjrvc/VqSpfXuYjf5zjweFCUv1wy57/aAOBL2j9ymc5n18VYwxep
         H9xBGyBKtdDqKOid0HPDViInW9Dca0XCgUb9i2oHhXKXDxg0iSgOJlAG3JOApf84ZNiY
         LCznzY9+rvM0EQp8HeclgaRQfPoWqRAFX1Pw4V5jkAT7Nnw5wzEdz5tJC54rVcqW9eP2
         IxaHVyNKd1BNbLx+jiSOihQxBSuitMXrhLo5BjQpIcJiClYGudWc4RzRFRsT5T/cqMKO
         u9z7CfuDbMCoWRrbWyW3L6IDdTbvk4SMol/1cyLmoCuvc0oe9BrWh7d7HLm6PSnWA4bZ
         6MyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id k8si222687qkg.7.2019.08.30.09.49.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:49:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3346B2A09CC;
	Fri, 30 Aug 2019 16:49:30 +0000 (UTC)
Received: from treble (ovpn-123-26.rdu2.redhat.com [10.10.123.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DD6360605;
	Fri, 30 Aug 2019 16:49:29 +0000 (UTC)
Date: Fri, 30 Aug 2019 11:49:27 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190830164927.a2czlphx4ho3rhhf@treble>
References: <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
 <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
 <20190830150208.jyk7tfzznqimc6ow@treble>
 <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 30 Aug 2019 16:49:30 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Aug 30, 2019 at 08:48:49AM -0700, Linus Torvalds wrote:
> On Fri, Aug 30, 2019 at 8:02 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > For KASAN, the Clang threshold for inserting memset() is *2* consecutive
> > writes instead of 17.  Isn't that likely to cause tearing-related
> > surprises?
> 
> Tearing isn't likely to be a problem.
> 
> It's not like memcpy() does byte-by-byte copies. If you pass it a
> word-aligned pointer, it will do word-aligned accesses simply for
> performance reasons.
> 
> Even on x86, where we use "rep movsb", we (a) tend to disable it for
> small copies and (b) it turns out that microcode that does the
> optimized movsb (which is the only case we use it) probably ends up
> doing atomic things anyway. Note the "probably". I don't have
> microcode source code, but there are other indications like "we know
> it doesn't take interrupts on a byte-per-byte level, only on the
> cacheline level".

The microcode argument is not all that comforting :-)

Also what about unaligned accesses, e.g. if a struct member isn't on a
word boundary?  Arnd's godbolt link showed those can get combined too.

I don't see x86 memcpy() doing any destination alignment checks.

Have we audited other arches' memset/memcpy implementations?

> So it's probably not an issue from a tearing standpoint - but it
> worries me because of "this has to be a leaf function" kind of issues
> where we may be using individual stores on purpose. We do have things
> like that.

It sounds like everybody's in agreement that replacing accesses with
memset/memcpy is bad in a kernel context.  Should we push for a new
fine-grained compiler option to disable it?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830164927.a2czlphx4ho3rhhf%40treble.
