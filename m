Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEVEZODAMGQE2T26YSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DE13B13D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 08:17:56 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id 15-20020a17090a0f0fb029016ad0f32fd0sf890732pjy.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 23:17:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624429075; cv=pass;
        d=google.com; s=arc-20160816;
        b=0BgVF/xeFcGD3l9ypy3ae32DkSs+b6yuQ85TZphwiR7up6Jxoh1z4k0KeHo8cOW1/c
         PO77TME3W/FTxdU8k49FLKtu6h2toxVtj6AOL8E9qXTT8e0soSfK23P3PXDuKkNZVDdS
         H7szDGtpPQar0PYSjEvvEy0wbZ6x0nCq4K9cG5tyyXGAQ6J//ND47kf0fHjU0aldCsn/
         Xte8us8n6H0wBPTHlPOdPMkAu1il3pgisjmBW7R4q7aVyazJBrx62T/mN3kyZohOuyP8
         r2LkOuC+pWCIXurjIJDrgj2Da9zEAWsL3nOok0aWeMpqC89mG3niJS22qskX314OWMxB
         ECiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rURSc3GiH0bCl+LU0Tomwca/82l8wfip15+AIIuB2lA=;
        b=IUY1kFHaEIZ6KSKyXOmFY2EfnY8Jg/SV5K7IngYiNbPYOS4HrW50jJU5LUNmkGDIeo
         yNFy6Y20WxpBFNKbdW4fKEb7tBh5K8RPhjN3oVYgSy1+70YZjAHbwqy1bxjOWVYvPxAP
         gXZN0OL88laPuTSSsayCvsAf1esUL91uNFCmIVHEqhC9nlcNiZlOcWcY0Jn6TUcciCqh
         vr+80USCuY/DolxrGOdhLoEeLJHvU/OYWvAbWzo2AMUoIOnUvVA/fuOtL9ZpBP2WLn1g
         aW/YpMKpOYVAk6Xz2HQPYngknXyFVPfVWF+a00p0RO4mRjrODjsGS4mfn/bEmjsSUMtM
         uQqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IfQNjiTj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rURSc3GiH0bCl+LU0Tomwca/82l8wfip15+AIIuB2lA=;
        b=p8x2TZ6/IkIbvKWwzdL/dC413iHyJg6KpBoh2W20X6l3mdRSeiqs5HlhX4+ziHKG7/
         6oLOyVq0HmCtFm5vhuQWTkEz2VVe2DkzXDrKypFbWvVTdY2shIe+nbWtx/zKyd9ha4j4
         MwnvlGW+u0r05KBQA0ZtCCQThVjtfXoqoYK2wW59+o0vo5y2Utw3i4ElgzEGpGeV6y6K
         QaFwFu1dJQc0age17pyXTzx0LmibH0eCBJ3jLdu2vWSdc+YAGZZnmczKn0Q7pkIQ3CeL
         REgcN0+hfiLp8up9b6bxlEU7NBIshIjg6T/IFHHjjG3PfAEW9vPsH/9414YNzh/ww6FE
         jmMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rURSc3GiH0bCl+LU0Tomwca/82l8wfip15+AIIuB2lA=;
        b=ahqhAZVQ/aeUTOtdXWEwgdxlFkCM5afGwwRqDOWjX4FhOKh14NUWqLwMDydmuFL5BI
         9O99TJ5P7N42/fIkYACSZdNrwVt9S8dcXx1JwvVl8TEl9bF3dYkPS+fXdW/6rPsokW6r
         hQCcLSbuuzkvRaHgajcuYlic5VwnzA6RtgiXoIwKdqdLIjZFaz2zwUujKdO7CV1ykW4H
         dbRsBstMAXzy7yIPn2fwPPsZCumNKC0CoZnkWfS2F0HHAL/jw5Ltq7oamxGplOuqL/TD
         Q6WAv2zlZBc6eHszBuY1may+P8lgrAOMs8nqgsF0Mnqwr0TbpRHq8zFgvWZgMMH6HHCm
         8mLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53337RyoIsE8up7ANF95cVFNI5tYjr6BP3EAOxlUGaryZo2KrLNF
	+zwAgsUG03m5I3Wf07WvgPc=
X-Google-Smtp-Source: ABdhPJx0SixECyf+8v53EgDvYmGBJtJLgs//Dr80nGhJPxMm5nMrzMQP1iVJfj5DU6pPfsWAg6DlaA==
X-Received: by 2002:a17:90a:fc91:: with SMTP id ci17mr7738008pjb.12.1624429074909;
        Tue, 22 Jun 2021 23:17:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:740c:: with SMTP id g12ls661979pll.10.gmail; Tue, 22
 Jun 2021 23:17:54 -0700 (PDT)
