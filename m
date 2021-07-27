Return-Path: <clang-built-linux+bncBD66FMGZA4IIFYX6Q4DBUBFWFXVU6@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A62B3D6FFE
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:08:51 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id s15-20020a2eb8cf0000b029019a4da37b65sf1589333ljp.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627369730; cv=pass;
        d=google.com; s=arc-20160816;
        b=oJD3DcWjIltfpi/xAA1JPqbAYALHAs/Lqu0iu6cGJtU8yhUNFs9/JqWxgnTOfoPHA9
         DO4z5nCNFIH8ko7p9ze3bJWaTAHmEk8Rtj6ghsE6P5HwECsO00zGN0phavWmNhQ2OlxV
         syl+mRtMCgI59TRZwDtxNkQR+v/btt0jAWUthhMIKEX9d3dN7IvG2vaVwAs8pNjHL9V4
         TcXJFDRxmvdseI9oykF4I3wpUzC5iwBPzaViqkcPloKNAPfS78NxJT9l+yBaywUCvqZ1
         HCFHvrBZfznRyTmTFZmHGst615NwdKfnFT4uvIinVdMqX8c48eCAzPxCukkQ8LEX9yK6
         3s4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Er157VsiSCgP71elepVHNbIMIysOg/Q5O3SjZym1olc=;
        b=dsdkFVPxFnvg0hNo6KXQupUIEalyclvBF0JeIVevTiuqTi+9Fvttb6qR1NXMhusQoN
         QYuz5BKsUnQ/zkMS5uEKPDQ51VV8vvEj4q6GKKJIN07D5nS1kAQ/ym6P0FCMvw/q943/
         8PeaZD0O4qB8/MyD5uY0Y4tWWX06KFZ6r9z9uCRr0SgGXxcz9sq0bXS4feq/Djqr77Wm
         9HhfEM1PQbDTk+YV4vOvpznhNveDl0QbUgO80FYTqUDnCZpMw0zT66GOGtuKE+ncZXD1
         l02JMkXN/YawwLh3vT9XiLnvqcrKBFrorQzdQfwnZpmimBiyANYsuKcF0fPcuzIjsTe4
         iujg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uhzcnEfM;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er157VsiSCgP71elepVHNbIMIysOg/Q5O3SjZym1olc=;
        b=KFUf6uca16vf8y926QFauW1VAvVLNJRNqDaEukTpaTXGa3SkTniDxExp1Gs/MGO71m
         LqwdsP7yH30Mw3OYbNeUVHOyy0cPmwqp867/UB7dbE6+7rjDh77+svkhfxRFtWLgy5pj
         J3mT/gJoFlgXtLn2cgt9gKpe0TydXM3Odi4XVEldwm9yLIuFd904qgTNOCecfrlqWSU/
         iZi0UIFzFAOfHhvtIHkBtrCcpeeAA9gmiUFdZi7o7PUmiFbwTAVXzuvUiWmrARcFPFzt
         1y9+ORkXPApg4kaglmRQ7SWGOGWUTlIfdoTET/xE5R7thmMQoz3HEQuJ3DzUelmLgJPe
         AFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Er157VsiSCgP71elepVHNbIMIysOg/Q5O3SjZym1olc=;
        b=d+tN+OZodSyTCbnHDyaBOr+mykdRslUpO92jMYwoVsE/0Sh3sI0XIXSCSN1bisvAV/
         Aoqv6gR35umwL98nfr7FZ3JVCS92ljcZnDH+ewDjuS7eP8aEbG8poTNMN345ODgdPVJr
         OrJxbQOeOpMUisTrsB6paMW6ypX7Wzn5YlzKd7jEsx3P54B78/LTosjZVhbAkSKYmirk
         cuLmPSS2jrqobNuZVoJqGY6CfqfPcU0L+RibEGHQ+5xnkSfEyCJXNlzUbMf2Q/oEkz7x
         LjbINI6ELOkn0N28yVlVClOGet3Mz4C5WoW2LYqFaUwssXT05EP/G3/Ukt1nFBbn8kJV
         Rc3g==
