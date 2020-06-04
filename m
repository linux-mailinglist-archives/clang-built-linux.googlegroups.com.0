Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB2NM4P3AKGQENJNFJEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F24EA1EE2FB
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 13:09:30 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id l19sf281173iol.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 04:09:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591268969; cv=pass;
        d=google.com; s=arc-20160816;
        b=pHqen9bzcw5Y7DT6Xgc/M28/IU9Jkrl+crMFgxtNn/gxrItr3HxuvFYdcevSioZQlP
         ooQDDUGYfV9fbQDgK3HcXgCSJIzMd8Q3VyJ8ooVaySlGZdP7Ml8Vf73VBCQHrRdaixPH
         YqCHvzpI66mVOtebJr3HvFH32sud3eyYsT0iRQpoJFHVgLvmuBsHFD3nHdvKonL7giZ1
         eEQ1CNg06rQIjdA/Axq9VdZsSmbo+a7owhDEhCNJdq9a1Fb0wOkrdrj/4qfsGGdsMI2I
         nPEEVuShAl8PaG8WZ2N4jqbCccXJxRrWCXNknI8+VyvgjcolyBVPLyQeOAVBGVGmAk1M
         w+HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oEZbqBQy2w98lpieWMTkokm6TOPRFmOdmjUKGUJq4xQ=;
        b=G/SV0rozbftQC6VMoRolX24yS2RzClwXWJT4WO5CLzpeVSUhrE+NC+Ryno0xB/Ezqd
         PDnR+pYvfhjp+bpzND6lvwg7up1Zfwyja7HsfXxeD57t42Qgo5T89Xa9Ua2zi5ee3GUC
         DTU/4GLaGXp189KoSNlLZPqRTa7dek7pZ/jnZp0GrebCY2+L97dctXTEWODqF6v7U6aO
         RyjAWMvro8H5tAkCLJIE/Z/L0Tv2WC6oAQ2OqM+yRFgMKaGm/XQ0Yy5LE0ZO868JeqPx
         mEFYtwRw1ldlAEptIx3Iu0PIK31Ox/qpg4mNJZWYBE4D5SD2gAb2vf6icD+tVYSRDARY
         zSFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=EHN6SZoT;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oEZbqBQy2w98lpieWMTkokm6TOPRFmOdmjUKGUJq4xQ=;
        b=ZqsKVDTnNL75ivdJcwg7mCDH9Rn8invouOg1T6TIj5MHfOqFv9DSQkX04jL2xdHCHI
         q+B1MmdyWoXIGQX68OJHBzX5RkflSRGEHzk7fmTRcrmPAnikcqAw3Kq6hprMphP9EWfn
         75uA9CxRnus11CuCWIRyqxzI8n/0z1e8BfIcywLngDxQuHfF3od0lSkeogCi0/a9VzeS
         d/iXJAog2Zk2zmiCkMPJ5pkHZAXcTTmlpWovGrcEunia4hWuF76X+J7zr2wN+MPOzAFQ
         pMVrhO1awMyglb89C5L0COHDOYS0aW+xZuGSVgGD9VIXRjpdj/WqU9ScWichyzu/9LnV
         rYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oEZbqBQy2w98lpieWMTkokm6TOPRFmOdmjUKGUJq4xQ=;
        b=MI+D+PL6sia06KMZdk+rs0ROF64cKrrZqVzdPZYwGUA6qOJ4t7fYulQU1ym47x0RV9
         W0XyjZPFcsd6Ujd3oCTgpWFE7Gtqyb+IoJSpyTDDSAIV6xHhefzE94+NxWdXJMzQROLe
         8fS9F0GKOxcljZwor/Vqmh1f0IHCIjnYIGFUTNSVcBreGn9EyGr1bZd3oGaYHvNJIYX7
         AAob13PYV4YOnp/z3Ll890yNCPL3fBn36ZWJ9cQJG1hSv/RZZVBMCH4oa2O9wF8NC0r8
         ovGm7GTYN0qZFuf7hVvMQE3uwqeTsblF7GfFELx81Ph+t8rO2fXQDLwOOZAwGpq8Bw0C
         R+kA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FDeG4Ms0tHdvCC0AawJLjX5v8lhCYRKAjnSI2MfeR0GvGemZj
	NWpneqpWyBjSIycPOOg0ouI=
X-Google-Smtp-Source: ABdhPJyNcVohjTRtnqmxAoQPdJlPiTAYZn9W/wi6FF6W0BWn335cGKL3b5TOvdr54yeJ9hR5+iNY2Q==
X-Received: by 2002:a92:58d3:: with SMTP id z80mr3514748ilf.163.1591268969714;
        Thu, 04 Jun 2020 04:09:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c150:: with SMTP id b16ls398617ilh.7.gmail; Thu, 04 Jun
 2020 04:09:29 -0700 (PDT)
