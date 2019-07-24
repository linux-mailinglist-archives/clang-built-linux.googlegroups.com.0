Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWM24LUQKGQEPQTELAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3513B73443
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:54:50 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id y24sf30602672edb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:54:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563987290; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRutZfEn+ceQ7brbXxWvPtCbhD/LSMsCgaQEVBy5A9COiMwxm6PmajD6FuYKo0Qyfe
         C0u/XSc4znVlCWgblqka+2y/mX4rRUjCXYVY8EduRI8WnJ9ykJJPSVE5So+b5jlAiMBN
         lKKSm75QgOInUMTTv/qfdDKcKlp7s4e+QVoUXpz28ILE8NMQGJH6cm1h1AFPB6S+Este
         IOWsU7tN0YlZBoJne8YSsxIdLRAjEaGTP3o23QEU8eK5AM2ndeRqn9fZUUnJeh/oZodY
         EkDzsxy5yKHvFz689gNsAzxP2TXKAVRz/M+AUL4Tzde7XqKtYdDsLscionWJgbB5QKCr
         9VIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=IFj7TELohr8IRfMZKL/0fY2r2CA6QWUwIx5c7hOMCGw=;
        b=0O+9tBbn3W5AvawFY9RCAPX2PNxXvZw8fpKpP+DlKuau4FvQ5cdKmSDRoZMtUKtzcQ
         rGQ/yKcb/OUPN6jD3g5lQjGZYPpkPt39t0GcqeRoBINP2BjjZqDvapI8mJa3KIhWVdvt
         dSMoQmKrYEtwyPiLOumSEcZIi/V+eMt5ihePDEllkyb+eIDIsdBZ0D8ZY83nBGt4SvRw
         fZdGywL+3YW2hvvnebSEBuYRnkGpDw+RNTRn8mOsZ7nYf95OlxeqKJayVVw+p+ebSi6M
         Waoe2voohoPrN42IrA3kc29K0SCt0kUUbgAe0AE2CrFxMmAa+G+cosbCizpyxS5d3l0q
         guyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HfGrcjQ4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IFj7TELohr8IRfMZKL/0fY2r2CA6QWUwIx5c7hOMCGw=;
        b=hsfHo9nxC/NWhzYraFykSGRPT3+PST7L+wyGvOovp1TX7YPCnVD/zkB/uwwZP5FZ7j
         GFgYnAkJFXvXaVQwrvfNUIs6r16cl9vTkH8CsIhekHLEypMfBljjc+Z01DpDG8uBl3nK
         uosqjrk1xn5FLOPnbf2Huw3BrUDgc3SQSfPzXfwTbw2jh/+QMVV1814IgsaVvWYmOehl
         /u0SWlGUUBg6Ach7FGPosPdm32dULTwM/l0iYzSaSQvh7/Z7PSX+T/AsdXOozKt0pNer
         oVIfYhH+CSaFw0Tvr3IpizazssnXbY+BETjKGS3R89A+1H69FCndRMjHNfATIDQBhnWx
         mfNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IFj7TELohr8IRfMZKL/0fY2r2CA6QWUwIx5c7hOMCGw=;
        b=DH7doGd/7+ZJUKIHSLylTyQOt2qURPQgU8nV8Ruzqw9zRVG1HKZsuJ9UYlLldgzCFZ
         jK8+ew69r63arJ6qo5ziYik+bNBod7RuXAn4l50JUtS4A3+FOOAl/0hM/RNYKsQaCIlV
         DKGtmxNFIdIHi5vu7HMK7/F0AF+BeUoqllDHZ1fKriyEstTwv7++6Eos3yJSPtaTOREI
         Cd53r7MJ8se5O1bfROoTdmmpKckB6sf9mAdua50CNMl25Y153CtiTRInTNrf4RvKOtdu
         7jQazdBoO08RYTGItu4Cw56eFv0P8go/gYLhnHbgFffg0lDBdk8PHWcGi2dCJwAKmixx
         FAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IFj7TELohr8IRfMZKL/0fY2r2CA6QWUwIx5c7hOMCGw=;
        b=qgSGescSX9/Xe59oVN3Ki0pB8VbFrWTndkrTY9FD23US/fc+XDIvst7SJN0Z8YbS4F
         gk4m0cMhY2txtcgWQBi79ms4fRRP6U2VvexX0qamUGRcBzic+GzG1Q2lDhKnKMrJT08D
         Y+4W5nUo7Ozrf2Dmf72spyTU1O+rNhpQ181zuE9TqAjfJeIHbzKSwO9NbSkloNSSU4pX
         uuwOAidmdDU7vJRNyMwMd2uGvpQJgG91TRywIwuSHiLxUJz5G7dTU4KZ6PcZuW7GULX+
         7snOtPYa5Kc+ask/VbB9Mz4OQ7Gy2NTSNVrCV2SSNW+hLEuzH34TPh+OzHTqmLtH6W5f
         F7Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5WOxplk1whO1FmtMekwi4WKTq8ljyQnB3jvWHnmSktVdkxO9p
	slt1EEXPGhKGsuyGPuFh5EE=
