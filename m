Return-Path: <clang-built-linux+bncBCIO53XE7YHBBR5L2D5AKGQEXDERVVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D765725EB8B
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Sep 2020 00:48:41 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id k12sf6003326pfu.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 15:48:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599346120; cv=pass;
        d=google.com; s=arc-20160816;
        b=BuDxgz0fBFNZlkIgrp2J/QHcGZsK26b9/8vbqB4YAlAe0Cpqh5CQInrShvLEBaL2YB
         7xVV6tAt7NxAv8pMraVlNVIO+pefr/NxMzWTQnbwPdGIztq6yZieZyDl09U/8meyxR2Q
         43Lb45j8HCQJu3b8TfZH0+06DcddUZ6s/Xh9IOQe/wDYL1ZLNWBaso2+L4EcaPKlNFFy
         H2wUdwHCa1/QQHbu42jYwKIHyrBbh+rbiL22SdtubEE1JI2F8r+oVKozaN6U6z/zudOZ
         1eGZrbhsIXaEhZz5PNgPR+abXbvkFfGKY9vvKLhDKwOaGFzse/qOf0ZRT6K81LkL9BNc
         +hXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=PjWQYHwoOedpHPeNfi6PiXy5rX2pLk3tuHEOIT3JaqI=;
        b=GwE2nUyqxggabTQnB0xFrkaGXburAmUEpfh52UiTrJsd+OD3eAa290OREm18QckokY
         ElD9p9jndFFRj4YaXEmja782jJXsIgSc0Vf+ES/3TWZNJTD/qP5NLptO2X7HK41KklZR
         xksY9KwWY/oRTTC1Ae63zqLt5FXE+hVmlEGy1Ym3+AUfZTM7pYCxoE6mfzUwNOZFDFRD
         7hffMp7YPEiTa/KM1ZCw86mqE6SAQM9iSgWyEF7Adfb6fdzyBxeso8vr2cWX203aqxSI
         6tQ3arhL4GeWLwO2ZYvjZaJJZS3/54SD6MiUuE+wvOkUr5i5Vl9BRnAzibyVkEmajYBS
         jnBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i2sjWJ41;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PjWQYHwoOedpHPeNfi6PiXy5rX2pLk3tuHEOIT3JaqI=;
        b=VxBh8sON4+D9mkpIGjHkpnm84smRmI4DJhEilMUY/JfqL3IymZxc5iJvBV3wEstU8G
         WRspsd+u5kaC6pwEMfeosw/AiELnRCe9x9myz1cw4b8/lPpBzPDGruEDaWa6GGPglV1s
         KMhsf/xahN+TG06hDeMkN4JzFa2mVs8VfiLfkHp9nO2lgkdDzzY7ML7JygeT4KgsjFSf
         EtnH7j1L+Ikmic5hSskyjpAhhvXYg/jMQk1VBq8Pn9A0P4+RpTedxjm0dsuy0I4c9THK
         2HeG0G0vGJCH6e0ju6CpZx1NM4MWmy9LELK5R3lHfgrjwZ1m7n+65sDFc0uBzuUp5mcj
         C3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PjWQYHwoOedpHPeNfi6PiXy5rX2pLk3tuHEOIT3JaqI=;
        b=cOvYXmEAWc/iLIqIcjmGHo3zQjEr+KSd+XzbCOstwXedZoiOglP4WsO18rOBDBP2b1
         9Qve7FerGax+wDLq88dpIGj8KTAezZAcGjhdkOX02QvulbSKMoPLpzKoyClZCxVgtall
         eMEHIp17B4G+QXvfs9sE1LV91CQK/ot52F9Nz827AMjeZiPKhDESGg7H9v9h27nK7t9Y
         yJzh4LS0tKwMvpOBoqGleNb+gd+1pmjQZZ6JU1c8PIq0b+mIWHyeViQjR6crgwXnznq8
         rX/Ff5CfgP7FdP80H3PN8k1FCsx+XjWzeoWmSVYXCDGw57yShxY4bxLdDEnIf4uB+k/p
         LidQ==
X-Gm-Message-State: AOAM531klS2l1kGH6wYwVguCMove67GvVVoE5wDUJWwCRF1HOljZXeDk
	8yfO+lMYiAw7kyCi5rBXJ60=
