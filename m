Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR4KW6DQMGQE7ZHIRYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52A3C7558
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 18:54:32 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id a7-20020a9233070000b02901edc50cdfdcsf14982406ilf.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 09:54:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626195271; cv=pass;
        d=google.com; s=arc-20160816;
        b=HAacfPGKlOB92zj70LBCeb7bhzGo00N4zmuVWc/3vPLHzjgt6DcI1ZaBj9NDPI/TV/
         VKL4PVnz+fr9XJw4T1QsgBoo3cn14f4y3Z4pzO1wOp5Gt27BGsMhVsOPV8JASka6WrSG
         W4S7CBYtf1vIHs0vYJDBGNsjJJfGrcFxjfRDidkGnSmYKdZ+pGn7Cllg28oNCayHuEqg
         YzhzebJMAJBT/2E4F+KTS+3bkdgkLYKYem2FM9AaV3Q1qyM2Sa7epgU2kQZmWabbFJmc
         A4cidblzQvDatysN6UUKz8hm8UVga5pTYe/sHL9r58KU5VIwbpwxljUqLlFgPREixOHA
         uqNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZF9qCBqZf/knFpAigX+ZX8xPsLFLz6tDjm7fyd7iRFk=;
        b=n+IpGI8HS529sPuiSeTTR0YpEebVFqm5b2KbCRDpEn/uu0Tl/q1Oy2pwvFUWoTumIW
         hUYDYNqvXn+mL5MA28alAmUC+p8hvrfBPnf7/5S2W4ag+lrjlStevb93At8TpAwZ426y
         j/l1gmts2wzEIbG7N1CdIypTBx/oimXRouc1OMHJuaWd43Kdzwn2o8YmnLrXxWGEUs78
         qXGx71ZECeD1X8IcZ8vaD4nn9DoSaqfgye3lMsUvWOkQemSNX1zhmd6WTWRbPs7zHq38
         r7aCO9DiKJdoqZLEwzk37ZYXDMCOXChPPJwtH+ddvgoKvCDbZAfEkcpBoAz807/2hZBP
         C0tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q3H1lGHQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZF9qCBqZf/knFpAigX+ZX8xPsLFLz6tDjm7fyd7iRFk=;
        b=stKGoncRvEJ7y6J0kG75tySUrhd0EksFyCuJ3euUT/AYiyZoB0fOiSqw8DxX0nXxeD
         j39l/HtKG819kyKso4QTVP8qLoCLc0sWm4D5PhdKOGLnN6vq82xXcYUaefba6Jo38a83
         jv+MdVDmhgbBXInajPUm0zBFCQohi4dpNcGAx+UfpfLrj82S2QORUTQnkbcyAkIEwM8V
         IE/oRbfzDcaL2DuvMWpdHi9IFMSqvIvj3ENTaWgNOUKymfEa7bN2vy/YCnq/kSnsWZ07
         fdAuFBdTwxUquU+uHh6NkzBuOjUiHEFZcm55iXQxo515ELY/JT9LHCmXGHVzt4ADGV4d
         UH5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZF9qCBqZf/knFpAigX+ZX8xPsLFLz6tDjm7fyd7iRFk=;
        b=bu3rPj0Eib1Ot8W0r4dw7BBWJF5gZUyD55D6BqqJDR1EgXJHylmSk3wmMC3pzpry5O
         IgoO/D3Fy8qK7FXHw2asGe181qCHT045ZsMnG+nQUYLyL0lziC+XqB+kCIKtnCzGjSlI
         MUeBRPRKeyvQmozjX1RiKFl3v4c4AbG0E7xvTcC2FV8exrehxqX7sBALxx/y/9Hbh0Nr
         74xFdd9wZbU64nrgiUyqFaPM5Ax3/nvoaYQ3DNlD4X/Ta7MtA3qJ4qfiacCztuEc2GCo
         DdrwUXgepaxr06OQ7S4Q9PlfkAacBor71t5V5mVHgOxnIiMFq5WHEfzWfbEK4ZqzLB/l
         pj1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S4+EgnzSoPYWxOwwuUMYq+azsieGD3mY1EDl4lVYWBNRMVSoh
	x7nLu8cwzbRPlk7dgEeBJEU=
