Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBZ4WUP7AKGQEDJIS6BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D77CE2CD482
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 12:26:32 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id n8sf619972pfa.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 03:26:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606994791; cv=pass;
        d=google.com; s=arc-20160816;
        b=bL0cc0Ebads4xKUtoyVKWFOqwihQCJwsMEb17JvzmcgZjFNNjy8vOy2RJFLCwqvgE8
         nl/qDGA3SNwy3tZjnVTO5Po/PPgvll4NuaZPKIZtAZh4c5dFrbcJIXREB/uECPO2DT+d
         uQMH7hvPH7nLp1RmBDfk+RtRIkx+UFCLIbw2ZHQ6dm0NbQTiRS/R26cNVlH4i77wxFW3
         Zi1na+FijR65wtH7gZtdlxGsjvfmka0BPTGrUE76NzDX5KNG7xAwZEqpRlIHQLidJikg
         T4KDgJcmaSlYpBUte/IbmlwxvIPGbyF2Dtag07Xy1lqnU8IWHGbkA/VyrrmkMCWt0QJF
         uvYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZlmuUGLeYtXLXmiFjnhW/IQkalo96waETWDWiVpqgzA=;
        b=ab6jibWaYbj/+4PMvdTsR1txfAkrvz2TwBb3oTqD0q1ynTwHpTYz5vC4nHJ1YJjj1H
         lbUpWmZyOsxJ8CnBMY7K14FD3/ahblvfe0v2hyH+ScH2GoPS3U9Yx+lXuzJtab+atGN2
         UsIwKaQQswL5FPy5ooialwFjic6+fRhHHwJffraC+5W07hySu/jRuSefIvq6UZsR7UEx
         mP+RLyXz3yA5UkxaCVuhNWwNg2iitlKSW9cv49joda4vvXD/xox17o78dn/otrdfAkpq
         dkYQjB+798K15Od103zT1zgjjinN4DHJFJa7D8lpzZMqrSbFZf2IGCjQRjNb7OhyIRoG
         wQ/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BmIBlbUT;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZlmuUGLeYtXLXmiFjnhW/IQkalo96waETWDWiVpqgzA=;
        b=bf6CJVd5zrFvJJX7/12cVYznTf3mHmGYoXGDZ0rByuuzVIsM1EQ11T5w7zfUtNuSoe
         g4nZe/Eytu0fOPp7vGyjVIJBn0xTc2FJUjKg6v+7J3p3rBKlVguVJC15sfop9UrY7QCR
         nAeetpBit22QxgIDVPd0XBgOCIDEmNgUxq8TOc8Sa67n49HV5RGkuFRoXQC/qr3yxQ/m
         kDtAeXIA1kdKR26snCbFO54iTqcrp63B/JJN18JAnLPlAzkKHyZt5T5kFdpYSSuLZ4SZ
         X8lE8IA4QCgKwLa7lJss5hyfBIJ+7WVxQ8Y/MGcflXZxA1RGlr+hXPUQ1lgKM918G/Mm
         zTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZlmuUGLeYtXLXmiFjnhW/IQkalo96waETWDWiVpqgzA=;
        b=cYRIHaOPqkUjJ+jaaFxuka75w4DiIbG8oqcLIof4Na+3OMjVGHsav4TaKggdhFWsZ0
         Nl61rjtU7eFv7WAcZtsH5/FIlW1XuMw3SLJS46jsASl8gIj1U1yqhoHOfkRy9CzWNvt9
         +IRiDoDAvjHgvDJIR/WgrEuBwWJYIh/mTUKMBTd7lDx7sw8duYJ08k2Xt0WKaBeIU+Dm
         dRMxIb+YmBHozhomV9YlAc6ajW1NPIHGuO7BAn4OUaG569GkZPmXoGfdUN4v6GafQhEx
         NaVjq7PXar7WT4DUlGxColZ/RlqwEGNUu8LJvuqrZ9XFLF9/CtOB8qnVKn+Y6ewLW4MB
         NR5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zKH4Wq0frzvONIU8rq9SPktceOpPVsHqM+KioHE/5KVLmTMbm
	/eDndJyv071Q5ox4tKArEDo=
