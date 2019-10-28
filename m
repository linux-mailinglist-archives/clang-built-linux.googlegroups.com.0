Return-Path: <clang-built-linux+bncBDV37XP3XYDRBXVR3TWQKGQEJFM2G6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A3CE7680
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 17:35:42 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id g67sf3356961wmg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 09:35:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572280542; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eur9iwmMXZBOkDkvHqHPHNJ75CGI/+UPWq9sKYWVhTK4GU6CCq8jnnGIzgguav+rzW
         o2RDRrwSmGyXFLSgaz0E7dDPN/8wmglpzPjgVcXsarDMGmHFodrpx1F0YOv18Lpey6cA
         il/iqW3rE35O3uLBTaZ8tOs8mWhIrB5hdNlgkdqzttJy9lfP7PeAyaUgshtxqy65k55C
         w886oUaiG3XDW7SgnSn8A2jHugCVdlvDRkLBLM/VshrtoxnJ/alybyc88Ttsh/TRVU8w
         qEdBsNIkekRA7tFT0PVN8cAf0+UQJvJ4yL2R0XD4qq0hSTsHEdPSOH14d0a13vKIH8U6
         Q0aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yJ4WWCIgkzvZ2zTMgvPuurPsgOHT0GkkKtd5OqAA4Xo=;
        b=r/foMXglwqY87JUfJJCRi+S4ogzNeA/0uJzosvfDyW/+rh4UjJ/uuFFosntPskqKDi
         n1aka9U4oAiYtFp3oUTyPMR8azbU9CIwX4v7dJsBpo1TIIuziOjlopvvir+5qRykGSkc
         zKeGUugP4Vl4C1oiVh0kNxdlsUjVYW2eLBQjqA8QcwaxURT0jnWu/xOHEeQMwPRCk2dB
         6WzjSUXFIvWN6crRehX7myA2WHV6bbfFI6c5eDTlGHBS6urTBrBz1bb5jLZo/YO7sDDB
         nH1xn6DcQE97HpSo3g/CjFtxHupFLZ7bQUS/YKRDFb3tXMRxMKipWx8VkkDMrjgt8gob
         sVkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yJ4WWCIgkzvZ2zTMgvPuurPsgOHT0GkkKtd5OqAA4Xo=;
        b=OTREMUzb7mUYcmwhUdnTBGEYm9VWcNflc0WgQ9DIpfUW75vCC9f8aUaQD89tBBaH9i
         ya6dg/u6mEfUFQn5+dJmzKhNwv76y7n5gfsMCk0CzLrDuCnEXma23PxTUuyPEKS9rlSs
         VUW33FB+JlYIFsF3RVPHCjqVP3bzia9ViyDFfzfMhKO2V5kb+gVQoOORTjRICVkA2F0R
         eRsqg0vDB7xmQR34TWCXurSTwxv2EI/VkqIkKrAOHiSxsZsNqOD9wwoN360H5E8+U73C
         xV7oCYywkGZP7S4eFtcUEcwZmJ4O4Vvc58SKYCbp1EwOYZBH/k1TZfjyinZvvBtkwbc+
         yOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yJ4WWCIgkzvZ2zTMgvPuurPsgOHT0GkkKtd5OqAA4Xo=;
        b=iLhkB3Flzq1qfdgimX6pGkL59YgM307qH4Yr7QiC2kIVY21QwybrfS9Oy7gmmZ+jSB
         wfe6On7ElDtK5V+23LJ+ek6AIwB0sn6suFeKUP8C4EVNKCQH8OO+MUh/BSdldP4zWSLy
         Hpx/PgYcsHiSPu9Rg0ukdEhGsEqEcc5GXEcjb4N1aTwOEzQzsBt7bw//qVSuHT4WDu3B
         QFSTOZkstYRUkM4OMbFTO19ZMyCwqfmOB1V95rZbKbkr7XszFTr1texdHuA0KomRq41x
         5MrHy4cCTDbRLr47fv8H+aI45UpwuNbAS7FW3ghgapG1R5w6ysh1fqhYSFEiMX4Y+bQz
         Twcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWssYk07moaGaWmv2kLx1hBNc5cEdOI8vLEvySITxZHXTJfJHjk
	wF1xxyf50l0vrfy/LM8+f7M=
X-Google-Smtp-Source: APXvYqzigmOAwWlzhWl0EdCh0TUbnzvEDzP1spIbgmHAuRgX5mnpFXiPYTvveJlbvWhI0604kys7qg==
X-Received: by 2002:a1c:ab0a:: with SMTP id u10mr201184wme.0.1572280542502;
        Mon, 28 Oct 2019 09:35:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1b0b:: with SMTP id b11ls101622wmb.3.gmail; Mon, 28 Oct
 2019 09:35:41 -0700 (PDT)
