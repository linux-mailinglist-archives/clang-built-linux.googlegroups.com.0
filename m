Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX7J5D3QKGQEZA7NY2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 066E820D0E2
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:37:20 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id i3sf6619675qkf.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:37:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593455839; cv=pass;
        d=google.com; s=arc-20160816;
        b=U1X/G1S+5FlmHkRdxw51dS4YnMMJD75l47LtOcU48KsBPjgPl3wxURCXVTaFB/1D87
         ZJRgeVmATM6RwCY/sz51joKEGh/1QWoLjPKO3PEHl0z5k4Tc9b7rKriyL9dMNF0AX17c
         APytshEyico4O6RY2p9+wHt5mCwNMg/wsDUIWG7QA86j4ZtY9V3Ul3hy6harXee9+0kV
         1JR2G3qUthTqzf13z3JjkzWVMDrbKrSi5fP6FMeoOwyos4z5j/SIYveO/eJ1B9ASdCbQ
         Mp3yBq1GW4RgHrA/2z5ElTfPYxlH3ppKhavETjnMeQfZCf5vPhlwSiHKF8yetJCWbCIb
         B1xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cIy9pACg1jAEoOqXw9cBjQyw6Y7CIruDRmen2ZuxeNA=;
        b=p7gYj4Dp5VZAeNoU+mxeJl+/jIIi4iICsonKkbFoZhrrdTYAJyd27QbTIuO3kWY6Ae
         mo9cKcFE7wnQjQrIoEocBlLMotHmXl7mlJbTxe3/X0xRnUpAcmhMeLtsLCcxdBYaK6H8
         spCDnxkbNxX3ZX+q8zuYFxjSq9FUq905hLnZUbCD5FjcPGNnzU541C2meeug45pGX41/
         jSCralMEx6UYBNdUOKwdr0EOm1PPJ0pOTdQfzCToqD4gu6Z4Nu6lk1AHkfb/cuJHUSzo
         Fvhu0PgQKbpKIlWkpPQ9yomJAPRU9sCMMdPEMsbn6zIynFwvnNoEzN7lUuffzSyy7MFP
         xi3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q8HPwYcP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cIy9pACg1jAEoOqXw9cBjQyw6Y7CIruDRmen2ZuxeNA=;
        b=WasjpUwAMa07T4VYHFvN1SrKaqk93YSJjwYjUHuB1NKG0VaOijM+l4lKYGCt6jKJMG
         HjQPtSaEfQ094kj8SqqcMFnuyx6FeWAnfpfk57EZXZSA0q+leieSlc8JmKzjDAIIAla8
         9Os7iDyQOXqjd6VX9k5VHJ4ehR6CIqoLL192iSfa4P04u1kWIpBrg4470XPSg5Qwvdi2
         a9MCy6e6K1/mElo4YYMX1zc4lJf/cjjMjEoFKpqLfGfu6OByWLxKA0n1fm4XTo8DzcIh
         LwuKz4FK6lF/GdpajLfLYh8XV4WPadwjopip4QMj9qnj3w7bZR39rVbu0MMKhmwrohBR
         R5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cIy9pACg1jAEoOqXw9cBjQyw6Y7CIruDRmen2ZuxeNA=;
        b=rbspXXYb9+CaZRpwuxBrtvZYx4GVsjmxRsUlOGByGtOpZHFrouUNjdCgKAYTArLCCJ
         M8VdHhGui966+fToCCtaUY/ebbj1dw3fxiLHGrYD91HOuPG09nWK6ycEU+la9SbvSu9E
         AKEgCI18/CcBAeAQgWCZX0HFVe/J70zKusPas7YB9GwJH0O+YHjriQLvr7COLCwCVx6Q
         IHIdsiLh8sVfyT01v855Lm/cchcPWGPKlf5u0p4dPeygAlxGXexrtm088qFIdauRZKig
         8KsMykres+/UPdYqsCsVwuxyxtLU99QHkjYG/MxujcnQYIiFkO/zccM2mqh69BMlWOpX
         TQUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+DWrPEucIJN9yGhLbwz5hOBr4b8N+EXhztwFbxiuTTDgNn9//
	fb3Z+ut4uFT3hQ4SfgACvw8=
