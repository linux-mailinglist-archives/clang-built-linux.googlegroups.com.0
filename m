Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWEYTOEQMGQEAFL4VMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id C08C83F7EDA
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 01:03:52 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id u17-20020a05651206d1b02903c76e2b62a3sf271772lff.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 16:03:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629932632; cv=pass;
        d=google.com; s=arc-20160816;
        b=ns+G/D40nInFBarWnweWC3eeJ23pCCDnboWvbFmRffBILNhlGESKlsc3U/K1zc8vAj
         0we7RofHdLYpJ6+UkZPDJl/5f/LBzgfpjNXLRtPaU21nGLB+3G7+PadO35/Pj34pA9XS
         K4aA2YCR8AQroWQAlK5zMVHE3CVK0h1kAncyxFIiDiAc57i1OZn7XMNRzZw5M15qTAXV
         TEM6Yc6uvEQNoV3qOErczlrvmUR+w83jgz6cuFDLxwNGbm9lpLgo3AFz5xJGaRjnHRkS
         coSxFZaLtQ4z6Fy+NfCh5Phh6ngkaD5J1YkRUxoXLSVS93e5h1LsM8Y0pBKrgd77qotj
         3EuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Jhz0G0khd0/JQCSH3oMrAdVvknEYIONwKJMFSbeSpfI=;
        b=iudiWJ/2UWnCJIP7umpC6Ui8++S267Ja23iFpRhdAzls1WBNQaxJD5Q4ElQZLMVg4T
         KbeaPQGgU6TU5Bm3Ex78WYuhwe54sdXb9AWrELAs8Tm1MElOaqD5tSOqWJrK7jfI5Mje
         6KQ7KMy0RehGnMNeLsMLN4oZeHXn3WOB21Y3Bx0FUdZrbn4WUBTW5BY9gjcHK9vNs1T+
         fLWl1IWAW6R5IyXd5mGeKL7RK2g1myRD7ZkYOtpy19Gt0O1K3DFnpYMuiRC3yQUeytrK
         LKbkuHfgX9+hB8B/+TK9oBdGMgo0w7KfVTJBBcxR5Amjnz98s81QE5QGByqtRcwOlDlA
         e8eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LeHOXdGV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jhz0G0khd0/JQCSH3oMrAdVvknEYIONwKJMFSbeSpfI=;
        b=Hgu550NU17LAptW26HbAjhazrD5k47a9tgYX7v0DAyNTMS2Cv+63l/yMGPrZWpYnpN
         ujAmjSxU74peW5xLCca+Wd/JQNmfJyDdg0tsxF65+SwpcH0I4IrgDapKMjeqX5YHBQCV
         qyLeztFqTFZVk4/5ziozEM2qVDu/jE4gK718nDB6302NOeOWMwdcxjnta1BcTR0PUFRD
         8EbKl7qcsByybEgJBGyH+IgSMHqdffcU38YGy/QHgYUEP2JedPxgiYW9GNZlXboDe0ON
         6nk8q1mY6f1PHLJ/3ugWERsJCE+t2WwqCnx0WPeaOrCxx7+lkN+2NQegUl9bgdeC8Orv
         wBVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jhz0G0khd0/JQCSH3oMrAdVvknEYIONwKJMFSbeSpfI=;
        b=deCNNaV/g+baXMEYWD+WnYh2tzT8Q+ujDkBIhkAg6Vl1XJkiClTmZxmc6dDRwr1u2f
         rjsqVagapz3VUYrc0JEeL69ZnkTrySESCPkdW7QldIitlHunHtq3+vB5YF7F9paY7Bzh
         cbAkSUEAVRlYpiK+8WIayiqysAMc0Us7ZVpl8IvK4SOYb5xtgF9X1gnASe8LZ/2ZFDHp
         ral4okorce0BOUU7x85QvYr9sEl59MHbtwIblyfo9TY6u/2xzP4DXOxz0FyQn5eTMvO7
         ntujvH2mMZJWl7jwSnzwXPsha5Mj//43HD9cRp/XQwidfKlEDdTPY/KepvfytcqGzWbc
         X/Qw==
X-Gm-Message-State: AOAM530o9vYgia9DqxUeAUWtHBirUAEdd7LNz2cQkx1szZbd93NpkMo7
	6ugYX+uW8cdlmL4swjEiozM=
X-Google-Smtp-Source: ABdhPJxNUMmEXHcpKW3eL5pQur2IwmgUscXN6f9RPztw5VWoTIGM9PANm8htHXKAmvXD3MJzDNNGzg==
X-Received: by 2002:ac2:4c2f:: with SMTP id u15mr367804lfq.294.1629932632335;
        Wed, 25 Aug 2021 16:03:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:ea5:: with SMTP id bi37ls2615504lfb.3.gmail; Wed,
 25 Aug 2021 16:03:51 -0700 (PDT)
