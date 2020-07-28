Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBSE2QL4QKGQEHJCNE7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AAD231415
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 22:40:41 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id u14sf193846wml.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 13:40:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595968841; cv=pass;
        d=google.com; s=arc-20160816;
        b=mfQhCw1ODxy4E6NA5cUR9NTTdAuQIGYxHixj8VCEDHsieojfu/W93QH3DqVMZP+25Y
         3ML2d4Bxn/OVTTs/JgZMTEl9p29SBB0eZJqhLTvTkHvBY0Oqh2IEi+T94yBd8CtsVfi1
         eFmzILYqHTdmLIHNIkR+0EHfVDniM4Rhb03fjCns5+TXr6UuJpaVi5lpdQsixIjPfliA
         GPlQqMLyGnOwycn+FfEcGh2vBWWVtIjyiQlL46QnYfk+bVTRtJLT9A/+bqo7SUS1MT3G
         1unrgcvrXVlNc1USzhMUGMCd6cWkb0sCUsBvNVshW9VYSEbNpNiVCl/ROOxhK70RVFJl
         /Mkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0XgN5ijwSu3YO+QwFECYQJ4Sc/jQynYoKWoC3su45aw=;
        b=K6TvF61zEg7utxybVcR2nbAMKueeFVo0FZijY2rThWMSJWgSg/ItB3aa67eImwrgcg
         iPIyWZgQ0U4HSQG/Plbn3boxOdZg4foz6qBuljE8zfY6a4N/Bqeuv/krn3u07VzowQFR
         uSgFFTCAMtZv4s7zsowQG5D//nkxNZpCDCmqCj7e/LcYeQ+5zoBq7o7A4gw8l1Mz/8Ug
         OcjKS87+mQ0YoQzhbRH4JySOo20kaSaxf48LvEitpCkOaua0mz9lcAVIDSyHUfd6c8nd
         BgFJK3WWn2sM6Rx38lV/rCWSYMXMvnYRXkjxhyfOZo0wEydNQD3+e3SiLXyWjLcxfNM6
         en0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0XgN5ijwSu3YO+QwFECYQJ4Sc/jQynYoKWoC3su45aw=;
        b=LTalpwrrga6n+Ya7ogFJqWzYZHlEFaO56oBUT4po/s8qywKvX1FC+wsZ/vCvFzY/Ew
         wP3tvdHmxIxEVArHvDjM2C4UVYRWbVmyIFLKu9HL6geDp4ouO6GPHe3ALE1Vb9IT+nNp
         3z5IYCabhUs6PsYPp/z5FPOH7YGCt1s9vfa9eDmtXM15yut/zu5MdWykfxGXG282PLZY
         ipGrSHVyKobVBtIv5WmCN/RCPN5FKc1VA8zm9WujilgYcuhGrpbzDrcdcD9WvVm0TBm8
         Xs5wMN5ea/B9PzyC+4j770L16XQMEeQb6s1FN0ffTSIPXgdk5D1FaeT+H//1skmmG2hb
         1FPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0XgN5ijwSu3YO+QwFECYQJ4Sc/jQynYoKWoC3su45aw=;
        b=MfEyjF2vc+x5kOPVeOTONs/DJFxf+vHalfltF96HCnW70OF+VsJTNdVRJ8K3cgCtFH
         +M/PYiBCMHz5uZ0fQvtkoFSTNSGBV0bChJatVzhbMQxScnRkCe8CQs3eLJuqeOup2SZa
         5EGYsJTmVJVrJjMuom8PAfJ6YGUZVuxHWcOORjY+/IIM9r3Zoh42DujCIzQ2pb6jm4rx
         Dl8L0b7wYGc8esGO/PhYOdQhrlWOzYzvifUyLRmGDy1fIU7UB9oXH9z7Zw5aOwYjU0wa
         08VsCkLgwKNdCaLyKI4zxPsYn7V6f9LvB7MHTu8gBmQW0DqR0wuOy7lKU1fB0oc//PQS
         iGlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xfjm9OeMjIi0WLYCosdRcf4mj0EyffCwRWz6rtTx7WGbQ68bp
	tHO1TEmEDCMeGlvHr1rcPco=
