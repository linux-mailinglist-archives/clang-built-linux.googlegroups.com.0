Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6O6ZX3QKGQENC5YWGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9003320773E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:21:30 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id n130sf1734267oig.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593012089; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1oEla1l8tNA6mj8h05a2j1gt7JBdhIpBo/GyC2cqbWNr6u71v2rAF8a8scl+gE+be
         NcVpBfSpnwvRNoWnMxpMUdRLc0h/ESo3H70PnQMtM4mAcxt/0rgK+AnhgfrvzQD7rpTe
         PLL6dF7KskjGPlSvolPBp7i717DtXOFLdLtTKLzFXhi6io+/EO41RXQ0XW8T8c+g3C3K
         XO+MPzayiuE15LKG3+xxMt29SUjXp+qllVolIeDArSlV/c9/7ZfOpLOCuXxqyfPpwq49
         UrOl5wxWg2/YpkzU4yYgNpCe+J7PzFy5S+BfG3zO8OlUqQ7H2iOT5BdSs1S6zPD1M4Np
         or/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HWkSxk/CiUoCQ7tWmF3evouNb1edL6SuyNe5KA44oLE=;
        b=kscxxWUDJ82l7DAIkjaK3FJrjFUjlYSdw37Vvd1GumXdDh1+O5aCdDJNAKArL5HQz9
         88Gh09tooACbL5xT0SUVSZo0YCFGzWhvsQbNGhlhMxwXTi/GkgwTxa/F72OAuSvAABTL
         HyvWJNXb6pnMS7Bvm7nilTE6/egwacyuQCKh4sK3Hvd2dQwEUsnpbuVi2yZBF2y9Y14v
         ojPbj4hz/GFckiM6EMSyqAlv1Km9L7CzXtsGfKS7R0FnJHxXGsDrHnJmZwkNfP7NYnKJ
         DLuS+TzGM9lNfOuq8BClClJn+SWkpnAtf7BXPCic4wNU988GFKwDCEzH6aaWV2tqv+QY
         INmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PFUTEJVQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HWkSxk/CiUoCQ7tWmF3evouNb1edL6SuyNe5KA44oLE=;
        b=C3f4NP5SXRzLi5EymeNS64qLPaFRHtgRfyHBWjII44wut0b2GD5YVIzAMRUJgAnQnl
         XjOs5EI9m0FZF6CzNIdW4/Wk5KAbJ0r+lhGPUOjmkI1u1thmCX/HN5EuHquHR444Ahc8
         t1sQJp6dooX50LzSw7BEycEnhpfgqJqPYnypaejJVpF9P51+lLwW98eaVYycsxUod/XB
         OJ6fn9LEBxjAiSDGU4OHZ01xH1MFMfbcMaInCAIxUCrNgHjI/ExEGpl+z73J7iIZzfoO
         CfqBxKhJt2oeBDv7J+cvJTjV1NrBSDrUxtIugmnMj2FtMxd1XevFKwHt4DI++fDuA3nX
         RCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HWkSxk/CiUoCQ7tWmF3evouNb1edL6SuyNe5KA44oLE=;
        b=Ko2PSOQhakUeJ6Ue7gBHKO1OApjdl0hR3PCHi9I7upHrBJYIBMfKCE1Q/m9XYmOP8R
         2pAvtP6TJ2I6kupr9KAs78JhihvVr8W+JHesu1qR9rC0iOWo+Cuad5v+lkEuOdn+6ADG
         1uUYyFrJtpmdxHOGc20jdU4hzP8pnl32xOnB9wn4UELrERLXaCpt1CFGvv5xlo3A/+og
         A+TOV58b/xbLDZdenn6C13uFa2BforSZ8Vg2j0P5zIyP7/WPlFh7TyLJAEWkdSrxFT53
         VA5UlwIkcJhH5UlrfjN+z2hyJb3+W+Jl3i36xiIfx23r/qH7D5NlCK90EcBbTvRzN3Q0
         lszA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZGV6X7boJmZFNS7UIAnRewOYNNtUfiCR02rxXStfhv1Rff/am
	toG2hkwgwbFfnneNd6z/YJY=
X-Google-Smtp-Source: ABdhPJzCPK8o4Ja727DFn4PbXgAOryiHJIXO4RUgI34f6+7ficRpKytV5sGAkDJDCUzcopE1Kbo4lA==
X-Received: by 2002:aca:5395:: with SMTP id h143mr20942246oib.126.1593012089450;
        Wed, 24 Jun 2020 08:21:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7051:: with SMTP id x17ls546167otj.4.gmail; Wed, 24 Jun
 2020 08:21:29 -0700 (PDT)
X-Received: by 2002:a9d:837:: with SMTP id 52mr22939650oty.44.1593012089100;
        Wed, 24 Jun 2020 08:21:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593012089; cv=none;
        d=google.com; s=arc-20160816;
        b=eBSdGEAx9ro37p+fLk8QU1oH5Odf7gAIcxdMXo805pxTpSFPqcdbhJYQ4UEHuQG6Qn
         QltBAxSkZcVQIWHubXqggnTD0nIVUcL6aLGPS6ZmFC3BofkjHynjA3nwFiQYPRTUDhWg
         /YeO41MOg6DQy2EuWN7v82AEMBbYO4Easi+Qaro6iAsYBuiiJWTqHfUqn4bgIYHK7zaO
         QvXyGWu5HCMP28fiIm6zEfEnxUCmrdKk8FDz6dEgD+IClubwBf3T40CrlwtB01TgxjX+
         04VG4qRa6K7PK25ZboicQ5SBotmasSZ0NQBKuLAya5OHytUcXB0tcNhne2/R+RPnh0go
         OBIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hipZu7svv8YCOGWfV429rAgefIwLANWXqxhaAHNlUDs=;
        b=AQ3y6zxbYfuUBIYIZDHI5VzTZ9iqR52S2hEqwKyW3tIu//zgFM2LjXHYZUBLw/Xa/o
         RNgOEbtr4QXk2DMTWlgLaSPIjM2+T8Sw+Hibak/jQAydRiQcmKj0sXylCSNlv+o8QC/j
         PZqbAiw1OSVw4ycrReyI9mMZoYHiYAtFT/yP0c74hcBRMn/sxnv2nv349I3SNiUOgP9M
         qKtq5G2bJONxR9JvIBNNbr0FUtTmabf8OGDHaog6rRlCgYMfk5YghTIx4YcoviAL70uc
         omtxnFArA3o+TTKHbDK8CU8X2sdMH38uscnmKC3X+3yUWALKkZOqovFq6cPBDRtuFwTy
         pSnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PFUTEJVQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y198si957668oie.1.2020.06.24.08.21.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:21:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id x11so1176395plo.7
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 08:21:29 -0700 (PDT)
X-Received: by 2002:a17:90a:cc09:: with SMTP id b9mr25741536pju.223.1593012088520;
        Wed, 24 Jun 2020 08:21:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m8sm5504017pjk.20.2020.06.24.08.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 08:21:27 -0700 (PDT)
Date: Wed, 24 Jun 2020 08:21:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>, Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <202006240820.A3468F4@keescook>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PFUTEJVQ;       spf=pass
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

On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> I'm not sure if there is a point to having PAC and/or BTI in the EFI
> stub, given that it runs under the control of the firmware, with its
> memory mappings and PAC configuration etc.

Is BTI being ignored when the firmware runs?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006240820.A3468F4%40keescook.
