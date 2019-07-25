Return-Path: <clang-built-linux+bncBD4LX4523YGBBJ6243UQKGQE5JEDQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F074F2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 15:22:49 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id p29sf22453559pgm.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 06:22:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564060967; cv=pass;
        d=google.com; s=arc-20160816;
        b=DChId54CS7J8w1XvASTRNndDaTle+HHlkBaOtBQsMm3FuWQHYvdNw8w5MDo06GYvFZ
         PdGGgeO/O6KAWGaV9ZfeYZI0PVP0u3WZlxsktDZpNIjOJVYso6Kz5WmfawXt30jiHMY8
         qR69wO8oyebYPjk1fzPR80R4hVx0ag2VFDzGi+eoUN/CHld0/WHZ8l2zFr4YKgO6DLLv
         SshR4NsynvztMUiFCuDkl4J12e4qZugGF9a9hiMsrD0XgANfUJfWZIIKYN1ZduK4Izru
         VbAHbP311wAdbEhYULSgKdD3HH9KpmHWn9aun3bSTMToohPsZhByg/RRciz0ku2+H6IX
         mzOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VuzAThztEuX7Y2gov5vX2fwEjyFwE78lP1DjDLQMLz8=;
        b=ZFEny/KkAFev5aO1ZyoV279YnQ+yBf3iqbn0ILEAsnZ6uRYel2hIhVE4C3Yc166+BF
         7tU57qQWcNKlxH/uNvkpWCNMeDJiEUuWe2CZbnujgqiZqzTzh1heNnSBtIezVrLm0kRy
         iXjeDkdKehx5sbq3RVUL0IycB8Ds/tW/XNXnW5y6nQKmHNYWpzwv6kd9UNyUj+4hJwYI
         Tm+qbfwkaudTRs4AqZG+vQyrvrWe0YfbRzVGFsOURpaRDzLz0FFdHd9Le1BCNLtisB7u
         79XNHw2E9nuUssJ+WDlttw27668Nl48TjlgAfSW/SS0lAVWQxhOP1i2XAFwiOAFqvAjI
         752g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VuzAThztEuX7Y2gov5vX2fwEjyFwE78lP1DjDLQMLz8=;
        b=bBeqZh+Y6n7wwpBuRLtxOn9M1ZtZSwyHht9xqNo41BOErcfB7z9tAzgR41mKjKEr8F
         AQTTZHL4hQl4UhbQliSsZgYS1iazwpAPnI8zcpKs+rerE72lJPL8dfEIvvkfKFYxY4Ud
         U0um3NEG2ZTJyV51VsEv3WGYvMt9L2coyjvND259DJmZ7roJ4VSuPNCHFHxxm7Qf2Fp0
         ytoiaRo2cZ73dMbx82YXc/PndJCT0w/TVcz8UsoRks+grqlMckIECobeUGAOrO5mMzjT
         9qNo/VvyPX2y391DLNI5PF3srpwTY7Fr8L8HXnTCsLJVf/opIn0dCOSFeh9/F3TaO8cA
         2AXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VuzAThztEuX7Y2gov5vX2fwEjyFwE78lP1DjDLQMLz8=;
        b=suziGXzronmWYvLWiHlWmgR3NoNfJqtJYETCexjePGg+Vrgc53GOQ07wnGeW9RnMVv
         atxrJAu5itnGBe1FYRiMGdoe98/WgDd7mn0wEC1lhIQepcr5oxXJI3g8qVFTXGKVoAze
         +yiFTPGvur9bVUzCTcXygiTAW7uHIh7CmW2ONFUceErmm/jWdVTZcevnEp/Ng3ZUJH5J
         7ByQlhv0hXEd+IlmdRaghDdXhBq1tx+zMgzYbpmYacyb0c1m5XHbStO4vmD1pS3t3I+m
         UzmiCN7Zw3/XhVsU1XHovbkO1q+xAJBariCAay7dMBJYUGcZgUW9jQ3FLpe1SoNkoDs6
         sDJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9pjfEJTDcK+5m+JN0Z6OGQojnAVfmDHtQn/jn/5QQIj2RjZSa
	NBeRU+zhnNyPKjnCGvBFwKM=
