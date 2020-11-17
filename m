Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ7RZ76QKGQEUBWTH6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DED2B69F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 17:22:28 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id i20sf12817372qtr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 08:22:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605630147; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7n0Pj0Q4Pxn7z2vGooMpL4wLONCxazwymatPrbCiy5Az62IQCd/+TcQjgk17878y2
         APkCp+E/ijgwxTms8jx7ze6PEiEhN8zh/jNjnSpWTx9RkKloQ/VBIS4SXKJNE23yHqcY
         g1aE71QHt1clmzSJvqnbjmF0+ak8VTEPZjOUjo6cfqsNeTfmrgWNIKm9Ho04pVn5KIzM
         KeLxBg/ROE43ZYK5ByhOtW5tXwjs5Us53Kmx4x5fKK6xQl+kU/9wr1vQDegUmXrlPLh3
         pY0J9/8tmlGSJhkbcnUxDRNka+8q+j1PuWyJN1V+rQV+CcQbL91fk6BSBPzLLGlksOap
         vLRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=naE3XuvfMe1OItt1gRRg2uJOTh59969S1UG/tmPYKkA=;
        b=JfLWLd6w/UIS5lHY7z7RksGRi57nYpGCmYbKW8qqeWZNh4dH2OjVYS5BUd7yZdkBKH
         buma/zkkeBQKCvdd3zjcpN0JBp7oEHeCc0eA7vxEhbQZKorqTCxw0mMSVkPj9OuApmg7
         6JwhNSDVR5npe5J7s4U+IUiZs4nsHMBGFTBAr94yUTdl9lMJWEpGNlSIoTHFo8qC4kMr
         6pcHCGA+Dk+HzTnrWJ36DaYP9Y3bGMYOT+hIViXOWIsOGFeQaPl72lBdOyatVDYMsITL
         o5daOk+AhkBtW2uabqBELfoVCd3VWdeUsyVKD6TxpmpsTFSWDd9bWnk+oUXHJyWqztlk
         FDMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aJlDOBsA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=naE3XuvfMe1OItt1gRRg2uJOTh59969S1UG/tmPYKkA=;
        b=j+3GLjOJmYhupkXgBJaFHA6pGvCI2FOKgHOxmBxw0n0oAwOjsTyYgj6M2Ie4QPR2My
         oJ1pEwh/1/dWYm5UBKp/YGLhHQ+5kiWCqMIPmMA+5Vxk1B6SNhRn3Vb/U5QjT1BCzEhy
         4a03mghXzDiULYRcR3QDx0ElaTK3tHtDhdIYquP4DjlJ391THKlAGoxMt5Tt7dWyZFaV
         tMLM1ofRyjagSyVzn1cR0EAKMbqFhdkbjuZ64QN0iwY5tl9aCbjRj0BsRTh4/yNCFu/K
         t2RRuL8hofYwNt9L7OR14Er3ujib1lbCRQnD6dFm8AJIVj70Xboi3o7lkMsTpVLGbQfT
         FKMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=naE3XuvfMe1OItt1gRRg2uJOTh59969S1UG/tmPYKkA=;
        b=eFJk9zjUxSNdJJrBa9g0+as8PiqM5kUHiFCyDXiauukJm89xGjbABAfnnohbCwU8fJ
         KP0FBeufoJ711qnBHHIkWEM8G+Dv4NDNGG8Qs7DQZobudtVzhgwAVddPh01+w5IAbfTf
         Qzb0wwO5ZPsEp1hDvadcebOh3+dm7AlSzOxxXPD/H5/+q3QjHLlLp4OW8flsxpiJqf0C
         rIxx0k+p/zGF2o8S3ggz+N+7+UepL657mJuMFM+W6wf0i1hO9XmNXht8dQqOZLQFuIUe
         0NmjJrkXn+Z+5J8rk+ycWsRB6jK+m4afEnIhKvxGRI/3/KCQUVa4EQHBz2ey9gJPWJpg
         xzyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=naE3XuvfMe1OItt1gRRg2uJOTh59969S1UG/tmPYKkA=;
        b=iFosP/yRCmcWkICEPDaI2YC/3+6NcPfK3MhorayMdz9TAqjCBq9euI6F365BddQyfp
         ZkFaHfOhhr2lHlRKA3RYmFv5xsuXUz1a7lk3TbK9P90we2H4YrtJjQr0NqLiuPT/hvR8
         1zL70mEOroDSGgRYhVUzUx8qwBYZAKWt/ztWd3XLg0SRwhC19fV6BfrLAXWYUGpjWDpW
         72+fSaWZ42iME6ti83KCZutXkv364SU47UEUP9gmKuezpTxF/k0JKVjunFDjdM2xXAP0
         nWBt0VvPel6hpHT2MqyPqLCFRIhtuWtTikFLvmcC32VReSWFEh3WB8DdpLXWoEujoUR7
         yMbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IL2cX82mcZppUbgdq/16UF43E3ad+OfX76iIrOfk/WKL0dUNE
	ALOBBL4RxSP5EPeEiPSzKvI=
X-Google-Smtp-Source: ABdhPJyQP6hyiD7WXvqZ8N/e5KWN0WplxEZHVFGdk05+TFabm2PsvDFFtxJtZ/EGaAfaZrww3nc5mg==
X-Received: by 2002:ac8:1c11:: with SMTP id a17mr420700qtk.219.1605630147298;
        Tue, 17 Nov 2020 08:22:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f3c5:: with SMTP id f5ls2803894qvm.5.gmail; Tue, 17 Nov
 2020 08:22:26 -0800 (PST)
