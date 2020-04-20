Return-Path: <clang-built-linux+bncBC2ORX645YPRBJGC7D2AKGQEK4K2JXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DDE1B1955
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 00:24:38 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id 6sf6804086otf.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 15:24:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587421477; cv=pass;
        d=google.com; s=arc-20160816;
        b=nNehSXr0q/U1CC/qiMFEEDaLuOuE0KCJ+P83Z9uEw+HtKjwLUdNjnVJ67mGRfAy6z+
         MrUBciO6HgThDqrD8C4L/NEOKV7/FwMtZs0pcCpJ43rFzZw0VUHMvgbQJC359aSQzwTh
         J5C8KyIGlC+1ve0eDmooOohXALfZzri0yc0kcDQftGS0JDmocBKpkUp6QH/uh9/JHysX
         HofWiZS9Y2VADKjYpJuP1ksvucKxfl5jqJ01//KfEk894L3WXJ/hIw48JWfmOpSbQQVD
         nHVL/ZJw65apAeVE1uwQBBdpuOAkH/9+ogJ/S6pFJcPOU/lpdQLVqgdrDg7D0o3a98jv
         4u8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jcekDc6BrHtVhFkgnpIJOqwZnmodbodb7e8RcoPudec=;
        b=YMcV6/dCseumBk6Md7wrHZF/nUiVYkLmPaeUciAjrlMGixcnTTy8wpEdEkXZ+xZUaM
         1wQQnNoMhxOBMvkxdrfKVGYZxlkHWwBidb+suReZW2bTUPXKEWQSm/fqIHEiDBJHj5gX
         GqHr6vhFVpMnfDgRtexE8LcTXoaF+tmd139FYo0ULJlr1TYJEIJ0o/4C11YsxRJCxGCo
         3WnbnDJ1WdfSyhEvrgTfz5hElWUPL4yEyC2kUf8irrcuGg9vJb+6eFo7SXLIVVgFNFXQ
         YK5b1b07og4CVL+RUGbBBojvt5ATs7WxRRj/hqtZgAlylViTBPOvdaSgeWdKzpH6eDQP
         VWZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubLDLsXE;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jcekDc6BrHtVhFkgnpIJOqwZnmodbodb7e8RcoPudec=;
        b=g/fpvzvvPNVOBxQJ1K8yV4IqJjveoRPVlmwmmUZ8dzKfCKR7UkYlPjy9Kme7iOSdME
         jGRS/JtdtKzJehnhL1BcOaFi6mlUPVj0EMhO2VZg4MVIGnY3Ht1negB8X84qtoeT/HUx
         OvCBH/yh60y0dA93M4ySgAOaVrBXB1nJpmuaMwo0G9p3XLuu3yqsmpRge3R/234EcKte
         6Ax7V46IkNbszGmkN5znKsAe4NqOCxf/vHdPqNCAl+JxPys8Yatnkb5bbn6VUFoFG+8F
         DlGa171pk9/zO8bSDUNBnQxY+OLRP/UyPUlJhgnPBiymPPV/cT7mRER+VQJAR4jwUotQ
         oLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jcekDc6BrHtVhFkgnpIJOqwZnmodbodb7e8RcoPudec=;
        b=ZMQMhnYq4ZlpRHSJqFbMuwYuPD3sXoPgy2TBjPtUkR2T2TV1Y8z/XT6L+7L2NjMxyF
         +QbCjKQN2i1+y46LzSUOmgvi3utD8ZNO12qcNIQ8oTN04FAbd02Vd+xdc+rtjJOMYKxG
         p6h+7TvZSe/00sSotsrPzDjfcEPt5YZY0Ccj4aPhsASb9UcoghsL+XrjoSbZcrzOEg4u
         Bl0wg509GKsgMKe6vM/rYAgb2LGkZPzx0BEJ9maUcPAxzkXmqvDV/uBROZD1/0KjBuZ8
         HQB05Zw4nI5SVo4OjNBd7suy7KdPadh30RRZ9GdOD3PV2l2QcH4BpAZBO4b3b1zi8+Y2
         pPIA==
X-Gm-Message-State: AGi0PuYL2bMDYssgw3LnYtCSHONy9c4XRCBJVMxcSb7Yud12ZSObxqUY
	quFvhCDFk3lAZPCP5MLbb+M=
X-Google-Smtp-Source: APiQypK+XTYpCZY9b3NU1RjwFbjmG4QIsPOu2GO27mVjCwZXCcuWhao1WSANyrqGgtbwqwfd4F5y6A==
X-Received: by 2002:a9d:5188:: with SMTP id y8mr10414072otg.278.1587421476990;
        Mon, 20 Apr 2020 15:24:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6e97:: with SMTP id a23ls2921756otr.2.gmail; Mon, 20 Apr
 2020 15:24:36 -0700 (PDT)
