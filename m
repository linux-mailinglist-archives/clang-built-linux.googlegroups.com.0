Return-Path: <clang-built-linux+bncBDRZHGH43YJRBM4ZQ76QKGQE3UB7HCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDEA2A56FF
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 22:33:40 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id e1sf8400522otb.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 13:33:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604439219; cv=pass;
        d=google.com; s=arc-20160816;
        b=ts0rYRbE2JwO97QTjTCzskSBhoP+nUUguaosM/sbO3wTsUYNR2SerpTsHmLTT431Zh
         vfNQfyhGL/Do5yWjROwi5RDOcqF0ek9Lw727AwWsSMQGqtXszodL7T3OnCOO6Di0QoF1
         /AUoPPss911ZjwFbO95tpf40aa+EIacZMc0y5OPT0sWFgQRsxwGsKsAppUiGFPvrDsFf
         hOr3tJPk/bI5UbIILorcyaSHXjPg6OxeVRT07B1VH+0StCkxjl+CX//7pDEoutarG1ns
         o590PLdo+8TWNUfS+Z0T2EJNDhgKnoxC5nGsv5U9X6eoScEfjqAQIHGoSjI/WDWvi4nJ
         BLUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=u27rzkHrG5SWZnxgSKpBASFIjwi0HJmT2bt5DoDHpT4=;
        b=zDe3MWp6pZwiwMnlxXxWDtsFWsdQcntASb8Vy4heBXYiQPuTty8H4w3RbVUuwckoaJ
         gKmoy+IRT3dNIw/zuIGbcECHsO434Lb9Ogab/YucPLcax04ltXnI6zX0DGQe7IqMCbPv
         q2Rm51h8LlYUcmsZPLY/IgsjJjVH7D5S5VMlWfAog8WsDRdkA1Hz4v6aXht/6FtFFngj
         tYWqYQNc2hbWF9PytaCiO3ek1F4U18AsM3P+WkgHN1fobibI3MDkpSvp6Hr7Ae3oJWcQ
         kzcB8TctQaP+UWIt6XEGaaKNPfRmPu3zQFKfX6v1EDAVF4N9eXibyIIxq7zjZPoD+NUc
         Zu+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAp3NG5S;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u27rzkHrG5SWZnxgSKpBASFIjwi0HJmT2bt5DoDHpT4=;
        b=WsfROo72B3GUag0EqAeZR8zWva35KI45XhZz0k1oM+dQ4Q6ROnAW6UD2nqGRacwon6
         OWCcOV5Z5YJ7nmef2Pj8e1pLPYfoBKHTFuOSXUpfJHvAyNJAgB9euZTsr9zXyO39ZUnU
         5DLiWyGsKvw2rx2EmDc66RbGUBHB98L3H9+3yaobDxX1EyZSNW2ixmuWlO13FnIe2Pmk
         V/rwOvRmhfxRqI6NS+e506KQ/atEiNsE1tmbPhva0kxJMMu2uQ6KKIgFEZ1eOUfRAIGg
         dFzq53U6u7wBYYSx9rzLgVFU3UW6SxYh6XyTSnTjXY7WJ5h/VZnMOtObkpJSUwpOgb4w
         4ieg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u27rzkHrG5SWZnxgSKpBASFIjwi0HJmT2bt5DoDHpT4=;
        b=YASlruhZnnj8wDmdYgRYSL8Kf5QJzj+E7NSqZ+tdyTVGT5qStCkSzI3Zbz3GVtStFz
         e9o/0O6mbMwP3rC45VnK32+LHjW8OsKIiHvYYxrjuXfrisPmI8GafrwnhMXS83w0gwjT
         sTZyXe6QDeQGQNUMEf1rtaKDsN1aDtSAuaplWmG3TtI9QUdG3L9BhYvWCWDPwukEy6g6
         noakDecNjhDbXZrgMc9YK31rOFTWUU0f3hxd1TXbqNSLl1+vw1gC3/ZxGBXi3cSQH22U
         iaxgJQ+CG1WTpqRXR9wHirn0m+AKwYv5xoQ8NdW9mBlNvlnrg14o/6jHnuo9285C0tG1
         g5EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u27rzkHrG5SWZnxgSKpBASFIjwi0HJmT2bt5DoDHpT4=;
        b=t4RgOW0HmavMYciaM9SWK9bpNN+0oagT6V8fnRM50xCZ1QFkGTDOG80Ob3zr9UbpPU
         gJwM3ouO+gycwf4v91DTqiY0usTqe5kMGdPIrBdvDGFebxcDg4XUYo1fWU1j+oy8JAp/
         Vj3jSFiV3sec2zHB5g8skNH1u+Nu/nrOY13hX2+G2HiymStRgIQXehN6kWTdTDKjzXsc
         QhspvGF14XFwmhj7dxlg5VinmGWq01PzGBcXe3beJhzMJRoqv5Ld7TsVjhfSZok0VhTg
         eJSyFwMtL0Jan36lRCeIsk6l+iiHo8jLS5/RjBygoGa/wN6SoyERgl/5oaWWi0tp4IsH
         Aukw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kWY8dsPzVIrhmy75iIhJx4PR2IsBn/fp7EUHHy8xlf4bv/S7a
	GI074KprzVbf6GhpH8OZUf4=