X-Received: by 2002:a92:9fd1:: with SMTP id z78mr3235419ilk.221.1591268969354;
        Thu, 04 Jun 2020 04:09:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591268969; cv=none;
        d=google.com; s=arc-20160816;
        b=HsE5gf8tST9OD97lZLX99w4oaq6NAlsk1MHGYagVRA6jzkYTTkXkZO0HXg/eUI5fbb
         FRQKCU/EgzLGnOQiN+Ks9cI9vfBKqk9N3Nvpn/YmX/hdRaYViGMla1xXSYeiauFj5ieY
         tev5+jZNsYtY29+JqCxQBQBa2Ot+uo2ETfef4kmx9JHfPyysDorNjmFGWAMHPu0bpUVJ
         NluCWoKjlCaRxjM+k4UkcRH9AjWQ2zK+gj8MTFruXqe+xsYCYrJqlCJSypZVdsDNuI4w
         KIUvEkSKZ3Oza15qlEjBr3PgNXVHT7T5hfPe4sgFsU68t9Eo77idweOSAaCFr5c2U8k+
         t3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YWhHltp0HfbKPBvZhE5nAcBu90lHTux6EoGengUlZUY=;
        b=TR/uUmfB3nIJD1s332IILTAuTPjTLdMlSg7cdzxg08oawNGi8//KI0xeggvrRmZ69X
         aPCIAXj3i9PdWKojwVG8yJ49vhTbmmcPb/oxUd0PeIx/37kzK/CF7zc5AI8CYRnhYzlm
         gp6hUw7fEtwXzMJqTSWjOh9NagNfPIfoqkr4lDWY2luWtuw3Zj4Hc07wb/dppwkjjqjf
         rX5kAKxrGllIYauCTQ1kXyinH3u4GXY1mZ1+urWUd05EWCt9cPrkEKzhovIYpz6PT6/T
         4LjGcSQm1o29Oc3nA2uZCPlMFj+y4oUcN7gM4HpxHnjWeQV5S+hlJqrCyiWl1wjH9LKn
         SpAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=EHN6SZoT;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id 2si261251iox.0.2020.06.04.04.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 04:09:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgnkP-00054A-Bw; Thu, 04 Jun 2020 11:09:21 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A8A1430008D;
	Thu,  4 Jun 2020 13:09:18 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 81C4A20DF6C6C; Thu,  4 Jun 2020 13:09:18 +0200 (CEST)
Date: Thu, 4 Jun 2020 13:09:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: bp@alien8.de, tglx@linutronix.de, mingo@kernel.org,
	clang-built-linux@googlegroups.com, paulmck@kernel.org,
	dvyukov@google.com, glider@google.com, andreyknvl@google.com,
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
Message-ID: <20200604110918.GA2750@hirez.programming.kicks-ass.net>
References: <20200604095057.259452-1-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200604095057.259452-1-elver@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=EHN6SZoT;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 04, 2020 at 11:50:57AM +0200, Marco Elver wrote:
> The KCOV runtime is very minimal, only updating a field in 'current',
> and none of __sanitizer_cov-functions generates reports nor calls any
> other external functions.

Not quite true; it writes to t->kcov_area, and we need to make
absolutely sure that doesn't take faults or triggers anything else
untowards.

> Therefore we can make the KCOV runtime noinstr-compatible by:
> 
>   1. always-inlining internal functions and marking
>      __sanitizer_cov-functions noinstr. The function write_comp_data() is
>      now guaranteed to be inlined into __sanitize_cov_trace_*cmp()
>      functions, which saves a call in the fast-path and reduces stack
>      pressure due to the first argument being a constant.
> 
>   2. For Clang, correctly pass -fno-stack-protector via a separate
>      cc-option, as -fno-conserve-stack does not exist on Clang.
> 
> The major benefit compared to adding another attribute to 'noinstr' to
> not collect coverage information, is that we retain coverage visibility
> in noinstr functions. We also currently lack such an attribute in both
> GCC and Clang.
> 

> -static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> +static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
>  {
>  	struct task_struct *t;
>  	u64 *area;
> @@ -231,59 +231,59 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
>  	}
>  }

This thing; that appears to be the meat of it, right?

I can't find where t->kcov_area comes from.. is that always
kcov_mmap()'s vmalloc_user() ?

That whole kcov_remote stuff confuses me.

KCOV_ENABLE() has kcov_fault_in_area(), which supposedly takes the
vmalloc faults for the current task, but who does it for the remote?

Now, luckily Joerg went and ripped out the vmalloc faults, let me check
where those patches are... w00t, they're upstream in this merge window.

So no #PF from writing to t->kcov_area then, under the assumption that
the vmalloc_user() is the only allocation site.

But then there's hardware watchpoints, if someone goes and sets a data
watchpoint in the kcov_area we're screwed. Nothing actively prevents
that from happening. Then again, the same is currently true for much of
current :/

Also, I think you need __always_inline on kaslr_offset()


And, unrelated to this patch in specific, I suppose I'm going to have to
extend objtool to look for data that is used from noinstr, to make sure
we exclude it from inspection and stuff, like that kaslr offset crud for
example.

Anyway, yes, it appears you're lucky (for having Joerg remove vmalloc
faults) and this mostly should work as is.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604110918.GA2750%40hirez.programming.kicks-ass.net.
