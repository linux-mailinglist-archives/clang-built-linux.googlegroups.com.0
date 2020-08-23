Return-Path: <clang-built-linux+bncBDN6NFU45ACBBC6LRP5AKGQECNYFHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BE424EFEF
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 23:54:19 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id d2sf2407873lja.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 14:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598219659; cv=pass;
        d=google.com; s=arc-20160816;
        b=lp1mSJp1K+Wa1t1T6K0sb84cmLHU68naHlHlq/3sb9Hubsy1lt1BMCzoNVXjwuJLGa
         a6e9ZV1xWuE6ztbijLr3LuZ8jsfY1P8SIawZtd3yoofdZgZEhVXAQro3F2RUuLmUSBth
         EPv/Tg41Vr4cni/H/2bAhazyTL57QpvQAXpcLc96LDm5kvWjTEoe98SA9gKxP/Kb0e5t
         ipMsLNfdjfoIT686zPuc5rc0de04QQzl+GlNuqSkkF3YkpenJDfWOgYLY5vMg9BeESel
         wXZ/Bnrfmm8g+BvwWNJSP+i31yvSUqI4t5epX2tT7CKVeVw6vmZIq0XNzo0HOkE7TYY3
         cKnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3Hm9LDBu114KBzqVQssEylw/WWnoI8lTdYaByzoh21g=;
        b=ey8DypFwvDrqq/JUV9ty21QJT630r44k2WN6Lf+0WduPukRvWb4klW3oeC66o22WmU
         s5Hm5jRvYhCzBMAVEYVJWpU15bpOk3h8NzT2RydUbOv0ZJIcPM4r7sR/JcekbQxTbVQd
         CzJyv0aE1EsheAkXwtPIN+W5VBf+gOc/r28mNP1EFStDcT1SeBIcsXW1IpuZADClJXIH
         UqiYHMDOgJzCWWTSHNCkzNX5kbpGLYNWGGQ8VVUo0R/U3QqGnthyKoymkVzc+0a7sU9L
         efHt+TRx+5ty0RrN9ASYtRRXkwsJkifwF5DQs1O2T8wCtDXUe0lLZ9jbbVDibd49uZ+V
         AIaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=KZTMMdqG;
       dkim=temperror (no key for signature) header.i=@ldpreload.com header.s=mesmtp header.b="ce0/pNz1";
       spf=pass (google.com: domain of geofft@ldpreload.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=geofft@ldpreload.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Hm9LDBu114KBzqVQssEylw/WWnoI8lTdYaByzoh21g=;
        b=lz7tBB8qOUYSoIqev8liYcMcHv41n4Di9BtZbsNlfWc6/SWNbcog5+rS3Kt/SIgFC7
         oJM1ZoDqucO5V/REplW3H/ead2MOhEiG1YYRwcNYbcLoi81LRaiF7e088HXHJhoLC8wL
         9hTxouNn+SoTdpd5cQqtcHYb4IQbwUQSrK3lOB3Gn2HrEyRmez7QwyTEfiUAoUG+MD45
         raPgypolFy5ak2kHvbz4+25hH1nSW59B/uPxsbxmX+L81Y0ODAjgxHWEkAuRVhe1n+bE
         QDpp0y2mE1RQVI23Wqfj6jYDYa8lyOiqOd9imaNLeWLuifq/RyQzPWA0rKHcgxYj7nRt
         1F2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Hm9LDBu114KBzqVQssEylw/WWnoI8lTdYaByzoh21g=;
        b=TSbfXapL8wfsBtHNLKD0LupSCfr9CtgWikEIUiGZQIbjPf4aESPl+ABEe+gfzmcqBh
         k7Bz+7KbJRuPIiK8w4l/3jg+CW/8YE0vf78oXlT6pnV1+sJGa5Al0PQ4UfjCXcffanQA
         4lWIoNiciJU+c2QWOB8mR5E1HXU65kMzjXSJBXZQOlKLD1+EIDObZOD8na9Sv9IFqh1Z
         jvlpnVtMhY9m8N0UCI/HGPsI6jn5PALGaacNMp2OHNfIW4Hlbo2wBrjcWjGQe8ozWA4P
         57SFQ+E4zB/283DBaaAnKp22Dcz5oCoQ4SiwIjOEaBqC7VnCaw84SEhCpHZwWbQPo5Gy
         Gn9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NWT5CroUDe4B128eA20JO9OmxC/tOFeEMH5s2U1y+hBtliLUy
	iRJ2bpeLQ8kYri9iMGpquFk=
X-Google-Smtp-Source: ABdhPJxUWtNaMOt3MonSFBjOjjCgdL9r3UN9doeQzlOGNBxay1A0eVKF8qVX7RZ6O3eLl+dX+KTiEg==
X-Received: by 2002:a05:6512:3084:: with SMTP id z4mr1195255lfd.141.1598219659303;
        Sun, 23 Aug 2020 14:54:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6c18:: with SMTP id h24ls1249646ljc.6.gmail; Sun, 23 Aug
 2020 14:54:18 -0700 (PDT)
X-Received: by 2002:a2e:8557:: with SMTP id u23mr1288369ljj.45.1598219658412;
        Sun, 23 Aug 2020 14:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598219658; cv=none;
        d=google.com; s=arc-20160816;
        b=HFeOtQhaORkX6belc9qAVuKke+Ik9EE0IWqVRbKfjUfjgqPX0MSusUiNAoNx8YpLo5
         uif7hzbQGaZjAMGPgwWZRl4W2Hn8XAuDtGjKg5muASQjEGfN8gKT84PYqYlrDf6VbLnn
         vAa+PnLDgSlsVhalzFu/QEk1sc5WETt6J1ctGyfW/iOQzbN5PjXMnxQGhKabbLxZ/MEB
         FMBYf2cY9/kbvlgUnImk7hkp69vlZVqZBwwYlCnmX6vl4WAOd+MWP+XherwgZAEWoOlE
         71K+/3yt6h1wIlNxCgfTSHjOZLjfM67lOHePJ/Nwdoo3LOJ42lfCdW5lPFt6jetpg3xA
         ghFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=3Hm9LDBu114KBzqVQssEylw/WWnoI8lTdYaByzoh21g=;
        b=pMDvTq9hHqDglu8WrUsfShfeIjFqUHUUbsXEhJD/cVNY49mBhz4LoQ/Qs4jofQZiOx
         9KpvwykrEBJ+pYNN+0OWmzvfgmmkrbixXRLWh3FlQB2xindnMDaxkK2DqtNtrRM5GoPL
         nCAdTAgjJ/K+dNMIUjo8gXXMXp7hH9RtS0P6dMXSgqptSlqhx9DUONv5A34CyOVXHiq8
         jbzZUbWVMxaZr5IVPawIh7SPDZYF5oL2OgH/Zon3chxuVErCOL5WvtFKBCoN6O5JwwW9
         J52Q5zJpbRJ+938X5mHzC7SBM+A26M8ApVk6NvQvtb7kBurGTfocLHsPaluspAOgaUzi
         Eyhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=KZTMMdqG;
       dkim=temperror (no key for signature) header.i=@ldpreload.com header.s=mesmtp header.b="ce0/pNz1";
       spf=pass (google.com: domain of geofft@ldpreload.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=geofft@ldpreload.com
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com. [64.147.108.71])
        by gmr-mx.google.com with ESMTPS id z14si217991ljj.4.2020.08.23.14.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Aug 2020 14:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of geofft@ldpreload.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id A0E6F6EC4B;
	Sun, 23 Aug 2020 17:54:16 -0400 (EDT)
	(envelope-from geofft@ldpreload.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 97BB76EC4A;
	Sun, 23 Aug 2020 17:54:16 -0400 (EDT)
	(envelope-from geofft@ldpreload.com)
Received: from cactuar.ldpreload.com (unknown [198.27.64.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id E6C116EC49;
	Sun, 23 Aug 2020 17:54:15 -0400 (EDT)
	(envelope-from geofft@ldpreload.com)
Date: Sun, 23 Aug 2020 17:54:14 -0400 (EDT)
From: Geoffrey Thomas <geofft@ldpreload.com>
To: Adrian Bunk <bunk@kernel.org>
cc: Josh Triplett <josh@joshtriplett.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com, 
    jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
    Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
In-Reply-To: <20200823210246.GA1811@localhost>
Message-ID: <alpine.DEB.2.11.2008231713130.4589@titan.ldpreload.com>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com> <20200712123151.GB25970@localhost> <20200712193944.GA81641@localhost> <20200823210246.GA1811@localhost>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Pobox-Relay-ID: 302C7A94-E58B-11EA-A9D7-2F5D23BA3BAF-67873895!pb-smtp2.pobox.com
X-Original-Sender: geofft@ldpreload.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=KZTMMdqG;       dkim=temperror (no
 key for signature) header.i=@ldpreload.com header.s=mesmtp
 header.b="ce0/pNz1";       spf=pass (google.com: domain of
 geofft@ldpreload.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=geofft@ldpreload.com
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

On Mon, 24 Aug 2020, Adrian Bunk wrote:

> In librsvg, breakages with more recent Rust versions in the past year
> required updates of two vendored crates:

Interesting!

> https://gitlab.gnome.org/GNOME/librsvg/-/commit/de26c4d8b192ed0224e6d38f54e429838608b902

Looks like this was, for a while, a warning and not an error:

https://github.com/servo/rust-cssparser/commit/3c98d22c5de3b696bf1fde2b6c90069812312aa6

     = warning: this error has been downgraded to a warning for backwards compatibility with previous releases
     = warning: this represents potential undefined behavior in your code and this warning will become a hard error in the future

> https://gitlab.gnome.org/GNOME/librsvg/-/commit/696e4a6be2aeb00ea27945f94da066757431684d

Same here, and it looks like the same warning/error, too:

https://github.com/dimforge/nalgebra/issues/561

     = warning: this error has been downgraded to a warning for backwards compatibility with previous releases
     = warning: this represents potential undefined behavior in your code and this warning will become a hard error in the future

Following some links in that second issue, I see that this seems to be a 
summary of what's going on:

https://github.com/rust-lang/rust/issues/59159

in particular this paragraph: "at the time that NLL [non-lexical 
lifetimes] was stabilized, the compiler's acceptance of this borrowing 
pattern was categorized by the NLL team as a 'known bug'. The NLL team 
assumed that, as a bug fix, the compiler would be allowed to start 
rejecting the pattern in the future."

That is, both of these cases were code that should never have been 
accepted by the compiler because it is unsound, but the initial 
implementation of NLL was not clever enough to detect it. They later 
turned it into a warning, and later turned that into an error.

There is a link to this policy document which explains their process for 
breaking existing code in the case where it's necessary to fix a compiler 
bug or similar:

https://github.com/rust-lang/rfcs/blob/master/text/1589-rustc-bug-fix-procedure.md

There is also a link to this comment about why they decided to take this 
approach:

https://github.com/rust-lang/rust/pull/58739#issuecomment-476387184

which includes the followup task, "We do a retrospective and look to ways 
to alter our processes to better prevent this in the future." That is, it 
seems to me that the Rust team sees it as a mistake that they ended up in 
this situation.

Josh, do you know if that retrospective has happened? (I see some mumbling 
about NLL -> Polonius, can we be confident something similar won't happen 
with that? :) )

> For updating Rust in Debian stable for the next Firefox ESR update it
> would actually be useful if these violations of the "hard stability
> guarantee" in Rust get fixed, so that the old librsvg 2.44.10 builds
> again with the latest Rust.
>
> It also makes me wonder how such regressions slip into Rust releases.

I do conceptually agree with this, even though it is not technically a 
"regression" (because it was really the old compiler that was buggy, not 
the new one). If I understand it right, neither of these lines of code 
were valid with the pre-NLL implementation either. They were only accepted 
by the initial NLL implementation. While the purpose of NLL was to enable 
writing (valid/sound) code that wouldn't have been accepted by the 
previous, simpler implementation of lifetimes, it seems like it should 
have been possible to opt out of it while there were "known bugs" 
precisely to prevent these sort of effective-regressions. (And I suspect 
that it was in fact possible to do so, but perhaps not documented clearly 
/ perhaps there wasn't an awareness that this was a thing that users who 
deeply value stability would want to do.)

And yeah, I can see the value of a --accept-previously-accepted-buggy-code 
flag from the distros' point of view (even if I can also see why Rust 
upstream would not be super excited about it :) ). After all, if the 
choice is between the distro not taking _any_ bug fixes in rustc and the 
distro taking all but one, the latter seems like a better option.

The other takeaway, I think, is that you should regularly compile with 
warnings turned into hard errors. The policy document above (Rust RFC 
1589) says that all such changes need to be a warning and not a hard error 
for at least one compiler reversion. That happened in this case, and both 
fixes were applied in the vendored crates while they were still warnings. 
For any kernel Rust use, I'd strongly advocate for running CI on every 
stable branch after each compiler release, preferably after each compiler 
beta release, and shaking out any warnings - even if they are not warnings 
the compiler will turn into errors on its own, they may still point to 
logic bugs in the code.

(The Rust folks have some automation named "crater" for running these 
sorts of tests across the Rust ecosystem, which the document mentions. I'd 
expect that anything shipped in major distros, including librsvg + its 
dependencies as well as any Rust in the kernel, should be included in 
crater.)

-- 
Geoffrey Thomas
https://ldpreload.com
geofft@ldpreload.com


