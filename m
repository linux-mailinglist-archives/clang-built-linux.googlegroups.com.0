Return-Path: <clang-built-linux+bncBC2ORX645YPRBQV46HWQKGQE427DEAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 94845EC6D7
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 17:33:08 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id e13sf1111876pff.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 09:33:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572625987; cv=pass;
        d=google.com; s=arc-20160816;
        b=PriK38Mj7IZc9QfMooH9xnbGWtCRjiDklWrClmG83orYD1Xw3CddagMCgCYIjazrYV
         rzzVhp6n+zsaoMPNetr0HV8VQmfm8gcjhgSBVKRrkEl2PTUrfSIDMpMi24PswxfpWgO9
         eogYltikGZIfqTctEWeccoSqlGkoRZ4bWv972V1QmPRqpZ377za9rM9wysRGLOz3IJXA
         eTnYWT+WdYNdDR75xUpqkrZU4ETTJE6pzRE+iM22WzLcFaZ6v5LDSjIm0t3HqpZ9Zccp
         m99JgPvCFQyX4PizF+P9IqRLArMxfCFH6WxVCmj564vF56INyUpufuepqbfSueaFAB9E
         71vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VTLShMUoPDz3yai+Jo2KQuYtegITCCqbdyG/FKaB8ek=;
        b=ij/0lMjYPmTVAuDe46VzhqpMzcMfarKLV+w4Z9fqnjL1KQFWb/2F+jWzv5tplBIAqV
         Mva2hNj/5pIMNCsYZeXMCZNs2J79A67mNbkjzdl45NjQtuwz8bbCSi94TFbniOF4Tggk
         v/oyXTWLLa4Pje7T1EavqTzfX0elrMl/h9QheXtJtX8nKxhlxN/wH4KT+/PJ58jRAw4v
         DIbaEVIxJAExnFhO9UI4BFN63HP/kL9cEyGLWs8fnLcjwXrDgxPSqDdehW30gCes8b2C
         M57uBAis2Vab4H2EbxgWLzCLEYT736uWCYCKgs4xs0ZxyPNYlEvpOHSytxUZh56FYaT0
         mCTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mVdZ7udl;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VTLShMUoPDz3yai+Jo2KQuYtegITCCqbdyG/FKaB8ek=;
        b=JLjTADwphM5jg7v0nRUcMtj1TWMoj0rgYF74bQWmpMl3Hss5E8MpLRvt2PLAIE5ItF
         6O5FDiDRXwQPpP5QvJvxP2kZ2iPgmjQU3ZNZKDLtBtCgrQUJWo10JSv2pga2hlZR1so8
         ptsKlTkEd1UpTnIK8nM45irL2X0lF386dNvayQHhg8QeSyN0o9TtSUb2HsoR1mSGMW/2
         TvtoS2xFivEBc7C1iJioXPat3auZ0kkS3G00fI2fhwOhVuWqPStHLt6pQMGdEXzvyC2U
         heCkeoOVTJgUpnP/jKFDq1DaTONNqM4H5rukVzMyr0H5HjyZIPWkWXGZz8oBsTDzGo2C
         qc7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VTLShMUoPDz3yai+Jo2KQuYtegITCCqbdyG/FKaB8ek=;
        b=NEcfjHWEX7dIlxWgRpvpLI5xx3vXH/ceG9h/M9knOYPa67yHCOozhZ7/KKhQXTUtGP
         JVnGpXhrJ/+DKfWh9kjTaDXneK2HRGzGDj1OAUldaxiVbPS+XslR0GoUi/7jfiP9OsVP
         RNEeK45NvHhl8N25nrU5XeRcVJYymUQLYte6czF2wN6Q5n5Kk63ATVIZ1cL+VeLMebyU
         GqJmSc5KOzPt97DArHpgAjPLspr/NknXc3VULD6qcE5vbY6L3kt7T8KOoF0H7XBHs+6S
         yECmr0XVD+O/wQ7c0KZfUnQUv6L5jPmQ1Pr2ydMYoShq9Xi/AcvTRBBAG4H32grnEC77
         U/qA==
