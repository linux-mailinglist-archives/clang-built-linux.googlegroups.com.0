Return-Path: <clang-built-linux+bncBDTI55WH24IRBZHLQHVAKGQEXIHNHCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id A84117AE6B
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 18:52:53 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id a17sf36076638otd.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 09:52:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564505572; cv=pass;
        d=google.com; s=arc-20160816;
        b=gIsiA1SW7nGsy3XoW0oXFMZE1xepqg5fOj5f1aCrZ93jBpViVgzMhk9kGKe2ly9yLT
         QNr7aCRwZK/WHMxnHHENngSHciJEPCdUFAAE+91IIy/258OOM++dPIIfHq4qFSQJ+ilV
         y8vOUG/XR3ARaDvHbfDaR3ZbffudVeRf2Q/phOeIul2+lxhZ8omIFUzci71aylrZmQXH
         kJ3n/mn2rdXMvl5aspMc9FjtU5K8lkRx2VJ3zdAGwR8Dh5ra927tRlRsm2R0bOw/ZLiw
         UI48rwhz0ZmgJDM8EHDR3ooz3lEDdWWst5Ct4RcT5rhtAGO1AOukXXpNLcYr+qaBN9OD
         Mvrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=D9RFB5AB5Oivybauz39WNojP0gkNyMNgj8ed7fzDoCY=;
        b=jWbkM+bk9UgP02/H7MsJFarLR/6Dyq6j4WckI/6gdFB5jXCAMcMUu6VqNsITn8kLLN
         2Z1NfgO03IUAYmdxgc/5mAmTTVqmEjtaVwz00ufgvKO9UUaD8zPanQC0PIa7C2eQPRRC
         2ExGv4X5TKWD2cO2bqKB1HynmRyEnNeSnFLzdZCxxxJUwxA+wDxbTmiHVCkLqhEyFuQy
         M8EVEq6LtOsRFzxIs9nyBoA6UB2/SK8u9I3PWfauUvPtE6XZhSeT61YXDR+Yxu1DscUZ
         JF4ThSoxFfCmLOC01KaqmDaUu0S9VF4Y4kTTlzK51e/fPjA5pWX9B3rbiVMDotf7dZKg
         ljbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FO4rYDDg;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D9RFB5AB5Oivybauz39WNojP0gkNyMNgj8ed7fzDoCY=;
        b=WgaNmIdoO5h468iflpzooxrluGYDBuF57KQmBGe5we7tWNRSIgqR5CRjGCM0/UwkQR
         83M43J30BSYm1nGmSOisOrb4uq2N+YBdgfcLbWq0KZ73CsbKUWf1ZB+hn7lK5/fRRrBs
         DzMhwpuTY5vj4ukNXNwLIZnuXn4x2i09+yrbotZ3UFK0x+f5ZGVBbNVdBOH92q9VyM2i
         hqClWvIwyg6d5TYX0sQlifor4yfH5ZU7I/rqygU2Ll1vqE1RkjYLV4n3kp+5mukl93w9
         uJtSD710ssn3Du0oqNNGZYXvHkogNsqyy72El3H6kl0xKmeLawUVXEIQ6xacXWLD7KBf
         7nQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D9RFB5AB5Oivybauz39WNojP0gkNyMNgj8ed7fzDoCY=;
        b=NzH1VZ8GK6HyKrHnNt1kHxcVvy0yAPl9jzAI4P47uPt0jhy9iwP3JfEzPXOLS/JEbb
         b5PdLn+0C1g7ZVNt6c0H5Vt/48FN3F7xtBNljF6pTMvTOBtfntCwWPLyIgATgbmcNKc7
         NxKPp3LE6JxnVGZvfJ57M1LJVZ+B3HjnwtHXHWckNd4UD+s/+xxSSVLBmEEcwBw0Lp+P
         so1wYPOADMajXW3G0rrh+NztLsFPj0Gk6Kx48mrEbYdMonfvR4lAo3ITl+DIdFts57wh
         RjbPlLSFmzRVYycAjAxZbZ5ish2Q0CyBlEEC8IUDg0pZvyqmE7Pv2jNj7ckcsjLu4XKA
         fP7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJXtwHMmGAt2F+TENK+UcgdTf0jFw7IsPNyfNoTSC0Fpq+l8qG
	wMt1HlEGER4D2xn2zcOUIrU=
X-Google-Smtp-Source: APXvYqxeHmfgCRlc/2zg6NdLENChR/fi7yDmbysn88Rk3fxH17PybwKfVf+hpQM4bQP+3w9FsD5Y6w==
X-Received: by 2002:a9d:7c85:: with SMTP id q5mr49047099otn.193.1564505572381;
        Tue, 30 Jul 2019 09:52:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4804:: with SMTP id c4ls12607378otf.10.gmail; Tue, 30
 Jul 2019 09:52:52 -0700 (PDT)
