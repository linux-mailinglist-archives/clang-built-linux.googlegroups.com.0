Return-Path: <clang-built-linux+bncBC2ORX645YPRBV4QXTXAKGQEOBBJ7HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B0117FE64E
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 21:19:37 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id i74sf9869513ild.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 12:19:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573849176; cv=pass;
        d=google.com; s=arc-20160816;
        b=pF0i9Tc5O+xktGqXMThazejXkPC4DS+dlDihCWXVsYj/MhYQzvkcBShQZSeaFxC9uu
         N3WF4ZDbfE3mhJkMN/HPxRCVcYKZVXsmvkhYsKS7m/E1mBNtU029WkydSCYTAvShlux1
         nvEflmSq5vnFUpgB3YegjMpXS8mU8/uMoMz/6dkncmXFASboiO6cYZ4dSfrozt4d1O62
         k/dIBI89CCqJFbJXjyNU8UXQCLSWsecfBtJxRkfK865Nz6OkidSlqAyk969lFFQVPxrS
         R8Nsfaye1LHaiv8O5OcP84jbmF+uv4JKPbub4CG7m5Yz5tffyV97hRfMnY9VYKSnsAfa
         Di8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=C8qgZuedggshp43L4+7OOIVvXpQfX5vaNwtodhWQWmA=;
        b=tFaThqubVSfTUchFahM/mQZWDZtYGoQ5hy7i97hu8phvbcK86T7IVqw/gLzYdtuxeV
         uwlNlKZFH1eicC6WvOtnmOAXYKBcEjxScCF++OdcA1f7kw3tNyNXPLDl+3vFRWUx6Ys0
         9dPOzlUZH1kM/AQPplNcDqCpXJ4uf/yfGdShyO7w7oDzb6P5eDmt0lsy5abRs5WyL0oT
         5b4lL7LhO1tg94MFPMEFZnXfzSUIWMYA/8otjzUeJRRg6hDkq4l1kiIJN+dgx2L2m7Z2
         4nNEZIA33pbS9az3bpn1cQLnCNnXtMl++TYLLHSH0SjD0Ft/kVkrJcGlx8Hj1Nw8ZzKP
         N8Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sz3oYsEy;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C8qgZuedggshp43L4+7OOIVvXpQfX5vaNwtodhWQWmA=;
        b=cHiyw88biQm2W3YxYUPMTJ/DWZiak11Ae5xeL57tZKpRIizWY/3wOuoq8pESuu600Y
         gxXZvi0Ru3DAd+Nn39u0D/7iXpjlYQOz3NlTC2l/yOBKAtgdbBk0CodEKkBZ/Ic+wgZn
         JQFH2PuqKksZtwaxFTCzVZoIelk5+okNUnGQXJXPSLwum4gfUP/NlPZ9SkhxphnHV088
         67crNJDDrPzvoegJ/WhFnM+Pym/Hoc1crjQ9kadkx6urv06Q/yO2O70L9O1CZLPUTrT0
         yE5KOIbuoQXwQyTj91EeIzP9AytlULvlQf8MSt5JAEoad8zccnAOVwXVqMqfRgKCwJPz
         CFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C8qgZuedggshp43L4+7OOIVvXpQfX5vaNwtodhWQWmA=;
        b=mxibxczIuPs/cZKVmnDrwU0yvI277pNc1U8AjW8GTG7o9GuaI32XV+QD/wLs2WVcq1
         sw4KiDLyBiIEh3qR3cnSjb3w9yq1APNV+83p80dcs3qmxikLUVZxtKhW0Hf7q2hUGCKr
         U3vSwOKGAqed3PzgC4L89MoQyMvXml2X4wVhkD+kMTeEF5sU8luyaovBDQHPjLCoamr7
         NyNlEc5StVHL8t1OyPZiaU39W3yEoKV4HGbRH3Ge2iX4gn67mmIbMilcF/X4deCsTSYj
         lF4EEbxN+0ZJwAt3PzVzuORywhxCq6pucsn34Oh+emv9xZIB31URfVsNKR9AXVVpMh14
         DUWA==
X-Gm-Message-State: APjAAAXsa2/6n7uh+YpgZKIUSWc38XEPjTOVD2ncQllljBuZMQa6ANrD
	GP/S41rdIID/JdwQheUGxsA=
