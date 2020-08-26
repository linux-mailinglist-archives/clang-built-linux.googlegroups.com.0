Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKU3TL5AKGQELBAUWOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E77182534DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 18:28:27 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id o18sf1960611ill.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 09:28:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598459306; cv=pass;
        d=google.com; s=arc-20160816;
        b=lYteMa7QZebMxgLPjahQtdMNErBISdfdugML8QF7k47rZwBgq8P94SpYY4frQ4jrJ+
         dE0UO115SGLyhYEyfxvGUib52GS8WdGkDyatrZKuXK3DkUYsEKrdgkxB9nsVwLnvnXkI
         gSS5J6gbKgc01BVzbv8Gy3VYNBejGrJobzeEwcRYtrAruk2/PhmNkImHGdaAuq8F0kMC
         aOeL+Vsl1EwtIKr1AOSz0aXu7YlkxYaqO7UWn/bRSMQfgPgmXS5mvv9jd9Th8Vq4DGnA
         u+UGLWwKMbw8z3L1h0Qwi+b9FQAdNKTKgy3gJ38fvd3OFBVUS34nRT3tpH5OYz6ctArt
         24Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WiokavLykGEHVeE0VWh5MWvw9Wiqet5IfhQUOXr6wwM=;
        b=cNevPWTurmjiWhr6nuym9Fx+Rn+7BjzecRwoEIL5/XlOJBCtxrxyVLM1JUaVSqCHT8
         h19OcZJGAqv37NRYcXVFP1p2Di59Xl10GFMfkwrkN988i7M+M2FPw1yrJwww0oUxTOZg
         19XWGn+nKonu/3W+1AxL1OH0bdL6x9GubUonXI/nwLUZ3shZ+MGFIZ2zQnndsIToKag3
         8T8ILv0vwRnoUVpJR6Re8czF+WB0GIjA9gJ5pJadrbaLu0Khc7WYZVPhpn+E6Puv8cnR
         w02zhZesP1jvBPVBax/K/fzwBN3ROa2eNhOWvHshIZsWBDrWWlmE/UAoRUkpSW276pNU
         nzQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KCaue+Ap;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WiokavLykGEHVeE0VWh5MWvw9Wiqet5IfhQUOXr6wwM=;
        b=tDotfK8xAKmhN7qrFrXR+Zk+LHX0jkPPnJMosGSfcTXtVY7JgcRZWf8vPBNOf6maVN
         Hh1DQx+QU+m+iQ1u2TQM8JHObXdmmjW/5s1P52zrY7s8lnoWSQYz5vHalJWEohVAqG1e
         Q60HATDnW0/VX7HQhGL+K1dtdItkFk7Xw71ZAIfXlLInq8HBX7mhRHNEQls6l3qLL7KB
         H2jZN1Fy0TthAd/LpnutcFVQqJDVVFxCn8VEx1MnnGCdeNzaMe4Y8J3rv9+FlsQsZdNi
         ad6v/PyHg8H0Uy+9ZNvc73i1UHGIp52WjH5NplcHb+QAoo+eL2GOQgzrTdsAIeraync+
         LFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WiokavLykGEHVeE0VWh5MWvw9Wiqet5IfhQUOXr6wwM=;
        b=gKxZUDXQB1DtobWeP1U6K64SsmYQprlkVIUAOOo+AcOvMuIx7qtFNvuBrEst+c12o8
         +QV3y7ZwFQ7zV1HNMx2PcWpBTkJQFmstwVH2fSnUeMaf62Mpc1kDcxgER+WD7nY/gJWE
         ouqJeWhkHQFk8wTDaFTO9/ggEpnvg5RrTsRcPQjBhSq4M0xGuxOIWaNAjbfQvrGldLQ4
         5ksjKfVNUoBGwxo14aNmNTmz6uB9ilcaz9AKG8h1woRactk01BKZIlVT2LJh2sQYGIYi
         jcqrgIo87Y+S/vcu1rLRijXHlCvgGSP/s08r5nGdXrp1NKgmUWYLNBQ7cQcyX/4RyfdH
         U3Kg==
X-Gm-Message-State: AOAM533ioBaLSSa0i7oOZlJDAwtq2GlXf2gMv3d31uDNuaweDXRBM16U
	rrD2B47i1cDmt14BeEvnixw=
X-Google-Smtp-Source: ABdhPJwTZX8OAEZregQ59exu51MtBbaldOy7zOJMd0VupTSLGg5gcu/ySLsblSP/wz0VRP0KYfqUFw==
X-Received: by 2002:a6b:681a:: with SMTP id d26mr13619397ioc.70.1598459306775;
        Wed, 26 Aug 2020 09:28:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d90f:: with SMTP id r15ls463873ioc.8.gmail; Wed, 26 Aug
 2020 09:28:26 -0700 (PDT)
