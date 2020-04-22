Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3MXQP2QKGQEFMHRXGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E551B5092
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 00:57:50 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id v6sf4771101qkd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 15:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587596269; cv=pass;
        d=google.com; s=arc-20160816;
        b=WsHtwCDIVQQwYCL4ePdWuQu24y/WW5Xho3UIsuQBKC+HcVHRnX8mwWGy6spPzdFAcK
         Aqbayf0uK/pqsP1LHd8pw9AjwLuG/ajCM7p8Zw8Xofz8+ZFRbKoiqtg9VhrdxE40boYo
         ivw8j4z8lAjzomJJWA+Mgt5clcaVoAssArWY6/H1VlIWb+fi7QvT9qTfvZOHOvhbCcTN
         P8tTCWqysCg8xVkbjzx80TAREGLk75e3TzEPLHyBYGKjHVK2zdwF2kDyg3/b4DoSGwrS
         C2hsZpPmgaUZuOHp+4iEpmJF2Pn9oNebCKECDzpGcQMh2+YLuU50CIqBOZCFPDrdzMTb
         LXwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y75dCmJoMAQxELzBqsbAsKz2gTc2kC9qhIN68EAVjQg=;
        b=TbwBp+0f7JSdxspdF/Hq8IrbE30PrOlYctRlLHbHM8mPDgD1+72ihHYNJjr9Z6nGna
         mnNzUZlWgce69coo2auZAeuCivxz9M/HqSbFd/qoW+btv9A2yGVGTLbr33XN4+cpKY4N
         u37ngUECFtQvWgW3GTo7vXCSX6tAlTXzWT7z8rVenMQp0bXLlfGu/P1AErOZmKVHa1kW
         1kxE09ukoLkh7WlwNK3BaAFZS6GHkX0aFY7mqpAlSLoWrQKNWpz9yFUTzme8D/Pd7XpO
         UqJZMFmNDBaPQwDzAALDXIuS0sROVNJez7Pwc3wq0Vj2Pa7MWgCgxsnRxwoLc657njiQ
         WKdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jgw7Bqaj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y75dCmJoMAQxELzBqsbAsKz2gTc2kC9qhIN68EAVjQg=;
        b=Q088XqpsiZRBrDbGtfbluHD+RohkjatwvAV7c11rG28sYo/lZaOq9KOe7R0izZIH3S
         s+ioRhYwSTQHTzTsYLbBGAcnRvl6j8qIEnof3ZEon4rHhbSGmJWP/9dhP3p9TMIhfY5a
         D7p3RmIJ0ZlpQ9QOpVNSPj1VmDnMeKUbmbAX6TWuysdCDX6gPdxSRYO4knAVzHsKSUGx
         Vgl0G9fHKwMe5myOi3qp7rCwCFPdLKTWjLI/1cLYfELfiXwgAkQY2pFpR/CyN+HvpGYG
         EZ5kCQQEde8CZXXfdOA1ZPPNB9VIAjN+PcWI3RvaGMQJwA6tggfuTtPobCGSutr7JLgH
         nAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y75dCmJoMAQxELzBqsbAsKz2gTc2kC9qhIN68EAVjQg=;
        b=q93v4B5ebcy1mA8KwdZVEV+2Mkli5yF8XZgSstta8/Hojs75mjwc6uA6vsQewn1xKn
         /COzqh5rT1kP2fxHeER7u6LHCbx1l8EkSSEx50DYFH/Im5fBsohTvEvrHcj7WdRxgPPd
         0X66evBzmTtpmBX8aLferJu1BPO2bQpkHGyyOVSoYLmaNznrZcFkDVcVpwZhnnF+Pjl+
         09zstQPLQkgsgV6S6x89/y8Tpq1QNYiI/5F/pbJTJFfbUbdwyvFhbYsbMTQZBXCXwseZ
         wkZxy8Tv+vog0OEJmHpe5AGZcPCd6QXPnjNJQowRCu3kvI6tM9eM7M46fIMF/CySXuhQ
         Ysig==
X-Gm-Message-State: AGi0PuYksyHxdTSMPPs1Dgf0a3WqYHCl26XjdMWxTTzV1tqzkulwlUr0
	yGDdfv3S0rAZMuc9TXrO4FI=
