Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6O4TL4AKGQESSESQJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EE797219810
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 07:43:22 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id p72sf302441vkp.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 22:43:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594273402; cv=pass;
        d=google.com; s=arc-20160816;
        b=KPhUZISfKpd53j8+N99O2W0H/8f3EttgQ1DDP6QSpON4RV9EURiiZwVLDYmRNY0Fr7
         vQyG3Q3BsVLLR1B8UC8fr1OdN9AX5suWp+QqeZGE4rKNmttjp/KJMkMAmOe543vQ5RFd
         +uV+E2V7IvKol0ICrdJqrT4qEPKiX0Iymv4d6m5Wvb+qpWNdUU1M2wnVIdRfsFQ+xsS/
         IRvZxWxlSrEDPqPFh889T0AGOycEhRdBMMBS5j8XrCsGpvoB78rCA9whIVbpp6R8UOHV
         i4OVUoghE4fdMmp3TWSaWxJ/95MPqgBpk6pVmCS2G9GqRVimIhzFqpDXQV70r+nNU/He
         9vyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Pj9nVwgB6MdLY/NaDwy/xLr4cTBaCNT5Wx4HSc09Y10=;
        b=eSoRPkZL0l71UNwqXmch2hgbIkrEBvVDyJYRlEGzT2pcPpkIN4TwOlJZVKltqJhoFx
         H/paYARV8JITF7UVJlFxmldMlJWlg2f9Tca4PQZ0oFQnWFkDkllsV7+YFiTddgrfDoUW
         0W2l+mjtmZB/dC4aPk1GJtLNk+2D6Eqkfr0ZHsOJl217t3p6lj9xGRBT/fIvCtMhbG1z
         ms3ERubcU3xc+CJEETCEdb8CGqsg+zVrjoCsqYsC+PfaHMCDaWlHva7TEvTiYAnc/uKQ
         +Ry4ebovUMMy+8IOOlbG7q6g/6dj1e5xJzsg9jWZZH/88PZdXpbW3S4fQ+PAyzIAr0wE
         kNrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Tvlbnc6M;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pj9nVwgB6MdLY/NaDwy/xLr4cTBaCNT5Wx4HSc09Y10=;
        b=rDiLiEMavCEytKSwiCRcVWsNIfvLDTRQoZmQ/K5DEVtlrV250U9+eroel3S+nbcrqO
         o++1HeXXu5GPqQWNpbZ3VmiiP0KMaIuFrkWg5uIwAjnkZcmIQx119+OdTQ+f0VzL6zta
         VcZNvgBLkNCPIQeB+vrNCjni/DkWBC7x7pnh8+xyKIW0Mr8LPazxGxPjKA6UcPinc1x8
         nVUHGrVZ04do+bR17Ff4uchszqsfOGWOkhw/5zPvD1NQik/5jjld5EoqDTHooonTvCga
         xk+hePTe5Vn3xM5YDCXR6/Hulwm2Ec1jseuHOYM1tuM86aQ5OSahAEITSDNJz3zw/Te+
         Q0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pj9nVwgB6MdLY/NaDwy/xLr4cTBaCNT5Wx4HSc09Y10=;
        b=itLb3eLAxGKzN7o5HqoTrjMhR6WIZXQ+s+blBSqAgnWMUFaj/g9hSxmcdXoBw+X0JE
         H9Mw+wFw+K3QCnpr2vXHwYnGb+IJlQ9lk78Rj+v+INsJnUQ6JUe2DLBKHZMESn/woc84
         O5piS1VzduC5RtnrsVGMGNKoZh/swhJ4mB5fEb3s0ILQx7DJkig1PhI/9asMPHQVd2Ta
         INbBMZ7Se20l40TNSU1DALlrrB5yu47HbqAnacBTy1Q8L/5gWMsNU2BhybpCxyUeDtq7
         cWB2VHa5oOtK+TwtWqFbs+N9Uv4tNoc2I2SZxSpjlOPZ616qwW83UrxGNxExpCl8LO/X
         S4iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ItfQIMJA3KsnjaX850HoZmCEQwyE5uoHzK3Uq8mljy50bzFxm
	GsXXBQrGIxIurgEtSWDEnkY=
