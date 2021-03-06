Return-Path: <clang-built-linux+bncBDE6RCFOWIARBTHJRWBAMGQEPM3OEOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3309732FAA5
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Mar 2021 13:25:49 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id n16sf1367018wro.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Mar 2021 04:25:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615033549; cv=pass;
        d=google.com; s=arc-20160816;
        b=O5bnNE3jbhv37jDmtGUP0FoG0AwR8FHB2WrWf1cf7ppjpqu7N8FgqFH1D53swY8aYP
         hS4dRw8cDnx94OHbNu1NtIB896QP8OXloV3X7z/l+KSVvnh8oSg6MdOXmdxLg8eX9A7p
         qEZuo9tPlBZYcp20UrQ83TMQsEI6OSU2HQjx83zG/cirKnxDj0ttOZ6yMwTwS7bqH6/i
         MX7ZD0oDrENgmuktPfoXef+UPLOo3EypRBvTX4ct4uPrxu6kg+cmHiRxO5H6bx1+Fihy
         4XybSn2iOJ+EHUZCngjUWsnKf76iVF6dqh0Zrn+qyJpAVD0mvGDlTtsFxog2TEJ4+YOJ
         lQPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=erTlxwDl+Tjcf7jnjJQX2mty8xRjRt/Yc+wggHygJ6s=;
        b=0FoNPawoMzjNjQjvUqRIFO4TOH35k4NdqhbEczeUw/WpaQ8I0sv/S7xUgUHGC8xcr3
         /epzbABN6nBbDgYrBHTCedCmILYs7+bjsuxxOYrU+gjvXHflowm70n+oFBq9UOtliMyY
         QFaKQnqEPucHcZ/P2XF2CWNlmlvMdQDMyX233z0TewDTjuCPSMVaH3C7wd2ILmC3zOu9
         9GRUv1smJbisKu/ykQRQcD4kmUiKAiXFcnOAsnpx6M7ub+xQuplJUXcM6ZrbpMGEyX6T
         pxybjA5EY0XSxeZ5Rr1lv3TnTA9k+BOkT1WBM0cA2GnHXb3AUBXZuJR3GeH52RjBnyVb
         NV/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RjeGfMg0;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=erTlxwDl+Tjcf7jnjJQX2mty8xRjRt/Yc+wggHygJ6s=;
        b=m2b72ML73AjKmcVGqZuWBgY7UTBOHIa0I6q/X1eJItthZJ3d56zBySWgmoguoLJwsU
         CLu0jUIiq/666br+1i8GkGFmb6+vBU/l6FP3OC2CZAb2JHNORzcATQ2Zs6g3Ay3kBTAP
         gRi9WsalHSF0YxD9tzbOBfLbDoIfUWEOk7RvkQx15CrveWg3vQXzpMUr+fjdvuFfgNxt
         e9XNPlBKX94t7ncesxjwatCQl30bTrloEaqmHc+Rx7iZ3NH42W6po898Plr4MWsMynEN
         +CKrcAHKdLZIx7f6qGSj4267LKugx4S/7dCj3xEK1fZZ9CNIDW7kuML2OegU0Z5Fs0Rp
         Xdkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=erTlxwDl+Tjcf7jnjJQX2mty8xRjRt/Yc+wggHygJ6s=;
        b=SpHcUOXjO8go1uJiw146vocHv5TDwr8/8NryEIYQkzrsHl19X7cjXZS3arAJ2WTOSm
         6nnkiosaHJBRjms71bPrOyIpjMUZ+Ic23lPclegR1ojAFhyspQdnycPFIWLPQKd9mZv2
         3MNpFLaMQ0GSCBtpwZqUK9SBIRoDMZUSJoZgjjQ2QW/SB8WTCE8L6JPVK4jYdkg4ruYk
         2acuD47OG+qa88QA0P53DUDa+Oxj+wACWMz0yupwRv8peMb2OSP+XSNpVMpe96YQmhIR
         EIUelFLBYYe6NsX3f+qmgo93C8KEz483mNe0DFw2yALe3pEMA+0fm3gms4VODFRoiaKx
         6PwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Xs4W+dmHHy6nv+BqlXMvFJJfzT+wULvIlxfLRM78lNiqum0K9
	IuiaPLh0y6UymrFGtFlUwBU=
X-Google-Smtp-Source: ABdhPJx7m5ms+6NWyuRF2n3U7oUmBcvjSymt3eQ8O4OQYWVlory8slNkhif5tzlKdqq3spq/CCODtw==
X-Received: by 2002:a05:6000:245:: with SMTP id m5mr14324364wrz.284.1615033548913;
        Sat, 06 Mar 2021 04:25:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c047:: with SMTP id u7ls6065444wmc.1.gmail; Sat, 06 Mar
 2021 04:25:48 -0800 (PST)
