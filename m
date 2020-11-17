Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4UL2H6QKGQEC232CFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD522B7116
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 22:51:47 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id 132sf6915750vka.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 13:51:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605649907; cv=pass;
        d=google.com; s=arc-20160816;
        b=pngDLbwZib1dKBWZ20RB7p2P08L2LDBxjZZRmusmhWv7UcrhewBjZgbOUklR5BWDGc
         rOAa8Oz+xxDEoYzqRnjXVQJQBjtse6WybnMj17mxvYIvqYAlgCkqAdHzwYywT504vsqD
         YMgqfXEG9DkwF48z/Dr3iOjNGiA7tefRDQQggRBA3YNjY1nIdo6QcRNtN5vjbzToVjea
         +nCzaV83bhCibVrF/0KYEwkFv+2kD8m6IlnGeFi9xrwZZfTCc92k3eiffvnJf37RDS1N
         5LoURNqGyBWy647f7B/qM9aIG3HgCzlbIqZk0fYZNtPhxLWC1Q1y3nBvNMppe8hWXVed
         8XMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3nY3UpSXfwL5IjVDCcDkHmRb8PfQG4Fm3uUY5OK5f5I=;
        b=auouP7uMpBdV7TbSc1zsDtv+/tbQihz1JvejNUBf+o2N4ZWU7cgahN0LhX5MXuK79l
         fO5rvLo3H5XFy3hXicYkEUZRZjsk0gNG8ghV9phEo49574JXWAZsUc/DT7H8hdBOFK8B
         TqP0hMRlJpF0xk/VRaV8VEOz18KvdXEMWpzDXT4Az2vy5PIvyJbDfZK0LYXVFQspFcnU
         TBFWTXPaYM69C6MSUnjVZJkRasEWSskCUHK5WwW2+oNptk2fSD2J85jj2n2v8yFwhOKj
         Gch2EtQpRlflJliTmJ2MOytLqlYKm/CN8mJz4SoZ10J2SKLvoo/zxXchM2kJ0qM+BABU
         y/6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dZSJWDKn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3nY3UpSXfwL5IjVDCcDkHmRb8PfQG4Fm3uUY5OK5f5I=;
        b=WKrLFzPACMVtGykitEUDSIZbE9vE+dZJ/Vr6Gqxify/R83uyISFoYJfHVUdPbUOUsm
         nrgCjLhHL+WyeexbqFWcpXLRT8hcXBtJrisn+0n37XySHn8b003403xmeW8V5z2K2Gw1
         C1bLB/5MU86LCtpasXOvAQ9vyS2izOkKj10MkYk/M+ymWEpBstLpJrqbpArYOAff6cOA
         LtEAxciP1VRBDu0Gx5q7mNYsSL9l7DXjniZ226Ix8aktbLZZ/lfWgM6Br2xdAhiDJgwx
         0/wuR9CkW1PpD97QtUHi7JLWwkZUs4vjwupia8zAI1d8cfymPAbpamyfsxS1ucNHi9JL
         EKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3nY3UpSXfwL5IjVDCcDkHmRb8PfQG4Fm3uUY5OK5f5I=;
        b=LrAp5/WJXrF5qChWD2zE5OOmWYYt1eWl98dRapMTh14Woc5toYDWPVXbcswMnWkUH0
         9NC+pm+9nG41uhKE0/Kr9qm5/zUC/6p+BNLvOTZPiHXf7r/u58NRh9BeMWnZGKWh3/vE
         fjZEoJlxGeb6xnXc5HTyuSo+HOeJ4JcVE3O+/EZawEWnMz8TPPGUo6eyGuGWCXhn7Mdu
         q339vSyfCIzpTCYX1/V82dRyU09ipMQuYI0WN+/0cKvEKHzjqhO7Ghn5vY7TeTGIzUna
         VI5XOaKGEs1SIbWxHa96Z7dC3kacFKPYiefB5RQIoYgPq+NCXvbM3jGsLmZPk3a2sQJt
         /QJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YiU6y9PyKwXHMfh+XIwn1dEBmXq/X2IzhxyOk12x1vd/wIOZw
	GJnq3zB3U+UrGDTkvS1gLeU=
