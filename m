Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBOHCU7VAKGQE2QY7USQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B0883B12
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:29:29 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id g2sf38410010vkl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565126968; cv=pass;
        d=google.com; s=arc-20160816;
        b=mF5jFljvSnBdtCWogcP/5rogKKJA//JdFt3NcL8+p52Q6agni0lR2t+lgTBBtsrNZD
         2gPYX2Xmk+iQAkjtdY+XpJFY4ng+wVmi1HVsTHz+hB3G4+wZed+Y7u9Zhywh5NyHlt90
         ArurwP3Vcs8PTBeT9+Qe0iU6GLzVXmw8E00aJoKATcLWrbPP59EuumrJJlwDDmHezO2k
         2+/4+evJJsKR1Y2aHuwJuRyVfDtR6C3TBL96rA2KwIz/b5u0JyYJsSXpafTkzk80965Z
         2HisraVyCPEOQOaGRNEqQkgHAE27HGFDSha15MYGbDj9eIHuAKLbyi9z+ihDW4uwnOa/
         ZotQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=p8EYFGbhvX/Kn9VjRiY9yvaGXoTaFIOEwmcK4S1QFjE=;
        b=Ix45eVJ3Pi54AWO8QQ62QMjCUWgI6t80sQf6FCbnbuponaL/yVWZBmNDvI2Grr2Ejz
         xSm0PJ8PybizquB2DlC8Bgc5Reb0uBPNDgZ9SQUePmgJY+GeMLikkVM1Dc4276bWKhys
         0UuNku2Vj9VxY9XBoXelYGao4Cz00alHlryekYBDy8pDqV+gG7nQzsYp46qzzr+zBMXt
         YyEvVLMOm1vedXu+Xp+ysQ1eekRUyRfPTwr5Q4XsVhZwgpGQxp/M/T7Gg9XGVA/QOGRu
         aCJMEDcLm7mwc+tExAvb/W+yURTCCSP+RFwhas76G7Cr42HJGkZUPVXDWgZI6kum2SiK
         TAaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B1fQq7Ol;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p8EYFGbhvX/Kn9VjRiY9yvaGXoTaFIOEwmcK4S1QFjE=;
        b=FUqu7s49qns/5VQCdKSrWlC84hqzeK2+IEBc/m0rr9g8uCDmg3s55EdmUGCRxzCwOS
         dKSJ+3RVtc6tzzRn02L6eVD+hJUnjPtncm5i+YrUmcd/FpEHFKjI4VN3pMbjF5Er00gH
         Ityc/cVH/O5kKPrkRHzyn7pIEaUdmwE1etYvFJ/j4HT+73j66/vStGe2oEcIP3As8Vnv
         b1ZEDRftB85dRuG/ZgaarAVjhZtfAp7o8aYfDmEfGl5feqEgAYIABNhSqWammtBRFFbG
         ZTlVSSlCD0R/uZZiCTgati5zKlrGTj/FJhANkNOvBlRv/I1CXx8IZGcBXBPz/Kl6Gb4I
         /XxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p8EYFGbhvX/Kn9VjRiY9yvaGXoTaFIOEwmcK4S1QFjE=;
        b=FcouTaGKDUgx4tO9ZrqOAjSj3yVGCZkuc2uL1sxiCwSaWb6jpn9CQD1DMaB5Z58yD0
         samKJ5+EmXdzLgGxoZyte5jI/3E2uMYcEM7+ryY3apQhSVeaEQNulsRnBW4hwjNMyjqy
         TW9kqn7FvvGhSqpfnWdUfza0UsdqW/pngBizfmzwqMNwIx+7saTH52/kUEWMGn7LFI56
         oXBboRmN+h0HDMtThCNw8BPCSx51/Ov6ovIfL38AinR2ZqzCE1s4JGnk4lSGFE6BX7bd
         a+WWq6sY4rMZBp2FUf9upls2oPb2ofqjHhplkl0Fs3f1dK1QqCbuOboaNI1UR2F0gkqU
         KmoQ==
X-Gm-Message-State: APjAAAVEKYsUGo8psAIRzLNhZVqXIDi9B13lUvFMmdXlv5mSLS064CRq
	VS+aA3HzjYITNav1snaimVQ=
