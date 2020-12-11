Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBKMSZ37AKGQETGJNVOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3433D2D7853
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 15:58:50 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id e68sf6836891qkd.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 06:58:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607698729; cv=pass;
        d=google.com; s=arc-20160816;
        b=CsNCdXKVguPlGS4jLD18BAY/miq0AWFJT4J+/OcMkyI0Sum9raKgE4qQnx6LV3qs3y
         llPnB5M+f3jVAnEtbJPGx/BWrQXgdQsQ+F04iRJsnC+4uf1sLHQt9xyBdFs4nJNTLbwl
         KEbXWjC9nktOH1GyglYRmvAWVpCa3y/P2rlcZETicIk1E3xzOjW0/1mCI93TfM8c60x0
         Zw0R81AfTVCDVHmihGuD/cv8lpFf6t5NNecuYx4m3NepH3hqsSPSrJDEUSVAcwpphFr8
         bdDK6C6m2yrIDVYnbovCHo7sQH2puiBzrYTAdfLBRPp7YEQqXjH/obTZY/rHYDTlLFN2
         Plfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I36kgwggTQYEqHMeQXVSGYCti6jbH+Ea/hDE57Azog8=;
        b=mj8h1nk2Keum/+eMzJCc/HsaRNpnSFaFJ1idhvRU3ORxeyOUgjz0ee9Sh8ENyAcIG8
         s3BTBiEdF2EJ40qisN7cFkSMLbr2DLUO7Stdejziu7t+LwuVkq/mcM30DFILKhw+hXcV
         Eq2p8lVGVTYg/ZkWbt9e4E0TMWELaVpA/tkcJzHIEDAcDcz98eZbWvyga8GbASIlxqwX
         djxfORDmAWMnqjesJhvG3LGqorWMY45Sc3N50RhxTndKzp1mH+eNcw1YW1MMxBMQ8dVz
         zV2XOPTn02D6zgRCW8ydCuyKWW2EXcM39hjj0TH7sI9s8v0OXqFXfcgp7ncTodcpm8wD
         kBlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=E9cc2Uo1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I36kgwggTQYEqHMeQXVSGYCti6jbH+Ea/hDE57Azog8=;
        b=O4hAPFVFSpmqXAxrbokgHEk4d545u8/sxRHzA1RGsatowIQh7hsJ5GJ+t0hiq5muc1
         MbojuAWrPQgRKY8C93kd9euf8/hfn31iGPlf0c85jD+EayeVd6laODeWz31AABPgAy3s
         kCrqoj/EaP9VX14zpzG8DouvBWg9eAtUK2Ia9mluuqmv0DeupXp9jerRcSuDwmxnFT/K
         Ygg95JnsrVdfGyyQobQ14543gEoqbvqGBTF8jUdTDAmCiik7JJ3lD8MWLgvIO61tr0CV
         MkchcCtQME4LLqpgicVrw9pzL/3joP6DVyqMq70Aj5MT8ABMzexVGIrg5dHCcGKqhPEG
         wWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I36kgwggTQYEqHMeQXVSGYCti6jbH+Ea/hDE57Azog8=;
        b=RSExISOkJcrRt43IUSGlkBZ6TKBXPrl7F6erO6VVJKmvUD8oN7mSdzTUdYkfpCQGAk
         smAvmcYoD9T2Y7cah8rwyzef5UszL+LEYBPJ1Mb1VPbc99ZThOfIAaYnd+8dbcBBCHqY
         7jiYE/i//CP605qhTjMpUW+nCEi+fz+xVAd+BmYpYTL7arW5ERwrBftJC+A/ApNgUNay
         oPmmXRlDjZaIAZqaN47E6bbNoItzp85r6oYVP1PD9wQg6KJJ481ebLpPum9G55qMXb1v
         r3DA85eaj75iPCKw2ucOalfa29OaEfso7jcUjI2uiq7T1flXhZTl23Oup2tT/ldtTyJN
         N1bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53309RNRcvOtO2pbebZoRHw5SOb//CqaBqO/ZIhY/R+tbqb9HeHW
	MontepkxFrLkvnMZmPlnG88=
X-Google-Smtp-Source: ABdhPJx4upqAHsbEOBA33GkwV+WmTIEvihFYPOygXEdh3bo4sjzoc/+2gjN/sle5fIwwPFV7Rwhjag==
X-Received: by 2002:a37:a917:: with SMTP id s23mr15994099qke.214.1607698729239;
        Fri, 11 Dec 2020 06:58:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15f5:: with SMTP id p21ls4296143qkm.6.gmail; Fri,
 11 Dec 2020 06:58:48 -0800 (PST)