X-Received: by 2002:a9d:76d3:: with SMTP id p19mr50564380otl.18.1564505572013;
        Tue, 30 Jul 2019 09:52:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564505572; cv=none;
        d=google.com; s=arc-20160816;
        b=pmeSe2mcHO6wGRN3lsRrI/4fRllY7ED/rnBnwDwbkSN25PTIb4XICDEnmgvR7wthl2
         7xfJWJN6lyKSi5+QNVrHd1F24A+8Fimb1Vhj/plJ/s+fwydipUr5zTyCmXrsaCCkP5pa
         P+lDAyUnSOEOSO1r6fC2QQ0ODn6mj26TLNrvBGURtIkOmejZ2NQK7XFKpV1hMZbFmElJ
         RcA0gqhF4qiDaybFIs7VYvvCZUig4MjgJxBnAqmOo6bFm04lKrMgvAtFl5A9tHm+GYxu
         P2oF0VcQCz7Bb+0HkfgQ98vQhNrVsr1nsPx3rpf28dDGJJEBD2izgz+ap5vAo/X5+s2O
         CDPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=PvSEBqZWfmwsN/sOjPp2xPA9GzkBwa9v1B0DUjIdaBk=;
        b=e0OKylQ/Hn7HV76icE2J2m9IRpgRW+AEUIVLAl9fV9x6ilkA25uDNd7zb5Wi38UZG7
         9C/M+AueykV83LJqiXAKem6gQNaGFVmV3fTyQj4nUyMkrr47gLuQw1f1LB5QIzHLR/62
         r2pRnaOx6ahRNvWiHExHF7Q9we0xQRpvfvpq5zY70cGYUJ8Q5eSz9tGOGNeLGcSBzc34
         VLmDYoDEn2ePmc2MW1904ExtnB6RMIh5Dh3PKcfHVXrPrQy/K5Yw4svoZK8kFnB4bS/J
         xKVEB32GRq8gazlRaA0i0aU3xN3CllMw0LUXrqej50anJUrRFYr3j9zZg6jCNzEoamlS
         Uj1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FO4rYDDg;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id 21si3040685oip.2.2019.07.30.09.52.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 09:52:51 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x6UGqRgg004698
	for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 01:52:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x6UGqRgg004698
X-Nifty-SrcIP: [209.85.221.182]
Received: by mail-vk1-f182.google.com with SMTP id e83so12896040vke.12
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 09:52:27 -0700 (PDT)
X-Received: by 2002:a1f:728b:: with SMTP id n133mr45007335vkc.84.1564505546515;
 Tue, 30 Jul 2019 09:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190730164803.45080-1-swboyd@chromium.org> <20190730164959.GA129059@archlinux-threadripper>
In-Reply-To: <20190730164959.GA129059@archlinux-threadripper>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 31 Jul 2019 01:51:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNARvyxzJa9CG-4uSoE7asdHp=Cbeh71_13dmuP8zMJtqSA@mail.gmail.com>
Message-ID: <CAK7LNARvyxzJa9CG-4uSoE7asdHp=Cbeh71_13dmuP8zMJtqSA@mail.gmail.com>
Subject: Re: [PATCH v3] kbuild: Check for unknown options with cc-option usage
 in Kconfig and clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Peter Smith <peter.smith@linaro.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=FO4rYDDg;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Jul 31, 2019 at 1:50 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jul 30, 2019 at 09:48:03AM -0700, Stephen Boyd wrote:
> > If the particular version of clang a user has doesn't enable
> > -Werror=unknown-warning-option by default, even though it is the
> > default[1], then make sure to pass the option to the Kconfig cc-option
> > command so that testing options from Kconfig files works properly.
> > Otherwise, depending on the default values setup in the clang toolchain
> > we will silently assume options such as -Wmaybe-uninitialized are
> > supported by clang, when they really aren't.
> >
> > A compilation issue only started happening for me once commit
> > 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
> > CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
> > compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
> > leads kbuild to try and test for the existence of the
> > -Wmaybe-uninitialized flag with the cc-option command in
> > scripts/Kconfig.include, and it doesn't see an error returned from the
> > option test so it sets the config value to Y. Then the Makefile tries to
> > pass the unknown option on the command line and
> > -Werror=unknown-warning-option catches the invalid option and breaks the
> > build. Before commit 589834b3a009 ("kbuild: Add
> > -Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
> > but any cc-option test of a warning option in Kconfig files silently
> > evaluates to true, even if the warning option flag isn't supported on
> > clang.
> >
> > Note: This doesn't change cc-option usages in Makefiles because those
> > use a different rule that includes KBUILD_CFLAGS by default (see the
> > __cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
> > variable already has the -Werror=unknown-warning-option flag set. Thanks
> > to Doug for pointing out the different rule.
> >
> > [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> > Cc: Peter Smith <peter.smith@linaro.org>
> > Cc: Nathan Chancellor <natechancellor@gmail.com>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > ---
> >  Makefile                | 1 +
> >  scripts/Kconfig.include | 2 +-
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 9be5834073f8..517d0a3f6539 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -536,6 +536,7 @@ KBUILD_AFLAGS     += $(CLANG_FLAGS)
> >  export CLANG_FLAGS
> >  endif
> >
> > +
>
> Not sure it's worth sending a v4 for but I don't think this should be
> there.


I will remove it when I apply this.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARvyxzJa9CG-4uSoE7asdHp%3DCbeh71_13dmuP8zMJtqSA%40mail.gmail.com.
