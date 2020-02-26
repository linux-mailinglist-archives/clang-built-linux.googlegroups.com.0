Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB76H3HZAKGQEMZYR6JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5B616FEE7
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 13:26:40 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id h24sf1950921edw.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 04:26:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582720000; cv=pass;
        d=google.com; s=arc-20160816;
        b=MkZcYXRFg4wPTjnlRGEPICkY77HoYd7aPtKSqrPUPBlQipvGll82LPN/zsSC6+AV+g
         LWLFi1/36OvJmuLbj+BQnt0ViL/sPuC/KyYzx1zy/h4NgqiuBLoDKAxjAENwXuvarOIS
         NDp7aE7VeYrJLArW4Q+sVQ3QltSXosKht6LYVB1SRqhZYP8I6b/RGVpyKbnzeC2RVWJ2
         CHXm82Lu4p/D6nsZiLyhu+qjeFbzX/NwsMgprCcG5iVrBswDlqEftzUJTl0bVz5vBZ64
         UXSpVAyB+CSAXuiWXk/UbuXQ0hGwX6Gz+UgdCSg7tNbsTyQn+0fxNHydd3BgkSba9Ddq
         ZIGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4PodAM/Pb9CpQ2sqFW/UVv4m/xZr29tQrPdK4f0kYgQ=;
        b=LFmmbb0nb6oEyCA3/iEpaIrXLWCVG5uqFKrid9dJANFvQP+z9oQGHNBME26rkNRT9+
         mc5DjHb6+BSEhunTVmD7nPfCBaYpXSX5lSaB1DWTdI1aCx+uXBgiC0Kca8I1t3erOiQk
         row1HdqXC1XrYf2zr6OPSESsIvdTJJnCOG/sAtXGfsnLwEp/g/A6XxsmwsNHYpfE0lEH
         MTsk2QLOcVShixMN9Sltb7cq8Z9s/2EyH2T92q8Y7kU8rlkjfFCMZ9EK97JIr745NNjH
         C90/84u8ExcOijNcPIYvuciRzUC6hJkAIIGvKFtWdhOf6G0/gpTTrMfPBjtoTRE9Y4yR
         Ty7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IHFSmI4j;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4PodAM/Pb9CpQ2sqFW/UVv4m/xZr29tQrPdK4f0kYgQ=;
        b=FadJgyLCtP3jRH8lvc6Mlk9PqwvZtnvAFgYvkRFmi1Hpl4/XZjRO9hXF0peOHwgTbT
         mmqgF5BXwmet3Fn7JHX/HZ8F1gShidMw0qDp7fdd356jz2I6ZfVzUwtmplI+88WXLsqw
         buU2bglZR5DMo0KYOYO+eVqISi0tMp+HBaUJFFmgsRoKbZPP6ScxY3iS92nIuKGfQR/k
         f7IM8LCsLX/9FEHQqA9ZIGzZDqOGf68pfhG1i1z1JtlmxGFvJe1RhM04s5YeioW+vIxu
         OQZGhRJ8ZGYd72/4qedAH1lmVt15syp9GaasvBMj7rQDGNlBLVvp0T2DudMHT+wibmr3
         0YPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4PodAM/Pb9CpQ2sqFW/UVv4m/xZr29tQrPdK4f0kYgQ=;
        b=QCqdvTBi0MsvFI6MI/VOkwDNhhOagqwtrgO2P3ljkmZK3MhyczafE6w2cdD0wzVm4j
         7s0P79oVTvIfkjEiRxnQKGYdsqzMEgLw2vNJN5/FMXMqFJd2Ay1Lx5EMav5SserNeSh0
         KblcDRcVGnBkZJx4DNprb3i3bvFWhp6hSlo9Nscj6RwvhFqOWc9IsLXnz4Z0wLJuPxdQ
         w/uqFu3ZaHaq8XBopCnK+WaN6DYYrsZVrlBvdV69NGOcyrZD5oyAbCiyJYnLBylyGKz3
         D0d88yEiHl1xJqoWIY2VgHgpkBSEKrOTKPr+PZU0Fyat/4YZu8RcLGkbENiR6iTfTWbT
         2jiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4PodAM/Pb9CpQ2sqFW/UVv4m/xZr29tQrPdK4f0kYgQ=;
        b=YVanwPdB6QJtZpV0tuarZp0s6EhqBTFmsF/pyB0DF4Ys15TBDT12RAmf697ogHXIq9
         +e5czk34uPzdRAOM4G3FftGoNbZcm9plnYz73MyP9/xH0QbcZWckrfPrV/y0yX+2zs34
         CqSqygwUfJX7t21j+tuogLhtyEQSS3A8Or4bXtwr3LPousg0blyKSJJJ76PaqNMsfwXl
         heWuPdxK20k6U6j3x3DGlBDT4Cx8YuRUFgMg7TLazOpzNTBdfeS0mDf2yBVMMv/tpVju
         EM/NGX9RnosO1uL6l0yYuxTzpCBeDKok3fmhtY7bMOrxlHnfoVhfE4jFBtm1/KgTVzZ3
         sx+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdtkxXGF1EafLl0cvJUMeHwvNJTcfWDNybXuWd8VgUBhWlCh8l
	SsyLbZzQFJgDh294gmVAwLY=
