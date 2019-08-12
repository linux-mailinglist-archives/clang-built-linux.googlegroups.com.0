Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWGLY3VAKGQE7SJHKUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFD88A4CF
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:46:00 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id z2sf5960329ede.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:46:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565631960; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZQH0tVNhMsJXT9e5hx0s3/EjFkTLmMK5l/WexmZS3BR2HJLVVv8sWKTCmYOCLz2lx
         Eiyk+K16BE3QoNvy/mCeNmJWGl4b/RKPwgX2Fms4CEKss+iTW7EZAn5cKbhkTrmuhtMB
         6I7aGP+fjL5z04Otm0aTU/LuaxdZOVmrAPkQLVHv5Mm/nS8QUFw1LzJQt79ibqfZf5Om
         g+ew45UwWNNdzgkvQjoXUvxaTSD8jdX4q3knwD78cmZIMiBRTcVCMtTUj3mm8uxhDDsk
         zu5J9qnIysF75uAnIAQ8FOkzyIwaKVmHijSbVn3v/xact9JEEnKxyvQPhp55oL5e0PwD
         0/Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ctrgSfRi4P/CVftZpiVLR4x/6AQulyIAjhwJj19O4rM=;
        b=G5rfHgDbDKIg7mFY0RkBQZSXzYYUXHlN05RmAFOGQ3TvLqUBELF4lxdNrMgeFft45O
         A67fNk/pHqz1tMuWksDLH2N/brM/WCDbY2cV0uN2pgOpjWf1ypDQApXU6xjap8RuHy07
         O2vm3U3Ews1Q1s9DB/y5qVMLVLl1VzB4q2jh9UNYOdDE1uWPpk1YgD2sVZKdo6ypdIDR
         rhTiU4ImXb4qMxzlNDxHk7Mrck8xhQNv8MYZua0lIT97eObQ/hHA/1KgrEkjq3SLSZc3
         p0lHIVVIj/EnXZhiCxZBUKd1jW4ESTwRCw+ZieZOXpdVe4+p9Qzkci43+CTj56jrU1a1
         7N+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZUNVjOg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ctrgSfRi4P/CVftZpiVLR4x/6AQulyIAjhwJj19O4rM=;
        b=ZdRHs5c25njBCHjqbP82I1+duHWBlV/T9wZ9d5TiM+p+dmev9kvG7HUd9UPUq4arDz
         2hC0GDK9SvFIADG+o7ZoA5SZqHTS/oo00YYGoYCoZ+NRuxiC2wiJbo18Ir7k6letQldj
         sYwb0LbyxqEydaJgJl29e/bc8kyXQGsXBxifeqIBGtjzX3z0iYzekRB6oXOwnUdIX4LY
         8SpVAG7I9sNpnDGnBCwyeKbPlfX/mc20+UFcSRShJ4Jvspy37mrSPXKiR7LiF9cYTzYV
         i8m0Ic8FNkJY0yUG6ihUkartb38z6Uit7XuBwnxm1t9npDCSZ116Ay+daMJ3B8tTNaNC
         daRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ctrgSfRi4P/CVftZpiVLR4x/6AQulyIAjhwJj19O4rM=;
        b=HgUHqpb4duoTksDrscEj++nUzVl4QdimfztcmIopxzAN5mojnQkI5cbJ549N4sy1oH
         rgMxpZubw6e3d5IAxGP5n0nq5VajhmQPNLPN/En3zHrgWUm4yLfVUTq8sKhJ5zAiMO45
         F/EgpylITwPVVOPflDdcXsK/q5S+FDfzb9AuoBlsnoEj208CHeLeoZKB8s9XisPhDf6V
         NHGKiHnG17QqQbnoXfgCSL47rWUJxi4Pz3x/Su1QHQ98XXhoPK/mhpdcFm97RSFSjfIy
         5lNWo/64efNdI+9tB+rv7udQxePDkaab0EIJaxwh+iPDxLZwz6S7SVJobL2cMgrdGlDD
         YQTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ctrgSfRi4P/CVftZpiVLR4x/6AQulyIAjhwJj19O4rM=;
        b=XBY6nqsrQf3wDb6weROxGxTomEEbOudn3wOEJq2ZAG1OqhkhLHaY60TMkfRkpnBg5C
         NXliclcXeMLMQqorpqMpX46QSV821YP2o184Ej2EknOx3pK7Rw6p6WKsG5biNNocCBaX
         m9mcjQ8hLAkb9bq7ze2vUG57+mg+hYpJRh5pk1at868p7I/rxCQJYJo7geC7+EAGvH7J
         NUMcqS5QpqNX6QXVQWcJ5fD+SPkk4gmH/T7jfK4KYpUXat9BgGm+a63CEIry5nWuHXEr
         TfHMZ5c4hCuxPhjHJj9LmumUvuEjMu+KWEniavqsYcUIKI4Da8k0lrKts13uVF2+Ae0f
         pcNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXZBtsjir0ZRNGD7l+gz6SA9SBYMLVl1zAeATR2bTSz9U6XapLd
	Xz/qIvkP1rRA/O0FjWDb5FU=
X-Google-Smtp-Source: APXvYqybSUlVZvm4XsCT3mJGqzFwKqWVBtV7mL+YD+HqsiO/XrlTOxADCsrNt7IFhw6+aop/IxnZpw==
X-Received: by 2002:aa7:d94d:: with SMTP id l13mr12577073eds.72.1565631960411;
        Mon, 12 Aug 2019 10:46:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:80d4:: with SMTP id a20ls2487228ejx.11.gmail; Mon,
 12 Aug 2019 10:45:59 -0700 (PDT)
