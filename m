Return-Path: <clang-built-linux+bncBDRZHGH43YJRBEMURSFQMGQEJNL5LIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 141D6428256
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Oct 2021 17:43:14 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 70-20020a9d0ecc000000b0054e6d44e1adsf1651529otj.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Oct 2021 08:43:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633880593; cv=pass;
        d=google.com; s=arc-20160816;
        b=nyv/cl5GU/8myya4eyYdsTGoX3dJu/CqYT8qRdtCMxSWTKedPUtyXvpGIRTBPybarI
         bHNx4vUuTgAPh9d7FRNUjCk6T8SB+ggv4eiRBARwNqHSunZRxzt33nCpuuCFLLCXfe0U
         XogbMRKChALDDcOUPe4wQUr9lAmhmB77V2IBc3QvDmw2KbDXlpFo1qUO8Gj3XcYc1qwg
         Cze4ZpF7TbfZNp9z+jKAqOHZlMPiOAqMZRm1Ea73JGx+TQs5YD4eD4LPjKwNFEVSyw89
         UIXpPp/pqCxokRVkEiFvILlK0VsO12USn/D6shs+Tkg4MPIUYMx8UMyMvOLcn9YNHuKc
         1XiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dBSVMPOTy4KaHJlOIi7FpvERJ6nOgk3HHPaaiOPmrys=;
        b=Bs4hGN2HduqC7yOfKgv4XnarKJvBVSrbM1Nh7msPvtbhS7OepWI0N/z5UPYbGsujJv
         3mgHP+SpC66XaunqPeSeALkF5OxshzJEgIcKl0EZcGpgCzG4WKpuvyp/kzobhS//JzhD
         OCVV9mfmWxF04/tGfUUq/NksWwZA8bcBW1sRj4oMMboQOKpZWkIvO6KrLcvshY3wnZ78
         hbhumY3DBkto1x0e1lRivg3FOZjBclHYUnx3EtESQ8v9jwChPOYXFm6TGFTzHSmIbg8A
         frBPOcZfizFRAoiDBO9alkQmveNMtK9IZGIErs0CtmUCX8FYlj3wMJCrEN6O6ADgdPkG
         iw2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=NnoI+nF7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBSVMPOTy4KaHJlOIi7FpvERJ6nOgk3HHPaaiOPmrys=;
        b=Zm39DGKnwHpswsbO+iaDLn76Z97sZHGDqLaYxSKwta/oB9X/zGyk97hGDgeYrtfPoO
         Fr0vLpxcJiGNixKU9mni97Gqn6DKAm4PikZA933YMGss20szlcb3mOBv2eFNRqMBBp2Q
         9x/wTagIkNHYQ9IojdZpoNm59/wdM3ABWoHtO7VbqIgKRwwobxa+IqXxEmMXXfEm+qco
         4FdGq8QSfmtytcPGzV8AT3m5deZeZuwS4+WZSpL0RBEKNlCsQlNdHyUW7L597PYwabxp
         727tv3fOL6zVbQ+5E6W4ZSidmvg+ennbobYal5cl7Via1EzGBOHliJD5WH7PnuqDuT22
         ahHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBSVMPOTy4KaHJlOIi7FpvERJ6nOgk3HHPaaiOPmrys=;
        b=BpZygKJ1nNmm1IyPJHjpTs3rg5thsljQgHE0VVCCOziwvhMPbNflDck1hXuBI2dDYC
         unnrUftZSV5njTVX6qOgF73+TuGFIcqxjVypn8t3wRi6PZAS1QPbk0va6k4URzK2wuU/
         dSyRJRQc+IP/Mq4XBtxBe0tefBU4C+DdVcZlIRQDmg4kkOoo6oCeJeVmthtEAS/+f1dL
         TrO7cv2QWKlUQ/pkdFcD93sVihr8HJwZ42YWPnGOsSTRgrP4vkPyB7hpAhd+50SS3w3p
         zhGpozbZHd9058bTwpG6c5jymGHTDJjhx1RTyR7mkp8iDuTwirkqExiLvhqD62l2NM0V
         Oq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBSVMPOTy4KaHJlOIi7FpvERJ6nOgk3HHPaaiOPmrys=;
        b=QRwLKUyf/Du/wApL+Bo4a+Nc+z4TW+79WvdaacFSdWvXq1Nih7ZH+ZYx+qGpUUEVl3
         QLwJcOVoXPSE+E6uy8V3D69U1+3RbcQFPf7J6OjMvmRWp3kyfksIPfAssUw+9vE7/vYw
         nHOn59nitNwAJdtv0u4HuifuZvEtfneKwTP957mH2NX7yeGATqBhyiArsH1HWJbZqPPX
         VHb5rEExSjwzkyNPR+k48HEijo7pLkVMljIYb5BhkzBQ/fnpXgeP9z+XFmuhnWkBGleQ
         TmnKeU0/D0McHeHfxbltWp1qq7ROAuceIpJxHRsFtV65lRhFrfrRLtNF/bsvljjko6rn
         TwKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mGykN3cDbS14jGmBOvZor95QtHWP52w7Z+CTir7o19GrbfozN
	1U4HKvMLnkLtT3lKP/GJjjY=
