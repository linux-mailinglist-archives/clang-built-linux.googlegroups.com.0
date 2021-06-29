Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRMM52DAMGQEJH3HOPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id C24363B7981
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 22:44:54 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id mm9-20020a17090b3589b029016e99e81994sf378010pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 13:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624999493; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNHBpCc2guJ2pdyKUw8kO+o8MvQ6fBx9QBGFk/lIdMUzHInK5cAYSgS/JH5kfcmuTJ
         AE4sfrjFD86WPKsA1pCq+4EUwaEse/Z2gqzvzFUYNKjGphoNRoulahGfvRCyqCl4WOvL
         HhHTtGF0eFYQhtyjo2fbfC0RjQmWdPqHGolN1NHOuX9PccMq9zKBbTfAXQpvcXYfKn+D
         5zVhblU7spMOG8CQm7z4o30GtgfYsk1aYE87D0XOj3IokPC6VXs8a0uk/E/HHWulII0B
         QM84C+lyWN5E6PYEfP4OUeyH8KcZGnVX4yfAGzqeu1INEqvgO+1RqHIcyZKesL4rvSbW
         x0yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1G/38W4IdVqQ4Xi+ljClBiIbHAdYBhcwBe6kRvfBuIU=;
        b=QeRdmE+6ictzKlj2+601Rf6bEBfBx3+TWQs48Jph5ZjA1RwMN6DXXeC0oAFvfapZeJ
         Wm87gUeuBc3oo42soknIERSYIr37ZzEHYTgzOfqr34fapVkJKGNmpq9Cnv2ThD2l4Ibs
         xPzHhHGSUGKfCbrCMtgD65/eBeNOvym5cv5cMl0gJmiRauVssS0NyGcw9Bs40AxrBLwU
         KNb7kiEDRWz1tmiqpY8i25y31rxSvrH6vF3ls9404rYehd1Nga7zj/9g3ihMOxqRp9At
         7mcheKyl0pDVkTKTLWwZ8QeySb9/rxbiU6tMD3+yZIA8TIYPWu3BR1KOIl5riD74OI++
         l+ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=K534EASL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1G/38W4IdVqQ4Xi+ljClBiIbHAdYBhcwBe6kRvfBuIU=;
        b=rZiapXtbP9qjHxWo6KzD3Gx5ihC659oWCTl2ghKTxap8seG3NVhvoJmVlcqSka3FJu
         catbXBOm27iczMMLZ+C3vuOGoDbzLvpL5kLn4uyaprjxuqXzK0EyKn90eQ8xUPbpBArq
         dvkEOzOMfb85nLTAkEDygbAUbfedaw09BDRG8kABZ7Ajljg9JW9C6izgcKkyWgql+qup
         XABM19GoDXteISDyaLj5sNagiC8bnEckrbR4wTMhm2j13kDd4P7GVbxsE8PqWuBYal7W
         UzKkkyg2OrJ664Uk1MQG03ISoIFWvGtsuJ25etiJqYoUXfRW8WVXG84Mw6E6u6Ck8w3C
         zeCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1G/38W4IdVqQ4Xi+ljClBiIbHAdYBhcwBe6kRvfBuIU=;
        b=NPv4dgyxGEopFwrx5vYxFw0zUFU54eAwgppxZDoLWoo+a+Oc6PS11HLmNrTlDvfi8o
         LBda8yLcEYkYcgTXitNhzM+p2AO/1c0Pq8D+Bm5Rabqz8RpVKOfPH6WGE4Ogk4hZ5ml/
         UApxifhnw6CtHmV6y0zVA+8y4+mYsdMUjpkgEFKXBXwJ04xiyiEDuggNlWMi4+HQmv6L
         r4a5NpOnwP/kP7hjp6eW6lWH9DQmXKUi7PHFaVFCb7hbH5G3/HWNtV5eYsMjQoOK7Xhy
         OERe5bny8VQCiYpjWh6ShrXKTLpoNJiZdwgNnLyRMhzeydDrvAOSW03c8QRjbXxb42U3
         VbzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311362CiYVJYZVCu/j8/wwcelXM9+W/XDbmNnXXpc24x1KQMG/Z
	nUcMtlCLVXMMSGC/F89VMnY=
