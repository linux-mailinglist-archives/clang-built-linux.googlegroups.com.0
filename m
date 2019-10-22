Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQG5XTWQKGQE7F5SK7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C2925E08E3
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 18:30:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id l25sf8829217otp.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 09:30:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571761856; cv=pass;
        d=google.com; s=arc-20160816;
        b=z97GcHLIdRzWkTyHcZ6Oc6o+J0JGnqIBcBvWzT43G7zv0hVArQ+36+Aebno7dxADZN
         Y6dUZ6a0+LlDfaTBv6MaLK0EScilP4sgZA3IpMpOkemgEfMxREubEIdj6OWR/RjG0BSr
         LciSOgi3N4rPOUyQH845ykC2KZSPOmcG1dvvQWpo4o0Vjb47sAeUmHpFtG54h1Uh6TdZ
         LVo6lnTrb3NwC8qpsalyKpSL5/4UpBP0v8mRQioW3YhE5ItTqR01pfIqza9ungHU1ox2
         a+lVGPofJLaPmt8gY2KP3cCx6YJkVaQxWU3smdKO5ge6OJleIVh/oYCdzx/KBacUdxrd
         x9QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aVfYuPKYFJPADiltqYyQB76ifrwsbyvyHkCepsOFU7I=;
        b=01eWQ2co2lFdcER4fOxWsnZ7P7cAIf+dejzzhyKmTfDfUgsbd/Q1+yYZkNCimW2NIo
         DooNTBEnnqaFb8v2KVPXSbtD1j/CYL6PbtpocgE27Jxt1b5BW9Ie8RFBHpzSFFwmHkzM
         3swRhm9ousJj0aLx30EPhqekKu8oe3yQSApqawx535Q7oBqaFM8sAstu9XY12I4ZmYNz
         +SyG22zeV9Hg5eys+o1ZlGXY10TLKuTp/CYz8uj+vmkx78SkbKlqri5b9x+T6Rg3O0sR
         8DuLuLhQADIKBTYZx2poZ9byOkXR9QAww7CjAJYiAXPr3LC4IL5/Gz3ijc+3S0zcuhti
         Gpqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cCDDMZX0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aVfYuPKYFJPADiltqYyQB76ifrwsbyvyHkCepsOFU7I=;
        b=ZMlDGlQ/A47gqqeVhj/J0f9m0Do4jAx/yN7eBxlA6SyyWCGVNGYuQEujS/X7KaAGWa
         DkGXqMUYox6rmP7KQYmekHyvVz3/TsrD2XSwzM3QGgDVFQpaSdVmipnvRq+IrzOW8IeZ
         ZgtRn3FZE6bGN/OajmKSe6OH9oKghpwit0TUv9JoOTNprZMcx4dgownbLByYBVnE3hIl
         6NXBBcAG3lsRIJcNjyqlCWUR17eUiYE3+rP/LWWlBrpkotrwvONenTCvHTfjc/CsBYVp
         498tOJWsEm6HJ9WzD0BgDjAJRqDt47q80aPFQbcAug2j1q2CxmTpwFlRQNlq++ylc0fE
         hBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aVfYuPKYFJPADiltqYyQB76ifrwsbyvyHkCepsOFU7I=;
        b=b4gquNGMBddcqy8erWsyiwNcFqoI52o/TYSJG5KpjksaDUcyeW+M6Cyh4vvoLhL79Z
         p+21RHXT2KZZMAxsGv9+ZDIsik/1HDgJ3g4/JBI8Sn6jJjxsF8PQ+cWu6XS0j1/7FRze
         6n0eCtOfSRqcrAJz1rFG/ouJKIE/yoGKJzyu19BYx8FERa2lE9nCBEl6mbjgji0Jr00X
         cJgY8rRjYmMpXqbExY7RrVl0RROb/49rlUWCCAPxM7acHGwvuC7JIRWddvZ7Noh81QUP
         rg0H6FafhkVSuiHxOAbE3JDWSpHN8d/GQgjdU6BapbwTGiFHFKPvfb6l8X7ECuaq2y9T
         4b7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWgymomjlU7Iv/BLVMH6F+9zcH2a9WRh1vyeWZLDNNmjLTh/sf
	tDNPDnmz+BHFcoq7WOJR+AQ=
X-Google-Smtp-Source: APXvYqwQ2qvKqeEij8BFqq2j9/lcXlHNs29q9am5qIVbV09It8yZYljjJiIrULeN9Bc7X6A6tiF5eg==
X-Received: by 2002:aca:cc51:: with SMTP id c78mr3787849oig.1.1571761856505;
        Tue, 22 Oct 2019 09:30:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8d7:: with SMTP id 81ls23549otf.12.gmail; Tue, 22 Oct
 2019 09:30:56 -0700 (PDT)
