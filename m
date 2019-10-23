Return-Path: <clang-built-linux+bncBC2ORX645YPRB2UNYLWQKGQEJL7SYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 726E2E2132
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 18:59:24 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 204sf16411174yba.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 09:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571849963; cv=pass;
        d=google.com; s=arc-20160816;
        b=EVs/gva2mvAgElEuCTV69G2iIIUerODzFcAhdLXR0yixKGGqVRwW59GL69IXqmMgoK
         zfS58KXObSSQU9Ug40vXhCJs+vl166+QIB9AxZz2bTJHFia5im7z54FtcPUwtt+IUjaO
         JN2BjDps1t/q4DsvT3lUu/zSWhQ1Vagtq8VQwXCvFIue5hWvlsU/p3QD3SphOUP5clRO
         wsErIqm1r/M9swnNMOQsf/nb74yljHB0APwUiEutnTvRARpacl7qKzEFOCWYb982ERkv
         /XjhTz+8ISJNlDq+iS/bB05kvvdhcttAsc3uWS9NLDup314d1fFo/M5l0dRK9+crNDDL
         Q/6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lRaxg+Dn9NaPMOm21a6JeNKPs9T1DYCma+It44ptvD4=;
        b=ODL6cLLFkTbTEQuXeyw8Pit0p1r9TEqyFQM28JZpe1vXY1VcPctp1xdytwYTdzXo76
         CpWWViZbb15ncqq1zp/g/DIYkdsvJMoPzRb9Ydf/OPKzB67XpEPoWnvz31YFs3E2Lo3n
         KE2SXJoEWMxwtL2QpZfS+CVvGpb+AL4jJwFEYVuNorRsVvqmvvhQqEl5DIp6bhuustHX
         +6sae4AaoRm5/6bU8IxMMdoN6fqhOoSxW9sK62MLS2SlwhUFDTa/Oov9ew51dYjR3j/0
         50cwbuEEGmcEdYY/6wJAbu1nV1nAoA1mjpBMZtxixM0OQuFXmF2C2p+py5p+MUYmQHvg
         Sw/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NQgD49Nz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lRaxg+Dn9NaPMOm21a6JeNKPs9T1DYCma+It44ptvD4=;
        b=rLcsFe19zisy2qLu85G8m4UOb/iNWW26Kc+n8OVvmGwNku+6xL/hgCEsesSdlwOm8i
         /cLnmqUUGsSmXIVn7/3Vjrx3TEtIaSPcF5uOgrzBo8g/zkENtPnScY7iF7MdMOa5tb1A
         cpz3nd+DtnphVtHHALG0jbuDiQ04F8v7g+9XZCnjeeWJYxwe6VemnRQateYAavGL4w/g
         7fxabnMlU9ouxGLmwVFFVYT6MC1rGfzBetd0+LcpnEuaMa3hPhpdUtG43LAwQpU6o/cT
         JM/4FzyDnomjh3FutmYVR7lGywjoeqjL2dGqpE5FmMBx0YxzcQsB/id8E6RNbMmd52D2
         XzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lRaxg+Dn9NaPMOm21a6JeNKPs9T1DYCma+It44ptvD4=;
        b=e5KDQChm4Z3y/T44PI7yRx02BDUh4MH22dor0+fkEEHZdbJJnH2i4WmlnEBg+u5FwT
         t8lkxP8IXY2EZz26TGVm516c2EMVObsvfUFoheVXWzKsVYsB09HFnJDX0Gx52jmutzQO
         ekzxH7femjiUUpXyxHLneNIH4rUHCMcbJUfrB7nBaZG1ow/Q8daOEb8qy1RStdOzMAFT
         Npkp2MbeLcbMaJmfExBhEn5nFByC3fFT8vGvoFokaSOYuCiAtw4thA28Mu2Qk18CT0Pn
         ATRudx88UcV/KVqFVUMjudA5MAU/i7YKd+++L2fCJ3ZRluhIzLEJiSUXfnKi2VC2rjse
         RJrg==
