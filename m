Return-Path: <clang-built-linux+bncBDYJPJO25UGBB34C2PYAKGQEGP47THY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDF2132D20
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jan 2020 18:35:44 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id u91sf7252048pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jan 2020 09:35:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578418543; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwsMZ04fVlcWO/SmGDDfvhz7/xE0h8klM/z3B3rgR3bYNN2Yl3mF17gkhCpDtXdWbV
         LQyoZTMU2pcV5KHB3Nj1Dfnn5mqUMRT5uT8Mfn1ct54haYvKvEVkUM8bo1RckdHiWFZ1
         e7FNUjsgCQSQnOz5Q8T1Uh8s1c9qMTFiEv+5bWEHBmTEUT5/cjX+PIH8bfOP2aCykgTl
         9OAmSR9T1zh/AUECr/zn9Z1bTvZ7g+USomRL7MW4Fo9Lt3/acWF8BsnNVvzLD1ThkaYj
         Pza+8O2DNvEJ/0DBrD52A/H0KKmsEfhpfRI2QxdGYbhdHmrz2zMbR/QNgHifgm7xsFn5
         zl+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kjlSP/JaDNsKK3zRiCg/0LVxLyFUJE0c4I/o9+jeKzU=;
        b=lxswG7x+Wd82t66eq/mL/XEPMshINpx4C15hrwKgfrj8l+pVJj6xeC3YzPwW2rR76i
         Wunuip2sR3+KS6sgpnQ4W7ZIcTJrhGFrrNcrUP4shNQ9xGJYAxj8+yvQjzO1c1WORIGJ
         DYbE8CM5J1uClS6xCHhki110lPuJBZsuZwpn5TVSfCJp02gHejan+R7XbYbQWh8E2QSH
         bRYN3PNGDh72UIT5R76L7oUrKKUJWI+bSz6BRWKKGgz+ebhKLfcAOMwOXlPHEn2XQVjb
         uVnNLIrgkLaWXY5OHWWXLUkxsP8ORjuiSgpMItz2WrndeND92cW0lZTPV+nU4z2hs/P5
         4wvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vp78XLAA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjlSP/JaDNsKK3zRiCg/0LVxLyFUJE0c4I/o9+jeKzU=;
        b=OgR2zWu/TGMqaKM+2JtKBfgzsZNzSncvPo0D7houzWn/R4tQAD+JWZqV5u/AxbMxTx
         kIs/T0liwW4Ss5DGrFFStyIsk17TZwHWSDfM8wBPn3ASvwUAcHrl8+ydAgGZIfUXEkdA
         qW3TmJJqb8HWE/yShp9PkSKXA+oE4JM27sXdl8Drc/lSq+gKiF4zFiVgunxlgROXUUsk
         3+4y6gVvfZlKTxJQQpxPBwCDGBaFi2NWOlg1QraZ2BXQvvbgegOlJOZ28a+zFRvUQJiL
         EZXhNEJb8CF/Ufg09hB5kDciXbvjZUlB/P6mrT/wcNx9GRLK4fHYdJH1lHzy9QOHFO/1
         OqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjlSP/JaDNsKK3zRiCg/0LVxLyFUJE0c4I/o9+jeKzU=;
        b=ZpbcXVFaYcy7AD780L+f/KYcAswc+ixWpydusELI/dmUo5kHFN2HvuoWnV4RRS5jy7
         VV1E0PsNmR8HEB8tJ6qhywTzaxOhivo9ZXX3wNYPLC9Q3xlxQk1Hf6Eht/ZlRJ7NO27t
         MzpoxS5mekHLYPXiOQ2u3E4RIZYP6PD+Qf77/2XEClBcWQfhYgPLK+ZUAFlN1XExvW/z
         kBbV3e13/qZ6RNQIlDSkjTw0LHbPkSGlrRmTbYmtQV8mexu9EDG2uu/fU7aNBBGFsYzQ
         0dLKRDFbDKontHxdYu3jvtoe8MFWpExhLAQ0Tpzo60yqfM10IfR1muSMCwYDC/HJ6QBy
         uOaA==
X-Gm-Message-State: APjAAAX/kQAsKjmGrJzZPgGoFLOzPDybJ+PkDAfsnQe+D1efz8OUoJOi
	xRkhMMazxl3PPgsU8cVZyQQ=
