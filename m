Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSOL4WAQMGQENQDWDVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id C43F7326933
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 22:19:05 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id m9sf4028501ljp.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 13:19:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614374345; cv=pass;
        d=google.com; s=arc-20160816;
        b=BP6NQ29/w9tXdQO5yQsqkDKKYlD9fssq5L9P3EGPEYJl5PpJulOLA63FcBBQT2trhT
         QAmwM7eiG7hVxnbGtXzWAnTqT+F/XD0hetsBFEEFrBNZ5SayRz2x/ppugV8gJBT4+YOe
         8QZLRPWH3U4593Ej1BCT0/E9+ZJ7tLbaADxtcfkp7QNyFJLDm6fm1KIc4krlBNMxCN73
         PgyP3/p4WK6BMupIdcgn48NaDY1QIb3zXFkpe62jLyhaD3ELCtf1+xVx5sqQ7Ws3gL6k
         ynKoG9muI4G6BVWM3vkK9O9zRx7PXX82xghiUPy2+0fnyHCXd8qXlTF5nId4ZjQrQkxi
         gVQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=weD2hHfH/XIq5hLH+pDVJ18qOsgElTGKrK53wmbfSEw=;
        b=UPwqfIRlL+XAcoyJXs0oDJwhlH6BcyIQi8eHGuIBmjtegPOoGKZhzLYQew1JehXxws
         RSol4FQUbahaLTcYs7eOSOBNrmPaKGxiibnWbpQUneYxEhIV7Sf6zp5OrrZlo6mq1sWS
         ZDcc2H1fbK0ABcT/pwGwc9Tnya36ouo0XrB+R8QlIAOHgqZYQoRtuabzx2L42ZpMXPS/
         VvAYWxMBcIeV7NX8KQI9P7tr2z2VBSeS1r0sDV5PjOTj527SaAFweyRxwUvTFHpKq2wQ
         42bm2i2O2fmyHOdHblPyFAz4aq2tp0KsD7UhVfTX99w/FxyhR0mzS1+VKQ7yVujjjokv
         ux7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gr5vVYvv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=weD2hHfH/XIq5hLH+pDVJ18qOsgElTGKrK53wmbfSEw=;
        b=UlxvaaMnAzAZ++ZUAP0Vj9A3YFU9KPeHdWQKhEqz+ib0/kbeIfPM7za2WagddcHbjt
         Gahi0ZPRxhJPmYUn3/c5Y7/iE8GNyD+q8tHpGSf1z+bUaFGcA8UDu1ZaV5a9pG1bQNks
         OhMxgKtvLERsFnnL0VVtAxGr4pcQTt1KDKWOfmYpjAD285xkLUts1+niIq/wk05CnSiY
         osPCRe0TdwKGnAGTTWZZJefHazBv/wdY5ADOLw0I0WsyS0Zur8snedLyfKrPSt/zzbV7
         JpW77E1NrKc13NG5lE1IAUPN6a9W/eGKtf9Q0DQwLiEHu0LAsp4gXObCDGgIdAsGUsrf
         DFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=weD2hHfH/XIq5hLH+pDVJ18qOsgElTGKrK53wmbfSEw=;
        b=cULA7ZcfAiXp0W41hcVjf0daJuAG4ZUMTizLf5wc+OQ7pVpfFgBijda1fKix2N1JMY
         ULQ/ezX2uqigO+YtA5ZfeEkqqDdxT/jIs+jWM3IQBrvmHMV0fQvegF2yNTIHu5vLiX1A
         RnuUnu2w7VyrN8XKa7Jugplb+v3c/tSdLy2omVToU9Xnx636WPXSASo+nqoCMHa/8F0+
         u8TENQo4tZfkqM04PRhhuFtTLvdGK8youUzdrZ0U0QXMWDKl8wacoXVYNVsr/1VNT3DD
         t1u2wizO6CH8XHVHgnHkz5VXYhkClfNQljHn0nPfeBPmwUf/PnhMTvp4j47uPtwKai8Z
         QOlQ==
X-Gm-Message-State: AOAM532JYCkU+GtFxZLMYijq5uD1UlhV0iOVXXlf2ns3UvRyUb8aZGyD
	1wWW613bxyN//e9e7uPtZic=
X-Google-Smtp-Source: ABdhPJwHTFRYSTuxMW+ZYFB+27znfR8LZjR+e1q1g/Qrkh6CFG3KV2ky9VvT1fGqOfu35FsqWb6ZfA==
X-Received: by 2002:a2e:5c02:: with SMTP id q2mr2719891ljb.81.1614374345287;
        Fri, 26 Feb 2021 13:19:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2a84:: with SMTP id q126ls1911205ljq.8.gmail; Fri, 26
 Feb 2021 13:19:04 -0800 (PST)
