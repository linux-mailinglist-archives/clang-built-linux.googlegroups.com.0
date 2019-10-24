Return-Path: <clang-built-linux+bncBDTI55WH24IRBFXPY3WQKGQEPPMJTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CADE35B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 16:39:19 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id p17sf3106884uam.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 07:39:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571927958; cv=pass;
        d=google.com; s=arc-20160816;
        b=iVJponQJ/1yfblcmJtX0h45trrgd2NAHMIOhC33LQWHwStQHuK+JgYoNd5guUb4TXI
         871371Sxj0wNLNbuD2Un/E3/dzPMtKGFEJb/Os2tjn9A3i6B38Lhf4C3KEt+iQ8FPgOk
         Uv+UYMBdRJFMYzsM7uD7Ajy7F8euIVamp4JqBZ37TZjhxGML5GcPcg5gwBSzdNy1pCqe
         M+LbUbFwaJCuzv2tdCPSuvh0pPLUiMAm6KpkARi9kkMM0nHVPom7iJ0OlWYROmW/NE3S
         o4VQDjeLJiJGVxDQTxH3dtd4Vb/+Dyd6teBfMkR0H4DKTW8kg0gL0Un8ji+bZ2H3gQzC
         MPaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=TKLExtgMRRlSbRqlGMV4G/VVsZXkv6gwbn50UQr/5ps=;
        b=cHG6eD6JwhwyO7jEIYQdF8NDpTrodbO33sNjHM/S6z8DQwy3TDeMROLXGL5S6KZrPL
         i0tkx/gejD+sVhHNVYPC6bbFptu5jCLL6Wvvks9rY+oq4CnTJH3d5Qwu/1wu/Wj1jbdO
         IAA3lq1QwZcK48Jd6NE0AxZug4DdN+xeCSbs6euE74QrwoOfPAzBsroHTC3qtGKJ20kk
         fH/ST5Q/hecmNHhO6mjn8RppmMtsROTCT18Z2Az5T4EfYvYfLHfcKyO14KBIHCaOK/6J
         vS164eGBM/EmRuZSpepFOktuh9udj7YbQxbly0ZJOZrzBl1cp2h1hQyL7ZqJ951t9qC1
         Ja5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Wsq8rdKb;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TKLExtgMRRlSbRqlGMV4G/VVsZXkv6gwbn50UQr/5ps=;
        b=AjbiEUpdlY3yg5HkhxnvbTFLpLkkrC8sZ/kEcXs6rZuiVv1byNS9cXpP/FZPdsAqge
         NC8Ql5qyPMoyObDyXprbKHFB4miVbmSe7pXMkSxXeeplJBIGb8qIbsfgSkASROFwXmHG
         W1reuf+lh7DeZUOmwlNqSF3BA7l3WzK67BmvZxX+gj4TM7kL1ViZDauv3VvvJE+aivME
         S5pXxhpffHMWmRjjKOu9bnfJXdgzRBonP8Nn1wi3eLVmEZGdA/NHIHig/Zu6eKkOCSuH
         4JCvCA/84vOdUzVtoGQrAJBrTt2wS1M7/a9LBaTJdqrBCHpaKxc5VE6Oo9nfAR5GTSRR
         jXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKLExtgMRRlSbRqlGMV4G/VVsZXkv6gwbn50UQr/5ps=;
        b=VXdhOeYqijEdar2X5Z+amjuMrV3aTY4aoZDz5FW1q3an7gOAzwCL79nd6HnSDCn6ZF
         z3OsyDLvfLeaL00QUmaJ00kGsI6XaReomXLt7egmEWRcbSxNf3eWnnAyDsD36+XfKPe8
         p7S6UJJJ3riVippYl5DyxrKjNjpKX5YTO+07i/zyH7BVa3aodL4uO9ulfcPojKMv8t2J
         BNvuivxLYXo0Loyoq4pb+kNW4Ub1Cpu6u2F///sj7zJKQyTmaTUFxN/eUuLfHZc3BykW
         2CdCiUnpYskviVGqdci2gVgp1zAXvfikRx0e8/P3LeeZwIhMsYb/T04Pq1mKm1/ebVG6
         0gVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOQeA64c5vE78hVIPlRX36eNzuWQz2VUr7uTTN57Jf2RRDfceU
	hus1nKztPUJjahwZYhsOoRY=
X-Google-Smtp-Source: APXvYqzBCzXtdB1STFDK85/P/ofRElrjnlH/EY8+sW+eOuadCDjMdG7WK91PDt2hJ60Igy9Pob0Myg==
X-Received: by 2002:a67:1643:: with SMTP id 64mr9219017vsw.62.1571927958266;
        Thu, 24 Oct 2019 07:39:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cde8:: with SMTP id v8ls234216vkn.15.gmail; Thu, 24 Oct
 2019 07:39:17 -0700 (PDT)
