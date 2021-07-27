Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBGWV72DQMGQEUXNKG6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0263D6F92
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 08:41:31 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id t23-20020a17090aae17b0290176ee8653f8sf2158931pjq.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 23:41:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627368090; cv=pass;
        d=google.com; s=arc-20160816;
        b=Noxm5dnYseqzd248L+fLqUYF0FgMy8q0qEEs0Tzexu3qEFai1OZMWWW7K1ZeWvZnRk
         MJKEIpvtKdrR6LbGBLNO+tfdO1cyxVs9XfRNRI2dPoPr0OmO30k74+mB90ikYb007kDG
         kFdMt0pxYeCzd9vlnYSpUXA8SH3CJoYU4iSqJTnN/NL+8EPqq73QcDyxYwds9vv9LoWv
         5satugsL26/I4jJcboO4r6FC9fKB9iyS4pJLm8MJTviz5qzSXdAG76Of0hf/K9qU4RGw
         9sR8AnGC/c4SE34zoJCLgm0bmlLWfDbF3YaXGXQg4nRpoJE2JOT9A6vcr0PMXPYPuNAn
         m8Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bj6vH8ysycdAjapA/MhyYIubBH1RN0VAfR07u7CJxi4=;
        b=Ih5sWPAqp5/qlCdU2atqqePON6mW7cH+La+FqdW1tWxOPUxA4nW+7XU1VUU2N2QF4g
         wLwfceI8Go5bfAAwld0Nr3m1VFzreypsfe591WaGq8KDCFZapHPSoR8LT+3Q7IXdZYpc
         jNR+0/ff/NCIzVnSFofuOxcL/LxE7yy47gNvHTVDM951sXDpyMO0gGZj9RdlQxDjpaJ4
         n7tcemz43OfaTlEAZKVwz6G4ZpIgfXTzhsfPvvOUwsgffTSq7AMHNiOZTDS0wV5vj6+K
         YQAoMCYJmZG4t02IcErOW8n8xKSNd5Sos0EOypPJz0MD9+srOMBvZ3Y6ng27ZHq2uxBC
         6Sdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cUo++3tv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bj6vH8ysycdAjapA/MhyYIubBH1RN0VAfR07u7CJxi4=;
        b=tKMkP9mvwO6/JGXM6TUfcOIOSohZCvK139m2T1qYfZBT4+PIJl+ASPvAZZoEVOvptB
         6QCa6ldzjABeTF6k3FRpBAt8hNc/bqqqpZ/k5iiO6mhDMa0YDTwIt3SKNZXMxR9lwHjH
         QwSONS20c6qzeCZvqgvgvWS1pXeCH9OPibWIBU7ibUWIbEAhxYvXJm5HereNchkAV7Db
         Upmn3s1ovsHIcKicINPcKIGWKZHc0Bh9IzX6RATMXL3ZIsSRMn9DuNBpzZqzyrDmd9Tq
         eSknvSDjK/7RNhtU5IMaEjconyVg4J80WsMzb/kDe1i9T59DJAcbcJrAM4wHz0JsDU2e
         /R0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bj6vH8ysycdAjapA/MhyYIubBH1RN0VAfR07u7CJxi4=;
        b=par0kvE+Y4EM5xRxsqzZWu5Nt1tq2W6IfS450WvD9FLKJGWx7I0LQyHUcea6bEPLRn
         VTpXfWfMmUnLfzeUO5DMfBocwyg2NtqMQ6QRX/bLxbcwQAB/YADp8HixoHu7rAL2fSLE
         panU52r2JzcA5tqSA2DD/8T2Wabmzqt8rBJw9kj20jaoU9Uq9zRJK+gFwkyqvurAxabW
         WyLJosZBTqLjiCYoSElJFERfVDjLvjR4VGPwkVzBPNLPXlK/JU4WKZS40HW91QfOthO9
         WcvWNO5MlBr0n2h/uIak61hCq8oidI+aZVQ/XzIzQNonrGFx2p9ur3wNJGnraAKFe2UG
         F+yQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vigajGhsbNTai0h7fGuCJhYYJng0LXVywtGRBxWnmLoJ3q2P+
	4d4H5c4aSB7fAIpA9McsFgk=
X-Google-Smtp-Source: ABdhPJzoHO/DOcnYzuHvzdv6ah0Ii03uWml6OvKj2ExgqXsSCRwHFIXxJdBIX23+iTbPs/AEZM5V9A==
X-Received: by 2002:a62:d404:0:b029:3a1:8a54:728 with SMTP id a4-20020a62d4040000b02903a18a540728mr286309pfh.37.1627368090592;
        Mon, 26 Jul 2021 23:41:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls10148509pls.3.gmail; Mon,
 26 Jul 2021 23:41:29 -0700 (PDT)
