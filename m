Return-Path: <clang-built-linux+bncBAABBGVV5SBAMGQE6U2YOEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6810B347695
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 11:55:23 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id c6sf1084849otl.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 03:55:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616583322; cv=pass;
        d=google.com; s=arc-20160816;
        b=px44TPpm8s1Pk5vyFyY0BpQEeB0vflZ5HQID2I+5nWxGh7z9Pa2a5qiLQmUN/sSvdG
         4lbiQC8mmvBlz3ESMa5g78WfEc72a4rV4ZuaG+e6VrSYt8KGzJ74/Siit894+oyRBjZz
         GOGzkrfYarFOPVWJmdVCHEbrTxYk0keSwPTgVPXc0+crXSJ7+9fgdsJVBxPW8SqIjKqL
         9TDPx34PJqbqwDHp7Fs852L929RCJm8kR0B9AM27BXPKYXgcvx4UJQ1Zhkl9Sak6XO7E
         x8ZRUu/CfZIEnnfwT4VthTMSMP9wGepsWMAcDZscixvIQZ9iBF6rkQkzRm4FNFOwDum9
         R84w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XYRr9u3hTDMk4WBQAnEmYe8W8bQzZ1OgV8GjnmLpnb4=;
        b=IPRlpe09xtHM9DfLfy3ys/njB+8+lRe6nYdIFN+LICMBbHJL4ZQ9i31ACUD07Ha5Wa
         SljejE4NXnnhcgdPUU4DVC3f2+IXavGoiGXyc2W3wddAPA2leJIg2WEnjPyjoBeY++xC
         tnx3i9G85XBKGDRAc9uarH9fsJIfGfVs3yKq925iluUn1HYJHBxZF9Hadb+SAiNRzxkT
         AIWd0dA4RAmQXkvZb+d01lFYrzRredhpyJYcQnR5VzlhQUbEBRsR8yJTQc814a8s2sl9
         rGXfvBzcA9Iimu/klJgnONjlX7hLWCbKrJ8c5ri6WMHG5IAhMP8r1LDwO22U5tq9gyC8
         VhJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HTTeSFqC;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XYRr9u3hTDMk4WBQAnEmYe8W8bQzZ1OgV8GjnmLpnb4=;
        b=D1pt/noxF0ZS5C68jBwshe8lLzOjAEAjcIsu62wuzSVnm3UqTp48Qh3LMEyv716ftC
         WzNRfr+mtd7+W3UJ9pcAo+JbxN1nQEejg/wKIdnBE3p4RE9Z2hgYi8I3PPvLji8Kh1sP
         IbAB+SPrZB8haNIQmdrbZZohvPwh1Qrg9O6gDaEX8wF7O0r59a7CFF4BBLNfSFTiA8dT
         WxCOtTOBbN6OnK1ofGB3rMQZDo0VLh6yupPSSYHbahR0cpu4X0sUSG1Ij5h6eGh63rGi
         IdaEH93hay6k+8gjtwaXs6BkC4np930C1t0EzfTbXfKyfwhh7XO9OyBQl73+JHMAy1BO
         kCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XYRr9u3hTDMk4WBQAnEmYe8W8bQzZ1OgV8GjnmLpnb4=;
        b=sfLzMiNVQJw4tWmNuzL5LJXDRLFdPapmQIN75Irn1eot+NcewJZBbWe1aRhSQJMSs7
         gMYhETp+64n30S0ze9vD6XGbwyYU3lgPoUaQfbEdNSQTK1DZZQ7AJ1CdjteF0ecHUQ1C
         S7FdLm91DBdfoAUsP5kVYu7kCLBkq8crkzIkp7IxP5tQ5Kd/2XhmH3dwLush+9+ebyv+
         XnFXxjtOzOrwGDa4ld7Ont5E/wB0JysXp0IdoGVKx6mq0GCSnMY1CWwAucm8RBfbeoj9
         ZWboMyKgQIit/DqGv0T3mJAwF50oSyltmZHgaVG/WhxBqi0es8qtNN/wiw5UIIxNFlBK
         7f9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KzC8m2cSjVx3InjNsuw9rd40vC04+dCFwHRh5CgWzwABeN4ay
	XRUx1UmWQrs4/zLXs666W7o=
X-Google-Smtp-Source: ABdhPJwSf9z3q2KGCj6hutTTZLwDdHNPQ5FGH9JRh6W/zViBo3Vr8rpx2CnNDzgMsL8ZRdsEbaP03A==
X-Received: by 2002:aca:be04:: with SMTP id o4mr1963775oif.25.1616583322422;
        Wed, 24 Mar 2021 03:55:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9258:: with SMTP id g24ls115980ooh.11.gmail; Wed, 24 Mar
 2021 03:55:22 -0700 (PDT)