X-Received: by 2002:a05:6122:328:: with SMTP id d8mr9096942vko.14.1571927957702;
        Thu, 24 Oct 2019 07:39:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571927957; cv=none;
        d=google.com; s=arc-20160816;
        b=Cb5XwmrFpkzoD14eTLkk8ed1GjwoAUEXs74Uw/8T/POYBa1otsUb4jrBYFICJYqIzv
         bnu5hKQIbWCjAUOw6DivMsABqKZ7/P6xtGrZxnO+j2QTl3sgSgAs2xS7HPG10HDZg3+E
         CyE5b3nopi2UQqBav9FAJKOGkBpSLowmiydgXKUOQirt9ya66YI1gae7fPomfZdVDJbX
         qpKrsibx5jtBnpdXjgJYW3UVH6BN7Ogb0gLy/SQEHXcyDXwVBWS2fIyPrceWErZpCfeO
         f9m9fmM7VRw1xo2H/6acyGdJFZTMr4QlZlL2frHQUFj/u0zFawtcyKPhb9bw/vIabrfY
         tJvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=5VDOJqWr1P/8RpUKJUiUUgzqRYMuViQTbISV22/DfcM=;
        b=QNS9bjLvlx217ptn08hyh19hm7vChIEpIu0QpKkEYr4g2cMwV5Rdsyprbu+MJYXLjG
         zNOYHo279JeFC+65dCARTbXuFcXqBb2DFrZpp3s8r8ElOgpxHJuMoohK37EOYFSZbmpG
         Xrb9yyCEcg7Red+cMf+mqx/FEcB7ohbAObZ5rw5U74q+IuggMc6q3pNbX3U2N4vM3haq
         IpMJhmsGuw+c5eqGlGqV0OOdS/JD0hQGk9EfmMbgva2wHqmlJpgzZTUkwax/py59sdBv
         fGNSqr5WDU3TfMPdpFvTVbZUSW61CWJLIplUjEkeZqNiP31+zlHnX6RbIlImN+PN6lMz
         qccg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Wsq8rdKb;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id i13si1400962uan.1.2019.10.24.07.39.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 07:39:17 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x9OEciix007336
	for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 23:38:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x9OEciix007336
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id x20so4655657vso.13
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 07:38:45 -0700 (PDT)
X-Received: by 2002:a67:e290:: with SMTP id g16mr6201871vsf.54.1571927924100;
 Thu, 24 Oct 2019 07:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com> <20191024132832.GG4300@lakrids.cambridge.arm.com>
In-Reply-To: <20191024132832.GG4300@lakrids.cambridge.arm.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 24 Oct 2019 23:38:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQWjq0DoTD6LkQfRSMz6sS6_SFapd5YzKjz2U1ZmFEm9w@mail.gmail.com>
Message-ID: <CAK7LNAQWjq0DoTD6LkQfRSMz6sS6_SFapd5YzKjz2U1ZmFEm9w@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
        Laura Abbott <labbott@redhat.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Wsq8rdKb;       spf=softfail
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

On Thu, Oct 24, 2019 at 10:28 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Oct 22, 2019 at 12:26:02PM -0700, Sami Tolvanen wrote:
> > On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> > > > +config SHADOW_CALL_STACK
> > > > +     bool "Clang Shadow Call Stack"
> > > > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > > +     depends on CC_IS_CLANG && CLANG_VERSION >= 70000
> > >
> > > Is there a reason for an explicit version check rather than a
> > > CC_HAS_<feature> check? e.g. was this available but broken in prior
> > > versions of clang?
> >
> > No, this feature was added in Clang 7. However,
> > -fsanitize=shadow-call-stack might require architecture-specific
> > flags, so a simple $(cc-option, -fsanitize=shadow-call-stack) in
> > arch/Kconfig is not going to work. I could add something like this to
> > arch/arm64/Kconfig though:
> >
> > select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> > ...
> > config CC_HAVE_SHADOW_CALL_STACK
> >        def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> >
> > And then drop CC_IS_CLANG and version check entirely. Thoughts?
>
> That sounds good to me, yes!
>
> Thanks,
> Mark.


If you use cc-option, please add a comment like

    # supported by Clang 7 or later.


I do not know the minimal supported clang version.
When we bump the minimal version to clang 7,
we can drop the cc-option test entirely.





--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQWjq0DoTD6LkQfRSMz6sS6_SFapd5YzKjz2U1ZmFEm9w%40mail.gmail.com.
