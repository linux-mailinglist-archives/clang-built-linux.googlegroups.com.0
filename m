Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRX7QOFAMGQEJGYDQUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E9940B8A1
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 22:02:14 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id r125-20020a1c2b830000b0290197a4be97b7sf105680wmr.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 13:02:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631649734; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYo76wIjXivwUBigAtBxCrYtdHubl6DufgWY4Y+gSjwpgtM/9p1RlyAe6YBcGDoKQd
         q3GSMsMzWggfVJ0l3FBbV3viEliZ32bwi5Pabv+Qjs+k1hDlUCFBYT5GtUH1d8CamVct
         LC0BPBw4XL2R0FD0IlHVWAS9bAcP85ECC8jt1m8LnhxW0nOngGRjIVVozmIVQGIB/WDl
         /BLgw2oq1rWHe5QcM3qfhNJLfCQ6GMMS0OZeJ4n75bcqqrvX+0+EBZv3eVN2ageMqSsx
         UTgvqH+gRTlV32Z9IkUTpETHiFax1jxhIyN/KKCVo7+KFlkBvJw7qsVqFbzlw3CS71EL
         pCqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9pe0XOFTxThjdU9TI6y9WG1MJbIvci2fRYL7uzQ6KKY=;
        b=anM15KQNJgnKgCb+OqK//CrAz7k2DZ4t8h9plxaMnSCN8dVGiL5M101w5RyWz2VG18
         DRVJvRgsJnnpTwZt6CQ4kOp8sjNh/8vk8PTX8V+wlH7VrC9jGDdFBSYU16gq/1OJU0Ro
         r4SaCydKDacBG7Oy5paJeoNPL0OSEK0jijaaDLJhPEUCStggOOIAwNc/W94PDBKhYLXW
         wfPx8G48XbJuAwXpA8swJdlpmtBr9yL4oCYOy5dYmhN+0k6iDVtDGYGB4wyGetPEinqU
         YkOaBPF0zVjt9avztwPLXggTzQg2Jy0OmL1BJyBC7wO++sCfKGPq5RM/nKrYNUwDzUxb
         pr4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=AumVqFTP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9pe0XOFTxThjdU9TI6y9WG1MJbIvci2fRYL7uzQ6KKY=;
        b=tGFYbRktaxOq9r1FfStaewfjmtE9qEa9G7scLdKywtWDAEpMrGGgEEeEAzPpDlfwso
         PTHJQp99DLmcyslp3RnmrSwBJWSkwuwYC07DqhdotCVcxXF1I7EXhi+c+vwvcjVW8yKi
         W0+FuRef3Q46Y6hWlv55hj3lKRhmsFNn2ZPFTjzJYwQxDqQL9GmlSLclD2nBtkCGttOR
         m+ReFUfVqq6MgONnU4lcJHJom/33demU01bg5uNXB99v+9Skk3OWWyD2xq1BebVzCe2u
         ZSpTcAa+6Vtj+/iBCCKw6zs8vToF9HTrLy+nvoeq6obhJ/I2HGU7pSX/nhpFQjtImRdk
         UIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9pe0XOFTxThjdU9TI6y9WG1MJbIvci2fRYL7uzQ6KKY=;
        b=WPkIuCE7e8upSaGyWprEonHmBxinfcHHsCa8FnB7OXmXmYrgO6zi3ejagbA72oM4wf
         IsY68oz+w6X9DbkUgw/GPRe42j/O/zfvFRCDCCs4+kwOv/n6k9E86MGNLmhqn1FxjFod
         iVcUPHFrhtIfLlKu7SHIWTGXv0m/KnRylKahUTi7jeQL32AApCkFglCql+vNQ1ghNgzB
         ALXrt+hEvVM/b2IINXFSYYb8x0LBlK17JkVcuHkYRXqkMnIjqJ/OCSVRIVIoH/QCqlZm
         97uf59Q7a7/lz1MKjltekQ9iyIHkPUtJV+60I9A8SgdYFPaTyCto6pldo7PbPY4QHM2m
         F18A==
X-Gm-Message-State: AOAM531OngOhGOgNoUSxFVPYOd0gZ0Z2snJFMWcO+0ir1OZ/Q9aNIPDT
	/JyseVY95fpC+eAT4S9+9mY=