X-Gm-Message-State: APjAAAXGtZX0z4fkt55hHNtyBrJYlnruAnTf79ZcmjY0Z8HPcF5m839r
	zGOWmNRYGtdw1TOInssSGg4=
X-Google-Smtp-Source: APXvYqwYk8rgMBLKc1F3LTAwDeO0mg+gsQ3t60raoeDfQDxxFxZmnVkDOxJ313S9eFTZoGJmMoU3Wg==
X-Received: by 2002:a17:90a:23cd:: with SMTP id g71mr6375672pje.124.1572625987076;
        Fri, 01 Nov 2019 09:33:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b90c:: with SMTP id p12ls1852303pjr.5.canary-gmail;
 Fri, 01 Nov 2019 09:33:06 -0700 (PDT)
X-Received: by 2002:a17:902:59c9:: with SMTP id d9mr12937102plj.229.1572625986538;
        Fri, 01 Nov 2019 09:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572625986; cv=none;
        d=google.com; s=arc-20160816;
        b=JRHVG7286m+k0MPUwlbdSChA7Cunro31gJWVI5IE2djfXDME4FEOmDV+V6NDW+FPxo
         vUF/rQbH9LUsJ3noWXF6FL1rziT99CkGBbw6knX90mFu2O4WPMkV5x9SSG9MRi+mDyBX
         3siu+IfWYPthCRIFjF4K3yBWeUQC4Kbo7IXL1golWKuu0Ev6tqJzKn+jge2U3MwU9Dxo
         LhUXtckb2lsrSz2NcWcGgJoHSMFO8dDpNU+nDF33SL4XuM3WfFsffmBjnU3M4wdY4Ixi
         PMmqyITsG8Sy9LpvX4ny0nS7hqwWjoo7CM4dN6u0En1tYkQMRnZmJr5i5y5bINnPgRYn
         POvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j5WHWvyJ9Hz5kosmku4ReDEqbYSNCjtYvPAtQ8gov0w=;
        b=iI++UDFyotHlohk0Rp8T4JYoOpILVHQE+HqzlKj0qrRbH5PSoxIiYRmoMOtZ9U7S93
         KLrMUcrAYFfc7UseY3jf1rK+0OlMp6lqevugKmqq5lvLjOSoV9mS0Hw7xJxkTR4CzoLF
         oCByZx0Nb/zVf1MqTkOPDyTmIr+rIy/4NK5C3cuw+vtKq85gLAW3yZAlYNwF362djVfO
         fQgh4TRehSRUnd4XV+kLgRbgKsvfNNpr7Db4GwRMJ+8hzzGZgVQDrUdiCVd8ql1uE0ob
         t39tLlv5Tl7+QDZyS34mJM2EI8kqYoMhK8sF5MRflOew9WFzSwWEZ9zG8RG1U1wRRNtV
         VZvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mVdZ7udl;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id s26si324534pgn.5.2019.11.01.09.33.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 09:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id b16so560658vso.10
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 09:33:06 -0700 (PDT)
X-Received: by 2002:a05:6102:36a:: with SMTP id f10mr1696654vsa.44.1572625985166;
 Fri, 01 Nov 2019 09:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-8-samitolvanen@google.com>
 <201910312054.3064999E@keescook>
In-Reply-To: <201910312054.3064999E@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 1 Nov 2019 09:32:54 -0700
Message-ID: <CABCJKueAf3f-rHw8AXJKKi=kfnh+nBMpJP2Vb2DVqLUWZVmFqQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/17] scs: add support for stack usage debugging
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mVdZ7udl;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Oct 31, 2019 at 8:55 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Oct 31, 2019 at 09:46:27AM -0700, samitolvanen@google.com wrote:
> > Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.
>
> Did I miss it, or is there no Kconfig section for this? I just realized
> I can't find it. I was going to say "this commit log should explain
> why/when this option is used", but then figured it might be explained in
> the Kconfig ... but I couldn't find it. ;)

It's in lib/Kconfig.debug. But yes, I will add a commit message in v4.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueAf3f-rHw8AXJKKi%3Dkfnh%2BnBMpJP2Vb2DVqLUWZVmFqQ%40mail.gmail.com.
