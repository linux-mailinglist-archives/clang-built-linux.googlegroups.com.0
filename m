Return-Path: <clang-built-linux+bncBCR5PSMFZYORBD64Z36QKGQEEEMF73I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 077932B5DCD
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 12:03:45 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id v3sf7316208vkn.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 03:03:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605611024; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPHj16YEjnSCr6vin4kCq4MoHIc5Z2pyVDKb8b4oGICoEywqU2zvcpqTnZut2lTb0b
         HV4swL7J9K3FoANCcc2ABZ6j4MYyzknK1iFOfJmQCbev3NqwOphs3PN40UQbAnGPDVGn
         YgyGlnGFRzQCzxyURoShdql+qd5oncFtvwKqGDYolbrX4kqFq3u/khmC5DhUd1Gain4F
         F2ewPn2nZIfM2tljShHTBxZin0eKnWULU9cJTM6N6NLf8LSe8cDnj8M4sHxCDfI4nUnL
         3NpVb8HRoHVtJneHaI2N6w+VtV126uEGJySNl0O7C2UewQrR503DFIZZRfEEoTVO1Oin
         9L4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=7ehCSaN5ZvsIJ9NAnTqFvu6ojzCfhS3am32Q4KqoR+I=;
        b=uCzYULqZQcrNixuFmpjFHwS9nlYrYBQC7tLy8eoE9HEK0r5j0K/1B6S+XZVnJqVqJY
         fe7Ze1h+NXv3JlOVelud/4t+WdWyHWbysdgWVWIECibjckeyEMrbJJ2o2apPM23pMIk7
         XTNYCi8JzUKXCN7Olg/vin3h5Q388ZnAeLbSsLrTaTV8NFucYnsZK+7XtvVzcp0HCb4Q
         6aifMkbhjcYFRlIUY6g5gmWXexRNiVZzZhqXN/vygW7qXtnaNafl1EiopSbpi8+xN6rz
         p3J6QmeCiWiWiF71nWc15uTLRaDzq5w++vnM4n1rSjUEefFGcn2z3JamX4mTDvoGDuL0
         6QsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=jG5pC4Yu;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ehCSaN5ZvsIJ9NAnTqFvu6ojzCfhS3am32Q4KqoR+I=;
        b=YGP+XppEtbTOl2r/UPfKcd/CjJrG0JXrfkJzbpnqQienBLOzRfqxnwtzGW5/q3qbef
         tLWvBB4x0MKrXxvPNUwXi7sb23ImJTO6U2DMCzf66Mo1FBEh6Ra7YGyUFSjluL1tTmTE
         qu4mJlELr1HHZkhtWw181Hmjn4uwwpEXsMIgS6RPM1MxhVBt993KQCdD0AxxvU2H4coF
         OMaCYQyh0UXMNdgp/TmuI/axk9wU9cwDy9UdiuYtCgkUkPOPKw4JvhLVTMMn9LKE53AM
         Zw/qt8eOdlqSvF8mgrpEPGpsQc3d6YTIytKNfSEDw34jTZ889K8TNy5Ais5/Imftszbz
         diiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ehCSaN5ZvsIJ9NAnTqFvu6ojzCfhS3am32Q4KqoR+I=;
        b=XBHn6PZtQKvQM3rwAkozKVJY3NTYH0C+7D2KWlSH1vdy1YXSOFvwLhNFd5KUp+dnpk
         WXDZksODpTUp3ugSQCDnpWyKG7gJbREFnpRwUpXGQoz6Vy/L9sBmPb8Kq4UdIajPDOps
         nOKPmja2Prvvy66+YuxcmhxWFf3bTfiVzi+JkBqJH5DH5EQY8C8SJHlvmvZKNkFi+MCZ
         o0qwsCQN1IKwWsGpcxTvqmZxmm1aKEqGGAi99vHch28GH7QFQeDad+pVL93mbqQeRr6H
         v8ueEjiCcJGuFZbf5jwPYHaP7XG/1usT+a8R8M0i16oP0Z462le8KxuQ+OkqJh8nu5ZP
         +7pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/B8khyTQ8dPPdrcfuW+TYGikhlKgGFQfSkdcx3dvLUC8bwiTl
	d36Hvo5hp06W8nTi52wOnoE=
X-Google-Smtp-Source: ABdhPJxBKj1918fcg3Du9i3SDGEaJaRUjCpH0TljaxaU248U1rPq2ibhAIzNQCQHpmAjtst+BL5cGg==
X-Received: by 2002:a67:f7c8:: with SMTP id a8mr6407877vsp.54.1605611023852;
        Tue, 17 Nov 2020 03:03:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:649:: with SMTP id f67ls1145545uaf.8.gmail; Tue, 17 Nov
 2020 03:03:43 -0800 (PST)