X-Google-Smtp-Source: APXvYqzQLdd/N+P7Vxsabc+xLnaeSv1DALs7UGcJca6UZUY+Bwol+qb61+zIwRFChuaJtVLTED7+IA==
X-Received: by 2002:a63:6fca:: with SMTP id k193mr601525pgc.416.1578418543263;
        Tue, 07 Jan 2020 09:35:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2323:: with SMTP id f32ls71584pje.1.gmail; Tue, 07
 Jan 2020 09:35:42 -0800 (PST)
X-Received: by 2002:a17:90a:3747:: with SMTP id u65mr886501pjb.25.1578418542905;
        Tue, 07 Jan 2020 09:35:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578418542; cv=none;
        d=google.com; s=arc-20160816;
        b=ztqlc+Bbb4/8EM/AXJ/mOdtcfTkqzcV8C/zEb7JVsXOduvwZx99MbOCUZFUOBB+PUp
         TvMMPEy2/4rRUBUx/S2PMcJmugV5xdKtPtaGFGJg6fOVrg+X5ckJBJn+c/OHwNASUg+/
         PynkKN3lg0k9mVQ3GP2dW0hSrpOZgWTgSaEFyAHS0nhSm3l7ucpwB9j2SgKfKgZSxZP0
         Pm+jdxgrsYf8GYeAC4jVwPFk1OlFAN2U7a++R7zR6uepyjREKspbg36AilfMbrxnPjvu
         oG5rfFtttUbvttKoOLn49N9d2xUkUZu+3CYLYQ7nhDImvKTsbsKjHrwOucrv1h2n3bGy
         nNvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ttJus1s1F1zGcCj/2hQpR/nI0fKRMomquO/5V3/jgVs=;
        b=WtOF6VWsqH1csINfvWc4xrSjrMbkIWh1twdPOzmw94G2Gk2br5wdixK/ok70DNUuG6
         H8sDFI8RPRY6uKHE8QdHWbfU3Gvh6FuasZ5na0TyeOrxjobdoDbDLuiETBnW6C3zaN3w
         Lr+jIolmV5MoCcyUtvSPOG+CczJ01gEn5Y+SWgN7ndPzZ3lqqxG5rdkbeUIu4do0l6Fh
         vhMFLo2Wr2sVqhJ5prfH0i2j3NQsY4ds00zBQOQsxukkAHdw5uUzq1/XM9bTjz8+nKLv
         8A0BEPxUDjCLnOAWOc1qkOntPl/Z+cOwzljYjVCRR3LYDFkRuIuvLRZnUp02vdoG9Qu8
         CeCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vp78XLAA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x13si11962pgt.3.2020.01.07.09.35.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2020 09:35:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id r67so91312pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jan 2020 09:35:42 -0800 (PST)
X-Received: by 2002:a17:90a:77c1:: with SMTP id e1mr934177pjs.134.1578418542439;
 Tue, 07 Jan 2020 09:35:42 -0800 (PST)
MIME-Version: 1.0
References: <202001050333.SnzanhNo%lkp@intel.com> <CAKwvOdmkhS+jmu9erpnqr6+bvxjQD7yxQSvs3scokJ42tkF4mg@mail.gmail.com>
 <8cbfa385-d3c3-b1b9-9bce-1ae109072904@cloud.ionos.com>
In-Reply-To: <8cbfa385-d3c3-b1b9-9bce-1ae109072904@cloud.ionos.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Jan 2020 09:35:31 -0800
Message-ID: <CAKwvOdnLE=wGut-Y4RZAyzdndEy=FPpcy0jHsf1FSCsrDJMTYA@mail.gmail.com>
Subject: Re: [PATCH RESEND] raid5: add more checks before add sh->lru to plug
 cb list
To: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
Cc: jgq516@gmail.com, kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kbuild test robot <lkp@intel.com>, liu.song.a23@gmail.com, linux-raid@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vp78XLAA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Tue, Jan 7, 2020 at 1:05 AM Guoqing Jiang
<guoqing.jiang@cloud.ionos.com> wrote:
> On 1/6/20 11:29 PM, Nick Desaulniers wrote:
> > Apologies if it was already reported (working backwards through emails
> > missed during the holidays), but this warning looks legit. Can you
> > please take a look?
>
> Thanks for the report and will fix it, not sure why I didn't receive
> the mail from lkp.

The Clang builds are sent to our list and manually triaged for now.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnLE%3DwGut-Y4RZAyzdndEy%3DFPpcy0jHsf1FSCsrDJMTYA%40mail.gmail.com.
