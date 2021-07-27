Return-Path: <clang-built-linux+bncBD66FMGZA4IKLSP6Q4DBUBGUFU53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C92F3D6F07
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 08:16:06 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id x33-20020a0565121321b02903ac51262781sf2966157lfu.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 23:16:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627366566; cv=pass;
        d=google.com; s=arc-20160816;
        b=eCMPZQiGY5pIBN9R8lJeXk3XLkiWiM5A7OncjcNN1uw6vEXZDPh5Ic/KqF/xo4IC4p
         Uxtb/JJjIeFSfBBQRkkehITKjWe/pfMUAXRECZr0hwbUIP4ELuo26EDg1V2LSFc1rPb8
         MUAZ5LtZnugBJErNSdqZ4rZnqgreydbZDq0sMIIlZRYU8TBwp1Ix5XECuV0lcEtVNSYQ
         oB+OzGSR4pv7uEpgFf9hHLHEk8zh2jcJNT2hXuwSqtzRdCHnRyuzjAxgkcCHSWW+tm+i
         v3aE6BlKAlceORM3Jtv0wYGR7lH6gUP/JgI+H+716qQuWe5/5btwvOeVjCg6FPegqQ1O
         8SZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=28XZBshqIMNV0pOkdfIzEq5IhmPkyjQ+6gzKq8U9Rl0=;
        b=XlLPY+zzoUhz7VwxiiYJS04n/uzGtWGpoFZ0cf4mp4+69yp9jedns1jXVSX8AIaJ5C
         8oXYlFuGNHk2cAUe3HYiCJA7S5H00J+LET3wqUmdUrAD/5VFdHu4aHKwBxXE75HWjnld
         vtkoTPyS3cnJX4Dga2DilDTk6GzQmaOwdJIvtZhhCRaXKw4VjgqgPvrUDJyicLzBypKN
         QeLSo6m7yD95vYiF683a2lLxs/3aYRLx8W+qpUbpsPTkYtZIkjQ8eau5vD8OHfV/UNnv
         meGq2goP4n4wGY6byBIxFy6/udqR4Nc3nKhfM5jLyn6319I2KsObcFjPKzpXPCXSIWCH
         Yilw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h/K4jENW";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28XZBshqIMNV0pOkdfIzEq5IhmPkyjQ+6gzKq8U9Rl0=;
        b=sKo7PB32xWCcfzI9wxGHag3KJKmfNVeQtsHNUiX9aoHHwbVDa8KjvOz/afOEPRtbrJ
         fNqiyPkc6ZF9wDuqHwvXUAhT6Wgt7nwlUfz5pRcJPRWKjpWrOp+Y7ZWVPIOTPZ/YTDk3
         rK7Qi5DWKD9w9TrobWCII7eRdEyaVIRyCBIdGpLDDZ+3pgz0hnpFUVGBCkYO0DRiryDL
         O791NpMDKz+4Zg9cfmUFxDF8nsHNbOzKFA9M2ZDnHqOUFZpUhpr3BTMYmw4WfYJncEUW
         eThdWcfESppgLZk1+f+RKXmIhUoLV9PZYBTTmjKfFIZqB0p4Nvj0cg6HAKrq1khUPBu6
         9f5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28XZBshqIMNV0pOkdfIzEq5IhmPkyjQ+6gzKq8U9Rl0=;
        b=FmV3TvP6Abrzl6/Gj1jWMSO32wXZOjAvBSo83tqVQQWJHAM4yifi8zqC6iLJxU78O2
         3kFf70Fz2m5sDuvuWsCLfnTxW1S33xZS2KYLU2tnszSkWmaZJ2o7rwE02RnYK6cvdyy4
         pSZyG7mwM92bwOchpEngVtEAuxaUbMlCf6Qqh41KN7C2Vbf1rWGAeEQwvp7X48JJFMpn
         fdMCwQ21kGRjfbXGms4YmT6kgxz2i43B97GhW1g/PVmgY2pbzR9IYts62ACiBOj74Bt/
         bozz8RaohE4i6GMSW2RhaTzCKCbpxOCFDvyPJp20yME9RsEgWV5jOdVQKCDCEfy8o4dn
         FlPw==
X-Gm-Message-State: AOAM531zXB6GGDWHvUgDlQvBuOmub2Ti8jphRrwwy5jfzrc03gQsenxP
	lPXMzEt5pimawM54f3MnPEY=