X-Google-Smtp-Source: APiQypL7tw6sdsCMHaI96Bb/ok+LRS75ksMrtHwxVPZeJRZUQHzQoSM3KvbEs+f854IBAJY1Tz5lHQ==
X-Received: by 2002:ac8:359d:: with SMTP id k29mr1146353qtb.106.1587596269174;
        Wed, 22 Apr 2020 15:57:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32c5:: with SMTP id z63ls2129547qtd.3.gmail; Wed, 22 Apr
 2020 15:57:48 -0700 (PDT)
X-Received: by 2002:aed:37c4:: with SMTP id j62mr1052403qtb.279.1587596268816;
        Wed, 22 Apr 2020 15:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587596268; cv=none;
        d=google.com; s=arc-20160816;
        b=aWk9eVH6PtMUk8h6UuhT0iSB04Poy1UyhS86wKbzTMKnlIeds1t+6mUW+IGp/tyhJ+
         zRKzdieDsIwi8nVqEikKv1T9h0f1NH0z+nfJ5U8/OJUvuS0VRenURXGT+Aea1SzRX8uE
         Lg+WwzA2aJBt8vmKgkowW/wDTeBqQ8UkOrBmPfZsPaJealUZ0TU/uuSFFTXQpCa5lfmx
         H/QIT46ciVZdtdL5EwWWRJQZUTTRgU6HvuPAJVpyaw085/m47FF/qDtS9vL4DQfRrUhR
         K5659obeex4kfYgCMqZJR6yUetssxLtN4Ahvfv8TkMG+UyCoKLtX68BlBrphPTVbPWIE
         tqpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VPEl3Y+Ybg1crmwtPQDknu/xwFvAPuHK+btv4xjSltE=;
        b=mpe5+6TRHxevF3Rvu4iBAMu7Rxf01qGjgRXjPmj84GDnBH4ZgbMA5iH5rQ926aFyX1
         dtTe82YDv7yGumYt4nHlrNFgcMbQApfYVJhhJoZKraO2OPaqmjNSt4HLaoD1mQrSoCdw
         lUiTfOWHJNmcLSHls0E5Phqodb2m76SK1BmWCW/Xz+PSiVx8DKZF8v7wt33fWFBZXcZ3
         JXvciHB7okczDwygPJQwvej6Ulue4jJlImiALMvEliyBGbegp1pWnCttxIOYWrdsVDz3
         3Dz763OuCemjrDP6W3V5RvHEyvZx82txH8KdEjwG0hklaz0ajo7D9+SZgOE04/wDwwmS
         V+jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jgw7Bqaj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id o3si80478qtm.0.2020.04.22.15.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 15:57:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t40so1631720pjb.3
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 15:57:48 -0700 (PDT)
X-Received: by 2002:a17:90a:266c:: with SMTP id l99mr980349pje.186.1587596267562;
 Wed, 22 Apr 2020 15:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200417090909.GC7322@zn.tnic> <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak> <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de> <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic> <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
In-Reply-To: <20200422212605.GI26846@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Apr 2020 15:57:34 -0700
Message-ID: <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Borislav Petkov <bp@alien8.de>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>, 
	Sergei Trofimovich <slyfox@gentoo.org>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Jgw7Bqaj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Apr 22, 2020 at 2:26 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Apr 22, 2020 at 02:05:13PM -0700, Nick Desaulniers wrote:
> > s/functions/statements/
> > or
> > s/functions/function calls/
> >
> > Sorry to be pedantic and bikeshed a comment! *ducks*
>
> Yeah, you better duck! :-P

*gunshots ring out, across the ghetto that is LKML, reminding you that
you've reposted in the wrong text formatting*

> Btw lore.kernel.org has this cool mbox.gz feature:
>
> https://lore.kernel.org/lkml/20200316180303.GR2156@tucnak/t.mbox.gz
>
> This way, you can grep the whole thread, open it with a proper mail
> program etc. Very useful for catching up on threads.

Ah, neat, I see the "mbox.gz" link near the top of a thread near
"Thread overview".

Would be helpful if I actually took the time to RTFM; just dealing
with a lot of constant nonsense regressions lately.  One day, I'll be
able to sip margaritas one the roof without anyone noticing I'm not
working...one day.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dexxhfb8N6%3D1Q%3DwBUaYcRDEq3L1%2BTiHDLz%2BpxWg8OuwQ%40mail.gmail.com.
