Return-Path: <clang-built-linux+bncBDRZHGH43YJRBC4DQTWQKGQE2GDEWTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A435BD4A4B
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 00:26:19 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id n3sf5008413wrt.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 15:26:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570832779; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iz+Z1L1v1jcnFyPadtyoODvMwtVXEyrygTG5wYV+Cac0cWtcYh9QEXVqXCP7HSgdVx
         awZhesYiaoHY3aD1YTq+Njsu1wFBDv9E6M5TTlv4KOkgywLtIFpOEv5lAGR4+53Hu0TF
         z32fNp6Q01FH7tmDiTP0mijB7PD4CAt7u34xRWgO/n5sc3+uUeJTiomeYMf3Zai85M2f
         8Uq/Xz2/gWK6zboDWi+2saSNRtcjkVFatyrGpZXZrnU08juuTGrCVfSzHS/WyXojGD1s
         GBwh21vF2NCPU5RTcIQhO9a7WUBaF0mzTLAHhOPOFHIHPrxXAjz011icNAlPPLbBgF3N
         S+VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Gw7/Lcv3WmsOBPCTneX2MoV5cZpfA5vxcNMw3AJnKxs=;
        b=RxfAsyGjr1cQOoSlWTV2E9yJlpdI2w+uU778xm2EyNuLuRSR2zlxJAyqxEfXPpJQu7
         CQJVEq+tIESVv1Bn41oPXR5/+3si52SlHI7RJcDcRXvWgt8ZMCSL5QAAzb75bNYC74sH
         REKLUl8zqOoyfVUE4rMKlHWjY3RspWPGNxseLwt8vmpfJ/ozS6uOWKyUJlwNMVQDUpza
         2ZgwW0Ikclt0rUv82tB5SAtgqdL7tomMgh1Rqh4pBCQ2z/cRVoGz8SlJ3De9HL3x6bnC
         MNexPfIBrMQ5YALXgiGhjfssXrcaMC43j/eR8yUAPEF8onrQH6R3+p9hmhvoLjlWLYc9
         nE7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nqUsqy5Z;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gw7/Lcv3WmsOBPCTneX2MoV5cZpfA5vxcNMw3AJnKxs=;
        b=ilc5dkGV/4HhlnCHYi9WZ1Bovgmb2LuHWTxXcSiaoi25Y/jBC0N5Wlh9ONQqVW0oha
         ts3L7o+hxe+iQqie6WZ4mAQKda6L8Gs0O/dB2xsF3rWji0HocW1TsDvYO0x2pwxJEKVC
         stcj0aGuzbj30wn7jWX+OTbjTL+2NSmRdgi+vz7a8zhPby37AbvalTRs2Cx66S0CAF4h
         yDeyUWlOat74Ouxe02QKkS0aAsFpmXFpkuHleAhnqTbNHvuGGypZzuI7F9GavEWy2x43
         HLIEl9hfMrjRmlj3xyvY4SmSZDI3Kr3EfbmtQq2jbNkkJIXuPQ0SnImrOfY/9AgKDPrw
         Tdmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gw7/Lcv3WmsOBPCTneX2MoV5cZpfA5vxcNMw3AJnKxs=;
        b=DPC0n3H4n2uR0dm/Dk5e0L+mMvDB83+m+P2lj/8Lz2uXL/VKuPd1FUPSIRKxQNQR9O
         snmhchnyGkPmxgra7qnRbsQkukp/qe3bOmNEOsddnEMSlSjaoES/fwN2N3p3SIxv+7Vh
         75FOcjgLbQUKbWqLF5tjIq8ZRJ+TQnhc6E5XPO1GqLllDq0N4l83eX17U+nsBV/2j33g
         aKD9TatX12SRS7FyAmHdTMXUQuAo3U/R9wisbata8jqUnv72XUICksoUT+q65+TI2wOB
         cPrq6d4snLJa5DUQcMBJSl7ER12GV6c3cOmVmNaNmGtFHCAdlJsyLg647axxibvIcu1n
         biIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gw7/Lcv3WmsOBPCTneX2MoV5cZpfA5vxcNMw3AJnKxs=;
        b=sPoYdgjzPyX1J3yZvg/O7rLQpDMEyMYX9MIqySye6ZSQ4xdMbcuwX0zkT54/QYrSlW
         8VtQY7ztU3+tXnqkU21hl8Yqez5YgyXuBIoHvAFIUpTo0qR0seEZF8UEioMRrBagEnkl
         R/1fTw1ESU0MEygMBehfzmTKm+lAKqM0yin3RQvFkWwIyV3jzrYr/6FPZCftMIJ3jS5j
         HYDl8xMfk0P5U5i+/j0JQ8enOBCiqTM4HhnkqRH0ZqO3HKN7kOC0cJ6w6/G7BPiQmRzU
         ifrqUBULH0FEFEUEpPQMa/WSc1HoXxz8vCmtEKfUEXrC2oXQS7TxdiDx5Q4N75UAZHqe
         yXJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgEQvLgRS32JmQ0FilnlDgCru/QoiUIlBq8ddS5aaz2pLqR/zJ
	pu/RZuOJ2REZTiiG9tz6gA0=
