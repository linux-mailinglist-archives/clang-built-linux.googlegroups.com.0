Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBU7MTD5QKGQEVL5LJUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA90270FA2
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 18:48:20 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id h17sf1601322lfc.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 09:48:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600534099; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7KBqj7xaxak4uGo4GaUsXs5aeNHRthOC3guY2SwMyt0W8OiRpEHLZIlBiyS0ImvyC
         jFaNThOl5JMa3Z4AhbyjLiqxAsnTyGRoVFT16A3IEibNUK9RyG0g4SsnW0zLqKxzNEb2
         ve5JYMZTeOpawSKDRru2DUO77oVfvpQADGz6rr+ElaY7pw/c3MFyZDLaWnP940yqJQxt
         tUndwi4SLE0poD1pBYLAe6lYEh5WC1QglBMFSOQ848Rgn4eRH/In1bFmEGQ3Kv1NE2uj
         juylGB9aRdLYyJAcFcCWtlQPc//py+Tk0cmY1dc8v8fWXZxD3dyWEK7tPc0FxK6UVvVo
         CA3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=koxSSQBepsBOl7Q1gSGlmvs+mXlzENYTOLUKppi9C0U=;
        b=Pn8SopwPHuF9v7Lf4kYVq7qlwf60f2p2lyfttLv+4GXsIzopXMWsri0iW6xxHZiBvX
         dVGbmZ9vdShDTbMuVt9lyR9z2CcM+pvLNTVgHEMFLzqd6hXIJa4TwaavHPG9z5Gcp17T
         Nq9dXgm5tUrPb9OQvhWSMdfHIfSzlrIN94nQZRuxKl32pwNGP6bS4XKt9yl7tgKYLSpT
         z4aEzQb43L6ICz3FvY0asc1/ZQlPumry5DzDX5fNMO2WOlT4TnHuBgJ8B9KQ9YhxSbJ1
         xa/GyO7BCa7IfwBfSsR4VNbwdoPJ3svobq3n68uFMANWpwuwVzy8Z1i5d3AkCFR/OeKV
         hUlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=koxSSQBepsBOl7Q1gSGlmvs+mXlzENYTOLUKppi9C0U=;
        b=E9v2tdxMKKiEt9TBavwCBm1a8oOe3UST3QIHPvKP7W7jUgadjbpVRpyMcIwDDmHZLt
         tyqiq6jTsGrc9ePt1Q7Mk+rwnEwFvP+zKp2GU1iEwEEofUxMYsFc+gTTWjW9SFW+/wXT
         bFAs1Oc8yPwG5MNwQuJi44vpHr85V7h0bCIY61Rt8qWjmy87B27gC90jPFqc348nq13q
         sBZgAoeo+Hgnk8cldSGVoqiZdes7BimP6ATeZaWSGN0Wpvc1CQP3aDfmh0pLFW892Bx0
         lhfhyHGBDUZCC8Qi/vMcTzKYhLWhQv/cAdNkDn5jhps4E6mJ5tVdkr/JzQ+cmmWJ4yuH
         KnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=koxSSQBepsBOl7Q1gSGlmvs+mXlzENYTOLUKppi9C0U=;
        b=QvPhmi5IXd1PaAgJnpZRYkMFQsTTwmhbpniHfmQ2/lnviNgb9vBLPPVhY32T4ZK9a7
         V9iceKqUPLR9mYyx76SoT9fGpGM6zkNnhPeRo7wiMgJPBY+NaAiI+vi1c8ogMpz8LO6v
         QVqES0jokooVZhZ7GFWP2UgE2sgYMH5eQFOWE5TJROuO1egJQwVkQcCofhMNAZkhmyZJ
         0tGYTYMkTnEZhiS97M7aZV15mxIpUZSIIiU2Xe4OEUaD7lJq+e8lUdFXFBqcnZwejE5f
         r0dNb+3DFVV95Qn8jU95uR1hVOhVzGMR5Pl1j22v2f12TRe5twfbN1TCf+qU15wRcxTr
         2lgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gQYM4VPrxG3cwF/YikfcgBEjlvI0MD8TL1iovqjT2egEEuFou
	Ng7CLGx6XhP5xZI4Ka1+RW8=
