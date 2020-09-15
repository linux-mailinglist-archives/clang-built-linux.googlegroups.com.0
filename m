Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBGWEQT5QKGQEALGZKEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A10D526AE9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:20:42 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id l17sf1642230wrw.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:20:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600201242; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6bQtvhHqFHR6VAPK2B1i/jk+nVwsnIHaaLvLVtwbcHetdYloZIskrEseLcDAZVjTO
         tfnSCb0GcWNFxQWVc9WTe9EtJO3aeUlBa9bkI5bqwG7bKRzJZOL9FleTzDPPYXq0cmHv
         JbWR995O0cu2tI3rawbUseNng0K64+oK3k09TokSMqYfqXUCddxOlEQ4O5RBSmd/BjzF
         rKOEEU/LtwYb7p6eZpCHbFYnXnDuouhrgRWKoROoEHZxbfTFTttj5x0Da6OMbAFpcN26
         QLrgXhmSpTPQjWxVJNtWOD7OdXhMo4S4WQ1pxvMzf6G2htjMafiiJN2/tiRUDFN0CqfD
         2uFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J5VH3jPmJDi+BdzRupfU4jO9jyVreullRISXgAvEup4=;
        b=lsOXbO4CxZNrxAVbjhrvlEsO2uCmcUzyF1HPnhnAgTAeqeh5+8ZOoYAoI10DHX2hny
         g4l//SykI2IeFqtPtXO4t21kK7+Jkmjl/wsKl3Pa9skNotZ21k+3zuJAFZU6T8kcJZz0
         nf04e57wlItcwOM+rJ2CuCW25TMD2FfYiPBuJrLrV+5HNoH2v7+daqivAsTMiHC5NNqD
         8VL6j1mOjPAO+JxOsoiEWDjPwrgr8hnOe08UjRnYWzXqT5lUE0LdQUnuJHsFF5F0OTE/
         dvpTqmv2B2e7KUooZz5oD+UTf24wkVepDxqrEJIwjOtHEmx/LUNAbRqDafhYHPgcHuaK
         U8Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=KTtC5vZ7;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J5VH3jPmJDi+BdzRupfU4jO9jyVreullRISXgAvEup4=;
        b=nrC0WifYPMJPH4v9h2hr0uUjA/oSRFXnN1ancW/ctVcZU6mcfTwVRm+qoknixOk3bO
         Y5W/E0aUZLEZMcPgCgdExwQ7b6dVfJbN8xhYz7dw3RzrmuD5HTY8uc9tRgO+8p9D7rZN
         7UUYiJyJC3Yb8Os1MQVpleKqaRZ6heLTjSkA9RbP92cFlwKAj4elSw+HMaeCTXqWUg5s
         s9J/3C8uLIUbKgtPytxrNfiEi+B55u0orNB6Eeb2FYqhgRuKj5ZDnnSvlp1O/eQXI9Mm
         oqJo+CteBWZAqDuhjkXHdIxTgIU6sdaPjEpznieD9XugWJfOJnI488m31Nm5cxPVUSmN
         D6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J5VH3jPmJDi+BdzRupfU4jO9jyVreullRISXgAvEup4=;
        b=C1JQDMbLNXB7YyuKoNHgwBi4rUHF1CtOC8aeFg3yMu+C03gDvKdce2vv5EmmkniyWU
         1xci3DcQCQvAwComV5YnWl09XRnKPLDg0R8Ab0AzMCeTRasnVBtzwp9DYjs1uIi8YNlm
         HLVdEao4dyskVIXyWogWVvMLbFxBA+sAE3Ty4w63wqMZuHLBB4Z/eRO/yFkIYNgbB/OH
         I7SXtbwjkWfvQv2UcgJlX2+Wc1aUWX9gZRTu8y+6SUUys2ydZRHelLU0I/f+m7viTfw2
         LkOGehm9E1eWKrEOspsb1WFIH8rNzlBh8UYksnUPBLO4xF7LdC4vCDFo0r0Iu9w2zJ0d
         1YlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cVBYoodN5QEjR4qhKgVQTkvcN0tqVXjpaTgjp/zx/V9ywz45u
	utHc+Ba2zutBBRfEXa5l0rI=
X-Google-Smtp-Source: ABdhPJzpzuDFDyUK27rwxFFfPj0/ZshyRyO9JLQd6K3MBk44PcrfqRnt+wnaD6axT398y3rolW0oIA==
X-Received: by 2002:adf:f552:: with SMTP id j18mr24770936wrp.128.1600201242350;
        Tue, 15 Sep 2020 13:20:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c768:: with SMTP id x8ls41699wmk.2.gmail; Tue, 15 Sep
 2020 13:20:41 -0700 (PDT)
