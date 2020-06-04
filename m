Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONR4X3AKGQEYD3EPMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB1D1EEBDE
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:25:30 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id n22sf5880682pgd.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:25:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591302329; cv=pass;
        d=google.com; s=arc-20160816;
        b=bjPlmJ52rAHqEClEF+tfN3HMsk5HmjrjCOXeDBWa/3e49uc/YWFPBlueN39PbrqeIh
         /4rzIeDqfVTRZS1lu5bj8syU2TT1MLNvSgBRfrupcag5PfvkQNxiRHdbzV1UJt7MCWNw
         WOVIxTByeJwwGaTkZ55OTZt6mqAZUfhRP2WBF/P7aWeEyHlTDHemvrwO8soAgARsp8PY
         GLT5YtR2LbNM8+AAhvItt9puSU+F5L+K5sDYK/uAl99QEy6I5dODNKZpj0gmn3pE96nG
         L6JXVsbguTDIRdRllcN9eWE7DmnTcfOqIx58bbxvVjsI6hUwmAqLdppJQbwGz0Fmh3Bg
         lqFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nRu7Qlkf/ufP8sTTKMhBelgE9Gsn3rLVlJpRKTw/NcI=;
        b=SAhJAmwdOL5gyPNjYlSkl6qV5shNaPlCnt0c1QsLv4nU4OnhekVqpKyv2HXvv/JRwK
         steT/ibVRh5osvOlpTnDOQvImFgo90DVcpc8Zn6NtKYK5EKElfaYi9fEmHd3+AaiK/kz
         y+qOIIInyTVtfMnnpaMjhe2GQgX5iGpK6cvfuLmFJPbXqyRj2OT4ucLGeTXZWoZP79M/
         vnhd++siK7v/Dx8KCTgbimrGByVNTpNkL6WPZOzGSxT3aXFV4x4TCOTq1gqFzz91IUIv
         gfwggWrIZWOW6dVKL+Y0d8ovT7Xz9oln1XuEs7jYjCE1ZmMtljIgI9znwIyqT2i/mU8C
         wzrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eTUIYqIr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRu7Qlkf/ufP8sTTKMhBelgE9Gsn3rLVlJpRKTw/NcI=;
        b=Lkahw+4KhyE9vAVlIGtqnI0n0FW4F6pZtN+QPGnc+mczxZIrZSiTH9+De6AaKneTpY
         MJnkhLFne9ZF1eXgfKlp51l7X3UjjMs2u9vGEyEaCFrn0hQPbo5YLOZ+Qzv963nWZ332
         XxRKiBZhchQ7QfmLFrRc0X17sq51EPYcGGUkN7eYAyLqYRnRSfcsqULw1SFy2lRWq3E7
         TPfd01bYduu8/3LufySyrC+0K7NWZ4mgNV4dkz7CtaOeaYawFlvvgco+bfodvJrpJHre
         nzR0ZTgITdcCswPS9k774yErSihVrQoj4wFMk+Y5+xNr/C3YQeWcLd+nj+FHt5q1UDR4
         ssVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRu7Qlkf/ufP8sTTKMhBelgE9Gsn3rLVlJpRKTw/NcI=;
        b=fXzI6ZFcvzsP8apsSYCuynZHocMr73AFfmZ/uiuII+CmvMQDV9P+Gt/trwAc6/HIJP
         7GVG37WB5Rxb+rRai53AIpy8WyH/p1StSH7GbpzoxNShv7n05HKtHR9xlAyrAJD6D+K7
         lu6w7M6d1u17YdAgle3NgPGAsC6xE8XgGFZQKj1HlpxqehoXfJgPL2WyxAmapt+53xjn
         Ig1yO4MGktnS3uMMgkneXHxHCkNRu5xRSzj1Zpwv3+3DUP24P5Lsu2Y9QVMXaKld+3XU
         oMYz5faUonDWo/j23lm7jeqt7RzQO+6sf87nGTvIvI5ORDGr1AukW137aWWD+Z2g6CWn
         o5jw==
X-Gm-Message-State: AOAM533S70a0xrmeo79m5I2N3YHqFxdVHWRkIz6/QuP2gzuLOaY6JsiC
	fiH7xTAXhyuoxw2LJaivLDI=
X-Google-Smtp-Source: ABdhPJyRMbT2wbtzohMD3I1DgFxrsdGOInk6PIxDlorLueC16O+LYQQC0Jk0zVj9tJqgoW/O8b98ww==
X-Received: by 2002:a17:90a:bf0b:: with SMTP id c11mr8294561pjs.47.1591302329228;
        Thu, 04 Jun 2020 13:25:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls3627365pjx.2.gmail; Thu, 04
 Jun 2020 13:25:28 -0700 (PDT)
