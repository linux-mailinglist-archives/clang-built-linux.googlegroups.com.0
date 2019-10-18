Return-Path: <clang-built-linux+bncBC2ORX645YPRBXHBU7WQKGQETAHZIXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A900DCC32
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:05:33 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id r19sf5090968pfh.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:05:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418332; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zqc0fmIq/xc/sTWKbm2AuY5Az82vSaW55LMRczkdRQBlhOVIGOpyXxmPSTxnjoXwUO
         i7+fwvDwy8k2wSHCBz6O/+Ftj3hCvdq+/wdxLZefSm3oPd/+MNg8/DaiWsPHjuFLPLH1
         pZHQv6SS+xrKw4eLj1z6ziX27v52QIkoEgMwjkQoZYUzVCERiO5KNVbyYSh8hrF7UDPM
         QqEGOmz33DEIRv+hjel4f9MV/wq1u90WHg/ucmaXD7mq+Y8InFhvv7eHwGoT4Vk+IBAX
         LPa9W1iLd6h6H55XEZvauV0DaaMaPgX2wTKtcAR0xgBJ2BAW39jC30DL26HNWYHoeLqf
         lHXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ByQf9IaHu58Bw+6VW9KDMLqyYS1WXzbidkHMg1hW73A=;
        b=BqzXNWnNCDgKW7WuMDG0QioWXoXYX1lBs/rTYR43Zw2scim3AMcF4boOjk2DBZt20m
         6tkcUM+EFqN7OVpLNcsRYahPDNZqi88uiI5jcamKYt/XjvuFO3Kq8xIBvVnp3kR1RPef
         SFz7jDoWVHiSUHq3KbzjA4x05jtIyha9Gt7CEyIqY2Eu+CQrI3Y5WKrXMtLspQBlffmw
         sq6pSIUgyg0jD/wKk/F8PFGBArLPsMzU4WOZ5E8UkKWXNekOU3l7fY3CQLtHhTlep6Q3
         cRanFhKcz5o25Xw9uukPeS80Pl6su1iqNdIuyK/RlBHsKYZ0VI7ab+rcOiqI1DejBp8q
         loXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pru8Y7xs;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ByQf9IaHu58Bw+6VW9KDMLqyYS1WXzbidkHMg1hW73A=;
        b=h1RYqSNgkgwpBlQ3lNiayQ9DZH/EUbSPKTNBGIPfQZythpVX/DW2/lZSoJnz4YpdfT
         QG4wWkT9+0qzjhFBpcqTk+31sMITtF1bs/6kx3Gb9kZPFYdKxPoaG2omQEF7p7GlGWHD
         IJw6gh0p+Ffg3sKg7YpAcuVC+TfS7LEBwf4BgRJOul6Zsp5x/Vm6N5UVuqWeqeQchvkb
         au859iH1RITk0mUs3xjKHF37U1DsgHYNjFHmeNPiQNfHsd3wd0rE3iDSXUQ7hwHQxpsl
         m9OSacuQ5LDVprTNVV35Xzl6neBf2C6gQ6yl5GfGwtt1G/Rf9S7VyIwXtaVZpwa3MbVH
         k2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ByQf9IaHu58Bw+6VW9KDMLqyYS1WXzbidkHMg1hW73A=;
        b=UCinjToTu/OiwJwMzbEY9YV5C9TMzdGz2TX7MQ/ZdIY1/DsPKOEu0gGZWoFN8qJiLk
         j0CGnOPAxf7za16tBUMyR7oxPHc/3edowVFgRJzVjdl+s9Y1XFLnVtMRhMYhRYdgtBcp
         KlyvhyM2IZYtTrA565sLC/2dfrQIvXbNG2BWjzQLcN22Kl3PV3LWw/MQk9KNylFWgs8g
         kJURZGDGPzAzn0onh9E98qUzrSOalACGPDEL/l5/1nVSdSzf4Mmh+1iNvdl84EWLRc1I
         77rPM/suKznJGJqFYtLMje+sGVLt4vgOd92R0s1qgFNsinW2vtPXQNRtNm8G3XKlTWDP
         6Rtw==
X-Gm-Message-State: APjAAAX+TxYOdAu/EBq6Q55PJTpF19Rc41w+zBOZZHWCNIfW1OwdWU6c
	Nvuh/eQ8DQkxlFnJdRFBYus=
