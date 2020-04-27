Return-Path: <clang-built-linux+bncBC2ORX645YPRBL5QTX2QKGQEKVIFU7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E3C1BB15F
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 00:09:52 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id x7sf22065299qtv.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 15:09:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588025391; cv=pass;
        d=google.com; s=arc-20160816;
        b=HIPpY7CmxuAk75g6Mp1JkAzX+R6xbIo6S90YBNa6GV6FyqZNWPpjtU19dBmyPCbY6H
         KlBY9nITM9MkmPHa5SS2DSsCLs/R+PyvbEtvkBatB8DIRUlrszZU+pASWvzUxMRWtmol
         eyuXAU7CrP68ghSah0k/4ctg5aq9+r/9v4JHOOeHsc5tKKJPCZloSQatbHhGjY564iDq
         VA/2C/82UtGvOHDZQTFCfsUDOcI4rBiNikcyuFhisjAFBvlzcenf+BJ9DQIrGm8slaBm
         foSL53DDNy7qV9LJwll4dtErfofdf6jL2+36nShl6XjX58wxXK/382vgPETRMpckxr/U
         yDKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1sU+6jN+IGUcUkJ1tcC5e/ZQU+k2BLaVtKTMhhwZ8k0=;
        b=yXVSpQ+mEQfdD7ofcUX1O2oVCEHD3KeVoM0SLkxmHCBbl6d1rWDQZIKy7va5ThMzF6
         o2DbVmSbNbS7H46wBkdRSrv6zgilE7jHTCiZmFrxRlxMEwzIkfbYDK7Fij5afy9IwycV
         xSZNLTl8/HU8Hpa53fHZzf72DlGUr0+iVSSTeEblIEhFVxaoBXIDRJZXYPjd1d0zwsqF
         3QsZZfcv4g2EmSFZ9YgdsJ6biAOE2Ql1BQ20jB+Gp0M0vSMBgv38Y8z0fHDENN1llDM1
         egVt3hlnn/OX5lR6jScKehez/mAu9X1A7idRouZm5GMf4UthWJ2/G4hD1V9bTWOZHUsa
         sz/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=axOblyzY;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1sU+6jN+IGUcUkJ1tcC5e/ZQU+k2BLaVtKTMhhwZ8k0=;
        b=nmiU6CThc4fSbUDIPoeg3HHClAAfcaJFjctJ56Q8TGlq6qTGbVzYgtZpA6T/dsPbNn
         HMw0byURNUE1s0a8QWjv9zRptKCYP968ZUPik0zRGmPdV+DhTnyix11/m7uKCcPUoFdq
         xdjIlh4Zep1Txjg0pRya38SMMSBjOxNGY0eMIY7OPQY8JkrhfFgCK5XeNfmaDrtIb4IL
         VS4sTpSAPCiGp0ckN6F5KZ6qGHRfAwjFcjx3ZQfm8C/7Go5VdlTjGMQ+RGYas1BtVVym
         VOYPB7kw4QfJ3QxhT3Y+odsYFfH3ucNpf4pVKVHpizJE7Te6wE20ZTYZ7Ab0XEtL4jNw
         xtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1sU+6jN+IGUcUkJ1tcC5e/ZQU+k2BLaVtKTMhhwZ8k0=;
        b=ImuJpXs3TIdIxKLnapAdCG6SZ8XrT2TK8mWkhqaVGxd3CNbvEaVITfrNlceywu0Tbl
         qN9crK2OaLxkKCLofyutr8VKXNqTU/JvDgOMjNTjmHuZg17FNY67DuU7EJWOMJ0RiVSv
         sHj5zFIg4NOgPpEUHfaFgKKvvJyoJVQ+s9hoPpqtOTBNqxR/Yx9X5f6lBBr8ccPqnd0q
         lJnHJfVJUVWE4NwaUVtCRUAK5n/a7w8+89/QWrfHjorls0eRw/xSqHEh8u4/SCvHqwuZ
         +QrfBqiqX9+Dr1wsnws54ukt8+tH780jFVvjNhQtX4tA5MHuXZT1OIRQvCjaUnhXPJys
         HBSw==
X-Gm-Message-State: AGi0PubtJehAER76S5Ld1FCcFi4ZMdaUVWAOMh8H8LEkbIstLC5ZTdIG
	RiE9UK0KvsS4tMO7gj/tAgU=
