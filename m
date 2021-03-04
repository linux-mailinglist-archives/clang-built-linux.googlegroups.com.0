Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBQVVQWBAMGQE6DA5V4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B8132DCB5
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 23:10:11 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id g3sf21823925ild.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 14:10:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614895810; cv=pass;
        d=google.com; s=arc-20160816;
        b=qn3UDLwkwK7JMxhuiZs2UWP7TdPrLDAapl0WwcKMguLIHNsdFn+b+2AhhFPsm0tnEX
         EZmyW4agU+fhaeHfYKoWYxqc/dyL1UBvDh8kPryv4MEZOqImu9WTaYwrhTu61J5yGWv8
         nxM49UrD6jv1CwRXwzNfqEF2iq4QXodpK7uIaBOlaIA0eH8d7mXO6qaAaiI93j/Oz3iD
         MA8o/ofhGdMSIQKDwbaPquOFDSojXjc0qMnpChW0cpqR8/KtXy+uTodtD3a2HvXDH60P
         O+gYnzYln9EbpYP0LWrO0H8J4VFfNRkbYWjK5ODk6Q4cc6MrUXqt3x1nt12Cw89ONsUl
         XpBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=7U6HTgQpgkiamxRFUIiVOASlO6KJBFbxDxrrX3cG+6c=;
        b=SnlW9yFNjMh1Ts+bQz0zWMzqYbAXKNjJpCoTvDADDAoq3e3fw1grHNMSAwfvha+Yb1
         oeqeP6Tja2843225laFsJEcJ6HPQiNLk7powTq99+1qrcmBkXrRKNS1gr+Slx8eg8unW
         G0V7mXViV2aaPMeztERHN3hY7DYPRWTmaWw3PqSxZak9TZot63x7R0DXH293wRMPv0TG
         Ti9z6UCO88V7hdQcKxbxOQUijxpwIvrz0fM1urCdGZIvBRkV9Rotlx1+QtzUHyjBloPW
         +q5VJLcB8Ep0rZ5/dUCSYKhuh+uN7ZuIYsfuEkajI8nzpoOtdsdg0ep3tKNmYWkNGSpi
         avKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=pogIiULd;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=DU6XQrt+;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.71 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7U6HTgQpgkiamxRFUIiVOASlO6KJBFbxDxrrX3cG+6c=;
        b=DSNJvUckUpwY3sQA6IXRx7zfEsUAhEXc2qGIgicyI/xWLPpiEaHQJvIkIagg4VIxnn
         D4HMAuEIe5HRYaHYRlLuVnpFbmpgiGIC5tQuoCZtAMt28kw373oc8fugbBRfCalUzcsG
         guOWIqCdyU00IWiK4l9ZYzWNxbF/PsUU5aby+QICf4Xn7dI748MPe0ERADLlapB5IzXu
         xqENSTvdy7eXz6O7bgNr8qVJ5PMGwLI259T6FGnUAKAiebTRXyUN4APhQON2SIkn1Aq9
         Ocq4EMxsE5OyLQ6rKwvXkCXsnVhfsEibIewnHNBk4at/7246V9hziAYo78uxdW6hSv1J
         XVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7U6HTgQpgkiamxRFUIiVOASlO6KJBFbxDxrrX3cG+6c=;
        b=TD2Zhr/IFQ/LKeVFAaT6jJxeYvkhVn3vFwoBeXyDSUt6liVpb4Ie6XK7nPRerjdej9
         eAiR5b/F1g3Wnp8mzFyw1GDZM2au3A3l1PBGXlvkndMWbQnfwHtWaCSBuGydtkKSbz7H
         W473iOA9emvYPy0mIzMGCzYF8SmN11ozD73NYq5Zxse3JGxbcsc1BSIAw6yXFoWPrB+S
         jdf1HF9t/WX8wu+cxRmbc6meblLvOnNhGKa7YeQq4j7HF7MURkaxzEFITYTEEfWkoJTe
         8LFu+dRnWP/s9NI8mdPb0fxBiRG9ZEonWivJg1YCgJDS/kHal2vpC/0cz6Hhte+SoSZl
         ByWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SeDfBY3J3NIng9XiNzrzBpY6itTSTxiK6AgONu9rrf9syZ7vz
	3rlTceIqRfOFV+hmsNerU2g=
