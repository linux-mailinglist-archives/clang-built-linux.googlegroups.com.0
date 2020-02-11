Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPOJRPZAKGQEZL6HBWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id C18F1159629
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 18:30:39 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id t186sf7591711qkf.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 09:30:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581442237; cv=pass;
        d=google.com; s=arc-20160816;
        b=rQQIqdeteGq6n0yq9jaM6Vo+YJBLb6FFyh+mvcx/D7BhpEFXwBEmnX1J3ljJQu/O7l
         FlS/wGZS1K6B4MP6KMOF43o/IuSyOHaYZp4oz8ZAaP9op4DC0YbOe4gl7OScT35gJAHu
         QdkyuNpImPVJ5PAxpZ1fSpDO2A1dUs+H3dpZ8G9j5bRHTCsBDmYcTd4QyUafrvBm5oLi
         bswpGYCdM1Mmq87Z73z/kvnzsk1e+FPmj7z4m84FwtCkFJKkgBakOjIe1d0CwzmxjKz3
         rXMvPQmqoYhL/6UtG521lHNR0FbDKzM0PSWWZOvzo1+EpycCIwKSRJZskO1vJgxc1u7g
         UniA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EcHen3d0GblOZ0i4LgBUkoa56yhaKHWvFbFxL2rSHSo=;
        b=fE1tzGmX5TE4BcSTVNAOOmvqf4yPhs2ZCJZJBhNJgu75+NtUpmuUoYqqhDpC/rnE55
         e7STrIzisT5X6MPXD889WJRbziUW56fOL3zf1Mt+hZV9rpFRFYcr1Tb7+TCdfFqdpHMB
         GWxZhgY3oCZjB4awwjo6zRtAxRFVy+J2RA2JXp1wN1ebQl4c4xmpVlnMxGiMroLnJsZb
         yY5d7JW6xnZ7IqeUa0TyHHkQ/gPYDr1oo0VckFg2IpZat3amHZCCD0BI/yqjLGmyC7M5
         H9eMswVX8/HKdAHgCZdH8Esnzz5Wjjii3nK4bKIbVBEYeybpGTCj8C+BIRcsro9xmYqb
         xwlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UhUw4kZ1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EcHen3d0GblOZ0i4LgBUkoa56yhaKHWvFbFxL2rSHSo=;
        b=kjqKccZrEBKm4VvXjHoEKhYYAcxwqKldovGEL9+whxBP2uu1d6dciMDrWPnFYh5bT1
         LHssN2duFeASbLFW8fV/xu1AYWQodRbv4cq3fBIsdUsHl4c0AxRBwZMXEnd3V1mLMSAd
         KXb1ILZxw2m5oFnGP2fnFwQZ0AoEOw8n0s6eiMw7KGdt7gaP8HPypguxkcJTEbhWCVxE
         BKAuVckiNyts3UR/2lkC6uG9TUIXDYOoIeYPhikSJoaU2XEVm0+0sE9wHrb0cbRZLMMh
         FrM3xKOs8WoHJ+5vYhaUI7EFdLJTgOxdVVQLfj6NPJZf2TCmdSx9zFyHwXim574xSJX6
         mz9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EcHen3d0GblOZ0i4LgBUkoa56yhaKHWvFbFxL2rSHSo=;
        b=Drhw+Ulpr6dYB5nDflS3lpGoylr9VKhyjNbQdv6UUlb2OAkmh0M2i0E7Y6yqI09DQg
         +mNWwe1dMsnoLfGjrlgsROFWrS+ZRQfk9SWMeKRM46ksyNTGMqhT6wdjeaI3QoiUUE/Q
         UqEL5YLLHVbvIkcy4vznzdGEqKLG2xO/d/T2AcaSw90sjBy5nn0VqCCaSxN3rADYCgV1
         2dXbTKSB4B6knYj5EFUv93khqsxzEiEjqFkpsofuNbvnnf6gg/yEEEduWyevSuxNcKmt
         Jy42ux2ItXMOYgGVTRvb8gv+6Hegmf1cP3zTmw7ERkA77XMeqA5vnRDVdEKergcsMv0u
         N/uA==