X-Google-Smtp-Source: ABdhPJx+VSZ6rvGdgUNaMNF0XILZPVLz4wCOVGh97Y4OII6qxutne37znBcPVQNLna6ESpCdn4MCsg==
X-Received: by 2002:a92:d210:: with SMTP id y16mr3744090ily.295.1626195271570;
        Tue, 13 Jul 2021 09:54:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:22cb:: with SMTP id j11ls2982889jat.5.gmail; Tue,
 13 Jul 2021 09:54:31 -0700 (PDT)
X-Received: by 2002:a05:6638:144e:: with SMTP id l14mr3908398jad.69.1626195271272;
        Tue, 13 Jul 2021 09:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626195271; cv=none;
        d=google.com; s=arc-20160816;
        b=Ur+/ptHglT5z44OC4IugZd4IZkowjlYXg/VUpUGvM7M/y/wxS+qzZqv1KfjB/cnm4m
         t+Hem/ZJyCcE8GodzduSiThZ8fIwyDuUwJcfLWxjNjoju+n41Q1G74cwizwz00ejyx8B
         PRgZuE6stpGmjFsCL/Inrni7MQFikmVMSab0lzG7GQeoDW9Q5F4UFqhS6baXc1Yf/R+V
         YiszvsRkGWuaKD/HXdclhkgbsjzVsHyEVDjmEA6kz1dAT+P8tML2FKZHpFaVyTOIV8Gn
         qy9n7Tyq3+cMDKj4pAhZOPVvgVDpcpF57XfTrmuwoMq1bPBZ88A6/zreT4N/TUyK9CzA
         cGDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KIw8LO5HwYrsRSLi/m8Oxm/5g+yVDFD3upJqoLrtPoc=;
        b=N0V8MD6p0q3viJACc5AiBWjHi+fD+uGX3yzvpagLqldUGNTkLsovX6e0HvcpfcH9Jg
         uEkpU3ajAPIbxV/uh+YkEXBh9nij39CfIQmgPk7M5jlZtDGWu5WtniMHrs3Hn/PjMYhu
         XYrBU6jvFcXVHpmS+9A+QWvKtSYKImO4vhPrKPfrhmAhJRpvo6pOc8Ue488MOdd1qEae
         uf58otNk/yQvVsVxmxE0T6Lge/ODzvSr5ZKczjYXMfzcM66Zhdl/N+/OceGYDM3DNY4l
         OvNbrEfCGZ76OfSY8T4II8j1C8iQLthPKZbudIA4re3A/GnPhqTqEm2Zu1aqk5yeX+Jj
         Gyvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q3H1lGHQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x4si2838751iof.3.2021.07.13.09.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 09:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A07C6101E;
	Tue, 13 Jul 2021 16:54:29 +0000 (UTC)
Date: Tue, 13 Jul 2021 09:54:26 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: -Wimplicit-fallthrough in -next
Message-ID: <YO3FQgHxfIl4zR3m@archlinux-ax161>
References: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
 <91ca3e43-9fe1-ddc0-ac65-bd09950fb39a@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <91ca3e43-9fe1-ddc0-ac65-bd09950fb39a@embeddedor.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Q3H1lGHQ;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 13, 2021 at 11:17:01AM -0500, Gustavo A. R. Silva wrote:
> Hi!
> 
> On 7/13/21 11:03, Nathan Chancellor wrote:
> > Hi Gustavo,
> > 
> > Apologies for the HTML email, as I am mobile for a few days but I wanted to
> > make sure you see this.
> > 
> > Looks like -Wimplicit-fallthrough is turned on in -next, thank you for all
> > the work you have put into it! Unfortunately, it looks like this breaks a
> > few builds due to -Werror and there are still a few warnings lingering in
> > architecture specific drivers. Would you mind taking a look? They can be
> > viewed at the link below.
> > 
> > https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1026443499
> 
> I only see reports in this form:
> 
> ARCH=mips LLVM=1 LLVM_VERSION=13 malta_defconfig+CONFIG_BLK_DEV_INITRD=y
> unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
> 
> Is it possible to see the file and line of code that triggers the warnings?
> That'd be really helpful. :)

Yes! If you click on the link right above the warning text in that view,
you should either see the errors right away or click on the "boot test"
item and the warnings should be highlighted in yellow.

Ler me know if there are any issues.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YO3FQgHxfIl4zR3m%40archlinux-ax161.