X-Received: by 2002:a1c:c903:: with SMTP id f3mr13320237wmb.69.1615033548042;
        Sat, 06 Mar 2021 04:25:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615033548; cv=none;
        d=google.com; s=arc-20160816;
        b=luHIEq7S13pTNKufEYo5uLSUjvKAE8+bsKwXbmNwGnduv/zdQm/yHAm/uQJiflOqP2
         T/RBJt0qnctpAtXQR9/ALb8yleWDsfpp3qMZnVSe2qatgmEq/HYTi6ReAQbCAPJdm5nG
         Gjp6Kzof2pXhwCJqfLmbZEa8jfl+auXrhg/gl0aaPUUVZvDRZuVUbjXZOmm4uT45jIB1
         C1Jg6BQ0C7SV9u7BNm/0zpcaO/KIdxsTfMsLs/aJa7q9iprdZNbeYvjoB3wb/gWfVHeJ
         y0MfG61UDGtNrYU/NQ0GTTV7zQFF2JfSEpv209ybtsZULgFSd9cdgy+QT+ITm0oCOwgY
         5ckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9QHA/auC828Jqan2akyk0NJH1AQcH9ax/tK0w9DMNcw=;
        b=zBq/FhKQMJhEG8seyAzj5hW8aav3kJKzOQC6sZC70jxzYGFTwZpe063Qg2SBbCORZu
         BKnCEcYfMF5QbkmB8fX3qTMfbpICbFajgICwCG3aa+r7l70Jhwbm/hw//SFpJwVvQAAt
         J8ZEWe/AdTDCKNUg6whsoVBAOy2YbD47V0McJIGmyGzlCgz0fQOGILIpNsdPLhL/bC03
         eZ6H3dCP1Y/It+ft2AWEdFCiyHfA481X5g5JaNdFKA24EisC0Y6Wfa0GltiB3AxLyQ89
         7lArggpa3r1g9azVJXWQ5WmCxhPa+3b2/Oa1gzHu+LHX3vH/mOeUuCT/1rugMWSUJ2n9
         lBMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RjeGfMg0;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id k83si224847wma.0.2021.03.06.04.25.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Mar 2021 04:25:47 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id u4so7936743ljh.6
        for <clang-built-linux@googlegroups.com>; Sat, 06 Mar 2021 04:25:47 -0800 (PST)
X-Received: by 2002:a2e:9cb:: with SMTP id 194mr8159473ljj.438.1615033547728;
 Sat, 06 Mar 2021 04:25:47 -0800 (PST)
MIME-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com> <20210223023542.2287529-1-jiancai@google.com>
 <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com> <CA+SOCL+M5YfhygG=ogqvqp7y40v+32RiteGr=53THzwvdGugyA@mail.gmail.com>
In-Reply-To: <CA+SOCL+M5YfhygG=ogqvqp7y40v+32RiteGr=53THzwvdGugyA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 6 Mar 2021 13:25:36 +0100
Message-ID: <CACRpkdYrqy78EfB_+UY0QtA0v0tD+_+O09Pod8-1Vd-p-VyMWA@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: Implement SLS mitigation
To: Jian Cai <jiancai@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=RjeGfMg0;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Mar 5, 2021 at 12:23 AM Jian Cai <jiancai@google.com> wrote:
> On Wed, Mar 3, 2021 at 7:04 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Tue, Feb 23, 2021 at 3:36 AM Jian Cai <jiancai@google.com> wrote:
> >
> > > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > > -mharden-sls=all, which mitigates the straight-line speculation
> > > vulnerability, speculative execution of the instruction following some
> > > unconditional jumps. Notice -mharden-sls= has other options as below,
> > > and this config turns on the strongest option.
> > >
> > > all: enable all mitigations against Straight Line Speculation that are implemented.
> > > none: disable all mitigations against Straight Line Speculation.
> > > retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> > > blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> >
> > I heard about compiler protection for this, so nice to see it happening!
> >
> > Would you happen to know if there is any plan to do the same for GCC?
> > I know you folks at Google like LLVM, but if you know let us know.
>
> I think gcc also has these options.
> https://gcc.gnu.org/onlinedocs/gcc/AArch64-Options.html

And how does that work with this part of your patch:

+#define SLS_TEXT                                       \
+       ALIGN_FUNCTION();                              \
+       *(.text.__llvm_slsblr_thunk_*)

This does not look compiler agnostic?

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYrqy78EfB_%2BUY0QtA0v0tD%2B_%2BO09Pod8-1Vd-p-VyMWA%40mail.gmail.com.