X-Received: by 2002:a6b:5405:: with SMTP id i5mr1329132iob.187.1598459306448;
        Wed, 26 Aug 2020 09:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598459306; cv=none;
        d=google.com; s=arc-20160816;
        b=zPZ9BFGkDvsw0BGFpqoKNN2DQYdMNeHUNb0VZXjLquSs6su1Z7ZUGZ5QdsALDoPudm
         CWcHMQx9YOxMExjPeAuzmargCwLeowDlcSuvXvnFh+mBn9upQiLI3Ov3nAU0Vh8atCfo
         8wCBMDxdN5hasj7DE5s/eW0702cC5Zgv/9xMzS+3nBXyB3iB3YIupd96hXD0qsXtFlco
         jdHGmWuslUZxfZ5cvxJxsz2zwV30mu/hNC1N2+jlDVnlmCKNLVZtHxZiGADe6IhTaeiL
         RVH93cSlS5dB3JxsRwMw5sbAFrsLY9zr4hLg9vAC5h4JEOGEkCNwth9/JEUsWvYD9ljD
         xJhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FETW/yCC7DjFXree/2iRw/KwPEMPz4aXMCbCRxDNISA=;
        b=Uo6sXLd/jeQflD2LyEEJzdopm0zwA/aaWdSRIok2+5PbREFIpfnCcGi+HqkB/lGn/0
         ELwje4uaz6XEkjDiFw3liV3e1JeZosoE2f0rOH++KzjjG9O67zM3msiLk6q2xPCU41AH
         BBGNDwZ9ip+zTawbb5ynV1YeavrK+aPagC4KBsZWr877fkCQVj1EqNHfAgBxP4rqXMf4
         trtPYNtQuLi+1DL/KcKzdCSf8p30epaxhu99GQdVp+bBqTQu3dMVIXeWQGyPRBVVF7hG
         9N30jutjZNkWCaG61nGZksxwnsUkmWfN74cOoaFAz9zOTTK5CPWDtwI5F+6BZoKWhdPV
         yQYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KCaue+Ap;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id v15si119684iow.1.2020.08.26.09.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 09:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id kx11so1094787pjb.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 09:28:26 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr6905853pjb.101.1598459305662;
 Wed, 26 Aug 2020 09:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmKTzO6WOgPX5Y9Cn5Nj_6jW6YbEWnYUaJTKtHW-GRdJg@mail.gmail.com>
In-Reply-To: <CAKwvOdmKTzO6WOgPX5Y9Cn5Nj_6jW6YbEWnYUaJTKtHW-GRdJg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Aug 2020 09:28:14 -0700
Message-ID: <CAKwvOdk7OKrA1CqYju9iMUQaYQxmPB5Hk+r0424b75aqzAPS-g@mail.gmail.com>
Subject: Re: LLVM BoF tomorrow (Monday) - LLVM MC (Thursday)
To: Nathan Chancellor <natechancellor@gmail.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Bill Wendling <morbo@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Mathieu Acher <mathieu.acher@irisa.fr>, 
	Dan Rue <dan.rue@linaro.org>
Cc: Behan Webster <behanw@converseincode.com>, Alex Gaynor <alex.gaynor@gmail.com>, 
	John Baublitz <jbaublit@redhat.com>, Josh Triplett <josh@joshtriplett.org>, 
	Will Deacon <will@kernel.org>, Geoffrey Thomas <geofft@ldpreload.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KCaue+Ap;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

Hi Speakers, please try to have your slides attached/uploaded to your
talk's page by tonight.  Goto
https://linuxplumbersconf.org/event/7/sessions/84/#20200827 -> click
you talk -> contribution details (icon in top right) -> click the
pencil icon next to "presentation materials."

See you at the show. EOM.

On Sun, Aug 23, 2020 at 6:20 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi all,
> Reminder that tomorrow for Linux Plumbers we're planning to have a
> small BoF (separate from the MC) tomorrow:
> https://linuxplumbersconf.org/event/7/contributions/711/
>
> (9am PDT; check your timezone,
> https://www.timeanddate.com/worldclock/meetingdetails.html?year=2020&month=8&day=24&hour=16&min=0&sec=0&p1=283)
>
> The BoF is going to be hyper focused on ClangBuiltLinux; the MC will
> be more one what we need help with from the kernel community.
>
> Make sure you have the confirmation number from the email titled
> "Registration Confirmed - Linux Plumbers Conference 2020" as that is
> your password to log into chat.2020.linuxplumbersconf.org (join
> #llvm-mc or #rust) and https://meet.2020.linuxplumbersconf.org/.  Do
> yourself a favor and test logging in before the conference starts, and
> stay logged in.  I don't want to hear people can't log in as the
> conference is starting.
>
> Tickets are sold out, and we gave away all of our free tickets.  There
> will be a free youtube stream though:
> https://www.linuxplumbersconf.org/event/7/page/100-watch-live-free.
>
> Our MC will be Thursday, schedule:
> https://linuxplumbersconf.org/event/7/timetable/?view=lpc It starts
> earlier than the BoF (7am PDT).
> (https://www.timeanddate.com/worldclock/meetingdetails.html?year=2020&month=8&day=27&hour=14&min=0&sec=0&p1=283\)
>
> Presenters, make sure you're working on your slides; you should upload
> them to your presentation before the day of the MC, example:
> https://linuxplumbersconf.org/event/7/contributions/802/ (sign in with
> your linuxplumbersconf.org password, not the confirmation number, and
> you can attach your slides to your presentation. That keeps them
> preserved and helps Behan and I load them up for day-of presentation).
> Presenters may want to read the presenters guide:
> https://docs.google.com/document/d/1mXteE8Pu7Z6IGWEdL8o4ZSPnVvt8FUuDlIub2SzhLJ8/edit?usp=sharing
>
> Attendees, please open the following tabs:
> - https://meet.2020.linuxplumbersconf.org/
> - https://chat.2020.linuxplumbersconf.org/
> - https://linuxplumbersconf.org/event/7/timetable/?view=lpc
>
> See you at the show, and please fix your compiler!
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk7OKrA1CqYju9iMUQaYQxmPB5Hk%2Br0424b75aqzAPS-g%40mail.gmail.com.