X-Google-Smtp-Source: ABdhPJwo5qNmfhNyrulqXNDWEym60Rjjd7iiUq1bL0YFzKKJaw6GM8wGVfB/BivRpsxen7YPBmDK/g==
X-Received: by 2002:a2e:93cd:: with SMTP id p13mr13999553ljh.460.1600534099635;
        Sat, 19 Sep 2020 09:48:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0e9:: with SMTP id h9ls1199826ljl.5.gmail; Sat, 19 Sep
 2020 09:48:18 -0700 (PDT)
X-Received: by 2002:a2e:3509:: with SMTP id z9mr14057810ljz.395.1600534098487;
        Sat, 19 Sep 2020 09:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600534098; cv=none;
        d=google.com; s=arc-20160816;
        b=cj5TRFKroqbfrjjAWvhYOfDwjTMgDgZfNjSudKpxEVGaBGhrQM24E1TTfjgY6ngoUC
         A/TtsoyLQC9UJrpAJo4Luh1rZxo3y0LLSXqB6Vi6I/JVgwOeA0kyZ9G2rYLw7Dx0OgJr
         ZFZIYcnbLA8yvQEXITyt0s/zzgXhawe4+KYq4n0J8Hl5w8UQwBgbv8t+8EGLRhEb8cmL
         TT2TK6VtY9JHO/jL72u11tffxkHv0MzHCkqI9ufm5rs5CUYpUVPIgu77eGAlFkI+QjQU
         HoddAuMbhPLV81NgW+2Pi4pGdEKQw/yO7k87jH97jZxm0wRZbCryfEKpkMSRIFnL9pPX
         IJLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6Ty7AtbJgCe3c1QnOvBs/gpUksCOgNC8f400VmW90pU=;
        b=hfnqNaXBHYbPpxzZximcIZft85bPXYSYDrfeQJh6mVEO2MOQ8OjaO2fRdS5+MyF/+u
         hIxQrBEnDZ9GQVjjUFbqxY+OZbGMcZB+s7MoNqnFNyPb5q861TjgkgSccIaQEEwOZtqW
         bJ5uz2/N3X3+Mx6RIrp8pxTkVtkoo4dplCUKeLIb8EA0w5LFJBPMi/MzN++lZj4fCaOA
         mc2y5709lYBiKBGk0GFFxI6GtLn/hlbUZQC7vGkqoXezz8NMm5VuU2aWeKuAezRmE7+s
         2aSWYh5y9A99AJtqMmSMc2Oh+QgJKiOAy2b6z3IyvdYrqQgOU37acL76TUVJqCocZXgr
         c6Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id r13si161562ljm.3.2020.09.19.09.48.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 09:48:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 3DDCF1C0B90; Sat, 19 Sep 2020 18:48:17 +0200 (CEST)
Date: Sat, 19 Sep 2020 18:48:17 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Martin Li??ka <mliska@suse.cz>,
	Roman Kiryanov <rkir@google.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-pm@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Alistair Delva <adelva@google.com>, Haitao Shan <hshan@google.com>,
	lkml <linux-kernel@vger.kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
Message-ID: <20200919164817.GA18978@ucw.cz>
References: <20200915172658.1432732-1-rkir@google.com>
 <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
 <20200915182530.GV14436@zn.tnic>
 <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
 <20200915202034.GZ14436@zn.tnic>
 <CAKwvOdmmXEu40m9bVL9zY5XyBRs2f15cs3FZQLCCh4u3i07pDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmmXEu40m9bVL9zY5XyBRs2f15cs3FZQLCCh4u3i07pDA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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

Hi!

> > Because I'm willing to
> > bet a lot of cash that no one runs bleeding egde 5.9-rcX in production
> > over there right now :-)
> 
> I guess you're paying for beers then.  "Android Common Kernels" run
> mainline.  (They're a bit esoteric in terms of "production" but
> cuttlefish virtual devices are running Android on mainline).
> 

You run mainline kernels but modules to support hw are
out_of-tree, right?

I'm looking for usable cellphone running mainline.

    	    	       		 	 Pavel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919164817.GA18978%40ucw.cz.
