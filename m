Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6XX3XUQKGQELIJ2JEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0E77217D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 23:28:27 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id i63sf33239148ywc.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 14:28:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563917307; cv=pass;
        d=google.com; s=arc-20160816;
        b=AUDqBLJAWcQiODWekHl2au5ro2wfH5vjtbEuRxWIexCv7AIWslL+EJkOh3fDTZwR9h
         ynGc4vS9xS3CekHNyFoH2iDehyOUXlSCmYFnWouONPi2DHY0B5Mza893u8ZgzkWJo9RB
         WBpQrwXwz0208NFjSu/H4nbNa9kfFreZOAtc2uX84TKD82B7aUPgYGrMrT9lYLIwJTU6
         XxQjwqboWeB6PNQnRF2qAcbA7hK/W2pA+2NeBmsEFPke9eraR9p7TBEXSBbz7Il7pKac
         89AtIPQrelaSQvS5+j8LPYM35T/oA5n76Ag8AZF6FILRXRQpJUi8Eh8DK80yRe9K3NN1
         7UkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AamsB9m1rsN35lIm54yv5r/PJkrf0ARQBn7di2LkBXc=;
        b=KUYPC12o7xli+XfIx8gjgAetIelZsjzcbuVizLPP+s0Gokd5d6uY6Q9ZUxE6yC51mo
         dPPfH1r4AXx/3hwmh6RXOtJoJ3LkpFrUj6tYVk/SR3mIRFkdIBCdS6h7RURwggLAiMvc
         Oi/+xKyu70lUMzMnpZn/BC93w+FTtC+WlM1hFlhE++xQns3+FnnX06fCAFZR8u2U6vkY
         E6OfpHkcnxvjQeRdb31rfLgXpJ8CVsA5u07Z8vhSt1fFx5bri2c3/iecN0Bt8/3eUmXN
         +ZSlteOnoWvXST9ZbbhIXBRW3IrAKRPlmK/jcP2mc3JTWphsuJa0ld1dSPfTKpnimbXr
         Z8kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rRggj3sq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AamsB9m1rsN35lIm54yv5r/PJkrf0ARQBn7di2LkBXc=;
        b=ebWp+rfQhX0sWAgSawbGyr4e3NiTMk/km1c0ikzGS7yT2Il3O7DSfKW3yQs6a5d5gH
         6pNCsxuQkOYNhw9TIylz0lI2Bn/tw/AX8xndnLB6xt6k7bnIZAO537kge6oHKKr17S6e
         C8DcpThsEIE+NnZoBAWgPbKu/sU1CCiwvlOd3VVv57jcONEBjNboH8kuxBmTdRFdjl7D
         9Zkq6FQAwwZdGTI41Z0FmdMZKqStS1qnDIWUxos0huZzXkw9PqEMteZRS/jF37NlAAMv
         OU4VdYMjA8eUwW714Vi250ucfm+3fDTQC3HELduI+h62QzSa0lYnT4iulushPfjC32Cr
         waVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AamsB9m1rsN35lIm54yv5r/PJkrf0ARQBn7di2LkBXc=;
        b=IDz89eVWzXA7JFFam3EmT76PpIB43JAWMXkpDXz+P+FmCNIs/09GL2I67v0AsDdm4v
         W7MaES+AvXkMmAmtaks+mM1cLBzQeuXkrNGaqzrUNitJKvnhHJT3PJ5xJQN1B7gsSyIW
         bLw3PYEg1E4zDMqt/aN8X51nn9D/k5Z8Qn9gcLqiifCH03OaM3S5GFqMv2927ejGGZl2
         O1OdHg70qSZ2pBIQzwSRn070YL+i6IhI91kmCYq90TC10mRtfbAjTU9Pw5baTFhqu8Fa
         MMCkBJtWjNOZOuGEmZB3iPWU9A/IIFaK35VkD1v+v2eOra/h8V7648BWo3qiwSwqfOPM
         Owcg==
X-Gm-Message-State: APjAAAUgD8JfvRN2BiD8DAFHP0yGrkIf2lIZTlPwpvclIpGgElOV6hVh
	jrldEIxO8muKAJK2yLayYlQ=
