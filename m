Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBNUE6LVAKGQEVIBNUIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2355F96DC5
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 01:28:55 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id p9sf43317lfo.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 16:28:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566343734; cv=pass;
        d=google.com; s=arc-20160816;
        b=QydwDzIal9ZU9ERSI5ArwhHTQNLN1i8PLT8KBvX4JxcM6GJ1qCCL8zn/qQkFv9zB2O
         js1dThFt5ewGcci9YT0qDChyXasatLbUN/0wwdMaPvrXyAIekjUqcS8kIfkrKVnksS2/
         RaSpuL7Mf+iVCtQ9w5IDAZq9R7Ukuvf96TZF3lkWl6gwbfYP2J9MAoD6cpmwP2HoyOIG
         01VlcIXQryHNZzZB0Pf0wWll9e0U9NaKzzEeWlPRVdyuGaZeImRR25aKBIwxGdeGSpxv
         2IcfW13P4m4d7+qxMjNN0yKKRLEFZVjQX/fhdmoc14ZhopEvmBjVZf+nCp0DCIX0TAQC
         96IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=iVOyiVxDhsFyMT/UASrpQH2Ag72N7mTRp6jyqDhBMgQ=;
        b=U3hXNmstcnt1m8YC8ljHPFZSGg2u7KrrxNfdYpxHVAeg6AbmiEppzNlb6LzIWEmI2L
         PUXkSSHPx2g9J/fjCcAg7btOsBhzYIeGGaWbw8Bh1cM1cLObiIgKY0rVKwj+98z675hL
         +ge6uM5pDEUu6kBEY+obj3VQD9hQtCXK9gq48W7V1TOViIHfUwflX+MAYb6mA5fvoFPP
         JAags7ZPe8tmWw/e806SFVDenZQXaGbjVSQRSaU8V7gn4cnCbxayKaLZbdhFKHIj0poQ
         EhtdoWNO7VkP4wy6plVQTDmWOgOHCCSs2/nj2TnNUW7TIxuiji/fp6DrXCL16LllxVYE
         OoFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=iHh8YbqJ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iVOyiVxDhsFyMT/UASrpQH2Ag72N7mTRp6jyqDhBMgQ=;
        b=Rdrm85LUU+3g4FMx86PPa5yZfhzQPhILx7qaasZJDFGaVjUQBofUgRdPzA6Vd1ZH/v
         jlWoanShTUlHQbzsbCt3QIIfpsnbRAqj1nqKgOM2JDwfNA3SF8fZDjjfFRW4U0L8LIbn
         emys7NIYybBYM13p9d7/gWmSGmEU9Aas/BrZxYZaFdI71VkPI2omdS8YJLLJuquigFE2
         9tNIImMfURIwPbkm170FrluYN4kz8R/xtpZB1sKzT9QhrUQFv1r+LaaSdixuLe1sHuWH
         ig4gUULTvvo8Q4olhKUNnNHQYQodd/4K8hqi8N7rrEUVs1BoUA6MIFD4JWNI2h/ytf0i
         XXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iVOyiVxDhsFyMT/UASrpQH2Ag72N7mTRp6jyqDhBMgQ=;
        b=VL46SYFhnE6QreihVfHIIOf1G7I8/WE12xgUCwpxRYk80EvYk+1z8aA886oj3EYbDK
         B8DNZUoTve5XWbwXLBRb5qko4ANvWUOQD5OeVnGKhJfMpanLQ+lh1gpuhM8E/b90+fYW
         TymiU9VNHR2W5lUfmO+BMgiOXfw93smiY4WVCIlpQv91GhxkfmAQwTSrTl3pkA4v2fWu
         0RfNAi5kIU0Bwc55IASr98QRGrKIu6SZ2Hc1SFQNeMv4Sti75ZFaXHZvsCJ6ELBrfJva
         /hUrWAhVXz9IxIMEXVmpri8eo5TTZK3B/AuATvX/F9OSLzuifeMSDld/sfu3dv8dcNZm
         YD1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXybN6k7cR9gfYgzXoiUwvbo7Fgy3R8oGksY4JCJVOnO1DVvM+v
	n9gHiI7N9kDHewn4CddZkRY=
X-Google-Smtp-Source: APXvYqzwP7nxAezUnc7j24oBVIWOwmYtbo0rEZWRg6VbzOsMuDEQPf1XfTPz7Scb2OajSCsxssdLUw==
X-Received: by 2002:ac2:50c9:: with SMTP id h9mr11025934lfm.51.1566343734709;
        Tue, 20 Aug 2019 16:28:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91d9:: with SMTP id u25ls47034ljg.15.gmail; Tue, 20 Aug
 2019 16:28:54 -0700 (PDT)
