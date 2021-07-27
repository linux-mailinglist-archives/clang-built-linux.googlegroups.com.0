Return-Path: <clang-built-linux+bncBD66FMGZA4IIVVUBRADBUBG3KMPFU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCDF3D7F26
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:22:35 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id l12-20020a2ea80c0000b02900f5b2b52da7sf12489ljq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:22:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627417354; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cwag0t2Ts0DMl0Jp2T5S3KmyS5GWW6icUB9e+puxMk5zNnkqhHPvz196KyA7Gk0nV7
         L3wue2KNQmGYdtj9KgxcyJYljXoiaLD8XthDLhEUG8uBuPxKMZa1FjQAzLGoyFJLpYfy
         0mHV5MFhgHVB94jID/9JJBR0M4EgdQGaTPrmyJXeUU1ZO5wmMur9rtnq3+I07IeJ33OO
         LUuZAkD11pPv9e/dsmRZixS9ooY1jQB/c3V4eoWr50QYXoEJSw0f6VkGbBwkqgbPSzqL
         jzD75R8uxXhaJ+sEJPXIxklO3B4EImt6iuWSETtTmxdoSIx5XPBLzlJGpsydtFOLy0sK
         uY8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BTY1w1xCy/IvOQ61FBWfgYegbd4rqrhfQgaYgjbzvow=;
        b=aS+42RcygCTuN/tKZWy2GQiQH+YN9XjERYPkknUW0KFFMRooydoYSZ7jO/YdbDnNRf
         77mc7+F1bJunK2332lTfzXJ4f0pKq+LLLnw+SO3StkmoiXxGwqwla8fKiflEQt4cNt80
         2N1+LEYYjOEwAUlOxBXUwVHb9m3e9dndDBMrJy3T5wcXOdravzmdMOroHql28MWJHzV+
         Zp89quSAKT8Jyrq9X9276I+Zy5DPia/XCVWJMRdNhHL10Xq+ojrNrjK/Us8B+/xDzvEz
         2ibeVdEVNc0/W+DA1QOgwCf9gjEeoNqVXLXFQCs8XnR8GHF9eO3HOq9l3PpjXNwyFH1U
         fXXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=psO33K89;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BTY1w1xCy/IvOQ61FBWfgYegbd4rqrhfQgaYgjbzvow=;
        b=GFlcAk5eX4PpoUym2+UDscTsDEroM6u3AzIdt9jhACAfbJtpLXcJH3d1m+sF16itYM
         OkQeXJh6omnMqhyNkztqy5CL55mSl+S83Efp/F0bn1mw1zsrJiexfmC/8JFfLBGiZ3Z1
         SPsRLur2brdwTD4oe3truqhr6RARozrRdRijlNbKQT6nW9EMqhOcEknd4OMuIK0FHZJw
         ZEJWSQ0xr8cuC9umgR3xVyuhYKr/drzD6V9dHO3EeShJmBx7aECE5Bx+UL8tElF/+LEo
         8LELOL4GNRjdIJ7xCSnnwNe4tvMUqWIgBg7qjFJeMDUXfkK2Y0nlbb3fegZggnrKn82c
         PkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BTY1w1xCy/IvOQ61FBWfgYegbd4rqrhfQgaYgjbzvow=;
        b=poP70OXRx40MuRD/PIMwvo0mpAG2cs1quLWZoVxpzmcEKo4G7yMnO0EddaK2EaXkHg
         8j5nw+x+dEUflKjLYYePWB3FaMgxPoYEe/WdHTafGrtswZbqQSCd3CxxvvNQqa9txbSF
         BBNd0x7xLoQslqChkKcFKPsM5ypxi+pwbnvrG4dpSSa89jBujZ7YYz2ck7eCzN+wDBgy
         oSEzkGg2bHgIKevp/+j4E9JoWrxCi4eWtlkjvcOXf4OKS5hvl63E1MqoOe4jey2eLDXS
         Kk2ZmZGBUyiIUwQQMNrt92gxnIzLh/+YGEDnUL5TIHO7HdNuEZo0cUSyeauNbMcanUvZ
         eaqA==
X-Gm-Message-State: AOAM5325P27frg+oCj4CJSHLnM8QsbKrEtqXQtK1U8tBVG5+uN7w1KB0
	spMjn/Xrz18q8n4xdyE6RIM=
X-Google-Smtp-Source: ABdhPJz87Vnwf3DBotsgDunHmiGTlz8GPS9+UfF9G90e/aaeBgPVVzT1Z+oIP3QHwpPeqCFdR8IMSw==
X-Received: by 2002:a2e:8690:: with SMTP id l16mr17391834lji.202.1627417354813;
        Tue, 27 Jul 2021 13:22:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1165187lfi.2.gmail; Tue, 27 Jul
 2021 13:22:33 -0700 (PDT)
