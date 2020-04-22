Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBUEMQL2QKGQEQ4RUFTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1E21B4C59
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 20:00:50 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id w16sf2521500plq.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 11:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587578448; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3zNrv9HOEpLm9ZjKyJdLCHsKgKE1YVO10acPjsLFsiV/P/YSyd2wcLc3P7FaYRn4Z
         e50woVw/ATALrF5E7uAWxQf0tBtAwSP6hvYn5oz61ssPhW67NoDS1FWXCMFwFfcT4A4O
         siEKEnl7M4WvACiAS7FC0cFRjZWBAZ9zx5hMaxBf5Y61D94o41b5yuOcRlSrESFGc9Pq
         AKVWmIH64DtBTsIvEmojfi8w7rr6zgnHEas5GneXkKWnGX0hoNKPtd4GvYjo7kvJmIRC
         4aKHlj+t3JTWYDX9n2rcOfXA2i4g3XI8Wa6LtswTeQF36DOKijkJgJg+yVqHpFm8g/JH
         MCIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mQOV0+r/NZKo0q6lG0fhLO6BSXgnkN8QI+fBYjXBJbM=;
        b=sEhjwvLnddcVHYUaQMw6nZ3aOP63MKXqfEs+U9lTRSOAIv6vciG8LTMVe91/Vpi6tA
         xo+eJMj0+fhZdy0m/ODtOW3F9dB+U0U96CBl548JyigPuQqmQ46uBuiF8/rFbBKSqoBd
         mG94MytuCNiH5REBGLB/KyuziXZA7IGAgjPxrPkuCPKHvzJSYYhk4pU4SmhyF+wskSMc
         Y4ZgniBHdD7sjxPbas9uTP1pGscXA9QqKyuRSDJlQp0nXeODropZ8pDtTJk+zAZ7zyyB
         HqQwUw6kLgDvkiEYAm+DVl6osi2DaP+Y2K0pz0gWM7JIQrAGl1L6HzGbw3FRy60W6avI
         uYYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="bIWTCp0/";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mQOV0+r/NZKo0q6lG0fhLO6BSXgnkN8QI+fBYjXBJbM=;
        b=BMC0PL/NaErMQbRj8b38100pJ6byGZNGMv1pj57s5lPbdpi1AtXMfEpfvOLYCONqNy
         +ownOTWGbMfR+zTeDvIfSfoEymNmbeH5UXAihUnXuosvMbkSSsKMH1AiNpYMrMpc7FKM
         X85WRpnD1UA2W8c0MjNgtJYIPPQuWgVzrqJgSBNvZdQjI1wvybOD3cfTgxeWJpl0TrfS
         jJYjXZKVfBJG25YoLq9Kz/g/hfR+S/OCIh9/J1I1GYN7MRiqptlJhNyJnKz9J5sy0RQr
         J08g0ZxDB4Idhmr6zybI9XFlh9hFz58aBr4uP6AtlNI/4k/PrI2i5hJrd9vXx04e0w6T
         w4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mQOV0+r/NZKo0q6lG0fhLO6BSXgnkN8QI+fBYjXBJbM=;
        b=Ay8cCQ9qJV3eVtulV9ihCq35hKwn6Wlveu6N18rv66ZvldGxVx6wDaAB70UzVXCWP9
         jf9MDSyxaAJlo14S7BpnPC/VyAboebj6FuFroXeShzeT8WsJalnXjf6xtRYOWY9qSOh1
         ny05Z1wm0it9W4A12YcB0xf0etfC6E9emhAbDykXVThDS3ww1+DfEXS8swtxxrd8LrCU
         jCDNQk99DtCvAkvcZVWs86bJj41eQkSfVUgapToafsgsTpTvVyb+K959zQ9Q2OGfJ8YR
         VACPRLoC1WaFYG/LsPj4mmLQOUugKisAP7AfS8WvDHwsZAJ+HJ8dLqkpkfdEfUGrKOUO
         LjCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubgI6U9X1ysHfGLMUtpmFb0Cg0WsJkdQTac7USIi4i2UeYKv+x3
	sWo9RqRhFHIYFrlj5PCN3B8=