X-Gm-Message-State: APjAAAXmZJ/XlZ5mx+Tb1GYEyqxpeuYScyOC73LYOQ9tCxWA2z08IgM9
	7MU0iUdpcMxxM+r+36WiPqM=
X-Google-Smtp-Source: APXvYqxPTQccMjoXWVofuKzeCc3vl5b3GPQK6Xp0y8JRS+/glejKWQpShY4tRUw0Ft1m4WTGf1i50g==
X-Received: by 2002:ac8:721a:: with SMTP id a26mr3392480qtp.31.1581442237318;
        Tue, 11 Feb 2020 09:30:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:42c4:: with SMTP id f4ls2882141qvr.10.gmail; Tue, 11 Feb
 2020 09:30:37 -0800 (PST)
X-Received: by 2002:a05:6214:1150:: with SMTP id b16mr3871399qvt.71.1581442236970;
        Tue, 11 Feb 2020 09:30:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581442236; cv=none;
        d=google.com; s=arc-20160816;
        b=lsngyaDBhg4jWlBLGeD3JoLKNA49gPuOSZGjwomFPcNkXOdm1c8jWJUMUoOGzGtF8L
         lxpb+1yj29aaAOVNMYgSjFlO8zrAjMnkf6SVOKHpfONib7QGm4qfQQJ0lvElRF5A64Ux
         /r3+soYVFj6DkSzV49AcPWziJkgDMp6ycGX5Xgy8FxkRWrBYkOOzCfe7Tmdw/v46sGyt
         Xninr+iy6avS0ohLdtW7ejnkeBzl+CT7hGx79VuBVqmpuD+IkCHRCfMJhp23WMK0Rr1s
         KXdEwdEmNCsCQ+jPamWPFx0mHDBxuoqPJV8n8fAfFu01Qlxq98kPP2WE3ujIqdPZuux3
         uDSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bM2xQLURwsdpapQPw/vmgOLzWTtBkTWZo2XFKd2Fc+8=;
        b=rmmnSuy0dOpDOOPlIvQJoMe0yCj0yNqcSc9lYmI1FML+C9nCeNQxAHTbcKdMgwkMQC
         128KP4+LCnyEDHwCESj1Z40F68zSLdWhQ8DZwst5h2WCZopfPNF6a89x5m0fvQ+pY2oP
         YHliQe5kXrkPU7hfwNwueM6h1O6Yv/acyZtz80NE/SDp1HuUIUBDde9rQCgxI/wYtDxD
         yZXQN4dxZfEiRT6FLARWpFLOSXw+Xb3HXAuPZEvfUY2Ypk6eqE6RQvdBHwjd/x5lBk6l
         o+nacgnhSptbOYe54AzCCVpqKAZV6Kl4tWhxJTwx00hf5zO9JiR42/TikoA4Fmiho9NS
         2I9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UhUw4kZ1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k49si243598qtb.4.2020.02.11.09.30.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 09:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z7so6073753pgk.7
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 09:30:36 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr7815807pgb.10.1581442235797;
 Tue, 11 Feb 2020 09:30:35 -0800 (PST)
MIME-Version: 1.0
References: <20200208140858.47970-1-natechancellor@gmail.com> <your-ad-here.call-01581426728-ext-3459@work.hours>
In-Reply-To: <your-ad-here.call-01581426728-ext-3459@work.hours>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Feb 2020 17:30:24 +0000
Message-ID: <CAKwvOd=CWKnrY_T8vP4a-KXkz-V57dFqk+6FC_krm=pVAVibyg@mail.gmail.com>
Subject: Re: [PATCH] s390/time: Fix clk type in get_tod_clock
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UhUw4kZ1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Feb 11, 2020 at 5:12 AM Vasily Gorbik <gor@linux.ibm.com> wrote:
> Applied, thanks.

Hi Vasily, is this the expected tree+branch that the patch will be
pushed to? (I'm trying to track when+where our patches land).
https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/log/?h=fixes

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DCWKnrY_T8vP4a-KXkz-V57dFqk%2B6FC_krm%3DpVAVibyg%40mail.gmail.com.