X-Google-Smtp-Source: APXvYqynQDHmS4YBgxE1Pugdy/k1GMOkbqZ/ha5vjghpcmDipF2Gr7WZUR/aLJlGtF4sGatJQrYL3w==
X-Received: by 2002:a17:90a:a417:: with SMTP id y23mr12068141pjp.126.1571418332060;
        Fri, 18 Oct 2019 10:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3726:: with SMTP id u35ls2246418pjb.2.canary-gmail;
 Fri, 18 Oct 2019 10:05:31 -0700 (PDT)
X-Received: by 2002:a17:90a:8c86:: with SMTP id b6mr12633633pjo.129.1571418331627;
        Fri, 18 Oct 2019 10:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418331; cv=none;
        d=google.com; s=arc-20160816;
        b=hLycuzp00ANwVZOj8DuIEwXXWVCqqA2MIATxYfmFnQoitPHZmqDbuIyIfCM/xc+9Kk
         BN4DpRSv4g991XbY9EtVVUBquvVCkDyuvuwP457N8pQ8dYIiGYcAJcu0m2n474kBZpmD
         PSr/T6yz1mfpByMl/7D6bl8AnTvLlC9RMZlkhEv5j3uzmaaBvD5MvJcsWzsd2jBKi3B+
         2jPtpEDqxnUHiMyZUJ3R/Is1swPTN0kg52MC+Kk6+0LjOd2M4yDZY/NteVa1nYVPn67P
         A+yYgxGsQtvKtDJntfoa7P08cyZhiuPB13IbfP0tQGQSub0thj5S1F24++q7u7q8lVE2
         hPWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x6GpsgHPaenSyC5p+IrYQknWia4lKY0B5Vf4l4gdQSw=;
        b=vnmuP978aluz+o6qFfATSKEJOuvAm3r9nUIuWFQxYcLq/7oKQlzcvAlPJWltRYusvS
         ASCDWLCXjDJoCT/EitVvosVDPt41X7G8VkZpqz6ZNeoqgm4HOcxCBB3JJ2kNntZvIFRm
         em1j9oVxRGBDcL52XJQaRQdIGXeKMtWtiH4NeKPXAWJmSr8GYn2OI0vVUU/8b8GVNWK2
         LTMtSoiYBcdS7yiVCyePvOkUAqPZWmgDQick/BZ70IcNYCrwglghlmIz9GL+RJNSH03l
         JSTdDm/4xqlkXeDFRDWnyrwIHSoH8wmJttuIV/ZXAx5b/FvXecXhzGX8Fax6fHex1e+w
         sM0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pru8Y7xs;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id x13si219781pll.1.2019.10.18.10.05.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id p13so4505285vsr.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:05:31 -0700 (PDT)
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr6159173vsq.15.1571418330160;
 Fri, 18 Oct 2019 10:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com> <CAKwvOd=7g2zbGpL41KC=VgapTYYd7-XqFxf+WQUyHVVJSMq=5A@mail.gmail.com>
In-Reply-To: <CAKwvOd=7g2zbGpL41KC=VgapTYYd7-XqFxf+WQUyHVVJSMq=5A@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:05:18 -0700
Message-ID: <CABCJKud7bJOQqyve9=niSP62H0WTrCk5ZAmAcD2-KR=vf_gn0Q@mail.gmail.com>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pru8Y7xs;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
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

On Fri, Oct 18, 2019 at 9:49 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> > index fdabf40a83c8..9a8bd4bc8549 100644
> > --- a/arch/arm64/mm/proc.S
> > +++ b/arch/arm64/mm/proc.S
> > @@ -73,6 +73,9 @@ alternative_endif
> >         stp     x8, x9, [x0, #48]
> >         stp     x10, x11, [x0, #64]
> >         stp     x12, x13, [x0, #80]
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +       stp     x18, xzr, [x0, #96]
>
> Could this be a str/ldr of just x18 rather than stp/ldp of x18 +
> garbage?  Maybe there's no real cost difference, or some kind of
> alignment invariant?

Sure, this can be changed to str/ldr. I don't think there's a
noticeable difference in cost.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud7bJOQqyve9%3DniSP62H0WTrCk5ZAmAcD2-KR%3Dvf_gn0Q%40mail.gmail.com.