X-Google-Smtp-Source: APXvYqwOWKuPLUPILsiOCVJOP+RcyNovlMQO9RUY3jRmNky4xdc1N2ZLekEFmfd4aJa0Ir/Unkjjlw==
X-Received: by 2002:a25:9248:: with SMTP id e8mr47398519ybo.505.1563917307044;
        Tue, 23 Jul 2019 14:28:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d408:: with SMTP id m8ls5435457ybf.13.gmail; Tue, 23 Jul
 2019 14:28:26 -0700 (PDT)
X-Received: by 2002:a25:3c9:: with SMTP id 192mr48307603ybd.130.1563917306799;
        Tue, 23 Jul 2019 14:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563917306; cv=none;
        d=google.com; s=arc-20160816;
        b=rTCpkVU1mj+R8BDfSujNiT5mKwb4zVAlYR0MXoQejBauSeYAHKFpO+O0cNpJk/6WOR
         vnjJoHkopLGZLTbaRl7/XG+uqTr8kGNsNRvRt4Ln2m9PAI7uXuAJuzaZwh1zQzLicBQe
         MRe/bEpHzrL8hyOz6ngslyc3DGpAWmnaE1QLlQRgWciqcydZxdO26rXBOMK+LDQFJsJj
         onFdQhDo2jykCqxocVUU/747p/TFBit+Z2b5Lzn3MaMnyAXUfrgtu8hTrFF5XR4cw4GT
         al1JT4WPIY5E1lUCvYSl4ZdLPVcsYKVM6w308P5Pgq8LZVrBAvCNxSLpDnlO/fDC2Vb9
         iLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GkrR7KYfNoDcAsYt1Gds+pf2LHdaFmbB4lpahf+T2Jw=;
        b=wPyltUMSVHt27w99ilzkbe4rguDGos68Mgd38QGgzR4+qv3BdRewTTNoqR1D1L0kIU
         J/8B4Bcb7u7e6sQUWEBvZv/YbooC4EHwabEzJN8S0+IsVmG2DWTTtKvy8K+wV2q7GudC
         Sw3VGZrucU4/VgpxKG6HeMPA7y9Sou+hhynLjzZXXbwLNcHsmhmD2xBg7MpOxHWKFeYr
         FC2Z3Bwaa1ULBjnMNh8Cvk3Vcn72IOnd/kY8MrulRFb9MY6lpt2esC9FmGxLCb5JoJFh
         elJhrOokKUWXgIBbzSbyLaldXaxwZfnV8F0o55B8UXeOgu1eY1/L8VcWx1QWLZC6x3ag
         lmPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rRggj3sq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p188si2191125ywd.1.2019.07.23.14.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 14:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s1so13735487pgr.2
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 14:28:26 -0700 (PDT)
X-Received: by 2002:a17:90a:bf02:: with SMTP id c2mr84880063pjs.73.1563917305632;
 Tue, 23 Jul 2019 14:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190722213250.238685-1-ndesaulniers@google.com>
 <20190722213250.238685-2-ndesaulniers@google.com> <CAKwvOdm3iyeJfuivhQJqXB9FfC0zHgrfgoN_qW4poEyfcw3C9A@mail.gmail.com>
 <CAMVonLjd3DoKQatdraG0t8X_F9Au-fA_vL2RSNfNPNbqvXWCDA@mail.gmail.com>
In-Reply-To: <CAMVonLjd3DoKQatdraG0t8X_F9Au-fA_vL2RSNfNPNbqvXWCDA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jul 2019 14:28:14 -0700
Message-ID: <CAKwvOdkJ2_E4e-mePb4JrQWqS7xYeKGKpcBr_VeGKaytuD_YrQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
To: Vaibhav Rustagi <vaibhavrustagi@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rRggj3sq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Jul 22, 2019 at 3:59 PM Vaibhav Rustagi
<vaibhavrustagi@google.com> wrote:
> The changes suggested will cause undefined symbols while loading the new kernel.
> On doing 'nm purgatory.ro', I found below undefined symbols:
>
> U bmcp
> U __stack_chk_fail

Thanks for the report, a v3: https://lkml.org/lkml/2019/7/23/864
(Tested v3 with defconfig, defconfig+CONFIG_FUNCTION_TRACER,
+CONFIG_STACKPROTECTOR_STRONG, and allyesconfig)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJ2_E4e-mePb4JrQWqS7xYeKGKpcBr_VeGKaytuD_YrQ%40mail.gmail.com.