X-Gm-Message-State: AOAM532JZJ1Uze8Otxg6HhFO5fqxPuTm0QVymTiGl5imRtC+17P1ooHJ
	uGg+GNl+lP1tVcHUhTkWJqk=
X-Google-Smtp-Source: ABdhPJwhqipoSfwM7hCFhq99roYoRP/FYZY4k+uQd+SKF0An7yphYg/sb7tSLEOL2E9JMIdNg/jVcA==
X-Received: by 2002:a05:6512:2215:: with SMTP id h21mr14918928lfu.419.1627369730519;
        Tue, 27 Jul 2021 00:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4b3:: with SMTP id q19ls2260115ljm.0.gmail; Tue, 27 Jul
 2021 00:08:49 -0700 (PDT)
X-Received: by 2002:a2e:b16b:: with SMTP id a11mr13852811ljm.346.1627369729384;
        Tue, 27 Jul 2021 00:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627369729; cv=none;
        d=google.com; s=arc-20160816;
        b=JWQ+2Ivl26HXUyi2XxcWihHUqlSf2r4q3o/1CpFjDmP3sUPyAo+hOhBJRwF7TNqD/B
         4FaV8wU+ylxeoHsxt7RHw8mLAldEmdXMvJsOTwkhgJln1wHtdAI928mWojSe9YYHVjD7
         zsEmZxLehPMd2dE7Sn+iJJ8VZDSiqnnT86kmZn5oKx75tqLTnvkYI4IBO5jQq7mx8Wvb
         mZP0qfKrMyYuid7/A7+4iUpDMJf3RAdSzSShEpQzz31JUrVJ0wz8qYAL05bUCgcWP788
         S76+cSSG7B94Dm5b/xMo8DWmGeRhkl7FBpG4eG7McT1UiCogoTfPJg2TF+YSngokJye7
         +BKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=61u8UCMEnO7wATC11PhF1oS3yaK+Qc9yAnlIV6nisfQ=;
        b=SmnxJI4VzJrofAl6dFxvIDUZStiZIW9C7GJ4/+brHEOG8ateIkdKq5jEjisDKhFjAp
         DJ6TKgj6TV3vPGteVHOpxptyAZid4kwMBbfYs0kS7l6lKnSqAmGInXy6z/E2h4cr17dd
         iXMKgUlNSxQEa5/3v6lPjDID9ghD87j4jfW0jlLpUzc9PZnpXKiG8Cphzve5+SVonx8J
         E/mn3EwjmYtqQO1tEgAwkE9pzJTVuO7L1SVN8Nuh2hVUXJPzTuNprlL0tgrN9Yt47zIV
         4mdHiRmfGTfCEiNqAkmGymY0TmuAQECbz48B4a21C3KNgrxUsBrmNFhgceURc9pm/Gef
         YhMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uhzcnEfM;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id i12si109015lfc.10.2021.07.27.00.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id gn26so14406570ejc.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 00:08:49 -0700 (PDT)
X-Received: by 2002:a17:906:404:: with SMTP id d4mr20426224eja.449.1627369728555;
 Tue, 27 Jul 2021 00:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
In-Reply-To: <YP+ql3QFYnefR/Cf@kroah.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 00:08:37 -0700
Message-ID: <CAGG=3QVc_OZoKi2J8tqRoBKcPekgAMMi=6Uphg1hNGNDK1qJUA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uhzcnEfM;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as
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