X-Google-Smtp-Source: ABdhPJyc21rFU6tXt9qtwBqqQWktdnYZYZHkwC3S2V9yi4TNr9NBR81RD3d/2RYBRXWG6hWWn8oxFg==
X-Received: by 2002:a67:e091:: with SMTP id f17mr41986005vsl.199.1594273401877;
        Wed, 08 Jul 2020 22:43:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b604:: with SMTP id d4ls484099vsm.4.gmail; Wed, 08 Jul
 2020 22:43:21 -0700 (PDT)
X-Received: by 2002:a05:6102:127c:: with SMTP id q28mr39749122vsg.231.1594273401585;
        Wed, 08 Jul 2020 22:43:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594273401; cv=none;
        d=google.com; s=arc-20160816;
        b=c+7uwRpUZRzpfHyXE/VUQD9gCcW6lasHPfZWQukAmUCnaterEhu45hWi6KM9JKGX26
         oTPT60epyaXjQQeTmgdu8rCK9lQ6pvnrIUx/d2Em3jdK9HmeIxaDxoIsfZ6NFC2KIeAe
         fQONOfSgF3Z+58ewHg5yNdkC3sPi++AobQ6FFVPcchBmv7f4Xt+Bw1S4Bg1ztwEg1GqZ
         YUgBZK6689cSDjoMtdztFU7B9yDcRbZ7HG0rWkzRRdgs97MlZVJoTn2jfpYskav3+mVa
         8nPlR9QQhSWuCNV+I1jEn+oKxgZY9SEVQqNr8T+XD9L/L5QuaRg9baOx9VEDr6PbN9BK
         kZMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Njmc1vyPe75JslBINheBTnA8lemCls4rpnddifbo0bM=;
        b=tcZJeynFpJ6zd72WMNlcujVVStZWSsVbn5TEnQ8AIu/G8HFautErzI2v7X3JrF5jxo
         TAS+D5GGXeo+utvwHGqvs7gbTudbX7lrJ6hjghJ9mpE1tmXSW2j4Syy3WYd3ne4UDrtp
         abzL2CpoOxkUyPeKNmSjvyrvVGj0kvIHB7pi7B98ePuWsigW2zZ8TAgnk9N/o0KNhvnY
         frBmWLh6EFcrTPe9guWkCQpPWAUsf5K2QJONYu3ZJzrD5PGQIe1zybbrbIlGlvS17lpA
         +i1QU2PM2DqtATR77oPDVuBLTjJvc2bTBgzrw7RnkOtOIfAQ+wi3SdjNDpnDAesAWPG0
         sfBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Tvlbnc6M;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id a68si131164vke.1.2020.07.08.22.43.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 22:43:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id o22so601799pjw.2
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 22:43:21 -0700 (PDT)
X-Received: by 2002:a17:90a:e618:: with SMTP id j24mr12895872pjy.41.1594273400806;
        Wed, 08 Jul 2020 22:43:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t5sm1431481pgl.38.2020.07.08.22.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2020 22:43:19 -0700 (PDT)
Date: Wed, 8 Jul 2020 22:43:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] vmlinux.lds: add PGO and AutoFDO input sections
Message-ID: <202007082240.815932C2@keescook>
References: <20200622231536.7jcshis5mdn3vr54@google.com>
 <20200625184752.73095-1-ndesaulniers@google.com>
 <CAKwvOd=cum+BNHOk2djXx5JtAcCBwq2Bxy=j5ucRd2RcLWwDZQ@mail.gmail.com>
 <CAK8P3a1mBCC=hBMzxZVukHhrWhv=LiPOfV6Mgnw1QpNg=MpONg@mail.gmail.com>
 <202007020856.78DDE23F4A@keescook>
 <CAKwvOd=NeOodb=ebbodd278=ErRSmPxFNVABQS3ZO=D00yFWGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=NeOodb=ebbodd278=ErRSmPxFNVABQS3ZO=D00yFWGw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Tvlbnc6M;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jul 08, 2020 at 04:13:54PM -0700, Nick Desaulniers wrote:
> On Thu, Jul 2, 2020 at 8:57 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > This looks good to me. Do you want me to carry it as part of the orphan
> > series? (It doesn't look like it'll collide, so that's not needed, but I
> > can if that makes things easier.)
> >
> > Acked-by: Kees Cook <keescook@chromium.org>
> 
> If you would be so kind, I'd owe you yet another beer!

Yup! It's on my list; I've been clearing other stuff so I can do another
revision. (I want to move some things out of discard and into 0-size
asserts, and possibly collect Arvind's runtime relocations series too
(since it seems basically done but no x86 maintainers have snagged it).

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007082240.815932C2%40keescook.
