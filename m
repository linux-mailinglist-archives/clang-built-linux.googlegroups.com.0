Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCMIQL2QKGQEMJGM5MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1200D1B4C21
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 19:51:07 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id k11sf2079933otc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 10:51:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587577866; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouxLVc/dDlElN33cK2vSdXAKQmEZQ7SGv+SKPGXvs1z3bdds4hAhYtB2KSGwjRJmpN
         2OeIMksDhNKfhNQFlBaMT/1lgOPa+0BbZxgYtQI7cWtkmzq7MAHTSCH8ndarAGyEtcAr
         cWpClf90RwlV3PDvBfbdECDEuOE4LSXJpyMXqABp3FSHSkM+hdS6WiMK0kRNlkRQz08O
         y+afuXSBJZWybZ/RqhgVBHjHvZqeinDyulLp4SuH0OBMFQhH73GxJliy3PMHPDJ3+TES
         8qRnHaIa6ZavJKSd/fzYtyeh59lz2cYkS3Lo2iYN1hHsu9qm0JKV7rfCc3i4CCPYwIZM
         VbJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IVrC/BoBtGrCjSs+/qTjVmGPxlHFINSheAq0FABOirA=;
        b=qbdOMdRJ+MbjgD6rPHoSPfqJMA8kV0fhdl68We69KMp4SQRK1TUYMh6vprheykvNzV
         SbWvASBodQ3hACdVrKyj3ZL4HmvKa+zlCqGl0tGu4gK3SAvSPnaPvp1zojuje28N2TON
         CY/jzzLDZfhuwrz4RqwJqf7U+E8tApG461kEwTPMKLzePSMM0dMqBsWPf3SH/jqdP+g/
         2bLySx7UpLUGt+RroQ9oPiy3uwlwpOuKuMkyCfd93kOJvsoSf3Zbmi8nd6mv1EP4ayF/
         pyypUdzKNnqDpx5c7E+AUvJH0eD7Ci09UyIRCXr+Pb4HO/F2sZULy0/hGF/7dOynVqY2
         WLTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SbiBDMBj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IVrC/BoBtGrCjSs+/qTjVmGPxlHFINSheAq0FABOirA=;
        b=WcKubWGOwhCnpMGfDqmgP2sjO+8fE+g83ateyj74Lhvrq++uO3M46jiCmJsybPy9mW
         xoBeaLSj0BOlcTfpFacfhUg8vx46WrRVc1pIrAWhTXlhMNpPZzaW+X2AtHRZUCbKoqei
         tnkJyfJfXuM7unJrrAPh6EE5jSiMSd6POmcwemUE5nj/9r8lQA5SB9xU1mydrCCeC5Cu
         AM6VdEmpBkrYtRU/hNP5jGbMh0UsdOo8yb3QvJaBcaE23CVrANgwT2KBNJVL54YE7ur/
         LsvLoyixgTVvxmXsa8g3ot7M6bL+3Yw+6atptzGLJm7KVcxxda3BoX/dBYBmA2/QsOz+
         7LPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IVrC/BoBtGrCjSs+/qTjVmGPxlHFINSheAq0FABOirA=;
        b=TjF9MttFY6IdEDnaczoydzvNRuuY9VQ1yXude7f/3Wn8VkwumRn0QEVf7vYnpj+jR1
         Ut/mJUcrJH0mn04cST9c90MuRa03XK9VUrQUtmYfFI1ojaBzT9huTNNMX2tsXyCtn0j7
         IvIgbzF6ekdgFRNV5v6n1SlHCUBRvhupJ8Ik8WM0fvq+VJq+tbfEyL07eqtdumvNFBVh
         a5lhKHq9Q/rEWu9pwKCc1ArL5uADBp5Lu6oZq8Q8r5TLBAB3istfqvNud8kMACN66PkR
         wFmrrgYrxdMeCOjEbsE02KgnLLFgw4wPK1stVV35OeVa/9wGoOT2WyKgCU4xCLnxwq4M
         O2aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYKjisH4Ol/E4K64eWLF4WS3OR02244d3V6YGRCo1EGRTQf5a0k
	duUETsbs0Bb51MIUp4yipE0=
