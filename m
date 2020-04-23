Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWFTQ72QKGQE33SSYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id B04151B62FE
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:09:29 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id h63sf3243626vkh.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 11:09:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587665368; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ffnyb3BbFO+nH9zZcYgRnLRW7FPTIenlTtL8H3CupY0O6tz8VHL9Hde4L5eDWQy3kD
         D9Z8cVrkXZqRJoVssFrxR2bBucjtjZ4OntDNqnxcYAINMfBKiz78txAJhlKWkTss8pGH
         gLEfQHSDV4Yhjb2rFO13+3+g098MRL1VPEmZZFPRgHhnVZg6ImWzh6xDFj6VRcbboRcq
         UUGcowDjis3mAlENE2d1XIpUFl/1QbeVYD7U0DByMcOQiGTFyuejXZWR22OzR9+ww1KV
         MjBQBxRpH2ZgavtdAaMqYkISIl0X9h5REhbzxLP6rgtegdOhiAIZXgmeG4QsKcwGJo6Z
         gGww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a7J/z1JZmuGHONFHmu9Nq3YRczjrlOjE1GKW/oaOmP4=;
        b=x56exyZXx1gOzkeluht1BV2zkQ9yqqRJN7ZbOWXKK3JZ0lMWLgdF8S1XV8h+nZkK7N
         GeZMxO7kPByQOVKHa9S6GwkRy99TajSjBT1sFopbD/a1aEw4fG1ArwmEMjwcvlp1g6Q0
         p0KTj1isB3tg1tiFjMy7TZDxpNp4LGqxpoxBB3/LQxAypPZfkYpZbzpS53ll3PMRK4RM
         EwAgANY5Y2s6M3HboPjAL/SjDUZrQwy1lDZ1MFMtUuVBqqrwji0QlWMrs2x9qchBR9pH
         ZA+LVGrsFc81cVIA3yoodYLOXcP3g+4q05jTXU5ykvbRN+ChQEKHeX2XDEVNsWcD7ZEO
         VRng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CdFotNnq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a7J/z1JZmuGHONFHmu9Nq3YRczjrlOjE1GKW/oaOmP4=;
        b=CYJDYlEjZIiyxGnfBk/9FmjSz8zpwjixHt+0vf7J8T+v417+OdHzL1z5T4ko+nJdUa
         oR0lekbuuU7tXha7EJJPkwi7G1uFfz5h7pl7pGKd1y1dtbkig6Sn6RWPHxLSuAo3ST9p
         QxCjqMgrf23OxWGh/d8FNM6iewyz/tq8kS61svTVWUKVH9PVLhOdg/cIViLp9nnKXuGG
         Jxa9AVlvYYlo8WIDTNzldQEGZzpFJdlzsOqNsy74buo1cEhvEM/UpUZZkFTOE5FmfnQ2
         caRz5FXwJbIpy2LW0z2eRGjCn/pY/s7HQzFUwmiryi5APLQoeu4tdxzZqXjS69dEjc/p
         kdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a7J/z1JZmuGHONFHmu9Nq3YRczjrlOjE1GKW/oaOmP4=;
        b=rqeom98mvAdQtrTltcHerRD8kuIR+DFUjEoLHXL45Mtm36JVPNO7C/6aQd4AvR5JSH
         zGOlqP68GvoJZW+/jOtc+1t/dViuCFcYthYZLk/Bb1S/ak872vDrAstQ97WK8zsbYYnr
         Yxo9ESY7FNZ6pNWnGEUElwH3FbO4dpiDPhcnbmKCCtJ4Ray4ahZlT/Uy3a1a506Gzns/
         BHaR9+Xc80teq5tcMDGqNNRs1Ij5pd2FfmluZqD7/xSunyPeXcY0qfW9i/0SH62eMom8
         +3A3IdQOZY7CfiJ6gElKj8InbiagiYgmvBegRWwR/6tLLtuTlfLJ/5R9qjda8twTq5yc
         msbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYBTO/RdjVpBd0UzjeVIlxMVnYrkQPN3cUIfFzHmaZLmvfO6d05
	Rq4OwP3KNdExyUMRRGFC8sM=