X-Google-Smtp-Source: ABdhPJxgwIlLlIRyTW9dLnDFRi2fY+lRQLCyzoHErpdLoMKnKRncyUD/NU1abl5T+C0YNFu/G+atug==
X-Received: by 2002:adf:f247:: with SMTP id b7mr28067055wrp.128.1595968840968;
        Tue, 28 Jul 2020 13:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls8172wra.2.gmail; Tue, 28 Jul
 2020 13:40:40 -0700 (PDT)
X-Received: by 2002:adf:92a1:: with SMTP id 30mr28769151wrn.56.1595968840498;
        Tue, 28 Jul 2020 13:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595968840; cv=none;
        d=google.com; s=arc-20160816;
        b=hoRxpvNNbWSocr4bhqcVKE5QUcWqVOR04q8tMxqEUBoJwGh3ZoliItSPaHxcM8X+5H
         M74tvrgKi2oGEKB+zalMx0qQDNFQsLz0A2walefn4DF+b4EjYbZt8FSeSWKvt/Y0HyC4
         NESI04IF1mI/5M7t8oLUnDgVfBGA4nQbPDobUjXY0BCH+Au6XKRwFiWGxaTHIgdiCbx0
         fhWXAjqEa+jtLxNr5X8TWlLw9WwXZw2fzZBzEDdPoFz9Em3d09tDwLHkQMWXJgyl1IQu
         mOgHtUym4/wwc6N/GcX2IDygYlbaXxARckcCqW/wwYhcTJOCwKc2aVSIF1+5lV8FePpr
         jJ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ncyHBoE5YHMb4nEZ6Xnf+6/52QBsz7cENIrs9s2OFT0=;
        b=ECwXfkvJiEuZVDFvTLaH6s4Axw/7sNImyBaQJbKAsdgkxDhKCj9ZGNy0LVpCwit0mb
         X+5arFk3KN636eiHfWNagXze+FrrBd7K0oiQr/VsmEuQ/IFnjya+1olfXQHi+VW41iId
         mPv/TurayLXZ3vTZy8PjtCuPexWTsvuHVrNPDrjplcWWr0tUPvohduF2+VjbBUIMJnnG
         76pg+OlQt5uuQr2l9tBu9jtdU02Bdh3SSlA4pHHFVdiH8LfE70Oakr2Qosl3DLyvGxbv
         h7qfl3kiFLZu36HOPL7MBdKCWfj8C/Fs+8g06A+Z9uodhgFs3aVF59gd2bKAlkjin1GN
         ocWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id w6si1251wmk.2.2020.07.28.13.40.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 13:40:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id D21D91C0BDF; Tue, 28 Jul 2020 22:40:38 +0200 (CEST)
Date: Tue, 28 Jul 2020 22:40:38 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Josh Triplett <josh@joshtriplett.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com,
	jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200728204037.GC1012@bug>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <20200710225934.GA16881@localhost>
 <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
 <20200711210317.GA60425@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200711210317.GA60425@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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

Hi!

> > No, please make it a "is rust available" automatic config option. The
> > exact same way we already do the compiler versions and check for
> > various availability of compiler flags at config time.
> 
> That sounds even better, and will definitely allow for more testing.
> 
> We just need to make sure that any kernel CI infrastructure tests that
> right away, then, so that failures don't get introduced by a patch from
> someone without a Rust toolchain and not noticed until someone with a
> Rust toolchain tests it.

So... I'm fan of Rust, but while trying to use it one thing was obvious: it
takes _significantly_ longer than C to compile and needs gigabyte a lot of RAM.

Kernel is quite big project, can CI infrastructure handle additional load?

Will developers see significantly longer compile times when Rust is widespread?

Best regards,
									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728204037.GC1012%40bug.
