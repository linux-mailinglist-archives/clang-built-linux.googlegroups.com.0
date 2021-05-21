Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSGAUCCQMGQEP6DKJNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D1138CF95
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 23:04:09 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id u13-20020a25f80d0000b029051d7fee31cfsf854474ybd.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 14:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621631048; cv=pass;
        d=google.com; s=arc-20160816;
        b=FmA8dXTQL8eOlrts0X61/WkO3tBKBiqYWtu8TidPERL+jNTQS0CeWZJ3B0qCUemZww
         OgIk6AZyC4bpKCUG8zP9mwO0qPw34wc0n3h+8NOSl1qvaAIKuUCQxo/EC2h0fty+FT2Q
         FmiXXRm7iDahsMXvSNQCTK/FZllqAW8iTeGf5KBQRlEr3bnO0VY66PS0XLMzdBRpZcxK
         EHWCSqgD42+HDO5D0kkQnS1hZnvpckhKq+ItBDuMBKYX6BXyKh148BJnjNJu6Ulyq7Wc
         aUKT/un6pKSbknBrE2z2Dut+Hl2q37OxpkVBZdf9qrn5SjWzVDNHaQyXJlbPVn8Ni3qz
         TAhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bmP776GyagaC3PcfTyzAk4CmYeNzFBUuO+K2SClQnMQ=;
        b=Fm0jYww4/ieNCBs5VUWPeygfsVcdqGTLg0pBXZWeHLOSrqXoj2LRv57XozLFo7IdDp
         hu5qkwkdCcXaB67KiyGyAguy3StDII5W9lB1rWNUa9At12DOUJb9U33iMTFw9AUVTOLr
         qp0mvr23HYu8iFvx7TkIb/TGsVPC9Emb1CdGmYi9RqRJgHDDPtCwI47btYpeXs1u/WW1
         qHAP6sIolWHuPpf3owaPOlGwI2JQBFWFNN5QkKlOTSW/TNWO0gCuZ11KDSWjrILaV6bi
         6zbgUQK8/P8qfoUuV3MtXh6Vc4+SiTnL/pL2oY5U0DyEHx85Z4BWsqZiYed+TZYuggI5
         jqWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fmlz3F4E;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bmP776GyagaC3PcfTyzAk4CmYeNzFBUuO+K2SClQnMQ=;
        b=s6b7x699AHER64zuA2UtBEnADXkSXNVQJxKlDWiYzO/u1DvqEHQMkQav6cPAVbzpTH
         HzPTMUIDmhmOxsCcO0ScGAQqJ0PjBaJfHGz/l+kXhM2Y5TQIdG3O3hNh0mVR8fb6gBZM
         pGiVt30XCJQQ2+f+BpIwfHBXggFhY0bvy5DZUN+MQR3T3iGrpDo7CdcutIAhoThPNbWH
         9+EoK8uAGzQ5WfSNFwQkp+lQ78HPpFJ29ZbxO++2XcSsTxU+qoCZ0ecXwaUbWe6+oJ6Z
         RHYSVBf7/UyBsHtgRyS9Wl5lyU/4xWjUVz9E7xtM+evXpRRXG4hSQ8/36ag0CO6yr8Nc
         XpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bmP776GyagaC3PcfTyzAk4CmYeNzFBUuO+K2SClQnMQ=;
        b=XenkU1OFO/SjJqyLwKn86phqLnPsMO/xskmfyfTc5coEUjMjPiDgoSv8+T8G7li78S
         cpygrshXgLxGy7N/QwM5Scm1VnidBzqyuwhpBkTGrHDxalMmNp06JRnZAhAPGprLtfyM
         t/Ul84j/dW8BOKojYZtdixb5Dlbc3zRdEPfHgF6RfEypi2HlhQioDZpXTfk/xxzrTTW4
         HUzQR21ID0dzXV7o9mpYFgECskrtmhLj3OUsWo5u9pnNBjzLKPRYHKHcdRj3V3IetTTp
         W/K3WGPa96O+GVoMDhyi7PBLVhtvxoVkO7pmU+VJFsljSagKAj/nSNlI1/Vi2jsm4EKN
         H95g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OtEUyBm/ohIU5vKktOgRubUhYR3iMFVl8Ieb7wBFnhJHZoV2U
	zQyfkQUY4X9zVs5ut7Jf3WY=
X-Google-Smtp-Source: ABdhPJxwuyzPBTchfB8QhzMu4rYlWkq4/xnGo5Rx6HiE2zLXa0lBNYRiBG+1HZbDsYsEomoRJr1a6w==
X-Received: by 2002:a25:7756:: with SMTP id s83mr17513213ybc.349.1621631048151;
        Fri, 21 May 2021 14:04:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2787:: with SMTP id n129ls3940306ybn.6.gmail; Fri, 21
 May 2021 14:04:07 -0700 (PDT)