X-Google-Smtp-Source: APXvYqwHjru2EY8ifnqVDOyvpr85goNlJW0SSmrQdBdKruw6srXvoO1ujSoE7nhSgxIg9phRbOyQog==
X-Received: by 2002:aa7:c393:: with SMTP id k19mr72184814edq.76.1563987289953;
        Wed, 24 Jul 2019 09:54:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8908:: with SMTP id e8ls11088957ede.4.gmail; Wed, 24 Jul
 2019 09:54:49 -0700 (PDT)
X-Received: by 2002:a50:d65e:: with SMTP id c30mr72334314edj.38.1563987289521;
        Wed, 24 Jul 2019 09:54:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563987289; cv=none;
        d=google.com; s=arc-20160816;
        b=lLMJIOFVmGE5i1uB4pD4NMNnUcdeGzXbXKYtbFkAGDCxvOZ6EgyZNbyIMJlfFUgvy+
         7et11EMjIQJT0WEZ/ryqNpkxATNjBTlqvuspmVPTTQzbjPO3cuAFSm4S1A4mxQrY+pVW
         2r0udVu33rpeWxNnSA4+FrRGIrJbMirhYoFYMSJPBVrGgCyII8QA0Y9lElyAQ0G2soKU
         jyYNnNjyiyHnK6v6zYTGtYoVMXh1JW8gTVgZi89vlA+d7+iQtpfmSGT4EAuVhibKfikp
         zxtUMP9umWLjCrKB4juvaSrHBDLgNHOGiPCgWI1NjEHRvqbM6emZHxAmYND+KsFK3xkT
         xTGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GGnDbdb1w8mdDXJnIzPOA9I6KzGS82PK72BzW8rS+sA=;
        b=E2Y2vB9cRxFmT/Rg+JkaRvphVvDR4LaJuBxfvPz3NIF0y8MXJLD44ILolICRDJ7T1/
         jEOdqezv10zPaEmedLyx7U1JGSnGtjVct6fACkXHGeBQ8KK5NNT5s7eW+O1CwRNI+2eK
         9qtXlMRFhKmipDiTnb/eq2azx36hZIJACqjDueJ3NWgw1bF7lGsi2SwVDyzNsGUwTzCn
         xxszVdKjvK5k3NUf0PbYhg6UdqTUN4SI8BIpuKOv1N0GvbXAtUxWBh9G7izXZDDukiBD
         ssp7dnmoACPcv11DkMiW+YveeJk4PA80RLmKLvI62eiF6WnDkqCfQE+qgrQeR+0JsITO
         PsUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HfGrcjQ4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k51si2697665edd.0.2019.07.24.09.54.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 09:54:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id n4so47829734wrs.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 09:54:49 -0700 (PDT)
X-Received: by 2002:adf:f206:: with SMTP id p6mr16153631wro.216.1563987289028;
        Wed, 24 Jul 2019 09:54:49 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c1sm100119741wrh.1.2019.07.24.09.54.48
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:54:48 -0700 (PDT)
Date: Wed, 24 Jul 2019 09:54:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] objtool: Improve UACCESS coverage
Message-ID: <20190724165446.GA110233@archlinux-threadripper>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble>
 <20190724133516.GB31381@hirez.programming.kicks-ass.net>
 <20190724141040.GA31425@hirez.programming.kicks-ass.net>
 <20190724164821.GB31425@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724164821.GB31425@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HfGrcjQ4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 24, 2019 at 06:48:21PM +0200, Peter Zijlstra wrote:
> On Wed, Jul 24, 2019 at 04:10:40PM +0200, Peter Zijlstra wrote:
> > And that most certainly should trigger...
> > 
> > Let me gdb that objtool thing.
> 
> ---
> Subject: objtool: Improve UACCESS coverage
> 
> A clang build reported an (obvious) double CLAC while a GCC build did
> not; it turns out we only re-visit instructions if the first visit was
> with AC=0. If OTOH the first visit was with AC=1, we completely ignore
> any subsequent visit, even when it has AC=0.
> 
> Fix this by using a visited mask, instead of boolean and (explicitly)
> mark the AC state.
> 
> $ ./objtool check -b --no-fp --retpoline --uaccess ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x22: redundant UACCESS disable
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xea: (alt)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   .altinstr_replacement+0xffffffffffffffff: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xd9: (alt)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xb2: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x39: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x0: <=== (func)
> 
> Reported-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Reported-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

This doesn't regress clang and I see the warning on GCC now too.

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724165446.GA110233%40archlinux-threadripper.