X-Google-Smtp-Source: APiQypJhv47L//tpoe8dLrNdDeegQ/Apqx1L9+/RUGNgLxr9Fv3IopMYVt7VbVwAUfjmYdZ/g7K1BA==
X-Received: by 2002:a62:7b51:: with SMTP id w78mr8592198pfc.300.1587578448369;
        Wed, 22 Apr 2020 11:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b58d:: with SMTP id a13ls1513968pls.0.gmail; Wed, 22
 Apr 2020 11:00:47 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr8721824plq.208.1587578447883;
        Wed, 22 Apr 2020 11:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587578447; cv=none;
        d=google.com; s=arc-20160816;
        b=dgNpi2e9KgvG+kELXIFX3s60+fCmpNL0AhNa93jouudUZsOjaRN0TLD0hPomAJbFGl
         MknLVH1Iuy5/kjX6TAF5rnHHWDzUepBiv69UTDccIJeqnmnn9G3Jjy03K6/a5AClkNlN
         VRmqlYgEv6KQzz6VJCEa5xRVS5v+QSLUWj82Sz03cQR8Bo7CQpzNHjyFcMspixqPkUbC
         wfDh6vWfws+Tv0wV8MDUPXcqjx9ZwiUsVrU5QwT2olYYrHXix/ukYX0gadKNHXXm7S93
         zEKOeEcQwO/7Qp5DiIrcF5NhxhkLMtrCXUwsdJyG8lFxIoRxBuNqTjT0WrMZE6FcTyok
         Arxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0BEtefVnfSIuJRXZFvtCFN8i5JPYliqXHS5Z1xI6RDQ=;
        b=h/S+JD0LPHa5zB2iBBK2j6Ac6W3J+Kfr1SKXjvlaSyEpsmKniIGFXUk741HUjs3shr
         L/xTeATK7SkfVV//Hx+5awhNEXncrmTy60ZpuNfCHjUbX56gaUsNsklqldmAD3tjRGQ0
         +tsGWKLXNsGxDhe3GPqjmBMhbGdxuzYNyWz43sw0WJAMpDkxGnTyClClrAI9HqvDXFnj
         pbKNQVVRuh+4XJcG2rOQM5sCDaw0atiG7Sxuk65yDvwXNPW3iNDiHg/OL1os3x+7kSid
         ojf//L592cuODBmaRn9tOUAXtJ/XRMU9wCF9w1n9NaX+K+KWRDqAuSFWKOr1EIahgFtj
         BfoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="bIWTCp0/";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k3si325892plt.1.2020.04.22.11.00.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 11:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E90802076E;
	Wed, 22 Apr 2020 18:00:43 +0000 (UTC)
Date: Wed, 22 Apr 2020 19:00:40 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200422180040.GC3121@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-2-samitolvanen@google.com>
 <202004221052.489CCFEBC@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004221052.489CCFEBC@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="bIWTCp0/";       spf=pass
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

On Wed, Apr 22, 2020 at 10:54:45AM -0700, Kees Cook wrote:
> On Mon, Apr 20, 2020 at 07:14:42PM -0700, Sami Tolvanen wrote:
> > +void scs_release(struct task_struct *tsk)
> > +{
> > +	void *s;
> > +
> > +	s = __scs_base(tsk);
> > +	if (!s)
> > +		return;
> > +
> > +	WARN_ON(scs_corrupted(tsk));
> > +
> 
> I'd like to have task_set_scs(tsk, NULL) retained here, to avoid need to
> depend on the released task memory getting scrubbed at a later time.

Hmm, doesn't it get zeroed almost immediately by kmem_cache_free() if
INIT_ON_FREE_DEFAULT_ON is set? That seems much better than special-casing
SCS, as there's a tonne of other useful stuff kicking around in the
task_struct and treating this specially feels odd to me.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422180040.GC3121%40willie-the-truck.