X-Google-Smtp-Source: ABdhPJxO3yESwfUrAt3XNLZHzYanQ7l+xRL4Z8tQ5pK6b9qXk++PqWT/H4R+yL4sVyNufhdg0DB3Fg==
X-Received: by 2002:a1c:f019:: with SMTP id a25mr911537wmb.96.1631649734350;
        Tue, 14 Sep 2021 13:02:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aacd:: with SMTP id i13ls118318wrc.3.gmail; Tue, 14 Sep
 2021 13:02:13 -0700 (PDT)
X-Received: by 2002:a5d:4744:: with SMTP id o4mr997130wrs.188.1631649733385;
        Tue, 14 Sep 2021 13:02:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631649733; cv=none;
        d=google.com; s=arc-20160816;
        b=QdC9DNY0tbb1GW3tVMeEcGGLI5yAn9f+svf9IPy20qdufkcnQvkLdLgl2O2/SRlE+j
         nrf42On2w6IumTfJoMup/D5ZvdqW3Y16f5MzqF96pEgqlfn7MPsnn3kVEAN2uixq9NE9
         gbIEO3LDMGQhhCy04jPmnn5CJHFWiB7F+bbpIfDgd4TaPpzs50MKAAXs0+uRLNHOYocn
         x/TFk3DgSvm/c12GENbJ+5svz3Z/USoM9OeAuz56L0ojdrp7ZzbQRvjr6wy7wroeouZU
         /NlzwewnLDBzNer4DjuYsRr4Pi97XzkzmewUO4DaGmj6mPGDvueuzGG2l9693WGU5ENv
         PXmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sbWkolcm+ANzoV9xuDvSV9WrohIVsxKiIB6DNRxGuYQ=;
        b=oP9+uJOp2pkKSlmCZd1ax4kqvIETAKwQEIuuGbms6Wpu91D3t3tEDyPiAzcrBVgXfX
         4H1R+l82gmd1HotWQXRWKnHMnEx15ZoWwC7+NlXzQ3XYAPgO6SN9bpOMc5uI3HWO2GQr
         FNu+NPPHat7O3nWm7KQLqIz0mNJGt6G0J6eo1iXCUNV8jPoSdmukPQ/eBredXue+LazC
         AHoZL7Zkrbz+KbY/j0k4BFmxhKuWoGQ/ireTfOU3LydY8Xs1Znr3yjH9cUC4QytbFP92
         Cnoq3pqLmcVRD/Lzmg0Zp8FMYcOn3E7TOxLEqoZpMFn/D8ifiaRsUQTcahdsW0T3yGtH
         3e+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=AumVqFTP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id b126si172447wmd.2.2021.09.14.13.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 13:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id s12so982675ljg.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 13:02:13 -0700 (PDT)
X-Received: by 2002:a2e:750e:: with SMTP id q14mr16766504ljc.338.1631649732696;
 Tue, 14 Sep 2021 13:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com> <20210914191045.2234020-12-samitolvanen@google.com>
In-Reply-To: <20210914191045.2234020-12-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 13:02:01 -0700
Message-ID: <CAKwvOd=OvR8iZogXhMxkbt5qT7jbhaARgk5NsCzhpkjoZ7yy5Q@mail.gmail.com>
Subject: Re: [PATCH v3 11/16] x86/purgatory: Disable CFI
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=AumVqFTP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Tue, Sep 14, 2021 at 12:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I kind of prefer the existing convention that has explicit guards on
specific configs (ie. CONFIG_FUNCTION_TRACER, CONFIG_STACKPROTECTOR,
CONFIG_STACKPROTECTOR_STRONG, CONFIG_RETPOLINE); it's more obvious
which configs may introduce which flags that are problematic. This
patch is ok as is, but it kind of makes this Makefile more
inconsistent.  I would prefer we had the explicit checks.

Does CFI actually do any instrumentation in these object files? I
guess issues in purgatory cause silent/hard to debug kexec failures?

> ---
>  arch/x86/purgatory/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 95ea17a9d20c..ed46ad780130 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -31,7 +31,7 @@ KCOV_INSTRUMENT := n
>  # These are adjustments to the compiler flags used for objects that
>  # make up the standalone purgatory.ro
>
> -PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
> +PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel $(CC_FLAGS_CFI)
>  PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss -g0
>  PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
>  PURGATORY_CFLAGS += -fno-stack-protector
> --
> 2.33.0.309.g3052b89438-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DOvR8iZogXhMxkbt5qT7jbhaARgk5NsCzhpkjoZ7yy5Q%40mail.gmail.com.