X-Gm-Message-State: APjAAAXDx6xZtFXRryv7wlB2jv5N++JEzpGdEV9nPp5kWS/mVGvQa/1t
	czIYZqVQ9A9Ao1u/9dXWqIc=
X-Google-Smtp-Source: APXvYqwYDJ320fw6DgIqeYgDFDg1/e86Y2QXNnPes4QrA+/+i2URceYSIBo7r4wGMuSFnhgkoX8rdg==
X-Received: by 2002:a81:2685:: with SMTP id m127mr3576353ywm.230.1571849963124;
        Wed, 23 Oct 2019 09:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e192:: with SMTP id k140ls457374ywe.6.gmail; Wed, 23 Oct
 2019 09:59:22 -0700 (PDT)
X-Received: by 2002:a81:9804:: with SMTP id p4mr2639069ywg.78.1571849962630;
        Wed, 23 Oct 2019 09:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571849962; cv=none;
        d=google.com; s=arc-20160816;
        b=O5V/9gWKLsSx+H/q/giNEcl3W4q9MHX7hjHl7MfyFMGG9APdmsyU9dDSml+wquzBls
         qYqTn2XVDaxtbQHq8BqJwxkW/wDXFnknYYdzVLpde8JEo/HzSrFeJhi10iCvVJA+IutS
         2vUn5246aADcmb84dFbr14vKuwJ4mFcG4OBPXUTqevzPQwSTkj666feIlYg9IwcH3320
         0h4V4aY6NgXyVBNpwQrpaKr3IHqUa00GBSrn70JGXcm4MoUYU+tipqHb//dbpq3otaHZ
         iCU/q/EtF4i1XNnulr5l5YF9FXJKwvp+/d+7GBS8/a8CIpPUS3RiOy2LfYYa3Yyxcrit
         1vHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oiXTugK+glDXdJjZWJtXYSMgUR2uLVi/MAVMaB3F35U=;
        b=Xoi/4tJL8Qnek9MCa1w9ntCz16qFvfCg6hyV3PHfpwzIij17+wn5WaWp/11nn6KOq+
         iv+FOQUihlxVI8zWd6PcWRt7Ot8myQO8yc8rroK3H2TGLg8cRlZUAo4MV/LMCfXNmOvg
         2Tt06ML/p5Jt+LCMS8PjHtpBkN798FXlkgpG4OnX+gJKTwJgozdupm8hy3Kmo6PSE2K2
         BqXTiPbW8xhP7oExEdd6G63ev+ublr1LFwjD6uIiB/KJPvTEjaI3TP/aKXY0XHwXeuOA
         vkHuYQiqNS1Yl7JXSryJ6hH5KsDsq7GKQ/37pNnGUe06Pm7GTNo5x1XBfWIeKyOngS8b
         Xrng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NQgD49Nz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id r9si1448448ybc.0.2019.10.23.09.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 09:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Received: by mail-vk1-xa43.google.com with SMTP id g14so2541161vkl.5
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 09:59:22 -0700 (PDT)
X-Received: by 2002:a1f:b202:: with SMTP id b2mr6005570vkf.59.1571849961694;
 Wed, 23 Oct 2019 09:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <20191022162826.GC699@lakrids.cambridge.arm.com>
In-Reply-To: <20191022162826.GC699@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Oct 2019 09:59:09 -0700
Message-ID: <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NQgD49Nz;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43
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

On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> so that this can be filtered out, e.g.
>
> ifdef CONFIG_SHADOW_CALL_STACK
> CFLAGS_SCS := -fsanitize=shadow-call-stack
> KBUILD_CFLAGS += $(CFLAGS_SCS)
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

CFLAGS_REMOVE appears to be only implemented for objects, which means
there's no convenient way to filter out flags for everything in
arch/arm64/kvm/hyp, for example. I could add a CFLAGS_REMOVE
separately for each object file, or we could add something like
ccflags-remove-y to complement ccflags-y, which should be relatively
simple. Masahiro, do you have any suggestions?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU%3DgQ3JXqW8sjkUuX7vA%40mail.gmail.com.
