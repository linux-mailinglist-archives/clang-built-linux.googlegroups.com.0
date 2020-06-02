Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNWB3L3AKGQEYGY5ZTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EAB1EC235
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 20:55:52 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x4sf3086370pll.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 11:55:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591124150; cv=pass;
        d=google.com; s=arc-20160816;
        b=utHsjiiO+RbMo8S6PLw1TpkBRkYX72ftNA9XCPwjEWX84EqszzEgfe5OlgPVV1MQPM
         RQYZEG9/0tYsKz96Qvy1AvFWjBSIjvNbzf5kHb57wlvfoaMroXB0CZduRfWhtfA/zKdQ
         QLXG71AFoOyPO1ohsC9mAjZH3bjyc9V/OdlvG2gTiA6fxzQORplbUZ3GE43/f4/mSK6f
         RHncYhkf8GQpm1eH02J6FrBptT3evVl3jgsKG6Y8S+ERa1doaEfQ3TvgErf0kZcCKuE3
         H0PPrTuUUo0+tmlLSk2B5IcEfwLgu0vtEQ67se/xiKoDwRxEA0TFtOMChyKJ+kqV17TQ
         75ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+epndsE4sm/eH2JmNsfpRC0s4JE12Rq8epIFA6vNQRM=;
        b=XAEYU1xbZEHuL6FDEFzIe1f1wNGps7uDWfD1W1oT8NINIxppxp/Fv1S65q1S73C8d6
         naJLtvq7Ci/2yC9RWqjBYUSZFBpItI3yrLZaGn9LgDNJNl1Sw9i4ycOiiPiqVux61xxa
         zzoShOwcOI33KFYJLqcBYQo5J1WZCzk7Dzpn+kiZwMSbawpLB2QXJn2sPU8FWJfF0m55
         7O74odNjoEZbfcqBynD9XVTZO97x8mVdpbnQSI39OAYHPX0cjSlGvGs2COO1P2sbDWUa
         domKMiqBH5Dco8ajAG2988WXwgCfXayVYHDXbGNmVX2IY0A4xE1lQ9jtRxdiCjC+W9ua
         Adbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thUds+DS;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+epndsE4sm/eH2JmNsfpRC0s4JE12Rq8epIFA6vNQRM=;
        b=A1Oi9W5IXULnMrp2WEZ6FOyBZhzGZjHmnR8yJ/KyG1ke+uUOrd8Bh8U3fZU6eK+eMY
         JpGqUdSdQRvOsUOukRbFodKXO6VYgxT2Avo7zZbxFCenrQAmUJ3Lz6Bqqzp5JXJd7ham
         73K5AhFb/a6BVClRb9VcGAmHVVuvk92Jp2P34FF0BD8Ank7XLD2EQLw5jnCuNYZ1gnYT
         0r8ozy/30yRX5R5METvVJ/qwAa49y3kSvSFK8gp2QfcuWUgoyoizNmuvGVjWABuelL0U
         8dWNsPVVFNl8I506Lv0Arcw6stL/64BtRH1VaYQojiXObEb9QDJ4eRnOaLP3ZgnSKiL2
         QOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+epndsE4sm/eH2JmNsfpRC0s4JE12Rq8epIFA6vNQRM=;
        b=FRqIcD467a5GSEr+/ly8ZMTBVlLQK33FnL5jXXzWAFUFBoG1O89NpxaSkGSezWNW4+
         Cr2LVfL2bDvzXDPLUkisIrlc6AmfNS919xHS5y0yflrgGgzWe8wadlEBPuiJbA0HdiAx
         l6CbX6mA/rXEd46Uhh6ua8ZNq5Eqs1ac4ub5mKU/iuP/gMK5LGc4xNplBwadS6X+PNUA
         tQyUx6WIA/V8PwvBkP+TAJfV2ApcDsCFVecp2FTA24XMmPF0AA/vZN3DID+wD/r3slvn
         qdowC1TC175XwTglpneYZIMcJJ12ODEHa2zCSgxh2MlFkFSJapMv3PN952YTFNnyCHjo
         XZTA==
X-Gm-Message-State: AOAM530ZuhJ5Ub/BUp1ktpEyEK/LAqi2dukOs/5IJbvO8+LgxnMtwYrS
	xYRY3aqBhVedqFKz/b/HusE=
