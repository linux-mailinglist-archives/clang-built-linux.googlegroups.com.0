Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO5T2D6QKGQETTDIM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B32BA2B6D9E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 19:43:08 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id p7sf4641256vke.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 10:43:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605638587; cv=pass;
        d=google.com; s=arc-20160816;
        b=OeDn4jDocLgp3H39PVzMZuLPfYQTPivMvmAeADyI9cfaM+ee9+UTGlhG08cDOAVQN3
         /6p/qll/AGAvbolBo0Ehlo+n/SvSDtsGW43Jb5l6KuMEOy5xGkLnzsmO6H9CY/7yRKov
         wEwq0R0T6N58v1noazkllPxDLHIu4gRGM9cxLKfVWPdK9vch95UyDsWqEJM5IekZzgqC
         Ttu7424fKOC/Ya6WZgHGZFir84iAIttzP0ZS6VOnClLAOJ6Rpa4spy0TzIO071f5MmD7
         Efzvb93pjc/3zps1CYltZ6Q0jlLhoCoBF5WtmYsCr1ZryEOkK4dh/+1IeQ3AuLFU96YE
         7Z/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oeus90/sCw3HXdPeBAbgdiZ4wctK/xVG+rhkTXI+/S0=;
        b=BeYYtAGxCBUX4nMUdVoyzHXo3dEkdaSDMFLND6pmGoMjlC+4C6MyIOH4I2DJnAbZdF
         nKZzW5UpJzGhR4nZIpr9BRLeBPjlhme+CE9qszjyjTnb5nBPK/lNUsanMapAn3fxztMP
         uW1U+xjKD3JsngyDh/RweZEt/qtOgCy744FQUL/VeYJaSC7oGoECfLK2vERg4An0r5BH
         AUl1op0Ozz3x6mGOFMFiQqQVUY6dqDJ4eGA1DnQFr4SF9vTxeeEBhJf4D8BG2QGMLlC1
         D9TDdyv98XS2DhMCeLcVlKWoYH75ayvU7QnM36IEpbadmU3jsuaCx5DWVXXQ4wzRhRSp
         o1fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MQZD+K87;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oeus90/sCw3HXdPeBAbgdiZ4wctK/xVG+rhkTXI+/S0=;
        b=csaNtCmWLdYjjqOVeLZqeXzFWSAQXabLK+u3pQ3vWQES45MrBkn1BRDkgetlULl3MB
         KYxXbEA37Gbs4/TDSS8SnK/MJyCxQu/KUguYr4J3X8M5yaEqmv/N4i8yVbrx4VRoSV2Q
         mScuQPfisCaZcXIk2m3XROAZIf7/vJG9jmHknJ+DkqLJ+ngvw7v0BfRepfmPl6NotnT0
         fm/eumByAzfNMZHWKHaz0gqG8ollzUBONW3ZleRtpWQT43Ba+5vKSLCmeFkyxGWS1vG6
         ZgIwKoQsMue1wvQW+hyNIh8wTj9/dOIpyyzNZ+9/ZbucHeEIfRAl3tgkivJPdo8kESEl
         7+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oeus90/sCw3HXdPeBAbgdiZ4wctK/xVG+rhkTXI+/S0=;
        b=RcrMJnuJGINh45Fo8f3SN6t5MDCF4sw+lUk6uaR0cDe36AuAstye3xmytOOt8zRYmH
         bXES6BhFYejHrrZ1PUBeFRaPxCJ7S5ktTzwztdYSfsiIdD7ChK3Pk4SV6yEWN3izKNal
         OZnSU3J/ObA7g922MWoFFYURgxrXuitw7848MNMq/sJGuH8DGhz2mt2ydU/F7DPzdN1f
         zfLb3NSrMFvtqLj2MFlUgViC9XlD/JqKPLaqRB3ZpDCPrTa0KMg4VTlcl/EZBB+0ZKG4
         +/rzQbUsSoLQzdbq4/Cq+AGnIcz/QfcbQZr/lRofDyDXvlvywBk9alB/9h3wveGyxTtg
         rMLA==
X-Gm-Message-State: AOAM531B+4nBpNRZklZmYtHMErjwWz9pdvW5U7ZGT6HsMG8/++PD5Rp2
	NbIWRyg9j/UoLkpyCZhqNqU=
X-Google-Smtp-Source: ABdhPJwmDsBdm07Y7NFjflgS94D8kaWaJsz3rDcR7/SsPX+lUuIIo7u/gNvRb4kJWhWvvSK4g7GCZw==
X-Received: by 2002:a1f:5341:: with SMTP id h62mr715217vkb.24.1605638587573;
        Tue, 17 Nov 2020 10:43:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e985:: with SMTP id b5ls2250501vso.11.gmail; Tue, 17 Nov
 2020 10:43:07 -0800 (PST)
