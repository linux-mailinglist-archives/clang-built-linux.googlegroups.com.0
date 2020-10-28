Return-Path: <clang-built-linux+bncBAABB6624T6AKGQEQXQUGKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF2829CF0A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 09:36:12 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id e87sf2979012ill.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 01:36:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603874171; cv=pass;
        d=google.com; s=arc-20160816;
        b=tk79NOxlwCXrsvQ8HNvpnlDGoLz68KNTANJAfgaAKiIC6p4W76fac9PUmug8wh46Uq
         oICrSXHBWgyqrcG5su7oWaV4gK8R5TOMy+2qA9909P9wfmtyfCIX3iAW0TCz/dlYwMRM
         Hrg9+H/1K4bNQ8s46h8e5nSlhkuCkLzXn3KcfG9hmEWXKnrKikB84ytV/A+PyahH7lgy
         JS3+poRAPY3RyTgznRKaFNOpAlBrU4UQmQG5cJALdv1tOvjO9pRSGKol2bTXb6EZl69T
         TdVyUElGdDAUKHUi7umHb0rTjYGwFUeDZoteAApLUBypE4uFDhqIdDZAw32XCUnHrKRn
         IXiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=d4S9zy32Y/mmsEo494CQ+5j+KUKu5d9G9m/LYPPZdyc=;
        b=nsGqqNLUxBbGnB8Pm8worqIXumrhmN/sgYKBOAN7PBrU3nBXjHehFD0QVYoGogo/Wd
         7Exlknq7+EK7nthNMwQJDoAT3N8tnYRCoRTr4veblyPtUnk1BSWqiBCmOmUBKxAvwxFR
         VAo8CVpPEWOYmSGi1ErvLKxPRvB8sGuJckFbAauG8zmA96eWgCcY3xGJAevglVc8hXjZ
         YG6li7pW+oLr51vuhc86XauAPuRZFY301xcA8goPqotZru/3HEflsew8Uaw7IWzdj4Ce
         T1z1/JMQCcxqfwbREaszDRibjbGtPA3ahUfVEjABqiiePjggQFG8fpmmSZ4OLwj0fkJu
         SM7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WMDLNdKL;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d4S9zy32Y/mmsEo494CQ+5j+KUKu5d9G9m/LYPPZdyc=;
        b=UtTnhmGXhXbb8v/JJTMqqKOm2yQk9BoE4XLzjigEA+6XC7B7GWooiZE3cSCJgpyH3o
         qfOhXZyhqSYoGilEf9xPWn/CdxdeEDOGchE4qhbrResRjtXnjyhQNW/zo8fW2z8SWtO0
         SRmXFfFGiFMdrlNxHRU9qQF6aDwu0dbGx/RMkoqNeqPZ1GpAX9iqCaywWpZZYj5PTvH+
         dCNkBMqDJvlwrg9QC1jhgs4vvDFOvWLpwt7WZH+dJ9nJgKGxpzTpfH5M767iVhzZunB2
         6Tz6gJ8LvqRDzXXdxT7w2j2c+Ozh6iDf/HkPCqB0RBv6n+7ZX9VsWkSPU4TN+adkPUwc
         4lnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d4S9zy32Y/mmsEo494CQ+5j+KUKu5d9G9m/LYPPZdyc=;
        b=Qe1GOR+gGgafiHxmotskwzNe38SI9oKEJpHRaRVZ1wip8Yjh/x1DoEbO5UVoKY4t1x
         JeLjsAIbOZbB6KgA3k+kUkYMBx3M8tRA3HvxmbPE9f8MWXutM/cYwAOSFmnZ3X/j1rER
         qxlkrsfhkykPUu+axd9knBLfLMcQS9PvV3P9vkrzSZfLgOlV1v0/D74lFNu3tUuCihI1
         nciMuOy9KWg2dDXbOmatxXUGLTBaTgHMaB7l2D4q9AJt7nCOGtWn/YoS176Bs2S5y1ya
         VK1CvpI1dPuKnYg7WyeXTOhquWnryhiD+wnV0sXKcizlq9AbdKxHC/nJ+T8i7PzTRQNK
         zLsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wU8Q23+5wKJEZr+GqyFztqsEtela0OGpciAopY1M62uixlsla
	NNC/FgJVsxhsjxb6/otFl2E=
X-Google-Smtp-Source: ABdhPJx01GiBKls0/JotDxD6Q/qkbTiu1w3OBMBMxDPljfuVV/JfILIIjX9uWttW+5j+GbKI3TDWEw==
X-Received: by 2002:a05:6638:606:: with SMTP id g6mr5972687jar.0.1603874171260;
        Wed, 28 Oct 2020 01:36:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cc3c:: with SMTP id o28ls512505jap.6.gmail; Wed, 28 Oct
 2020 01:36:10 -0700 (PDT)
