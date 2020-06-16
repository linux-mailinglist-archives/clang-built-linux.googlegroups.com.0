Return-Path: <clang-built-linux+bncBDYJPJO25UGBB45BUT3QKGQEIDMSPRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEA71FBE18
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 20:35:33 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id o23sf2897244pjs.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 11:35:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592332532; cv=pass;
        d=google.com; s=arc-20160816;
        b=tzXgIwv/oqq4c4vLqkL0XX1lCch5xAZYz8vXxFiAe7HpagpwtAT1KLsdxB/zWuxlXJ
         Eg7/VVB4flntpWBJHvTWIfVY4w/WRuRI+/2vYO0C1OlM/smINloiVE4KsxA1KWZX7Y8u
         V8v4zKnQfkpMtbysWWdztjKhBw+VOTfe86lBEBdxgSaksaeCLg99X0hdXkRdBRoSMQUA
         JUZLD+mjd+yKsky9GRx1bOJ/op0b5TuV6X1qK7wfxYTtqmzwuzTqBnaJtndfAdVdpqGY
         TOZ0rIW3w4EqKegZUjYwoL3AXZnBCR5UBLFV/cO+DchFauewcnA7w1jHkcNDtNcjA4YZ
         rgJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q5FILNUAuyDPf94j2yUpSKiQrXg2GBIfkbk/aJ/3Yl0=;
        b=o9dnvGJoWeOy6UXaNcM6vPCsf8uMuL9ponMslfoNSBukUDLS95fNpBwsI1or4CgAH8
         /3ViasGpu890UWxUYU6WAKoEWNw/hfKxInWr2+Y7ToW/RJCYdJsD10j+kxiQRme5JohH
         mI1W+ryOve8ON+R1N84RSghA5oFynruwXt1c2MVAnMXKWpLleXgL7pYI7zv6pAbD2rpP
         I+gWykGmjZFcFfg0U2X4SK7GuTf/sqCXYjlC9Jb78Bre23ueLa3fWKgbKJjG/NpsPV70
         4rcfq8SWp+3MkZUjhpKCZztIQEnjoKH1L+yCF0UY6mdSDO3rK9kHSJG98wEGgm65iUUy
         N1Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQJdgGl5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q5FILNUAuyDPf94j2yUpSKiQrXg2GBIfkbk/aJ/3Yl0=;
        b=hmqiPM35i7Ka/PW24mOJcMQqsSTevg/0kPnk74KVHS31PsZysSMagAp7WZUkupKf7F
         USDBJ8W837ExXoF/nEVEproTcElanlda5gzxBP0Os4/wNodYvBSWg3t6kwIOn3joyzqS
         +PR9b06lpAUXpD6/t5vLeZ/sXg8AgXyOS9Bh4yLI8HnX2tIzGdepVgenlPQu1ovPC2H4
         lFO0tutbMgOUiY5/0fPIoIToBZQPMmvd8NAWzJ6MZmDCsxC4tJevLtvEnlLkFRDOUFYt
         aNi5O6776bA8PQtVRHU8p5xBS+0hnznGUhCIh+D2w81xZ8dgdzYNG9q7eQxyJaP5i96G
         yXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q5FILNUAuyDPf94j2yUpSKiQrXg2GBIfkbk/aJ/3Yl0=;
        b=sQshiW3XPCbn3CXGtu6+0gjUri6Wo4xQRBLK2qM/JNL1yk79QO5oUqD7rD12YH1yoX
         lO25EAk/Rrsw+fsUC5UWuVRoTnOojzyTd+FSPIxoRbxSDe3547jad8QGIEIyjchJUPUJ
         /JwXBqnhb593rPnvv0FXqXT9Nyk31aVY+kWVYQpWYIGtxWQbj2NWuVDLpsHvyjy6LHbl
         sdKVe7HRADUJnRY4udrfjq00COq2ORGsk4t/s2XYK8Lls3xWIeDXBpMVHBWUz2LeLmDb
         p16vZeNcjlORs8pfTNp1NczQSweDrPVGgLIK26o8sFJZEH1aJIPQp3Cnyg/mc2H+lgTw
         WpSA==
X-Gm-Message-State: AOAM532J+qGL/aq2UNuGO4wHZAk4e86mmRexFo3T/wK7CZ38SULMnvsc
	Ylbh2u3Z6K2pjjKdY5cRnfQ=