X-Received: by 2002:a25:391:: with SMTP id 139mr4296425ybd.354.1621631047662;
        Fri, 21 May 2021 14:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621631047; cv=none;
        d=google.com; s=arc-20160816;
        b=HNLXn4uASfCWdm1Xi5crSpT+QxJZY8vtJcAR8ywU5307bjNXKauJaZNWpIzT6q2heE
         5xr+2C6RT4SWu17pII8GoS5Mt/hqjQUb+pHnQZoEoTR5RCqKCslnI+VJO2SzPiUdsyFM
         V276T8a7zTQ2E2LhcxHPbz/Edj7PjtSGD4StjyH5LwxvTgE6JVpr5XFm3VmPdQ8m8+pp
         q4hqBW1C+sGGYFDL+tzsJbk84kmLaRsUI67MMwvXBayKyzxY+anlw9RvbPc4lvtVakMI
         6I/9oMtrXEzX7RHVsf5pMP7aR3o80uVjI1Yy1v2pUmw7nBJcIYrpglGuoykUQaiSaAOM
         xkYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2b/KRjftYllCrfZajZzV4R38guHyJnFNR03CY9/Mz+M=;
        b=Cwne1+7V4mZ2ETnWxpfA3IKmZJ93F7lZBpzT19tcMxecuviE+FLHqsmhBrdVd1gwOU
         ZRy/U9YNB0NqytFWharhqlIfrJN1z9zUu5jVsOJUMHZ5FCqQpBikAnFcfOeftvmnmc3k
         8NUXtc8RNMtSbKXpb01Kq8CIKCVJq8iQ2FanzDRhuAq+j5y0HZ1ZUi35IaR9nOnlRkT5
         llF44TrGD6N+KLQnW5XsD7Ln1hkzFvXdRy2A4Bz7pj7+2GsGP71uymDscpGVaLZcJbG/
         F4U3LFlD5NSW2kOq4o5UEjqV5szUuB3qdb2kPJFvI1J9Rs/XWhRLpkSErG2ISfceo+GB
         Y+Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fmlz3F4E;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id p11si230120ybk.5.2021.05.21.14.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 14:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id i5so15234339pgm.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 14:04:07 -0700 (PDT)
X-Received: by 2002:a62:7ad4:0:b029:2dc:d1a2:b093 with SMTP id v203-20020a627ad40000b02902dcd1a2b093mr11791082pfc.66.1621631046887;
        Fri, 21 May 2021 14:04:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 126sm5107901pfv.82.2021.05.21.14.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 14:04:06 -0700 (PDT)
Date: Fri, 21 May 2021 14:04:05 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: x86@kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	clang-built-linux@googlegroups.com,
	Anthony Ruhier <aruhier@mailbox.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] x86: Fix location of '-plugin-opt=' flags
Message-ID: <202105211403.6E5ACDD@keescook>
References: <20210518190106.60935-1-nathan@kernel.org>
 <162161994470.2028902.331062863146834934.b4-ty@chromium.org>
 <YKf8mvg4diHLSJDt@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YKf8mvg4diHLSJDt@archlinux-ax161>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fmlz3F4E;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530
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

On Fri, May 21, 2021 at 11:31:54AM -0700, Nathan Chancellor wrote:
> On Fri, May 21, 2021 at 10:59:10AM -0700, Kees Cook wrote:
> > On Tue, 18 May 2021 12:01:06 -0700, Nathan Chancellor wrote:
> > > Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") added a
> > > couple of '-plugin-opt=' flags to KBUILD_LDFLAGS because the code model
> > > and stack alignment are not stored in LLVM bitcode. However, these flags
> > > were added to KBUILD_LDFLAGS prior to the emulation flag assignment,
> > > which uses ':=', so they were overwritten and never added to $(LD)
> > > invocations. The absence of these flags caused misalignment issues in
> > > the AMDGPU driver when compiling with CONFIG_LTO_CLANG, resulting in
> > > general protection faults.
> > > 
> > > [...]
> > 
> > (I've slightly adjusted the title.)
> > 
> > Applied to for-next/clang/features, thanks!
> > 
> > [1/1] x86: lto: Fix location of '-plugin-opt=' flags
> >       https://git.kernel.org/kees/c/5d6c8592ee5f
> > 
> 
> Ingo picked this up in x86/urgent so you should not need to carry it.
> 
> https://git.kernel.org/tip/0024430e920f2900654ad83cd081cf52e02a3ef5

Ah-ha, thanks! I didn't see a reply on the thread.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105211403.6E5ACDD%40keescook.