X-Received: by 2002:a05:6638:2110:: with SMTP id n16mr5720702jaj.61.1603874170822;
        Wed, 28 Oct 2020 01:36:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603874170; cv=none;
        d=google.com; s=arc-20160816;
        b=LDlQAsJqAd+7N6r4VIBtI2+qctKGGZXe+9jcNV88ZQfSpIGqpxUJHhVHYWgP/RLfmD
         Y/YidGipSx+iDYRKLDKt/r6H32jQCWUw2v4fGy43mitPf+B/d0CxrqRXIgeAVfZW6yyQ
         Jvj9v3nOioshbyEjYLxm07+G5juXDNZ92CqwtUwc8TZbzz+22ztbHIaU4fBk18kplkZp
         8hlid5qjX01mhQP712NBhUEhb8Kl9PtmKto86tuPjk/eyYiaF0Go3VETlWpr3XAfoyLi
         eUvim1rHI4Zn7fdvdEHWbG7ktS48u2WOMEmb6Q24fnvYprHKRb6ZEVoCSvFvhy7Fsyni
         Oh+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TzI1pKklM0xN6ygy0VqX6dYrdH/nsEIQRwQjifcsYyc=;
        b=0xXfYNoNfSckq6TGapa35JwHFk5N5hh4JeMLE9OONcFq2ZCAun08bXR4Td5VHAP+cA
         Kh9oGfidbYxxTVHpcuvEUE9BUXfXXljDXeD/8eoGNgGQ+OINl9N0Y+shCe4c7+aiFRHj
         uybrIk32i7OaqmCmIjHrkNRiNFrxZxu0R3+7RLMzFJlr4vzgVUOzWJ/sB+qYzES/Wd4s
         HxokaMy3jrnNuOh2ToY50JnBUJHLO1Rtf93izSmH00ddNN6MXF72gmob+LfbDD8w4N17
         +J7IuEsKCZyuoone/7toWEhIaBa8vzo3w/qEKM0mIBFCIll0t+qdIa78yPw7/eItoRer
         5ZuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WMDLNdKL;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si53361ili.0.2020.10.28.01.36.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 01:36:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BC7C32465E
	for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 08:36:09 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id s39so2513816qtb.2
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 01:36:09 -0700 (PDT)
X-Received: by 2002:ac8:7b33:: with SMTP id l19mr5954088qtu.304.1603874168761;
 Wed, 28 Oct 2020 01:36:08 -0700 (PDT)
MIME-Version: 1.0
References: <20201026213040.3889546-1-arnd@kernel.org> <20201027174226.4bd50144@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201027174226.4bd50144@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 28 Oct 2020 09:35:52 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2=MDw5Oem45Omuhq0xk8c-yN5XzhSdrCguCSZDOu_gfA@mail.gmail.com>
Message-ID: <CAK8P3a2=MDw5Oem45Omuhq0xk8c-yN5XzhSdrCguCSZDOu_gfA@mail.gmail.com>
Subject: Re: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer
 arithmetic warning
To: Jakub Kicinski <kuba@kernel.org>
Cc: Chas Williams <3chas3@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, "David S. Miller" <davem@davemloft.net>, 
	linux-atm-general@lists.sourceforge.net, Networking <netdev@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WMDLNdKL;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Oct 28, 2020 at 1:42 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Mon, 26 Oct 2020 22:29:48 +0100 Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > Building a "W=1" kernel with clang produces a warning about
> > suspicous pointer arithmetic:
> >
> > drivers/atm/horizon.c:1844:52: warning: performing pointer arithmetic
> > on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >   for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
> >
> > The way that the addresses are handled is very obscure, and
> > rewriting it to be more conventional seems fairly pointless, given
> > that this driver probably has no users.
> > Shut up this warning by adding a cast to uintptr_t.
> >
> > Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Hi!
>
> I'm not sure what your plan is for re-spinning but when you do could
> you please split the wireless changes out?

Sure, will do. The easiest for me would be if you just merge the ones
that have been acked or that look obvious enough for you, and I'll
then resend whatever is left after addressing the review comments.

If that causes you extra work, I'll just send everything that should go
through your tree.

> Also we never got patch 3
> IDK if that's a coincidence or if it wasn't for networking...

Yes, that one slipped in when I was sorting my longer series, it
was a block driver change.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2%3DMDw5Oem45Omuhq0xk8c-yN5XzhSdrCguCSZDOu_gfA%40mail.gmail.com.