X-Google-Smtp-Source: APXvYqyr7OhWjNo0mVRi9BQT3IejeTSW03QvIwJN2Fip25FuQbvTcGJqL6JUSJXQklrsBI1xa+28IA==
X-Received: by 2002:adf:eb42:: with SMTP id u2mr14423198wrn.351.1570832779359;
        Fri, 11 Oct 2019 15:26:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:c6:: with SMTP id q6ls3106067wrx.9.gmail; Fri, 11
 Oct 2019 15:26:18 -0700 (PDT)
X-Received: by 2002:adf:f4c2:: with SMTP id h2mr15303747wrp.69.1570832778800;
        Fri, 11 Oct 2019 15:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570832778; cv=none;
        d=google.com; s=arc-20160816;
        b=OCD1JW01O1mXbyE3wPTCh4UY6exbxd2BDE9HCv8ujjJ4t0AUrcfgnKgSHATmpSDPs1
         Hwnbppij8pp1CblMLcaX9QajdxxdgaMOrG4AHvpoN8wCgFhmQhdWequRMVQqEjDhQ6JH
         ACiTZXxtH1o1814hQS1M4Xd4zV1JuqM44IR1/RrqD+jPbESmjhuBCckckFiK0nBnyMoM
         CCZLLyq3L4KjUNfPCtm4SvR0fv723kWpGpUM3hY1sfPHYSUNaUWgGuNBbwGznq9iS1no
         Vp95yHbBmr6iBDnJ+Io7tXShQHjEps46Ex2yRr23ZqQ70+mtM7/a0ScxW4v6pHoNkPHi
         Nzow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xmHIYl25n4y/hTcfXXSO/nQ5G/kQTh9kEzA1dV2zubk=;
        b=PjQAIzBGG0p70KZ0/YKleLfU4WuGDoGB+pdtYPfpsjv4S4rH7xjoOP7I9l9OnyN5OC
         UNRYLV7iFbmM/uKL80nCUoMPpXbPT6YxCR8jbN6GDvu0/XazUFbHiQMGg+OSKdNV8TQE
         SDbLsY9xoqO8ZgU4EIcIhq41wu63DGgaMkqB6x36LQMwFrGlKWSdBU317iB84EX8gyWS
         rLl1bvmhOv+Kv9BXJRORXvMyFrZ6DCSc538rmyVh07o33OoNWdLB+Lm8QjELR0fnzUAN
         DOFMR6a05zPS5CDvIBq9cuQ91mOGuXx9S/4O5+IqRHrjAI62HPLfL+1AzyivkF1CiHM0
         108g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nqUsqy5Z;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id o10si787881wrm.5.2019.10.11.15.26.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 15:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id j19so11299556lja.1
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 15:26:18 -0700 (PDT)
X-Received: by 2002:a2e:8852:: with SMTP id z18mr10688944ljj.230.1570832777820;
 Fri, 11 Oct 2019 15:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
 <CANiq72kDNT6iPxYYNzY_eb3ddWNUEzgg48pOenEBrJXynxsvoA@mail.gmail.com> <201910111506.45AE850D5@keescook>
In-Reply-To: <201910111506.45AE850D5@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 12 Oct 2019 00:26:06 +0200
Message-ID: <CANiq72m9bHQZaOjcTr-266Bdy29HBVc8rOp2+szSnbywroNRhQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
To: Kees Cook <keescook@chromium.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Joe Perches <joe@perches.com>, 
	linux-sctp@vger.kernel.org, Borislav Petkov <bp@alien8.de>, 
	"H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Shawn Landden <shawn@git.icu>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Vlad Yasevich <vyasevich@gmail.com>, Neil Horman <nhorman@tuxdriver.com>, 
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nqUsqy5Z;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Oct 12, 2019 at 12:08 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Oct 11, 2019 at 08:01:42PM +0200, Miguel Ojeda wrote:
> > Hi Linus,
> >
> > On Fri, Oct 11, 2019 at 6:30 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > On Sat, Oct 5, 2019 at 9:46 AM Joe Perches <joe@perches.com> wrote:
> > > >
> > > > Add 'fallthrough' pseudo-keyword to enable the removal of comments
> > > > like '/* fallthrough */'.
> > >
> > > I applied patches 1-3 to my tree just to make it easier for people to
> > > start doing this. Maybe some people want to do the conversion on their
> > > own subsystem rather than with a global script, but even if not, this
> > > looks better as a "prepare for the future" series and I feel that if
> > > we're doing the "fallthrough" thing eventually, the sooner we do the
> > > prepwork the better.
> > >
> > > I'm a tiny bit worried that the actual conversion is just going to
> > > cause lots of pain for the stable people, but I'll not worry about it
> > > _too_ much. If the stable people decide that it's too painful for them
> > > to deal with the comment vs keyword model, they may want to backport
> > > these three patches too.
> >
> > I was waiting for a v2 series to pick it up given we had some pending changes...
>
> Hmpf, looks like it's in torvalds/master now. Miguel, most of the changes
> were related to the commit log, IIRC, so that ship has sailed. :( Can the
> stuff in Documentation/ be improved with a follow-up patch, perhaps?

Linus seems to have applied some of the improvements to the commit
messages, but not those to the content (not sure why, since they were
also easy ones). But no worries, we will do those later :)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m9bHQZaOjcTr-266Bdy29HBVc8rOp2%2BszSnbywroNRhQ%40mail.gmail.com.