X-Received: by 2002:a9f:2066:: with SMTP id 93mr9220011uam.123.1605611023307;
        Tue, 17 Nov 2020 03:03:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605611023; cv=none;
        d=google.com; s=arc-20160816;
        b=RsY5npeWnD5GfQ/lvWcyX/u5l+ZmyGnd7BzLxRReZl0cKGsH6rwe1JILtoY7UV6YrQ
         HVhxKEynp+WmsUfmJH7s0KIepSrNzq0ZOM6KXqU4wonrGPmskSciqX+AP1UZjj2k2qsf
         5yh7XyX6btemo7hqae2TE18089XNF5tJWDv4hxrfZCXPOw/ywgIW2URYNrYp8kSgxWJW
         5pMb+zcEv+Z6D7v+7Xnyk28hsmiiDPPKD8ik4UE2kUyH/kfB+P2PLLQyV1+++3NydYT1
         DxL8JOxCS3Re6yW2Fny/u/MXDstR6YBDfGkNTU5trPoS3oD9P/1uJdPS4JxYLjY3kW9A
         0Wuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=XfZj9ldLa8xAPH6rOUv99EXQxlQS/WiIFiUVCm7FMeo=;
        b=BUv8LbzY8vrtA5FWlxWRhAZF2pvvkKqahtZCDrIqWcqKKUduTjXDsMK59LQjuEUnUG
         rChtz9P9Tl07QJ6bblx54jO9vDFSIC7mrBDQ67xeSNFunH4X2a7IFA11S9a80/Mwai+0
         cuMW1tJZ+xJHbbTu5BoEAuv478qHq52EsYqsvZoT6l9RaKFuFXh7Me5nj7zuJ6AiUMH0
         dQLPWYRFVd/9eW0hwoHqDVmRgw/IA59ZwoqYeHQ821Tw86pnNY0/EoYPiitvJ1nDbp/i
         7uXPb9x/hTSHfCAXYS65kEGKPNlnDkSvFAQ/K+Fq5e7AMRYWVR8fOVod6v1dfRAxT/Uy
         e0KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=jG5pC4Yu;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id y17si1299729vko.2.2020.11.17.03.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 03:03:42 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4Cb32n6sgtz9sPB;
	Tue, 17 Nov 2020 22:03:29 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, Kees Cook <keescook@chromium.org>
Cc: Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
In-Reply-To: <20201113195553.1487659-1-natechancellor@gmail.com>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
Date: Tue, 17 Nov 2020 22:03:29 +1100
Message-ID: <87tuto2qke.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=jG5pC4Yu;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> Currently, '--orphan-handling=warn' is spread out across four different
> architectures in their respective Makefiles, which makes it a little
> unruly to deal with in case it needs to be disabled for a specific
> linker version (in this case, ld.lld 10.0.1).
>
> To make it easier to control this, hoist this warning into Kconfig and
> the main Makefile so that disabling it is simpler, as the warning will
> only be enabled in a couple places (main Makefile and a couple of
> compressed boot folders that blow away LDFLAGS_vmlinx) and making it
> conditional is easier due to Kconfig syntax. One small additional
> benefit of this is saving a call to ld-option on incremental builds
> because we will have already evaluated it for CONFIG_LD_ORPHAN_WARN.
>
> To keep the list of supported architectures the same, introduce
> CONFIG_ARCH_WANT_LD_ORPHAN_WARN, which an architecture can select to
> gain this automatically after all of the sections are specified and size
> asserted. A special thanks to Kees Cook for the help text on this
> config.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  Makefile                          | 6 ++++++
>  arch/Kconfig                      | 9 +++++++++
>  arch/arm/Kconfig                  | 1 +
>  arch/arm/Makefile                 | 4 ----
>  arch/arm/boot/compressed/Makefile | 4 +++-
>  arch/arm64/Kconfig                | 1 +
>  arch/arm64/Makefile               | 4 ----
>  arch/powerpc/Kconfig              | 1 +
>  arch/powerpc/Makefile             | 1 -

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)


>  arch/x86/Kconfig                  | 1 +
>  arch/x86/Makefile                 | 3 ---
>  arch/x86/boot/compressed/Makefile | 4 +++-
>  init/Kconfig                      | 3 +++
>  13 files changed, 28 insertions(+), 14 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 008aba5f1a20..c443afd61886 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -984,6 +984,12 @@ ifeq ($(CONFIG_RELR),y)
>  LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
>  endif
>  
> +# We never want expected sections to be placed heuristically by the
> +# linker. All sections should be explicitly named in the linker script.
> +ifeq ($(CONFIG_LD_ORPHAN_WARN),y)
> +LDFLAGS_vmlinux += --orphan-handling=warn
> +endif

This is a nit, but you can use ifdef with bool CONFIG symbols in
Makefiles, which reads a bit nicer, eg:

ifdef CONFIG_LD_ORPHAN_WARN
LDFLAGS_vmlinux += --orphan-handling=warn
endif


cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87tuto2qke.fsf%40mpe.ellerman.id.au.
