Return-Path: <clang-built-linux+bncBDV37XP3XYDRBBXKU7WQKGQEFCGOJWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DB5DCC8A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:23:19 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id a14sf1388932lfk.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:23:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571419398; cv=pass;
        d=google.com; s=arc-20160816;
        b=w+ZhYHDd3SiqzjwlBii1HGpyzTjX6RtToVugNp4zgDWN4VnJi5khZsK6kfEI7LR7vO
         JDbNzRYdwaFXEJJw7GfAai3yqTkk5cCYC+0jFoQgyA/gmtwJIhg8p7yET1RElOARGXwH
         YL0+XnXJNae+o/tWfzT1MKxnktRcxH7DkFAGj7gC+yMg/brBPX1uoZcsPP9tvUipYSCy
         e94eEhSdgQfhIF+A9GwxX2znRunCft+j84PdRpboPkf0o+Bgc6/eIYcyjn8k2bRwQ4ir
         X0jz4WiH7Cgggwu0YVSk9bP+cuOz3jIy4Cd7T3PBEUA0WEGho6AZdrEVNOaI79Sgw/Jf
         Ky0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JIGM311aLl4UYMUQCxbjwd0BIXgg4IUoNh4uUJuE6GQ=;
        b=Va6dQ+uKRIGpz4gBusCawjSZyXnaLlQF/08/J3WATokVOxRTTCPGX1P5YHZ62ru5LJ
         6tGpHkSa08B38wcj/CTG51Lglz4p8WQxIQg6ovb/H1KNoW1aRVxIRoIjdK5iHTBrb5+d
         bRb6El+9us4zBK4fPaGTN8qhLqKiPpNlwfe9meCZtPUY6y1Pk18DzWxlkTQ+v9Y2D0aC
         QrzYIYkvTfQbQebWc97uOtuhLynF2EBNtjqfGPS3mRkuwLbj8zvWVpbOzpNeRmYNmwq2
         rF0CEhESN/M0F+5YYJBsywqAiqD37BMZWV6Ptq6uzJwWCdBjR3yGGThhA/RH94w8h0kH
         v6NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JIGM311aLl4UYMUQCxbjwd0BIXgg4IUoNh4uUJuE6GQ=;
        b=ElUK3nDdAgezwJl2q324SgxRDTI9XTCg9uQoSfXFZhJvkEukssHATyX4T4A1+XXqyq
         YXGS4RMCni8/pISIJD/+UgYJgY72P0BUeN8Dy72PFHqXtdqbACOnPhooMGhm8doWVkJW
         VRu6p97DJn+E2wq8v53kaDLwUyoSVyabQqcXbUWjdfm4wfG5bR5afYHmr1OYmcmL6B4t
         KyjUWWhWPh9oW3mmAeZvamG+vOEqvJtU1r/qTu+QPoNTtMhWPWon0yHz/M23EFRuZpzo
         ypMvkyEvWxpo+3Adia9aEMdn4e5SkFRSlQUcDzqNz32+ggqDF7cScllDhRkttks0elLV
         p3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JIGM311aLl4UYMUQCxbjwd0BIXgg4IUoNh4uUJuE6GQ=;
        b=iLpAi/hAz56FYOAGu7ugyj/KeIRj5ylhX/MeqrKgN7WzqPxK33QQ+jjZa1QQFHhhT3
         PAMb7DRZfyM8FjF/67nQy0IqLfcWd8fhN9pg0BPvbAut0yy1JOEMqA91eBeUFjXSiL8i
         NfnubIQN3pp2H2FhJfs2LKG+tpPDUWxYL9+MYyMDrPv3Znm5M5XBHN+OwIRfCuzoIQwE
         9cjbfwhip4tHFFYt79A0YejarX2hzVIFPZuRUf/tVLwnKTZ0KubV4tL5bLgQV5/tiPbc
         fcBKBsZNA6+ChA03SmyzmERJz4i7eCEfN0hUxiUsPpw3vAKFzKzM4zCtfXTt/dLAZ0AJ
         1vBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5pJjug/WArSJAEPSFfn1RN8j23MTIE77CI9Zy5ztX5LmQdhmm
	cuib2ZzM2ad26XfaNB+F5NE=