X-Received: by 2002:a17:902:e5c1:b029:126:8d9f:b595 with SMTP id u1-20020a170902e5c1b02901268d9fb595mr6837016plf.67.1624429074375;
        Tue, 22 Jun 2021 23:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624429074; cv=none;
        d=google.com; s=arc-20160816;
        b=p/Q24QgXDEHTanj8Ho+6ViK2u5+nLzUfkoqeBn5MZBgcKRA/RqSMRJasNUqb2j8Fj/
         PtAQqJ+nQSLhxyBqdJSI5YDloXwZNBMGHTir1pAq+aScJlpZlrYJnWXb5svxqeUfqUcU
         7cMKGtyxpyH0ormXk/zPl/2VxTtA7PFJUiRo93S8K0b41am9CYR5yXLpLk+4rwUnCs1H
         cmEQFyeLYBfniWJK+VEF52ur5rOfeSfTHAD/DCK6mIzDiC+RYRS4wKYKsCBOifMjW1lz
         iJx+nf10L9nOTqrGc5M+dcAbQD878WseiElTUB8rO56DlC6EynxqP+DisD9hvqLbr51I
         C6Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Tz2RBdudba5q9p5CtX8u2n7Y/c2CX7BU/uPpUa5EceU=;
        b=aNUU858kZItQl6jpKE0THwNYZiCUezu0i6dEX7+zflMN1UA8hU+ZjqBqJBiiTewi71
         Rl0dgtpKYUQD8PWxsLVjBL5rgL7rX6saK0TgR4Hh/F4ppteRI7HoyXNx96QlhAmHySID
         EgDDJPWTUWfHwu0Xb20UZzp4bkPKcSAtMQe71aNfCnyU68/raB1uCBRTyYnlX4Ri7Ha+
         V4CLPI4gvNguLrnXmRzylPurLtuAV6QJela+bWVQrHRc/nsyPnSPtbBaLddz2jGTXK5a
         vnlWwAC0SrK17dIkoWZzJxCWlp+ippKUZ8Nx6HxasVZdg8OOtX3jyKx+QT8w9GkLKw3L
         iFtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IfQNjiTj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id y205si145002pfc.6.2021.06.22.23.17.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 23:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id l11so893945pji.5
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 23:17:54 -0700 (PDT)
X-Received: by 2002:a17:90b:2241:: with SMTP id hk1mr7714688pjb.97.1624429074073;
        Tue, 22 Jun 2021 23:17:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z18sm1113249pfe.214.2021.06.22.23.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 23:17:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-arm-kernel@lists.infradead.org,
	Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-s390@vger.kernel.org,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Borislav Petkov <bp@alien8.de>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Marco Elver <elver@google.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Bill Wendling <wcw@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	johannes.berg@intel.com,
	clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	Martin Liska <mliska@suse.cz>,
	linux-toolchains@vger.kernel.org,
	x86@kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 0/3] no_profile fn attr and Kconfig for GCOV+PGO
Date: Tue, 22 Jun 2021 23:15:50 -0700
Message-Id: <162442894704.2888450.8087873021886781652.b4-ty@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210621231822.2848305-1-ndesaulniers@google.com>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IfQNjiTj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, 21 Jun 2021 16:18:19 -0700, Nick Desaulniers wrote:
> The kernel has been using noinstr for correctness to politely request
> that the compiler avoid adding various forms of instrumentation to
> certain functions.
> 
> GCOV and PGO can both instrument functions, yet the function attribute
> to disable such instrumentation (no_profile_instrument_function) was not
> being used to suppress such implementation. Also, clang only just
> recently gained support for no_profile_instrument_function. GCC has
> supported that since 7.1+.
> 
> [...]

Applied to for-next/clang/features, thanks!

[1/3] compiler_attributes.h: define __no_profile, add to noinstr
      https://git.kernel.org/kees/c/380d53c45ff2
[2/3] compiler_attributes.h: cleanups for GCC 4.9+
      https://git.kernel.org/kees/c/ae4d682dfd33
[3/3] Kconfig: add ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
      https://git.kernel.org/kees/c/51c2ee6d121c

Note that I've tweaked the series slightly to move the PGO Kconfig change into
the PGO patch.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162442894704.2888450.8087873021886781652.b4-ty%40chromium.org.
