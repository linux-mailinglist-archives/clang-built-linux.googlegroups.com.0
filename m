Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5GATD2AKGQEC42BYZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8324019C7F8
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:27:18 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id p13sf3558618pgk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:27:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585848437; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVSZDlHygIIeu5PWpFFzrikNkhAFx1tuojMvq07V2Da6XrWhRMdBlU/Qg3xzkCFk/U
         /uRrYEiqEhnqnJG9h7GDtQoEFF2BNKBeqYji9foETsQGrNmCK32iCFWwLk0Q4CpUAaAi
         2U+bVZwL081ygBWlzrDKSHbKppZSFHOm9obX7/sH9rw9b7GVTdikNFW7xMTiokeI2piT
         UiiA/BmLQg3qJ5WqiAgy2HTX2CQICv+GfG//5bBtGtOOXasCd3jwz5L9R5h9N1QbtU5E
         8EBOjzxuvpJ/UwzkhCB/knJQ+JDUZXWLbaIqbFvpRtP97IvWPoajvp+Gv2UdBOdPWhoG
         91Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PQJt03a+zIaxR0eVlE9793ix9QN2ryqzAveLrL+O8Sk=;
        b=TR8SxiASIcx0hULNnDTG1uySZMuFPJPNzDtCzGOEqufHDAScypxdfyXlPXv+mAMaqJ
         W+wwsXXimy9ebxtxFiqljrye7G/Szl4AJQH7KrkWP+chrkGRRJr5BlNxgSS+vTHdlnBD
         gc4lMuAb3Xe7wAhF1JDDMYtodCxudBO5qwJoYhYWxkTKB5ddV4myKOIcKqAGmElZ1o9p
         y3h5jBNpDvjINO8Yz7Sw8ubgGFpRBD3cjGNgZf/UW3zSeBPge8L1W6nLSW11Z5MsSnHO
         DYMYnakd1442WZ4Iv57xI8OAD8XAQY0zYq136L+VDZipkYs04QrbRxc2dDh0rhHPrVp4
         Q4SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L2RTZSrQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PQJt03a+zIaxR0eVlE9793ix9QN2ryqzAveLrL+O8Sk=;
        b=ENEzV692yKHeuuKQSOcRE62qPbUKMDSax/UTqTPGMV92sIzyI2CgSUOIkU6Rl/NWII
         zuEnXqd8XlQzUAO1t1iOVEtBHnhG4GfKxa2sZQlhDLcQ1A/11DGPlSVRW5ennJLr4dWM
         de64VvoQV9G4pZwMnefMw+61CRB8kbT5wyhLBKr0lEZ6SJUKe8RqEgGKJV2tAHiHkRG7
         IU9oxs8+NtgcKHm6aEPXUrEiNjynCitrXuLjkY+6uD7T1Kbw4zaKWiepsmD6AoaCxXFA
         bLUIKlxjsqM0EOGk1m9AbdOch779WoYr4Kw4MA0DCuhYBnE/hUph2+hd8YqplP3VJkLf
         phLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PQJt03a+zIaxR0eVlE9793ix9QN2ryqzAveLrL+O8Sk=;
        b=AXcUcIaxGvTHmZApEic76BtyXJVuxEsyA49LHgLTubhepgS1zYz4nTspD+es42nHHa
         Gwrv532mmX2/cDF3mpNJOV6/ml0ePXkArQL+PxXetDPFtot2fIL9d38C2dXAsd9LhvTn
         Oh7ZHc7m8RfF0jl1g9Z027FPHYQCIe7NoF9R69yHntMh3q3/L8qO6opfo8fv1gr3qsY1
         AlY/YN9JlyvLkRoGfXR6Ob5cdZbGlhgVe70eJmxYVZoGAxmyNyC1tx2jHzIka0N/UbuN
         n6Rx5+0XHLYFMNzK0HzVW1BA2sEfJoFWIVl7B82Xu9MYeCZcietYaGHn4hSZ0z5ZU+Dm
         OPSA==
X-Gm-Message-State: AGi0Pua6T34W/jYCMlERgt+AO5eaD93gNkFaqt/f/LT1vco5LHe395LU
	xNkIIZO2PLr/tqVH4Mw36hk=
X-Google-Smtp-Source: APiQypLSIn1wPUya5G7O1kwBc1RjckCQImIEeVD4PZUBahIXXlXsSAzxflG7LoNHGDUX5ntVreOetA==
X-Received: by 2002:a65:6712:: with SMTP id u18mr4335532pgf.93.1585848436990;
        Thu, 02 Apr 2020 10:27:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fb46:: with SMTP id iq6ls430650pjb.1.experimental-gmail;
 Thu, 02 Apr 2020 10:27:16 -0700 (PDT)
