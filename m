Return-Path: <clang-built-linux+bncBC2ORX645YPRBI67WXZAKGQEKR5YY3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B3466164BD8
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 18:25:57 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id c130sf810889ywb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 09:25:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582133156; cv=pass;
        d=google.com; s=arc-20160816;
        b=xzYwnu4Ie9G4Juffy4eQqkkNw8eS8qJdrmSVzLea9CEOYBWOEHkJOweRxqwEAN5CXE
         mm6wcIQvEy4AzhoAQh+JhB8q30Xa/nFGJDMwwe+gBPzlR540Anhc2XRFPbExrYW1Dn9V
         LfF3Y3jp2GytodUO5+IR1X6JsnxcssSNpT0I818PmxS4CGDp03hYwKIxmY8AdmWtxaLl
         WV07SQ92XbluS98Ow+Ud7Eel+7eSaWVzOQ0GF552dCdDJHSXey5mT+rKp/dkSrL+rPV5
         tsOZQ3I74KVrFvYdzXI7QvhB/LISRnCN9KqA1Ef5R6qyIlRDq1/F1aypJjShvxp6vnmg
         gAvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fhMEfQzStHb1SRtWjIzTKjR7CNPV2wWZVe3J2X84XXA=;
        b=O8NHEsRC0dm2LpcYIVlKLGywX66DaBBlZ9vUPau/OkidVIYY05LaHllJZSOcrgSmdG
         OYdj/YpZkmR/6pWL5ry8c2ocCoOqOoqnGlgW7gqrym+YfMsV6LNq25XhA6nIvA5zjxAu
         eqX9D7fYQfBaa1MleGgw18tC0oxyZq92JgcKKVevG5p8z3VdxL0YAzc07nCmUeaQpGx+
         nBK7wT/6C45OpvjZAZ5kwFNgsNT7D3aXZEXNgPbLijKXmlkcG9Npo6OUy7iVszJpm6YQ
         vM3+ZK3DD+bYnmSwL1kJeadcjrFNl/+d23vi/lX8NWJHFp5JI7p9wsyanl8qQLEGjx3r
         j12w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wCVKJi1w;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fhMEfQzStHb1SRtWjIzTKjR7CNPV2wWZVe3J2X84XXA=;
        b=Rq2kFg5lrTeDbfx+u9R+jLhX+DdfYJGXNG5dLbWOtk0S/AortndAcbN/d1TZxGSmYp
         HIGbVD/u57rV7slnetbakdL25RHrTRV0zNe0SlfiZa7LTH/B3f098SKgEziE94oM4T9v
         rGtKG2sLKutH8NlB7dDYTDER+mLwl5SCCUNVLM3qu078RCqgXeBz1vSDhncMQF2LPl3g
         AnfJkySum4SXZElUsDbqSIq5vbBZ+DyuNHFcGXy/Dz+2GrukF6gmmW8FxkHxe5LQOR8T
         Gkryh6GjYL2FnTjKX7E0oxoJoJsfAxlVzLNkEhAkfNiki54WwC0ScHz67q7SIZObem8y
         fhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fhMEfQzStHb1SRtWjIzTKjR7CNPV2wWZVe3J2X84XXA=;
        b=PcGQKHf7yETlEF9kOtZueVpXSUPdOQGPi9/GjyNKs5v89VbMh2HD14rSH2SwcObJd3
         We6NLY5pvnCot/KfuBWtAENWhAlLP3K5jZZ+QdkGCn5R103z+nlkd+gWbI5yuyYxRwW5
         raNlJBifHJcMUjT3KCa2r7NvRtN/Y9pzZXEgE7lCXGOLyzgU5SRFg9BYuqQf9d7U6GGP
         B+oLnXx2tBHIPDLZa3w6LtoavAs6zyObnkReH+1Kt4thTm7qolW1d0BxUBujJlANLvtB
         93s0d2xkm1mLj7prQ6Pc44gfBn4Txm6qXZFMi7i+AkTVQulgtBrXhodxJ04E0J0u27MW
         6zeA==
X-Gm-Message-State: APjAAAWNZixXRXi66I2qDdMeWHrec7AC8WelTTXC+TrWsRNGRHBvEYo3
	37VhTFT0Cq5FcHfUvFmcTJo=
X-Google-Smtp-Source: APXvYqwZck88Hj4qENTsoUuNCGtBTs4pymiVh+IkbmpVCgnNDhLNy4/3yDRU9Mwgo/WAOcBhwNSWrQ==
X-Received: by 2002:a81:85c4:: with SMTP id v187mr20808672ywf.445.1582133155945;
        Wed, 19 Feb 2020 09:25:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8012:: with SMTP id m18ls45694ybk.9.gmail; Wed, 19 Feb
 2020 09:25:55 -0800 (PST)
