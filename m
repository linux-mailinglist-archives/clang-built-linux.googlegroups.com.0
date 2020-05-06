Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLWMZP2QKGQEJEZF26A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF4D1C7648
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 18:30:39 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id t19sf86240otd.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 09:30:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588782638; cv=pass;
        d=google.com; s=arc-20160816;
        b=eEN3W0L77Mm1dmixhIUkVaGuxilCEZ4dMKFu1JFPTbWL2cEquoLZKTUIIlQ/m36s8g
         RhATfxNmpWQaHyMi6gMpHiVGri+dUWGl2eCJjh37OobiXs5ryNExjXKViG1zbRRafXSx
         2PvU0uGojjDIQf0x5tUYEn3xCKiWCKctR90AeDEXpXvXJsuVCd2byOz3OKIj6JWGDMCO
         JlvpL77DR1pj3i+adsrrdfTc2ED9aKByifzm0JtKSUdlPHtAQUbQaIMTLciZwlEQP4Qh
         lr+edClOGqM8i1EldwyoXTjh/L6sH5LZJoi/HQB38WdLwDoCiq8i1tU7TQrzmXx5dpWH
         fWcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=htc6ZPWB+d9dkm1q3mgfWvIg+UwASAzvOsnIF8NsOF8=;
        b=oGng1s8NjRV0+yArSWXgGhKStedQRZbnt09Xags+fCFzJfv1emUdRXQpfcGqT4p4Xp
         Kvb8FKwsEul8e/kziHBsSeS7AYh8EQO6xg72eWcTzzN9YkXJ49oYpFXtkJ0DO06jps+t
         d8+buws7eCVMfJwCZHdRCXd7Hxz0rU+LUiVx4TV3Y4ACA++TQ08xdZ+2N622iwfmzJdj
         e3X2RNs4/YQx26S4nYUgmYxPlfex9ZDiVg1Cjv5ruQ/LF7uQ3ihF2KNr3EwlLhfRA7uf
         kwUadYPVLnTMfAFDS3DeyZbxuxe4rDk+i6Y8+qof78Bk6SHmcQY13hiRBCBCNdnazj0p
         11aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZkeFAxUb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=htc6ZPWB+d9dkm1q3mgfWvIg+UwASAzvOsnIF8NsOF8=;
        b=cIcVfZAFmyXhGb1POhG2N5+MdcezsZRrchHldYYF37leZQtat9M9InZWlRSpmIwInD
         Oix6MD15XsZUbsg7X55HVeJyXl8dJ6N6+oMiqkLGEgqK/2u34/Y9gLLWAsUprdsDJUMq
         3xKGPfkmwBox4agg4J8EQNxEM4Zsaq5ncTe/Ye7uEhXSvZzyP+FTXAFD0KXFLnZMVtgJ
         tSI6dkNtWWUt/rkY98q4ImKZsYElokAuE4BfFt/nDeOlfVFoRAR9h5aF7qulHyGxEVAz
         3mRubzdD96teXKEe22sqZYDog4LQGAP/nlkXfaAtdd3qy/KsT3M7hpc8pGIaMZszr9+7
         ildQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=htc6ZPWB+d9dkm1q3mgfWvIg+UwASAzvOsnIF8NsOF8=;
        b=iZDsfPbWQdas32ZM/O+v0pb+WpYDhLKdzMGvtJysxu/rF9117IkWJIH+eB8MjI4iHu
         qQQ14uUjTCJLzSBl/clL3q3pnAJBRfU1r66cLOPPByS09NgIg5rNJGRQQYoPMd00kC4i
         NdQHLm+bnOmjwAk3YrMIdhj2aUkelSxjMPJC6DKYsNdgL2m83hFTBgJDqS9dP0xOge/T
         02bJ9O5J0J1bYZdKwgVOFPtp/Bm0EZSTB70xk1+Y90YC4L0kdREFXPveAELiaCZM4zug
         RvOmNGH730EcWUs86fK92R91eQbxFKjUPZ1VFpxa0M3MC0pQOCzBj2FJxPjpdf/SwrEA
         ifwQ==
X-Gm-Message-State: AGi0PuYZZl9J0FgzOXtoDU1R3zEatbbTd7oM+K+zNDUO01Sul/XVD9TR
	doAbgylQIAULtgdsWIdRkBI=
