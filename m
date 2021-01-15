Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD6NQOAAMGQEULLUUQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B232F6FAE
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:49:20 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id b3sf1272290yba.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:49:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610671759; cv=pass;
        d=google.com; s=arc-20160816;
        b=LmvVH6gpg9Zlfmnv8bSdS4b8t6cWLAcAnXEmYy7MaTDfzYqBw8/VtnYH7HAa75H61L
         FoM2M7Mw/0vpUsBXw+Z5ay1AISDCfPS4xH7VCAJ0TmUe1YoT9zPYf2ait58+CNwIA66z
         0tfPGw219SQSLSvatZadT2dI712BgJcevOFE+EvpfghlV/lk2xUwxcEju5B9UttBw/ly
         EXKvqAYXWAHQHuAnnFicfUNYtRmuDbsRLzhDGxVZO+TQ6q+cKgDW/t9TWQRAd8zM9SYh
         2cVjPWyomcxNWqAF9T/rLCiKYOWY44S/7JRrQC90Bn2wIwc1mFpRcDwAsccrMXux7Ui1
         eKzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=y4qU0BTudnOBTOqK6g6Tk3NASZCI1SxtRc02S3iVtNI=;
        b=UbUH5+0UgU43HLekK3WcOlGvaic5FAxBW1iR+zuWPyLbk8HJS4sh1505QetC5GRj19
         HXbJoNOqX+oMHmnmQJMxanZ8DES5OoRJ2kBZGpnn+nfYRYala5HPMJ63+1LLWBSmdP5B
         O46wfeIRHbTsXKMKPggEyEXcVnFVcVtp7QnJRzJS1Iy93xhnFv/EizbCjGTKUDt747Xj
         3/a+jtGdQtrQCFdUdcfRzZeOWmfstgt4FY4k+gom50o5b6nr9feFxcE7tyeP4poAE/ZJ
         vHgBAtJoluDlcYMsSWXwdH7cW01bXvS5fgtcbTSyWnMLcKPn6LCOH2Q+fohVeRe87z7q
         kenA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eoaDMyvE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4qU0BTudnOBTOqK6g6Tk3NASZCI1SxtRc02S3iVtNI=;
        b=K9xTzrBmyd6S9k3F1qtmoTzcpDxZoDnMX4iEpt10qX0Uc1vBe1AZbRn2aTB8fkqhUd
         cfpjVTSqamL7IilROd8teTpgewRlBCyJQfDqdP/vjPYVczy1TviYMQ5r0WgAQfIzhIgk
         xHnUre+NqzGIQEZqWqYA1VYK41KyjQA4qqn49z21PIG11h1uoMSo+7Wv3+S3bjvGbl3O
         pG5mStblWWISINb2HxjA7Ajl2O34EyDYmcgMMGqpAZyNvSh7mRnt0GCWzdW18kjIzI8g
         tjjELJgwYcoSSPx4mHFBXfd7fVbSzJzSFUlwR4fSDzZQsoBru1J2Y5VOoeEn9h2Gc0cv
         iCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4qU0BTudnOBTOqK6g6Tk3NASZCI1SxtRc02S3iVtNI=;
        b=n0WudLrUziL/v2g8C9bqudnSZ3+tfNsJM6JIaaB/VrECSR1yQa/1nqhXM214Pjmq5L
         cqkEGCM7EdCVj1oRhTeTOpWrznICEPipRfCE4KWN6egcLetC/c5imHugUy+mtPK79sUe
         tXUaxJ42oju63iVDWa5idvNBFwP7UakCFaM4RrHgo9A2iDoAzTJLLcpXIvgAFe/JtLh/
         ESJ0n4D1H7ESzpHiJvi/4DUgVU837lm8Dm+wz2Yg4eNT6JTpsDzC4pFVy+zDiTiry6lX
         wFRHBeos6athz1pLLQzr9riU2T8evs3qz3Q7LO9WB/fwTzHrYb8y/wnSX03KdtFGn/yh
         qNjw==
X-Gm-Message-State: AOAM531A3hotfvumqk+xP8RlT1gKPrLXPVJ8dqhLtEN974k7egd0Lmm6
	aPx4vfL0d3qwb7h3ioPYzLM=