X-Received: by 2002:a25:c693:: with SMTP id k141mr26158260ybf.252.1582133155490;
        Wed, 19 Feb 2020 09:25:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582133155; cv=none;
        d=google.com; s=arc-20160816;
        b=pSVMLWI9+Kd7InQ4wAe4LtP+DPlokqZzR2qO1KsdWvb/LLJov/d/lpUmvz0RWizNLg
         re3NJ1IevRHoRbsLntLwUf90TWVQcVdMjBiQRRExT95llva0ixXeGvh8bl7FncubxTwZ
         jmTqYLBP67kZmtbMS95xSMt7+qRqPPtYGMRinomi+KqN4LvURdUk/pYxBqNB+UR75FCi
         d+0RrwP+UzCXqd5UHqx+NXxuCIIO0zKEj+HZX/FtICrMCQi679vjkpeprh1QrIZRqDZv
         g3oxWNPPNX5VyQPtrfSrh+x9LqaG5tOBWx7pXq8LvHpqYQ8nCYZZvnu3oRDppTALATON
         djLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lOv0TJC8hMcQtpE5VWA57B/HblMF/rVC1OozLuYaMQ4=;
        b=lJiDhIomnPAnE0IBgajZI2iYPmUWbvSG/oHIl820edYMT0GDodWvtCNAn5z9xjP0nG
         I5S8XnxoqwdtlZYTJoE0zmdbBaxcjG5hOuuT70vnnJEQNjBFMAody2Y1vaMUem47pLtR
         d48xEOl9QJFFrlYbLrxxV7IgkdUYsgMJzywnWlb69YYYfmn1kutEKg2G9FedUpYfZ8BO
         QFthU9Saa0oq+boXLQeUaL9m0JIoO6zzF9xvzN53hzYbaK2vjX3VmJGNClOOi6irQN2O
         g3ZmL7YTmvC2Ia0XAnA9+yLmEqqtSYGx0xdDV1rHXAkVs2TyPM9nDP2xP77YOV0uQFZY
         xtjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wCVKJi1w;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id l1si65658ybt.2.2020.02.19.09.25.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:25:55 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id k24so336481uaq.12
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 09:25:55 -0800 (PST)
X-Received: by 2002:ab0:14a2:: with SMTP id d31mr13781595uae.106.1582133154592;
 Wed, 19 Feb 2020 09:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com> <20200219000817.195049-2-samitolvanen@google.com>
 <60ec3a49-7b71-df31-f231-b48ff135b718@infradead.org>
In-Reply-To: <60ec3a49-7b71-df31-f231-b48ff135b718@infradead.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 09:25:43 -0800
Message-ID: <CABCJKudVbSMEXWTPw+bzzMuEf_kNsrfYiY53S5ZhWqGB9ynFEA@mail.gmail.com>
Subject: Re: [PATCH v8 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	James Morse <james.morse@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wCVKJi1w;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942
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

On Tue, Feb 18, 2020 at 8:20 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> Hi Sami,
>
> a couple of minor tweaks:
>
> On 2/18/20 4:08 PM, Sami Tolvanen wrote:
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 98de654b79b3..66b34fd0df54 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -526,6 +526,40 @@ config STACKPROTECTOR_STRONG
> >         about 20% of all kernel functions, which increases the kernel code
> >         size by about 2%.
> >
> > +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +     bool
> > +     help
> > +       An architecture should select this if it supports Clang's Shadow
> > +       Call Stack, has asm/scs.h, and implements runtime support for shadow
> > +       stack switching.
> > +
> > +config SHADOW_CALL_STACK
> > +     bool "Clang Shadow Call Stack"
> > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +     help
> > +       This option enables Clang's Shadow Call Stack, which uses a
> > +       shadow stack to protect function return addresses from being
> > +       overwritten by an attacker. More information can be found from
>
>                                                               found in
>
> > +       Clang's documentation:
> > +
> > +         https://clang.llvm.org/docs/ShadowCallStack.html
> > +
> > +       Note that security guarantees in the kernel differ from the ones
> > +       documented for user space. The kernel must store addresses of shadow
> > +       stacks used by other tasks and interrupt handlers in memory, which
> > +       means an attacker capable reading and writing arbitrary memory may
>
>                             capable of

Thanks, Randy! I'll fix these in the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudVbSMEXWTPw%2BbzzMuEf_kNsrfYiY53S5ZhWqGB9ynFEA%40mail.gmail.com.