On Mon, Jul 26, 2021 at 11:41 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Mon, Jul 26, 2021 at 11:15:52PM -0700, Bill Wendling wrote:
> > On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > > > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > > > respectively, drop everyone else.
> > >
> > > Odd no one cc:ed us originally, I guess they didn't want the patch ever
> > > merged?  :(
> > >
I don't believe I saw you or Rafael listed in the
"script/get_maintainers" output. I tried to copy everyone who showed
up.

> > > >
> > > > Original post:
> > > >
> > > > https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> > > >
> > > > On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > > > > Fix the following build warning:
> > > > >
> > > > >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> > > > >          int no_warn;
> > >
> > > That's not going to be a good warning to ever have the kernel use due to
> > > how lots of hardware works (i.e. we need to do a read after a write but
> > > we can throw the read away as it does not matter).
> > >
> > >
> > > > >
> > > > > This variable is used to remove another warning, but causes a warning
> > > > > itself. Mark it as 'unused' to avoid that.
> > > > >
> > > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > >
> > > > Even though they evaluate to the same thing, it might be worth using
> > > > "__always_unused" here because it is :)
> > >
> > > But it is not unused, the value is written into it.
> > >
> > I believe that only matters if the variable is marked "volatile".
>
> "volatile" means nothing anymore, never use it or even think about it
> again please :)
>
Never use what? ;-)

> > Otherwise, the variable itself is never used. A "variable that's
> > written to but not read from," in fact, is the whole reason for the
> > warning.
>
> But that is ok!  Sometimes you need to do this with hardware (like all
> PCI devices).  This is a legitimate code flow for many hardware types
> and if a C compiler thinks that this is not ok, then it is broken.
>
Well, no. A C compiler cares about the C language. A variable that's
assigned to but not otherwise used isn't useful in the language. Like
most warnings, the compiler warns because these situations have led to
errors in the past (e.g. maybe someone assigned to the wrong variable
because they mistyped the name or something). So this is a perfectly
valid warning for a C compiler to emit. This especially holds true
when the function being called is marked as requiring the return value
to be checked, as is the case with the functions whose values are
assigned 'no_warn'.

> So be VERY careful when changing drivers based on this warning.  Because
> of this, I do not think you can enable it over the whole kernel without
> causing major problems in some areas.
>
> But that is independent of this specific issue you are trying to patch
> here, I say this to warn you of a number of stupid places where people
> have tried to "optimize away" reads based on this compiler warning in
> drivers, and we have had to add them back because it broke
> functionality.
>
I definitely agree that we shouldn't blindly remove code just because
the return value assigned to a variable isn't used. That's not what
this patch is doing.

> > > So this isn't ok, sometimes we want to write to variables but never care
> > > about the value, that does not mean the compiler should complain about
> > > it.
> > >
> > Typically, if you don't care about the return value, you simply don't
> > assign it to a variable (cf. printf). However, the functions that
> > assign to "no_warn" have the "warn_unused_result" attribute. The fact
> > that the variable is named "no_warn" seems to indicate that it's meant
> > to remain unused, even if it probably should be checked.
>
> These functions have warn_unused_result set on them because for 99% of
> the time, I want the value to be checked.  But as you can see in this
> use, as per the comments in the code, we do not care about the result
> for a very good reason.  So we just assign it to a variable to make the
> compiler quiet.
>
Right. And because you[1] had to hack around that warning, it led to
another warning. This is typical with hacks.

[1] Okay, maybe not *you* explicitly, but "you" in the general sense
of "the person who wrote this code."

> > Would you rather the warning be turned off on some level?
>
> Which warning?
>
The one this patch is for.

> The code here, as-is, is correct.  We already have 1 compiler warning
> work around in place, do you want to add another one?  How many can we
> stack on top of each other?
>
This one change should suffice.

> And again, why did you not cc: the maintainers of this code for this
> change?  That's not good...
>
I guess the maintainers didn't show up in the scripts/get_maintainers
list when I ran it. I CC'ed everyone that did show up. There's a long
list of emails in the "To" section. I don't know what else to say...

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVc_OZoKi2J8tqRoBKcPekgAMMi%3D6Uphg1hNGNDK1qJUA%40mail.gmail.com.