X-Google-Smtp-Source: APiQypJf4v9qME6k9DDWCd7VHmE6xSAJ63uufHgQ3yPpZ8US6LCxFdFmUYVlAETAdGsYX8z6LE1cPA==
X-Received: by 2002:aca:f4c1:: with SMTP id s184mr3379397oih.25.1588782638459;
        Wed, 06 May 2020 09:30:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7516:: with SMTP id q22ls739395oic.1.gmail; Wed, 06 May
 2020 09:30:38 -0700 (PDT)
X-Received: by 2002:aca:d441:: with SMTP id l62mr3443147oig.9.1588782637982;
        Wed, 06 May 2020 09:30:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588782637; cv=none;
        d=google.com; s=arc-20160816;
        b=SS64fhpvZP5CmRCrKkrJ30oEfu97M7uyxqiXVCB4HFNzCWdaTgAFeDqT8P90Ut7aDl
         3O6O9j5semw5hFQ2u4CAKHTHNFAwflU6bvpYoXmSUFeNsxzJnueYSMSORk1q2WqNZiYH
         oSKULcZwSHDLu8jjrm0WHQ2TcJIt5QBxPlTU6dgOIwNK9vULOQUR/nWOSfLea7EwnHS8
         ymM1q6CunJ6KCrRHMva/VNdgW+LFaD1CiWfzC2qcy7uRaVdIazqRnH/ipJgOWSaHK2am
         3p9LZQWBVjV9jRA70SnL3cn+P8lcenZt0JG3bvSZCIw/D4F6vMeXtJjUFVnouIqXz4A/
         P2Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZSjnrz5Vzljlo+S0Gi3AV1DTWDDAqSfmJlTYocyrdsk=;
        b=wsxozCeIQUNf7mX/5wtvPmvjyLwRYdgCvIGeoG9S5oTZw50U0y6iwuU+iz6eRjlnbI
         kuGXKIWOusiPpkyY+87F/eR86DaMWkeP58fKJaDoB+/P1R2/Hk++xEPfd6PDbWs1EXe5
         IQ2l2ruV/scSldjq1v1EgVDdZDzezjk73NOibq95tUnUoPbyzkIihh2gvBuMBVJ7/eDY
         REVY8EwzCI5hov2Dy9pc5b/m4JWYju5HrpV81qF4H8KOT4BJ6m2JV0GTFg+5VJACf/N3
         iGsHGmWjIb+mnKxRZw9L2pKfitzjN6fFV6ZvDkgdS1NHhD1/cL2Dp33qnFyjsYgIn1MR
         AaVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZkeFAxUb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h17si285253otk.1.2020.05.06.09.30.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 09:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id a32so1149774pje.5
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 09:30:37 -0700 (PDT)
X-Received: by 2002:a17:90a:6488:: with SMTP id h8mr10301547pjj.51.1588782636724;
 Wed, 06 May 2020 09:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141257.707945-1-arnd@arndb.de> <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole> <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
 <20200506153156.GA1213645@ubuntu-s3-xlarge-x86> <20200506154556.5fsxzs3vbfwixggd@google.com>
In-Reply-To: <20200506154556.5fsxzs3vbfwixggd@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 May 2020 09:30:25 -0700
Message-ID: <CAKwvOdnKn0AZTdaesEqG=uEJXzK+rQK=KJxqDQCFqAMFrPKWkg@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
To: Fangrui Song <maskray@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Torsten Duwe <duwe@lst.de>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe <duwe@suse.de>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Julien Thierry <jthierry@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Alexandre Ghiti <alex@ghiti.fr>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Steve Capper <steve.capper@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZkeFAxUb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Wed, May 6, 2020 at 8:46 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> Created https://reviews.llvm.org/D79495 to allow the function attribute
> 'patchable_function_entry' on aarch64_be.
> I think -fpatchable-function-entry= just works.
>
> Note, LLD does not support aarch64_be
> (https://github.com/ClangBuiltLinux/linux/issues/380).

I've approved the patch. Thanks for the quick fix.  Looks like we
backported -fpatchable-function-entry= to the clang-10 release, so we
should cherry pick your fix to the release-10 branch for the clang
10.1 release.

I'd rather have this fixed on the toolchain side.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnKn0AZTdaesEqG%3DuEJXzK%2BrQK%3DKJxqDQCFqAMFrPKWkg%40mail.gmail.com.