X-Received: by 2002:a4a:a5cc:: with SMTP id k12mr2316064oom.37.1616583322138;
        Wed, 24 Mar 2021 03:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616583322; cv=none;
        d=google.com; s=arc-20160816;
        b=U93lhmJT8DmIY4aiOmA01BDaS3yRf33TGTso3rDc1MtkYd3B5e9YA2aCGSpSuZ+XpH
         1k0eIm9hixsow1cmgeTqd+2wQmD2QUnqtBvMSICC5criHKVq5hWJ6k5cXg85fRVLyPU9
         bGDxTgVph2pG4LaZ00GAXC+5fBhYfwGytUZ/noKHwC2ebiTYKgGCkgvyyozVAXhp4DCm
         bZZly3P5IBHd5/Oz7NTJ0fpRr1tG6i9fuRsHGshG59ahRjztBo9C0Ol35NvM4PkmpTgB
         1B48tT/k71JK5nB3ZZogtkM5ccQl+413H3TrwABgZzAfkqX1PDydBG3dItpW0sOAwgzg
         cTHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=huJBbYgTiv2ygJpTN8bltramVHXKu5+jemuocER0Pyw=;
        b=RWZZRP4/h8Cy6B+NRduSkm5tp6adgNmUxJSesMzD3gjA8aqC32Rz0WcZ4I6L9HBOGW
         XiW7qaMxip5hqwcvDLr4AXrQ3hrNXjtHI9jcOUXBHA2hXphAm7EZhAP3fxthtgYI+D+3
         ByXW1dsH2EZDLAVopKB0fpmdQ5bhIga3uVZ0jSas3JOydeq6J/iGk/YquN8lF4ricAOl
         0Q/tSYzmjnJF1THD2MRP80p/jzMfTqTHUKMn8vAv/XQHna+GHgqZVs/2VCvR2OMbzmE9
         92ZR98IBGSmTMkyEwmyqqTrXnP83Slh/UDWRYOEdNlunmb7qKzIXnWThLS/lP094bBED
         ahpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HTTeSFqC;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x143si122575oif.2.2021.03.24.03.55.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 03:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 101796192D
	for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 10:55:21 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id v24-20020a9d69d80000b02901b9aec33371so22572753oto.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 03:55:21 -0700 (PDT)
X-Received: by 2002:a05:6830:148c:: with SMTP id s12mr2761572otq.251.1616583320379;
 Wed, 24 Mar 2021 03:55:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210323131842.2773094-1-arnd@kernel.org> <CAKwvOdkBEQdVC73_datkwa+meitAGskDgTEr5LzX6AEnE4xd-w@mail.gmail.com>
 <87czvokgdk.wl-maz@kernel.org>
In-Reply-To: <87czvokgdk.wl-maz@kernel.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 24 Mar 2021 11:55:04 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2kVagwETi0_t0C=eGJ6UU=AXegL94UykfQdh7H292XYQ@mail.gmail.com>
Message-ID: <CAK8P3a2kVagwETi0_t0C=eGJ6UU=AXegL94UykfQdh7H292XYQ@mail.gmail.com>
Subject: Re: [PATCH] irqchip/gic-v3: fix OF_BAD_ADDR error handling
To: Marc Zyngier <maz@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Nathan Chancellor <nathan@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HTTeSFqC;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Mar 24, 2021 at 11:14 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Tue, 23 Mar 2021 22:06:22 +0000,
> Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Mar 23, 2021 at 6:18 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > When building with extra warnings enabled, clang points out a
> > > mistake in the error handling:
> > >
> > > drivers/irqchip/irq-gic-v3-mbi.c:306:21: error: result of comparison of constant 18446744073709551615 with expression of type 'phys_addr_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
> >
> > Looks like based on CONFIG_PHYS_ADDR_T_64BIT, phys_addr_t can be u64
> > or u32, but of_translate_address always returns a u64.  This is fine
> > for the current value of OF_BAD_ADDR, but I think there's a risk of
> > losing the top 32b of the return value of of_translate_address() here?
>
> If the DT describes a 64bit physical address, and that the (32bit)
> kernel isn't built to grok these addresses, then I'd say that the
> kernel cannot run on this HW, and that we don't need to worry much
> about this case.
>
> In general, CONFIG_PHYS_ADDR_T_64BIT must be selected by the arch code
> if anything above 32bit can be described in the PA space.

Right, this generally works fine, the OF_BAD_ADDR is just a little
hard to get right. Fortunately there are very few comparisons to
OF_BAD_ADDR in other drivers, so I don't think we have to do
anything about it. I looked through every other user of this and found
no problems there, either they use 64-bit temporaries, or they correctly
cast the results.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2kVagwETi0_t0C%3DeGJ6UU%3DAXegL94UykfQdh7H292XYQ%40mail.gmail.com.