X-Google-Smtp-Source: ABdhPJwxlEaMQvwSdDQ6TujsUm2ZDIgRYT6n+2oAFYX0gU7sn0sSXjXUzL1PMH8gt05xEi32eUpDDA==
X-Received: by 2002:ac2:5e71:: with SMTP id a17mr15164957lfr.465.1627366565925;
        Mon, 26 Jul 2021 23:16:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:88c:: with SMTP id d12ls3086354ljq.9.gmail; Mon, 26
 Jul 2021 23:16:05 -0700 (PDT)
X-Received: by 2002:a2e:904b:: with SMTP id n11mr14220980ljg.104.1627366564943;
        Mon, 26 Jul 2021 23:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627366564; cv=none;
        d=google.com; s=arc-20160816;
        b=CxTJ1N8ku58SHBm663wUhd4HSrPT8aazvTdM2KK/57Iqk4FMPx5qFkw5gibjci0Cic
         hb0Q0Ss3kEI3fa/hG5TdV0n5rH2jX+yNCGHj2UkLiRUQJ1khZgokG3/SbVLW0HCqPov4
         MNO4xzTgHLHdQ9IlU1fvPVi/QQiO/M6ZihitHfBXgGFcpxrQgx4j68gEKsFSgIxjSwxP
         fAAykrwkYAO25undo2HBAMQOiRczgpmNpBNl+3WiQ3xtvP3p98eM45L2E2vvEwLehJzE
         MVlowkkm7KDUjWLnhSBdmAXmm/M2u+n/5Wq768mX5i/izcOPuRMVByH696bKWs1Csrt5
         r04A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tSvAlOWxEIRF8a5C8ywowBQChrZ2YBJxoLkazd7wXek=;
        b=HrL4v8IrndExl8wjsPA+Wz7R+UhoSsZ7A5PBig+1WRHTBLff1HHuLqn+MUPXy7s0CE
         gS0fAqYRe7j9Cl1WCK+g6cb5rkwTHHm1E0oI/EihzgMfr1g33DkdDOv3WtzEK7suN6PQ
         KwTNGcF5CJ2lZ+Aee/Iknh7pcKrt1Mh+mH8edzrEUgfzPn2l9XdeIceuTT3NeYd82AYJ
         0usKZ+/SClUPE68622mu/D4bV2QMGZayKf1O4vBhTOJstESd8AFsU20V2VEzWCubKzXS
         GBslk/Wmv06aIZ8IpaRZIHJ1WTa5vDo2jY/Wz3+6IZ+4QihtaW3riqGdEyX6vhjKc8gh
         VQOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h/K4jENW";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id x125si82587lff.9.2021.07.26.23.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 23:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Received: by mail-ed1-x535.google.com with SMTP id y12so5806391edo.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 23:16:04 -0700 (PDT)
X-Received: by 2002:a05:6402:27d2:: with SMTP id c18mr25855641ede.261.1627366564124;
 Mon, 26 Jul 2021 23:16:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
In-Reply-To: <YP+ZOx8BETgufxBS@kroah.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Jul 2021 23:15:52 -0700
Message-ID: <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="h/K4jENW";       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::535 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > respectively, drop everyone else.
>
> Odd no one cc:ed us originally, I guess they didn't want the patch ever
> merged?  :(
>
> >
> > Original post:
> >
> > https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> >
> > On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > > Fix the following build warning:
> > >
> > >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> > >          int no_warn;
>
> That's not going to be a good warning to ever have the kernel use due to
> how lots of hardware works (i.e. we need to do a read after a write but
> we can throw the read away as it does not matter).
>
>
> > >
> > > This variable is used to remove another warning, but causes a warning
> > > itself. Mark it as 'unused' to avoid that.
> > >
> > > Signed-off-by: Bill Wendling <morbo@google.com>
> >
> > Even though they evaluate to the same thing, it might be worth using
> > "__always_unused" here because it is :)
>
> But it is not unused, the value is written into it.
>
I believe that only matters if the variable is marked "volatile".
Otherwise, the variable itself is never used. A "variable that's
written to but not read from," in fact, is the whole reason for the
warning.

> So this isn't ok, sometimes we want to write to variables but never care
> about the value, that does not mean the compiler should complain about
> it.
>
Typically, if you don't care about the return value, you simply don't
assign it to a variable (cf. printf). However, the functions that
assign to "no_warn" have the "warn_unused_result" attribute. The fact
that the variable is named "no_warn" seems to indicate that it's meant
to remain unused, even if it probably should be checked.

Would you rather the warning be turned off on some level?

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QX68umw5Ws9_HuGkqoTNT%3DQ1%2BQB7YpSaqw3R_kPsbxwsg%40mail.gmail.com.