X-Received: by 2002:a05:6214:6a2:: with SMTP id s2mr7255qvz.58.1605630146876;
        Tue, 17 Nov 2020 08:22:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605630146; cv=none;
        d=google.com; s=arc-20160816;
        b=bQFEjHZLnxzf/VAXM/ulote/SCPpO4UqdDmemF9gETVBTXJoliMVPPQAbXU1PMVVby
         /Th3vMQ6fUxljwmC6CiZlm9SwHQ8pXLMq+PX0m7WQOI7eCCZPGJ3Efta3rfNr7lz/uAY
         ocpAMS7YJzcwLJBIplP/+xaqHhpCTtTj3KYAL0/zryhOfnpf5OHvMVzhS7zxO/afEOd4
         GRvAsAwERxZ1AcysLnGS0ardLA8+0OqgFdyRcFGdkM7cWKRwvjQ7QG6RA5EcQY4h1Fzn
         qSIv+xx6+MwlcVLPufADYojACH7Z1mslvLHyME0ZbNvvkP6WWR+dri8jiMhrqMIcsaby
         y6Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9JS/uYKk8GrJCTbc2FAe05O+XJ9e/pB4+Xwp7tXwPZ0=;
        b=zzYPMKrxIYYsQUHxqZ1G/3UQIBW5/YS2n660pOm1VoR/pj8F4rbK31UAwtGdOJ0ylL
         2+vyK2i+QLXfcD5oTeh/Lt0T8etsXOe8qkf02BpqzGWXJZyJg71URJxnZia/CAgtwEYh
         5p1bZd+XjOxhUHxOQxDqXUcO8uGiugpfsNgb9/dOiDpps8LGZmX8lzc+VRcAu/1K4Bcy
         dkTVVIwiyuMir88aUDvN0orN8w1elmEUhDeG+Bk1pT9PXa2OINd5mJUXZTTzIJiLyFvQ
         /RHZxhy8tJZc2s1HqWsxhtbZVbNEJ/q16eLGVyHczJF6RJDczNxEsSEnHU85tePUQwy7
         OhgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aJlDOBsA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id n21si1068032qkh.0.2020.11.17.08.22.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 08:22:26 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id d9so20904743qke.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 08:22:26 -0800 (PST)
X-Received: by 2002:a37:8542:: with SMTP id h63mr366329qkd.102.1605630146479;
        Tue, 17 Nov 2020 08:22:26 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v16sm15074576qka.72.2020.11.17.08.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 08:22:25 -0800 (PST)
Date: Tue, 17 Nov 2020 09:22:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Kees Cook <keescook@chromium.org>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
Message-ID: <20201117162223.GA1428250@ubuntu-m3-large-x86>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <87tuto2qke.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87tuto2qke.fsf@mpe.ellerman.id.au>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aJlDOBsA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Nov 17, 2020 at 10:03:29PM +1100, Michael Ellerman wrote:
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > Currently, '--orphan-handling=warn' is spread out across four different
> > architectures in their respective Makefiles, which makes it a little
> > unruly to deal with in case it needs to be disabled for a specific
> > linker version (in this case, ld.lld 10.0.1).
> >
> > To make it easier to control this, hoist this warning into Kconfig and
> > the main Makefile so that disabling it is simpler, as the warning will
> > only be enabled in a couple places (main Makefile and a couple of
> > compressed boot folders that blow away LDFLAGS_vmlinx) and making it
> > conditional is easier due to Kconfig syntax. One small additional
> > benefit of this is saving a call to ld-option on incremental builds
> > because we will have already evaluated it for CONFIG_LD_ORPHAN_WARN.
> >
> > To keep the list of supported architectures the same, introduce
> > CONFIG_ARCH_WANT_LD_ORPHAN_WARN, which an architecture can select to
> > gain this automatically after all of the sections are specified and size
> > asserted. A special thanks to Kees Cook for the help text on this
> > config.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  Makefile                          | 6 ++++++
> >  arch/Kconfig                      | 9 +++++++++
> >  arch/arm/Kconfig                  | 1 +
> >  arch/arm/Makefile                 | 4 ----
> >  arch/arm/boot/compressed/Makefile | 4 +++-
> >  arch/arm64/Kconfig                | 1 +
> >  arch/arm64/Makefile               | 4 ----
> >  arch/powerpc/Kconfig              | 1 +
> >  arch/powerpc/Makefile             | 1 -
> 
> Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
> 
> 
> >  arch/x86/Kconfig                  | 1 +
> >  arch/x86/Makefile                 | 3 ---
> >  arch/x86/boot/compressed/Makefile | 4 +++-
> >  init/Kconfig                      | 3 +++
> >  13 files changed, 28 insertions(+), 14 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 008aba5f1a20..c443afd61886 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -984,6 +984,12 @@ ifeq ($(CONFIG_RELR),y)
> >  LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
> >  endif
> >  
> > +# We never want expected sections to be placed heuristically by the
> > +# linker. All sections should be explicitly named in the linker script.
> > +ifeq ($(CONFIG_LD_ORPHAN_WARN),y)
> > +LDFLAGS_vmlinux += --orphan-handling=warn
> > +endif
> 
> This is a nit, but you can use ifdef with bool CONFIG symbols in
> Makefiles, which reads a bit nicer, eg:
> 
> ifdef CONFIG_LD_ORPHAN_WARN
> LDFLAGS_vmlinux += --orphan-handling=warn
> endif

That is indeed cleaner, I did not realize I could do that as long as the
config was a boolean. I will use that in v2, which I will send along
within the next few days to give Masahiro some time to comment.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117162223.GA1428250%40ubuntu-m3-large-x86.
