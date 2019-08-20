Return-Path: <clang-built-linux+bncBDY3NC743AGBBO4I6LVAKGQEWZUILHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8438496DD3
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 01:37:32 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id 91sf625470qtf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 16:37:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566344251; cv=pass;
        d=google.com; s=arc-20160816;
        b=lPtpnHD5adfkRJ1ILN78SLZSTeHcYMXcJZpVYOTd2132G7IGH4d8QAZg/mWrMTMOmy
         YPCg9bKj2FjcvvJRZCo8cGDiRLMluxuGqiawwG6O6KMrMGhmVoV9fqvGxHQjsuHpVVlH
         Yh5B2txOq/kTqFoc21IWoJuqIZniGf2jBQ/R9r7WmaS+n4g58wKTDIwGHDVUgeVfA5b/
         bOju2rzUrZfQpCvlsuwwa6E9s5F8F0W93hrNpTE/5GjwaW9vrEsB64XsJVYu92uBLpW+
         qZ+Ral5uwKsTR7n8+BCv/pfT/zVMaXFaXlQ/Edl4pLj6XRQ8EWgoWjjJv3cAuyvnudEF
         u9AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=tw8U5hm0L8J92BPchFUH4TOuAWXyPPEbNpiUDcNaV24=;
        b=KcAREWi1Y5ZBQ8M7yz//qvBnCl0iq0uwnD+wIaOejBfYh+9RZeqtTlfLEunsX8IX8i
         9IEIUjLyzlK/iv75yXBThL5c7YbbFF/xtjFb3aaQ4RNZD4opdnNgoSXt2EOklpo2NakY
         zZqz3OyHUkEu2woQ3dLY84DJ8plAxnJgK0wLHJwTSLKspCuY3vkdM8u6e/8MMCXi+zv+
         gZbP3TgpqO/VEc1Rn/Ouu2SebmKFK/rErQcVdsWU4G6htVaaNRD/SUe9xpe0f3ng0fWc
         5Gu2ffLaGmORVaTju4wiOzPbdnEgEuB/inXb1kjHgBNOHKfMkcRwyn2vPozdbDFksXwe
         dObw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tw8U5hm0L8J92BPchFUH4TOuAWXyPPEbNpiUDcNaV24=;
        b=AlSeiqDU11oGopaE5igbGx5Hb9cHUKsC6oee85b0v8sOdl6PkusqqaA9GpCLI1GEjR
         LG9vngoERpC8OiwqYr60GjG/sAWJ1wgbKndCs/DWH3jKYnMXQQdwA5MYO2HAX/VsqXx3
         4DtQWF6QdwxkaAaATh2wxlQhRKxonzh3QPsqsWOjlCnpuMDWtSenrpwQ/bQHKiMhBs5+
         78CgVWaJZrb0YB85KtnyAeNaezV7wZGrL7rz6BcnqjfLnxlsR/A9Jh8EqGHCVx42MX13
         O+FRlJ9ESuDLmxY23ZKqdw/8kidff5400MCnU5jEb0zDxzvLFNQ7GTYGxBk0+HXpMz+6
         aw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tw8U5hm0L8J92BPchFUH4TOuAWXyPPEbNpiUDcNaV24=;
        b=QllD2/CgIObh0XRNQN09zrsAQAqcyIGzs+XP6K5sSlvV8uPpOriRAckLog9Lm9Ufx+
         pR8Rv+Rbm9MUAGFRlDD9539qaXKQkq4DGrCsEATWUlS6l0TUrs6Mm81Q/CUqgxPe7b0c
         C0yQkQpUn7z80tfv9OWr+7n9Vwwq+bjVdaLLtPAIvUahRZei6SNIP7CEUM95HL8+UYLh
         Dwwe7sSi26LczmcX8pxsN2bbaJiLW9BKZTugDgNm5TC40A8i/QB9OveV8+HHYO8HxgXt
         Q01IRB9JgEdsq3V4+r9s4GWzRR6mvNNf9QGpgJbCKC8sKXF5R0AoSI7tyi0U980HAO6D
         2CoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXY7jx5bGZJxAHUbGIzt4DTmjbmn57fM5cTzfaz1A24uKLapKyD
	VIZZt6SUyEZrKNZv7R5Ruao=
X-Google-Smtp-Source: APXvYqzJXQXd5SkM7VI19XUjls4l+GBthgk4W1UR87A1MPQse/tU0fYyP2ch33mQG1q30TcKvwWNsw==
X-Received: by 2002:a05:620a:6c3:: with SMTP id 3mr16680927qky.379.1566344251194;
        Tue, 20 Aug 2019 16:37:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:75c1:: with SMTP id z1ls118571qtq.3.gmail; Tue, 20 Aug
 2019 16:37:30 -0700 (PDT)