X-Google-Smtp-Source: APXvYqyJfUyEINbSp2Gkw/ocQR/BbtdCEDvJfOmNUQACSJViIDMboEUcoEaLgFgAv2/7w89tsLqUrQ==
X-Received: by 2002:a17:906:ecf6:: with SMTP id qt22mr4619363ejb.148.1582719999876;
        Wed, 26 Feb 2020 04:26:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7f99:: with SMTP id f25ls1035285ejr.5.gmail; Wed, 26
 Feb 2020 04:26:38 -0800 (PST)
X-Received: by 2002:a17:907:2112:: with SMTP id qn18mr4609924ejb.92.1582719998308;
        Wed, 26 Feb 2020 04:26:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582719998; cv=none;
        d=google.com; s=arc-20160816;
        b=vC7k9Ny/iRsWupfWahqB8L7O41zNaWBtlXosj/Y/bYQSt/Ot+BJgR1r84bSMgyPs+y
         8HyyD/hydsqvc/jCY65wtfrCdSAnaNBLn3bcmp8n+RqF5NV+Li5fj9pS2istZ4eZXR1k
         2uAmihzk9d0KoKGD+wEdi50nSjRBr7QePwHK7O5dk0rETFRG+DcSBZjWEBd1Rs/mv93O
         /tAuETpYcy36TawZsf2RS5n9cOj4qpRyyVJHPmMCSSMOQjncmhMyJe2XwzPOF7r1YNq0
         o/QkoWkZH44l7+2P8X8mcHvDsamaDnh+DEFsxh2Y+DIA82iT2ccETpMX9e7ojY5t9uDZ
         DnSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V8gMewY634WDFQZep0rl6hNrs2zu+VbqsCL1SpOtlb0=;
        b=lBEvGiY90cSUfH+66t5P29E59dBSWGdZXeZ70fBeor9AcOdovcPVm1XXk0u9s4qO2U
         gvdQWjY9wyEXqazL/eEqTJ/vTCjLxqsqEIAz7B9F2DBEzKJw1ZN8USPrljJcjmAQGeKZ
         Qj+pfyFt1Ck14J1zgjn/jd6WyvyEMrx8CUwXRYYesvOmw+D2qMX8nRIV2Oeyuvf19Rqe
         D0JTwlAurfV3CfuqEbDXMXGc+F62fZ9FCD5zyyhdbJSqOb66dessSU7/PoJWXA11elUL
         sl9LKHoxvmzo8cpERCwBmUkxuZkpkMSLVP2l1329uKvz/0eK0R5DADGQ0iRyXf5+bE8n
         /x8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IHFSmI4j;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id cw13si192959edb.2.2020.02.26.04.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 04:26:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id t14so2829078wmi.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 04:26:38 -0800 (PST)
X-Received: by 2002:a05:600c:2285:: with SMTP id 5mr5218941wmf.64.1582719997984;
 Wed, 26 Feb 2020 04:26:37 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <20200225210250.64366-1-ndesaulniers@google.com> <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
In-Reply-To: <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 26 Feb 2020 13:29:07 +0100
Message-ID: <CA+icZUWcW3+9QdZcACCXP6Yun__Sm_s4+qM4rALdFf=hGBt3FQ@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Randy Dunlap <rdunlap@infradead.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IHFSmI4j;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 26, 2020 at 12:31 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi.
>
>
> On Wed, Feb 26, 2020 at 6:02 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Added to kbuild documentation. Provides more official info on building
> > kernels with Clang and LLVM than our wiki.
> >
> > Suggested-by: Randy Dunlap <rdunlap@infradead.org>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * s/On going/ongoing/
> > * add Randy's Suggested-by
>
>
> I do not understand this tag update.
>
> As far as I saw the review process,
> I do not think Randy deserves to have Suggested-by
> because he just pointed out a typo (on going -> ongoing) :
> https://patchwork.kernel.org/patch/11401189/#23179575
>
> (or, was there off-line activity I had missed?)
>

Hi Masahiro,

I got some credits from Nick for a review by seeing a typo - not on a
review of the code - and H. Peter Anvin asked why.

I am not sure what is here the correct credit to give.
Depends a "Reviewed-by" and/or "Suggested-by" on a technical review?

My POV: When people take time to look over patches they should get
credits - sort of esteem.

Regards,
- Sedat -

P.S.: Tipp: Use codespell to find typos :-).

[1] https://git.kernel.org/linus/0e2e160033283e20f688d8bad5b89460cc5bfcc4
"x86/asm: Add _ASM_ARG* constants for argument registers to <asm/asm.h>"

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWcW3%2B9QdZcACCXP6Yun__Sm_s4%2BqM4rALdFf%3DhGBt3FQ%40mail.gmail.com.
