Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBLMJYD6AKGQERMBMNIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1EC294AC5
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:51:42 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id h14sf1158822lfl.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 02:51:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603273901; cv=pass;
        d=google.com; s=arc-20160816;
        b=kR9/944LvOa2T9iz5SeFzH3eQM6huI4U1XEEFOAjigA1BdqWktCAUmCrOAXuCI0TXe
         2oEt78uWfn+xcqtOVRv+Iu/H7y9tzpCFcE8k4QkDfflWS07NkNizbIthOOzILopgaVg/
         tHOoRlkRllJsLHxiF2jXbOVrnwUOmTlmuWV3catuW6Hzn00dKIFIs4BLDmT3/0XD8S3P
         6ASyk+uNBwMqn4x80XzP2s5550h0YNOx3U33cSlZe+FISkTJC0bztcSl9mfIj370qoSV
         HksUC6Bixxf09ZyoZSLC5KDrvxAX2IJrrb2HPgRaaKu2pfPsmdr4BdZ5hmb4ihgY8xaV
         ZiaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n5KkM2S6ivUkoEm1oUCmTSV9onTd0g8xj2KAzqv6MJA=;
        b=csUrZ4mDBShAF/0QsCkr7qogs7+fUShgm3gbNtjAlqm9yfR+eR1p276P3o2ify7EMo
         C3fM/chV2GX9SEUZ0cG13CYYk4f1InLQNxZ/w0nLBBwmyaeTuyDsnMYvtqOSPvynRVFS
         XGYGI0XOdyvLawcak5OS5co2hWrHXVabnudgw/TxEF8p15xrwpVQh8i3L4zR/YIXDLTf
         9VGffKnH1SNh3mBwmQLhGnZBYROvSeMgRLwvb11SVjdSUofLNocyt/ceeRfZYm4FTxvY
         0UIcECoWNgzB/3AvusDjNWtqy+PYrwoWKVCNQwpOPSD4Vu7Ie/LTUmEGgxPkxeHYV2XJ
         vhDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=th0SHZXY;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n5KkM2S6ivUkoEm1oUCmTSV9onTd0g8xj2KAzqv6MJA=;
        b=P9J5mrUVvcGtmO9chMOn+mRYC2Bjvupp0UcCR+to+hDrwRYBgBGs0BoGGSX1s6K0K7
         JKQWUqG/lbDnrAWRQjKyIWEGEuRvLX5o9U6CaOOs7fR7aRlLUQgiUv82+DTvS20OqTdD
         UNFrccD1ibq3Ma5PI/tFxT5wf9BSntOLn3hZnbKmP9fSLBc45ljPbSGftOv0N3n+1jML
         9Z+KoW2eVUC0BBoTEIx+nujQRlW9N8b+XWBEEDO3tC6gxjbfX4inHA7uWtA8woGh4y+c
         rzlbQkjAy7AAP/FIfrqbCK44BbVoVNF0rNyLxNis9JhPWTLs40ALwrhby5iIlLqlk1B1
         fVRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n5KkM2S6ivUkoEm1oUCmTSV9onTd0g8xj2KAzqv6MJA=;
        b=Herx+mGcGQwvDzQ6Mw4s6Sk/IkA3AhTkm+iNDI/HLouLvYsEhbsZmUX080G7lGC9Ca
         afJg9oXjtstunSj/mAQmIp7RODDCZ/+YWfSFtFmpRk76ddOKfBKisUpfkRY4j2HoNNZ0
         dFrQAtWwoiMtToruFe79qfEUgbX5yeE4Xe2tN+KonNESlLQWD2/XgmnCQ9+5eSHSz+0s
         fwhM4oM+o58X8fPrXMnZN2aW21H+bHTud0TV5Zw02ASiKHD7T8ZKTTBfRl101cTKjODz
         4w3YYdZzuUGMHQsgYficaiTZUUzaX55jdYjVuW/nDz3gGXmguCWkHOEVqKanva5Q4+Oz
         9qLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VPgZkDTSRO+Sq41Rfe//Enem4q1fLwPrHaiGo75qcQDlqVyae
	qIEwy07TaU76YD7KJ87cGlQ=
