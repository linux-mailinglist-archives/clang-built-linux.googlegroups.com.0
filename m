Return-Path: <clang-built-linux+bncBCMIZB7QWENRBON7ZTZQKGQEDRTYOOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id B99BF18AD53
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:31:06 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id a12sf1871596qvv.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 00:31:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584603065; cv=pass;
        d=google.com; s=arc-20160816;
        b=W01sKyWmOZztDXch6VfoL8fLx759is+40VZvcSs+1E2b75MsZcURXPv1X+qUgXgSYH
         DxCB+D1AGv2Uw30GPWDMf+yQWh/e0L+i2vNyE5UkNlarrfLyTMlltbBDXqdGXJt0G6OO
         THGsCmAQOhHSkeGvPk4JuOVhb1Dnb0AtQPbIU5FrqxAZOVHs5LMACKWL4TyA7ixX2v/k
         g3NKzRK1kT5EsmeLFiAyPZEg0jfxETmYsu7nBwh0E3fpbzGjX5X4gxJMfi3NT4kRCI+z
         zQiQ8FIEHpeFfxyVSpN58rXYLRDSsGbG81yCryVAqxtGZENY0KMq8/r0C7sYyFWCbpVN
         2AqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i14+ZTHVn8x6M+I+cjLMxsM1Nbb63us7fPY2w5YCTmo=;
        b=ehUh3PwlrJ4lQX4t3By4X966ewiWrUGTRJXofwInVAhRbJ+P2QJi9q9euCY3QcNEI8
         LCCqwGSkerd3AeLrZCPSFueD6pMwazRlypd5a2oMTj+EGEpRgHRQt8l/oShGHytl+Vu8
         GZukmGtyUKeANIjTXn7jRDrednme1jclpsnqsW+hL8tR3lkeN/ji81RnCa4jMmbDbZYs
         tOfaEaOcDMU4lrjPMF4B+AFv3ksxYOmfzUOIBf0cX5DQeEY/PKErmHQUewe6B2F3YEEi
         TT749iVL5fYZU5eubfEXi3jPpJsQFDrr+nez4XsOTX4hF8Qb0L8R8RXlBHiPqt9e7yIv
         uYDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="F/IlRPRG";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i14+ZTHVn8x6M+I+cjLMxsM1Nbb63us7fPY2w5YCTmo=;
        b=Mnsjes9CQ6019l1temGbV+fKaiJNy4zoJBIYz8tp8E7QElWj0hjvMoHdc6BEV1fjtv
         pH/jjtBibHVzg7zD9sTJIS/GlMSv7Bw6AewBEZhDmhqoW4pKJxxLTgbXrQ07JAoRawt2
         sJzBGB6uMTZv7nZsBM83OgWNLGiObzVGmQ7A62s5pS4icGgOmQ2pYMN8py25z90Eg8Lj
         SDrv25MFAlsNjeetftS/86eokZYt9LTU5U60Pa7q7KnDnhrTYSUJpOPfMCwe9tP3GI+f
         9fhSyALZSWDIipYP9lOt4vZbZCFLkwHmLHA2Q05eHrUWKEYQ/cJhtK7ZqjWu3wlfxkcM
         vxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i14+ZTHVn8x6M+I+cjLMxsM1Nbb63us7fPY2w5YCTmo=;
        b=CvxncwABOxRN9Ehyy7Yp61Q55SrNRw6wUfEDB6WGzWO8oqrPqfvdScMJ9RZEWzNBmA
         PsbpF2SpjoHdr4Tuj35a3rzQL+jMrQFcXA9Hqqf92hxH5jrpWcrrP4jaWckNQiX8Yp/c
         z5qdT4Li5uQtdDFwZVg5j4qw49f2g/yQDC51bG4JihPZ/3W7bhypP+aaWZ0BeGU4UMgP
         MIg+7+372kJv4GhVzQWDO6MoQ2JmiLa6ieFrcQ5rhy3+nVi4XqdlIh4ddPOofy9UBBEr
         zx8oE0NSNuiqDnrOxQD/JdDDkt2FMaX1k3WXprctyAJWjQUTHFHhP7trGGsK38LfvVgA
         Os8g==