X-Received: by 2002:a1c:cc13:: with SMTP id h19mr1035923wmb.3.1600201241459;
        Tue, 15 Sep 2020 13:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600201241; cv=none;
        d=google.com; s=arc-20160816;
        b=ECp6+vstZADvT6txkdE8M+tC/33zEwK7W5T8/NcFxrxxuT7tWrwv9nanqYEM13xyHT
         KcP0W3PV/py363wKfAOg+Fd6LuatY++VQn+OwT64iLBp6ImZB4G4+Kc3oCp3xsOpVl+a
         dRZDCu9cDzClSjcgwYsaKx2GXWojrFFZ5ZjV3g2jzogSC5w9XXOb+YQVYaTcwOEFWXf4
         XyOgmIriqhvQaQix/nWuYrni8lGNuQEUcx0MpMBwYQ0KNtvQHmuw32rScVK8kks1fx09
         Usqlxd5er8XNFR4ZLFMiGqRTEfQypHybDJ0pQs4Q6WegKu0gdl0baTFL0FVjjZkfn+Q0
         s4Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=m1zeLlW+IDog00PQVGph/rOz8zmBb7aC18qc50BuwbI=;
        b=lGMdKjrI5UuOfXO7z4haZCiVsEPW7Zb65/D7dTjJZQJ8fad3dI+k1z2Oa8ZF/MFqsP
         vmIUhrUjyJcP3eE+9Uf/lOKjP9GGXDHHB0DWWNT4cSwpFfI7kJBuZJxLstHEb2isJBnY
         Pihn6aBzs+aHbChtH9OEYiGR7NG0CQPELA3i5dkZQ5pK3qOkPv9Cr1F/gLtlyAY9fvS/
         d62bR23z+DxkmWPkskHuj42Rw3oSdNt+X5X5QJnbfhOM2hixE6FmWzCJLC4RNLTtmoUM
         ODgRVtsuJnctINXnr6gMnWcC2/8KKLEPvUTAiGHoAbyciKzOqXJzYaqUaHnPbVKon63j
         dFWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=KTtC5vZ7;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id w2si411412wrr.5.2020.09.15.13.20.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 13:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0e42002ec71013b50744b4.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:4200:2ec7:1013:b507:44b4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A46AB1EC02B9;
	Tue, 15 Sep 2020 22:20:40 +0200 (CEST)
Date: Tue, 15 Sep 2020 22:20:34 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Cc: Roman Kiryanov <rkir@google.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Pavel Machek <pavel@ucw.cz>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-pm@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Alistair Delva <adelva@google.com>, Haitao Shan <hshan@google.com>,
	lkml <linux-kernel@vger.kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
Message-ID: <20200915202034.GZ14436@zn.tnic>
References: <20200915172658.1432732-1-rkir@google.com>
 <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
 <20200915182530.GV14436@zn.tnic>
 <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=KTtC5vZ7;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Tue, Sep 15, 2020 at 12:51:47PM -0700, Nick Desaulniers wrote:
> I agree; I also would not have sent the patch though.

Maybe google folks should run stuff by you before sending it up... :-)

> Until LTO has landed upstream, this is definitely somewhat self
> inflicted. This was only debugged last week; even with a compiler fix
> in hand today, it still takes time to ship that compiler and qualify
> it; for other folks on tighter timelines, I can understand why the
> patch was sent,

... because they have the requirement that a patch which gets backported
to a kernel used at google needs to be upstream? Because I'm willing to
bet a lot of cash that no one runs bleeding egde 5.9-rcX in production
over there right now :-)

> and do genuinely appreciate the effort to participate more upstream
> which I'm trying to encourage more of throughout the company (we're
> in a lot of technical debt kernel-wise; and I'm not referring to
> Android...a story over beers perhaps, or ask Greg).

Beers? Always. But I can imagine the reasons: people working on projects
and then those projects getting done and no one cares about upstreaming
stuff after the fact or no one has time ... or policy ... but let's keep
that for beers. :-)

> It's just that this isn't really appropriate since it works around
> a bug in a non-upstream feature, and will go away once we fix the
> toolchain.

Hohumm.

> It would be much nicer if we had the flexibility to disable stack
> protectors per function, rather than per translation unit.  I'm going
> to encourage you to encourage your favorite compile vendor ("write to
> your senator") to support the function attribute
> __attribute__((no_stack_protector)) so that one day,

I already forgot why gcc doesn't do that... Martin, do you know?

> we can use that to stop shipping crap like a9a3ed1eff360 ("x86: Fix
> early boot crash on gcc-10, third try"). Having had that, we could
> have used a nicer workaround until the toolchain was fixed (and one
> day revert a9a3ed1eff360, and d0a8d9378d16, and probably more hacks in
> the kernel).

Yap, agreed. I guess with those new compiler features it is always a
couple of releases - both kernel, i.e., the user of that feature, and
compiler, i.e., the provider of the feature, to both figure out what
the proper use cases are, to experiment a bit and then to adjust stuff,
change here and there and then cast in stone. Oh well.

> And the case that's causing the compiler bug in question is something
> all compiler vendors will need to consider in their implementations.

Are you talking to gcc folks about it already so that they DTRT too?

Btw, if it is any consolation, talking to compiler folks is like a charm
in comparison to talking to hardware vendors and trying to get them
to agree on something because they seem to think that the kernel is
software and sure, can be changed to do whatever. But that's another
story for the beers... :-)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915202034.GZ14436%40zn.tnic.
