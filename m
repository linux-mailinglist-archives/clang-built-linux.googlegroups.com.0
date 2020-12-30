Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7HIWP7QKGQEN72GMLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B91E2E7CC3
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 22:43:26 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id y2sf12819119pgq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 13:43:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609364605; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nd7rBKlQpDs5bKrcKTHxLJH9RKIq+NOQZ/367O0fF5DUqWR9YhgtAyZMVJmrdiKBvr
         G+LVSKhbQsL2kTD3gwGXL9yJHSCvjKuuP0I5zhnjt73G0iQUPUaYHigpc+Poqmb2Lh5+
         1I1LhD6vElkQLsUtuohq6BLY4r2U4MqembISLe7gFfi91oalzayD9G0WHzDwNfy2GalL
         L34TDXBuYeAxw+7Bcc6hLWxkcbEuZjBOR8ptqETDJvfZ9x0sRHXB7FtfYZku7MNExkPp
         FrqvA64iPLnwyQ/d2C9ZkIm/ch8CP6xt3c9YW929sZigEPnUTCYdOycYSN1xWJ+Au9BD
         E4Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Im/8kBpyvVfZtCxlo0Sm1CQAKWZ3XTFPGJ7Wekdksxg=;
        b=x+n4KKYXReERf1DvCWHHkYg/Jy6CSBz+beyulS6LjNYbmqX1w2622Cnpie2T3hGlx2
         0kMKJp+Mak8tpf5CwJ+PzOU8x+/qOLQCvsbuABv9xd+HKXt1LiKsODjEbOkOo97KY31K
         7mPstzPJCm1IAdxWH6+x/QUg0NdMqO0NBFiH31gQJ6REq0RTVwrAWlqVW4EevsY+yiZR
         q20FQrUrEp6Qrcble+rM6yQ67GvcOGKRNLUtwgLJUnicxOeLxBphkeTcyrCigrzW5B2e
         5erh9SRKPncWvqRaHffv3aanWm2tU/ZWRemc84AqyJFh5N0OMO3erQVJrzcuZRjjWOTQ
         ePbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gdhHhCOS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Im/8kBpyvVfZtCxlo0Sm1CQAKWZ3XTFPGJ7Wekdksxg=;
        b=J4VTUJw7d3LekwyvYiBjoGNHKAANhXYcuduwv5GCPB4FywQ2Xu0xCAFgzr0Ioy7B/8
         W3j9qtV75/be3bXPIh5hBSSJANmLHGpRUuWqSCN+bODTNnYdIC9WF/B51t2OEQvK5Pwb
         DIN6l+ppieV1Lm1hUg20dCm7dGpMZG1XUsn6AxtSJYi7H8nhrHmYA3Y4nJv/QUDRk0RD
         Zfvk1DS3SVklV24U7fPONwSDW56n+0MICPatwdwpMaGNO5gEPrcW1rlj/5v9MtitzpD8
         UKkgtI6o1tTgF6Of9DVgGaIEu1z/F7kY4tK1Hukzk9W7LZpanv373C7DwccRppetvDVH
         wn9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Im/8kBpyvVfZtCxlo0Sm1CQAKWZ3XTFPGJ7Wekdksxg=;
        b=X2BMzdxXvYPk00LKSF3Fq+/toO3tiC7J8pzIQwsky8YfcU0DT2dlqQ3f1lbkVy+ShQ
         GDuwXvgua5yQCgzOLWRoJymhUc5HfMk5aBXJ+DoNw6tS1KoYM73bUtUyldfF+2jHux1U
         qhBFWsup/djRmV0T6FM3pDPZ5DNCRqahAN/vQHbKkxeuQ7sCUu076vEPs17BL5idNA3P
         N9BqZIn50olW+OXqpLebGShmKqTQYNOveVlmJBfKBcSDocRmso2f0BYslPUVnu3WDDqN
         MG8uvi1SvMOhfmPS/FIZCSP6dynx56JLWMLGndDQOvBAgkvw9TT5NYRz0huvKTWqkpSW
         zAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Im/8kBpyvVfZtCxlo0Sm1CQAKWZ3XTFPGJ7Wekdksxg=;
        b=uk03qtnq6hq0cca/BCd3gZrveU2rC4jAIhDsNZp30xI5WbZBJvjf614kSJiz251wHr
         2zh23T8MmLrRPtzTCG7C/Mh+5xCzN7oGwr0lO9n36DO4JyI0ph/jEwV/bBk5fOkTBsfM
         2GG+jimTr3B5b4X90XviInQA38FfLppw30dCbuMtBjX0FVfaL1MQZI7JA9HpUNFQNdNL
         N07tN0aeSz3R/+y/2OW17mhSQGBNyz4v4VaOSsx2bz6JYBAUKEq+5eSW1C7zt44JmIIj
         AVOz6cTEWNBpjgjm8BpE6t01TtFzIyCEdupqA733ykZ0LsTURovP98BGbZ/MEFKd9u+b
         J9nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sIHKws3frGIyTIuuO6O75I0e5NZbtbR3xx74kh577ZeuCU9sC
	aAKedxJyIM8vjpD5kVdNaa0=