X-Received: by 2002:a17:902:cec2:b029:12b:fbb7:1f9e with SMTP id d2-20020a170902cec2b029012bfbb71f9emr12381292plg.3.1627368089825;
        Mon, 26 Jul 2021 23:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627368089; cv=none;
        d=google.com; s=arc-20160816;
        b=oWmr/5zDAEkF4lx4Y7jhXLcJF3H2cPGvtv05t9Cj5SSgUJq6AqaX6OjJ9N3CEp4l67
         noBgFUByt5FwyjybPnb9y126rJ0D2MtT97Fha8tK7Me3F2uRhD+hlZTU226pe1cOzbR3
         Ws1ecMR3+QaPjkF33KofzuTC19t1sYYER11Ozj6Go2FDXdTvsDkgSqwG03ioyU2y70Zz
         2HX/srCWYxuv9L1HudWtgXX2rwhT2REbRJDGOTE5RtULa/cKDtJ0k1/MzxVh3GkoTtvi
         EgQU5iX7/1KUAItLyCGi+C+04QndIJKOigq3OZV6d0l+9l2Vqx8tZrSIT+/d/688zSmz
         oVvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fa4XM8PXSRyj5v6U0whiGtNcJw8mhDiRUu7t0frxJRY=;
        b=TniOSQWHy7GZdsWCs/fnCHycCWb2FblmQVyNMzpBr6ydiufmoLQmo0JBD48Hg5aotI
         79kC4+TCK3EsUxIHAaGcwP+9i6vAmCASVuptIuZTLyLVN3BmP1SNPL0jktPoEDaWgiAV
         jsleb0HdVICO1LHrgP+iMfI7tN7CcoteBCSIUvVPHhgnV4IGxdQHrD3K1wvgpQKqxLmW
         YxKWsFwcuVfDpVOr3GDRZCv5Q8fSPoCzz9trVJdNXwCNXcEKS/vKqS60r/OWMRFWj9SP
         yThd6gux8bMVHovL1YhW3x45cjOFQgkkndYk3TSCuRkviegGe9l1vfespzXO2bEfhvq8
         HGww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cUo++3tv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si165113pji.0.2021.07.26.23.41.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 23:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1522B610CC;
	Tue, 27 Jul 2021 06:41:28 +0000 (UTC)
Date: Tue, 27 Jul 2021 08:41:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bill Wendling <morbo@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
Message-ID: <YP+ql3QFYnefR/Cf@kroah.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
 <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=cUo++3tv;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Jul 26, 2021 at 11:15:52PM -0700, Bill Wendling wrote:
> On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > > respectively, drop everyone else.
> >
> > Odd no one cc:ed us originally, I guess they didn't want the patch ever
> > merged?  :(
> >
> > >
> > > Original post:
> > >
> > > https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> > >
> > > On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > > > Fix the following build warning:
> > > >
> > > >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> > > >          int no_warn;
> >
> > That's not going to be a good warning to ever have the kernel use due to
> > how lots of hardware works (i.e. we need to do a read after a write but
> > we can throw the read away as it does not matter).
> >
> >
> > > >
> > > > This variable is used to remove another warning, but causes a warning
> > > > itself. Mark it as 'unused' to avoid that.
> > > >
> > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > >
> > > Even though they evaluate to the same thing, it might be worth using
> > > "__always_unused" here because it is :)
> >
> > But it is not unused, the value is written into it.
> >
> I believe that only matters if the variable is marked "volatile".

"volatile" means nothing anymore, never use it or even think about it
again please :)

> Otherwise, the variable itself is never used. A "variable that's
> written to but not read from," in fact, is the whole reason for the
> warning.

But that is ok!  Sometimes you need to do this with hardware (like all
PCI devices).  This is a legitimate code flow for many hardware types
and if a C compiler thinks that this is not ok, then it is broken.

So be VERY careful when changing drivers based on this warning.  Because
of this, I do not think you can enable it over the whole kernel without
causing major problems in some areas.

But that is independent of this specific issue you are trying to patch
here, I say this to warn you of a number of stupid places where people
have tried to "optimize away" reads based on this compiler warning in
drivers, and we have had to add them back because it broke
functionality.

> > So this isn't ok, sometimes we want to write to variables but never care
> > about the value, that does not mean the compiler should complain about
> > it.
> >
> Typically, if you don't care about the return value, you simply don't
> assign it to a variable (cf. printf). However, the functions that
> assign to "no_warn" have the "warn_unused_result" attribute. The fact
> that the variable is named "no_warn" seems to indicate that it's meant
> to remain unused, even if it probably should be checked.

These functions have warn_unused_result set on them because for 99% of
the time, I want the value to be checked.  But as you can see in this
use, as per the comments in the code, we do not care about the result
for a very good reason.  So we just assign it to a variable to make the
compiler quiet.

> Would you rather the warning be turned off on some level?

Which warning?

The code here, as-is, is correct.  We already have 1 compiler warning
work around in place, do you want to add another one?  How many can we
stack on top of each other?

And again, why did you not cc: the maintainers of this code for this
change?  That's not good...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YP%2Bql3QFYnefR/Cf%40kroah.com.