X-Google-Smtp-Source: ABdhPJxLH12mZZ/jsdfn1SSwPs7NmQNKbdu2QZzeIRGv8OrMT48yXJKEH5cKO+5YWPHWqvRto/hRZw==
X-Received: by 2002:a17:902:b191:: with SMTP id s17mr7313310plr.128.1599346120182;
        Sat, 05 Sep 2020 15:48:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:be04:: with SMTP id r4ls4480697pls.2.gmail; Sat, 05
 Sep 2020 15:48:39 -0700 (PDT)
X-Received: by 2002:a17:90a:7f8a:: with SMTP id m10mr14490495pjl.47.1599346119459;
        Sat, 05 Sep 2020 15:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599346119; cv=none;
        d=google.com; s=arc-20160816;
        b=kk7zRBxfGYFHLUMrwSeIti7sXyhxZykXwLfyn9hQLa5QQSiaY+4VZmWS4uMt9fBiDn
         OpDZA77Clc2om+lL5kkmKP5ktL2ySrNdagFbot4CGfQjfgfRIUa/g3yk6W3/VMFypIfw
         /qxWToWHGgnUlAMyODwC67kRwiph5jw5rrq4lw2zNKMqwpIK9QNPR7wO8RXrq/r4LuBo
         vS+lo2aKzzUcvF1kvqepo3aQxS2WoKWyN3kHH9AgWaCg95QIu2Y8TLNEdjdd9fbQRwwR
         2USpqlm2ICnC/tUnwrSqQZU+5BwuBi9nC3MvbSQP8agz1hnZzr52YIiAyWGfduAsTYQq
         rQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=dYL37oonxahMiERY6M7bI0fQzZLAfl7INM1zulnY34U=;
        b=UdLFNjSEganetIZvWC4jPFu3uD7rT5Myk/9dPsiuHlhQKGr+awKgPnG+YQvYA3U3/0
         UgFOAbVELKAYwGRgO56qlFrUtqdzEXMt9CtiarEqPQsXxaDqni+0DUXLCb+v53M4N9JN
         lMhmhPPPz95H7Ajue/o+C999A6TycQ/3MuksrXr5zSzw2gglgHMMIyHyqUqu8r9PVu+y
         7pNAJI0HYANpifxRX7z0SqeVpDYW08x6uZgM/CbFFFM/u0vLGwPiIV6ueLj4a6Lm4USB
         hg2/bvIy95oEvDsbLOw46q5t4K0IC4oe1XF4q59e6tZV7o1DjI80LXTQakzpZAxoj3QU
         DgAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i2sjWJ41;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id bk9si557145pjb.1.2020.09.05.15.48.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 15:48:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id k25so6532425qtu.4
        for <clang-built-linux@googlegroups.com>; Sat, 05 Sep 2020 15:48:39 -0700 (PDT)
X-Received: by 2002:ac8:fbb:: with SMTP id b56mr14999497qtk.307.1599346118622;
        Sat, 05 Sep 2020 15:48:38 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d16sm8184604qte.19.2020.09.05.15.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:48:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 5 Sep 2020 18:48:35 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/5] x86/build: Warn on orphan section placement
Message-ID: <20200905224835.GA1500331@rani.riverdale.lan>
References: <20200902025347.2504702-1-keescook@chromium.org>
 <20200902025347.2504702-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902025347.2504702-5-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i2sjWJ41;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Sep 01, 2020 at 07:53:46PM -0700, Kees Cook wrote:
> We don't want to depend on the linker's orphan section placement
> heuristics as these can vary between linkers, and may change between
> versions. All sections need to be explicitly handled in the linker script.
> 
> Now that all sections are explicitly handled, enable orphan section
> warnings.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/x86/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 4346ffb2e39f..154259f18b8b 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -209,6 +209,10 @@ ifdef CONFIG_X86_64
>  LDFLAGS_vmlinux += -z max-page-size=0x200000
>  endif
>  
> +# We never want expected sections to be placed heuristically by the
> +# linker. All sections should be explicitly named in the linker script.
> +LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
> +
>  archscripts: scripts_basic
>  	$(Q)$(MAKE) $(build)=arch/x86/tools relocs
>  
> -- 
> 2.25.1
> 

With LLVM=1 and GCOV_KERNEL/GCOV_PROFILE_ALL enabled, there are
.eh_frame sections created. I see that KASAN and KCSAN currently discard
them. Does GCOV actually need them or should it also discard?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200905224835.GA1500331%40rani.riverdale.lan.