X-Google-Smtp-Source: ABdhPJwNdMx9QjZtkP5NCZkOKZF9Q+ubI660vd1a3hE68y8L9k6gAFrOo2vyCcj66H//10RkBwfVNA==
X-Received: by 2002:a92:c644:: with SMTP id 4mr5873319ill.237.1614895810664;
        Thu, 04 Mar 2021 14:10:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2656:: with SMTP id n22ls1028618jat.4.gmail; Thu,
 04 Mar 2021 14:10:10 -0800 (PST)
X-Received: by 2002:a05:6638:238c:: with SMTP id q12mr6503575jat.114.1614895810149;
        Thu, 04 Mar 2021 14:10:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614895810; cv=none;
        d=google.com; s=arc-20160816;
        b=eoNaxbdYmJj17DBxW6Y2oT/9S4aEFEVgdYeNrM7Vmr6m/psozHY/Hj/ItvxtGpQ2hu
         APxx+f7zQ5H/vLxootSQ30NJ+oiGe8SOUmltlLabwiLWepgslTyUp/Ac3bcqRAU5uweA
         wVIxuCQSXIyFAtSMaJkyvjsn14KlqgNZu4hWNhLT+1Oi4bRKEFsWW2auifMTgTWtTVBG
         FXNC9dcSFc4uRAwJEFo5S2lG4x20IlQy4YJLQnlbwdZJhw6SzTC08s4PLKQw1QOdg5tW
         2NzyEZ0v1LWLKczTGV/Vr4s4lZxMv3Q+3RVrROqX2W2cnr6qYKxekwfy3+dqPEAdEGcz
         Ebbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=k860LBQGdADMjxhqzIecdSjk0pIb0QfN8r7kroY5+DA=;
        b=yv6AaWI/xeh5U4npQ3NUwqaoK/yRUA75Y4PvIhZe5GHE1VImMQ4CNpZpuE+eKB7jAo
         m6U3Gv2jmn8xNx19GuO9RGudJPAc3p9QrMilEc4qt4Qdlc5JOjAly45c6mME5CL3S4jZ
         IUJ7uWyxWpjjPF0+FQI2ncLj0fpcLzDBtgkaHy1JktdS5IPA04V0qqrP7a3CiKn1Kn3m
         IRekugD0B2EX32Zdg/JiCn978L18SHkH6KM0J5WAU9gECchxtMXGyAUNkQxz0pKCtdtG
         0YUzKpOZzwXPao5tOjb2hC/CZA6DigJTPb1EB/nqbT58+QXt8wkvzsVdhjx8WF1HjajP
         4o9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=pogIiULd;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=DU6XQrt+;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.71 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com. [64.147.108.71])
        by gmr-mx.google.com with ESMTPS id g10si69277ioo.0.2021.03.04.14.10.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 14:10:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 0ABBE97DCD;
	Thu,  4 Mar 2021 17:10:06 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id C888197DCA;
	Thu,  4 Mar 2021 17:10:05 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 6A9B297DC5;
	Thu,  4 Mar 2021 17:10:04 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 87BF22DA015E;
	Thu,  4 Mar 2021 17:10:02 -0500 (EST)
Date: Thu, 4 Mar 2021 17:10:02 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Masahiro Yamada <masahiroy@kernel.org>
cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] kbuild: collect minimum tool versions into
 scripts/tool-version.sh
In-Reply-To: <20210303183333.46543-2-masahiroy@kernel.org>
Message-ID: <798s9r5n-5nr8-1p1s-837-s07p72q72031@syhkavp.arg>
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 5F66614C-7D36-11EB-8D3A-74DE23BA3BAF-78420484!pb-smtp2.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=pogIiULd;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=DU6XQrt+;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.71 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Thu, 4 Mar 2021, Masahiro Yamada wrote:

> The kernel build uses various tools, many of which are provided by the
> same software suite, for example, LLVM and Binutils.
> 
> When we raise the minimal version of Clang/LLVM, we need to update
> clang_min_version in scripts/cc-version.sh and also lld_min_version in
> scripts/ld-version.sh.
> 
> In fact, Kbuild can handle CC=clang and LD=ld.lld independently, and we
> could manage their minimal version separately, but it does not make
> much sense.
> 
> Make scripts/tool-version.sh a central place of minimum tool versions
> so that we do not need to touch multiple files.

It would be better and self-explanatory if a script that provides the 
minimum version of a tool was actually called ... min_tool-version.sh or 
the like. Otherwise one might think it would give e.g. the current 
version of installed tools.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/798s9r5n-5nr8-1p1s-837-s07p72q72031%40syhkavp.arg.