X-Received: by 2002:a17:902:c3d3:: with SMTP id j19mr6538669plj.47.1591302328856;
        Thu, 04 Jun 2020 13:25:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591302328; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUL9GvbPNr+lfiRKeP+H/LcXTQQp+XrnXUuP367htyQRtz6iSC+uedeKlilZEb4xgL
         eF9TKjXNL6xEC0/MlYCkbdaG7gMnUq5mWx4W0VD+GN0EFznQMv3C9rtHsnIIc7nmNv1/
         e2cBMuQuk/uaqbVXpyhDLIyTlHWtRThgGIJC2nTP4TEE6kV+b7aw+Z32Worh7NAwTUM2
         IIpiVsqx2Jhw6jySwr/Tqh+cC6vBcs0fuXZBm2cTCsq8AQ4oy1855PkBR2NG54T17Zt+
         gqaTY9IJO3N85+LqlFyXXxv4zHrINJeqKpxgJjx08YEW7BImCMn534pHYgaK4SqRcmqv
         v5ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TblIMkzhKEVNZyPa1dQf8kFQ+MgYlpgsesY6pOK1xME=;
        b=rLBHRbCMZogeGSXIXlvIXIUsFwHu1xCYxTcoBkxJYINCI+TxK1RZSdXBkbVzZPozpc
         hUXdPxJXxusWKEGblk6QOIqOzxQs/QXga9kYMmqs5iorLIan62j2E+8BgceOSamsGg40
         wU5O6omZeAMjb4LlkMJUkhpSblgul/DFEvBw3J4BpOLiW5DmahGwlzhc+3nr51Wop+b+
         OwOAIiSLYfR50GfNkadsJu/fu7LP1L0QsFFY7OVZOwKzkQepKyfp8PjWqWWVq0xZh2Wc
         xFrbQ6kcarx+ykYRkOQE+747bmIgYn94a8jDjvqQSqqeiZZPCe3cJpxeecAeT7s88+np
         T2Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eTUIYqIr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id kb2si54956pjb.1.2020.06.04.13.25.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:25:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id nm22so1616885pjb.4
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:25:28 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr6129425pld.119.1591302328252;
 Thu, 04 Jun 2020 13:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-4-keescook@chromium.org> <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
 <202006041316.A15D952@keescook>
In-Reply-To: <202006041316.A15D952@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 13:25:16 -0700
Message-ID: <CAKwvOdk9e19MqJNhGYV5mJisLOcjK+ba2sYzLgf7cvNerqNuwA@mail.gmail.com>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eTUIYqIr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Thu, Jun 4, 2020 at 1:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 01:08:44PM -0700, Nick Desaulniers wrote:
> > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > simply initialize the variable or make compiler changes. As a precursor
> > > to removing[2] this[3] macro[4], just initialize this variable to NULL,
> > > and make the (unreachable!) code do a conditional test.
> > >
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
> > >  1 file changed, 7 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> > > index d3c001fa8eb4..88cdcea10d61 100644
> > > --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> > > +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> > > @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> >
> > The TODOs and `#if 0` in this function are concerning.  It looks like
> > `rf_pwr_offset_table` is only used when `phy->rev` is >=7 && < 19.
> >
> > Further, the loop has a case for `phy->rev >= 19` but we would have
> > returned earlier if that was the case.

oh, and there's an early return for `phy->rev < 3` I just noticed.

>
> Yeah, that's why I put the "(unreachable!)" note in the commit log. ;)

I don't think that note is correct.

>
> >
> > >         u32 rfpwr_offset;
> > >         u8 pga_gain, pad_gain;
> > >         int i;
> > > -       const s16 *uninitialized_var(rf_pwr_offset_table);
> > > +       const s16 *rf_pwr_offset_table = NULL;
> > >
> > >         table = b43_nphy_get_tx_gain_table(dev);
> > >         if (!table)
> > > @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> > >                         pga_gain = (table[i] >> 24) & 0xf;
> > >                         pad_gain = (table[i] >> 19) & 0x1f;
> > >                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> > > -                               rfpwr_offset = rf_pwr_offset_table[pad_gain];
> > > +                               rfpwr_offset = rf_pwr_offset_table
> > > +                                               ? rf_pwr_offset_table[pad_gain]
> > > +                                               : 0;
> > >                         else
> > > -                               rfpwr_offset = rf_pwr_offset_table[pga_gain];
> > > +                               rfpwr_offset = rf_pwr_offset_table
> > > +                                               ? rf_pwr_offset_table[pga_gain]
> > > +                                               : 0;
> >
> >
> > The code is trying to check `phy->rev >= 7 && phy->rev < 19` once
> > before the loop, then set `rf_pwr_offset_table`, so having another
> > conditional on `rf_pwr_offset_table` in the loop is unnecessary. I'm
> > ok with initializing it to `NULL`, but I'm not sure the conditional
> > check is necessary.  Do you get a compiler warning otherwise?
>
> I mean, sort of the best thing to do is just remove nearly everything
> here since it's actually unreachable. But it is commented as "when

This code is reachable. Consider `phy->rev >= 7 && phy->rev < 19`.  If
`rf_pwr_offset_table` was NULL, it would have returned early on L4246,
so the checks added in this patch are unnecessary.  Forgive me if
there's some other control flow I'm not considering.

> supported ..." etc, so I figured I'd leave it. As part of that I didn't
> want to leave any chance of a NULL deref, so I added the explicit tests
> just for robustness.
>
> *shrug*
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk9e19MqJNhGYV5mJisLOcjK%2Bba2sYzLgf7cvNerqNuwA%40mail.gmail.com.