X-Gm-Message-State: ANhLgQ0bVr7MXY7Nuea/372FX74WjTAijkAE9CNbfJfxC7Y7+Shzx0k6
	joeGGvtvnclU0vjJkqC+//o=
X-Google-Smtp-Source: ADFU+vvVhQZKi8Vg5XfZclD0O/YYRHoSts8sDY9btgAT9vDKuFkvvi9i5cwAe5lAWmfLnHaIxV7Bww==
X-Received: by 2002:aed:2a55:: with SMTP id k21mr1563973qtf.159.1584603065790;
        Thu, 19 Mar 2020 00:31:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls651538qtk.2.gmail; Thu, 19 Mar
 2020 00:31:05 -0700 (PDT)
X-Received: by 2002:ac8:6b87:: with SMTP id z7mr1598015qts.52.1584603065411;
        Thu, 19 Mar 2020 00:31:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584603065; cv=none;
        d=google.com; s=arc-20160816;
        b=QW+MyAejjePh6dxbduk+zxvQJ3IYAfacweyFiuzC2DSVMR+A2trIHERoWBxlPgB1pZ
         X4rIUYg9N8IW10z+Cx54yGmklfdDdmueSi4gmRWHN9l2DmhQBGsrpbQfhkg9/a4wCaIw
         SRi0AXsWgY1UNw+1/B370JKAIGEHXbg0DklrIkKMjKMGsoVzm8J6OXU0zV3/7V0lNCCT
         0BfUBJspU7spocoO+ac0ragR7dxZhUJHE4nu5+eqRzfBckmm/UFcfYPFqMUfnhIUESS+
         +MUAoHge4OwtoVkP0/1hcr9XpcnUgLdFotYJCYO+oS5z4lcsW0YlzF363NyWmRgO5JvD
         m9ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O1TAhsmR2UpwvqD9GG17772cwsJGncjku7QNEv1lIuQ=;
        b=c7bxfa4zbpDEoXSn1SdYLyMjGkqQbgsn/Xi5nrv5luwKs3Y5h06ZpjqkkM54yFYZl/
         xPTMyc2QmvhlJ229hr/ivAykwOLPCiH2WEw5x7zFeghkRaswL9cF+0GZbfmiRqqgZXgp
         cT7byH/c3Rz+NbIInt7PPPHzbijb2/hVIvbKYYuPBYI/SDuA1ZNGANbJqnAwBevFm8up
         l53RzBI61/4t6ne1fiYmh1kFqnVoiC5EsjNqQNW/Qti2rmzSYfH0EKsRVIXCJMi6KBfb
         FSaO08KGWXZBVdbN4GH0uv6cXMu+c8r22TxNvx50hizKE/A8gYOSjBAQq+TWyxLQNIbQ
         Az2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="F/IlRPRG";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id 198si71220qkh.7.2020.03.19.00.31.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:31:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id f3so1771292qkh.1
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 00:31:05 -0700 (PDT)
X-Received: by 2002:a37:8b01:: with SMTP id n1mr1422367qkd.407.1584603064845;
 Thu, 19 Mar 2020 00:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 08:30:53 +0100
Message-ID: <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="F/IlRPRG";       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Thanks for the reports.
>
> On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Hi,
> >
> > We started seeing massive crashes on one of syzbot instances. You can
> > see 2 examples below. The rest are piled here:
> > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > (search for "ci-upstream-kasan-gce-smack-root").
> >
> > This happens only on the smack instance. It's the only instance that uses clang.
>
> Can you please enable more bots to test with Clang?

What are additional configurations you are interested in?
It's not exactly a unit-testing system, using it as unit-testing is
expensive and breaks production. So far we've seen 2 breakages due to
clang and 0 due to gcc. If we switch more instances, we will also need
some dedicated people ensuring that they work. I think eventually we
will make half of instances use clang/half gcc, but so far clang has
proven to be less stable for the kernel and we don't have these
dedicated people... If somebody volunteers? :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BagNoC5zUtHjBniZAjA%2BJRrYnwUQ8TmJ6-SVFoC50HbJw%40mail.gmail.com.