X-Google-Smtp-Source: ABdhPJxeSq8OJkrgajLppUDYGDK8cA7F2bejFy17Ywg7uXuqwIwyzztj2tOQWPD1DFdkduee0u8w1w==
X-Received: by 2002:a05:6512:78a:: with SMTP id x10mr1015022lfr.340.1603273901571;
        Wed, 21 Oct 2020 02:51:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls3049002lfr.2.gmail; Wed, 21 Oct
 2020 02:51:40 -0700 (PDT)
X-Received: by 2002:a05:6512:2098:: with SMTP id t24mr980091lfr.116.1603273900564;
        Wed, 21 Oct 2020 02:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603273900; cv=none;
        d=google.com; s=arc-20160816;
        b=mccnKGFItovoEqnGH/F8Nq/J3b1D40os8ciIyx1T4g8rEnkINeufLW8y9y9dY+NAHR
         gIjD0WOSg78KXG09zVa2Kr9FGiWbRJFIUUL3pk7TmFQuGIMGuJP5DV2KKEK/wJz1LVON
         AGY8qnwJvWghvlAKP6stOlQl/4SjxC37XDDFkP5koNdKMLxAU9dKQ2zal3vU0l6dCGVB
         Hk1w5XQ6mSYCD5MqV5zENXOECRRP+rDm+dugXWIET10ZyVcifaBnk92RLo4G3DKyavEd
         QcoX589eAw74YcqOwAGl571ZswTlnEgVO817KI1NB+O1DkIgKk/D4P5rdpLkL9u5zTca
         nCSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TTonoSMC9Qr/U6/6E+qiLczLqU7QnBRx2AW/ar8m2XI=;
        b=pCLzL2M+9AcDCSVR1UJnwvedWkx9cVKA0ekSlPjHpl/uut7KjJdFQW9f0vwS+E5m8v
         9NClMhU5QV767hr+PgZBCAJavEZ7OEmL8hl3KDArvLZiDxzEAV8i+t9vAGjxbp8cV7Ob
         MWllvbovwHaQ2zp2sWKiN7iewI4KJB+6kr0+LZlsJ99CC5I0gJdU+EAG3xAxrqn725xD
         y86WvOguH78cnC4U5t6qHlqXt+FwUzMFXL/JFhK2nGIh3cKT1JC26mhqzG/XYc1C9czg
         GIoinRsmS1K1ikvwhXXcu42yYfW/Q5BZVCIE50YK+PflxHwUviKB8+6CPjN/k8KcVcwn
         e3Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=th0SHZXY;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id a16si48439lfr.5.2020.10.21.02.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 02:51:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVAmN-0004m8-56; Wed, 21 Oct 2020 09:51:35 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 055A73035D4;
	Wed, 21 Oct 2020 11:51:34 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E7CA2214528C1; Wed, 21 Oct 2020 11:51:33 +0200 (CEST)
Date: Wed, 21 Oct 2020 11:51:33 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201021095133.GA2628@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201020185217.ilg6w5l7ujau2246@treble>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=th0SHZXY;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Oct 20, 2020 at 01:52:17PM -0500, Josh Poimboeuf wrote:
> > arch/x86/lib/retpoline.S:
> > __x86_retpoline_rdi()+0x10: return with modified stack frame
> > __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=7+8
> > __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=-1+0
> 
> Is this with upstream?  I thought we fixed that with
> UNWIND_HINT_RET_OFFSET.

I can't reproduce this one either; but I do get different warnings:

gcc (Debian 10.2.0-13) 10.2.0, x86_64-defconfig:

defconfig-build/vmlinux.o: warning: objtool: __x86_indirect_thunk_rax() falls through to next function __x86_retpoline_rax()
defconfig-build/vmlinux.o: warning: objtool:   .altinstr_replacement+0x1063: (branch)
defconfig-build/vmlinux.o: warning: objtool:   __x86_indirect_thunk_rax()+0x0: (alt)
defconfig-build/vmlinux.o: warning: objtool:   __x86_indirect_thunk_rax()+0x0: <=== (sym)

(for every single register, not just rax)

Which is daft as well, because the retpoline.o run is clean. It also
doesn't make sense because __x86_retpoline_rax isn't in fact STT_FUNC,
so WTH ?!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021095133.GA2628%40hirez.programming.kicks-ass.net.