X-Google-Smtp-Source: ABdhPJwrJ2gXzEijByyGAueWoPnAtsYJ7S+YkIGbgPSqk4KewNoBNSnvQdPuYL2FEROrCTxin2D8vg==
X-Received: by 2002:a9d:a4d:: with SMTP id 71mr2548048otg.257.1604439219248;
        Tue, 03 Nov 2020 13:33:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:de07:: with SMTP id y7ls218703oot.7.gmail; Tue, 03 Nov
 2020 13:33:38 -0800 (PST)
X-Received: by 2002:a4a:1d03:: with SMTP id 3mr16713590oog.19.1604439218854;
        Tue, 03 Nov 2020 13:33:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604439218; cv=none;
        d=google.com; s=arc-20160816;
        b=fzQVWbKSay9zpWDRbj2hbP4n8zXJ791LJHYU7GJj6GnDo9oxnjFcFXGeDdTIKUwXNy
         +hbD643Lkf8D/jpicAeR8jvVoCB5l4khWGVeehfgQBxyZo+mniNCUbUsV2Eo4rNBnEvE
         6Ong97KNJoa1coCzxls6tSgiREsAj8GNfQKdf7zUjtSz22ddwxQ+GKHw5IEqbooExemj
         cAgPBf2H+9WgzJaauGdDxX9irNurVNx3WLgxdTvXJ8IN2k4jMX/6zC/rN3o4VLbeJRWS
         pMXaynXHfF5kIcMsjo8aRQB1yHl0BinCC2b8k1Cru+NKpZifPgPW+rE9SBAX4gji6H78
         q7dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fk/nsYSwR82is1IswQNV9CoWpeZ/r1DixUE7u1e345M=;
        b=PbPvPZditLh6ogKIYsIiVSDyd1v1+eAm15Tql3w0/AT0/qPtld5IVEbEba11UucaJ3
         3jj3lUwL6OKi286mJn8OMr4I3MLJToycgu8F7YKBcJdDZt3JLv3YWTirW4Uscie5/7At
         c3pLBLiNBaTWQH3bG2C9cjCnsXWjnm4BYmTMvvJ4XsiOq4k0RSmEwaQTetpeJfBebLHR
         le/2jWzNdHzh0J27CNGPHKhRewTqrWUnsINvEThZLNODA3jQHefMOIKZ3NxUKp0NHiWr
         97I2r++D2NClpymd7Y/PmVPOPDlok2JfAnABo0YKNSlsS/PhpEO+oYYqZpYOzBalabIt
         3Utw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAp3NG5S;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id r6si8651oth.4.2020.11.03.13.33.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 13:33:38 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id c129so16142908yba.8
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 13:33:38 -0800 (PST)
X-Received: by 2002:a25:d441:: with SMTP id m62mr32045484ybf.422.1604439218468;
 Tue, 03 Nov 2020 13:33:38 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
In-Reply-To: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 3 Nov 2020 22:33:27 +0100
Message-ID: <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Joe Perches <joe@perches.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uAp3NG5S;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Joe,

On Tue, Nov 3, 2020 at 7:29 PM Joe Perches <joe@perches.com> wrote:
>
> Now that the clang minimum supported version is > 10.0, enable the
> commented out conditional reformatting key:value lines in the file.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>
> Hey Miguel.
>
> I don't use this, but on its face it seems a reasonable change
> if the commented out key:value lines are correct.

It is, yeah; however, the concern is that there may be developers
running an old clang-format from their distro (i.e. not using it for
compiling the kernel). We need to compare the functionality advantage
vs. the inconvenience of installing a current LLVM. The best would be
to ask whoever is using it right now, but there is no easy way to do
that -- many will only notice when the change is actually pushed :-)

So far, I have avoided upgrading the requirement until clang-format
could match the kernel style even better (i.e. so that when the
upgrade happens, there is a reason for it). Also, the configuration
can be overridden in subfolders, thus a maintainer can push things
forward in a subsystem meanwhile.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3Dr6oieZ-Nj-e6e%2BHriW8kADB75z2pj6W-gg7Cff3nqGw%40mail.gmail.com.