X-Google-Smtp-Source: ABdhPJwnxKymJ6jhji8GbXuUfcmqPVvc0F9NrHxPPzav5jeoTHOvL48J/eGwBePHdRFreifdRWSoFg==
X-Received: by 2002:a63:774d:: with SMTP id s74mr26455577pgc.315.1591124150623;
        Tue, 02 Jun 2020 11:55:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls7285361pll.1.gmail; Tue, 02
 Jun 2020 11:55:50 -0700 (PDT)
X-Received: by 2002:a17:902:a513:: with SMTP id s19mr27385110plq.168.1591124150184;
        Tue, 02 Jun 2020 11:55:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591124150; cv=none;
        d=google.com; s=arc-20160816;
        b=aVk//NGyDDqJvWBMUo3v89CVx6hFYHogst9E7sZUnjYyruzH13Aux5L48/WN/odFn1
         VEyDeW2DKBQ57MzJ+n/4o2eYW/gCTk2GCsTcNJgUYmPwAmGHqi6cSSbbn8kZNW4j4rcT
         GoTRzTZWGV+U6htb+kIQgbxVcSu3fjhtaQQTaZQS6bmLkBAYiG8RkVhz1TXLDhMpMGaW
         txa4ACKBvJueZgwiAwY7clUskzpv8DWlie692+JYhc4eh8Vpcba8RbQa1Bw6/6IFN+/V
         Pcdlel1DlEVHmgjRabMR551xPnI0CYnxuhhKKvFxPnTShqYOEP6S12pWoe0rcKltLgDA
         cnXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rz+wRL+qx3pugwQiXrCHQNne2iVcMp5nHos/ewO2Exg=;
        b=c8XO4FJES7lsan8e90dXDZxpwo+k5KjDA6QRgJL1q6/EtuZMbDEq3D82PNO5uPTcCq
         2D0SPxwJwr0smQ4rpLM4obNahp+GdIqXd6MEnU6cv84+1o3SMq2GrDclsygw2W8m4AAn
         jgVRwgUgwRKcOL8G8yH1H9yqS6Q/2O1gf2Omz7kld6uUUEDsAdzzaHT4GTxm6i9rW39L
         nq6zZPwWyywSMKZXjmzIwdXQI1CzowrP0+AvC3PnH7LUnL+mGEq2iBnGRo9OdM1W2y9r
         mXhF7tGRccrNfou/kdkJSKzUCnzc37cgHUawyza6S9BgA4EqhHOlnE727KNxA4/GvNw+
         mJxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thUds+DS;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id m204si146903pfd.1.2020.06.02.11.55.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 11:55:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id b8so2325828oic.1
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 11:55:50 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr4013382oih.70.1591124149338;
 Tue, 02 Jun 2020 11:55:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <20200602184409.22142-2-elver@google.com>
 <CAKwvOdkXVcZa5UwnoZqX7_FytabYn2ZRi=zQy_DyzduVmyQNMA@mail.gmail.com>
In-Reply-To: <CAKwvOdkXVcZa5UwnoZqX7_FytabYn2ZRi=zQy_DyzduVmyQNMA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 20:55:37 +0200
Message-ID: <CANpmjNMeAhS9vemP=OOPBmj_9dDnmQ=nxXARHeOQnw8z-uZS7Q@mail.gmail.com>
Subject: Re: [PATCH -tip 2/2] compiler_types.h: Add __no_sanitize_{address,undefined}
 to noinstr
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	syzbot <syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=thUds+DS;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 2 Jun 2020 at 20:49, 'Nick Desaulniers' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Tue, Jun 2, 2020 at 11:44 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Adds the portable definitions for __no_sanitize_address, and
> > __no_sanitize_undefined, and subsequently changes noinstr to use the
> > attributes to disable instrumentation via KASAN or UBSAN.
> >
> > Link: https://lore.kernel.org/lkml/000000000000d2474c05a6c938fe@google.com/
> > Reported-by: syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
> > Signed-off-by: Marco Elver <elver@google.com>
>
> Currently most of our compiler attribute detection is done in
> include/linux/compiler_attributes.h; I think this should be handled
> there. +Miguel Ojeda

GCC and Clang define these very differently, and the way to query for
them is different too. All we want is a portable __no_sanitize, and
compiler-{gcc,clang}.h is the right place for that. Similar to why we
define the other __no_sanitize above the places they were added.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMeAhS9vemP%3DOOPBmj_9dDnmQ%3DnxXARHeOQnw8z-uZS7Q%40mail.gmail.com.
