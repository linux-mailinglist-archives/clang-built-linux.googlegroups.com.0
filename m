Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSUZTPVQKGQETUW2ZYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A78FFA09EC
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 20:49:47 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id t14sf370919pfq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:49:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567018186; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpf/iWohRaY/G6poWdwwxro9qQcMSisXZ58cqcIpUMy92cNMK1ruZE+5z2ZYxKJ6Oe
         ztMrtKdjdAi6LNA2ROVys6Jk7wxG7wnOuMMKYLKDKIZ1wsY7Dx0L3wJD7t5kRtpcLeFy
         zfdOAC6ybPgM2/EoZt1UmOwYI/V1l7lvp0X1y1L01Reg40lc4IH8CsY468c2E+ZsHYg7
         sCkFvfUWozQDZTSrCiC+EvHKONvi29U/0QUTiWFOtGaIy3uAKdz09sGV3M+Pi7BtWAst
         4BXODex+moBO8TAkkjstMk0cNXIX4PZ9DfJ5SFDDeauR2PhCI44GuLtI7d8S/BnENgQ5
         kGnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Nx1p9Tb1o8N7GRfJRgN4ALYe0MBI3BoRblYBWoY7IBk=;
        b=EaHvr7w5NlFs4ukE792e/qRVqlrsMcixz849HTa0vpUG9HIOGQtYnHvC7mYpE+D3Uf
         WbFkivLfrP0mK73FK+K7tmg38iwuojcJQhTrPvwlJ05OYBfKlCnN/0Cv0dsI63Qp2z2f
         jLGYqpUtwmfa0nN7H35aiL1QmoVlJOWfYO6/wZqkhPKnoOKt40hHV0lfWht6RFe6PcZI
         mp0AE4/usRsfemAmwySDIvZn494puxCHsSZJge2zhkkjmb1Y+VKk/EUYhmWuztrm0uQl
         PdXQti0MTZLenHd/vVzg8VyyCTmCi4wmYeMM9HiVN6Ovw+S7ddj5ZM0FufhE68lvlG5+
         XKPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aesFtNLZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nx1p9Tb1o8N7GRfJRgN4ALYe0MBI3BoRblYBWoY7IBk=;
        b=m5UFspJcVNdPovlWCc/6WVoClV6aTIU6won5p8sLcz/XMhGS1pXA6Q3IYeC+G0piaa
         saKVkHWlfR3o4tYvPMufn+QKfJvBP0OZAiYk7k5bltPd9rNXvoJ/NgC8CaMVmpTh2l1E
         QaJgAxtSAJ+eaqk0vW/QuYr+SqPZux5dIcuMrKZpZGUiviF1pGVYEzBfgmexCiyjNDHw
         BOKzIbq63qDEqN6ZMBKYvv0rIfr2/zhoCCKDoVGEiDHxr/FZycmPWy5xv8ngaIL/Kd8W
         fJilAcKj5ooB082tDzzyNZAEop/LaoGoXBhT6Gpp+mG25UjiJ5mQwt0Wdg701M5znsG+
         /46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nx1p9Tb1o8N7GRfJRgN4ALYe0MBI3BoRblYBWoY7IBk=;
        b=sSpjgJSMfv5D9Ek3CGgvgWN/q1bNqtTxeiSv7mUTyqQPsMUEpTxZwVoPYrt94uNjzF
         FV7kPPPubxQUsqC00WhiqcMIfNtunf8xOkNyinfdAzRKf92jbyC9ftCQ1WMDG6OTUMjL
         RCCEK/r4c2IROiikMB/Vk+V899InQ+H+o9L727B9F+L1woSxsGxBok/ngxUGs6nQDIlu
         IOFPgvQwiaQL4mbbSOiD85Q7BUgR2gJYF7K3TBZDIWz7b+FooynxKirChxdbtEE0uf9Q
         tCbLJA1aTqtRftON9Bz4ySlDIRzOMJhW2WHjfMPmEWM/9A4bZo9uA1ecZaYLe1InCe2g
         1Jhw==
X-Gm-Message-State: APjAAAVU8hxgIpkdOSDwYOYC/l0S/zlMXOZxqNSOCNBiHpBgulRbJv3q
	LN19tIdAzHKq4hQCKyoEmrY=
X-Google-Smtp-Source: APXvYqy7jIwV7pTBMK3HKbEwmNXHDIUqh4Woq3Knrc0zICOP+kNfICAKQMmryhTs7jsW+ieOLXDE6g==
X-Received: by 2002:a62:26c4:: with SMTP id m187mr6634529pfm.49.1567018186115;
        Wed, 28 Aug 2019 11:49:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e2c7:: with SMTP id fr7ls23761pjb.3.canary-gmail;
 Wed, 28 Aug 2019 11:49:45 -0700 (PDT)