X-Received: by 2002:a7b:cc15:: with SMTP id f21mr179489wmh.98.1572280541026;
        Mon, 28 Oct 2019 09:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572280541; cv=none;
        d=google.com; s=arc-20160816;
        b=vpUeAstNwn6d6pg60Pwd/bRS1juDGdMfmEMkPuOILFcEwKfm55W6xEdOlXYN41rKhf
         VwEHxGNmzgb+tYPTQQObRE1r/9qCGHKVONLMpnhoLeB2wJ2aqSBEWxKa2FO7CZiLANM7
         alchVrb3x7KUPSTgN8SnBuvCboUc3+vKljrEgBdXS73VuK4SCzcgYgYQ/YL8cYhBDXat
         6P4ILou1xBbGeRvTN8YltxnBQk+/bccH02Y1hR2HENlx6z3itgqPV+xrWp2ruJVK0r9N
         t4YGnMi6b7VcUn13dTBupZQPG9o0LjROW5JUAyNvoe4VN4cIpEdCxqttp/YYZuiV5WSW
         J8hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rK9tZTfRvsJnpqoIEwidY1Vn67XTqUZeKZIlW9bC/e0=;
        b=c7OjGeS57+FfU2GXxoD/4rhW/zOUA4y5rCoQNs5AcmFFiVSEDN/bt51mR1vV9rAg1X
         x4RotyXpsWrEf12kIQwGc4GaWjU/lkjl22W6woRHDpQBmfcIGZDTtfrdOkQ0LfGjy/yh
         RJJGz6MMI+Orchwl9/32oBpZ69pGxG9xOQXdI7Zj33IIoJArDPaMTqFgkjX23zgUHKIW
         WuNGOO+xCd4nGY6MTTyjEERk2DIJ/qALeNNJszu4/MEzCXEPy9OAtJE9N/B/OFC1q2hb
         ZXbPgq4/vhGTKPz78ud8t2tLeHcRTacv0HR7K2PS+xwO8RRLBeMfXzK14t5A7bx3apYx
         8iSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y188si5629wmc.0.2019.10.28.09.35.40
        for <clang-built-linux@googlegroups.com>;
        Mon, 28 Oct 2019 09:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F03761FB;
	Mon, 28 Oct 2019 09:35:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D03093F6C4;
	Mon, 28 Oct 2019 09:35:37 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:35:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191028163532.GA52213@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
 <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
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

On Fri, Oct 25, 2019 at 01:49:21PM -0700, Sami Tolvanen wrote:
> On Fri, Oct 25, 2019 at 3:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > +#define SCS_END_MAGIC        0xaf0194819b1635f6UL
> >
> > Keyboard smash? ... or is there a prize for whoever figures out the
> > secret? ;)
> 
> It's a random number, so if someone figures out a secret in it,
> they'll definitely deserve a prize. :)

I'll Cc some treasure hunters. :)

> > > diff --git a/kernel/fork.c b/kernel/fork.c
> > > index bcdf53125210..ae7ebe9f0586 100644
> > > --- a/kernel/fork.c
> > > +++ b/kernel/fork.c
> > > @@ -94,6 +94,7 @@
> > >  #include <linux/livepatch.h>
> > >  #include <linux/thread_info.h>
> > >  #include <linux/stackleak.h>
> > > +#include <linux/scs.h>
> >
> > Nit: alphabetical order, please (this should come before stackleak.h).
> 
> The includes in kernel/fork.c aren't in alphabetical order, so I just
> added this to the end here.

Fair enough. It looked otherwise in the context, and we generally aim
for that as a soft rule.

[...]

> > > +static inline void *__scs_base(struct task_struct *tsk)
> > > +{
> > > +     return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > +}
> >
> > We only ever assign the base to task_scs(tsk), with the current live
> > value being in a register that we don't read. Are we expecting arch code
> > to keep this up-to-date with the register value?
> >
> > I would have expected that we just leave this as the base (as we do for
> > the regular stack in the task struct), and it's down to arch code to
> > save/restore the current value where necessary.
> >
> > Am I missing some caveat with that approach?
> 
> To keep the address of the currently active shadow stack out of
> memory, the arm64 implementation clears this field when it loads x18
> and saves the current value before a context switch. The generic code
> doesn't expect the arch code to necessarily do so, but does allow it.
> This requires us to use __scs_base() when accessing the base pointer
> and to reset it in idle tasks before they're reused, hence
> scs_task_reset().

Ok. That'd be worth a comment somewhere, since it adds a number of
things which would otherwise be unnecessary.

IIUC this assumes an adversary who knows the address of a task's
thread_info, and has an arbitrary-read (to extract the SCS base from
thead_info) and an arbitrary-write (to modify the SCS area).

Assuming that's the case, I don't think this buys much. If said
adversary controls two userspace threads A and B, they only need to wait
until A is context-switched out or in userspace, and read A's SCS base
using B.

Given that, I'd rather always store the SCS base in the thread_info, and
simplify the rest of the code manipulating it.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028163532.GA52213%40lakrids.cambridge.arm.com.
