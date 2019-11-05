Return-Path: <clang-built-linux+bncBDV37XP3XYDRBFFHQ7XAKGQEHOVYZWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7D8F065C
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 20:55:00 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id m17sf12775215wrb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 11:55:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572983700; cv=pass;
        d=google.com; s=arc-20160816;
        b=CP3JOxxEOc2XLGY3kLp9Qz7j7sKsv+Q0nH/m0UmDc+scum9PrRTJzHNeqQ3GK0N7V9
         3+d2Y70Of26YMbz9GO7PSSkjt7acYPVtbliQSIA0S5kowTKO+u2AGJHevBDieZ1SaQKE
         SqQZZZWAcLxr2cy48R9D6dDOMh/QupPtoUKbAabPwt7d0WRI/hNuqYVDUBt8BxA9bwsW
         tUP1BP98PpfLzrXvpV8r/BX1/PnPO7ow0PDTAblK0lxlzANUg3MQKO2+14BhZBfrrNoZ
         UyjNUsTUNfnCKuIKZdE19KuUwQ6Jh5CizBvpBcu4B2np7f2g1tzlGFKLBvJ15p999bEM
         DWJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=RRxChB6pa2y8WidzTUf8BI+5J0blysVMGBI0uGG1BBI=;
        b=CIgLGeNE19absE4E2gn0uLrZIrK5kBvr2Vpmeteq/v9UYke/ICxRTUuQQnBy5tVpm/
         pb89due70NG5S6MQtdr8Rx4zBvOSUSOZhAiE30YIGb6OcXBtpF8/IHeab019Xg61HdpY
         OUrfq4gQyy2gP0EI6yX2RyT2ozYnozUXwEuQSI/3KQElEk5iCd6UIRWZe1IMd+gm7pkE
         YnMVhmi1HDpV6Iw6ip/z3QiWP5IzsCbFnZ5wyeGIGQRD+uwsvppooWjVEdXpytwaQdQ1
         srnH0+K3wip5KShcM8OcL84TObFVTBfIjUKa+ZagfIZ3CvNmjPzstHQh/G74KA4hzq+e
         8qqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RRxChB6pa2y8WidzTUf8BI+5J0blysVMGBI0uGG1BBI=;
        b=pk1WnlQU3zBt/SOHRs7oPq28hMSbiUnXkG+Ud7nAUymmPJstAyqQXST7VFxwa7mA6e
         HLEgDPGiHA1mbwNz1UEB1X4Y0KQsNSfI9plkMAiogc+Lci1Ug3iI59oK4SD6FUtA2JZ4
         eH6QZaPvwOHZEjj5rPCcvdilg7mYkBBHuBeu25+jg290OLA3l+rcshZIJlTPkaF0okUE
         cNZaWCnc9oav7M2FZWPUI4KgkXvLN06BDJhTtCtQ4Cix+5lUTWBgb84DMEVybQD0i4Ff
         9/MJ+gawCvFsYjNnP9d8XxQEcjCv47MoKqz/LqGpNxuQ39ZTws1o7kc3hxQy1k18RVBh
         g5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RRxChB6pa2y8WidzTUf8BI+5J0blysVMGBI0uGG1BBI=;
        b=R4zAnnY6o/Ha7KXt+A0yeRTlElEEt8QlEhC9xBFcDIDg3Z74LDuCbmjTSTiofn4ccR
         sDw/jyF/iTb17BfZ4Py+zqkakq6B249NWfh3uOtxCYlG0XYZd9IqHa3rvg18Dy8YyGCt
         21OKTxpUcRPBf7VVMpb+5JGbj7SRMVXyRdb3RIsGMjfypBP35PiZwDT1FMVbxZinc72G
         og2Rsya+EHefOhq5nZJRn0dkwe02Eo/V5Yo5AxcFyK5KdYr2eGqmi8ZiPTqDlxRp0hEV
         apHcv++33SXSgTVzQn77dNs/R/J/j8SpFIPBIYiFfOOXkAaKG3wuxo2C2FnYP+Rhs7Dr
         162A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVj27h8cpI3+tm4KKIiP/gFx6oOeiLkDSdLue7+7UhOF4HJyy/E
	EKoCpxtxCNdY2VfO/jwTRrI=