X-Received: by 2002:ac8:2b47:: with SMTP id 7mr29104908qtv.116.1566344250938;
        Tue, 20 Aug 2019 16:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566344250; cv=none;
        d=google.com; s=arc-20160816;
        b=q/LQAml2gYTWpQ5o2X+4XnlmLEGrJxQYuXRUevV5LwoEnc1fYD6KaPzgzYyWKviNM2
         qOi5q/4KFH2fCIZHTSv9nMPnmxtYmT131nG8zda6zfPKh0bkKqocEGJinoWHlGv2Evid
         37hKoG5B5aabz9B3w4rzHtoE/GAFCWkWirczhBzIbx62KSGUb0+0bprtonbdS+qK5FKn
         mcZYpTLmCdMy0iobpdxOlT5y7DBJP/oxeU48IvYp58ddelEfy998Tn4Sul23DCI62Ibm
         LpwMsd/RoIbCBgjnr0h79ZY3SpYnAF6+DSbE5n224T2PZtEUpMdyH5X+3Jx6Ff/wNWmj
         Q9wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=y8NzlBfcdtS9YmXtMt8c2zNITmy30nG7ESktcvLZBM8=;
        b=LFFh0QAg3LDxa8Xj/yfQKJLjeHYdDiw74CKWgOrzX5vHWbdeDDFLrvlbtGgtDJZCV9
         o1Pmeu3JGGuNQeOMtSFMEhNQy/0Fy1ZN7fpxMJu10lfpLGD6Mog0W90cAt9Lna7zPota
         lBs6lnbipQvCXOZYW7CDa9CECAevnjRBWuwInn8naOa+xjYdqm2H9K3NSs2P6DufWhCZ
         DsCf6YLrupZWJuOuHNaKLzMhuY+rVM+lWVsj1mwDR3ONL1iJ92/1v+Jo9i4NTNpJV1H4
         UjeFM4YMZjnDqtjq/V6fqA7konIFp//1VMnKwXhGxlyjXKobxBZX4PwY82nM0+C8gS5N
         GIQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0031.hostedemail.com. [216.40.44.31])
        by gmr-mx.google.com with ESMTPS id v19si830199qth.1.2019.08.20.16.37.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 16:37:30 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.31;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 6DB2F180A8151;
	Tue, 20 Aug 2019 23:37:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 57,3.5,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1963:2393:2553:2559:2562:2692:2693:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:5007:6119:7903:8603:10011:10394:10400:10471:10848:11232:11658:11914:12114:12297:12663:12679:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14093:14096:14097:14181:14659:14721:21063:21067:21080:21451:21627:21789:21795:21944:30012:30051:30054:30056:30060:30070:30079:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:1:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: scene35_2441a800be623
X-Filterd-Recvd-Size: 3565
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Tue, 20 Aug 2019 23:37:29 +0000 (UTC)
Message-ID: <9d12995c5e7e41fc5d8ba202f76a2cf854183245.camel@perches.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough
 for clang)QUILT
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Julia Lawall
 <julia.lawall@lip6.fr>,  "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML <linux-kernel@vger.kernel.org>,  clang-built-linux@googlegroups.com,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Date: Tue, 20 Aug 2019 16:37:27 -0700
In-Reply-To: <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
	 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
	 <20190820092451.791c85e5@canb.auug.org.au>
	 <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
	 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.31 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2019-08-20 at 16:28 -0700, Linus Torvalds wrote:
> On Mon, Aug 19, 2019 at 5:08 PM Joe Perches <joe@perches.com> wrote:
> > 2: would be Julia Lawall's stracpy change done
> > with coccinelle: (attached)
> 
> I'm not actually convinced about stracpy() and friends.
> 
> It seems to be yet another badly thought out string interface, and
> there are now so many of them that no human being can keep track of
> them.
> 
> The "badly thought out" part is that it (like the original strlcpy
> garbage from BSD) thinks that there is only one size that matters -
> the destination.
> 
> Yes, we fixed part of the "source is also limited" with strscpy(). It
> didn't fix the problem with different size limits, but at least it
> fixed the fundamentally broken assumption that the source has no size
> limit at all.
> 
> Honestly, I really really REALLY don't want yet another broken string
> handling function, when we still have a lot of the old strlcpy() stuff
> in the tree from previous broken garbage.
> 
> The fact is, when you copy strings, both the destination *AND* the
> source may have size limits. They may be the same. Or they may not be.
> 
> This is particularly noticeable in the "str*_pad()" versions. It's
> simply absolutely and purely wrong. I will note that we currently have
> not a single user or strscpy_pad() in the whole kernel outside of the
> testing code.
> 
> And yes, we actually *do* have real and present cases of "source and
> destination have different sizes". They aren't common, but they do
> exist.
> 
> So I'm putting my foot down on yet another broken string copy
> interface from people who do not understand this fundamental issue.

I think you are mistaken about the stracpy limits as
the only limit is not the source size but the dest.

Why should the source be size limited?

btw: I also think str.cpy_pad is horrible.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9d12995c5e7e41fc5d8ba202f76a2cf854183245.camel%40perches.com.