X-Google-Smtp-Source: ABdhPJx/2Er0mo1epFT9mRBr7GpsS95v4wctJfKavChqjMQv6cXbVuUoochxSf6vXTFTFsiNRfcgKw==
X-Received: by 2002:a05:6830:440c:: with SMTP id q12mr17330453otv.84.1633880593089;
        Sun, 10 Oct 2021 08:43:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:491a:: with SMTP id e26ls2395814otf.8.gmail; Sun, 10 Oct
 2021 08:43:12 -0700 (PDT)
X-Received: by 2002:a05:6830:4027:: with SMTP id i7mr3531345ots.275.1633880592761;
        Sun, 10 Oct 2021 08:43:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633880592; cv=none;
        d=google.com; s=arc-20160816;
        b=EC5kcnv9OmlpEo7roGSEGLxu3ZxxsfvUFJcVOLwAGDQ4xOFc1uZ2wMW1odmH1tQIqV
         mYxMdoJVtOH/dGPQvBzpz85U3tbTAJRcT10ydvId1W2g+5fp6MhpgbRGTNhC0ki+FVT2
         6w1+ir38gEiVnxMCKPn9/M9p7bkoeKEylIuj8MwdVuQ2bmm+Qt5PjWpza0ucSvBSrjJe
         A9htB2BesFaN9cObaJLlCx7fJNp1oqe9Q3dyt1F6ZGD6AMIOK0qARMyk3TI30DR9adWu
         sWPOxF62Fjhv7AFwauiW9Gcz/NG5JgY6AKmvtpzxzbdEntwjaZCc7loFOf2OSHnqKorG
         zvUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OpCVjCuc3iVcpX0DVnJmixGrpdrKly+/TAJywD3ztME=;
        b=AcE53wfZoSSK8pHDilCHr5JJiPaIla/fzcFTeisD23VpMZvgEaa6bc7hou4Cdkl1mT
         jO07vBv98YzjXEHTaaXKOnqz3fADQAFEYk4dnjFYafL5Ch7RT2Utzj3c/OJRdSaWWmIr
         y0P+dEHeZvPQ/AaTVAabFagbIPlSUPZPxlsAu+NKlwzm+Ofj0xU8xwbcAIcuh0eGYODw
         uLOb2RdGPK0pAfs+lIs/YNGqaZAg3nxBwt42atsC4keBA26hB4aCPIp8upKWU07Wvht/
         tYVH4INEzSYlE2seMCEAIO3r2DOailFTiVkJqvsNt+wiV0tNk3wicxGYzc6LhRxEYT8D
         zIwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=NnoI+nF7;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id m3si537886oif.3.2021.10.10.08.43.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 08:43:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id y67so4890651iof.10
        for <clang-built-linux@googlegroups.com>; Sun, 10 Oct 2021 08:43:12 -0700 (PDT)
X-Received: by 2002:a05:6602:2d4e:: with SMTP id d14mr2010596iow.172.1633880592478;
 Sun, 10 Oct 2021 08:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <1633878992-32884-1-git-send-email-ashimida@linux.alibaba.com>
In-Reply-To: <1633878992-32884-1-git-send-email-ashimida@linux.alibaba.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 10 Oct 2021 17:43:01 +0200
Message-ID: <CANiq72nBqiyrcaW47ZW-6i7zJ6HrmjZWSOr==HkEuBR5rXmpdQ@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V2]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>, frederic@kernel.org, 
	Mike Rapoport <rppt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, yifeifz2@illinois.edu, 
	Steven Rostedt <rostedt@goodmis.org>, Viresh Kumar <viresh.kumar@linaro.org>, andreyknvl@gmail.com, 
	Colin King <colin.king@canonical.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hardening@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=NnoI+nF7;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Oct 10, 2021 at 5:16 PM Dan Li <ashimida@linux.alibaba.com> wrote:
>
> -         This option enables Clang's Shadow Call Stack, which uses a
> -         shadow stack to protect function return addresses from being
> -         overwritten by an attacker. More information can be found in
> -         Clang's documentation:
> +         This option enables Clang/GCC plugin's Shadow Call Stack, which
> +         uses a shadow stack to protect function return addresses from
> +         being overwritten by an attacker. More information can be found
> +         in Clang's documentation:

Perhaps it could be worded in a better way? It sounds like it is a
custom plugin for Clang as well, e.g.:

    This option enables Shadow Call Stack (in the case of GCC, as a plugin),

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nBqiyrcaW47ZW-6i7zJ6HrmjZWSOr%3D%3DHkEuBR5rXmpdQ%40mail.gmail.com.