X-Google-Smtp-Source: APXvYqwSm0+pecHObJvYBxMAl/rxqETVsF1fJPqdiC8fSCmPwu1cpbeLOvbVJxUsS6W8YCHeqOmzHw==
X-Received: by 2002:a5d:424a:: with SMTP id s10mr28553583wrr.108.1572983700287;
        Tue, 05 Nov 2019 11:55:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5284:: with SMTP id c4ls6852740wrv.15.gmail; Tue, 05 Nov
 2019 11:54:59 -0800 (PST)
X-Received: by 2002:adf:fa4a:: with SMTP id y10mr23958208wrr.177.1572983699551;
        Tue, 05 Nov 2019 11:54:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572983699; cv=none;
        d=google.com; s=arc-20160816;
        b=sTfOcv5DrFBU7uflbCUIztalzaGmqKMHjrCLWCC5uAlgBif4yyMaoeUhsbKbWsiKh1
         wHC1kcQJhBWiKjOxJuMU50fgPvccDk0tmJ0A4sXcqk6QHOJD4xLCXTtzJ6J4Ssairmrc
         p35whAj9swJhxgK4Ql145Ud6ugGPVztAoi6y5bMskeC3d02SR9AT3Rxj1xr9WE+Fmgzl
         6BDbnXB6NjiYW/wjUjyXa+r0v5i7E5GHNjLwogjF2VZa+1+T8Q+i8nv5s7Ky9eR8cuWs
         4NMRMFb8Mod7ha9VIDphplY234Srjwucylw4TWHQs+LEwnyhrB9Sj8N2GHkHb83eIKEe
         oZHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=s5OAPJWJQvDqSUqcJwATukE31mcRm1uO5rU03nn4PnQ=;
        b=zpjh8u6Xh6d7mPXaBXFsiWztIA6mUYe7b5mDBwmdGZ/goXmQgKmIqTN1dxuoqvsck/
         pKZsfZovry7rQTdbzLy6U1X6jaZcl0XsEMbGSBoOpUpkLm6ERRaOJv9jnMdjbxIVVd8y
         l2dWg3GBs/kfdJM5rfgCquLQZ1ASET0DqlEI4tXo+TfBvi8L9iaIqi8B5EcyfCPTKk1k
         3fk/sYOgOVlJLloKE5RLM4kE4zyQjDly5uA1KFLtHpSo/Rb20FFD7AS1TBEXTh1L9wWQ
         L33uAhXMC4J24ukA0LY2cYDdsc64wuFZoQR+J8WVZ251llE0rxN1LtiOAdaelh5s8eFu
         XRjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s126si81480wme.1.2019.11.05.11.54.59
        for <clang-built-linux@googlegroups.com>;
        Tue, 05 Nov 2019 11:54:59 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E02A7B9;
	Tue,  5 Nov 2019 11:54:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E4523FBA1;
	Tue,  5 Nov 2019 01:15:53 -0800 (PST)
Date: Tue, 5 Nov 2019 09:15:51 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
Message-ID: <20191105091301.GB4743@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com>
 <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Nov 04, 2019 at 03:44:39PM -0800, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 9:11 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > Can you please elaborate on _how_ this is incompatible in the commit
> > message?
> >
> > For example, it's not clear to me if you mean that's functionally
> > incompatible, or if you're trying to remove return-altering gadgets.
> >
> > If there's a functional incompatibility, please spell that out a bit
> > more clearly. Likewise if this is about minimizing the set of places
> > that can mess with control-flow outside of usual function conventions.
> 
> Sure, I'll add a better description in v5. In this case, the return
> address is modified in the kernel stack, which means the changes are
> ignored with SCS.

Ok, that makes sense to me. I'd suggest something like:

| The graph tracer hooks returns by modifying frame records on the
| (regular) stack, but with SCS the return address is taken from the
| shadow stack, and the value in the frame record has no effect. As we
| don't currently have a mechanism to determine the corresponding slot
| on the shadow stack (and to pass this through the ftrace
| infrastructure), for now let's disable the graph tracer when SCS is
| enabled.

... as I suspect with some rework of the trampoline and common ftrace
code we'd be able to correctly manipulate the shadow stack for this.
Similarly, if clang gained -fpatchable-funciton-etnry, we'd get that for
free.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105091301.GB4743%40lakrids.cambridge.arm.com.