X-Google-Smtp-Source: APXvYqxT5fTAfugXIzFb5r+Nr2+zhZRVDHBaftz/RrSBLWkTWkgIo5xjDwOpmSlNIDohFVLl6S2zTg==
X-Received: by 2002:a63:4b02:: with SMTP id y2mr85148365pga.135.1564060967584;
        Thu, 25 Jul 2019 06:22:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2866:: with SMTP id e93ls13172661plb.10.gmail; Thu,
 25 Jul 2019 06:22:47 -0700 (PDT)
X-Received: by 2002:a17:902:788f:: with SMTP id q15mr92589235pll.236.1564060967338;
        Thu, 25 Jul 2019 06:22:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564060967; cv=none;
        d=google.com; s=arc-20160816;
        b=C1bIrCaHEabo3iOdtmM0nsiof+hFidvrNOaIyGwchmGKp3ol+ibbDdiJ6pXmYCVNvx
         ktV4WyKYRQyNbgeXoUJnzpNTJYerKRNrIFL7lZL53w+IZXFtoWTIKAT/0+GVXsYfaNHn
         ABia+LwspH2eu2F3sQMASj551reLv0QQjQtcLZ+T7P+ZSBoZN7UP3tzgmL+e1GKZS/Xs
         dCe4xhRowkBTLWue1JcPtaTtLtZhbEvho3Ozcf4rU/WxhMiw+X7JCXYTuvmKBafNh+GS
         nlBfyBhjc4cRUCSRDNdIsoLvDNSt1K30yJ/mX9OrmaCrMJicfc2iEEvicO1tRemvHuVh
         mZ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cuWnGXWWKZfWa3uPHgAy8k9TZA3KGTpp9wRWH3AQCgg=;
        b=fnSnAuEJrmq/BJZtuG5VsWeAMnb3C4L/b5Oi8qSOYO9MmzPS6XWt6hF3ES0meneLPT
         cp0zd68gMrDBa7nwf0nornsrhHdc4288ZqI5wklRxOW6u6gNmBPX6EBaMqvVVco7aDHj
         K0lgwVl6lxTzzWFEpAgumDwo4KxTrlOS8HUav1s70gQzOiG/TmwESVaFOidyZKP7ummy
         CBCluM6ncm2tIpbvimezA8oEjXd13enwqDERnxBO+nRHxWoFIemgRTHDxg/6KdAY1XZr
         TObRrua/hE5R5neCH59t2BHxIYyFsh5+8zvqzzLIj5EEmj3s4vburYoIDEE/6N2KHOls
         ayow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id y13si1956577pfl.3.2019.07.25.06.22.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Jul 2019 06:22:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6PDMX5o003118;
	Thu, 25 Jul 2019 08:22:34 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6PDMWpp003114;
	Thu, 25 Jul 2019 08:22:32 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 25 Jul 2019 08:22:32 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Christophe Leroy <christophe.leroy@c-s.fr>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190725132232.GQ20882@gate.crashing.org>
References: <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper> <20190721180150.GN20882@gate.crashing.org> <87imru74ul.fsf@concordia.ellerman.id.au> <20190722151801.GC20882@gate.crashing.org> <875znt7izy.fsf@concordia.ellerman.id.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <875znt7izy.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Jul 23, 2019 at 09:21:53AM +1000, Michael Ellerman wrote:
> Segher Boessenkool <segher@kernel.crashing.org> writes:
> >> can use both RA and RB to compute the address, rather than us forcing RA
> >> to 0.
> >> 
> >> But at least with my compiler here (GCC 8 vintage) I don't actually see
> >> GCC ever using both GPRs even with the patch. Or at least, there's no
> >> difference before/after the patch as far as I can see.
> >
> > The benefit is small, certainly.
> 
> Zero is small, but I guess some things are smaller? :P

Heh.  0 out of 12 is small.

It actually is quite easy to do trigger the macros to generate two-reg
dcb* instructions; but all the places where that is especially useful,
in loops for example, already use hand-written assembler code (and yes,
using two-reg forms).

You probably will not want to write those routines as plain C ever
given how important those are for performance (memset, clear-a-page),
so the dcb* macros won't ever be very hot, oh well.

> >> So my inclination is to revert the original patch. We can try again in a
> >> few years :D
> >> 
> >> Thoughts?
> >
> > I think you should give the clang people time to figure out what is
> > going on.
> 
> Yeah fair enough, will wait and see what their diagnosis is.

Thanks!


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725132232.GQ20882%40gate.crashing.org.