X-Received: by 2002:a17:902:31a4:: with SMTP id x33mr5879763plb.68.1567018185852;
        Wed, 28 Aug 2019 11:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567018185; cv=none;
        d=google.com; s=arc-20160816;
        b=hHznqhqQczuhBVANAUUpazVfRAlwjlDKspWzjBRMIVmkfIg3rj6cN+W5AEKlQ/USfH
         M5YhaNq9/c+/NP9N+geVcB2mmjFHtE0dldRdud5S+OfY0asmxfClOF1HL2ae3edYC/xT
         6xJZSE2vr4DVjEwPGzCILl5c44OC91NyS7PaWT+ocZY9CscHZkx9IoFwPDKUniWg/x6H
         5C2c5JmuJC4IENAVoIpM+tUKS+RUqa3z/XaYJOWWHEdCoU8r2m+B5fJpbHon1/gomkz/
         lYx4gnHM6rfZ/7CiADLnTwJcf6TfIhahWZVTwK725I6ITHewRw8n0+OAKDXzXlwpcpJu
         mfNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4uZspx4NWx0nFhhtAlnWtEbfBrasNUhrA/Iy70UI7ko=;
        b=olCciJ7vO6wHE1pU6xZbeuVE7drercEvfgm2wrw6NwRLDkmOsRQ/B6kuMpOuieKDuX
         0fVax0uPt8OIYiBmZQGowVE/zjb8V/4iQZE4XTp7wjkdyEC37oVoyEUrPl7zxD5UBaN8
         WryudqnwfnTyGtII9/u3hqMXISgs1qTa81CmHyONwxjqdCfeez6W4CDeP9T0zm+T2iNZ
         kIWv83U5UjmWWGSdXDr1fux6cgpbX1NlHw4tReExxVNMrigVRw1JJ7sLLxZ1wQ+xuhBL
         wfmDIQYKrdaf+aSsZwXgP8CnqMpCE7oXfHSeUanICiHO+arkC4NMYAcUhTLLc3Y02LgU
         v8aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aesFtNLZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e20si8885pfn.4.2019.08.28.11.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 196so357864pfz.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:49:45 -0700 (PDT)
X-Received: by 2002:a17:90a:3ae7:: with SMTP id b94mr5745875pjc.73.1567018185100;
 Wed, 28 Aug 2019 11:49:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190613184923.245935-1-nhuck@google.com> <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
 <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
 <CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
 <c2b821f2-545a-9839-3de6-d68dfee5b5dc@linaro.org> <20190819102131.41da667b@xps13>
 <b94af6b2101f436c1bdeec744e164c78ee7c2682.camel@intel.com>
In-Reply-To: <b94af6b2101f436c1bdeec744e164c78ee7c2682.camel@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 11:49:33 -0700
Message-ID: <CAKwvOd=ej156MVjkVHAVbpWEew08YhCWpM-3BPYoLfeXHPJEMQ@mail.gmail.com>
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
To: Zhang Rui <rui.zhang@intel.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	edubezval@gmail.com, linux-pm@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aesFtNLZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Wed, Aug 28, 2019 at 1:53 AM Zhang Rui <rui.zhang@intel.com> wrote:
>
> On Mon, 2019-08-19 at 10:21 +0200, Miquel Raynal wrote:
> > Hello,
> >
> > Daniel Lezcano <daniel.lezcano@linaro.org> wrote on Thu, 15 Aug 2019
> > 01:06:21 +0200:
> >
> > > On 15/08/2019 00:12, Nick Desaulniers wrote:
> > > > On Tue, Aug 13, 2019 at 10:28 AM 'Nathan Huckleberry' via Clang
> > > > Built
> > > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > Following up to see if this patch is going to be accepted.
> > > >
> > > > Miquel is listed as the maintainer of this file in MAINTAINERS.
> > > > Miquel, can you please pick this up?  Otherwise Zhang, Eduardo,
> > > > and
> > > > Daniel are listed as maintainers for drivers/thermal/.
> > >
> > > I'm listed as reviewer, it is up to Zhang or Eduardo to take the
> > > patches.
> > >
> > >
> >
> > Sorry for the delay, I don't manage a tree for this driver, I'll let
> > Zhang or Eduardo take the patch with my
> >
> > Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> >
>
> Patch applied.
>
> thanks,
> rui

Thanks Rui, did you push the branch?  I guess I would have expected it
in https://git.kernel.org/pub/scm/linux/kernel/git/rzhang/linux.git/log/?h=next?
I'm trying to track where this lands in
https://github.com/ClangBuiltLinux/linux/issues/532.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dej156MVjkVHAVbpWEew08YhCWpM-3BPYoLfeXHPJEMQ%40mail.gmail.com.