X-Google-Smtp-Source: APiQypKE3ui41mluoRY1nJ0cp0F9NTrMlNuxtH/cbJ9n+VkHONVe9aqpCZNGHKtwbSIy+cWwZZ4/Cw==
X-Received: by 2002:ae9:edce:: with SMTP id c197mr24944762qkg.454.1588025391506;
        Mon, 27 Apr 2020 15:09:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5108:: with SMTP id g8ls1823925qvp.7.gmail; Mon, 27 Apr
 2020 15:09:51 -0700 (PDT)
X-Received: by 2002:a0c:ffc3:: with SMTP id h3mr25190294qvv.156.1588025391189;
        Mon, 27 Apr 2020 15:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588025391; cv=none;
        d=google.com; s=arc-20160816;
        b=i3SHJLiys7PTkKpHdQFjewWnyQCL8IcCYPBmasdxM+TVBB3AmhbXgK8jL9+wruUxkO
         6vW3aw/xDGFupvGRgSCvLOA3iuR6ZH4LQZJRMqTHJCAdJO5+9M02kYZ1S12Rxps1DxeC
         PUV8RCSECCoWzEM8ss+K2CTNPUxy4V536noa0yVtiijUoPkIzMjpL+Ox5kKpYeaWFaVO
         m9kUZUcAuP6/N6+1zIi5PDMJjBQSwWHICdOujJrfDVp07tyn+2fO5Rcr1+ZNka95LriL
         uIX8EvzjrAvdECdQbBEsOMIBEJXNrXx1B+JYZufEmYNqlDGtd5YCe94kkJTHj7b7Um54
         barw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xe8RUkEJu/E4jWUvQIevudFni0eW89aFKGU5bjDlftc=;
        b=weVj6SE22xES+IbrOQXDVPfzEjO2b+XOTSvTU0vfgAExAgLIT6on0vIEtpu8FN2r3G
         bzfNcgpi+rCL6zC2S7O7vzR2CLPCXQxf6ttSSYvxTTgLO7pN4QfLeBn7PvhVh5EfZpcR
         h0uBb2McDX3VCi97PlVlK6LpCMI+R4QzUg94sYvtuQfKhX3weY1DetL+q3zqm55jLDlV
         ycjvX/X31Uck/4/xYd6kNH2L38sesR8deKh5WlkP/lEcQtguLpMaqeyiaRb64Bo0vZVd
         Mhf13wKbe+aju98ghGaU4eain4IxfQAiR4acKBKa5QtT5hYKyOAk/6RX2MjE5681gsCN
         Pu3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=axOblyzY;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h25si42505qkk.4.2020.04.27.15.09.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 15:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s18so6644063pgl.12
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 15:09:51 -0700 (PDT)
X-Received: by 2002:aa7:951a:: with SMTP id b26mr25384503pfp.44.1588025389927;
        Mon, 27 Apr 2020 15:09:49 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id l8sm3554016pga.60.2020.04.27.15.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2020 15:09:49 -0700 (PDT)
Date: Mon, 27 Apr 2020 15:09:42 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
	Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Laura Abbott <labbott@redhat.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Message-ID: <20200427220942.GB80713@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
 <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=axOblyzY;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Apr 27, 2020 at 10:50:34PM +0200, Ard Biesheuvel wrote:
> > OK, so one thing that came up in an offline discussion about SCS is
> > the way it interacts with the vmap'ed stack.
> >
> > The vmap'ed stack is great for robustness, but it only works if things
> > don't explode for other reasons in the mean time. This means the
> > ordinary-to-shadow-call-stack size ratio should be chosen such that it
> > is *really* unlikely you could ever overflow the shadow call stack and
> > corrupt another task's call stack before hitting the vmap stack's
> > guard region.
> >
> > Alternatively, I wonder if there is a way we could let the SCS and
> > ordinary stack share the [bottom of] the vmap'ed region. That would
> > give rather nasty results if the ordinary stack overflows into the
> > SCS, but for cases where we really recurse out of control, we could
> > catch this occurrence on either stack, whichever one occurs first. And
> > the nastiness -when it does occur- will not corrupt any state beyond
> > the stack of the current task.
> 
> Hmm, I guess that would make it quite hard to keep the SCS address
> secret though :-(

Yes, and the stack potentially overflowing into the SCS sort of defeats
the purpose. I'm fine with increasing the SCS size to something safer,
but using a vmapped shadow stack seems like the correct solution to this
problem, at least on devices where allocating a full page isn't an issue.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427220942.GB80713%40google.com.