X-Received: by 2002:a17:906:4890:: with SMTP id v16mr32741330ejq.296.1565631959974;
        Mon, 12 Aug 2019 10:45:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565631959; cv=none;
        d=google.com; s=arc-20160816;
        b=A6DxMUht4g8vS/EEe8RScYdMhWr8+XtW7SiUzsZKHum5wdqiwl1ioFXm+MQUonoLYq
         bmiLVNP81vsK5mTx7RykYlCC3IRGgTAfcpBFJ0+T9DhXYPky3Wtw4muzHPb6VCUfHDIr
         3cXHrCQn6gtuSgI1a70QV8vSeStq9PyKAQhOKR5RwQkgoL5X00E2eeDXMNpKzicQwsfH
         r4lezOFC/HYyNeEyWkNpWa0GBl9p5KVsrvwCJdLiVAeg4xzzFsXYfu+bXwUSKY/hWP0V
         cCzZLylzQibSsMkOTnoBXpDybInC/5/Rx7eOrptBcid7LnMPC15myx5BiabajJT77l0A
         s6WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=z+y0C86lIYFqkc13B1ZVf/z3tXXKI/4p8OSUCocFgOs=;
        b=ZJLVREMDcwvkf3b+s0/oScTbzCJFStufwxf7AM1U7daaYVQZQN2+NHO8KMC6MPIpYM
         Zi6Wc+yoX0wYTqJQRVqijOhxDaXMdm7lpGLxwJ63n3Tg8FpPuZmsflJQq66Rhy7fxGmp
         speJfYCQ1qAnbHh5ZjxbIl/pmSElCXQBI7Y5K2La1wY/F9TvaRDZI9QEDrBZkF/KDTm2
         7DapxQwnDqR71QPQQU3STNf77Cq64xGx7bW04jfYRR0lpA06rGyLnG7AuMZI0liDVg3J
         Zt02uHXxJKYLYz2V+oNcxq6FQfnieiRXg7Jo35mqY/szVhBQYp1EGswj0u2uu3rCDjDa
         ahiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZUNVjOg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id jz14si4671600ejb.0.2019.08.12.10.45.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:45:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q12so15059467wrj.12
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:45:59 -0700 (PDT)
X-Received: by 2002:a5d:6b07:: with SMTP id v7mr31494739wrw.169.1565631959424;
        Mon, 12 Aug 2019 10:45:59 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l15sm17734393wrq.64.2019.08.12.10.45.58
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 10:45:59 -0700 (PDT)
Date: Mon, 12 Aug 2019 10:45:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>, linux-mips@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Werner Koch <wk@gnupg.org>
Subject: Re: [PATCH 4/5] lib/mpi: Fix for building for MIPS64 with Clang
Message-ID: <20190812174557.GA14197@archlinux-threadripper>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-5-natechancellor@gmail.com>
 <CAKwvOd=BYmsExYeOQmuEJ-Yybgqd_22vQ_WwU0jEXTXAaKpQVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=BYmsExYeOQmuEJ-Yybgqd_22vQ_WwU0jEXTXAaKpQVw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nZUNVjOg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 12, 2019 at 10:42:31AM -0700, Nick Desaulniers wrote:
> On Sun, Aug 11, 2019 at 8:31 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > From: Werner Koch <wk@gnupg.org>
> >
> > * mpi/longlong.h [MIPS64][__clang__]: Use the C version like we
> > already do for 32 bit MIPS
> >
> > clang errors:
> >
> > lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> > inline asm context requiring an l-value: remove the cast or build with
> > -fheinous-gnu-extensions
> 
> Reminds me of:
> https://github.com/ClangBuiltLinux/linux/commit/7b7c1df2883dd4393592859758c3e76207da8b1d
> 
> >                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
> >                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
> >         : "=l" ((USItype)(w0)), \
> >                 ~~~~~~~~~~^~~
> > lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> > in asm
> >                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
> >                 ^
> > lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
> >              "=h" ((USItype)(w1)) \
> >              ^
> > 2 errors generated.
> >
> > Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/605
> > Link: https://github.com/gpg/libgcrypt/commit/e7ae0ae243c8978a67c802169183187d88557be8
> > Signed-off-by: Werner Koch <wk@gnupg.org>
> > [nc: Added build error and tags to commit message
> >      Modified subject line
> >      Removed GnuPG-bug-id
> >      Removed space between defined and (__clang__)]
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  lib/mpi/longlong.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> > index 8a1507fc94dd..5636e6a09f7a 100644
> > --- a/lib/mpi/longlong.h
> > +++ b/lib/mpi/longlong.h
> > @@ -688,7 +688,8 @@ do {                                                                        \
> >                  : "d" ((UDItype)(u)),                                  \
> >                    "d" ((UDItype)(v)));                                 \
> >  } while (0)
> > -#elif (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> > +#elif defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
> > +                                               __GNUC_MINOR__ >= 4)
> 
> So the minimum supported version of GCC to build the kernel is
> currently 4.6, so we can clean up a lot more here.  I'd remove the
> check, and delete the #elif and #else implementations.
> 

Sure, I will dig into this further and send a v2.

Thanks for the review,
Nathan

> >  #define umul_ppmm(w1, w0, u, v) \
> >  do {                                                                   \
> >         typedef unsigned int __ll_UTItype __attribute__((mode(TI)));    \
> > --
> > 2.23.0.rc2
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812174557.GA14197%40archlinux-threadripper.