X-Received: by 2002:a19:2d0f:: with SMTP id k15mr18495925lfj.237.1627417353726;
        Tue, 27 Jul 2021 13:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627417353; cv=none;
        d=google.com; s=arc-20160816;
        b=sMnB0wMkFYG6vdm6Pq8Z9PQyansFT0wjtCTGuDjLry/0wREkzE+kVTtkSQfMzSgHHi
         RMaBPduqxFTvciDQoGc8ORXy89HW0KXPmtVgVVX03uQuQ47pnHriWctocddmOaob3ixA
         8xxttz0uI2VVAQswvXFGVWlNecX0LOGPe8r4wR18tKeFxj3WLoQloeq89mPxMBpWB8KN
         crG76UjsDBmJytTiv6jPEncAn85ldZ21K0tSCq5LASxacT9TO9FoXM40dHna6mL/yuJz
         AH+4w67X1PX4s5+QonqQIAZQG+zS3cqYR0gjyk9Uhdpyvx6i70ACa3Xbu+6i66pxEFCR
         +fJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LMG+Pjc0zpd0uNpV6YIb/P6RindR203i0ZHENXhfOys=;
        b=xPNCSoecNno9zyGGZJe8opYYjCciuAbdyPlx00YlFTP9eTsbHgW/EBxElR24/zCJ5g
         VdgEhEBernIr6+uuHQZtnwuc+dEqwi/tnML5Ebx0nWfkbD/Zeoy2vZCPrI8pfXOKgc8Q
         we6dxsTVQDhpf2cUQp38FQ21pjBsQXMRHnB9AsQ3fzFxJIIjmZlW7kfg8ao9xj0mnB0t
         L0a1YGA0HDByXHNdkv+rR9t0u+xPHJo1PMRdHKRruOpADXMO5vrOmCOgHjpxbkBdtnIx
         Shs9kQDCaLXd5WYqxHmU1wuXwnx9pA6V2lnxXNcD5w8GZWy8D01I/UzvpoLiiKBGYeaG
         QyiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=psO33K89;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id q8si225874ljg.4.2021.07.27.13.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id v21so800076ejg.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:22:33 -0700 (PDT)
X-Received: by 2002:a17:906:7951:: with SMTP id l17mr23806775ejo.529.1627417353173;
 Tue, 27 Jul 2021 13:22:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <YQBJfAuMJhvd2TcJ@kroah.com> <20210727201328.GY1583@gate.crashing.org>
In-Reply-To: <20210727201328.GY1583@gate.crashing.org>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 13:22:21 -0700
Message-ID: <CAGG=3QVWxdYnjZshsYVwf+jVj8Mb9=44SZA64cL0g414JncWGw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=psO33K89;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as
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

On Tue, Jul 27, 2021 at 1:17 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Tue, Jul 27, 2021 at 07:59:24PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > > I think warn_unused_result should only really be used for functions
> > > where the return value should be used 100% of the time.
> >
> > I too want a shiny new pony.
> >
> > But here in the real world, sometimes you have functions that for 99% of
> > the users, you do want them to check the return value, but when you use
> > them in core code or startup code, you "know" you are safe to ignore the
> > return value.
> >
> > That is the case here.  We have other fun examples of where people have
> > tried to add error handling to code that runs at boot that have actually
> > introduced security errors and they justify it with "but you have to
> > check error values!"
> >
> > > If there are
> > > cases where it's ok to not check the return value, consider not using
> > > warn_unused_result on function declarations.
> >
> > Ok, so what do you do when you have a function like this where 99.9% of
> > the users need to check this?  Do I really need to write a wrapper
> > function just for it so that I can use it "safely" in the core code
> > instead?
> >
> > Something like:
> >
> > void do_safe_thing_and_ignore_the_world(...)
> > {
> >       __unused int error;
> >
> >       error = do_thing(...);
> > }
> >
> > Or something else to get the compiler to be quiet about error being set
> > and never used?
>
> The simplest is to write
>         if (do_thing()) {
>                 /* Nothing here, we can safely ignore the return value
>                  * here, because of X and Y and I don't know, I have no
>                  * idea actually why we can in this example.  Hopefully
>                  * in real code people do have a good reason :-)
>                  */
>         }
>
> which should work in *any* compiler, doesn't need any extension, is
> quite elegant, and encourages documenting why we ignore the return
> value here.
>
Or better still, use sysfs_create_link_nowarn() instead of
sysfs_create_link(). We'll just have to take the "__must_check"
attribute off the sysfs_create_link_nowarn() declaration.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVWxdYnjZshsYVwf%2BjVj8Mb9%3D44SZA64cL0g414JncWGw%40mail.gmail.com.