X-Google-Smtp-Source: ABdhPJwc6BUhigjIkanlrow0cZsdMzDC99j4Asw5Lrcs4QvyALeRGhyOZolFqryGQ5wqxQKSxOnRyw==
X-Received: by 2002:a17:90b:19d2:: with SMTP id nm18mr2688756pjb.159.1606994791519;
        Thu, 03 Dec 2020 03:26:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls2523615plf.6.gmail; Thu, 03
 Dec 2020 03:26:31 -0800 (PST)
X-Received: by 2002:a17:90b:30f:: with SMTP id ay15mr2645884pjb.76.1606994790945;
        Thu, 03 Dec 2020 03:26:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606994790; cv=none;
        d=google.com; s=arc-20160816;
        b=BvYZjBuPtOu7SKDNYS6GeGRDvCAwI2AHWXUPhYuqAHfYoGSMfb1r1gWoKw+gx9NWKI
         sI8Z5JPjkP5ry19GxKdLmybfMi349BCIrafPt0WpxCS4PU8C9PKe2/riO443RgHq2YsH
         i8P1VYzERvkbye89Mao57K6RrT0IFXeWJuH5QJx+jkV93Cm7e3Op6SJjfV8oKCGZ29r5
         B2E2MYFTueK2W/vp39zz9uO6dFMem3H9agsEf5uqCxiMUU1c8C/rTETfCbRbxagQ5OyC
         mODKQbDOb0Z7sFEZzqGO/OBJGJSp3kAeWDVakIt3FrW5yEUVKV4Uact21LG59U5w/gbk
         qxuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=e/mgxl8rAzL0jULiM7u5yCnvG2L50UiVe22yp/z2zVw=;
        b=k13JHcWOLrWmuWSpiVnWyiv5JfdTtJbvdTlZmgs7WtT78fgOLYgZ7C0tjAXJ0jUo9O
         vg7EancYtqYSxWytH4uzDtTUCLILZNWFhAaHWncnydyoOy4+tpufAmIlWIhz38OdWNNK
         MriPzpxS7Y/afP0g+kfXNYmFZppmsJ0/cT+AVmXe1RnV1QEdnzvcWIPQGOWyLoi1EJHs
         00Ih4ELPL7q/L9M6mdQPKvTRgrNTqPZBR1k98IEupTeVLksRSpaAg628yP9Jsw6yvwDL
         /UurLMJJnfQyuG2LAytb9Pa8GPZ5VSrzTXEVFZ45OL+OyyesYz3OaX/n5klqJGN1XccB
         l6+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BmIBlbUT;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x24si53299pll.5.2020.12.03.03.26.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 03:26:30 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Thu, 3 Dec 2020 11:26:23 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201203112622.GA31188@willie-the-truck>
References: <20201201213707.541432-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BmIBlbUT;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Sami,

On Tue, Dec 01, 2020 at 01:36:51PM -0800, Sami Tolvanen wrote:
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> to be used in the kernel. Google has shipped millions of Pixel
> devices running three major kernel versions with LTO+CFI since 2018.
> 
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
> 
> Note that arm64 support depends on Will's memory ordering patches
> [1]. I will post x86_64 patches separately after we have fixed the
> remaining objtool warnings [2][3].

I took this series for a spin, with my for-next/lto branch merged in but
I see a failure during the LTO stage with clang 11.0.5 because it doesn't
understand the '.arch_extension rcpc' directive we throw out in READ_ONCE().

We actually check that this extension is available before using it in
the arm64 Kconfig:

	config AS_HAS_LDAPR
		def_bool $(as-instr,.arch_extension rcpc)

so this shouldn't happen. I then realised, I wasn't passing LLVM_IAS=1
on my Make command line; with that, then the detection works correctly
and the LTO step succeeds.

Why is it necessary to pass LLVM_IAS=1 if LTO is enabled? I think it
would be _much_ better if this was implicit (or if LTO depended on it).

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203112622.GA31188%40willie-the-truck.