X-Google-Smtp-Source: APXvYqw7ttMtmFS8TgTzMIlTwVI0cZzUfG1bT67cOvbu7HhouOPT27X2IvGTCIkMIBQeKP+M1nKjVA==
X-Received: by 2002:ab0:3484:: with SMTP id c4mr3891346uar.51.1565126968461;
        Tue, 06 Aug 2019 14:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6844:: with SMTP id d65ls11193363vsc.9.gmail; Tue, 06
 Aug 2019 14:29:28 -0700 (PDT)
X-Received: by 2002:a67:f84d:: with SMTP id b13mr3897964vsp.151.1565126968254;
        Tue, 06 Aug 2019 14:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565126968; cv=none;
        d=google.com; s=arc-20160816;
        b=RX/PXsoEPXIKFfO1lasTJ1LOJsdMZ7YhaI9DFAtGBFRxv03OLh/rd/Cz8BTy6p/MTq
         z5Lix1xfflGhzB/Oy1322F8eU6PkX56cJmemrxX9V+sS4dhSOco/X1F6c9+n/YlfevEV
         dj1a1GnOSE4lEZjLwlBcxfdjaSv3XqwmKv2GIhBHOyWAILbJtGu9Lt6both4TFhPm8yy
         ochd/BvmH+EZancWfCs8sQ0CxP98lWPnQynF9clPxqNJBuUiCu5JaCS6hmq/7P01RwRp
         LnwEhUfrhDpkYkP7/svvR5oaavI+GTvWh5iXB3hvI/+Vs8aoJ451h567Flqm9n5B5f/r
         CxGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3nDyENKB38R0uDM7hzocjvJMgcMblLNFl99d81wPXq0=;
        b=xKE9DDQyjSSwJh9KSIuhQX53FaWzvZrK4wBlU+mNSXZQp3+4DDUu5KmIkCLOTVQCh2
         ABQyERJheZiHG4se3Wbv4PS6/6kgnSbVVYAwfvHgb00cxiQiQFnlEwusMOKRIgKBPSem
         ZnmgrGO+0JQpgdIPscPAsitPaxifzwbQUlavKeuMb8fatMn+sD4Z1Jr/vU/sZS6HgwKA
         MP3GY4lLU+y3lzgcYUu+dAQWMxOwq8gs+BMRC84Qdc/hZ1OTizI5iRBBEBWpiasXFrRN
         k6b/QOxd+BVo96iRqQpCEOXXStJ+FgekR4VhMqniwzNlQBZ8CC4QQEKAWvvo4U9HZQcD
         jrKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B1fQq7Ol;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id b15si3329611uap.1.2019.08.06.14.29.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id u190so498349qkh.5
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 14:29:28 -0700 (PDT)
X-Received: by 2002:a37:4d82:: with SMTP id a124mr5158808qkb.72.1565126967750;
 Tue, 06 Aug 2019 14:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190801231046.105022-1-nhuck@google.com> <01222982-4206-9925-0482-639a79384451@arm.com>
 <CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt+9Q@mail.gmail.com> <20190805133940.GA10425@arm.com>
In-Reply-To: <20190805133940.GA10425@arm.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 14:29:16 -0700
Message-ID: <CAJkfWY5EL+MyRzSfcfJF2H8WoX73FEO0bOrwcoR4c4ekvaWvOQ@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Dave Martin <Dave.Martin@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tri Vo <trong@google.com>, 
	linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B1fQq7Ol;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

I'm not sure that we should disable a broken feature instead of
attempting a fix.

CONFIG_FUNCTION_GRAPH_TRACER is dependent on CONFIG_FRAME_POINTER and
there have been reports by MediaTek that the frame pointer unwinder is
faster in some cases.

On Mon, Aug 5, 2019 at 6:39 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Fri, Aug 02, 2019 at 10:27:30AM -0700, Nathan Huckleberry wrote:
> > You're right. Would pushing an extra register be an adequate fix?
>
> Would forcing CONFIG_ARM_UNWIND=y for clang work as an alternative to
> this?
>
> Assuming clang supports -funwind-tables or equivalent, this may just
> work.
>
> [...]
>
> Cheers
> ---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY5EL%2BMyRzSfcfJF2H8WoX73FEO0bOrwcoR4c4ekvaWvOQ%40mail.gmail.com.
