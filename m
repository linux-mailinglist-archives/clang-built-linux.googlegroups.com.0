Return-Path: <clang-built-linux+bncBAABBRGLZD3AKGQEHDGYG6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556A1E8FF9
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 11:22:14 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id x132sf1445412pgx.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 02:22:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590830533; cv=pass;
        d=google.com; s=arc-20160816;
        b=qWnie/upimDTqGb/zuCth1Ve2JB528EEconDIZ4cParsHgxu58zc/2Kd0OkpLG4wVg
         7vi8G92qNVByCkQg1+Awo5s+ppVWqShjX0+nrMUdQ8E9ZNidD3ioGowCSGhtdoaAcNep
         /LKtVstvovsHDIC+PhTnjysrnAmQORhE97TQKmc1cMnda3p6GBTgwN2Goz3Hyr6DTYqM
         l9fUJHZsBt78qkVhtNzxHfZs85KdU5YDlOVVoXeqWjjEiQaCwbmRh1rDV7dAmDHjAVhl
         IPtsJou/s2MvVhVk8+8XVxY1EGCFN/fHqRBZYk2DWvWbXmXVxmBcK7CK6SbVXBDKMQxk
         YeNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=o8u22eIns1FcC89PnxzFg8tXMp5x8YR8pceFdU6zLxA=;
        b=kitq/XAuIZNmz6yERh/feBcRpvXyLhZgXIBtjlISYvfVpbZaiHgdHPi10w/krlNJVe
         Szyj0nNAYQLDvrOsIM2BbsVmYZISqqLYuEl3kJQeYnvK6RqjSo9gcEuLzlRiVUDw9SjF
         zO6n30ka9y/jy46fzN5nLV2VbfyVaQUX+2iXcTSjKMjv3SrbhhriAOcz1f6BdCDV4z+k
         JsQWNjCJm5zZmTT0JqHqp3IitwV7ubaQDeOwVsAWdCMyQqqq5JMo2qbiu8e9IOy9VLfo
         0e0JClJO+b7WHzuF8JAaDdlRD9YSNMMJ68wkAQp22uBWRaSEDd8oPHPcToOnHQTk38De
         4diQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I1WroDaF;
       spf=pass (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8u22eIns1FcC89PnxzFg8tXMp5x8YR8pceFdU6zLxA=;
        b=hXr2Vgm9RSIN+D4zArcsGbRJRlIGXiHarBN4OFQJTwsxNr78sWUe2UI+SFi/Bq9hf9
         UKk1MSKeAxOMlr54RLn50xY7CAlehY+YJwYIK8kINQC3/XUFIqRtMIzyE9rF19nD+qyY
         R+99DCIrRy7HlPPQ881g8KJ8/BM4q1KTwTpF6ZjkmM92pWl9CMwSvZU96lvJdwBqJIpy
         xFt+ThPQou5viX/pKJgW5cyINeGEND9VnVhSjH/5MIOFGx2QPpL0+IYWIL21I4O5jtfm
         V3n4y3Ser/F/InMR3ewGQaruaddY1+1zstv08dzBEGatrAPVkbAy+x0OMYGcMGySQRJf
         2yNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8u22eIns1FcC89PnxzFg8tXMp5x8YR8pceFdU6zLxA=;
        b=eNHbh7YPYiGa89XAjtxlxv3yzzrPO1d3EJ9pLDc90Eq1/PwNzxkaQ/W4o76JrFxxe2
         vgFLt/DA1gdfibacfGCNDFBFfyVlSs0eIAmWiNqapVyWl0/f5LwLBmMx5Hpqqpdfa3KY
         IsKTJl0fRhHCZkun6uMjsKTm9yDS5A8Tbxwj4xMXsRiPsEkEeREc4fuOfwgRzMH84SBi
         RlPS/evM0147ai3mu/t0YyX1e1mTJpDb3AFZIwGeJERLnBO2IioPFDqXhc+ZxmGYhgfq
         47LukrxoFt4v0pOht4OGQKcCuegwjnHcyLSBPjtBMYVEZc90rJ8nJLYlLz6Oi002CNfH
         2Gtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303o/DD7+tV6HJ6O7JcDMkATrZKAGdhiNF1zjFB8gmXNZVF8lzf
	8JUELisb5skV1qySoVcXuVA=
X-Google-Smtp-Source: ABdhPJxQjMhHxKwFpBWyDyhtmWbfVexcCd2GKTTrrzbhVfH1Rsd4hHkAuB57XOxV7Gx9UTIK0SIf+Q==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr11563070pgt.77.1590830532861;
        Sat, 30 May 2020 02:22:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e116:: with SMTP id z22ls2867200pgh.9.gmail; Sat, 30 May
 2020 02:22:12 -0700 (PDT)
X-Received: by 2002:a63:dd43:: with SMTP id g3mr12110212pgj.286.1590830532599;
        Sat, 30 May 2020 02:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590830532; cv=none;
        d=google.com; s=arc-20160816;
        b=GCVpu2QRapqhB6OoUCjk3lbvy5n1PERqY5IgxIlORwRigXOs50K0p99phRAQhKKQrt
         Pn1AqYk6edfA29eRNyEgkx48Kiz1hdF72IAsfS6RVYsB7Q0czZFae41RWc78ZEFamvms
         Kdw0gWjWQFUK1/4MmaGj2eExw7OAkrLEfWNxq3HUle2NYsIb/J47faewpntY2RaJ2D3V
         N2GHkR88MSp3w7LdBiT1zZhOQlO6bLNji71+qH6a0jhSit8FuB5PZ4+fAsxz/yjxYhM9
         J5LtNVd0B1xmLSVqnliPY/rKsbRiplQ8BoHMp973ZRbwN7S0ksSPn5VAIA0lsiLSAekv
         8Ehw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+MpYumgg/9Myjkh28gW+ApZV9U6Fe9TmORNCx4UT3Yg=;
        b=svLMxJ1FOPCmS+WdGvJpjLx+FBb/+eLPulhjELccXf2vW8EdwNSfApq0oC90XE3Qo+
         PX143pP6KnZv/Y7xDsRi+iZCWJytRGYENcNmtDHDwY7Q9SDznF2QE3gU+kDQVCEYdq8R
         5BsgrGWUijXyVmjyDD250oiTlG9bUG+uPQfPhVu+Og7dEEcpEP4SX+WKHTX6vi3UUh33
         J7KXGi8qvT1QdlMQB2+qp4WbJhqxIvcnZs7+raL64+YLLuoQwq64YI7SVPN0KgZt5jxi
         /VqgP3oqe9LeADZrFE5SIgcRAAtIOMHW1BG9j5Td8lVCC6NLNw3/AXLpJO7csudDc6MN
         dLpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I1WroDaF;
       spf=pass (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si253662plj.1.2020.05.30.02.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 May 2020 02:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4B131206C3;
	Sat, 30 May 2020 09:22:10 +0000 (UTC)
Date: Sat, 30 May 2020 11:22:07 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Linux Media Mailing List
 <linux-media@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Nathan Chancellor
 <natechancellor@gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
Message-ID: <20200530112207.69f830c2@coco.lan>
In-Reply-To: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
References: <20200529200031.4117841-1-arnd@arndb.de>
	<CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
	<CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
	<CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=I1WroDaF;       spf=pass
 (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Em Fri, 29 May 2020 22:31:44 +0200
Arnd Bergmann <arnd@arndb.de> escreveu:

> On Fri, May 29, 2020 at 10:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:  
> > >
> > > See also Nathan's 7 patch series.
> > > https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
> > >
> > > Might be some overlap between series?
> > >  
> >
> > Probably. I really should have checked when I saw the number of warnings.
> >
> > At least this gives Mauro a chance to double-check the changes and see if
> > Nathan and I came to different conclusions on any of them.  
> 
> I checked now and found that the overlap is smaller than I expected.
> In each case, Nathans' solution seems more complete than mine,
> so this patch ("staging: media: atomisp: fix incorrect NULL pointer check")
> and also "staging: media: atomisp: fix a type conversion warning" can be
> dropped, but I think the others are still needed.

Hi Arnd,

I applied most of the patches from you. I had to add two extra patches
before this one:

	[PATCH 5/9] staging: media: atomisp: fix stack overflow in init_pipe_defaults()

And rebase it, because otherwise gcc would fail to compile here.

I'm placing the patches I have so far ready for atomisp on this
tree:

	https://git.linuxtv.org/mchehab/media-next.git/log/

Thanks,
Mauro

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530112207.69f830c2%40coco.lan.