X-Google-Smtp-Source: APiQypKI1dNB6nLfS+T/uFU6NoQ7HIdozBc75ev1O6A9Mkq7hQ4JRDoHmSPkLAOuevFl/NVqIzfHmw==
X-Received: by 2002:aca:ddc4:: with SMTP id u187mr53952oig.129.1587577865955;
        Wed, 22 Apr 2020 10:51:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7516:: with SMTP id q22ls269977oic.1.gmail; Wed, 22 Apr
 2020 10:51:05 -0700 (PDT)
X-Received: by 2002:aca:b2d6:: with SMTP id b205mr54145oif.137.1587577865704;
        Wed, 22 Apr 2020 10:51:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587577865; cv=none;
        d=google.com; s=arc-20160816;
        b=0MN90m6bREiSwCvyJhuaf0rR0UMBTuDYNn+ambrNt2caLt7znfsqbMfBgGu3ThTcKh
         +OysOwN3yzlbQoNvf4YvDwPqsLg/dpW4DoSGUZDWhrunrh7KvLDSgWu8pnC/5gvr3A5h
         8kErxPDxTmPEvw3UMZD/eUcf+E6hRnW+u7FgE9wuokIJDdD8VHyqy8IjjfFqbUfI6WsU
         mKGi3sY77PPjJs3CW8+suyPuL9Y/4OxVY0EAYdgi+hmZ2GTbQz5Vamq+KiKQbceSawI9
         8wLKZjK2N8+arVPBQDK+Z2oQCS7/+IjfgAXO1Uogo8sEQz2zVI1ia8yWuk7FkUf/KZaI
         q9WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZF6h4B8lRkEW+PGdoi5ViWh9NdqvBm+plj3edg+BLxs=;
        b=iUkAULo/j55A6p6fXqCnsktQkipEFTCsHy7cps2A4LiF9RZCv15AnvTrEhcqdqme2J
         yAs/0aGKzTIuYflf0I/PGLm1Vr6ijIf9TNkh/5ShgWIwG4gaImzhVGboOcWkCtzJlXM9
         IE63iQqQIT9vzHHIETXmTLuJuHTKbKn2iwTjBEdgNrKe/3KcJbfCaUnGvPxKIXno+DnT
         wx95p5HRHZcYEkXdTVLmyo94B4JJqLVg5EOSmoOThFALwC83np4JnCsHNzzP3yIPtG2F
         hwJIH0EtYGpwMXAVrlbNn9zsZCYrCj1Ie9830HzTaT4qz1nBnKghKkR23bxihZAaaJOV
         TcPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SbiBDMBj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z4si5519otk.3.2020.04.22.10.51.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 10:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id d184so1475156pfd.4
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 10:51:05 -0700 (PDT)
X-Received: by 2002:a63:9e54:: with SMTP id r20mr141098pgo.301.1587577864965;
        Wed, 22 Apr 2020 10:51:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e4sm5917509pjv.30.2020.04.22.10.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 10:51:04 -0700 (PDT)
Date: Wed, 22 Apr 2020 10:51:02 -0700
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
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <202004221047.3AEAECC1@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422173938.GA3069@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SbiBDMBj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > +	 * when the task is not running.
> > > > +	 */
> > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > 
> > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > (base,offset) pair instead? That might be friendlier on the allocations
> > > later on.
> > 
> > The idea is to avoid storing the current task's shadow stack address in
> > memory, which is why I would rather not store the base address either.
> 
> What I mean is that, instead of storing the current shadow stack pointer,
> we instead store a base and an offset. We can still clear the base, as you
> do with the pointer today, and I don't see that the offset is useful to
> an attacker on its own.
> 
> But more generally, is it really worthwhile to do this clearing at all? Can
> you (or Kees?) provide some justification for it, please? We don't do it
> for anything else, e.g. the pointer authentication keys, so something
> feels amiss here.

It's a hardening step to just reduce the lifetime of a valid address
exposed in memory. In fact, since there is a cache, I think it should be
wiped even in scs_release().

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004221047.3AEAECC1%40keescook.