X-Received: by 2002:a05:620a:1ea:: with SMTP id x10mr16708855qkn.90.1607698728822;
        Fri, 11 Dec 2020 06:58:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607698728; cv=none;
        d=google.com; s=arc-20160816;
        b=0nc/O7wNYDUReN6ZXS/Eq/45t53OTJbvpqK54KbRzLfCJmZmzs+fFj5c1brclqZ51J
         pe1VbJ/XTH7F61S61SiZ7t5lp+WPbqtdwXSV7cKY8/z844c1WRgVd5fLxtW7zwa7xi4H
         3uaUgdnfK4EGFUyQ9OwQ4EOtT59kkAP0tWnTwC70xlOlz/mKfFM0Zh+Ci4tAOPxMw+B4
         UlNj05KFTlmX44e/dSWvvDgDMZG4DpFFMzyVGD3h9Vn1dH2A/9P6vZ34gKDOAe1pP6rQ
         72gyX0yry+HJobs6zkhpgckIXkPcPiGhsU/P92fiMqcqxcTJMg7huhEfCSOnrW7vuNJ3
         9SpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=3Ea4+NjL48OjjPNmQbk4cOP2aOLJcvE2q6wtrcL41CE=;
        b=d+eXF/FlJtSDFtMc6mGm947rH6krPxNMMcmfVoAB5WRbfRmiIDV8HBh57rHEXbyYs+
         V+i2RY+1hDf3dOExAh4lruX4la+Li4fJo2yhczct1Hf1w97izTAzIpqZOXrXlQvG73BT
         P4jcRgyCbq4vU9fQ6p5iBzQ69SET21dHS2dLXuhAFxIXx7DEysKw9N9vKl0NWHKfMhXK
         z8wgUCtTzgVCK+nXWK9bCSeWr7AhUkR/Ol7OtsqnKfMsGPTKCFrMUbIn0OLpUY64AfR2
         hhcUJruJrnhRfFXcVsJI0ZO8XpJjx5zwXn2X+zB8EsJszGIAwYIrGyNziVuKXtO8GBiT
         s//Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=E9cc2Uo1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n18si591667qkk.7.2020.12.11.06.58.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 06:58:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Fri, 11 Dec 2020 15:41:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jiri Slaby <jirislaby@kernel.org>, Sasha Levin <sashal@kernel.org>,
	stable <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Borislav Petkov <bp@suse.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: 5.4 and 4.19 fix for LLVM_IAS/clang-12
Message-ID: <X9OFFjzAQQVN+qgm@kroah.com>
References: <CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com>
 <a3b89f95-2635-ff9d-4248-4e5e3065ff85@kernel.org>
 <e9695da9-8b83-39a5-8781-47ae4c7d2e51@kernel.org>
 <CAKwvOdnUe3_fVCoxx2=bF=E8vsuOJMoZHzCfB0ES1dPU7q_PDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnUe3_fVCoxx2=bF=E8vsuOJMoZHzCfB0ES1dPU7q_PDw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=E9cc2Uo1;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Dec 10, 2020 at 01:15:29PM -0800, Nick Desaulniers wrote:
> On Tue, Dec 8, 2020 at 11:21 PM Jiri Slaby <jirislaby@kernel.org> wrote:
> >
> > On 09. 12. 20, 8:20, Jiri Slaby wrote:
> > > On 09. 12. 20, 1:12, Nick Desaulniers wrote:
> > >> Dear stable kernel maintainers,
> > >> Please consider accepting the following backport to 5.4 and 4.19 of
> > >> commit 4d6ffa27b8e5 ("x86/lib: Change .weak to SYM_FUNC_START_WEAK for
> > >> arch/x86/lib/mem*_64.S"), attached.
> 
> Also, first landed in v5.10-rc3. Exists in v5.9.7 as
> 305da744c138487864a46b2fb0bd7cf54e1e03b4.
> 
> > >>
> > >> The patch to 5.4 had a conflict due to 5.4 missing upstream commit
> > >> e9b9d020c487 ("x86/asm: Annotate aliases") which first landed in
> > >> v5.5-rc1.
> > >>
> > >> The patch to 4.19 had a conflict due to 4.19 missing the above commit
> > >> and ffedeeb780dc ("linkage: Introduce new macros for assembler
> > >> symbols") which also first landed in v5.5-rc1 but was backported to
> > >> linux-5.4.y as commit 840d8c9b3e5f ("linkage: Introduce new macros for
> > >> assembler symbols") which shipped in v5.4.76.
> > >>
> > >> This patch fixes a build error from clang's assembler when building
> > >> with Clang-12, which now errors when symbols are redeclared with
> > >> different bindings.  We're using clang's assembler in Android and
> > >> ChromeOS for 4.19+.
> > >>
> > >> Jiri, would you mind reviewing the 4.19 patch (or both)?  It simply
> > >> open codes what the upstream macros would expand to; this can be and
> > >> was observed from running:
> > >
> > > You don't have to touch (expand) __memcpy, __memmove, and __memset, right?
> 
> Sure, attached a v2.  It's actually a little cleaner (smaller
> diffstat) that way.

Applied, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X9OFFjzAQQVN%2Bqgm%40kroah.com.