X-Google-Smtp-Source: APiQypJ9Hmuz3tiBA98xAbJt5gGXsvL/cb6b9yxDr9iIguHVihuZ58vvSfmeitp67yEbShA52Va/5Q==
X-Received: by 2002:a67:bd07:: with SMTP id y7mr4409182vsq.109.1587665368795;
        Thu, 23 Apr 2020 11:09:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:130f:: with SMTP id g15ls616122uae.9.gmail; Thu, 23 Apr
 2020 11:09:28 -0700 (PDT)
X-Received: by 2002:ab0:770b:: with SMTP id z11mr4199734uaq.64.1587665368358;
        Thu, 23 Apr 2020 11:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587665368; cv=none;
        d=google.com; s=arc-20160816;
        b=iIs18x8NtY8KVVzzgEPZIaci3u7SErGwp/TQ5Hflhj0AZwq7t4axMnrq63WI2lbdfy
         PPwXAKx4ufrpGtNCK9UQSZMqbWdDaXEUX+YjnO4+Mc/WIbLqdMC/c0FHPul1w4aimCHX
         SX8s7zuQIbXQIH9BeSocxSjja7dAT0pHpoQyAeUK+CPncB3N4AudQxdu82IOEDKaKHv3
         SsAlxEyfwAAJHcBEFCPbURM/AxlZwdAvR0+lhoZA03ajJOz5f0dWkjkHC9d6DJC8Ndyu
         Zs57iLAnqvxAy60OBnfkYPTHUCZpY1VtZiIjC6zqUOir65Y710VPvWWN0hJIK6LWfYil
         WoIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KWVTVR9QPt8YpEnS6+rG3cx9IAZdQ2Peqca4Ud6UmSY=;
        b=Ervb6ia7zVo7ngqnmZ+n87K71RUbfjU3SUf2/PUhA4ZREMo3BPPKnMnN4rMNcbz1kZ
         LuPs71Sj+7CSJjmjfGkCWE3ZZEBYokScu4+uvc/wwycEvB8MAoY3cuJVEUDlZTpCHfVu
         d2rtYEZwVDAM2yGHZEa3fV35Qp0wbRCQySOtzGEpEKxy0akMsaqst9nHXQTbOaHKZnw4
         7wbeVyfno0gUwiGtlbIwWPL3FJl0Hlgs9wD40iT2xZXu9tBEnFVQCXW55Lz7vPpMXYiZ
         sAH0OpCvQU5UwD1wErpzo4zUTgKrPHo+F+aGV5PB739uRP9qZEeqtN2F7sp/4d7OOXNY
         t2sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CdFotNnq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a205si200594vsd.2.2020.04.23.11.09.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id o15so3287915pgi.1
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 11:09:28 -0700 (PDT)
X-Received: by 2002:a63:5c01:: with SMTP id q1mr4899728pgb.177.1587665367464;
        Thu, 23 Apr 2020 11:09:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d184sm3152431pfc.130.2020.04.23.11.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 11:09:25 -0700 (PDT)
Date: Thu, 23 Apr 2020 11:09:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
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
Message-ID: <202004231108.1AC704F609@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-2-samitolvanen@google.com>
 <202004221052.489CCFEBC@keescook>
 <20200422180040.GC3121@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422180040.GC3121@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CdFotNnq;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Wed, Apr 22, 2020 at 07:00:40PM +0100, Will Deacon wrote:
> On Wed, Apr 22, 2020 at 10:54:45AM -0700, Kees Cook wrote:
> > On Mon, Apr 20, 2020 at 07:14:42PM -0700, Sami Tolvanen wrote:
> > > +void scs_release(struct task_struct *tsk)
> > > +{
> > > +	void *s;
> > > +
> > > +	s = __scs_base(tsk);
> > > +	if (!s)
> > > +		return;
> > > +
> > > +	WARN_ON(scs_corrupted(tsk));
> > > +
> > 
> > I'd like to have task_set_scs(tsk, NULL) retained here, to avoid need to
> > depend on the released task memory getting scrubbed at a later time.
> 
> Hmm, doesn't it get zeroed almost immediately by kmem_cache_free() if
> INIT_ON_FREE_DEFAULT_ON is set? That seems much better than special-casing
> SCS, as there's a tonne of other useful stuff kicking around in the
> task_struct and treating this specially feels odd to me.

That's going to be an uncommon config except for the most paranoid of
system builders. :) Having this get wiped particular thing wiped is just
a decent best practice for what is otherwise treated as a "secret", just
like crypto routines wipe their secrets before free().

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004231108.1AC704F609%40keescook.
