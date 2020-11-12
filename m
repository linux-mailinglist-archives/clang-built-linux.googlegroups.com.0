Return-Path: <clang-built-linux+bncBDIIZZ7A64LRBPUIW36QKGQEAS74QWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9A52B0CFE
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:51:44 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id t188sf2933432oot.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 10:51:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605207103; cv=pass;
        d=google.com; s=arc-20160816;
        b=m3dZfquFzJSkTXXlv+dePbOXwhXmWlHIxJfAbyO18G8jJ+9XlEKk4zlx/4fxrbcrKD
         GwJ5WknJkagemGsEAy6hzStUmA52JGWwdR8nMfyBdhsWl7DxJzq9/OwydPO71aT8O/LZ
         IFEIGyhNnw8QL/JMaAD2KzBXvYG/T4nfAV+CxaibBqnVz2dZVG+VaxDyv3F0e7DMyUZR
         mF+kEX9zVNWZ6Cvf1f7oo6+sjtzLVCnspD06PO7LIkGD1gubU/oHmHElw4Jb1R1/Cixx
         NWHPpNrO0nDqPWQHBB0cpgiubIjT3nFLWRwY4nJoTgQnIxfFeO1URJVwSXRgYHyqQslB
         ChEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=c8vudFk0YlY8ZjeT7/XH7w0Eqkk51G0OiFwFdGzxuqQ=;
        b=Z1D+NQgcmj9KJGs970QzurkcyMIya8plYibnRrKh82JsNS/gtaF9Yi6C0As9yK6kzz
         zzf4ipXa1H0eaigTsDmRlXzQqY90zZfXmLU6gmELp5Ou1YMq0meuDYn97t0jB6l5T7nF
         HpXRoHHjsEqbwfayHSPK2AmQjGRNYo2eOHz5hxqngcTDh28YHJzHqk3fclXUuFb0N8ft
         e5q1+a7ivsBkB/NYYiqG2gGkWgXTzEycufjhXEBVQOTU6OZhfRA7OYy6R+18vAiav/c2
         bvNillTYZcfeitKMwfKXPKOCHED/zN1zceYfb/r70JMbRw0XUe1SrWGjObeltSNMejdh
         gOOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k01pYQ5H;
       spf=pass (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=willmcvicker@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=c8vudFk0YlY8ZjeT7/XH7w0Eqkk51G0OiFwFdGzxuqQ=;
        b=lAXw+S+9mGlDUmpO+gLcqFU3RQBd7OuEX5obXM9Mp1f61IX03I3AsEYKnAfGryCVzS
         RF3HrlhHOJExvXsD246JXwMCoL2K0DDmajiuPfLX5m1fdD0IJ1TDWJ3b+XxZLh/4hTNG
         6tLFTyGHZo3idx8mpTKlX3CE7lkotfCm3V9LX10dPdtD97RtND5J5nNNoGM3rLTMv0w+
         XUA4WVyTwA0adY2+vVHy1kEm09ysYGx5I+Gw8TDeIkOnJF7IJHHku0WfijhGiiXIIjkN
         m0P5/ZYj0mWuTIt03DgLq3axookJbwwYba7LhB3dvpfOYcjxoCA2ZgE/whngX8AynzOO
         PHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c8vudFk0YlY8ZjeT7/XH7w0Eqkk51G0OiFwFdGzxuqQ=;
        b=SjzXCc2LeWPJA5y46O585sjjplWscrbmjimVACkUadAGc82wEsv5vH+uJCwLXw4m4V
         c46yEZJerV0ssbd6wYkh3yX8s3IE6vfy6oplKqxn/NgEQU05ghlezQzB2eOhirUsGne7
         aaZDpYstOJFqEJiz/i1/mC00T7mTg+CwzGv8K/ZTnihalRXZr8TVJhrrBFLYv6CIyCfb
         BXUR1tu6Q2QLUP8lBGKE8M0BrHlIdVHyIphYc96RE+JjHSy6ifV34mbNRTgjc/nLd7M8
         pemggiLujm1fRO34odaDjH3Mp2Jzz2XlPmcrI8c2C4m8ZgX+jSHaOy/o5xa4+Z/p1X2x
         wM+g==
X-Gm-Message-State: AOAM5331EFQzLF8HaiAI8zTgQC4yCE6YsEgaALzCwnlv5Lh3jfHpRUG9
	hqAQMBzpHlZZWXszIjQ7iAw=
X-Google-Smtp-Source: ABdhPJxuocBSYyApvxlrN18QBL8ccVgJxCXKhgq/dBAVMtpQbyUcquehS1S/CTO42h1rlPO+W20AYQ==
X-Received: by 2002:aca:4306:: with SMTP id q6mr682622oia.169.1605207102979;
        Thu, 12 Nov 2020 10:51:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51cd:: with SMTP id d13ls952543oth.11.gmail; Thu, 12 Nov
 2020 10:51:42 -0800 (PST)
X-Received: by 2002:a05:6830:1556:: with SMTP id l22mr508185otp.102.1605207102625;
        Thu, 12 Nov 2020 10:51:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605207102; cv=none;
        d=google.com; s=arc-20160816;
        b=lzwodatXkaEjk02ucvF8SVbnd4fDLizGQDngzKTw5hs9d8J6nDREK2vMHKNWc3r/A9
         XuRNBFwalZZ0bLQhA8mNAkHZ3gLszOm0jlEcSQLjdJ/HogqKMAvZKyG/UpOM0nRX+JUJ
         +bu3AOzRd0O332hzscjzzmPH/aAydDE4Sq0YEQDRdUj6fhRFN1J6M/K1CI9Nj641C9Hf
         DJIvOJro2JS2VvjFYlDJ8t0KTJOhI7oup7V4PtHIMIB5NH4p4bEeOqDj9p8AmivNYZRK
         cR8AQeGCYXqYaFNtNeuu2JwqjSVSnPwCT+nNcHzo5+oPINEUB8ZrBlGTYbWsEeMWTw7A
         pZ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RaVZ5jM2Kq305TknFdq232t++qdgFqkARu+DxrhGvhw=;
        b=Tbjso0933VJFCbLOBpcHB1vUhp2i/KFmQLLu8Eeha4jLGwGZ2ZSoLeITWmkxXyNDT8
         7INcW9R0FnGqaf32xDnh+x4AMtfgP48iDVbrlRJ61a707cOCL6lZLSz/z84PROij5VGp
         /5bK+JlyXTCXPp0xPIDHSodk/dByvFZUrn6Mnrq3Gi6GsDUwjy/oH7c3eRKhY0k3tcb5
         7dhd6qdq5N9Rk6XnhWhIadcoMsEHEvYCJkd1kYHbthkEQqSdioTgUFjnzOLgmNf69sQp
         bPPZOULgsI5jqshYx/z8Op2lNOphnm+zAQkL366C8NSClRzVk3FoLezJmXfLf3w9ODfs
         6WGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k01pYQ5H;
       spf=pass (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=willmcvicker@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d22si641391ooj.1.2020.11.12.10.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 10:51:42 -0800 (PST)
Received-SPF: pass (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id w14so5376556pfd.7
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:51:42 -0800 (PST)
X-Received: by 2002:a17:90a:8543:: with SMTP id a3mr600513pjw.13.1605207101503;
        Thu, 12 Nov 2020 10:51:41 -0800 (PST)
Received: from google.com (15.4.198.104.bc.googleusercontent.com. [104.198.4.15])
        by smtp.gmail.com with ESMTPSA id k21sm6824459pfu.7.2020.11.12.10.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 10:51:40 -0800 (PST)
Date: Thu, 12 Nov 2020 18:51:36 +0000
From: "'William Mcvicker' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Andrei Vagin <avagin@gmail.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, kernel-team@android.com
Subject: Re: [PATCH] arm64: Fix off-by-one vdso trampoline return value
Message-ID: <20201112185136.GA585063@google.com>
References: <20201112001422.340449-1-willmcvicker@google.com>
 <20201112101204.GA19506@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112101204.GA19506@willie-the-truck>
X-Original-Sender: willmcvicker@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k01pYQ5H;       spf=pass
 (google.com: domain of willmcvicker@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=willmcvicker@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: William Mcvicker <willmcvicker@google.com>
Reply-To: William Mcvicker <willmcvicker@google.com>
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

Hi Nick,

Regarding llvm-nm, this extra thumb +1 is noticed after porting
https://lore.kernel.org/linux-arm-kernel/20201013033947.2257501-1-natechancellor@gmail.com/
to the Android Common Kernel android-4.19-stable. I'm not sure why using ld.lld
causes this difference, but this proposed patch ensures that we don't rely on
the nm tool used.

Will D.,
Regarding applying this to some stable kernels vs backporting 2d071968a405
("arm64: compat: Remove 32-bit sigreturn code from the vDSO"), I am hesitant to
backport commit 2d071968a405 due it's dependencies. For 4.19 at least, I would
also need to backport these:

8e411be6aad13 will@kernel.org  arm64: compat: Always use sigpage for sigreturn trampoline
a39060b009ca0 will@kernel.org  arm64: compat: Allow 32-bit vdso and sigpage to co-exist
1d09094aa6205 mark.rutland@arm.com  arm64: vdso: use consistent 'map' nomenclature
d3418f3839b66 mark.rutland@arm.com  arm64: vdso: use consistent 'abi' nomenclature
3ee16ff3437ca mark.rutland@arm.com  arm64: vdso: simplify arch_vdso_type ifdeffery
74fc72e77dc5c mark.rutland@arm.com  arm64: vdso: remove aarch32_vdso_pages[]

I have done this in my local tree and verified it fixes the SIGBUS error I'm
seeing; however, it seems a lot cleaner and safer to just patch the VDSO_SYMBOL
macro.  Please let me know what route you prefer. I'm happy to backport all of
these if that's the recommended approach.

Thanks,
Will

On 11/12/2020, Will Deacon wrote:
> On Thu, Nov 12, 2020 at 12:14:22AM +0000, Will McVicker wrote:
> > Depending on your host nm version, the generated header
> > `include/generated/vdso32-offsets.h` may have the bottom bit set for the
> > thumb vdso offset addresses (as observed when using llvm-nm). This
> > results in an additional +1 for thumb vdso trampoline return values
> > since compat_setup_return() already includes `vdso_trampoline + thumb`.
> > As a result, I see a SIGBUS error when running the LTP test
> > syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
> > vdso_offset in the VDSO_SYMBOL macro.
> > 
> > Test: LTP test syscalls.rt_sigaction01
> > Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > ---
> >  arch/arm64/include/asm/vdso.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> > index f99dcb94b438..a7384379e8e1 100644
> > --- a/arch/arm64/include/asm/vdso.h
> > +++ b/arch/arm64/include/asm/vdso.h
> > @@ -23,7 +23,7 @@
> >  
> >  #define VDSO_SYMBOL(base, name)						   \
> >  ({									   \
> > -	(void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
> > +	(void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \
> 
> I don't think we need this in mainline, because the sigreturn trampoline
> is just a bunch of .byte directives and I removed the sigreturn code from
> the compat vdso in 2d071968a405 ("arm64: compat: Remove 32-bit sigreturn code
> from the vDSO").
> 
> Might be needed in some stable kernels though (or we just backport the
> patch I mentioned above)
> 
> Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112185136.GA585063%40google.com.