X-Received: by 2002:a2e:161e:: with SMTP id w30mr2649667ljd.182.1614374344297;
        Fri, 26 Feb 2021 13:19:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614374344; cv=none;
        d=google.com; s=arc-20160816;
        b=0jy5/5Rcukwc4ucaF+/qQoHq2x3bapEf/VN1KN1ccidgnhcwzhSvGRZ06+Gdqjt0dO
         Mv6M9VD5ePwUcNa8lpypQHcyVDz8Roi9fDJu4DZ3xKdwcYbNsggUTloCSdCHjBjaESup
         kPAaMu06nmQL/73MV9gHJ5+D9bW8nThfPIWHXjHBmqBj/BKy/AGkVddYRvk514daBLJ+
         FuUbk+8kE8zOUnghNPcAFgwaR9xiFfaymNI0TPVLngCxgs9gPguVaCAH2i7r4nQjvw5r
         zB04Wlgh1lpqH+cYYbKexsgOxL/uLtNmYsW89WkuttMfVKMiAtBYD0iJRo8Jd4ln+NQz
         EcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P+UhkMYh1x7QMn3ozNoqBjvqvoy8RI0Io0N8VL6mPtw=;
        b=z84YjaXuqrB5+/D5SezGV0wzOD/rzi4ZY4VhDrqQaZBF7emWX06wmcUpaa4cus37L9
         gMkLIAo4xpOUc1YYdQiGRqAIMGhuxyGveosucpu6kut9vlW8J0FwtPmMwgmA7r65ycfy
         KWXhdO4CL/CHkBfcxsJOM4Kgcl3CJh1teJ7VfUroSODXnHoLKcKcKip4zT2dWEnoC+Pu
         FK/btzA2JOkCXPVw+FHAu00wIO+Gwyz5id+8aWQ+pBwdh1wlkgS6bGiDCDz13U38PHVn
         iTBmdSOsdJPjqIy+EWHL0YQnqAZcXe5N1jAK6A1vwQvwryv1TaH+J2PnueLbrCEmQeaV
         xAZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gr5vVYvv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id g12si289316lfu.13.2021.02.26.13.19.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 13:19:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id j19so15841172lfr.12
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 13:19:04 -0800 (PST)
X-Received: by 2002:a19:4013:: with SMTP id n19mr2786273lfa.543.1614374343891;
 Fri, 26 Feb 2021 13:19:03 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
 <CA+icZUWFE-NyoxrgtWAa_Z=oc1mYJZk_i1tGoP9+7Q5NT4d3ow@mail.gmail.com> <20210226211154.GA21392@MSI.localdomain>
In-Reply-To: <20210226211154.GA21392@MSI.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Feb 2021 13:18:52 -0800
Message-ID: <CAKwvOd=YikDtyz5Be6x5zyi+52zgqtG4+MZaLEpsH8qCnmJGRw@mail.gmail.com>
Subject: Re: Congrats, Nathan!
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gr5vVYvv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Fri, Feb 26, 2021 at 1:12 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Feb 26, 2021 at 10:12:19AM +0100, Sedat Dilek wrote:
> > On Fri, Feb 26, 2021 at 7:54 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> > >
> > > My news ticker just pointed me to some random news repetition of:
> > >
> > > https://www.linuxfoundation.org/en/press-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/

What a lot of the coverage missed was that the effort is in large part
to avoid another heartbleed like scenario in which people realize that
heavily used F/LOSS infra isn't getting the attention needed which can
lead to various security flaws.  For us, keeping the kernel building
with clang enables us to ship mitigation technologies built on LLVM.
And Nathan has kicked more ass than anyone at keeping the lights on.

> > >
> > > Great to see to have such a great supporter for Clang-Built Linux
> > > long-term on board now and some media coverage on it :)
> > >
> > > ...and of course to Nick pulling the required strings, and to Google
> > > having those strings :)

It was all Kees.  I'm just the assistant to the regional puppet master.

> > >
> > > [For you insiders that is probably all very "old" news by now...]
> > >
> > >
> >
> > Congrats Nathan.
> >
> > I love when people do good things and are paid for it, too :-).
> >
> > Thanks Lukas for sharing this post/link!
> >
> > - Sedat -
>
> Thank you both. I am very excited to be doing this full time now :) I
> guess hard work can pay off!

I'm very proud of you Nathan, you've more than earned it.  Let's see
if we can get more contributors paid now.

>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DYikDtyz5Be6x5zyi%2B52zgqtG4%2BMZaLEpsH8qCnmJGRw%40mail.gmail.com.