X-Google-Smtp-Source: ABdhPJwb6WsAY11GNQiCzk2/8zjrno1TrOp94he9iK+W8X3E39GD1+Beze/WgGrmD/QnFO3j+IMUkQ==
X-Received: by 2002:ac8:5350:: with SMTP id d16mr17145720qto.279.1593455839088;
        Mon, 29 Jun 2020 11:37:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d01:: with SMTP id 1ls8481145qkn.0.gmail; Mon, 29 Jun
 2020 11:37:18 -0700 (PDT)
X-Received: by 2002:a37:a5cc:: with SMTP id o195mr16760074qke.326.1593455838761;
        Mon, 29 Jun 2020 11:37:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593455838; cv=none;
        d=google.com; s=arc-20160816;
        b=sGZ4bIE3ogGqSICd6sjIjialXwqbHfc0PV1hl1lyAsMQEH4zfKRL/Jzrc4H+1c0Z4R
         w+ApN6z005krs2JDNhhQ+X4Eg6Yx1mQbj6BzcuXr5VC/B9qiJTTKCXkZcEt1kIDxeOa6
         QYNgHJUwii+QA6IlDBv2DH6yDwkuWH0qFQK36ZFoqu3XlmHGKIPnjmJWb7z2fRoIhHwW
         /MPmqVG3JJPw7KBeCdgpKD3dcFXhL4zUgV7l+4XmvRn+1kmdlZzXGEYsBpQCoN8pVW1X
         kg+fC9dIS81u5Jo4O53SwzozlqQquWUD97eDf4B2ixaWIgqWMycHtA0rGj2+THwyao9A
         uzTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mHYFnEmrPBB0EoPbZgrylZKEYeUJ7dEY2zbQRVE/TE0=;
        b=eFUko77DUPCYhC4BuoIIZn4EYkeeFOkGFfZAa9Ff8O4yutdfa77tBx95W+5D+94+Nt
         HX7uMSo0JNBadgTdXJdl0tM+uv/GpijxrrVgxtkQ/n6WhEvjgo/bB5F9pX3Y5LwAprKf
         QgIWqgE2CLdtHuZG+S++hlSSOdB3srVP0kx3V7xNxiTPQwj0583DdeRZn/ZLgbrkpqfz
         DKWg5jTUr8i/JZifTH54La+4vVKtz317Z211JeeGGZEKfij0cZvsfV7LXkQsgjJb8MGx
         mbE5hVMe08ehJ+4nxg07kq63lpooX61L8VZHcYuiUex0ltAEc7PFmF+VakKCWbyghHK1
         0ocA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q8HPwYcP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id t55si19156qtb.5.2020.06.29.11.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 11:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id o1so858344plk.1
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 11:37:18 -0700 (PDT)
X-Received: by 2002:a17:90a:e884:: with SMTP id h4mr9418062pjy.229.1593455837971;
        Mon, 29 Jun 2020 11:37:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n15sm457229pgs.25.2020.06.29.11.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 11:37:17 -0700 (PDT)
Date: Mon, 29 Jun 2020 11:37:16 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
	Dave Martin <Dave.Martin@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: [PATCH v4 05/17] ctype: Work around Clang
 -mbranch-protection=none bug
Message-ID: <202006291136.E6DF8242@keescook>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-6-keescook@chromium.org>
 <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
 <202006290806.3BDE2A8@keescook>
 <CAKwvOd=DMfmvfiEX7KDPLs75SbNz+LAGSwC3V_=LgGH3kjtE=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=DMfmvfiEX7KDPLs75SbNz+LAGSwC3V_=LgGH3kjtE=g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q8HPwYcP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Mon, Jun 29, 2020 at 11:02:51AM -0700, Nick Desaulniers wrote:
> This is definitely better than the empty function.  Though a patch is
> posted for fixing this in LLVM. Assuming that lands before this, we
> might not actually need this workaround?
> 
> arch/arm64/Kconfig
> 1625 config ARM64_BTI_KERNEL
> ...
> 1633   # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> 1634   depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
> 
> So if Daniel's patch lands AND is backported into the clang 10.0.1
> release, then we might not need to carry this workaround?  Either way,

True, though as I mentioned in the review, I don't think it's quite
right -- the warning getting removed is actually quite valuable.

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006291136.E6DF8242%40keescook.