X-Received: by 2002:a2e:8449:: with SMTP id u9mr17175863ljh.104.1566343734048;
        Tue, 20 Aug 2019 16:28:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566343734; cv=none;
        d=google.com; s=arc-20160816;
        b=K1z1qI8akBGtpNmt8I0JnDOOQVA/zCZrxZxq+dQ7Apbbyr+AswnFlRg60HT5xeS/q7
         zSfEf+X++/6kxm7BtjhUVyudfEKQqOBh2YVFDtvM9VaTu9kKX85UYPPyvHg0waboG2k3
         +Tdxu9dfxPs03FpXfBmREVX0iMZX/bSAppHJ+MPQU/po5pqGsvADejInBAlADahsWwxd
         FN9Dr29cl8mqtot8tJk0E3yMkb4ICJ+X1fD9nClEbZ3znnfyuhsJQFpAfoNIsmfAgsF1
         AR6yPzyTTGst7v8CboDMEZh+HzeKEDaWLS6Q9+mzU1THRHGJoKi41wGiaTMIhaKBfj1w
         mKjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XMlMUEKr5XRMEcS7O2CjglWq7iJta7ZlUj0ydKdkNX0=;
        b=KTtVo5e3QvSwHeEZN2U6lCoVLE8cKum1mN8Jwu8AuXjU9EMTSJYCSUGnHEv3k062Su
         Lx4svEapSmgyk0SU+R2coY46SGwjHIkHNWMBpqFmSZTRcSSo1efuLBHlO946AP7aDxxI
         1dHDicC4KBw3ZItFvmxXNywojBZ6qgDt5+rCEJdBUIE12sA9GSOHZYP0UwJSScyPDsr7
         hjCemsPqIrTJS9QxJwOiovzpLY9VD7VRjXnSAejvi7gqOPWeJM6WJlR55uozBcl0ZReS
         7kAYfpMrLV0Bt2xMKJfbNmJoiCSDtIx33rJQCYBll3I/rDk1LV+TqxGMfzAkeGyb9E4m
         Kgnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=iHh8YbqJ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id s14si1029723ljg.4.2019.08.20.16.28.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 16:28:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id c9so355888lfh.4
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 16:28:53 -0700 (PDT)
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr17398300lfp.61.1566343733121;
        Tue, 20 Aug 2019 16:28:53 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id h15sm3011400ljl.64.2019.08.20.16.28.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 16:28:52 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id f9so332496ljc.13
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 16:28:51 -0700 (PDT)
X-Received: by 2002:a2e:9a84:: with SMTP id p4mr5487770lji.52.1566343731704;
 Tue, 20 Aug 2019 16:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
 <20190820092451.791c85e5@canb.auug.org.au> <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
In-Reply-To: <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Aug 2019 16:28:35 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
Message-ID: <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang)QUILT
To: Joe Perches <joe@perches.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Julia Lawall <julia.lawall@lip6.fr>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com, 
	Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=iHh8YbqJ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Aug 19, 2019 at 5:08 PM Joe Perches <joe@perches.com> wrote:
>
> 2: would be Julia Lawall's stracpy change done
> with coccinelle: (attached)

I'm not actually convinced about stracpy() and friends.

It seems to be yet another badly thought out string interface, and
there are now so many of them that no human being can keep track of
them.

The "badly thought out" part is that it (like the original strlcpy
garbage from BSD) thinks that there is only one size that matters -
the destination.

Yes, we fixed part of the "source is also limited" with strscpy(). It
didn't fix the problem with different size limits, but at least it
fixed the fundamentally broken assumption that the source has no size
limit at all.

Honestly, I really really REALLY don't want yet another broken string
handling function, when we still have a lot of the old strlcpy() stuff
in the tree from previous broken garbage.

The fact is, when you copy strings, both the destination *AND* the
source may have size limits. They may be the same. Or they may not be.

This is particularly noticeable in the "str*_pad()" versions. It's
simply absolutely and purely wrong. I will note that we currently have
not a single user or strscpy_pad() in the whole kernel outside of the
testing code.

And yes, we actually *do* have real and present cases of "source and
destination have different sizes". They aren't common, but they do
exist.

So I'm putting my foot down on yet another broken string copy
interface from people who do not understand this fundamental issue.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO%3DDPBE0Q%40mail.gmail.com.