X-Google-Smtp-Source: APXvYqxUk/xUJD3YbzPK/c/yWz/X4RwSVvf5unG6V+ecBzKT3bS4FYzfXY7UaF+S3jB16aDF31Nojw==
X-Received: by 2002:a02:742a:: with SMTP id o42mr2393158jac.24.1573849176011;
        Fri, 15 Nov 2019 12:19:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5ad5:: with SMTP id b82ls2044683ilg.2.gmail; Fri, 15 Nov
 2019 12:19:35 -0800 (PST)
X-Received: by 2002:a92:35c1:: with SMTP id c62mr2852946ilf.47.1573849175564;
        Fri, 15 Nov 2019 12:19:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573849175; cv=none;
        d=google.com; s=arc-20160816;
        b=pb5W4Mrc+eVid3PtCK1upz2VMJjJ7fSanRPn3rEVEVd7LO6h4oB927mZA9patUZN9t
         av3DVVWo/FNF98AfQPL1xRZhLKy+zloz204Bnpg8zE4806Lek7QmDjptPAl4ZgqMsr+F
         ujI+Ru25BTijtmtz7IAzTIvi8axbS1063m1F0slA2GwLaZIaBXvU2wuNgrw2Rq1TTNo2
         3IG3zogPOC0lRyFWsZd0nv5bhLOJcl59AYqvgncnq0FRNpKpruXCGak60GYMXreN7YzT
         OMaNRnfpbxNTo/vyBJ+LRBEDclbIZuMc+ALTDf6xOtrsCJWFlYRMckG6C5xT81KMdVWj
         yxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JGaDR9v43Zv6SHpEarxzzn1nbL46+U2IHPBI4tRr2qU=;
        b=g55h+slFyIQ1qIj/Cy6qCsQhYLKaa/IP/ETPWcqk+nv0rLhAquTIoni9Luh+Z0XNrI
         GTEV2fGDo5p0tfLaIYLw/H8rlewrWaqUzvL7MTjaAJvNpJE+G9v9zFDt6GW/J2ZEY2ed
         Iwe6Gu4gow6cQCAIS0pR3dLjmmICPg0K8xrIFQ4sQrPGMtRrubE+iSSx+OsjmabL3VLX
         vLd8oHbr1y3vxMLm2ENhAy9r7tsTe8BUWs1QEQqXPjWfClSOojLYBtvEE67fN9OTcee/
         F9Il7ppp0unrv23YXifnyGNky07ARs9esDHCnUvr7pMp9Scd1r9OEyFk54eGR3x5noXj
         tHsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sz3oYsEy;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id x8si710003ior.1.2019.11.15.12.19.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2019 12:19:35 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id q21so7165086vsg.3
        for <clang-built-linux@googlegroups.com>; Fri, 15 Nov 2019 12:19:35 -0800 (PST)
X-Received: by 2002:a67:db10:: with SMTP id z16mr6607389vsj.5.1573849174709;
 Fri, 15 Nov 2019 12:19:34 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com> <20191105235608.107702-15-samitolvanen@google.com>
 <20191115152047.GI41572@lakrids.cambridge.arm.com>
In-Reply-To: <20191115152047.GI41572@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Nov 2019 12:19:20 -0800
Message-ID: <CABCJKudm28QaKRxPHWgKuEfRvm=EvuUEmcAVOnNkbxBCJcYX5A@mail.gmail.com>
Subject: Re: [PATCH v5 14/14] arm64: implement Shadow Call Stack
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
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
 header.i=@google.com header.s=20161025 header.b=sz3oYsEy;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Fri, Nov 15, 2019 at 7:20 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Nov 05, 2019 at 03:56:08PM -0800, Sami Tolvanen wrote:
> > This change implements shadow stack switching, initial SCS set-up,
> > and interrupt shadow stacks for arm64.
>
> Each CPU also has an overflow stack, and two SDEI stacks, which should
> presumably be given their own SCS. SDEI is effectively a software-NMI,
> so it should almost certainly have the same treatement as IRQ.

Makes sense. I'll take a look at adding shadow stacks for the SDEI handler.

> Can we please fold this comment into the one above, and have:
>
>         /*
>          * The callee-saved regs (x19-x29) should be preserved between
>          * irq_stack_entry and irq_stack_exit.
>          */
>         .macro irq_stack_exit
>         mov     sp, x19
> #ifdef CONFIG_SHADOW_CALL_STACK
>         mov     x18, x20
> #endif
>         .endm

Sure, I'll change this in the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudm28QaKRxPHWgKuEfRvm%3DEvuUEmcAVOnNkbxBCJcYX5A%40mail.gmail.com.