X-Received: by 2002:a05:6830:2386:: with SMTP id l6mr11839591ots.128.1587421476561;
        Mon, 20 Apr 2020 15:24:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587421476; cv=none;
        d=google.com; s=arc-20160816;
        b=sbhlIbGKSEtVueMoJo2xtDlCsq/GrMVtP/6hnui+9mxZtP3HN+mu6j86VpfviBNG99
         O0gDt5BihSn1D12rQ0W4DBVYQi4zUOnvGT0vrjekcBzwbe0Dvoh12CndKrsi9WKEdXlP
         2mrNB5uIj48Pt/zeSCLqFOB2umKloD6SM3b4dUWY8j5FkTdDmaSHmplism25qSOyDkFi
         2DEdWSTIEE1p1s/7QBAK5yBh1WVK4XTKWULpobPbT8WN/dbGcRnJzHlaw4bmqOazhwdP
         v9zp+tCxSWvklGG5EYogvR2ojvYiqHlPhTReU9uXAyZ+oVfEFiFbYHHGleGUTXiicaqF
         H8eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DV6jlkNA0aYuGGTHJFqAlVIWbRQ6V/i9e8cl7YrriE0=;
        b=PSeEUd5LRemnD0waQedezrH2PbUAM9pg9DCXVzyNyOGzCfN/vL7QFnr4V7MC7vvjIl
         Xf2iczAEtPKiLrf0nmrakx3SSGQiqV/iSOd8HWdxJbaIYdcF3iVjDEqMXNcavEKKOD8V
         71rrtpnyPu4j6EDzicx+SqvKEPFodqH18g7PnzA+vbIu7XKIiCT4VWEVwAmged7hmcJE
         j19P5tdt6tI+mfUp0jnfrzZCICNMkkXPHRWegoFeRYYER4NSXCscP+JXFzmhK1nZVNjW
         xbM0H8RX13thfD0sm8A2j/YAfV6RrOTCNGtNWwGgs5exO53NDHfNyJO2lMBtDoWzETL8
         lCQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubLDLsXE;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id z4si42912otk.3.2020.04.20.15.24.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 15:24:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d17so5807371pgo.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 15:24:36 -0700 (PDT)
X-Received: by 2002:a63:df0a:: with SMTP id u10mr18587666pgg.79.1587421475507;
        Mon, 20 Apr 2020 15:24:35 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id w126sm490730pfb.117.2020.04.20.15.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 15:24:34 -0700 (PDT)
Date: Mon, 20 Apr 2020 15:24:28 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
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
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 03/12] scs: add support for stack usage debugging
Message-ID: <20200420222428.GB77284@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-4-samitolvanen@google.com>
 <20200420171741.GC24386@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200420171741.GC24386@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ubLDLsXE;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Apr 20, 2020 at 06:17:42PM +0100, Will Deacon wrote:
> > +#ifdef CONFIG_DEBUG_STACK_USAGE
> > +static inline unsigned long scs_used(struct task_struct *tsk)
> > +{
> > +	unsigned long *p = __scs_base(tsk);
> > +	unsigned long *end = scs_magic(p);
> > +	unsigned long s = (unsigned long)p;
> > +
> > +	while (p < end && READ_ONCE_NOCHECK(*p))
> > +		p++;
> 
> I think the expectation is that the caller has already checked that the
> stack is not corrupted, so I'd probably throw a couple of underscores
> in front of the function name, along with a comment.

Correct. I'll do that.

> Also, is tsk ever != current?

This is only called from scs_release(), so tsk is never current.

> > +static void scs_check_usage(struct task_struct *tsk)
> > +{
> > +	static DEFINE_SPINLOCK(lock);
> > +	static unsigned long highest;
> > +	unsigned long used = scs_used(tsk);
> > +
> > +	if (used <= highest)
> > +		return;
> > +
> > +	spin_lock(&lock);
> > +
> > +	if (used > highest) {
> > +		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
> > +			tsk->comm, task_pid_nr(tsk), used);
> > +		highest = used;
> > +	}
> > +
> > +	spin_unlock(&lock);
> 
> Do you really need this lock? I'd have thought you could cmpxchg()
> highest instead.

This is similar to check_stack_usage in kernel/exit.c, but yes, I can
change this to a cmpxchg() loop instead.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420222428.GB77284%40google.com.