X-Google-Smtp-Source: ABdhPJw0e4wcjIvtKy9Mh3VOrgpu2qV377e+PcspTlRJHcjIGVm36f3ke1tsngiaTT4yMKoKclhScA==
X-Received: by 2002:a25:5243:: with SMTP id g64mr14726474ybb.193.1610671759588;
        Thu, 14 Jan 2021 16:49:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:946:: with SMTP id u6ls3594888ybm.1.gmail; Thu, 14 Jan
 2021 16:49:19 -0800 (PST)
X-Received: by 2002:a25:90d:: with SMTP id 13mr12865913ybj.473.1610671759143;
        Thu, 14 Jan 2021 16:49:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610671759; cv=none;
        d=google.com; s=arc-20160816;
        b=zraSkpY3qfkJXu9sy7q/X16Y9/gAxRg5NikMIC0/v/9kwantbCoOTnriuQi8lEl+JQ
         ZjGiVKQCoI9IETWxRKCutfOedTCFKBbHwl6ZKOODa/RbvMb4FDge/olYOcTTxUVMNtjC
         mmqSPT+0AqLRGmUt2d+u3Q6gbkHGG9YU0bIeCqTKBabZcdGhAHCo8RXSy6tfd4mhWpAo
         U/BhVi9WIfdtNNvvKalUXFUXyv8Jflt3RVNbogIaNPV1HmU1QI5R5Nk+Z1Rx6QRpn0Hj
         kRjIbONc0VqD6E/8ecGnrP1RvGgi8ubiuBv9bz0mfUN5puwTPaamh8OInRlCeW0ikQl4
         z4rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K9nC3QQZLVZ4Wv/SC3g8XKvTcDq2HllT/OIRGR+DemI=;
        b=HxAS7F6mGB/BRc8ongI9tfHYsK5AISU5yAPnffbYGiwnesN0g9njn0SvCMh1T9mMBH
         kb2nm2uN8FZtUavQkOaa+z8EwLWy29880vP3MPX0FeOPayVeuYuPIhpsyFpZiI+iiTPt
         rO4+d5ddfN5u21UKTXW7uGcYi2SlaqdrANkWM0mi7cNwjIt/pzJRe72pBlCqgXhengfD
         c6DNfMMqzIkm6M7CZbWQkwSded0K+EatVfpn5EMXb4zS8dSfAvM2g5wcUZSNIVnqyUYd
         6IegBYEcnMz2H/Z5YmowYtHlyN6gtxxl1zq8NvbWsa9JGnrNRO3d+4S6Favjk+oRso3l
         NCCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eoaDMyvE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id x18si219598ybe.0.2021.01.14.16.49.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:49:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id q20so4420929pfu.8
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 16:49:19 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr10150136pgm.10.1610671758192;
 Thu, 14 Jan 2021 16:49:18 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
In-Reply-To: <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 16:49:07 -0800
Message-ID: <CAKwvOd=J9LykjdzRLZ73uzd_BJaZUhO7uhNgF=FOHL4uDaRjHg@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eoaDMyvE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 14, 2021 at 4:41 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> I can confirm that all the warnings I previously saw are now fixed,
> but I'm seeing a few new ones:
>
> vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack
> state mismatch: cfa1=7+192 cfa2=7+176
> vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7:
> stack state mismatch: cfa1=7+160 cfa2=7+176
> vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to
> do_strncpy_from_user() with UACCESS enabled
> vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to
> do_strnlen_user() with UACCESS enabled
> vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call
> to __ubsan_handle_negate_overflow() with UACCESS enabled

^ https://github.com/ClangBuiltLinux/linux/issues/1246, FWIW

> vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected
> end of section
>
> I haven't had a chance to take a closer look yet, but some of these
> are probably related to
> https://github.com/ClangBuiltLinux/linux/issues/1192. However, I can
> reproduce these also with ToT Clang, not just with Clang 11.
>
> Sami



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DJ9LykjdzRLZ73uzd_BJaZUhO7uhNgF%3DFOHL4uDaRjHg%40mail.gmail.com.