X-Google-Smtp-Source: ABdhPJyCdtyEB89mRVvbm/Uya7k7jwsmmUs6vKORN3vyGvmFWlRvFH5NC1EEWLF1pBgV7lsxFrJMxQ==
X-Received: by 2002:a17:90a:5647:: with SMTP id d7mr20379765pji.115.1624999493262;
        Tue, 29 Jun 2021 13:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ea4f:: with SMTP id l15ls10999122pgk.11.gmail; Tue, 29
 Jun 2021 13:44:52 -0700 (PDT)
X-Received: by 2002:a65:57cb:: with SMTP id q11mr16492635pgr.430.1624999492760;
        Tue, 29 Jun 2021 13:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624999492; cv=none;
        d=google.com; s=arc-20160816;
        b=h6I2zwp83XLBH0A1ehDfflMEc0mWtgb8nwesfmQc5KFav9RD87q/hYL9851UkTI1v/
         N/JqGetvUhLxlJ4n9V69fcgGg7Tsq5xmFAdA92dgXqRuUisEJR8TGOH0hgZBRtb8prL6
         niA8BUQ2kers4/3pQT0CoMpjxV9cHy3qMbgveXzjCg4QCEwcJbe0HU5ix9lWBLSLoIPU
         44YxEYsyJA/apw9OYpgRe6Avmy3OS2Uo7HlRxwdHQ5r84TLBrpr6DD1DdXoh0FLgL8YX
         w5XIJP5X/HRmSjwlIXQXdoeVLr/jo4X/Gqqo/43kfkDiouq4pLT/8P8XlV1oCbwNXe3N
         Nd3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QTbTjV7KRsVKAu1VwHOJKbrx5NoERdSq3JOZOY+nE0I=;
        b=bFItbWDxn9OQ1ly2zhty7Zij1GdnyLSeTWbxypJDBJ66FEAkjS3DlcTNcaHVkVqEIt
         cCXVxdWRps4XlIax0R/9AeOAaK7wEX2HSYOdxZvrfy6ZBnVPoj8CPW0/qWtnWN+vlncH
         e7jsFOIw0up4xSZ1/8LiP5/qMYnsJbSmMa2I8NOsmqUk6yGUiQOm3uE4Uc9DEPBCLXKd
         WOtu+wkyhhoKKcH+30z4/Vy9Qj8BtzO8fTjuuW34Knp+7xz8PNaEM1iB6a4HYkk7nvti
         hhia4+ORbzd7PgeKbY80d+I33lHeDj7Yp5mzphhN41smuX2wfDQjJiPrdslcoeSaRDrd
         AeJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=K534EASL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id nl18si292475pjb.0.2021.06.29.13.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 13:44:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id kt19so342561pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 13:44:52 -0700 (PDT)
X-Received: by 2002:a17:902:6ac5:b029:128:ad84:c7b0 with SMTP id i5-20020a1709026ac5b0290128ad84c7b0mr19874994plt.19.1624999492442;
        Tue, 29 Jun 2021 13:44:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w14sm19755138pjb.3.2021.06.29.13.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 13:44:51 -0700 (PDT)
Date: Tue, 29 Jun 2021 13:44:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Bill Wendling <morbo@google.com>, Bill Wendling <wcw@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
Message-ID: <202106291311.20AB10D04@keescook>
References: <202106281231.E99B92BB13@keescook>
 <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=K534EASL;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Mon, Jun 28, 2021 at 07:49:04PM -0700, Linus Torvalds wrote:
> On Mon, Jun 28, 2021 at 12:32 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > The big addition for this merge window is the core support for Clang's
> > Profile Guided Optimization, which lets Clang build the kernel for
> > improved performance when running specific kernel workloads. This
> > currently covers only vmlinux, but module support is under active
> > development. (Sami Tolvanen, Bill Wendling, Kees Cook, Jarmo Tiitto,
> > Lukas Bulwahn)
> 
> Am I misreading this?
> 
> The PGO data seems to be done by using clang instrumentation, instead
> of done sanely using sample data from a regular "perf" run?

Right, yes. My understanding is that PGO is measurably better than
sample-based profiling. Additionally, it's arch-agnostic (not that that's
meaningful here with only x86 finished), and can gain other analysis
features that aren't possible with perf. I'll let Nick, Fangrui, Bill,
or Sami answer this more directly.

In the meantime I will split the pull request into "PGO" and "everything
else".

> That odd decision seems to not be documented anywhere, and it seems
> odd and counter-productive, and causes all that odd special buffer
> handling and that vmlinux.profraw file etc.
> 
> And it causes the kernel to be bigger and run slower.

Right -- that's expected. It's not designed to be the final kernel
someone uses. :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106291311.20AB10D04%40keescook.