X-Received: by 2002:a05:6512:2207:: with SMTP id h7mr399314lfu.44.1629932631364;
        Wed, 25 Aug 2021 16:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629932631; cv=none;
        d=google.com; s=arc-20160816;
        b=S2lddeUlFXS/05m/+ICiTgcWRk5q5IDbayss7z/GUixLE8XM9pTetcZhU/6Gk6hcPB
         CwVgmCeLr9tJ9gB8ckl+6D+n7Zh3k31P7K3brsnjFVZ5yk9+OD5dWJqtsO23zOXQBUHr
         dZULPBfxVAOOWmWNAHIm0zI3R9WRlvyiFS+ScccYBoMdFtZzkzUUI/BxK6rQ27RPEqKw
         G7zNG53jfXue5Bwv93iz3hmd156ATDYX9n6alsMlJYgMDj2zu/MsBYDNbt4sgXSQCHlJ
         J5aUeIj+b3KSWUu6plGCoxJIHlAF1WJGMSgNif6G8Gj+e10TXIvk9s4dhmRgaKkNUr+l
         lAxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2OfbLRqwAnGB5jDnDWm7vnODC+VKBMH0mApM9uNShXs=;
        b=AYNclNQILTtUeVZnD7kB7FYcNoZn/GsDMfU5aW7QGt8eBkHbMaebRNBwehzdAU4bpr
         yDmtgc4E/n4+1Ork6Y7BDJJnUC5aNfCe4PGmS81jz0kk4oewOnRxKzYkSLKYEg5Qo4zE
         BNS6tT+rKBTI0WAyBkH9baxuJT1RvPBLT7RnJ8gb1PeJRzHlMNjq0XX92NONTgWw0coX
         N504kz/hxmTYOOvO1xL16bjPoAmZ5gTKdQDN9Z4WfC/tfP41VIRgNtXZ0Lg3bp3fFlHC
         0DeXvvaO/75c9SK0L8jPancaRBtTVpbz8aBZ/Hnyg+8nPgJ6Ygdj0yoRnT3JaEjpmVOv
         yquA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LeHOXdGV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id t9si69002lfk.1.2021.08.25.16.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 16:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id w4so1415320ljh.13
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 16:03:51 -0700 (PDT)
X-Received: by 2002:a05:651c:83:: with SMTP id 3mr477952ljq.341.1629932630932;
 Wed, 25 Aug 2021 16:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210824232237.2085342-1-nathan@kernel.org>
In-Reply-To: <20210824232237.2085342-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 16:03:39 -0700
Message-ID: <CAKwvOdk2mLem4w05o5cdr0Mz62M2CWeW+5LFnKE5L+pMPqa7WA@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Clean up disabled warnings
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LeHOXdGV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Tue, Aug 24, 2021 at 4:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> i915 enables a wider set of warnings with '-Wall -Wextra' then disables
> several with cc-disable-warning. If an unknown flag gets added to
> KBUILD_CFLAGS when building with clang, all subsequent calls to
> cc-{disable-warning,option} will fail, meaning that all of these
> warnings do not get disabled [1].
>
> A separate series will address the root cause of the issue by not adding
> these flags when building with clang [2]; however, the symptom of these
> extra warnings appearing can be addressed separately by just removing
> the calls to cc-disable-warning, which makes the build ever so slightly
> faster because the compiler does not need to be called as much before
> building.
>
> The following warnings are supported by GCC 4.9 and clang 10.0.1, which
> are the minimum supported versions of these compilers so the call to
> cc-disable-warning is not necessary. Masahiro cleaned this up for the
> reset of the kernel in commit 4c8dd95a723d ("kbuild: add some extra
> warning flags unconditionally").
>
> * -Wmissing-field-initializers
> * -Wsign-compare
> * -Wtype-limits
> * -Wunused-parameter
>
> -Wunused-but-set-variable was implemented in clang 13.0.0 and
> -Wframe-address was implemented in clang 12.0.0 so the
> cc-disable-warning calls are kept for these two warnings.
>
> Lastly, -Winitializer-overrides is clang's version of -Woverride-init,
> which is disabled for the specific files that are problematic. clang
> added a compatibility alias in clang 8.0.0 so -Winitializer-overrides
> can be removed.
>
> [1]: https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
> [2]: https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch! Do you need to re-ping, rebase, or resend that
other series?
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> NOTE: This is based on my series to enable -Wsometimes-initialized here:
>
> https://lore.kernel.org/r/20210824225427.2065517-1-nathan@kernel.org/
>
> I sent it separately as this can go into whatever release but I would
> like for that series to go into 5.15.
>
>  drivers/gpu/drm/i915/Makefile | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 335ba9f43d8f..6b38547543b1 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -13,13 +13,11 @@
>  # will most likely get a sudden build breakage... Hopefully we will fix
>  # new warnings before CI updates!
>  subdir-ccflags-y := -Wall -Wextra
> -subdir-ccflags-y += $(call cc-disable-warning, unused-parameter)
> -subdir-ccflags-y += $(call cc-disable-warning, type-limits)
> -subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
> +subdir-ccflags-y += -Wno-unused-parameter
> +subdir-ccflags-y += -Wno-type-limits
> +subdir-ccflags-y += -Wno-missing-field-initializers
> +subdir-ccflags-y += -Wno-sign-compare
>  subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
> -# clang warnings
> -subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
> -subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
>  subdir-ccflags-y += $(call cc-disable-warning, frame-address)
>  subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>
>
> base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
> prerequisite-patch-id: 31c28450ed7e8785dce967a16db6d52eff3d7d6d
> prerequisite-patch-id: 372dfa0e07249f207acc1942ab0e39b13ff229b2
> prerequisite-patch-id: 1a585fa6cda50c32ad1e3ac8235d3cff1b599978
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk2mLem4w05o5cdr0Mz62M2CWeW%2B5LFnKE5L%2BpMPqa7WA%40mail.gmail.com.