X-Received: by 2002:a9d:4044:: with SMTP id o4mr3510338oti.339.1571761856208;
        Tue, 22 Oct 2019 09:30:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571761856; cv=none;
        d=google.com; s=arc-20160816;
        b=0TGu1Y3gR5B11cnQglEa8i9i1NNjPtwQKDlIwExMCb1HA3qLNW/NDxAHmpjK2Z6AEr
         oW8FWk/bcnPAGg+ja7TJwAnFGjmXfak4P/Bknvzxc/0ofMAD1pqPjSQLeIwW7u2LimEt
         Jg9IhwGfeTXtFZx06tNoSaQnIHGdL8u9Hoyrfm4s2KdY4nPX7eM33WohD6Hz66D0kR89
         H3mnVNtNhmAgHtxlAbY5pwvtwYUzZ9S6tushE2AJywp2Yy8sVkhlSdaaSBV/M6khmZla
         f+PEMLXmGUIRF1wssali+blR09yQvDtEUnU7eTyrTicEzn2HwcsKcsaFzicLYA2Q1Woy
         Wb+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9VocBe87yk1uP4ALav5qYjXAzabfv0t7mZSWKaL+grs=;
        b=hiGbyIgc8dwob8s5cnKkbfeVMdxNJNFM7XPWWTtXaVhEhcWrOK5SKYjekElxIMFoBk
         1/JZXB1Dr8Uw3+qZPCoVfGzXtw8dGlQXMvEeh/3GflsRUkh8/0edFoXAs7sPTqwuPdFn
         RWOttv5/XnHinzij7SWIkuOI8ImOKO8c9sObvycTPWU5UcN5jeRsQVBeJf/bgX4yZuCj
         gpWfL0fyzoAg5DVjV7OxixvqfdHdCqPBfsQ3AO6+kr6zC4u1spftXg0xFU+TxMpNwOuG
         4dT6d3gX8yJWQ+gBH5YkfEhe+7pGCZ+qRVj4Fny2QN/t4/OKuudLnFQSfsbhJVLO2NdE
         Mknw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cCDDMZX0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id w205si872171oib.2.2019.10.22.09.30.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 09:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t3so10249835pga.8
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 09:30:56 -0700 (PDT)
X-Received: by 2002:aa7:95b9:: with SMTP id a25mr5109950pfk.181.1571761855535;
        Tue, 22 Oct 2019 09:30:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z4sm17711787pjt.17.2019.10.22.09.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 09:30:54 -0700 (PDT)
Date: Tue, 22 Oct 2019 09:30:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <201910220929.ADF807CC@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191022162826.GC699@lakrids.cambridge.arm.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cCDDMZX0;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Tue, Oct 22, 2019 at 05:28:27PM +0100, Mark Rutland wrote:
> On Fri, Oct 18, 2019 at 09:10:21AM -0700, Sami Tolvanen wrote:
> > This change adds generic support for Clang's Shadow Call Stack, which
> > uses a shadow stack to protect return addresses from being overwritten
> > by an attacker. Details are available here:
> > 
> >   https://clang.llvm.org/docs/ShadowCallStack.html
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  Makefile                       |   6 ++
> >  arch/Kconfig                   |  39 ++++++++
> >  include/linux/compiler-clang.h |   2 +
> >  include/linux/compiler_types.h |   4 +
> >  include/linux/scs.h            |  88 ++++++++++++++++++
> >  init/init_task.c               |   6 ++
> >  init/main.c                    |   3 +
> >  kernel/Makefile                |   1 +
> >  kernel/fork.c                  |   9 ++
> >  kernel/sched/core.c            |   2 +
> >  kernel/sched/sched.h           |   1 +
> >  kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
> >  12 files changed, 323 insertions(+)
> >  create mode 100644 include/linux/scs.h
> >  create mode 100644 kernel/scs.c
> > 
> > diff --git a/Makefile b/Makefile
> > index ffd7a912fc46..e401fa500f62 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
> >  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
> >  endif
> >  
> > +ifdef CONFIG_SHADOW_CALL_STACK
> > +KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
> > +DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
> > +export DISABLE_SCS
> > +endif
> 
> I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> so that this can be filtered out, e.g.
> 
> ifdef CONFIG_SHADOW_CALL_STACK
> CFLAGS_SCS := -fsanitize=shadow-call-stack
  ^^^ was this meant to be CC_FLAGS_SCS here

> KBUILD_CFLAGS += $(CFLAGS_SCS)
                     ^^^ and here?

> export CC_FLAGS_SCS
> endif
> 
> ... with removal being:
> 
> CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> 
> ... or:
> 
> CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> 
> That way you only need to define the flags once, so the enable and
> disable falgs remain in sync by construction.
> 
> [...]

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910220929.ADF807CC%40keescook.