X-Google-Smtp-Source: APXvYqxVE3zQ2SkTb78MQXniTzwkStEKPPkQZ82RJKKNE9vpQD1ZTVsmx+pi4qm+vmaKrSuZ52hmgA==
X-Received: by 2002:a19:2356:: with SMTP id j83mr6793740lfj.103.1571419398880;
        Fri, 18 Oct 2019 10:23:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls832584ljs.11.gmail; Fri, 18 Oct
 2019 10:23:18 -0700 (PDT)
X-Received: by 2002:a2e:5354:: with SMTP id t20mr6941410ljd.227.1571419398023;
        Fri, 18 Oct 2019 10:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571419398; cv=none;
        d=google.com; s=arc-20160816;
        b=vb+iGGLJPaX7JmEZJJYDC+QePGXnqagXg851LtgVOKP6aiKv8yiMLcJyg5Nlil+94w
         ZMs0GPEKmbxxk587PuM575ZeZzKgnCow7zw7nidFe5AZ+qc22IaYYcWC2d07Z8/GdxLy
         pgbk/D/Mq1/S9InqxioAXtrl9JtuUxET7lCWLU3WfWOJ/+kh7gMZPHoISszSSihrwmgL
         DZAFmjCnGT98+HAzM475CFZ6/bG6PXtsyT4lBYj9Jzhopn/v5Q8BfbZKD16CwLH3Y8ba
         KcCeWfhLaaGzHx0yCZUnDt0hdEOyGj00LxmfGC6orE3mud+d2PYtxRtTZasGvpjG61q1
         wAKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=U7uUrd+fM/jtUSrwHspW5wYjRHow/ArMenahsaIRAcE=;
        b=W4YtbaP1qo4IJZvc9yengceRB+uBapd20Me7q/7ksnMqBGAxZzTyy6b33bCeCcFTgC
         wtmiydcRSPTXfzGQUr4uX36IG5FmuqkD8XtdRciRKiInXYWV9li7uPJwx+fapK3iu3RI
         iqFZRv5GOeWwAcphCjf45k+m3Y9Kd8HxAh8ksnwi/LGQNbUdc9Sldv5mjDpTx4Nuu9lP
         Ou9jOCX6AK+b4PhfMHiusXH6zlwliaWNOT44wGWMblJATu/GCM/2Ktq/gAwPcE71FTRe
         vEUHTO02jd4jWVYnkR0eAEEMIEByzHYPTBCTBJVDZzf7vO02CRbE+D8EwhS45rOLti4r
         tNiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id c25si299951lji.2.2019.10.18.10.23.16
        for <clang-built-linux@googlegroups.com>;
        Fri, 18 Oct 2019 10:23:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C971D1042;
	Fri, 18 Oct 2019 10:23:13 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 084393F718;
	Fri, 18 Oct 2019 10:23:11 -0700 (PDT)
Date: Fri, 18 Oct 2019 18:23:09 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jann Horn <jannh@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
Message-ID: <20191018172309.GB18838@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
 <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
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

On Fri, Oct 18, 2019 at 07:12:52PM +0200, Jann Horn wrote:
> On Fri, Oct 18, 2019 at 6:16 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > This change implements shadow stack switching, initial SCS set-up,
> > and interrupt shadow stacks for arm64.
> [...]
> > +static inline void scs_save(struct task_struct *tsk)
> > +{
> > +       void *s;
> > +
> > +       asm volatile("mov %0, x18" : "=r" (s));
> > +       task_set_scs(tsk, s);
> > +}
> > +
> > +static inline void scs_load(struct task_struct *tsk)
> > +{
> > +       asm volatile("mov x18, %0" : : "r" (task_scs(tsk)));
> > +       task_set_scs(tsk, NULL);
> > +}
> 
> These things should probably be __always_inline or something like
> that? If the compiler decides not to inline them (e.g. when called
> from scs_thread_switch()), stuff will blow up, right?

I think scs_save() would better live in assembly in cpu_switch_to(),
where we switch the stack and current. It shouldn't matter whether
scs_load() is inlined or not, since the x18 value _should_ be invariant
from the PoV of the task.

We just need to add a TSK_TI_SCS to asm-offsets.c, and then insert a
single LDR at the end:

	mov	sp, x9
	msr	sp_el0, x1
#ifdef CONFIG_SHADOW_CALL_STACK
	ldr	x18, [x1, TSK_TI_SCS]
#endif
	ret

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018172309.GB18838%40lakrids.cambridge.arm.com.