X-Received: by 2002:a17:90a:bf03:: with SMTP id c3mr5197284pjs.12.1585848436436;
        Thu, 02 Apr 2020 10:27:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585848436; cv=none;
        d=google.com; s=arc-20160816;
        b=zOpwVSvhVF+HVaLfVSlkPDSxXsOeaf3uGpm2krCYkRF54wq54lsznCwQSiFXy22xm0
         +bKJaVfYsrwhESQhtmu45JYHLAgLSDkd34tbcvTfUyN5qoxspqihqM8GiBCeOEqkuB7/
         qmAVjyOcYdKn5fFUDNsENRDqupHtm5zS9kEi2M5A34sciAs6zD+5icS5BaPFxyQ4I98G
         +JGgx0vuwWJ2bZJQZ8mS6cBPE0uHL/kd/x3869vuaJ2PeNEddFWJQdnwxh+rdTDQB3py
         uM05HGgMfimhJ5EMk5SVhS/PaH8hH/ygYYVwskFL7IUZONf391sB7hP8pus+uJGHX1mu
         b9JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gz0f9qZvU+RRQ/9Q8voQs+xALXqzFeKIupVhhXgqIDI=;
        b=zOnjGGBKvnva+oHe+TFxOGdqqb5ir4JtHLUXieoZ5l6rtEAdMudgs1Y3utsgJX+eUY
         K0vrUKeOZRFNL9gVYpx0Cnb7F6OafpezNilPBURwBGbtxL/hAxzXXyMjfiW47bclTniT
         oj+n4cpaQ8fcUJrNf1EC1H/zblnz2mi5ZS1K/2JQU/mQ0xxZfaOsIMqcjdm2pPDeIggu
         1+5LLYkEd+woRwMzoMC/sk+f3fJmNHs8Wk4I1UbGU6JLV7nLCC6jI3OFI06JogHOjM57
         0jwMKGtffVhPVktjpbSsAbyknXQX2yZn8MOMshLTz3arWTUilpNxd3U+S7EMsbNW+GC4
         WARg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L2RTZSrQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id s63si371971pjb.0.2020.04.02.10.27.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ng8so1806306pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:27:16 -0700 (PDT)
X-Received: by 2002:a17:90b:230d:: with SMTP id mt13mr4965537pjb.164.1585848435589;
 Thu, 02 Apr 2020 10:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com> <20200402094239.GA3770@willie-the-truck>
 <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
In-Reply-To: <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 2 Apr 2020 10:27:04 -0700
Message-ID: <CAKwvOdk4H052Y=t4_XXy=rMV=CUYPNhb5CN6x8-dBTNaTt3aPA@mail.gmail.com>
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>, Arnd Bergmann <arnd@arndb.de>, 
	devicetree@vger.kernel.org, kishon@ti.com, Jakub Kicinski <kuba@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	m-karicheri2@ti.com, Network Development <netdev@vger.kernel.org>, nsekhar@ti.com, 
	Olof Johansson <olof@lixom.net>, olteanv@gmail.com, peter.ujfalusi@ti.com, 
	Rob Herring <robh@kernel.org>, rogerq@ti.com, t-kristo@ti.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L2RTZSrQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Apr 2, 2020 at 4:05 AM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
>
>
>
> On 02/04/2020 12:42, Will Deacon wrote:
> > On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
> >>>> I think the ARM64 build is now also broken on Linus' master branch,
> >>>> after the net-next merge? I am not quite sure if the device tree
> >>>> patches were supposed to land in mainline the way they did.
> >>>
> >>> There's a fix in my net tree and it will go to Linus soon.
> >>>
> >>> There is no clear policy for dt change integration, and honestly
> >>> I try to deal with the situation on a case by case basis.
> >>
> >> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
> >> very early on:
> >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
> >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
> >> There was no failure in -next, not sure how we skipped our canary in the coal
> >> mine.
> >
> > Yes, one of the things linux-next does a really good job at catching is
> > build breakage so it would've been nice to have seen this there rather
> > than end up with breakage in Linus' tree :(
> >
> > Was the timing just bad, or are we missing DT coverage or something else?
>
> It seems issue was not caught in -next because the patch that fixes the issue was already in -next
> before this series was pushed.
>
> Sorry for the mess again.

No worries, it's just worthwhile to study failures.  So IIUC, in this case:
mainline was 5.6
the broken patch was merged in 5.7 merge window
a fix was already in -next, but not slated for the new merge window.
(Maybe scheduled for 5.8?)

So it sounds like it can be dangerous to have 2 branches from 1 tree
flow into -next, as the branch meant for a later release can mask
failures in pull requests for the earlier release?

Do we know what and where the fix currently is?
Can we make sure it's sent to Linus for 5.7-rc1? (Or sooner?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4H052Y%3Dt4_XXy%3DrMV%3DCUYPNhb5CN6x8-dBTNaTt3aPA%40mail.gmail.com.