X-Google-Smtp-Source: ABdhPJyYbhvFqrLGaLN60y8g6X+fcwvPSVbby2dMrqBwivfp+wQ+n+qSJh/Jw6hriM+JtHfbVrVFaQ==
X-Received: by 2002:a1f:a454:: with SMTP id n81mr1364998vke.12.1605649907010;
        Tue, 17 Nov 2020 13:51:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d098:: with SMTP id s24ls2337425vsi.5.gmail; Tue, 17 Nov
 2020 13:51:46 -0800 (PST)
X-Received: by 2002:a67:e9d0:: with SMTP id q16mr1490366vso.2.1605649906462;
        Tue, 17 Nov 2020 13:51:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605649906; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOn2WseSnaUO3mC8IPFBbmjJSlBdByTBSRZ8g45YsUCAW/fomQWy2FWChcWbAjP9Co
         g7fvfS01n9py9hUKz4ho0drPfWOAjkF8gzipl24bECotYcKBZTzy2mjAeGzfbSYSPmbk
         3NQX1ykTxFAzGCaSMxzeuRYPrFYpKDMHOhLvXFYP0rjKVgw7mGdp2btp5Pwa4wTCLRSL
         ccrRRPVqhDKdohTfASq5bME+2N32hbNuhuLtDUjYj3nWTjbSs2HyRm2+CT9d+NnijMND
         hAcnhgAsFi21ZlroWgiW5vUZNeFpafcbS6d7JHMvyUboCi4E+f0uP3lTbkbSbsVjNZgB
         BKqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ky/CMCEHw6W83Pli0RSEtI4judjYnXP8NLTqyncoiBE=;
        b=rAQoov5xienQfblyUyTTGDpf/tXl0avmbcGQmleeJ6zgdn7eNPMcAArpP4uGzu2z3Q
         iubnXEWe6KsYTGRJSWEvDV/tcOnqWL6kQxYg5mn7PAGVKHoIldQcHuopfZcNeXipgWWz
         6mzrlFpVvIbl2cbhqk3IxjiwNGIJJvb/pQRH5LCB4ZHTY91TLwpyJy4P4v66bLc6Byun
         +f7S1nX8TT8+aThjKY8UY3nGVaVYsXBR84evY5QBXoMvAm5dYJ5fvTmVrXxLTJDP1ccV
         ty7dU4fREHE4YxrODUQdRqOygVwgWKS4cYzjWIVl60IC2lyjvT9SDPPld3nxc96Un4bE
         shOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dZSJWDKn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b25si169815vkk.5.2020.11.17.13.51.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 13:51:46 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 34so13652242pgp.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 13:51:46 -0800 (PST)
X-Received: by 2002:a63:7847:: with SMTP id t68mr5290408pgc.422.1605649905676;
        Tue, 17 Nov 2020 13:51:45 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m9sm42912pjf.20.2020.11.17.13.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 13:51:44 -0800 (PST)
Date: Tue, 17 Nov 2020 13:51:43 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld
 10.0.1
Message-ID: <202011171350.F95127F@keescook>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201113195553.1487659-2-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113195553.1487659-2-natechancellor@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dZSJWDKn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Fri, Nov 13, 2020 at 12:55:53PM -0700, Nathan Chancellor wrote:
>  config LD_ORPHAN_WARN
> -	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
> +	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn) && (!LD_IS_LLD || LLD_VERSION >= 110000)

Readability nit-pick... I prefer separate "depends" lines to make things
a little easier to parse, change, etc:

config LD_ORPHAN_WARN
	def_bool y
	depends on ARCH_WANT_LD_ORPHAN_WARN
	depends on !LD_IS_LLD || LLD_VERSION >= 110000
	depends on $(ld-option,--orphan-handling=warn)

Otherwise, yeah, looks good to me. With this and the other suggestions,
please consider it:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011171350.F95127F%40keescook.