X-Google-Smtp-Source: ABdhPJwLcxUsuVWxN50ppMSGlQ5d4udenAs8yJGBD9ZSPsNiHBPjPkc49l/5B3JYT/7chB65iYxmQg==
X-Received: by 2002:a17:90b:242:: with SMTP id fz2mr10598334pjb.39.1609364604886;
        Wed, 30 Dec 2020 13:43:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls24523178pfi.3.gmail; Wed, 30 Dec
 2020 13:43:24 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr54206088pgy.10.1609364604193;
        Wed, 30 Dec 2020 13:43:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609364604; cv=none;
        d=google.com; s=arc-20160816;
        b=vZ8+G+YJIYmbggdy+FZQxFAEcTIBtvZjJpfSj8N9XaGZ0IxaS1e/WhM2IjUTe70Fjw
         D/TdfMq8KP7VtIrweHDRwkbcelUf/IUGFn+wPFfIiDf8qK3YxASmI1fk1sU96AzfsdZ8
         8GjSxu5yKBZwzAUPC/sqtKW0pMtBg/hDrxLcMoYD4GHC7sUnBxVacr7OO7JtKg5O5+HT
         K1OqbdQurwkLZtZiOQwVxlW8HMtTkr+cdtRMrhz30n0gUjg+Oo+VTfpQKBRn+TMJtDmz
         hFgQqPp+kytaGnuoVp+IwhhkqiQoybglH77eBOXtw88lZIjMK5SxFZ/mV2Sq7FQEiVUN
         E2lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MHAGjQt9ritApkqt6RGeoNtDT77YQoOVvjyTVHtT+3g=;
        b=tOuxdk0rWHDFMyhzNGHK6XhKjDAFBMop3JtmJc6WNMCoonB6BsdgswkVnF/m6u4NHz
         IERBObDlfYfgN6vtdn6/IK2z/OQc0zXTqZ3Y7YUPagdy52my6nsPL6MDIRm33KiH9qSI
         fvKSYwm2FUBA728BjTowrdKCXV3cXvAniFPEolh7qCbm7oIw2V3te/aweoZdokYBEKc3
         1+VPA43q/muh/bmw/BMeWMl2XYjVOWuStJZklWz9lMXuAoIlkL0YPG8oyEd0F8a/446/
         Ai2gOu5RKpwqO7kkNG0ANtl0A9p+ebaqmFzI5njLKrqH1ZkJ8zrqyQ/26Gj9NolOJIRq
         aPGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gdhHhCOS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id q32si566237pja.2.2020.12.30.13.43.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 13:43:24 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Received: by mail-qk1-x730.google.com with SMTP id f26so15104237qka.0
        for <clang-built-linux@googlegroups.com>; Wed, 30 Dec 2020 13:43:24 -0800 (PST)
X-Received: by 2002:a37:e108:: with SMTP id c8mr55768855qkm.305.1609364603815;
        Wed, 30 Dec 2020 13:43:23 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b15sm22343588qta.75.2020.12.30.13.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:43:23 -0800 (PST)
Date: Wed, 30 Dec 2020 14:43:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Nicolas Pitre <npitre@baylibre.com>, Arnd Bergmann <arnd@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-i3c@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: re-fix __maybe_unused attribute
Message-ID: <20201230214321.GA1961980@ubuntu-m3-large-x86>
References: <20201230154304.598900-1-arnd@kernel.org>
 <orno9ppp-no44-4rp5-s6-58n46rsps045@onlyvoer.pbz>
 <20201230214053.GB110311@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230214053.GB110311@piout.net>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gdhHhCOS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Dec 30, 2020 at 10:40:53PM +0100, Alexandre Belloni wrote:
> On 30/12/2020 16:23:56-0500, Nicolas Pitre wrote:
> > On Wed, 30 Dec 2020, Arnd Bergmann wrote:
> > 
> > > From: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > clang warns because the added __maybe_unused attribute is in
> > > the wrong place:
> > > 
> > > drivers/i3c/master/mipi-i3c-hci/core.c:780:21: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
> > > static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
> > >                     ^
> > > include/linux/compiler_attributes.h:267:56: note: expanded
> > > 
> > > Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > Acked-by: Nicolas Pitre <npitre@baylibre.com>
> > 
> > This might be the 3rd patch from 3 different people fixing the same 
> > thing. Looks like I3C maintainer is on vacation. Please feel free to 
> > send this trivial fix upstream some other way.
> > 
> 
> Isn't it already upstream?
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=95393f3e07ab53855b91881692a4a5b52dcdc03c

This patch is fixing that one, the attribute was added between the
struct type, causing a new warning for clang.

I sent a fix for this earlier too, I do not care which one goes in as
long as one does so:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230214321.GA1961980%40ubuntu-m3-large-x86.