X-Google-Smtp-Source: ABdhPJyKbYhHTTtTWKQqjxZVlstLWYE55Auz/PMdBHejUmAdP8nhQtm0p52FMSMeElBXbo1ol5K7Ig==
X-Received: by 2002:a63:4cc:: with SMTP id 195mr3106153pge.294.1592332531556;
        Tue, 16 Jun 2020 11:35:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8858:: with SMTP id l85ls4871055pfd.6.gmail; Tue, 16 Jun
 2020 11:35:31 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr3143431pgc.12.1592332531135;
        Tue, 16 Jun 2020 11:35:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592332531; cv=none;
        d=google.com; s=arc-20160816;
        b=gaiy7OdLFbjkjjQ6ZjvpCGG32AD/XP6rIQM6qP0S5ZUDMjajdjqejF7tAqaLFITetQ
         JB0n305TLMyz7U3Gxh97gzXvye++8zQRcWoOlHgFvpSus6ENPabmEIrttjUppwYJVjeW
         ZA3joRnYP4aO80uEX/ZdagZ5nsbf+mjG6dA/SnjPwhZn6tjKY33v4TwKNJW0MqZ6zRie
         APVYWkB5s1qquhHvcq9a6g82ddqed38zC7a7fahQaEOk2UsxOGpI01X1avpgCWW/0sdk
         ZrT0NiHqpZ2OCXELFNYtk3DhsHKaV8qxt6jk7+YdF0/djg5l121PeFcCpJhx0rkC2C+D
         rtpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IH9VVlN+Y3oFdk9wXuwt995Uv/M65orCpR16OYHXQQM=;
        b=SyeoQLWtr8Jtq7NfG7uxtYGVOQubzKkBHu+quHNEzQFixN5b0sMuow2Xs+Jl/jUiqD
         /dX59bab009neEl50VM8jIPAKp7X7W4LJvNiQfDzaBca7VLe3FalSE01X2c+v/yevvEC
         gq6H+id45uGlByUW5broLHY5EkSyAjYuxI0ptL0IJcHzRpav/L09eNIsBLYq2ZOH95SS
         /WBKpa101eawe7PxVbVCn3gk5U8Uj7T5Rh149e0hK9SVCqOyPf/S39D5SU7pWno+yFvm
         ytQ3JqwC0rZGaqIN0/QvVCnnxjxNTbwxQXy7Me5guiswmWJInBmzW/HmGw97Tu8V97sv
         Z7ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQJdgGl5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id x132si920546pgx.4.2020.06.16.11.35.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 11:35:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id s88so1987880pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 11:35:31 -0700 (PDT)
X-Received: by 2002:a17:90b:949:: with SMTP id dw9mr4211084pjb.101.1592332530503;
 Tue, 16 Jun 2020 11:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200615105524.GA2694@willie-the-truck> <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck> <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck> <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
 <20200616175519.GD2129@willie-the-truck>
In-Reply-To: <20200616175519.GD2129@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jun 2020 11:35:19 -0700
Message-ID: <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
To: Will Deacon <will@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Mark Brown <broonie@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, android-kvm@google.com, daniel.kiss@arm.com, 
	Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iQJdgGl5;       spf=pass
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

On Tue, Jun 16, 2020 at 10:55 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
> > On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
> > > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> > > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > > > > reviewed so should be merged shortly.
> > > > >
> > > > > Cheers, that's good to hear. Shall we have a guess at the clang release
> > > > > that will get the fix, or just disable in-kernel BTI with clang for now?
> > > > >
> > > >
> > > > This will be in clang 11 for sure. Tom, would it be too late to get this
> > > > in to clang 10.0.1? If it is not, I can open a PR.
> > >
> > > Any update on this, please? I'd like to get the kernel fixed this week.
> > >
> > The AArch64 backend owner said it should be okay to add to 10.0.1:
> > https://llvm.org/pr46327
> >
> > Tom just needs to pick it, I see no reason to believe that won't happen
> > this week.
>
> Brill, then I'll tentatively queue the diff below...
>
> Thanks,
>
> Will
>
> --->8
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..4ae2419c14a8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>         depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>         # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>         depends on !CC_IS_GCC || GCC_VERSION >= 100100
> +       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>         depends on !(CC_IS_CLANG && GCOV_KERNEL)
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help

That should be fine.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_0W5A%2B%3DC0uNfFfU2%2Bwb-f4MA2B_P%2B15KWdGsBqfZ9rg%40mail.gmail.com.