X-Received: by 2002:a67:fd59:: with SMTP id g25mr778478vsr.29.1605638587059;
        Tue, 17 Nov 2020 10:43:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605638587; cv=none;
        d=google.com; s=arc-20160816;
        b=a7A7m4l4/J8cK7un20NKzX2yM/Zl447G1ijuER8lkXdDA/GX+A3GFn6rr27tFmqk1G
         ISKVy7JINmpfIheut9mHAKVoB3ZvdBSlIE7Jr2PI3SrfLus4A7MAWuH4UuhUdO2mEeSR
         0BhuaoXEJdM8J0K3ez2bGWYmemp7d03WlqwtprCmonYU8Y04nWgAgbIpHgQoRCnickoI
         W1pxD+fvriRP6/pJkh6klgNhvHc111g7N+1TXK8gUvqfZo7tdSvOFoeZQF8HQM34aQqk
         4bVkK+CkCiJVjx3kGE60d9/+GG/pnRKLEuJQufVfIU/d6N23uOYSURwlS+Rkez2yjJf/
         yhFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dXmLxFFItS0Ypki58LuP/3Vy2uNJs+/YPXZkSUrG9N0=;
        b=MqVeizzMeZgBhFPGhZPm7bEyX0h3yu49yNb5gJ4U9rwg5BVCY6eCvN5in+vYdtv687
         B2ps5FB9LXycEz9I4CaKn3I7B99p32wVD+JY4gGM+0CQ4g8GKImVekhl+KSwyl39as+y
         oK16bKsbWZiDFzC2D0um9RQKCBA/jHLEPcgqeeJzrgj1kOMI4qssETE/lSi2DAl/MKz6
         SWpNoAndhEJVSoAsHJFU92zQGtkKFpbp3TLNhTFXbq+/YyZ3NZUmSa5IHU/ZVfeVxffp
         HwIoMBHUZWpKW1UlgfvkllB3r2cSduoy7deQ92gmau10G/b+fR4f0O2oETRuAgy4mwai
         p6iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MQZD+K87;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id c124si1415033vkb.4.2020.11.17.10.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 10:43:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id w4so16583818pgg.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 10:43:07 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr4821535pgq.263.1605638586521;
 Tue, 17 Nov 2020 10:43:06 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
 <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
 <CA+G9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w@mail.gmail.com> <CAKwvOd=gzo1eWADp+y0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA@mail.gmail.com>
In-Reply-To: <CAKwvOd=gzo1eWADp+y0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 10:42:55 -0800
Message-ID: <CAKwvOdk+bq6CbJKJ0VrXRMvqEPqvV-01k+cB8=o5V7=s8uA4Dg@mail.gmail.com>
Subject: Re: [stable rc 5.4] arch/x86/events/amd/../perf_event.h:838:21:
 error: invalid output size for constraint '=q'
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Anders Roxell <anders.roxell@linaro.org>, 
	=?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Brian Gerst <brgerst@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MQZD+K87;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

On Mon, Nov 16, 2020 at 3:57 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Nov 16, 2020 at 9:45 AM Naresh Kamboju
> <naresh.kamboju@linaro.org> wrote:
> > >
> > > c94055fe93c8 x86/percpu: Clean up percpu_stable_op()
> > > ebcd580bed4a x86/percpu: Clean up percpu_cmpxchg_op()

Cherry picking fails for me at ^ on top of linux-5.4.77.

> > > 73ca542fbabb x86/percpu: Clean up percpu_xchg_op()
> > > bbff583b84a1 x86/percpu: Clean up percpu_add_return_op()
> > > e4d16defbbde x86/percpu: Remove "e" constraint from XADD
> > > 33e5614a435f x86/percpu: Clean up percpu_add_op()

^ 99 lines changed in the diffstat; cutting it close to stable wanting
relatively small patches.

> > > bb631e300284 x86/percpu: Clean up percpu_from_op()
> > > c175acc14719 x86/percpu: Clean up percpu_to_op()
> > > 6865dc3ae93b x86/percpu: Introduce size abstraction macros
> > >
> > > It may be a stretch to have these applied to v5.4.y, but maybe
> > > there is some other way.
> >
> > We need to find a way to apply these patches into stable 5.4 branch.
>
> If those all cherry pick cleanly; I don't view them as super high risk

Naresh, if you want to identify the full list of patches to cherry
pick back to get the above to cherry pick cleanly, I'm happy to help
test and help you send them to stable.  The current list isn't
sufficient as it stands if `git cherry-pick -x <sha>` fails going in
order.

> to request stable to pick them up.  As Arnd notes, we only very
> recently got i386 to build with Clang (thanks to Brian's series, and
> others' work); I'm personally curious though, what's the use case for
> 5.4+i386+clang?  If it's anything Android related, I'm curious whether
> 4.19 might be of interest, too? (That will probably be much more
> painful to retroactively support).
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2Bbq6CbJKJ0VrXRMvqEPqvV-01k%2BcB8%3Do5V7%3Ds8uA4Dg%40mail.gmail.com.
